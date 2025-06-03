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
	.quad	0x4133774461733227              # double 1275716.3806640001
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
	lui	a1, %hi(.L__constant_101xindex_0)
	addi	a1, a1, %lo(.L__constant_101xindex_0)
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
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	67                              # 0x43
	.quad	115                             # 0x73
	.quad	136                             # 0x88
	.quad	154                             # 0x9a
	.quad	198                             # 0xc6
	.quad	218                             # 0xda
	.quad	237                             # 0xed
	.quad	277                             # 0x115
	.quad	299                             # 0x12b
	.quad	313                             # 0x139
	.quad	353                             # 0x161
	.quad	364                             # 0x16c
	.quad	382                             # 0x17e
	.quad	424                             # 0x1a8
	.quad	442                             # 0x1ba
	.quad	452                             # 0x1c4
	.quad	494                             # 0x1ee
	.quad	501                             # 0x1f5
	.quad	507                             # 0x1fb
	.quad	546                             # 0x222
	.quad	561                             # 0x231
	.quad	579                             # 0x243
	.quad	618                             # 0x26a
	.quad	631                             # 0x277
	.quad	647                             # 0x287
	.quad	692                             # 0x2b4
	.quad	705                             # 0x2c1
	.quad	716                             # 0x2cc
	.quad	760                             # 0x2f8
	.quad	777                             # 0x309
	.quad	794                             # 0x31a
	.quad	844                             # 0x34c
	.quad	858                             # 0x35a
	.quad	872                             # 0x368
	.quad	915                             # 0x393
	.quad	929                             # 0x3a1
	.quad	943                             # 0x3af
	.quad	983                             # 0x3d7
	.quad	988                             # 0x3dc
	.quad	1008                            # 0x3f0
	.quad	1046                            # 0x416
	.quad	1063                            # 0x427
	.quad	1075                            # 0x433
	.quad	1119                            # 0x45f
	.quad	1139                            # 0x473
	.quad	1156                            # 0x484
	.quad	1201                            # 0x4b1
	.quad	1211                            # 0x4bb
	.quad	1227                            # 0x4cb
	.quad	1272                            # 0x4f8
	.quad	1293                            # 0x50d
	.quad	1306                            # 0x51a
	.quad	1351                            # 0x547
	.quad	1370                            # 0x55a
	.quad	1379                            # 0x563
	.quad	1427                            # 0x593
	.quad	1443                            # 0x5a3
	.quad	1453                            # 0x5ad
	.quad	1497                            # 0x5d9
	.quad	1517                            # 0x5ed
	.quad	1533                            # 0x5fd
	.quad	1578                            # 0x62a
	.quad	1589                            # 0x635
	.quad	1600                            # 0x640
	.quad	1645                            # 0x66d
	.quad	1664                            # 0x680
	.quad	1684                            # 0x694
	.quad	1736                            # 0x6c8
	.quad	1753                            # 0x6d9
	.quad	1765                            # 0x6e5
	.quad	1807                            # 0x70f
	.quad	1825                            # 0x721
	.quad	1837                            # 0x72d
	.quad	1883                            # 0x75b
	.quad	1901                            # 0x76d
	.quad	1918                            # 0x77e
	.quad	1959                            # 0x7a7
	.quad	1980                            # 0x7bc
	.quad	1999                            # 0x7cf
	.quad	2048                            # 0x800
	.quad	2062                            # 0x80e
	.quad	2081                            # 0x821
	.quad	2124                            # 0x84c
	.quad	2139                            # 0x85b
	.quad	2152                            # 0x868
	.quad	2197                            # 0x895
	.quad	2211                            # 0x8a3
	.quad	2226                            # 0x8b2
	.quad	2271                            # 0x8df
	.quad	2292                            # 0x8f4
	.quad	2307                            # 0x903
	.quad	2348                            # 0x92c
	.quad	2370                            # 0x942
	.quad	2383                            # 0x94f
	.quad	2426                            # 0x97a
	.quad	2441                            # 0x989
	.quad	2457                            # 0x999
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	61                              # 0x3d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	96                              # 0x60
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
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
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
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
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
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
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	26                              # 0x1a
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	43                              # 0x2b
	.quad	57                              # 0x39
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
	.quad	67                              # 0x43
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	38                              # 0x26
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
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
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
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	16                              # 0x10
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	31                              # 0x1f
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	98                              # 0x62
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	58                              # 0x3a
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	86                              # 0x56
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	44                              # 0x2c
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
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
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	83                              # 0x53
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
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
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
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
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
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
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x401d061a1db877ab              # double 7.2559589999999998
	.quad	0x4022f4660a201472              # double 9.4773409999999991
	.quad	0x401963bf727136a4              # double 6.34741
	.quad	0x401e8b5ed8d36b4c              # double 7.6361039999999996
	.quad	0x4016c4ead0c3d252              # double 5.6923019999999998
	.quad	0x401f72f2f9873ffb              # double 7.8622550000000002
	.quad	0x402256b80ecfa69c              # double 9.1693730000000002
	.quad	0x4023fcd22c881e47              # double 9.9937909999999998
	.quad	0x4016ec1094a2b9d4              # double 5.7305320000000002
	.quad	0x400918655193708b              # double 3.1369120000000001
	.quad	0x3ff28f6dfc5cdd51              # double 1.1600170000000001
	.quad	0x3fb6376922d948dc              # double 0.086782999999999999
	.quad	0x401c392e62131a8f              # double 7.055841
	.quad	0x4018b71f79420b3d              # double 6.1788309999999997
	.quad	0x4023fb3edd8b60f2              # double 9.9907140000000005
	.quad	0x4019a6deb95e5aff              # double 6.4129589999999999
	.quad	0x401e6de97d06bbdc              # double 7.6073360000000001
	.quad	0x3fec1cc74b838c11              # double 0.87851299999999999
	.quad	0x401faec7863beec4              # double 7.9206830000000004
	.quad	0x4020e171c10d7bea              # double 8.4403210000000009
	.quad	0x401e7b97785729b3              # double 7.6206950000000004
	.quad	0x4018aa89b951c5c5              # double 6.1665409999999996
	.quad	0x401b5ec99f1ae2da              # double 6.8425659999999997
	.quad	0x4008af566490a351              # double 3.0856140000000001
	.quad	0x400604b90214ad36              # double 2.7523059999999999
	.quad	0x4012d1a11233df2b              # double 4.7047160000000003
	.quad	0x4012b9841aac53b1              # double 4.6811680000000004
	.quad	0x3fe989edbf8b9baa              # double 0.79808699999999999
	.quad	0x401e6ee45c358afc              # double 7.6082929999999998
	.quad	0x40161682f944241c              # double 5.5219839999999998
	.quad	0x4011d5985ad538ac              # double 4.4585889999999999
	.quad	0x3ff791cb039ef0f1              # double 1.4730939999999999
	.quad	0x4015f5f2452c59fb              # double 5.4901819999999999
	.quad	0x3ff70299d883ba34              # double 1.4381349999999999
	.quad	0x40194398e9707182              # double 6.3160129999999999
	.quad	0x4009c5b5b70691ea              # double 3.2215379999999998
	.quad	0x400de9fe004b7f5a              # double 3.7392539999999999
	.quad	0x400eaaf35e310dbf              # double 3.833472
	.quad	0x4018310b1feeb2d1              # double 6.0478940000000003
	.quad	0x40051028a1dfb939              # double 2.6328900000000002
	.quad	0x4019cca686e7e62e              # double 6.4498540000000002
	.quad	0x401e569fcf3dc055              # double 7.584594
	.quad	0x401f2834091c0874              # double 7.7892609999999998
	.quad	0x401444e7685985ad              # double 5.0672889999999997
	.quad	0x40084c2a454de7ea              # double 3.0371899999999998
	.quad	0x3fcab474107314cb              # double 0.20863200000000001
	.quad	0x4022d7dfc19c1722              # double 9.4216289999999994
	.quad	0x3fc3e97d06bbdbe4              # double 0.15556300000000001
	.quad	0x3fce15e39713ad5c              # double 0.235043
	.quad	0x4005fd4306e5cd4f              # double 2.7486630000000001
	.quad	0x3ffec4ec636b0963              # double 1.9230769999999999
	.quad	0x400be7b2cc70867b              # double 3.4881340000000001
	.quad	0x4017a8c0485a0be5              # double 5.9147959999999999
	.quad	0x40130ac81d3aa36a              # double 4.760529
	.quad	0x3fdd0e8c8abd5dc4              # double 0.454013
	.quad	0x3ffe34cd31769a91              # double 1.887891
	.quad	0x4017e0c4dec1c1d7              # double 5.9695010000000002
	.quad	0x40114e0370cdc875              # double 4.3261849999999997
	.quad	0x4000e7dd44135547              # double 2.1132149999999998
	.quad	0x4023d34395810625              # double 9.9126250000000002
	.quad	0x401b0644d87724fb              # double 6.7561220000000004
	.quad	0x4021eb15d701d9f5              # double 8.9591510000000003
	.quad	0x4018b7cc7d1bb491              # double 6.1794909999999996
	.quad	0x4010198c3b0c4589              # double 4.0249490000000003
	.quad	0x3fd20cae642bf983              # double 0.282024
	.quad	0x4023b7ffbce4217d              # double 9.8593729999999997
	.quad	0x4015c64e48626f61              # double 5.4436580000000001
	.quad	0x401649fd7a13c255              # double 5.5722560000000003
	.quad	0x4017b6b441bb8c33              # double 5.9284220000000003
	.quad	0x401c12ccf6be37df              # double 7.0183600000000004
	.quad	0x401943c254a3c643              # double 6.3161709999999998
	.quad	0x401eaa2014727dcc              # double 7.6661380000000001
	.quad	0x4016ef0f5a1016ce              # double 5.7334569999999996
	.quad	0x401fac5c5718eb89              # double 7.9183209999999997
	.quad	0x4023ede939eadd59              # double 9.9646699999999999
	.quad	0x4022a4d573647bab              # double 9.3219410000000007
	.quad	0x4007c60242d05f29              # double 2.9716840000000002
	.quad	0x4003ec36da87a073              # double 2.4903390000000001
	.quad	0x3fe13b01c92ddbdb              # double 0.53845299999999996
	.quad	0x401ed9107faa044b              # double 7.711977
	.quad	0x4022651244a6223e              # double 9.1974049999999998
	.quad	0x402056616b54e2b0              # double 8.1687119999999993
	.quad	0x401b6107faa044af              # double 6.8447570000000004
	.quad	0x4021e19e94ab1d50              # double 8.9406630000000007
	.quad	0x401ac5dfa871a3b1              # double 6.6932359999999997
	.quad	0x401d57ea5f84cad5              # double 7.3358549999999996
	.quad	0x40195752da98676a              # double 6.3352769999999996
	.quad	0x40211221ea359360              # double 8.5354150000000004
	.quad	0x401518cf7caa758a              # double 5.2742290000000001
	.quad	0x4005b7c5ef62f9ca              # double 2.7147329999999998
	.quad	0x3fd87efe0ce0b913              # double 0.38275100000000001
	.quad	0x402004bd76ee73e7              # double 8.0092580000000009
	.quad	0x400858bef8ceb357              # double 3.0433330000000001
	.quad	0x3ff574dad31fcd25              # double 1.341029
	.quad	0x3fe7374bc6a7ef9e              # double 0.72550000000000003
	.quad	0x3ff6ae3608d0891a              # double 1.417532
	.quad	0x3ffd92ea52ef911d              # double 1.848368
	.quad	0x40122f6837f7be12              # double 4.5462959999999999
	.quad	0x3f9c725c3dee7818              # double 0.027779999999999999
	.quad	0x40059b506dd69d30              # double 2.7008369999999999
	.quad	0x40103ea1c68ec52a              # double 4.0611639999999998
	.quad	0x400a0b399f5dfeb9              # double 3.2554810000000001
	.quad	0x401f4fa15db3397e              # double 7.8277640000000002
	.quad	0x40200ab4528283d3              # double 8.0209069999999993
	.quad	0x401397c6327ed84d              # double 4.8982169999999998
	.quad	0x40149c9c90c4dec2              # double 5.1529410000000002
	.quad	0x3f784f4c6e6d9be5              # double 0.0059350000000000002
	.quad	0x401c8cec41dd1a22              # double 7.1376200000000001
	.quad	0x3fef71bcdbbe0158              # double 0.982634
	.quad	0x3fd52ae8e1d6494d              # double 0.33074399999999998
	.quad	0x3ff81953586ca8a0              # double 1.506183
	.quad	0x40206bc60029f16b              # double 8.2104949999999999
	.quad	0x4019153c579f2346              # double 6.2707379999999997
	.quad	0x40208987a4a48f97              # double 8.2686130000000002
	.quad	0x3fee183947496aad              # double 0.94045699999999999
	.quad	0x401710574b407033              # double 5.7659580000000004
	.quad	0x3fcd98fa376922d9              # double 0.23123099999999999
	.quad	0x40208b4784230fd0              # double 8.2720300000000009
	.quad	0x4009f3226c3b927d              # double 3.2437179999999999
	.quad	0x40089e4a38327675              # double 3.0772900000000001
	.quad	0x401d708637bd05af              # double 7.3598869999999996
	.quad	0x4021b049ecb31c22              # double 8.8443140000000007
	.quad	0x4016cb09635610ae              # double 5.6982780000000002
	.quad	0x4000c298cc144029              # double 2.095018
	.quad	0x40019ab0856e696a              # double 2.2005319999999999
	.quad	0x4012f0a137f38c54              # double 4.7349899999999998
	.quad	0x4009fdda8bd230ba              # double 3.2489520000000001
	.quad	0x400552702a3486f0              # double 2.6652529999999999
	.quad	0x400038ee28672757              # double 2.0277980000000002
	.quad	0x401bad577963992d              # double 6.9192790000000004
	.quad	0x401611832fcac8e7              # double 5.5171020000000004
	.quad	0x4022469dd7ecbb80              # double 9.1379230000000007
	.quad	0x4012496aad1d041d              # double 4.5716960000000002
	.quad	0x4009d4c5da6a4441              # double 3.2288929999999998
	.quad	0x40164715c63ae254              # double 5.5694189999999999
	.quad	0x3ff1cea4a8c154ca              # double 1.1129500000000001
	.quad	0x4016482517e77d52              # double 5.5704539999999998
	.quad	0x401cd9799e518f3f              # double 7.2123780000000002
	.quad	0x401e4bb40b34e768              # double 7.5739289999999996
	.quad	0x401bb1ecd4aa10e0              # double 6.9237549999999999
	.quad	0x400cdcdcca70d1fa              # double 3.6078429999999999
	.quad	0x3ff2d3293d102bc7              # double 1.176553
	.quad	0x40118059210385c6              # double 4.3753399999999996
	.quad	0x400fbc475e6362a6              # double 3.966933
	.quad	0x40153e3150dae3e7              # double 5.3107350000000002
	.quad	0x3fe89183b60285ec              # double 0.76776299999999997
	.quad	0x401fd4d338f79852              # double 7.9578369999999996
	.quad	0x40239dc55000c954              # double 9.8081460000000006
	.quad	0x4019a92ee84ad795              # double 6.4152180000000003
	.quad	0x401609cc74b838c1              # double 5.5095689999999999
	.quad	0x401dcfdb09a671ef              # double 7.4529839999999998
	.quad	0x401971337eb28d86              # double 6.3605479999999996
	.quad	0x401145fd47bedb73              # double 4.3183490000000004
	.quad	0x400f00999dcb5782              # double 3.8752930000000001
	.quad	0x3ff2d842b734b513              # double 1.1777979999999999
	.quad	0x4015081c714fce74              # double 5.2579209999999996
	.quad	0x401e4c82e019b0ab              # double 7.5747179999999998
	.quad	0x400eecc2d6a9c561              # double 3.8656060000000001
	.quad	0x4023613ad5bee3d6              # double 9.689902
	.quad	0x401c1add15f02c4d              # double 7.0262339999999996
	.quad	0x3ff7f03c07ee0b0b              # double 1.496151
	.quad	0x4016c42dcf4623d1              # double 5.6915810000000002
	.quad	0x4023a7ef9db22d0e              # double 9.8279999999999994
	.quad	0x3ff746a7ef9db22d              # double 1.45475
	.quad	0x4023e90abb44e50c              # double 9.9551599999999993
	.quad	0x3fe00a350d2806af              # double 0.50124599999999997
	.quad	0x401d96d373affb05              # double 7.3972910000000001
	.quad	0x40230dfd694ccab4              # double 9.5273240000000001
	.quad	0x401bd08205ff1d82              # double 6.9536210000000001
	.quad	0x3ff51068986fcdee              # double 1.316506
	.quad	0x3fd9ec892ab68cef              # double 0.40506199999999998
	.quad	0x40225979bfdf7e80              # double 9.1747569999999996
	.quad	0x401cfd32c625e99f              # double 7.2472640000000004
	.quad	0x401b5947496aad1d              # double 6.837186
	.quad	0x400c5755bccaf70a              # double 3.5426440000000001
	.quad	0x3fbe7e414e7ee914              # double 0.119114
	.quad	0x4006c8f75536933a              # double 2.848128
	.quad	0x4019c606fac6045c              # double 6.4433860000000003
	.quad	0x401b27635e74299e              # double 6.7884650000000004
	.quad	0x3fcbaa0cae642bfa              # double 0.21612700000000001
	.quad	0x40205c4cdfaca362              # double 8.1802740000000007
	.quad	0x401079ae0c176577              # double 4.1188279999999997
	.quad	0x40129a8da7f3cf70              # double 4.6509309999999999
	.quad	0x4011500000000000              # double 4.328125
	.quad	0x4000c3497b7414a5              # double 2.0953550000000001
	.quad	0x3fe75b61bb05faec              # double 0.72990500000000003
	.quad	0x400cfc3d68405b3a              # double 3.6231640000000001
	.quad	0x401d4f327aa68f4b              # double 7.3273409999999997
	.quad	0x3fa1c087442c7fbb              # double 0.034672000000000001
	.quad	0x40072352eb5f5f0b              # double 2.8922479999999999
	.quad	0x40143afe1da7b0b4              # double 5.0576100000000004
	.quad	0x4022447c30d306a3              # double 9.1337600000000005
	.quad	0x40045bf50e347629              # double 2.5449009999999999
	.quad	0x4014732acfb762d8              # double 5.1124679999999998
	.quad	0x40219d28283d35eb              # double 8.8069469999999992
	.quad	0x4011b1511dffc548              # double 4.4231610000000003
	.quad	0x400ecf11b60ae968              # double 3.851108
	.quad	0x401f49c779a6b50b              # double 7.8220499999999999
	.quad	0x402236ae3a3a8e71              # double 9.1067979999999995
	.quad	0x40165d1676640a6c              # double 5.5909060000000004
	.quad	0x401abdbb59ddc1e8              # double 6.6852850000000004
	.quad	0x401c6b72c5197a25              # double 7.1049300000000004
	.quad	0x4022375e2046c765              # double 9.1081400000000006
	.quad	0x40169536501e2585              # double 5.645715
	.quad	0x4022928b4bf8fcd6              # double 9.2862189999999991
	.quad	0x4018c24180d3cff6              # double 6.1897029999999997
	.quad	0x402055fe974a3401              # double 8.1679580000000005
	.quad	0x40017bc903ea704c              # double 2.1854420000000001
	.quad	0x3ff93f61aa3f034b              # double 1.577974
	.quad	0x4004eb8e8ea39c52              # double 2.6150180000000001
	.quad	0x4002c2174c4cdfad              # double 2.3447710000000002
	.quad	0x401d1b6ae7d566cf              # double 7.2767749999999998
	.quad	0x401f87a786c22681              # double 7.8824750000000003
	.quad	0x4004746e4c0df58c              # double 2.556851
	.quad	0x4020f2fba01eeed9              # double 8.4745760000000008
	.quad	0x4022f54a5df2239e              # double 9.4790829999999993
	.quad	0x4012941aac53b081              # double 4.6446329999999998
	.quad	0x400defd2a62aa194              # double 3.7421009999999999
	.quad	0x401089cbab649d39              # double 4.1345660000000004
	.quad	0x3fe7e55193708aad              # double 0.74674300000000005
	.quad	0x40102e1cde5d1809              # double 4.045032
	.quad	0x401f140e5a35d67c              # double 7.7695860000000003
	.quad	0x4014725e99e94ab2              # double 5.1116890000000001
	.quad	0x40005af640639d5e              # double 2.0444149999999999
	.quad	0x4015a2d1f1cfbb95              # double 5.4090040000000004
	.quad	0x3ff25a33bd9cae21              # double 1.147022
	.quad	0x400acae4b0186120              # double 3.3490690000000001
	.quad	0x4022e82eec7c957d              # double 9.4534830000000003
	.quad	0x4019db90ea9e6eeb              # double 6.4644199999999996
	.quad	0x40012c1871e6cd29              # double 2.146531
	.quad	0x3fef53f7ced91687              # double 0.97899999999999998
	.quad	0x3fe1e9c4545846e9              # double 0.55978600000000001
	.quad	0x4014c2a9d627bf62              # double 5.1901010000000003
	.quad	0x3fe383211cb039ef              # double 0.60975699999999999
	.quad	0x400179e83e425aee              # double 2.1845249999999998
	.quad	0x3fe48d2a1f8e3ac1              # double 0.64223200000000003
	.quad	0x40092a159817b95a              # double 3.1455489999999999
	.quad	0x4019dab53d640e9d              # double 6.4635819999999997
	.quad	0x4012db80ecfa69be              # double 4.714359
	.quad	0x401adcf13cee9dd8              # double 6.7157640000000001
	.quad	0x401ac02fb5d03105              # double 6.6876819999999997
	.quad	0x40007d30270f3882              # double 2.0611269999999999
	.quad	0x402211dcb5781c71              # double 9.0348869999999994
	.quad	0x40194fd7a13c254a              # double 6.3279709999999998
	.quad	0x4016e9e7b80a9de9              # double 5.7284230000000003
	.quad	0x401abe9e1b089a02              # double 6.6861499999999996
	.quad	0x4001af2064239607              # double 2.2105109999999999
	.quad	0x401426db940fecdd              # double 5.037947
	.quad	0x401122773e24febd              # double 4.283658
	.quad	0x401c4a647fdc5932              # double 7.0726490000000002
	.quad	0x401d933333333333              # double 7.3937499999999998
	.quad	0x401ed2d7b634dad3              # double 7.7059009999999998
	.quad	0x3ff2b7a1c25d0742              # double 1.169832
	.quad	0x40237e83c297bfa5              # double 9.7470990000000004
	.quad	0x3feaedd26b723ee2              # double 0.84153100000000003
	.quad	0x4019ed6fda836eb5              # double 6.4818720000000001
	.quad	0x4020699dece57109              # double 8.2062830000000009
	.quad	0x4009a007dd441355              # double 3.2031399999999999
	.quad	0x3ff247e06961c369              # double 1.1425479999999999
	.quad	0x401688b827fa1a0d              # double 5.6335150000000001
	.quad	0x401e02bae03b3e9a              # double 7.5026659999999996
	.quad	0x401441af3a14cec4              # double 5.0641449999999999
	.quad	0x402187c17a89331a              # double 8.7651479999999999
	.quad	0x4012dd0edc3bd599              # double 4.7158769999999999
	.quad	0x40221cbe61cffeb0              # double 9.0561399999999992
	.quad	0x4023f46045baf534              # double 9.977297
	.quad	0x401cde30446b69db              # double 7.2169809999999996
	.quad	0x401ffcb8e086bdf5              # double 7.9967990000000002
	.quad	0x3fff902de00d1b71              # double 1.9726999999999999
	.quad	0x40203c02d16b97ff              # double 8.1172090000000008
	.quad	0x401ee34f3fd933e3              # double 7.7219819999999996
	.quad	0x4015d803cd141a69              # double 5.4609519999999998
	.quad	0x4017da958537e2c5              # double 5.9634609999999997
	.quad	0x3fd6c5d63886594b              # double 0.355825
	.quad	0x401614bec679cc75              # double 5.5202590000000002
	.quad	0x4015c5d1c3ac929b              # double 5.4431830000000003
	.quad	0x3ff7298cc144028e              # double 1.4476439999999999
	.quad	0x401d4497fa5d28d0              # double 7.316986
	.quad	0x400d86290eed02cd              # double 3.6905079999999999
	.quad	0x400b244d87724fa9              # double 3.3927260000000001
	.quad	0x40148209edbf8b9c              # double 5.1269910000000003
	.quad	0x400ef61d4306e5cd              # double 3.8701729999999999
	.quad	0x40210b254e6e221d              # double 8.5217690000000008
	.quad	0x400b8cb4aec8d5c7              # double 3.4437039999999999
	.quad	0x40093ab8e8ea39c5              # double 3.1536729999999999
	.quad	0x4014f8d36b4c7f35              # double 5.2429940000000004
	.quad	0x3ffda05ee568a505              # double 1.851653
	.quad	0x400bf969e3c96894              # double 3.4967839999999999
	.quad	0x400e47589efd86a9              # double 3.784837
	.quad	0x401d67dc37a3db3c              # double 7.351426
	.quad	0x401ce24a6a875d57              # double 7.220987
	.quad	0x4013d69db65ecc3e              # double 4.9595859999999998
	.quad	0x401cef36694898f6              # double 7.233606
	.quad	0x3ff3b9f98b71b8aa              # double 1.232904
	.quad	0x402109c1f85d744f              # double 8.5190579999999994
	.quad	0x3ff1a14ad362e903              # double 1.1018779999999999
	.quad	0x40229407cc7d1bb5              # double 9.2891220000000008
	.quad	0x401b9edfa43fe5c9              # double 6.9051499999999999
	.quad	0x4012df0a1be2b496              # double 4.7178120000000003
	.quad	0x3ff8378140dd3fe2              # double 1.5135510000000001
	.quad	0x401e9b252ce032db              # double 7.6515089999999998
	.quad	0x4008736deb95e5b0              # double 3.056362
	.quad	0x401d34727dcbddba              # double 7.3012180000000004
	.quad	0x40206da16616b54e              # double 8.2141219999999997
	.quad	0x402087ace67d77fb              # double 8.2649910000000002
	.quad	0x4021c1e7fb267c6c              # double 8.8787230000000008
	.quad	0x40184faca3619978              # double 6.077807
	.quad	0x40185890d5a5b963              # double 6.0864900000000004
	.quad	0x401ddc77dd872f34              # double 7.4653010000000002
	.quad	0x402274a29845dc83              # double 9.2278029999999998
	.quad	0x3ffe146e4c0df58c              # double 1.879988
	.quad	0x40231e338b47c73f              # double 9.5589870000000001
	.quad	0x401ef8e581cf7879              # double 7.7430630000000002
	.quad	0x4023d170b49e01de              # double 9.9090629999999997
	.quad	0x3fe93db3bfb58d15              # double 0.78878199999999998
	.quad	0x4022749be8ff327b              # double 9.2277520000000006
	.quad	0x401b23e681a9b8cc              # double 6.7850590000000004
	.quad	0x4016becfe9b7bf1f              # double 5.6863400000000004
	.quad	0x4003587ad080b674              # double 2.4182030000000001
	.quad	0x401584fb97bb7308              # double 5.3798659999999998
	.quad	0x40191ecbfb15b574              # double 6.2800750000000001
	.quad	0x400fa31593e5fb72              # double 3.954631
	.quad	0x3ffe2f640639d5e5              # double 1.8865700000000001
	.quad	0x3fe656733ebbfd72              # double 0.69805300000000003
	.quad	0x40146512231832fd              # double 5.0987020000000003
	.quad	0x4000b7b634dad320              # double 2.0897030000000001
	.quad	0x402024a4f440af1d              # double 8.0715710000000005
	.quad	0x401b163065f9591d              # double 6.7716690000000002
	.quad	0x401eaf7db6e503fb              # double 7.6713779999999998
	.quad	0x400a63c8e25c810a              # double 3.2987229999999998
	.quad	0x3feda1187e7c06e2              # double 0.92591500000000004
	.quad	0x3faf705857afea3e              # double 0.061404
	.quad	0x401115c0fcb4f1e5              # double 4.2712440000000003
	.quad	0x3ff7244c7b02d59d              # double 1.4463619999999999
	.quad	0x400f490abb44e50c              # double 3.9106649999999998
	.quad	0x4014fd21ff2e48e9              # double 5.2472000000000003
	.quad	0x4012553da72a7bd5              # double 4.5832430000000004
	.quad	0x4001b8e53eb399f6              # double 2.2152810000000001
	.quad	0x400536e371540032              # double 2.6518009999999999
	.quad	0x401a324e160d887f              # double 6.5491260000000002
	.quad	0x4020063b8a19c9d6              # double 8.0121730000000007
	.quad	0x3fe399eb6390c910              # double 0.61253899999999994
	.quad	0x400146a76965f527              # double 2.1594989999999998
	.quad	0x4017606d938151a4              # double 5.8441679999999998
	.quad	0x3fdc08dd1e53a81e              # double 0.43804100000000001
	.quad	0x40102f2cf95d4e90              # double 4.0460700000000003
	.quad	0x3ffefc393682730c              # double 1.9365779999999999
	.quad	0x4011318f81e8a2ec              # double 4.2983989999999999
	.quad	0x40116f21b3aeee95              # double 4.3585269999999996
	.quad	0x3fc74013ec460ed8              # double 0.181643
	.quad	0x401678216c61522a              # double 5.6173149999999996
	.quad	0x40196acd184c2720              # double 6.354298
	.quad	0x3ff6a20685553ef7              # double 1.4145570000000001
	.quad	0x4023b37b28954a80              # double 9.8505490000000009
	.quad	0x40049f85d744f5d3              # double 2.5778919999999999
	.quad	0x402325a597d49d7c              # double 9.5735290000000006
	.quad	0x40124f8df7a4e7ab              # double 4.5776899999999996
	.quad	0x4013109a671ef30a              # double 4.7662139999999997
	.quad	0x401d721c8a7a41e5              # double 7.3614369999999996
	.quad	0x3ff2d888f861a60d              # double 1.1778649999999999
	.quad	0x4020cd3aa369fcf4              # double 8.4008380000000002
	.quad	0x401a5150dae3e6c5              # double 6.5794100000000002
	.quad	0x401bf9fec99f1ae3              # double 6.9941360000000001
	.quad	0x401712e2328f9f45              # double 5.7684410000000002
	.quad	0x402176e32e3821af              # double 8.7322019999999991
	.quad	0x4003287a8d64d7f1              # double 2.394765
	.quad	0x40207a070b8cfbfc              # double 8.2383349999999992
	.quad	0x40210ea5d6bebe16              # double 8.5286089999999994
	.quad	0x4021a2b4528283d3              # double 8.8177819999999993
	.quad	0x4002790fb65668c2              # double 2.3091119999999998
	.quad	0x401a9a76534373f3              # double 6.6508419999999999
	.quad	0x402012a044ae85ba              # double 8.0363790000000002
	.quad	0x40225ac881e4712e              # double 9.1773109999999996
	.quad	0x3ffeed16b97fe8ee              # double 1.9328829999999999
	.quad	0x400f01a500d5e8d5              # double 3.8758029999999999
	.quad	0x4006ba36e2eb1c43              # double 2.8409249999999999
	.quad	0x4022be84ad794a6f              # double 9.3721060000000004
	.quad	0x401fd2fe82517e78              # double 7.9560490000000001
	.quad	0x3ffe631e7d9988d3              # double 1.8991990000000001
	.quad	0x40210b0fcf80dc33              # double 8.5216049999999992
	.quad	0x4022e16f21f6cacd              # double 9.4403009999999998
	.quad	0x402208919ef954eb              # double 9.0167359999999999
	.quad	0x4020554562e09fe8              # double 8.1665449999999993
	.quad	0x40072f0bf1a5ca2a              # double 2.8979720000000002
	.quad	0x3fe6c02d16b97fe9              # double 0.71095900000000001
	.quad	0x40192870110a137f              # double 6.2894899999999998
	.quad	0x4021f90880d801b4              # double 8.9863929999999996
	.quad	0x40215eb2d0a24463              # double 8.684958
	.quad	0x3ffc16b228dc981c              # double 1.755541
	.quad	0x4003fbc5de9c022a              # double 2.4979360000000002
	.quad	0x4017caaef2c73259              # double 5.9479329999999999
	.quad	0x4017a2c0e7bc3c5c              # double 5.9089390000000002
	.quad	0x4021a7eb8d823422              # double 8.8279689999999995
	.quad	0x3fe21edbf8b9baa1              # double 0.56626699999999996
	.quad	0x401f9b8f14db5958              # double 7.9019130000000004
	.quad	0x402015857afea3df              # double 8.0420339999999992
	.quad	0x401acb01c92ddbdb              # double 6.6982489999999997
	.quad	0x3fffa41a261bf37c              # double 1.9775640000000001
	.quad	0x4020f18b0d0edc3c              # double 8.4717640000000002
	.quad	0x400e740357a35504              # double 3.8066469999999999
	.quad	0x4010f2c94b380cb7              # double 4.2370960000000002
	.quad	0x4021831183b60286              # double 8.7559930000000001
	.quad	0x3fd968c26138fffc              # double 0.39701900000000001
	.quad	0x40122c7f77af6406              # double 4.5434549999999998
	.quad	0x4017247a17f4128c              # double 5.785622
	.quad	0x401060ded288ce70              # double 4.0945999999999998
	.quad	0x400f16273929ed39              # double 3.8858169999999999
	.quad	0x4023c97a67a52ac7              # double 9.8935119999999994
	.quad	0x401ee06961c36977              # double 7.7191520000000002
	.quad	0x400c4055fbb517a4              # double 3.5314139999999998
	.quad	0x4010c509bf9c62a2              # double 4.1924200000000003
	.quad	0x400e4c8605681ecd              # double 3.7873649999999999
	.quad	0x401f60a8d21bc127              # double 7.8443940000000003
	.quad	0x402286dd26b723ee              # double 9.2634059999999998
	.quad	0x401e91626b2f2303              # double 7.6419769999999997
	.quad	0x401a60b7c3504c49              # double 6.5944510000000003
	.quad	0x3fd5ec0f88333fc8              # double 0.34253299999999998
	.quad	0x4021370b49e01de2              # double 8.6075079999999993
	.quad	0x400677a80cf9e386              # double 2.8084259999999999
	.quad	0x3fecc065b63d3e4f              # double 0.89848600000000001
	.quad	0x3fec738c5436b8fa              # double 0.88910500000000003
	.quad	0x40159e6c093d9664              # double 5.4047090000000004
	.quad	0x4009323f67f4dbe0              # double 3.1495350000000002
	.quad	0x4001cc1a8ac5c140              # double 2.2246600000000001
	.quad	0x4013f84ba0e84274              # double 4.9924759999999999
	.quad	0x400b7cce1c58255b              # double 3.43594
	.quad	0x40236dcfaacd9e84              # double 9.7144750000000001
	.quad	0x402294c09c3ce209              # double 9.2905320000000007
	.quad	0x4011046b26bf876a              # double 4.2543150000000001
	.quad	0x3ff390752da98677              # double 1.2227680000000001
	.quad	0x4020f13d5347a5b1              # double 8.471171
	.quad	0x3fdc2a8c9b845565              # double 0.44009700000000002
	.quad	0x3ffdd5054ac29bf1              # double 1.8645069999999999
	.quad	0x40134ec4e7253da7              # double 4.8269229999999999
	.quad	0x401153e9ea140571              # double 4.3319470000000004
	.quad	0x4013803c07ee0b0b              # double 4.875229
	.quad	0x40164eaee2003ab8              # double 5.5768389999999997
	.quad	0x40121d8f92af9a8d              # double 4.5288680000000001
	.quad	0x402175d701d9f4d3              # double 8.7301559999999991
	.quad	0x3fea906ab14ec205              # double 0.83012900000000001
	.quad	0x400c82fbe33acd5b              # double 3.5639569999999998
	.quad	0x401e3bcad9ad85e0              # double 7.5583910000000003
	.quad	0x3fc3cd67fd3f5b60              # double 0.15470600000000001
	.quad	0x40184f661f18c9fb              # double 6.0775379999999997
	.quad	0x4017e4e9813879c4              # double 5.9735469999999999
	.quad	0x4022cf1971c10d7c              # double 9.4044910000000001
	.quad	0x400777caa7589efe              # double 2.9334920000000002
	.quad	0x400569fe86833c60              # double 2.676755
	.quad	0x3fc9cc20d5629d84              # double 0.201542
	.quad	0x4001a6559f6ec5b0              # double 2.2062179999999998
	.quad	0x3ffff25d4a5df224              # double 1.9966710000000001
	.quad	0x3fec2ad1d041cc53              # double 0.88022699999999998
	.quad	0x40163e7c06e19b91              # double 5.5610200000000001
	.quad	0x4021b6d1e108c3f4              # double 8.8570700000000002
	.quad	0x400de09cc319c5a4              # double 3.734674
	.quad	0x3fd2663c74fb54a0              # double 0.28749000000000002
	.quad	0x4009d10ecb74ddf8              # double 3.2270789999999998
	.quad	0x401a91c36976bc1f              # double 6.642347
	.quad	0x401da2c2bd7f51f0              # double 7.4089460000000003
	.quad	0x401445154866a11f              # double 5.0674640000000002
	.quad	0x3fe5bc70c996b767              # double 0.679253
	.quad	0x4021173b42cc2d6b              # double 8.5453740000000007
	.quad	0x4010a2d27807789a              # double 4.1590059999999998
	.quad	0x4022a9af9ebe9c88              # double 9.3314179999999993
	.quad	0x3ff859d55e6bc622              # double 1.5219320000000001
	.quad	0x3ff7d1e96c3fc43b              # double 1.488748
	.quad	0x3ff1072085b18549              # double 1.0642400000000001
	.quad	0x4017f1882adc4c9d              # double 5.9858710000000004
	.quad	0x401f3bc48f10a99b              # double 7.8083669999999996
	.quad	0x401713abc947064f              # double 5.7692100000000002
	.quad	0x3ff36d601ffb480a              # double 1.2142029999999999
	.quad	0x4006046c764adff8              # double 2.7521599999999999
	.quad	0x3ff682e126202539              # double 1.4069529999999999
	.quad	0x3fe881c92ddbdb5e              # double 0.76584300000000005
	.quad	0x401392ce89656ef0              # double 4.8933660000000003
	.quad	0x40231ba42f1ed17c              # double 9.5539869999999993
	.quad	0x3fec5ee568a50508              # double 0.88658400000000004
	.quad	0x4023a3a16e7a311f              # double 9.8195910000000008
	.quad	0x401f09b7bf1e8e61              # double 7.7594900000000004
	.quad	0x40221183947496ab              # double 9.0342070000000003
	.quad	0x4019382235b4edb3              # double 6.304818
	.quad	0x401dad6a9c560c7c              # double 7.4193519999999999
	.quad	0x401e40fa15db3398              # double 7.5634540000000001
	.quad	0x3febee158750c1b9              # double 0.87281299999999995
	.quad	0x40232c0ee06d9381              # double 9.5860509999999994
	.quad	0x40165c2a02320968              # double 5.5900040000000004
	.quad	0x400a9e4abe6a337b              # double 3.3272910000000002
	.quad	0x40228f8bdec5f395              # double 9.2803640000000005
	.quad	0x4018b4013ec460ee              # double 6.1757860000000004
	.quad	0x3fa96d2aa5c5f7c6              # double 0.049660999999999997
	.quad	0x40142bd512ec6bcf              # double 5.0428050000000004
	.quad	0x3ffdea92e62131a9              # double 1.869769
	.quad	0x3ff29ebb7739f341              # double 1.163753
	.quad	0x401d19524bfd2e94              # double 7.2747279999999996
	.quad	0x3ff021c044284dfd              # double 1.00824
	.quad	0x4008f13165d39970              # double 3.1177700000000002
	.quad	0x401b4a4873365882              # double 6.8225420000000003
	.quad	0x401bbc7863beec39              # double 6.9340529999999996
	.quad	0x401dca06e9ff0cbb              # double 7.447292
	.quad	0x4010ed61b2a27f1b              # double 4.2318179999999996
	.quad	0x400da37e6f71a7e3              # double 3.704831
	.quad	0x3fe525e785b5b707              # double 0.66087700000000005
	.quad	0x400c36a1e81cb46c              # double 3.5266760000000001
	.quad	0x3fc7121ab4b72c52              # double 0.18024000000000001
	.quad	0x401ae7d5ed06fef8              # double 6.7264020000000002
	.quad	0x401e3aecd07852f8              # double 7.557544
	.quad	0x4018084f4c6e6d9c              # double 6.0081150000000001
	.quad	0x4011ad6494d50ebb              # double 4.4193290000000003
	.quad	0x400d1461309c7ffe              # double 3.634951
	.quad	0x3ff4dbb4916ca46e              # double 1.303639
	.quad	0x4016e1d712a0ec74              # double 5.7205469999999998
	.quad	0x3ffac82e019b0ab3              # double 1.673872
	.quad	0x401140841ede1199              # double 4.3130040000000003
	.quad	0x40049a2be0589acc              # double 2.5752790000000001
	.quad	0x3fe4ed5f138bcdff              # double 0.653976
	.quad	0x40033914f483cafb              # double 2.4028719999999999
	.quad	0x4016deeed8904f6e              # double 5.717708
	.quad	0x401b02abef06b378              # double 6.7526089999999996
	.quad	0x401eca836eb4e981              # double 7.6977669999999998
	.quad	0x40181480a5accd53              # double 6.020022
	.quad	0x40239d74927913e8              # double 9.8075299999999998
	.quad	0x3fe785a708ede54b              # double 0.73506499999999997
	.quad	0x400689c0229a5ebb              # double 2.8172609999999998
	.quad	0x4001c9656eefa1e4              # double 2.223338
	.quad	0x3ff607a398201cd6              # double 1.376865
	.quad	0x40223c504816f007              # double 9.1178000000000008
	.quad	0x40235c4827b6fe2e              # double 9.6802379999999992
	.quad	0x400f5b60285ec3db              # double 3.9196170000000001
	.quad	0x4021bcb33daf8df8              # double 8.8685550000000006
	.quad	0x3fd23f24d8fd5cb8              # double 0.28510400000000002
	.quad	0x40209626f60e0eb6              # double 8.2932659999999991
	.quad	0x40217502eec7c958              # double 8.7285380000000004
	.quad	0x3ff90b5aa715831f              # double 1.565272
	.quad	0x400a99b13165d399              # double 3.3250449999999998
	.quad	0x401a204790b84988              # double 6.531523
	.quad	0x3fc29f72f76e6107              # double 0.14549100000000001
	.quad	0x40034225742dcf46              # double 2.4072979999999999
	.quad	0x401eff9bdc69f8c2              # double 7.7496179999999999
	.quad	0x401e79cb252ce033              # double 7.6189390000000001
	.quad	0x402100a0f4d7add1              # double 8.5012279999999993
	.quad	0x4020852c16df3f96              # double 8.2601019999999998
	.quad	0x3fefc107314ca926              # double 0.992313
	.quad	0x40137455219a847b              # double 4.8636059999999999
	.quad	0x3fa048beb5b2d4d4              # double 0.031805
	.quad	0x401478b86b15f890              # double 5.1178910000000002
	.quad	0x4022d8624dd2f1aa              # double 9.422625
	.quad	0x4011e4a3400b88ca              # double 4.4732789999999998
	.quad	0x40031bb384fd2a63              # double 2.3885260000000001
	.quad	0x4015bca686e7e62e              # double 5.4342290000000002
	.quad	0x401106e8f29d40ee              # double 4.256748
	.quad	0x4020b00e06530058              # double 8.3438569999999999
	.quad	0x400c900c521dda06              # double 3.5703360000000002
	.quad	0x3fe6628672756862              # double 0.69952700000000001
	.quad	0x400bf1c4b90214ad              # double 3.4930509999999999
	.quad	0x40002896dd26b724              # double 2.019819
	.quad	0x4013e9bbadc0980b              # double 4.9782549999999999
	.quad	0x401a94d22c881e47              # double 6.6453329999999999
	.quad	0x40193c1db0142f62              # double 6.3087070000000001
	.quad	0x40172343b70ef566              # double 5.7844379999999997
	.quad	0x400ef63f572de43f              # double 3.8702380000000001
	.quad	0x40074858793dd97f              # double 2.9103249999999998
	.quad	0x3fcfadc0980b2420              # double 0.24748999999999999
	.quad	0x4001ea7a41e57d9e              # double 2.2394910000000001
	.quad	0x4022f445ed4a1ad6              # double 9.4770959999999995
	.quad	0x3ffef838c111ada7              # double 1.9356009999999999
	.quad	0x401b04156e264e48              # double 6.7539879999999997
	.quad	0x401ad9917939a7c1              # double 6.7124689999999996
	.quad	0x4016344d44567126              # double 5.5510760000000001
	.quad	0x4021ed27e5215769              # double 8.9631950000000007
	.quad	0x402357dd00f776c5              # double 9.6716080000000008
	.quad	0x4012a84988094e5d              # double 4.6643429999999997
	.quad	0x40061fde7210be94              # double 2.7655609999999999
	.quad	0x400e6009f623076c              # double 3.796894
	.quad	0x4005dc99ae924f22              # double 2.7327149999999998
	.quad	0x4003077681669ced              # double 2.378644
	.quad	0x402148650e779208              # double 8.6413960000000003
	.quad	0x40065e5f30e7ff58              # double 2.7960799999999999
	.quad	0x3fe5c007570c5650              # double 0.67969100000000005
	.quad	0x3ff28639d5e4a383              # double 1.15777
	.quad	0x4017fc9c4da9003f              # double 5.9966900000000001
	.quad	0x3ffdcafb3b752114              # double 1.8620559999999999
	.quad	0x3fdfffde7210be94              # double 0.49999199999999999
	.quad	0x401220010c6f7a0b              # double 4.5312539999999997
	.quad	0x401d805b39e279dd              # double 7.3753479999999998
	.quad	0x3feee7685985ad54              # double 0.96574800000000005
	.quad	0x40121f1cfbb94962              # double 4.5303839999999997
	.quad	0x4023f0672756861f              # double 9.9695370000000007
	.quad	0x40033695d91ab8e9              # double 2.401653
	.quad	0x3fc6202539756c94              # double 0.17285600000000001
	.quad	0x4018e7b24638c975              # double 6.2262659999999999
	.quad	0x40230cc8366516db              # double 9.5249649999999999
	.quad	0x40235cfb97bb7308              # double 9.6816069999999996
	.quad	0x401a350a45d41fa7              # double 6.5517969999999996
	.quad	0x3ff75797cc39ffd6              # double 1.458885
	.quad	0x40208141a6937d20              # double 8.2524540000000002
	.quad	0x3fee0b3f63c31df7              # double 0.93887299999999996
	.quad	0x401cb22706d50657              # double 7.1739769999999998
	.quad	0x401e99dece571088              # double 7.6502639999999999
	.quad	0x401be54de7ea5f85              # double 6.9739300000000002
	.quad	0x401ec24a276b7ed4              # double 7.6897359999999999
	.quad	0x4011eb8b69552e30              # double 4.4800240000000002
	.quad	0x3ff2a58b3f63c31e              # double 1.165416
	.quad	0x3fe018f3eccc4695              # double 0.50304599999999999
	.quad	0x40053a6b50b0f27c              # double 2.6535250000000001
	.quad	0x3ffbcbd66277c45d              # double 1.7372650000000001
	.quad	0x400d5d35653c9abb              # double 3.670512
	.quad	0x4020ac243dccea29              # double 8.336214
	.quad	0x401d73e81450efdd              # double 7.3631900000000003
	.quad	0x402266974a3400b9              # double 9.2003730000000008
	.quad	0x4018a12556d19ded              # double 6.1573690000000001
	.quad	0x4017134330d73861              # double 5.7688110000000004
	.quad	0x4020c3b01c92ddbe              # double 8.3822030000000005
	.quad	0x401a7975afaf8594              # double 6.6186129999999999
	.quad	0x40012f4be835dedf              # double 2.1480939999999999
	.quad	0x4017396030c23fab              # double 5.8060309999999999
	.quad	0x4015e6490a350d28              # double 5.474888
	.quad	0x4021eab51bd61f5c              # double 8.9584130000000001
	.quad	0x401f8d041cc532a5              # double 7.8877110000000003
	.quad	0x4021572367e414e8              # double 8.6701920000000001
	.quad	0x3fb544ed6fda836f              # double 0.083083000000000004
	.quad	0x400ab11f926c7eae              # double 3.3364859999999998
	.quad	0x402101f4f50a02b8              # double 8.5038219999999995
	.quad	0x4022e747f993d534              # double 9.4517209999999991
	.quad	0x4010bf954eb13dfb              # double 4.187093
	.quad	0x40208157cd466f50              # double 8.2526229999999998
	.quad	0x401fd7c30d306a2b              # double 7.9607049999999999
	.quad	0x40007c04c8bc9cd4              # double 2.0605560000000001
	.quad	0x40118fe86833c600              # double 4.3905349999999999
	.quad	0x40005d9c27e95315              # double 2.0457079999999999
	.quad	0x4021f45e4e69f05f              # double 8.9772820000000007
	.quad	0x402106eb4e981388              # double 8.5135140000000007
	.quad	0x4021f31af3a14cec              # double 8.9748149999999995
	.quad	0x401622de43ed959a              # double 5.5340509999999998
	.quad	0x401e749235f80991              # double 7.6138389999999995
	.quad	0x402160262456f75e              # double 8.6877910000000007
	.quad	0x401ac5dd8f92af9b              # double 6.6932280000000004
	.quad	0x401d42dcf4623d0c              # double 7.315296
	.quad	0x401fad234eb9a177              # double 7.9190800000000001
	.quad	0x3fc2651f3e89a88b              # double 0.14371100000000001
	.quad	0x3fe63b7d84901d19              # double 0.69476199999999999
	.quad	0x4022a8bfa0945f9e              # double 9.3295870000000001
	.quad	0x4023aed82ba5a038              # double 9.8414929999999998
	.quad	0x401113586ca89fc7              # double 4.2688920000000001
	.quad	0x3fecc213a0c6b485              # double 0.89869100000000002
	.quad	0x3ffb4870110a137f              # double 1.705185
	.quad	0x40204154a7f8012e              # double 8.127599
	.quad	0x4021695b78cc9a78              # double 8.7057760000000002
	.quad	0x402275d9c27e9531              # double 9.2301769999999994
	.quad	0x400a38750c1b9735              # double 3.2775669999999999
	.quad	0x401974fd2a62aa19              # double 6.3642469999999998
	.quad	0x4023775c8d9f9054              # double 9.7331280000000006
	.quad	0x3ff0c9fd7a13c255              # double 1.0493140000000001
	.quad	0x4021ba89331a08c0              # double 8.8643280000000004
	.quad	0x3ffbbdd00f776c48              # double 1.733841
	.quad	0x4004aa7ac81d3aa3              # double 2.5832419999999998
	.quad	0x3ff37422467be554              # double 1.2158530000000001
	.quad	0x401cee1049235f81              # double 7.2324840000000004
	.quad	0x3fef6d45e9185cee              # double 0.98208899999999999
	.quad	0x40227aa68f4b61fe              # double 9.2395519999999998
	.quad	0x40044018a43bb40b              # double 2.5312969999999999
	.quad	0x3fefb8ac18f81e8a              # double 0.99129299999999998
	.quad	0x3ffb2437824d4cba              # double 1.696342
	.quad	0x3ffb415f45e0b4e1              # double 1.70346
	.quad	0x4014519da9c99286              # double 5.0797030000000003
	.quad	0x4018819b90ea9e6f              # double 6.1265700000000001
	.quad	0x4007e40a6b93ccd1              # double 2.986348
	.quad	0x4008377d0f1f57b4              # double 3.027094
	.quad	0x401cac054ef459da              # double 7.1679890000000004
	.quad	0x40214bd3804534bd              # double 8.6480979999999992
	.quad	0x401594816f0068dc              # double 5.3950250000000004
	.quad	0x401e51aef6f8f041              # double 7.5797689999999997
	.quad	0x40200c345cfede98              # double 8.0238370000000003
	.quad	0x400ed6bca5375c8e              # double 3.8548520000000002
	.quad	0x401030168b5cbff4              # double 4.0469609999999996
	.quad	0x3ff045bd0e12e83a              # double 1.017026
	.quad	0x4017c7fbefd00714              # double 5.9452970000000001
	.quad	0x40233e6f2e8c0486              # double 9.6219420000000007
	.quad	0x4021e58a32f44913              # double 8.9483200000000007
	.quad	0x40217115379fa97e              # double 8.7208649999999999
	.quad	0x4022b4e1a3f4666f              # double 9.3532840000000004
	.quad	0x4013ea7c9de05037              # double 4.9789909999999997
	.quad	0x400fb1572580c309              # double 3.961592
	.quad	0x401f629f59ccfaf0              # double 7.846311
	.quad	0x3fed89f1f14983d8              # double 0.92308900000000005
	.quad	0x4018969fcf3dc055              # double 6.1470940000000001
	.quad	0x400f6d7f0ed3d85a              # double 3.9284650000000001
	.quad	0x3ff9ca72ead9274e              # double 1.611926
	.quad	0x40135202107b7846              # double 4.8300859999999997
	.quad	0x4006cbe5109070fc              # double 2.849558
	.quad	0x4023f59b8023a6ce              # double 9.9797019999999996
	.quad	0x40170b46bacf7447              # double 5.761012
	.quad	0x401f4f4c2b51bd62              # double 7.827439
	.quad	0x401a2c8754f3775c              # double 6.5434850000000004
	.quad	0x400758b588e368f1              # double 2.9183150000000002
	.quad	0x40174476af89c5e7              # double 5.816859
	.quad	0x4015e461f9f01b86              # double 5.4730299999999996
	.quad	0x3fd43636f3b213e4              # double 0.31580900000000001
	.quad	0x401bec2acb85a4f0              # double 6.9806319999999999
	.quad	0x40226768be2f7b18              # double 9.2019710000000003
	.quad	0x3fe30d08919ef955              # double 0.59534100000000001
	.quad	0x401edc58eeae9ee4              # double 7.7151829999999997
	.quad	0x40151f6555c52e73              # double 5.2806600000000001
	.quad	0x3fe34bf6e3f78bbd              # double 0.60302299999999998
	.quad	0x4019168cef672b88              # double 6.2720219999999998
	.quad	0x40023405f6ba0621              # double 2.2754020000000001
	.quad	0x3fd5cc100e6afcce              # double 0.34057999999999999
	.quad	0x402198ce2d1f1cfc              # double 8.7984480000000004
	.quad	0x3ffa9796bfca85cb              # double 1.6620090000000001
	.quad	0x4011a620ee8d10f5              # double 4.4122349999999999
	.quad	0x3ff825cb35f3d7d4              # double 1.5092270000000001
	.quad	0x4006223bff8a8f3b              # double 2.7667160000000002
	.quad	0x3fe80ab92c061848              # double 0.751309
	.quad	0x401d75970b49e01e              # double 7.3648340000000001
	.quad	0x4020f702e6644d87              # double 8.4824439999999992
	.quad	0x40132901d19157ac              # double 4.7900460000000002
	.quad	0x402047c43b2dd378              # double 8.1401690000000002
	.quad	0x400d441e57d9dba9              # double 3.658261
	.quad	0x40227beccc469510              # double 9.2420410000000004
	.quad	0x4017f53f39d1b2e6              # double 5.9894990000000004
	.quad	0x40228be553ac4f7f              # double 9.2732340000000004
	.quad	0x4021306e19b90eaa              # double 8.5945900000000002
	.quad	0x400b31deefe4ffc9              # double 3.3993509999999998
	.quad	0x3ffac2bd7f51efb7              # double 1.672544
	.quad	0x401b3a2d2fe3f35a              # double 6.806813
	.quad	0x401382bcb5fe542e              # double 4.8776729999999997
	.quad	0x3fc65fc7e6b3fea0              # double 0.17479800000000001
	.quad	0x401ef636f3b213e4              # double 7.7404440000000001
	.quad	0x4009c19c17225b75              # double 3.2195360000000002
	.quad	0x3ff7c4c165907d91              # double 1.485536
	.quad	0x4009e8f7db6e5040              # double 3.2387540000000001
	.quad	0x40125872b020c49c              # double 4.5863750000000003
	.quad	0x3feaf2a172abef07              # double 0.84211800000000003
	.quad	0x3fb48472c0e7bc3c              # double 0.080145999999999995
	.quad	0x40066193b3a68b1a              # double 2.7976450000000002
	.quad	0x400bf434a01abd1b              # double 3.4942410000000002
	.quad	0x3fe3c51dabe2717a              # double 0.61781200000000003
	.quad	0x40180d7342edbb5a              # double 6.0131350000000001
	.quad	0x400d8188b11409a2              # double 3.6882489999999999
	.quad	0x4014b8919ef954eb              # double 5.1802429999999999
	.quad	0x4019828283d35eb7              # double 6.3774509999999998
	.quad	0x4022382fb5d03105              # double 9.1097389999999994
	.quad	0x4020427b0b391926              # double 8.1298449999999995
	.quad	0x4020a144241c3efb              # double 8.3149730000000002
	.quad	0x3febac0a4a05dd90              # double 0.86475100000000005
	.quad	0x40185c9d9d3458cd              # double 6.0904449999999999
	.quad	0x3fd2d5d80e496edf              # double 0.29430200000000001
	.quad	0x3fd8db940fecdd0e              # double 0.38840200000000003
	.quad	0x401061bd1ed9dfdb              # double 4.0954480000000002
	.quad	0x401df94855da2728              # double 7.4934399999999996
	.quad	0x4014a38a7e73a366              # double 5.1597080000000002
	.quad	0x4008c600b0292817              # double 3.0966809999999998
	.quad	0x400568e043a21640              # double 2.6762090000000001
	.quad	0x4018c7a24894c448              # double 6.1949550000000002
	.quad	0x4010c62d83c6c97e              # double 4.1935330000000004
	.quad	0x401ebd2d87f88766              # double 7.6847440000000002
	.quad	0x4012f08d8ec95bff              # double 4.734915
	.quad	0x4018210e8858ff76              # double 6.0322820000000004
	.quad	0x4012ff5dbb9cf9a0              # double 4.7493809999999996
	.quad	0x3ff532c0e7bc3c5c              # double 1.324891
	.quad	0x40217da63f9a49c3              # double 8.7454090000000004
	.quad	0x3fdfdae81882adc5              # double 0.49773600000000001
	.quad	0x4023e32a0663c750              # double 9.9436800000000005
	.quad	0x3fe02e275ab7dc7b              # double 0.50563400000000003
	.quad	0x4020aac16df3f962              # double 8.3335070000000009
	.quad	0x4003f814940bbb1f              # double 2.4961329999999999
	.quad	0x400a0750c1b97354              # double 3.2535720000000001
	.quad	0x3fd4a22f6a50d6b2              # double 0.32239899999999999
	.quad	0x400c8b04ab606b7b              # double 3.5678800000000002
	.quad	0x4022358e432441ff              # double 9.1046010000000006
	.quad	0x4021f6225fa658c5              # double 8.9807310000000005
	.quad	0x401ec62cba732df5              # double 7.6935299999999999
	.quad	0x4020eeeb91b3f20a              # double 8.4666409999999992
	.quad	0x3ffdd0a350d2806b              # double 1.863437
	.quad	0x402367e260b2c83f              # double 9.7028990000000003
	.quad	0x4013b5dd8f92af9b              # double 4.9276030000000004
	.quad	0x3ff5617c1bda511a              # double 1.3363
	.quad	0x40187eef5ec80c74              # double 6.1239600000000003
	.quad	0x40007adc8fb86f48              # double 2.0599910000000001
	.quad	0x401b8cc39ffd60e9              # double 6.8874649999999997
	.quad	0x4008e4ca4f440af2              # double 3.1117140000000001
	.quad	0x40147f4b61fe21d9              # double 5.1243109999999996
	.quad	0x400373a81dc0db27              # double 2.431473
	.quad	0x40219077036c9c0b              # double 8.7821580000000008
	.quad	0x3ffb685fd04a2fcf              # double 1.712982
	.quad	0x4010fb9841aac53b              # double 4.245698
	.quad	0x401e4018a43bb40b              # double 7.5625939999999998
	.quad	0x4020bf39b024f65a              # double 8.3734870000000008
	.quad	0x4015b1847f562175              # double 5.4233570000000002
	.quad	0x4022fbf0fe047d3d              # double 9.4920729999999995
	.quad	0x3ff9ba1e3eaf6838              # double 1.607939
	.quad	0x401037ebf22c01e7              # double 4.0546110000000004
	.quad	0x400535d5f56a7ac8              # double 2.6512869999999999
	.quad	0x40051221858bc59c              # double 2.6338530000000002
	.quad	0x402181a8cdea033e              # double 8.7532409999999992
	.quad	0x3fc35b91f70de8f7              # double 0.15123200000000001
	.quad	0x400aa1ca3a4b5569              # double 3.328999
	.quad	0x401f43b4b2fa93af              # double 7.8161189999999995
	.quad	0x3ffaa706d5065732              # double 1.665778
	.quad	0x401fcf6b5d462c34              # double 7.9525579999999998
	.quad	0x402357f64cf8d717              # double 9.6718010000000003
	.quad	0x401617d3910c2c5e              # double 5.5232679999999998
	.quad	0x401118d25edd0529              # double 4.2742399999999998
	.quad	0x3ff0c2374794ea07              # double 1.0474159999999999
	.quad	0x4014b12ad81adea9              # double 5.1730150000000004
	.quad	0x4022a0af1cb89d6b              # double 9.3138360000000002
	.quad	0x400bf085f4a1272d              # double 3.4924430000000002
	.quad	0x40030595bbbe8790              # double 2.3777270000000001
	.quad	0x40140294573a7979              # double 5.0025190000000004
	.quad	0x40070fbc1acde1a0              # double 2.8826830000000001
	.quad	0x40142d9f90539fba              # double 5.0445539999999998
	.quad	0x400f6b7fe08aefb3              # double 3.9274900000000001
	.quad	0x402222ad601ffb48              # double 9.0677289999999999
	.quad	0x3fef5e17e34b9453              # double 0.98023599999999999
	.quad	0x401a8cd35a858794              # double 6.6375250000000001
	.quad	0x401a608f648c7193              # double 6.5942970000000001
	.quad	0x401c141700cd8559              # double 7.0196189999999996
	.quad	0x40225fb7414a4d2b              # double 9.1869449999999997
	.quad	0x40210bb8800eae19              # double 8.5228920000000006
	.quad	0x4001b5ff609dcf89              # double 2.2138659999999999
	.quad	0x3fe68f7985271bce              # double 0.70501400000000003
	.quad	0x40137a6506141637              # double 4.8695259999999996
	.quad	0x4020b2cffa7eb6bf              # double 8.3492429999999995
	.quad	0x401f8f822bbecaac              # double 7.8901450000000004
	.quad	0x4021597dae81882b              # double 8.6747870000000002
	.quad	0x40236423315d701e              # double 9.6955810000000007
	.quad	0x3fe94a9ef5232d2c              # double 0.79035900000000003
	.quad	0x401775f394b7b289              # double 5.8651869999999997
	.quad	0x3ffa1a52263d816b              # double 1.631426
	.quad	0x4011d13879c4113c              # double 4.4543169999999996
	.quad	0x401784e50c5eb314              # double 5.8797800000000002
	.quad	0x401b3da87a072d1b              # double 6.8102130000000001
	.quad	0x401ccf6e82949a56              # double 7.2025699999999997
	.quad	0x40109f5b1c864884              # double 4.155621
	.quad	0x3ff8f2edfe75bc45              # double 1.5593090000000001
	.quad	0x3ff1ceb0318b9347              # double 1.1129610000000001
	.quad	0x401d1f37329c347f              # double 7.2804840000000004
	.quad	0x400de234a87e38eb              # double 3.735452
	.quad	0x4019659ee88df373              # double 6.3492389999999999
	.quad	0x400bba311e85fd05              # double 3.4659140000000002
	.quad	0x4004d481b21c475e              # double 2.6037629999999998
	.quad	0x401e66ed6777079e              # double 7.6005149999999997
	.quad	0x401ded5d3dc8b86b              # double 7.4818009999999999
	.quad	0x4022d856e696a26e              # double 9.4225379999999994
	.quad	0x4007e2f837b4a234              # double 2.9858250000000002
	.quad	0x4022be7c286f8ad2              # double 9.3720409999999994
	.quad	0x4016678ee2867275              # double 5.6011309999999996
	.quad	0x400df8d0cc35ce18              # double 3.7464919999999999
	.quad	0x40174fe82517e77d              # double 5.8280339999999997
	.quad	0x4021a64217d2849d              # double 8.8247230000000005
	.quad	0x40137ac8605681ed              # double 4.8699050000000002
	.quad	0x4019a5970b49e01e              # double 6.4117090000000001
	.quad	0x4023c33b5393250b              # double 9.8813119999999994
	.quad	0x40145b24638c9753              # double 5.0890060000000004
	.quad	0x3ff3b5d031055b8a              # double 1.2318880000000001
	.quad	0x4022a1cf56eac860              # double 9.3160349999999994
	.quad	0x402095c5f7c6759b              # double 8.2925260000000005
	.quad	0x400e12ba9d1f6018              # double 3.7591450000000002
	.quad	0x4000597e56473472              # double 2.043698
	.quad	0x4021eef06b37867f              # double 8.9666779999999999
	.quad	0x4000df9b56323bbc              # double 2.1091829999999998
	.quad	0x4022b08aac96cc60              # double 9.3448080000000004
	.quad	0x3ffff5b4edb2f662              # double 1.997487
	.quad	0x3fd040b34e768598              # double 0.25394899999999998
	.quad	0x4017fa0e410b630b              # double 5.9941950000000004
	.quad	0x4018df88b9778573              # double 6.2182950000000003
	.quad	0x40153fc71d606317              # double 5.3122829999999999
	.quad	0x3ff5678f25a250f8              # double 1.3377829999999999
	.quad	0x40150727dcbddb98              # double 5.2569879999999998
	.quad	0x4020a1c842fa5094              # double 8.3159810000000007
	.quad	0x40230ebe1650a45d              # double 9.5287939999999995
	.quad	0x402277d5885d3133              # double 9.2340509999999991
	.quad	0x40210923e5b8561d              # double 8.5178519999999995
	.quad	0x4008908919ef954f              # double 3.0705740000000001
	.quad	0x3ff41e6bc621b7e1              # double 1.2574270000000001
	.quad	0x40220e310dbf0564              # double 9.0277180000000001
	.quad	0x3fdc6dce39b456b4              # double 0.44420199999999999
	.quad	0x40099a5f41aef6f9              # double 3.200377
	.quad	0x40201e1240746456              # double 8.0587330000000001
	.quad	0x4021fd8127b2cc71              # double 8.9951260000000008
	.quad	0x400f84473cd57364              # double 3.9395889999999998
	.quad	0x401e2b506dd69d30              # double 7.5422989999999999
	.quad	0x4002b9b77c02afde              # double 2.3406820000000002
	.quad	0x4008fa30984e3fff              # double 3.122163
	.quad	0x4010bdfe32a0663c              # double 4.1855399999999996
	.quad	0x400703ca7503b81b              # double 2.8768509999999998
	.quad	0x4023e658c4bd33d3              # double 9.9498960000000007
	.quad	0x4013548e8a71de6a              # double 4.8325750000000003
	.quad	0x4022620945f9df55              # double 9.1914770000000008
	.quad	0x4020cde6149c6f37              # double 8.4021460000000001
	.quad	0x401a4d894812be49              # double 6.5757190000000003
	.quad	0x4014573d9ec70004              # double 5.0851959999999998
	.quad	0x4012e17c1bda511a              # double 4.7202000000000002
	.quad	0x401636b8b69552e3              # double 5.553439
	.quad	0x401fb67f90d9d777              # double 7.9282209999999997
	.quad	0x401d758e219652bd              # double 7.3647999999999998
	.quad	0x401fa8eda22f6a51              # double 7.9149690000000001
	.quad	0x4007d7164c729f5a              # double 2.9800230000000001
	.quad	0x40236dc443914f48              # double 9.7143879999999995
	.quad	0x3fc26cb966be7afa              # double 0.14394299999999999
	.quad	0x3fffc0746455eaee              # double 1.984486
	.quad	0x402134c016052503              # double 8.6030280000000001
	.quad	0x401d1f7f8ca8198f              # double 7.2807599999999999
	.quad	0x3fcf601797cc3a00              # double 0.24512
	.quad	0x3ff1e14ad362e903              # double 1.1175029999999999
	.quad	0x401a5d77318fc505              # double 6.5912750000000004
	.quad	0x402344434e3369ba              # double 9.6333260000000003
	.quad	0x401ddc2b51bd61f6              # double 7.4650090000000002
	.quad	0x4012e7edc7ef177a              # double 4.7264929999999996
	.quad	0x402107ab324851a8              # double 8.5149779999999993
	.quad	0x402119ba3ca7503c              # double 8.5502490000000008
	.quad	0x401f08982cb20fb2              # double 7.7583929999999999
	.quad	0x3fae8a71de69ad43              # double 0.059650000000000002
	.quad	0x40229242070b8cfc              # double 9.28566
	.quad	0x401ac28d002e2329              # double 6.689991
	.quad	0x400387e7c06e19b9              # double 2.44136
	.quad	0x4017014c22ee4192              # double 5.7512670000000004
	.quad	0x402040f25a250f84              # double 8.1268489999999999
	.quad	0x401c7b5a63f9a49c              # double 7.1204619999999998
	.quad	0x4023e1351159c497              # double 9.9398579999999991
	.quad	0x4019e6cc5fbf8338              # double 6.4753889999999998
	.quad	0x3ff6a67b5f1bef4a              # double 1.415645
	.quad	0x401756d3b6cbd988              # double 5.8347920000000002
	.quad	0x3ff3004b7f5a5333              # double 1.1875720000000001
	.quad	0x3ff45e8f6cefed63              # double 1.2730859999999999
	.quad	0x4020088fa7a85016              # double 8.0167210000000004
	.quad	0x4022cdf8d2e514c2              # double 9.4022889999999997
	.quad	0x3fd95ab7dc7abfba              # double 0.39616200000000001
	.quad	0x3fd207a6bd6e8af8              # double 0.281717
	.quad	0x400626b59146e4c1              # double 2.7689010000000001
	.quad	0x40239c3dccea28fe              # double 9.8051589999999997
	.quad	0x400d105e1c15097d              # double 3.6329920000000002
	.quad	0x3ffb91cf355cd91f              # double 1.723098
	.quad	0x40109b5a20ddc619              # double 4.1517109999999997
	.quad	0x4021b1f9acffa7eb              # double 8.8476079999999993
	.quad	0x4021090ff9724745              # double 8.5176999999999996
	.quad	0x4006ddbf487fcb92              # double 2.8582749999999999
	.quad	0x40122c9f72f76e61              # double 4.543577
	.quad	0x4018ea5ce5b4245f              # double 6.2288699999999997
	.quad	0x40204d00f776c482              # double 8.1503979999999991
	.quad	0x4012b97785729b28              # double 4.6811199999999999
	.quad	0x40233c5c78a6dacb              # double 9.6178930000000004
	.quad	0x401bd2cc2d6a9c56              # double 6.955857
	.quad	0x3fb54bf0995aaf79              # double 0.08319
	.quad	0x401d7007dd441355              # double 7.3594049999999998
	.quad	0x4016d5197a24894c              # double 5.7081049999999998
	.quad	0x4018bdfa871a3b15              # double 6.1855260000000003
	.quad	0x401a3ab367a0f909              # double 6.5573249999999996
	.quad	0x40233e1d4306e5cd              # double 9.6213169999999994
	.quad	0x4019da80cf9e3865              # double 6.4633820000000002
	.quad	0x401df0ca1cef2410              # double 7.4851460000000003
	.quad	0x40104364388ebcc7              # double 4.0658120000000002
	.quad	0x401b4ca18bd66278              # double 6.8248350000000002
	.quad	0x400abd9d3458cd21              # double 3.3425850000000001
	.quad	0x401301a86940357a              # double 4.7516189999999998
	.quad	0x3ffa9b6d43d03969              # double 1.662946
	.quad	0x4011af09d8c6d613              # double 4.4209360000000002
	.quad	0x40158858ff759685              # double 5.3831519999999999
	.quad	0x401de1572580c309              # double 7.470059
	.quad	0x402045faebc408d9              # double 8.1366800000000001
	.quad	0x3fcfaa8a82a5614e              # double 0.247392
	.quad	0x400a1579af1886e0              # double 3.2604860000000002
	.quad	0x402339333b96af04              # double 9.6117190000000007
	.quad	0x4022af0e0a84be40              # double 9.3419039999999995
	.quad	0x401556fe2e6ea854              # double 5.3349539999999998
	.quad	0x4005c5e2cdc011d3              # double 2.7216239999999998
	.quad	0x401ab7d24180d3d0              # double 6.679513
	.quad	0x401e35a187a4a490              # double 7.5523740000000004
	.quad	0x3fec045132f87ad1              # double 0.87552700000000006
	.quad	0x3fdaf3d3a1d323ff              # double 0.42113200000000001
	.quad	0x401787353b4b2fa9              # double 5.8820389999999998
	.quad	0x4021d5f69878316a              # double 8.917897
	.quad	0x401ce9f7b5aea316              # double 7.2284839999999999
	.quad	0x401b71d6494d50ec              # double 6.8611690000000003
	.quad	0x402186c3dab5c39c              # double 8.7632130000000003
	.quad	0x401afd6238da3c21              # double 6.7474449999999999
	.quad	0x4021084ccee5abc1              # double 8.5162110000000002
	.quad	0x4002112cadddf43c              # double 2.2583859999999998
	.quad	0x401cfe73a365cb36              # double 7.248488
	.quad	0x400ec238da3c2118              # double 3.8448349999999998
	.quad	0x40141f7e80389f84              # double 5.0307560000000002
	.quad	0x3ff3be28240b7803              # double 1.2339249999999999
	.quad	0x401d12be8bc169c2              # double 7.2683049999999998
	.quad	0x4019ab5c7cd898b3              # double 6.4173450000000001
	.quad	0x3fda2174c4cdfaca              # double 0.40829199999999999
	.quad	0x401af8b545c78a6e              # double 6.7428790000000003
	.quad	0x40228c8fb86f47b6              # double 9.2745339999999992
	.quad	0x3ffac2fa5093964a              # double 1.6726019999999999
	.quad	0x40180a80cf9e3865              # double 6.0102570000000002
	.quad	0x4005c78fabda0dfe              # double 2.722442
	.quad	0x3ffa254f7a919696              # double 1.634109
	.quad	0x3ff36ec5b078d930              # double 1.2145440000000001
	.quad	0x40157acfb762d83c              # double 5.3699329999999996
	.quad	0x3fc39b3d07c84b5e              # double 0.15317500000000001
	.quad	0x4023af3e89a88ace              # double 9.8422739999999997
	.quad	0x4012bbae03b3e9a7              # double 4.683281
	.quad	0x40136e9ee45c358b              # double 4.858028
	.quad	0x4007fe718a86d71f              # double 2.9992399999999999
	.quad	0x3ff5afad6cb53501              # double 1.3553900000000001
	.quad	0x40054ccc46950fc7              # double 2.6624989999999999
	.quad	0x401b0c04c8bc9cd4              # double 6.7617370000000001
	.quad	0x401b50d801b43526              # double 6.8289489999999997
	.quad	0x3fffe392e1ef73c1              # double 1.9930600000000001
	.quad	0x400a3062d40aaeb0              # double 3.2736260000000001
	.quad	0x401162dfd694ccab              # double 4.3465569999999998
	.quad	0x3fef1c714fce746d              # double 0.97222200000000003
	.quad	0x4014e767d34df04e              # double 5.2259820000000001
	.quad	0x402172493c89f40a              # double 8.7232149999999997
	.quad	0x4016fce5710880d8              # double 5.746969
	.quad	0x401a23c89f40a287              # double 6.5349449999999996
	.quad	0x401227d9988d2a20              # double 4.5389160000000004
	.quad	0x401110f301eabbcb              # double 4.2665519999999999
	.quad	0x4015ae99a62ed352              # double 5.4205079999999999
	.quad	0x4015a545846e8f2a              # double 5.4113980000000002
	.quad	0x40152a33bd9cae21              # double 5.2912129999999999
	.quad	0x401b4f0e90bc7b46              # double 6.8272040000000001
	.quad	0x4020d7ff79c842fa              # double 8.4218709999999994
	.quad	0x3ffbfb56b8737974              # double 1.7488619999999999
	.quad	0x4023e0de093532e8              # double 9.9391940000000005
	.quad	0x402028895d0b73d2              # double 8.0791730000000008
	.quad	0x40225bdff3f0fe04              # double 9.1794429999999991
	.quad	0x401925faa8a82a56              # double 6.2870889999999999
	.quad	0x4008e6583e8576cd              # double 3.112473
	.quad	0x400591d25aab4741              # double 2.696202
	.quad	0x401d59d1f601797d              # double 7.3377150000000002
	.quad	0x4017225a682b6284              # double 5.7835479999999997
	.quad	0x400c9b71758e2196              # double 3.5758999999999999
	.quad	0x40044b955f78359c              # double 2.5369060000000001
	.quad	0x4012e949a5657fb7              # double 4.7278200000000004
	.quad	0x3fcc837f7be121ee              # double 0.22276299999999999
	.quad	0x402386555c52e72e              # double 9.7623700000000007
	.quad	0x401fbe95b78cc9a7              # double 7.9361179999999995
	.quad	0x400c3c886162f167              # double 3.5295570000000001
	.quad	0x40115fdd22856606              # double 4.3436170000000001
	.quad	0x40143fec56d5cfab              # double 5.0624250000000002
	.quad	0x40140abc947064ed              # double 5.0104850000000001
	.quad	0x401c784db9c7368b              # double 7.1174840000000001
	.quad	0x3ff105186db50f41              # double 1.063744
	.quad	0x400ac92b3cc4ac6d              # double 3.3482270000000001
	.quad	0x3fe1dc26dce39b45              # double 0.55812399999999995
	.quad	0x40235215db3397dd              # double 9.6603229999999999
	.quad	0x40206f416bdb1a6d              # double 8.2172959999999993
	.quad	0x4018832b990afe61              # double 6.1280960000000002
	.quad	0x400999ee88df3733              # double 3.2001620000000002
	.quad	0x4014de414e7ee914              # double 5.2170459999999999
	.quad	0x40201bed527e5215              # double 8.0545449999999992
	.quad	0x401dbd6883771865              # double 7.4349689999999997
	.quad	0x401e3be1650a45d4              # double 7.5584769999999999
	.quad	0x400313825e13b18e              # double 2.3845260000000001
	.quad	0x40216c7e28240b78              # double 8.7119
	.quad	0x401bac07aaef2c73              # double 6.9179979999999999
	.quad	0x4021d5885d31337f              # double 8.9170560000000005
	.quad	0x4020997b7414a4d3              # double 8.2997700000000005
	.quad	0x401dc5f4e4430b18              # double 7.4433170000000004
	.quad	0x3ff81b90ea9e6eeb              # double 1.5067299999999999
	.quad	0x3ff3e1309c7ffde7              # double 1.242478
	.quad	0x3ff17a647fdc5932              # double 1.092381
	.quad	0x40239a3bff8a8f3b              # double 9.8012390000000007
	.quad	0x401de163baba7b91              # double 7.4701069999999996
	.quad	0x3fd4a4484944ed70              # double 0.32252700000000001
	.quad	0x4005bd11be6e6538              # double 2.7173189999999998
	.quad	0x402284bf4cb1897a              # double 9.2592719999999993
	.quad	0x401f8dbc664d3bf3              # double 7.888414
	.quad	0x4001fac68a936c59              # double 2.247449
	.quad	0x4021be2eb1c432ca              # double 8.8714499999999994
	.quad	0x4007541c8216c615              # double 2.9160699999999999
	.quad	0x401c190f301eabbd              # double 7.0244720000000003
	.quad	0x3ff0e033e78e1933              # double 1.054737
	.quad	0x3fd1db940fecdd0e              # double 0.27902700000000003
	.quad	0x401640eed02cd39e              # double 5.5634110000000003
	.quad	0x400916cf850df15a              # double 3.1361379999999999
	.quad	0x40124f50a02b8412              # double 4.5774559999999997
	.quad	0x401d5a71de69ad43              # double 7.3383250000000002
	.quad	0x3ffd84d013a92a30              # double 1.8449249999999999
	.quad	0x3fcad05f28848388              # double 0.209484
	.quad	0x3ff404fe36d22425              # double 1.2512190000000001
	.quad	0x40084b5f5f0b2852              # double 3.0368029999999999
	.quad	0x40211e2aa19439de              # double 8.5589189999999995
	.quad	0x3ff3d1116a8b8f15              # double 1.238542
	.quad	0x4020db502ababead              # double 8.4283459999999994
	.quad	0x4016785caafbc1ad              # double 5.6175410000000001
	.quad	0x401ccd017dae8188              # double 7.2002009999999999
	.quad	0x400ed6ec5b078d93              # double 3.854943
	.quad	0x4017b83be6601bca              # double 5.9299160000000004
	.quad	0x402371c5a3e39f77              # double 9.7222109999999997
	.quad	0x402123bea91d9b1b              # double 8.5698139999999992
	.quad	0x3fe2c34a01abd1ab              # double 0.58633900000000005
	.quad	0x40118e58a32f4491              # double 4.3890099999999999
	.quad	0x40165b8d3f1843c4              # double 5.5894060000000003
	.quad	0x401d079aae6c8f75              # double 7.2574259999999997
	.quad	0x401b4797460242d0              # double 6.8199129999999997
	.quad	0x4012b41355475a32              # double 4.6758550000000003
	.quad	0x401278012dfd694d              # double 4.6171920000000002
	.quad	0x40214a5fe974a340              # double 8.6452629999999999
	.quad	0x40100ca643cc07ab              # double 4.0123530000000001
	.quad	0x40030f30a4e379b7              # double 2.3824169999999998
	.quad	0x3ff97397dd00f777              # double 1.5907210000000001
	.quad	0x401f86ffc115df65              # double 7.8818349999999997
	.quad	0x40059685985ad539              # double 2.6984970000000001
	.quad	0x401c00b9dc2f405f              # double 7.0007089999999996
	.quad	0x401d96138fffbce4              # double 7.3965589999999999
	.quad	0x401d57dd44135547              # double 7.3358049999999997
	.quad	0x401eda36199780bb              # double 7.7130970000000003
	.quad	0x402246f7e3d1cc10              # double 9.1386099999999999
	.quad	0x40165f166e008e9b              # double 5.5928589999999998
	.quad	0x4008571001d5c316              # double 3.0425110000000002
	.quad	0x400c1c8eabffcdab              # double 3.513944
	.quad	0x3fb91d4738a3b57c              # double 0.098102999999999995
	.quad	0x3ff2db3aeee95747              # double 1.178523
	.quad	0x4023f92513b5bf6a              # double 9.9866109999999999
	.quad	0x4009bfdcdf698783              # double 3.218683
	.quad	0x401b0611ba3ca750              # double 6.7559269999999998
	.quad	0x4018082a12f90108              # double 6.0079729999999998
	.quad	0x401767f993d5347a              # double 5.8515379999999997
	.quad	0x401b715ad106ee31              # double 6.8606980000000002
	.quad	0x4020f6032db1e9f2              # double 8.4804929999999992
	.quad	0x4021530fcf80dc33              # double 8.6622299999999992
	.quad	0x3ff83d82773e24ff              # double 1.5150170000000001
	.quad	0x401dc13b18dac259              # double 7.4387020000000001
	.quad	0x4021b67fb267c6b9              # double 8.8564430000000005
	.quad	0x400c34a1272c94b4              # double 3.5256980000000002
	.quad	0x4020a0196d8f4f94              # double 8.3126940000000004
	.quad	0x4002773fb7a5f41b              # double 2.308227
	.quad	0x40202c1a47a9e2bd              # double 8.086138
	.quad	0x401c40110a137f39              # double 7.0625650000000002
	.quad	0x4016131ca7d6733f              # double 5.5186640000000002
	.quad	0x4003c27bf61aa3f0              # double 2.4699629999999999
	.quad	0x40164198f1d3ed52              # double 5.5640599999999996
	.quad	0x401a1496ededaec5              # double 6.5201070000000003
	.quad	0x3ffa54c33b539325              # double 1.645694
	.quad	0x401a4ab53d640e9d              # double 6.5729569999999997
	.quad	0x4013fdb402d16b98              # double 4.997757
	.quad	0x40151151611ba3ca              # double 5.2669119999999996
	.quad	0x3fe4c111ada76d98              # double 0.64856800000000003
	.quad	0x400b081c2e33eff2              # double 3.3789600000000002
	.quad	0x3ffb7be553ac4f7f              # double 1.7177480000000001
	.quad	0x3fd93c81908e581d              # double 0.394318
	.quad	0x401cfa84be40420f              # double 7.2446469999999996
	.quad	0x401dd670e2c12ad8              # double 7.4594149999999999
	.quad	0x401ee422467be554              # double 7.7227870000000003
	.quad	0x401408b1dd5d3dc9              # double 5.0084910000000002
	.quad	0x4019e20ab7132724              # double 6.4707439999999998
	.quad	0x40201f72b4528284              # double 8.0614220000000003
	.quad	0x401cfcf4e874c900              # double 7.2470280000000002
	.quad	0x401f155582129457              # double 7.7708339999999997
	.quad	0x4020f2543f1c7582              # double 8.4732990000000008
	.quad	0x40048714fce746cc              # double 2.5659580000000002
	.quad	0x3ff04f5a1016ce79              # double 1.0193730000000001
	.quad	0x40139298cc144029              # double 4.8931610000000001
	.quad	0x4010fb46fdeb52ca              # double 4.2453880000000002
	.quad	0x400931c9f72f76e6              # double 3.149311
	.quad	0x402129420b3d4ae4              # double 8.5805819999999997
	.quad	0x401f7d8be7296f65              # double 7.8726039999999999
	.quad	0x4018fea9a3d2d880              # double 6.2486940000000004
	.quad	0x401b5cb3e5753a3f              # double 6.8405300000000002
	.quad	0x400c34a98aa8650e              # double 3.5257139999999998
	.quad	0x400d9bd7b2031ceb              # double 3.701095
	.quad	0x3ff6ce18266772d6              # double 1.425316
	.quad	0x401274b1ab0856e7              # double 4.6139590000000004
	.quad	0x4003b66adb402d17              # double 2.4640710000000001
	.quad	0x401c766ec9e236c1              # double 7.1156569999999997
	.quad	0x400966cdaf4adbc6              # double 3.1751969999999998
	.quad	0x3fe07eaa2a0a9585              # double 0.51546199999999998
	.quad	0x4023926f1dc50ce5              # double 9.7860040000000001
	.quad	0x401ed74794ea0770              # double 7.7102339999999998
	.quad	0x3fd82599ed7c6fbd              # double 0.37729499999999999
	.quad	0x401db6dd26b723ee              # double 7.4285779999999999
	.quad	0x401fc21ab4b72c52              # double 7.9395550000000004
	.quad	0x401332b990afe60c              # double 4.7995359999999998
	.quad	0x4000e3e6c4c5974e              # double 2.1112799999999998
	.quad	0x3ffcb8800eae18ad              # double 1.7950440000000001
	.quad	0x400ef1b36bd2b6f2              # double 3.8680180000000002
	.quad	0x40019ea24cc68230              # double 2.202458
	.quad	0x40223b87bdcf0308              # double 9.1162700000000001
	.quad	0x400a683ec892ab69              # double 3.3009010000000001
	.quad	0x4021cce7ab756430              # double 8.9002049999999997
	.quad	0x4000a0a2877ee4e2              # double 2.0784349999999998
	.quad	0x3fe20270f3882279              # double 0.56279800000000002
	.quad	0x40106be7afa72218              # double 4.1053759999999997
	.quad	0x4009416a48733659              # double 3.1569410000000002
	.quad	0x4012e9496249a134              # double 4.7278190000000002
	.quad	0x400fd7b0f6ad70e7              # double 3.980318
	.quad	0x401118dc11e42e12              # double 4.2742769999999997
	.quad	0x401a81c6088d6d3b              # double 6.6267319999999996
	.quad	0x401957dd44135547              # double 6.3358049999999997
	.quad	0x40163e2c55c96031              # double 5.5607160000000002
	.quad	0x40072d23d4f15e7d              # double 2.8970410000000002
	.quad	0x4012421dda059a74              # double 4.5645670000000003
	.quad	0x3ff6205681ecd4aa              # double 1.382895
	.quad	0x4016c1a261bf37b9              # double 5.6890960000000002
	.quad	0x402388e64b231401              # double 9.7673819999999995
	.quad	0x4021ef6a0dbad3a6              # double 8.967606
	.quad	0x40197891e215336e              # double 6.3677440000000001
	.quad	0x401d9e2d6238da3c              # double 7.4044699999999999
	.quad	0x4021763beec3979a              # double 8.7309260000000002
	.quad	0x4007f73affb04ee8              # double 2.9957180000000001
	.quad	0x400a8bae89eba6ad              # double 3.3182040000000002
	.quad	0x4017619008205ff2              # double 5.8452760000000001
	.quad	0x4021a6a0fd3b29a2              # double 8.8254470000000005
	.quad	0x3fb0ce2d1f1cfbb9              # double 0.065645999999999996
	.quad	0x4015f164840e171a              # double 5.485735
	.quad	0x4023b01e2584f4c7              # double 9.8439800000000001
	.quad	0x40143bbe4473cd57              # double 5.0583429999999998
	.quad	0x4020be8943e10060              # double 8.3721409999999992
	.quad	0x40230549731098d4              # double 9.5103259999999991
	.quad	0x401047df19d66adb              # double 4.0701869999999998
	.quad	0x401cf5347a5b0ff1              # double 7.2394579999999999
	.quad	0x4017d68943e10060              # double 5.9595079999999996
	.quad	0x3ff7d1b1d92b7fe1              # double 1.4886950000000001
	.quad	0x4011ac7219220ff5              # double 4.4184039999999998
	.quad	0x402196173b85e80c              # double 8.7931460000000001
	.quad	0x4003b157abb8800f              # double 2.4615930000000001
	.quad	0x4023faf48c2e770c              # double 9.9901470000000003
	.quad	0x3fcd9ce075f6fd22              # double 0.23135
	.quad	0x402154a18bd66278              # double 8.6652950000000004
	.quad	0x401c9e275ab7dc7b              # double 7.1544470000000002
	.quad	0x401501a8ef77f280              # double 5.2516210000000001
	.quad	0x4019c8fe260b2c84              # double 6.4462820000000001
	.quad	0x400b820b3d4ae42a              # double 3.4384980000000001
	.quad	0x40218825bfad2999              # double 8.7659129999999994
	.quad	0x400882d948dc11e4              # double 3.0638909999999999
	.quad	0x401296a8fc0d2c38              # double 4.6471289999999996
	.quad	0x4020e4322291fb40              # double 8.4456950000000006
	.quad	0x400b6793dd97f62b              # double 3.4255749999999998
	.quad	0x4011f13cab81f96a              # double 4.4855830000000001
	.quad	0x3ff5f93dd97f62b7              # double 1.3733500000000001
	.quad	0x4023dcad362e9036              # double 9.9310089999999995
	.quad	0x3fda5043e5321e60              # double 0.41114899999999999
	.quad	0x4022dfc2224edf61              # double 9.4370279999999997
	.quad	0x4019afbfc6540cc8              # double 6.4216300000000004
	.quad	0x4021b8409e55c0fd              # double 8.8598680000000005
	.quad	0x40204d64d7f0ed3e              # double 8.1511600000000008
	.quad	0x40169262cba732df              # double 5.6429549999999997
	.quad	0x401d952ac753e708              # double 7.3956710000000001
	.quad	0x4023e62174c4cdfb              # double 9.9494740000000003
	.quad	0x400a84d65e460675              # double 3.3148620000000002
	.quad	0x402118f6cefed634              # double 8.5487579999999994
	.quad	0x40183fa26a22b389              # double 6.0621429999999998
	.quad	0x401ac7ded6ba8c58              # double 6.6951859999999996
	.quad	0x401bde0114d2f5dc              # double 6.9668010000000002
	.quad	0x3ff44ad794a6eb92              # double 1.2682720000000001
	.quad	0x401864cdb7ae5797              # double 6.0984410000000002
	.quad	0x4023148ba83f4eca              # double 9.5401279999999993
	.quad	0x3ffefe28240b7803              # double 1.9370499999999999
	.quad	0x3fe69b0ee49f5169              # double 0.70642799999999994
	.quad	0x3ffdb7878b7a1c26              # double 1.857307
	.quad	0x40103ac2df0d4131              # double 4.0573839999999999
	.quad	0x401415100a393ee6              # double 5.0205690000000001
	.quad	0x3ffb65d18090b418              # double 1.712358
	.quad	0x40220f8705425f20              # double 9.0303269999999998
	.quad	0x401305f394b7b289              # double 4.7558119999999997
	.quad	0x4014246fdeb52c9d              # double 5.0355829999999999
	.quad	0x401e41e108c3f3e0              # double 7.5643349999999998
	.quad	0x40119b5807fed203              # double 4.4017030000000004
	.quad	0x4015f0c282c6ef3d              # double 5.4851169999999998
	.quad	0x40151a4052d666aa              # double 5.2756360000000004
	.quad	0x400aa959e6256367              # double 3.3326910000000001
	.quad	0x3fee729b280f12c2              # double 0.95148999999999995
	.quad	0x4018fbe4cd749279              # double 6.2459899999999999
	.quad	0x3fd993c46d82ba5a              # double 0.399644
	.quad	0x4015984a0e410b63              # double 5.39872
	.quad	0x40002a454de7ea60              # double 2.0206400000000002
	.quad	0x4019e7a56de3326a              # double 6.4762170000000001
	.quad	0x401628201cd5f99c              # double 5.5391849999999998
	.quad	0x40120849cb252ce0              # double 4.5080939999999998
	.quad	0x4007f4a0a0f4d7ae              # double 2.9944470000000001
	.quad	0x3fe34016052502ef              # double 0.60157300000000002
	.quad	0x4023ee2a80064a9d              # double 9.9651680000000002
	.quad	0x400dec79702e6645              # double 3.7404660000000001
	.quad	0x4016afaebc408d8f              # double 5.6715650000000002
	.quad	0x4004d15bdd76683c              # double 2.6022259999999999
	.quad	0x4018d5781c714fce              # double 6.2084659999999996
	.quad	0x4022a229c779a6b5              # double 9.3167249999999999
	.quad	0x3feb1932d6ece13f              # double 0.84682599999999997
	.quad	0x4019fe5c4eb56fb9              # double 6.498399
	.quad	0x3fe410fb65668c26              # double 0.62707299999999999
	.quad	0x401df67a95c853c1              # double 7.4907019999999997
	.quad	0x3ff90dca8e2e2b8c              # double 1.5658669999999999
	.quad	0x4022845ae5ffa3ba              # double 9.2585060000000006
	.quad	0x4023b5d97f62b6ae              # double 9.8551749999999991
	.quad	0x3ffc7a4e7ab75643              # double 1.77986
	.quad	0x400bd614df8b1572              # double 3.4795319999999998
	.quad	0x401e0a9b499d0204              # double 7.5103580000000001
	.quad	0x4022bff583a53b8e              # double 9.3749199999999995
	.quad	0x401f57739f340d4e              # double 7.8354020000000002
	.quad	0x400019e8c47a17f4              # double 2.012651
	.quad	0x401e10b955f7835a              # double 7.5163320000000002
	.quad	0x4013ec1d29dc725c              # double 4.9805799999999998
	.quad	0x400f7547e06961c3              # double 3.9322659999999998
	.quad	0x402256cedd484513              # double 9.1695469999999997
	.quad	0x4021c3ee5eedcc21              # double 8.8826780000000003
	.quad	0x3ff29fe86833c600              # double 1.16404
	.quad	0x40171ee8d10f51ad              # double 5.7801850000000004
	.quad	0x3ff63be878fabda1              # double 1.389626
	.quad	0x3fbc6b9c304ccee6              # double 0.111017
	.quad	0x3ff106bce8533b10              # double 1.0641449999999999
	.quad	0x4004dc536d655e29              # double 2.6075810000000001
	.quad	0x4008a7fa1a0cf180              # double 3.08202
	.quad	0x40233e5b20b8066c              # double 9.6217889999999997
	.quad	0x40232ee978d4fdf4              # double 9.5916250000000005
	.quad	0x4016c7dbf487fcb9              # double 5.6951749999999999
	.quad	0x401ea7481b21c476              # double 7.6633610000000001
	.quad	0x40145a0d349be8ff              # double 5.0879409999999998
	.quad	0x401b87a7008a697b              # double 6.8824730000000001
	.quad	0x402274209246bf01              # double 9.2268109999999997
	.quad	0x401182ad81adea89              # double 4.3776149999999996
	.quad	0x4014f4ba94bbe447              # double 5.2389929999999998
	.quad	0x3ffe680bed740c41              # double 1.9004019999999999
	.quad	0x400c6b220791c4b9              # double 3.552311
	.quad	0x4023af4906034f40              # double 9.8423540000000002
	.quad	0x40211070fbeb9e49              # double 8.5321119999999997
	.quad	0x401ff28b2a6b0d95              # double 7.9868589999999999
	.quad	0x401468298cc14403              # double 5.1017210000000004
	.quad	0x40138a52ef911cf3              # double 4.8850819999999997
	.quad	0x400b7a450acc0bdd              # double 3.4347020000000001
	.quad	0x3ff93e82517e77d5              # double 1.577761
	.quad	0x401e4604189374bc              # double 7.5683749999999996
	.quad	0x4022203dff3f0fe0              # double 9.0629729999999995
	.quad	0x400d8c1b97353b4b              # double 3.6934119999999999
	.quad	0x40032e746cb966be              # double 2.3976829999999998
	.quad	0x4000b9a6b50b0f28              # double 2.0906500000000001
	.quad	0x40004a47ecfe9b7c              # double 2.03627
	.quad	0x400c94c122749f0e              # double 3.5726339999999999
	.quad	0x3fec64c0df58c08b              # double 0.88729899999999995
	.quad	0x4021ef69a91105e2              # double 8.9676030000000004
	.quad	0x40058ae31d712a0f              # double 2.6928160000000001
	.quad	0x401e672799a1fd15              # double 7.6007369999999996
	.quad	0x401c94534bd76ee7              # double 7.1448489999999998
	.quad	0x3ffd18c7e28240b8              # double 1.8185500000000001
	.quad	0x4022bed0b30b5aa7              # double 9.3726859999999998
	.quad	0x4022407dd4413554              # double 9.1259599999999991
	.quad	0x401d48c868b9fdbd              # double 7.3210769999999998
	.quad	0x401ebee34fc610f1              # double 7.686414
	.quad	0x4022ea3fee2c98e5              # double 9.4575189999999995
	.quad	0x402218bc59b8023a              # double 9.0483119999999992
	.quad	0x3ff7b566490a350d              # double 1.481787
	.quad	0x40116cde19fc2a88              # double 4.3563159999999996
	.quad	0x3feff1ed17c5ef63              # double 0.998282
	.quad	0x40207f7f27fe4bcb              # double 8.2490170000000003
	.quad	0x4023f654d61b2a28              # double 9.981116
	.quad	0x4023d0c4dec1c1d7              # double 9.9077520000000003
	.quad	0x401eb938151a4378              # double 7.6808779999999998
	.quad	0x4000498e53eb399f              # double 2.0359159999999998
	.quad	0x3fdce219652bd3c3              # double 0.45129999999999998
	.quad	0x401adc9f2fdb8fde              # double 6.7154509999999998
	.quad	0x4021be2046c764ae              # double 8.87134
	.quad	0x401dc5aaf78feef6              # double 7.4430350000000001
	.quad	0x40127366516db0de              # double 4.6126950000000004
	.quad	0x3fda6b8b69552e30              # double 0.41281400000000001
	.quad	0x3ff32550870110a1              # double 1.19661
	.quad	0x4002f5d3dc8b86b1              # double 2.3700329999999998
	.quad	0x3fe281c92ddbdb5e              # double 0.57834300000000005
	.quad	0x400688e9b38d60a6              # double 2.8168519999999999
	.quad	0x401ac3d31b9b66f9              # double 6.6912349999999998
	.quad	0x40202d8fd5cb7910              # double 8.0889880000000005
	.quad	0x3ff08793dd97f62b              # double 1.0330999999999999
	.quad	0x4016864388ebcc6c              # double 5.6311169999999997
	.quad	0x400c24fc1df3300e              # double 3.518059
	.quad	0x4018616aceaaf35e              # double 6.0951339999999998
	.quad	0x401720a782906898              # double 5.7818889999999996
	.quad	0x401800efdc9c4da9              # double 6.000915
	.quad	0x400926223e186983              # double 3.1436199999999999
	.quad	0x4017ca8d64d7f0ed              # double 5.9478049999999998
	.quad	0x3ffa2f416bdb1a6d              # double 1.6365369999999999
	.quad	0x4016f7e6b3fe9fae              # double 5.7420910000000003
	.quad	0x3ff38e6299524bfd              # double 1.222262
	.quad	0x401f4c8cd63cb817              # double 7.8247559999999998
	.quad	0x3ff51bcba3012168              # double 1.319286
	.quad	0x3ffe4e0eb67c2870              # double 1.8940570000000001
	.quad	0x400190624dd2f1aa              # double 2.1955
	.quad	0x401bc07e9d94d0dd              # double 6.937983
	.quad	0x3febe1c9b4139863              # double 0.87131199999999998
	.quad	0x4005a018a43bb40b              # double 2.7031719999999999
	.quad	0x401ddf4517614595              # double 7.4680369999999998
	.quad	0x402108a4c1ebc83b              # double 8.5168820000000007
	.quad	0x40226adafd113837              # double 9.2087020000000006
	.quad	0x3ff024b018611fd6              # double 1.0089570000000001
	.quad	0x400bde353f7ced91              # double 3.4834999999999998
	.quad	0x3ff813f4a98aa865              # double 1.504872
	.quad	0x4014393682730c67              # double 5.0558719999999999
	.quad	0x4006d0203e63e8de              # double 2.8516240000000002
	.quad	0x401a43f4a98aa865              # double 6.5663629999999999
	.quad	0x4020f568c692f6e8              # double 8.4793149999999997
	.quad	0x40236689a88ace25              # double 9.7002690000000004
	.quad	0x401e78c75c4a83b2              # double 7.6179480000000002
	.quad	0x3ff38a925fe974a3              # double 1.2213309999999999
	.quad	0x401cfbb2788db057              # double 7.2457979999999997
	.quad	0x401361832fcac8e7              # double 4.8452270000000004
	.quad	0x4021ed48a9bcfd4c              # double 8.9634450000000001
	.quad	0x4020735ce1826677              # double 8.2253179999999997
	.quad	0x401efb0142f61ed6              # double 7.7451220000000003
	.quad	0x400435703f2d3c79              # double 2.5260929999999999
	.quad	0x40231f1715c63ae2              # double 9.5607229999999994
	.quad	0x4019b2ecf2064239              # double 6.4247319999999997
	.quad	0x4019f0c67168f8e8              # double 6.4851320000000001
	.quad	0x401ab56366d7a56e              # double 6.6771370000000001
	.quad	0x4021b38dc55000c9              # double 8.8506909999999994
	.quad	0x4010a660e51d25ab              # double 4.1624790000000003
	.quad	0x3fee91148fd9fd37              # double 0.95521
	.quad	0x3ffdf240fa9c12f1              # double 1.8716440000000001
	.quad	0x4011f05dd8f92afa              # double 4.4847330000000003
	.quad	0x4017a24c8366516e              # double 5.9084950000000003
	.quad	0x4015d5275ee99a63              # double 5.4581580000000001
	.quad	0x400ebad85dfa871a              # double 3.8412329999999999
	.quad	0x3fe78c1db0142f62              # double 0.73585400000000001
	.quad	0x401318116ebd4cfd              # double 4.773504
	.quad	0x4022f83b1d0c8041              # double 9.4848259999999999
	.quad	0x40120d04a2fcefaa              # double 4.5127129999999998
	.quad	0x3fe8bda5119ce076              # double 0.77315
	.quad	0x402327440af1cb8a              # double 9.5766910000000003
	.quad	0x401834107314ca92              # double 6.0508439999999997
	.quad	0x401ac212513b5bf7              # double 6.6895230000000003
	.quad	0x402309a650614163              # double 9.5188469999999991
	.quad	0x4021a508d4bad7d8              # double 8.8223330000000004
	.quad	0x4012e50ca1cef241              # double 4.723681
	.quad	0x4017990b417ca212              # double 5.899457
	.quad	0x4021819d0203e63f              # double 8.7531510000000008
	.quad	0x401d84373f316e37              # double 7.3791169999999999
	.quad	0x4022d4892ab68cef              # double 9.4151089999999992
	.quad	0x3feaf81626b2f230              # double 0.84278399999999998
	.quad	0x400427735c182ecb              # double 2.519263
	.quad	0x4023ba426bb55ac0              # double 9.8637879999999995
	.quad	0x4011679e59f2ba9d              # double 4.3511899999999999
	.quad	0x4021883a53b8e4b8              # double 8.7660699999999991
	.quad	0x4012c85ad538ac19              # double 4.695659
	.quad	0x400078183f91e647              # double 2.05864
	.quad	0x40205831ad2135db              # double 8.1722540000000006
	.quad	0x400789da597d49d8              # double 2.9423110000000001
	.quad	0x401647d5a9eb2075              # double 5.5701510000000001
	.quad	0x40215fb5f1bef49d              # double 8.6869350000000001
	.quad	0x401d6c2a454de7ea              # double 7.3556299999999997
	.quad	0x4016b1a60d4562e1              # double 5.6734850000000003
	.quad	0x400924dfce3150db              # double 3.143005
	.quad	0x400b124638c97529              # double 3.3839229999999998
	.quad	0x401c78bb906466b2              # double 7.1179030000000001
	.quad	0x401d8c6da4484945              # double 7.3871370000000001
	.quad	0x4012996c3fc43b2e              # double 4.6498270000000002
	.quad	0x401076bd6e8af816              # double 4.1159569999999999
	.quad	0x4019c6af46aa087d              # double 6.4440280000000003
	.quad	0x400183e63e8dda49              # double 2.1894040000000001
	.quad	0x401f893708aac96d              # double 7.8839990000000002
	.quad	0x4018a272862f598a              # double 6.1586400000000001
	.quad	0x4023d1d495182a99              # double 9.9098249999999996
	.quad	0x40223e147ae147ae              # double 9.1212499999999999
	.quad	0x401c5d084e831ad2              # double 7.0908519999999999
	.quad	0x4008d5b1c8648840              # double 3.1043430000000001
	.quad	0x4012eb2a6b0d9514              # double 4.729654
	.quad	0x401638a1dfb9389b              # double 5.5553049999999997
	.quad	0x3fff7c7b45f17bd9              # double 1.9678910000000001
	.quad	0x4023b9b0ee49f517              # double 9.8626780000000007
	.quad	0x400781ccd9620685              # double 2.9383789999999999
	.quad	0x400ef39f340d4dc6              # double 3.8689559999999998
	.quad	0x4016452263d816ad              # double 5.5675140000000001
	.quad	0x3ff84196d8f4f93c              # double 1.5160130000000001
	.quad	0x401dddcf4623d0c0              # double 7.4666110000000003
	.quad	0x401e06b4c7f34938              # double 7.5065489999999996
	.quad	0x40180036c9c0a8d2              # double 6.0002089999999999
	.quad	0x4022359018e75793              # double 9.1046150000000008
	.quad	0x3feae34549b62c77              # double 0.84024299999999996
	.quad	0x401c797cc39ffd61              # double 7.1186400000000001
	.quad	0x40148c322291fb40              # double 5.1369100000000003
	.quad	0x401b421187e7c06e              # double 6.8145199999999999
	.quad	0x4021b972abef06b3              # double 8.8622029999999992
	.quad	0x40035b09a671ef31              # double 2.4194520000000002
	.quad	0x400f0145953586cb              # double 3.8756210000000002
	.quad	0x4020c7928e0c9d9d              # double 8.3897899999999996
	.quad	0x4000629f9ce8d973              # double 2.0481560000000001
	.quad	0x40123bc558644524              # double 4.55837
	.quad	0x4023934acaff6d33              # double 9.7876799999999999
	.quad	0x4020367ea5f84cad              # double 8.1064349999999994
	.quad	0x40087caf2d7f950c              # double 3.0608810000000002
	.quad	0x401cb6a9c560c7c1              # double 7.178382
	.quad	0x401500d1fa333765              # double 5.2508010000000001
	.quad	0x40155fa93af74cd3              # double 5.3434189999999999
	.quad	0x401fc2cbea4ebdd3              # double 7.9402309999999998
	.quad	0x401f3d7b634dad32              # double 7.810041
	.quad	0x401681f57b41bfbe              # double 5.6269130000000001
	.quad	0x401347bb73083559              # double 4.8200510000000003
	.quad	0x401d7a159817b95a              # double 7.3692229999999999
	.quad	0x4001f605ab3aabcd              # double 2.2451279999999998
	.quad	0x402008c0f01fb82c              # double 8.0170969999999996
	.quad	0x4021f5c0fcb4f1e5              # double 8.9799880000000005
	.quad	0x40048b6e935b91f7              # double 2.568082
	.quad	0x401e971d1d4738a4              # double 7.6475720000000003
	.quad	0x402362d256798959              # double 9.6930110000000002
	.quad	0x40236e50a45d41fa              # double 9.7154589999999992
	.quad	0x401ec4a1f080303c              # double 7.692024
	.quad	0x4022150bd87b56b8              # double 9.0411059999999992
	.quad	0x400ef2474538ef35              # double 3.8683000000000001
	.quad	0x4022335dedf1e083              # double 9.1003260000000008
	.quad	0x4018433333333333              # double 6.0656249999999998
	.quad	0x401d98655193708b              # double 7.3988240000000003
	.quad	0x400f0e496ededaec              # double 3.8819759999999999
	.quad	0x400b28986fcdee35              # double 3.394822
	.quad	0x4012a2a411c2a023              # double 4.6588289999999999
	.quad	0x3fecac6ef3d3a1d3              # double 0.89604899999999998
	.quad	0x4006a66cb10342ab              # double 2.8312620000000002
	.quad	0x401a4e33acd5b680              # double 6.5763689999999997
	.quad	0x4018285e80bed741              # double 6.0394230000000002
	.quad	0x4015142d05f28848              # double 5.2697029999999998
	.quad	0x4014dba3443d46b2              # double 5.2144899999999996
	.quad	0x4001f93c46d82ba6              # double 2.2466970000000002
	.quad	0x4012b29f9ce8d973              # double 4.6744370000000002
	.quad	0x40183369b9d7fd82              # double 6.0502079999999996
	.quad	0x401dff3e0370cdc8              # double 7.4992599999999995
	.quad	0x4017c909f1f14984              # double 5.9463270000000001
	.quad	0x40218d22ea0fd3b3              # double 8.7756570000000007
	.quad	0x4000de9f2778140e              # double 2.1087020000000001
	.quad	0x400cd0214ad362e9              # double 3.601626
	.quad	0x401c07c3d68405b4              # double 7.0075830000000003
	.quad	0x401d6c77574f722e              # double 7.3559239999999999
	.quad	0x400665dd8f92af9b              # double 2.7997390000000002
	.quad	0x400de68a0d349be9              # double 3.737568
	.quad	0x400ae6612839042e              # double 3.3624900000000002
	.quad	0x3ffec467381d7dbf              # double 1.9229499999999999
	.quad	0x40216e69ad42c3ca              # double 8.7156500000000001
	.quad	0x4018c9be09bb6aa5              # double 6.1970140000000002
	.quad	0x401765d4a5df223a              # double 5.8494440000000001
	.quad	0x401a0952d234eb9a              # double 6.5091049999999999
	.quad	0x3fd7c69b5a63f9a5              # double 0.37149700000000002
	.quad	0x3fab8ed1bf7ad4b2              # double 0.053823999999999997
	.quad	0x40168f765fd8adac              # double 5.6401000000000003
	.quad	0x400f11593e5fb720              # double 3.8834710000000001
	.quad	0x400f3c0ca600b029              # double 3.9043209999999999
	.quad	0x400cd08feac42e99              # double 3.6018370000000002
	.quad	0x4014aa3db3bfb58d              # double 5.1662509999999999
	.quad	0x4023445069a4df48              # double 9.633426
	.quad	0x40063232d2bb2357              # double 2.7745109999999999
	.quad	0x400f299fa11a975b              # double 3.895324
	.quad	0x400971dde37585be              # double 3.180599
	.quad	0x3fffdedf1e0828c3              # double 1.9919119999999999
	.quad	0x402158f14db59579              # double 8.6737160000000006
	.quad	0x402028a2a90cd424              # double 8.0793660000000002
	.quad	0x401d9491f2dc2b0f              # double 7.3950880000000003
	.quad	0x40221829068986fd              # double 9.0471880000000002
	.quad	0x401f65dd095af295              # double 7.8494760000000001
	.quad	0x401ac4d48882f0e1              # double 6.6922170000000003
	.quad	0x4013255f78359bc3              # double 4.7864969999999998
	.quad	0x400ed744f5d35654              # double 3.8551120000000001
	.quad	0x4015b91b3f20a73f              # double 5.4307679999999996
	.quad	0x4022d0f840181e04              # double 9.408144
	.quad	0x40060e69f05ea24d              # double 2.7570380000000001
	.quad	0x3fd938b04ab606b8              # double 0.39408500000000002
	.quad	0x401cf97a67a52ac7              # double 7.2436309999999997
	.quad	0x401f43a57eaa2a0b              # double 7.8160610000000003
	.quad	0x400aaf6c69b5a640              # double 3.3356560000000002
	.quad	0x3fea93db7f173754              # double 0.83054899999999998
	.quad	0x4009fb506dd69d30              # double 3.2477119999999999
	.quad	0x401961a7e3087875              # double 6.3453670000000004
	.quad	0x4006d29888f861a6              # double 2.85283
	.quad	0x40077ca5bd944aa5              # double 2.9358629999999999
	.quad	0x3ff32e978d4fdf3b              # double 1.1988749999999999
	.quad	0x4000efb6dca07f67              # double 2.117048
	.quad	0x40220d0b524399b3              # double 9.0254770000000004
	.quad	0x40013f2ba9d1f601              # double 2.1558449999999998
	.quad	0x402368522ea0fd3b              # double 9.7037519999999997
	.quad	0x40233b8476f2a5a4              # double 9.6162449999999992
	.quad	0x4002a934acaff6d3              # double 2.3326199999999999
	.quad	0x3fe1069a4df47f99              # double 0.53205599999999997
	.quad	0x40166d5bab21815a              # double 5.606795
	.quad	0x40127d783dff3f10              # double 4.6225290000000001
	.quad	0x400bf782d38476f3              # double 3.4958550000000002
	.quad	0x400c813b18dac259              # double 3.5631010000000001
	.quad	0x4013772de43ed95a              # double 4.8663860000000003
	.quad	0x400f6ad3e920c06a              # double 3.927162
	.quad	0x40217b8ed1bf7ad5              # double 8.7413240000000005
	.quad	0x400e86234a87e38f              # double 3.8154970000000001
	.quad	0x3ffb06e5cd4ed2cc              # double 1.689184
	.quad	0x3fd9aeafab53d641              # double 0.401287
	.quad	0x40216a92a3055326              # double 8.7081499999999998
	.quad	0x4022705f28848388              # double 9.2194760000000002
	.quad	0x4009a428d434a01b              # double 3.2051560000000001
	.quad	0x4021a50a24463066              # double 8.822343
	.quad	0x4020fb17ce52deca              # double 8.4904159999999997
	.quad	0x401a109d8c6d612c              # double 6.5162259999999996
	.quad	0x40009b8cb8e086be              # double 2.075952
	.quad	0x400547bbb62413db              # double 2.6600259999999998
	.quad	0x40225370ef566491              # double 9.1629710000000006
	.quad	0x4006194c87980f56              # double 2.7623530000000001
	.quad	0x4022ac3393ab430f              # double 9.3363309999999995
	.quad	0x40038b018611fd59              # double 2.4428740000000002
	.quad	0x4021cc6b26bf876a              # double 8.8992550000000001
	.quad	0x4022e2474538ef35              # double 9.4419500000000002
	.quad	0x401c75f78359bc34              # double 7.115202
	.quad	0x4000bce95faa8a83              # double 2.0922420000000002
	.quad	0x4012301eeed8904f              # double 4.5469929999999996
	.quad	0x4005d3fd0d0678c0              # double 2.72851
	.quad	0x4002e3fc43b2dd37              # double 2.3613209999999998
	.quad	0x40176d9fd36f7e3d              # double 5.8570549999999999
	.quad	0x3fe1d00713f077cd              # double 0.55664400000000003
	.quad	0x40209aaf5771001d              # double 8.3021189999999994
	.quad	0x40235f5558212945              # double 9.6861979999999991
	.quad	0x3ffbcb8e086bdf4c              # double 1.737196
	.quad	0x4021f09a88ace24c              # double 8.9699290000000004
	.quad	0x3fba0e30446b69db              # double 0.10177899999999999
	.quad	0x40010da2b5a20ddc              # double 2.1316579999999998
	.quad	0x40225e111276fb09              # double 9.1837239999999998
	.quad	0x400e113059641f64              # double 3.7583929999999999
	.quad	0x4017f42e12620254              # double 5.9884570000000004
	.quad	0x3ff51375c8d9f905              # double 1.3172509999999999
	.quad	0x4001adf9378ee286              # double 2.2099479999999998
	.quad	0x402211c49774256c              # double 9.0347030000000003
	.quad	0x3ff1dc58255b035c              # double 1.116295
	.quad	0x4022dcbbe4473cd5              # double 9.4311209999999991
	.quad	0x400fcce3de6149c7              # double 3.975044
	.quad	0x4022309aaa3ad18d              # double 9.0949299999999997
	.quad	0x3fd2abfb9bed30f0              # double 0.29174699999999998
	.quad	0x40153efe4ffc9796              # double 5.3115170000000003
	.quad	0x3ff1fec679cc74b8              # double 1.124701
	.quad	0x40146b67c286f8ad              # double 5.1048879999999999
	.quad	0x3ff2b36deb95e5b0              # double 1.168806
	.quad	0x40007e707e175d14              # double 2.0617380000000001
	.quad	0x3fd255a3a08398a6              # double 0.28647699999999998
	.quad	0x401107ecfe9b7bf2              # double 4.2577400000000001
	.quad	0x4020abc382a12f90              # double 8.3354759999999999
	.quad	0x3fc042070b8cfbfc              # double 0.12701499999999999
	.quad	0x401861bfbdf090f7              # double 6.0954579999999998
	.quad	0x402133b927d45a60              # double 8.6010220000000004
	.quad	0x401e79c4113c6866              # double 7.6189119999999999
	.quad	0x4021c4e93e1c9b41              # double 8.8845919999999996
	.quad	0x401ade1ef73c0c20              # double 6.7169150000000002
	.quad	0x40045fcb0c026cc2              # double 2.5467740000000001
	.quad	0x4023ea0d77b7c782              # double 9.9571339999999999
	.quad	0x4015e669057d1783              # double 5.4750100000000002
	.quad	0x401a0843c3a42f1f              # double 6.5080710000000002
	.quad	0x3fb1b09a671ef30a              # double 0.069100999999999996
	.quad	0x3ff5931fcd24e161              # double 1.348419
	.quad	0x4010271f79420b3d              # double 4.0382059999999997
	.quad	0x401c50fa58f7121b              # double 7.0790800000000003
	.quad	0x400dac5a8155d5f5              # double 3.7091569999999998
	.quad	0x400cfc896dd26b72              # double 3.6233089999999999
	.quad	0x40171bdcf0307f24              # double 5.7772100000000002
	.quad	0x40032d9f0a1be2b5              # double 2.3972760000000002
	.quad	0x4022ce6c093d9664              # double 9.4031680000000008
	.quad	0x400598ff75968512              # double 2.6997059999999999
	.quad	0x3fba49f51697f1fa              # double 0.102691
	.quad	0x401a987fcb923a2a              # double 6.6489250000000002
	.quad	0x4018b20d130df9be              # double 6.1738780000000002
	.quad	0x401db4ad794a6eb9              # double 7.4264429999999999
	.quad	0x40220b6ac647778e              # double 9.0222990000000003
	.quad	0x4022c5173fb7a5f4              # double 9.3849429999999998
	.quad	0x3fff86940357a355              # double 1.970356
	.quad	0x40199e8533b10774              # double 6.4048049999999996
	.quad	0x3ff7126c7eae5bc8              # double 1.4419979999999999
	.quad	0x3fd66394face67d7              # double 0.34982799999999997
	.quad	0x400e22b94d940789              # double 3.7669549999999998
	.quad	0x3ff863d3e4ef0282              # double 1.5243720000000001
	.quad	0x4014b89efd86a8fc              # double 5.180294
	.quad	0x400060b6f9fcb0c0              # double 2.0472239999999999
	.quad	0x40131f3519bd4068              # double 4.7804760000000002
	.quad	0x401027be9856a37b              # double 4.0388130000000002
	.quad	0x4011578140dd3fe2              # double 4.3354540000000004
	.quad	0x400693ff25e56cd7              # double 2.8222640000000001
	.quad	0x4014f41e14bdfd26              # double 5.2383959999999998
	.quad	0x402080b30b5aa716              # double 8.2513660000000009
	.quad	0x400dc0bc382a12f9              # double 3.719109
	.quad	0x401c7c26dce39b45              # double 7.1212419999999996
	.quad	0x400cf5c6c11a1123              # double 3.6200079999999999
	.quad	0x401523eb399f5dff              # double 5.2850770000000002
	.quad	0x401cfa4acf312b1b              # double 7.2444259999999998
	.quad	0x400043d1cc100e6b              # double 2.033115
	.quad	0x401d72c493426784              # double 7.3620780000000003
	.quad	0x40005d451fc4c166              # double 2.0455420000000002
	.quad	0x40166916ca46e08f              # double 5.6026259999999999
	.quad	0x40117a005c4651f4              # double 4.3691420000000001
	.quad	0x3ffbd2b90a782907              # double 1.7389460000000001
	.quad	0x40189cbff47735c2              # double 6.1530760000000004
	.quad	0x3ff7a93e1c9b413a              # double 1.4788190000000001
	.quad	0x401b8311e85fd04a              # double 6.8779979999999998
	.quad	0x4016ec55432873bd              # double 5.7307940000000004
	.quad	0x401a9e96c3fc43b3              # double 6.6548720000000001
	.quad	0x3fecb49be8ff327b              # double 0.89704700000000004
	.quad	0x40228ec4827b6fe3              # double 9.2788430000000002
	.quad	0x401a9ac6045baf53              # double 6.6511459999999998
	.quad	0x3fe38f32378ab0c9              # double 0.61123000000000005
	.quad	0x3ff145eb313be22e              # double 1.0795699999999999
	.quad	0x4000e14a4d2b2bfe              # double 2.1100050000000001
	.quad	0x3fba5c91d14e3bcd              # double 0.102975
	.quad	0x3fd1bd9cae21101b              # double 0.277198
	.quad	0x4020127a20578e5c              # double 8.0360879999999994
	.quad	0x3ffa0f1c3265adda              # double 1.6286890000000001
	.quad	0x401a6a964e8b7e4e              # double 6.6040890000000001
	.quad	0x401a21bc55864452              # double 6.5329449999999998
	.quad	0x4022c555c52e72da              # double 9.3854199999999999
	.quad	0x4015ff6512a94ff0              # double 5.499409
	.quad	0x4019cbe5109070fc              # double 6.4491160000000001
	.quad	0x401d5e7f2c3009b3              # double 7.342282
	.quad	0x3ff8f0079a2834d2              # double 1.5586009999999999
	.quad	0x40081da48b652370              # double 3.0144739999999999
	.quad	0x401400b029281776              # double 5.0006719999999998
	.quad	0x4015e98aeb80ecfa              # double 5.4780689999999996
	.quad	0x401bc6a65cf67b1c              # double 6.943994
	.quad	0x4015610ba6266fd6              # double 5.3447709999999997
	.quad	0x4016d5c13fd0d068              # double 5.7087450000000004
	.quad	0x4022700cf9e3864d              # double 9.2188490000000005
	.quad	0x401762e33eff1950              # double 5.8465699999999998
	.quad	0x4014467fd3f5b5fa              # double 5.0688469999999999
	.quad	0x4023f14c22ee4192              # double 9.9712840000000007
	.quad	0x401bdf19d66adb40              # double 6.9678719999999998
	.quad	0x401b166c2acb85a5              # double 6.7718970000000001
	.quad	0x401da1abd1aa821f              # double 7.4078819999999999
	.quad	0x40145aeab7995ee1              # double 5.0887859999999998
	.quad	0x401658ac5c13fd0d              # double 5.586595
	.quad	0x3fd1dbe7f2c3009b              # double 0.27904699999999999
	.quad	0x4012ffd08d4bad7d              # double 4.7498189999999996
	.quad	0x40070236c15d2d02              # double 2.8760810000000001
	.quad	0x3fdc96638433d6c7              # double 0.44667899999999999
	.quad	0x400ba67dfe32a066              # double 3.4562949999999999
	.quad	0x4022a7f3cf70153c              # double 9.3280320000000003
	.quad	0x4011ada122fad6cb              # double 4.4195599999999997
	.quad	0x401f2c1f85d744f6              # double 7.7930890000000002
	.quad	0x4002841461b6d43d              # double 2.314492
	.quad	0x401bca7935760392              # double 6.9477279999999997
	.quad	0x40220ab9d3cbc48f              # double 9.0209489999999999
	.quad	0x401431ef73c0c1fd              # double 5.0487650000000004
	.quad	0x3fee5fd8adab9f56              # double 0.94920000000000004
	.quad	0x401f7ac8e68e3ef3              # double 7.8699070000000004
	.quad	0x401abd68c692f6e8              # double 6.6849699999999999
	.quad	0x40171e33eff19503              # double 5.7794949999999998
	.quad	0x40187e26916440f2              # double 6.1231939999999998
	.quad	0x3fead8d36b4c7f35              # double 0.83896800000000005
	.quad	0x3ff6084944ed6fdb              # double 1.3770230000000001
	.quad	0x40007a63736cdf26              # double 2.0597599999999998
	.quad	0x4022135f80991794              # double 9.0378380000000007
	.quad	0x40023213e3e29308              # double 2.2744520000000001
	.quad	0x3ff752b6f19934f0              # double 1.457694
	.quad	0x401d7c8366516db1              # double 7.3715950000000001
	.quad	0x3ffa1f7a4e7ab756              # double 1.6326849999999999
	.quad	0x402095718eb89507              # double 8.2918819999999993
	.quad	0x400ed3061c79b34a              # double 3.8530389999999999
	.quad	0x40222ca83b1d0c80              # double 9.0872209999999995
	.quad	0x40005e8ff327aa69              # double 2.046173
	.quad	0x4010a2862f5989df              # double 4.1587149999999999
	.quad	0x40071e95b78cc9a7              # double 2.8899339999999998
	.quad	0x4005c0181e03f706              # double 2.7187960000000002
	.quad	0x4022eb85a4f00ef1              # double 9.4600039999999996
	.quad	0x401363cc07aaef2c              # double 4.8474579999999996
	.quad	0x400d7f7b5aea3162              # double 3.6872470000000002
	.quad	0x401e11a75cd0bb6f              # double 7.5172400000000001
	.quad	0x402315031055b899              # double 9.5410389999999996
	.quad	0x3ff89892684cf074              # double 1.5372490000000001
	.quad	0x40206e27179bfdf8              # double 8.2151420000000002
	.quad	0x40062ae21101b003              # double 2.7709389999999998
	.quad	0x3ffc22fad6cb5350              # double 1.75854
	.quad	0x4021f25a469d7343              # double 8.9733450000000001
	.quad	0x3fde330d7386099a              # double 0.47186600000000001
	.quad	0x401fd71ac14c660a              # double 7.9600629999999999
	.quad	0x3fdc0b5ed8d36b4c              # double 0.43819399999999997
	.quad	0x4017f4fc610f0e91              # double 5.9892440000000002
	.quad	0x400c04a59c065b64              # double 3.5022690000000001
	.quad	0x40170342aa9f7b5b              # double 5.7531840000000001
	.quad	0x4006a61f9f01b867              # double 2.831115
	.quad	0x3fde8eeae9ee45c3              # double 0.47747299999999998
	.quad	0x402157be553ac4f8              # double 8.6713740000000001
	.quad	0x4017e7f455a7d242              # double 5.9765180000000004
	.quad	0x40023b8ed1bf7ad5              # double 2.2790810000000001
	.quad	0x4021d2593a2df938              # double 8.9108370000000008
	.quad	0x401b4e4a38327675              # double 6.8264550000000002
	.quad	0x40218cd013a92a30              # double 8.7750249999999994
	.quad	0x401bb87ca643cc08              # double 6.9301630000000003
	.quad	0x401f6ccbc05d52c1              # double 7.8562459999999996
	.quad	0x3fe78468448cf7cb              # double 0.73491300000000004
	.quad	0x40206ec52a411c2a              # double 8.216348
	.quad	0x40235449129888f8              # double 9.6646199999999993
	.quad	0x40135e7e62dc6e2b              # double 4.8422790000000004
	.quad	0x40142febd09e12a5              # double 5.0467979999999999
	.quad	0x40175895d0b73d19              # double 5.8365090000000004
	.quad	0x402367d86a8fc0d3              # double 9.7028230000000004
	.quad	0x400e077ccc037931              # double 3.7536559999999999
	.quad	0x3ffadc4c9c90c4df              # double 1.6787840000000001
	.quad	0x400554d2f5dbb9d0              # double 2.6664180000000002
	.quad	0x40165c31df761cbd              # double 5.5900340000000002
	.quad	0x4023c8112ba16e7a              # double 9.8907559999999997
	.quad	0x4021f5b2f661f18d              # double 8.9798810000000007
	.quad	0x4013e4a6223e186a              # double 4.9732900000000004
	.quad	0x4011fba01eeed890              # double 4.4957279999999997
	.quad	0x400b896c3fc43b2e              # double 3.4421010000000001
	.quad	0x3fd2273d5bab2181              # double 0.28364499999999998
	.quad	0x402224f5f4e4430b              # double 9.0721889999999998
	.quad	0x40204ac7b890d5a6              # double 8.1460550000000005
	.quad	0x400e83076c050bd8              # double 3.8139789999999998
	.quad	0x401fb65a14488c61              # double 7.9280780000000001
	.quad	0x400da6e08f217093              # double 3.706483
	.quad	0x3ffaad5cfaacd9e8              # double 1.6673249999999999
	.quad	0x40210ee0b0af5fd4              # double 8.5290579999999991
	.quad	0x3ffcdfa11a975afb              # double 1.804597
	.quad	0x40227a2b5a20ddc6              # double 9.2386119999999998
	.quad	0x4011ad49949e8816              # double 4.4192260000000001
	.quad	0x40067f0025bfad2a              # double 2.8120120000000002
	.quad	0x4002a40181e03f70              # double 2.3300809999999998
	.quad	0x3ff3ff748a159818              # double 1.2498670000000001
	.quad	0x4022f8efbb0e5e68              # double 9.4862040000000007
	.quad	0x401290f3cb3e5754              # double 4.6415550000000003
	.quad	0x401c5b484d76ab58              # double 7.089143
	.quad	0x3ffb9905c0336156              # double 1.7248589999999999
	.quad	0x401daa7e30878748              # double 7.4164969999999996
	.quad	0x3fe2bf4a98aa8651              # double 0.58585100000000001
	.quad	0x401a2f733a8a3f8a              # double 6.5463380000000004
	.quad	0x4008f850df15a4ad              # double 3.121248
	.quad	0x401f71b4fe79ee03              # double 7.8610420000000003
	.quad	0x40196df612407464              # double 6.3573839999999997
	.quad	0x400fd36933a0407d              # double 3.9782280000000001
	.quad	0x40019207d4e09785              # double 2.196304
	.quad	0x400f2432441fea81              # double 3.892674
	.quad	0x40136308bb906467              # double 4.8467130000000003
	.quad	0x4020be4bcad9ad86              # double 8.3716720000000002
	.quad	0x401206e7e62dc6e3              # double 4.5067440000000003
	.quad	0x4008544bb1af3a15              # double 3.0411600000000001
	.quad	0x401a02d16b97fe8f              # double 6.5027520000000001
	.quad	0x401f21de69ad42c4              # double 7.7830750000000002
	.quad	0x40224e5710880d80              # double 9.1530079999999998
	.quad	0x401c7fd9ba1b1961              # double 7.124854
	.quad	0x4001f80ecfa69be1              # double 2.2461220000000002
	.quad	0x4018bb0142f61ed6              # double 6.1826220000000003
	.quad	0x401288d1958969a1              # double 4.6336120000000003
	.quad	0x4023b61f5be5d9e4              # double 9.8557079999999999
	.quad	0x40085bfb58d1526e              # double 3.0449130000000002
	.quad	0x401aa14e3bcd35a8              # double 6.6575249999999997
	.quad	0x3ffb084e831ad213              # double 1.6895279999999999
	.quad	0x40219833e78e1933              # double 8.7972710000000003
	.quad	0x4007506fef7c243e              # double 2.9142760000000001
	.quad	0x3ff47ff36ac64778              # double 1.2812380000000001
	.quad	0x3fe21578a2a90cd4              # double 0.56512099999999998
	.quad	0x40169477ff151e75              # double 5.6449889999999998
	.quad	0x401e8154c985f06f              # double 7.6262999999999996
	.quad	0x3fee5e95b78cc9a7              # double 0.94904599999999995
	.quad	0x3fbc807357e670e3              # double 0.111335
	.quad	0x40232947cfa26a23              # double 9.5806260000000005
	.quad	0x4015f55219a847b2              # double 5.4895709999999998
	.quad	0x3ffd3e23f24d8fd6              # double 1.827671
	.quad	0x40135673c4f3ba77              # double 4.8344259999999997
	.quad	0x40220bad3a604e1e              # double 9.0228059999999992
	.quad	0x401f850f840181e0              # double 7.8799419999999998
	.quad	0x4014e33bd9cae211              # double 5.221908
	.quad	0x40055124d099e0e7              # double 2.6646209999999999
	.quad	0x401d0735c182ecaf              # double 7.2570410000000001
	.quad	0x4015268a936c58ef              # double 5.2876380000000003
	.quad	0x4013b71ac14c660a              # double 4.9288129999999999
	.quad	0x4016ee6644d87725              # double 5.732812
	.quad	0x40207c00b88ca3e8              # double 8.2421930000000003
	.quad	0x4011797635e7429a              # double 4.3686150000000001
	.quad	0x400cb0f1f57b41c0              # double 3.5863990000000001
	.quad	0x3fec57c914b167ec              # double 0.88571599999999994
	.quad	0x401e78e086bdf4c3              # double 7.6180440000000002
	.quad	0x4007323b3636f3b2              # double 2.899527
	.quad	0x40108c4e7253da73              # double 4.1370180000000003
	.quad	0x400ec0e410b630a9              # double 3.844185
	.quad	0x4023ac2352eb5f5f              # double 9.8362069999999999
	.quad	0x400b5caea747d806              # double 3.420255
	.quad	0x3fda4c7f34938583              # double 0.41091899999999998
	.quad	0x401b798d8a979e17              # double 6.8687040000000001
	.quad	0x4021be10060780fe              # double 8.8712160000000004
	.quad	0x400e4793dd97f62b              # double 3.7849499999999998
	.quad	0x3f8ca6ca03c4b09f              # double 0.013990000000000001
	.quad	0x400bc1c25d074214              # double 3.4696090000000002
	.quad	0x401f4e13f4a98aa8              # double 7.8262479999999996
	.quad	0x4020b69a0ad8a116              # double 8.3566439999999993
	.quad	0x40070404a72ead92              # double 2.8769619999999998
	.quad	0x4007c4c8366516db              # double 2.971085
	.quad	0x401972645e4e69f0              # double 6.3617109999999997
	.quad	0x40161a34ca0c282c              # double 5.5255919999999996
	.quad	0x401845a74c09c3ce              # double 6.0680209999999999
	.quad	0x4020a134267839ce              # double 8.3148510000000009
	.quad	0x3fef0f29d40ee06e              # double 0.97060100000000005
	.quad	0x4014430014f8b589              # double 5.0654300000000001
	.quad	0x4004795ee136e71d              # double 2.5592630000000001
	.quad	0x4021616f6512a950              # double 8.6903030000000001
	.quad	0x401eb3ab862b27cc              # double 7.675459
	.quad	0x3fad84f4c6e6d9be              # double 0.057654999999999998
	.quad	0x40157df761cbccf3              # double 5.3730140000000004
	.quad	0x401cc35b0bbf50e3              # double 7.1907769999999998
	.quad	0x3ff191d798d8a97a              # double 1.098106
	.quad	0x401787a5f41aef70              # double 5.8824690000000004
	.quad	0x40236c5d206c8712              # double 9.7116480000000003
	.quad	0x400316d0917d6b66              # double 2.3861400000000001
	.quad	0x3fd697a24894c448              # double 0.35300500000000001
	.quad	0x4022f5dca4b124d1              # double 9.4801990000000007
	.quad	0x4021a4c33b539325              # double 8.8218019999999999
	.quad	0x3ff57d5fdcdf6988              # double 1.3431090000000001
	.quad	0x4007f19157abb880              # double 2.992953
	.quad	0x3ff00d7060bb2bbb              # double 1.0032810000000001
	.quad	0x4022ddab191dde37              # double 9.4329459999999993
	.quad	0x3ff336a50d6b228e              # double 1.200841
	.quad	0x40214f09741d084f              # double 8.6543690000000009
	.quad	0x3ff6d0e0221426fe              # double 1.4259949999999999
	.quad	0x402039ff4fd6d7e9              # double 8.1132760000000008
	.quad	0x401a459b8023a6ce              # double 6.5679759999999998
	.quad	0x401cb4bec679cc75              # double 7.1765090000000002
	.quad	0x400f1d9b1b79d90a              # double 3.889456
	.quad	0x401b500fba8826ab              # double 6.8281850000000004
	.quad	0x401f121858bc59b8              # double 7.7676709999999999
	.quad	0x400df708aac96cc6              # double 3.745622
	.quad	0x3fea557ff9b56324              # double 0.82293700000000002
	.quad	0x4007a1711947cfa2              # double 2.9538289999999998
	.quad	0x401b5b2745bf26f2              # double 6.8390170000000001
	.quad	0x401a9cb4289118c2              # double 6.6530310000000004
	.quad	0x4023ffab53d640ea              # double 9.9993540000000003
	.quad	0x4011211dbca9691a              # double 4.2823399999999996
	.quad	0x3fd399bb2788db05              # double 0.30625799999999997
	.quad	0x4017784fd2a62aa2              # double 5.8674920000000004
	.quad	0x400c2cee5abc0e39              # double 3.5219390000000002
	.quad	0x4012af25a250f840              # double 4.6710419999999999
	.quad	0x4006a1672324c836              # double 2.8288099999999998
	.quad	0x401a058a32f44913              # double 6.5054100000000004
	.quad	0x4017bca793576039              # double 5.9342329999999999
	.quad	0x400cb3d640e9d51b              # double 3.5878109999999999
	.quad	0x401f15caf2d7f951              # double 7.7712820000000002
	.quad	0x3ff82c6ac215b9a6              # double 1.5108440000000001
	.quad	0x4014189c1b54195d              # double 5.0240330000000002
	.quad	0x40167921ccd96207              # double 5.6182930000000004
	.quad	0x40015521144cbe1f              # double 2.1665670000000001
	.quad	0x4014bd1569f49060              # double 5.1846519999999998
	.quad	0x401a7018611fd588              # double 6.6094679999999997
	.quad	0x40127f9d2bf55150              # double 4.6246229999999997
	.quad	0x40120db2b346130a              # double 4.5133770000000002
	.quad	0x4021a2d6cb535009              # double 8.8180449999999997
	.quad	0x3ff7fb890d5a5b96              # double 1.49891
	.quad	0x3fda76ea4228997c              # double 0.41350799999999999
	.quad	0x4009016f0068db8c              # double 3.1257000000000001
	.quad	0x401a1b994e1a3f46              # double 6.5269519999999996
	.quad	0x4013a72e6a76965f              # double 4.9132629999999997
	.quad	0x4023a8afa2f05a71              # double 9.8294650000000007
	.quad	0x4013b6e5cd4ed2cc              # double 4.9286110000000001
	.quad	0x3ff60621b7e0ac7e              # double 1.3764970000000001
	.quad	0x40066d423d9231c6              # double 2.8033489999999999
	.quad	0x40190a06a6e32e38              # double 6.2597909999999999
	.quad	0x400fa3a6ce358299              # double 3.9549080000000001
	.quad	0x3fde3b927d45a5fc              # double 0.47238599999999997
	.quad	0x401b84d6e47dc37a              # double 6.8797259999999998
	.quad	0x40060bf5515054ac              # double 2.7558389999999999
	.quad	0x3ff9dfb1e18efbb1              # double 1.617113
	.quad	0x40146e310dbf0564              # double 5.1076090000000001
	.quad	0x4023a85425f20210              # double 9.8287669999999991
	.quad	0x401b709e12a51e32              # double 6.8599779999999999
	.quad	0x401aee9185cee17a              # double 6.732977
	.quad	0x3ffe56733ebbfd72              # double 1.8961060000000001
	.quad	0x3fe92595bbbe8790              # double 0.78583800000000004
	.quad	0x400a1229e90795f6              # double 3.2588689999999998
	.quad	0x40220229e90795f6              # double 9.0042259999999992
	.quad	0x4011f99806f26289              # double 4.4937440000000004
	.quad	0x40065c9bc7714339              # double 2.7952189999999999
	.quad	0x3ff0573c925785f9              # double 1.021298
	.quad	0x4021bd577963992d              # double 8.8698080000000008
	.quad	0x4021873eccc46951              # double 8.764151
	.quad	0x3fed265cf67b1c00              # double 0.91093299999999999
	.quad	0x401ae2e557de0d67              # double 6.7215780000000001
	.quad	0x401058e864020818              # double 4.086824
	.quad	0x400f1af20ea5b531              # double 3.8881570000000001
	.quad	0x3fe8297396d0917d              # double 0.75505999999999995
	.quad	0x4003eaf2d7f950b9              # double 2.4897209999999999
	.quad	0x3fddc7eae5bc87db              # double 0.46532699999999999
	.quad	0x401003bc0a06e9ff              # double 4.003647
	.quad	0x400fd7f5a5332ad0              # double 3.9804490000000001
	.quad	0x402114d551d68c69              # double 8.5406899999999997
	.quad	0x40238fc6fbd273d6              # double 9.7808150000000005
	.quad	0x3ff3b3b320535c9e              # double 1.2313719999999999
	.quad	0x401f901b003686a5              # double 7.8907280000000001
	.quad	0x3fd47d1782d38477              # double 0.320135
	.quad	0x401d869f8c21e1d2              # double 7.3814679999999999
	.quad	0x4015d24180d3cff6              # double 5.4553279999999997
	.quad	0x401bed42c3c9eecc              # double 6.9817
	.quad	0x401c174d1633482c              # double 7.0227550000000001
	.quad	0x4020205425f20210              # double 8.0631419999999991
	.quad	0x40148eda66128390              # double 5.1395049999999998
	.quad	0x4015fd76683c297c              # double 5.497522
	.quad	0x401246d8b1dd5d3e              # double 4.5691860000000002
	.quad	0x3ff276fe2e6ea854              # double 1.1540509999999999
	.quad	0x4011fd2fe3f359ff              # double 4.4972529999999997
	.quad	0x401e8ecc3e3193f7              # double 7.6394510000000002
	.quad	0x4016d80a9de8b3b3              # double 5.7109779999999999
	.quad	0x401861511dffc548              # double 6.0950360000000003
	.quad	0x4006405ee568a505              # double 2.781431
	.quad	0x4019b978d4fdf3b6              # double 6.4311249999999998
	.quad	0x401733bb83cf2cf9              # double 5.8005199999999997
	.quad	0x401a90e66cb10343              # double 6.6415040000000003
	.quad	0x4006bb573eab367a              # double 2.841475
	.quad	0x40095a5ebb7739f3              # double 3.1691259999999999
	.quad	0x4002acb10342aa9f              # double 2.3343219999999998
	.quad	0x400188c3f3e0370d              # double 2.1917800000000001
	.quad	0x4005b5f88fc9363f              # double 2.7138529999999998
	.quad	0x3ff9d48882f0e0a8              # double 1.6143879999999999
	.quad	0x401aef30a4e379b7              # double 6.7335839999999996
	.quad	0x4022952a84380885              # double 9.2913399999999999
	.quad	0x401201cbccf28c7a              # double 4.501754
	.quad	0x4018a714fce746cc              # double 6.1631660000000004
	.quad	0x4013e264a16a4873              # double 4.9710869999999998
	.quad	0x40157823422467be              # double 5.3673219999999997
	.quad	0x4011929131ec0b56              # double 4.3931319999999996
	.quad	0x4021ec03361565c3              # double 8.9609620000000003
	.quad	0x401b1ec13b9f127f              # double 6.7800339999999997
	.quad	0x401b451fc4c16590              # double 6.8175039999999996
	.quad	0x3fc9270b06c43f60              # double 0.19650400000000001
	.quad	0x4023978ab0c88a48              # double 9.7959800000000001
	.quad	0x401ab3cb81733227              # double 6.6755810000000002
	.quad	0x401b2888b545c78a              # double 6.7895839999999996
	.quad	0x401ffeb8950763a2              # double 7.9987510000000004
	.quad	0x40236ba9f383f0bb              # double 9.7102810000000001
	.quad	0x4023aa543f1c7582              # double 9.8326740000000008
	.quad	0x3ff100bdcad14a0a              # double 1.062681
	.quad	0x4013070ac3a860dd              # double 4.7568770000000002
	.quad	0x402310af3e468cac              # double 9.5325869999999994
	.quad	0x4021deb6bf444e0e              # double 8.9349880000000006
	.quad	0x401483e920c069e8              # double 5.128819
	.quad	0x40208e481f53825e              # double 8.2778939999999999
	.quad	0x4020e59dba908a26              # double 8.4484689999999993
	.quad	0x401c42799a1fd157              # double 7.0649170000000003
	.quad	0x3fee567125dd095b              # double 0.94805200000000001
	.quad	0x401b22f2f9873ffb              # double 6.7841300000000002
	.quad	0x3fe5bfd2e9468017              # double 0.67966599999999999
	.quad	0x4014f2c83ec892ab              # double 5.2370919999999996
	.quad	0x401a55ff609dcf89              # double 6.5839819999999998
	.quad	0x400b2c12ad81adeb              # double 3.3965200000000002
	.quad	0x4013646887a8d64d              # double 4.8480549999999996
	.quad	0x4020c5e7ea5f84cb              # double 8.3865350000000003
	.quad	0x4021fef1bac2df0d              # double 8.9979379999999995
	.quad	0x401ab840181e03f7              # double 6.679932
	.quad	0x40228573215fcc18              # double 9.2606439999999992
	.quad	0x4022c3f811f4f50a              # double 9.382752
	.quad	0x400cdb3a68b19a41              # double 3.6070449999999998
	.quad	0x40201dc358afc47e              # double 8.0581309999999995
	.quad	0x3fed4c122749f0e5              # double 0.91553600000000002
	.quad	0x40147615ebfa8f7e              # double 5.1153180000000003
	.quad	0x401d325b317efe0d              # double 7.2991760000000001
	.quad	0x40031471f79420b4              # double 2.3849830000000001
	.quad	0x3fe9dbf26f1dc50d              # double 0.80809900000000001
	.quad	0x3ff67077ccc03793              # double 1.402458
	.quad	0x40159db1e9f27781              # double 5.4039989999999998
	.quad	0x3fe65fbb517a4617              # double 0.69918599999999997
	.quad	0x40127dec5f394b7b              # double 4.6229719999999999
	.quad	0x4005ad1526d8b1dd              # double 2.7095129999999998
	.quad	0x402295c11e42e126              # double 9.2924889999999998
	.quad	0x4016e735c182ecaf              # double 5.7257910000000001
	.quad	0x40190e646f156191              # double 6.2640549999999999
	.quad	0x40239c9081c2e33f              # double 9.80579
	.quad	0x40216bf444e0daa1              # double 8.7108480000000004
	.quad	0x4021938cb8e086be              # double 8.7881830000000001
	.quad	0x3ff2fc2ca148ba84              # double 1.186566
	.quad	0x4012b4406c00da1b              # double 4.6760270000000004
	.quad	0x4009989613d31b9b              # double 3.1995049999999998
	.quad	0x3ffbadfc5cdd50a9              # double 1.7299770000000001
	.quad	0x402294282c6ef3d4              # double 9.2893690000000006
	.quad	0x3ff06b8d82342246              # double 1.0262579999999999
	.quad	0x40123c148344c37e              # double 4.5586719999999996
	.quad	0x4012b2178f68be2f              # double 4.6739179999999996
	.quad	0x402091068986fcdf              # double 8.2832530000000002
	.quad	0x4000d6733ebbfd72              # double 2.1047120000000001
	.quad	0x401e8424a276b7ed              # double 7.6290459999999997
	.quad	0x401000fbeb9e492c              # double 4.0009610000000002
	.quad	0x40232d6cf850df16              # double 9.5887220000000006
	.quad	0x4018ef4f50a02b84              # double 6.2337009999999999
	.quad	0x401f2c80c73abc94              # double 7.7934599999999996
	.quad	0x3fe5f5ee99a62ed3              # double 0.68627099999999996
	.quad	0x4009aae9ee45c359              # double 3.2084540000000001
	.quad	0x401c95d5f56a7ac8              # double 7.1463239999999999
	.quad	0x401cf076c050bd88              # double 7.2348280000000003
	.quad	0x401e4c64345cfedf              # double 7.5746010000000003
	.quad	0x400302089e34330d              # double 2.3759929999999998
	.quad	0x401dfbbf50e34763              # double 7.4958470000000003
	.quad	0x40013868fd199bb2              # double 2.1525439999999998
	.quad	0x401bfd9a95421c04              # double 6.9976599999999998
	.quad	0x3ffec77bbf93ff26              # double 1.923702
	.quad	0x4019bb0ee49f5169              # double 6.4326739999999996
	.quad	0x4020c03dddb1209f              # double 8.3754720000000002
	.quad	0x401f3e1deacc9214              # double 7.8106609999999996
	.quad	0x4004a3925bb7b6bb              # double 2.579869
	.quad	0x3ff9ef9db22d0e56              # double 1.621
	.quad	0x401b30fd7e45803d              # double 6.7978420000000002
	.quad	0x4012a19f7f8ca81a              # double 4.6578350000000004
	.quad	0x400570110a137f39              # double 2.6797200000000001
	.quad	0x400ed09d0635a427              # double 3.8518620000000001
	.quad	0x40203351372a38b9              # double 8.1002290000000006
	.quad	0x4021ad551d68c693              # double 8.8385400000000001
	.quad	0x4007b66e008e9b39              # double 2.9640770000000001
	.quad	0x401118372e6a7696              # double 4.2736479999999997
	.quad	0x3ffa9a708ede54b5              # double 1.6627050000000001
	.quad	0x401c056191148fda              # double 7.005255
	.quad	0x40199553ac4f7ec3              # double 6.3958269999999997
	.quad	0x4011413404ea4a8c              # double 4.3136749999999999
	.quad	0x40123f56a7ac81d4              # double 4.5618540000000003
	.quad	0x400bba6e75ff609e              # double 3.4660310000000001
	.quad	0x400dc0d887ebf22c              # double 3.719163
	.quad	0x40238a5a038194c0              # double 9.7702179999999998
	.quad	0x4018ce0daa0cae64              # double 6.2012239999999998
	.quad	0x4019cda48b652370              # double 6.4508229999999998
	.quad	0x40092ab1d4f9c1f8              # double 3.1458469999999998
	.quad	0x4015059c49774257              # double 5.2554790000000002
	.quad	0x401cb999dcb5781c              # double 7.1812509999999996
	.quad	0x3febf0d1fa333765              # double 0.87314700000000001
	.quad	0x401ec3f290abb44e              # double 7.6913549999999997
	.quad	0x400369a240314877              # double 2.4265789999999998
	.quad	0x401ff8240b780347              # double 7.9923250000000001
	.quad	0x401d8c4a83b1d0c8              # double 7.3870029999999999
	.quad	0x401426a8fc0d2c38              # double 5.0377539999999996
	.quad	0x4022bc345cfede98              # double 9.3675870000000003
	.quad	0x401f977ccc037931              # double 7.8979369999999997
	.quad	0x401dbb074a771c97              # double 7.4326449999999999
	.quad	0x400e0fc829cfdd23              # double 3.7577060000000002
	.quad	0x401218a2a90cd424              # double 4.5240580000000001
	.quad	0x4011b87f455a7d24              # double 4.4301729999999999
	.quad	0x401e76ee73e681aa              # double 7.6161440000000002
	.quad	0x401154f483cafb3b              # double 4.3329639999999996
	.quad	0x4022260029f16b12              # double 9.0742200000000004
	.quad	0x3fff4f7985271bce              # double 1.9569030000000001
	.quad	0x4005a82b62845996              # double 2.7071139999999998
	.quad	0x3ffae72862f5989e              # double 1.681435
	.quad	0x4004bacbc8c0ce92              # double 2.5912090000000001
	.quad	0x4022b4dab191dde3              # double 9.3532309999999992
	.quad	0x4012aa2403148777              # double 4.6661530000000004
	.quad	0x3faff27fe4bcad9b              # double 0.062397000000000001
	.quad	0x40090045baf533f4              # double 3.1251329999999999
	.quad	0x3fef1335d249e450              # double 0.97109500000000004
	.quad	0x3ff18409e55c0fcb              # double 1.0947359999999999
	.quad	0x400abdebd9018e75              # double 3.3427349999999998
	.quad	0x3fe1abc72e275ab8              # double 0.55221900000000002
	.quad	0x40209a220bc382a1              # double 8.3010409999999997
	.quad	0x3ff7cace24bba12b              # double 1.4870129999999999
	.quad	0x401a548f10a99b6f              # double 6.5825769999999997
	.quad	0x3ffce5cc426351df              # double 1.806103
	.quad	0x4003dd16fc9bc771              # double 2.4829539999999999
	.quad	0x400579ccfaeff5c7              # double 2.6844730000000001
	.quad	0x40217d3c148344c3              # double 8.7445989999999991
	.quad	0x401803315d701d9f              # double 6.0031179999999997
	.quad	0x400178066c2acb86              # double 2.1836060000000002
	.quad	0x3fe4e4473cd57364              # double 0.65286599999999995
	.quad	0x4019a71e6cd29132              # double 6.4132020000000001
	.quad	0x3fe0a480e8c8abd6              # double 0.52008100000000002
	.quad	0x4022004c05921038              # double 9.0005799999999994
	.quad	0x3fe18112ba16e7a3              # double 0.54700599999999999
	.quad	0x402254ae642bf983              # double 9.1653929999999999
	.quad	0x401ba0767d34df05              # double 6.9067020000000001
	.quad	0x401708b588e368f1              # double 5.7585050000000004
	.quad	0x40012d81adea8976              # double 2.1472199999999999
	.quad	0x401be779e9d0e992              # double 6.976051
	.quad	0x401c5556d19dece5              # double 7.0833389999999996
	.quad	0x3ff454e6e221c8a8              # double 1.2707280000000001
	.quad	0x4011354f3775b813              # double 4.30206
	.quad	0x3ff15e785b5b7069              # double 1.085564
	.quad	0x3fee8a9bcfd4bf0a              # double 0.95442000000000005
	.quad	0x3ff0629c779a6b51              # double 1.0240750000000001
	.quad	0x400dfa7b0b391926              # double 3.7473049999999999
	.quad	0x3ff70fabda0dfdf0              # double 1.4413260000000001
	.quad	0x4010726a22b3892f              # double 4.1117330000000001
	.quad	0x4014419e30014f8b              # double 5.0640799999999997
	.quad	0x4023ad9b3d07c84b              # double 9.8390749999999993
	.quad	0x400514f9c1f85d74              # double 2.6352419999999999
	.quad	0x401750ded288ce70              # double 5.8289749999999998
	.quad	0x401e059d55e6bc62              # double 7.5054829999999999
	.quad	0x3fd0d5cfaacd9e84              # double 0.26305000000000001
	.quad	0x401a04723aafff37              # double 6.5043420000000003
	.quad	0x400ea5fa658c4bd3              # double 3.8310439999999999
	.quad	0x4006ecb85a4f00ef              # double 2.865586
	.quad	0x4015efb9389b5200              # double 5.4841049999999996
	.quad	0x40159580c308feac              # double 5.3959989999999998
	.quad	0x3f772abef06b3786              # double 0.0056559999999999996
	.quad	0x3fefa847b24638c9              # double 0.98929199999999994
	.quad	0x3ff81e481f53825e              # double 1.507393
	.quad	0x401d09e518f3eccc              # double 7.2596629999999998
	.quad	0x4021f8121682f944              # double 8.9845129999999997
	.quad	0x3fecfeb28d8665e0              # double 0.90609099999999997
	.quad	0x3ff6fb29a1b9f98b              # double 1.4363189999999999
	.quad	0x4021ed2b0a6fc58b              # double 8.9632190000000005
	.quad	0x3fe3de39713ad5bf              # double 0.62087700000000001
	.quad	0x401d296d4c33b539              # double 7.2904559999999998
	.quad	0x3ff72264e48626f6              # double 1.445897
	.quad	0x401f86a98244e93e              # double 7.8815059999999999
	.quad	0x3fd2951c5c5718ec              # double 0.29035100000000003
	.quad	0x3fce489d27c39368              # double 0.236591
	.quad	0x4021d12ba16e7a31              # double 8.9085359999999998
	.quad	0x3fff8b51372a38b9              # double 1.9715130000000001
	.quad	0x3fe0914f483cafb4              # double 0.51773800000000003
	.quad	0x4001dbaa9b499d02              # double 2.232259
	.quad	0x4022f81e2584f4c7              # double 9.4846050000000001
	.quad	0x40203a95a6c5d207              # double 8.1144230000000004
	.quad	0x3ffa2d86ec17ebaf              # double 1.636115
	.quad	0x4023fcd8127b2cc7              # double 9.9938359999999999
	.quad	0x4023299b90ea9e6f              # double 9.5812650000000001
	.quad	0x3fd3d91ab8e8ea3a              # double 0.31012600000000001
	.quad	0x4002c90c4dec1c1d              # double 2.3481679999999998
	.quad	0x4023e4d24e160d88              # double 9.9469169999999991
	.quad	0x40138688bda9435b              # double 4.8813810000000002
	.quad	0x4021e9cde5d18091              # double 8.9566490000000005
	.quad	0x401d74be40420f6f              # double 7.364007
	.quad	0x4005f5158b827fa2              # double 2.7446700000000002
	.quad	0x400f1513f8db4891              # double 3.8852920000000002
	.quad	0x402044929aa1d756              # double 8.1339310000000005
	.quad	0x40210ecebbba55d2              # double 8.5289210000000004
	.quad	0x402205e7ea5f84cb              # double 9.0115350000000003
	.quad	0x3fed70e6f2e8c048              # double 0.92003199999999996
	.quad	0x4008d507e9d94d0e              # double 3.1040190000000001
	.quad	0x4022d1e9f2778141              # double 9.4099880000000002
	.quad	0x40238a5ca29845dd              # double 9.7702380000000008
	.quad	0x40119427418d690a              # double 4.3946810000000003
	.quad	0x40054aa433508f65              # double 2.6614460000000002
	.quad	0x3ffaa2ec28b2a6b1              # double 1.664776
	.quad	0x40025869835158b8              # double 2.2931699999999999
	.quad	0x40107a1db877ab32              # double 4.1192539999999997
	.quad	0x401f9c27631b584b              # double 7.9024939999999999
	.quad	0x4011de94ab1d4f9c              # double 4.4673639999999999
	.quad	0x40212324a6a875d5              # double 8.5686389999999992
	.quad	0x401af97bfa4c61d8              # double 6.7436369999999997
	.quad	0x401bfe79aae6c8f7              # double 6.9985109999999997
	.quad	0x400646317268d328              # double 2.7842739999999999
	.quad	0x4011428f190d1740              # double 4.3149990000000003
	.quad	0x3ff6d34acaff6d33              # double 1.426585
	.quad	0x400954d056c508b3              # double 3.1664129999999999
	.quad	0x40168b76f6d76252              # double 5.636196
	.quad	0x401fe11d798d8a98              # double 7.9698390000000003
	.quad	0x40136413db7f1737              # double 4.8477319999999997
	.quad	0x4022f494d50ebaae              # double 9.4776980000000002
	.quad	0x3fffafcefaa4766c              # double 1.9804219999999999
	.quad	0x3fed5c4a83b1d0c8              # double 0.917516
	.quad	0x40155f90d9d7774b              # double 5.3433260000000002
	.quad	0x401d2874c8ffb8b2              # double 7.2895079999999997
	.quad	0x4005549b62c77575              # double 2.666312
	.quad	0x401e04fdb09a671f              # double 7.504874
	.quad	0x401baf544bb1af3a              # double 6.9212199999999999
	.quad	0x4021c4bf4cb1897a              # double 8.8842719999999993
	.quad	0x4012071f79420b3d              # double 4.5069559999999997
	.quad	0x4000b790fb65668c              # double 2.0896319999999999
	.quad	0x400042b94d940789              # double 2.0325799999999998
	.quad	0x4012144dca8e2e2c              # double 4.5198280000000004
	.quad	0x400a2b6e0d23d4f1              # double 3.2712059999999998
	.quad	0x4020cf6af89c5e70              # double 8.4051130000000001
	.quad	0x402137633ce63a5c              # double 8.6081789999999998
	.quad	0x400443c85c24c405              # double 2.5330970000000002
	.quad	0x40194dda059a73b4              # double 6.3260269999999998
	.quad	0x4013259d55e6bc62              # double 4.7867329999999999
	.quad	0x3fc7cbee807bbb62              # double 0.18591099999999999
	.quad	0x400bee5796bfca86              # double 3.4913780000000001
	.quad	0x401edb2c83ec892b              # double 7.7140370000000002
	.quad	0x400053ba775fb2ee              # double 2.040883
	.quad	0x400d9b71758e2196              # double 3.7008999999999999
	.quad	0x4023a5e225fa658c              # double 9.8239909999999994
	.quad	0x402157a4a48f96e1              # double 8.6711779999999994
	.quad	0x3fef27ef9db22d0e              # double 0.97362499999999996
	.quad	0x3ff3741f212d7732              # double 1.2158500000000001
	.quad	0x3ff13487fcb923a3              # double 1.0753250000000001
	.quad	0x401ff60f1b25f634              # double 7.9902920000000002
	.quad	0x4006b4cfd08d4bad              # double 2.8382869999999998
	.quad	0x4012cbca1059ea57              # double 4.6990129999999999
	.quad	0x40178014f8b588e3              # double 5.8750799999999996
	.quad	0x401ba972474538ef              # double 6.9154749999999998
	.quad	0x40204ea209aaa3ad              # double 8.1535799999999998
	.quad	0x40239bea704bc276              # double 9.8045229999999997
	.quad	0x3fd75c70435efa61              # double 0.36501699999999998
	.quad	0x4022ffc9795b35b1              # double 9.4995840000000004
	.quad	0x400b1f7ced916873              # double 3.3903750000000001
	.quad	0x40230854cdb7ae58              # double 9.5162720000000007
	.quad	0x4013d1183b60285f              # double 4.9541940000000002
	.quad	0x400e3a48b6523704              # double 3.7784589999999998
	.quad	0x401f415db3397dd0              # double 7.8138339999999999
	.quad	0x3fd93a53b8e4b87c              # double 0.39418500000000001
	.quad	0x4011b719b4dcebff              # double 4.4288090000000002
	.quad	0x4015f7e0ac7da1ec              # double 5.4920679999999997
	.quad	0x3fcc0af1cb89d6ae              # double 0.219084
	.quad	0x4019099392189bd8              # double 6.2593519999999998
	.quad	0x40214e7bc3c5bd0e              # double 8.6532879999999999
	.quad	0x3fe2705425f20210              # double 0.57621199999999995
	.quad	0x4011ca79bbadc098              # double 4.44773
	.quad	0x40177d33d29563aa              # double 5.872268
	.quad	0x400bef32378ab0c9              # double 3.4917950000000002
	.quad	0x3fff8f2becedd484              # double 1.9724539999999999
	.quad	0x3ffbf49f0e4da09d              # double 1.7472220000000001
	.quad	0x401689b6b2af1455              # double 5.6344859999999999
	.quad	0x400d22b1704ff434              # double 3.64194
	.quad	0x40172b6a1e81cb47              # double 5.7923970000000002
	.quad	0x401d7baf965b20b8              # double 7.3707869999999999
	.quad	0x400578476f2a5a47              # double 2.6837300000000002
	.quad	0x40223719b4dcebff              # double 9.1076180000000004
	.quad	0x4005516e37154003              # double 2.6647609999999999
	.quad	0x401be445aa2e3c53              # double 6.9729219999999996
	.quad	0x40226c579f234656              # double 9.2116059999999997
	.quad	0x4001ad6ece13f4aa              # double 2.2096840000000002
	.quad	0x3ff31fc9ff92f2b6              # double 1.1952609999999999
	.quad	0x400cf1f9acffa7eb              # double 3.6181519999999998
	.quad	0x4000879b34a44c7b              # double 2.066214
	.quad	0x401f82bbecaab8a6              # double 7.8776700000000002
	.quad	0x4022b2f61ed5ae1d              # double 9.3495340000000002
	.quad	0x4021339496249a13              # double 8.6007429999999996
	.quad	0x3fbc6af46aa087ca              # double 0.11100699999999999
	.quad	0x401a610e453d20f3              # double 6.5947810000000002
	.quad	0x401537c5260f5e42              # double 5.3044630000000002
	.quad	0x4016f90ea9e6eeb7              # double 5.74322
	.quad	0x4013c939eadd590c              # double 4.94651
	.quad	0x401c3cbc05d52c17              # double 7.0593110000000001
	.quad	0x3ff92fa7221858bc              # double 1.5741339999999999
	.quad	0x401ad35c9e6687f4              # double 6.7064079999999997
	.quad	0x40213d8750c1b973              # double 8.6201729999999994
	.quad	0x40069c5d63886595              # double 2.8263500000000001
	.quad	0x4011d6c7a7c9de05              # double 4.459746
	.quad	0x4022e661f18c9fb6              # double 9.4499659999999999
	.quad	0x4015c96030c23fab              # double 5.4466559999999999
	.quad	0x401f3b4cc2507208              # double 7.8079099999999996
	.quad	0x3fd54812be48a58b              # double 0.33252399999999999
	.quad	0x3ff38894c447c30d              # double 1.220845
	.quad	0x3ff6ef2e8c0485a1              # double 1.4333940000000001
	.quad	0x402029e108c3f3e0              # double 8.0817949999999996
	.quad	0x3ffe1d3671ac14c6              # double 1.8821319999999999
	.quad	0x3ff6d04e618ce2d2              # double 1.425856
	.quad	0x3fffd0ff97247454              # double 1.9885250000000001
	.quad	0x4023323bbc6eb0b8              # double 9.5981120000000004
	.quad	0x4022779ebe9c8861              # double 9.2336329999999993
	.quad	0x40227fd8cf398e97              # double 9.249701
	.quad	0x3fe830856e696a27              # double 0.75592300000000001
	.quad	0x4000ac0bdcad14a1              # double 2.0840070000000002
	.quad	0x3f9c4827b6fe2e6f              # double 0.027619000000000001
	.quad	0x401556bc1eff9f88              # double 5.3347020000000001
	.quad	0x3ff11c38b04ab607              # double 1.0693900000000001
	.quad	0x3fe02038194c0160              # double 0.50393299999999996
	.quad	0x4011a042d8c2a455              # double 4.4065050000000001
	.quad	0x401e5ff151e75361              # double 7.5936940000000001
	.quad	0x3fe177e3d1cc100e              # double 0.54588499999999995
	.quad	0x401c162dc6e2a800              # double 7.0216589999999997
	.quad	0x3ffc3519bd4067cf              # double 1.762964
	.quad	0x4016b5d35653c9ac              # double 5.6775640000000003
	.quad	0x4002dc0ebedfa440              # double 2.35745
	.quad	0x3ffa4522ea0fd3b3              # double 1.6418790000000001
	.quad	0x3ff4cd573647baaa              # double 1.3001320000000001
	.quad	0x400712a6b0d95140              # double 2.8841070000000002
	.quad	0x40201487db2b3461              # double 8.0400989999999997
	.quad	0x400170bd87b56b87              # double 2.1800489999999999
	.quad	0x4021e5b89939218a              # double 8.9486740000000005
	.quad	0x402052a5c5f7c676              # double 8.1614210000000007
	.quad	0x3fe1d8be7296f651              # double 0.55770799999999998
	.quad	0x3ffb450268900c52              # double 1.704348
	.quad	0x40221fcc1871e6cd              # double 9.0621039999999997
	.quad	0x40174b7f1737542a              # double 5.8237269999999999
	.quad	0x4020536d22424a27              # double 8.1629419999999993
	.quad	0x401a7af038e29f9d              # double 6.6200570000000001
	.quad	0x401eab6aa4b9884c              # double 7.6673989999999996
	.quad	0x40186d32830a0b1c              # double 6.1066380000000002
	.quad	0x3fd088b97785729b              # double 0.25834499999999999
	.quad	0x3fcc22036006d0d5              # double 0.21978800000000001
	.quad	0x400880791c4b9021              # double 3.0627309999999999
	.quad	0x40085c382a12f901              # double 3.045029
	.quad	0x402152d490e66cb1              # double 8.661778
	.quad	0x3ffb4c3f3e0370ce              # double 1.706115
	.quad	0x3ff1cd8fd5cb7910              # double 1.1126860000000001
	.quad	0x402162ebe596c82e              # double 8.693206
	.quad	0x401c7b84db9c7369              # double 7.1206240000000003
	.quad	0x3fe19d7774aba387              # double 0.55047199999999996
	.quad	0x40162e10cf5b1c86              # double 5.5449859999999997
	.quad	0x40089a3443d46b27              # double 3.0752950000000001
	.quad	0x4023f7060bb2bbaa              # double 9.9824680000000008
	.quad	0x40130a6b0d9513f9              # double 4.7601740000000001
	.quad	0x40136cf70153bd16              # double 4.8564109999999996
	.quad	0x401036de33269df9              # double 4.0535819999999996
	.quad	0x40234b6049ecb31c              # double 9.6472189999999997
	.quad	0x3fe7d7c0b1359792              # double 0.74508700000000005
	.quad	0x401087008a697aee              # double 4.1318380000000001
	.quad	0x3fde829cfdd22856              # double 0.47672199999999998
	.quad	0x3ff018a548238540              # double 1.0060169999999999
	.quad	0x4010744241c3efae              # double 4.1135339999999996
	.quad	0x400ec7d3d4280ae1              # double 3.847572
	.quad	0x4006207e5a78f25a              # double 2.7658659999999999
	.quad	0x4016c57e23f24d90              # double 5.6928640000000001
	.quad	0x3fc56f2a5a469d73              # double 0.16745499999999999
	.quad	0x3ff235c5b4aa9718              # double 1.138128
	.quad	0x401af0c026cc1ca4              # double 6.7351080000000003
	.quad	0x4008aff2a172abef              # double 3.085912
	.quad	0x3ff5ba6aca793576              # double 1.358012
	.quad	0x401461f0c34c1a8b              # double 5.0956450000000002
	.quad	0x4021f474d9c6b053              # double 8.9774539999999998
	.quad	0x401589d8c6d612c7              # double 5.3846160000000003
	.quad	0x4023310d38cda6e7              # double 9.5958039999999993
	.quad	0x3ff646a098915bdd              # double 1.3922429999999999
	.quad	0x4007741f212d7732              # double 2.9317000000000002
	.quad	0x4019650b955f7836              # double 6.3486770000000003
	.quad	0x4013da737110e454              # double 4.9633310000000002
	.quad	0x400b2a0232096788              # double 3.3955120000000001
	.quad	0x401d535a426bb55b              # double 7.3313990000000002
	.quad	0x4002fcfd4bf0995b              # double 2.3735300000000001
	.quad	0x401da218def416be              # double 7.4082980000000003
	.quad	0x3ff197353b4b2fa9              # double 1.0994159999999999
	.quad	0x401768e9b38d60a6              # double 5.8524539999999998
	.quad	0x4022b39a7c17a893              # double 9.3507879999999997
	.quad	0x400e4d716d2aa5c6              # double 3.787814
	.quad	0x3ff04d7cf5f4e443              # double 1.018918
	.quad	0x402212845996744b              # double 9.0361659999999997
	.quad	0x401c8a7ce0fc2eba              # double 7.1352419999999999
	.quad	0x3fdebdba0a526959              # double 0.48032999999999998
	.quad	0x3fff0385c67dfe33              # double 1.9383600000000001
	.quad	0x401ae70eb24a6a87              # double 6.7256419999999997
	.quad	0x40102bbb1f255f35              # double 4.0427059999999999
	.quad	0x401a73bc903ea705              # double 6.6130240000000002
	.quad	0x4020f42656abde40              # double 8.4768550000000005
	.quad	0x4010db8bac710cb3              # double 4.2144000000000004
	.quad	0x401d0c016052502f              # double 7.2617240000000001
	.quad	0x400e0e297396d091              # double 3.7569149999999998
	.quad	0x401a5192a737110e              # double 6.5796609999999998
	.quad	0x401fdfa2f05a708f              # double 7.9683950000000001
	.quad	0x402358cef672b884              # double 9.6734539999999995
	.quad	0x4020d915bdd76684              # double 8.4239940000000004
	.quad	0x400374a771c970f8              # double 2.4319600000000001
	.quad	0x40103a94ff0025c0              # double 4.0572090000000003
	.quad	0x4020910214ad362f              # double 8.2832190000000008
	.quad	0x40162e468cac4b4d              # double 5.545191
	.quad	0x40113ecf20642396              # double 4.311337
	.quad	0x3ff42aa9f7b5aea3              # double 1.260416
	.quad	0x4001d0014f8b588e              # double 2.2265649999999999
	.quad	0x40223bad7d7c2ca1              # double 9.1165579999999995
	.quad	0x4022bc66d373affb              # double 9.3679719999999999
	.quad	0x4011e154c985f06f              # double 4.4700499999999996
	.quad	0x40225e659d12cade              # double 9.1843690000000002
	.quad	0x4023fdd2f1a9fbe7              # double 9.9957499999999992
	.quad	0x3fae63c74fb549f9              # double 0.059354999999999998
	.quad	0x40198925bb7b6bb1              # double 6.3839329999999999
	.quad	0x3ff99c432ca57a78              # double 1.6006499999999999
	.quad	0x401de5f56a7ac81d              # double 7.4745689999999998
	.quad	0x401edef566490a35              # double 7.7177329999999999
	.quad	0x400eab37867f0aa2              # double 3.833602
	.quad	0x3fe9d30f062d40ab              # double 0.80701400000000001
	.quad	0x402109496249a134              # double 8.5181380000000004
	.quad	0x4022f364bec679cc              # double 9.4753779999999991
	.quad	0x4017c8feef5ec80c              # double 5.9462849999999996
	.quad	0x4021a36b09635611              # double 8.8191760000000006
	.quad	0x401e022d0e560419              # double 7.5021250000000003
	.quad	0x40129dd3fe1975f3              # double 4.6541290000000002
	.quad	0x401f04940bbb1f25              # double 7.7544709999999996
	.quad	0x4022577fcfc3f812              # double 9.1708970000000001
	.quad	0x401177ea1c68ec53              # double 4.3671040000000003
	.quad	0x40144fbdad7518b1              # double 5.0778720000000002
	.quad	0x402186d527e52157              # double 8.7633449999999993
	.quad	0x40216de3da2f8bdf              # double 8.7146290000000004
	.quad	0x4020614855da2728              # double 8.1900049999999993
	.quad	0x4002be34330d7386              # double 2.342873
	.quad	0x400b0ded288ce704              # double 3.3818000000000001
	.quad	0x401770c4588a04d1              # double 5.8601239999999999
	.quad	0x3ffffadafd113837              # double 1.9987440000000001
	.quad	0x4023df0da5daf07c              # double 9.935651
	.quad	0x401a5032db1e9f27              # double 6.5783189999999996
	.quad	0x3ffff0574b407033              # double 1.9961770000000001
	.quad	0x40074e3821af7d31              # double 2.9131930000000001
	.quad	0x4022f54cfd08d4bb              # double 9.4791030000000002
	.quad	0x4010281cf7878b7a              # double 4.0391729999999999
	.quad	0x4013214b9cb6848c              # double 4.7825150000000001
	.quad	0x3ff823608d08919f              # double 1.508637
	.quad	0x3fccef0ae536501e              # double 0.226045
	.quad	0x401ab774256bca53              # double 6.6791539999999996
	.quad	0x40122a1a500d5e8d              # double 4.5411159999999997
	.quad	0x401dc052934acaff              # double 7.4378149999999996
	.quad	0x3fea913c68661ae7              # double 0.83022899999999999
	.quad	0x4011b4873365881a              # double 4.4262969999999999
	.quad	0x4020d1702e6644d8              # double 8.4090589999999992
	.quad	0x401f9e3150dae3e7              # double 7.9044850000000002
	.quad	0x401eca1ec4e7253e              # double 7.6973830000000003
	.quad	0x3fe799ae924f227d              # double 0.73751
	.quad	0x3ff94373f316e371              # double 1.5789679999999999
	.quad	0x4020c06fac6045bb              # double 8.3758520000000001
	.quad	0x401f755cd91eeaa7              # double 7.8646120000000001
	.quad	0x401b2eb5f5f0b285              # double 6.7956159999999999
	.quad	0x40161766c6de7642              # double 5.5228529999999996
	.quad	0x4021b38c111ada77              # double 8.8506780000000003
	.quad	0x4008551372a38b8b              # double 3.0415410000000001
	.quad	0x401231205bc01a37              # double 4.5479750000000001
	.quad	0x3ff077c99ae924f2              # double 1.029245
	.quad	0x3ffc945f9df548ed              # double 1.786224
	.quad	0x400abb9bed30f063              # double 3.3416060000000001
	.quad	0x40113452c59fb1e2              # double 4.3010970000000004
	.quad	0x401a2b9ecf638002              # double 6.5425979999999999
	.quad	0x401eb7ca2120e1f8              # double 7.6794820000000001
	.quad	0x401e61d9f4d37c13              # double 7.5955579999999995
	.quad	0x4009938fffbce421              # double 3.1970519999999998
	.quad	0x4011090c9107faa0              # double 4.2588369999999998
	.quad	0x400db9cf13cee9dd              # double 3.7157269999999998
	.quad	0x401a079fa97e132b              # double 6.5074449999999997
	.quad	0x3ff5a2ac322291fb              # double 1.3522149999999999
	.quad	0x4002ef5b1c864884              # double 2.366873
	.quad	0x401d301bc98a222d              # double 7.2969809999999997
	.quad	0x400f0f9ebe9c8861              # double 3.8826269999999998
	.quad	0x3ff1359146e4c0df              # double 1.0755779999999999
	.quad	0x4012e617c1bda512              # double 4.7247000000000003
	.quad	0x3ffb415e39713ad6              # double 1.7034590000000001
	.quad	0x400c4821f2990f30              # double 3.5352209999999999
	.quad	0x401a3e0f7fcfc3f8              # double 6.5606059999999999
	.quad	0x3fea9858bc59b802              # double 0.83109699999999997
	.quad	0x4020af0e4da09cc3              # double 8.3419059999999998
	.quad	0x4021eb7da61e0c5b              # double 8.9599430000000009
	.quad	0x4020db39c0ebedfa              # double 8.4281749999999995
	.quad	0x40221a1ea35935fc              # double 9.0510149999999995
	.quad	0x401b1263d816aceb              # double 6.7679590000000003
	.quad	0x4019d1c219eb6391              # double 6.4548420000000002
	.quad	0x40179661f18c9fb6              # double 5.8968579999999999
	.quad	0x402277b02d59d55e              # double 9.2337659999999993
	.quad	0x40055c5b4aa9717e              # double 2.670096
	.quad	0x401312c7fbacb429              # double 4.7683410000000004
	.quad	0x3fb22c55c96030c2              # double 0.070988999999999997
	.quad	0x40016bb6672fba02              # double 2.177594
	.quad	0x400f081669ced0b3              # double 3.878949
	.quad	0x401ab13db7f17375              # double 6.6730869999999998
	.quad	0x400f86a11ec918e3              # double 3.9407369999999999
	.quad	0x401507e308787486              # double 5.2577020000000001
	.quad	0x40021bd0e12e83a1              # double 2.263582
	.quad	0x401b2fb2aae29739              # double 6.7965799999999996
	.quad	0x401df99ed7c6fbd2              # double 7.4937699999999996
	.quad	0x40201fd5a9eb2075              # double 8.0621770000000001
	.quad	0x3fb7ed634549b62c              # double 0.093465999999999994
	.quad	0x4002431f03d145d8              # double 2.2827739999999999
	.quad	0x4023de6cd29131ec              # double 9.9344239999999999
	.quad	0x4013776922d948dc              # double 4.8666119999999999
	.quad	0x3fd73d4280ae1049              # double 0.36311399999999999
	.size	.L__constant_2500xf64, 20000

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
