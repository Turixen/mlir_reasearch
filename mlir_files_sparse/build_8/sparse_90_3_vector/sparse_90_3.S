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
	.quad	0x41209a539061c79b              # double 544041.78199599998
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
	.quad	999                             # 0x3e7
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	999                             # 0x3e7
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
	lui	a7, %hi(.L__constant_999xindex)
	addi	a7, a7, %lo(.L__constant_999xindex)
	lui	t0, %hi(.L__constant_999xf64)
	addi	t0, t0, %lo(.L__constant_999xf64)
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
	.quad	30                              # 0x1e
	.quad	30                              # 0x1e
	.quad	30                              # 0x1e
	.quad	61                              # 0x3d
	.quad	61                              # 0x3d
	.quad	61                              # 0x3d
	.quad	90                              # 0x5a
	.quad	90                              # 0x5a
	.quad	90                              # 0x5a
	.quad	120                             # 0x78
	.quad	120                             # 0x78
	.quad	120                             # 0x78
	.quad	150                             # 0x96
	.quad	150                             # 0x96
	.quad	150                             # 0x96
	.quad	180                             # 0xb4
	.quad	180                             # 0xb4
	.quad	180                             # 0xb4
	.quad	210                             # 0xd2
	.quad	210                             # 0xd2
	.quad	210                             # 0xd2
	.quad	240                             # 0xf0
	.quad	240                             # 0xf0
	.quad	240                             # 0xf0
	.quad	269                             # 0x10d
	.quad	269                             # 0x10d
	.quad	269                             # 0x10d
	.quad	298                             # 0x12a
	.quad	298                             # 0x12a
	.quad	298                             # 0x12a
	.quad	324                             # 0x144
	.quad	324                             # 0x144
	.quad	324                             # 0x144
	.quad	353                             # 0x161
	.quad	353                             # 0x161
	.quad	353                             # 0x161
	.quad	381                             # 0x17d
	.quad	381                             # 0x17d
	.quad	381                             # 0x17d
	.quad	411                             # 0x19b
	.quad	411                             # 0x19b
	.quad	411                             # 0x19b
	.quad	444                             # 0x1bc
	.quad	444                             # 0x1bc
	.quad	444                             # 0x1bc
	.quad	470                             # 0x1d6
	.quad	470                             # 0x1d6
	.quad	470                             # 0x1d6
	.quad	497                             # 0x1f1
	.quad	497                             # 0x1f1
	.quad	497                             # 0x1f1
	.quad	525                             # 0x20d
	.quad	525                             # 0x20d
	.quad	525                             # 0x20d
	.quad	552                             # 0x228
	.quad	552                             # 0x228
	.quad	552                             # 0x228
	.quad	581                             # 0x245
	.quad	581                             # 0x245
	.quad	581                             # 0x245
	.quad	612                             # 0x264
	.quad	612                             # 0x264
	.quad	612                             # 0x264
	.quad	642                             # 0x282
	.quad	642                             # 0x282
	.quad	642                             # 0x282
	.quad	672                             # 0x2a0
	.quad	672                             # 0x2a0
	.quad	672                             # 0x2a0
	.quad	703                             # 0x2bf
	.quad	703                             # 0x2bf
	.quad	703                             # 0x2bf
	.quad	733                             # 0x2dd
	.quad	733                             # 0x2dd
	.quad	733                             # 0x2dd
	.quad	763                             # 0x2fb
	.quad	763                             # 0x2fb
	.quad	763                             # 0x2fb
	.quad	788                             # 0x314
	.quad	788                             # 0x314
	.quad	788                             # 0x314
	.quad	814                             # 0x32e
	.quad	814                             # 0x32e
	.quad	814                             # 0x32e
	.quad	844                             # 0x34c
	.quad	844                             # 0x34c
	.quad	844                             # 0x34c
	.quad	874                             # 0x36a
	.quad	874                             # 0x36a
	.quad	874                             # 0x36a
	.quad	903                             # 0x387
	.quad	903                             # 0x387
	.quad	903                             # 0x387
	.quad	935                             # 0x3a7
	.quad	935                             # 0x3a7
	.quad	935                             # 0x3a7
	.quad	967                             # 0x3c7
	.quad	967                             # 0x3c7
	.quad	967                             # 0x3c7
	.quad	999                             # 0x3e7
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_999xindex,@object  # @__constant_999xindex
	.p2align	6, 0x0
.L__constant_999xindex:
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_999xindex, 7992

	.type	.L__constant_999xf64,@object    # @__constant_999xf64
	.p2align	6, 0x0
.L__constant_999xf64:
	.quad	0x400b9ca3a4b5568f              # double 3.4514840000000002
	.quad	0x4023343265add9c2              # double 9.6019469999999991
	.quad	0x4002ec48adeebb34              # double 2.3653729999999999
	.quad	0x3feeec95bff04578              # double 0.96638000000000001
	.quad	0x402161e71044f1a2              # double 8.6912160000000007
	.quad	0x40237c44bf4cb189              # double 9.7427119999999991
	.quad	0x400fbae2541d8e86              # double 3.9662519999999999
	.quad	0x3ffd0329802c0a4a              # double 1.813272
	.quad	0x401ca41cc532a498              # double 7.160266
	.quad	0x3fdad0bb6ed67770              # double 0.41898999999999997
	.quad	0x3fea7901083dbc23              # double 0.82727099999999998
	.quad	0x3ff5d49949e8815e              # double 1.364404
	.quad	0x401ba2877ee4e26d              # double 6.9087199999999998
	.quad	0x4018b2163fdd65a1              # double 6.1739129999999998
	.quad	0x4007645f5ad96a6a              # double 2.92401
	.quad	0x4008088df37329c3              # double 3.0041769999999999
	.quad	0x402168a8f3a9b068              # double 8.7044139999999999
	.quad	0x401912a3486f049b              # double 6.2682010000000004
	.quad	0x4022b72b884406c0              # double 9.3577539999999999
	.quad	0x3ff5c7a7c9de0503              # double 1.3612439999999999
	.quad	0x3ffcffc9795b35b1              # double 1.8124480000000001
	.quad	0x4010c889c1b54196              # double 4.1958380000000002
	.quad	0x4012a475e6362a5e              # double 4.6606059999999996
	.quad	0x4015546173b85e81              # double 5.3324030000000002
	.quad	0x40159a2a4db163bb              # double 5.4005520000000002
	.quad	0x40232236c15d2d02              # double 9.5668240000000004
	.quad	0x40229fe1b8ed1bf8              # double 9.3122690000000005
	.quad	0x40227431593e5fb7              # double 9.2269389999999998
	.quad	0x4007f55bccaf709b              # double 2.9948039999999998
	.quad	0x40195cbea4ebdd33              # double 6.3405709999999997
	.quad	0x40216ab6ae7d566d              # double 8.7084250000000001
	.quad	0x401e6adc8fb86f48              # double 7.6043570000000002
	.quad	0x401769856a37ac3f              # double 5.8530480000000003
	.quad	0x3ff1ae514c22ee42              # double 1.1050580000000001
	.quad	0x4018e1f7d73c9258              # double 6.2206720000000004
	.quad	0x401d21cde5d18091              # double 7.2830120000000003
	.quad	0x4012279b34a44c7b              # double 4.538678
	.quad	0x401e11e215336dec              # double 7.5174640000000004
	.quad	0x4017c51ac9afe1da              # double 5.9424849999999996
	.quad	0x401fa558ea7ce0fc              # double 7.9114719999999998
	.quad	0x3fefb83ad9f0a1be              # double 0.99123899999999998
	.quad	0x3ff30759253543af              # double 1.1892940000000001
	.quad	0x40237aca36199781              # double 9.7398240000000004
	.quad	0x4008fbc4d22c881e              # double 3.1229339999999999
	.quad	0x4002120ea5b530cf              # double 2.2588170000000001
	.quad	0x402202a8eb463498              # double 9.0051950000000005
	.quad	0x401f2c9eecbfb15b              # double 7.7935749999999996
	.quad	0x400368df37329c34              # double 2.4262069999999998
	.quad	0x401ceec5b078d930              # double 7.2331760000000003
	.quad	0x3ffa64e9c4545847              # double 1.649637
	.quad	0x3ffaeed1394317ad              # double 1.6833050000000001
	.quad	0x400b21fe21d96e9c              # double 3.3915980000000001
	.quad	0x401a94dc65c70436              # double 6.6453720000000001
	.quad	0x40226eacc92146a2              # double 9.2161620000000006
	.quad	0x402000f88333fc87              # double 8.0018960000000003
	.quad	0x4021bfb71fbc5dea              # double 8.8744440000000004
	.quad	0x4015e3996fa82e88              # double 5.4722650000000002
	.quad	0x400aa3cafb3b7521              # double 3.329977
	.quad	0x401bcf8bdec5f395              # double 6.9526820000000003
	.quad	0x3ff8a40e9d51b4fe              # double 1.5400529999999999
	.quad	0x401e3804534bd76f              # double 7.554704
	.quad	0x4023ff3365881a15              # double 9.9984389999999994
	.quad	0x3fe8fa7c9de05037              # double 0.78057699999999997
	.quad	0x4004236976bc1f00              # double 2.5172910000000002
	.quad	0x401d62ce4649906d              # double 7.3464900000000002
	.quad	0x401f3e3193f6c26a              # double 7.8107360000000003
	.quad	0x3ff5e3ef284167a9              # double 1.3681479999999999
	.quad	0x401ce5b8dc55000d              # double 7.2243380000000004
	.quad	0x3ff70faeff5c6c12              # double 1.4413290000000001
	.quad	0x402099ee675147f1              # double 8.3006469999999997
	.quad	0x4015636544fe36d2              # double 5.3470659999999999
	.quad	0x4012d8feac42e98a              # double 4.7119090000000003
	.quad	0x400b17db6e503fb3              # double 3.3866489999999998
	.quad	0x400f3327243137b0              # double 3.8999769999999998
	.quad	0x402381bb8c32a8ca              # double 9.7533840000000005
	.quad	0x401ee12d3415b142              # double 7.7198989999999998
	.quad	0x3fdd847b24638c97              # double 0.46121099999999998
	.quad	0x4018eae9ab29e4d6              # double 6.2294070000000001
	.quad	0x4018fdeca25529fe              # double 6.247973
	.quad	0x4015ef455a7d2418              # double 5.483663
	.quad	0x401313365881a155              # double 4.7687619999999997
	.quad	0x401e7eb2d0a24463              # double 7.6237289999999999
	.quad	0x4022fa99fa11a976              # double 9.4894560000000006
	.quad	0x401851fd9ba1b196              # double 6.0800689999999999
	.quad	0x4009de1f3a57eaa3              # double 3.2334580000000002
	.quad	0x4011df36ac647779              # double 4.4679820000000001
	.quad	0x3fe6fc6327ed84d3              # double 0.71830899999999998
	.quad	0x40179a8ef77f27fe              # double 5.9009359999999997
	.quad	0x401fb938151a4378              # double 7.9308779999999998
	.quad	0x401d475fb2edfe76              # double 7.3197010000000002
	.quad	0x401d3f7446f9b995              # double 7.3119670000000001
	.quad	0x401f6240b780346e              # double 7.8459500000000002
	.quad	0x401e0aed99cbee80              # double 7.5106719999999996
	.quad	0x3fd78e6d15ad106f              # double 0.36806800000000001
	.quad	0x4000b43201040bfe              # double 2.0879859999999999
	.quad	0x401fa8427418d691              # double 7.9143160000000003
	.quad	0x40051d70a3d70a3d              # double 2.6393749999999998
	.quad	0x4012e2a3cea6c1a0              # double 4.7213279999999997
	.quad	0x4022dd54b8bef8cf              # double 9.4322870000000005
	.quad	0x40197cbf2b239a39              # double 6.371823
	.quad	0x3ffaacb74ddf86e4              # double 1.6671670000000001
	.quad	0x3fe62e6644d87725              # double 0.693164
	.quad	0x4007ea8f3a9b0681              # double 2.9895309999999999
	.quad	0x40038f8c64fdb09a              # double 2.4450919999999998
	.quad	0x40108893b7d84902              # double 4.1333760000000002
	.quad	0x4020dcf3ba775fb3              # double 8.4315470000000001
	.quad	0x401e13c536d655e3              # double 7.5193070000000004
	.quad	0x3ff7cffda4052d66              # double 1.4882789999999999
	.quad	0x4023ecd76ab58080              # double 9.9625810000000001
	.quad	0x401d07746887a8d6              # double 7.2572799999999997
	.quad	0x401cc4a6223e186a              # double 7.1920400000000004
	.quad	0x4005b178b3700475              # double 2.7116560000000001
	.quad	0x401eb6e264e48627              # double 7.678598
	.quad	0x400f08e581cf7879              # double 3.8793440000000001
	.quad	0x4001ac061847f562              # double 2.208996
	.quad	0x400fecedd4845133              # double 3.990688
	.quad	0x40149c66d373affb              # double 5.152736
	.quad	0x3fdfcf398e970718              # double 0.49702299999999999
	.quad	0x3fdf2dd7a99fa11b              # double 0.48717300000000002
	.quad	0x402043c83a96d4c3              # double 8.1323869999999996
	.quad	0x40220b586ca89fc7              # double 9.0221590000000003
	.quad	0x3ffd31e8e6080735              # double 1.8246849999999999
	.quad	0x401086e8f29d40ee              # double 4.131748
	.quad	0x401acc60029f16b1              # double 6.6995849999999999
	.quad	0x401b171971c10d7c              # double 6.7725580000000001
	.quad	0x401e427243137b07              # double 7.5648889999999999
	.quad	0x401cce060fe47992              # double 7.2011950000000002
	.quad	0x3fe3849cb252ce03              # double 0.60993799999999998
	.quad	0x400745f6ba0620ab              # double 2.9091619999999998
	.quad	0x401d5195464dc22b              # double 7.3296710000000003
	.quad	0x400dd790752da986              # double 3.7302559999999998
	.quad	0x3fedf56a7ac81d3b              # double 0.93620800000000004
	.quad	0x3ffb490e66cb1034              # double 1.705336
	.quad	0x401a6ae536501e26              # double 6.6043900000000004
	.quad	0x401eb4e1a3f4666f              # double 7.6766420000000001
	.quad	0x4020a1a9973d9ec7              # double 8.315747
	.quad	0x3ffad14d2f5dbb9d              # double 1.676099
	.quad	0x4001c7d77fae3609              # double 2.2225790000000001
	.quad	0x4022f3ac0c62e4d2              # double 9.4759220000000006
	.quad	0x40039aa60913a4f8              # double 2.4505119999999998
	.quad	0x401cf9253543aeab              # double 7.2433059999999996
	.quad	0x402176ac215b9a5b              # double 8.7317820000000008
	.quad	0x400dff705857afea              # double 3.7497259999999999
	.quad	0x3ff3e5ce5b4245f6              # double 1.2436050000000001
	.quad	0x40228efed634549b              # double 9.2792879999999993
	.quad	0x4018480c308feac4              # double 6.0703589999999998
	.quad	0x4020171cda2b5a21              # double 8.0451420000000002
	.quad	0x401d669ca9ef5233              # double 7.3502070000000002
	.quad	0x4020efcc7d1bb491              # double 8.4683569999999992
	.quad	0x400d98561d4306e6              # double 3.6993830000000001
	.quad	0x401487c3504c48ae              # double 5.1325810000000001
	.quad	0x40184e71044f1a1a              # double 6.0766030000000004
	.quad	0x4021f3bb62413db8              # double 8.9760390000000001
	.quad	0x3fe01f1cfbb94962              # double 0.50379799999999997
	.quad	0x401c3a8c586876e2              # double 7.0571760000000001
	.quad	0x4021bc92146a1a50              # double 8.8683019999999999
	.quad	0x3fe92ba16e7a311f              # double 0.78657600000000005
	.quad	0x400c2f294dd72368              # double 3.523028
	.quad	0x3fdd9a4df47f993d              # double 0.46254299999999998
	.quad	0x3ffff5c7cd898b2f              # double 1.9975050000000001
	.quad	0x3ff8068fd199bb28              # double 1.5016020000000001
	.quad	0x3fe83111f0c34c1b              # double 0.75599000000000005
	.quad	0x3ff8441dd1a21ea3              # double 1.5166299999999999
	.quad	0x4011ade15ca6ca04              # double 4.4198050000000002
	.quad	0x401050214ad362e9              # double 4.078252
	.quad	0x400492a8c9b84556              # double 2.5716109999999999
	.quad	0x3fe95b9628cbd124              # double 0.79242999999999996
	.quad	0x400a1f748a159818              # double 3.2653590000000001
	.quad	0x40013985ad538ac2              # double 2.1530870000000002
	.quad	0x4017db039ef0f16f              # double 5.9638809999999998
	.quad	0x401f4e9424e59296              # double 7.8267369999999996
	.quad	0x40128795b35b0bbf              # double 4.6324069999999997
	.quad	0x40167916440f2389              # double 5.6182489999999996
	.quad	0x4021de013660e51d              # double 8.9336029999999997
	.quad	0x400d43bddfc9ff93              # double 3.658077
	.quad	0x4019fd1e108c3f3e              # double 6.497185
	.quad	0x401d4b5e529bae47              # double 7.3236020000000002
	.quad	0x3fff5f0d413122b8              # double 1.9607060000000001
	.quad	0x401c8cc5fbf83383              # double 7.1374740000000001
	.quad	0x401499de05037500              # double 5.1502610000000004
	.quad	0x4001ed67fd3f5b60              # double 2.2409210000000002
	.quad	0x401ec563ed0f6274              # double 7.6927640000000004
	.quad	0x401e3945f9df548f              # double 7.5559310000000001
	.quad	0x401872be0589acbd              # double 6.1120530000000004
	.quad	0x40053a33bd9cae21              # double 2.653419
	.quad	0x40145d5f99c38b05              # double 5.0911850000000003
	.quad	0x401c1e68a0d349bf              # double 7.0296960000000004
	.quad	0x4021a8c47a17f413              # double 8.8296240000000008
	.quad	0x40213aab25b317f0              # double 8.6145870000000002
	.quad	0x3ffbb2ca57a786c2              # double 1.73115
	.quad	0x40228f0b06c43f60              # double 9.2793810000000008
	.quad	0x4021762fbe33acd6              # double 8.7308330000000005
	.quad	0x40021e6ff7dfa00e              # double 2.2648619999999999
	.quad	0x400190ac3a860dcc              # double 2.1956410000000002
	.quad	0x3fdad26b723ee1bd              # double 0.41909299999999999
	.quad	0x4023de49906cca2e              # double 9.9341550000000005
	.quad	0x400a15caf2d7f951              # double 3.2606410000000001
	.quad	0x3fe824ce8101f31f              # double 0.75449299999999997
	.quad	0x401dc44955b4677b              # double 7.4416859999999998
	.quad	0x4021e09917939a7c              # double 8.9386679999999998
	.quad	0x4012fb191dde3758              # double 4.7452129999999997
	.quad	0x401b6e5f30e7ff58              # double 6.8577849999999998
	.quad	0x400e25f28848387e              # double 3.768529
	.quad	0x401583afb7e90ff9              # double 5.3785999999999996
	.quad	0x3fed15b78cc9a77e              # double 0.90890099999999996
	.quad	0x402050bd87b56b87              # double 8.1576959999999996
	.quad	0x401d59d3cbc48f11              # double 7.3377220000000003
	.quad	0x40239cae85b9e8c4              # double 9.8060189999999991
	.quad	0x40238d24399b2c41              # double 9.7756670000000003
	.quad	0x3ff94b8bef8ceb35              # double 1.5809439999999999
	.quad	0x4009762f9ca5bd94              # double 3.1827079999999999
	.quad	0x401ba163779e9d0f              # double 6.9076060000000004
	.quad	0x40013a2df9378ee3              # double 2.1534080000000002
	.quad	0x400c02541d8e8640              # double 3.5011369999999999
	.quad	0x400555fb2edfe75c              # double 2.6669830000000001
	.quad	0x401312b9d3cbc48f              # double 4.7682869999999999
	.quad	0x4020fdc5b4aa9718              # double 8.4956490000000002
	.quad	0x401cfe8101f31f47              # double 7.2485390000000001
	.quad	0x4007a4167a95c854              # double 2.9551210000000001
	.quad	0x4023f944aa53fc01              # double 9.9868520000000007
	.quad	0x4023bfa67a52ac75              # double 9.8743169999999995
	.quad	0x401f1fde7210be94              # double 7.7811219999999999
	.quad	0x4005031162281345              # double 2.6264980000000002
	.quad	0x401cb20b8066c2ad              # double 7.1738720000000002
	.quad	0x40173a6b93ccd0ff              # double 5.8070510000000004
	.quad	0x401dd70a808c825a              # double 7.4600010000000001
	.quad	0x4023699bd4067cf2              # double 9.7062670000000004
	.quad	0x401df2db61bb05fb              # double 7.487165
	.quad	0x401e8789a459103d              # double 7.6323610000000003
	.quad	0x401a14dad31fcd25              # double 6.5203660000000001
	.quad	0x40182d89ce4a7b4e              # double 6.0444709999999997
	.quad	0x40000f29d40ee06e              # double 2.0074040000000002
	.quad	0x4022ad7f737da61e              # double 9.3388629999999999
	.quad	0x4020b7edc7ef177a              # double 8.3592359999999992
	.quad	0x401573e24febd09e              # double 5.3631679999999999
	.quad	0x402353d9018e7579              # double 9.6637649999999997
	.quad	0x401f2d0fe8ab4fa5              # double 7.7940060000000004
	.quad	0x3ffd84a2fcefaa47              # double 1.8448819999999999
	.quad	0x402105ffc5479d4e              # double 8.5117170000000009
	.quad	0x400163e425aee632              # double 2.173775
	.quad	0x3fe174b61fe21d97              # double 0.54549700000000001
	.quad	0x40109c432ca57a78              # double 4.1525999999999996
	.quad	0x400867e28240b780              # double 3.0507249999999999
	.quad	0x400705eedcc20d56              # double 2.8778969999999999
	.quad	0x4012de3b03e20cd0              # double 4.717022
	.quad	0x401473cfb3311a54              # double 5.1130969999999998
	.quad	0x3fe4f1b691212514              # double 0.65450600000000003
	.quad	0x402333c9eecbfb16              # double 9.6011500000000005
	.quad	0x4010f0fb224aada3              # double 4.2353329999999998
	.quad	0x40226da48b652370              # double 9.2141459999999995
	.quad	0x40170456f75d9a0f              # double 5.754238
	.quad	0x3fdcd85dfa871a3b              # double 0.450706
	.quad	0x40212dc13fd0d068              # double 8.5893650000000008
	.quad	0x3ff4edd377e1b8ed              # double 1.308063
	.quad	0x401e306748e47560              # double 7.547269
	.quad	0x40016d44dca8e2e3              # double 2.1783540000000001
	.quad	0x40227b8088509bfa              # double 9.2412150000000004
	.quad	0x401c3fc7607c419a              # double 7.062284
	.quad	0x400fb3879c4113c7              # double 3.9626610000000002
	.quad	0x400a001cd5f99c39              # double 3.2500550000000001
	.quad	0x3fd7d0fa58f7121b              # double 0.37213000000000002
	.quad	0x3ff717a46173b85f              # double 1.4432720000000001
	.quad	0x401b629cfdd22856              # double 6.8463019999999997
	.quad	0x401c03ab430f4949              # double 7.0035829999999999
	.quad	0x400637ee4e26d480              # double 2.7773099999999999
	.quad	0x40166ff8ec0f8833              # double 5.6093479999999998
	.quad	0x4021de55193708ab              # double 8.9342430000000004
	.quad	0x4019869878316a05              # double 6.3814409999999997
	.quad	0x3fd63b6cbd987c63              # double 0.34737699999999999
	.quad	0x40237e736049ecb3              # double 9.7469739999999998
	.quad	0x4002732ce89656ef              # double 2.306238
	.quad	0x3ffaac4c5974e65c              # double 1.667065
	.quad	0x4016c24638c97529              # double 5.6897209999999996
	.quad	0x401383dff3f0fe04              # double 4.8787839999999996
	.quad	0x4013cdda48b65237              # double 4.951028
	.quad	0x402327a80cf9e386              # double 9.5774539999999995
	.quad	0x401d1bbe0157eed4              # double 7.2770919999999997
	.quad	0x4022bfce95faa8a8              # double 9.3746229999999997
	.quad	0x401518661ae70c13              # double 5.2738269999999998
	.quad	0x4021a866a11ec919              # double 8.8289080000000002
	.quad	0x401ae1ac9afe1da8              # double 6.7203850000000003
	.quad	0x40178a62ed352221              # double 5.8851430000000002
	.quad	0x40021f0b28522ea1              # double 2.265158
	.quad	0x3fe32f533f42352f              # double 0.59952700000000003
	.quad	0x3ffbdfe32a0663c7              # double 1.7421599999999999
	.quad	0x4004053fc0096feb              # double 2.5025629999999999
	.quad	0x401011bac2df0d41              # double 4.0173139999999998
	.quad	0x401542862f5989df              # double 5.3149649999999999
	.quad	0x4008a51116a8b8f1              # double 3.0805989999999999
	.quad	0x3f78dbcec84f8f8a              # double 0.0060689999999999997
	.quad	0x4020e375c8d9f905              # double 8.4442579999999996
	.quad	0x40184e13b18dac26              # double 6.0762470000000004
	.quad	0x3ffa4895d0b73d19              # double 1.6427210000000001
	.quad	0x400da6149c6f36f0              # double 3.7060940000000002
	.quad	0x40234429bf162ae5              # double 9.6331310000000005
	.quad	0x4006651b0ccbc05d              # double 2.7993679999999999
	.quad	0x4017731c219eb639              # double 5.862412
	.quad	0x4022ab18548a9bd0              # double 9.3341700000000003
	.quad	0x4004d0292817763e              # double 2.6016409999999999
	.quad	0x3f71cc100e6afcce              # double 0.0043449999999999999
	.quad	0x40236f6b3bb83cf3              # double 9.7176150000000003
	.quad	0x4011bf5ec80c73ac              # double 4.4368850000000002
	.quad	0x3ff39d755bccaf71              # double 1.2259420000000001
	.quad	0x401eabcf0b6b6e0d              # double 7.6677819999999998
	.quad	0x4003cc2480e8c8ac              # double 2.4746790000000001
	.quad	0x3ffc8cf7caa7589f              # double 1.784416
	.quad	0x3fffde3eaf6837f8              # double 1.9917590000000001
	.quad	0x401ca17fc7607c42              # double 7.1577140000000004
	.quad	0x4020299c9d5a187a              # double 8.0812729999999995
	.quad	0x3fe0ebaf102363b2              # double 0.52876999999999996
	.quad	0x3ff531a7e3087875              # double 1.3246230000000001
	.quad	0x4022c47304039abf              # double 9.3836899999999996
	.quad	0x401b3788db0574b4              # double 6.804233
	.quad	0x4005f7c02afdda8c              # double 2.7459720000000001
	.quad	0x401e084ba0e84274              # double 7.5081009999999999
	.quad	0x4007523033a4723b              # double 2.9151310000000001
	.quad	0x40207f3eab367a10              # double 8.2485250000000008
	.quad	0x40166b3e9a6f826f              # double 5.6047310000000001
	.quad	0x40172bc5154866a1              # double 5.7927439999999999
	.quad	0x400537f498c3b0c4              # double 2.6523219999999998
	.quad	0x3fe7c8b86b15f890              # double 0.74325200000000002
	.quad	0x400727381d7dbf48              # double 2.8941499999999998
	.quad	0x40103165907d9125              # double 4.0482389999999997
	.quad	0x40168af89c5e6ff8              # double 5.6357140000000001
	.quad	0x40089090f733a8a4              # double 3.070589
	.quad	0x4019440d0aaa7ded              # double 6.3164559999999996
	.quad	0x4012c3671ac14c66              # double 4.690823
	.quad	0x4018946994185059              # double 6.1449340000000001
	.quad	0x40112779a6b50b0f              # double 4.2885499999999999
	.quad	0x3ffbde13b18dac26              # double 1.7417180000000001
	.quad	0x4000d71a7e308787              # double 2.1050309999999999
	.quad	0x4023b748a159817c              # double 9.8579760000000007
	.quad	0x3fee1c8216c61523              # double 0.94098000000000004
	.quad	0x4021bc6a7ef9db23              # double 8.8680000000000003
	.quad	0x4021843d46b26bf8              # double 8.7582799999999992
	.quad	0x4019b33daf8df7a5              # double 6.4250400000000001
	.quad	0x3ff9cc47a17f4129              # double 1.6123730000000001
	.quad	0x400138d0cc35ce18              # double 2.1527419999999999
	.quad	0x4011b23b3636f3b2              # double 4.4240539999999999
	.quad	0x40159ef7c243dccf              # double 5.4052420000000003
	.quad	0x40049b70691ea78b              # double 2.575898
	.quad	0x4016be2a3cea6c1a              # double 5.685708
	.quad	0x401efc52a411c2a0              # double 7.7464089999999999
	.quad	0x402077325918a00a              # double 8.2328060000000001
	.quad	0x4010189bd8383ada              # double 4.0240320000000001
	.quad	0x3ff0bec460ed80a1              # double 1.0465739999999999
	.quad	0x3ff5e6f71a7e3088              # double 1.3688880000000001
	.quad	0x3fd2199780baa583              # double 0.28281200000000001
	.quad	0x400be771c970f7ba              # double 3.4880100000000001
	.quad	0x3ff6be77d523b363              # double 1.4215009999999999
	.quad	0x401cc5286b59146e              # double 7.1925369999999997
	.quad	0x401bbbbcf4e874c9              # double 6.933338
	.quad	0x400971737542a23c              # double 3.180396
	.quad	0x3fc3bc87db2b3461              # double 0.15419099999999999
	.quad	0x3fee7b762d83c6c9              # double 0.95257099999999995
	.quad	0x400a093964a59c06              # double 3.2545039999999998
	.quad	0x40142c016052502f              # double 5.0429740000000001
	.quad	0x4010700b02928177              # double 4.1094169999999997
	.quad	0x3ffae2467be553ac              # double 1.6802429999999999
	.quad	0x4023f9cd8127b2cc              # double 9.9878959999999992
	.quad	0x4001723bbc6eb0b8              # double 2.1807780000000001
	.quad	0x40216e71044f1a1a              # double 8.7157060000000008
	.quad	0x3ff154db59578a2b              # double 1.0832170000000001
	.quad	0x3ff5cb84988094e6              # double 1.362187
	.quad	0x401856aa087ca644              # double 6.0846330000000002
	.quad	0x401336bd2b6f1993              # double 4.8034559999999997
	.quad	0x3fffc60029f16b12              # double 1.98584
	.quad	0x3feddc5b4aa9717e              # double 0.93314900000000001
	.quad	0x3ff168101f31f46f              # double 1.087906
	.quad	0x40201a235b4edb2f              # double 8.0510509999999993
	.quad	0x401366e371540032              # double 4.8504769999999997
	.quad	0x3fec02fb5d031056              # double 0.87536400000000003
	.quad	0x40044e5cd4ed2cbf              # double 2.5382630000000002
	.quad	0x400ee328f9f44d44              # double 3.8609179999999999
	.quad	0x400dc0902de00d1b              # double 3.7190249999999998
	.quad	0x401fdd4cfd08d4bb              # double 7.9661140000000001
	.quad	0x40066d00b45ae600              # double 2.8032240000000002
	.quad	0x3ffce7ff583a53b9              # double 1.80664
	.quad	0x4012a3397dd00f77              # double 4.6593989999999996
	.quad	0x4003da24894c447c              # double 2.4815149999999999
	.quad	0x40229adb402d16b9              # double 9.3024539999999991
	.quad	0x401aa0ad46f587d7              # double 6.656911
	.quad	0x4021dd6a7ac81d3b              # double 8.9324530000000006
	.quad	0x40001eb0fadf2ecf              # double 2.0149859999999999
	.quad	0x4021365c2d278078              # double 8.6061720000000008
	.quad	0x401921676640a6b9              # double 6.2826209999999998
	.quad	0x40144f1bac2df0d4              # double 5.0772539999999999
	.quad	0x4022fa4095f2452c              # double 9.4887739999999993
	.quad	0x40160b71fbc5de9c              # double 5.511177
	.quad	0x3ffda5a682b62846              # double 1.8529420000000001
	.quad	0x400039e518f3eccc              # double 2.0282689999999999
	.quad	0x401b8209aaa3ad19              # double 6.8769900000000002
	.quad	0x40093afaf8594291              # double 3.1537989999999998
	.quad	0x401dec154c985f07              # double 7.48055
	.quad	0x401dd59146e4c0df              # double 7.4585619999999997
	.quad	0x4009db8aa00192a7              # double 3.2321979999999999
	.quad	0x401c36e1deacc921              # double 7.0535959999999998
	.quad	0x3fb14af4f0d844d0              # double 0.067549999999999999
	.quad	0x4020405d31337eb3              # double 8.1257110000000008
	.quad	0x402261ed17c5ef63              # double 9.191262
	.quad	0x401324af0bf1a5ca              # double 4.7858239999999999
	.quad	0x401d6cf850df15a5              # double 7.3564160000000003
	.quad	0x401119ecf6380022              # double 4.2753180000000004
	.quad	0x4001e3a322af5771              # double 2.236151
	.quad	0x401f0d4845132f88              # double 7.7629710000000002
	.quad	0x40055e3193f6c26a              # double 2.6709930000000002
	.quad	0x40157632c1f42bb6              # double 5.3654279999999996
	.quad	0x40231f57b41bfbdf              # double 9.5612159999999999
	.quad	0x3fe5e1cde5d18091              # double 0.68381400000000003
	.quad	0x401cea95c853c148              # double 7.2290869999999998
	.quad	0x401f672de43ed95a              # double 7.8507610000000003
	.quad	0x3fba172abef06b38              # double 0.10191600000000001
	.quad	0x400ac8c5004fb118              # double 3.3480319999999999
	.quad	0x401403b688bda943              # double 5.0036259999999997
	.quad	0x40182be121ee6751              # double 6.0428509999999998
	.quad	0x401c1e4649906cca              # double 7.0295649999999998
	.quad	0x40115ee30caa326e              # double 4.3426629999999999
	.quad	0x401448ed1bf7ad4b              # double 5.0712169999999999
	.quad	0x3ffb359ee88df373              # double 1.700591
	.quad	0x40189370cdc8754f              # double 6.1439849999999998
	.quad	0x401ef0b524399b2c              # double 7.7350659999999998
	.quad	0x40203b0fadf2ecf2              # double 8.115354
	.quad	0x400c923bbc6eb0b8              # double 3.5714030000000001
	.quad	0x400d08b8f14db595              # double 3.6292589999999998
	.quad	0x400a0e74f2f123c4              # double 3.2570589999999999
	.quad	0x4012ce1eb4202d9d              # double 4.7012890000000001
	.quad	0x3ffb34aba3875925              # double 1.700359
	.quad	0x4023fb2df505d0fa              # double 9.9905849999999994
	.quad	0x40011912556d19df              # double 2.1372420000000001
	.quad	0x40086d4801f75105              # double 3.0533600000000001
	.quad	0x401c89a49c2c1b11              # double 7.134417
	.quad	0x3fd42541d8e86402              # double 0.314774
	.quad	0x4015fe2b4959e625              # double 5.4982119999999997
	.quad	0x4022b3a98eda22f7              # double 9.3509030000000006
	.quad	0x40064b3d4ae429e1              # double 2.7867380000000002
	.quad	0x401bc4b2745bf26f              # double 6.9420869999999999
	.quad	0x401827d06bbdbe3c              # double 6.0388809999999999
	.quad	0x4014b640e9d51b50              # double 5.1779820000000001
	.quad	0x401bf9d99029ae4f              # double 6.9939939999999998
	.quad	0x40151205bc01a36e              # double 5.2675999999999998
	.quad	0x400f91d798d8a97a              # double 3.9462120000000001
	.quad	0x40183c271fff79c8              # double 6.0587429999999998
	.quad	0x3ff7215db3397dd0              # double 1.445646
	.quad	0x4021fa2ad3e920c0              # double 8.9886079999999992
	.quad	0x4020f2b5a20ddc62              # double 8.4740420000000007
	.quad	0x4019263e4abe6a33              # double 6.2873469999999996
	.quad	0x4023d3d7f51efb6e              # double 9.9137570000000004
	.quad	0x40148e4c942d490e              # double 5.1389639999999996
	.quad	0x3ff5bdb2b346130a              # double 1.358813
	.quad	0x40040f4623d0bfa1              # double 2.5074580000000002
	.quad	0x4019de6601bc98a2              # double 6.4671859999999999
	.quad	0x400523ad9f0a1be3              # double 2.6424210000000001
	.quad	0x4020601f75104d55              # double 8.1877399999999998
	.quad	0x401b627674d16335              # double 6.8461550000000004
	.quad	0x4021954d4024b33e              # double 8.7916050000000006
	.quad	0x401d86e9bbf0dc77              # double 7.3817510000000004
	.quad	0x4020260daa0cae64              # double 8.0743229999999996
	.quad	0x4018809310129cbb              # double 6.1255610000000003
	.quad	0x401153be22e5de16              # double 4.3317800000000002
	.quad	0x400c9df1172ef0ae              # double 3.5771199999999999
	.quad	0x4014c691a75cd0bb              # double 5.1939149999999996
	.quad	0x401b98f5c28f5c29              # double 6.899375
	.quad	0x3ff14857f3061c7a              # double 1.0801620000000001
	.quad	0x3ff13b71fbc5de9c              # double 1.077013
	.quad	0x3ff981797cc39ffd              # double 1.5941099999999999
	.quad	0x4008acc92146a1a5              # double 3.084368
	.quad	0x40009b84db9c7369              # double 2.0759370000000001
	.quad	0x3ff904ee7c49fd7a              # double 1.563704
	.quad	0x401b169ced0b30b6              # double 6.7720830000000003
	.quad	0x4023d70f5a1016ce              # double 9.9200389999999992
	.quad	0x40202e78e1932d6f              # double 8.0907660000000003
	.quad	0x4012e84406c00da2              # double 4.7268220000000003
	.quad	0x3fe0e04189374bc7              # double 0.52737500000000004
	.quad	0x4023bb4d8ba40d91              # double 9.8658260000000002
	.quad	0x4020758dde7a743a              # double 8.2295979999999993
	.quad	0x4018333f42352eb6              # double 6.050046
	.quad	0x401c5a60d4562e0a              # double 7.08826
	.quad	0x401e30eed02cd39e              # double 7.5477860000000003
	.quad	0x40210bf444e0daa1              # double 8.5233480000000004
	.quad	0x40237a4851a86940              # double 9.7388329999999996
	.quad	0x4022fcd898b2e9cd              # double 9.4938400000000005
	.quad	0x3ff9f4ea8da7f3cf              # double 1.6222939999999999
	.quad	0x3ff3859ea57214f0              # double 1.2201219999999999
	.quad	0x400fa548a9bcfd4c              # double 3.955705
	.quad	0x400d20e8c8abd5dc              # double 3.6410689999999999
	.quad	0x40126dcdf6987831              # double 4.6072309999999996
	.quad	0x400c73f5b5fa2270              # double 3.5566209999999998
	.quad	0x3fc1e646f1561911              # double 0.13983999999999999
	.quad	0x3fe509f40a2877ee              # double 0.65746499999999997
	.quad	0x40166c5d206c8712              # double 5.6058240000000001
	.quad	0x40224e088d6d3b6d              # double 9.1524090000000005
	.quad	0x40160685553ef6b6              # double 5.5063680000000002
	.quad	0x4017eb4f61672325              # double 5.9797950000000002
	.quad	0x401db634117f8445              # double 7.4279330000000003
	.quad	0x40215ed71f36262d              # double 8.6852350000000005
	.quad	0x400ad8a3b57c4e2f              # double 3.3557809999999999
	.quad	0x401f19314445aa2e              # double 7.7746019999999998
	.quad	0x400276cb5350092d              # double 2.3080050000000001
	.quad	0x4019a72ffd1dcd70              # double 6.4132689999999997
	.quad	0x3fe9ef2a5a469d73              # double 0.81044499999999997
	.quad	0x401afa20ddc61954              # double 6.7442659999999997
	.quad	0x3fcd59791819d239              # double 0.229293
	.quad	0x401af00abf76a2f5              # double 6.7344160000000004
	.quad	0x3fe9c988094e5d5b              # double 0.80585099999999998
	.quad	0x40215886594af4f1              # double 8.6729000000000003
	.quad	0x4023d494f69ca9ef              # double 9.9151989999999994
	.quad	0x4004e9cc319c5a3e              # double 2.6141589999999999
	.quad	0x4023c7460242d05f              # double 9.8892059999999997
	.quad	0x40166e40c8472c0e              # double 5.6076689999999996
	.quad	0x4012366772d5e072              # double 4.5531290000000002
	.quad	0x4014518bd66277c4              # double 5.0796349999999997
	.quad	0x400a813b18dac259              # double 3.3131010000000001
	.quad	0x401e0b9e492bc2fc              # double 7.5113459999999996
	.quad	0x40064af4f0d844d0              # double 2.7866
	.quad	0x3ff0cf1800a7c5ac              # double 1.0505599999999999
	.quad	0x40193e68e3ef2841              # double 6.3109469999999996
	.quad	0x40023c72e275ab7e              # double 2.2795160000000001
	.quad	0x4010a728a6117721              # double 4.1632410000000002
	.quad	0x4022413532e7b3d9              # double 9.1273590000000002
	.quad	0x4012e83dff3f0fe0              # double 4.7267989999999998
	.quad	0x3fb8ebedfa43fe5d              # double 0.097350000000000006
	.quad	0x3fe9bd35eb7457c1              # double 0.80434700000000003
	.quad	0x40038e08f2170931              # double 2.444353
	.quad	0x40235c0010c6f7a1              # double 9.6796880000000005
	.quad	0x401138cb07d0aeda              # double 4.3054620000000003
	.quad	0x40213a7aa68f4b62              # double 8.614217
	.quad	0x40224e0e94ee392e              # double 9.1524549999999998
	.quad	0x4020ccde7ea5f84d              # double 8.4001350000000006
	.quad	0x4023861e0c5a8156              # double 9.7619480000000003
	.quad	0x4010f785f8d2e515              # double 4.2417220000000002
	.quad	0x401af1e603d57796              # double 6.7362289999999998
	.quad	0x400841d6cf850df1              # double 3.0321479999999998
	.quad	0x4004f4a44c7b02d6              # double 2.6194540000000002
	.quad	0x402357993d5347a6              # double 9.6710910000000005
	.quad	0x400c5118c197e564              # double 3.5395979999999998
	.quad	0x3ff553e2d6238da4              # double 1.3329800000000001
	.quad	0x3fdb0c7c0f451761              # double 0.42263699999999998
	.quad	0x40189e13b18dac26              # double 6.1543720000000004
	.quad	0x400a679ee02a77a3              # double 3.3005960000000001
	.quad	0x3fe41b0468448cf8              # double 0.62829800000000002
	.quad	0x3fec71455219a848              # double 0.88882700000000003
	.quad	0x4020924e160d887f              # double 8.2857520000000005
	.quad	0x40115f60e0eb67c3              # double 4.3431430000000004
	.quad	0x40113b1c432ca57a              # double 4.3077249999999996
	.quad	0x4011f6e8af81626b              # double 4.4911219999999998
	.quad	0x3ff7d11f0c34c1a9              # double 1.4885550000000001
	.quad	0x4003556c0d6f544c              # double 2.4167100000000001
	.quad	0x3ff2cce703afb7e9              # double 1.175025
	.quad	0x40234dbe1a826245              # double 9.6518409999999992
	.quad	0x40212e5d5b24e9c4              # double 8.5905559999999994
	.quad	0x4017463fdd65a145              # double 5.8186030000000004
	.quad	0x40135f6f8f041462              # double 4.8431990000000003
	.quad	0x401cfc47a17f4129              # double 7.2463670000000002
	.quad	0x40069000431bde83              # double 2.8203130000000001
	.quad	0x4013aecc814d727a              # double 4.9207020000000004
	.quad	0x400bd7470eb24a6b              # double 3.4801160000000002
	.quad	0x401fa2d44dca8e2e              # double 7.9090129999999998
	.quad	0x3ff4057afea3df6e              # double 1.2513380000000001
	.quad	0x400688bfc2224edf              # double 2.8167719999999998
	.quad	0x4022a60ded288ce7              # double 9.324325
	.quad	0x400ef5371971c10d              # double 3.8697339999999998
	.quad	0x4023770c564f97ee              # double 9.7325160000000004
	.quad	0x401248344c37e6f7              # double 4.5705119999999999
	.quad	0x4016d6b11c6d1e11              # double 5.7096600000000004
	.quad	0x401b21e8a2ec28b3              # double 6.7831140000000003
	.quad	0x3faf518b0d0edc3c              # double 0.061169000000000001
	.quad	0x4015d0767d34df05              # double 5.4535770000000001
	.quad	0x3fca221c8a7a41e5              # double 0.20416599999999999
	.quad	0x401ba37585be1a82              # double 6.9096279999999997
	.quad	0x40205fe6b3fe9fae              # double 8.1873070000000006
	.quad	0x40104f3b213e3e29              # double 4.0773739999999998
	.quad	0x3fffa979e16d6dc2              # double 1.9788760000000001
	.quad	0x4013f94467381d7e              # double 4.9934250000000002
	.quad	0x4022dced6fda836f              # double 9.4314990000000005
	.quad	0x4011c3393ab430f5              # double 4.4406480000000004
	.quad	0x4012b51c5c5718ec              # double 4.6768660000000004
	.quad	0x40204370691ea78b              # double 8.1317170000000001
	.quad	0x3ffc3c579f234656              # double 1.764732
	.quad	0x401ca1c3ac929aa2              # double 7.1579730000000001
	.quad	0x3fd0e831ad2135db              # double 0.26417200000000002
	.quad	0x4021e26e5471715c              # double 8.9422479999999993
	.quad	0x4002e3ce2089e343              # double 2.3612329999999999
	.quad	0x401982235b4edb2f              # double 6.3770879999999996
	.quad	0x3fd2e9ccb7d41744              # double 0.29552
	.quad	0x40117e6bc621b7e1              # double 4.3734580000000003
	.quad	0x4021f22120e1f7d7              # double 8.9729089999999996
	.quad	0x4003e1908e581cf8              # double 2.4851390000000002
	.quad	0x4016039f340d4dc6              # double 5.5035369999999997
	.quad	0x4008c47d3d4280ae              # double 3.095942
	.quad	0x401889ca18bd6627              # double 6.1345599999999996
	.quad	0x40050a87e38eb032              # double 2.6301420000000002
	.quad	0x3ff7b4fe79ee02a7              # double 1.4816879999999999
	.quad	0x400bca27f1b69121              # double 3.4737089999999999
	.quad	0x4009b51a437824d5              # double 3.2134290000000001
	.quad	0x400801f7d73c9258              # double 3.0009610000000002
	.quad	0x402278296b3354c1              # double 9.2346909999999998
	.quad	0x3fdc40420f6f08cc              # double 0.44142199999999998
	.quad	0x3ff873743632c1f4              # double 1.528187
	.quad	0x4006339a7c17a893              # double 2.7751969999999999
	.quad	0x4014b050bd87b56c              # double 5.1721830000000004
	.quad	0x401f941743e963dc              # double 7.8946199999999997
	.quad	0x40203aceaaf35e31              # double 8.1148579999999999
	.quad	0x4004f7e5eaab0425              # double 2.6210439999999999
	.quad	0x4004f2acfb762d84              # double 2.6184940000000001
	.quad	0x40211f2b4528283d              # double 8.5608769999999996
	.quad	0x4023358be7296f65              # double 9.6045829999999998
	.quad	0x401c744e50c5eb31              # double 7.1135799999999998
	.quad	0x400b67c06e19b90f              # double 3.4256600000000001
	.quad	0x401ba48f96e15875              # double 6.910704
	.quad	0x40071178b3700475              # double 2.8835310000000001
	.quad	0x40222a70b06c43f6              # double 9.082891
	.quad	0x3ff10113c68661ae              # double 1.0627629999999999
	.quad	0x40226185ad538ac2              # double 9.1904730000000008
	.quad	0x4003bf623076c051              # double 2.4684490000000001
	.quad	0x3fec03c6c97d8cf4              # double 0.87546100000000004
	.quad	0x4008a68f4b61fe22              # double 3.0813280000000001
	.quad	0x40150f9e3864cb5c              # double 5.2652520000000003
	.quad	0x3fe65a89b951c5c5              # double 0.69855199999999995
	.quad	0x3ff49f212d773190              # double 1.2888500000000001
	.quad	0x400f7717df19d66b              # double 3.9331510000000001
	.quad	0x40226bf83382e44b              # double 9.2108779999999992
	.quad	0x40215df84cad57bc              # double 8.6835349999999991
	.quad	0x40133f83be6601bd              # double 4.8120260000000004
	.quad	0x4020ac8387df5cf2              # double 8.3369409999999995
	.quad	0x4021bf809917939a              # double 8.8740279999999991
	.quad	0x402392be48a58b3f              # double 9.7866079999999993
	.quad	0x402052d794a6eb92              # double 8.1618010000000005
	.quad	0x40069b3e1437c569              # double 2.8258019999999999
	.quad	0x3ff374e3369b9d80              # double 1.216037
	.quad	0x4021cd887ebf22c0              # double 8.9014319999999998
	.quad	0x401e2b8c75c4a83b              # double 7.5425279999999998
	.quad	0x401d404c05921038              # double 7.3127899999999996
	.quad	0x3ffcfef284167a96              # double 1.812243
	.quad	0x40223dd91ab8e8ea              # double 9.1207969999999996
	.quad	0x3ffb578811b1d92b              # double 1.7088699999999999
	.quad	0x3fc023854046412d              # double 0.126084
	.quad	0x3fe9ce9c4545846f              # double 0.80647100000000005
	.quad	0x40062c692f6e8295              # double 2.7716850000000002
	.quad	0x402047cfe5860136              # double 8.1402579999999993
	.quad	0x3fec5a8deb0fadf3              # double 0.88605400000000001
	.quad	0x400f7d052934acb0              # double 3.936045
	.quad	0x3fe0e8cac4b4d057              # double 0.52841700000000003
	.quad	0x40092a16a4873366              # double 3.1455510000000002
	.quad	0x4021df4d37c1376d              # double 8.9361359999999994
	.quad	0x40083043e5321e60              # double 3.0235669999999999
	.quad	0x4020c86d50657321              # double 8.3914589999999993
	.quad	0x401df148344c37e7              # double 7.485627
	.quad	0x40142ea0fd3b29a2              # double 5.0455360000000002
	.quad	0x3fb237de939eadd6              # double 0.071165000000000006
	.quad	0x3fd1b87bdcf0307f              # double 0.27688499999999999
	.quad	0x4023fd1761459536              # double 9.9943190000000008
	.quad	0x40077e81450efdca              # double 2.9367700000000001
	.quad	0x3fe54ca925fe974a              # double 0.66560799999999998
	.quad	0x3ff24d51f81a5871              # double 1.143877
	.quad	0x4012e892ee84ad79              # double 4.7271229999999997
	.quad	0x40194a76d97b30f9              # double 6.3227190000000002
	.quad	0x4010303bc4d22c88              # double 4.0471029999999999
	.quad	0x3fd544fa05143bf7              # double 0.33233499999999999
	.quad	0x401ad0574b407033              # double 6.7034580000000004
	.quad	0x3ff6240a6b93ccd1              # double 1.383799
	.quad	0x402151f46ed245b3              # double 8.6600680000000008
	.quad	0x3ffb5b59578a2a91              # double 1.709802
	.quad	0x3f9b8e086bdf4c2b              # double 0.026908999999999999
	.quad	0x4007d0d0678c0054              # double 2.9769600000000001
	.quad	0x3ff5e6b0d9513f8e              # double 1.3688210000000001
	.quad	0x401784b3c3e74afd              # double 5.8795919999999997
	.quad	0x402249cae21101b0              # double 9.144126
	.quad	0x4020f79ca5bd944b              # double 8.4836170000000006
	.quad	0x4006d97fe8ee6b83              # double 2.856201
	.quad	0x4020186bdf4c2b52              # double 8.0476980000000005
	.quad	0x400bf20535c9e668              # double 3.4931739999999998
	.quad	0x4023e9531550ca1d              # double 9.9557120000000001
	.quad	0x400ffa2834d26fa4              # double 3.997147
	.quad	0x3fe761e4f765fd8b              # double 0.73070000000000002
	.quad	0x401dc700cd855971              # double 7.4443390000000003
	.quad	0x4016a4ab606b7aa2              # double 5.6608099999999997
	.quad	0x40133a0ec7432010              # double 4.8066969999999998
	.quad	0x4016570b49e01de2              # double 5.5850039999999996
	.quad	0x40034d8ec95bff04              # double 2.4128699999999998
	.quad	0x401ec40a2877ee4e              # double 7.6914449999999999
	.quad	0x40089f972474538f              # double 3.077925
	.quad	0x3fcf0b1feeb2d0a2              # double 0.24252699999999999
	.quad	0x401e8c54bcf0b6b7              # double 7.6370420000000001
	.quad	0x4005e852b4d8ba41              # double 2.7384390000000001
	.quad	0x3fde429e0a41a262              # double 0.47281600000000001
	.quad	0x3fe13061c79b34a4              # double 0.53715599999999997
	.quad	0x400d424dd2f1a9fc              # double 3.657375
	.quad	0x3ff6895182a9930c              # double 1.408525
	.quad	0x4020f0a41a261bf3              # double 8.4700019999999991
	.quad	0x4005ee9e5e247885              # double 2.7415129999999999
	.quad	0x4021a6b69db65ecc              # double 8.8256119999999995
	.quad	0x401cad70a3d70a3d              # double 7.1693749999999996
	.quad	0x3fc8c70867ad8e43              # double 0.193574
	.quad	0x401c1848387df5cf              # double 7.0237129999999999
	.quad	0x401e586b9c304ccf              # double 7.586348
	.quad	0x4020a24edf612407              # double 8.3170079999999995
	.quad	0x401a3d14e3bcd35b              # double 6.5596500000000004
	.quad	0x401fcfb8b26394fb              # double 7.9528530000000001
	.quad	0x40183b5568e820e6              # double 6.0579429999999999
	.quad	0x3fcc763a19008206              # double 0.222358
	.quad	0x3ff754fce746cb96              # double 1.4582489999999999
	.quad	0x401a6a6b0d9513f9              # double 6.6039240000000001
	.quad	0x401aae29b6b2af14              # double 6.6700809999999997
	.quad	0x40227058ff759685              # double 9.2194289999999999
	.quad	0x401c74eb13dfb0d5              # double 7.1141779999999999
	.quad	0x4019ec34c1a8ac5c              # double 6.4806699999999999
	.quad	0x40236533f42352eb              # double 9.6976619999999993
	.quad	0x40204817dae81883              # double 8.1408070000000006
	.quad	0x3ffe3a42f1ed17c6              # double 1.889224
	.quad	0x40148ead0c3d2524              # double 5.1393319999999996
	.quad	0x400f1959a30984e4              # double 3.887378
	.quad	0x401b11743e963dc5              # double 6.7670450000000004
	.quad	0x401c453c579f2346              # double 7.0676129999999997
	.quad	0x4014dd0e991ff716              # double 5.2158759999999997
	.quad	0x402370941c8216c6              # double 9.7198799999999999
	.quad	0x4016b6d71f36262d              # double 5.6785550000000002
	.quad	0x401c66f6512a94ff              # double 7.100549
	.quad	0x4022365d5b24e9c4              # double 9.1061809999999994
	.quad	0x3f64db59578a2a91              # double 0.0025460000000000001
	.quad	0x4013cebd4cfd08d5              # double 4.9518940000000002
	.quad	0x4009b567dbb16c1e              # double 3.2135769999999999
	.quad	0x401c9ab430f49492              # double 7.151078
	.quad	0x40115de69ad42c3d              # double 4.3417000000000003
	.quad	0x3fc9053198288052              # double 0.19547100000000001
	.quad	0x401530c67168f8e8              # double 5.2976320000000001
	.quad	0x3fe9035371971c11              # double 0.78165600000000002
	.quad	0x40194b0d9513f8db              # double 6.3232939999999997
	.quad	0x4014a295208e1501              # double 5.1587719999999999
	.quad	0x40238cfd4bf0995b              # double 9.7753700000000005
	.quad	0x4004d06cca2db61c              # double 2.6017700000000001
	.quad	0x4015f45564b662fe              # double 5.488607
	.quad	0x400a7350092ccf6c              # double 3.306305
	.quad	0x40078d080b673c4f              # double 2.9438629999999999
	.quad	0x4023ab8023a6ce36              # double 9.8349620000000009
	.quad	0x4011144bf4cb1898              # double 4.2698210000000003
	.quad	0x4004edb37c99ae92              # double 2.6160649999999999
	.quad	0x3ff87e835dedf1e1              # double 1.5308870000000001
	.quad	0x3ff03e0ce0b912dc              # double 1.0151490000000001
	.quad	0x400b529ed3953dea              # double 3.4153419999999999
	.quad	0x4000815b1422ccb4              # double 2.0631620000000002
	.quad	0x3ff844cbe1eb4203              # double 1.516796
	.quad	0x401a8ff92f2b66b6              # double 6.6405989999999999
	.quad	0x401fff61aa3f034b              # double 7.9993959999999999
	.quad	0x4010abfb58d1526e              # double 4.1679510000000004
	.quad	0x4006bdddb1209edc              # double 2.842708
	.quad	0x4016d2d9cf13ceea              # double 5.7059090000000001
	.quad	0x4020655de58e64b2              # double 8.1979819999999997
	.quad	0x401ec0f6f08cc576              # double 7.6884420000000002
	.quad	0x401097aaef2c7326              # double 4.1481130000000004
	.quad	0x3ff5a5bc87db2b34              # double 1.3529629999999999
	.quad	0x4021765ffa3b9ae1              # double 8.7312010000000004
	.quad	0x4021298cc144028e              # double 8.5811519999999994
	.quad	0x3ff32a077036c9c1              # double 1.1977610000000001
	.quad	0x40170b9d3cbc48f1              # double 5.761342
	.quad	0x401df72b884406c0              # double 7.491377
	.quad	0x4011fbc408d8ec96              # double 4.4958650000000002
	.quad	0x3fdf01d5c31593e6              # double 0.484487
	.quad	0x402140ced4e4c943              # double 8.6265780000000003
	.quad	0x401e03b85e80bed7              # double 7.5036329999999997
	.quad	0x401a9fdc1615ebfb              # double 6.6561130000000004
	.quad	0x4019e5529fe004b8              # double 6.473948
	.quad	0x4013e4ea4a8c154d              # double 4.9735500000000004
	.quad	0x402120793dd97f63              # double 8.5634250000000005
	.quad	0x3ff71f1bef49cf57              # double 1.445095
	.quad	0x4022f9522a6f3f53              # double 9.486955
	.quad	0x4022340cc78e9f6b              # double 9.1016600000000007
	.quad	0x401ce4a1272c94b4              # double 7.2232710000000004
	.quad	0x40201772b4528284              # double 8.0457970000000003
	.quad	0x401666638433d6c7              # double 5.5999889999999999
	.quad	0x4016d043a2163fdd              # double 5.7033829999999996
	.quad	0x3ffbc677b395c422              # double 1.735954
	.quad	0x401e4a311e85fd05              # double 7.5724530000000003
	.quad	0x4022de61ae70c133              # double 9.4343389999999995
	.quad	0x40235f13ad5bee3d              # double 9.6856969999999993
	.quad	0x40013fa2ad3e920c              # double 2.156072
	.quad	0x401c4cbee807bbb6              # double 7.0749469999999999
	.quad	0x4016b75a74c09c3d              # double 5.6790560000000001
	.quad	0x40041eaab042528b              # double 2.514974
	.quad	0x401a6b69984a0e41              # double 6.604895
	.quad	0x401635b4245f5ad9              # double 5.5524449999999996
	.quad	0x400dadfce3150dae              # double 3.7099549999999999
	.quad	0x3fe6100e6afcce1c              # double 0.68945999999999996
	.quad	0x40213e7d77fae361              # double 8.6220510000000008
	.quad	0x4020b677f6b1a2a5              # double 8.3563840000000003
	.quad	0x401475d851654d62              # double 5.1150830000000003
	.quad	0x4015f017dae81883              # double 5.4844660000000003
	.quad	0x401364cf4a558ea8              # double 4.8484470000000002
	.quad	0x3ff691aeb3dd11be              # double 1.4105669999999999
	.quad	0x4001442d05f28848              # double 2.1582889999999999
	.quad	0x3fecbd8383ad9f0a              # double 0.89813399999999999
	.quad	0x400814d4024b33db              # double 3.01017
	.quad	0x400a4215336deb96              # double 3.282267
	.quad	0x40220fdf5cf2495e              # double 9.0310009999999998
	.quad	0x402171ad42c3c9ef              # double 8.7220250000000004
	.quad	0x4003a68c26139000              # double 2.4563220000000001
	.quad	0x4018c50507a6bd6f              # double 6.1924020000000004
	.quad	0x4010ff0563ed0f62              # double 4.2490439999999996
	.quad	0x4010dbf5946c332f              # double 4.214804
	.quad	0x4001ea57214f0521              # double 2.2394240000000001
	.quad	0x401e00d5629d840a              # double 7.5008140000000001
	.quad	0x4022336bf444e0db              # double 9.1004330000000007
	.quad	0x40200ed634549b63              # double 8.0289780000000004
	.quad	0x4001f8f0c77dd873              # double 2.246553
	.quad	0x401a7e2c12ad81ae              # double 6.6232150000000001
	.quad	0x40221888b545c78a              # double 9.0479179999999992
	.quad	0x4015c86162f166e0              # double 5.445684
	.quad	0x401de46e8f29d40f              # double 7.4730780000000001
	.quad	0x3fc3d31337eb28d8              # double 0.15487899999999999
	.quad	0x401138ac5c13fd0d              # double 4.305345
	.quad	0x3ff39883ba3443d4              # double 1.2247349999999999
	.quad	0x401d3a67e846a5d7              # double 7.3070370000000002
	.quad	0x4010db46bacf7447              # double 4.214137
	.quad	0x3ffee39713ad5bee              # double 1.9305639999999999
	.quad	0x4016c3d89ce4a7b5              # double 5.6912560000000001
	.quad	0x40221790d9d7774b              # double 9.0460270000000005
	.quad	0x4013cd43d03968d7              # double 4.9504539999999997
	.quad	0x402174373f316e37              # double 8.7269839999999999
	.quad	0x4023b5a76d97b310              # double 9.8547930000000008
	.quad	0x40149229e90795f6              # double 5.1427379999999996
	.quad	0x402327a22706d506              # double 9.5774089999999994
	.quad	0x401f46887a8d64d8              # double 7.81888
	.quad	0x401874fce746cb96              # double 6.1142459999999996
	.quad	0x3fff497c80841ede              # double 1.955441
	.quad	0x401f65c5b4aa9718              # double 7.8493870000000001
	.quad	0x3ffad48a9bcfd4bf              # double 1.67689
	.quad	0x4018a2b4d8ba40d9              # double 6.158893
	.quad	0x40179424a276b7ed              # double 5.8946709999999998
	.quad	0x4022ba163fdd65a1              # double 9.3634509999999995
	.quad	0x400ee2e33eff1950              # double 3.8607849999999999
	.quad	0x401d3c3f811f4f51              # double 7.3088360000000003
	.quad	0x40024f9873ffac1d              # double 2.2888649999999999
	.quad	0x4018d01d5c31593e              # double 6.2032369999999997
	.quad	0x401691c8a7a41e58              # double 5.6423670000000001
	.quad	0x400c8b9b23dd54da              # double 3.5681669999999999
	.quad	0x40234250f840181e              # double 9.629524
	.quad	0x40146bf2f5558213              # double 5.1054190000000004
	.quad	0x40224c08d8ec95c0              # double 9.1485050000000001
	.quad	0x4013dc054ef459da              # double 4.9648640000000004
	.quad	0x4018446aa087ca64              # double 6.0668129999999998
	.quad	0x40229fecfe9b7bf2              # double 9.3123550000000002
	.quad	0x400c9460242d05f3              # double 3.5724490000000002
	.quad	0x400ae8ffb8b26395              # double 3.363769
	.quad	0x3ffbabc2fc69728a              # double 1.7294339999999999
	.quad	0x4016eb313be22e5e              # double 5.7296800000000001
	.quad	0x401fca77a2cecc81              # double 7.9477219999999997
	.quad	0x400b8fb7e90ff972              # double 3.4451749999999999
	.quad	0x40134c9ea9a3d2d8              # double 4.8248239999999996
	.quad	0x4021302cb20fb225              # double 8.5940910000000006
	.quad	0x3fe7aaf35e310dbf              # double 0.739618
	.quad	0x4020436523704791              # double 8.1316310000000005
	.quad	0x40149db5525cc426              # double 5.1540119999999998
	.quad	0x400826d04e618ce3              # double 3.0189520000000001
	.quad	0x400be316a055757d              # double 3.4858829999999998
	.quad	0x40152268d32830a1              # double 5.2836030000000003
	.quad	0x401df1843c3a42f2              # double 7.4858560000000001
	.quad	0x401ebf63c31df762              # double 7.6869040000000002
	.quad	0x3ff069d8409e55c1              # double 1.025841
	.quad	0x400e76cbd987c632              # double 3.8080059999999998
	.quad	0x3ffc9350092ccf6c              # double 1.785965
	.quad	0x401f382ecaeea63b              # double 7.8048659999999996
	.quad	0x401a226634117f84              # double 6.5335929999999998
	.quad	0x3fcf907d912556d2              # double 0.24659700000000001
	.quad	0x4019b9274e22a2c2              # double 6.4308139999999998
	.quad	0x402378df37329c34              # double 9.7360779999999991
	.quad	0x40162c3c5bd0e12f              # double 5.5431990000000004
	.quad	0x3ff8bd7d3910c2c6              # double 1.546262
	.quad	0x401fd4c87980f55e              # double 7.9577960000000001
	.quad	0x3ffdcf605ab3aabd              # double 1.863129
	.quad	0x40236696c3fc43b3              # double 9.7003690000000002
	.quad	0x401d78a1dfb9389b              # double 7.3678049999999997
	.quad	0x401dc61a60d4562e              # double 7.44346
	.quad	0x3fef1337eb28d866              # double 0.97109599999999996
	.quad	0x4007fc3a42f1ed18              # double 2.9981580000000001
	.quad	0x4002ff40a2877ee5              # double 2.3746350000000001
	.quad	0x3ff3baeddce7cd03              # double 1.2331369999999999
	.quad	0x4018f3a81dc0db27              # double 6.237946
	.quad	0x401328c0053e2d62              # double 4.7897949999999998
	.quad	0x401f43f52fc2656b              # double 7.8163650000000002
	.quad	0x400b338cda6e75ff              # double 3.4001709999999998
	.quad	0x40219339192641b3              # double 8.7875449999999997
	.quad	0x4019d85b9e8c47a1              # double 6.4612869999999996
	.quad	0x40120ef0ae536502              # double 4.5145900000000001
	.quad	0x40207a3fcc9ea9a4              # double 8.2387680000000003
	.quad	0x401ca4a98aa8650e              # double 7.1608029999999996
	.quad	0x401d37e06961c369              # double 7.3045669999999996
	.quad	0x3fd0139c94f69caa              # double 0.251197
	.quad	0x401262e44b6e935c              # double 4.5965740000000004
	.quad	0x400ade9ea1405708              # double 3.3587009999999999
	.quad	0x401f14d61b2a27f2              # double 7.7703480000000003
	.quad	0x3fda9cc319c5a3e4              # double 0.41581800000000002
	.quad	0x40213d410f94c87a              # double 8.6196370000000009
	.quad	0x3ff1452934acaff7              # double 1.079385
	.quad	0x4018275e6362a5e8              # double 6.0384460000000004
	.quad	0x402250fa7a85015c              # double 9.1581609999999997
	.quad	0x40169cdc011d3672              # double 5.6531830000000003
	.quad	0x4001a2d948dc11e4              # double 2.2045159999999999
	.quad	0x3ff6172367e414e8              # double 1.380649
	.quad	0x40021844d013a92a              # double 2.2618499999999999
	.quad	0x4000f3abc947064f              # double 2.1189800000000001
	.quad	0x4020d9461b6d43d0              # double 8.4243629999999996
	.quad	0x40204094e5d5b24f              # double 8.1261360000000007
	.quad	0x3fc16451b93037d6              # double 0.13587399999999999
	.quad	0x401e0c2eba27ae9b              # double 7.5118970000000002
	.quad	0x400f5a06a6e32e38              # double 3.9189579999999999
	.quad	0x401d89fc2a8869c6              # double 7.3847509999999996
	.quad	0x4019252deca2552a              # double 6.286308
	.quad	0x401e4fa48301a7a0              # double 7.5777760000000001
	.quad	0x4012afac6045baf5              # double 4.6715559999999998
	.quad	0x40130c41dd1a21ea              # double 4.7619699999999998
	.quad	0x401a5254e6e221c9              # double 6.5804020000000003
	.quad	0x4020ccaf709b738e              # double 8.3997759999999992
	.quad	0x401cf606748e4756              # double 7.240259
	.quad	0x401d1a1c25d07421              # double 7.2754979999999998
	.quad	0x401f1cb9ecf63800              # double 7.7780529999999999
	.quad	0x4010ea5c1c6088d7              # double 4.2288670000000002
	.quad	0x401e7261bf37b8d4              # double 7.6117010000000001
	.quad	0x400c1ce4a7b4e54f              # double 3.5141079999999998
	.quad	0x4022048c7192ea53              # double 9.0088840000000001
	.quad	0x401b885f06f69446              # double 6.8831749999999996
	.quad	0x400ee0357a355044              # double 3.859477
	.quad	0x3fea199780baa583              # double 0.81562400000000002
	.quad	0x401f155e6bc621b8              # double 7.7708680000000001
	.quad	0x4018974aba387592              # double 6.1477459999999997
	.quad	0x3fa14a0a0f4d7add              # double 0.033767999999999999
	.quad	0x401c9e308787485e              # double 7.1544819999999998
	.quad	0x40211e67f90d9d77              # double 8.5593869999999992
	.quad	0x40223bdd11be6e65              # double 9.1169209999999996
	.quad	0x4018e08f21709310              # double 6.2192959999999999
	.quad	0x4010e4c165907d91              # double 4.2233939999999999
	.quad	0x401734845132f87b              # double 5.8012860000000002
	.quad	0x400bc8af81626b2f              # double 3.4729909999999999
	.quad	0x40203d99cbee807c              # double 8.1203140000000004
	.quad	0x3ff5b6a93f290abb              # double 1.3570949999999999
	.quad	0x4002a6f2e8c0485a              # double 2.331518
	.quad	0x401c88dc11e42e12              # double 7.1336519999999997
	.quad	0x3ff536b8f9b13166              # double 1.32586
	.quad	0x3fe8ce8d972cd7cf              # double 0.77521399999999996
	.quad	0x401ad65c2d278078              # double 6.7093360000000004
	.quad	0x4022abac929aa1d7              # double 9.3353009999999994
	.quad	0x401a614488c60cbf              # double 6.5949879999999999
	.quad	0x400c136694898f60              # double 3.5094729999999998
	.quad	0x4010c8887229e908              # double 4.1958330000000004
	.quad	0x4023e9244a6223e2              # double 9.9553550000000008
	.quad	0x400309142b302f73              # double 2.3794330000000001
	.quad	0x400a52da122fad6d              # double 3.2904550000000001
	.quad	0x401f595810624dd3              # double 7.83725
	.quad	0x400297fb69984a0e              # double 2.3242099999999999
	.quad	0x401c572e275ab7dc              # double 7.0851369999999996
	.quad	0x402375d56f32bdc2              # double 9.7301439999999992
	.quad	0x402235fd8adab9f5              # double 9.1054499999999994
	.quad	0x3fd14bec679cc74c              # double 0.27025900000000003
	.quad	0x4007f284167a95c8              # double 2.9934159999999999
	.quad	0x401935baf533f423              # double 6.3024709999999997
	.quad	0x401ee0a4a05dd8f9              # double 7.7193779999999998
	.quad	0x3fa7243137b07076              # double 0.045198000000000002
	.quad	0x4021bf61672324c8              # double 8.8737899999999996
	.quad	0x401dfc9a34ca0c28              # double 7.4966819999999998
	.quad	0x40210958750c1b97              # double 8.5182529999999996
	.quad	0x3ff3d74d594f26af              # double 1.2400640000000001
	.quad	0x4015771ef30a4e38              # double 5.3663290000000003
	.quad	0x3fef1ad2135daad6              # double 0.972024
	.quad	0x40093b5b70691ea8              # double 3.1539830000000002
	.quad	0x40136dc0980b2420              # double 4.8571799999999996
	.quad	0x4017149774256bca              # double 5.7701089999999997
	.quad	0x3ffde327ed84d339              # double 1.867958
	.quad	0x401d048344c37e6f              # double 7.2544069999999996
	.quad	0x400160c38f366949              # double 2.1722480000000002
	.quad	0x400c7b39e279dd3c              # double 3.5601690000000001
	.quad	0x40151f26aec0724b              # double 5.2804209999999996
	.quad	0x3fc63c64345cfedf              # double 0.17371800000000001
	.quad	0x400d310b1feeb2d1              # double 3.6489470000000002
	.quad	0x40207068fd199bb2              # double 8.2195509999999992
	.quad	0x40191c743201040c              # double 6.277787
	.quad	0x3ff18e325d4a5df2              # double 1.097216
	.quad	0x400cbab10ba62670              # double 3.5911580000000001
	.quad	0x401e9e8858ff7597              # double 7.6548170000000004
	.quad	0x4020b420d5629d84              # double 8.3518129999999999
	.quad	0x40171eb1c432ca58              # double 5.7799750000000003
	.quad	0x40218c2224edf612              # double 8.7736979999999996
	.quad	0x4009f50f40e5a35d              # double 3.2446579999999998
	.quad	0x401b0e8e60807358              # double 6.7642150000000001
	.quad	0x40105959a30984e4              # double 4.087256
	.quad	0x3ff2ff540895d0b7              # double 1.1873359999999999
	.quad	0x40182ed8d36b4c7f              # double 6.0457489999999998
	.quad	0x40079c01a36e2eb2              # double 2.9511750000000001
	.quad	0x4018ed4cfd08d4bb              # double 6.2317390000000001
	.quad	0x401f55fcc1871e6d              # double 7.8339720000000001
	.quad	0x40125f6f4be835df              # double 4.5931980000000001
	.quad	0x400aa7ea5f84cad5              # double 3.3319899999999998
	.quad	0x4020579b34a44c7b              # double 8.171106
	.quad	0x4012569f05ea24cc              # double 4.5845909999999996
	.quad	0x40217f27136a4010              # double 8.7483450000000005
	.quad	0x4023d6931876188b              # double 9.9190909999999998
	.quad	0x3ffabe9fadafd114              # double 1.6715390000000001
	.quad	0x401109656eefa1e4              # double 4.2591760000000001
	.quad	0x401c66de76427c7c              # double 7.1004579999999997
	.quad	0x401535fa22706d50              # double 5.3027119999999996
	.quad	0x40141738e6d15ad1              # double 5.022678
	.quad	0x401e0e410b630a91              # double 7.5139199999999997
	.size	.L__constant_999xf64, 7992

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
