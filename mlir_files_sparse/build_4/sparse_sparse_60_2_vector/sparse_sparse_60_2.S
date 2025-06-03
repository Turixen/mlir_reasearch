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
	slli	s11, a4, 2
	srli	a4, a4, 1
	vsetvli	a1, zero, e32, m2, ta, ma
	vid.v	v8
	vsetvli	zero, zero, e64, m4, ta, ma
	vmv.v.i	v12, 0
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
	add	s1, s5, a3
	add	a3, a3, s7
	sub	a1, s10, s0
	j	.LBB1_8
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=3
	vsetvli	zero, zero, e32, m2, ta, ma
	vmslt.vx	v0, v8, a5
	vmv4r.v	v20, v12
	vsetvli	zero, zero, e64, m4, ta, mu
	vle64.v	v20, (a3), v0.t
	vmv4r.v	v16, v12
	vmv4r.v	v24, v12
	vsll.vi	v20, v20, 3
	vluxei64.v	v16, (ra), v20, v0.t
	vle64.v	v24, (s1), v0.t
	add	s0, s0, a4
	add	a3, a3, s11
	add	s1, s1, s11
	vfmul.vf	v24, v24, fa5
	vfadd.vv	v16, v16, v24
	vsoxei64.v	v16, (ra), v20, v0.t
	sub	a1, a1, a4
.LBB1_8:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bge	s0, s10, .LBB1_4
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=3
	mv	a5, a4
	blt	a4, a1, .LBB1_7
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=3
	mv	a5, a1
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
	.quad	0x41469947e300bcbe              # double 2962063.7734599998
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
	.quad	65                              # 0x41
	.quad	88                              # 0x58
	.quad	149                             # 0x95
	.quad	166                             # 0xa6
	.quad	227                             # 0xe3
	.quad	240                             # 0xf0
	.quad	297                             # 0x129
	.quad	320                             # 0x140
	.quad	380                             # 0x17c
	.quad	396                             # 0x18c
	.quad	459                             # 0x1cb
	.quad	476                             # 0x1dc
	.quad	539                             # 0x21b
	.quad	569                             # 0x239
	.quad	625                             # 0x271
	.quad	642                             # 0x282
	.quad	706                             # 0x2c2
	.quad	727                             # 0x2d7
	.quad	788                             # 0x314
	.quad	802                             # 0x322
	.quad	862                             # 0x35e
	.quad	883                             # 0x373
	.quad	942                             # 0x3ae
	.quad	957                             # 0x3bd
	.quad	1021                            # 0x3fd
	.quad	1043                            # 0x413
	.quad	1101                            # 0x44d
	.quad	1129                            # 0x469
	.quad	1191                            # 0x4a7
	.quad	1215                            # 0x4bf
	.quad	1273                            # 0x4f9
	.quad	1288                            # 0x508
	.quad	1347                            # 0x543
	.quad	1366                            # 0x556
	.quad	1430                            # 0x596
	.quad	1453                            # 0x5ad
	.quad	1512                            # 0x5e8
	.quad	1529                            # 0x5f9
	.quad	1587                            # 0x633
	.quad	1608                            # 0x648
	.quad	1662                            # 0x67e
	.quad	1682                            # 0x692
	.quad	1739                            # 0x6cb
	.quad	1760                            # 0x6e0
	.quad	1820                            # 0x71c
	.quad	1843                            # 0x733
	.quad	1901                            # 0x76d
	.quad	1925                            # 0x785
	.quad	1984                            # 0x7c0
	.quad	2001                            # 0x7d1
	.quad	2060                            # 0x80c
	.quad	2082                            # 0x822
	.quad	2137                            # 0x859
	.quad	2159                            # 0x86f
	.quad	2218                            # 0x8aa
	.quad	2233                            # 0x8b9
	.quad	2290                            # 0x8f2
	.quad	2303                            # 0x8ff
	.quad	2364                            # 0x93c
	.quad	2390                            # 0x956
	.quad	2446                            # 0x98e
	.quad	2465                            # 0x9a1
	.quad	2525                            # 0x9dd
	.quad	2546                            # 0x9f2
	.quad	2603                            # 0xa2b
	.quad	2621                            # 0xa3d
	.quad	2682                            # 0xa7a
	.quad	2706                            # 0xa92
	.quad	2767                            # 0xacf
	.quad	2793                            # 0xae9
	.quad	2858                            # 0xb2a
	.quad	2878                            # 0xb3e
	.quad	2939                            # 0xb7b
	.quad	2961                            # 0xb91
	.quad	3022                            # 0xbce
	.quad	3038                            # 0xbde
	.quad	3098                            # 0xc1a
	.quad	3121                            # 0xc31
	.quad	3183                            # 0xc6f
	.quad	3198                            # 0xc7e
	.quad	3262                            # 0xcbe
	.quad	3284                            # 0xcd4
	.quad	3342                            # 0xd0e
	.quad	3355                            # 0xd1b
	.quad	3416                            # 0xd58
	.quad	3438                            # 0xd6e
	.quad	3495                            # 0xda7
	.quad	3515                            # 0xdbb
	.quad	3578                            # 0xdfa
	.quad	3600                            # 0xe10
	.quad	3659                            # 0xe4b
	.quad	3678                            # 0xe5e
	.quad	3737                            # 0xe99
	.quad	3752                            # 0xea8
	.quad	3815                            # 0xee7
	.quad	3834                            # 0xefa
	.quad	3892                            # 0xf34
	.quad	3917                            # 0xf4d
	.quad	3981                            # 0xf8d
	.quad	4000                            # 0xfa0
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4000xindex,@object # @__constant_4000xindex
	.p2align	6, 0x0
.L__constant_4000xindex:
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	97                              # 0x61
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
	.quad	74                              # 0x4a
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
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
	.quad	21                              # 0x15
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
	.quad	39                              # 0x27
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
	.quad	3                               # 0x3
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	97                              # 0x61
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
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
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
	.quad	63                              # 0x3f
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	21                              # 0x15
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
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
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	85                              # 0x55
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
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
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
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	30                              # 0x1e
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
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
	.quad	0                               # 0x0
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
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
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
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
	.quad	21                              # 0x15
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
	.quad	37                              # 0x25
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
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	89                              # 0x59
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
	.quad	21                              # 0x15
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
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
	.quad	23                              # 0x17
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
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
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
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
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
	.quad	53                              # 0x35
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
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
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
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
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
	.quad	23                              # 0x17
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
	.quad	46                              # 0x2e
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
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
	.quad	31                              # 0x1f
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
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
	.quad	75                              # 0x4b
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	37                              # 0x25
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
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
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
	.quad	71                              # 0x47
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
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
	.quad	63                              # 0x3f
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
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
	.quad	2                               # 0x2
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
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
	.quad	25                              # 0x19
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
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
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	22                              # 0x16
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	75                              # 0x4b
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
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
	.quad	33                              # 0x21
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
	.quad	67                              # 0x43
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
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
	.quad	23                              # 0x17
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
	.quad	73                              # 0x49
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
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
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
	.quad	27                              # 0x1b
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	48                              # 0x30
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
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
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	77                              # 0x4d
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
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
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
	.quad	63                              # 0x3f
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.size	.L__constant_4000xindex, 32000

	.type	.L__constant_4000xf64,@object   # @__constant_4000xf64
	.p2align	6, 0x0
.L__constant_4000xf64:
	.quad	0x401acefe4ffc9796              # double 6.7021420000000003
	.quad	0x40225b107746887b              # double 9.1778600000000008
	.quad	0x4021d9a5ca29845e              # double 8.9250930000000004
	.quad	0x401ac21c475e6363              # double 6.6895610000000003
	.quad	0x3fac1aef6f8f0414              # double 0.054892999999999997
	.quad	0x401ec670e2c12ad8              # double 7.6937899999999999
	.quad	0x3fe7f10880d801b4              # double 0.74817299999999998
	.quad	0x40081cca70d1fa33              # double 3.0140579999999999
	.quad	0x40217d4f15e7c8d2              # double 8.7447440000000007
	.quad	0x40104e83e425aee6              # double 4.0766749999999998
	.quad	0x4016e671ac14c661              # double 5.7250430000000003
	.quad	0x400618a4c1ebc83b              # double 2.7620330000000002
	.quad	0x3fc0f1e4b44a1f08              # double 0.132382
	.quad	0x40100f26aec0724b              # double 4.0147959999999996
	.quad	0x3ff5ccb4aec8d5c7              # double 1.3624769999999999
	.quad	0x4023675b81301648              # double 9.7018699999999995
	.quad	0x401e921ff2e48e8a              # double 7.6426999999999996
	.quad	0x40136d45e9185cee              # double 4.8567119999999999
	.quad	0x400450ecb74ddf87              # double 2.539514
	.quad	0x40134877ab324852              # double 4.8207690000000003
	.quad	0x401645375c8d9f90              # double 5.5675939999999997
	.quad	0x40232827525460aa              # double 9.5784249999999993
	.quad	0x401a7febd09e12a5              # double 6.6249229999999999
	.quad	0x400f3ed4a1ad6452              # double 3.9056790000000001
	.quad	0x401cf10b1feeb2d1              # double 7.2353940000000003
	.quad	0x40105062d40aaeb0              # double 4.0785020000000003
	.quad	0x4001557928e0c9da              # double 2.1667350000000001
	.quad	0x401ca5fc3b4f6167              # double 7.1620949999999999
	.quad	0x3fe57177a7008a69              # double 0.67010099999999995
	.quad	0x4019f125dd095af3              # double 6.4854960000000004
	.quad	0x4000996e9bbf0dc7              # double 2.0749179999999998
	.quad	0x40187c5479d4d834              # double 6.121416
	.quad	0x400c0f2a5a469d73              # double 3.5074049999999999
	.quad	0x4012ddbb9cf9a06a              # double 4.7165359999999996
	.quad	0x4007cb9fdbd2fa0d              # double 2.9744259999999998
	.quad	0x4015fbbecaab8a5d              # double 5.4958450000000001
	.quad	0x40161cd9a52263d8              # double 5.5281739999999999
	.quad	0x3ff586d2ed783dff              # double 1.3454159999999999
	.quad	0x4006b05857afea3e              # double 2.836106
	.quad	0x401f985015c20924              # double 7.8987429999999996
	.quad	0x400ea9e98dcdb37d              # double 3.8329650000000002
	.quad	0x3f24727dcbddb984              # double 1.56E-4
	.quad	0x401e5de3b8a19c9d              # double 7.5916889999999996
	.quad	0x3ff531af3a14cec4              # double 1.32463
	.quad	0x402169001d5c3159              # double 8.7050789999999996
	.quad	0x400e1de481f53826              # double 3.7645960000000001
	.quad	0x4022e50a24463066              # double 9.447343
	.quad	0x4014e7e132b55ef2              # double 5.226445
	.quad	0x3fe5c03ff69014b6              # double 0.67971800000000004
	.quad	0x400418f14db59579              # double 2.5121790000000002
	.quad	0x401a0e43aa79bbae              # double 6.5139300000000002
	.quad	0x40192a9d1f601798              # double 6.2916150000000002
	.quad	0x3fc9aa582dbe7f2c              # double 0.20051099999999999
	.quad	0x400952ce89656ef0              # double 3.1654330000000002
	.quad	0x401d45b20b8066c3              # double 7.3180620000000003
	.quad	0x3fe8d26d8b1dd5d4              # double 0.77568700000000001
	.quad	0x40044e0221426fe7              # double 2.53809
	.quad	0x4014009246bf0132              # double 5.0005579999999998
	.quad	0x40147a4a8c154c98              # double 5.1194249999999997
	.quad	0x400d2ebe596c82e0              # double 3.647824
	.quad	0x401b9f3d7d3910c3              # double 6.9055080000000002
	.quad	0x3ff5fac81d3aa36a              # double 1.373726
	.quad	0x3ff819a415f45e0b              # double 1.5062599999999999
	.quad	0x3fe74fd08d4bad7d              # double 0.72849299999999995
	.quad	0x400b81d3aa369fcf              # double 3.4383919999999999
	.quad	0x400a5420b3d4ae43              # double 3.2910780000000002
	.quad	0x4018f97e132b55ef              # double 6.2436449999999999
	.quad	0x40215ba493c89f41              # double 8.6789900000000006
	.quad	0x401aa4eca686e7e6              # double 6.6610589999999998
	.quad	0x400c1d0aed99cbef              # double 3.5141810000000002
	.quad	0x4022de358298cc14              # double 9.4340019999999995
	.quad	0x401feea4a8c154ca              # double 7.9830500000000004
	.quad	0x40233a465a57646b              # double 9.6138180000000001
	.quad	0x400b4a936c58eeaf              # double 3.4114140000000002
	.quad	0x3ff2743419e30015              # double 1.15337
	.quad	0x40125653868fd19a              # double 4.5843030000000002
	.quad	0x40129b3bfb58d152              # double 4.6515959999999996
	.quad	0x3ff7cacd184c2720              # double 1.487012
	.quad	0x40122a25d8d79d0a              # double 4.5411599999999996
	.quad	0x4001d1958969a0ae              # double 2.2273360000000002
	.quad	0x3fef0ac7da1ec4e7              # double 0.97006599999999998
	.quad	0x400c82f7b17ce52e              # double 3.563949
	.quad	0x401a5eeaa6d26741              # double 6.5926920000000004
	.quad	0x3ffed00b45ae5ffa              # double 1.9257919999999999
	.quad	0x3ffaf3929ed3953e              # double 1.684466
	.quad	0x401129f2778140dd              # double 4.2909639999999998
	.quad	0x40186ed45e9185cf              # double 6.1082320000000001
	.quad	0x401ce14b167ec786              # double 7.2200129999999998
	.quad	0x402174c964628028              # double 8.7280990000000003
	.quad	0x3fd2ed80a17b0f6b              # double 0.29574600000000001
	.quad	0x40183c36544fe36d              # double 6.0588009999999999
	.quad	0x40149fb43d89ce4a              # double 5.1559609999999996
	.quad	0x40175102363b2570              # double 5.82911
	.quad	0x401dfa9c99285a92              # double 7.4947379999999999
	.quad	0x4023cacf7446f9ba              # double 9.8961140000000007
	.quad	0x3ff9b5e0f7fcfc40              # double 1.6069040000000001
	.quad	0x4021e9702e6644d8              # double 8.9559339999999992
	.quad	0x4022b2849cb252ce              # double 9.348668
	.quad	0x401dc404ea4a8c15              # double 7.4414249999999997
	.quad	0x401ab979e16d6dc2              # double 6.6811290000000003
	.quad	0x3fd09e518f3eccc4              # double 0.25966299999999998
	.quad	0x4001afadf2ecf206              # double 2.2107809999999999
	.quad	0x400170b9dc2f405f              # double 2.1800419999999998
	.quad	0x40203b3cc4ac6cdb              # double 8.1156980000000001
	.quad	0x402012ccf6be37df              # double 8.0367200000000008
	.quad	0x4021168e3ef28416              # double 8.5440539999999991
	.quad	0x4022d566490a350d              # double 9.4167959999999997
	.quad	0x4009bb8f57f737da              # double 3.2165819999999998
	.quad	0x402311210385c67e              # double 9.533455
	.quad	0x4017e50a02b84125              # double 5.9736710000000004
	.quad	0x3ff5074a771c970f              # double 1.3142799999999999
	.quad	0x401f67b784662bae              # double 7.851286
	.quad	0x401580b0f27bb2ff              # double 5.3756750000000002
	.quad	0x4016a6f6512a94ff              # double 5.663049
	.quad	0x400a38c9fb6134ce              # double 3.2777289999999999
	.quad	0x401c8afea3df6db9              # double 7.1357369999999998
	.quad	0x4013827179bfdf7f              # double 4.8773860000000004
	.quad	0x3ffdbd48cb4aec8d              # double 1.8587119999999999
	.quad	0x40130a8bd230b9dc              # double 4.7602989999999998
	.quad	0x40218b17481b21c4              # double 8.7716619999999991
	.quad	0x40224cf93bc0a06f              # double 9.1503390000000007
	.quad	0x4021ee5492ff4ba5              # double 8.9654889999999998
	.quad	0x4017d4545846e8f3              # double 5.9573530000000003
	.quad	0x40218b4a44c7b02d              # double 8.7720509999999994
	.quad	0x400250225742dcf4              # double 2.2891279999999998
	.quad	0x40107c297bfa4c62              # double 4.1212520000000001
	.quad	0x3fe9b05100a393ee              # double 0.80277299999999996
	.quad	0x40007a4bdba0a527              # double 2.0597150000000002
	.quad	0x4020118a65492ff5              # double 8.0342590000000005
	.quad	0x4013200bcbe61d00              # double 4.7812950000000001
	.quad	0x40221422036006d1              # double 9.0393220000000003
	.quad	0x401fdd4306e5cd4f              # double 7.9660760000000001
	.quad	0x3ff8f41e14bdfd26              # double 1.559599
	.quad	0x401ae947064ece9a              # double 6.7278099999999998
	.quad	0x3fe8480c73abc947              # double 0.758795
	.quad	0x40220c0dd3fe1976              # double 9.0235430000000001
	.quad	0x4013392c49342678              # double 4.8058329999999998
	.quad	0x400f92f4cf4a558f              # double 3.9467560000000002
	.quad	0x4022f1b328b6d86f              # double 9.4720700000000004
	.quad	0x400e3ab96f21f6cb              # double 3.7786740000000001
	.quad	0x3ff5102ff8ec0f88              # double 1.316452
	.quad	0x401faef911cf355d              # double 7.9208720000000001
	.quad	0x3fe603686a4ca4f4              # double 0.68791599999999997
	.quad	0x400b8319c5a3e39f              # double 3.4390139999999998
	.quad	0x4005163b256ffc11              # double 2.6358549999999998
	.quad	0x4000b0fa58f7121b              # double 2.0864150000000001
	.quad	0x4021317bb7308356              # double 8.5966470000000008
	.quad	0x40198594af4f0d84              # double 6.3804499999999997
	.quad	0x401ea0e347629521              # double 7.6571170000000003
	.quad	0x400bc14940bbb1f2              # double 3.4693779999999999
	.quad	0x4019a129888f861a              # double 6.4073849999999997
	.quad	0x3fc8a18372e6a769              # double 0.19242899999999999
	.quad	0x401d067cf1c3265b              # double 7.2563360000000001
	.quad	0x40166d39da16616b              # double 5.6066659999999997
	.quad	0x401b0ac57e23f24e              # double 6.7605190000000004
	.quad	0x3ffbc183f91e646f              # double 1.734745
	.quad	0x40069192ea52ef91              # double 2.8210809999999999
	.quad	0x40114eb80ecfa69c              # double 4.3268740000000001
	.quad	0x40146ae147ae147b              # double 5.1043750000000001
	.quad	0x4021d9a2c669057d              # double 8.9250699999999998
	.quad	0x4021ae1cde5d1809              # double 8.8400639999999999
	.quad	0x400640e38a7e73a3              # double 2.7816839999999998
	.quad	0x4006d1e85fd04a30              # double 2.8524940000000001
	.quad	0x400330c0ad03d9a9              # double 2.3988049999999999
	.quad	0x402304be835dedf2              # double 9.5092660000000002
	.quad	0x4011f508f648c719              # double 4.4892919999999998
	.quad	0x4014d10c2c5e2cdc              # double 5.204148
	.quad	0x4018e676ea422899              # double 6.2250629999999996
	.quad	0x3ff3fb8c32a8c9b8              # double 1.2489129999999999
	.quad	0x4023fe3e4abe6a33              # double 9.9965689999999991
	.quad	0x401adc3e74afd545              # double 6.7150819999999998
	.quad	0x401ab577531db446              # double 6.6772130000000001
	.quad	0x401d3f88333fc86d              # double 7.3120430000000001
	.quad	0x40087d5e4a383276              # double 3.0612149999999998
	.quad	0x4004306705c896dd              # double 2.5236339999999999
	.quad	0x401db2b7fe08aefb              # double 7.4245299999999999
	.quad	0x401722235b4edb2f              # double 5.7833379999999996
	.quad	0x4016261b2a27f1b7              # double 5.5372130000000004
	.quad	0x401598f5c28f5c29              # double 5.399375
	.quad	0x4018fd9ec7000432              # double 6.2476760000000002
	.quad	0x4017d6249a133c1d              # double 5.9591240000000001
	.quad	0x401b87cd898b2e9d              # double 6.8826200000000002
	.quad	0x40133e414e7ee914              # double 4.8107959999999999
	.quad	0x4022dcdd2f1a9fbe              # double 9.4313749999999992
	.quad	0x400ff1bac2df0d41              # double 3.9930319999999999
	.quad	0x4020d8a8f3a9b068              # double 8.4231639999999999
	.quad	0x401593f5f91600f3              # double 5.3944929999999998
	.quad	0x401be44028e4fb98              # double 6.9729010000000002
	.quad	0x3fc2996312f4cf4a              # double 0.14530599999999999
	.quad	0x401b2c2b0ea18373              # double 6.7931330000000001
	.quad	0x3fecf4f93bc0a06f              # double 0.90490400000000004
	.quad	0x401c58ec52a411c3              # double 7.0868390000000003
	.quad	0x3fde946801711948              # double 0.47780800000000001
	.quad	0x400ac9784ec636b1              # double 3.3483740000000002
	.quad	0x4005c30a915379fb              # double 2.7202350000000002
	.quad	0x4016e0ce91c8eac0              # double 5.719538
	.quad	0x40217681a9b8cb8e              # double 8.7314579999999999
	.quad	0x3ffc47a5b0ff10ed              # double 1.7674920000000001
	.quad	0x401f5c050bd87b57              # double 7.8398630000000002
	.quad	0x3ff7043a2163fdd6              # double 1.4385319999999999
	.quad	0x4011bb75ea67e847              # double 4.4330670000000003
	.quad	0x3fed0cae642bf983              # double 0.90779799999999999
	.quad	0x3fe01a027525460b              # double 0.50317500000000004
	.quad	0x4004af893faf4278              # double 2.5857109999999999
	.quad	0x4016a7585be1a826              # double 5.6634229999999999
	.quad	0x4023b84f09528f19              # double 9.8599779999999999
	.quad	0x400584473cd57364              # double 2.6895889999999998
	.quad	0x40223104f6dfc5ce              # double 9.0957410000000003
	.quad	0x3fe67dc5931ca7d6              # double 0.70285299999999995
	.quad	0x40203d8ff7596851              # double 8.1202389999999998
	.quad	0x401e3e0f3cb3e575              # double 7.5606049999999997
	.quad	0x40044c493426783a              # double 2.5372490000000001
	.quad	0x4018f5ef62f9ca5c              # double 6.2401710000000001
	.quad	0x40092e02a77a2ced              # double 3.1474660000000001
	.quad	0x40214959a30984e4              # double 8.643262
	.quad	0x400270331e3a7daa              # double 2.3047849999999999
	.quad	0x4013f4e11dbca969              # double 4.9891399999999999
	.quad	0x401ccb00bcbe61d0              # double 7.198245
	.quad	0x4011174794ea0770              # double 4.2727339999999998
	.quad	0x401671cc532a4980              # double 5.6111310000000003
	.quad	0x401909ff4fd6d7e9              # double 6.2597630000000004
	.quad	0x40098cf7446f9b99              # double 3.1938309999999999
	.quad	0x401e881e4712e408              # double 7.6329279999999997
	.quad	0x400bf00f776c4828              # double 3.4922170000000001
	.quad	0x3ff3afd113836a83              # double 1.230424
	.quad	0x3fdbeb18116ebd4d              # double 0.436224
	.quad	0x4018cfaacd9e83e4              # double 6.2027999999999999
	.quad	0x3ffc3d912556d19e              # double 1.765031
	.quad	0x401a8066c2acb85a              # double 6.6253919999999997
	.quad	0x4023399ae924f228              # double 9.6125100000000003
	.quad	0x40226a031ceaf252              # double 9.2070550000000004
	.quad	0x40239507c84b5dcc              # double 9.7910749999999993
	.quad	0x3fd45e3da2f8bdec              # double 0.31825199999999998
	.quad	0x400926eb0b7c3505              # double 3.1440030000000001
	.quad	0x400d364e054690de              # double 3.651516
	.quad	0x401c757928e0c9da              # double 7.1147200000000002
	.quad	0x4003236f3b213e3e              # double 2.3923019999999999
	.quad	0x4008470b06c43f60              # double 3.0346890000000002
	.quad	0x3ffcc295a6c5d207              # double 1.797506
	.quad	0x4012f9d5e4a38327              # double 4.7439799999999996
	.quad	0x40073569f4906035              # double 2.901081
	.quad	0x401c26451b93037d              # double 7.0373729999999997
	.quad	0x40173486ad2dcb14              # double 5.8012949999999996
	.quad	0x40107ee8d10f51ad              # double 4.1239350000000004
	.quad	0x40178032db1e9f27              # double 5.8751939999999996
	.quad	0x401784690de09353              # double 5.8793069999999998
	.quad	0x401059acffa7eb6c              # double 4.087574
	.quad	0x400de73797460243              # double 3.7378990000000001
	.quad	0x3fc9d5cb790fb656              # double 0.20183699999999999
	.quad	0x4020da63d816aceb              # double 8.4265430000000006
	.quad	0x402150ae74f2f124              # double 8.6575810000000004
	.quad	0x3feb08bda9435ac9              # double 0.84481700000000004
	.quad	0x40232b64bec679cc              # double 9.5847529999999991
	.quad	0x4013cb69984a0e41              # double 4.948645
	.quad	0x40224209aaa3ad19              # double 9.1289800000000003
	.quad	0x3ff09f0e4da09cc3              # double 1.038832
	.quad	0x400198d716d2aa5c              # double 2.1996289999999998
	.quad	0x40214d32617c1bda              # double 8.6507749999999994
	.quad	0x4002a81669ced0b3              # double 2.332074
	.quad	0x4022e1491f2dc2b1              # double 9.4400110000000001
	.quad	0x401fa7b28954a7f8              # double 7.9137669999999999
	.quad	0x3ff9e41a261bf37c              # double 1.6181890000000001
	.quad	0x4020d7f0025bfad3              # double 8.4217530000000007
	.quad	0x4003b2220bc382a1              # double 2.4619789999999999
	.quad	0x3fb108c3f3e0370d              # double 0.066540000000000002
	.quad	0x4014ab3c3e74afd5              # double 5.1672219999999998
	.quad	0x4021fb2cc70867ae              # double 8.9905760000000008
	.quad	0x3ffd57d8cf398e97              # double 1.833947
	.quad	0x40135d9620685554              # double 4.8413930000000001
	.quad	0x4014348ecd8dbced              # double 5.0513260000000004
	.quad	0x401002b40f66a551              # double 4.0026400000000004
	.quad	0x400e071476af89c6              # double 3.753457
	.quad	0x40119b90214ad363              # double 4.4019170000000001
	.quad	0x400b8bb55ac03ff7              # double 3.4432170000000002
	.quad	0x4009ee6644d87725              # double 3.241406
	.quad	0x401761a8ef77f280              # double 5.8453710000000001
	.quad	0x3ffa488509bf9c63              # double 1.6427050000000001
	.quad	0x401b1116a8b8f14e              # double 6.7666880000000003
	.quad	0x401b918f81e8a2ec              # double 6.8921489999999999
	.quad	0x40087a5b9628cbd1              # double 3.0597449999999999
	.quad	0x401c551b0ccbc05d              # double 7.0831109999999997
	.quad	0x402230beb5b2d4d4              # double 9.0952049999999999
	.quad	0x3ffbce5a35d67ba2              # double 1.737879
	.quad	0x400dd86a8fc0d2c4              # double 3.7306720000000002
	.quad	0x3fda426fe718a86d              # double 0.41030499999999998
	.quad	0x3fe91b75a74c09c4              # double 0.78460200000000002
	.quad	0x4020787c6327ed85              # double 8.2353240000000003
	.quad	0x402343b57c4e2f38              # double 9.632244
	.quad	0x4016ecab3edd8b61              # double 5.731122
	.quad	0x40102b0ea18372e7              # double 4.0420480000000003
	.quad	0x40234b675ddd2ae9              # double 9.6472730000000002
	.quad	0x4004636006d0d499              # double 2.5485229999999999
	.quad	0x4004a81b21c475e6              # double 2.5820829999999999
	.quad	0x3feba14488c60cbf              # double 0.86343599999999998
	.quad	0x3fded58c8eef1bac              # double 0.48178399999999999
	.quad	0x402396e503fb3743              # double 9.7947159999999993
	.quad	0x40225a2be0589acc              # double 9.1761160000000003
	.quad	0x3ff9c37f7be121ee              # double 1.6102289999999999
	.quad	0x402228181e03f706              # double 9.0783090000000009
	.quad	0x401accd74927913f              # double 6.7000400000000004
	.quad	0x4013c8d10f51ac9b              # double 4.94611
	.quad	0x40126a7f3cf70154              # double 4.6040010000000002
	.quad	0x40225c8216c61523              # double 9.1806800000000006
	.quad	0x4021260b2c83ec89              # double 8.5743039999999997
	.quad	0x3fe1bd8383ad9f0a              # double 0.55438399999999999
	.quad	0x401718a6117720c9              # double 5.7740710000000002
	.quad	0x4014eb291b823c86              # double 5.2296490000000002
	.quad	0x40183558ea7ce0fc              # double 6.0520969999999998
	.quad	0x3fdbbacb4289118c              # double 0.43327599999999999
	.quad	0x401096f6512a94ff              # double 4.147424
	.quad	0x3ffce2856605ee57              # double 1.8053030000000001
	.quad	0x3ff32fe931876189              # double 1.1991970000000001
	.quad	0x401397d6f9767903              # double 4.8982809999999999
	.quad	0x4021a4016052502f              # double 8.8203230000000001
	.quad	0x4021d81a79fec99f              # double 8.9220769999999998
	.quad	0x40091a4e7ab75643              # double 3.137845
	.quad	0x40032cb4289118c2              # double 2.3968280000000002
	.quad	0x4011fee34fc610f1              # double 4.4989140000000001
	.quad	0x40171cf0739b024f              # double 5.7782609999999996
	.quad	0x401d4f0c34c1a8ac              # double 7.3271949999999997
	.quad	0x4014e4b6a619da9d              # double 5.2233530000000004
	.quad	0x4023870fbeb9e493              # double 9.7637920000000004
	.quad	0x401147ae9ab29e4d              # double 4.3200019999999997
	.quad	0x40044751ce28ed5f              # double 2.534824
	.quad	0x40156a433508f649              # double 5.3537720000000002
	.quad	0x4023da3a08398a65              # double 9.9262239999999994
	.quad	0x402288379314445b              # double 9.2660490000000006
	.quad	0x3ff73ca2120e1f7d              # double 1.4523029999999999
	.quad	0x40220fa46173b85f              # double 9.0305510000000009
	.quad	0x401e580ae1049236              # double 7.585979
	.quad	0x4017b173fb7a5f42              # double 5.9232940000000003
	.quad	0x4020468f08461f9f              # double 8.13781
	.quad	0x400fc616b54e2b06              # double 3.9717229999999999
	.quad	0x400ac667f90d9d77              # double 3.3468779999999998
	.quad	0x401c38d1526d8b1e              # double 7.0554860000000001
	.quad	0x4012bf88b9778573              # double 4.6870450000000003
	.quad	0x3fa569d30270f388              # double 0.041822999999999999
	.quad	0x4005733ca31e7d9a              # double 2.6812680000000002
	.quad	0x3ff4a62aa19439de              # double 1.2905679999999999
	.quad	0x3ff4924bfd2e9468              # double 1.285717
	.quad	0x40018d0d49949e88              # double 2.193873
	.quad	0x3ff351fe64f54d1f              # double 1.2075180000000001
	.quad	0x4017ecf67b1c0011              # double 5.9814090000000002
	.quad	0x40224c08b75ea67f              # double 9.1485040000000009
	.quad	0x3ff54a222d5171e3              # double 1.3305990000000001
	.quad	0x402257952d234eba              # double 9.1710600000000007
	.quad	0x401b553b8e4b87be              # double 6.8332350000000002
	.quad	0x40156443d46b26c0              # double 5.3479150000000004
	.quad	0x40052c6a3bddfca0              # double 2.646687
	.quad	0x402100e6d15ad107              # double 8.5017610000000001
	.quad	0x40209c5308bb9064              # double 8.3053209999999992
	.quad	0x400e70079a2834d2              # double 3.8047019999999998
	.quad	0x4008de1d2178f68c              # double 3.1084540000000001
	.quad	0x40220408d8ec95c0              # double 9.0078800000000001
	.quad	0x40211eb76709fa55              # double 8.5599930000000004
	.quad	0x401d6878fabda0e0              # double 7.3520240000000001
	.quad	0x40148450268900c5              # double 5.1292119999999999
	.quad	0x3ffc79b8887229e9              # double 1.779717
	.quad	0x400124c48adeebb3              # double 2.1429529999999999
	.quad	0x402086d3953dea46              # double 8.2633329999999994
	.quad	0x401d4125dd095af3              # double 7.3136210000000004
	.quad	0x40000ee8d10f51ad              # double 2.0072800000000002
	.quad	0x400b10014f8b588e              # double 3.3828149999999999
	.quad	0x400c4c2efd438d1e              # double 3.5371990000000002
	.quad	0x3ffd5d91ab8e8ea4              # double 1.8353440000000001
	.quad	0x4023c0fb00bcbe62              # double 9.8769150000000003
	.quad	0x4021bb2bba98eda2              # double 8.8655679999999997
	.quad	0x401e0e757928e0ca              # double 7.5141200000000001
	.quad	0x40122ac3a860dcba              # double 4.5417620000000003
	.quad	0x40200d061416377a              # double 8.0254370000000002
	.quad	0x4001a2d83c6c97d9              # double 2.2045140000000001
	.quad	0x4014d5b9e8c47a18              # double 5.208717
	.quad	0x401322ef4e0114d3              # double 4.784116
	.quad	0x3fff81e7967caea7              # double 1.9692149999999999
	.quad	0x4022c5d1a21ea359              # double 9.3863649999999996
	.quad	0x4023556b65a9a805              # double 9.6668350000000007
	.quad	0x401c4eec7c957cd4              # double 7.0770739999999996
	.quad	0x401c7bd7f51efb6e              # double 7.1209410000000002
	.quad	0x401f96327ed84d34              # double 7.8966770000000004
	.quad	0x40110d9a52263d81              # double 4.2632839999999996
	.quad	0x3ffd736694898f60              # double 1.8406739999999999
	.quad	0x4012bf727136a401              # double 4.68696
	.quad	0x4001db2e59af9ebf              # double 2.2320220000000002
	.quad	0x3fe8e34117f8444a              # double 0.77774100000000002
	.quad	0x400f08dd1e53a81e              # double 3.8793280000000001
	.quad	0x40050dfe75bc44bf              # double 2.6318329999999999
	.quad	0x40035c2ca148ba84              # double 2.420007
	.quad	0x3fe1e957470eb24a              # double 0.55973399999999995
	.quad	0x3ff6368be2f7b17d              # double 1.388317
	.quad	0x400a83cd141a6938              # double 3.3143560000000001
	.quad	0x400b0663c74fb54a              # double 3.37812
	.quad	0x401c561b6d43d039              # double 7.0840889999999996
	.quad	0x4017ea1a93293d10              # double 5.9786169999999998
	.quad	0x4019bb4f61672325              # double 6.4329200000000002
	.quad	0x40223d6d3b6cbd98              # double 9.1199739999999991
	.quad	0x4022e6c508b32ce9              # double 9.4507220000000007
	.quad	0x402084e4430b178b              # double 8.2595539999999996
	.quad	0x4015451ac9afe1da              # double 5.3174849999999996
	.quad	0x40054e48e8a71de7              # double 2.6632250000000002
	.quad	0x40208aed56b00ffe              # double 8.2713420000000006
	.quad	0x4023b7a5d28d002e              # double 9.8586869999999998
	.quad	0x401322ef0ae53650              # double 4.7841149999999999
	.quad	0x40239e46cfc829d0              # double 9.8091340000000002
	.quad	0x40105e6d9be4cd75              # double 4.0922150000000004
	.quad	0x40058f6598e10cf6              # double 2.6950180000000001
	.quad	0x3ff0c6d3f9e7b80b              # double 1.0485420000000001
	.quad	0x401a1dfe75bc44bf              # double 6.5292909999999997
	.quad	0x3ff68267839cd812              # double 1.4068369999999999
	.quad	0x402061409a240315              # double 8.1899460000000008
	.quad	0x400ffc98a222d517              # double 3.9983379999999999
	.quad	0x400e495c853c1483              # double 3.7858209999999999
	.quad	0x40016dafd113836b              # double 2.1785580000000002
	.quad	0x401edfbd273d5bab              # double 7.7184949999999998
	.quad	0x40206d0c80410300              # double 8.2129860000000008
	.quad	0x401a3bedfa43fe5d              # double 6.5585250000000004
	.quad	0x4015fa9bcfd4bf0a              # double 5.4947350000000004
	.quad	0x401b3c6cdaf4adbc              # double 6.8090089999999996
	.quad	0x4019a2de00d1b717              # double 6.4090499999999997
	.quad	0x4012f636b0963561              # double 4.740443
	.quad	0x4013a1e3eaf6837f              # double 4.9080959999999996
	.quad	0x400b82b40f66a551              # double 3.4388200000000002
	.quad	0x3ff40e1a3f4666ed              # double 1.2534430000000001
	.quad	0x400660c9d9d3458d              # double 2.7972600000000001
	.quad	0x401ff968d759ee89              # double 7.9935640000000001
	.quad	0x401579aa60913a50              # double 5.3688140000000004
	.quad	0x401219da9c99285b              # double 4.5252480000000004
	.quad	0x4010f522ea0fd3b3              # double 4.2393910000000004
	.quad	0x4014818b502ababf              # double 5.1265080000000003
	.quad	0x4023f8def416bdb2              # double 9.9860760000000006
	.quad	0x4018dd759ee88df3              # double 6.2162689999999996
	.quad	0x4020f09a02752546              # double 8.4699249999999999
	.quad	0x40100ef8055fbb51              # double 4.0146179999999996
	.quad	0x40210a1294573a79              # double 8.5196729999999992
	.quad	0x4002062dc6e2a800              # double 2.2530169999999998
	.quad	0x3ffb5dfeb8d82342              # double 1.710448
	.quad	0x4022cf6e6106ab15              # double 9.4051390000000001
	.quad	0x40196d87f88765ba              # double 6.3569639999999996
	.quad	0x400e93f63c31df76              # double 3.822247
	.quad	0x400ac0a9de8b3b32              # double 3.344074
	.quad	0x4022b992a737110e              # double 9.3624469999999995
	.quad	0x4023981c2e33eff2              # double 9.7970900000000007
	.quad	0x402199018e757929              # double 8.7988400000000002
	.quad	0x400638c111ada76e              # double 2.7777120000000002
	.quad	0x401abf1d81f10668              # double 6.686636
	.quad	0x401df7625204af92              # double 7.4915859999999999
	.quad	0x40237da5119ce076              # double 9.7454000000000001
	.quad	0x40111476af89c5e7              # double 4.269984
	.quad	0x4004fe29b6b2af14              # double 2.6241029999999999
	.quad	0x402253a55d1c3ac9              # double 9.1633709999999997
	.quad	0x401f94e7ab756430              # double 7.8954149999999998
	.quad	0x4013b33ebbfd71b0              # double 4.9250439999999998
	.quad	0x401be3e468cac4b5              # double 6.9725510000000002
	.quad	0x4021ccccab3edd8b              # double 8.8999989999999993
	.quad	0x3ffba821f2990f30              # double 1.728548
	.quad	0x3fd7d99cbee807bc              # double 0.37265700000000002
	.quad	0x400e0ccc46950fc7              # double 3.7562489999999999
	.quad	0x4021080c73abc947              # double 8.51572
	.quad	0x4018200000000000              # double 6.03125
	.quad	0x401614e3bcd35a86              # double 5.5204000000000004
	.quad	0x40221fa89331a08c              # double 9.061833
	.quad	0x400cdc347e8ccdd9              # double 3.6075219999999999
	.quad	0x3fa4e4a7b4e54f7b              # double 0.040807000000000003
	.quad	0x4015b7991bc55864              # double 5.4292949999999998
	.quad	0x3fe870c34c1a8ac6              # double 0.76376500000000003
	.quad	0x401a6864883fd502              # double 6.6019459999999999
	.quad	0x401609a415f45e0b              # double 5.5094149999999997
	.quad	0x40177e1b8ed1bf7b              # double 5.8731520000000002
	.quad	0x4020eef694467382              # double 8.4667250000000003
	.quad	0x40219b25b317efe1              # double 8.8030220000000003
	.quad	0x4012600c521dda06              # double 4.5937970000000004
	.quad	0x3ff5af5caf2d7f95              # double 1.355313
	.quad	0x400c26594af4f0d8              # double 3.5187249999999999
	.quad	0x400a487980f55de6              # double 3.2853880000000002
	.quad	0x4013a06ab14ec205              # double 4.906657
	.quad	0x400c3e7c06e19b91              # double 3.53051
	.quad	0x4019f79fec99f1ae              # double 6.4918209999999998
	.quad	0x3ff48d9b5e95b78d              # double 1.284572
	.quad	0x401efac18f81e8a3              # double 7.744879
	.quad	0x401ee2a9930be0df              # double 7.7213500000000001
	.quad	0x401f8c2eba27ae9b              # double 7.8868970000000002
	.quad	0x400651e85fd04a30              # double 2.7899940000000001
	.quad	0x3ff68ea077036c9c              # double 1.409821
	.quad	0x4013b457c0b13598              # double 4.9261160000000004
	.quad	0x3fd110d7be9856a3              # double 0.26665299999999997
	.quad	0x4021ce34330d7386              # double 8.9027419999999999
	.quad	0x400bef5126634118              # double 3.491854
	.quad	0x3ff81fa11a975afb              # double 1.507722
	.quad	0x40222ae8c0485a0c              # double 9.0838070000000001
	.quad	0x4014e2e6a76965f5              # double 5.2215829999999999
	.quad	0x40236c3fc43b2dd3              # double 9.7114239999999991
	.quad	0x401d684cad57bc7f              # double 7.3518549999999996
	.quad	0x400fffd2630ec311              # double 3.9999129999999998
	.quad	0x4020355de58e64b2              # double 8.1042319999999997
	.quad	0x4013047ae147ae14              # double 4.7543749999999996
	.quad	0x402258b3f63c31df              # double 9.1732479999999992
	.quad	0x400541e8a2ec28b3              # double 2.6571820000000002
	.quad	0x3fae82d7b634dad3              # double 0.059591999999999999
	.quad	0x40201f6b1a2a4db1              # double 8.0613639999999993
	.quad	0x4020d951e75360d0              # double 8.4244529999999997
	.quad	0x401ab4883fd50225              # double 6.6763009999999996
	.quad	0x3fd1a9fbe76c8b44              # double 0.27600000000000002
	.quad	0x40219422467be554              # double 8.7893240000000005
	.quad	0x4022dd1b71758e22              # double 9.4318500000000007
	.quad	0x401c64bfd2e94680              # double 7.0983879999999999
	.quad	0x3ffc3a7008a697af              # double 1.764267
	.quad	0x3ff4d410f94c8798              # double 1.301774
	.quad	0x401f9a2163fdd65a              # double 7.9005179999999999
	.quad	0x401677ee0b0af5fd              # double 5.6171189999999998
	.quad	0x402246705c896dd2              # double 9.1375759999999993
	.quad	0x400c17bd8be7296f              # double 3.5115919999999998
	.quad	0x3fe91c25d074213a              # double 0.78468599999999999
	.quad	0x401b28116ebd4cfd              # double 6.789129
	.quad	0x4002ccb7d41743e9              # double 2.3499599999999998
	.quad	0x401b5205bc01a36e              # double 6.8300999999999998
	.quad	0x3ffdadd052934acb              # double 1.854935
	.quad	0x40101b51372a38b9              # double 4.0266770000000003
	.quad	0x401139b23dd54da5              # double 4.3063440000000002
	.quad	0x4002886d71f36263              # double 2.3166150000000001
	.quad	0x402264ca70d1fa33              # double 9.1968569999999996
	.quad	0x4009c9b951c5c572              # double 3.2234980000000002
	.quad	0x3fc086cebbba55d2              # double 0.12911400000000001
	.quad	0x4019900c9539b888              # double 6.3906729999999996
	.quad	0x4003b9f3c70c996b              # double 2.4657969999999998
	.quad	0x3fe777d73c925786              # double 0.733379
	.quad	0x3ffdfec02f2f9874              # double 1.874695
	.quad	0x3ff486b8b69552e3              # double 1.282891
	.quad	0x400b0dcfcc5b8dc5              # double 3.3817439999999999
	.quad	0x4010929c779a6b51              # double 4.1431750000000003
	.quad	0x401afc23315d701e              # double 6.7462280000000003
	.quad	0x3fe732a497fa5d29              # double 0.72493200000000002
	.quad	0x401d4c88e79aae6d              # double 7.3247410000000004
	.quad	0x4022a9e3eaf6837f              # double 9.3318169999999991
	.quad	0x3ff07a322af57710              # double 1.029833
	.quad	0x40008b2c83ec892b              # double 2.0679560000000001
	.quad	0x402193cea6c1a049              # double 8.7886860000000002
	.quad	0x400de1016ce789e7              # double 3.7348659999999998
	.quad	0x3fdb44a1f080303c              # double 0.426064
	.quad	0x3fe2ae019b0ab2e1              # double 0.58374099999999995
	.quad	0x40220059210385c6              # double 9.0006799999999991
	.quad	0x3fb6e924f227d029              # double 0.089495000000000005
	.quad	0x4020eaab042528ae              # double 8.4583359999999992
	.quad	0x40232e59af9ebe9d              # double 9.5905280000000008
	.quad	0x3ffa8f08461f9f02              # double 1.6599200000000001
	.quad	0x3ff4471f79420b3d              # double 1.2673639999999999
	.quad	0x401a5a19008205ff              # double 6.5879859999999999
	.quad	0x4014b4ed6fda836f              # double 5.1766870000000003
	.quad	0x3ffe442a66dbd72c              # double 1.891642
	.quad	0x3ff91310129cbab6              # double 1.5671539999999999
	.quad	0x4022c80389f83be6              # double 9.3906519999999993
	.quad	0x402012d96a6a0126              # double 8.0368150000000007
	.quad	0x3feae4cb5bb384fd              # double 0.84042899999999998
	.quad	0x40171453d20f2bed              # double 5.7698510000000001
	.quad	0x4013d90e23af31b1              # double 4.9619679999999997
	.quad	0x400bde56473471f8              # double 3.4835630000000002
	.quad	0x3fdd6d2ed783dff4              # double 0.459789
	.quad	0x3fd668ad68837718              # double 0.35013899999999998
	.quad	0x402117878b7a1c26              # double 8.5459560000000003
	.quad	0x3fb01f53825e13b2              # double 0.062978000000000006
	.quad	0x4011790d173fb7a6              # double 4.368214
	.quad	0x40230915592d98bf              # double 9.5177409999999991
	.quad	0x402027748a159818              # double 8.0770610000000005
	.quad	0x401367521144cbe2              # double 4.8508990000000001
	.quad	0x3ff5fa13c254a3c6              # double 1.3735539999999999
	.quad	0x402027d976ff3ade              # double 8.0778309999999998
	.quad	0x401c5fc115df6556              # double 7.0935100000000002
	.quad	0x4013ea708ede54b5              # double 4.9789450000000004
	.quad	0x402293c4f3ba7760              # double 9.2886120000000005
	.quad	0x4020e4199fe43676              # double 8.4455080000000002
	.quad	0x401b75d0fa58f712              # double 6.8650549999999999
	.quad	0x400b84944ed6fda8              # double 3.4397359999999999
	.quad	0x402190ecb74ddf87              # double 8.7830560000000002
	.quad	0x401b9edcc20d562a              # double 6.9051390000000001
	.quad	0x400bee4d1a650614              # double 3.491358
	.quad	0x400c05a2d72ffd1e              # double 3.5027520000000001
	.quad	0x4002b414a4d2b2c0              # double 2.3379300000000001
	.quad	0x4023d9abd1aa821f              # double 9.9251389999999997
	.quad	0x4022cd6cf850df16              # double 9.4012220000000006
	.quad	0x401c94b167ec7864              # double 7.1452080000000002
	.quad	0x40204f82b1f687b1              # double 8.1552939999999996
	.quad	0x4012b77d0f1f57b4              # double 4.6791879999999999
	.quad	0x400fac8bc9cd3e0c              # double 3.9592510000000001
	.quad	0x401b0fa11a975afb              # double 6.765263
	.quad	0x40099db8fde2ef4e              # double 3.202013
	.quad	0x4015c679463cfb33              # double 5.4438219999999999
	.quad	0x3ff2faa8a82a5615              # double 1.186196
	.quad	0x4014929307af20ea              # double 5.1431389999999997
	.quad	0x4016fce89656eefa              # double 5.7469809999999999
	.quad	0x40145322f2734f83              # double 5.081188
	.quad	0x40114def416bdb1a              # double 4.3261079999999996
	.quad	0x401114790b849881              # double 4.2699930000000004
	.quad	0x400dfe931876188b              # double 3.749304
	.quad	0x4023d05681ecd4aa              # double 9.9069099999999999
	.quad	0x40208bbe0157eed4              # double 8.2729339999999993
	.quad	0x400d42888b545c79              # double 3.6574870000000002
	.quad	0x401013a2595bbbe8              # double 4.0191739999999996
	.quad	0x3ff336805a2d7300              # double 1.200806
	.quad	0x40086a7a41e57d9e              # double 3.0519910000000001
	.quad	0x3ff5a5ba6efc371e              # double 1.3529610000000001
	.quad	0x40072ab8a5ce5b42              # double 2.8958599999999999
	.quad	0x4023dcb039ef0f17              # double 9.931032
	.quad	0x4023069fcf3dc055              # double 9.5129380000000001
	.quad	0x4001c8f10a99b6f6              # double 2.2231160000000001
	.quad	0x3ff48ba732df505d              # double 1.284095
	.quad	0x40089fd47bedb728              # double 3.0780419999999999
	.quad	0x401f18f57f737da6              # double 7.7743739999999999
	.quad	0x401392c6ef3d3a1d              # double 4.8933369999999998
	.quad	0x4007b69a0ad8a116              # double 2.9641609999999998
	.quad	0x40040c1a048e043a              # double 2.5059089999999999
	.quad	0x4017be29b6b2af14              # double 5.9357059999999997
	.quad	0x40219bccaf709b74              # double 8.8042960000000007
	.quad	0x4019048b65237048              # double 6.2544380000000004
	.quad	0x40044f50a02b8412              # double 2.5387279999999999
	.quad	0x3ff2c71e6cd29132              # double 1.173613
	.quad	0x4008da3db3bfb58d              # double 3.106563
	.quad	0x4015bbd273d5bab2              # double 5.4334199999999999
	.quad	0x3fcfb645a1cac083              # double 0.24775
	.quad	0x400d19253543aeab              # double 3.6372779999999998
	.quad	0x4012178feef5ec81              # double 4.5230100000000002
	.quad	0x3ff31a8262456f76              # double 1.193972
	.quad	0x40005e9a6f826edb              # double 2.0461930000000002
	.quad	0x3fe7dafaf8594291              # double 0.74548099999999995
	.quad	0x3ff7fcd9a52263d8              # double 1.499231
	.quad	0x401b98adeebb341e              # double 6.8991009999999999
	.quad	0x400f1a4c61d8622c              # double 3.8878409999999999
	.quad	0x3fbebdc26dce39b4              # double 0.120083
	.quad	0x40108fb19e731d2e              # double 4.140326
	.quad	0x4005efde2ef4e011              # double 2.7421229999999999
	.quad	0x3ff3c25bfad29995              # double 1.2349509999999999
	.quad	0x4014810d38cda6e7              # double 5.1260269999999997
	.quad	0x40193660a2014728              # double 6.3031030000000001
	.quad	0x400c7eacc92146a2              # double 3.5618530000000002
	.quad	0x40002c42e9899bf6              # double 2.0216120000000002
	.quad	0x3ff4ce1e71044f1a              # double 1.300322
	.quad	0x40199f7a4e7ab756              # double 6.4057399999999998
	.quad	0x402059999999999a              # double 8.1750000000000007
	.quad	0x4023efdd00f776c5              # double 9.9684830000000008
	.quad	0x3fe880fdc1615ec0              # double 0.76574600000000004
	.quad	0x3fbbbe22e5de15ca              # double 0.10836999999999999
	.quad	0x401b6de5082cf52c              # double 6.8573190000000004
	.quad	0x4010cf81e8a2ec29              # double 4.2026440000000003
	.quad	0x40100af1886df82b              # double 4.0106869999999999
	.quad	0x3ff4006f262888b5              # double 1.2501059999999999
	.quad	0x400483c42a66dbd7              # double 2.5643389999999999
	.quad	0x40188845132f87ad              # double 6.133076
	.quad	0x3fed1f383f0bae8a              # double 0.91006100000000001
	.quad	0x4010b373f316e371              # double 4.1752469999999997
	.quad	0x4011797fe8ee6b83              # double 4.368652
	.quad	0x3fc0ed1394317acc              # double 0.13223499999999999
	.quad	0x401399abb01c92de              # double 4.9000690000000002
	.quad	0x3fe5a1f4b1ee2435              # double 0.67601999999999995
	.quad	0x401db4a38327674d              # double 7.4264049999999999
	.quad	0x4023c233bd9cae21              # double 9.8793009999999998
	.quad	0x40103ad362e90364              # double 4.0574469999999998
	.quad	0x401bbf9f44d44567              # double 6.9371309999999999
	.quad	0x3ff9bb69984a0e41              # double 1.608255
	.quad	0x3ff6842c7fbacb43              # double 1.4072690000000001
	.quad	0x4014651e75360d02              # double 5.0987489999999998
	.quad	0x40182d3cff64cf8d              # double 6.0441779999999996
	.quad	0x40219f6f2a5a469d              # double 8.8113949999999992
	.quad	0x40136496aad1d042              # double 4.8482310000000002
	.quad	0x401791a975afaf86              # double 5.8922480000000004
	.quad	0x3fee05f06f694467              # double 0.93822499999999998
	.quad	0x3feb3b341e14bdfd              # double 0.85097699999999998
	.quad	0x40237c408d8ec95c              # double 9.74268
	.quad	0x401903d9231c64bb              # double 6.2537580000000004
	.quad	0x4019644cbe1eb420              # double 6.3479489999999998
	.quad	0x4019345a1cac0831              # double 6.3011249999999999
	.quad	0x401044ac29bf162b              # double 4.0670630000000001
	.quad	0x400c516659d12cae              # double 3.5397460000000001
	.quad	0x40191f97edc7ef17              # double 6.2808529999999996
	.quad	0x3ffc6bb341e14be0              # double 1.776294
	.quad	0x401af94c447c30d3              # double 6.743455
	.quad	0x4010f0053e2d6239              # double 4.2343950000000001
	.quad	0x4017ff03d145d851              # double 5.9990379999999996
	.quad	0x3fe7a072d1aeb3dd              # double 0.73833599999999999
	.quad	0x3fbf2cf95d4e8fb0              # double 0.12178
	.quad	0x3fe6699a62ed3522              # double 0.70039099999999999
	.quad	0x40160389f83be660              # double 5.5034559999999999
	.quad	0x401dbd31b9b66f93              # double 7.4347599999999998
	.quad	0x3ffae07d4e09784f              # double 1.6798070000000001
	.quad	0x3ff793996fa82e88              # double 1.473535
	.quad	0x3fe76a2d2fe3f35a              # double 0.731711
	.quad	0x40185461309c7ffe              # double 6.0824020000000001
	.quad	0x3fec954003254e6e              # double 0.89321899999999999
	.quad	0x401a899a1fd1569f              # double 6.6343769999999997
	.quad	0x401759bbadc0980b              # double 5.8376299999999999
	.quad	0x4020d09eba6aca79              # double 8.4074609999999996
	.quad	0x401af221426fe719              # double 6.7364550000000003
	.quad	0x4021f861e92923e6              # double 8.9851220000000005
	.quad	0x4014cbfdf7e8038a              # double 5.199211
	.quad	0x4020cdbf8b9baa15              # double 8.4018519999999999
	.quad	0x401f4f10a99b6f5d              # double 7.8272120000000002
	.quad	0x40159c981beb1811              # double 5.4029239999999996
	.quad	0x3fd13e681a9b8cb9              # double 0.26943400000000001
	.quad	0x40155ddc1e7967cb              # double 5.3416600000000001
	.quad	0x3ff69a07b352a844              # double 1.4126050000000001
	.quad	0x401db45fe1112770              # double 7.4261470000000003
	.quad	0x402328aa64c2f838              # double 9.5794250000000005
	.quad	0x401f7640e9d51b50              # double 7.8654820000000001
	.quad	0x3ffb6177ea1c68ec              # double 1.7112959999999999
	.quad	0x4018b262888b545c              # double 6.1742039999999996
	.quad	0x3ff748bfc2224edf              # double 1.4552609999999999
	.quad	0x3ff4357c4e2f37fc              # double 1.263058
	.quad	0x401ec69f4906034f              # double 7.6939669999999997
	.quad	0x4023386d50657321              # double 9.6102089999999993
	.quad	0x3ff65f56a7ac81d4              # double 1.3982760000000001
	.quad	0x4008c61522a6f3f5              # double 3.0967199999999999
	.quad	0x4019165492ff4ba5              # double 6.2718069999999999
	.quad	0x3fd7e53a81dc0db2              # double 0.37336599999999998
	.quad	0x4014a349be8ff328              # double 5.1594610000000003
	.quad	0x4014ef52fc2656ac              # double 5.2337150000000001
	.quad	0x4021da3315d701da              # double 8.9261710000000001
	.quad	0x40070a0dbad3a605              # double 2.8799090000000001
	.quad	0x4005e82e87d2c7b9              # double 2.7383700000000002
	.quad	0x4006ea9c560c7c0f              # double 2.8645559999999999
	.quad	0x401ea24e59296702              # double 7.6585020000000004
	.quad	0x401aa8605681ecd5              # double 6.6644300000000003
	.quad	0x401f0f23033a4724              # double 7.7647820000000003
	.quad	0x400da95208e15012              # double 3.7076760000000002
	.quad	0x4009dad5bee3d5fe              # double 3.2318530000000001
	.quad	0x4019502d16b97fe9              # double 6.3282970000000001
	.quad	0x4012c567125dd096              # double 4.6927760000000003
	.quad	0x40216f4cd31769a9              # double 8.7173829999999999
	.quad	0x4013579dd3bafd97              # double 4.8355629999999996
	.quad	0x4000db8a19c9d5a2              # double 2.1071970000000002
	.quad	0x4021dddaceee0f3d              # double 8.9333100000000005
	.quad	0x3ff5eacfb762d83c              # double 1.3698269999999999
	.quad	0x3fef4649906cca2e              # double 0.97733000000000003
	.quad	0x40152ed0b30b5aa7              # double 5.2957179999999999
	.quad	0x401ab00ef1348b22              # double 6.671932
	.quad	0x40084fd32c625e9a              # double 3.038977
	.quad	0x401a65aa2e3c536d              # double 6.5992819999999996
	.quad	0x400b434117f8444a              # double 3.4078390000000001
	.quad	0x40191615ebfa8f7e              # double 6.2715680000000003
	.quad	0x4016178a2a90cd42              # double 5.5229879999999998
	.quad	0x3fe38e30446b69db              # double 0.61110699999999996
	.quad	0x3ff629f05ea24cc7              # double 1.3852390000000001
	.quad	0x400eca71de69ad43              # double 3.8488500000000001
	.quad	0x401be749f0e4da0a              # double 6.9758680000000002
	.quad	0x3ffcb154003254e7              # double 1.793293
	.quad	0x400ef486f049a997              # double 3.8693979999999999
	.quad	0x4023c013879c4114              # double 9.8751490000000003
	.quad	0x4010306d50657321              # double 4.0472919999999997
	.quad	0x401f3abfb9bed30f              # double 7.8073719999999999
	.quad	0x3fb005d52c16df40              # double 0.062589000000000006
	.quad	0x4003a33ce63a5c1c              # double 2.4547059999999998
	.quad	0x400dc7ecfe9b7bf2              # double 3.72262
	.quad	0x3fe9346fdeb52c9d              # double 0.78765099999999999
	.quad	0x402173ea91d9b1b8              # double 8.7263990000000007
	.quad	0x3fef8fe47991bc56              # double 0.98631500000000005
	.quad	0x401bb0520d130dfa              # double 6.9221880000000002
	.quad	0x400de78af3e468cb              # double 3.7380580000000001
	.quad	0x40205c9b41398634              # double 8.1808720000000008
	.quad	0x40223c0fcb4f1e4b              # double 9.1173079999999995
	.quad	0x4007fa6d698fe692              # double 2.9972789999999998
	.quad	0x40182b77c02afddb              # double 6.0424490000000004
	.quad	0x4018b758e219652c              # double 6.1790500000000002
	.quad	0x4016e0c8472c0e7c              # double 5.7195140000000002
	.quad	0x40139ada76d97b31              # double 4.901224
	.quad	0x4012fa393ee5eedd              # double 4.7443590000000002
	.quad	0x401ddf69014b599b              # double 7.4681740000000003
	.quad	0x4006d83947496aad              # double 2.8555779999999999
	.quad	0x3fee06cebbba55d2              # double 0.93833100000000003
	.quad	0x3ffde90bc7b45f18              # double 1.8693960000000001
	.quad	0x400e92a6b0d95140              # double 3.8216070000000002
	.quad	0x401cd002e2328f9f              # double 7.2031359999999998
	.quad	0x4014ae4f765fd8ae              # double 5.1702250000000003
	.quad	0x4018cf4c2b51bd62              # double 6.202439
	.quad	0x3ff6de4b44a1f080              # double 1.429271
	.quad	0x401744b9cb6848bf              # double 5.8171150000000003
	.quad	0x3ffcb294dd72367e              # double 1.7935989999999999
	.quad	0x40189b0142f61ed6              # double 6.1513720000000003
	.quad	0x3fa886df82b1f688              # double 0.047904000000000002
	.quad	0x400dc8beb5b2d4d4              # double 3.72302
	.quad	0x4021ddfce3150dae              # double 8.9335699999999996
	.quad	0x4017ca8da7f3cf70              # double 5.9478059999999999
	.quad	0x401bbfdd65a14489              # double 6.9373680000000002
	.quad	0x4015d8f92af9a8ce              # double 5.4618880000000001
	.quad	0x3fc1b9d7fd82773e              # double 0.138484
	.quad	0x4012c95dd4c76d11              # double 4.6966469999999996
	.quad	0x40206218def416be              # double 8.1915960000000005
	.quad	0x401d9a67a52ac754              # double 7.4007860000000001
	.quad	0x4015f13d31b9b670              # double 5.4855850000000004
	.quad	0x401cec3ce2089e34              # double 7.2307009999999998
	.quad	0x4015b418d6909aed              # double 5.4258759999999997
	.quad	0x401b8a8cdea033e8              # double 6.8853030000000004
	.quad	0x40006921ccd96207              # double 2.0513340000000002
	.quad	0x40217a13a0c6b485              # double 8.7384310000000003
	.quad	0x3fc437a3db3bfb59              # double 0.15794800000000001
	.quad	0x40219e6149c6f36f              # double 8.8093360000000001
	.quad	0x4020001cd5f99c39              # double 8.0002200000000006
	.quad	0x4002a7b0b3919264              # double 2.33188
	.quad	0x400874bad7d7c2ca              # double 3.056997
	.quad	0x401ff1372a38b8ae              # double 7.9855619999999998
	.quad	0x4020269c4545846f              # double 8.0754110000000008
	.quad	0x40124bba12b5e52a              # double 4.5739520000000002
	.quad	0x4021c219c9d5a188              # double 8.8791030000000006
	.quad	0x402326687f455a7d              # double 9.5750159999999997
	.quad	0x4022b5f99c38b04b              # double 9.3554200000000005
	.quad	0x4022829d8409e55c              # double 9.2551079999999998
	.quad	0x40235a8522ea0fd4              # double 9.6767970000000005
	.quad	0x401a4d99cbee807c              # double 6.5757820000000002
	.quad	0x3ff2cfa05143bf72              # double 1.1756899999999999
	.quad	0x400fefe79ee02a78              # double 3.9921410000000002
	.quad	0x3fdc53b8e4b87bdd              # double 0.44261
	.quad	0x3ff9b506dd69d302              # double 1.6066959999999999
	.quad	0x40208082491afc05              # double 8.2509940000000004
	.quad	0x4020ca3e18698351              # double 8.3950049999999994
	.quad	0x3fff10d5a5b9628d              # double 1.9416100000000001
	.quad	0x40083e80bed740c4              # double 3.030519
	.quad	0x401d389fc6da4485              # double 7.3052970000000004
	.quad	0x4020a87c6327ed85              # double 8.3290740000000003
	.quad	0x4003c027d88c1db0              # double 2.468826
	.quad	0x4019be2c12ad81ae              # double 6.4357150000000001
	.quad	0x4000fe4e69f05ea2              # double 2.1241729999999999
	.quad	0x3fdc8fa7a85015c2              # double 0.446268
	.quad	0x4016cda9435ac8a3              # double 5.7008409999999996
	.quad	0x4019915379fa97e1              # double 6.3919199999999998
	.quad	0x4019b0129cbab64a              # double 6.4219460000000002
	.quad	0x401fd426bb55ac04              # double 7.957179
	.quad	0x40233a556d19dece              # double 9.6139329999999994
	.quad	0x4020688051c9f72f              # double 8.2041039999999992
	.quad	0x401ccbaade657b85              # double 7.1988940000000001
	.quad	0x4015f3ed0f627393              # double 5.4882090000000003
	.quad	0x40231bf9830e3cda              # double 9.5546380000000006
	.quad	0x401bec3f811f4f51              # double 6.9807110000000003
	.quad	0x4017dc7ffde7210c              # double 5.9653320000000001
	.quad	0x401576adb402d16c              # double 5.3658970000000004
	.quad	0x4014f09d8c6d612c              # double 5.2349759999999996
	.quad	0x40231200e27e0efa              # double 9.5351630000000007
	.quad	0x4020c5c4c9c90c4e              # double 8.3862670000000001
	.quad	0x400a8e3e6c4c5975              # double 3.319455
	.quad	0x401b406c8711d799              # double 6.8129140000000001
	.quad	0x4014a58b3f63c31e              # double 5.161664
	.quad	0x4017fb18116ebd4d              # double 5.995209
	.quad	0x40122367a0f9096c              # double 4.5345750000000002
	.quad	0x40200028c36da87a              # double 8.000311
	.quad	0x4014cba51a005c46              # double 5.1988719999999997
	.quad	0x401237ee0b0af5fd              # double 4.5546189999999998
	.quad	0x401c9f82b1f687b1              # double 7.1557719999999998
	.quad	0x4017fa6ca03c4b0a              # double 5.9945550000000001
	.quad	0x400385004fb1183b              # double 2.4399419999999998
	.quad	0x3ffe667620ee8d11              # double 1.900015
	.quad	0x400e555cd91eeaa7              # double 3.7916810000000001
	.quad	0x3fd3a8198f1d3ed5              # double 0.30713499999999999
	.quad	0x400148a04d12018a              # double 2.1604619999999999
	.quad	0x40185151611ba3ca              # double 6.0794119999999996
	.quad	0x3feecb4289118c19              # double 0.96231199999999994
	.quad	0x3fe4bec460ed80a1              # double 0.64828699999999995
	.quad	0x3fff7d0bfa0945fa              # double 1.968029
	.quad	0x3ffe3efbf401c4fc              # double 1.890377
	.quad	0x3fed7f822bbecaac              # double 0.92181500000000005
	.quad	0x4012ec53b0813cac              # double 4.7307880000000004
	.quad	0x401c7003686a4ca5              # double 7.109388
	.quad	0x3fc37e56473471f8              # double 0.15229300000000001
	.quad	0x401b11beb18116ec              # double 6.7673290000000001
	.quad	0x401f45e3da2f8bdf              # double 7.8182520000000002
	.quad	0x401b789d27c39368              # double 6.8677869999999999
	.quad	0x40234f8ad2567989              # double 9.6553559999999993
	.quad	0x40210e4d1a650614              # double 8.5279319999999998
	.quad	0x4022109aaa3ad18d              # double 9.0324299999999997
	.quad	0x402043e2d6238da4              # double 8.1325900000000004
	.quad	0x4012a800218def41              # double 4.6640629999999996
	.quad	0x4018c6defc7a3982              # double 6.19421
	.quad	0x40026685db76b3bc              # double 2.3000600000000002
	.quad	0x40238b074a771c97              # double 9.7715399999999998
	.quad	0x40211ce0b912dba5              # double 8.5564020000000003
	.quad	0x3ff7d24f227d028a              # double 1.488845
	.quad	0x401c87ffde7210bf              # double 7.1328120000000004
	.quad	0x401aaf4623d0bfa1              # double 6.6711660000000004
	.quad	0x400cf07f23cc8de3              # double 3.6174300000000001
	.quad	0x4018f54a3c64345d              # double 6.239541
	.quad	0x40233852b4d8ba41              # double 9.6100060000000002
	.quad	0x4022eb78ee286727              # double 9.4599069999999993
	.quad	0x4021372324c83665              # double 8.6076899999999998
	.quad	0x4006b3be22e5de16              # double 2.8377650000000001
	.quad	0x40222b4699418506              # double 9.0845230000000008
	.quad	0x40158c8323358f2e              # double 5.387219
	.quad	0x4023d1ef30a4e37a              # double 9.9100280000000005
	.quad	0x401c52aae297396d              # double 7.08073
	.quad	0x4014687b56b87379              # double 5.1020329999999996
	.quad	0x3fc6623d0bfa0946              # double 0.174873
	.quad	0x40126e9c4545846f              # double 4.6080180000000004
	.quad	0x401334cdb7ae5797              # double 4.8015660000000002
	.quad	0x40234783dff3f0fe              # double 9.639678
	.quad	0x4021a0904f6dfc5d              # double 8.8136010000000002
	.quad	0x4021da096787ce96              # double 8.925853
	.quad	0x3fc34c985f06f694              # double 0.15077499999999999
	.quad	0x40043df86e3b46fe              # double 2.530259
	.quad	0x40214bb2bba98eda              # double 8.6478479999999998
	.quad	0x400327f1b6912125              # double 2.394504
	.quad	0x40000c061847f562              # double 2.005871
	.quad	0x40216aa4b9884c6a              # double 8.7082879999999996
	.quad	0x40150668c2613900              # double 5.256259
	.quad	0x4014537e6f71a7e3              # double 5.081537
	.quad	0x4019745d851654d6              # double 6.3636379999999999
	.quad	0x40052feac42e989a              # double 2.6483970000000001
	.quad	0x3fe39df548ecd8dc              # double 0.61303200000000002
	.quad	0x4022a51e321a2e7f              # double 9.3224959999999992
	.quad	0x4023309c5e6ff7e0              # double 9.5949430000000007
	.quad	0x4004ac46950fc71d              # double 2.5841189999999998
	.quad	0x4021df5cd0bb6ed6              # double 8.9362549999999992
	.quad	0x3ff5d1697f1f9ad0              # double 1.363626
	.quad	0x401cc87980f55de6              # double 7.1957760000000004
	.quad	0x4000a0a84be40421              # double 2.078446
	.quad	0x40218e42bf9830e4              # double 8.7778530000000003
	.quad	0x4009db66f9335d25              # double 3.2321300000000002
	.quad	0x4015b244e93e1c9b              # double 5.4240909999999998
	.quad	0x4003266dbd72bcb6              # double 2.393764
	.quad	0x40042d9945b6c376              # double 2.522265
	.quad	0x4005af5126634118              # double 2.710604
	.quad	0x401cce1a3f4666ed              # double 7.2012720000000003
	.quad	0x4023b4ee392e1ef7              # double 9.8533799999999995
	.quad	0x3fccd5171e29b6b3              # double 0.22525300000000001
	.quad	0x40129dde37585be2              # double 4.6541680000000003
	.quad	0x4023f49d9d3458cd              # double 9.9777649999999997
	.quad	0x4005f48a159817b9              # double 2.7444039999999998
	.quad	0x401b9b4d056c508b              # double 6.9016609999999998
	.quad	0x4010de1b089a0275              # double 4.2168999999999999
	.quad	0x401f8ff0cbaf965b              # double 7.8905669999999998
	.quad	0x40207bb0c4588a05              # double 8.2415830000000003
	.quad	0x4022b0d0678c0054              # double 9.3453400000000002
	.quad	0x40227f2452c59fb2              # double 9.2483240000000002
	.quad	0x402234d7cf5f4e44              # double 9.1032089999999996
	.quad	0x401ff48f96e15875              # double 7.9888289999999999
	.quad	0x4021043e5321e604              # double 8.5082880000000002
	.quad	0x4001b935fc3b4f61              # double 2.2154349999999998
	.quad	0x401bdd102bc72e27              # double 6.9658819999999997
	.quad	0x3feb6275ab7dc7ac              # double 0.855769
	.quad	0x400858d045fe1112              # double 3.0433659999999998
	.quad	0x40211b5653c9abb0              # double 8.5533929999999998
	.quad	0x40105164840e171a              # double 4.079485
	.quad	0x3fc9e7ea5f84cad5              # double 0.20238999999999999
	.quad	0x400a983e8576cce6              # double 3.324338
	.quad	0x4022e1ef5232d2bb              # double 9.4412789999999997
	.quad	0x40225531db445ed5              # double 9.1663960000000007
	.quad	0x3ff106c6583e8577              # double 1.064154
	.quad	0x40226a7fc32ebe59              # double 9.2080059999999992
	.quad	0x401d8778dd616f87              # double 7.3822970000000003
	.quad	0x4008dc7820a30db7              # double 3.1076510000000002
	.quad	0x3fc3f2990f301eac              # double 0.15584100000000001
	.quad	0x400c79f01b866e44              # double 3.5595400000000001
	.quad	0x402235f0b28522ea              # double 9.1053519999999999
	.quad	0x4000e2278d0cc35d              # double 2.1104270000000001
	.quad	0x4011e3a190082060              # double 4.472296
	.quad	0x3fdbbb2fec56d5d0              # double 0.43330000000000002
	.quad	0x4023f346fdeb52ca              # double 9.9751510000000003
	.quad	0x4022895db3397dd0              # double 9.2682929999999999
	.quad	0x402170cdc8754f37              # double 8.7203199999999992
	.quad	0x4005ef5ba2be058a              # double 2.7418740000000001
	.quad	0x4021842eba27ae9b              # double 8.7581690000000005
	.quad	0x40020d7a56de3327              # double 2.2565810000000002
	.quad	0x4002d9b2c40d0aaa              # double 2.3562979999999998
	.quad	0x40199296f6512a95              # double 6.393154
	.quad	0x3fc0342aa9f7b5af              # double 0.12659200000000001
	.quad	0x4020f0b6f9fcb0c0              # double 8.4701459999999997
	.quad	0x40161763a1900820              # double 5.5228409999999997
	.quad	0x40194b76f6d76252              # double 6.323696
	.quad	0x4010e53ef6b5d463              # double 4.2238730000000002
	.quad	0x400a080d801b4352              # double 3.2539319999999998
	.quad	0x401182c16df3f962              # double 4.3776910000000004
	.quad	0x40225af3a14cec42              # double 9.1776400000000002
	.quad	0x4012e9c6b0531983              # double 4.7282970000000004
	.quad	0x3f8ed20296b3354c              # double 0.015049
	.quad	0x400cc0a06e9ff0cc              # double 3.5940560000000001
	.quad	0x4018e67ad8e43244              # double 6.2250779999999999
	.quad	0x3fe049752977c88e              # double 0.50896699999999995
	.quad	0x402160917d6b65aa              # double 8.6886100000000006
	.quad	0x40236f4fd6d7e88a              # double 9.7174060000000004
	.quad	0x401f2aef6f8f0414              # double 7.7919289999999997
	.quad	0x4016b2d6238da3c2              # double 5.6746449999999999
	.quad	0x3fcd3e2d6238da3c              # double 0.22846
	.quad	0x3fccf95d4e8fb00c              # double 0.22636000000000001
	.quad	0x401a259146e4c0df              # double 6.5366869999999997
	.quad	0x400b016f86a09891              # double 3.3757009999999998
	.quad	0x4010be43675ddd2b              # double 4.1858040000000001
	.quad	0x400a7fe8ee6b8306              # double 3.3124560000000001
	.quad	0x3ff2ae429e0a41a2              # double 1.1675439999999999
	.quad	0x4023a55a7d24180d              # double 9.8229559999999995
	.quad	0x402378a137f38c54              # double 9.7356049999999996
	.quad	0x401302999567dbb1              # double 4.7525389999999996
	.quad	0x40217a8d21bc126a              # double 8.7393579999999993
	.quad	0x3fe012fd32c625ea              # double 0.50231800000000004
	.quad	0x40225f05a708ede5              # double 9.1855899999999995
	.quad	0x40070d594f26aec0              # double 2.8815179999999998
	.quad	0x3ff7451116a8b8f1              # double 1.4543619999999999
	.quad	0x401d11272c94b381              # double 7.2667510000000002
	.quad	0x40208be7d135115a              # double 8.2732530000000004
	.quad	0x4023c9de481f5382              # double 9.8942739999999993
	.quad	0x401c00b84988094e              # double 7.0007029999999997
	.quad	0x401778dd616f86a1              # double 5.8680320000000004
	.quad	0x40219999780baa58              # double 8.7999989999999997
	.quad	0x400d836a832b990b              # double 3.689168
	.quad	0x4023c7fb480a5acd              # double 9.8905890000000002
	.quad	0x3ff1ab313be22e5e              # double 1.104295
	.quad	0x40045069a4df47fa              # double 2.5392640000000002
	.quad	0x3fe2edaa92e62132              # double 0.59151200000000004
	.quad	0x4018ec3eb7cbb3c8              # double 6.2307079999999999
	.quad	0x401287ded6ba8c58              # double 4.6326859999999996
	.quad	0x4004d66f9335d24a              # double 2.604705
	.quad	0x402202b474107315              # double 9.0052830000000004
	.quad	0x401fb5c810a569b1              # double 7.9275209999999995
	.quad	0x3ff6519ac79702e6              # double 1.3949229999999999
	.quad	0x400eab524399b2c4              # double 3.833653
	.quad	0x40011040bfe3b03e              # double 2.1329359999999999
	.quad	0x401f8eec39799e52              # double 7.8895730000000004
	.quad	0x3fd0a2c669057d18              # double 0.25993500000000003
	.quad	0x4017769ca9ef5233              # double 5.8658320000000002
	.quad	0x4021eb1055b89939              # double 8.9591089999999998
	.quad	0x400a4a0ba1f4b1ee              # double 3.2861549999999999
	.quad	0x4009c86d71f36263              # double 3.2228650000000001
	.quad	0x400b5a5e353f7cee              # double 3.4191250000000002
	.quad	0x400ef93037d63023              # double 3.8716740000000001
	.quad	0x3ff78c87980f55de              # double 1.4718089999999999
	.quad	0x401d9509bf9c62a2              # double 7.3955450000000003
	.quad	0x400258a4c1ebc83b              # double 2.2932830000000002
	.quad	0x40167ecf63800219              # double 5.6238380000000001
	.quad	0x3ff1ea19439de482              # double 1.119653
	.quad	0x402317e49b1fab97              # double 9.546666
	.quad	0x400213cab81f969e              # double 2.2596639999999999
	.quad	0x4013320c8cd63cb8              # double 4.7988759999999999
	.quad	0x401f66b00ffda405              # double 7.8502809999999998
	.quad	0x3fe927cbf6e3f78c              # double 0.78610800000000002
	.quad	0x40220632e3821af8              # double 9.0121070000000003
	.quad	0x3ff9615fcc1871e7              # double 1.586273
	.quad	0x40223102ff8ec0f9              # double 9.0957260000000009
	.quad	0x40228d8cd20afa2f              # double 9.276465
	.quad	0x400823b256ffc116              # double 3.0174300000000001
	.quad	0x3ff7e49e44fa0514              # double 1.4933149999999999
	.quad	0x400e482491afc04d              # double 3.7852260000000002
	.quad	0x3fd497f62b6ae7d5              # double 0.32177499999999998
	.quad	0x400981b2a27f1b69              # double 3.188329
	.quad	0x4021350b524399b3              # double 8.6036020000000004
	.quad	0x40234660807357e6              # double 9.6374549999999992
	.quad	0x3fc008fa7a85015c              # double 0.125274
	.quad	0x40178eabffcdab19              # double 5.8893279999999999
	.quad	0x400be9984a0e410b              # double 3.4890599999999998
	.quad	0x40047589efd86a90              # double 2.5573920000000001
	.quad	0x400567baa9b499d0              # double 2.6756489999999999
	.quad	0x400ff1a7e3087875              # double 3.9929960000000002
	.quad	0x4011b154866a11ed              # double 4.4231740000000004
	.quad	0x401da58a76102795              # double 7.4116609999999996
	.quad	0x4020e81a5870da5e              # double 8.4533260000000006
	.quad	0x40238b2edfe75bc4              # double 9.7718419999999994
	.quad	0x3f9346994185058e              # double 0.018824
	.quad	0x402361c714fce747              # double 9.6909720000000003
	.quad	0x4013df5f0b28522f              # double 4.9681360000000003
	.quad	0x400cfc7e6b3fe9fb              # double 3.6232880000000001
	.quad	0x4012cb723ee1bd1f              # double 4.6986780000000001
	.quad	0x3ffca19da9c99286              # double 1.7894570000000001
	.quad	0x4022e39ecf638002              # double 9.4445709999999998
	.quad	0x402203137b07075b              # double 9.0060079999999996
	.quad	0x3ff207baa9b499d0              # double 1.126887
	.quad	0x40069595feda6613              # double 2.8230400000000002
	.quad	0x3fefd4f15e7c8d19              # double 0.99474399999999996
	.quad	0x40192d89ce4a7b4e              # double 6.2944709999999997
	.quad	0x4021b38cda6e75ff              # double 8.8506839999999993
	.quad	0x3ffb2012599ed7c7              # double 1.69533
	.quad	0x40230664f54d1e97              # double 9.5124890000000004
	.quad	0x401e27dfe32a0664              # double 7.5389400000000002
	.quad	0x401b0361565c2d28              # double 6.7533010000000004
	.quad	0x4019d28b2a6b0d95              # double 6.4556089999999999
	.quad	0x40045e34330d7386              # double 2.545998
	.quad	0x4023b3abead4f590              # double 9.8509209999999996
	.quad	0x400d3190d173fb7a              # double 3.6492019999999998
	.quad	0x402362ae297396d1              # double 9.6927350000000007
	.quad	0x4007e5532617c1be              # double 2.9869750000000002
	.quad	0x3fb634b945308bb9              # double 0.086742
	.quad	0x401bb928e0c9d9d3              # double 6.9308199999999998
	.quad	0x4007d83f0bae89ec              # double 2.9805890000000002
	.quad	0x4013f7d24180d3d0              # double 4.992013
	.quad	0x4013412dfd694ccb              # double 4.8136520000000003
	.quad	0x4023ddaee631f8a1              # double 9.9329750000000007
	.quad	0x400fdf4fd6d7e88a              # double 3.9840390000000001
	.quad	0x40218b6006d0d499              # double 8.7722169999999995
	.quad	0x3ffd66bc621b7e0b              # double 1.837582
	.quad	0x401e648c2e770bd0              # double 7.5981909999999999
	.quad	0x400b77d06bbdbe3c              # double 3.433503
	.quad	0x40101991361dc93f              # double 4.0249680000000003
	.quad	0x4022093f077ccc03              # double 9.0180589999999992
	.quad	0x4016aab0c88a47ed              # double 5.66669
	.quad	0x4002db0e5e679464              # double 2.3569610000000001
	.quad	0x3fd6606fac6045bb              # double 0.349636
	.quad	0x400b7b3743632c1f              # double 3.4351639999999999
	.quad	0x401a0f8ad2567989              # double 6.5151779999999997
	.quad	0x402383884406c00e              # double 9.7568990000000007
	.quad	0x401df84988094e5d              # double 7.4924679999999996
	.quad	0x400998bd66277c46              # double 3.1995800000000001
	.quad	0x401dbd0dcfcc5b8e              # double 7.4346230000000002
	.quad	0x3fc9ef416bdb1a6d              # double 0.20261399999999999
	.quad	0x40201173fb7a5f42              # double 8.0340880000000006
	.quad	0x4014c393682730c6              # double 5.1909919999999996
	.quad	0x3feaeb0531982880              # double 0.84118899999999996
	.quad	0x401293111f0c34c2              # double 4.6436200000000003
	.quad	0x401a7e9fadafd114              # double 6.6236560000000004
	.quad	0x40197dda8bd230ba              # double 6.3729040000000001
	.quad	0x4018a293d102bc73              # double 6.1587670000000001
	.quad	0x3ff3d44028e4fb98              # double 1.2393190000000001
	.quad	0x401af018611fd588              # double 6.7344679999999997
	.quad	0x4000887b139c94f7              # double 2.0666410000000002
	.quad	0x3fe802a77a2cecc8              # double 0.75032399999999999
	.quad	0x401814e618ce2d1f              # double 6.0204089999999999
	.quad	0x400af4bb5e0f7fd0              # double 3.3694980000000001
	.quad	0x402262e40852b4d9              # double 9.1931460000000005
	.quad	0x401ccc9363f572de              # double 7.1997809999999998
	.quad	0x400fd11ada76d97b              # double 3.9771019999999999
	.quad	0x4019ea65492ff4ba              # double 6.4789019999999997
	.quad	0x400f69f59ccfaeff              # double 3.9267379999999998
	.quad	0x3f41fd5885d31338              # double 5.4900000000000001E-4
	.quad	0x40210c2e33eff195              # double 8.52379
	.quad	0x40233d104d551d69              # double 9.6192650000000003
	.quad	0x40198c7fbacb4289              # double 6.3872059999999999
	.quad	0x4018f165907d9125              # double 6.2357389999999997
	.quad	0x4020762de8709742              # double 8.2308190000000003
	.quad	0x401bc02de00d1b71              # double 6.9376749999999996
	.quad	0x400b9b480a5accd5              # double 3.4508209999999999
	.quad	0x40211f81626b2f23              # double 8.561534
	.quad	0x40118df19d66adb4              # double 4.388617
	.quad	0x400d132ce89656ef              # double 3.634363
	.quad	0x3ff3aa875d56f32c              # double 1.229133
	.quad	0x401a41f70de8f6cf              # double 6.564419
	.quad	0x40076e453d20f2bf              # double 2.9288430000000001
	.quad	0x4022b805e5f30e80              # double 9.3594200000000001
	.quad	0x3ff3fad3a604e1e7              # double 1.248737
	.quad	0x4011ee69f05ea24d              # double 4.4828260000000002
	.quad	0x4023c3890d5a5b96              # double 9.8819049999999997
	.quad	0x3ff1df84cad57bc8              # double 1.11707
	.quad	0x400e9157abb8800f              # double 3.8209680000000001
	.quad	0x400688ef77f27fe5              # double 2.8168630000000001
	.quad	0x4012124bfd2e9468              # double 4.517868
	.quad	0x4022293ad5bee3d6              # double 9.080527
	.quad	0x4005ab89d6adf71f              # double 2.7087590000000001
	.quad	0x3ffecfbfc6540cc8              # double 1.9257200000000001
	.quad	0x401398f92af9a8ce              # double 4.8993880000000001
	.quad	0x401785f6fd21ff2e              # double 5.8808249999999997
	.quad	0x4013e544bb1af3a1              # double 4.9738949999999997
	.quad	0x3ff7090f733a8a40              # double 1.4397120000000001
	.quad	0x40221bb40b34e768              # double 9.0541079999999994
	.quad	0x402366b76709fa55              # double 9.7006180000000004
	.quad	0x4022355065732160              # double 9.1041290000000004
	.quad	0x4011c3a9f383f0bb              # double 4.4410780000000001
	.quad	0x4019e7cfe5860136              # double 6.4763789999999997
	.quad	0x3fd9253111f0c34c              # double 0.39289499999999999
	.quad	0x401a38cfbfc6540d              # double 6.5554800000000002
	.quad	0x401605158b827fa2              # double 5.5049650000000003
	.quad	0x3fd5f37b8d3f1844              # double 0.34298600000000001
	.quad	0x4003e023a6ce3583              # double 2.4844430000000002
	.quad	0x4020b59a0f0a5eff              # double 8.3546910000000008
	.quad	0x400d24cd74927914              # double 3.64297
	.quad	0x4000a9eba6aca793              # double 2.0829689999999998
	.quad	0x4012e82cf52b90a8              # double 4.7267340000000004
	.quad	0x3ffb39e9d0e991ff              # double 1.7016389999999999
	.quad	0x4017ae39f77292c5              # double 5.9201430000000004
	.quad	0x40215cb46bacf744              # double 8.6810639999999992
	.quad	0x401f933f42352eb6              # double 7.893796
	.quad	0x40201731f46ed246              # double 8.0453030000000005
	.quad	0x4022a4968943e100              # double 9.3214609999999993
	.quad	0x3ff0f021d10b1fef              # double 1.0586260000000001
	.quad	0x401002a454de7ea6              # double 4.00258
	.quad	0x400fbdbdb5d89481              # double 3.9676469999999999
	.quad	0x401dcb5b2d4d4025              # double 7.4485900000000003
	.quad	0x401c01b79d909f1f              # double 7.0016769999999999
	.quad	0x4022f787f023e9ea              # double 9.4834589999999999
	.quad	0x401ba461b6d43d04              # double 6.9105290000000004
	.quad	0x400a5817b95a2941              # double 3.2930139999999999
	.quad	0x400a01f9f01b866e              # double 3.2509649999999999
	.quad	0x3fedfab10ba62670              # double 0.93685200000000002
	.quad	0x4021baf944241c3f              # double 8.865183
	.quad	0x4020957470eb24a7              # double 8.2919040000000006
	.quad	0x4009db267c6b8b69              # double 3.2320069999999999
	.quad	0x4010812a51e321a3              # double 4.1261380000000001
	.quad	0x4010c1a8262456f7              # double 4.1891179999999997
	.quad	0x401eb74d1633482c              # double 7.6790050000000001
	.quad	0x401f23e29307af21              # double 7.785044
	.quad	0x40101908a265f0f6              # double 4.0244470000000003
	.quad	0x4020fb2c83ec892b              # double 8.4905740000000005
	.quad	0x4020fcb70ac3a861              # double 8.4935840000000002
	.quad	0x401092d1aeb3dd12              # double 4.1433780000000002
	.quad	0x400916b7ed41b75a              # double 3.1360929999999998
	.quad	0x401866e2eb1c432d              # double 6.1004750000000003
	.quad	0x401f151159c49774              # double 7.7705739999999999
	.quad	0x40174b09203a322b              # double 5.823277
	.quad	0x4021789d495182aa              # double 8.7355750000000008
	.quad	0x3fec9b52007dd441              # double 0.89395999999999998
	.quad	0x400a04c2f837b4a2              # double 3.2523249999999999
	.quad	0x40214a51c193b3a7              # double 8.6451550000000008
	.quad	0x402179ccd9620685              # double 8.7378909999999994
	.quad	0x401c0aa68f4b61fe              # double 7.0104009999999999
	.quad	0x40117e1c9b413986              # double 4.3731559999999998
	.quad	0x401adb93037d6302              # double 6.7144279999999998
	.quad	0x400a0cbd1244a622              # double 3.2562199999999999
	.quad	0x4003bacd5b6805a3              # double 2.4662120000000001
	.quad	0x401586ce358298cc              # double 5.3816459999999999
	.quad	0x401852089e34330d              # double 6.0801109999999996
	.quad	0x401336b441bb8c33              # double 4.8034220000000003
	.quad	0x402336c02f2f9874              # double 9.606935
	.quad	0x402233fc43b2dd37              # double 9.1015339999999991
	.quad	0x4016bb1f255f351a              # double 5.6827360000000002
	.quad	0x4009619da9c99286              # double 3.1726640000000002
	.quad	0x4023f811904b3c3e              # double 9.9845089999999992
	.quad	0x4010287fcb923a2a              # double 4.0395500000000002
	.quad	0x400ce4c8366516db              # double 3.61171
	.quad	0x402326d0d49949e9              # double 9.5758120000000008
	.quad	0x401df4fb549f9485              # double 7.4892399999999996
	.quad	0x400116ebd4cfd08d              # double 2.1361919999999999
	.quad	0x4005377079e59f2c              # double 2.6520700000000001
	.quad	0x4004e72a7bd48cb5              # double 2.6128740000000001
	.quad	0x40236197a24894c4              # double 9.6906099999999995
	.quad	0x3febdf37329c347f              # double 0.87099800000000005
	.quad	0x4013ef227d028a1e              # double 4.98353
	.quad	0x4013048f53c579f2              # double 4.7544529999999998
	.quad	0x3ffa30b178b37004              # double 1.6368879999999999
	.quad	0x400abe81450efdca              # double 3.3430200000000001
	.quad	0x4016bf0025bfad2a              # double 5.6865240000000004
	.quad	0x401c4d60a6330510              # double 7.075564
	.quad	0x3fe67ef39085f4a1              # double 0.70299699999999998
	.quad	0x3ff4dde8b3b32053              # double 1.3041769999999999
	.quad	0x4018f276b7ed41b7              # double 6.2367809999999997
	.quad	0x400376b1a2a4db16              # double 2.4329559999999999
	.quad	0x401d2f166e008e9b              # double 7.2959839999999998
	.quad	0x3ffdaeafab53d641              # double 1.855148
	.quad	0x4020d8637bd05af7              # double 8.4226340000000004
	.quad	0x401c346bacf74470              # double 7.0511920000000003
	.quad	0x4023d869c66d373b              # double 9.922682
	.quad	0x40129c1e7967caea              # double 4.6524599999999996
	.quad	0x4016f04ccee5abc1              # double 5.7346680000000001
	.quad	0x3ff1181cf7878b7a              # double 1.068387
	.quad	0x4015add441355476              # double 5.4197550000000003
	.quad	0x401daa5e353f7cee              # double 7.4163750000000004
	.quad	0x400434cec41dd1a2              # double 2.5257849999999999
	.quad	0x3fddcab81f969e3d              # double 0.46549800000000002
	.quad	0x401765fa22706d50              # double 5.8495869999999996
	.quad	0x4021d9a1986b9c30              # double 8.9250609999999995
	.quad	0x400b14c6e6d9be4d              # double 3.3851450000000001
	.quad	0x4007510ba6266fd6              # double 2.9145729999999999
	.quad	0x3fdb5b573eab367a              # double 0.42745
	.quad	0x3fd957bc7f77af64              # double 0.39598
	.quad	0x401c9650e779207d              # double 7.1467929999999997
	.quad	0x401807cf5f4e4431              # double 6.0076270000000003
	.quad	0x3ffc4e0b912dba4d              # double 1.7690539999999999
	.quad	0x40208f1886df82b2              # double 8.2794840000000001
	.quad	0x4011dba387592535              # double 4.4644909999999998
	.quad	0x3fe8188f42fe8251              # double 0.75299799999999995
	.quad	0x401a394317acc4f0              # double 6.5559200000000004
	.quad	0x4008ecf5b1c86488              # double 3.1157029999999999
	.quad	0x40202e49d388a8b1              # double 8.0904070000000008
	.quad	0x40223f46ed245b29              # double 9.1235879999999998
	.quad	0x4019a760bf5d7881              # double 6.4134549999999999
	.quad	0x400dbfa333764f12              # double 3.7185730000000001
	.quad	0x3ffbefc2656abde4              # double 1.746035
	.quad	0x40239ff90d9d7775              # double 9.8124470000000005
	.quad	0x3fec477ff151e753              # double 0.88372799999999996
	.quad	0x4019ed556084a516              # double 6.4817710000000002
	.quad	0x400841bc126a65cf              # double 3.0320969999999998
	.quad	0x3ff4af36ef8055fc              # double 1.2927770000000001
	.quad	0x40229a584f4c6e6e              # double 9.3014550000000007
	.quad	0x401b0d42c3c9eecc              # double 6.76295
	.quad	0x3f8aa4766c6de764              # double 0.013009
	.quad	0x401d1d05af6c69b6              # double 7.2783420000000003
	.quad	0x401df49385836220              # double 7.4888440000000003
	.quad	0x4009e786c226809d              # double 3.2380499999999999
	.quad	0x401a07add15f02c5              # double 6.5074990000000001
	.quad	0x40078dd0d8cb07d1              # double 2.9442460000000001
	.quad	0x4016e59c065b63d4              # double 5.7242280000000001
	.quad	0x402209c23b7952d2              # double 9.0190599999999996
	.quad	0x4019693e5fb71fbc              # double 6.3527769999999997
	.quad	0x4010ad523b3636f4              # double 4.1692590000000003
	.quad	0x4021f84a2fcefaa4              # double 8.9849409999999991
	.quad	0x400e3bb73083558a              # double 3.7791579999999998
	.quad	0x3fee25332acfb763              # double 0.94204100000000002
	.quad	0x4017b1f7d73c9258              # double 5.9237970000000004
	.quad	0x400f9f56a7ac81d4              # double 3.9528020000000001
	.quad	0x400b5ef39085f4a1              # double 3.4213629999999999
	.quad	0x400d3d7cb2d905c0              # double 3.6550229999999999
	.quad	0x40189fa82e87d2c8              # double 6.1559150000000002
	.quad	0x401481d57ff9b563              # double 5.1267909999999999
	.quad	0x40176ee41919ac79              # double 5.8582919999999996
	.quad	0x401c695703f2d3c8              # double 7.1028710000000004
	.quad	0x40216cdad31fcd25              # double 8.7126070000000002
	.quad	0x401e1578a2a90cd4              # double 7.5209679999999999
	.quad	0x4022288a04d12019              # double 9.0791780000000006
	.quad	0x40119c436fc158fb              # double 4.4026009999999998
	.quad	0x40146b2bfdb4cc25              # double 5.10466
	.quad	0x3fff8371da37ef5b              # double 1.9695910000000001
	.quad	0x4012c7f0aa21a71a              # double 4.6952540000000003
	.quad	0x40223072f33ca31e              # double 9.0946269999999991
	.quad	0x400e13482be8bc17              # double 3.7594150000000002
	.quad	0x401f08f53c579f23              # double 7.7587479999999997
	.quad	0x400c22b9d3cbc48f              # double 3.516956
	.quad	0x400424a0e410b631              # double 2.5178850000000002
	.quad	0x400cb7acc4ef88b9              # double 3.5896849999999998
	.quad	0x402193dd76683c29              # double 8.7887989999999991
	.quad	0x401b948ba83f4eca              # double 6.8950639999999996
	.quad	0x3fd08eb0318b9347              # double 0.25870900000000002
	.quad	0x4004c7724fa8b4c0              # double 2.5973860000000002
	.quad	0x401dd5c5b4aa9718              # double 7.4587620000000001
	.quad	0x4018a709b738e6d1              # double 6.1631229999999997
	.quad	0x40206d02ababead5              # double 8.2129110000000001
	.quad	0x401764373f316e37              # double 5.8478669999999999
	.quad	0x401b519934efcbd5              # double 6.8296859999999997
	.quad	0x40184158fb43d89d              # double 6.0638160000000001
	.quad	0x40119de6ddf00abf              # double 4.4042009999999996
	.quad	0x3ff7a6d4801f7510              # double 1.4782299999999999
	.quad	0x4015ed52c16df3f9              # double 5.4817609999999997
	.quad	0x401d42a7bd48cb4b              # double 7.3150930000000001
	.quad	0x401be4b44a1f0803              # double 6.973344
	.quad	0x401b11a75cd0bb6f              # double 6.7672400000000001
	.quad	0x4004a0303c07ee0b              # double 2.578217
	.quad	0x4002921e603d5779              # double 2.3213469999999998
	.quad	0x4023bd77318fc505              # double 9.8700500000000008
	.quad	0x401a587d6f976790              # double 6.5864159999999998
	.quad	0x400d07f349385836              # double 3.6288819999999999
	.quad	0x4003e7b0b3919264              # double 2.48813
	.quad	0x401cc2d6238da3c2              # double 7.1902699999999999
	.quad	0x3ff4a236c15d2d02              # double 1.2896030000000001
	.quad	0x3fb741d084e831ad              # double 0.090847999999999998
	.quad	0x3ff612674080f990              # double 1.3794930000000001
	.quad	0x3ffaa32f44912989              # double 1.6648400000000001
	.quad	0x3ff3469e7fb267c7              # double 1.2047410000000001
	.quad	0x40156b3743632c1f              # double 5.3547029999999998
	.quad	0x4009596e9bbf0dc7              # double 3.1686679999999998
	.quad	0x4004bb98c7e28241              # double 2.5916000000000001
	.quad	0x3ff09ae2da554b8c              # double 1.037814
	.quad	0x400db1715c63ae25              # double 3.7116419999999999
	.quad	0x3fda095af294dd72              # double 0.40682099999999999
	.quad	0x40017e54b48d3ae7              # double 2.1866850000000002
	.quad	0x3ffbd7939a7c17a9              # double 1.7401310000000001
	.quad	0x4017fb9f559b3d08              # double 5.9957250000000002
	.quad	0x401e9842b734b513              # double 7.6486919999999996
	.quad	0x4023eab239a38fbd              # double 9.9583910000000006
	.quad	0x40076c508b32ce89              # double 2.9278879999999998
	.quad	0x3fec102795703f2d              # double 0.87697199999999997
	.quad	0x402048811b1d92b8              # double 8.14161
	.quad	0x401a973d9ec70004              # double 6.6476959999999998
	.quad	0x401dfd5a9eb2074f              # double 7.4974160000000003
	.quad	0x401cd3f42352eb5f              # double 7.2069859999999997
	.quad	0x40162d9c6b053198              # double 5.5445419999999999
	.quad	0x40121b9628cbd124              # double 4.5269399999999997
	.quad	0x401c7d056c508b33              # double 7.1220910000000002
	.quad	0x4020def459d9902a              # double 8.4354580000000006
	.quad	0x40190088509bf9c6              # double 6.2505199999999999
	.quad	0x400c706d50657321              # double 3.5548959999999998
	.quad	0x40226a3a29c779a7              # double 9.2074750000000005
	.quad	0x400d42a5614df8b1              # double 3.6575419999999998
	.quad	0x401924d4cb9ecf64              # double 6.2859680000000004
	.quad	0x401b4816aceaaf36              # double 6.8203990000000001
	.quad	0x40207749adc8fb87              # double 8.2329840000000001
	.quad	0x400e39cd8127b2cc              # double 3.7782239999999998
	.quad	0x3ff25d30270f3882              # double 1.147751
	.quad	0x4002238433d6c722              # double 2.2673420000000002
	.quad	0x3ff784178705425f              # double 1.469749
	.quad	0x401942dc6e2a8006              # double 6.3152939999999997
	.quad	0x401112ebe596c82e              # double 4.268478
	.quad	0x4010b920c069e7fb              # double 4.1807889999999999
	.quad	0x401e45ca29845dc8              # double 7.5681539999999998
	.quad	0x4023844ed6fda837              # double 9.7584140000000001
	.quad	0x401f921c044284e0              # double 7.8926850000000002
	.quad	0x400afe353f7ced91              # double 3.3741249999999998
	.quad	0x40235576ab5807ff              # double 9.6669210000000003
	.quad	0x3fd026a22b3892ef              # double 0.25235800000000003
	.quad	0x4016a930be0ded29              # double 5.6652250000000004
	.quad	0x401794d940789614              # double 5.8953600000000002
	.quad	0x4018889acbc8c0cf              # double 6.1334030000000004
	.quad	0x4015ef13059641f6              # double 5.4834709999999998
	.quad	0x3ffa515df6555c53              # double 1.644865
	.quad	0x401a34a6223e186a              # double 6.5514150000000004
	.quad	0x40209960fa15db34              # double 8.2995680000000007
	.quad	0x400b0230fcf80dc3              # double 3.3760699999999999
	.quad	0x4015a611ba3ca750              # double 5.4121769999999998
	.quad	0x40079441bb8c32a9              # double 2.9473910000000001
	.quad	0x3ff3e34117f8444a              # double 1.242982
	.quad	0x4020d0055fbb517a              # double 8.4062909999999995
	.quad	0x40115943e1006078              # double 4.3371729999999999
	.quad	0x402021d1d4738a3b              # double 8.0660539999999994
	.quad	0x40232d3ae685db77              # double 9.5883400000000005
	.quad	0x401fc59210385c68              # double 7.9429400000000001
	.quad	0x401dd3925bb7b6bb              # double 7.4566129999999999
	.quad	0x401a9f76a2f48c2e              # double 6.6557259999999996
	.quad	0x4000050e779207d5              # double 2.0024690000000001
	.quad	0x3fd6a18372e6a769              # double 0.35360799999999998
	.quad	0x401ae19008205ff2              # double 6.7202760000000001
	.quad	0x401a1c0c62e4d1a6              # double 6.5273909999999997
	.quad	0x40215cbb1af3a14d              # double 8.6811150000000001
	.quad	0x3fe1fc200c0f01fc              # double 0.56202700000000005
	.quad	0x402122eddce7cd03              # double 8.5682209999999994
	.quad	0x402138ffda4052d6              # double 8.6113269999999993
	.quad	0x4023a467dfe32a06              # double 9.8211049999999993
	.quad	0x401dff08893b7d85              # double 7.4990560000000003
	.quad	0x40196803cd141a69              # double 6.3515769999999998
	.quad	0x3fff60d5629d840a              # double 1.961141
	.quad	0x401fb84ba0e84274              # double 7.9299759999999999
	.quad	0x4018fecd8dbcec85              # double 6.248831
	.quad	0x40049a708ede54b5              # double 2.5754100000000002
	.quad	0x3ffe7be22e5de15d              # double 1.9052450000000001
	.quad	0x400a0d85dfa871a4              # double 3.2566030000000001
	.quad	0x4022cbf4a98aa865              # double 9.3983509999999998
	.quad	0x400183a109d0635a              # double 2.1892719999999999
	.quad	0x3fdf37824d4cb9ed              # double 0.487763
	.quad	0x401f6144028e4fb9              # double 7.8449859999999995
	.quad	0x4017476ab5807fed              # double 5.8197429999999999
	.quad	0x4011187c6327ed85              # double 4.2739120000000002
	.quad	0x4008731db445ed4a              # double 3.056209
	.quad	0x4022373bea91d9b2              # double 9.1078790000000005
	.quad	0x401330dbf0563ed1              # double 4.797714
	.quad	0x40128098915bdd76              # double 4.6255819999999996
	.quad	0x3fbd51b4fe79ee03              # double 0.114528
	.quad	0x40154cc426351def              # double 5.324967
	.quad	0x4020becefed63455              # double 8.3726730000000007
	.quad	0x4021fb1c0010c6f8              # double 8.9904480000000007
	.quad	0x401063fb7a5f41af              # double 4.097639
	.quad	0x40169093964a59c0              # double 5.6411879999999996
	.quad	0x4018427aa68f4b62              # double 6.064921
	.quad	0x4022260f3cb3e575              # double 9.0743349999999996
	.quad	0x4020ea478854cdb8              # double 8.4575770000000006
	.quad	0x402078485a0be511              # double 8.2349270000000008
	.quad	0x40164b242070b8d0              # double 5.5733800000000002
	.quad	0x400d0e3bcd35a858              # double 3.6319499999999998
	.quad	0x4014e16228134480              # double 5.2201009999999997
	.quad	0x400361c58255b036              # double 2.4227400000000001
	.quad	0x40220d627bf61aa4              # double 9.0261420000000001
	.quad	0x40226c35696e58a3              # double 9.2113449999999997
	.quad	0x401b6fc9ff92f2b6              # double 6.8591689999999996
	.quad	0x400756de33269df9              # double 2.9174159999999998
	.quad	0x401fad85dfa871a4              # double 7.9194560000000003
	.quad	0x3ffc0daf4adbc665              # double 1.753341
	.quad	0x4012b0a4a05dd8f9              # double 4.6725029999999999
	.quad	0x4002f6512a94ff00              # double 2.3702719999999999
	.quad	0x40230c35efa615a9              # double 9.5238490000000002
	.quad	0x400ee37585be1a82              # double 3.8610639999999998
	.quad	0x402036481f53825e              # double 8.1060189999999999
	.quad	0x401d80780fdc1616              # double 7.3754580000000001
	.quad	0x401c7b76f6d76252              # double 7.120571
	.quad	0x400bd53cddd6e04c              # double 3.47912
	.quad	0x4021418eb8950764              # double 8.6280420000000006
	.quad	0x40033c70c996b767              # double 2.404512
	.quad	0x40101dd4c76d117b              # double 4.0291319999999997
	.quad	0x40165ffd60e94ee4              # double 5.5937400000000004
	.quad	0x401210f451761459              # double 4.5165569999999997
	.quad	0x401e260956c0d6f5              # double 7.5371449999999997
	.quad	0x3fe14fe79ee02a78              # double 0.54100400000000004
	.quad	0x4004763ed0f62739              # double 2.5577369999999999
	.quad	0x40083da5119ce076              # double 3.0301
	.quad	0x4003f27c39368273              # double 2.493401
	.quad	0x400eea832b990afe              # double 3.8645079999999998
	.quad	0x400ca4dd2f1a9fbe              # double 3.5804999999999998
	.quad	0x3fe7dea897635e74              # double 0.74592999999999998
	.quad	0x4007968b5cbff477              # double 2.9485079999999999
	.quad	0x3fdec4934267839d              # double 0.48074800000000001
	.quad	0x401f91669ced0b31              # double 7.8919930000000002
	.quad	0x3fa6cf63800218df              # double 0.044551
	.quad	0x402227f3cf70153c              # double 9.0780320000000003
	.quad	0x3fa3ecedd4845133              # double 0.038917
	.quad	0x3ff30b08dd1e53a8              # double 1.190194
	.quad	0x401df15097c80842              # double 7.4856590000000001
	.quad	0x3fefafff36ac6477              # double 0.99023399999999994
	.quad	0x400db05c03361566              # double 3.7111130000000001
	.quad	0x401d550a88effe2a              # double 7.3330479999999998
	.quad	0x4020cdbdd76683c3              # double 8.4018390000000007
	.quad	0x3ff347d0aed99cbf              # double 1.205033
	.quad	0x400cc8427418d691              # double 3.5977830000000002
	.quad	0x3fe08f2170931013              # double 0.51747200000000004
	.quad	0x4017ae2e2b8c75c5              # double 5.9200980000000003
	.quad	0x400957c7820a30db              # double 3.1678609999999998
	.quad	0x401ee15a4acf312b              # double 7.7200709999999999
	.quad	0x400197ecbb7f9d6f              # double 2.199182
	.quad	0x401c93abc947064f              # double 7.1442100000000002
	.quad	0x4017aa84be40420f              # double 5.9165219999999996
	.quad	0x401be66c6de76428              # double 6.9750230000000002
	.quad	0x4022c51aa821f299              # double 9.3849689999999998
	.quad	0x401796bf8769ec2d              # double 5.8972150000000001
	.quad	0x402178fb00bcbe62              # double 8.7362900000000003
	.quad	0x4017b82a9930be0e              # double 5.9298500000000001
	.quad	0x4004d6dfc5cdd50b              # double 2.6049190000000002
	.quad	0x4002434330d73861              # double 2.2828430000000002
	.quad	0x3ff336bc1eff9f88              # double 1.200863
	.quad	0x401c4b7c3504c48b              # double 7.0737160000000001
	.quad	0x4021c44dec1c1d6d              # double 8.8834070000000001
	.quad	0x4012d7da61e0c5a8              # double 4.7107939999999999
	.quad	0x3f750ca1cef240fb              # double 0.0051390000000000003
	.quad	0x40057ec7000431be              # double 2.686903
	.quad	0x40217f1e4b44a1f1              # double 8.7482780000000009
	.quad	0x4020010e453d20f3              # double 8.0020620000000005
	.quad	0x40209a8fc0d2c387              # double 8.3018780000000003
	.quad	0x40143669ced0b30b              # double 5.0531379999999997
	.quad	0x401487e8ccdd93c4              # double 5.1327239999999996
	.quad	0x4014c0431bde82d8              # double 5.1877560000000003
	.quad	0x400c6fa93af74cd3              # double 3.554522
	.quad	0x401c0af89c5e6ff8              # double 7.0107140000000001
	.quad	0x3ff9b506dd69d302              # double 1.6066959999999999
	.quad	0x402302af35e310dc              # double 9.5052430000000001
	.quad	0x40074522ea0fd3b3              # double 2.9087580000000002
	.quad	0x400f37225b749add              # double 3.9019210000000002
	.quad	0x3fe3a6e115592d99              # double 0.61412100000000003
	.quad	0x3fe35ea24cc68230              # double 0.60530200000000001
	.quad	0x3ff68e69f05ea24d              # double 1.409769
	.quad	0x4023fba647fdc593              # double 9.9915029999999998
	.quad	0x3fd7515ce9e5e248              # double 0.36434100000000003
	.quad	0x3feeff583a53b8e5              # double 0.96867000000000003
	.quad	0x4017bcf5b1c86488              # double 5.9345309999999998
	.quad	0x4021e20c6b484d77              # double 8.9415010000000006
	.quad	0x402283da9435ac8a              # double 9.2575269999999996
	.quad	0x40104f67f4dbdf8f              # double 4.0775449999999998
	.quad	0x401ad69728a61177              # double 6.7095609999999999
	.quad	0x401954934267839d              # double 6.3325930000000001
	.quad	0x401e54ffc9795b36              # double 7.5830070000000003
	.quad	0x400ecf3f52fc2657              # double 3.8511950000000001
	.quad	0x401febb8800eae19              # double 7.9801960000000002
	.quad	0x3ffe9767903211cb              # double 1.911964
	.quad	0x401769c842fa5094              # double 5.8533030000000004
	.quad	0x3ff5f7d41743e964              # double 1.373005
	.quad	0x401ce5dd095af295              # double 7.2244760000000001
	.quad	0x3ffb31ed17c5ef63              # double 1.699689
	.quad	0x4021b2f8bdec5f39              # double 8.8495539999999995
	.quad	0x3fe2a9bcfd4bf099              # double 0.58321999999999996
	.quad	0x3ff860663c74fb55              # double 1.5235350000000001
	.quad	0x40196c1f85d744f6              # double 6.3555890000000002
	.quad	0x40174add9c27e953              # double 5.8231109999999999
	.quad	0x4023970f3882278d              # double 9.7950379999999999
	.quad	0x40119aa2a0a95853              # double 4.4010109999999996
	.quad	0x4010f798958d9b5f              # double 4.2417930000000004
	.quad	0x4021f921ee675148              # double 8.9865870000000001
	.quad	0x40205cfa8b4bf8fd              # double 8.1815990000000003
	.quad	0x401207225b749add              # double 4.5069670000000004
	.quad	0x3ffbd231c64ba94c              # double 1.7388170000000001
	.quad	0x4013e2ef0ae53650              # double 4.9716149999999999
	.quad	0x402131d9b1b79d91              # double 8.5973640000000007
	.quad	0x4020baf5ba2be059              # double 8.3651560000000007
	.quad	0x401c65460aa64c30              # double 7.0989000000000004
	.quad	0x40226e5929670197              # double 9.2155240000000003
	.quad	0x4022f059210385c6              # double 9.4694299999999991
	.quad	0x401ba306a2b17050              # double 6.909205
	.quad	0x3ffb968837718655              # double 1.724251
	.quad	0x401b20535c9e6688              # double 6.781568
	.quad	0x3fedd2c386d2ed78              # double 0.93197799999999997
	.quad	0x4020b2294141e9af              # double 8.3479709999999994
	.quad	0x400f22b841248d7e              # double 3.891953
	.quad	0x40141078d92fb19e              # double 5.0160859999999996
	.quad	0x401db6ef3d3a1d32              # double 7.4286469999999998
	.quad	0x402163906466b1e6              # double 8.6944610000000004
	.quad	0x3fe2e15011904b3c              # double 0.59000399999999997
	.quad	0x400bbc5479d4d834              # double 3.466958
	.quad	0x3ff838bdec5f394b              # double 1.5138529999999999
	.quad	0x40114111276fb092              # double 4.313542
	.quad	0x4009b482be8bc16a              # double 3.2131400000000001
	.quad	0x3fbbc9363f572de4              # double 0.108539
	.quad	0x401b2bb44e50c5eb              # double 6.7926799999999998
	.quad	0x401a1f2495e17e35              # double 6.5304130000000002
	.quad	0x4020167a311e85fd              # double 8.043901
	.quad	0x3fe2897c80841ede              # double 0.57928299999999999
	.quad	0x4022ab484d76ab58              # double 9.3345359999999999
	.quad	0x400d103d145d8516              # double 3.6329289999999999
	.quad	0x400d979207d4e098              # double 3.6990090000000002
	.quad	0x401fa0357a355044              # double 7.9064540000000001
	.quad	0x3fc2087442c7fbad              # double 0.14088300000000001
	.quad	0x400b477f6b1a2a4e              # double 3.4099110000000001
	.quad	0x4022dba4b5568e82              # double 9.4289909999999999
	.quad	0x4004cf35e310dbf0              # double 2.6011769999999999
	.quad	0x40232ef5a964e8b8              # double 9.5917180000000001
	.quad	0x400653cff64cf8d7              # double 2.790924
	.quad	0x4020a09741d084e8              # double 8.3136539999999997
	.quad	0x4007670196d8f4f9              # double 2.9252959999999999
	.quad	0x401f70c77dd872f3              # double 7.8601359999999997
	.quad	0x401b79f2fdb8fde3              # double 6.8690910000000001
	.quad	0x3fe3f9e59f2ba9d2              # double 0.624255
	.quad	0x4021e3068123810f              # double 8.9434090000000008
	.quad	0x40187940357a3550              # double 6.1184089999999998
	.quad	0x40080b26394face6              # double 3.0054439999999998
	.quad	0x400932f23033a472              # double 3.1498759999999999
	.quad	0x4022bfde7210be94              # double 9.3747439999999997
	.quad	0x4011e91eeaa6d267              # double 4.4776569999999998
	.quad	0x3fd0958d9b5e95b8              # double 0.25912800000000002
	.quad	0x401e88a979e16d6e              # double 7.6334590000000002
	.quad	0x400da0a8d21bc127              # double 3.7034470000000002
	.quad	0x40078387df5cf249              # double 2.9392239999999998
	.quad	0x4018d8e086bdf4c3              # double 6.2117940000000003
	.quad	0x401cb8c47a17f413              # double 7.1804370000000004
	.quad	0x3fef3cf70153bd16              # double 0.97619199999999995
	.quad	0x4018eb9f127f5e85              # double 6.2300990000000001
	.quad	0x4008ed8fd5cb7910              # double 3.1159970000000001
	.quad	0x40202d54da4ce810              # double 8.0885379999999998
	.quad	0x4015b7036c9c0a8d              # double 5.4287239999999999
	.quad	0x4001aa6fc58ab92c              # double 2.208221
	.quad	0x3ff8d92c8c5004fb              # double 1.553021
	.quad	0x4011e4ed6fda836f              # double 4.4735620000000003
	.quad	0x401db3f4666ec9e2              # double 7.4257369999999998
	.quad	0x4014c91819d2391d              # double 5.1963809999999997
	.quad	0x3ff72b8737974602              # double 1.4481269999999999
	.quad	0x3ff7758f2e05ccc9              # double 1.4662010000000001
	.quad	0x400289c779a6b50b              # double 2.317275
	.quad	0x402149b089a02752              # double 8.6439249999999994
	.quad	0x401597aaac1094a3              # double 5.3981120000000002
	.quad	0x400aebcbe61cffeb              # double 3.365135
	.quad	0x3fec03925bb7b6bb              # double 0.87543599999999999
	.quad	0x401b2f68be2f7b18              # double 6.7962980000000002
	.quad	0x40085ced916872b0              # double 3.0453749999999999
	.quad	0x401cb8d5842b734b              # double 7.1805019999999997
	.quad	0x400a32dcb1465e89              # double 3.2748349999999999
	.quad	0x402182f3e468cac5              # double 8.7557670000000005
	.quad	0x40028a4c1ebc83a9              # double 2.3175279999999998
	.quad	0x40215430f49491f3              # double 8.6644360000000002
	.quad	0x40212ea26e547171              # double 8.5910829999999994
	.quad	0x4021037fbefd0071              # double 8.5068339999999996
	.quad	0x4010bce4a7b4e54f              # double 4.1844659999999996
	.quad	0x3ffe73b7521144cc              # double 1.903251
	.quad	0x4023bdda8bd230ba              # double 9.8708080000000002
	.quad	0x4012419ce075f6fd              # double 4.5640749999999999
	.quad	0x3fc23c42a66dbd73              # double 0.14246400000000001
	.quad	0x401c991212513b5c              # double 7.149483
	.quad	0x402114b838c111ae              # double 8.5404680000000006
	.quad	0x40232b586ca89fc7              # double 9.5846590000000002
	.quad	0x40056ae5bc87db2b              # double 2.6771959999999999
	.quad	0x401e8f19934efcbd              # double 7.6397459999999997
	.quad	0x401c0ad6451b9303              # double 7.0105829999999996
	.quad	0x400e9246bf01322f              # double 3.8214239999999999
	.quad	0x401fdc382a12f901              # double 7.9650579999999999
	.quad	0x40185ec5b078d930              # double 6.0925510000000003
	.quad	0x40225b0f8c64fdb1              # double 9.1778530000000007
	.quad	0x402136efe4ffc979              # double 8.6072989999999994
	.quad	0x3fe56afab53d640f              # double 0.66930900000000004
	.quad	0x40169c1b97353b4b              # double 5.6524489999999998
	.quad	0x3ff3423c85c24c40              # double 1.2036709999999999
	.quad	0x3ff424345cfede98              # double 1.258839
	.quad	0x401d4d78c436fc16              # double 7.3256560000000004
	.quad	0x401d4e0f7fcfc3f8              # double 7.3262309999999999
	.quad	0x401932f449129889              # double 6.29976
	.quad	0x3fdb307f23cc8de3              # double 0.42483500000000002
	.quad	0x3ff3d50dae3e6c4c              # double 1.2395149999999999
	.quad	0x401d31672324c836              # double 7.2982449999999996
	.quad	0x3fe812dfd694ccab              # double 0.75230399999999997
	.quad	0x4023ddb37c99ae92              # double 9.9330099999999995
	.quad	0x401127739f340d4e              # double 4.2885270000000002
	.quad	0x40076e23af31b153              # double 2.928779
	.quad	0x3fddb86f47b677f7              # double 0.46438200000000002
	.quad	0x4006d33f42352eb6              # double 2.853148
	.quad	0x401b28f08461f9f0              # double 6.7899799999999999
	.quad	0x401419018e757929              # double 5.0244200000000001
	.quad	0x401ac3ed527e5215              # double 6.6913349999999996
	.quad	0x401c432ce89656ef              # double 7.065601
	.quad	0x3ff88e032db1e9f2              # double 1.5346709999999999
	.quad	0x400eca161e4f7660              # double 3.8486750000000001
	.quad	0x401f644b2b777d0f              # double 7.8479429999999998
	.quad	0x4004f4bd76ee73e7              # double 2.6195020000000002
	.quad	0x402327fe08aefb2b              # double 9.5781100000000005
	.quad	0x40101c6bce8533b1              # double 4.027755
	.quad	0x401c0355cd91eeaa              # double 7.0032569999999996
	.quad	0x4019f183f91e646f              # double 6.4858549999999999
	.quad	0x3fd225edd052934b              # double 0.28356500000000001
	.quad	0x4015da86d71f3626              # double 5.4634049999999998
	.quad	0x3ff5c0bdcad14a0a              # double 1.359556
	.quad	0x4001d4927913e814              # double 2.2287949999999999
	.quad	0x400240d349be8ff3              # double 2.2816529999999999
	.quad	0x401dccf70153bd16              # double 7.4501609999999996
	.quad	0x40231bf8769ec2ce              # double 9.5546299999999995
	.quad	0x402113bf727136a4              # double 8.5385699999999999
	.quad	0x4012935eb7457c0b              # double 4.6439159999999999
	.quad	0x4021c1626b2f2303              # double 8.8777039999999996
	.quad	0x402295844d013a93              # double 9.2920250000000006
	.quad	0x40237000a7c5ac47              # double 9.7187549999999998
	.quad	0x3ff9735d249e44fa              # double 1.590665
	.quad	0x401f21c970f7b9e0              # double 7.7829949999999997
	.quad	0x4021ce38a7e73a36              # double 8.9027759999999994
	.quad	0x401e6d4bf0995aaf              # double 7.6067349999999995
	.quad	0x401baf27bb2fec57              # double 6.9210500000000001
	.quad	0x40186539b888722a              # double 6.0988530000000001
	.quad	0x400d2d2bb23571d2              # double 3.6470560000000001
	.quad	0x3fe10a32f4491299              # double 0.53249500000000005
	.quad	0x401b051e321a2e7f              # double 6.7549979999999996
	.quad	0x40152788db0574b4              # double 5.288608
	.quad	0x3fca486ad2dcb146              # double 0.20533499999999999
	.quad	0x3feb84d12018a43c              # double 0.85996300000000003
	.quad	0x401ce9d1b2e59afa              # double 7.2283390000000001
	.quad	0x4001cce4ead0c3d2              # double 2.2250459999999999
	.quad	0x40216598bf7f0670              # double 8.6984309999999994
	.quad	0x401efb4b72c5197a              # double 7.7454049999999999
	.quad	0x401c31cd1c7de508              # double 7.0486339999999998
	.quad	0x401a02018a43bb41              # double 6.5019590000000003
	.quad	0x400a098eda22f6a5              # double 3.254667
	.quad	0x400400f55de58e65              # double 2.5004680000000001
	.quad	0x3ff4c0474d9c6b05              # double 1.296943
	.quad	0x400ed60bf5d78812              # double 3.8545150000000001
	.quad	0x400519c17225b74a              # double 2.6375760000000001
	.quad	0x4011cd2d87f88766              # double 4.4503690000000002
	.quad	0x402374f227d028a2              # double 9.7284100000000002
	.quad	0x401a506317268d33              # double 6.5785030000000004
	.quad	0x401c3b11c6d1e109              # double 7.0576850000000002
	.quad	0x3fe028b6d86ec17f              # double 0.50497000000000003
	.quad	0x4005ccbc8c0ce91d              # double 2.7249690000000002
	.quad	0x401d93393ab430f5              # double 7.3937730000000004
	.quad	0x4013df705857afea              # double 4.9682019999999998
	.quad	0x4017da5d28d002e2              # double 5.9632459999999998
	.quad	0x400d865625a682b6              # double 3.6905939999999999
	.quad	0x40178455219a847b              # double 5.8792309999999999
	.quad	0x40223b3461309c80              # double 9.115634
	.quad	0x40215161e4f765fe              # double 8.6589500000000008
	.quad	0x3ffb8372e6a76966              # double 1.719592
	.quad	0x3fd91e3eaf6837f8              # double 0.39247100000000001
	.quad	0x3fe3984a0e410b63              # double 0.61234
	.quad	0x3ff1b37110e453d2              # double 1.106309
	.quad	0x4005a5bb7b6bb129              # double 2.705924
	.quad	0x4022c3b7521144cc              # double 9.3822580000000002
	.quad	0x401f084406c00da2              # double 7.7580720000000003
	.quad	0x40040944ed6fda83              # double 2.5045259999999998
	.quad	0x40228be468cac4b5              # double 9.2732270000000003
	.quad	0x40153bd2b6f19935              # double 5.3084210000000001
	.quad	0x3ff406e08f217093              # double 1.251679
	.quad	0x4013a73c4f3ba776              # double 4.913316
	.quad	0x401dae1da7b0b392              # double 7.4200350000000004
	.quad	0x4017626d04e618ce              # double 5.8461189999999998
	.quad	0x40151cf893faf428              # double 5.2782920000000004
	.quad	0x401419081c2e33f0              # double 5.0244450000000001
	.quad	0x401e92539756c93a              # double 7.6428969999999996
	.quad	0x402195c28f5c28f6              # double 8.7925000000000004
	.quad	0x4023bf93bc0a06ea              # double 9.874174
	.quad	0x400dcf062d40aaeb              # double 3.726086
	.quad	0x40200675579af188              # double 8.0126139999999992
	.quad	0x3fff823854046413              # double 1.969292
	.quad	0x401ce4f0520d130e              # double 7.223573
	.quad	0x40228c5a5fc7e6b4              # double 9.274127
	.quad	0x3ffacec52a411c2a              # double 1.675481
	.quad	0x3fe1598e10cf5b1d              # double 0.54218200000000005
	.quad	0x400463bb40b34e77              # double 2.5486970000000002
	.quad	0x4000ee7b3d8e0008              # double 2.1164459999999998
	.quad	0x4016deba6aca7935              # double 5.7175079999999996
	.quad	0x401e6986fcdee350              # double 7.6030540000000002
	.quad	0x400329d0e991ff71              # double 2.3954179999999998
	.quad	0x3fd18b9baa1511e0              # double 0.274146
	.quad	0x3fe1091e215336df              # double 0.53236300000000003
	.quad	0x40235f442c7fbacb              # double 9.6860669999999995
	.quad	0x3ff48d07852f7f4a              # double 1.2844310000000001
	.quad	0x40156e33eff19503              # double 5.3576199999999998
	.quad	0x4022e6a1c68ec52a              # double 9.4504529999999995
	.quad	0x4019097fe8ee6b83              # double 6.259277
	.quad	0x402205a0be510907              # double 9.0109919999999999
	.quad	0x3facc07aaef2c732              # double 0.056155999999999998
	.quad	0x3ff529ef5232d2bb              # double 1.322738
	.quad	0x401fc6013660e51d              # double 7.9433639999999998
	.quad	0x401873986338b47c              # double 6.1128859999999996
	.quad	0x4008051d25aab474              # double 3.002497
	.quad	0x4022881e4712e408              # double 9.2658559999999994
	.quad	0x4022cb1e7d9988d3              # double 9.3967170000000006
	.quad	0x402039e215336dec              # double 8.1130530000000007
	.quad	0x400fef733a8a3f8a              # double 3.9919190000000002
	.quad	0x401e7fcd67fd3f5b              # double 7.6248069999999996
	.quad	0x401c629068986fce              # double 7.0962540000000001
	.quad	0x401c1a17f4128bf4              # double 7.0254820000000002
	.quad	0x40122ba98eda22f7              # double 4.5426390000000003
	.quad	0x3ff660535c9e6688              # double 1.398517
	.quad	0x4001316c1e364bec              # double 2.1491319999999998
	.quad	0x40039ade225fa659              # double 2.4506190000000001
	.quad	0x4010d2ead9274e23              # double 4.2059740000000003
	.quad	0x400156feb4a6655a              # double 2.167478
	.quad	0x3ff1f6deb95e5aff              # double 1.122771
	.quad	0x3fd4db1a6d698fe7              # double 0.32587300000000002
	.quad	0x400012da122fad6d              # double 2.0092050000000001
	.quad	0x40106d490e66cb10              # double 4.1067239999999998
	.quad	0x4000fcdf69878317              # double 2.1234730000000002
	.quad	0x400f424c404a72eb              # double 3.9073720000000001
	.quad	0x40156083dbc23316              # double 5.3442530000000001
	.quad	0x402053d20f2becee              # double 8.1637120000000003
	.quad	0x401c3592d98bf7f0              # double 7.0523179999999996
	.quad	0x400750dcfcc5b8dc              # double 2.9144839999999999
	.quad	0x40208a0578e5c4eb              # double 8.2695729999999994
	.quad	0x401366fe718a86d7              # double 4.8505799999999999
	.quad	0x400a484c6a3bddfd              # double 3.2853020000000002
	.quad	0x401782f2734f82f5              # double 5.8778779999999999
	.quad	0x401fa59ab6d00b46              # double 7.9117230000000003
	.quad	0x401e46134ce3de61              # double 7.5684329999999997
	.quad	0x4012b90c0ad03d9b              # double 4.6807100000000004
	.quad	0x40077c7368ad6883              # double 2.9357669999999998
	.quad	0x401d6d1d8a548238              # double 7.3565579999999997
	.quad	0x4022f47192ea52f0              # double 9.4774290000000008
	.quad	0x40128d0a24463066              # double 4.637734
	.quad	0x402247460242d05f              # double 9.1392059999999997
	.quad	0x40237609784ec637              # double 9.7305410000000005
	.quad	0x40145ab21815a07b              # double 5.0885699999999998
	.quad	0x3ff2e054690de093              # double 1.1797679999999999
	.quad	0x401266ef8055fbb5              # double 4.6005229999999999
	.quad	0x4009906466b1e5c1              # double 3.1955040000000001
	.quad	0x401fbe42e1262025              # double 7.9358019999999998
	.quad	0x401c735fc3b4f616              # double 7.1126699999999996
	.quad	0x401aba6f826edaa9              # double 6.6820659999999998
	.quad	0x400b5897204295a7              # double 3.4182570000000001
	.quad	0x40221cda09cc319c              # double 9.0563509999999993
	.quad	0x40209dc9c4da9004              # double 8.3081800000000001
	.quad	0x40233c6c11a11234              # double 9.6180120000000002
	.quad	0x3ff59742dcf4623d              # double 1.349429
	.quad	0x40232a56bca5375d              # double 9.5826930000000007
	.quad	0x4019bd805e5f30e8              # double 6.43506
	.quad	0x3fd35a921ccd9620              # double 0.30240299999999998
	.quad	0x401bf43e963dc487              # double 6.9885200000000003
	.quad	0x3ff274245f5ad96a              # double 1.1533549999999999
	.quad	0x40204b1897a67a53              # double 8.1466720000000006
	.quad	0x3ffb8c0f01fb82c3              # double 1.7216940000000001
	.quad	0x40113b3743632c1f              # double 4.3078279999999998
	.quad	0x40162bcb5fe542e5              # double 5.5427679999999997
	.quad	0x401977991bc55864              # double 6.3667949999999998
	.quad	0x40057a109d0635a4              # double 2.6846019999999999
	.quad	0x4016a70bd017dae8              # double 5.6631309999999999
	.quad	0x402259b4784230fd              # double 9.1752050000000001
	.quad	0x401db5c0b9991362              # double 7.4274930000000001
	.quad	0x3fff455da272862f              # double 1.9544349999999999
	.quad	0x4010f32b990afe61              # double 4.2374710000000002
	.quad	0x4008c1355475a31a              # double 3.0943399999999999
	.quad	0x40205b02b40f66a5              # double 8.1777549999999994
	.quad	0x40102bae03b3e9a7              # double 4.042656
	.quad	0x4016de4c51116a8c              # double 5.7170880000000004
	.quad	0x40171158b827fa1a              # double 5.76694
	.quad	0x3ff66d362e903644              # double 1.4016630000000001
	.quad	0x4002aa2db61bb060              # double 2.3330950000000001
	.quad	0x4023dabef06b3786              # double 9.9272379999999991
	.quad	0x40200a732df505d1              # double 8.02041
	.quad	0x401d36aa8eb46349              # double 7.3033849999999996
	.quad	0x400746a22b3892ef              # double 2.9094890000000002
	.quad	0x401beda09cc319c6              # double 6.9820580000000003
	.quad	0x40203124af0bf1a6              # double 8.0959830000000004
	.quad	0x3ff283ff69014b5a              # double 1.1572260000000001
	.quad	0x4015e7b3d8e00086              # double 5.4762719999999998
	.quad	0x401d1e6b8305d95e              # double 7.2797070000000001
	.quad	0x400e56ec5b078d93              # double 3.792443
	.quad	0x3ff986c54bcf0b6b              # double 1.5954029999999999
	.quad	0x4008fc9363f572de              # double 3.1233279999999999
	.quad	0x4000415011904b3c              # double 2.0318909999999999
	.quad	0x400b414ad362e903              # double 3.4068809999999998
	.quad	0x402273d640e9d51b              # double 9.2262439999999994
	.quad	0x4008da4f00ef1349              # double 3.1065960000000001
	.quad	0x4023848de2ac3223              # double 9.7588950000000007
	.quad	0x3ff182e770bd017e              # double 1.0944590000000001
	.quad	0x3fca91b823c85c25              # double 0.20757200000000001
	.quad	0x4010fdcc20d5629e              # double 4.2478490000000004
	.quad	0x400269b738e6d15b              # double 2.3016190000000001
	.quad	0x3fbc15d2d01c0ca6              # double 0.109708
	.quad	0x4020005ccc89b0ee              # double 8.0007079999999995
	.quad	0x401ae23571d1d474              # double 6.7209070000000004
	.quad	0x401552e62131a8ef              # double 5.3309559999999996
	.quad	0x4014db97bb730835              # double 5.2144459999999997
	.quad	0x402250cb4aec8d5c              # double 9.1578009999999991
	.quad	0x4023f895af294dd7              # double 9.9855169999999997
	.quad	0x4013a398e9707182              # double 4.9097629999999999
	.quad	0x401d984b5dcc63f1              # double 7.3987249999999998
	.quad	0x3ffb79cd8127b2cc              # double 1.7172369999999999
	.quad	0x3ff2007fed20296b              # double 1.125122
	.quad	0x3ff0eaab042528ae              # double 1.0572919999999999
	.quad	0x401a10ecb74ddf87              # double 6.5165280000000001
	.quad	0x40033865d7cb2d90              # double 2.4025379999999998
	.quad	0x40125dfeb8d82342              # double 4.5917919999999999
	.quad	0x40218ca4b124d09a              # double 8.7746940000000002
	.quad	0x40205097204295a7              # double 8.1574030000000004
	.quad	0x401d9fdc5931ca7d              # double 7.4061139999999996
	.quad	0x4014c61847f56217              # double 5.1934519999999997
	.quad	0x400d2aee2003ab86              # double 3.6459619999999999
	.quad	0x3fd38d64d7f0ed3e              # double 0.30550500000000003
	.quad	0x4013e901083dbc23              # double 4.9775429999999998
	.quad	0x4021aad2135daad6              # double 8.833634
	.quad	0x400cf47cfa26a22b              # double 3.6193789999999999
	.quad	0x40116d24180d3cff              # double 4.3565829999999997
	.quad	0x40147748a159817c              # double 5.1164880000000004
	.quad	0x401fa06dd69d3027              # double 7.9066689999999999
	.quad	0x3fe10e8640208180              # double 0.53302300000000002
	.quad	0x4012136262cba733              # double 4.5189300000000001
	.quad	0x4021f59af9ebe9c9              # double 8.9796980000000008
	.quad	0x3ff6f0f9d2bf5515              # double 1.433832
	.quad	0x400c9460242d05f3              # double 3.5724490000000002
	.quad	0x401e5de7210be942              # double 7.5917019999999997
	.quad	0x3fdc7add15f02c4d              # double 0.44499899999999998
	.quad	0x4015c5729b280f13              # double 5.4428200000000002
	.quad	0x401277dd00f776c5              # double 4.6170540000000004
	.quad	0x4000fccf28c79f66              # double 2.1234419999999998
	.quad	0x3fda87ebf22c01e7              # double 0.41454600000000003
	.quad	0x4010a2ea960b6fa0              # double 4.1590980000000002
	.quad	0x4014cb07d0aed99d              # double 5.1982720000000002
	.quad	0x400b5e5f30e7ff58              # double 3.4210799999999999
	.quad	0x400a1a5d28d002e2              # double 3.2628729999999999
	.quad	0x3ff3d2d98bf7f067              # double 1.238977
	.quad	0x401575a31a4bdba1              # double 5.3648800000000003
	.quad	0x400a19702e6644d8              # double 3.2624209999999998
	.quad	0x3f91975f2cb64170              # double 0.017179
	.quad	0x4012e8e043a21640              # double 4.7274180000000001
	.quad	0x401adf687b139c95              # double 6.718172
	.quad	0x40210d2e72da1230              # double 8.5257450000000006
	.quad	0x401af947496aad1d              # double 6.743436
	.quad	0x400b8d530489d27c              # double 3.4440059999999999
	.quad	0x401d93b0c4588a05              # double 7.3942290000000002
	.quad	0x4013ff266ba493c9              # double 4.9991700000000003
	.quad	0x4020e72c0e7bc3c6              # double 8.4515080000000005
	.quad	0x4016d798d8a979e1              # double 5.7105439999999996
	.quad	0x401a9650a45d41fa              # double 6.6467919999999996
	.quad	0x40211ac215b9a5a9              # double 8.5522620000000007
	.quad	0x400f7a072d1aeb3e              # double 3.9345840000000001
	.quad	0x4001637154003255              # double 2.173556
	.quad	0x4011065e4606748e              # double 4.2562189999999998
	.quad	0x400eae991ff7164c              # double 3.8352529999999998
	.quad	0x401c32f449129889              # double 7.04976
	.quad	0x3fc8c4c5974e65bf              # double 0.19350500000000001
	.quad	0x4017e4628027d88c              # double 5.9730319999999999
	.quad	0x40110c0724b76f6d              # double 4.2617459999999996
	.quad	0x4000cebd4cfd08d5              # double 2.1009470000000001
	.quad	0x4004e465a57646ae              # double 2.6115219999999999
	.quad	0x401eab21815a07b3              # double 7.6671199999999997
	.quad	0x402272d1aeb3dd12              # double 9.2242560000000005
	.quad	0x400058f4f93bc0a0              # double 2.0434359999999998
	.quad	0x4016f2e9899bf594              # double 5.7372189999999996
	.quad	0x401230e27e0ef998              # double 4.547739
	.quad	0x401a9809d495182b              # double 6.6484750000000004
	.quad	0x401bc84f09528f19              # double 6.945614
	.quad	0x401319f87f023e9f              # double 4.7753620000000003
	.quad	0x4019bfdf3b645a1d              # double 6.4373750000000003
	.quad	0x4018c12b5e529bae              # double 6.1886419999999998
	.quad	0x402220307f23cc8e              # double 9.0628700000000002
	.quad	0x40003f9e7b80a9df              # double 2.0310640000000002
	.quad	0x401ce9e16d6dc1a4              # double 7.2283989999999996
	.quad	0x401ea572580c3090              # double 7.6615690000000001
	.quad	0x401b4a8eb463497b              # double 6.8228099999999996
	.quad	0x3fee36c9c0a8d21c              # double 0.94418800000000002
	.quad	0x401d40667f90d9d7              # double 7.3128909999999996
	.quad	0x3fd7675ddd2ae8e2              # double 0.36568400000000001
	.quad	0x3fec239e6ab9b23e              # double 0.87934800000000002
	.quad	0x4018bfbc5de9c023              # double 6.1872420000000004
	.quad	0x4020897763e4abe7              # double 8.2684890000000006
	.quad	0x4000c4901d19157b              # double 2.0959780000000001
	.quad	0x3ffc8a70d1fa3337              # double 1.7837989999999999
	.quad	0x4019a0a0f4d7add1              # double 6.4068639999999997
	.quad	0x40225d7646ae3a3b              # double 9.1825430000000008
	.quad	0x402347601797cc3a              # double 9.639405
	.quad	0x4010cc768dfbd6a6              # double 4.1996710000000004
	.quad	0x40121b24638c9753              # double 4.5265060000000004
	.quad	0x3ffca0296b3354c1              # double 1.789102
	.quad	0x400853c3e74afd54              # double 3.0409009999999999
	.quad	0x401d109bb6aa4b99              # double 7.2662190000000004
	.quad	0x40221dc853c14834              # double 9.0581689999999994
	.quad	0x4019c66a11ec918e              # double 6.4437639999999998
	.quad	0x40236706705c896e              # double 9.7012210000000003
	.quad	0x40083fa3b9ae0c17              # double 3.0310739999999998
	.quad	0x40235f4e874c8ffc              # double 9.6861460000000008
	.quad	0x401005f7c6759ab7              # double 4.0058280000000002
	.quad	0x401e0c07ee0b0af6              # double 7.511749
	.quad	0x3fff64c8366516db              # double 1.962105
	.quad	0x3ff1482be8bc169c              # double 1.08012
	.quad	0x4012a40af1cb89d7              # double 4.6601980000000003
	.quad	0x400ab1526d8b1dd6              # double 3.3365830000000001
	.quad	0x4023057afea3df6e              # double 9.5107040000000005
	.quad	0x40149a92e62131a9              # double 5.1509510000000001
	.quad	0x401e1fcefaa4766c              # double 7.5310629999999996
	.quad	0x401a99b56323bbc7              # double 6.6501060000000001
	.quad	0x4020fdb6a1e81cb4              # double 8.4955339999999992
	.quad	0x401f130d306a2b17              # double 7.7686049999999999
	.quad	0x40216493c89f40a3              # double 8.6964400000000008
	.quad	0x3fff3505d0fa58f7              # double 1.950445
	.quad	0x4014fb6523704791              # double 5.2455030000000002
	.quad	0x4011ecd141a6937d              # double 4.4812669999999999
	.quad	0x40137bd72bcb5fe5              # double 4.8709379999999998
	.quad	0x4001e63f141205bc              # double 2.237425
	.quad	0x4013078e1932d6ed              # double 4.7573780000000001
	.quad	0x4020d4b4aec8d5c7              # double 8.4154409999999995
	.quad	0x402028abb44e50c6              # double 8.0794350000000001
	.quad	0x401051b4bb5e0f80              # double 4.0797910000000002
	.quad	0x4023f57e889c1b54              # double 9.9794809999999998
	.quad	0x4020d1e0828c36db              # double 8.4099160000000008
	.quad	0x3fd694a6eb91b3f2              # double 0.352823
	.quad	0x4019381f53825e14              # double 6.3048070000000003
	.quad	0x4005030984e3ffef              # double 2.6264829999999999
	.quad	0x4015dbc7f77af640              # double 5.4646299999999997
	.quad	0x401174adff822bbf              # double 4.3639450000000002
	.quad	0x3ff902ba5a038195              # double 1.5631660000000001
	.quad	0x40082c6b484d76ab              # double 3.0216889999999998
	.quad	0x40075b3bfb58d152              # double 2.9195479999999998
	.quad	0x40138333b96af039              # double 4.8781270000000001
	.quad	0x40147dd11be6e654              # double 5.1228680000000004
	.quad	0x400c529bae46cfc8              # double 3.5403359999999999
	.quad	0x401928d36b4c7f35              # double 6.2898690000000004
	.quad	0x4012098201cd5f9a              # double 4.5092850000000002
	.quad	0x400db6e2eb1c432d              # double 3.7143000000000002
	.quad	0x3fe37cc9ea9a3d2e              # double 0.60898300000000005
	.quad	0x3fe82773e24febd1              # double 0.75481600000000004
	.quad	0x401061ab8e8ea39c              # double 4.0953809999999997
	.quad	0x3ff74bf7f06705c9              # double 1.4560470000000001
	.quad	0x4017ea9003eea20a              # double 5.9790650000000003
	.quad	0x401e273de1e2de87              # double 7.5383219999999999
	.quad	0x400dfecc3e3193f7              # double 3.7494130000000001
	.quad	0x4021abff69014b5a              # double 8.8359330000000007
	.quad	0x4008f3bc903ea705              # double 3.1190120000000001
	.quad	0x3ffe87f562174c4d              # double 1.908193
	.quad	0x40014ed5f138bce0              # double 2.163494
	.quad	0x402216c58eeae9ee              # double 9.0444759999999995
	.quad	0x4001cb7f5a5332ad              # double 2.224364
	.quad	0x401cb31b152f3c2e              # double 7.1749080000000003
	.quad	0x401070ba1f4b1ee2              # double 4.1100849999999998
	.quad	0x3fb1014b599aa609              # double 0.066425999999999999
	.quad	0x40233ea78af3e469              # double 9.6223720000000003
	.quad	0x4009c1a5870da5db              # double 3.219554
	.quad	0x4008240639d5e4a4              # double 3.0175900000000002
	.quad	0x402366ef1bac2df1              # double 9.7010430000000003
	.quad	0x3fd2f16b11c6d1e1              # double 0.295985
	.quad	0x400a53c148344c38              # double 3.290896
	.quad	0x400ebe13b18dac26              # double 3.8428110000000002
	.quad	0x3ff00bc05d52c16e              # double 1.002869
	.quad	0x4023626117720c8d              # double 9.6921470000000002
	.quad	0x4023927f3cf70154              # double 9.7861270000000004
	.quad	0x40018e7ff583a53c              # double 2.1945800000000002
	.quad	0x40130ed6fda836eb              # double 4.7644919999999997
	.quad	0x400063547e06961c              # double 2.0485009999999999
	.quad	0x401a15069a4df480              # double 6.5205330000000004
	.quad	0x4017e6d506573216              # double 5.975422
	.quad	0x3fe7016f0068db8c              # double 0.71892500000000004
	.quad	0x3ff773d7d3910c2c              # double 1.4657819999999999
	.quad	0x4023316aceaaf35e              # double 9.5965179999999997
	.quad	0x400bd020c49ba5e3              # double 3.4766249999999999
	.quad	0x40001a49c2c1b110              # double 2.0128360000000001
	.quad	0x400495f3d7d3910c              # double 2.5732189999999999
	.quad	0x401f1bfdf7e8038a              # double 7.777336
	.quad	0x3ff8e79dd3bafd97              # double 1.5565469999999999
	.quad	0x40145fd75e2046c7              # double 5.0935949999999997
	.quad	0x400ee08205ff1d82              # double 3.859623
	.quad	0x40226c054ef459da              # double 9.2109780000000008
	.quad	0x402140705425f202              # double 8.6258569999999999
	.quad	0x401372f4cf4a558f              # double 4.8622620000000003
	.quad	0x4000b00a393ee5ef              # double 2.0859570000000001
	.quad	0x4011a0b1feeb2d0a              # double 4.4069289999999999
	.quad	0x4021cfb267c6b8b7              # double 8.9056580000000007
	.quad	0x401f3b6672fba01f              # double 7.808008
	.quad	0x40092f07bfe7e1fc              # double 3.147964
	.quad	0x401dbee30caa326e              # double 7.4364129999999999
	.quad	0x401cfe90bc7b45f1              # double 7.2485989999999996
	.quad	0x40239c8c5004fb12              # double 9.8057580000000009
	.quad	0x4018b62131a8ef78              # double 6.177861
	.quad	0x40095af3a14cec42              # double 3.1694100000000001
	.quad	0x402239656eefa1e4              # double 9.1121020000000001
	.quad	0x401fdd10b1feeb2d              # double 7.9658839999999999
	.quad	0x3ff3249c2c1b10fd              # double 1.1964379999999999
	.quad	0x401070e065300581              # double 4.1102309999999997
	.quad	0x4016bf2f123c42a6              # double 5.6867029999999996
	.quad	0x401f7116ebd4cfd1              # double 7.8604390000000003
	.quad	0x4013edf0d413122b              # double 4.9823639999999996
	.quad	0x40070b588e368f08              # double 2.8805399999999999
	.quad	0x401de3fc86cebbba              # double 7.4726429999999997
	.quad	0x4007e7136a400fbb              # double 2.9878300000000002
	.quad	0x401e2c2f405f6ba0              # double 7.5431489999999997
	.quad	0x40205c743201040c              # double 8.180574
	.quad	0x3fe08fa7a85015c2              # double 0.517536
	.quad	0x400cc9552e2fbe34              # double 3.5983070000000001
	.quad	0x3ffa4d0dcfcc5b8e              # double 1.6438120000000001
	.quad	0x4021508aac96cc60              # double 8.6573080000000004
	.quad	0x40236bfee2c98e54              # double 9.7109290000000001
	.quad	0x3feb47778dd616f8              # double 0.85247399999999995
	.quad	0x400966de76427c7c              # double 3.1752289999999999
	.quad	0x3fef629307af20ea              # double 0.98078299999999996
	.quad	0x40019680e0653006              # double 2.1984880000000002
	.quad	0x4021a95cc857f306              # double 8.8307859999999998
	.quad	0x40158c122749f0e5              # double 5.3867880000000001
	.quad	0x4009c7d1bb4916ca              # double 3.2225679999999999
	.quad	0x3fe61fbe76c8b439              # double 0.69137499999999996
	.quad	0x402271d81f106680              # double 9.2223520000000008
	.quad	0x3ff6ef7f498c3b0c              # double 1.4334709999999999
	.quad	0x401ec1ea78af3e47              # double 7.6893710000000004
	.quad	0x400923cc8de2ac32              # double 3.1424799999999999
	.quad	0x40003d0203e63e8e              # double 2.0297890000000001
	.quad	0x401a1cd2d44dca8e              # double 6.5281479999999998
	.quad	0x400ac6f0cfe15443              # double 3.3471389999999999
	.quad	0x400236ab5807fed2              # double 2.276694
	.quad	0x40204576cce5f740              # double 8.1356719999999996
	.quad	0x400521d4306e5cd5              # double 2.641518
	.quad	0x401bd549731098d4              # double 6.9582879999999996
	.quad	0x400bf1737542a23c              # double 3.492896
	.quad	0x400ec06d938151a4              # double 3.8439589999999999
	.quad	0x4020c5c1a47a9e2c              # double 8.3862430000000003
	.quad	0x401c240e9d51b4fe              # double 7.0352119999999996
	.quad	0x3ffb180f55de58e6              # double 1.6933739999999999
	.quad	0x40237b10fd7e4580              # double 9.7403639999999996
	.quad	0x40163a2ad3e920c0              # double 5.5568039999999996
	.quad	0x401b02ca148ba83f              # double 6.7527239999999997
	.quad	0x40042cb7d41743e9              # double 2.5218349999999998
	.quad	0x3fef213e3e29307b              # double 0.972808
	.quad	0x3ff2813a92a30553              # double 1.15655
	.quad	0x401384723aafff37              # double 4.8793420000000003
	.quad	0x40061d9e40c8472c              # double 2.764462
	.quad	0x4021e70eb24a6a87              # double 8.9512839999999994
	.quad	0x3ffc795b35b0bbf5              # double 1.779628
	.quad	0x4021cba01eeed890              # double 8.8977059999999994
	.quad	0x400de9f1f14983d8              # double 3.7392310000000002
	.quad	0x3fecf008a697aede              # double 0.90430100000000002
	.quad	0x401e6c3fc43b2dd3              # double 7.6057119999999995
	.quad	0x40180a8d21bc126a              # double 6.0103039999999996
	.quad	0x402226e264e48627              # double 9.0759460000000001
	.quad	0x40166d577963992d              # double 5.6067790000000004
	.quad	0x401d85dfeb8d8234              # double 7.3807369999999999
	.quad	0x4021823f8982cb21              # double 8.754391
	.quad	0x401065e84f09528f              # double 4.0995189999999999
	.quad	0x4012b4f7a919695e              # double 4.6767260000000004
	.quad	0x402093bd5992428d              # double 8.2885539999999995
	.quad	0x401d96dfc5cdd50b              # double 7.3973380000000004
	.quad	0x4015fa122fad6cb5              # double 5.4942099999999998
	.quad	0x3ffc879e59f2ba9d              # double 1.78311
	.quad	0x40075bea0ba1f4b2              # double 2.91988
	.quad	0x40227f7e3d1cc101              # double 9.2490100000000002
	.quad	0x4018df9335d249e4              # double 6.2183349999999997
	.quad	0x3fe7d63022dd7a9a              # double 0.744896
	.quad	0x4019dcad57bc7f78              # double 6.4655050000000003
	.quad	0x400f44ed6fda836f              # double 3.9086560000000001
	.quad	0x401bdf0ed3d859c9              # double 6.9678300000000002
	.quad	0x40201c158fb43d8a              # double 8.0548520000000003
	.quad	0x3ff462c12ad81adf              # double 1.2741100000000001
	.quad	0x4017a26916440f24              # double 5.9086040000000004
	.quad	0x4020ed4434e3369c              # double 8.4634110000000006
	.quad	0x4021ce53eb399f5e              # double 8.902984
	.quad	0x3fb2f672b884406c              # double 0.074073
	.quad	0x40218a62cba732df              # double 8.7702849999999994
	.quad	0x4022b750c1b97354              # double 9.3580380000000005
	.quad	0x3f4f85d744f5d356              # double 9.6199999999999996E-4
	.quad	0x40120a0e8427418d              # double 4.5098209999999996
	.quad	0x401e4043e5321e60              # double 7.5627589999999998
	.quad	0x4022cd232d2bb235              # double 9.4006589999999992
	.quad	0x4000390539fba451              # double 2.0278420000000001
	.quad	0x40019b40b34e7686              # double 2.2008070000000002
	.quad	0x3fdff25a250f8402              # double 0.49916700000000003
	.quad	0x400ab30e7ff583a5              # double 3.3374299999999999
	.quad	0x400d4e4a7b4e54f8              # double 3.6632280000000002
	.quad	0x4020d79fec99f1ae              # double 8.4211419999999997
	.quad	0x400ce5faebc408d9              # double 3.612295
	.quad	0x40040be2f7b17ce5              # double 2.5058039999999999
	.quad	0x401bd3c536d655e3              # double 6.9568070000000004
	.quad	0x4006680e8c8abd5e              # double 2.8008090000000001
	.quad	0x4022ac443914f484              # double 9.3364580000000003
	.quad	0x40167dd8f92af9a9              # double 5.6228980000000002
	.quad	0x401b68d36b4c7f35              # double 6.8523690000000004
	.quad	0x401aa0c1fc8f3238              # double 6.6569900000000004
	.quad	0x40123e47dc37a3db              # double 4.5608209999999998
	.quad	0x401a7508b32ce896              # double 6.6142909999999997
	.quad	0x4020e25a038194c0              # double 8.4420929999999998
	.quad	0x4022ab9ae0c17657              # double 9.3351659999999992
	.quad	0x401b556d19dece57              # double 6.8334239999999999
	.quad	0x4021374538ef34d7              # double 8.6079500000000007
	.quad	0x401bd0c0ad03d9a9              # double 6.9538599999999997
	.quad	0x3fe3688bda9435ad              # double 0.60651200000000005
	.quad	0x401dba009f623077              # double 7.4316430000000002
	.quad	0x4017de5109070fbf              # double 5.9671060000000002
	.quad	0x401ac691a75cd0bb              # double 6.6939149999999996
	.quad	0x4013c54da4ce8102              # double 4.942679
	.quad	0x401afabc0e38a7e7              # double 6.7448579999999998
	.quad	0x4015dcf206423960              # double 5.4657669999999996
	.quad	0x401a2dbc23315d70              # double 6.5446629999999999
	.quad	0x4003b7396d0917d7              # double 2.4644650000000001
	.quad	0x3fe862aa19439de5              # double 0.76204400000000005
	.quad	0x40082e379b77c02b              # double 3.022567
	.quad	0x401b7e5753a3ec03              # double 6.87338
	.quad	0x40216dcb9a9da598              # double 8.7144440000000003
	.quad	0x40164d2135daad60              # double 5.5753219999999999
	.quad	0x4020f41743e963dc              # double 8.4767399999999994
	.quad	0x40197275ee99a62f              # double 6.3617780000000002
	.quad	0x401cbcc70867ad8e              # double 7.1843529999999998
	.quad	0x4014efdf7e8038a0              # double 5.2342510000000004
	.quad	0x40168d26b723ee1c              # double 5.6378430000000002
	.quad	0x3fe7d438d1d8a548              # double 0.74465599999999998
	.quad	0x4022fe45a1cac083              # double 9.4966249999999998
	.quad	0x401984cf8d716d2b              # double 6.3796980000000003
	.quad	0x4023fb50f40e5a36              # double 9.9908520000000003
	.quad	0x4016ec39bcba3012              # double 5.7306889999999999
	.quad	0x4010c48626f60e0f              # double 4.1919180000000003
	.quad	0x4018a881a1554fbe              # double 6.1645570000000003
	.quad	0x3ff7d60c7c0f4517              # double 1.4897579999999999
	.quad	0x40136fd5885d3133              # double 4.8592129999999996
	.quad	0x4015a00b45ae5ffa              # double 5.4062929999999998
	.quad	0x401b0ea67e846a5d              # double 6.7643069999999996
	.quad	0x402252d490e66cb1              # double 9.161778
	.quad	0x4013823571d1d474              # double 4.8771570000000004
	.quad	0x40051e3193f6c26a              # double 2.6397430000000002
	.quad	0x40126fcc1871e6cd              # double 4.6091769999999999
	.quad	0x3ff01d67ba237cdd              # double 1.007179
	.quad	0x4014ee48e8a71de7              # double 5.2327000000000004
	.quad	0x3fd616659d12cade              # double 0.34511700000000001
	.quad	0x400f7f583a53b8e5              # double 3.9371800000000001
	.quad	0x401e33c21187e7c0              # double 7.5505449999999996
	.quad	0x4022e0dc33721d54              # double 9.4391800000000003
	.quad	0x40000145953586cb              # double 2.0006210000000002
	.quad	0x4016783be6601bca              # double 5.6174160000000004
	.quad	0x400a789b52007dd4              # double 3.3088899999999999
	.quad	0x401dfe892253111f              # double 7.4985699999999999
	.quad	0x401aa75a31a4bdba              # double 6.66343
	.quad	0x40156acf312b1b37              # double 5.3543060000000002
	.quad	0x3ff8b85b5b70691f              # double 1.5450090000000001
	.quad	0x3ffc2278d0cc35ce              # double 1.758416
	.quad	0x40118609dcf893fb              # double 4.380897
	.quad	0x3feb427a63736cdf              # double 0.85186499999999998
	.quad	0x401ce3d9a95421c0              # double 7.2225099999999998
	.quad	0x401c49fec99f1ae3              # double 7.0722610000000001
	.quad	0x401e67ecbb7f9d6f              # double 7.6014889999999999
	.quad	0x3fd2ae1049235f81              # double 0.29187400000000002
	.quad	0x4016893d5347a5b1              # double 5.634023
	.quad	0x4019e82ba5a03819              # double 6.4767289999999997
	.quad	0x402352fb3b752114              # double 9.6620729999999994
	.quad	0x4016243bf727136a              # double 5.5353849999999998
	.quad	0x4001f15ce9e5e248              # double 2.2428530000000002
	.quad	0x401368a697aeddce              # double 4.8521979999999996
	.quad	0x3ffa86ca89fc6da4              # double 1.6579079999999999
	.quad	0x3fc2b3e5753a3ec0              # double 0.14611499999999999
	.quad	0x3ffa5348b220791c              # double 1.6453329999999999
	.quad	0x401470d0247021d1              # double 5.110169
	.quad	0x401742b27cbf6e3f              # double 5.8151339999999996
	.quad	0x4017222f2734f82f              # double 5.7833829999999997
	.quad	0x401d186d2ed783e0              # double 7.273854
	.quad	0x40200aca36199781              # double 8.0210740000000005
	.quad	0x4022bffdc5931ca8              # double 9.3749830000000002
	.quad	0x3ffe73f20a73f749              # double 1.9033070000000001
	.quad	0x401be4cad57bc7f7              # double 6.9734299999999996
	.quad	0x4018ed434a01abd2              # double 6.2317020000000003
	.quad	0x40220743632c1f43              # double 9.0141860000000005
	.quad	0x40165152f3c2dadc              # double 5.5794180000000004
	.quad	0x3fdd14445aa2e3c5              # double 0.45436199999999999
	.quad	0x400c01e2de870974              # double 3.5009209999999999
	.quad	0x4006abbf50e34763              # double 2.8338610000000002
	.quad	0x401d3e1262025397              # double 7.3106169999999997
	.quad	0x3ff91d92b7fe08af              # double 1.56972
	.quad	0x401f3badc0980b24              # double 7.8082799999999999
	.quad	0x401728bef8ceb357              # double 5.7897910000000001
	.quad	0x401003914f483cb0              # double 4.0034840000000003
	.quad	0x40218c3760bf5d79              # double 8.7738600000000009
	.quad	0x3faab5e529bae46d              # double 0.052169
	.quad	0x402106ed8904f6e0              # double 8.5135310000000004
	.quad	0x4020c328b6d86ec1              # double 8.3811699999999991
	.quad	0x401ca90a350d2807              # double 7.1650780000000003
	.quad	0x3ffb44545846e8f3              # double 1.7041820000000001
	.quad	0x4022304944ed6fdb              # double 9.0943090000000009
	.quad	0x4013210b630a9153              # double 4.7822699999999996
	.quad	0x401cc799a1fd156a              # double 7.194922
	.quad	0x400571f601797cc4              # double 2.6806450000000002
	.quad	0x4008c71044f1a198              # double 3.0971989999999998
	.quad	0x4000de260b2c83ed              # double 2.1084710000000002
	.quad	0x400ffd441355475a              # double 3.9986649999999999
	.quad	0x4007bb2788db0575              # double 2.9663840000000001
	.quad	0x40234536b4c7f349              # double 9.6351829999999996
	.quad	0x400dafcc5b8dc550              # double 3.710839
	.quad	0x400e7fc6da448494              # double 3.8123909999999999
	.quad	0x401e88d9b5e95b79              # double 7.6336430000000001
	.quad	0x401ef6ef8055fbb5              # double 7.7411479999999999
	.quad	0x401ab586876e1deb              # double 6.6772710000000002
	.quad	0x4008f29b280f12c2              # double 3.1184599999999998
	.quad	0x3ffb59e518f3eccc              # double 1.7094469999999999
	.quad	0x3fe4c6e2a80064aa              # double 0.64927800000000002
	.quad	0x40185c1df3300de5              # double 6.0899580000000002
	.quad	0x400227d4e09784ec              # double 2.2694489999999998
	.quad	0x4015257603925bb8              # double 5.2865830000000003
	.quad	0x4016c2428d434a02              # double 5.6897070000000003
	.quad	0x402276e45c358afc              # double 9.2322109999999995
	.quad	0x3fd81d81f10667f9              # double 0.376801
	.quad	0x400b732830a0b1bc              # double 3.4312290000000001
	.quad	0x4003884e831ad213              # double 2.4415559999999998
	.quad	0x4013c25b749adc90              # double 4.9398020000000002
	.quad	0x40226cb46bacf744              # double 9.2123139999999992
	.quad	0x40221fbf401c4fc2              # double 9.0620060000000002
	.quad	0x401517b5f1bef49d              # double 5.273155
	.quad	0x401e35ac8a372607              # double 7.552416
	.quad	0x401957ae147ae148              # double 6.3356250000000003
	.quad	0x4006a7ee0b0af5fd              # double 2.8319969999999999
	.quad	0x4010ed188f42fe82              # double 4.2315389999999997
	.quad	0x401308cbd1244a62              # double 4.7585899999999999
	.quad	0x402024a7f8012dfd              # double 8.0715939999999993
	.quad	0x3ffb8b295e9e1b09              # double 1.7214750000000001
	.quad	0x40190c59b8023a6d              # double 6.2620610000000001
	.quad	0x40229324a6a875d5              # double 9.2873889999999992
	.quad	0x4022110b417ca212              # double 9.0332889999999999
	.quad	0x4021a3a8e71476b0              # double 8.8196480000000008
	.quad	0x401055f3519bd406              # double 4.0839359999999996
	.quad	0x4020d374794ea077              # double 8.412998
	.quad	0x401074ae85b9e8c4              # double 4.1139469999999996
	.quad	0x4022bdd93c46d82c              # double 9.3707980000000006
	.quad	0x3fe8b5e0f7fcfc40              # double 0.77220200000000006
	.quad	0x3fe50470a808c826              # double 0.65679200000000004
	.quad	0x400b6b167ec7863c              # double 3.427289
	.quad	0x4023434d6a161e4f              # double 9.6314499999999991
	.quad	0x3ff2d73647baa9b5              # double 1.1775420000000001
	.quad	0x4023c50a88effe2a              # double 9.8848459999999996
	.quad	0x4009e3571d1d4739              # double 3.2360060000000002
	.quad	0x402348f49491f2dc              # double 9.6424909999999997
	.quad	0x401e564a59c065b6              # double 7.5842679999999998
	.quad	0x3ff6a048e043a216              # double 1.4141319999999999
	.quad	0x3ffde491afc04c8c              # double 1.868303
	.quad	0x40024a53fc0096ff              # double 2.2862930000000001
	.quad	0x3fd4151e75360d02              # double 0.31378899999999998
	.quad	0x3fec4195cc857f30              # double 0.88300599999999996
	.quad	0x402083d2d87f8876              # double 8.2574679999999994
	.quad	0x400fa94141e9af5c              # double 3.9576440000000002
	.quad	0x4014046dc5d63886              # double 5.0043249999999997
	.quad	0x40078c4c5974e65c              # double 2.943505
	.quad	0x40029c8323358f2e              # double 2.326422
	.quad	0x40041bd05af6c69b              # double 2.5135809999999998
	.quad	0x4004bbdad7518b0d              # double 2.591726
	.quad	0x4020febd09e12a52              # double 8.4975360000000002
	.quad	0x40214da6c5d206c8              # double 8.6516629999999992
	.quad	0x4012d136a400fba9              # double 4.7043100000000004
	.quad	0x3fe201f10667f90e              # double 0.56273700000000004
	.quad	0x40127cae642bf983              # double 4.621759
	.quad	0x3ff46a4a8c154c98              # double 1.2759499999999999
	.quad	0x3fee7ff79c842fa5              # double 0.953121
	.quad	0x40007d78811b1d93              # double 2.0612650000000001
	.quad	0x401fd0b3d4ae429e              # double 7.953811
	.quad	0x401fc8140dd3fe19              # double 7.9453889999999995
	.quad	0x401a9c7d5ed06fef              # double 6.6528219999999996
	.quad	0x4022c2afdda8bd23              # double 9.3802479999999999
	.quad	0x40136794ea077037              # double 4.8511540000000002
	.quad	0x40220ffdc5931ca8              # double 9.0312330000000003
	.quad	0x401c8b2edfe75bc4              # double 7.1359209999999997
	.quad	0x4019fcf2cf95d4e9              # double 6.49702
	.quad	0x4012478c0053e2d6              # double 4.5698699999999999
	.quad	0x40225012dfd694cd              # double 9.1563940000000006
	.quad	0x402252ab47410731              # double 9.1614629999999995
	.quad	0x3fd62291fb3fa6df              # double 0.34586
	.quad	0x400e0204f2ae07e6              # double 3.7509860000000002
	.quad	0x401f733ca31e7d9a              # double 7.8625360000000004
	.quad	0x3ff6a5c0b9991362              # double 1.415467
	.quad	0x4021b8dae3e6c4c6              # double 8.8610450000000007
	.quad	0x4019987b99d451fc              # double 6.3989089999999997
	.quad	0x40228494f69ca9ef              # double 9.2589489999999994
	.quad	0x401302eec7c957cd              # double 4.7528639999999998
	.quad	0x4010a0d6f544bb1b              # double 4.15707
	.quad	0x402322ea960b6fa0              # double 9.5681960000000004
	.quad	0x3ff35a60d4562e0a              # double 1.209565
	.quad	0x40233515ce9e5e24              # double 9.6036819999999991
	.quad	0x4017adf2ecf20642              # double 5.9198719999999998
	.quad	0x40057c83a96d4c34              # double 2.6857980000000001
	.quad	0x401f4f9d2bf55150              # double 7.8277479999999997
	.quad	0x40093125dd095af3              # double 3.1489980000000002
	.quad	0x40205e31b584b1ab              # double 8.1839729999999999
	.quad	0x401a8f1950331e3a              # double 6.6397449999999996
	.quad	0x400b40ef99806f26              # double 3.4067069999999999
	.quad	0x401d8d844d013a93              # double 7.3882000000000003
	.quad	0x40040df69878316a              # double 2.506818
	.quad	0x40103095af294dd7              # double 4.0474459999999999
	.quad	0x40173f4a1272c94b              # double 5.8118059999999998
	.quad	0x401850999dcb5782              # double 6.0787110000000002
	.quad	0x4008b7995ee136e7              # double 3.0896479999999999
	.quad	0x3ffd58dcdb37c99b              # double 1.834195
	.quad	0x4011ef1c75818c5d              # double 4.4835070000000004
	.quad	0x3ffa8364388ebcc7              # double 1.6570780000000001
	.quad	0x401d23910c2c5e2d              # double 7.2847330000000001
	.quad	0x3ff7444178705426              # double 1.454164
	.quad	0x401051f3a57eaa2a              # double 4.080031
	.quad	0x40162af8df7a4e7b              # double 5.5419650000000003
	.quad	0x401c57c9de050375              # double 7.085731
	.quad	0x4000e65625a682b6              # double 2.1124689999999999
	.quad	0x40220972ef0ae536              # double 9.0184549999999994
	.quad	0x4011c20685553ef7              # double 4.4394780000000003
	.quad	0x400314959e625636              # double 2.3850509999999998
	.quad	0x3ffa6159817b95a3              # double 1.6487670000000001
	.quad	0x3ff1bad7d7c2ca15              # double 1.1081160000000001
	.quad	0x40230854477ff152              # double 9.5162680000000002
	.quad	0x40047ed30f062d41              # double 2.5619260000000001
	.quad	0x402196173b85e80c              # double 8.7931460000000001
	.quad	0x401f900a7c5ac472              # double 7.8906650000000003
	.quad	0x3fec5959a30984e4              # double 0.885907
	.quad	0x3ffbc4d44567125e              # double 1.735554
	.quad	0x40126f6d330941c8              # double 4.6088149999999999
	.quad	0x3fdb9b456b441bb9              # double 0.43135200000000001
	.quad	0x3ff131769a91105e              # double 1.074576
	.quad	0x40105891e215336e              # double 4.0864940000000001
	.quad	0x401301a7e3087875              # double 4.7516170000000004
	.quad	0x401750678c0053e3              # double 5.8285200000000001
	.quad	0x4011cc7b890d5a5c              # double 4.4496900000000004
	.quad	0x3fea90abb44e50c6              # double 0.83016000000000001
	.quad	0x4019873c0c1fc8f3              # double 6.3820649999999999
	.quad	0x4005c4b44a1f0803              # double 2.721047
	.quad	0x4020a4b662fdfc1a              # double 8.3217040000000004
	.quad	0x401d02d77318fc50              # double 7.2527749999999997
	.quad	0x4020fe2413db7f17              # double 8.4963689999999996
	.quad	0x40099898b2e9ccb8              # double 3.1995100000000001
	.quad	0x401a08e1932d6ece              # double 6.5086729999999999
	.quad	0x40185692b3cc4ac7              # double 6.0845440000000002
	.quad	0x401b38dc11e42e12              # double 6.8055269999999997
	.quad	0x40200b7f1737542a              # double 8.0224539999999998
	.quad	0x401f052a411c2a02              # double 7.7550439999999998
	.quad	0x4006b2007dd44135              # double 2.8369149999999999
	.quad	0x4022bec15d2d01c1              # double 9.3725690000000003
	.quad	0x4012c280ae104923              # double 4.6899439999999997
	.quad	0x40081869835158b8              # double 3.0119199999999999
	.quad	0x3ffc85bf26f1dc51              # double 1.782653
	.quad	0x401a72cf0f9d2bf5              # double 6.6121179999999997
	.quad	0x4020a3178b370047              # double 8.3185389999999995
	.quad	0x40128f038e29f9cf              # double 4.6396620000000004
	.quad	0x401c79a2834d26fa              # double 7.1187839999999998
	.quad	0x400021437c5692b4              # double 2.0162420000000001
	.quad	0x4004f8fc504816f0              # double 2.621575
	.quad	0x4005c39f77292c49              # double 2.7205189999999999
	.quad	0x40022550870110a1              # double 2.2682199999999999
	.quad	0x3ffa4de8f6cefed6              # double 1.644021
	.quad	0x402330ed3d859c8d              # double 9.5955600000000007
	.quad	0x4018e9003eea209b              # double 6.2275400000000003
	.quad	0x401c7c03ff69014b              # double 7.1211089999999997
	.quad	0x401b450763a19008              # double 6.8174109999999999
	.quad	0x3fd4c282c6ef3d3a              # double 0.32437199999999999
	.quad	0x3fc3db8fde2ef4e0              # double 0.155138
	.quad	0x401e490539fba451              # double 7.5713090000000002
	.quad	0x401d0a73f748a15a              # double 7.2602080000000004
	.quad	0x401e7cc964628028              # double 7.6218620000000001
	.quad	0x4021097460242d06              # double 8.5184660000000001
	.quad	0x3ffd3ce746cb966c              # double 1.827369
	.quad	0x401a9db65ecc3e32              # double 6.6540160000000004
	.quad	0x4014addce7cd0353              # double 5.1697879999999996
	.quad	0x40211b25918a009f              # double 8.5530209999999993
	.quad	0x3ffcb32f01754b06              # double 1.7937460000000001
	.quad	0x4004470eb24a6a87              # double 2.5346959999999998
	.quad	0x4016902b40f66a55              # double 5.64079
	.quad	0x401d4adab9f559b4              # double 7.3231000000000002
	.quad	0x4016353eb399f5e0              # double 5.5519970000000001
	.quad	0x40205c6e08f21709              # double 8.1805269999999997
	.quad	0x4017658ab92c0618              # double 5.8491619999999998
	.quad	0x402316a875d56f33              # double 9.5442540000000004
	.quad	0x400dbcf5f4e4430b              # double 3.717266
	.quad	0x3feea75ee99a62ed              # double 0.95793099999999997
	.quad	0x4023e4a148ba83f5              # double 9.9465430000000001
	.quad	0x401cde5929670197              # double 7.2171370000000001
	.quad	0x3fe6630446b69db6              # double 0.69958699999999996
	.quad	0x401b11198aeb80ed              # double 6.766699
	.quad	0x400920d5629d840a              # double 3.141032
	.quad	0x40142d33d29563aa              # double 5.044143
	.quad	0x3fd1abbcb1cc9646              # double 0.27610699999999999
	.quad	0x4016026d04e618ce              # double 5.5023689999999998
	.quad	0x4020ebdc8b86b160              # double 8.4606670000000008
	.quad	0x401ea38f7985271c              # double 7.6597270000000002
	.quad	0x401e50c7c0f45176              # double 7.5788869999999999
	.quad	0x401270acc0bdcad1              # double 4.6100339999999997
	.quad	0x401553e1437c5693              # double 5.3319140000000003
	.quad	0x4023b271151611ba              # double 9.8485189999999996
	.quad	0x4010a59ab6d00b46              # double 4.1617230000000003
	.quad	0x401daf95d4e8fb01              # double 7.4214700000000002
	.quad	0x401accfa26a22b39              # double 6.7001730000000004
	.quad	0x4019a7304039abf3              # double 6.4132699999999998
	.quad	0x3ff124766c6de764              # double 1.071402
	.quad	0x401c489a459103c9              # double 7.0709010000000001
	.quad	0x401977da1ec4e725              # double 6.3670429999999998
	.quad	0x400b623fab10ba62              # double 3.4229729999999998
	.quad	0x4000ccbc05d52c17              # double 2.0999680000000001
	.quad	0x3f52c6ac215b9a5b              # double 0.0011460000000000001
	.quad	0x3ff927c7c5260f5e              # double 1.5722119999999999
	.quad	0x3ff57b09203a322b              # double 1.342538
	.quad	0x4016c6362a5e785b              # double 5.6935659999999997
	.quad	0x3fea1f77292c4934              # double 0.81634099999999998
	.quad	0x3fad6e696a26e547              # double 0.057482999999999999
	.quad	0x4016b3b6cbd987c6              # double 5.6755019999999998
	.quad	0x3ff63fae3608d089              # double 1.390547
	.quad	0x3fe708cc575c0768              # double 0.71982400000000002
	.quad	0x3feffa28bb0a2caa              # double 0.99928700000000004
	.quad	0x40239f37110e453d              # double 9.8109669999999997
	.quad	0x40093fbefd00713f              # double 3.156126
	.quad	0x3ff0af78feef5ec8              # double 1.04284
	.quad	0x3ff1e1709310129d              # double 1.1175390000000001
	.quad	0x400f265bea0ba1f5              # double 3.8937300000000001
	.quad	0x400eb701d9f4d37c              # double 3.839359
	.quad	0x4018fc322291fb40              # double 6.2462850000000003
	.quad	0x40033f401c4fc1df              # double 2.4058839999999999
	.quad	0x3ffeaaceaaf35e31              # double 1.916701
	.quad	0x402136d02cd39da1              # double 8.6070569999999993
	.quad	0x4019682f944241c4              # double 6.3517440000000001
	.quad	0x4010c9dc2f405f6c              # double 4.1971290000000003
	.quad	0x4012a9f2ba9d1f60              # double 4.6659649999999999
	.quad	0x4021dc91afc04c8c              # double 8.9307990000000003
	.quad	0x4018d6fc158fb43e              # double 6.2099460000000004
	.quad	0x40107f09528f190d              # double 4.1240589999999999
	.quad	0x40148afc47e49b20              # double 5.1357280000000003
	.quad	0x40177c73eee52589              # double 5.8715359999999999
	.quad	0x3fecbe24febd09e1              # double 0.89821099999999998
	.quad	0x4016762e4d1a6506              # double 5.6154109999999999
	.quad	0x4021872085b18549              # double 8.7639200000000006
	.quad	0x400a41bd1ed9dfdb              # double 3.2820990000000001
	.quad	0x401f25b9628cbd12              # double 7.7868399999999998
	.quad	0x40126c8cd63cb817              # double 4.6060059999999998
	.quad	0x402325e071c53f3a              # double 9.5739780000000003
	.quad	0x4016029bae46cfc8              # double 5.5025469999999999
	.quad	0x4019f10c2c5e2cdc              # double 6.485398
	.quad	0x400cf58fb43d89ce              # double 3.6199029999999999
	.quad	0x4023d9e8c47a17f4              # double 9.9256039999999998
	.quad	0x401da8fcd67fd3f6              # double 7.4150270000000003
	.quad	0x3ff9f41e14bdfd26              # double 1.622099
	.quad	0x3ffae1fd1569f490              # double 1.6801729999999999
	.quad	0x4008c649906cca2e              # double 3.0968200000000001
	.quad	0x40021e7ea5f84cad              # double 2.2648899999999998
	.quad	0x40124f4e874c8ffc              # double 4.5774480000000004
	.quad	0x401a789ca18bd662              # double 6.6177849999999996
	.quad	0x40214576ab5807ff              # double 8.6356710000000003
	.quad	0x3ff36372606fac60              # double 1.2117789999999999
	.quad	0x3ff1bfa7eb6bf445              # double 1.109291
	.quad	0x4021fd1aeb3dd11c              # double 8.9943460000000001
	.quad	0x40086297396d0918              # double 3.0481400000000001
	.quad	0x401b5a936c58eeaf              # double 6.8384530000000003
	.quad	0x40157da87a072d1b              # double 5.3727130000000001
	.quad	0x3ffcadddf43c7d5f              # double 1.792448
	.quad	0x40167b56fb8f57f7              # double 5.6204489999999998
	.quad	0x4020bd9f2ba9d1f6              # double 8.370355
	.quad	0x4022128c36da87a0              # double 9.0362259999999992
	.quad	0x40200beb18116ebd              # double 8.0232779999999995
	.quad	0x4001e628027d88c2              # double 2.2373810000000001
	.quad	0x4002dc12f09d8c6d              # double 2.3574579999999998
	.quad	0x401ae39042d8c2a4              # double 6.7222299999999997
	.quad	0x40057a74c09c3ce2              # double 2.684793
	.quad	0x401770229a5ebb77              # double 5.8595069999999998
	.quad	0x4022a0dc981beb18              # double 9.3141829999999998
	.quad	0x402108b04ab606b8              # double 8.5169700000000006
	.quad	0x4018929f16b11c6d              # double 6.1431849999999999
	.quad	0x4023236b2af14552              # double 9.5691769999999998
	.quad	0x40068dcc20d5629e              # double 2.8192370000000002
	.quad	0x401ca45e9185cee1              # double 7.1605169999999996
	.quad	0x4014a5d462c343b7              # double 5.1619429999999999
	.quad	0x40145d551d68c693              # double 5.091145
	.quad	0x3ffef396d0917d6b              # double 1.9344699999999999
	.quad	0x401786cce5f7403e              # double 5.8816410000000001
	.quad	0x40069572de43ed96              # double 2.8229730000000002
	.quad	0x40143a3f4666ec9e              # double 5.0568819999999999
	.quad	0x3f80f16f4384ba0f              # double 0.0082730000000000008
	.quad	0x4016fb8bac710cb3              # double 5.7456500000000004
	.quad	0x4003b585be1a8262              # double 2.4636339999999999
	.quad	0x3fddd5d80e496edf              # double 0.46617700000000001
	.quad	0x4017642fa5093965              # double 5.8478380000000003
	.quad	0x4015650870110a13              # double 5.3486649999999996
	.quad	0x40228d247cb70ac4              # double 9.2756690000000006
	.quad	0x4016f1a75cd0bb6f              # double 5.7359900000000001
	.quad	0x400fd52b90a78290              # double 3.9790869999999998
	.quad	0x400f121a2e7f6f4c              # double 3.883839
	.quad	0x3fe91b2e59af9ebf              # double 0.78456800000000004
	.quad	0x401656659d12cade              # double 5.5843720000000001
	.quad	0x3ff778d4fdf3b646              # double 1.4670000000000001
	.quad	0x401199741d084e83              # double 4.3998569999999999
	.quad	0x3fa7d21ff2e48e8a              # double 0.046524999999999997
	.quad	0x4006f802c0a4a05e              # double 2.8710990000000001
	.quad	0x40217477143393ab              # double 8.7274709999999995
	.quad	0x3ff777e90ff97247              # double 1.4667749999999999
	.quad	0x401dadcb9a9da598              # double 7.4197220000000001
	.quad	0x4023ae53c9abb01d              # double 9.8404830000000007
	.quad	0x3ff98d9a52263d81              # double 1.5970709999999999
	.quad	0x3fd8b7952d234eba              # double 0.38620500000000002
	.quad	0x3fe3725e56cd6c2f              # double 0.607711
	.quad	0x3fdc62bf11f926c8              # double 0.443527
	.quad	0x40104daad601ffb5              # double 4.0758470000000004
	.quad	0x3fe520be51090710              # double 0.66024700000000003
	.quad	0x400e911409a24031              # double 3.8208389999999999
	.quad	0x40125615ebfa8f7e              # double 4.5840680000000003
	.quad	0x401f0775fb2edfe7              # double 7.7572859999999996
	.quad	0x401d9bc4d22c881e              # double 7.4021179999999998
	.quad	0x401a1e7967caea74              # double 6.5297599999999996
	.quad	0x4021c6a6a012599f              # double 8.8879900000000003
	.quad	0x401e3a67a52ac754              # double 7.5570360000000001
	.quad	0x40201b868fd199bb              # double 8.0537609999999997
	.quad	0x400a08c26138fffc              # double 3.2542770000000001
	.quad	0x3fec4a148ba83f4f              # double 0.88404300000000002
	.quad	0x40010642396073de              # double 2.1280559999999999
	.quad	0x4012463c31df761d              # double 4.5685890000000002
	.quad	0x401428548a9bcfd5              # double 5.0393850000000002
	.quad	0x3ffac4998d045fe1              # double 1.672998
	.quad	0x3fd9548a9bcfd4bf              # double 0.395785
	.quad	0x401b318d6909aed5              # double 6.7983909999999996
	.quad	0x40001a2403148777              # double 2.0127640000000002
	.quad	0x4019a1693c03bc4d              # double 6.4076279999999999
	.quad	0x3ff9973b85e80bed              # double 1.5994219999999999
	.quad	0x40236d940789613d              # double 9.7140199999999996
	.quad	0x400a0969a0ad8a11              # double 3.2545959999999998
	.quad	0x400e3f37329c347f              # double 3.7808670000000002
	.quad	0x3ff330df9bdc69f9              # double 1.1994320000000001
	.quad	0x401dd3a3a8e71477              # double 7.4566790000000003
	.quad	0x401b47eaa2a0a958              # double 6.8202309999999997
	.quad	0x4022324399b2c40d              # double 9.0981719999999999
	.quad	0x401e32fec56d5cfb              # double 7.5498000000000002
	.quad	0x4020e18548a9bcfd              # double 8.4404699999999995
	.quad	0x400a82bd7f51efb7              # double 3.3138380000000001
	.quad	0x4020e0563ed0f627              # double 8.4381579999999996
	.quad	0x4015cc8323358f2e              # double 5.449719
	.quad	0x3fe23a0c6b484d77              # double 0.56958600000000004
	.quad	0x4020873b85e80bed              # double 8.2641259999999992
	.quad	0x401b3a72a7bd48cb              # double 6.8070779999999997
	.quad	0x4012b2157689ca19              # double 4.6739100000000002
	.quad	0x3ff146a2b1704ff4              # double 1.079745
	.quad	0x4005880d801b4352              # double 2.6914319999999998
	.quad	0x3fd37774aba38759              # double 0.30416599999999999
	.quad	0x40200dbfad299956              # double 8.0268529999999991
	.quad	0x3fcbc9f72f76e610              # double 0.21710099999999999
	.quad	0x4019f50ca1cef241              # double 6.489306
	.quad	0x3ffe2a433508f649              # double 1.885318
	.quad	0x3f8cbe61cffeb075              # double 0.014035000000000001
	.quad	0x4000c311e85fd04a              # double 2.0952489999999999
	.quad	0x40222190afe60c39              # double 9.0655570000000001
	.quad	0x3fe286f694467382              # double 0.57897500000000002
	.quad	0x401f66db0dd82fd7              # double 7.8504449999999996
	.quad	0x40172c0379314446              # double 5.7929820000000003
	.quad	0x4022761c15097c81              # double 9.2306830000000009
	.quad	0x4014a926c7eae5bd              # double 5.1651870000000004
	.quad	0x400bb2263d816acf              # double 3.4619870000000001
	.quad	0x401a7447c30d306a              # double 6.6135549999999999
	.quad	0x401396d2aa5c5f7c              # double 4.8972879999999996
	.quad	0x3fd1a7ce0fc2eba2              # double 0.27586699999999997
	.quad	0x4015aa5c5f7c675a              # double 5.4163680000000003
	.quad	0x401c3e13f4a98aa8              # double 7.0606229999999996
	.quad	0x40168e76427c7c52              # double 5.6391229999999997
	.quad	0x4023419c17225b75              # double 9.6281440000000007
	.quad	0x401a68df37329c34              # double 6.6024139999999996
	.quad	0x401038b4bf8fcd68              # double 4.055377
	.quad	0x401f7fac1d29dc72              # double 7.8746799999999997
	.quad	0x4016542edbb59ddc              # double 5.5822099999999999
	.quad	0x3ff5722c01e68a0d              # double 1.340374
	.quad	0x4020b14b380cb6c8              # double 8.3462770000000006
	.quad	0x3ffb94d61b2a27f2              # double 1.7238370000000001
	.quad	0x3fdb7d523b3636f4              # double 0.42952400000000002
	.quad	0x400a436e2eb1c433              # double 3.2829250000000001
	.quad	0x401057de939eadd6              # double 4.0858100000000004
	.quad	0x401bf9b1fab96f22              # double 6.993843
	.quad	0x3ff52454de7ea5f8              # double 1.3213699999999999
	.quad	0x40174dec1c1d6cf8              # double 5.8260959999999997
	.quad	0x401e4e60807357e6              # double 7.5765399999999996
	.quad	0x3ff65b8bac710cb3              # double 1.3973500000000001
	.quad	0x4015a2949a5657fb              # double 5.4087699999999996
	.quad	0x3ff43baba7b9170d              # double 1.2645679999999999
	.quad	0x401843369b9d7fd8              # double 6.0656379999999999
	.quad	0x400bbe07a28bb0a3              # double 3.4677880000000001
	.quad	0x401c529068986fce              # double 7.0806290000000001
	.quad	0x401c0c9cd3e0bd45              # double 7.0123170000000004
	.quad	0x3ffb5d9d3458cd21              # double 1.7103550000000001
	.quad	0x4004fbe33acd5b68              # double 2.622992
	.quad	0x401c47a85015c209              # double 7.0699779999999999
	.quad	0x4021270307f23cc9              # double 8.5761950000000002
	.quad	0x400bc78183f91e64              # double 3.4724149999999998
	.quad	0x3ff702e019b0ab2e              # double 1.438202
	.quad	0x4014f86b9c304ccf              # double 5.2425980000000001
	.quad	0x400367674d163348              # double 2.4254899999999999
	.quad	0x401b4bd2fa0d77b8              # double 6.8240470000000002
	.quad	0x400561700cd85597              # double 2.672577
	.quad	0x40229807789a4591              # double 9.296932
	.quad	0x4017760a63305101              # double 5.8652740000000003
	.quad	0x401d9cf63800218e              # double 7.4032830000000001
	.quad	0x401dbd173fb7a5f4              # double 7.4346589999999999
	.quad	0x401b1d63cb817332              # double 6.7787009999999999
	.quad	0x401c2e0221426fe7              # double 7.0449299999999999
	.quad	0x40183c2d6a9c560c              # double 6.0587669999999996
	.quad	0x40164262456f75da              # double 5.5648280000000003
	.quad	0x4020cb884406c00e              # double 8.3975240000000007
	.quad	0x3ffa7b9496249a13              # double 1.6551709999999999
	.quad	0x401a8a0e410b630b              # double 6.6348200000000004
	.quad	0x4022fb61bb05faec              # double 9.4909800000000004
	.quad	0x3fe1aaae297396d1              # double 0.55208500000000005
	.quad	0x401e50fb224aada3              # double 7.5790829999999997
	.quad	0x401e8db65ecc3e32              # double 7.6383910000000004
	.quad	0x402196db0dd82fd7              # double 8.7946399999999993
	.quad	0x4023b5bca9691a76              # double 9.8549550000000004
	.quad	0x4013a5a708ede54b              # double 4.9117699999999997
	.quad	0x40020944ed6fda83              # double 2.2545259999999998
	.quad	0x40050b6a619da9ca              # double 2.6305740000000002
	.quad	0x3ffa715c63ae2542              # double 1.652676
	.quad	0x3fec3b1d0c804103              # double 0.882216
	.quad	0x4023a0f238972043              # double 9.8143480000000007
	.quad	0x40025a8bd230b9dc              # double 2.2942119999999999
	.quad	0x3ff719f3c70c996b              # double 1.4438359999999999
	.quad	0x402087af640639d6              # double 8.2650100000000002
	.quad	0x4000f78a2a90cd42              # double 2.1208689999999999
	.quad	0x3fd6cf41f212d773              # double 0.35639999999999999
	.quad	0x40215d53ac4f7ec3              # double 8.6822789999999994
	.quad	0x4020a1df548ecd8e              # double 8.3161570000000005
	.quad	0x401f1fe47991bc56              # double 7.7811450000000004
	.quad	0x3ffda938de6ddf01              # double 1.8538140000000001
	.quad	0x3ff63d6d7e889c1b              # double 1.3899969999999999
	.quad	0x402147fda4052d66              # double 8.6406069999999993
	.quad	0x3febb4395810624e              # double 0.86575000000000002
	.quad	0x401098a548238540              # double 4.1490679999999998
	.quad	0x4005225bfad29995              # double 2.6417769999999998
	.quad	0x3fce3c31df761cbd              # double 0.23621200000000001
	.quad	0x4017840aaeafab54              # double 5.8789470000000001
	.quad	0x401977b4a2339c0f              # double 6.3669000000000002
	.quad	0x4021173860999dcb              # double 8.5453519999999994
	.quad	0x401d0d1bf7ad4b27              # double 7.2628019999999998
	.quad	0x40121d48882f0e0b              # double 4.5285970000000004
	.quad	0x401bf3250b52439a              # double 6.9874460000000003
	.quad	0x402164a925fe974a              # double 8.6966029999999996
	.quad	0x3ff9e71151611ba4              # double 1.618913
	.quad	0x400bef2064239607              # double 3.4917609999999999
	.quad	0x40230c532a497fa6              # double 9.5240720000000003
	.quad	0x3ff081d8e8640208              # double 1.031701
	.quad	0x400301d755bccaf7              # double 2.375899
	.quad	0x4021638e8ea39c52              # double 8.6944470000000003
	.quad	0x40231f789a459104              # double 9.5614670000000003
	.quad	0x401b71fab96f21f7              # double 6.8613080000000002
	.quad	0x3fe696bb98c7e282              # double 0.70589999999999997
	.quad	0x4016f7b07075b3e1              # double 5.7418839999999998
	.quad	0x402117ec3547e069              # double 8.5467239999999993
	.quad	0x4022d80ae1049236              # double 9.4219580000000001
	.quad	0x401fcad46f587d70              # double 7.9480760000000004
	.quad	0x400dc1bc98a222d5              # double 3.719598
	.quad	0x400be0053e2d6239              # double 3.4843850000000001
	.quad	0x40120d056c508b33              # double 4.5127160000000002
	.quad	0x4022a7e90ff97247              # double 9.3279499999999995
	.quad	0x4022b1c12f09d8c7              # double 9.3471770000000003
	.quad	0x40205e49f51697f2              # double 8.184158
	.quad	0x4002d48b220791c5              # double 2.3537810000000001
	.quad	0x4023f381733226c4              # double 9.9755970000000004
	.quad	0x4016a9a7c17a8933              # double 5.6656789999999999
	.quad	0x401651d1d4738a3b              # double 5.5799019999999997
	.quad	0x401fce2e2b8c75c5              # double 7.9513480000000003
	.quad	0x401747ee4e26d480              # double 5.8202449999999999
	.quad	0x4023cd61d4306e5d              # double 9.9011370000000002
	.quad	0x40047c2ca148ba84              # double 2.560632
	.quad	0x4014c3d7d3910c2c              # double 5.1912529999999997
	.quad	0x3fe398bf7f06705d              # double 0.61239600000000005
	.quad	0x4021796e158750c2              # double 8.7371680000000005
	.quad	0x40227f05425f2021              # double 9.2480869999999999
	.quad	0x401068c3b0c4588a              # double 4.102309
	.quad	0x40151965f5275eea              # double 5.2748030000000004
	.quad	0x3ff0a5c1c6088d6d              # double 1.0404679999999999
	.quad	0x3ff21e0d66f0cfe1              # double 1.1323369999999999
	.quad	0x400466c2acb85a4f              # double 2.550176
	.quad	0x40184d859c8c9321              # double 6.0757050000000001
	.quad	0x401442cb641700ce              # double 5.0652290000000004
	.quad	0x400fa8df37329c34              # double 3.9574569999999998
	.quad	0x40205ce28ed5f139              # double 8.1814160000000005
	.quad	0x3fbd9f90539fba45              # double 0.115716
	.quad	0x3ff0797dd00f776c              # double 1.0296609999999999
	.quad	0x400a822ab25b317f              # double 3.313558
	.quad	0x4012250acc0bdcad              # double 4.5361739999999999
	.quad	0x3fc5615ebfa8f7db              # double 0.16703399999999999
	.quad	0x4017c44c37e6f71a              # double 5.9416969999999996
	.quad	0x4015ac7bcc2938de              # double 5.4184409999999996
	.quad	0x401a5a6f826edaa9              # double 6.5883159999999998
	.quad	0x40224e9fadafd114              # double 9.1535620000000008
	.quad	0x3fe120dbad3a604e              # double 0.53526099999999999
	.quad	0x3f85f5f0b28522ea              # double 0.010723
	.quad	0x3ff041a261bf37b9              # double 1.016024
	.quad	0x402259455219a848              # double 9.1743570000000005
	.quad	0x40120388a8b08dd2              # double 4.5034510000000001
	.quad	0x40032855da272863              # double 2.394695
	.quad	0x3fdb2235b4edb2f6              # double 0.42396299999999998
	.quad	0x4018639d5e4a3832              # double 6.0972799999999996
	.quad	0x400a29a5ebb7739f              # double 3.2703359999999999
	.quad	0x4014d62bf11f926c              # double 5.2091519999999996
	.quad	0x4015003f2d3c792d              # double 5.2502409999999999
	.quad	0x4010266ba493c89f              # double 4.0375199999999998
	.quad	0x3fff02acb85a4f01              # double 1.938153
	.quad	0x400d4568a50507a7              # double 3.6588910000000001
	.quad	0x3ff601248d7e0264              # double 1.3752789999999999
	.quad	0x4021a2b628459967              # double 8.8177959999999995
	.quad	0x400376787ce95fab              # double 2.4328470000000002
	.quad	0x40176cd7060bb2bc              # double 5.8562890000000003
	.quad	0x400a342e557de0d6              # double 3.2754789999999998
	.quad	0x400b01804d983947              # double 3.3757329999999999
	.quad	0x401d6c22ab25b318              # double 7.355601
	.quad	0x40088003254e6e22              # double 3.062506
	.quad	0x4017d88f861a60d4              # double 5.9614849999999997
	.quad	0x3ffa830b178b3700              # double 1.6569929999999999
	.quad	0x40066a37ac3eb7cc              # double 2.8018640000000001
	.quad	0x4008465add9c27e9              # double 3.0343529999999999
	.quad	0x401436e371540032              # double 5.0536019999999997
	.quad	0x4019477ab324851b              # double 6.3198040000000004
	.quad	0x40186861e92923e6              # double 6.1019360000000002
	.quad	0x40069d49d7ba6699              # double 2.8268010000000001
	.quad	0x40164c9795b35b0c              # double 5.5747970000000002
	.quad	0x3ff70996b76709fa              # double 1.4398409999999999
	.quad	0x401393d31b9b66f9              # double 4.8943599999999998
	.quad	0x401bfc8472c0e7bc              # double 6.9965989999999998
	.quad	0x400490739b024f66              # double 2.5705330000000002
	.quad	0x4018a043e5321e60              # double 6.1565089999999998
	.quad	0x4001b4bf8fcd67fd              # double 2.2132559999999999
	.quad	0x4018310ecb74ddf8              # double 6.0479079999999996
	.quad	0x40152e39713ad5bf              # double 5.2951410000000001
	.quad	0x3fefe8ea39c51dac              # double 0.99718200000000001
	.quad	0x4017185d31337eb3              # double 5.7737930000000004
	.quad	0x40135fe82517e77d              # double 4.8436589999999997
	.quad	0x400287418d6909af              # double 2.3160430000000001
	.quad	0x4023d5b317efe0ce              # double 9.9173819999999999
	.quad	0x401e3f8f8a4c1ebd              # double 7.5620710000000004
	.quad	0x40201032fcac8e69              # double 8.0316390000000002
	.quad	0x4012c07852f7f499              # double 4.6879590000000002
	.quad	0x3ff70d29131ec0b5              # double 1.4407129999999999
	.quad	0x40146cc4ac6cdaf5              # double 5.1062190000000003
	.quad	0x401ccc743201040c              # double 7.199662
	.quad	0x4021efc6759ab6d0              # double 8.9683109999999999
	.quad	0x401f0e26d4801f75              # double 7.7638199999999999
	.quad	0x4019d58bc59b8024              # double 6.4585410000000003
	.quad	0x400df804d9839475              # double 3.7461030000000002
	.quad	0x3fd5edaa92e62132              # double 0.34263100000000002
	.quad	0x400bf7d30ad46f58              # double 3.4960079999999998
	.quad	0x4003f1c9f72f76e6              # double 2.493061
	.quad	0x4001b36c58eeae9f              # double 2.212609
	.quad	0x402213a55d1c3ac9              # double 9.0383709999999997
	.quad	0x4018066234a87e39              # double 6.0062340000000001
	.quad	0x4013738f36694899              # double 4.862851
	.quad	0x3fef7f3f0fe047d4              # double 0.98428300000000001
	.quad	0x401b8d0f6273929f              # double 6.8877540000000002
	.quad	0x4021fff90d9d7775              # double 8.9999470000000006
	.quad	0x401facf398e97072              # double 7.9188980000000004
	.quad	0x4018a70f3882278d              # double 6.163144
	.quad	0x402069a73b42cc2d              # double 8.2063539999999993
	.quad	0x401f29ca5bd944aa              # double 7.7908109999999997
	.quad	0x40218670196d8f50              # double 8.7625740000000008
	.quad	0x4015acd898b2e9cd              # double 5.4187950000000003
	.quad	0x3fff9b1e9f277814              # double 1.975371
	.quad	0x400699c5a3e39f77              # double 2.8250839999999999
	.quad	0x401bdb2cc70867ae              # double 6.9640380000000004
	.quad	0x3fdea65cf67b1c00              # double 0.478904
	.quad	0x401838dde7a743a6              # double 6.0555339999999998
	.quad	0x402392af1455219b              # double 9.7864920000000008
	.quad	0x401edd4b6a619daa              # double 7.7161080000000002
	.quad	0x401569d627bf61aa              # double 5.3533559999999998
	.quad	0x3fd834dad31fcd25              # double 0.37822600000000001
	.quad	0x4023fe7fb267c6b9              # double 9.9970680000000005
	.quad	0x3fc88c60cbf2b23a              # double 0.19178400000000001
	.quad	0x3fe49fb1e18efbb1              # double 0.64449400000000001
	.quad	0x4022514c87980f56              # double 9.1587870000000002
	.quad	0x402172ec0724b76f              # double 8.7244569999999992
	.quad	0x3fdef811f4f50a03              # double 0.48389100000000002
	.quad	0x3ff89d6adf71eaff              # double 1.538432
	.quad	0x401353dc054ef45a              # double 4.8318940000000001
	.quad	0x40187912dba4d6e4              # double 6.1182359999999996
	.quad	0x401ff955714b9cb7              # double 7.9934900000000004
	.quad	0x4014932e3821af7d              # double 5.1437309999999998
	.quad	0x40088b06c43f5f91              # double 3.0678839999999998
	.quad	0x4023e7ce746cb967              # double 9.9527470000000004
	.quad	0x3fe7383f0bae89ec              # double 0.72561600000000004
	.quad	0x400e34c122749f0e              # double 3.7757589999999999
	.quad	0x402333c2b94d9408              # double 9.6010950000000008
	.quad	0x402096f5232d2bb2              # double 8.2948389999999996
	.quad	0x401f56f544bb1af4              # double 7.8349200000000003
	.quad	0x4016c4e4430b178b              # double 5.6922769999999998
	.quad	0x3fe100f345069a4e              # double 0.531366
	.quad	0x4011025918a009f6              # double 4.2522929999999999
	.quad	0x3fdcb77c02afdda9              # double 0.44869900000000001
	.quad	0x40180d02cd39da16              # double 6.0127059999999997
	.quad	0x3feb89613d31b9b6              # double 0.86051999999999995
	.quad	0x3ffc19988d2a1f8e              # double 1.7562489999999999
	.quad	0x401f959a73b42cc3              # double 7.8960970000000001
	.quad	0x401e05f99c38b04b              # double 7.5058350000000002
	.quad	0x4022f0e5e679463d              # double 9.470504
	.quad	0x40101c4fc1df3301              # double 4.0276480000000001
	.quad	0x3ffa568f8e7ddca5              # double 1.6461330000000001
	.quad	0x3fe629b6b2af1455              # double 0.69259199999999999
	.quad	0x401aa1ed5ae1cde6              # double 6.6581320000000002
	.quad	0x4014d1240746455f              # double 5.2042390000000003
	.quad	0x402263af31b152f4              # double 9.1946960000000004
	.quad	0x4020980e27e0ef9a              # double 8.2969830000000009
	.quad	0x4023b73cd573647c              # double 9.8578860000000005
	.quad	0x4023acebbba55d1c              # double 9.8377359999999995
	.quad	0x3fb067dfe32a0664              # double 0.064085000000000003
	.quad	0x401eeaa2e3c536d6              # double 7.7291369999999997
	.quad	0x400480b3d4ae429e              # double 2.562843
	.quad	0x3fbecf95d4e8fb01              # double 0.120355
	.quad	0x40215ccb1897a67a              # double 8.6812369999999994
	.quad	0x3ff4618372e6a769              # double 1.2738069999999999
	.quad	0x402040904f6dfc5d              # double 8.1261010000000002
	.quad	0x401d35629d8409e5              # double 7.3021339999999997
	.quad	0x3ffb647baa9b499d              # double 1.712032
	.quad	0x401233c9eecbfb16              # double 4.5505750000000003
	.quad	0x401523d640e9d51b              # double 5.2849969999999997
	.quad	0x400ee59d12cadddf              # double 3.8621159999999999
	.quad	0x401f6526d8b1dd5d              # double 7.8487809999999997
	.quad	0x3fe916f4384ba0e8              # double 0.78405199999999997
	.quad	0x40201f9b34a44c7b              # double 8.061731
	.quad	0x40167e586013660e              # double 5.6233839999999997
	.quad	0x4018659ddc1e7968              # double 6.0992350000000002
	.quad	0x4021ac16df3f9618              # double 8.836112
	.quad	0x400189289dadfb50              # double 2.1919719999999998
	.quad	0x401a83e425aee632              # double 6.6288
	.quad	0x4013e3f141205bc0              # double 4.9725999999999999
	.quad	0x40216248301a79ff              # double 8.6919570000000004
	.quad	0x401c404b3c3e74b0              # double 7.0627870000000001
	.quad	0x4019811ba3ca7504              # double 6.3760820000000002
	.quad	0x400ac9eecbfb15b5              # double 3.3485999999999998
	.quad	0x4016854de7ea5f85              # double 5.6301800000000002
	.quad	0x40028d106ee30caa              # double 2.3188789999999999
	.quad	0x4020a083dbc23316              # double 8.3135060000000003
	.quad	0x40152e874c8ffb8b              # double 5.2954379999999999
	.quad	0x401cc195cc857f30              # double 7.1890479999999997
	.quad	0x401a0266ba493c8a              # double 6.502345
	.quad	0x40234563ed0f6274              # double 9.6355280000000007
	.quad	0x40007e8a2ec28b2a              # double 2.0617869999999998
	.quad	0x401a2cfe154434e3              # double 6.5439379999999998
	.quad	0x3ffa3e61cffeb075              # double 1.6402300000000001
	.quad	0x4015037718655193              # double 5.2533839999999996
	.quad	0x40204fff151e7536              # double 8.1562429999999999
	.quad	0x40210d58644523f6              # double 8.5260649999999991
	.quad	0x401c98d002e23290              # double 7.1492310000000003
	.quad	0x4008d38fffbce421              # double 3.1033019999999998
	.quad	0x3fb0fa26a22b3893              # double 0.066317000000000001
	.quad	0x40097a8d64d7f0ed              # double 3.1848399999999999
	.quad	0x3ffeec5e2cdc011d              # double 1.932707
	.quad	0x401df426fe718a87              # double 7.4884300000000001
	.quad	0x401623760bf5d788              # double 5.5346299999999999
	.quad	0x4018c121682f9442              # double 6.1886039999999998
	.quad	0x3ff47d556084a516              # double 1.280599
	.quad	0x40158345cfede97d              # double 5.378196
	.quad	0x4020567ea5f84cad              # double 8.1689349999999994
	.quad	0x4023c61262025397              # double 9.8868589999999993
	.quad	0x401f33b9f127f5e8              # double 7.8005139999999997
	.quad	0x401915e99e94ab1d              # double 6.2713989999999997
	.quad	0x4021c57ff9b56324              # double 8.8857420000000004
	.quad	0x40027c5f7c6759ab              # double 2.3107289999999998
	.quad	0x40093b3b7521144d              # double 3.1539220000000001
	.quad	0x40005692b3cc4ac7              # double 2.0422720000000001
	.quad	0x40183052d666a982              # double 6.0471909999999998
	.quad	0x401ed039abf33871              # double 7.7033449999999996
	.quad	0x401df904f6dfc5ce              # double 7.4931830000000001
	.quad	0x401911e8e6080735              # double 6.2674899999999996
	.quad	0x40239003cd141a69              # double 9.7812789999999996
	.quad	0x400fadfbd6a593a3              # double 3.9599530000000001
	.quad	0x401abd0fe8ab4fa5              # double 6.6846310000000004
	.quad	0x3feb7038e29f9ce9              # double 0.85744900000000002
	.quad	0x3ffcba00e27e0efa              # double 1.7954110000000001
	.quad	0x40048857f3061c7a              # double 2.5665740000000001
	.quad	0x40092e90364388ec              # double 3.1477360000000001
	.quad	0x3fdea658c4bd33d3              # double 0.47890300000000002
	.quad	0x401e213b9f127f5f              # double 7.5324540000000004
	.quad	0x3ff08b97785729b3              # double 1.0340800000000001
	.quad	0x401646cdaf4adbc6              # double 5.5691439999999997
	.quad	0x401e7c7b02d59d56              # double 7.6215630000000001
	.quad	0x401798c868b9fdbd              # double 5.8992019999999998
	.quad	0x40226027525460aa              # double 9.1877999999999993
	.quad	0x401251f75104d552              # double 4.5800450000000001
	.quad	0x40173712e40852b5              # double 5.8037830000000001
	.quad	0x3ffbe4bfd2e94680              # double 1.743347
	.quad	0x4017f6188b11409a              # double 5.9903279999999999
	.quad	0x4014aae2da554b8c              # double 5.1668810000000001
	.quad	0x4010f83d35eb7458              # double 4.2424210000000002
	.quad	0x3ffa75e310dbf056              # double 1.6537809999999999
	.quad	0x401b99fcf3dc054f              # double 6.900379
	.quad	0x4007b43a647fdc59              # double 2.9630019999999999
	.quad	0x4011b12ba16e7a31              # double 4.4230179999999999
	.quad	0x40184cfe154434e3              # double 6.0751879999999998
	.quad	0x3fffaaee2003ab86              # double 1.979231
	.quad	0x400ef2830a0b1bbd              # double 3.868414
	.quad	0x4009f5e2046c764b              # double 3.2450600000000001
	.quad	0x401167570c564f98              # double 4.3509180000000001
	.quad	0x4014b9a77e5eaab0              # double 5.1813029999999998
	.quad	0x4005592b7fe08af0              # double 2.6685400000000001
	.quad	0x40204b62a5e785b6              # double 8.1472370000000005
	.quad	0x4017a7e0ac7da1ec              # double 5.9139429999999997
	.quad	0x3fef6df82b1f687b              # double 0.98217399999999999
	.quad	0x4023e017763e4abe              # double 9.9376789999999993
	.quad	0x400ae3201040bfe4              # double 3.3609010000000001
	.quad	0x40227fd71b046845              # double 9.2496880000000008
	.quad	0x4022f2352eb5f5f1              # double 9.4730620000000005
	.quad	0x400d561fe21d96ea              # double 3.6670530000000001
	.quad	0x401a42de43ed959a              # double 6.5653009999999998
	.quad	0x3ffc0c62e4d1a650              # double 1.7530239999999999
	.quad	0x400db2599ed7c6fc              # double 3.7120850000000001
	.quad	0x400219ce8d972cd8              # double 2.2626010000000001
	.quad	0x3fd2bb1f255f351a              # double 0.29267100000000001
	.quad	0x401d4165907d9125              # double 7.3138639999999997
	.quad	0x402028fa7a85015c              # double 8.0800359999999997
	.quad	0x40209dcd2d44dca9              # double 8.3082060000000002
	.quad	0x401a79b5e95b78cd              # double 6.6188580000000004
	.quad	0x402091e90795f677              # double 8.2849810000000002
	.quad	0x400709c23b7952d2              # double 2.8797649999999999
	.quad	0x401a451b93037d63              # double 6.567488
	.quad	0x401e90abb44e50c6              # double 7.6412800000000001
	.quad	0x3ffa44199fe43676              # double 1.641626
	.quad	0x40187d2999567dbb              # double 6.1222289999999999
	.quad	0x4020c5dfa871a3b1              # double 8.3864719999999995
	.quad	0x401762bf9830e3ce              # double 5.8464340000000004
	.quad	0x402158c111ada76e              # double 8.6733480000000007
	.quad	0x400cfdeb52c9d170              # double 3.6239840000000001
	.quad	0x40202fb02d59d55e              # double 8.0931409999999993
	.quad	0x40227fd24180d3d0              # double 9.2496510000000001
	.quad	0x400897f1f9acffa8              # double 3.074192
	.quad	0x4004ea137f38c543              # double 2.6142949999999998
	.quad	0x4016cc8711d798d9              # double 5.6997340000000003
	.quad	0x402386fe718a86d7              # double 9.7636599999999997
	.quad	0x3fe85bcec84f8f8a              # double 0.76120699999999997
	.quad	0x3fe79491f2dc2b0f              # double 0.73688600000000004
	.quad	0x3fec2c8c5004fb12              # double 0.88043800000000005
	.quad	0x400264b018611fd6              # double 2.2991640000000002
	.quad	0x4014932e3821af7d              # double 5.1437309999999998
	.quad	0x3ff4a9424e592967              # double 1.291323
	.quad	0x4004715d701d9f4d              # double 2.5553539999999999
	.quad	0x40233b4d26fa3fcd              # double 9.6158230000000006
	.quad	0x4013f59ff4fd6d7f              # double 4.9898680000000004
	.quad	0x4001db3bfb58d152              # double 2.2320479999999998
	.quad	0x401d916a055757d6              # double 7.3920060000000003
	.quad	0x402024091c087443              # double 8.0703820000000004
	.quad	0x4022c69af5ba2be0              # double 9.3879009999999994
	.quad	0x400c0add590c0ad0              # double 3.5053049999999999
	.quad	0x4021fd158b827fa2              # double 8.9943050000000007
	.quad	0x3fd4296f6512a950              # double 0.315029
	.quad	0x4004178811b1d92b              # double 2.5114899999999998
	.quad	0x400d1a797891e215              # double 3.6379269999999999
	.quad	0x40159fd08d4bad7d              # double 5.4060689999999996
	.quad	0x3ff8c16aceaaf35e              # double 1.547221
	.quad	0x40040db1e9f27781              # double 2.5066869999999999
	.quad	0x40204424e5929670              # double 8.1330939999999998
	.quad	0x401d2ced4e4c942d              # double 7.2938739999999997
	.quad	0x401f8209edbf8b9c              # double 7.8769910000000003
	.quad	0x4022ffad4b2745bf              # double 9.4993689999999997
	.quad	0x400a2df82b1f687b              # double 3.272446
	.quad	0x3fc62e4d1a650614              # double 0.173288
	.quad	0x4014d6ff3ade2260              # double 5.2099580000000003
	.quad	0x4001f52c9d16fc9c              # double 2.2447140000000001
	.quad	0x40203693e1c9b414              # double 8.1065970000000007
	.quad	0x3ff6fcb923a29c78              # double 1.4367000000000001
	.quad	0x3fed3ecaab8a5ce6              # double 0.91391500000000003
	.quad	0x400557574f722e1b              # double 2.6676470000000001
	.quad	0x40161203a322af57              # double 5.5175919999999996
	.quad	0x3fe835371971c10d              # double 0.75649599999999995
	.quad	0x400e4eaf251c193b              # double 3.7884199999999999
	.quad	0x400aad30f062d40b              # double 3.3345660000000001
	.quad	0x3ff187160956c0d7              # double 1.09548
	.quad	0x40174c9b41398634              # double 5.8248110000000004
	.quad	0x401a74acaff6d331              # double 6.6139400000000004
	.quad	0x402264ed916872b0              # double 9.1971249999999998
	.quad	0x3ffc6abcd78c4370              # double 1.7760590000000001
	.quad	0x40077c84b5dcc63f              # double 2.9358
	.quad	0x40144a32b12d3416              # double 5.0724590000000003
	.quad	0x40082b5350092ccf              # double 3.0211549999999998
	.quad	0x3ff2922c881e4713              # double 1.160687
	.quad	0x4020d097c80841ee              # double 8.4074080000000002
	.quad	0x40188c8d5c74751d              # double 6.1372580000000001
	.quad	0x4023ba00c0f01fb8              # double 9.8632869999999996
	.quad	0x402312786c22680a              # double 9.5360750000000003
	.quad	0x3fe5aaf1455219a8              # double 0.67711699999999997
	.quad	0x402064c09c3ce209              # double 8.1967820000000007
	.quad	0x40174012599ed7c7              # double 5.81257
	.quad	0x3ff7c70435efa616              # double 1.4860880000000001
	.quad	0x400fac9539b88872              # double 3.9592689999999999
	.quad	0x4001194ea077036d              # double 2.1373570000000002
	.quad	0x4023104e3ffef391              # double 9.5318470000000008
	.quad	0x40194e2de8709742              # double 6.3263470000000002
	.quad	0x40118255f3519bd4              # double 4.377281
	.quad	0x40223374794ea077              # double 9.100498
	.quad	0x400b6c7e28240b78              # double 3.427975
	.quad	0x401e71cf355cd91f              # double 7.611142
	.quad	0x3fe675d13d74d595              # double 0.70188200000000001
	.quad	0x400c64c61d8622c4              # double 3.5492059999999999
	.quad	0x401115dd095af295              # double 4.2713510000000001
	.quad	0x3ff95058dde7a744              # double 1.5821160000000001
	.quad	0x3fe010bc7b45f17c              # double 0.50204300000000002
	.quad	0x3fdcbb7f9d6f1130              # double 0.44894400000000001
	.quad	0x4012127bf61aa3f0              # double 4.5180509999999998
	.quad	0x40212c96cc5fbf83              # double 8.5870879999999996
	.quad	0x4021c50ebaade658              # double 8.8848780000000005
	.quad	0x3ff0037d63022dd8              # double 1.0008520000000001
	.quad	0x40227ae81882adc5              # double 9.2400520000000004
	.quad	0x4012440852b4d8ba              # double 4.5664379999999998
	.quad	0x4021e104f6dfc5ce              # double 8.9394910000000003
	.quad	0x3ffe23c31df761cc              # double 1.883731
	.quad	0x4013819b90ea9e6f              # double 4.8765700000000001
	.quad	0x4013a382a12f9011              # double 4.9096780000000004
	.quad	0x4009b945b6c3760c              # double 3.215465
	.quad	0x400c5416bdb1a6d7              # double 3.5410590000000002
	.quad	0x40145772d5e071c5              # double 5.0853989999999998
	.quad	0x3ff80e5710880d80              # double 1.503501
	.quad	0x3ff3b2de43ed959a              # double 1.231169
	.quad	0x400f97b5286b5914              # double 3.9490759999999998
	.quad	0x40032dc981beb181              # double 2.397357
	.quad	0x3ff3a8283d35eb74              # double 1.2285539999999999
	.quad	0x401eac6e6d9be4cd              # double 7.6683899999999995
	.quad	0x4004d3636f3b213e              # double 2.6032169999999999
	.quad	0x401da1376d549731              # double 7.407438
	.quad	0x40020f3343fa2ad4              # double 2.257422
	.quad	0x40210a2c881e4713              # double 8.5198710000000002
	.quad	0x401ddfa0d77b7c78              # double 7.4683869999999998
	.quad	0x401455a2d72ffd1e              # double 5.0836290000000002
	.quad	0x4021c7f7be121ee6              # double 8.8905619999999992
	.quad	0x401ccf03d145d851              # double 7.2021629999999996
	.quad	0x400a314e3bcd35a8              # double 3.2740749999999998
	.quad	0x401d2d9620685554              # double 7.2945180000000001
	.quad	0x3fd497396d0917d7              # double 0.32173000000000002
	.quad	0x4000e774eebf65dc              # double 2.113016
	.quad	0x40150a960b6f9fcb              # double 5.260338
	.quad	0x4007a3a5c1c6088d              # double 2.9549059999999998
	.quad	0x4021af944241c3f0              # double 8.8429280000000006
	.quad	0x4016358ea7ce0fc3              # double 5.5523020000000001
	.quad	0x3fd2f4e874c8ffb9              # double 0.29619800000000002
	.quad	0x401e5d6dc1a47a9e              # double 7.5912389999999998
	.quad	0x400e930ad46f587d              # double 3.8217979999999998
	.quad	0x400cbd113836a833              # double 3.5923180000000001
	.quad	0x40207045baf533f4              # double 8.2192819999999997
	.quad	0x4004b32830a0b1bc              # double 2.5874790000000001
	.quad	0x3fe7e1d2178f68be              # double 0.74631599999999998
	.quad	0x4013a0abf76a2f49              # double 4.9069060000000002
	.quad	0x3fe694573a797892              # double 0.70560800000000001
	.quad	0x3fc5e53a81dc0db2              # double 0.17105799999999999
	.quad	0x3fe0c894c447c30d              # double 0.52448499999999998
	.quad	0x3fe3160b6f9fcb0c              # double 0.596441
	.quad	0x400646088d6d3b6d              # double 2.7841960000000001
	.quad	0x3ff6aa98244e93e2              # double 1.416649
	.quad	0x3fe0cb05b7cfe586              # double 0.524783
	.quad	0x4000e78e9f6a93f3              # double 2.1130650000000002
	.quad	0x4021b1392189bd84              # double 8.8461390000000008
	.quad	0x4022929845dc8323              # double 9.2863179999999996
	.quad	0x3fefa1a93293d103              # double 0.98848400000000002
	.quad	0x3ff60e5f7403dddb              # double 1.378509
	.quad	0x40230190d173fb7a              # double 9.5030579999999993
	.quad	0x401a0247cb70ac3b              # double 6.5022270000000004
	.quad	0x40017f8a0902de01              # double 2.1872750000000001
	.quad	0x40154ba775fb2ee0              # double 5.3238810000000001
	.quad	0x401d6095f2452c5a              # double 7.344322
	.quad	0x400108858ff75968              # double 2.1291609999999999
	.quad	0x3ff0e920c069e7fb              # double 1.056916
	.quad	0x3fe2c026cc1ca3a5              # double 0.58595600000000003
	.quad	0x401aa52a84380885              # double 6.661295
	.quad	0x4010b6f19934efcc              # double 4.1786560000000001
	.quad	0x400aed18d25edd05              # double 3.3657699999999999
	.quad	0x4022e1c3efae7925              # double 9.4409480000000005
	.quad	0x402225d2ae8e1d65              # double 9.0738730000000007
	.quad	0x400d5be1a8262457              # double 3.669864
	.quad	0x3ffcec95bff04578              # double 1.80776
	.quad	0x3fe68cac4b4d056c              # double 0.70467199999999997
	.quad	0x3ff0a8986fcdee35              # double 1.041161
	.quad	0x40175fc2eba27aea              # double 5.8435170000000003
	.quad	0x400bc91105e1c151              # double 3.4731770000000002
	.quad	0x400ec43fe5c91d15              # double 3.845825
	.quad	0x40189fd694ccab3f              # double 6.1560920000000001
	.quad	0x401a21fc4c165908              # double 6.5331890000000001
	.quad	0x40090f0c77dd872f              # double 3.1323479999999999
	.quad	0x401eaae3608d0892              # double 7.6668830000000003
	.quad	0x400e1db1a6d698fe              # double 3.7644989999999998
	.quad	0x401515b1422ccb3a              # double 5.2711839999999999
	.quad	0x40001ab10ba62670              # double 2.0130330000000001
	.quad	0x3fd36d612c6ac216              # double 0.30355100000000002
	.quad	0x400f50bbf50e3476              # double 3.9144209999999999
	.quad	0x40231f6555c52e73              # double 9.5613200000000002
	.quad	0x401fed530489d27c              # double 7.9817619999999998
	.quad	0x401b3ccf6be37de9              # double 6.8093849999999998
	.quad	0x4015729dc725c3df              # double 5.3619300000000001
	.quad	0x400ddbe09bb6aa4c              # double 3.7323620000000002
	.quad	0x4001e29e0a41a262              # double 2.2356530000000001
	.quad	0x3fd987e7c06e19b9              # double 0.39892
	.quad	0x401eaad9274e22a3              # double 7.6668440000000002
	.quad	0x40174b3c81908e58              # double 5.8234729999999999
	.quad	0x4016fe1719f7f8cb              # double 5.7481350000000004
	.quad	0x4004efc0d2c386d3              # double 2.617067
	.quad	0x4002b165d3996fa8              # double 2.3366199999999999
	.quad	0x400e0c93a7115161              # double 3.756141
	.quad	0x400cd358f2e05ccd              # double 3.6031970000000002
	.quad	0x4020584d12018a44              # double 8.1724630000000004
	.quad	0x40144500d5e8d541              # double 5.0673859999999999
	.quad	0x3ff16b313be22e5e              # double 1.08867
	.quad	0x40123dc37a3db3c0              # double 4.5603160000000003
	.quad	0x4015657603925bb8              # double 5.3490830000000003
	.quad	0x3ffab49be8ff327b              # double 1.6690940000000001
	.quad	0x40196c78a6dacabc              # double 6.3559289999999997
	.quad	0x40221bf0fe047d3d              # double 9.0545729999999995
	.quad	0x4021c0e736049ecb              # double 8.8767639999999997
	.quad	0x401b02c0a4a05dd9              # double 6.752688
	.quad	0x3ffb1fefbf401c50              # double 1.6952970000000001
	.quad	0x4021222962cfd8f1              # double 8.5667220000000004
	.quad	0x401e14388ebcc6c5              # double 7.5197469999999997
	.quad	0x3ffa4f1c3265adda              # double 1.6443140000000001
	.quad	0x4010b679463cfb33              # double 4.1781969999999999
	.quad	0x400060a2014727dd              # double 2.0471840000000001
	.quad	0x4018298244e93e1d              # double 6.0405360000000003
	.quad	0x401406c82e019b0b              # double 5.0066230000000003
	.quad	0x3fddffe2a3cea6c2              # double 0.46874300000000002
	.quad	0x4006ff2990f301eb              # double 2.8745910000000001
	.quad	0x40010177ea1c68ec              # double 2.1257169999999999
	.quad	0x3ffdff0563ed0f62              # double 1.8747609999999999
	.quad	0x401b71afc04c8bca              # double 6.8610220000000002
	.quad	0x401e86fef7c243dd              # double 7.6318320000000001
	.quad	0x40237a54a3c64346              # double 9.7389270000000003
	.quad	0x401b27f8012dfd69              # double 6.7890319999999997
	.quad	0x3ff83877ab324852              # double 1.5137860000000001
	.quad	0x3ff5b8811b1d92b8              # double 1.357545
	.quad	0x3fe8490c4dec1c1d              # double 0.75891699999999995
	.quad	0x3ffe50c804102ff9              # double 1.894722
	.quad	0x4012bcd855970b4a              # double 4.6844190000000001
	.quad	0x40140c521dda059a              # double 5.0120319999999996
	.quad	0x400b9954eb13dfb1              # double 3.4498690000000001
	.quad	0x401f9480e8c8abd6              # double 7.8950230000000001
	.quad	0x3feba6d2674080fa              # double 0.86411400000000005
	.quad	0x402326a5f84cad58              # double 9.5754850000000004
	.quad	0x4020113c89f40a28              # double 8.0336649999999992
	.quad	0x40187f8ec0f88334              # double 6.124568
	.quad	0x401cc226c3b927d4              # double 7.1896009999999997
	.quad	0x4019fbd33d29563b              # double 6.4959230000000003
	.quad	0x40119edfe75bc44c              # double 4.405151
	.quad	0x400cd6dfc5cdd50b              # double 3.6049190000000002
	.quad	0x4023a6b52c9d16fd              # double 9.8256010000000006
	.quad	0x400c58583621fafd              # double 3.5431370000000002
	.quad	0x400a609fe86833c6              # double 3.29718
	.quad	0x40071dbdb5d89481              # double 2.8895219999999999
	.quad	0x4003962bf11f926c              # double 2.4483259999999998
	.quad	0x4008d854046412cf              # double 3.105629
	.quad	0x4016c2291fb3fa6e              # double 5.6896100000000001
	.quad	0x4023e333fc86cebc              # double 9.9437560000000004
	.quad	0x3fe2fe586013660e              # double 0.59354799999999996
	.quad	0x3ff3e25742dcf462              # double 1.2427589999999999
	.quad	0x4021aff822bbecab              # double 8.8436900000000005
	.quad	0x402049804d983947              # double 8.1435569999999995
	.quad	0x4022b63193f6c26a              # double 9.3558470000000007
	.quad	0x401e92ab25b317f0              # double 7.6432310000000001
	.quad	0x4023e7f609dcf894              # double 9.953049
	.quad	0x3fccc892ab68cef6              # double 0.22487099999999999
	.quad	0x4022da74c09c3ce2              # double 9.4266719999999999
	.quad	0x4017304189374bc7              # double 5.7971250000000003
	.quad	0x4022ab65ecc3e319              # double 9.3347619999999996
	.quad	0x40228e2cdc011d36              # double 9.2776859999999992
	.quad	0x4023e7fe8ee6b830              # double 9.9531139999999994
	.quad	0x3ffc0d716d2aa5c6              # double 1.753282
	.quad	0x4015a9203a322af5              # double 5.4151619999999996
	.quad	0x40107a5269595fee              # double 4.1194550000000003
	.quad	0x4002aced4e4c942d              # double 2.3344369999999999
	.quad	0x400da4bdba0a5269              # double 3.7054399999999998
	.quad	0x4012605ab3aabcd8              # double 4.5940960000000004
	.quad	0x400dba4acf312b1b              # double 3.7159629999999999
	.quad	0x4023cc044284dfce              # double 9.8984699999999997
	.quad	0x4007d30f8c64fdb1              # double 2.9780570000000002
	.quad	0x40139d2d87f88766              # double 4.9034940000000002
	.quad	0x4022425df2239e6b              # double 9.1296230000000005
	.quad	0x401c1c47e49b1fac              # double 7.0276180000000004
	.quad	0x401eadc725c3dee8              # double 7.6697050000000004
	.quad	0x4019892ee84ad795              # double 6.3839680000000003
	.quad	0x3fae9df97aaac109              # double 0.059798999999999998
	.quad	0x4010479d4d834092              # double 4.0699360000000002
	.quad	0x40210f36262cba73              # double 8.5297099999999997
	.quad	0x4020b1e8c47a17f4              # double 8.3474789999999998
	.quad	0x3ff26f42784a9479              # double 1.152163
	.quad	0x40150c7ffde7210c              # double 5.2622070000000001
	.quad	0x4006974cd31769a9              # double 2.823877
	.quad	0x4019a1e92923e5b8              # double 6.4081159999999997
	.quad	0x400798d045fe1112              # double 2.9496159999999998
	.quad	0x3fff788a8b08dd1e              # double 1.9669289999999999
	.quad	0x4001aaa64c2f837b              # double 2.2083249999999999
	.quad	0x401615ed8d36b4c8              # double 5.521414
	.quad	0x401ca4e48626f60e              # double 7.1610279999999999
	.quad	0x3fefb400b88ca3e8              # double 0.99072300000000002
	.quad	0x401072b4959e6256              # double 4.1120169999999998
	.quad	0x401bd85e3da2f8be              # double 6.9612970000000001
	.quad	0x3fe1621fafc8b008              # double 0.54322800000000004
	.quad	0x3fef4fa48301a7a0              # double 0.978472
	.quad	0x401c9deebb341e15              # double 7.1542310000000002
	.quad	0x4022d22e3c536d65              # double 9.4105089999999993
	.quad	0x401ee7dfe32a0664              # double 7.7264400000000002
	.quad	0x401821144cbe1eb4              # double 6.0323039999999999
	.quad	0x4019246a5d6bebe1              # double 6.2855619999999996
	.quad	0x3fe0fb6dca07f66f              # double 0.53069200000000005
	.quad	0x400a768b5cbff477              # double 3.3078829999999999
	.quad	0x40230ef99806f263              # double 9.5292480000000008
	.quad	0x40131eca686e7e63              # double 4.7800690000000001
	.quad	0x4008dcf2495e17e3              # double 3.1078839999999999
	.quad	0x4003eb3354c12275              # double 2.4898440000000002
	.quad	0x402321cf56eac860              # double 9.5660349999999994
	.quad	0x4017df3fd933e35c              # double 5.9680169999999997
	.quad	0x40202003eea209ab              # double 8.0625300000000006
	.quad	0x4019c2ca57a786c2              # double 6.4402249999999999
	.quad	0x40184eb313be22e6              # double 6.0768550000000001
	.quad	0x40043bfbdf090f73              # double 2.5292889999999999
	.quad	0x4001da77e5eaab04              # double 2.2316739999999999
	.quad	0x4021afc0f4517614              # double 8.8432689999999993
	.quad	0x3ff166c1a048e044              # double 1.0875870000000001
	.quad	0x3fdf98d477bbf940              # double 0.493703
	.quad	0x4015d5c4eb56fb8f              # double 5.4587589999999997
	.quad	0x400900a7c5ac471b              # double 3.1253199999999999
	.quad	0x401d4efbb0e5e679              # double 7.3271319999999998
	.quad	0x40208c79d4d83409              # double 8.2743669999999998
	.quad	0x3fc7c011d3671ac1              # double 0.18554899999999999
	.quad	0x4018f2c9d16fc9bc              # double 6.2370979999999996
	.quad	0x40187f08cc575c07              # double 6.1240569999999996
	.quad	0x401cf7d523b3636f              # double 7.2420239999999998
	.quad	0x4016e264e48626f6              # double 5.721088
	.quad	0x40179b313be22e5e              # double 5.9015550000000001
	.quad	0x400f1991361dc93f              # double 3.8874840000000002
	.quad	0x4022a6b78897e996              # double 9.3256189999999997
	.quad	0x4023fd7b41bfbdf1              # double 9.9950810000000007
	.quad	0x400eb86fcdee34fc              # double 3.8400569999999998
	.quad	0x4013a2c2bd7f51f0              # double 4.9089460000000003
	.quad	0x400e3e8ab4fa4830              # double 3.780538
	.quad	0x4021379af1886df8              # double 8.6086039999999997
	.quad	0x4010acd07852f7f5              # double 4.1687640000000004
	.quad	0x402168739b024f66              # double 8.7040070000000007
	.quad	0x401a0049a9973d9f              # double 6.5002810000000002
	.quad	0x400eeb723ee1bd1f              # double 3.8649640000000001
	.quad	0x4017881e03f70585              # double 5.8829269999999996
	.quad	0x3fc80a7c5ac471b4              # double 0.18781999999999999
	.quad	0x40198d2674080f99              # double 6.387842
	.quad	0x400b9bae46cfc82a              # double 3.4510160000000001
	.quad	0x4019644a6223e187              # double 6.3479400000000004
	.quad	0x400034195cc857f3              # double 2.025439
	.quad	0x401afdaf4adbc665              # double 6.7477390000000002
	.quad	0x401e3884406c00da              # double 7.5551919999999999
	.quad	0x400653ae685db76b              # double 2.7908599999999999
	.quad	0x3fffbcd24e160d88              # double 1.9835989999999999
	.quad	0x4019ac5cdd50a88f              # double 6.418323
	.quad	0x402023484d76ab58              # double 8.0689109999999999
	.quad	0x40090343b70ef566              # double 3.1265939999999999
	.quad	0x3ffa7a57eaa2a0a9              # double 1.6548689999999999
	.quad	0x40213834f3fd933e              # double 8.6097789999999996
	.quad	0x4018e5a5332acfb7              # double 6.2242629999999997
	.quad	0x400bc60b2c83ec89              # double 3.4717009999999999
	.quad	0x4016234a44c7b02d              # double 5.5344629999999997
	.quad	0x400dfb79d909f1f1              # double 3.7477909999999999
	.quad	0x40139b899392189c              # double 4.9018920000000001
	.quad	0x4019c22e1ac57e24              # double 6.439629
	.quad	0x3f4b328b6d86ec18              # double 8.3E-4
	.quad	0x3ffbad98bf7f0670              # double 1.7298819999999999
	.quad	0x4020508e581cf788              # double 8.1573360000000008
	.quad	0x4020ad19dece5711              # double 8.3380880000000008
	.quad	0x4021fc484944ed70              # double 8.9927390000000003
	.quad	0x40238f78140dd3fe              # double 9.7802129999999998
	.quad	0x401eba1c68ec52a4              # double 7.6817489999999999
	.quad	0x4000e2877ee4e26d              # double 2.1106099999999999
	.quad	0x3fee78e1932d6ece              # double 0.95225599999999999
	.quad	0x3fce21f2990f301f              # double 0.23541100000000001
	.quad	0x40200c96cc5fbf83              # double 8.0245879999999996
	.quad	0x40163d72ffd1dcd7              # double 5.560009
	.quad	0x401dfdc93ea2d2fe              # double 7.4978379999999998
	.quad	0x40188ca600b02928              # double 6.1373519999999999
	.quad	0x401b5384ba0e8427              # double 6.8315609999999998
	.quad	0x40187302b40f66a5              # double 6.1123149999999997
	.quad	0x3ff590bfa0945f9e              # double 1.347839
	.quad	0x4014e5be5d9e40c8              # double 5.2243589999999998
	.quad	0x401cb8b75ea67e84              # double 7.1803869999999996
	.quad	0x400255c52e72da12              # double 2.2918799999999999
	.quad	0x401c8dc55000c954              # double 7.1384480000000003
	.quad	0x3fe56527a20578e6              # double 0.66859800000000003
	.quad	0x401be5ae5ffa3b9b              # double 6.9742980000000001
	.quad	0x40015d5f56a7ac82              # double 2.1705920000000001
	.quad	0x40229bdc8b86b160              # double 9.3044170000000008
	.quad	0x4014d17b5286b591              # double 5.2045719999999998
	.quad	0x401b57867f0aa21a              # double 6.8354739999999996
	.quad	0x40239d9ea57214f0              # double 9.8078509999999994
	.quad	0x401f343e5321e604              # double 7.8010190000000001
	.quad	0x3ff97267c6b8b695              # double 1.5904309999999999
	.quad	0x4015d215336deb96              # double 5.4551590000000001
	.quad	0x3fd3697f1f9acffa              # double 0.30331399999999997
	.quad	0x40159cac083126e9              # double 5.4029999999999996
	.quad	0x4007b9f90539fba4              # double 2.9658069999999999
	.quad	0x4017b22a6f3f52fc              # double 5.9239899999999999
	.quad	0x4014eded6ba8c587              # double 5.2323510000000004
	.quad	0x401b52452c59fb1e              # double 6.8303419999999999
	.quad	0x400e1a96d4c33b54              # double 3.7629830000000002
	.quad	0x40150f72b4528284              # double 5.2650860000000002
	.quad	0x401b2b228dc981bf              # double 6.7921240000000003
	.quad	0x4020f6df82b1f688              # double 8.4821740000000005
	.quad	0x401e9a2b5a20ddc6              # double 7.6505559999999999
	.quad	0x400a34801f75104d              # double 3.2756349999999999
	.quad	0x400141e364bec67a              # double 2.1571720000000001
	.quad	0x4012fababead4f59              # double 4.744853
	.quad	0x40117de8709741d1              # double 4.3729570000000004
	.quad	0x4007dff25e56cd6c              # double 2.9843489999999999
	.quad	0x401c5c2bd7f51efb              # double 7.0900109999999996
	.quad	0x3fe4f9d6f112fd33              # double 0.65549800000000003
	.quad	0x400459d3458cd20b              # double 2.54386
	.quad	0x401aa8fc0d2c386d              # double 6.6650239999999998
	.quad	0x3fe9b0c4588a04d1              # double 0.80282799999999999
	.quad	0x40196b8a19c9d5a2              # double 6.3550190000000004
	.quad	0x4015414ca925fe97              # double 5.3137689999999997
	.quad	0x4001057c914b167f              # double 2.1276790000000001
	.quad	0x3fd97daa4fca42af              # double 0.39829500000000001
	.quad	0x400799b56323bbc7              # double 2.950053
	.quad	0x40185924f227d029              # double 6.0870550000000003
	.quad	0x40122ef0281ba7fc              # double 4.5458379999999998
	.quad	0x401f023033a4723b              # double 7.7521370000000002
	.quad	0x40015096bb98c7e3              # double 2.1643500000000002
	.quad	0x401548e92d55a3a1              # double 5.3212020000000004
	.quad	0x4019cae46cfc829d              # double 6.448137
	.quad	0x40190b57c4e2f380              # double 6.2610770000000002
	.quad	0x402268f2e05ccc8a              # double 9.2049780000000005
	.quad	0x4020f8d045fe1112              # double 8.4859639999999992
	.quad	0x3fe7976ff3ade226              # double 0.737236
	.quad	0x40207b21e603d578              # double 8.2404930000000007
	.quad	0x40223faf42784a94              # double 9.1243839999999991
	.quad	0x401445692b3cc4ac              # double 5.0677839999999996
	.quad	0x4021287fcb923a2a              # double 8.5791000000000004
	.quad	0x4016e2396073de1e              # double 5.7209219999999998
	.quad	0x4020224638c97529              # double 8.0669419999999992
	.quad	0x400d3fbefd00713f              # double 3.656126
	.quad	0x3ffb5425f202107b              # double 1.7080439999999999
	.quad	0x4019198244e93e1d              # double 6.2749110000000003
	.quad	0x3fa4bfd2e9468017              # double 0.040526
	.quad	0x40224116ca46e08f              # double 9.1271269999999998
	.quad	0x40180777079e59f3              # double 6.0072900000000002
	.quad	0x40029fefbf401c50              # double 2.3280940000000001
	.quad	0x40221ede97d06bbe              # double 9.0602920000000005
	.quad	0x4001a05b39e279dd              # double 2.2032989999999999
	.quad	0x4019260780fdc161              # double 6.2871379999999997
	.quad	0x40146fed634549b6              # double 5.1093039999999998
	.quad	0x400c851116a8b8f1              # double 3.5649739999999999
	.quad	0x400ccb827fa1a0cf              # double 3.59937
	.quad	0x400a57e77d523b36              # double 3.2929219999999999
	.quad	0x4023c968f8e7ddca              # double 9.8933789999999995
	.quad	0x4021cc5f5ad96a6a              # double 8.899165
	.quad	0x4021c1294573a798              # double 8.8772680000000008
	.quad	0x400253397dd00f77              # double 2.2906369999999998
	.quad	0x40223be8bc169c24              # double 9.1170100000000005
	.quad	0x4012ca63b688bda9              # double 4.6976459999999998
	.quad	0x4011cefdc9c4da90              # double 4.45214
	.quad	0x401c2e9ff0cbaf96              # double 7.0455319999999997
	.quad	0x400f367f4dbdf8f4              # double 3.9016099999999998
	.quad	0x400dc849cb252ce0              # double 3.7227969999999999
	.quad	0x4022fbd188f42fe8              # double 9.4918329999999997
	.quad	0x4020e5aee631f8a1              # double 8.4486000000000008
	.quad	0x4022b7cc5b8dc550              # double 9.358981
	.quad	0x4017eb67c286f8ad              # double 5.9798879999999999
	.quad	0x3ffcf68f08461f9f              # double 1.810195
	.quad	0x40196f36ac647779              # double 6.3586070000000001
	.quad	0x401904801f75104d              # double 6.2543949999999997
	.quad	0x401600aa21a719b5              # double 5.5006490000000001
	.quad	0x402078bbb1f255f3              # double 8.2358069999999994
	.quad	0x4022c61cbccf28c8              # double 9.3869380000000006
	.quad	0x3fe9deaee2003ab8              # double 0.80843299999999996
	.quad	0x401df0a3d70a3d71              # double 7.4850000000000003
	.quad	0x3fef7498c3b0c459              # double 0.98298300000000005
	.quad	0x4021d17dae81882b              # double 8.9091620000000002
	.quad	0x4014a69ca9ef5233              # double 5.1627070000000002
	.quad	0x3ffa8c1333b96af0              # double 1.659198
	.quad	0x401fa40420f6f08d              # double 7.9101720000000002
	.quad	0x400f4a45d41fa765              # double 3.9112659999999999
	.quad	0x401b482949a56580              # double 6.8204700000000003
	.quad	0x401f2dd7a99fa11b              # double 7.7947680000000003
	.quad	0x4006a84944ed6fdb              # double 2.8321710000000002
	.quad	0x401614f00ef1348b              # double 5.5204469999999999
	.quad	0x3fe3e26f60e0eb68              # double 0.62139100000000003
	.quad	0x4019342b734b5137              # double 6.3009469999999999
	.quad	0x3ffde6fc58ab92c0              # double 1.8688929999999999
	.quad	0x40239ec3fc43b2dd              # double 9.8100889999999996
	.quad	0x401fef7b9e060fe4              # double 7.9838699999999996
	.quad	0x40041f8e3ac0c62e              # double 2.5154079999999999
	.quad	0x4000486bdf4c2b52              # double 2.0353620000000001
	.quad	0x4022e489d27c3937              # double 9.4463640000000008
	.quad	0x401efcb20fb224ab              # double 7.7467730000000001
	.quad	0x401df90d9d7774ac              # double 7.4932160000000003
	.quad	0x4022f3242070b8d0              # double 9.4748850000000004
	.quad	0x3febda6c5d206c87              # double 0.87041299999999999
	.quad	0x40234fed634549b6              # double 9.6561079999999997
	.quad	0x40032e5e679463d0              # double 2.3976410000000001
	.quad	0x401f79b30728e92d              # double 7.8688469999999997
	.quad	0x40136d72367e414e              # double 4.8568809999999996
	.quad	0x4017749ba5e353f8              # double 5.8638750000000002
	.quad	0x4007dd4bf0995aaf              # double 2.9830549999999998
	.quad	0x4009663a5c1c6089              # double 3.1749160000000001
	.quad	0x400354024b33daf9              # double 2.4160200000000001
	.quad	0x401648fffbce4218              # double 5.5712890000000002
	.quad	0x4017c35eb7457c0b              # double 5.9407909999999999
	.quad	0x3ff693ad5bee3d60              # double 1.411054
	.quad	0x401036fb4c3c18b5              # double 4.053693
	.quad	0x401b81b866e43aa8              # double 6.8766800000000003
	.quad	0x4016886b15f88fc9              # double 5.6332209999999998
	.quad	0x400516fe2e6ea854              # double 2.6362269999999999
	.quad	0x3ff8e44e93e1c9b4              # double 1.555739
	.quad	0x3ff21905c0336156              # double 1.1311089999999999
	.quad	0x3fe45c810a569b17              # double 0.63629199999999997
	.quad	0x400575ce9e5e2479              # double 2.6825230000000002
	.quad	0x40138ed6fda836eb              # double 4.8894919999999997
	.quad	0x402268205ff1d81f              # double 9.2033719999999999
	.quad	0x400e146e4c0df58c              # double 3.759976
	.quad	0x4014fc7f77af6406              # double 5.2465799999999998
	.quad	0x40231ef62f9ca5be              # double 9.5604720000000007
	.quad	0x4002b882adc4c9c9              # double 2.340093
	.quad	0x4010fbc83a96d4c3              # double 4.2458809999999998
	.quad	0x4018e802c0a4a05e              # double 6.2265730000000001
	.quad	0x400aa8d7e02645e5              # double 3.332443
	.quad	0x401dc894812be48a              # double 7.4458789999999997
	.quad	0x40132357a355043e              # double 4.7845139999999997
	.quad	0x400631a2a4db163c              # double 2.7742360000000001
	.quad	0x401c9f3f0fe047d4              # double 7.1555140000000002
	.quad	0x3ff563c31df761cc              # double 1.336856
	.quad	0x400b3d2178f68be3              # double 3.404849
	.quad	0x3fd2bd44998d0460              # double 0.29280200000000001
	.quad	0x40159d666a98244f              # double 5.4037110000000004
	.quad	0x4011fcc74b838c11              # double 4.4968539999999999
	.quad	0x401c64080f98fa37              # double 7.0976869999999996
	.quad	0x4008361804d98394              # double 3.0264129999999998
	.quad	0x3fe1d7c914b167ec              # double 0.55759099999999995
	.quad	0x400e846d82ba5a04              # double 3.8146620000000002
	.quad	0x4016f9906cca2db6              # double 5.7437149999999999
	.quad	0x401a55fc7e6b3fea              # double 6.583971
	.quad	0x401cffcce1c58256              # double 7.2498050000000003
	.quad	0x4021950df15a4acf              # double 8.7911219999999997
	.quad	0x40222e1cbccf28c8              # double 9.0900630000000007
	.quad	0x3f77481b21c475e6              # double 0.0056839999999999998
	.quad	0x3fe25e3fbbd7b203              # double 0.57400499999999999
	.quad	0x3fd0fd694ccab3ee              # double 0.26546700000000001
	.quad	0x40068a0dbad3a605              # double 2.8174090000000001
	.quad	0x3ff35ad42c3c9eed              # double 1.2096750000000001
	.quad	0x401105fb2edfe75c              # double 4.2558410000000002
	.quad	0x401835d18090b418              # double 6.0525570000000002
	.quad	0x40231ad3c792d128              # double 9.5523969999999991
	.quad	0x402325dd4c76d118              # double 9.5739540000000005
	.quad	0x402162497fa5d28d              # double 8.691967
	.quad	0x401435ab7dc7abfc              # double 5.0524120000000003
	.quad	0x3ff0b27bb2fec56d              # double 1.0435749999999999
	.quad	0x4011421f2990f302              # double 4.3145720000000001
	.quad	0x402246defc7a3982              # double 9.13842
	.quad	0x4003591cd1c7de51              # double 2.4185120000000002
	.quad	0x4010466e008e9b39              # double 4.0687790000000001
	.quad	0x4022af2e05ccc89b              # double 9.3421479999999999
	.quad	0x401189d1b2e59afa              # double 4.3845890000000001
	.quad	0x401d049be8ff327b              # double 7.2545010000000003
	.quad	0x3fdc8f92af9a8cdf              # double 0.44626300000000002
	.quad	0x40028eae9ee45c36              # double 2.3196690000000002
	.quad	0x4023753f9e7b80aa              # double 9.7290010000000002
	.quad	0x4001e11b1d92b7fe              # double 2.234915
	.quad	0x3ff79c853c148345              # double 1.4757130000000001
	.quad	0x3ff9cc282c6ef3d4              # double 1.6123430000000001
	.quad	0x400136f8f041461b              # double 2.1518419999999998
	.quad	0x401d90b8066c2acc              # double 7.3913270000000004
	.quad	0x401f0fbb517a4617              # double 7.7653629999999997
	.quad	0x40170c26138fffbd              # double 5.7618640000000001
	.quad	0x401ad474d9c6b053              # double 6.7074769999999999
	.quad	0x4001e1d3aa369fcf              # double 2.2352669999999999
	.quad	0x400daad14a0a0f4d              # double 3.7084069999999998
	.quad	0x40112dc11e42e126              # double 4.2946819999999999
	.quad	0x3ffcfe1437c5692b              # double 1.8120309999999999
	.quad	0x400c5625a682b628              # double 3.5420639999999999
	.quad	0x401473671ac14c66              # double 5.112698
	.quad	0x40228aa68f4b61fe              # double 9.2708019999999998
	.quad	0x401a945b291b823d              # double 6.6448790000000004
	.quad	0x4022c4e874c8ffb9              # double 9.3845860000000005
	.quad	0x402271c1b54195cd              # double 9.2221810000000009
	.quad	0x4011c07e5a78f25a              # double 4.4379819999999999
	.quad	0x40191e3e6c4c5975              # double 6.2795350000000001
	.quad	0x3ff28053e2d6238e              # double 1.1563300000000001
	.quad	0x401e11cde5d18091              # double 7.5173870000000002
	.quad	0x400d870c996b7671              # double 3.6909420000000002
	.quad	0x400833affb04ee7c              # double 3.0252379999999999
	.quad	0x401c2c443914f484              # double 7.0432290000000002
	.quad	0x4015a1c0ca600b03              # double 5.4079620000000004
	.quad	0x4022b0e3ac0c62e5              # double 9.3454870000000003
	.quad	0x401e66dbd72bcb60              # double 7.6004480000000001
	.quad	0x401a771044f1a198              # double 6.6162729999999996
	.quad	0x401ab6be37de939f              # double 6.6784600000000003
	.quad	0x401e39d7fd82773e              # double 7.5564879999999999
	.quad	0x4013662888b545c8              # double 4.8497640000000004
	.quad	0x40203ec892ab68cf              # double 8.1226240000000001
	.quad	0x40180e518f3eccc4              # double 6.0139829999999996
	.quad	0x3ffd080e8c8abd5e              # double 1.8144670000000001
	.quad	0x400ead49949e8816              # double 3.834613
	.quad	0x3ff615410f94c87a              # double 1.3801890000000001
	.quad	0x4007612839042d8c              # double 2.9224399999999999
	.quad	0x3ff8481f53825e14              # double 1.5176080000000001
	.quad	0x4018ab5a20ddc619              # double 6.1673359999999997
	.quad	0x4002212a51e321a3              # double 2.266194
	.quad	0x40204e40420f6f09              # double 8.1528340000000004
	.quad	0x400bd1f255f3519c              # double 3.4775130000000001
	.quad	0x401e3ce7cd035372              # double 7.5594780000000004
	.quad	0x400a2490a350d280              # double 3.2678539999999998
	.quad	0x4009e3c536d655e3              # double 3.2362160000000002
	.quad	0x401f585a0be51090              # double 7.8362809999999996
	.quad	0x3fe4886bdf4c2b52              # double 0.64165300000000003
	.quad	0x40154cb0c026cc1d              # double 5.3248930000000003
	.quad	0x401b8f993d5347a6              # double 6.8902330000000003
	.quad	0x3fdab11c6d1e108c              # double 0.41705999999999999
	.quad	0x3fc79b8887229e90              # double 0.18443399999999999
	.quad	0x4012cdd8b60f1b26              # double 4.701022
	.quad	0x401a6a1ec4e7253e              # double 6.6036330000000003
	.quad	0x3ff8cb9346994185              # double 1.549701
	.quad	0x4006d4373f316e37              # double 2.853621
	.quad	0x4017d6b54e2b063e              # double 5.959676
	.quad	0x40208cad9ad85dfb              # double 8.2747620000000008
	.quad	0x4023b91f70de8f6d              # double 9.8615680000000001
	.quad	0x401954d4cb9ecf64              # double 6.3328430000000004
	.quad	0x401dd538ef34d6a1              # double 7.4582249999999997
	.quad	0x4014cb0856e696a2              # double 5.1982739999999996
	.quad	0x400d98ad25679896              # double 3.6995490000000002
	.quad	0x400444d8fd5cb791              # double 2.533617
	.quad	0x40226e9ea1405708              # double 9.2160539999999997
	.quad	0x3fdd28e0c9d9d346              # double 0.45562000000000002
	.quad	0x40141e07e5a78f26              # double 5.0293270000000003
	.quad	0x401a5263d816aceb              # double 6.5804590000000003
	.quad	0x4015794d50ebaade              # double 5.3684589999999996
	.quad	0x40203cdfefbf401c              # double 8.1188959999999994
	.quad	0x3ffa9aeb3dd11be7              # double 1.662822
	.quad	0x3fdb32ce89656ef0              # double 0.42497600000000002
	.quad	0x40005c0b9991361e              # double 2.0449440000000001
	.quad	0x4022d31e3a7daa50              # double 9.4123400000000004
	.quad	0x400b2e5710880d80              # double 3.397627
	.quad	0x3fedf28c79f66623              # double 0.93585799999999997
	.quad	0x4016c65668c26139              # double 5.693689
	.quad	0x402222f2d7f950b9              # double 9.0682589999999994
	.quad	0x402367b0b3919264              # double 9.7025199999999998
	.quad	0x402033a0c6b484d7              # double 8.1008359999999993
	.quad	0x4012e544bb1af3a1              # double 4.7238949999999997
	.quad	0x40190ca793576039              # double 6.2623579999999999
	.quad	0x4022e7e047d3d428              # double 9.4528829999999999
	.quad	0x400af0f062d40aaf              # double 3.3676460000000001
	.quad	0x3fcfe2bcf91a32b1              # double 0.249107
	.quad	0x401d775ee99a62ed              # double 7.3665729999999998
	.quad	0x3ffdfbbb62413db8              # double 1.873958
	.quad	0x3fdfd5171e29b6b3              # double 0.49738100000000002
	.quad	0x4021e8d413122b7c              # double 8.9547430000000005
	.quad	0x4020e7c5479d4d83              # double 8.4526769999999996
	.quad	0x400d25e679463cfb              # double 3.6435059999999999
	.quad	0x400d5c5931ca7d67              # double 3.6700919999999999
	.quad	0x40205434c1a8ac5c              # double 8.1644649999999998
	.quad	0x401e3a57214f0521              # double 7.5569730000000001
	.quad	0x400dfd1c3ac929aa              # double 3.7485889999999999
	.quad	0x40128e22e5de15ca              # double 4.6388049999999996
	.quad	0x400496177ea1c68f              # double 2.5732870000000001
	.quad	0x401a307182235b4f              # double 6.5473080000000001
	.quad	0x400f038e29f9ce8e              # double 3.8767360000000002
	.quad	0x400303547e06961c              # double 2.3766259999999999
	.quad	0x400ffb0ff10ecb75              # double 3.9975890000000001
	.quad	0x401d0a75cd0bb6ed              # double 7.2602149999999996
	.quad	0x3ffb2de225fa658c              # double 1.6987019999999999
	.quad	0x40143f1737542a24              # double 5.0616120000000002
	.quad	0x401036440f238972              # double 4.052994
	.quad	0x401be24e59296702              # double 6.9710020000000004
	.quad	0x40212f18c9fb6135              # double 8.5919860000000003
	.quad	0x4015077036c9c0a9              # double 5.2572640000000002
	.quad	0x40199ee49f51697f              # double 6.4051689999999999
	.quad	0x4008597d49d7ba67              # double 3.0436960000000002
	.quad	0x400e60cf9e3864cb              # double 3.7972709999999998
	.quad	0x401aa5a469d7342f              # double 6.6617600000000001
	.quad	0x4009767e414e7ee9              # double 3.182858
	.quad	0x40232803eea209ab              # double 9.5781550000000006
	.quad	0x401da3f39d1b2e5a              # double 7.4101090000000003
	.quad	0x402375dd8f92af9b              # double 9.7302060000000007
	.quad	0x4020481adea89763              # double 8.1408299999999993
	.quad	0x401aecafb3b75211              # double 6.7311389999999998
	.quad	0x4022b56f32bdc26e              # double 9.3543640000000003
	.quad	0x401aa851a8694035              # double 6.6643739999999996
	.quad	0x401b59a91105e1c1              # double 6.8375589999999997
	.quad	0x4022748c2e770bd0              # double 9.2276319999999998
	.quad	0x40199b5bb384fd2a              # double 6.4017169999999997
	.quad	0x3fd86451b93037d6              # double 0.38112299999999999
	.quad	0x4019c647fdc5931d              # double 6.4436340000000003
	.quad	0x4012da6f3f52fc26              # double 4.7133149999999997
	.quad	0x4022a3cbe61cffeb              # double 9.3199149999999999
	.quad	0x3ff68364388ebcc7              # double 1.4070780000000001
	.quad	0x400fcbe596c82e02              # double 3.9745590000000002
	.quad	0x3fec9652bd3c3611              # double 0.89334999999999998
	.quad	0x400d8323358f2e06              # double 3.6890320000000001
	.quad	0x401d607852f7f499              # double 7.3442090000000002
	.quad	0x40232c47e49b1fac              # double 9.5864860000000007
	.quad	0x40234f4fd6d7e88a              # double 9.6549060000000004
	.quad	0x3ffd376d5497310a              # double 1.8260320000000001
	.quad	0x3fe7c6da4484944f              # double 0.74302400000000002
	.quad	0x401b21a1db877ab3              # double 6.7828439999999999
	.quad	0x3ffcbae147ae147b              # double 1.795625
	.quad	0x3ff8ab441bb8c32b              # double 1.5418130000000001
	.quad	0x4022edaf07bfe7e2              # double 9.464226
	.quad	0x400f32da98676a72              # double 3.8998309999999998
	.quad	0x4001cc27a63736ce              # double 2.224685
	.quad	0x402003723ee1bd1f              # double 8.0067310000000003
	.quad	0x401ad3b5bf6a0dbb              # double 6.7067480000000002
	.quad	0x40213e66234a87e4              # double 8.6218730000000007
	.quad	0x4011cb5e529bae47              # double 4.4486020000000002
	.quad	0x401bbfc86cebbba5              # double 6.9372879999999997
	.quad	0x4005e6ca89fc6da4              # double 2.7376909999999999
	.quad	0x3fcfcd7060bb2bbb              # double 0.24845700000000001
	.quad	0x3fe702c0a4a05dd9              # double 0.719086
	.quad	0x4019d27dcbddb984              # double 6.4555579999999999
	.quad	0x401d3a7fc32ebe59              # double 7.3071279999999996
	.quad	0x3fef0292817763e5              # double 0.96906400000000003
	.quad	0x400d9f7ced916873              # double 3.7028750000000001
	.quad	0x40181c636b096356              # double 6.0277229999999999
	.quad	0x4015913660e51d26              # double 5.3918090000000003
	.quad	0x4021011e215336df              # double 8.5021830000000005
	.quad	0x4022100192a73711              # double 9.0312619999999999
	.quad	0x40187b4959e62563              # double 6.1203969999999996
	.quad	0x401b716b11c6d1e1              # double 6.86076
	.quad	0x3fecb3a4723aafff              # double 0.89692899999999998
	.quad	0x4021f44b6e935b92              # double 8.9771380000000001
	.quad	0x4023b42d8c2a454e              # double 9.8519100000000002
	.quad	0x40143a012599ed7c              # double 5.0566449999999996
	.quad	0x401beac4b4d056c5              # double 6.979266
	.quad	0x400a2db8348f53c5              # double 3.2723239999999998
	.quad	0x400f5003eea209ab              # double 3.9140700000000002
	.quad	0x40197855da272863              # double 6.367515
	.quad	0x4001376683c297c0              # double 2.1520510000000002
	.quad	0x40074e054690de09              # double 2.9130959999999999
	.quad	0x3ff7a835dedf1e08              # double 1.478567
	.quad	0x400bc787485e3da3              # double 3.472426
	.quad	0x4000ef8d716d2aa6              # double 2.1169690000000001
	.quad	0x401917485e3da2f9              # double 6.2727370000000002
	.quad	0x3fd23d6c72192210              # double 0.284999
	.quad	0x400a49cf56eac860              # double 3.2860399999999998
	.quad	0x3ff40a25529fe005              # double 1.2524770000000001
	.quad	0x4015f678c0053e2d              # double 5.4906949999999997
	.quad	0x401c1056c508b32d              # double 7.0159560000000001
	.quad	0x4010359e6256366d              # double 4.0523619999999996
	.quad	0x4020232c625e99e9              # double 8.0686979999999995
	.quad	0x4007cfd3b29a1ba0              # double 2.9764780000000002
	.quad	0x4016adcf4623d0c0              # double 5.6697360000000003
	.quad	0x3fe434a01abd1aa8              # double 0.63142399999999999
	.quad	0x402326cd8dbcec85              # double 9.575787
	.quad	0x4020c59a0f0a5eff              # double 8.3859410000000008
	.quad	0x4017148e8a71de6a              # double 5.7700750000000003
	.quad	0x4009f74927913e81              # double 3.2457449999999999
	.quad	0x40228e81cb46bacf              # double 9.2783339999999992
	.quad	0x3fe2c117f84449dc              # double 0.58607100000000001
	.quad	0x400ed90d173fb7a6              # double 3.855982
	.quad	0x401652f2734f82f5              # double 5.5810029999999999
	.quad	0x4008088e79aae6c9              # double 3.004178
	.quad	0x400fd9fdbd2fa0d7              # double 3.9814409999999998
	.quad	0x4019bc01e68a0d35              # double 6.4336010000000003
	.quad	0x40038aa6d2674081              # double 2.442701
	.quad	0x401bd2a9d627bf62              # double 6.9557260000000003
	.quad	0x3fdcaf0bf1a5ca2a              # double 0.44818400000000003
	.quad	0x4011c4b7b28954a8              # double 4.442107
	.quad	0x401c29795b35b0bc              # double 7.040502
	.quad	0x400e6c9ea9a3d2d8              # double 3.8030369999999998
	.quad	0x401d686162f166e0              # double 7.351934
	.quad	0x4013525742dcf462              # double 4.8304109999999998
	.quad	0x40112753e707e176              # double 4.2884060000000002
	.quad	0x401b292fb19e731d              # double 6.7902209999999998
	.quad	0x4006f041461b6d44              # double 2.8673120000000001
	.quad	0x401796d2aa5c5f7c              # double 5.8972879999999996
	.quad	0x3ff9899e0e73604a              # double 1.596098
	.quad	0x40111e28aa433509              # double 4.279452
	.quad	0x4023a008a697aede              # double 9.8125660000000003
	.quad	0x402132ca79357604              # double 8.5992010000000007
	.quad	0x40188d1c3ac929aa              # double 6.1378029999999999
	.quad	0x40180efd86a8fc0d              # double 6.0146389999999998
	.quad	0x401ca82ecaeea63b              # double 7.1642409999999996
	.quad	0x4010359791819d24              # double 4.0523360000000004
	.quad	0x4011a3bc903ea705              # double 4.4098990000000002
	.quad	0x3fe73608d08919f0              # double 0.72534600000000005
	.quad	0x400d1c4c165907d9              # double 3.638817
	.quad	0x400d4147ae147ae1              # double 3.6568749999999999
	.quad	0x40078bf4cb1897a6              # double 2.9433379999999998
	.quad	0x401644a05dd8f92b              # double 5.567018
	.quad	0x4010f02539756c94              # double 4.2345170000000003
	.quad	0x3ff0f9e279dd3bb0              # double 1.061007
	.quad	0x4015d23e18698351              # double 5.4553149999999997
	.quad	0x400dfbe6601bc98a              # double 3.7479979999999999
	.quad	0x40195dfefbf401c5              # double 6.341793
	.quad	0x4014d4406c00da1b              # double 5.2072770000000004
	.quad	0x40204a456f75d9a1              # double 8.1450610000000001
	.quad	0x40219ddb1209edc0              # double 8.8083120000000008
	.quad	0x4012890364388ebd              # double 4.6338020000000002
	.quad	0x40187c1b97353b4b              # double 6.1211989999999998
	.quad	0x401666d00b45ae60              # double 5.600403
	.quad	0x4020ca94573a7979              # double 8.3956630000000008
	.quad	0x400b1674d1633483              # double 3.3859650000000001
	.quad	0x40219afd976ff3ae              # double 8.8027160000000002
	.quad	0x40237bd944aa53fc              # double 9.7418919999999999
	.quad	0x401ac06034f3fd93              # double 6.6878669999999998
	.quad	0x4005ee3ac0c62e4d              # double 2.741323
	.quad	0x400c6830a0b1bbcf              # double 3.5508739999999999
	.quad	0x4012f7000431bde8              # double 4.7412109999999998
	.quad	0x3ff65ee568a50508              # double 1.3981680000000001
	.quad	0x4023433e78e1932d              # double 9.6313359999999992
	.quad	0x402034ee17a02fb6              # double 8.1033790000000003
	.quad	0x401210bdcad14a0a              # double 4.5163489999999999
	.quad	0x4019a7021d10b1ff              # double 6.4130940000000001
	.quad	0x40190790b8498809              # double 6.2573879999999997
	.quad	0x4008e6dacabc5155              # double 3.1127220000000002
	.quad	0x4023d2372606fac6              # double 9.910577
	.quad	0x3ff7a8a936c58eeb              # double 1.478677
	.quad	0x401b4b7132724313              # double 6.8236739999999996
	.quad	0x4020d39c7368ad69              # double 8.4133030000000009
	.quad	0x40199a58b3f63c32              # double 6.4007290000000001
	.quad	0x3fd0d25edd052935              # double 0.26284000000000002
	.quad	0x400ae5aab4741073              # double 3.362142
	.quad	0x3ff5314ec204f2ae              # double 1.324538
	.quad	0x4005a775fb2edfe7              # double 2.7067679999999998
	.quad	0x402060ae9680e065              # double 8.1888319999999997
	.quad	0x400addc69f8c21e2              # double 3.3582890000000001
	.quad	0x3fb21c9b41398634              # double 0.070749000000000006
	.quad	0x40088a2ca9ac3654              # double 3.0674679999999999
	.quad	0x4006db4e54f7a919              # double 2.8570829999999998
	.quad	0x401d4ad31fcd24e1              # double 7.3230709999999997
	.quad	0x40096156e264e486              # double 3.1725289999999999
	.quad	0x40129a88ace24bba              # double 4.6509119999999999
	.quad	0x402137f4fd6d7e89              # double 8.6092910000000007
	.quad	0x40104845996744b3              # double 4.0705780000000003
	.quad	0x4007571b0468448d              # double 2.917532
	.quad	0x3ff5b0af5fd47bee              # double 1.3556360000000001
	.quad	0x40041e5a78f25a25              # double 2.514821
	.quad	0x4007d6d22424a277              # double 2.9798930000000001
	.quad	0x40222107746887a9              # double 9.0645100000000003
	.quad	0x3fe9579f23465626              # double 0.79194600000000004
	.quad	0x3fe8f8ca8198f1d4              # double 0.78037
	.quad	0x4003f6deb95e5aff              # double 2.4955419999999999
	.quad	0x40024acc92146a1a              # double 2.2865229999999999
	.quad	0x4008403dddb1209f              # double 3.0313680000000001
	.quad	0x401fe4906034f3fe              # double 7.9732070000000004
	.quad	0x400a6d4f5903a754              # double 3.3033739999999998
	.quad	0x401c6ee4e26d4802              # double 7.108295
	.quad	0x40137934acaff6d3              # double 4.8683649999999998
	.quad	0x401cf0bd44998d04              # double 7.2350969999999997
	.quad	0x401c6732df505d10              # double 7.1007800000000003
	.quad	0x400ecaf6837f7be1              # double 3.8491029999999999
	.quad	0x3fff67ddca4b124d              # double 1.962858
	.quad	0x40171c21187e7c07              # double 5.7774700000000001
	.quad	0x3fc57a80cf9e3865              # double 0.16780100000000001
	.quad	0x3fe37c914b167ec8              # double 0.60895600000000005
	.quad	0x400e4b8066c2acb8              # double 3.7868659999999998
	.quad	0x4009ea7935760392              # double 3.2394889999999998
	.quad	0x4009c7d1351159c5              # double 3.2225670000000002
	.quad	0x3fe881a36e2eb1c4              # double 0.76582499999999997
	.quad	0x3ff572f9873ffac2              # double 1.34057
	.quad	0x40184007570c5650              # double 6.0625280000000004
	.quad	0x4022c866a11ec919              # double 9.3914080000000002
	.quad	0x400e6d56b00ffda4              # double 3.803388
	.quad	0x40235fef39085f4a              # double 9.6873719999999999
	.quad	0x3fdecdfefbf401c5              # double 0.481323
	.quad	0x3ffedc4c9c90c4df              # double 1.9287840000000001
	.quad	0x4012ce9a2c669058              # double 4.7017600000000002
	.quad	0x3ff4a35a426bb55b              # double 1.2898810000000001
	.quad	0x4000cf3cb3e5753a              # double 2.1011899999999999
	.quad	0x3ff15a005c4651f4              # double 1.084473
	.quad	0x4021dfc2eba27aea              # double 8.9370340000000006
	.quad	0x3fd96640a6b93ccd              # double 0.396866
	.quad	0x3ffebd34df04ddb5              # double 1.9211929999999999
	.quad	0x40153366516db0de              # double 5.3001950000000004
	.quad	0x3ff65c8754f3775c              # double 1.3975900000000001
	.quad	0x400f927aa68f4b62              # double 3.946523
	.quad	0x3fe88d6f544bb1af              # double 0.76726499999999997
	.quad	0x40007f1f9acffa7f              # double 2.0620720000000001
	.quad	0x401eeca57a786c22              # double 7.7310999999999996
	.quad	0x40219027b6fe2e6f              # double 8.7815530000000006
	.quad	0x40200ef36ef80560              # double 8.0292010000000005
	.quad	0x402006cb966be7b0              # double 8.0132720000000006
	.quad	0x3ff314d4024b33db              # double 1.192585
	.quad	0x4003109203a322af              # double 2.3830909999999998
	.quad	0x4021f55de58e64b2              # double 8.9792319999999997
	.quad	0x4014e89d27c39368              # double 5.2271619999999999
	.quad	0x40056e66cb10342b              # double 2.6789070000000001
	.quad	0x40132f5e84f09529              # double 4.7962590000000001
	.quad	0x4019ac258d5842b7              # double 6.4181119999999998
	.quad	0x4005ec6d612c6ac2              # double 2.740443
	.quad	0x3fdd1ac14c660a20              # double 0.454758
	.quad	0x40228ef88b977857              # double 9.2792399999999997
	.quad	0x3ff7184901d19158              # double 1.4434290000000001
	.quad	0x400921bc98a222d5              # double 3.141473
	.quad	0x400849c99285a922              # double 3.0360290000000001
	.quad	0x3fff234549b62c77              # double 1.9461109999999999
	.quad	0x3fe796d6dc1a47aa              # double 0.73716300000000001
	.quad	0x40098323bbc6eb0b              # double 3.1890329999999998
	.quad	0x4006e1700cd85597              # double 2.860077
	.quad	0x400a80ee06d93815              # double 3.312954
	.quad	0x4010d459103c8e26              # double 4.2073710000000002
	.quad	0x3fe824894c447c31              # double 0.75446000000000002
	.quad	0x400e856473471f79              # double 3.8151329999999999
	.quad	0x400b789df1172ef1              # double 3.4338950000000001
	.quad	0x401006bacf7446fa              # double 4.0065720000000002
	.quad	0x4003f4256bca5376              # double 2.4942120000000001
	.quad	0x40094ea4228997c4              # double 3.1633990000000001
	.quad	0x401a8bfec13b9f12              # double 6.6367139999999996
	.quad	0x4009321b3aeee957              # double 3.1494659999999999
	.quad	0x402001fec99f1ae3              # double 8.0038970000000003
	.quad	0x402033d9ec700043              # double 8.1012719999999998
	.quad	0x400c6a98244e93e2              # double 3.5520480000000001
	.quad	0x40230c1d29dc725c              # double 9.5236599999999995
	.quad	0x400321a8262456f7              # double 2.3914339999999998
	.quad	0x401d1eb463497b74              # double 7.2799849999999999
	.quad	0x402228767d34df05              # double 9.0790290000000002
	.quad	0x3fe34927913e8145              # double 0.60267999999999999
	.quad	0x40226f71eafee6fb              # double 9.2176659999999995
	.quad	0x401394c37e6f71a8              # double 4.8952770000000001
	.quad	0x4022f6612839042e              # double 9.4812100000000008
	.quad	0x401cca4b5568e821              # double 7.1975530000000001
	.quad	0x4013e0e4da09cc32              # double 4.9696230000000003
	.quad	0x40226467dfe32a06              # double 9.1961049999999993
	.quad	0x400c1209edbf8b9c              # double 3.5088080000000001
	.quad	0x401bd0bed740c415              # double 6.9538529999999996
	.quad	0x400887ded6ba8c58              # double 3.0663429999999998
	.quad	0x400c9a871a3b14a9              # double 3.575453
	.quad	0x400d2fadf2ecf206              # double 3.6482809999999999
	.quad	0x400180d5629d840a              # double 2.187907
	.quad	0x4023895f02c4d65e              # double 9.7683029999999995
	.quad	0x400dbcb46bacf744              # double 3.7171409999999998
	.quad	0x401f77b7c7820a31              # double 7.8669120000000001
	.quad	0x401523e186983516              # double 5.2850400000000004
	.quad	0x40180536501e2585              # double 6.00509
	.quad	0x400c20218def416c              # double 3.5156890000000001
	.quad	0x4012caa0cae642c0              # double 4.6978790000000004
	.quad	0x3fefa5742dcf4624              # double 0.98894700000000002
	.quad	0x4006a7442c7fbacb              # double 2.8316729999999999
	.quad	0x40137d651b0ccbc0              # double 4.8724559999999997
	.quad	0x4001364b662fdfc2              # double 2.1515110000000002
	.quad	0x4019406fef7c243e              # double 6.3129270000000002
	.quad	0x401877b6bb129025              # double 6.1169079999999996
	.quad	0x4012b81cf7878b7a              # double 4.6797979999999999
	.quad	0x400e6ee7c49fd7a1              # double 3.8041529999999999
	.quad	0x40022f81e8a2ec29              # double 2.2731970000000001
	.quad	0x402356a6a012599f              # double 9.6692400000000002
	.quad	0x402200e15011904b              # double 9.0017189999999996
	.quad	0x400724b7f5a5332b              # double 2.8929290000000001
	.quad	0x4012d3660e51d25b              # double 4.7064440000000003
	.quad	0x4018e3f811f4f50a              # double 6.222626
	.quad	0x40224dfa871a3b15              # double 9.1523020000000006
	.quad	0x401eade2ac322292              # double 7.66981
	.quad	0x4021421d53cddd6e              # double 8.62913
	.quad	0x4023346de76427c8              # double 9.6024010000000004
	.quad	0x4011887e7c06e19c              # double 4.3832950000000004
	.quad	0x40234fa4c61d8623              # double 9.6555540000000004
	.quad	0x4014a0a244630660              # double 5.1568690000000004
	.quad	0x4013b768dfbd6a59              # double 4.9291109999999998
	.quad	0x40121feef5ec80c7              # double 4.5311849999999998
	.quad	0x3ff56ba27ae9ab2a              # double 1.338778
	.quad	0x3ff1798c7e28240b              # double 1.0921749999999999
	.quad	0x3fb4522ea0fd3b2a              # double 0.079379000000000005
	.quad	0x4018e07d912556d2              # double 6.2192290000000003
	.quad	0x3fdb1f687b139c95              # double 0.423792
	.quad	0x4007a0fecdd0d8cb              # double 2.953611
	.quad	0x3fd08ab92c061848              # double 0.258467
	.quad	0x40190244a6223e18              # double 6.2522149999999996
	.quad	0x3fd1025bfad29995              # double 0.26576899999999998
	.quad	0x3fdd7b9e060fe47a              # double 0.46067000000000002
	.quad	0x4019f74d1633482c              # double 6.4915050000000001
	.quad	0x4003a00f345069a5              # double 2.4531540000000001
	.quad	0x4020f0370cdc8755              # double 8.4691700000000001
	.quad	0x3fd4f69ca9ef5233              # double 0.32755200000000001
	.quad	0x3ff0ebd09e12a51e              # double 1.057572
	.quad	0x400bbebd09e12a52              # double 3.4681340000000001
	.quad	0x4019e3c5bd0e12e8              # double 6.4724339999999998
	.quad	0x4015905319828805              # double 5.3909419999999999
	.quad	0x3ffa03cafb3b7521              # double 1.625926
	.quad	0x402225b6805a2d73              # double 9.073658
	.quad	0x40237b92189bd838              # double 9.7413489999999995
	.quad	0x401b070c1333b96b              # double 6.7568820000000001
	.quad	0x40141461309c7ffe              # double 5.0199020000000001
	.quad	0x3ffeab2d0a244630              # double 1.9167909999999999
	.quad	0x4020526fe718a86d              # double 8.1610099999999992
	.quad	0x40095a836eb4e981              # double 3.1691959999999999
	.quad	0x40116c0a8d21bc12              # double 4.3555089999999996
	.quad	0x3ff3c256bca5375d              # double 1.2349460000000001
	.quad	0x401e7ec3547e0696              # double 7.6237919999999999
	.quad	0x402268f29d40ee07              # double 9.2049760000000003
	.quad	0x401c644f5d35653d              # double 7.0979590000000004
	.quad	0x4018e4b167ec7864              # double 6.2233330000000002
	.quad	0x3ff2ad85dfa871a4              # double 1.1673640000000001
	.quad	0x4001428240b78034              # double 2.1574749999999998
	.quad	0x4007456473471f79              # double 2.9088829999999999
	.quad	0x402333b29a1b9f99              # double 9.6009720000000005
	.quad	0x3fe7573eab367a10              # double 0.72940000000000005
	.quad	0x4006f0df9bdc69f9              # double 2.8676140000000001
	.quad	0x4014339c0ebedfa4              # double 5.0503999999999998
	.quad	0x401fb8db4890928a              # double 7.9305240000000001
	.quad	0x4006123b3636f3b2              # double 2.758902
	.quad	0x401a6fa97e132b56              # double 6.6090450000000001
	.quad	0x4021260e51d25aab              # double 8.5743279999999995
	.quad	0x400a8d5410f94c88              # double 3.3190080000000002
	.quad	0x401c50b6b6e0d23d              # double 7.0788219999999997
	.quad	0x40119e15011904b4              # double 4.4043770000000002
	.quad	0x401f4396073de1e3              # double 7.8160020000000001
	.quad	0x4020bbc70c996b76              # double 8.3667529999999992
	.quad	0x401332617c1bda51              # double 4.7991999999999999
	.quad	0x400cc2acb85a4f01              # double 3.595056
	.quad	0x3fdd261bf37b8d3f              # double 0.45545099999999999
	.quad	0x401ea1a60d4562e1              # double 7.6578600000000003
	.quad	0x401d8a50507a6bd7              # double 7.3850720000000001
	.quad	0x3ffbcf227d028a1e              # double 1.73807
	.quad	0x40186a2b5a20ddc6              # double 6.1036809999999999
	.quad	0x4021e1272c94b381              # double 8.9397520000000004
	.quad	0x4020485f8d2e514c              # double 8.1413539999999997
	.quad	0x400849b413986339              # double 3.0359880000000001
	.quad	0x40212ea8da7f3cf7              # double 8.591132
	.quad	0x40171b8800eae18b              # double 5.7768860000000002
	.quad	0x4018d5b291b823c8              # double 6.2086889999999997
	.quad	0x4015ef83382e44b7              # double 5.4838990000000001
	.quad	0x401f5d15f02c4d66              # double 7.8409040000000001
	.quad	0x401a8456f75d9a0f              # double 6.629238
	.quad	0x400d8f15e7c8d196              # double 3.6948660000000002
	.quad	0x4013617507e9d94d              # double 4.845173
	.quad	0x4021c6fbf401c4fc              # double 8.8886409999999997
	.quad	0x4016b7264a16a487              # double 5.6788569999999998
	.quad	0x3fe6028c36da87a0              # double 0.68781099999999995
	.quad	0x4012ba821f2990f3              # double 4.682137
	.quad	0x401fd578e5c4eb57              # double 7.958469
	.quad	0x4021db3d29563a9f              # double 8.9282009999999996
	.quad	0x4015d957cd466f50              # double 5.4622489999999999
	.quad	0x4001046b69db65ed              # double 2.1271580000000001
	.quad	0x401fff0d413122b8              # double 7.9990740000000002
	.quad	0x3ff376a0dbad3a60              # double 1.2164619999999999
	.quad	0x400ef7f9d6f112fd              # double 3.8710819999999999
	.quad	0x401c5f0520d130e0              # double 7.0927930000000003
	.quad	0x4022420ea5b530cf              # double 9.1290180000000003
	.quad	0x400150c1b97353b5              # double 2.1644320000000001
	.quad	0x4015e4806290eed0              # double 5.4731459999999998
	.quad	0x3ff5484944ed6fdb              # double 1.3301480000000001
	.quad	0x401a2cfede97d06c              # double 6.5439410000000002
	.quad	0x400285553ef6b5d4              # double 2.3151039999999998
	.quad	0x401e54a3400b88ca              # double 7.5826539999999998
	.quad	0x4012d5c63ae2541e              # double 4.7087640000000004
	.quad	0x4002581f10667f91              # double 2.2930280000000001
	.quad	0x4023a1205bc01a37              # double 9.8147000000000002
	.quad	0x3febd4195cc857f3              # double 0.869641
	.quad	0x3ff858a86d71f362              # double 1.5216449999999999
	.quad	0x40232300bcbe61d0              # double 9.568365
	.quad	0x3fea0954a7f8012e              # double 0.813639
	.quad	0x400c89d27c393682              # double 3.5672959999999998
	.quad	0x4002ad7add15f02c              # double 2.3347069999999999
	.quad	0x4021efed84d338f8              # double 8.9686090000000007
	.quad	0x401e97f1f9acffa8              # double 7.648384
	.quad	0x40011e35c5b4aa97              # double 2.139751
	.quad	0x40100ce4217d284a              # double 4.0125890000000002
	.quad	0x3fdc17d6b65a9a80              # double 0.43895499999999998
	.quad	0x3fe91bde82d7b635              # double 0.78465200000000002
	.quad	0x401509a88ace24bc              # double 5.2594320000000003
	.quad	0x4012ff965b20b806              # double 4.7495969999999996
	.quad	0x3ff8c02afdda8bd2              # double 1.546916
	.quad	0x400d09d40ee06d94              # double 3.6297990000000002
	.quad	0x3ff5b60d0247021d              # double 1.356946
	.quad	0x3fe622291fb3fa6e              # double 0.69167000000000001
	.quad	0x401a04a3400b88ca              # double 6.5045289999999998
	.quad	0x4018046cb966be7b              # double 6.004321
	.quad	0x40205d9c27e95315              # double 8.1828319999999994
	.quad	0x40179844d013a92a              # double 5.8986999999999998
	.quad	0x40150dbb9cf9a06a              # double 5.2634109999999996
	.quad	0x401bd7574f722e1b              # double 6.9602940000000002
	.quad	0x4012bd7a99fa11a9              # double 4.6850379999999996
	.quad	0x4022f9830e3cd9a5              # double 9.4873279999999997
	.quad	0x4004b00713f077cd              # double 2.5859510000000001
	.quad	0x4014d3137b07075b              # double 5.2061289999999998
	.quad	0x3ff1c00431bde82d              # double 1.1093789999999999
	.quad	0x3ffa8cb5bb384fd3              # double 1.6593530000000001
	.quad	0x401f894f26aec072              # double 7.8840909999999997
	.quad	0x3fd669a0ad8a1166              # double 0.35019699999999998
	.quad	0x400840dbad3a604e              # double 3.0316689999999999
	.quad	0x3ff1f702602c9082              # double 1.1228050000000001
	.quad	0x40202d1569f49060              # double 8.0880539999999996
	.quad	0x40109724b76f6d76              # double 4.1476009999999999
	.quad	0x400ffb6b2af14552              # double 3.997763
	.quad	0x40097559b3d07c85              # double 3.1823000000000001
	.quad	0x400d198c7e28240b              # double 3.6374749999999998
	.quad	0x402163c3e74afd54              # double 8.6948539999999994
	.quad	0x401098943e100608              # double 4.1490030000000004
	.quad	0x4012f5d9e40c8473              # double 4.7400890000000002
	.quad	0x3fcc5d52c16df3f9              # double 0.22159799999999999
	.quad	0x401b7a57eaa2a0a9              # double 6.8694759999999997
	.quad	0x3fe43990afe60c39              # double 0.63202700000000001
	.quad	0x402322e0c1765775              # double 9.5681209999999996
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
