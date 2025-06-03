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
	.quad	0x4143b3598020ccff              # double 2582195.0010009999
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
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
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
	.size	.L__constant_101xindex_0, 808

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

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	116                             # 0x74
	.quad	126                             # 0x7e
	.quad	177                             # 0xb1
	.quad	182                             # 0xb6
	.quad	236                             # 0xec
	.quad	244                             # 0xf4
	.quad	297                             # 0x129
	.quad	305                             # 0x131
	.quad	356                             # 0x164
	.quad	365                             # 0x16d
	.quad	419                             # 0x1a3
	.quad	424                             # 0x1a8
	.quad	480                             # 0x1e0
	.quad	486                             # 0x1e6
	.quad	539                             # 0x21b
	.quad	544                             # 0x220
	.quad	598                             # 0x256
	.quad	604                             # 0x25c
	.quad	657                             # 0x291
	.quad	662                             # 0x296
	.quad	716                             # 0x2cc
	.quad	722                             # 0x2d2
	.quad	777                             # 0x309
	.quad	786                             # 0x312
	.quad	840                             # 0x348
	.quad	848                             # 0x350
	.quad	903                             # 0x387
	.quad	912                             # 0x390
	.quad	966                             # 0x3c6
	.quad	971                             # 0x3cb
	.quad	1026                            # 0x402
	.quad	1031                            # 0x407
	.quad	1085                            # 0x43d
	.quad	1093                            # 0x445
	.quad	1146                            # 0x47a
	.quad	1150                            # 0x47e
	.quad	1204                            # 0x4b4
	.quad	1206                            # 0x4b6
	.quad	1259                            # 0x4eb
	.quad	1266                            # 0x4f2
	.quad	1319                            # 0x527
	.quad	1330                            # 0x532
	.quad	1381                            # 0x565
	.quad	1387                            # 0x56b
	.quad	1442                            # 0x5a2
	.quad	1446                            # 0x5a6
	.quad	1501                            # 0x5dd
	.quad	1505                            # 0x5e1
	.quad	1563                            # 0x61b
	.quad	1573                            # 0x625
	.quad	1624                            # 0x658
	.quad	1630                            # 0x65e
	.quad	1687                            # 0x697
	.quad	1692                            # 0x69c
	.quad	1745                            # 0x6d1
	.quad	1750                            # 0x6d6
	.quad	1805                            # 0x70d
	.quad	1810                            # 0x712
	.quad	1862                            # 0x746
	.quad	1867                            # 0x74b
	.quad	1920                            # 0x780
	.quad	1925                            # 0x785
	.quad	1980                            # 0x7bc
	.quad	1988                            # 0x7c4
	.quad	2040                            # 0x7f8
	.quad	2049                            # 0x801
	.quad	2106                            # 0x83a
	.quad	2113                            # 0x841
	.quad	2167                            # 0x877
	.quad	2170                            # 0x87a
	.quad	2224                            # 0x8b0
	.quad	2231                            # 0x8b7
	.quad	2281                            # 0x8e9
	.quad	2287                            # 0x8ef
	.quad	2342                            # 0x926
	.quad	2345                            # 0x929
	.quad	2397                            # 0x95d
	.quad	2400                            # 0x960
	.quad	2453                            # 0x995
	.quad	2457                            # 0x999
	.quad	2513                            # 0x9d1
	.quad	2520                            # 0x9d8
	.quad	2574                            # 0xa0e
	.quad	2580                            # 0xa14
	.quad	2634                            # 0xa4a
	.quad	2639                            # 0xa4f
	.quad	2693                            # 0xa85
	.quad	2697                            # 0xa89
	.quad	2750                            # 0xabe
	.quad	2762                            # 0xaca
	.quad	2816                            # 0xb00
	.quad	2825                            # 0xb09
	.quad	2881                            # 0xb41
	.quad	2888                            # 0xb48
	.quad	2940                            # 0xb7c
	.quad	2946                            # 0xb82
	.quad	2996                            # 0xbb4
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	82                              # 0x52
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	71                              # 0x47
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
	.quad	31                              # 0x1f
	.quad	52                              # 0x34
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	89                              # 0x59
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	49                              # 0x31
	.quad	66                              # 0x42
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	89                              # 0x59
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
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	24                              # 0x18
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
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
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	56                              # 0x38
	.quad	95                              # 0x5f
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	81                              # 0x51
	.quad	89                              # 0x59
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
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
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	50                              # 0x32
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
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
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	66                              # 0x42
	.quad	87                              # 0x57
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
	.quad	19                              # 0x13
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
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	41                              # 0x29
	.quad	64                              # 0x40
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	63                              # 0x3f
	.quad	84                              # 0x54
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
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	99                              # 0x63
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	73                              # 0x49
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	91                              # 0x5b
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
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	77                              # 0x4d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	17                              # 0x11
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
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
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	68                              # 0x44
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
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
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	94                              # 0x5e
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
	.quad	15                              # 0xf
	.quad	53                              # 0x35
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
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
	.quad	27                              # 0x1b
	.quad	56                              # 0x38
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
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
	.quad	30                              # 0x1e
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
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
	.quad	15                              # 0xf
	.quad	35                              # 0x23
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	74                              # 0x4a
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
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	69                              # 0x45
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
	.quad	15                              # 0xf
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	87                              # 0x57
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	42                              # 0x2a
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	16                              # 0x10
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	76                              # 0x4c
	.quad	93                              # 0x5d
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
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
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	32                              # 0x20
	.quad	63                              # 0x3f
	.quad	81                              # 0x51
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
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
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
	.quad	17                              # 0x11
	.quad	83                              # 0x53
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
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
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	83                              # 0x53
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
	.quad	6                               # 0x6
	.quad	21                              # 0x15
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	47                              # 0x2f
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
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
	.quad	2                               # 0x2
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	57                              # 0x39
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
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
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	68                              # 0x44
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	23                              # 0x17
	.quad	40                              # 0x28
	.quad	70                              # 0x46
	.quad	80                              # 0x50
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	83                              # 0x53
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
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	71                              # 0x47
	.quad	87                              # 0x57
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x401cd035371971c1              # double 7.203328
	.quad	0x4021530a2ca9ac36              # double 8.6621869999999994
	.quad	0x3ff10dc443914f48              # double 1.0658609999999999
	.quad	0x40209778bbd38045              # double 8.2958429999999996
	.quad	0x3fcc2c2bd7f51efb              # double 0.22009799999999999
	.quad	0x3fef215fcc1871e7              # double 0.97282400000000002
	.quad	0x3fe27542a23bff8b              # double 0.57681400000000005
	.quad	0x401315347a5b0ff1              # double 4.7707079999999999
	.quad	0x3ffed49a5657fb6a              # double 1.9269050000000001
	.quad	0x3fda6dbd72bcb5fe              # double 0.41294799999999998
	.quad	0x3fe8725e56cd6c2f              # double 0.763961
	.quad	0x3fe7ebd9018e7579              # double 0.74753999999999998
	.quad	0x400827a311e85fd0              # double 3.0193539999999999
	.quad	0x3fd61f926c7eae5c              # double 0.34567700000000001
	.quad	0x4013f7a311e85fd0              # double 4.9918329999999997
	.quad	0x40034c77dd872f34              # double 2.4123380000000001
	.quad	0x401545dfeb8d8234              # double 5.3182369999999999
	.quad	0x3fd7d71b0468448d              # double 0.372504
	.quad	0x40228753e707e176              # double 9.2643120000000003
	.quad	0x400df6238da3c212              # double 3.7451850000000002
	.quad	0x4020892189bd8384              # double 8.2678340000000005
	.quad	0x401f7e7296f6512b              # double 7.8734840000000003
	.quad	0x40147e38a7e73a36              # double 5.1232629999999997
	.quad	0x401c2a43fe5c91d1              # double 7.0412749999999997
	.quad	0x3ffa7304039abf34              # double 1.6530800000000001
	.quad	0x402224fd2a62aa19              # double 9.0722439999999995
	.quad	0x4008b55ac03ff690              # double 3.088552
	.quad	0x4012dd6cb5350093              # double 4.7162350000000002
	.quad	0x401f6502eec7c958              # double 7.8486440000000001
	.quad	0x401c2305532617c2              # double 7.0342000000000002
	.quad	0x401c8e4f3343fa2b              # double 7.1389740000000002
	.quad	0x40159adab9f559b4              # double 5.4012250000000002
	.quad	0x402068e0008637bd              # double 8.204834
	.quad	0x40183220bc382a13              # double 6.048953
	.quad	0x40051afe1da7b0b4              # double 2.6381800000000002
	.quad	0x3ffc7a658c4bd33d              # double 1.779882
	.quad	0x400671e75360d024              # double 2.8056169999999998
	.quad	0x4021b44417870542              # double 8.8520819999999993
	.quad	0x4021288ace24bba1              # double 8.5791839999999997
	.quad	0x402398a6117720c9              # double 9.7981420000000003
	.quad	0x401f62107b784663              # double 7.8457660000000002
	.quad	0x401ffde0d66f0cfe              # double 7.9979279999999999
	.quad	0x401ad413db7f1737              # double 6.7071069999999997
	.quad	0x4016dcf0b6b6e0d2              # double 5.7157619999999998
	.quad	0x400c1731098d477c              # double 3.5113240000000001
	.quad	0x401acc308feac42f              # double 6.6994040000000004
	.quad	0x401d9d6cb5350093              # double 7.4037350000000002
	.quad	0x401a852da98676a7              # double 6.6300569999999999
	.quad	0x4022a30d9513f8db              # double 9.3184629999999995
	.quad	0x3fe4771c970f7b9e              # double 0.63954
	.quad	0x400faece9a2c6690              # double 3.9603549999999998
	.quad	0x40237580e496edee              # double 9.7294990000000006
	.quad	0x400186d2674080fa              # double 2.1908310000000002
	.quad	0x4012c11ba3ca7504              # double 4.6885820000000002
	.quad	0x3ff9aa305532617c              # double 1.60405
	.quad	0x401ab168f8e7ddca              # double 6.6732519999999997
	.quad	0x401bebdad7518b0d              # double 6.9803269999999999
	.quad	0x4023f1392189bd84              # double 9.9711390000000008
	.quad	0x401776e264e48627              # double 5.866098
	.quad	0x3ffeee807bbb6241              # double 1.9332279999999999
	.quad	0x402292e126202539              # double 9.2868739999999992
	.quad	0x4023c45fe1112770              # double 9.8835440000000006
	.quad	0x401717d912556d1a              # double 5.7732890000000001
	.quad	0x40105f96e158750c              # double 4.0933489999999999
	.quad	0x401999ef954eb13e              # double 6.400328
	.quad	0x402225cbff47735c              # double 9.0738219999999998
	.quad	0x401fd4c33b539325              # double 7.9577759999999999
	.quad	0x401518487b99d452              # double 5.273714
	.quad	0x401464fb549f9485              # double 5.0986149999999997
	.quad	0x4018fb6b2af14552              # double 6.2455259999999999
	.quad	0x4019f96feb4a6656              # double 6.4935910000000003
	.quad	0x40212b64388ebcc7              # double 8.5847490000000004
	.quad	0x401b1f37fbefd007              # double 6.7804869999999999
	.quad	0x401545c31593e5fb              # double 5.3181269999999996
	.quad	0x4005923a29c779a7              # double 2.6964000000000001
	.quad	0x400f5d1fe64f54d2              # double 3.920471
	.quad	0x400a3442c7fbacb4              # double 3.2755179999999999
	.quad	0x4020d0c88a47ecff              # double 8.4077800000000007
	.quad	0x3fba61f18c9fb613              # double 0.103057
	.quad	0x3fdd3c85c24c404a              # double 0.45681899999999998
	.quad	0x401e0a4b9884c6a4              # double 7.5100540000000002
	.quad	0x401425803cd141a7              # double 5.0366220000000004
	.quad	0x400eeef5ec80c73b              # double 3.8666800000000001
	.quad	0x3fdd814940bbb1f2              # double 0.46101599999999998
	.quad	0x402211014b599aa6              # double 9.0332129999999999
	.quad	0x401e3650e779207d              # double 7.5530429999999997
	.quad	0x4023999e30014f8b              # double 9.8000349999999993
	.quad	0x4023ff06705c896e              # double 9.9980960000000003
	.quad	0x4012be2f7b17ce53              # double 4.6857280000000001
	.quad	0x4021f45a1cac0831              # double 8.9772499999999997
	.quad	0x4014611f0c34c1a9              # double 5.0948450000000003
	.quad	0x402339c1f85d744f              # double 9.6128079999999993
	.quad	0x401496102795703f              # double 5.1465459999999998
	.quad	0x4011423e5b8561d4              # double 4.3146909999999998
	.quad	0x4023e1fddebd9019              # double 9.9413900000000001
	.quad	0x3ff173d188f42fe8              # double 1.090776
	.quad	0x40209305b7cfe586              # double 8.287153
	.quad	0x401da8ecd8dbcec8              # double 7.4149659999999997
	.quad	0x3fe6d36501e2584f              # double 0.71330499999999997
	.quad	0x4005425b749adc90              # double 2.6574010000000001
	.quad	0x400de91fb3fa6df0              # double 3.7388300000000001
	.quad	0x40163b76f6d76252              # double 5.558071
	.quad	0x3ffd2043a2163fdd              # double 1.8203769999999999
	.quad	0x401c4dd2f1a9fbe7              # double 7.0759999999999996
	.quad	0x4022de6ff7dfa00e              # double 9.4344479999999997
	.quad	0x400d17763e4abe6a              # double 3.6364559999999999
	.quad	0x3ffa894812be48a6              # double 1.6585160000000001
	.quad	0x400b9938151a4378              # double 3.4498139999999999
	.quad	0x4009ad141a6937d2              # double 3.209511
	.quad	0x400bd44998d045fe              # double 3.478656
	.quad	0x400cd457c0b13598              # double 3.6036830000000002
	.quad	0x401492f2734f82f5              # double 5.1435029999999999
	.quad	0x40040f459d99029b              # double 2.507457
	.quad	0x400f092ddbdb5d89              # double 3.8794819999999999
	.quad	0x40095039ef0f16f4              # double 3.1641729999999999
	.quad	0x3fed51e321a2e7f7              # double 0.916246
	.quad	0x4014de9468017119              # double 5.2173629999999998
	.quad	0x40203ed7a56de332              # double 8.1227389999999993
	.quad	0x401d8d3415b1422d              # double 7.3878940000000002
	.quad	0x4017ae6601bc98a2              # double 5.9203109999999999
	.quad	0x4019c06705c896dd              # double 6.4378929999999999
	.quad	0x401d5f141205bc02              # double 7.3428500000000003
	.quad	0x3ff472e9ccb7d417              # double 1.2780549999999999
	.quad	0x402375f8b1572581              # double 9.7304130000000004
	.quad	0x4017f0357a355044              # double 5.9845790000000001
	.quad	0x4014d92817763e4b              # double 5.2120670000000002
	.quad	0x3fd6272c94b380cb              # double 0.34614099999999998
	.quad	0x40117119ce075f70              # double 4.3604500000000002
	.quad	0x40058df0d413122b              # double 2.6943069999999998
	.quad	0x4023473f748a1598              # double 9.6391559999999998
	.quad	0x4012e10624dd2f1b              # double 4.7197500000000003
	.quad	0x402011b13165d399              # double 8.0345549999999992
	.quad	0x3ff03f0bae89eba7              # double 1.0153920000000001
	.quad	0x3ffd5ce28ed5f139              # double 1.8351770000000001
	.quad	0x4015f090b417ca21              # double 5.4849269999999999
	.quad	0x400e0d4ed2cbea4f              # double 3.7564980000000001
	.quad	0x4011d0a3d70a3d71              # double 4.4537500000000003
	.quad	0x3ff299c8c9320d99              # double 1.1625449999999999
	.quad	0x4015caca36199781              # double 5.4480370000000002
	.quad	0x3ffb694573a79789              # double 1.713201
	.quad	0x4005d1c219eb6391              # double 2.7274210000000001
	.quad	0x401d87168f8e7ddd              # double 7.3819220000000003
	.quad	0x4023db063e07a28c              # double 9.9277820000000005
	.quad	0x4018f517a46173b8              # double 6.2393479999999997
	.quad	0x40235505f2884838              # double 9.6660609999999991
	.quad	0x40133ade225fa659              # double 4.8074880000000002
	.quad	0x4014bfce3150dae4              # double 5.1873100000000001
	.quad	0x401ccdc443914f48              # double 7.2009439999999998
	.quad	0x4018b7dd872f33ca              # double 6.1795559999999998
	.quad	0x4006a18efbb0e5e6              # double 2.8288859999999998
	.quad	0x40167215b9a5a89c              # double 5.6114110000000004
	.quad	0x4021db877ab32485              # double 8.9287679999999998
	.quad	0x401d8f19934efcbd              # double 7.3897459999999997
	.quad	0x401c67a4a48f96e1              # double 7.1012139999999997
	.quad	0x3fdca1a500d5e8d5              # double 0.44736599999999999
	.quad	0x401d2d627bf61aa4              # double 7.2943210000000001
	.quad	0x3fd29e2bcf91a32b              # double 0.290904
	.quad	0x3fff1c3bd5992429              # double 1.944393
	.quad	0x4018bc44bf4cb189              # double 6.1838559999999996
	.quad	0x401a8634dad31fcd              # double 6.6310609999999999
	.quad	0x3ff80f7a919695d9              # double 1.503779
	.quad	0x401f1790fb65668c              # double 7.7730139999999999
	.quad	0x401830578e5c4eb5              # double 6.0472089999999996
	.quad	0x40114a305532617c              # double 4.3224499999999999
	.quad	0x4021a009917939a8              # double 8.8125730000000004
	.quad	0x401d77f66e86c658              # double 7.3671509999999997
	.quad	0x40072515ce9e5e24              # double 2.8931079999999998
	.quad	0x40117bd273d5bab2              # double 4.3709199999999999
	.quad	0x3ffa7cee9dd7ecbb              # double 1.6555009999999999
	.quad	0x400b8267839cd812              # double 3.4386739999999998
	.quad	0x402332f46aa087ca              # double 9.5995209999999993
	.quad	0x401823311a543f1c              # double 6.0343669999999996
	.quad	0x3fd977318fc50481              # double 0.39789999999999998
	.quad	0x4016976cce5f7404              # double 5.6478760000000001
	.quad	0x3fed3e3c105186db              # double 0.91384699999999996
	.quad	0x4022d06cebbba55d              # double 9.4070809999999998
	.quad	0x401e5228dc981beb              # double 7.5802339999999999
	.quad	0x402007bc1acde1a0              # double 8.0151070000000004
	.quad	0x40236bd35eb7457c              # double 9.7105969999999999
	.quad	0x4000d1c75818c5ca              # double 2.1024310000000002
	.quad	0x40018a71de69ad43              # double 2.1926000000000001
	.quad	0x3feaddf2239e6aba              # double 0.83959300000000003
	.quad	0x401e5ee34fc610f1              # double 7.592664
	.quad	0x400bfb499d0203e6              # double 3.4976989999999999
	.quad	0x401111e0c5a8155d              # double 4.2674589999999997
	.quad	0x3feb9116a8b8f14e              # double 0.86146100000000003
	.quad	0x3ff1bb320535c9e6              # double 1.1082019999999999
	.quad	0x4000d9fc2a8869c6              # double 2.1064379999999998
	.quad	0x3fc2caf709b738e7              # double 0.14681900000000001
	.quad	0x401ac9791819d239              # double 6.6967509999999999
	.quad	0x40192df69878316a              # double 6.294886
	.quad	0x4022e2e9ab29e4d6              # double 9.4431890000000003
	.quad	0x3ff02ba9d1f60179              # double 1.0106599999999999
	.quad	0x3fe5850df15a4acf              # double 0.67249199999999998
	.quad	0x4023d3f8db489093              # double 9.9140080000000008
	.quad	0x3fff7ca9691a75cd              # double 1.967935
	.quad	0x401ae2bba98eda23              # double 6.721419
	.quad	0x3fe3fa5093964a5a              # double 0.62430600000000003
	.quad	0x401b30d5a5b9628d              # double 6.7976900000000002
	.quad	0x401ba9ccb7d41744              # double 6.9158200000000001
	.quad	0x4000752f3c2dadb8              # double 2.0572189999999999
	.quad	0x400226be7afa7222              # double 2.2689180000000002
	.quad	0x40092ecc814d727a              # double 3.1478510000000002
	.quad	0x401755f91600f345              # double 5.833958
	.quad	0x401066772d5e071c              # double 4.1000639999999997
	.quad	0x401cb6ef8055fbb5              # double 7.1786479999999999
	.quad	0x4014d9b7bf1e8e61              # double 5.2126150000000004
	.quad	0x40165fc19c17225b              # double 5.5935119999999996
	.quad	0x3ffaa4fdb09a671f              # double 1.665281
	.quad	0x3fb108a265f0f5a1              # double 0.066538
	.quad	0x400a583947496aad              # double 3.2930779999999999
	.quad	0x40114fd933e35c5b              # double 4.3279769999999997
	.quad	0x3fe3f0739b024f66              # double 0.62310200000000004
	.quad	0x3fd34d940789613d              # double 0.30160999999999999
	.quad	0x3fe9826edaa92e62              # double 0.79717199999999999
	.quad	0x40005993d5347a5b              # double 2.043739
	.quad	0x4022774906034f40              # double 9.2329790000000002
	.quad	0x4020daccb3a2595c              # double 8.4273430000000004
	.quad	0x3ff95cfede97d06c              # double 1.5852040000000001
	.quad	0x400ff2f7f498c3b1              # double 3.9936370000000001
	.quad	0x4000335b91f70de9              # double 2.025077
	.quad	0x4022ae8a71de69ad              # double 9.3408999999999995
	.quad	0x401f63947496aad2              # double 7.8472460000000002
	.quad	0x4012f9e9d0e991ff              # double 4.7440559999999996
	.quad	0x40212e00b0292817              # double 8.5898489999999992
	.quad	0x401961a5ca29845e              # double 6.3453590000000002
	.quad	0x4022fc8882f0e0a8              # double 9.4932289999999994
	.quad	0x401862702a3486f0              # double 6.0961309999999997
	.quad	0x4010ed1d4738a3b5              # double 4.2315569999999996
	.quad	0x40179cb039ef0f17              # double 5.903016
	.quad	0x40223fb1e18efbb1              # double 9.1244040000000002
	.quad	0x400e9c981beb1811              # double 3.8264619999999998
	.quad	0x40116e093532e7b4              # double 4.3574570000000001
	.quad	0x4013ec243dccea29              # double 4.980607
	.quad	0x400a4d9c6b053198              # double 3.2878959999999999
	.quad	0x401701b0ccbc05d5              # double 5.7516509999999998
	.quad	0x4010b07314ca9260              # double 4.1723140000000001
	.quad	0x4020637bd05af6c7              # double 8.1943040000000007
	.quad	0x3fdeb3b320535c9e              # double 0.47971799999999998
	.quad	0x4006b2146a1a500d              # double 2.8369529999999998
	.quad	0x4018d851eb851eb8              # double 6.2112499999999997
	.quad	0x402179780baa582e              # double 8.7372440000000005
	.quad	0x3fffe40314877681              # double 1.9931669999999999
	.quad	0x3fdc6c093d966384              # double 0.44409399999999999
	.quad	0x40137f4b61fe21d9              # double 4.8743109999999996
	.quad	0x400d82845996744b              # double 3.6887289999999999
	.quad	0x4007c53b8e4b87be              # double 2.9713050000000001
	.quad	0x400943914f483cb0              # double 3.1579920000000001
	.quad	0x3fc069b5a63f9a4a              # double 0.12822600000000001
	.quad	0x4016ae3b03e20cd0              # double 5.670147
	.quad	0x401cffebd09e12a5              # double 7.2499229999999999
	.quad	0x4020ff2e6a76965f              # double 8.4984009999999994
	.quad	0x4005d0678c0053e3              # double 2.7267600000000001
	.quad	0x4005b59ddc1e7968              # double 2.7136800000000001
	.quad	0x4013cac083126e98              # double 4.9480000000000004
	.quad	0x3fe686ec17ebaf10              # double 0.70396999999999998
	.quad	0x3fe23e22e5de15ca              # double 0.57008499999999995
	.quad	0x401e62cd7cf5f4e4              # double 7.5964869999999998
	.quad	0x4014aa9a3d2d87f9              # double 5.1666040000000004
	.quad	0x401edbe596c82e02              # double 7.7147430000000004
	.quad	0x4020572ef0ae5365              # double 8.17028
	.quad	0x4014f50b524399b3              # double 5.2393010000000002
	.quad	0x4008a0c9539b8887              # double 3.0785089999999999
	.quad	0x401fed523b3636f4              # double 7.9817590000000003
	.quad	0x3fc5e96c3fc43b2e              # double 0.171186
	.quad	0x402329b4784230fd              # double 9.581455
	.quad	0x40088ec39799e519              # double 3.069709
	.quad	0x3ffa3294dd72367e              # double 1.6373489999999999
	.quad	0x4019042528ae74f3              # double 6.2540480000000001
	.quad	0x401e76d938151a43              # double 7.6160629999999995
	.quad	0x401a5b3e1437c569              # double 6.5891039999999998
	.quad	0x3ffe8127b2cc7086              # double 1.9065319999999999
	.quad	0x400ebecc3e3193f7              # double 3.8431630000000001
	.quad	0x4010dc82e019b0ab              # double 4.2153429999999998
	.quad	0x4013fd4ae429e0a4              # double 4.9973559999999999
	.quad	0x4005ba1d323fee2d              # double 2.7158760000000002
	.quad	0x401b4330d738609a              # double 6.8156160000000003
	.quad	0x4002005bc01a36e3              # double 2.250175
	.quad	0x401c2e0c5a8155d6              # double 7.044969
	.quad	0x402000db0574b407              # double 8.001671
	.quad	0x4007cb0079a2834d              # double 2.9741219999999999
	.quad	0x3fb11b823c85c24c              # double 0.066825999999999997
	.quad	0x4001f15ad106ee31              # double 2.2428490000000001
	.quad	0x4010cc054ef459da              # double 4.1992390000000004
	.quad	0x3fd4e8c0485a0be5              # double 0.326706
	.quad	0x401d60b8cfbfc654              # double 7.344455
	.quad	0x4014ddba908a265f              # double 5.2165319999999999
	.quad	0x3fd03305100a393f              # double 0.25311400000000001
	.quad	0x3fe89e7d9988d2a2              # double 0.769347
	.quad	0x40140cb10342aa9f              # double 5.0123939999999996
	.quad	0x3fe8ddb3397dd00f              # double 0.77706299999999995
	.quad	0x3fef30a4e379b77c              # double 0.97468799999999999
	.quad	0x4011a426351deefe              # double 4.4103019999999997
	.quad	0x401afea8112ba16e              # double 6.7486879999999996
	.quad	0x3fed0262456f75da              # double 0.90654100000000004
	.quad	0x4017c94141e9af5c              # double 5.9465380000000003
	.quad	0x3fe6baf965b20b80              # double 0.71032399999999996
	.quad	0x401680614163779f              # double 5.6253710000000003
	.quad	0x401166b09635610b              # double 4.3502830000000001
	.quad	0x401727c5260f5e42              # double 5.7888380000000002
	.quad	0x3ffa9289dadfb507              # double 1.660776
	.quad	0x3fdb1d68c692f6e8              # double 0.42366999999999999
	.quad	0x3fbd6c0d6f544bb2              # double 0.11493
	.quad	0x400819a8cdea033e              # double 3.0125289999999998
	.quad	0x4023944f1a1986ba              # double 9.7896660000000004
	.quad	0x3fe7a9cdc443914f              # double 0.73947799999999997
	.quad	0x4005b4e4c942d491              # double 2.713327
	.quad	0x400b0536d655e28b              # double 3.3775460000000002
	.quad	0x400a7ff3f0fe047d              # double 3.3124769999999999
	.quad	0x4007a3af31b152f4              # double 2.9549240000000001
	.quad	0x401d308637bd05af              # double 7.2973869999999996
	.quad	0x4020bf42bb6672fc              # double 8.3735560000000006
	.quad	0x4020204c05921038              # double 8.0630799999999994
	.quad	0x401ad5a5332acfb7              # double 6.7086379999999997
	.quad	0x40210c1fea8112ba              # double 8.5236809999999998
	.quad	0x4011359685122318              # double 4.3023319999999998
	.quad	0x4013b5e785b5b707              # double 4.9276410000000004
	.quad	0x4015d529bae46cfd              # double 5.4581670000000004
	.quad	0x400394549b62c775              # double 2.4474269999999998
	.quad	0x4010d949e8815e39              # double 4.2121959999999996
	.quad	0x3ffe282730c67169              # double 1.884803
	.quad	0x4023958c08b75ea6              # double 9.7920839999999991
	.quad	0x400082328f9f44d4              # double 2.0635729999999999
	.quad	0x4009d0ccbc05d52c              # double 3.226953
	.quad	0x400f64ff43419e30              # double 3.924315
	.quad	0x4021f3256ffc115e              # double 8.9748950000000001
	.quad	0x4005c1cde5d18091              # double 2.7196310000000001
	.quad	0x40128eefa1e3eaf7              # double 4.6395860000000004
	.quad	0x4010a78ab0c88a48              # double 4.1636150000000001
	.quad	0x4021630db6a1e81d              # double 8.6934640000000005
	.quad	0x40234fe8ee6b8306              # double 9.6560740000000003
	.quad	0x3fea4013ec460ed8              # double 0.820322
	.quad	0x4021bb40b34e7686              # double 8.8657280000000007
	.quad	0x40220bd640e9d51b              # double 9.0231189999999994
	.quad	0x40166d249e44fa05              # double 5.6065849999999999
	.quad	0x3fff29b068123811              # double 1.947678
	.quad	0x402203e7afa72218              # double 9.0076269999999994
	.quad	0x3fe53aabcd78c437              # double 0.663412
	.quad	0x3fe9e0ac7da1ec4e              # double 0.80867599999999995
	.quad	0x400c378ab0c88a48              # double 3.52712
	.quad	0x4016f27631b584b2              # double 5.7367790000000003
	.quad	0x401b37faa044ae86              # double 6.8046670000000002
	.quad	0x3ff89320d9945b6c              # double 1.53592
	.quad	0x4014142b302f72b4              # double 5.0196959999999997
	.quad	0x4022bed783dff3f1              # double 9.372738
	.quad	0x401f70d1b71758e2              # double 7.8601749999999999
	.quad	0x401529207d4e0978              # double 5.2901629999999997
	.quad	0x4021be2fdfc19c17              # double 8.8714589999999998
	.quad	0x3ff27167ec7863bf              # double 1.152687
	.quad	0x3fd0d77318fc5048              # double 0.26315
	.quad	0x3fd2fdc1615ebfa9              # double 0.296738
	.quad	0x4022832af145521a              # double 9.2561870000000006
	.quad	0x3ff87456b441bb8c              # double 1.528403
	.quad	0x4022c42b734b5137              # double 9.3831439999999997
	.quad	0x40089914f483cafb              # double 3.0747469999999999
	.quad	0x3ff69a0cf1800a7c              # double 1.4126099999999999
	.quad	0x4022ab2f23033a47              # double 9.3343439999999998
	.quad	0x4012163d816aceab              # double 4.521719
	.quad	0x40122fbb9496249a              # double 4.5466139999999999
	.quad	0x3ffdd4a3c64345d0              # double 1.864414
	.quad	0x402293cd9a52263e              # double 9.2886780000000009
	.quad	0x3fe9684f09528f19              # double 0.79398299999999999
	.quad	0x3ff6743b70ef5665              # double 1.4033770000000001
	.quad	0x4012f3d790752daa              # double 4.7381270000000004
	.quad	0x400071a7e3087875              # double 2.0554960000000002
	.quad	0x4003447a17f4128c              # double 2.408436
	.quad	0x3fb1a1554fbdad75              # double 0.068867999999999999
	.quad	0x40125c4651f3e89b              # double 4.5901120000000004
	.quad	0x3ff9d627bf61aa3f              # double 1.614784
	.quad	0x4020445b8dc55001              # double 8.1335110000000004
	.quad	0x4018119008205ff2              # double 6.0171510000000001
	.quad	0x4023b744d4456712              # double 9.8579469999999993
	.quad	0x4018e6e935b91f71              # double 6.2254990000000001
	.quad	0x402072990f301eac              # double 8.2238240000000004
	.quad	0x400e1e1975f2cb64              # double 3.764697
	.quad	0x4014d2ee84ad794a              # double 5.2059879999999996
	.quad	0x402189bb2788db05              # double 8.7690059999999992
	.quad	0x4020997460242d06              # double 8.2997160000000001
	.quad	0x400366d7a56de332              # double 2.4252159999999998
	.quad	0x4015b44a1f080304              # double 5.4260640000000002
	.quad	0x4017636694898f60              # double 5.8470709999999997
	.quad	0x4011d05c4651f3e9              # double 4.4534770000000004
	.quad	0x401e135d249e44fa              # double 7.51891
	.quad	0x401b59c90c4dec1c              # double 6.8376809999999999
	.quad	0x4019e31c219eb639              # double 6.471787
	.quad	0x40217373083558a7              # double 8.7254869999999993
	.quad	0x401767be553ac4f8              # double 5.8513120000000001
	.quad	0x401b890c9107faa0              # double 6.8838369999999998
	.quad	0x3fc165a14488c60d              # double 0.13591400000000001
	.quad	0x4022e357e670e2c1              # double 9.4440299999999997
	.quad	0x401bcb71b8aa0019              # double 6.9486759999999999
	.quad	0x40190ed02cd39da1              # double 6.2644659999999996
	.quad	0x402371af9ebe9c88              # double 9.7220429999999993
	.quad	0x401b55b6805a2d73              # double 6.833704
	.quad	0x40202903a7546d40              # double 8.0801060000000007
	.quad	0x401074aba3875925              # double 4.1139359999999998
	.quad	0x4022827c5ac471b4              # double 9.2548549999999991
	.quad	0x400685ce5b4245f6              # double 2.8153350000000001
	.quad	0x40189b1f687b139d              # double 6.1514870000000004
	.quad	0x3ff7144567125dd1              # double 1.4424490000000001
	.quad	0x40104bb8c32a8c9c              # double 4.0739470000000004
	.quad	0x400b2cbc8c0ce91d              # double 3.3968440000000002
	.quad	0x3fdcfc829cfdd228              # double 0.45291199999999998
	.quad	0x401ed84d76ab5808              # double 7.711233
	.quad	0x3fca3b46fdeb52ca              # double 0.20493400000000001
	.quad	0x40162e4ffc9795b3              # double 5.5452269999999997
	.quad	0x3fe20ea39c51dabe              # double 0.56428699999999998
	.quad	0x40051cb2d905c033              # double 2.6390129999999998
	.quad	0x3fb09bb6aa4b9885              # double 0.064876000000000003
	.quad	0x3ff9fa3875925354              # double 1.6235889999999999
	.quad	0x4023bf112fd32c62              # double 9.8731779999999993
	.quad	0x3fd69528f190d174              # double 0.352854
	.quad	0x4012a992c8c50050              # double 4.6655990000000003
	.quad	0x4023a74e22a2c237              # double 9.8267679999999995
	.quad	0x4012d161a1db877b              # double 4.7044740000000003
	.quad	0x3ff70e991ff7164c              # double 1.4410639999999999
	.quad	0x402261a500d5e8d5              # double 9.1907119999999995
	.quad	0x401b103bc4d22c88              # double 6.7658529999999999
	.quad	0x4016827d88c1db01              # double 5.6274319999999998
	.quad	0x402201eabbcb1cc9              # double 9.0037439999999993
	.quad	0x401e15058dde7a74              # double 7.5205289999999998
	.quad	0x40216dd28d002e23              # double 8.7144969999999997
	.quad	0x4011acbaf965b20c              # double 4.4186820000000004
	.quad	0x4019e69c66d373b0              # double 6.475206
	.quad	0x401b7a52ac753e70              # double 6.8694559999999996
	.quad	0x3ff78841ede1198b              # double 1.470766
	.quad	0x401cd9e6256366d8              # double 7.2127920000000003
	.quad	0x402268fabda0dfdf              # double 9.2050380000000001
	.quad	0x400ffe1fc08fa7a8              # double 3.9990839999999999
	.quad	0x3ff62558ea7ce0fc              # double 1.384118
	.quad	0x3ff7b09635610add              # double 1.480612
	.quad	0x40214c3b2dd377e2              # double 8.6488890000000005
	.quad	0x4015ccd91eeaa6d2              # double 5.4500469999999996
	.quad	0x3f8424e592967019              # double 0.0098359999999999992
	.quad	0x4013c07bfe7e1fc1              # double 4.9379730000000004
	.quad	0x40118a4db163baba              # double 4.3850619999999996
	.quad	0x4016321b3aeee957              # double 5.5489319999999998
	.quad	0x3ff51ce18266772d              # double 1.3195509999999999
	.quad	0x4013f327aa68f4b6              # double 4.9874559999999999
	.quad	0x401d326634117f84              # double 7.2992179999999998
	.quad	0x4020d7e154434e33              # double 8.4216409999999993
	.quad	0x3fff4370cdc8754f              # double 1.953965
	.quad	0x4003db1a6d698fe7              # double 2.4819840000000002
	.quad	0x4006f9389b52007e              # double 2.8716900000000001
	.quad	0x40156620ee8d10f5              # double 5.3497349999999999
	.quad	0x3fee9a34ca0c282c              # double 0.95632399999999995
	.quad	0x3fef26eb91b3f20a              # double 0.97350099999999995
	.quad	0x4019e5f676ea4229              # double 6.4745730000000004
	.quad	0x401f3836eb4e9814              # double 7.8048970000000004
	.quad	0x4012ad44567125dd              # double 4.669206
	.quad	0x3fe758be7296f651              # double 0.72958299999999998
	.quad	0x40057df8f4730404              # double 2.6865100000000002
	.quad	0x4014b3c9abb01c93              # double 5.1755740000000001
	.quad	0x4019bb3e9a6f826f              # double 6.4328560000000001
	.quad	0x401abf4666ec9e23              # double 6.6867919999999996
	.quad	0x3ff12c6045baf534              # double 1.073334
	.quad	0x4017b76d97b30f8c              # double 5.9291289999999996
	.quad	0x401c0209edbf8b9c              # double 7.0019910000000003
	.quad	0x400e3436b8f9b131              # double 3.7754949999999998
	.quad	0x4017ae75bc44bf4d              # double 5.9203710000000003
	.quad	0x400155f2452c59fb              # double 2.1669659999999999
	.quad	0x402289e34330d738              # double 9.2693119999999993
	.quad	0x401ee0a63305100a              # double 7.7193839999999998
	.quad	0x4022cfdf5cf2495e              # double 9.4060009999999998
	.quad	0x40138a6ce358298d              # double 4.8851810000000002
	.quad	0x400361240746455f              # double 2.4224320000000001
	.quad	0x40097be5d9e40c84              # double 3.1854969999999998
	.quad	0x40223a4b5568e821              # double 9.1138560000000002
	.quad	0x3fd1aefb2aae2974              # double 0.27630500000000002
	.quad	0x401dd8d79d0a6762              # double 7.4617599999999999
	.quad	0x3fdbb8887229e908              # double 0.43313800000000002
	.quad	0x401889949e8815e4              # double 6.1343560000000004
	.quad	0x4022656605ee568a              # double 9.1980439999999994
	.quad	0x3ff79527e5215769              # double 1.4739150000000001
	.quad	0x400d22ff08893b7e              # double 3.6420880000000002
	.quad	0x402357c3d68405b4              # double 9.6714160000000006
	.quad	0x4020147de5082cf5              # double 8.0400229999999997
	.quad	0x4022ca6a875d56f3              # double 9.3953439999999996
	.quad	0x400b084ad794a6ec              # double 3.3790490000000002
	.quad	0x4000ae957470eb25              # double 2.0852460000000002
	.quad	0x3ff0545c78a6dacb              # double 1.0205960000000001
	.quad	0x401a1b1290257c91              # double 6.5264379999999997
	.quad	0x401fa4790b849881              # double 7.9106180000000003
	.quad	0x400accc92146a1a5              # double 3.349993
	.quad	0x40113b135979181a              # double 4.3076910000000002
	.quad	0x4019d547e06961c3              # double 6.4582819999999996
	.quad	0x40167107314ca926              # double 5.610379
	.quad	0x401bab0b39192642              # double 6.9170350000000003
	.quad	0x4003faeb3dd11be7              # double 2.497519
	.quad	0x400d9173fb7a5f42              # double 3.6960220000000001
	.quad	0x3fecd5629d8409e5              # double 0.90104799999999996
	.quad	0x400650bfa0945f9e              # double 2.789428
	.quad	0x400d328d8665e02f              # double 3.6496840000000002
	.quad	0x401bc8af3e468cac              # double 6.9459809999999997
	.quad	0x4022f864020817fc              # double 9.4851379999999991
	.quad	0x40224951c5c5718f              # double 9.1432020000000005
	.quad	0x401acab2e1693c04              # double 6.6979480000000002
	.quad	0x4023b7eda6612839              # double 9.8592349999999999
	.quad	0x3fe6ad27807789a4              # double 0.70863699999999996
	.quad	0x401fd5a35d67ba23              # double 7.9586309999999995
	.quad	0x4021a725e56cd6c3              # double 8.8264610000000001
	.quad	0x400ec055fbb517a4              # double 3.8439139999999998
	.quad	0x401757e175d13d75              # double 5.8358210000000001
	.quad	0x4014d55219a847b2              # double 5.2083209999999998
	.quad	0x4023cdbc87db2b34              # double 9.9018289999999993
	.quad	0x3fe567d9988d2a20              # double 0.66892700000000005
	.quad	0x3ffeb733a8a3f898              # double 1.919727
	.quad	0x401e10c34c1a8ac6              # double 7.5163700000000002
	.quad	0x4000de1437c5692b              # double 2.1084369999999999
	.quad	0x3fe8e598e10cf5b2              # double 0.77802700000000002
	.quad	0x4023790a569b1748              # double 9.7364069999999998
	.quad	0x4020b7ed84d338f8              # double 8.3592340000000007
	.quad	0x3ffce5eedcc20d56              # double 1.806136
	.quad	0x3fdf3cee9dd7ecbb              # double 0.48809399999999997
	.quad	0x40002c1e364bec68              # double 2.0215420000000002
	.quad	0x4023402d9cf13cef              # double 9.6253480000000006
	.quad	0x4012313c68661ae7              # double 4.548082
	.quad	0x402183940fecdd0e              # double 8.7569890000000008
	.quad	0x401929d909f1f14a              # double 6.2908670000000004
	.quad	0x401c09b5a63f9a4a              # double 7.0094820000000002
	.quad	0x40215b8f7985271c              # double 8.6788290000000003
	.quad	0x400ddf4c2b51bd62              # double 3.734032
	.quad	0x3ffe55a4acf312b2              # double 1.8959090000000001
	.quad	0x401c669b5a63f9a5              # double 7.1002020000000003
	.quad	0x401552c7b890d5a6              # double 5.3308400000000002
	.quad	0x40129144cbe1eb42              # double 4.641864
	.quad	0x40222dbb384fd2a6              # double 9.0893189999999997
	.quad	0x40120f83be6601bd              # double 4.5151510000000004
	.quad	0x3ff628869c66d374              # double 1.3848940000000001
	.quad	0x401bd6362a5e785b              # double 6.9591909999999997
	.quad	0x40234ff5e84f0953              # double 9.6561730000000007
	.quad	0x401a3b6f19934efd              # double 6.5580410000000002
	.quad	0x40160f9335d249e4              # double 5.5152099999999997
	.quad	0x40043c91d14e3bcd              # double 2.5295749999999999
	.quad	0x400baa58b3f63c32              # double 3.4581770000000001
	.quad	0x4019558d1526d8b2              # double 6.3335460000000001
	.quad	0x3ffa72745bf26f1e              # double 1.6529430000000001
	.quad	0x4022db5e95b78cca              # double 9.4284560000000006
	.quad	0x4001f940789613d3              # double 2.246705
	.quad	0x40119bcec84f8f8a              # double 4.4021559999999997
	.quad	0x3fc8ff972474538f              # double 0.1953
	.quad	0x400a9d2849cb252d              # double 3.3267370000000001
	.quad	0x400d05f6ba0620ab              # double 3.6279119999999998
	.quad	0x40111af3e468cac5              # double 4.2763210000000003
	.quad	0x4022077c45cbbc2c              # double 9.0146200000000007
	.quad	0x3ff84225742dcf46              # double 1.516149
	.quad	0x4019549f51697f20              # double 6.3326390000000004
	.quad	0x4023ba11ec918e32              # double 9.8634179999999994
	.quad	0x4013ae757928e0ca              # double 4.9203700000000001
	.quad	0x401bde29f9ce8d97              # double 6.9669569999999998
	.quad	0x4017bd19157abb88              # double 5.934666
	.quad	0x400676d43d03968d              # double 2.8080219999999998
	.quad	0x402152f709b738e7              # double 8.6620410000000003
	.quad	0x40230fc43b2dd378              # double 9.5307940000000002
	.quad	0x40217d553ef6b5d4              # double 8.7447909999999993
	.quad	0x400c8ed56b00ffda              # double 3.5697429999999999
	.quad	0x40008a0b1bbcf4e8              # double 2.0674039999999998
	.quad	0x3fe8834d26fa3fcd              # double 0.76602800000000004
	.quad	0x3fde9c304ccee5ac              # double 0.47828300000000001
	.quad	0x3fe920ccff21b3af              # double 0.78525400000000001
	.quad	0x4002a8d3ae685db7              # double 2.3324349999999998
	.quad	0x4010e70da5daf07c              # double 4.225638
	.quad	0x400ae2acb85a4f01              # double 3.360681
	.quad	0x400124e8b7e4de3c              # double 2.1430220000000002
	.quad	0x400383254e6e221d              # double 2.4390360000000002
	.quad	0x401be09246bf0132              # double 6.9693079999999998
	.quad	0x4023f036c9c0a8d2              # double 9.9691679999999998
	.quad	0x400c167c286f8ad2              # double 3.5109789999999998
	.quad	0x3ff38539fba450ad              # double 1.2200260000000001
	.quad	0x4000b951c5c5718f              # double 2.0904880000000001
	.quad	0x4022d9f7f8ca8199              # double 9.42572
	.quad	0x3ff54b4e11dbca97              # double 1.3308850000000001
	.quad	0x40166cd31769a911              # double 5.606274
	.quad	0x3fef65abc0e38a7e              # double 0.98116099999999995
	.quad	0x4002b1c193b3a68b              # double 2.336795
	.quad	0x4012924e160d887f              # double 4.6428760000000002
	.quad	0x4009d4b05b7cfe58              # double 3.2288519999999998
	.quad	0x401eff66e86c6584              # double 7.7494160000000001
	.quad	0x40142522a6f3f530              # double 5.0362650000000002
	.quad	0x401328ae74f2f124              # double 4.7897280000000002
	.quad	0x3fe5b068123810e9              # double 0.67778400000000005
	.quad	0x4021d406e19b90eb              # double 8.9141150000000007
	.quad	0x402259a048e043a2              # double 9.1750509999999998
	.quad	0x400f0013ec460ed8              # double 3.875038
	.quad	0x401b14fc610f0e91              # double 6.7704940000000002
	.quad	0x401ee5fc7e6b3fea              # double 7.724596
	.quad	0x3fcbf63c31df761d              # double 0.21845200000000001
	.quad	0x4017eb530ced4e4d              # double 5.9798090000000004
	.quad	0x3ffe76512a94ff00              # double 1.903886
	.quad	0x4021bc5fbf83382e              # double 8.8679179999999995
	.quad	0x400571f46ed245b3              # double 2.6806420000000002
	.quad	0x40211617a02fb5d0              # double 8.5431489999999997
	.quad	0x4019af47735c182f              # double 6.4211710000000002
	.quad	0x40149ddf86e3b470              # double 5.1541730000000001
	.quad	0x40068cd9e83e425b              # double 2.818775
	.quad	0x3ff73dab5c39bcba              # double 1.452556
	.quad	0x40127db1e9f27781              # double 4.6227489999999998
	.quad	0x400fd8dac258d584              # double 3.9808859999999999
	.quad	0x4019aaaef2c73259              # double 6.4166829999999999
	.quad	0x401b9d12018a43bb              # double 6.9033889999999998
	.quad	0x40235050bd87b56c              # double 9.6568660000000008
	.quad	0x3ffa69c23b7952d2              # double 1.65082
	.quad	0x4019aefdc9c4da90              # double 6.42089
	.quad	0x401a30e9d51b4fe8              # double 6.5477670000000003
	.quad	0x4006c263d816aceb              # double 2.8449170000000001
	.quad	0x4020b16616b54e2b              # double 8.346482
	.quad	0x40233505af6c69b6              # double 9.6035590000000006
	.quad	0x4018beba6aca7935              # double 6.1862579999999996
	.quad	0x4019d578e5c4eb57              # double 6.458469
	.quad	0x3fd163c74fb549f9              # double 0.27171499999999998
	.quad	0x401d6cb4f1e4b44a              # double 7.3561589999999999
	.quad	0x3fe82aeafab53d64              # double 0.75523899999999999
	.quad	0x4019098201cd5f9a              # double 6.2592850000000002
	.quad	0x401070a0f4d7add1              # double 4.1099889999999997
	.quad	0x3ff2b3797460242d              # double 1.168817
	.quad	0x40044577531db446              # double 2.533919
	.quad	0x40233aada33bd9cb              # double 9.6146060000000002
	.quad	0x401f645f17bd8be7              # double 7.8480189999999998
	.quad	0x4023162131a8ef78              # double 9.543222
	.quad	0x3ff26261bf37b8d4              # double 1.149019
	.quad	0x3ffd2675147f1306              # double 1.8218890000000001
	.quad	0x402078fe69270b07              # double 8.2363160000000004
	.quad	0x402380cef672b884              # double 9.7515789999999995
	.quad	0x4016c1ada76d97b3              # double 5.6891389999999999
	.quad	0x4019716659d12cae              # double 6.3607420000000001
	.quad	0x40154e8ab4fa4830              # double 5.3267009999999999
	.quad	0x3ff0960c7c0f4517              # double 1.0366329999999999
	.quad	0x40073e95b78cc9a7              # double 2.9055589999999998
	.quad	0x40182a3875925354              # double 6.0412309999999998
	.quad	0x3ff96b78897e9963              # double 1.588738
	.quad	0x4019cf112fd32c62              # double 6.4522139999999997
	.quad	0x4017e52c16df3f96              # double 5.9738009999999999
	.quad	0x40124275ab7dc7ac              # double 4.564902
	.quad	0x402003dea465a576              # double 8.0075579999999995
	.quad	0x3fef5aea3161a1dc              # double 0.97984800000000005
	.quad	0x4021c41376d54973              # double 8.8829609999999999
	.quad	0x3fd22396073de1e3              # double 0.28342200000000001
	.quad	0x3fe41376d5497311              # double 0.62737600000000004
	.quad	0x40014ce4649906cd              # double 2.1625450000000002
	.quad	0x402250dda48b6523              # double 9.1579409999999992
	.quad	0x3fef06bdf4c2b51c              # double 0.96957300000000001
	.quad	0x4018529131ec0b56              # double 6.0806319999999996
	.quad	0x401a605532617c1c              # double 6.5940750000000001
	.quad	0x3fd9fa6defc7a398              # double 0.40590999999999999
	.quad	0x4016c1fb3fa6defc              # double 5.6894349999999996
	.quad	0x3ff2d5f676ea4229              # double 1.1772370000000001
	.quad	0x400da78316a05575              # double 3.7067929999999998
	.quad	0x4014eb12d3415b14              # double 5.2295639999999999
	.quad	0x4018f8dda48b6523              # double 6.2430329999999996
	.quad	0x402005a554b8bef9              # double 8.0110270000000003
	.quad	0x400f74fbdad7518b              # double 3.932121
	.quad	0x40214d84b1ab0857              # double 8.6514030000000002
	.quad	0x4010278c436fc159              # double 4.038621
	.quad	0x3fc057a786c22681              # double 0.12767500000000001
	.quad	0x3fc0dab191dde376              # double 0.13167400000000001
	.quad	0x401b6ebe596c82e0              # double 6.8581479999999999
	.quad	0x3ffddba0a5269596              # double 1.86612
	.quad	0x401b6f87f023e9ea              # double 6.8589169999999999
	.quad	0x3fff1a500d5e8d54              # double 1.943924
	.quad	0x400ee75cd0bb6ed6              # double 3.8629699999999998
	.quad	0x40043c58255b035c              # double 2.5294650000000001
	.quad	0x4021b3e920c069e8              # double 8.851388
	.quad	0x401d557fb69984a1              # double 7.3334950000000001
	.quad	0x3ff0e12f901083dc              # double 1.0549770000000001
	.quad	0x40146c881e4712e4              # double 5.105988
	.quad	0x3fffc107314ca926              # double 1.984626
	.quad	0x4018f3f5b5fa2270              # double 6.2382419999999996
	.quad	0x3fd7adbc664d3bf3              # double 0.369979
	.quad	0x40172667f90d9d77              # double 5.7875059999999996
	.quad	0x3ff00cec41dd1a22              # double 1.003155
	.quad	0x402133a51a005c46              # double 8.6008689999999994
	.quad	0x3fda484944ed6fdb              # double 0.41066200000000003
	.quad	0x4016b71001d5c316              # double 5.6787720000000004
	.quad	0x3fe9f82d38476f2a              # double 0.81154499999999996
	.quad	0x4015ac28b2a6b0d9              # double 5.4181239999999997
	.quad	0x4001fa1f4b1ee243              # double 2.2471299999999998
	.quad	0x40200df090f733a9              # double 8.0272260000000006
	.quad	0x4003cf1a1986b9c3              # double 2.476124
	.quad	0x401982cc70867ad9              # double 6.3777330000000001
	.quad	0x3ffac8c2e770bd01              # double 1.6740139999999999
	.quad	0x400b3eebb341e14c              # double 3.4057230000000001
	.quad	0x3ff0186fcdee34fc              # double 1.0059659999999999
	.quad	0x3ffb960b6f9fcb0c              # double 1.724132
	.quad	0x40204cc8366516db              # double 8.1499649999999999
	.quad	0x4013235935fc3b4f              # double 4.7845199999999997
	.quad	0x401379791819d239              # double 4.8686259999999999
	.quad	0x3ff38051c9f72f77              # double 1.218828
	.quad	0x401a11b0468448cf              # double 6.5172739999999996
	.quad	0x401ef8e64b231401              # double 7.7430659999999997
	.quad	0x4001426fe718a86d              # double 2.1574399999999998
	.quad	0x3fff8e4217d2849d              # double 1.9722310000000001
	.quad	0x400d2ab5807fed20              # double 3.6458539999999999
	.quad	0x401872999567dbb1              # double 6.1119139999999996
	.quad	0x4011abbecaab8a5d              # double 4.4177200000000001
	.quad	0x4022954e09784ec6              # double 9.2916109999999996
	.quad	0x3fe0cce3de6149c7              # double 0.52501100000000001
	.quad	0x40178d9a95421c04              # double 5.8882849999999998
	.quad	0x40006e71cda2b5a2              # double 2.053928
	.quad	0x3ffd8e3de6149c6f              # double 1.847227
	.quad	0x401125104d551d69              # double 4.2861950000000002
	.quad	0x3ff30b30b5aa7158              # double 1.190232
	.quad	0x401b35796bfca85d              # double 6.8022210000000003
	.quad	0x401cd9a2c669057d              # double 7.2125349999999999
	.quad	0x4020fc79b34a44c8              # double 8.4931160000000006
	.quad	0x400c3823c85c24c4              # double 3.527412
	.quad	0x40038e8af81626b3              # double 2.444601
	.quad	0x400c9ee2435696e6              # double 3.5775800000000002
	.quad	0x3fe9b0dd82fd75e2              # double 0.80284
	.quad	0x401fb6f3b213e3e3              # double 7.9286640000000003
	.quad	0x4000c393682730c6              # double 2.0954959999999998
	.quad	0x40076bb1290257c9              # double 2.927584
	.quad	0x3fe2cbb5e0f7fcfc              # double 0.58736699999999997
	.quad	0x4016ebc9cd3e0bd4              # double 5.7302619999999997
	.quad	0x401f280389f83be6              # double 7.7890759999999997
	.quad	0x400689c0a8d21bc1              # double 2.8172619999999999
	.quad	0x4018768986fcdee3              # double 6.1157589999999997
	.quad	0x4020f21bc126a65d              # double 8.4728680000000001
	.quad	0x4008458e64b23140              # double 3.033963
	.quad	0x4017008d08919ef9              # double 5.7505379999999997
	.quad	0x401aae7d1351159c              # double 6.6703989999999997
	.quad	0x3ff83a450acc0bdd              # double 1.5142260000000001
	.quad	0x40236a5d6bebe165              # double 9.7077439999999999
	.quad	0x3fed877681669ced              # double 0.922786
	.quad	0x4007446f15619115              # double 2.9084150000000002
	.quad	0x4014aa1e81cb46bb              # double 5.1661320000000002
	.quad	0x4019baf640639d5e              # double 6.4325799999999997
	.quad	0x400257403dddb121              # double 2.2926030000000002
	.quad	0x4010a41e14bdfd26              # double 4.1602709999999998
	.quad	0x40048b9cb6848beb              # double 2.5681699999999998
	.quad	0x3ff4858eeae9ee46              # double 1.2826070000000001
	.quad	0x4021d3a3443d46b2              # double 8.9133549999999993
	.quad	0x3feb730e7ff583a5              # double 0.85779499999999997
	.quad	0x4010e352220bc383              # double 4.2219930000000003
	.quad	0x401e943e963dc487              # double 7.6447700000000002
	.quad	0x3fed5cdb37c99ae9              # double 0.91758499999999998
	.quad	0x401c7c8abd5dc400              # double 7.1216229999999996
	.quad	0x400ac91105e1c151              # double 3.3481770000000002
	.quad	0x401eb17bd8be7297              # double 7.673324
	.quad	0x40223f7dfa00e27e              # double 9.1240079999999999
	.quad	0x400a5b7739f340d5              # double 3.2946610000000001
	.quad	0x40203cfebd09e12a              # double 8.1191309999999994
	.quad	0x3ff44f7878b7a1c2              # double 1.2694019999999999
	.quad	0x400b723f67f4dbe0              # double 3.4307850000000002
	.quad	0x4006d76709fa54c5              # double 2.8551769999999999
	.quad	0x40189c8472c0e7bc              # double 6.1528489999999998
	.quad	0x3ff0b5019f3c70ca              # double 1.0441910000000001
	.quad	0x401ef132f87ad081              # double 7.7355460000000002
	.quad	0x4017992c061847f5              # double 5.8995819999999997
	.quad	0x4018c43e963dc487              # double 6.1916450000000003
	.quad	0x4023904d338f7985              # double 9.7818389999999997
	.quad	0x401560dbf0563ed1              # double 5.344589
	.quad	0x402067c200c0f020              # double 8.2026520000000005
	.quad	0x400f3a1ec4e7253e              # double 3.9033790000000002
	.quad	0x4012f187a4a48f97              # double 4.7358690000000001
	.quad	0x4019088f861a60d4              # double 6.2583599999999997
	.quad	0x400e80474d9c6b05              # double 3.8126359999999999
	.quad	0x3ff38a558ea7ce10              # double 1.2212730000000001
	.quad	0x40225cbb7f9d6f11              # double 9.1811179999999997
	.quad	0x400a8bcbe61cffeb              # double 3.31826
	.quad	0x40201fa82e87d2c8              # double 8.0618300000000005
	.quad	0x401548e25c810a57              # double 5.3211760000000004
	.quad	0x40236c03dddb120a              # double 9.7109670000000001
	.quad	0x40037164c729f59d              # double 2.4303680000000001
	.quad	0x4021d99b0ab2e169              # double 8.9250109999999996
	.quad	0x401ff78fabda0dfe              # double 7.9917590000000001
	.quad	0x400ca1df3300de4c              # double 3.5790389999999999
	.quad	0x400ad157abb8800f              # double 3.3522180000000001
	.quad	0x4019a17481b21c47              # double 6.4076709999999997
	.quad	0x3fc5e718a86d71f3              # double 0.17111499999999999
	.quad	0x3fd1192a737110e4              # double 0.26716099999999998
	.quad	0x4004c8ad68837718              # double 2.5979869999999998
	.quad	0x3ff0163886594af5              # double 1.005425
	.quad	0x400311db445ed4a2              # double 2.3837190000000001
	.quad	0x4017ecfbfc6540cc              # double 5.9814299999999996
	.quad	0x40141811f4f50a03              # double 5.0235060000000002
	.quad	0x401ca32f87ad080b              # double 7.1593609999999996
	.quad	0x4008ab27cbf6e3f8              # double 3.0835720000000002
	.quad	0x4011ec1b10fd7e46              # double 4.4805720000000004
	.quad	0x40179a3b57c4e2f3              # double 5.9006169999999996
	.quad	0x4011ceeed8904f6e              # double 4.452083
	.quad	0x3fcc8b8f14db5958              # double 0.22300900000000001
	.quad	0x40082945f9df548f              # double 3.0201530000000001
	.quad	0x4013790c9107faa0              # double 4.8682119999999998
	.quad	0x401d47af20ea5b53              # double 7.320004
	.quad	0x40230ffcfc3f811f              # double 9.5312269999999994
	.quad	0x40166ffbce4217d3              # double 5.6093590000000004
	.quad	0x401a36516db0dd83              # double 6.553045
	.quad	0x4016dbb906466b1e              # double 5.7145729999999997
	.quad	0x4017aafc47e49b20              # double 5.9169780000000003
	.quad	0x4001028dc981beb2              # double 2.1262470000000002
	.quad	0x3fe533df2a9d627c              # double 0.662582
	.quad	0x40218fceb78897ea              # double 8.7808740000000007
	.quad	0x3ff60e8858ff7597              # double 1.3785480000000001
	.quad	0x40173c8323358f2e              # double 5.809094
	.quad	0x401f80de093532e8              # double 7.8758470000000002
	.quad	0x400f0ff0025bfad3              # double 3.8827820000000002
	.quad	0x40174a7b0b391926              # double 5.8227349999999998
	.quad	0x40138e4d5d80e497              # double 4.8889670000000001
	.quad	0x401ab644523f67f5              # double 6.6779950000000001
	.quad	0x401300d9d7774aba              # double 4.7508309999999998
	.quad	0x402055097c80841f              # double 8.1660880000000002
	.quad	0x401058f3eccc4695              # double 4.0868679999999999
	.quad	0x3fe048a372606fac              # double 0.50886699999999996
	.quad	0x40235fbe553ac4f8              # double 9.6869990000000001
	.quad	0x401d9908e581cf78              # double 7.3994479999999995
	.quad	0x3fda4cc6822ff089              # double 0.41093600000000002
	.quad	0x3fe3bf93ff25e56d              # double 0.61713600000000002
	.quad	0x4022f05186db50f4              # double 9.4693719999999999
	.quad	0x401c1e1932d6ece1              # double 7.0293929999999998
	.quad	0x4021a7f498c3b0c4              # double 8.8280379999999993
	.quad	0x40219f060bb2bbaa              # double 8.8105930000000008
	.quad	0x400ad2e0e30446b7              # double 3.3529680000000002
	.quad	0x401b80e1f7d73c92              # double 6.8758619999999997
	.quad	0x4023b1a93293d103              # double 9.8469940000000004
	.quad	0x401a715f02c4d65e              # double 6.6107139999999998
	.quad	0x3fe5b1a08bfc2225              # double 0.67793300000000001
	.quad	0x40207f0f16f4384c              # double 8.2481620000000006
	.quad	0x40204909289dadfb              # double 8.1426479999999994
	.quad	0x3fdbc74fb549f948              # double 0.43403999999999998
	.quad	0x4008ca9ef5232d2c              # double 3.0989360000000001
	.quad	0x3fffe337a80cf9e4              # double 1.9929730000000001
	.quad	0x4019c4c9c90c4dec              # double 6.4421759999999999
	.quad	0x401b183b1d0c8041              # double 6.773663
	.quad	0x402199a1986b9c30              # double 8.8000609999999995
	.quad	0x401828997c3d6840              # double 6.0396479999999997
	.quad	0x3fe3bf7f06705c89              # double 0.61712599999999995
	.quad	0x3fefd42c3c9eecc0              # double 0.99465000000000003
	.quad	0x400f1e9185cee17a              # double 3.889926
	.quad	0x402392bae03b3e9a              # double 9.7865819999999992
	.quad	0x4020c86e7e62dc6e              # double 8.3914679999999997
	.quad	0x400bdedc7ef177a7              # double 3.483819
	.quad	0x40210a4b33daf8df              # double 8.5201049999999992
	.quad	0x3ff694cdb7ae5797              # double 1.4113290000000001
	.quad	0x40222c7b24638c97              # double 9.0868769999999994
	.quad	0x401530ebedfa43fe              # double 5.2977749999999997
	.quad	0x401a41348b220792              # double 6.5636770000000002
	.quad	0x4015b63cfb3311a5              # double 5.4279669999999998
	.quad	0x4001a4e160d887ec              # double 2.205508
	.quad	0x400ab17c5ef62f9d              # double 3.3366630000000002
	.quad	0x4021be325d4a5df2              # double 8.8714779999999998
	.quad	0x4022a3152f3c2dae              # double 9.3185210000000005
	.quad	0x4005fda6a4441787              # double 2.748853
	.quad	0x40069742dcf4623d              # double 2.823858
	.quad	0x3fcf01eabbcb1cc9              # double 0.24224599999999999
	.quad	0x4010372f33ca31e8              # double 4.0538910000000001
	.quad	0x4022299bb2788db0              # double 9.0812659999999994
	.quad	0x4021da2f48c2e771              # double 8.9261420000000005
	.quad	0x40026bd230b9dc2f              # double 2.3026469999999999
	.quad	0x40039320d9945b6c              # double 2.4468399999999999
	.quad	0x400be1db0142f61f              # double 3.4852810000000001
	.quad	0x3fee389d6adf71eb              # double 0.944411
	.quad	0x40100ceb356da017              # double 4.0126160000000004
	.quad	0x3ff0ffcc9ea9a3d3              # double 1.062451
	.quad	0x3ffa94a0a0f4d7ae              # double 1.661286
	.quad	0x3fe9d4ae429e0a42              # double 0.80721200000000004
	.quad	0x3ff6a8283d35eb74              # double 1.4160539999999999
	.quad	0x3ff77af31b152f3c              # double 1.467517
	.quad	0x401c7c7cd898b2ea              # double 7.1215700000000002
	.quad	0x40152c4827b6fe2e              # double 5.2932439999999996
	.quad	0x401b27bc3c5bd0e1              # double 6.7888039999999998
	.quad	0x401669f0a1be2b49              # double 5.6034569999999997
	.quad	0x40191288051c9f73              # double 6.268097
	.quad	0x401c90be9424e593              # double 7.1413520000000004
	.quad	0x401fa2170931012a              # double 7.9082910000000002
	.quad	0x4014bd76ab5807ff              # double 5.1850230000000002
	.quad	0x3ff4925cc426351e              # double 1.285733
	.quad	0x4020423161a1db87              # double 8.1292829999999991
	.quad	0x4002ac2df0d41312              # double 2.3340719999999999
	.quad	0x4020dc16bdb1a6d7              # double 8.4298610000000007
	.quad	0x401f0bb0a2ca9ac3              # double 7.7614159999999996
	.quad	0x3ff8da6937d1fe65              # double 1.553323
	.quad	0x3fd144c37e6f71a8              # double 0.26982200000000001
	.quad	0x400821650a45d420              # double 3.0163060000000002
	.quad	0x401482231832fcad              # double 5.1270870000000004
	.quad	0x401a3e5de15ca6ca              # double 6.560905
	.quad	0x4010d2e5de15ca6d              # double 4.2059550000000003
	.quad	0x4023f2558ea7ce10              # double 9.9733090000000004
	.quad	0x4010d25918a009f6              # double 4.2054179999999999
	.quad	0x4022af52fc2656ac              # double 9.3424300000000002
	.quad	0x402340fe260b2c84              # double 9.6269390000000001
	.quad	0x40123748a159817c              # double 4.5539880000000004
	.quad	0x3ffe1f81a5870da6              # double 1.882692
	.quad	0x401a4f52b90a7829              # double 6.577464
	.quad	0x4017c992428d434a              # double 5.946847
	.quad	0x401507ab7564302b              # double 5.2574899999999998
	.quad	0x4021aaec28b2a6b1              # double 8.8338330000000003
	.quad	0x400bbe80389f83be              # double 3.4680179999999998
	.quad	0x40157350d2806af4              # double 5.3626129999999996
	.quad	0x4023f2ebe596c82e              # double 9.974456
	.quad	0x4018b38da3c21188              # double 6.1753450000000001
	.quad	0x4010065881a15550              # double 4.0061970000000002
	.quad	0x4020a2e557de0d67              # double 8.3181560000000001
	.quad	0x40137aeafab53d64              # double 4.8700369999999999
	.quad	0x402266351deefe50              # double 9.199624
	.quad	0x40145f4623d0bfa1              # double 5.0930410000000004
	.quad	0x40214ab474107315              # double 8.6459080000000004
	.quad	0x4022b0064a9cdc44              # double 9.3437979999999996
	.quad	0x401915ef1fddebd9              # double 6.27142
	.quad	0x4004bbf162ae4b02              # double 2.5917690000000002
	.quad	0x402304d8ba40d90e              # double 9.5094659999999998
	.quad	0x3febb804534bd76f              # double 0.86621300000000001
	.quad	0x400ce20ff540895d              # double 3.610382
	.quad	0x3fbc22ab25b317f0              # double 0.109904
	.quad	0x401224ffc9795b36              # double 4.5361320000000003
	.quad	0x3fb99817b95a2941              # double 0.099976999999999996
	.quad	0x3fec6429e0a41a26              # double 0.88722699999999999
	.quad	0x4009c32b990afe61              # double 3.2202980000000001
	.quad	0x4000292ddbdb5d89              # double 2.0201069999999999
	.quad	0x40111727136a4010              # double 4.2726100000000002
	.quad	0x401c7fb267c6b8b7              # double 7.1247040000000004
	.quad	0x4021d87229e90796              # double 8.9227460000000001
	.quad	0x4012b3315d701d9f              # double 4.6749929999999997
	.quad	0x40213b81d7dbf488              # double 8.616225
	.quad	0x40060563ed0f6274              # double 2.7526320000000002
	.quad	0x401e9cfa69be09bb              # double 7.6532989999999996
	.quad	0x4021fae1049235f8              # double 8.9899979999999999
	.quad	0x4010e32a8c9b8455              # double 4.2218419999999997
	.quad	0x4021331f8a0902de              # double 8.59985
	.quad	0x40227b0ea18372e7              # double 9.2403460000000006
	.quad	0x401347a3db3bfb59              # double 4.8199610000000002
	.quad	0x3ff62612839042d9              # double 1.3842950000000001
	.quad	0x4007336deb95e5b0              # double 2.900112
	.quad	0x401da793dd97f62b              # double 7.4136499999999996
	.quad	0x400cb09635610add              # double 3.5862240000000001
	.quad	0x3ff5a290eed02cd4              # double 1.3521890000000001
	.quad	0x40201abfdb4cc250              # double 8.0522449999999992
	.quad	0x4006b3892ee84ad8              # double 2.8376640000000002
	.quad	0x40199e432441fea8              # double 6.4045529999999999
	.quad	0x4010e09741d084e8              # double 4.2193269999999998
	.quad	0x4017b709b738e6d1              # double 5.9287479999999997
	.quad	0x4012dcd9e83e425b              # double 4.7156750000000001
	.quad	0x401f7749adc8fb87              # double 7.866492
	.quad	0x3fa2aa5c5f7c675a              # double 0.036456000000000002
	.quad	0x4005dee3d5fdcdf7              # double 2.7338330000000002
	.quad	0x3fe858e219652bd4              # double 0.76085000000000002
	.quad	0x4021467c6b8b6955              # double 8.6376679999999997
	.quad	0x40221b4aec8d5c74              # double 9.0533059999999991
	.quad	0x4001141fa7653437              # double 2.1348259999999999
	.quad	0x3ffe367d34df04de              # double 1.8883030000000001
	.quad	0x40150ea8da7f3cf7              # double 5.264316
	.quad	0x4021d94940bbb1f2              # double 8.9243869999999994
	.quad	0x4021d2c81d3aa36a              # double 8.911683
	.quad	0x400d6db9c7368ad7              # double 3.6785770000000002
	.quad	0x400a8ff08893b7d8              # double 3.3202829999999999
	.quad	0x40214820a30db6a2              # double 8.6408740000000002
	.quad	0x40148969a0ad8a11              # double 5.1341919999999996
	.quad	0x401434adff822bbf              # double 5.0514450000000002
	.quad	0x401e6593a2df9379              # double 7.599196
	.quad	0x3ff2eaee2003ab86              # double 1.182356
	.quad	0x400e25e892253112              # double 3.76851
	.quad	0x3fd44bba12b5e52a              # double 0.31712200000000001
	.quad	0x401115104d551d69              # double 4.2705700000000002
	.quad	0x400c26a098915bdd              # double 3.5188609999999998
	.quad	0x4011b40639d5e4a4              # double 4.4258050000000004
	.quad	0x40233ab7564302b4              # double 9.6146799999999998
	.quad	0x401f2f2cf95d4e90              # double 7.7960700000000003
	.quad	0x3ff2999cbee807bc              # double 1.1625030000000001
	.quad	0x3ff830e1b4bb5e0f              # double 1.5119339999999999
	.quad	0x3fe97e4de3b8a19d              # double 0.79666800000000004
	.quad	0x401377219220ff54              # double 4.866339
	.quad	0x400b171d1d4738a4              # double 3.3862860000000001
	.quad	0x3ffe7305100a393f              # double 1.903081
	.quad	0x400ed4dd72367e41              # double 3.8539379999999999
	.quad	0x40106394b7b28955              # double 4.0972470000000003
	.quad	0x3ffbcba83f4eca68              # double 1.7372209999999999
	.quad	0x4001e6822ff08894              # double 2.2375530000000001
	.quad	0x401adf3a9b068124              # double 6.7179970000000004
	.quad	0x4006d56a7ac81d3b              # double 2.8542070000000002
	.quad	0x401f3f1886df82b2              # double 7.811617
	.quad	0x401722f901083dbc              # double 5.7841529999999999
	.quad	0x40039e14bdfd2631              # double 2.452188
	.quad	0x3feeb8887229e908              # double 0.96002600000000004
	.quad	0x400620e94ee392e2              # double 2.76607
	.quad	0x4015bc126a65cf68              # double 5.4336640000000003
	.quad	0x40143f13059641f6              # double 5.0615959999999998
	.quad	0x4022f17f4128bf3c              # double 9.4716740000000001
	.quad	0x402116caeea63b69              # double 8.5445170000000008
	.quad	0x401af0c6f7a0b5ee              # double 6.7351340000000004
	.quad	0x40194c6eb0b7c350              # double 6.3246409999999997
	.quad	0x4021f257646ae3a4              # double 8.9733230000000006
	.quad	0x400605fa658c4bd3              # double 2.7529189999999999
	.quad	0x401f968512231833              # double 7.896992
	.quad	0x3fed098d477bbf94              # double 0.907416
	.quad	0x400a10614163779f              # double 3.2579980000000002
	.quad	0x40022106ab14ec20              # double 2.2661259999999999
	.quad	0x40146691ea78af3e              # double 5.1001659999999998
	.quad	0x400fd41d084e831b              # double 3.9785710000000001
	.quad	0x401fa3a7546d3f9e              # double 7.9098179999999996
	.quad	0x40068f2734f82f51              # double 2.8198989999999999
	.quad	0x3ff6e01cd5f99c39              # double 1.4297150000000001
	.quad	0x4020addd095af295              # double 8.3395770000000002
	.quad	0x4013a0a350d2806b              # double 4.906873
	.quad	0x4006f6e71cda2b5a              # double 2.8705579999999999
	.quad	0x4020f7b2aae29739              # double 8.4837849999999992
	.quad	0x3febea1405708249              # double 0.87232399999999999
	.quad	0x3fff07d1bb4916ca              # double 1.9394089999999999
	.quad	0x3fe6ed0917d6b65b              # double 0.71643500000000004
	.quad	0x4017eeea209aaa3b              # double 5.9833150000000002
	.quad	0x40157d8b60f1b25f              # double 5.3726019999999997
	.quad	0x3fedcd184c271fff              # double 0.93128599999999995
	.quad	0x40047d20f2becedd              # double 2.5610979999999999
	.quad	0x3ff8b8fbca1059ea              # double 1.5451619999999999
	.quad	0x400145907d912557              # double 2.1589670000000001
	.quad	0x4009ef61ed5ae1ce              # double 3.241886
	.quad	0x4011722f2734f82f              # double 4.3615079999999997
	.quad	0x40050c78e9f6a93f              # double 2.6310899999999999
	.quad	0x401846e8af81626b              # double 6.0692469999999998
	.quad	0x3ff68a66559f6ec6              # double 1.4087890000000001
	.quad	0x401cbbec2480e8c9              # double 7.1835180000000003
	.quad	0x3ff27365881a1555              # double 1.153173
	.quad	0x40143abde3fbbd7b              # double 5.0573649999999999
	.quad	0x4006fb866e43aa7a              # double 2.8728150000000001
	.quad	0x4020bfa919695d92              # double 8.3743370000000006
	.quad	0x401a90fa15db3398              # double 6.6415790000000001
	.quad	0x40104fb1e18efbb1              # double 4.0778270000000001
	.quad	0x40209d8537e2c55d              # double 8.3076570000000007
	.quad	0x40176dcd2d44dca9              # double 5.8572280000000001
	.quad	0x400bf095af294dd7              # double 3.4924729999999999
	.quad	0x401f9f2e8c0485a1              # double 7.9054510000000002
	.quad	0x3fbdfea8112ba16e              # double 0.11716699999999999
	.quad	0x4021c1d30270f388              # double 8.8785629999999998
	.quad	0x400c18e432441feb              # double 3.5121540000000002
	.quad	0x3fe513cee9dd7ecc              # double 0.65866800000000003
	.quad	0x400a457e23f24d90              # double 3.2839320000000001
	.quad	0x3fd455f3519bd406              # double 0.31774599999999997
	.quad	0x3ff55451fc4c1659              # double 1.333086
	.quad	0x400ad5e0f7fcfc40              # double 3.3544330000000002
	.quad	0x400451f4f50a02b8              # double 2.5400179999999999
	.quad	0x4016ca2f05a708ee              # double 5.6974450000000001
	.quad	0x4013e1f18c9fb613              # double 4.9706479999999997
	.quad	0x4022e4c1ca3a4b55              # double 9.4467909999999992
	.quad	0x400767d028a1dfb9              # double 2.9256899999999999
	.quad	0x40235e27179bfdf8              # double 9.6838920000000001
	.quad	0x3fbc1c8216c61523              # double 0.10981
	.quad	0x400167e5a78f25a2              # double 2.1757309999999999
	.quad	0x40176f30e7ff583a              # double 5.8585849999999997
	.quad	0x4016712f901083dc              # double 5.6105330000000002
	.quad	0x3f638151a437824d              # double 0.0023809999999999999
	.quad	0x4004483ba3443d47              # double 2.5352700000000001
	.quad	0x4013c66559f6ec5b              # double 4.943746
	.quad	0x401b24face67d780              # double 6.7861130000000003
	.quad	0x3fbd6733ebbfd71b              # double 0.114856
	.quad	0x400b33c46d82ba5a              # double 3.400277
	.quad	0x4020475946c332f0              # double 8.1393529999999998
	.quad	0x3ff62e115592d98c              # double 1.386247
	.quad	0x4008b9eb6390c910              # double 3.0907809999999998
	.quad	0x401622dd377e1b8f              # double 5.5340470000000002
	.quad	0x3ffa26f60e0eb67c              # double 1.634512
	.quad	0x400f9c193b3a68b2              # double 3.9512200000000002
	.quad	0x4018501ffb480a5b              # double 6.0782470000000002
	.quad	0x401ff0bb2bba98ee              # double 7.9850890000000003
	.quad	0x400732806af46aa1              # double 2.8996590000000002
	.quad	0x40224cc5da6a4441              # double 9.1499469999999992
	.quad	0x40216a231832fcad              # double 8.7072990000000008
	.quad	0x4010ea1dfb9389b5              # double 4.2286299999999999
	.quad	0x40220973fb7a5f42              # double 9.0184630000000006
	.quad	0x3fff40bbb1f255f3              # double 1.9533039999999999
	.quad	0x401bc3a7daa4fca4              # double 6.9410699999999999
	.quad	0x400e06833c60029f              # double 3.75318
	.quad	0x3fe5915379fa97e1              # double 0.67398999999999998
	.quad	0x3fee0984e3ffef39              # double 0.938662
	.quad	0x4016c2d87f88765c              # double 5.6902790000000003
	.quad	0x4016dd01c0ca600b              # double 5.715827
	.quad	0x401c95fc3b4f6167              # double 7.1464699999999999
	.quad	0x4021061b2a27f1b7              # double 8.5119260000000008
	.quad	0x3fd4f0ae536501e2              # double 0.32718999999999998
	.quad	0x4004df05ea24cc68              # double 2.6088979999999999
	.quad	0x4017cea2d2fe3f36              # double 5.9517930000000003
	.quad	0x3fba41e57d9dba91              # double 0.10256800000000001
	.quad	0x3ff3a6490a350d28              # double 1.228097
	.quad	0x4009e927913e8145              # double 3.238845
	.quad	0x4023231572580c31              # double 9.5685230000000007
	.quad	0x40185fc6540cc78f              # double 6.0935300000000003
	.quad	0x4004e8461f9f01b8              # double 2.6134149999999998
	.quad	0x4017c338f7985272              # double 5.9406470000000002
	.quad	0x400eb5bee3d5fdce              # double 3.838743
	.quad	0x4012fa47ecfe9b7c              # double 4.744415
	.quad	0x3ff78bba12b5e52a              # double 1.4716130000000001
	.quad	0x3fead45e9185cee1              # double 0.83842399999999995
	.quad	0x401503305100a394              # double 5.2531140000000001
	.quad	0x401568b545c78a6e              # double 5.3522540000000003
	.quad	0x3fe30216c61522a7              # double 0.59400500000000001
	.quad	0x4022455821294574              # double 9.1354380000000006
	.quad	0x40027db9841aac54              # double 2.3113890000000001
	.quad	0x3f9ca2db61bb05fb              # double 0.027965
	.quad	0x4015344d44567126              # double 5.3010760000000001
	.quad	0x401b5b71fbc5de9c              # double 6.839302
	.quad	0x400e28da7f3cf701              # double 3.7699479999999999
	.quad	0x400c5c4c165907d9              # double 3.545067
	.quad	0x3feaf9aae6c8f755              # double 0.84297699999999998
	.quad	0x40170e0a41a261bf              # double 5.7637109999999998
	.quad	0x4007b73860999dcb              # double 2.9644629999999998
	.quad	0x4012a830e3cd9a52              # double 4.6642489999999999
	.quad	0x402165e80bed740c              # double 8.6990359999999995
	.quad	0x401ddabd1aa821f3              # double 7.4636120000000004
	.quad	0x4017907075b3e143              # double 5.8910539999999996
	.quad	0x40072be8bc169c24              # double 2.8964400000000001
	.quad	0x3fdf2bf9830e3cda              # double 0.48705900000000002
	.quad	0x3ff0451b93037d63              # double 1.016872
	.quad	0x4011500192a73711              # double 4.328131
	.quad	0x4005d097c80841ee              # double 2.7268520000000001
	.quad	0x40155f48c2e770bd              # double 5.343051
	.quad	0x401577a6bd6e8af8              # double 5.3668469999999999
	.quad	0x4023bbf316e37154              # double 9.8670889999999999
	.quad	0x401579357603925c              # double 5.3683680000000003
	.quad	0x4018978290689870              # double 6.1479590000000002
	.quad	0x4023f7c3b4f61672              # double 9.9839149999999997
	.quad	0x400ffbe6e6538690              # double 3.9979990000000001
	.quad	0x4022b1b8ed1bf7ad              # double 9.3471139999999995
	.quad	0x4008b5d701d9f4d3              # double 3.0887889999999998
	.quad	0x3ff871876188b114              # double 1.527717
	.quad	0x40201589ce4a7b4e              # double 8.0420669999999994
	.quad	0x4021dee04c059210              # double 8.9353049999999996
	.quad	0x402013ae2541d8e8              # double 8.0384379999999993
	.quad	0x4019be3f359ff4fd              # double 6.4357879999999996
	.quad	0x4023f3b7739f340d              # double 9.9760089999999994
	.quad	0x40202cf722e1ac58              # double 8.0878230000000002
	.quad	0x40203f5a31a4bdba              # double 8.1237349999999999
	.quad	0x3fe0e33482be8bc1              # double 0.52773499999999995
	.quad	0x4010f07d0aed99cc              # double 4.2348520000000001
	.quad	0x40224114f483cafb              # double 9.1271129999999996
	.quad	0x401a3e685db76b3c              # double 6.5609450000000002
	.quad	0x4022857e45803cd1              # double 9.2607289999999995
	.quad	0x402012ed352220bc              # double 8.0369659999999996
	.quad	0x400a94940bbb1f25              # double 3.3225479999999998
	.quad	0x3fd48d21bc126a66              # double 0.32111400000000001
	.quad	0x40196f1561911490              # double 6.3584800000000001
	.quad	0x4008f3ea2d2fe3f3              # double 3.1190989999999998
	.quad	0x3feb54fdf3b645a2              # double 0.85412500000000002
	.quad	0x402085b402d16b98              # double 8.261139
	.quad	0x3ffe0dc22ab25b31              # double 1.8783589999999999
	.quad	0x4023ec08b75ea67f              # double 9.9610040000000008
	.quad	0x4020180a393ee5ef              # double 8.0469530000000002
	.quad	0x4015442e12620254              # double 5.3165820000000004
	.quad	0x400f7893faf42785              # double 3.9338760000000002
	.quad	0x401b9c78e9f6a93f              # double 6.9028049999999999
	.quad	0x40092731d2e0e304              # double 3.1441379999999999
	.quad	0x4010d871a3b14a90              # double 4.2113709999999998
	.quad	0x400317d1782d3847              # double 2.3866299999999998
	.quad	0x400092778140dd40              # double 2.0715170000000001
	.quad	0x401043d03968d75a              # double 4.0662240000000001
	.quad	0x40103a2b9d3cbc49              # double 4.0568070000000001
	.quad	0x40132d744f5d3565              # double 4.7943889999999998
	.quad	0x3ff439bdc69f8c22              # double 1.264097
	.quad	0x4010abf5946c332f              # double 4.167929
	.quad	0x40224e2ae4b01861              # double 9.1526709999999998
	.quad	0x3fdfc62e4d1a6506              # double 0.496471
	.quad	0x40218339c0ebedfa              # double 8.7562999999999995
	.quad	0x402051ce4a7b4e55              # double 8.1597770000000001
	.quad	0x3fc52fa0d77b7c78              # double 0.165516
	.quad	0x400cd12ec6bce853              # double 3.6021399999999999
	.quad	0x400014855da27286              # double 2.0100199999999999
	.quad	0x3fc1b3fa6defc7a4              # double 0.13830500000000001
	.quad	0x4014e1e0c5a8155d              # double 5.2205839999999997
	.quad	0x3fefbb0813cab820              # double 0.99158100000000004
	.quad	0x40236ab4959e6256              # double 9.7084089999999996
	.quad	0x401dab588e368f08              # double 7.4173299999999997
	.quad	0x402103dc486ad2dd              # double 8.5075400000000005
	.quad	0x3ff78881e4712e41              # double 1.4708270000000001
	.quad	0x3fe67a3fcc9ea9a4              # double 0.70242300000000002
	.quad	0x3fe36b4a66559f6f              # double 0.60684700000000003
	.quad	0x4015298bf7f06706              # double 5.2905730000000002
	.quad	0x40161a3ad18d25ee              # double 5.5256150000000002
	.quad	0x4017b6327ed84d34              # double 5.9279270000000004
	.quad	0x401564f8f8a4c1ec              # double 5.3486060000000002
	.quad	0x4007aee17a02fb5d              # double 2.960391
	.quad	0x40238846e8f29d41              # double 9.7661660000000001
	.quad	0x40120b3700474d9c              # double 4.5109519999999996
	.quad	0x40216e3b46fdeb53              # double 8.7152960000000004
	.quad	0x40125f4adbc664d4              # double 4.5930590000000002
	.quad	0x4012f3fc43b2dd37              # double 4.7382669999999996
	.quad	0x3fe76cbfb15b573f              # double 0.73202500000000004
	.quad	0x3fff73c2dadb8349              # double 1.965762
	.quad	0x3fb4db6a1e81cb47              # double 0.081473000000000004
	.quad	0x3fde465e89225311              # double 0.47304499999999999
	.quad	0x40122539756c93a7              # double 4.5363519999999999
	.quad	0x401738e29f9ce8d9              # double 5.8055519999999996
	.quad	0x4007fe920c069e80              # double 2.9993020000000001
	.quad	0x400dfd30ad46f588              # double 3.7486280000000001
	.quad	0x40203c8f53c579f2              # double 8.1182809999999996
	.quad	0x40177914b167ec78              # double 5.8682429999999997
	.quad	0x401bacffeb074a77              # double 6.9189449999999999
	.quad	0x401a1999dcb5781c              # double 6.5250009999999996
	.quad	0x4005473797460243              # double 2.6597740000000001
	.quad	0x3fe726b50b0f27bb              # double 0.72347499999999998
	.quad	0x401c6ab2e1693c04              # double 7.1041980000000002
	.quad	0x3ffa5c2f405f6ba0              # double 1.6475059999999999
	.quad	0x40207684ad794a6f              # double 8.2314810000000005
	.quad	0x4013062cba732df5              # double 4.75603
	.quad	0x4021d82d59d55e6c              # double 8.9222210000000004
	.quad	0x4005c6687f455a7d              # double 2.7218789999999999
	.quad	0x4022922af5771002              # double 9.2854840000000003
	.quad	0x401af2856605ee57              # double 6.7368370000000004
	.quad	0x4016c79b77c02afe              # double 5.6949290000000001
	.quad	0x40055ee807bbb624              # double 2.671341
	.quad	0x4020abed30f062d4              # double 8.3357939999999999
	.quad	0x4012eab4fa48301a              # double 4.7292059999999996
	.quad	0x40015ac1d29dc726              # double 2.1693150000000001
	.quad	0x3feede95b78cc9a7              # double 0.96467099999999994
	.quad	0x40211173b85e80bf              # double 8.5340860000000003
	.quad	0x40155d53cddd6e05              # double 5.3411400000000002
	.quad	0x40148382e44b6e93              # double 5.1284289999999997
	.quad	0x4013b2dba4d6e47e              # double 4.9246660000000002
	.quad	0x40140513f8db4891              # double 5.0049590000000004
	.quad	0x400b08cb4aec8d5c              # double 3.3792939999999998
	.quad	0x401c5af965b20b80              # double 7.0888419999999996
	.quad	0x3ff4d34efcbd5561              # double 1.3015890000000001
	.quad	0x3fe636f19934efcc              # double 0.69420700000000002
	.quad	0x3ff6478a6dacabc5              # double 1.392466
	.quad	0x4001c37585be1a82              # double 2.2204389999999998
	.quad	0x4013e5f3519bd406              # double 4.9745609999999996
	.quad	0x401332ba5a038195              # double 4.7995390000000002
	.quad	0x40209e20ee8d10f5              # double 8.3088449999999998
	.quad	0x3ff0eb7132724313              # double 1.0574809999999999
	.quad	0x400506d9be4cd749              # double 2.6283449999999999
	.quad	0x40020079a2834d27              # double 2.250232
	.quad	0x4007349d7ba6698c              # double 2.9006910000000001
	.quad	0x401a5a8650e77920              # double 6.5884029999999996
	.quad	0x3ff2db845564b663              # double 1.178593
	.quad	0x4003459c8c9320da              # double 2.4089900000000002
	.quad	0x40107d9e83e425af              # double 4.1226750000000001
	.quad	0x4012bef3d3a1d324              # double 4.686477
	.quad	0x40151279dd3bafd9              # double 5.2680429999999996
	.quad	0x400792253111f0c3              # double 2.9463599999999999
	.quad	0x4013c11f4f50a02c              # double 4.9385960000000004
	.quad	0x3ffbe975afaf8594              # double 1.744497
	.quad	0x40213c02d16b97ff              # double 8.6172090000000008
	.quad	0x401be7689ca18bd6              # double 6.9759849999999997
	.quad	0x401cc4de3b8a19ca              # double 7.1922540000000001
	.quad	0x402278a0d349be90              # double 9.2356020000000001
	.quad	0x401df07faa044ae8              # double 7.4848619999999996
	.quad	0x4023529cbab649d4              # double 9.6613520000000008
	.quad	0x4018b050374ff866              # double 6.1721810000000001
	.quad	0x4020a06dd69d3027              # double 8.3133379999999999
	.quad	0x40180294141e9af6              # double 6.0025180000000002
	.quad	0x4022b077681669cf              # double 9.3446610000000003
	.quad	0x4008e08637bd05af              # double 3.1096309999999998
	.quad	0x4022f3b256ffc116              # double 9.4759700000000002
	.quad	0x402218f0a5efe932              # double 9.0487110000000008
	.quad	0x40206016aceaaf36              # double 8.1876730000000002
	.quad	0x3ff0a3d3e4ef0282              # double 1.0399970000000001
	.quad	0x400c6b4202d9cf14              # double 3.5523720000000001
	.quad	0x4015bae85b9e8c48              # double 5.4325270000000003
	.quad	0x3ff15b78cc9a77e6              # double 1.084832
	.quad	0x4013dc2b0ea18373              # double 4.9650080000000001
	.quad	0x3fc636da87a072d2              # double 0.17354900000000001
	.quad	0x401b323897204296              # double 6.7990440000000003
	.quad	0x3ff2094c447c30d3              # double 1.12727
	.quad	0x4022dee75ff609dd              # double 9.435359
	.quad	0x3ffe6fd32c625e9a              # double 1.902301
	.quad	0x3fbab05319828805              # double 0.104253
	.quad	0x401d45abc0e38a7e              # double 7.3180379999999996
	.quad	0x40115f82f5126634              # double 4.3432729999999999
	.quad	0x4000993a2df9378f              # double 2.0748180000000001
	.quad	0x401fdf61aa3f034b              # double 7.9681459999999999
	.quad	0x4014b4d1e96c3fc4              # double 5.1765819999999998
	.quad	0x4021d3dba0a52696              # double 8.9137850000000007
	.quad	0x401164a558ea7ce1              # double 4.348287
	.quad	0x4009d5da272862f6              # double 3.2294200000000002
	.quad	0x4004684be40420f7              # double 2.550926
	.quad	0x3fc8b92c061847f5              # double 0.19315099999999999
	.quad	0x3fe98ae31d712a0f              # double 0.79820400000000002
	.quad	0x401cff31f46ed246              # double 7.2492140000000003
	.quad	0x4005553e707e175d              # double 2.666623
	.quad	0x400ab4488c60cbf3              # double 3.3380290000000001
	.quad	0x40149044284dfce3              # double 5.1408849999999999
	.quad	0x40200413122b7baf              # double 8.0079580000000004
	.quad	0x4018a15df6555c53              # double 6.1575850000000001
	.quad	0x4020a7a76534373f              # double 8.3274489999999997
	.quad	0x4000e19a847b2464              # double 2.1101580000000002
	.quad	0x40219571b0468449              # double 8.7918830000000003
	.quad	0x40180ed2cbea4ebe              # double 6.0144760000000002
	.quad	0x4020efc06e19b90f              # double 8.4682650000000006
	.quad	0x4020a8f16f4384ba              # double 8.3299669999999999
	.quad	0x40222ede76427c7c              # double 9.0915409999999994
	.quad	0x3fef05a4f00ef135              # double 0.96943900000000005
	.quad	0x401d443b2dd377e2              # double 7.3166320000000002
	.quad	0x3fc1b21c475e6363              # double 0.13824800000000001
	.quad	0x401cd84988094e5d              # double 7.2112179999999997
	.quad	0x401b16b37867f0aa              # double 6.7721689999999999
	.quad	0x401f57219220ff54              # double 7.835089
	.quad	0x400bd652bd3c3611              # double 3.4796499999999999
	.quad	0x40175b4c3c18b503              # double 5.8391580000000003
	.quad	0x4013144ed6fda837              # double 4.7698320000000001
	.quad	0x401df3065f9591cd              # double 7.4873289999999999
	.quad	0x401b3e84ad794a6f              # double 6.8110530000000002
	.quad	0x40124f8e7ddca4b1              # double 4.5776919999999999
	.quad	0x4022746a7ef9db23              # double 9.2273750000000003
	.quad	0x3ff6b2745bf26f1e              # double 1.4185680000000001
	.quad	0x401fed9fd36f7e3d              # double 7.9820549999999999
	.quad	0x401264894c447c31              # double 4.5981800000000002
	.quad	0x4021eb256ffc115e              # double 8.9592700000000001
	.quad	0x4016234699418506              # double 5.5344490000000004
	.quad	0x401a0c98a222d517              # double 6.5123009999999999
	.quad	0x401ce3dff3f0fe04              # double 7.2225339999999996
	.quad	0x3ff40cf8d716d2aa              # double 1.2531669999999999
	.quad	0x40211f2990f301eb              # double 8.5608640000000005
	.quad	0x400eef7e3d1cc101              # double 3.86694
	.quad	0x401eaca2120e1f7d              # double 7.6685869999999995
	.quad	0x4018396d4c33b539              # double 6.0560809999999998
	.quad	0x401320a782906898              # double 4.7818889999999996
	.quad	0x40117a600b029281              # double 4.3695069999999996
	.quad	0x4002ca1c68ec52a4              # double 2.348687
	.quad	0x4012f47e06961c37              # double 4.7387620000000004
	.quad	0x401bd20685553ef7              # double 6.9551030000000003
	.quad	0x3fffd3d640e9d51b              # double 1.9892179999999999
	.quad	0x400a8bb6ed677708              # double 3.3182200000000002
	.quad	0x40215958b827fa1a              # double 8.6745049999999999
	.quad	0x4023debfec13b9f1              # double 9.9350579999999997
	.quad	0x4013444417870542              # double 4.8166659999999997
	.quad	0x4006e7d028a1dfb9              # double 2.8631899999999999
	.quad	0x3ff3ef8df7a4e7ab              # double 1.2459849999999999
	.quad	0x4018c9c23b7952d2              # double 6.1970299999999998
	.quad	0x4022e1e03f705858              # double 9.4411640000000005
	.quad	0x3fe1d0ce4ead0c3d              # double 0.55673899999999998
	.quad	0x3ffb8bb6ed677708              # double 1.7216100000000001
	.quad	0x4004cab25b317efe              # double 2.598973
	.quad	0x400f99fcb0c026cc              # double 3.950189
	.quad	0x3fe3a116659d12cb              # double 0.61341400000000001
	.quad	0x3fea6fa1e3eaf683              # double 0.82612699999999994
	.quad	0x400040ebedfa43fe              # double 2.0316999999999998
	.quad	0x4004ab07d0aed99d              # double 2.5835110000000001
	.quad	0x3fc75592d98bf7f0              # double 0.18229899999999999
	.quad	0x401ad5ce18266773              # double 6.7087940000000001
	.quad	0x40127a333764f11b              # double 4.6193359999999997
	.quad	0x4023069595feda66              # double 9.5128599999999999
	.quad	0x3ff282352eb5f5f1              # double 1.1567890000000001
	.quad	0x40078072d1aeb3dd              # double 2.937719
	.quad	0x401f4751ce28ed5f              # double 7.8196479999999999
	.quad	0x40144d017dae8188              # double 5.0752009999999999
	.quad	0x401d0e963dc486ad              # double 7.2642449999999998
	.quad	0x401a8baa9b499d02              # double 6.636393
	.quad	0x4020573d7d3910c3              # double 8.1703910000000004
	.quad	0x401e7e6cd29131ec              # double 7.623462
	.quad	0x4013101040bfe3b0              # double 4.7656869999999998
	.quad	0x3fda7afea3df6db9              # double 0.41375699999999999
	.quad	0x40224ba8e71476b0              # double 9.1477730000000008
	.quad	0x3fe677963992c8c5              # double 0.702098
	.quad	0x400a0a4ebdd334c6              # double 3.2550330000000001
	.quad	0x4020c6534373f317              # double 8.3873540000000002
	.quad	0x40172324851a8694              # double 5.784319
	.quad	0x4009bdc4007570c5              # double 3.2176589999999998
	.quad	0x3fd3eee957470eb2              # double 0.31145699999999998
	.quad	0x40104cd184c27200              # double 4.075018
	.quad	0x401fcc36113404ea              # double 7.9494249999999997
	.quad	0x401777db6e503fb3              # double 5.8670479999999996
	.quad	0x401f04ff865d7cb3              # double 7.7548810000000001
	.quad	0x4006ac68a936c58f              # double 2.834184
	.quad	0x401cc66be7afa722              # double 7.1937709999999999
	.quad	0x4010ee3608d0891a              # double 4.2326280000000001
	.quad	0x400f395b35b0bbf5              # double 3.903006
	.quad	0x3fe412641b328b6e              # double 0.62724500000000005
	.quad	0x401f035bd512ec6c              # double 7.7532800000000002
	.quad	0x4004681882adc4ca              # double 2.5508280000000001
	.quad	0x40209ef262888b54              # double 8.3104429999999993
	.quad	0x40151933a0407cc8              # double 5.2746110000000002
	.quad	0x3ff69929670196d9              # double 1.412393
	.quad	0x4014790fb65668c2              # double 5.1182239999999997
	.quad	0x401e4052502eec7d              # double 7.5628140000000003
	.quad	0x40208771a7e30878              # double 8.2645389999999992
	.quad	0x3ffcce26d4801f75              # double 1.80033
	.quad	0x4020d419e30014f9              # double 8.4142600000000005
	.quad	0x4012f03d9a95421c              # double 4.73461
	.quad	0x40211491afc04c8c              # double 8.5401740000000003
	.quad	0x4002e79e59f2ba9d              # double 2.3630949999999999
	.quad	0x3fffd1ba3ca7503c              # double 1.9887030000000001
	.quad	0x402046173b85e80c              # double 8.1368960000000001
	.quad	0x401f8bd4cfd08d4c              # double 7.8865540000000003
	.quad	0x40235e14df8b1572              # double 9.6837529999999994
	.quad	0x400055b1c8648840              # double 2.0418430000000001
	.quad	0x40184f23cc8de2ac              # double 6.0772849999999998
	.quad	0x401b8317268d3283              # double 6.878018
	.quad	0x401f0e94ee392e1f              # double 7.76424
	.quad	0x402387a93af74cd3              # double 9.7649629999999998
	.quad	0x4022d3e09bb6aa4c              # double 9.4138230000000007
	.quad	0x401fe5a63f9a49c3              # double 7.9742670000000002
	.quad	0x401bde85b9e8c47a              # double 6.9673069999999999
	.quad	0x4018aa90470a808d              # double 6.1665660000000004
	.quad	0x400acf4be835dedf              # double 3.3512189999999999
	.quad	0x3fe70f51ac9afe1e              # double 0.72062000000000004
	.quad	0x4009e27a63736cdf              # double 3.2355849999999999
	.quad	0x4022308df37329c3              # double 9.0948329999999995
	.quad	0x40062c6583e8576d              # double 2.7716780000000001
	.quad	0x400f29d5a187a4a5              # double 3.8954270000000002
	.quad	0x4021d75cf2495e18              # double 8.9206310000000002
	.quad	0x400b1d640e9d51b5              # double 3.389351
	.quad	0x401ea22ff08893b8              # double 7.6583860000000001
	.quad	0x4012cf1ae2da554c              # double 4.7022510000000004
	.quad	0x3ff94d4aa10e0221              # double 1.5813699999999999
	.quad	0x401fb40a6b93ccd1              # double 7.925821
	.quad	0x401a1093532e7b3e              # double 6.5161870000000004
	.quad	0x4018bd9231c64ba9              # double 6.1851279999999997
	.quad	0x4020c48f10a99b6f              # double 8.3839039999999994
	.quad	0x3ffed650a45d41fa              # double 1.9273229999999999
	.quad	0x4000ab2a6b0d9514              # double 2.083577
	.quad	0x400bda53b8e4b87c              # double 3.4816050000000001
	.quad	0x401a1e9c4545846f              # double 6.5298930000000004
	.quad	0x3ff9101f31f46ed2              # double 1.5664359999999999
	.quad	0x4012a06f262888b5              # double 4.6566739999999998
	.quad	0x400ab1b3f20a73f7              # double 3.3367689999999999
	.quad	0x4016cfec56d5cfab              # double 5.7030500000000002
	.quad	0x4020beb3354c1227              # double 8.3724609999999995
	.quad	0x400ce28134480629              # double 3.610598
	.quad	0x4015ab6a1e81cb47              # double 5.4173970000000002
	.quad	0x3ffae12620253975              # double 1.6799679999999999
	.quad	0x4017589d6adf71eb              # double 5.836538
	.quad	0x4007a6c764adff82              # double 2.9564349999999999
	.quad	0x40186974e65bea0c              # double 6.1029850000000003
	.quad	0x4005692bc2fc6973              # double 2.6763530000000002
	.quad	0x400f43dddb1209ee              # double 3.9081380000000001
	.quad	0x3fcc6ae3a3a8e714              # double 0.22201199999999999
	.quad	0x3ff35a921ccd9620              # double 1.2096119999999999
	.quad	0x3ffc2d783dff3f10              # double 1.761101
	.quad	0x40143953586ca8a0              # double 5.0559820000000002
	.quad	0x4020cf008a697aee              # double 8.4043010000000002
	.quad	0x4016309917939a7c              # double 5.5474589999999999
	.quad	0x3fd3b56b87379746              # double 0.307948
	.quad	0x40112317efe0ce0c              # double 4.2842710000000004
	.quad	0x4019e0f27bb2fec5              # double 6.4696749999999996
	.quad	0x401f28fb00bcbe62              # double 7.7900200000000002
	.quad	0x4006e8ad68837718              # double 2.8636119999999998
	.quad	0x40133cf7caa7589f              # double 4.809539
	.quad	0x4022f0e0eb67c287              # double 9.470466
	.quad	0x40111adfb506dd6a              # double 4.2762440000000002
	.quad	0x400f4cffa7eb6bf4              # double 3.9125969999999999
	.quad	0x40106b5525cc4263              # double 4.1048169999999997
	.quad	0x401392b628459967              # double 4.8932729999999998
	.quad	0x401db3b927d45a60              # double 7.4255110000000002
	.quad	0x402280b86b15f890              # double 9.2514070000000004
	.quad	0x4022f437e6f71a7e              # double 9.4769889999999997
	.quad	0x4002cb042528ae75              # double 2.349129
	.quad	0x4001a24bba12b5e5              # double 2.2042459999999999
	.quad	0x3fddc23b7952d235              # double 0.46498
	.quad	0x402383ccf28c79f6              # double 9.7574229999999993
	.quad	0x40105f76e6106ab1              # double 4.0932269999999997
	.quad	0x40125737110e453d              # double 4.5851709999999999
	.quad	0x40170b3d8e000863              # double 5.7609769999999996
	.quad	0x401c4c0ca600b029              # double 7.0742669999999999
	.quad	0x40029d72367e414e              # double 2.3268779999999998
	.quad	0x3fd55ac471b47842              # double 0.33366499999999999
	.quad	0x3fd54ef459d9902a              # double 0.33294400000000002
	.quad	0x3fca56798958d9b6              # double 0.205764
	.quad	0x400dedcd2d44dca9              # double 3.7411140000000001
	.quad	0x402045a5daf07bfe              # double 8.1360309999999991
	.quad	0x40234000c9539b89              # double 9.6250060000000008
	.quad	0x402041a5657fb69a              # double 8.1282150000000009
	.quad	0x40134a51e321a2e8              # double 4.822578
	.quad	0x3ff27e7d1351159c              # double 1.1558809999999999
	.quad	0x4022b9c8eabffcdb              # double 9.3628610000000005
	.quad	0x3ff51fc2a8869c67              # double 1.320254
	.quad	0x3fbf3083558a7610              # double 0.121834
	.quad	0x401503dee78183f9              # double 5.2537799999999999
	.quad	0x4007594e1a3f4667              # double 2.918606
	.quad	0x401358576cce5f74              # double 4.836271
	.quad	0x3ffa44f1a1986b9c              # double 1.641832
	.quad	0x400f1646ae3a3a8e              # double 3.8858769999999998
	.quad	0x400986fe718a86d7              # double 3.1909149999999999
	.quad	0x3ffd83d46b26bf87              # double 1.8446849999999999
	.quad	0x3fefede54b48d3ae              # double 0.99778999999999995
	.quad	0x4021d5cb1465e892              # double 8.9175649999999997
	.quad	0x4016c2ebe596c82e              # double 5.690353
	.quad	0x40230d8665e02ea9              # double 9.5264159999999993
	.quad	0x40150550ca1cef24              # double 5.2551909999999999
	.quad	0x3fe2c126a65cf67b              # double 0.58607799999999999
	.quad	0x40129bc83a96d4c3              # double 4.6521309999999998
	.quad	0x4020fd2674080f99              # double 8.494434
	.quad	0x4016535eb7457c0b              # double 5.5814159999999999
	.quad	0x4015a2391d57ff9b              # double 5.4084209999999997
	.quad	0x401230b4e11dbca9              # double 4.5475649999999996
	.quad	0x401df433508f648c              # double 7.4884769999999996
	.quad	0x4010876683c297c0              # double 4.1322270000000003
	.quad	0x401ef679463cfb33              # double 7.7406969999999999
	.quad	0x400ede1f3a57eaa3              # double 3.8584580000000002
	.quad	0x4010c4dc22ab25b3              # double 4.1922459999999999
	.quad	0x4007112d3415b142              # double 2.8833869999999999
	.quad	0x401075c39bcba301              # double 4.1150039999999999
	.quad	0x3fb48e368f084620              # double 0.080295000000000005
	.quad	0x400154195cc857f3              # double 2.166064
	.quad	0x401a779c842fa509              # double 6.6168079999999998
	.quad	0x401609c66d373b00              # double 5.5095460000000003
	.quad	0x3fbfab7564302b41              # double 0.12371
	.quad	0x4020953868fd199c              # double 8.2914460000000005
	.quad	0x3ff3a351deefe500              # double 1.227373
	.quad	0x400337b5aea3161a              # double 2.4022019999999999
	.quad	0x4010f17ebaf10236              # double 4.2358349999999998
	.quad	0x40238f28c79f6662              # double 9.7796079999999996
	.quad	0x3ff45ba7fc32ebe6              # double 1.2723770000000001
	.quad	0x40204d3dc8b86b16              # double 8.1508620000000001
	.quad	0x40132fa76534373f              # double 4.7965369999999998
	.quad	0x4023cfabda0dfdf0              # double 9.9056080000000009
	.quad	0x4023e922749f0e4e              # double 9.9553410000000007
	.quad	0x40052df1e0828c37              # double 2.6474340000000001
	.quad	0x40132ce4649906cd              # double 4.7938400000000003
	.quad	0x40208671cda2b5a2              # double 8.2625869999999999
	.quad	0x40109a38fbca105a              # double 4.1506080000000001
	.quad	0x40198b1f255f351a              # double 6.3858610000000002
	.quad	0x3fed7e1b8ed1bf7b              # double 0.92164400000000002
	.quad	0x400d4370cdc8754f              # double 3.6579299999999999
	.quad	0x3fe4c7735c182ecb              # double 0.64934700000000001
	.quad	0x4001ef0068db8bac              # double 2.2416999999999998
	.quad	0x40116ad4f5903a75              # double 4.3543279999999998
	.quad	0x3fe8c1a8ac5c13fd              # double 0.77363999999999999
	.quad	0x4022028283d35eb7              # double 9.0049019999999995
	.quad	0x401eb9ea57214f05              # double 7.6815579999999998
	.quad	0x402196e935b91f71              # double 8.7947480000000002
	.quad	0x3ffa36199780baa6              # double 1.6382080000000001
	.quad	0x4017f0b178b37004              # double 5.9850519999999996
	.quad	0x4020eab777d0f1f5              # double 8.4584309999999991
	.quad	0x401d793ee5eedcc2              # double 7.368404
	.quad	0x3fe3c4e50c5eb314              # double 0.61778500000000003
	.quad	0x40231526b723ee1c              # double 9.5413110000000003
	.quad	0x401118dcdb37c99b              # double 4.2742800000000001
	.quad	0x4017f1aef6f8f041              # double 5.9860189999999998
	.quad	0x4020851ce28ed5f1              # double 8.2599859999999996
	.quad	0x4021198090b417ca              # double 8.5498089999999998
	.quad	0x402308f7985271bd              # double 9.5175140000000002
	.quad	0x4011b0164840e172              # double 4.4219600000000003
	.quad	0x40164b53d640e9d5              # double 5.5735619999999999
	.quad	0x40033ad2999567dc              # double 2.4037220000000001
	.quad	0x3fe7b2096787ce96              # double 0.740483
	.quad	0x4008b4b6a619da9d              # double 3.0882390000000002
	.quad	0x4020b7c32ebe596d              # double 8.3589110000000009
	.quad	0x40045a5a038194c0              # double 2.544117
	.quad	0x400df1c3ac929aa2              # double 3.7430490000000001
	.quad	0x400fd28d002e2329              # double 3.977808
	.quad	0x401d016440f23897              # double 7.2513589999999999
	.quad	0x4000b81adea89763              # double 2.0898949999999998
	.quad	0x401df8405b39e27a              # double 7.4924330000000001
	.quad	0x4013d312b1b36bd3              # double 4.9561260000000003
	.quad	0x401ee3e1437c5693              # double 7.7225390000000002
	.quad	0x401477afea3df6dc              # double 5.1168820000000004
	.quad	0x3fe4ee82949a5658              # double 0.654115
	.quad	0x401e15c0fcb4f1e5              # double 7.5212440000000002
	.quad	0x3fc0b702602c9082              # double 0.13058500000000001
	.quad	0x40189073de1e2de8              # double 6.1410669999999996
	.quad	0x3fe04b0e1b4bb5e1              # double 0.509162
	.quad	0x40063cf91a32b12d              # double 2.7797719999999999
	.quad	0x401d588db0574b40              # double 7.3364779999999996
	.quad	0x3fde87ebf22c01e7              # double 0.47704600000000003
	.quad	0x40137ac14c660a20              # double 4.8698779999999999
	.quad	0x4023a808637bd05b              # double 9.828189
	.quad	0x3fff210cf5b1c865              # double 1.9455690000000001
	.quad	0x4022df90fb65668c              # double 9.4366529999999997
	.quad	0x40183379b77c02b0              # double 6.0502690000000001
	.quad	0x400f8af35e310dbf              # double 3.942847
	.quad	0x40188893b7d84902              # double 6.1333760000000002
	.quad	0x401cda19c9d5a188              # double 7.2129890000000003
	.quad	0x40145c90c4dec1c2              # double 5.0903960000000001
	.quad	0x3fea43e5321e603d              # double 0.82078799999999996
	.quad	0x40036106ab14ec20              # double 2.4223759999999999
	.quad	0x4022ed30ced4e4c9              # double 9.4632629999999995
	.quad	0x4010e1efb6dca07f              # double 4.2206409999999996
	.quad	0x400a9481b21c475e              # double 3.3225129999999998
	.quad	0x4010b7aa25d8d79d              # double 4.17936
	.quad	0x401127ad8e432442              # double 4.288748
	.quad	0x4021ca5093964a5a              # double 8.8951460000000004
	.quad	0x4015bd89ce4a7b4e              # double 5.4350959999999997
	.quad	0x401e945e9185cee1              # double 7.6448919999999995
	.quad	0x40142cd8dbcec850              # double 5.0437960000000004
	.quad	0x4021084ab606b7aa              # double 8.5161949999999997
	.quad	0x40232683e425aee6              # double 9.5752249999999997
	.quad	0x400cdf5275ee99a6              # double 3.6090439999999999
	.quad	0x401a678feef5ec81              # double 6.6011350000000002
	.quad	0x40207a8e0c9d9d34              # double 8.2393649999999993
	.quad	0x4020b9cb89d6adf7              # double 8.3628809999999998
	.quad	0x40159c126a65cf68              # double 5.4024140000000003
	.quad	0x3ff8c37e6f71a7e3              # double 1.547728
	.quad	0x3ffda006d0d4994a              # double 1.851569
	.quad	0x4021f5f9bdc69f8c              # double 8.9804209999999997
	.quad	0x401016ac215b9a5b              # double 4.0221410000000004
	.quad	0x4005c14f8b588e37              # double 2.7193900000000002
	.quad	0x3fe6af31b152f3c3              # double 0.70888600000000002
	.quad	0x4022f5db1209edc0              # double 9.4801870000000008
	.quad	0x3fcfbfbdf090f734              # double 0.24803900000000001
	.quad	0x401c261c36976bc2              # double 7.0372170000000001
	.quad	0x400d3bf37b8d3f18              # double 3.6542729999999999
	.quad	0x3fc4f0ae536501e2              # double 0.16359499999999999
	.quad	0x4023e1cde5d18091              # double 9.9410240000000005
	.quad	0x401b77b6bb129025              # double 6.8669079999999996
	.quad	0x40233c486ad2dcb1              # double 9.6177399999999995
	.quad	0x4012ea0a0f4d7add              # double 4.7285539999999999
	.quad	0x3fe64c89b0ee49f5              # double 0.69684299999999999
	.quad	0x4004de3193f6c26a              # double 2.6084930000000002
	.quad	0x3fe185d95dd4c76d              # double 0.54758899999999999
	.quad	0x3fe627e0ef99806f              # double 0.69236799999999998
	.quad	0x401e78f0c77dd873              # double 7.618106
	.quad	0x4021786338b47c74              # double 8.7351320000000001
	.quad	0x401d3bb23571d1d4              # double 7.3082969999999996
	.quad	0x4000b47ae147ae14              # double 2.0881249999999998
	.quad	0x402112036006d0d5              # double 8.5351820000000007
	.quad	0x3fc12a94ff0025c0              # double 0.13411200000000001
	.quad	0x401f8a9478c868ba              # double 7.885332
	.quad	0x3ff414ca925fe975              # double 1.2550760000000001
	.quad	0x40134615a8deb0fb              # double 4.8184420000000001
	.quad	0x401f76c7a7c9de05              # double 7.8659959999999999
	.quad	0x4015f10f51ac9afe              # double 5.4854099999999999
	.quad	0x4010c76d97b30f8c              # double 4.1947539999999996
	.quad	0x4002f3a1d323fee3              # double 2.3689610000000001
	.quad	0x40202ac881e4712e              # double 8.0835609999999996
	.quad	0x4022706a6e32e382              # double 9.2195619999999998
	.quad	0x4013a99fa11a975b              # double 4.915648
	.quad	0x3ffe657214f0520d              # double 1.899767
	.quad	0x400d44df47f993d5              # double 3.6586289999999999
	.quad	0x401fdcc6822ff089              # double 7.9656010000000003
	.quad	0x40075b78cc9a77e6              # double 2.919664
	.quad	0x4008611d3671ac15              # double 3.0474190000000001
	.quad	0x4021514c22ee4192              # double 8.6587840000000007
	.quad	0x4020921511dffc54              # double 8.2853169999999991
	.quad	0x40168b51bd61f5be              # double 5.6360539999999997
	.quad	0x4003fc7f77af6406              # double 2.4982899999999999
	.quad	0x401ab57de0d66f0d              # double 6.677238
	.quad	0x401400b4e11dbca9              # double 5.0006899999999996
	.quad	0x40026b33daf8df7a              # double 2.3023449999999999
	.quad	0x3ff0a81ba7fc32ec              # double 1.041042
	.quad	0x4022068a50507a6c              # double 9.0127740000000002
	.quad	0x402247ab53d640ea              # double 9.1399790000000003
	.quad	0x40064965f5275eea              # double 2.7858390000000002
	.quad	0x401554b87bdcf030              # double 5.3327349999999996
	.quad	0x401e8a8f3a9b0681              # double 7.6353119999999998
	.quad	0x401e08d10f51ac9b              # double 7.50861
	.quad	0x3ffd9e8709741d08              # double 1.8512029999999999
	.quad	0x4020eb28522ea0fd              # double 8.4592919999999996
	.quad	0x3fff06df82b1f688              # double 1.9391780000000001
	.quad	0x3ff7a120e1f7d73d              # double 1.4768380000000001
	.quad	0x4023668101f31f47              # double 9.7002030000000001
	.quad	0x40195fd113836a83              # double 6.3435709999999998
	.quad	0x4017c949a5657fb7              # double 5.9465700000000004
	.quad	0x3fe51ee45c358afc              # double 0.66002099999999997
	.quad	0x4014e9a240314877              # double 5.2281579999999996
	.quad	0x401062877ee4e26d              # double 4.0962199999999998
	.quad	0x3ffe4560c7c0f451              # double 1.8919379999999999
	.quad	0x40028b0c026cc1ca              # double 2.3178939999999999
	.quad	0x401906e371540032              # double 6.2567269999999997
	.quad	0x3fb6b313be22e5de              # double 0.088669999999999998
	.quad	0x401f428b2a6b0d95              # double 7.8149839999999999
	.quad	0x4001d2428d434a02              # double 2.2276660000000001
	.quad	0x4023cce5b4245f5b              # double 9.9001900000000002
	.quad	0x3fdd12018a43bb41              # double 0.45422400000000002
	.quad	0x401811a1db877ab3              # double 6.0172189999999999
	.quad	0x402369deacc92147              # double 9.7067770000000006
	.quad	0x40065cf67b1c0011              # double 2.7953920000000001
	.quad	0x4021ee638433d6c7              # double 8.9656029999999998
	.quad	0x3feb998aeb80ecfa              # double 0.86249299999999995
	.quad	0x40232c024b33daf9              # double 9.5859550000000002
	.quad	0x400237d49d7ba66a              # double 2.2772610000000002
	.quad	0x3fd980064a9cdc44              # double 0.39843899999999999
	.quad	0x3fecfc9795b35b0c              # double 0.90583400000000002
	.quad	0x4021b9782d38476f              # double 8.8622449999999997
	.quad	0x4017b810624dd2f2              # double 5.9297500000000003
	.quad	0x3ff47673c4f3ba77              # double 1.2789189999999999
	.quad	0x40048c8f75536934              # double 2.5686330000000002
	.quad	0x400c8b94d9407896              # double 3.568155
	.quad	0x3fd34a16a4873366              # double 0.30139700000000003
	.quad	0x4022c1bef49cf56f              # double 9.3784100000000005
	.quad	0x400bdeb52c9d16fd              # double 3.4837440000000002
	.quad	0x401816a26e547171              # double 6.0221039999999997
	.quad	0x402025538ac18f82              # double 8.0729030000000002
	.quad	0x400ae5ef62f9ca5c              # double 3.3622730000000001
	.quad	0x3fe773797460242d              # double 0.732846
	.quad	0x400970a3d70a3d71              # double 3.1800000000000002
	.quad	0x3fe7ffe2a3cea6c2              # double 0.74998600000000004
	.quad	0x4020eb9d3cbc48f1              # double 8.4601839999999999
	.quad	0x40171c4cdfaca362              # double 5.7776370000000004
	.quad	0x4008ab49e01de269              # double 3.083637
	.quad	0x40194c17a89331a1              # double 6.3243090000000004
	.quad	0x402260bd230b9dc3              # double 9.1889430000000001
	.quad	0x40163b85e80bed74              # double 5.558128
	.quad	0x401b532e3821af7d              # double 6.8312309999999998
	.quad	0x401776fb09203a32              # double 5.8661919999999999
	.quad	0x40172089e34330d7              # double 5.7817759999999998
	.quad	0x40138ee392e1ef74              # double 4.8895400000000002
	.quad	0x3ffc18266772d5e0              # double 1.7558959999999999
	.quad	0x3fd3055757d5a9eb              # double 0.29720099999999999
	.quad	0x3ff71832fcac8e69              # double 1.443408
	.quad	0x40239a1272c94b38              # double 9.8009219999999999
	.quad	0x40104fea8112ba17              # double 4.0780430000000001
	.quad	0x4011a913a4f8726d              # double 4.415114
	.quad	0x3ffb664a16a48733              # double 1.7124729999999999
	.quad	0x401d4da8bd230b9e              # double 7.3258390000000002
	.quad	0x40046f837b4a233a              # double 2.5544500000000001
	.quad	0x3fff6149c6f36ef8              # double 1.961252
	.quad	0x4016880dc33721d5              # double 5.6328649999999998
	.quad	0x4020e055b8993922              # double 8.4381540000000008
	.quad	0x4017495464dc22ab              # double 5.8216109999999999
	.quad	0x401188c2e770bd01              # double 4.3835559999999996
	.quad	0x4013713836a832ba              # double 4.8605660000000004
	.quad	0x401d6b0ccbc05d53              # double 7.3545410000000002
	.quad	0x401d6bff8a8f3a9b              # double 7.355467
	.quad	0x40217f3083558a76              # double 8.7484169999999999
	.quad	0x4023a9bf37b8d3f2              # double 9.8315370000000009
	.quad	0x400f87d4e09784ec              # double 3.9413239999999998
	.quad	0x4000f1ceaf251c19              # double 2.1180699999999999
	.quad	0x4001f1ed9dfdac69              # double 2.2431290000000002
	.quad	0x400d9945b6c3760c              # double 3.69984
	.quad	0x401bf4e3bcd35a86              # double 6.9891500000000004
	.quad	0x4021eb2acfb762d8              # double 8.9593109999999996
	.quad	0x400fbaf31b152f3c              # double 3.9662839999999999
	.quad	0x4023ce54d61b2a28              # double 9.902991
	.quad	0x40071f676ea4228a              # double 2.8903340000000002
	.quad	0x4021a1e9af5ba2be              # double 8.816236
	.quad	0x40050c0485a0be51              # double 2.630868
	.quad	0x3fd2025bfad29995              # double 0.28139399999999998
	.quad	0x3ff85a5daf07bfe8              # double 1.522062
	.quad	0x40109bf162ae4b02              # double 4.1522880000000004
	.quad	0x40134ddb1209edc0              # double 4.8260310000000004
	.quad	0x400e655970b49e02              # double 3.7994870000000001
	.quad	0x40083365881a1555              # double 3.025096
	.quad	0x4005d9f98b71b8aa              # double 2.731433
	.quad	0x401edd50225742dd              # double 7.716126
	.quad	0x40205c70eb24a6a8              # double 8.1805489999999992
	.quad	0x3ff4a1426fe718a8              # double 1.2893699999999999
	.quad	0x40201d931ca7d673              # double 8.0577629999999996
	.quad	0x40223441355475a3              # double 9.1020599999999998
	.quad	0x400e0919ef954eb1              # double 3.7544439999999999
	.quad	0x3ff26e5796bfca86              # double 1.151939
	.quad	0x401362f512663411              # double 4.8466379999999996
	.quad	0x3ff093ea2d2fe3f3              # double 1.0361119999999999
	.quad	0x401c4461b6d43d04              # double 7.0667790000000004
	.quad	0x40081a6e75ff609e              # double 3.0129060000000001
	.quad	0x40214c6759ab6d01              # double 8.6492260000000005
	.quad	0x40220762f9ca5bd9              # double 9.0144269999999995
	.quad	0x3febaf5771001d5c              # double 0.86515399999999997
	.quad	0x3ffc16073de1e2df              # double 1.7553780000000001
	.quad	0x4013e0867ad8e432              # double 4.9692629999999998
	.quad	0x40114082cf52b90a              # double 4.3129989999999996
	.quad	0x40191a176ddaceee              # double 6.2754799999999999
	.quad	0x401cdf36ac647779              # double 7.2179820000000001
	.quad	0x40193590c0ad03da              # double 6.3023100000000003
	.quad	0x401b495aaf78feef              # double 6.8216349999999997
	.quad	0x40215877ee4e26d5              # double 8.6727900000000009
	.quad	0x400f3d113836a833              # double 3.9048180000000001
	.quad	0x400d61869835158c              # double 3.6726200000000002
	.quad	0x40211208398a6549              # double 8.5352189999999997
	.quad	0x401333aeee957471              # double 4.8004720000000001
	.quad	0x400fb66516db0dd8              # double 3.9640599999999999
	.quad	0x3ff459b5e95b78cd              # double 1.2719020000000001
	.quad	0x40113087ca643cc0              # double 4.2973929999999996
	.quad	0x401047d30ad46f58              # double 4.0701409999999996
	.quad	0x40201c384ba0e842              # double 8.0551169999999992
	.quad	0x401b76e158750c1c              # double 6.8660940000000004
	.quad	0x3fddbb6672fba01f              # double 0.464563
	.quad	0x3fdd3ad5bee3d5fe              # double 0.45671600000000001
	.quad	0x400f743bf727136a              # double 3.9317549999999999
	.quad	0x4020f5ca07f66e87              # double 8.4800570000000004
	.quad	0x40200911f0c34c1b              # double 8.0177150000000008
	.quad	0x40231244c7b02d5a              # double 9.5356810000000003
	.quad	0x401f1df82b1f687b              # double 7.7792669999999999
	.quad	0x40025a2595bbbe88              # double 2.2940170000000002
	.quad	0x40023bf1e8e60807              # double 2.2792699999999999
	.quad	0x401a89bed30f062d              # double 6.6345169999999998
	.quad	0x3fe5890f733a8a40              # double 0.67298100000000005
	.quad	0x4021d64b662fdfc2              # double 8.9185440000000007
	.quad	0x4012324bfd2e9468              # double 4.549118
	.quad	0x40022ef0281ba7fc              # double 2.2729189999999999
	.quad	0x3fff58b3f63c31df              # double 1.9591559999999999
	.quad	0x401c048beb5b2d4d              # double 7.0044399999999998
	.quad	0x4018ab8c75c4a83b              # double 6.1675279999999999
	.quad	0x3fd0908e581cf788              # double 0.25882300000000003
	.quad	0x401f0424e5929670              # double 7.7540469999999999
	.quad	0x40037f5946c332f0              # double 2.437182
	.quad	0x401b0e2bcf91a32b              # double 6.7638389999999999
	.quad	0x40190d8622c45027              # double 6.2632070000000004
	.quad	0x3fe5a3b3636f3b21              # double 0.67623299999999997
	.quad	0x40216ed8904f6dfc              # double 8.7164959999999993
	.quad	0x3ffdd72cd7cf5f4e              # double 1.8650329999999999
	.quad	0x40140203e63e8dda              # double 5.0019679999999997
	.quad	0x3fddb4b72c5197a2              # double 0.46415499999999998
	.quad	0x3fc9ddb9841aac54              # double 0.20207900000000001
	.quad	0x4010228f9f44d445              # double 4.0337509999999996
	.quad	0x4016cb9ae0c17657              # double 5.6988329999999996
	.quad	0x4022f319e731d2e1              # double 9.4748070000000002
	.quad	0x400e6bab649d388b              # double 3.8025730000000002
	.quad	0x3fc25eaab042528b              # double 0.143514
	.quad	0x40037e8ff327aa69              # double 2.436798
	.quad	0x4006e29f16b11c6d              # double 2.8606549999999999
	.quad	0x401e9562174c4ce0              # double 7.6458820000000003
	.quad	0x3ff76d6dc1a47a9e              # double 1.464216
	.quad	0x3f6ca9ef5232d2bb              # double 0.0034989999999999999
	.quad	0x40219f2778140dd4              # double 8.810848
	.quad	0x3ff889aed56b0100              # double 1.533614
	.quad	0x4004eb28522ea0fd              # double 2.6148229999999999
	.quad	0x401e150dae3e6c4c              # double 7.5205599999999997
	.quad	0x4021ca92817763e5              # double 8.8956490000000006
	.quad	0x4017ba84be40420f              # double 5.9321469999999996
	.quad	0x40011d91ab8e8ea4              # double 2.1394380000000002
	.quad	0x400d3f47f993d534              # double 3.6558989999999998
	.quad	0x40143d6a9c560c7c              # double 5.0599769999999999
	.quad	0x400ffd51b4fe79ee              # double 3.998691
	.quad	0x4022fbd0bfa09460              # double 9.4918270000000007
	.quad	0x4017d03d9a95421c              # double 5.95336
	.quad	0x402263022dd7a9a0              # double 9.1933760000000007
	.quad	0x401fb2923e5b8562              # double 7.9243860000000002
	.quad	0x401240a8d21bc127              # double 4.5631440000000003
	.quad	0x401ec6b26bf8769f              # double 7.6940400000000002
	.quad	0x400c0e4e26d4801f              # double 3.5069849999999998
	.quad	0x3fe1a4ce8101f31f              # double 0.55136799999999997
	.quad	0x4011be8d972cd7cf              # double 4.4360869999999997
	.quad	0x4021a8d7be9856a3              # double 8.8297709999999991
	.quad	0x402353558a761028              # double 9.6627620000000007
	.quad	0x4020db3ce63a5c1c              # double 8.4281989999999993
	.quad	0x40170f94c87980f5              # double 5.7652159999999997
	.quad	0x3ff3997d49d7ba67              # double 1.2249730000000001
	.quad	0x40109062d40aaeb0              # double 4.1410020000000003
	.quad	0x4011831bde82d7b6              # double 4.3780359999999998
	.quad	0x4002fc2ca148ba84              # double 2.373132
	.quad	0x401c3565c2d27807              # double 7.0521459999999996
	.quad	0x4023817f1f9acffa              # double 9.7529229999999991
	.quad	0x4022e2d5171e29b7              # double 9.4430320000000005
	.quad	0x3fe329d627bf61aa              # double 0.59885699999999997
	.quad	0x4012f1144cbe1eb4              # double 4.7354289999999999
	.quad	0x4018a5dd095af295              # double 6.1619760000000001
	.quad	0x4014b888b545c78a              # double 5.1802089999999996
	.quad	0x4020f0303c07ee0b              # double 8.4691179999999999
	.quad	0x3fe54947064ece9a              # double 0.66519499999999998
	.quad	0x40047a14488c60cc              # double 2.559609
	.quad	0x4023d0c521dda05a              # double 9.9077540000000006
	.quad	0x401b43c1ce6c093e              # double 6.8161690000000004
	.quad	0x401ab6d6dc1a47aa              # double 6.6785540000000001
	.quad	0x400be3b256ffc116              # double 3.4861800000000001
	.quad	0x4014c99e0e73604a              # double 5.1968920000000001
	.quad	0x401ac8259e1f3a58              # double 6.6954560000000001
	.quad	0x3ff0ddbca9691a76              # double 1.054135
	.quad	0x3ff6677c45cbbc2c              # double 1.4002650000000001
	.quad	0x401caf3f961804da              # double 7.1711410000000004
	.quad	0x400469a5657fb69a              # double 2.5515850000000002
	.quad	0x4022af12e40852b5              # double 9.3419410000000003
	.quad	0x4013db8cb8e086be              # double 4.964404
	.quad	0x4020e9c7368ad688              # double 8.4565979999999996
	.quad	0x3ffade646f156191              # double 1.679295
	.quad	0x4012d9070fbeb9e5              # double 4.7119410000000004
	.quad	0x4018ac6c11a11234              # double 6.1683810000000001
	.quad	0x4015e9e83e425aee              # double 5.4784249999999997
	.quad	0x4001742edbb59ddc              # double 2.1817299999999999
	.quad	0x400722b8c75c4a84              # double 2.8919540000000001
	.quad	0x4016d4f5d35653ca              # double 5.7079690000000003
	.quad	0x402072ff8ec0f883              # double 8.2246059999999996
	.quad	0x3ff9b8897e996313              # double 1.607553
	.quad	0x3fe7c7c30d306a2b              # double 0.74313499999999999
	.quad	0x40046f1ed17c5ef6              # double 2.5542579999999999
	.quad	0x401f29439de481f5              # double 7.7902969999999998
	.quad	0x401f9cdc8754f377              # double 7.9031849999999996
	.quad	0x40208c61309c7ffe              # double 8.2741790000000002
	.quad	0x40203e06fac6045c              # double 8.1211470000000005
	.quad	0x3fd373bc903ea705              # double 0.30393900000000001
	.quad	0x4020fa5460aa64c3              # double 8.4889250000000001
	.quad	0x4016e7fe4bcad9ae              # double 5.7265560000000004
	.quad	0x400902949a5657fb              # double 3.1262599999999998
	.quad	0x3fe0ef4be835dedf              # double 0.52921099999999999
	.quad	0x3fe34bdfd2630ec3              # double 0.60301199999999999
	.quad	0x4020fb6284599674              # double 8.4909859999999994
	.quad	0x402022b53d640e9d              # double 8.0677889999999994
	.quad	0x3ffce7bc3c5bd0e1              # double 1.806576
	.quad	0x4020d3df6db940ff              # double 8.4138140000000003
	.quad	0x3ffab29c347e8cce              # double 1.668606
	.quad	0x401d3163fdd65a14              # double 7.2982329999999997
	.quad	0x402329bf37b8d3f2              # double 9.5815370000000009
	.quad	0x3ffbd51d68c692f7              # double 1.73953
	.quad	0x4014b816f0068db9              # double 5.1797750000000002
	.quad	0x400c123ee1bd1eda              # double 3.5089090000000001
	.quad	0x4022c918a009f623              # double 9.3927659999999999
	.quad	0x4015d4bf4cb1897a              # double 5.4577609999999996
	.quad	0x402263c5de9c022a              # double 9.1948690000000006
	.quad	0x4009a4f7ec3547e0              # double 3.2055509999999998
	.quad	0x3ff38c868b9fdbd3              # double 1.221808
	.quad	0x3fd81d10b1feeb2d              # double 0.376774
	.quad	0x401979cf13cee9dd              # double 6.3689539999999996
	.quad	0x40216f9e59f2ba9d              # double 8.7180049999999998
	.quad	0x401bb51efb6dca08              # double 6.926876
	.quad	0x4013174299d883ba              # double 4.7727149999999998
	.quad	0x401467df5cf2495e              # double 5.1014379999999999
	.quad	0x401a69d7fd82773e              # double 6.6033629999999999
	.quad	0x40068146a1a500d6              # double 2.813123
	.quad	0x40046c8472c0e7bc              # double 2.5529869999999999
	.quad	0x4019d016ce789e77              # double 6.4532119999999997
	.quad	0x4021473c70c996b7              # double 8.6391329999999993
	.quad	0x3feab11409a24031              # double 0.83411599999999997
	.quad	0x3fe79b6b2af14552              # double 0.73772199999999999
	.quad	0x400429ac36544fe3              # double 2.5203479999999998
	.quad	0x3fe2c1bda5119ce0              # double 0.58614999999999995
	.quad	0x400cc312f4cf4a56              # double 3.5952510000000002
	.quad	0x4013506cca2db61c              # double 4.8285400000000003
	.quad	0x400debfd2e946801              # double 3.7402289999999998
	.quad	0x400fd11622813448              # double 3.977093
	.quad	0x3fe84e874c8ffb8b              # double 0.75958599999999998
	.quad	0x3feb35d67ba237ce              # double 0.85032200000000002
	.quad	0x40232d61d4306e5d              # double 9.5886370000000002
	.quad	0x3fd187980f55de59              # double 0.27390100000000001
	.quad	0x4023a531b9b66f93              # double 9.8226449999999996
	.quad	0x401fe530ced4e4c9              # double 7.9738189999999997
	.quad	0x3fb91bd61f5be5da              # double 0.098081000000000001
	.quad	0x3fe1d74b40703298              # double 0.557531
	.quad	0x401c731550ca1cef              # double 7.1123859999999999
	.quad	0x4013d8a8f3a9b068              # double 4.9615819999999999
	.quad	0x401f878316a05575              # double 7.8823359999999995
	.quad	0x3ff33acf7446f9ba              # double 1.2018580000000001
	.quad	0x4018a2324c836651              # double 6.1583949999999996
	.quad	0x40158338b47c73ef              # double 5.3781460000000001
	.quad	0x4014b0752da98677              # double 5.1723220000000003
	.quad	0x4022e866c2acb85a              # double 9.4539089999999995
	.quad	0x401adfa15db3397e              # double 6.7183890000000002
	.quad	0x4020e9ba7fc32ebe              # double 8.4565009999999994
	.quad	0x40231dee99a62ed3              # double 9.5584609999999994
	.quad	0x3ff2ff91e646f156              # double 1.187395
	.quad	0x40227a923e5b8562              # double 9.2393970000000003
	.quad	0x401057243137b070              # double 4.0850989999999996
	.quad	0x401a5f327aa68f4b              # double 6.5929659999999997
	.quad	0x4018190f301eabbd              # double 6.0244720000000003
	.quad	0x402183065f9591cd              # double 8.7559079999999998
	.quad	0x40110aab47410731              # double 4.2604189999999997
	.quad	0x401fb19eb6390c91              # double 7.9234569999999999
	.quad	0x3fe78e2c12ad81ae              # double 0.73610500000000001
	.quad	0x4022063da2f8bdec              # double 9.0121889999999993
	.quad	0x401ded8dbcec84f9              # double 7.481986
	.quad	0x3fe78945f9df548f              # double 0.73550700000000002
	.quad	0x4016356798958d9b              # double 5.5521529999999997
	.quad	0x401543faf42784a9              # double 5.3163869999999998
	.quad	0x401e3673c4f3ba77              # double 7.5531759999999996
	.quad	0x40086b48d3ae685e              # double 3.0523850000000001
	.quad	0x400211e321a2e7f7              # double 2.258734
	.quad	0x401c866dbd72bcb6              # double 7.131278
	.quad	0x401db477ff151e75              # double 7.4262389999999998
	.quad	0x40125b36bd2b6f1a              # double 4.5890760000000004
	.quad	0x3ff32b90a7829069              # double 1.1981360000000001
	.quad	0x3ff5a0999dcb5782              # double 1.351709
	.quad	0x3ff8ac5b078d92fb              # double 1.542079
	.quad	0x40230736ef8055fc              # double 9.5140910000000005
	.quad	0x4023e670e2c12ad8              # double 9.9500799999999998
	.quad	0x3ff4146a1a500d5f              # double 1.2549840000000001
	.quad	0x4017ef9a8cdea034              # double 5.9839880000000001
	.quad	0x40004e50c5eb313c              # double 2.0382400000000001
	.quad	0x401794ce8101f31f              # double 5.8953189999999998
	.quad	0x3fede111276fb092              # double 0.933724
	.quad	0x4001a008637bd05b              # double 2.203141
	.quad	0x3ffab2db1e9f2778              # double 1.668666
	.quad	0x402151049235f80a              # double 8.6582380000000008
	.quad	0x4023b38c9752977d              # double 9.8506820000000008
	.quad	0x3ffa8449dbec2481              # double 1.657297
	.quad	0x3ff37d8be7296f65              # double 1.218151
	.quad	0x4018c6a337a80cfa              # double 6.1939820000000001
	.quad	0x401786f7e3d1cc10              # double 5.8818049999999999
	.quad	0x400001f31f46ed24              # double 2.0009519999999998
	.quad	0x400f38dbcec84f90              # double 3.9027630000000002
	.quad	0x401ec5e99e94ab1d              # double 7.6932739999999997
	.quad	0x401c87b5286b5914              # double 7.1325269999999996
	.quad	0x4016ddaceee0f3cb              # double 5.7164799999999998
	.quad	0x4008e909aed56b01              # double 3.113788
	.quad	0x4009071fff79c843              # double 3.128479
	.quad	0x4007ebd66277c45d              # double 2.9901550000000001
	.quad	0x40163575c0767d35              # double 5.5522070000000001
	.quad	0x3ff691b93037d630              # double 1.410577
	.quad	0x4020f2d8a116659d              # double 8.4743089999999999
	.quad	0x401fb7daa4fca42b              # double 7.929545
	.quad	0x40156d75e2046c76              # double 5.3568949999999997
	.quad	0x4014e0c9539b8887              # double 5.2195179999999999
	.quad	0x401959491f2dc2b1              # double 6.3371930000000001
	.quad	0x4009eecc814d727a              # double 3.2416010000000002
	.quad	0x40190d55e6bc621b              # double 6.2630229999999996
	.quad	0x4015078d92fb19e7              # double 5.2573759999999998
	.quad	0x4013d51266341180              # double 4.9580780000000004
	.quad	0x400ac358afc47e4a              # double 3.3453840000000001
	.quad	0x401f7d6777079e5a              # double 7.872465
	.quad	0x401873215fcc1872              # double 6.1124320000000001
	.quad	0x401add4fdf3b645a              # double 6.7161249999999999
	.quad	0x4003bfbe76c8b439              # double 2.4686249999999998
	.quad	0x3ff5131b9b66f933              # double 1.3171649999999999
	.quad	0x4015e90795f676ea              # double 5.4775679999999998
	.quad	0x401f64855da27286              # double 7.8481649999999998
	.quad	0x401a0f22c01e68a1              # double 6.5147810000000002
	.quad	0x400492018a43bb41              # double 2.5712920000000001
	.quad	0x400ce3e4abe6a338              # double 3.6112760000000002
	.quad	0x40219d07e9d94d0e              # double 8.8067010000000003
	.quad	0x40178fe75bc44bf5              # double 5.8905310000000002
	.quad	0x4023249539b88872              # double 9.5714509999999997
	.quad	0x3ffd35dedf1e0829              # double 1.8256520000000001
	.quad	0x401179fb1e18efbb              # double 4.369122
	.quad	0x4022ad7342edbb5a              # double 9.3387700000000002
	.quad	0x40219d41b75a74c1              # double 8.8071420000000007
	.quad	0x4021a75caf2d7f95              # double 8.8268789999999999
	.quad	0x401c49b38d60a633              # double 7.071974
	.quad	0x4004fa376922d949              # double 2.6221760000000001
	.quad	0x401b8a4ebdd334c6              # double 6.8850660000000001
	.quad	0x401fc7e23f24d8fd              # double 7.9451989999999996
	.quad	0x400611526d8b1dd6              # double 2.7584580000000001
	.quad	0x4013cf1737542a24              # double 4.9522370000000002
	.quad	0x3ff835536933a040              # double 1.5130189999999999
	.quad	0x40198ce5710880d8              # double 6.387594
	.quad	0x3f7e6256366d7a57              # double 0.0074180000000000001
	.quad	0x400949835158b828              # double 3.160895
	.quad	0x40009b48909289db              # double 2.0758220000000001
	.quad	0x3ff72378ab0c88a4              # double 1.4461599999999999
	.quad	0x400ee17a02fb5d03              # double 3.860096
	.quad	0x401f93d8e0008638              # double 7.8943820000000002
	.quad	0x401daadd590c0ad0              # double 7.4168599999999998
	.quad	0x401759e1b089a027              # double 5.8377749999999997
	.quad	0x401c388df37329c3              # double 7.0552289999999998
	.quad	0x401e249731098d47              # double 7.5357329999999995
	.quad	0x401ec4cdfaca361a              # double 7.6921920000000004
	.quad	0x40195cbb7f9d6f11              # double 6.3405589999999998
	.quad	0x401c6334c5da6a44              # double 7.0968809999999998
	.quad	0x40171c79b34a44c8              # double 5.7778080000000003
	.quad	0x400d64e9c4545847              # double 3.674274
	.quad	0x4001b060bb2bba99              # double 2.211122
	.quad	0x3ff70c3d25247cb7              # double 1.440488
	.quad	0x4004f3879c4113c7              # double 2.6189110000000002
	.quad	0x400bdb71758e2196              # double 3.4821499999999999
	.quad	0x401f0f2a5a469d73              # double 7.7648099999999997
	.quad	0x3ff73fa7eb6bf445              # double 1.453041
	.quad	0x3fe9c25aee631f8a              # double 0.804975
	.quad	0x4018cc36113404ea              # double 6.1994249999999997
	.quad	0x400d73d9ec700043              # double 3.681568
	.quad	0x401c20e7ff583a54              # double 7.0321350000000002
	.quad	0x3fd7a5b0ff10ecb7              # double 0.36948799999999998
	.quad	0x401b018efbb0e5e6              # double 6.7515219999999996
	.quad	0x4011ec95bff04578              # double 4.4810400000000001
	.quad	0x4004fc2b94d94079              # double 2.6231300000000002
	.quad	0x3fff954b8bef8ceb              # double 1.973949
	.quad	0x401e58954a7f8013              # double 7.5865070000000001
	.quad	0x4014248ba83f4eca              # double 5.0356889999999996
	.quad	0x402131437c5692b4              # double 8.5962180000000003
	.quad	0x40150e5eaab04253              # double 5.2640330000000004
	.quad	0x40192917507e9d95              # double 6.2901280000000002
	.quad	0x40236ca276b7ed42              # double 9.7121770000000005
	.quad	0x3f9737542a23bff9              # double 0.022672000000000001
	.quad	0x4005a11f4f50a02c              # double 2.7036730000000002
	.quad	0x4010be279dd3bafe              # double 4.1856980000000004
	.quad	0x4022c72d5e071c54              # double 9.389018
	.quad	0x3ff01e54b48d3ae7              # double 1.0074050000000001
	.quad	0x401b5b7bf1e8e608              # double 6.83934
	.quad	0x40169be0589acbc9              # double 5.6522230000000002
	.quad	0x4011b0d4562e09ff              # double 4.4226850000000004
	.quad	0x3ff710d49949e881              # double 1.4416089999999999
	.quad	0x3fc877ee4e26d480              # double 0.19116
	.quad	0x4019dab862b27cbf              # double 6.4635939999999996
	.quad	0x401db054ef459d99              # double 7.422199
	.quad	0x4013db6d86ec17ec              # double 4.9642850000000003
	.quad	0x4018386a4ca4f441              # double 6.0550930000000003
	.quad	0x4022110a137f38c5              # double 9.0332799999999995
	.quad	0x401ef51e321a2e7f              # double 7.7393729999999996
	.quad	0x401eb5ddd2ae8e1d              # double 7.6776039999999996
	.quad	0x400808954a7f8013              # double 3.0041910000000001
	.quad	0x400c05532617c1be              # double 3.5026000000000002
	.quad	0x401ea7b6fe2e6ea8              # double 7.6637839999999997
	.quad	0x40164db5d894812c              # double 5.5758890000000001
	.quad	0x4017486fcdee34fc              # double 5.8207389999999997
	.quad	0x3ff680c521dda05a              # double 1.4064380000000001
	.quad	0x40234015c209246c              # double 9.6251660000000001
	.quad	0x40064111276fb092              # double 2.781771
	.quad	0x401d54ce8101f31f              # double 7.3328189999999998
	.quad	0x40228c8301a79fed              # double 9.2744370000000007
	.quad	0x3ff75c4113c68662              # double 1.4600230000000001
	.quad	0x401fd70a808c825a              # double 7.9600010000000001
	.quad	0x401b28f605ab3aac              # double 6.7900010000000002
	.quad	0x3ffb30caa326e115              # double 1.6994119999999999
	.quad	0x3f957c4e2f37fbf0              # double 0.020982000000000001
	.quad	0x401589db22d0e560              # double 5.3846249999999998
	.quad	0x401a7d1782d38477              # double 6.62216
	.quad	0x401a34a6223e186a              # double 6.5514150000000004
	.quad	0x401f110dbf0563ed              # double 7.7666539999999999
	.quad	0x401107a89331a08c              # double 4.257479
	.quad	0x4017c1a1db877ab3              # double 5.9390939999999999
	.quad	0x4019375a31a4bdba              # double 6.304055
	.quad	0x400650e66cb10343              # double 2.7895020000000001
	.quad	0x4022ceaca7935760              # double 9.4036609999999996
	.quad	0x3feab8e6d15ad107              # double 0.83507100000000001
	.quad	0x402351e5e2478855              # double 9.6599570000000003
	.quad	0x401747d2c7b890d6              # double 5.8201400000000003
	.quad	0x402065b877ab3248              # double 8.1986729999999994
	.quad	0x3ffa09ce4a7b4e55              # double 1.627394
	.quad	0x4004e8e68e3ef284              # double 2.613721
	.quad	0x401fbcea28fe260b              # double 7.9344869999999998
	.quad	0x4010e8858ff75968              # double 4.2270719999999997
	.quad	0x40053c896dd26b72              # double 2.6545589999999999
	.quad	0x4010425dd095af29              # double 4.0648109999999997
	.quad	0x4020c3484d76ab58              # double 8.3814109999999999
	.quad	0x402133d102bc72e2              # double 8.6012039999999992
	.quad	0x4003d5568e820e63              # double 2.4791690000000002
	.quad	0x4018646b26bf876a              # double 6.0980650000000001
	.quad	0x40229b5675579af2              # double 9.3033940000000008
	.quad	0x3fc2f262888b545c              # double 0.14802199999999999
	.quad	0x401e106034f3fd93              # double 7.5159919999999997
	.quad	0x40078c80c73abc94              # double 2.9436049999999998
	.quad	0x400d92a411c2a023              # double 3.6966019999999999
	.quad	0x401544b48d3ae686              # double 5.3170950000000001
	.quad	0x4016f96312f4cf4a              # double 5.7435419999999997
	.quad	0x3ff86595bbbe8790              # double 1.5248010000000001
	.quad	0x3fed803cd141a693              # double 0.92190399999999995
	.quad	0x40155986338b47c7              # double 5.3374259999999998
	.quad	0x402200cf1800a7c6              # double 9.0015800000000006
	.quad	0x4004eef34d6a161e              # double 2.6166749999999999
	.quad	0x401583d9a95421c0              # double 5.3787599999999998
	.quad	0x4000f2220bc382a1              # double 2.1182289999999999
	.quad	0x401aaf7f498c3b0c              # double 6.6713839999999998
	.quad	0x4005f3ca31e7d999              # double 2.7440380000000002
	.quad	0x401bf19da9c99286              # double 6.9859530000000003
	.quad	0x4016f0ccff21b3af              # double 5.7351570000000001
	.quad	0x402363cec84f8f8a              # double 9.6949369999999995
	.quad	0x40227360285ec3db              # double 9.2253430000000005
	.quad	0x4021748301a79fed              # double 8.7275620000000007
	.quad	0x4020bf1758e21965              # double 8.3732249999999997
	.quad	0x401c0ea52ef911cf              # double 7.0143019999999998
	.quad	0x401ca77c45cbbc2c              # double 7.1635600000000004
	.quad	0x400aa3e39f77292c              # double 3.3300239999999999
	.quad	0x40210e76427c7c52              # double 8.5282459999999993
	.quad	0x4011b62456f75d9a              # double 4.4278729999999999
	.quad	0x4017ea087ca643cc              # double 5.978548
	.quad	0x40090b1bbcf4e875              # double 3.1304240000000001
	.quad	0x4019eb068123810f              # double 6.4795170000000004
	.quad	0x40112b039ef0f16f              # double 4.2920059999999998
	.quad	0x40229ead70e6f2e9              # double 9.3099170000000004
	.quad	0x400b2039abf33871              # double 3.3907349999999998
	.quad	0x40046f61ed5ae1ce              # double 2.554386
	.quad	0x401a28bc59b8023a              # double 6.5397809999999996
	.quad	0x40205e1847f56217              # double 8.1837789999999995
	.quad	0x400209bf9c62a1b6              # double 2.2547600000000001
	.quad	0x4015dbe9424e5929              # double 5.4647569999999996
	.quad	0x4015ee9a2c669058              # double 5.4830100000000002
	.quad	0x402065ee568a5050              # double 8.1990839999999992
	.quad	0x400e8b8e086bdf4c              # double 3.8181419999999999
	.quad	0x3fe8c983d790752e              # double 0.77459900000000004
	.quad	0x3ff3df394b7b2895              # double 1.2419979999999999
	.quad	0x3fd18448cf7caa76              # double 0.27369900000000003
	.quad	0x400a9d8f92af9a8d              # double 3.3269340000000001
	.quad	0x40181460aa64c2f8              # double 6.0198999999999998
	.quad	0x40066747d805e5f3              # double 2.80043
	.quad	0x4017ef06f6944674              # double 5.9834250000000004
	.quad	0x4005e88509bf9c63              # double 2.7385350000000002
	.quad	0x3ffb44eb56fb8f58              # double 1.704326
	.quad	0x3ff209fc6da44849              # double 1.1274379999999999
	.quad	0x4021e536501e2585              # double 8.9476800000000001
	.quad	0x401dd136a400fba9              # double 7.4543100000000004
	.quad	0x4010495e17e34b94              # double 4.0716479999999997
	.quad	0x400c078290689870              # double 3.5036670000000001
	.quad	0x4011a4ead0c3d252              # double 4.4110519999999998
	.quad	0x4021963e4abe6a33              # double 8.7934439999999991
	.quad	0x3fee03f705857aff              # double 0.93798400000000004
	.quad	0x40202ac3c9eecbfb              # double 8.0835249999999998
	.quad	0x40138162f166e009              # double 4.8763540000000001
	.quad	0x40163ee9dd7ecbb8              # double 5.561439
	.quad	0x401a0bb7f9d6f113              # double 6.511444
	.quad	0x401e7a6266fd651b              # double 7.6195159999999999
	.quad	0x401006577531db44              # double 4.0061929999999997
	.quad	0x3fdccd31769a9110              # double 0.45002399999999998
	.quad	0x4012931c219eb639              # double 4.643662
	.quad	0x400d3139c94f69cb              # double 3.6490360000000002
	.quad	0x4015172fba01eeee              # double 5.2726430000000004
	.quad	0x40219df7403dddb1              # double 8.8085269999999998
	.quad	0x3f9a85caafbc1ace              # double 0.025901
	.quad	0x401b52cecc814d72              # double 6.8308669999999996
	.quad	0x40180a0663c74fb5              # double 6.0097899999999997
	.quad	0x401708644523f67f              # double 5.7581949999999997
	.quad	0x3fd0fcf3dc054ef4              # double 0.26543899999999998
	.quad	0x40180427c7c5260f              # double 6.0040579999999997
	.quad	0x4013d743a647fdc6              # double 4.9602190000000004
	.quad	0x4009732830a0b1bc              # double 3.1812290000000001
	.quad	0x4009b6f4384ba0e8              # double 3.2143329999999999
	.quad	0x3fffe6aa8eb46349              # double 1.9938149999999999
	.quad	0x401576d3b6cbd988              # double 5.3660420000000002
	.quad	0x4020711105e1c151              # double 8.2208330000000007
	.quad	0x401fcd1f1cfbb949              # double 7.9503139999999996
	.quad	0x401444e26d4801f7              # double 5.0672699999999997
	.quad	0x3fc2d20afa2f05a7              # double 0.147035
	.quad	0x400bbc33f85510d4              # double 3.4668960000000002
	.quad	0x4014efe86833c600              # double 5.2342849999999999
	.quad	0x4022d8c1fc8f3238              # double 9.4233550000000008
	.quad	0x4022b40d90e23af3              # double 9.3516659999999998
	.quad	0x4004afe9b7bf1e8e              # double 2.5858949999999998
	.quad	0x4017ca209aaa3ad2              # double 5.9473900000000004
	.quad	0x40076ff3ade225fa              # double 2.9296639999999998
	.quad	0x4019c5d18090b418              # double 6.4431820000000002
	.quad	0x3ff036f6d7625205              # double 1.0134190000000001
	.quad	0x3ff1d1351159c497              # double 1.1135759999999999
	.quad	0x4022024a6a875d57              # double 9.0044740000000001
	.quad	0x401d80d3cff64cf9              # double 7.3758080000000001
	.quad	0x401a08be2f7b17ce              # double 6.5085379999999997
	.quad	0x40216c6759ab6d01              # double 8.7117260000000005
	.quad	0x40210685db76b3bc              # double 8.5127400000000008
	.quad	0x4017aacf7446f9ba              # double 5.9168070000000004
	.quad	0x400a87304039abf3              # double 3.3160099999999999
	.quad	0x4014abf0dc768dfc              # double 5.1679110000000001
	.quad	0x3ffb592428d434a0              # double 1.709263
	.quad	0x40210b293d102bc7              # double 8.5217989999999997
	.quad	0x401a108bb906466b              # double 6.5161579999999999
	.quad	0x40200931ec0b5675              # double 8.0179589999999994
	.quad	0x401e79a3d2d87f88              # double 7.6187889999999995
	.quad	0x40196b9628cbd124              # double 6.3550649999999997
	.quad	0x3fe2907314ca9260              # double 0.58013300000000001
	.quad	0x4015cc29bf162ae5              # double 5.4493780000000003
	.quad	0x40239b4a44c7b02d              # double 9.8033009999999993
	.quad	0x402021be09bb6aa5              # double 8.0659030000000005
	.quad	0x4010802c4d65e460              # double 4.1251689999999996
	.quad	0x3fb010a569b17482              # double 0.062754000000000004
	.quad	0x40192899392189be              # double 6.2896470000000004
	.quad	0x3ffa55bee3d5fdce              # double 1.645934
	.quad	0x3fff66efc371da38              # double 1.962631
	.quad	0x402391463cfb3312              # double 9.7837390000000006
	.quad	0x3fe6bd512ec6bce8              # double 0.71060999999999996
	.quad	0x3fe62b302f72b453              # double 0.69277200000000005
	.quad	0x401def61672324c8              # double 7.4837699999999998
	.quad	0x40112699c7bcc294              # double 4.2876960000000004
	.quad	0x401ee676ea422899              # double 7.7250629999999995
	.quad	0x401d8e26d4801f75              # double 7.3888199999999999
	.quad	0x3fe3f08ede54b48d              # double 0.62311499999999997
	.quad	0x4022176db940fece              # double 9.0457590000000003
	.quad	0x4013815fcc1871e7              # double 4.8763420000000002
	.quad	0x40058e74f2f123c4              # double 2.6945589999999999
	.quad	0x40206bc2dadb8349              # double 8.2104710000000001
	.quad	0x3fd84430b178b370              # double 0.379162
	.quad	0x3fe3645c358afc48              # double 0.60600100000000001
	.quad	0x401cb7dbf487fcb9              # double 7.1795499999999999
	.quad	0x40239e4b662fdfc2              # double 9.8091690000000007
	.quad	0x400b497396d0917d              # double 3.4108649999999998
	.quad	0x401d1eaa2a0a9585              # double 7.2799459999999998
	.quad	0x4021f84449dbec25              # double 8.9848960000000009
	.quad	0x402074dfce3150db              # double 8.2282700000000002
	.quad	0x3fd29fa54c554328              # double 0.29099399999999997
	.quad	0x3fea461b6d43d039              # double 0.82105799999999995
	.quad	0x3ff537e6f71a7e31              # double 1.3261480000000001
	.quad	0x4011b3c42a66dbd7              # double 4.4255529999999998
	.quad	0x40236487b99d4520              # double 9.6963480000000004
	.quad	0x4010c59817b95a29              # double 4.1929629999999998
	.quad	0x40223eff3ade2260              # double 9.1230410000000006
	.quad	0x40192e2a3cea6c1a              # double 6.295083
	.quad	0x4004dd82fd75e204              # double 2.6081599999999998
	.quad	0x4016a6b69db65ecc              # double 5.6628059999999998
	.quad	0x401688a7e73a365d              # double 5.6334530000000003
	.quad	0x4020088094e5d5b2              # double 8.0166059999999995
	.quad	0x3ff4fa908a265f0f              # double 1.3111729999999999
	.quad	0x3ffb1c49774256bd              # double 1.6944060000000001
	.quad	0x4022fa4cc6822ff1              # double 9.4888670000000008
	.quad	0x400b70fc71d60631              # double 3.4301689999999998
	.quad	0x40047ba5e353f7cf              # double 2.5603750000000001
	.quad	0x4020feb18116ebd5              # double 8.4974480000000003
	.quad	0x4010798dcdb37c9a              # double 4.1187050000000003
	.quad	0x4013412513b5bf6a              # double 4.813618
	.quad	0x3fcfa81dc0db2703              # double 0.24731800000000001
	.quad	0x40077a48b6523704              # double 2.9347089999999998
	.quad	0x3fd4229a5ebb773a              # double 0.314612
	.quad	0x400fb0121682f944              # double 3.9609719999999999
	.quad	0x3ff7d4e09784ec63              # double 1.4894719999999999
	.quad	0x4011d0f94c87980f              # double 4.4540759999999997
	.quad	0x40133641b328b6d8              # double 4.8029849999999996
	.quad	0x40096bf8769ec2ce              # double 3.1777199999999999
	.quad	0x400317e23f24d8fd              # double 2.3866619999999998
	.quad	0x400bd0fe047d3d43              # double 3.4770470000000002
	.quad	0x4023047c30d306a3              # double 9.5087600000000005
	.quad	0x3ffca2845996744b              # double 1.789677
	.quad	0x40134c20d5629d84              # double 4.824344
	.quad	0x40045c2c1b10fd7e              # double 2.5450059999999999
	.quad	0x4013813f4a98aa86              # double 4.8762179999999997
	.quad	0x400a815db3397dd0              # double 3.313167
	.quad	0x40183be2f7b17ce5              # double 6.0584829999999998
	.quad	0x40153646ae3a3a8e              # double 5.3030039999999996
	.quad	0x401b378d4fdf3b64              # double 6.8042499999999997
	.quad	0x4023cb85a4f00ef1              # double 9.8975039999999996
	.quad	0x400823ff69014b5a              # double 3.0175770000000002
	.quad	0x4015dd38476f2a5a              # double 5.4660349999999998
	.quad	0x401a989dadfb506e              # double 6.6490390000000001
	.quad	0x4007c61b6d43d039              # double 2.9717319999999998
	.quad	0x4021895a294141ea              # double 8.7682660000000006
	.quad	0x402125dd2ae8e1d6              # double 8.5739529999999995
	.quad	0x401f7844d013a92a              # double 7.8674499999999998
	.quad	0x4022ec080f98fa37              # double 9.4609989999999992
	.quad	0x3fcc0bd44998d046              # double 0.219111
	.quad	0x3ff51197a24894c4              # double 1.3167949999999999
	.quad	0x4015bf86e3b46fdf              # double 5.4370380000000003
	.quad	0x3ffe2c061847f562              # double 1.885748
	.quad	0x401a0cbbc2b94d94              # double 6.512435
	.quad	0x4016224894c447c3              # double 5.53348
	.quad	0x4023a709b738e6d1              # double 9.8262459999999993
	.quad	0x3ff76c7325918a01              # double 1.4639770000000001
	.quad	0x400b61bfbdf090f7              # double 3.4227289999999999
	.quad	0x400efef49cf56ead              # double 3.8744900000000002
	.quad	0x4015b2adc4c9c90c              # double 5.4244909999999997
	.quad	0x4012d9ca5bd944aa              # double 4.7126859999999997
	.quad	0x401dc8650e779208              # double 7.4456980000000001
	.quad	0x401544e618ce2d1f              # double 5.3172839999999999
	.quad	0x401496801711947d              # double 5.146973
	.quad	0x40237efcdee34fc6              # double 9.7480229999999999
	.quad	0x3ff8af4491298890              # double 1.5427900000000001
	.quad	0x4013a0e5e679463d              # double 4.907127
	.quad	0x4010b6573215fcc2              # double 4.1780670000000004
	.quad	0x402144d6e47dc37a              # double 8.6344519999999996
	.quad	0x4005a4d338f79852              # double 2.7054809999999998
	.quad	0x3ff5d99780baa583              # double 1.365623
	.quad	0x4018dcb5bb384fd3              # double 6.2155370000000003
	.quad	0x40110fae3608d089              # double 4.2653129999999999
	.quad	0x401a013ad5bee3d6              # double 6.501201
	.quad	0x400904f97edc7ef1              # double 3.1274289999999998
	.quad	0x40108c33721d53ce              # double 4.1369150000000001
	.quad	0x4019ee41919ac797              # double 6.482672
	.quad	0x401603a109d0635a              # double 5.5035439999999998
	.quad	0x40025756c93a7115              # double 2.292646
	.quad	0x4022ac4e7253da73              # double 9.3365360000000006
	.quad	0x3fe4c7baa9b499d0              # double 0.64938099999999999
	.quad	0x4019f925fe974a34              # double 6.493309
	.quad	0x401f8d145d851655              # double 7.8877730000000001
	.quad	0x3fb0de6ddf00abf7              # double 0.065893999999999994
	.quad	0x400461d8622c4502              # double 2.5477759999999998
	.quad	0x4016f86e7e62dc6e              # double 5.7426089999999999
	.quad	0x401bd7229e90795f              # double 6.9600929999999996
	.quad	0x4022978af3e468cb              # double 9.2959820000000004
	.quad	0x4019444ed6fda837              # double 6.3167070000000001
	.quad	0x401c25fa22706d50              # double 7.0370869999999996
	.quad	0x40235f11947cfa27              # double 9.6856810000000006
	.quad	0x400756dc1a47a9e3              # double 2.9174120000000001
	.quad	0x4020da3465625a68              # double 8.4261809999999997
	.quad	0x4018aa6612839043              # double 6.1664050000000001
	.quad	0x40148679cc74b839              # double 5.1313240000000002
	.quad	0x3ffa33300de4c511              # double 1.637497
	.quad	0x401ace3da2f8bdec              # double 6.7014069999999997
	.quad	0x4009eab81f969e3d              # double 3.2396090000000002
	.quad	0x4021103afb7e9100              # double 8.5317000000000007
	.quad	0x4020570c996b7671              # double 8.1700180000000007
	.quad	0x4016f3ce2089e343              # double 5.7380909999999998
	.quad	0x4022dd464dc22ab2              # double 9.4321769999999994
	.quad	0x401783bb83cf2cf9              # double 5.8786449999999997
	.quad	0x4021892d98bf7f06              # double 8.7679259999999992
	.quad	0x3ff7adc5d6388659              # double 1.4799249999999999
	.quad	0x401383ffef39085f              # double 4.8789059999999997
	.quad	0x4020f7eb28d8665e              # double 8.484216
	.quad	0x40210830a0b1bbcf              # double 8.5159959999999995
	.quad	0x4023f82363b25700              # double 9.9846450000000004
	.quad	0x3fa5c91d14e3bcd3              # double 0.042549999999999998
	.quad	0x402237ad080b673c              # double 9.1087419999999994
	.quad	0x402390240b780347              # double 9.7815250000000002
	.quad	0x3fe4cd6e47dc37a4              # double 0.65007700000000002
	.quad	0x4022df85f8d2e515              # double 9.4365690000000004
	.quad	0x401008d79d0a6762              # double 4.0086349999999999
	.quad	0x3ff163f9a49c2c1b              # double 1.086908
	.quad	0x40104c371da37ef6              # double 4.0744290000000003
	.quad	0x3fc437d63022dd7b              # double 0.15795400000000001
	.quad	0x400386f7a0b5ed8d              # double 2.4409019999999999
	.quad	0x3fedab96f21f6cad              # double 0.92719600000000002
	.quad	0x3ff0db8023a6ce36              # double 1.0535890000000001
	.quad	0x401d623c85c24c40              # double 7.3459339999999997
	.quad	0x40226eb6390c9108              # double 9.216234
	.quad	0x40220dd701d9f4d3              # double 9.0270309999999991
	.quad	0x4001aa71de69ad43              # double 2.2082250000000001
	.quad	0x3ff4cf28c79f6662              # double 1.300576
	.quad	0x400fd2f76e6106ab              # double 3.978011
	.quad	0x4021da97396d0918              # double 8.9269350000000003
	.quad	0x4015b0318b934699              # double 5.4220639999999998
	.quad	0x4004ed81adea8976              # double 2.6159699999999999
	.quad	0x3ff097f62b6ae7d5              # double 1.0370999999999999
	.quad	0x40058b441bb8c32b              # double 2.6930010000000002
	.quad	0x401a846d82ba5a04              # double 6.6293240000000004
	.quad	0x402323660e51d25b              # double 9.5691380000000005
	.quad	0x3ffde08e15011905              # double 1.8673230000000001
	.quad	0x3fff5611ba3ca750              # double 1.9585129999999999
	.quad	0x40178ce789e774ef              # double 5.8876020000000002
	.quad	0x4005917efe0ce0b9              # double 2.696043
	.quad	0x3fff1804d9839475              # double 1.9433640000000001
	.quad	0x40120b9628cbd124              # double 4.5113149999999997
	.quad	0x401e197bfa4c61d8              # double 7.5248869999999996
	.quad	0x3fe35ce39b456b44              # double 0.60508899999999999
	.quad	0x4021df3d188f42ff              # double 8.9360130000000009
	.quad	0x4015ab0c4588a04d              # double 5.4170389999999999
	.quad	0x401cda00192a7371              # double 7.2128909999999999
	.quad	0x4010eb341e14bdfd              # double 4.2296909999999999
	.quad	0x401448eda22f6a51              # double 5.0712190000000001
	.quad	0x4000a567125dd096              # double 2.0807630000000001
	.quad	0x4005d15a4acf312b              # double 2.727223
	.quad	0x4011394af4f0d845              # double 4.3059500000000002
	.quad	0x4021805425f20210              # double 8.7506419999999991
	.quad	0x400298c75c4a83b2              # double 2.3245990000000001
	.quad	0x40203c845132f87b              # double 8.1181970000000003
	.quad	0x401841d755bccaf7              # double 6.064298
	.quad	0x4023091b3f20a73f              # double 9.5177859999999991
	.quad	0x40090c471b478423              # double 3.130995
	.quad	0x400efc0980b24207              # double 3.873065
	.quad	0x4021540f23897204              # double 8.6641779999999997
	.quad	0x3fcc0b3d4ae429e1              # double 0.21909300000000001
	.quad	0x4020a11a975afaf8              # double 8.3146559999999994
	.quad	0x4023bb059641f645              # double 9.8652770000000007
	.quad	0x40151463cfb3311a              # double 5.2699119999999997
	.quad	0x401425c0b9991362              # double 5.0368680000000001
	.quad	0x40175e80bed740c4              # double 5.8422879999999999
	.quad	0x400f1e03f705857b              # double 3.889656
	.quad	0x40017a58f7121ab5              # double 2.1847400000000001
	.quad	0x4011a07fed20296b              # double 4.4067379999999998
	.quad	0x40212b0e3cd9a522              # double 8.5840929999999993
	.quad	0x3ffd4fb97bb73083              # double 1.8319639999999999
	.quad	0x3fe9982ecaeea63b              # double 0.79982699999999995
	.quad	0x4012feccc46950fc              # double 4.7488279999999996
	.quad	0x401be76d117b5287              # double 6.9760020000000003
	.quad	0x4014576640a6b93d              # double 5.0853510000000002
	.quad	0x4013985271bcdbbe              # double 4.898752
	.quad	0x402207aa8a82a561              # double 9.0149729999999995
	.quad	0x40106dc6e2a80065              # double 4.1072040000000003
	.quad	0x3ff1fc2224edf612              # double 1.1240559999999999
	.quad	0x4023e618ac9f2fdc              # double 9.9494070000000007
	.quad	0x40066d5842b734b5              # double 2.803391
	.quad	0x3ff275f0b28522ea              # double 1.153794
	.quad	0x401a9be3c105186e              # double 6.6522360000000003
	.quad	0x400e5d65a14488c6              # double 3.795604
	.quad	0x3ff7de529bae46d0              # double 1.491778
	.quad	0x401b5d8f92af9a8d              # double 6.8413680000000001
	.quad	0x3fe517df19d66adb              # double 0.65916399999999997
	.quad	0x4017c6fb8f57f738              # double 5.9443190000000001
	.quad	0x401b8e5753a3ec03              # double 6.889005
	.quad	0x40101a71de69ad43              # double 4.0258250000000002
	.quad	0x400180b45ae5ffa4              # double 2.1878440000000001
	.quad	0x4017f428d434a01b              # double 5.9884370000000002
	.quad	0x400c6d6fda836eb5              # double 3.553436
	.quad	0x401be95208e15012              # double 6.9778520000000004
	.quad	0x401020a350d2806b              # double 4.031873
	.quad	0x401ef8522ea0fd3b              # double 7.7425009999999998
	.quad	0x401db227d028a1e0              # double 7.4239800000000002
	.quad	0x40230d6a37ac3eb8              # double 9.5262010000000003
	.quad	0x400eae11dbca9692              # double 3.8349950000000002
	.quad	0x4021f4925785f8d3              # double 8.9776790000000002
	.quad	0x4001c16df3f96180              # double 2.2194479999999999
	.quad	0x400630b73d188f43              # double 2.773787
	.quad	0x401a4c4545846e8f              # double 6.5744829999999999
	.quad	0x4020da784a9478c8              # double 8.4266989999999993
	.quad	0x401063882278d0cc              # double 4.0971989999999998
	.quad	0x400e99d66adb402d              # double 3.825116
	.quad	0x3fe931f46ed245b3              # double 0.78734800000000005
	.quad	0x401b024c404a72eb              # double 6.7522440000000001
	.quad	0x40131bedb7281fda              # double 4.7772740000000002
	.quad	0x3ffd2e04c0592104              # double 1.8237350000000001
	.quad	0x3fe88c9107faa045              # double 0.76715900000000004
	.quad	0x3ff18b1cc9646280              # double 1.096463
	.quad	0x402156731d2e0e30              # double 8.6688469999999995
	.quad	0x4020d462e4d1a650              # double 8.4148169999999993
	.quad	0x4016112cadddf43c              # double 5.5167719999999996
	.quad	0x4005a6a6e32e3822              # double 2.7063730000000001
	.quad	0x400eeaa5c5f7c676              # double 3.8645740000000002
	.quad	0x3ff8bd60e94ee393              # double 1.546235
	.quad	0x3ff9f5a31a4bdba1              # double 1.6224700000000001
	.quad	0x400c10fe8ab4fa48              # double 3.5082979999999999
	.quad	0x401504983d790753              # double 5.2544870000000001
	.quad	0x3fb53953dea465a5              # double 0.082905999999999994
	.quad	0x401d9454de7ea5f8              # double 7.3948549999999997
	.quad	0x401028ca3e7d1351              # double 4.0398339999999999
	.quad	0x4010db063e07a28c              # double 4.2138910000000003
	.quad	0x401de821af7d30ad              # double 7.4766909999999998
	.quad	0x40214992c8c50050              # double 8.6436980000000005
	.quad	0x3fc694dd72367e41              # double 0.17641799999999999
	.quad	0x40115b12d3415b14              # double 4.3389389999999999
	.quad	0x40003e2c55c96031              # double 2.0303580000000001
	.quad	0x3fd9b93ccd0fe8ab              # double 0.40193099999999998
	.quad	0x401b874927913e81              # double 6.8821149999999998
	.quad	0x4017ebbe0157eed4              # double 5.9802169999999997
	.quad	0x400dd4af4f0d844d              # double 3.72885
	.quad	0x40027a32b12d3416              # double 2.3096670000000001
	.quad	0x401e64a0a0f4d7ae              # double 7.5982690000000002
	.quad	0x401397d84901d191              # double 4.8982859999999997
	.quad	0x400d5cafb3b75211              # double 3.6702569999999999
	.quad	0x4020f7c0d2c386d3              # double 8.4838930000000001
	.quad	0x3ffbbdbb16c1e365              # double 1.7338210000000001
	.quad	0x402361ed17c5ef63              # double 9.691262
	.quad	0x401164199fe43676              # double 4.3477540000000001
	.quad	0x40206e1e2de87097              # double 8.2150739999999995
	.quad	0x400b7bd3804534bd              # double 3.4354619999999998
	.quad	0x3ffe19a73b42cc2d              # double 1.8812629999999999
	.quad	0x40146adc4c9c90c5              # double 5.1043560000000001
	.quad	0x4019da808c8259e2              # double 6.463381
	.quad	0x401bb4e11dbca969              # double 6.9266399999999999
	.quad	0x401ffd188f42fe82              # double 7.9971639999999997
	.quad	0x40150ea39c51dabe              # double 5.2642959999999999
	.quad	0x4003bc53f39d1b2e              # double 2.4669569999999998
	.quad	0x401b2c2656abde40              # double 6.7931150000000002
	.quad	0x3fe84f1800a7c5ac              # double 0.75965499999999996
	.quad	0x40137785729b280f              # double 4.8667199999999999
	.quad	0x40109008e9b38d61              # double 4.1406590000000003
	.quad	0x401b1a92e62131a9              # double 6.7759510000000001
	.quad	0x402184dc22ab25b3              # double 8.7594919999999998
	.quad	0x40229ddaad601ffb              # double 9.3083089999999995
	.quad	0x3fd17160956c0d6f              # double 0.27254499999999998
	.quad	0x401e80485a0be511              # double 7.6252760000000003
	.quad	0x4003e095f2452c5a              # double 2.484661
	.quad	0x4004307a6bd6e8b0              # double 2.5236710000000002
	.quad	0x40193c968943e100              # double 6.3091679999999997
	.quad	0x40157a7503b81b65              # double 5.3695870000000001
	.quad	0x4022219d451fc4c1              # double 9.0656529999999993
	.quad	0x40151f9ebe9c8861              # double 5.2808789999999997
	.quad	0x4019c7e414e7ee91              # double 6.4452059999999998
	.quad	0x4001a5ea24cc6823              # double 2.206013
	.quad	0x4017d5cfede97d07              # double 5.9588010000000002
	.quad	0x4019805a2d72ffd2              # double 6.3753440000000001
	.quad	0x401b60817fc7607c              # double 6.8442439999999998
	.quad	0x401594028e4fb97c              # double 5.3945410000000003
	.quad	0x4022a8c75c4a83b2              # double 9.3296460000000003
	.quad	0x3ffe74e54f7a9197              # double 1.9035390000000001
	.quad	0x3fa820817fc7607c              # double 0.047122999999999998
	.quad	0x4020d9667b5f1bef              # double 8.4246099999999995
	.quad	0x4019e3da2f8bdec6              # double 6.472512
	.quad	0x3ff076c9c0a8d21c              # double 1.0290010000000001
	.quad	0x4000c87d2c7b890d              # double 2.0978949999999998
	.quad	0x4021ca15336deb96              # double 8.8946930000000002
	.quad	0x3ff4be76c8b43958              # double 1.2965
	.quad	0x4003a2480e8c8abd              # double 2.4542389999999998
	.quad	0x402283f63c31df76              # double 9.2577379999999998
	.quad	0x401a90e560418937              # double 6.6414999999999997
	.quad	0x4013b0c49ba5e354              # double 4.922625
	.quad	0x3fc0a0232096787d              # double 0.129887
	.quad	0x40147e657b84db9c              # double 5.1234339999999996
	.quad	0x402333413986338b              # double 9.6001069999999995
	.quad	0x401941682f944242              # double 6.3138740000000002
	.quad	0x4005bbbf93ff25e5              # double 2.7166739999999998
	.quad	0x3ff1fb634dad31fd              # double 1.123874
	.quad	0x402329800a7c5ac4              # double 9.5810549999999992
	.quad	0x4021b153586ca8a0              # double 8.8463390000000004
	.quad	0x401380a0b1bbcf4f              # double 4.8756130000000004
	.quad	0x40178727dcbddb98              # double 5.8819879999999998
	.quad	0x40133c7000431bdf              # double 4.8090210000000004
	.quad	0x401a9737542a23c0              # double 6.647672
	.quad	0x401982f5dbb9cf9a              # double 6.377891
	.quad	0x40144765ba6efc37              # double 5.0697239999999999
	.quad	0x401b3ce4a7b4e54f              # double 6.8094659999999996
	.quad	0x4008c698bb4d4888              # double 3.0969709999999999
	.quad	0x400e965a14488c61              # double 3.8234140000000001
	.quad	0x4006078d0cc35ce2              # double 2.7536870000000002
	.quad	0x400f99c27e953155              # double 3.950078
	.quad	0x4015822c881e4713              # double 5.3771230000000001
	.quad	0x401dfc9ea9a3d2d8              # double 7.4966989999999995
	.quad	0x3febdcd91eeaa6d2              # double 0.87070899999999996
	.quad	0x4021af24b76f6d76              # double 8.8420769999999997
	.quad	0x40088dc0980b2420              # double 3.0692149999999998
	.quad	0x3ffcd1deefe4ffc9              # double 1.8012379999999999
	.quad	0x3fe9ed4a1ad6451c              # double 0.81021600000000004
	.quad	0x401611ac9afe1da8              # double 5.5172600000000003
	.quad	0x4023aca0e410b631              # double 9.8371650000000006
	.quad	0x3ffb78fffbce4218              # double 1.717041
	.quad	0x3fe3e612839042d9              # double 0.62183500000000003
	.quad	0x401280c67168f8e8              # double 4.6257570000000001
	.quad	0x40234be100607810              # double 9.6482010000000002
	.quad	0x40176dd26b723ee2              # double 5.8572480000000002
	.quad	0x40169398e9707182              # double 5.6441379999999999
	.quad	0x401fe8fb43d89ce5              # double 7.9775210000000003
	.quad	0x401b4089e34330d7              # double 6.8130259999999998
	.quad	0x40202d3b6cbd987c              # double 8.0883439999999993
	.quad	0x40106433d6c72192              # double 4.0978539999999999
	.quad	0x40196f5558212945              # double 6.3587239999999996
	.quad	0x3ffe4284dfce3151              # double 1.89124
	.quad	0x3fac1b75a74c09c4              # double 0.054897000000000001
	.quad	0x4022969ad42c3c9f              # double 9.2941500000000001
	.quad	0x3febe5eaab042529              # double 0.87181600000000004
	.quad	0x3fefe45a1cac0831              # double 0.99662499999999998
	.quad	0x3fd2a272862f598a              # double 0.29116500000000001
	.quad	0x40072b8b69552e30              # double 2.8962620000000001
	.quad	0x3ffb6e32e3821af8              # double 1.714404
	.quad	0x4015019e30014f8b              # double 5.2515799999999997
	.quad	0x40219bd9018e7579              # double 8.8043899999999997
	.quad	0x4021cf9aae6c8f75              # double 8.9054769999999994
	.quad	0x401207021d10b1ff              # double 4.5068440000000001
	.quad	0x3fe366ec9e236c16              # double 0.60631400000000002
	.quad	0x4015e94680171194              # double 5.4778079999999996
	.quad	0x4008a2c343b70ef5              # double 3.0794739999999998
	.quad	0x400b13a1d323fee3              # double 3.3845860000000001
	.quad	0x401e1a686e7e62dc              # double 7.5257889999999996
	.quad	0x401b24ab606b7aa2              # double 6.7858099999999997
	.quad	0x40118e91c8eabffd              # double 4.3892280000000001
	.quad	0x401d5ccfaeff5c6c              # double 7.3406359999999999
	.quad	0x400e8535c9e6687f              # double 3.8150439999999999
	.quad	0x401f9ecb74ddf86e              # double 7.9050729999999998
	.quad	0x3fb7b6672fba01ef              # double 0.092627000000000001
	.quad	0x3fe7bd20f2becedd              # double 0.74183699999999997
	.quad	0x3ffed12a94ff0026              # double 1.9260660000000001
	.quad	0x401bd95dd4c76d11              # double 6.9622719999999996
	.quad	0x40170068123810e9              # double 5.7503970000000004
	.quad	0x4010ee92d55a3a08              # double 4.2329819999999998
	.quad	0x4022087b352a8438              # double 9.0165649999999999
	.quad	0x401fd881a1554fbe              # double 7.9614320000000003
	.quad	0x4018a0c0f01fb82c              # double 6.1569859999999998
	.quad	0x4021422dd7a99fa1              # double 8.6292559999999998
	.quad	0x4001606748e47560              # double 2.172072
	.quad	0x402362f2734f82f5              # double 9.6932559999999998
	.quad	0x40166cd6c2efd439              # double 5.6062880000000002
	.quad	0x40217e748e475600              # double 8.7469830000000001
	.quad	0x40035fa43fe5c91d              # double 2.4217
	.quad	0x3ff8b1151611ba3d              # double 1.5432330000000001
	.quad	0x401c9eb18116ebd5              # double 7.1549740000000002
	.quad	0x401e83476295208e              # double 7.6282019999999999
	.quad	0x4014e14f483cafb4              # double 5.2200290000000003
	.quad	0x3ff829bcfd4bf099              # double 1.5101899999999999
	.quad	0x401f6b1e5c0b9991              # double 7.8546079999999998
	.quad	0x401c84d8fd5cb791              # double 7.129734
	.quad	0x401b90110a137f39              # double 6.8906900000000002
	.quad	0x400d668448cf7caa              # double 3.6750569999999998
	.quad	0x401bcf2495e17e35              # double 6.9522880000000002
	.quad	0x40188a1272c94b38              # double 6.134836
	.quad	0x401485de15ca6ca0              # double 5.1307299999999998
	.quad	0x400f3f5cf2495e18              # double 3.905939
	.quad	0x400fce5796bfca86              # double 3.9757530000000001
	.quad	0x401bc8f7db6e5040              # double 6.9462580000000003
	.quad	0x4023404af922962d              # double 9.625572
	.quad	0x402320bcdfefbf40              # double 9.5639409999999998
	.quad	0x3ffb4ed80a17b0f7              # double 1.7067490000000001
	.quad	0x401daec0f88333fd              # double 7.4206580000000004
	.quad	0x40153bcf4e874c90              # double 5.308408
	.quad	0x4011ed940789613d              # double 4.4820099999999998
	.quad	0x40113da9435ac8a3              # double 4.3102159999999996
	.quad	0x400770268900c522              # double 2.9297610000000001
	.quad	0x401072fba01eeed9              # double 4.1122880000000004
	.quad	0x402277c957cd466f              # double 9.2339579999999994
	.quad	0x4023ec51dabe2718              # double 9.9615620000000006
	.quad	0x4010834b51372a39              # double 4.1282170000000002
	.quad	0x3fc46045baf533f4              # double 0.159188
	.quad	0x3fda4a4d2b2bfdb5              # double 0.41078500000000001
	.quad	0x400185cd4ed2cbea              # double 2.1903329999999999
	.quad	0x4021f96b3354c122              # double 8.9871459999999992
	.quad	0x402241192641b329              # double 9.1271450000000005
	.quad	0x3fe42df71eafee70              # double 0.63061100000000003
	.quad	0x3ff98e3ffef39086              # double 1.597229
	.quad	0x3fed7a398201cd60              # double 0.92117000000000004
	.quad	0x401805f0f5a1016d              # double 6.0058020000000001
	.quad	0x40203301eabbcb1d              # double 8.0996240000000004
	.quad	0x4020235d67ba237d              # double 8.0690720000000002
	.quad	0x4019eef416bdb1a7              # double 6.4833530000000001
	.quad	0x401787d912556d1a              # double 5.8826640000000001
	.quad	0x40209fd5454152b1              # double 8.3121740000000006
	.quad	0x4021cd6494d50ebb              # double 8.9011580000000006
	.quad	0x40228cdea033e78e              # double 9.2751359999999998
	.quad	0x402069c68ec52a41              # double 8.2065929999999998
	.quad	0x3fd9ed3953dea466              # double 0.40510400000000002
	.quad	0x4021f3d4f15e7c8d              # double 8.9762339999999998
	.quad	0x3ff60e39b456b442              # double 1.3784730000000001
	.quad	0x3ff31dc50ce4ead1              # double 1.1947680000000001
	.quad	0x401022834d26fa40              # double 4.0337040000000002
	.quad	0x4016d5aa2e3c536d              # double 5.7086569999999996
	.quad	0x40091d627bf61aa4              # double 3.139348
	.quad	0x3fe69bf162ae4b02              # double 0.70653600000000005
	.quad	0x400ba4ead0c3d252              # double 3.4555259999999999
	.quad	0x3fc1aceee0f3cb3e              # double 0.13808999999999999
	.quad	0x401a15154866a11f              # double 6.5205890000000002
	.quad	0x4017193faf42784b              # double 5.7746570000000004
	.quad	0x3fff16b3354c1227              # double 1.9430419999999999
	.quad	0x40238da9eb2074eb              # double 9.7766870000000007
	.quad	0x3fefc2f405f6ba06              # double 0.99254799999999999
	.quad	0x40100fb69984a0e4              # double 4.0153449999999999
	.quad	0x4010d8205ff1d81f              # double 4.2110609999999999
	.quad	0x4016e1f85d744f5d              # double 5.7206739999999998
	.quad	0x3ff8eaa087ca643d              # double 1.5572820000000001
	.quad	0x401f44152b0a6fc6              # double 7.8164870000000004
	.quad	0x4015535f3d7d3911              # double 5.3314180000000002
	.quad	0x3fef5abc0e38a7e7              # double 0.97982599999999997
	.quad	0x3fe2507e9d94d0dd              # double 0.572326
	.quad	0x4021d438d1d8a548              # double 8.9144959999999998
	.quad	0x401ff30ced4e4c94              # double 7.9873539999999998
	.quad	0x400fb2b3cc4ac6ce              # double 3.9622570000000001
	.quad	0x4017b9c6b0531983              # double 5.9314220000000004
	.quad	0x4022687bbb62413e              # double 9.2040690000000005
	.quad	0x3ff07022dd7a99fa              # double 1.027377
	.quad	0x4021ab3bd9cae211              # double 8.834441
	.quad	0x401f2dc6e2a80065              # double 7.7947040000000002
	.quad	0x3ff2077ab324851b              # double 1.1268260000000001
	.quad	0x40214ed06fef7c24              # double 8.6539339999999995
	.quad	0x401d76e935b91f71              # double 7.3661240000000001
	.quad	0x4001d4067cf1c326              # double 2.2285279999999998
	.quad	0x4012d1ce28ed5f14              # double 4.7048880000000004
	.quad	0x3ff4c7d6f9767903              # double 1.298789
	.quad	0x401ab466f5019f3c              # double 6.6761739999999996
	.quad	0x3fd9262888b545c8              # double 0.39295400000000003
	.quad	0x40147bfbdf090f73              # double 5.1210779999999998
	.quad	0x4010fe5b4245f5ae              # double 4.2483950000000004
	.quad	0x3ff8a161e4f765fe              # double 1.5394000000000001
	.quad	0x4012ebb55ac03ff7              # double 4.7301840000000004
	.quad	0x401a400474d9c6b0              # double 6.5625169999999997
	.quad	0x402048af81626b2f              # double 8.1419639999999998
	.quad	0x400b01cde5d18091              # double 3.3758810000000001
	.quad	0x40161323bbc6eb0b              # double 5.5186909999999996
	.quad	0x401db87485e3da30              # double 7.4301320000000004
	.quad	0x400b1182235b4edb              # double 3.3835489999999999
	.quad	0x4020433d07c84b5e              # double 8.1313250000000004
	.quad	0x4017119220ff5409              # double 5.7671590000000004
	.quad	0x3ff16fc2656abde4              # double 1.089785
	.quad	0x40207ae33eff1950              # double 8.2400149999999996
	.quad	0x40129fc0096feb4a              # double 4.6560059999999996
	.quad	0x400a6a276b7ed41b              # double 3.3018329999999998
	.quad	0x40220074ea8da7f4              # double 9.0008920000000003
	.quad	0x400f89fcf3dc054f              # double 3.942377
	.quad	0x4015c846a5d6bebe              # double 5.4455819999999999
	.quad	0x40115491f2dc2b0f              # double 4.3325880000000003
	.quad	0x4007fd1f601797cc              # double 2.9985949999999999
	.quad	0x4020bda5daf07bfe              # double 8.3704059999999991
	.quad	0x401a1503fb374363              # double 6.5205229999999998
	.quad	0x402216d02cd39da1              # double 9.0445569999999993
	.quad	0x4022e41fc8f32379              # double 9.4455550000000005
	.quad	0x40019fb3fa6defc8              # double 2.2029800000000002
	.quad	0x401b1bf37b8d3f18              # double 6.7772959999999998
	.quad	0x402055a426bb55ac              # double 8.1672679999999999
	.quad	0x3fe2047f562174c5              # double 0.56304900000000002
	.quad	0x40148c1b54195cc8              # double 5.1368229999999997
	.quad	0x401b3374794ea077              # double 6.800249
	.quad	0x4013349235f80991              # double 4.8013389999999996
	.quad	0x400d03ed0f627393              # double 3.6269170000000002
	.quad	0x401a478854cdb7ae              # double 6.5698559999999997
	.quad	0x401d1d22424a276b              # double 7.2784509999999996
	.quad	0x3fd7626b2f23033a              # double 0.36538199999999998
	.quad	0x4013d9e5e2478855              # double 4.9627910000000002
	.quad	0x3feb5e8d5410f94d              # double 0.85529200000000005
	.quad	0x400c64e0daa0cae6              # double 3.5492569999999999
	.quad	0x4004d2fb19e731d3              # double 2.6030180000000001
	.quad	0x40194792d1287c20              # double 6.319896
	.quad	0x401733f4eca686e8              # double 5.8007390000000001
	.quad	0x40023308bb906467              # double 2.2749190000000001
	.quad	0x401df327ed84d339              # double 7.487457
	.quad	0x4017fae74f2f123c              # double 5.9950229999999998
	.quad	0x401475e3da2f8bdf              # double 5.1151270000000002
	.quad	0x40005a3b14a90471              # double 2.0440580000000002
	.quad	0x3ff84bbb1f255f35              # double 1.518489
	.quad	0x400ded9dfdac68a9              # double 3.7410239999999999
	.quad	0x3ff3490f733a8a40              # double 1.2053370000000001
	.quad	0x40120fb3311a543f              # double 4.5153319999999999
	.quad	0x401ec8316a055758              # double 7.6955010000000001
	.quad	0x3ffb07d3d4280ae1              # double 1.689411
	.quad	0x4017f90539fba451              # double 5.9931840000000003
	.quad	0x401063c31df761cc              # double 4.0974240000000002
	.quad	0x3ffbb5675579af19              # double 1.7317880000000001
	.quad	0x4023f8023a6ce358              # double 9.9843919999999997
	.quad	0x401fc8255b035bd5              # double 7.9454549999999999
	.quad	0x3ffc9e57d9dba909              # double 1.7886580000000001
	.quad	0x400ec4fb97bb7308              # double 3.8461829999999999
	.quad	0x4013d4bf4cb1897a              # double 4.9577609999999996
	.quad	0x401def1f9acffa7f              # double 7.4835190000000002
	.quad	0x3ffe28155d5f56a8              # double 1.8847860000000001
	.quad	0x401d10c308feac43              # double 7.2663690000000001
	.quad	0x400a2b4fa48301a8              # double 3.2711480000000002
	.quad	0x4018f74cd31769a9              # double 6.2415039999999999
	.quad	0x400805260f5e41d5              # double 3.0025140000000001
	.quad	0x400b0346dc5d6388              # double 3.3765999999999998
	.quad	0x4009f320d9945b6c              # double 3.2437149999999999
	.quad	0x3feba7a85015c209              # double 0.86421599999999998
	.quad	0x4021bc6a7ef9db23              # double 8.8680000000000003
	.quad	0x401ed845132f87ad              # double 7.7112009999999999
	.quad	0x3ffeec2ce4649907              # double 1.93266
	.quad	0x40209686a4ca4f44              # double 8.2939959999999999
	.quad	0x40225c801f75104d              # double 9.1806649999999994
	.quad	0x3fff8e7ddca4b125              # double 1.972288
	.quad	0x40142a5a038194c0              # double 5.0413589999999999
	.quad	0x40235f4c09c3ce21              # double 9.6861270000000008
	.quad	0x400815043e5321e6              # double 3.010262
	.quad	0x4003efd5454152b1              # double 2.4921060000000002
	.quad	0x40156e8c8abd5dc4              # double 5.357958
	.quad	0x400cd67ec7863bef              # double 3.6047340000000001
	.quad	0x4003bd2f1a9fbe77              # double 2.4673750000000001
	.quad	0x3ff7f3300de4c511              # double 1.496872
	.quad	0x401ab0346dc5d639              # double 6.6720750000000004
	.quad	0x40226913c68661ae              # double 9.2052289999999992
	.quad	0x3fb40064a9cdc444              # double 0.078131000000000006
	.quad	0x4016677186551937              # double 5.601019
	.quad	0x401c2f7a4e7ab756              # double 7.0463649999999998
	.quad	0x40197426fe718a87              # double 6.3634300000000001
	.quad	0x401bea2f48c2e771              # double 6.9786960000000002
	.quad	0x40106ef88b977857              # double 4.1083699999999999
	.quad	0x4022bc3e5321e604              # double 9.3676630000000002
	.quad	0x400af59791819d24              # double 3.3699180000000002
	.quad	0x401935ac8a372607              # double 6.302416
	.quad	0x3fde9888f861a60d              # double 0.47805999999999998
	.quad	0x4005fcea6c1a048e              # double 2.748494
	.quad	0x400a6c069e7fb268              # double 3.3027470000000001
	.quad	0x4019f6a22b3892ef              # double 6.4908530000000004
	.quad	0x401b3dd052934acb              # double 6.810365
	.quad	0x3fd96eeb702602c9              # double 0.397395
	.quad	0x400349081c2e33f0              # double 2.41066
	.quad	0x400cefaacd9e83e4              # double 3.6170249999999999
	.quad	0x3ffba68f4b61fe22              # double 1.728164
	.quad	0x4022c91622813448              # double 9.3927469999999999
	.quad	0x4011f9878316a055              # double 4.4936809999999996
	.quad	0x401438709741d085              # double 5.0551170000000001
	.quad	0x4018f05425f20210              # double 6.2346959999999996
	.quad	0x401857c957cd466f              # double 6.0857289999999997
	.quad	0x3ffe4ab2e1693c04              # double 1.8932370000000001
	.quad	0x3fdde3193f6c269a              # double 0.46698600000000001
	.quad	0x401af40c8472c0e8              # double 6.7383290000000002
	.quad	0x4002d625204af923              # double 2.3545630000000002
	.quad	0x4017175ddd2ae8e2              # double 5.7728190000000001
	.quad	0x401f4513b5bf6a0e              # double 7.8174580000000002
	.quad	0x3ff8a68900c521de              # double 1.5406580000000001
	.quad	0x4020e2491afc04c9              # double 8.4419640000000005
	.quad	0x401e7a333764f11b              # double 7.6193359999999996
	.quad	0x401919b280f12c28              # double 6.2750950000000003
	.quad	0x4009b2a1f8e3ac0c              # double 3.2122229999999998
	.quad	0x40186fd9fd36f7e4              # double 6.1092300000000002
	.quad	0x402284810a569b17              # double 9.2587969999999995
	.quad	0x401c594b380cb6c8              # double 7.0872010000000003
	.quad	0x4019b4a2339c0ebf              # double 6.4264000000000001
	.quad	0x401599d55e6bc622              # double 5.4002280000000003
	.quad	0x3ff1946d3f9e7b81              # double 1.0987370000000001
	.quad	0x3ff1975afaf85943              # double 1.0994520000000001
	.quad	0x401acbc6eb0b7c35              # double 6.699001
	.quad	0x4015c4ebdd334c5e              # double 5.4423060000000003
	.quad	0x4016db823c85c24c              # double 5.7143639999999998
	.quad	0x3fc55d462c343b71              # double 0.166909
	.quad	0x4011ff0e90bc7b46              # double 4.4990790000000001
	.quad	0x401cf1754b05b7d0              # double 7.2357990000000001
	.quad	0x4005862ed352220c              # double 2.6905190000000001
	.quad	0x402240cf7caa758a              # double 9.1265830000000001
	.quad	0x3fdc4024b33daf8e              # double 0.441415
	.quad	0x3fea24d8fd5cb791              # double 0.816998
	.quad	0x4022b0f062d40aaf              # double 9.3455840000000006
	.quad	0x401298ef34d6a162              # double 4.6493500000000001
	.quad	0x4022d977c88e79ab              # double 9.4247420000000001
	.quad	0x3ff525d18090b418              # double 1.321733
	.quad	0x400835ce18266773              # double 3.0262720000000001
	.quad	0x4019edd2ae8e1d65              # double 6.4822490000000004
	.quad	0x3ffe86d506573216              # double 1.907918
	.quad	0x401987ffde7210bf              # double 6.3828120000000004
	.quad	0x401fb0346dc5d639              # double 7.9220750000000004
	.quad	0x4021656191148fda              # double 8.69801
	.quad	0x402312925fe974a3              # double 9.5362729999999995
	.quad	0x3fc0ad57bc7f77af              # double 0.13028999999999999
	.quad	0x4023e415b1422ccb              # double 9.9454779999999995
	.quad	0x4023ab293d102bc7              # double 9.8342989999999996
	.quad	0x40027aec4a4095f2              # double 2.3100209999999999
	.quad	0x400d0dcebfec13ba              # double 3.631742
	.quad	0x4004055b89939219              # double 2.5026160000000002
	.quad	0x4012084e3ffef391              # double 4.5081110000000004
	.quad	0x40211e67b5f1bef5              # double 8.5593850000000007
	.quad	0x4007c5cfede97d07              # double 2.9715880000000001
	.quad	0x40090b6177ea1c69              # double 3.130557
	.quad	0x400ec28027d88c1e              # double 3.8449710000000001
	.quad	0x401ea3aafff36ac6              # double 7.6598319999999998
	.quad	0x400af0f7b9e060fe              # double 3.3676599999999999
	.quad	0x4019f364bec679cc              # double 6.4876889999999996
	.quad	0x3fd2376d5497310a              # double 0.28463300000000002
	.quad	0x400c52c386d2ed78              # double 3.5404119999999999
	.quad	0x4018ba4a8c154c98              # double 6.1819249999999997
	.quad	0x40150ae0c1765775              # double 5.2606229999999998
	.quad	0x3ffa8a86d71f3626              # double 1.65882
	.quad	0x3ff45adea897635e              # double 1.2721849999999999
	.quad	0x3fe30379314445aa              # double 0.59417399999999998
	.quad	0x401314070329802c              # double 4.769558
	.quad	0x4003b2990f301eac              # double 2.4622060000000001
	.quad	0x40017a6612839043              # double 2.1847650000000001
	.quad	0x401a8882f0e0a84c              # double 6.6333120000000001
	.quad	0x3ffa22ec28b2a6b1              # double 1.633526
	.quad	0x401982c8c5004fb1              # double 6.3777189999999999
	.quad	0x401c983cf2cf95d5              # double 7.1486700000000001
	.quad	0x40072c7a7c9de050              # double 2.8967179999999999
	.quad	0x4001b7e6f71a7e31              # double 2.2147960000000002
	.quad	0x3fe69437c5692b3d              # double 0.70559300000000003
	.quad	0x3fe395ca6ca03c4b              # double 0.612035
	.quad	0x401566523704790c              # double 5.3499230000000004
	.quad	0x4020cc2b302f72b4              # double 8.3987669999999994
	.quad	0x401c46394face67d              # double 7.0685779999999996
	.quad	0x401834eebf65dbfd              # double 6.0516920000000001
	.quad	0x40090584f4c6e6da              # double 3.1276950000000001
	.quad	0x401111c75818c5ca              # double 4.2673620000000003
	.quad	0x4023ee312f4cf4a5              # double 9.9652189999999993
	.quad	0x3fda008205ff1d82              # double 0.406281
	.quad	0x4000848b65237048              # double 2.0647190000000002
	.quad	0x401bebd5992428d4              # double 6.9803069999999998
	.quad	0x40139115592d98bf              # double 4.8916829999999996
	.quad	0x3faf2d7f950b955f              # double 0.060893999999999997
	.quad	0x3ffd147cfa26a22b              # double 1.817502
	.quad	0x4020c198d045fe11              # double 8.3781189999999999
	.quad	0x4022fee71cda2b5a              # double 9.4978569999999998
	.quad	0x401b6013660e51d2              # double 6.8438239999999997
	.quad	0x400ccb5c39bcba30              # double 3.599297
	.quad	0x4021de0c9d9d3459              # double 8.9336900000000004
	.quad	0x400a93311a543f1c              # double 3.3218709999999998
	.quad	0x40052ceb356da017              # double 2.6469330000000002
	.quad	0x401b2f7164c729f6              # double 6.7963310000000003
	.quad	0x4023825a89b951c6              # double 9.7545970000000004
	.quad	0x402201042d8c2a45              # double 9.0019849999999995
	.quad	0x4013854eb13dfb0d              # double 4.8801829999999997
	.quad	0x4020d045fe111277              # double 8.406784
	.quad	0x401020aaeafab53d              # double 4.0319019999999997
	.quad	0x401a63675ddd2ae9              # double 6.5970740000000001
	.quad	0x401ed633482be8bc              # double 7.7091799999999999
	.quad	0x400a1c99285a921d              # double 3.2639640000000001
	.quad	0x401feb5cbff47736              # double 7.9798460000000002
	.quad	0x401afb28522ea0fd              # double 6.7452709999999998
	.quad	0x4012d6c050bd87b5              # double 4.7097179999999996
	.quad	0x4022d8a979e16d6e              # double 9.4231680000000004
	.quad	0x401e43c254a3c643              # double 7.5661709999999997
	.quad	0x401489b77c02afde              # double 5.1344890000000003
	.quad	0x401e62aae297396d              # double 7.5963549999999999
	.quad	0x40216a871a3b14a9              # double 8.708062
	.quad	0x40138dafd113836b              # double 4.8883660000000004
	.quad	0x400c1c4545846e8f              # double 3.5138039999999999
	.quad	0x40172bc98a222d51              # double 5.7927609999999996
	.quad	0x401f5ec3dab5c39c              # double 7.8425440000000002
	.quad	0x4020c0d716d2aa5c              # double 8.3766409999999993
	.quad	0x4004ae2089e34331              # double 2.5850230000000001
	.quad	0x4021b4bd1244a622              # double 8.8530049999999996
	.quad	0x4023460eb67c2870              # double 9.6368310000000008
	.quad	0x4020e7f3061c79b3              # double 8.4530259999999995
	.quad	0x400f6754f3775b81              # double 3.9254549999999999
	.quad	0x401bbf566490a351              # double 6.9368530000000002
	.quad	0x401f211ba3ca7504              # double 7.7823320000000002
	.quad	0x3fbd9e30014f8b59              # double 0.11569500000000001
	.quad	0x40142eb851eb851f              # double 5.0456250000000002
	.quad	0x40121a671ef30a4e              # double 4.5257839999999998
	.quad	0x401e0fabda0dfdf0              # double 7.5153040000000004
	.quad	0x3fe9da1ec4e7253e              # double 0.80787600000000004
	.quad	0x40237ac0e7bc3c5c              # double 9.7397530000000003
	.quad	0x4016d6191148fda0              # double 5.7090800000000002
	.quad	0x40236bf444e0daa1              # double 9.7108480000000003
	.quad	0x40225af7b17ce52e              # double 9.1776710000000001
	.quad	0x4006163baba7b917              # double 2.760856
	.quad	0x3ffc97d5a9eb2075              # double 1.787069
	.quad	0x4020d69014b599aa              # double 8.4190679999999993
	.quad	0x40076219eb6390c9              # double 2.922901
	.quad	0x4009b583a53b8e4c              # double 3.2136300000000002
	.quad	0x401d44ef0281ba80              # double 7.3173180000000002
	.quad	0x401b82c669057d18              # double 6.8777100000000004
	.quad	0x4003a8dc981beb18              # double 2.457452
	.quad	0x400bf901083dbc23              # double 3.4965839999999999
	.quad	0x400654f93bc0a06f              # double 2.7914910000000002
	.quad	0x4022f47a17f4128c              # double 9.477494
	.quad	0x401ada6bd6e8af81              # double 6.7133019999999997
	.quad	0x3fe132d6ece13f4b              # double 0.53745600000000004
	.quad	0x4023ef8b588e368f              # double 9.9678599999999999
	.quad	0x400c90a99b6f5caf              # double 3.5706359999999999
	.quad	0x4012e4edf6124074              # double 4.7235639999999997
	.quad	0x4020b06f049a9974              # double 8.3445970000000002
	.quad	0x401c9a2834d26fa4              # double 7.150544
	.quad	0x4004d2ed783dff3f              # double 2.602992
	.quad	0x3ff014940bbb1f25              # double 1.0050239999999999
	.quad	0x400c79b3d07c84b6              # double 3.5594250000000001
	.quad	0x400b2121682f9442              # double 3.3911769999999999
	.quad	0x4023a0d1526d8b1e              # double 9.8140970000000003
	.quad	0x401cf8db0574b407              # double 7.243023
	.quad	0x40228a2cecc814d7              # double 9.2698739999999997
	.quad	0x40190d590c0ad03e              # double 6.2630350000000004
	.quad	0x400afd6adf71eaff              # double 3.373739
	.quad	0x401d5e85b9e8c47a              # double 7.3423069999999999
	.quad	0x3fcd9780baa582dc              # double 0.231186
	.quad	0x401d2acc4ef88b97              # double 7.2917949999999996
	.quad	0x401294d61b2a27f2              # double 4.6453480000000003
	.quad	0x4011dfadf2ecf206              # double 4.4684369999999998
	.quad	0x402051e6cd29131f              # double 8.1599640000000004
	.quad	0x40226b8cfbfc6541              # double 9.2100600000000004
	.quad	0x40219d44998d0460              # double 8.8071640000000002
	.quad	0x40215a70f3882279              # double 8.6766430000000003
	.quad	0x3fb8882f0e0a84be              # double 0.095827999999999996
	.quad	0x401c0dacabc51548              # double 7.0133539999999996
	.quad	0x4014e95d0b73d189              # double 5.227894
	.quad	0x3fee039cd8127b2d              # double 0.93794100000000002
	.quad	0x40029d29563a9f38              # double 2.3267389999999999
	.quad	0x3fe8b3764f11b60b              # double 0.77190700000000001
	.quad	0x40185e731d2e0e30              # double 6.0922359999999998
	.quad	0x3ff3441355475a32              # double 1.2041200000000001
	.quad	0x401caca8e2e2b8c7              # double 7.1686129999999997
	.quad	0x40162709741d084f              # double 5.5381220000000004
	.quad	0x3fd78f190d173fb8              # double 0.36810900000000002
	.quad	0x40189fde2ef4e011              # double 6.1561209999999997
	.quad	0x401e6d9ad85dfa87              # double 7.6070359999999999
	.quad	0x400a714ca925fe97              # double 3.3053219999999999
	.quad	0x401374052d666a98              # double 4.8633009999999999
	.quad	0x3fc64b5568e820e6              # double 0.174174
	.quad	0x402383ca31e7d999              # double 9.7574020000000007
	.quad	0x400ca30c23fab10c              # double 3.5796130000000002
	.quad	0x402330cfbfc6540d              # double 9.5953350000000003
	.quad	0x40157ac96cc5fbf8              # double 5.3699089999999998
	.quad	0x40113435ac8a3726              # double 4.300986
	.quad	0x4014bc0724b76f6d              # double 5.1836209999999996
	.quad	0x40228a2120e1f7d7              # double 9.2697839999999996
	.quad	0x3f9a87a072d1aeb4              # double 0.025908
	.quad	0x400bb01c0ca600b0              # double 3.4609909999999999
	.quad	0x401c776188b1140a              # double 7.1165830000000003
	.quad	0x3ff6ce66cb10342b              # double 1.4253910000000001
	.quad	0x400558ad25679896              # double 2.6682990000000002
	.quad	0x4003f71b0468448d              # double 2.495657
	.quad	0x401f3e83e425aee6              # double 7.8110499999999998
	.quad	0x401938bb906466b2              # double 6.3054030000000001
	.quad	0x401ac22b3892ee85              # double 6.6896180000000003
	.quad	0x400e27ecfe9b7bf2              # double 3.769495
	.quad	0x400ebd206c8711d8              # double 3.8423470000000002
	.quad	0x40182fc6540cc78f              # double 6.0466550000000003
	.quad	0x4011b0bdcad14a0a              # double 4.4225989999999999
	.quad	0x401bc558a7610279              # double 6.9427209999999997
	.quad	0x4021144f7ec3547e              # double 8.539669
	.quad	0x3fc14fdf3b645a1d              # double 0.13525000000000001
	.quad	0x401042f37fbefd00              # double 4.0653819999999996
	.quad	0x401af9ef954eb13e              # double 6.744078
	.quad	0x4001a8cd63cb8173              # double 2.2074229999999999
	.quad	0x4013d935fc3b4f61              # double 4.9621199999999996
	.quad	0x401143ba775fb2ee              # double 4.316141
	.quad	0x401b4fe64f54d1e9              # double 6.8280269999999996
	.quad	0x40227ba14cec41dd              # double 9.2414649999999998
	.quad	0x401390cbf2b239a4              # double 4.8914030000000004
	.quad	0x400cf361565c2d28              # double 3.6188380000000002
	.quad	0x3fe4279bbadc0981              # double 0.62983500000000003
	.quad	0x4020bb75a74c09c4              # double 8.3661320000000003
	.quad	0x401218f7db6e5040              # double 4.5243830000000003
	.quad	0x4023f28f9f44d445              # double 9.9737519999999992
	.quad	0x3fe96da87a072d1b              # double 0.79463600000000001
	.quad	0x3ffb585ad538ac19              # double 1.709071
	.quad	0x3fe98feef5ec80c7              # double 0.79881999999999997
	.quad	0x3ffd6c3c9eecbfb1              # double 1.8389249999999999
	.quad	0x4014ae0daa0cae64              # double 5.1699739999999998
	.quad	0x4018f84cad57bc7f              # double 6.2424799999999996
	.quad	0x401e79b56323bbc7              # double 7.618856
	.quad	0x401a0d0203e63e8e              # double 6.5127030000000001
	.quad	0x40210f24fa8b4bf9              # double 8.529579
	.quad	0x402099e321a2e7f7              # double 8.3005610000000001
	.quad	0x401d5e1cde5d1809              # double 7.341907
	.quad	0x401862e514c22ee4              # double 6.0965769999999999
	.quad	0x401e140ee06d9381              # double 7.5195879999999997
	.quad	0x4020cf47304039ac              # double 8.40484
	.quad	0x401491de69ad42c4              # double 5.1424500000000002
	.quad	0x4022b33f20a73f75              # double 9.3500910000000008
	.quad	0x401b367cf1c3265b              # double 6.8032110000000001
	.quad	0x3fef76ea4228997c              # double 0.98326599999999997
	.quad	0x3fc2ad14a0a0f4d8              # double 0.14590700000000001
	.size	.L__constant_3000xf64, 24000

	.section	".note.GNU-stack","",@progbits
