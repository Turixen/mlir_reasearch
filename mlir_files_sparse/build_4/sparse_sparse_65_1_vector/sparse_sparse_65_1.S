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
	.quad	0x413b3349225a682b              # double 1782601.1341919999
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
	.quad	39                              # 0x27
	.quad	65                              # 0x41
	.quad	103                             # 0x67
	.quad	144                             # 0x90
	.quad	183                             # 0xb7
	.quad	210                             # 0xd2
	.quad	238                             # 0xee
	.quad	272                             # 0x110
	.quad	307                             # 0x133
	.quad	338                             # 0x152
	.quad	377                             # 0x179
	.quad	418                             # 0x1a2
	.quad	456                             # 0x1c8
	.quad	495                             # 0x1ef
	.quad	535                             # 0x217
	.quad	569                             # 0x239
	.quad	604                             # 0x25c
	.quad	635                             # 0x27b
	.quad	666                             # 0x29a
	.quad	703                             # 0x2bf
	.quad	735                             # 0x2df
	.quad	766                             # 0x2fe
	.quad	799                             # 0x31f
	.quad	826                             # 0x33a
	.quad	874                             # 0x36a
	.quad	901                             # 0x385
	.quad	944                             # 0x3b0
	.quad	978                             # 0x3d2
	.quad	1009                            # 0x3f1
	.quad	1051                            # 0x41b
	.quad	1082                            # 0x43a
	.quad	1114                            # 0x45a
	.quad	1149                            # 0x47d
	.quad	1180                            # 0x49c
	.quad	1221                            # 0x4c5
	.quad	1258                            # 0x4ea
	.quad	1288                            # 0x508
	.quad	1325                            # 0x52d
	.quad	1363                            # 0x553
	.quad	1395                            # 0x573
	.quad	1438                            # 0x59e
	.quad	1476                            # 0x5c4
	.quad	1503                            # 0x5df
	.quad	1542                            # 0x606
	.quad	1578                            # 0x62a
	.quad	1614                            # 0x64e
	.quad	1648                            # 0x670
	.quad	1687                            # 0x697
	.quad	1724                            # 0x6bc
	.quad	1757                            # 0x6dd
	.quad	1794                            # 0x702
	.quad	1826                            # 0x722
	.quad	1867                            # 0x74b
	.quad	1901                            # 0x76d
	.quad	1940                            # 0x794
	.quad	1973                            # 0x7b5
	.quad	2010                            # 0x7da
	.quad	2052                            # 0x804
	.quad	2088                            # 0x828
	.quad	2130                            # 0x852
	.quad	2164                            # 0x874
	.quad	2196                            # 0x894
	.quad	2227                            # 0x8b3
	.quad	2266                            # 0x8da
	.quad	2291                            # 0x8f3
	.quad	2326                            # 0x916
	.quad	2363                            # 0x93b
	.quad	2398                            # 0x95e
	.quad	2434                            # 0x982
	.quad	2470                            # 0x9a6
	.quad	2497                            # 0x9c1
	.quad	2522                            # 0x9da
	.quad	2554                            # 0x9fa
	.quad	2592                            # 0xa20
	.quad	2629                            # 0xa45
	.quad	2663                            # 0xa67
	.quad	2704                            # 0xa90
	.quad	2739                            # 0xab3
	.quad	2774                            # 0xad6
	.quad	2812                            # 0xafc
	.quad	2848                            # 0xb20
	.quad	2876                            # 0xb3c
	.quad	2911                            # 0xb5f
	.quad	2942                            # 0xb7e
	.quad	2984                            # 0xba8
	.quad	3020                            # 0xbcc
	.quad	3050                            # 0xbea
	.quad	3087                            # 0xc0f
	.quad	3111                            # 0xc27
	.quad	3135                            # 0xc3f
	.quad	3170                            # 0xc62
	.quad	3205                            # 0xc85
	.quad	3243                            # 0xcab
	.quad	3271                            # 0xcc7
	.quad	3314                            # 0xcf2
	.quad	3349                            # 0xd15
	.quad	3387                            # 0xd3b
	.quad	3419                            # 0xd5b
	.quad	3464                            # 0xd88
	.quad	3500                            # 0xdac
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_3500xindex,@object # @__constant_3500xindex
	.p2align	6, 0x0
.L__constant_3500xindex:
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_3500xindex, 28000

	.type	.L__constant_3500xf64,@object   # @__constant_3500xf64
	.p2align	6, 0x0
.L__constant_3500xf64:
	.quad	0x3fdc4cf8d716d2aa              # double 0.44219799999999998
	.quad	0x402354382a12f901              # double 9.6644909999999999
	.quad	0x4020a3bc903ea705              # double 8.3197980000000005
	.quad	0x401df7000431bde8              # double 7.4912109999999998
	.quad	0x401f6ac215b9a5a9              # double 7.8542560000000003
	.quad	0x400c39dc2f405f6c              # double 3.5282520000000002
	.quad	0x400ff49d7ba6698c              # double 3.9944410000000001
	.quad	0x40102b9f559b3d08              # double 4.0426000000000002
	.quad	0x40169685db76b3bc              # double 5.6469950000000004
	.quad	0x3fbbd5885d31337f              # double 0.108727
	.quad	0x40105ad5bee3d5fe              # double 4.0887060000000002
	.quad	0x3ffc55d91ab8e8ea              # double 1.7709589999999999
	.quad	0x400f706dd69d3027              # double 3.929897
	.quad	0x3fcb9c065b63d3e5              # double 0.215699
	.quad	0x40006e2b063e07a3              # double 2.0537930000000002
	.quad	0x4017385dfa871a3b              # double 5.8050459999999999
	.quad	0x4022795054ac29bf              # double 9.2369409999999998
	.quad	0x4017bb20fb224aae              # double 5.9327430000000003
	.quad	0x4020ee3d5fdcdf6a              # double 8.4653120000000008
	.quad	0x3fad2ae8e1d6494d              # double 0.056967999999999998
	.quad	0x3faa4cc6822ff089              # double 0.051367000000000003
	.quad	0x3fef4a29845dc832              # double 0.97780299999999998
	.quad	0x3ff4e07f66e86c66              # double 1.3048090000000001
	.quad	0x40202d03b81b64e0              # double 8.0879189999999994
	.quad	0x3fe3d933e35c5b4b              # double 0.62026400000000004
	.quad	0x401093201040bfe4              # double 4.1436770000000003
	.quad	0x4022fd7cb2d905c0              # double 9.4950919999999996
	.quad	0x4022c9dcf893faf4              # double 9.3942639999999997
	.quad	0x401aeef73c0c1fc9              # double 6.733365
	.quad	0x3ff5ac892ab68cef              # double 1.3546229999999999
	.quad	0x401fae63e8dda48b              # double 7.9203029999999996
	.quad	0x402072fa7221858c              # double 8.2245670000000004
	.quad	0x401e4edaec4a4096              # double 7.577007
	.quad	0x3ffc281669ced0b3              # double 1.759787
	.quad	0x3ff20e2b063e07a3              # double 1.1284590000000001
	.quad	0x4013699dcb5781c7              # double 4.8531409999999999
	.quad	0x40222134efcbd556              # double 9.0648569999999999
	.quad	0x4023497bd8be7297              # double 9.643523
	.quad	0x401620fe047d3d43              # double 5.5322190000000004
	.quad	0x4015690cd423d923              # double 5.3525879999999999
	.quad	0x4015f1c79b34a44c              # double 5.4861129999999996
	.quad	0x4021be3065f9591d              # double 8.8714630000000003
	.quad	0x3fff2ac753e707e1              # double 1.9479439999999999
	.quad	0x4015c61a60d4562e              # double 5.44346
	.quad	0x3ff9be542e557de1              # double 1.608967
	.quad	0x3ff25c4545846e8f              # double 1.147527
	.quad	0x3ff61e7210be9425              # double 1.382433
	.quad	0x40186e2f7b17ce53              # double 6.1076030000000001
	.quad	0x402035ef416bdb1a              # double 8.1053409999999992
	.quad	0x401d18e1d6494d51              # double 7.2742990000000001
	.quad	0x401e665e89225311              # double 7.5999699999999998
	.quad	0x401224eebf65dbfd              # double 4.5360670000000001
	.quad	0x4014ef26f1dc50ce              # double 5.2335469999999997
	.quad	0x4023fd3cbc48f10b              # double 9.9946040000000007
	.quad	0x3fe86030c23fab11              # double 0.76174200000000003
	.quad	0x3ff0b922962cfd8f              # double 1.045199
	.quad	0x400a9d74d594f26b              # double 3.326883
	.quad	0x4016cd823422467c              # double 5.7006920000000001
	.quad	0x40210c8626f60e0f              # double 8.5244610000000005
	.quad	0x401b59ef0f16f438              # double 6.8378259999999997
	.quad	0x4010914d72799a20              # double 4.1418970000000002
	.quad	0x40170ba450acc0be              # double 5.7613690000000002
	.quad	0x4014f6cb5350092d              # double 5.2410100000000002
	.quad	0x40205f7af640639d              # double 8.1864849999999993
	.quad	0x4022ec97d8cf398f              # double 9.4620960000000007
	.quad	0x401f5ef911cf355d              # double 7.8427470000000001
	.quad	0x3ff487fbacb42891              # double 1.283199
	.quad	0x401cb3d5bab21816              # double 7.1756200000000003
	.quad	0x401de355043e5322              # double 7.4720040000000001
	.quad	0x400858f1d3ed527e              # double 3.0434299999999999
	.quad	0x40084dd590c0ad04              # double 3.0380050000000001
	.quad	0x4023a1c886162f16              # double 9.8159829999999992
	.quad	0x40123ac42e9899bf              # double 4.5573889999999997
	.quad	0x401abbb6672fba02              # double 6.6833130000000001
	.quad	0x4010ef76a2f48c2e              # double 4.2338509999999996
	.quad	0x401c7450efdc9c4e              # double 7.1135900000000003
	.quad	0x4009d0c1333b96af              # double 3.226931
	.quad	0x400218e970718223              # double 2.2621639999999998
	.quad	0x401da5eedcc20d56              # double 7.4120439999999999
	.quad	0x4010505dd8f92afa              # double 4.0784830000000003
	.quad	0x3fa8a137f38c5437              # double 0.048105000000000002
	.quad	0x3ff6d5c853c14834              # double 1.4271929999999999
	.quad	0x401e0825e13b18db              # double 7.5079570000000002
	.quad	0x3ff7c85f4a1272c9              # double 1.4864189999999999
	.quad	0x4014d752da98676a              # double 5.2102769999999996
	.quad	0x4001035bd512ec6c              # double 2.1266400000000001
	.quad	0x401c4bf93ff25e57              # double 7.0741930000000002
	.quad	0x40144fab10ba6267              # double 5.077801
	.quad	0x400f177531db445f              # double 3.8864540000000001
	.quad	0x4015026351deefe5              # double 5.252332
	.quad	0x3f9e5604189374bc              # double 0.029624999999999999
	.quad	0x40231e805a2d7300              # double 9.5595730000000003
	.quad	0x4018056eac860568              # double 6.0053049999999999
	.quad	0x4017d5143bf72713              # double 5.9580849999999996
	.quad	0x401f64fc1df3300e              # double 7.8486180000000001
	.quad	0x4022497dd00f776c              # double 9.1435379999999994
	.quad	0x3ffec323358f2e06              # double 1.922641
	.quad	0x3ffc304ab606b7aa              # double 1.76179
	.quad	0x401e492b7fe08af0              # double 7.5714550000000003
	.quad	0x401c483c6c97d8cf              # double 7.0705429999999998
	.quad	0x3ffd1888f861a60d              # double 1.8184899999999999
	.quad	0x400147546d3f9e7c              # double 2.1598290000000002
	.quad	0x400adc1615ebfa8f              # double 3.3574639999999998
	.quad	0x400c793682730c67              # double 3.559186
	.quad	0x3ff16e7b3d8e0008              # double 1.0894729999999999
	.quad	0x401f3c31df761cbd              # double 7.8087840000000001
	.quad	0x400943b03e20ccff              # double 3.1580509999999999
	.quad	0x401d401ffb480a5b              # double 7.3126220000000002
	.quad	0x402218c47a17f413              # double 9.0483740000000008
	.quad	0x401ede1693c03bc5              # double 7.7168830000000001
	.quad	0x400b22003ab862b2              # double 3.3916019999999998
	.quad	0x3ffab14013ec460f              # double 1.668274
	.quad	0x401f59e34330d738              # double 7.8377809999999996
	.quad	0x40229208e1501190              # double 9.2852239999999995
	.quad	0x402196c8711d798e              # double 8.7944980000000008
	.quad	0x3fec7e86833c6003              # double 0.89044500000000004
	.quad	0x401b89b845564b66              # double 6.8844919999999998
	.quad	0x401ac284dfce3151              # double 6.6899600000000001
	.quad	0x3fe59cc74b838c11              # double 0.67538799999999999
	.quad	0x40235c91afc04c8c              # double 9.6807990000000003
	.quad	0x3ff571bde82d7b63              # double 1.3402689999999999
	.quad	0x4015ae6ea8544780              # double 5.4203440000000001
	.quad	0x401547e414e7ee91              # double 5.3202059999999998
	.quad	0x4023d1db877ab325              # double 9.9098780000000008
	.quad	0x4016015054ac29bf              # double 5.5012829999999999
	.quad	0x401f80de093532e8              # double 7.8758470000000002
	.quad	0x401587baecd07853              # double 5.382549
	.quad	0x3ff1c111ada76d98              # double 1.1096360000000001
	.quad	0x4005b646ae3a3a8e              # double 2.7140019999999998
	.quad	0x40215360d0247022              # double 8.6628480000000003
	.quad	0x4015aebbfd71b047              # double 5.4206390000000004
	.quad	0x40200fb3fa6defc8              # double 8.0306700000000006
	.quad	0x3ffdfa5b0ff10ecb              # double 1.8736219999999999
	.quad	0x4009f54b05b7cfe6              # double 3.2447720000000002
	.quad	0x3ffe5e2478854cdb              # double 1.8979839999999999
	.quad	0x4000f06573215fcc              # double 2.117381
	.quad	0x40069367a0f9096c              # double 2.8219750000000001
	.quad	0x401f4a55d1c3ac93              # double 7.8225930000000003
	.quad	0x401e7925785f8d2e              # double 7.6183069999999997
	.quad	0x400a5183b60285ec              # double 3.2898019999999999
	.quad	0x4021de861e92923e              # double 8.9346169999999994
	.quad	0x401fb037d63022dd              # double 7.9220879999999995
	.quad	0x3ff8c218def416be              # double 1.5473870000000001
	.quad	0x401aa478c868b9fe              # double 6.6606170000000002
	.quad	0x401ec4e592967019              # double 7.6922819999999996
	.quad	0x40099329c347e8cd              # double 3.1968570000000001
	.quad	0x401c9991ff7164c7              # double 7.1499709999999999
	.quad	0x3ff61e99e94ab1d5              # double 1.382471
	.quad	0x40164215b9a5a89c              # double 5.5645360000000004
	.quad	0x401b8356da0168b6              # double 6.8782610000000002
	.quad	0x4023654c33b53932              # double 9.6978469999999994
	.quad	0x400efe40c8472c0e              # double 3.8741469999999998
	.quad	0x401a7f16f4384ba1              # double 6.6241110000000001
	.quad	0x400e173e24febd0a              # double 3.7613490000000001
	.quad	0x40138cf7878b7a1c              # double 4.8876629999999999
	.quad	0x4019482b1f687b14              # double 6.3204770000000003
	.quad	0x4016fa93293d102c              # double 5.7447020000000002
	.quad	0x4021e2e1ef73c0c2              # double 8.94313
	.quad	0x4009d1cb89d6adf7              # double 3.2274389999999999
	.quad	0x400230e66cb10343              # double 2.2738770000000001
	.quad	0x3fd2cb31c219eb64              # double 0.29365200000000002
	.quad	0x401d69d6f112fd33              # double 7.3533590000000002
	.quad	0x3ff8d06bbdbe3c10              # double 1.5508839999999999
	.quad	0x3fea3e553ac4f7ec              # double 0.82010899999999997
	.quad	0x4020124cc6822ff1              # double 8.0357420000000008
	.quad	0x40235540cc78e9f7              # double 9.6665100000000006
	.quad	0x401eeea9a3d2d880              # double 7.7330690000000004
	.quad	0x3ffcf1da37ef5a96              # double 1.8090459999999999
	.quad	0x400e036b8f9b1316              # double 3.7516699999999998
	.quad	0x401a716228134480              # double 6.6107259999999997
	.quad	0x3feaa9973d9ec700              # double 0.833202
	.quad	0x4015225f633ce63a              # double 5.2835669999999997
	.quad	0x401d5d612c6ac216              # double 7.3411910000000002
	.quad	0x3fca3925bb7b6bb1              # double 0.204869
	.quad	0x4005f72e6a76965f              # double 2.7456939999999999
	.quad	0x3fee83fb3743632c              # double 0.95361099999999998
	.quad	0x400f61c6088d6d3b              # double 3.9227409999999998
	.quad	0x4002b50ca1cef241              # double 2.338403
	.quad	0x3fec94940bbb1f25              # double 0.89313699999999996
	.quad	0x4022baceaaf35e31              # double 9.3648579999999999
	.quad	0x402301f2ba9d1f60              # double 9.5038049999999998
	.quad	0x40126b7ae5796bfd              # double 4.6049610000000003
	.quad	0x4012c8aac96cc5fc              # double 4.695964
	.quad	0x3fdfe7f6f4be835e              # double 0.498533
	.quad	0x3feab9bcba301217              # double 0.83517300000000005
	.quad	0x4022d9a6937d1fe6              # double 9.4250989999999994
	.quad	0x4017c18def416bdb              # double 5.9390179999999999
	.quad	0x4020a56fda836eb5              # double 8.3231190000000002
	.quad	0x402243250b52439a              # double 9.1311420000000005
	.quad	0x400ba6b9c304ccee              # double 3.4564089999999998
	.quad	0x401409a9da597d4a              # double 5.0094370000000001
	.quad	0x401b591ff7164c73              # double 6.8370360000000003
	.quad	0x3ffafa81dc0db270              # double 1.686159
	.quad	0x401321455219a848              # double 4.7824910000000003
	.quad	0x401529f01b866e44              # double 5.2909550000000003
	.quad	0x3fff8bcf0b6b6e0d              # double 1.971633
	.quad	0x3fe9d4f15e7c8d19              # double 0.80724399999999996
	.quad	0x401143d74d594f27              # double 4.3162510000000003
	.quad	0x4020759fb1e18efc              # double 8.2297340000000005
	.quad	0x3ffb3a8f7db6e504              # double 1.701797
	.quad	0x401ec9478c868ba0              # double 7.6965620000000001
	.quad	0x4022cc7e6b3fe9fb              # double 9.3994020000000002
	.quad	0x40237513d74d594f              # double 9.7286669999999997
	.quad	0x400b58fabda0dfdf              # double 3.418447
	.quad	0x4012df765fd8adac              # double 4.7182250000000003
	.quad	0x40122e525892684d              # double 4.5452360000000001
	.quad	0x401f62602c9081c3              # double 7.84607
	.quad	0x3fea0379314445aa              # double 0.81292399999999998
	.quad	0x40148ccee5abc0e4              # double 5.1375080000000004
	.quad	0x3fb019d2391d5800              # double 0.062894000000000005
	.quad	0x401c1074213a0c6b              # double 7.0160679999999997
	.quad	0x400a5625a682b628              # double 3.2920639999999999
	.quad	0x401e611e85fd04a3              # double 7.594843
	.quad	0x400748051c9f72f7              # double 2.9101659999999998
	.quad	0x3ff25171e29b6b2b              # double 1.144884
	.quad	0x401d988a47ecfe9b              # double 7.3989649999999996
	.quad	0x4002b29670196d8f              # double 2.3372009999999999
	.quad	0x401a00e6f2e8c048              # double 6.5008809999999997
	.quad	0x40238dd0fa58f712              # double 9.7769849999999998
	.quad	0x401ca8ee6b8305d9              # double 7.1649719999999997
	.quad	0x401dcd2ae8e1d649              # double 7.4503589999999997
	.quad	0x40016bcf91a32b13              # double 2.1776420000000001
	.quad	0x40186ca31e7d9989              # double 6.1060910000000002
	.quad	0x401d1992428d434a              # double 7.274972
	.quad	0x40202445ed4a1ad6              # double 8.0708459999999995
	.quad	0x4020151bf7ad4b27              # double 8.0412289999999995
	.quad	0x401d667d77fae361              # double 7.3500880000000004
	.quad	0x4020b76922d948dc              # double 8.3582239999999998
	.quad	0x4006057c914b167f              # double 2.7526790000000001
	.quad	0x4002567d34df04de              # double 2.2922310000000001
	.quad	0x40129db4cc250721              # double 4.6540100000000004
	.quad	0x40215a57646ae3a4              # double 8.6764480000000006
	.quad	0x401fc91cd1c7de51              # double 7.9463990000000004
	.quad	0x401003d74d594f27              # double 4.0037510000000003
	.quad	0x401a96173b85e80c              # double 6.6465730000000001
	.quad	0x401d7f16f4384ba1              # double 7.3741110000000001
	.quad	0x4003ebb2bba98eda              # double 2.4900869999999999
	.quad	0x402222ff2a172abf              # double 9.0683530000000001
	.quad	0x4021170e90bc7b46              # double 8.5450330000000001
	.quad	0x40022a63305100a4              # double 2.2706970000000002
	.quad	0x3fd735a426bb55ac              # double 0.362649
	.quad	0x4018722a6f3f52fc              # double 6.1114899999999999
	.quad	0x3ff9bae9ab29e4d6              # double 1.608133
	.quad	0x40202cba732df506              # double 8.0873600000000003
	.quad	0x3fd07160956c0d6f              # double 0.25691999999999998
	.quad	0x4019d18b93469942              # double 6.4546340000000004
	.quad	0x40193ad2999567dc              # double 6.3074440000000003
	.quad	0x4019e7c80841ede1              # double 6.4763489999999999
	.quad	0x40082d42c3c9eecc              # double 3.0221
	.quad	0x3fdc17763e4abe6a              # double 0.43893199999999999
	.quad	0x4022cda9003eea21              # double 9.4016800000000007
	.quad	0x3fdac1b54195cc85              # double 0.41807299999999997
	.quad	0x3ff241f75104d552              # double 1.141105
	.quad	0x3ff39b0ee49f5169              # double 1.2253559999999999
	.quad	0x402134ad14a0a0f5              # double 8.6028830000000003
	.quad	0x401167acc4ef88b9              # double 4.3512449999999996
	.quad	0x3fbb327aa68f4b62              # double 0.106239
	.quad	0x3fce7fdc5931ca7d              # double 0.23827699999999999
	.quad	0x401f852e72da1230              # double 7.8800600000000003
	.quad	0x4018d4e618ce2d1f              # double 6.2079089999999999
	.quad	0x400fa182ecaeea64              # double 3.9538630000000001
	.quad	0x4014113a92a30553              # double 5.0168249999999999
	.quad	0x4020fb3d4ae429e1              # double 8.4907020000000006
	.quad	0x4005a1e9af5ba2be              # double 2.704059
	.quad	0x3fd7dd7ecbb7f9d7              # double 0.372894
	.quad	0x3ff9c280ae104923              # double 1.6099859999999999
	.quad	0x400ab31769a91106              # double 3.3374470000000001
	.quad	0x402084eb56fb8f58              # double 8.2596080000000001
	.quad	0x4008d9ed7c6fbd27              # double 3.1064099999999999
	.quad	0x4020f44028e4fb98              # double 8.4770520000000005
	.quad	0x401607e308787486              # double 5.5077020000000001
	.quad	0x40116340d4dc65c7              # double 4.346927
	.quad	0x401aa256bca5375d              # double 6.6585340000000004
	.quad	0x401e4bd09e12a51e              # double 7.5740379999999998
	.quad	0x40011d96e9bbf0dc              # double 2.1394479999999998
	.quad	0x4018449906cca2db              # double 6.0669899999999997
	.quad	0x401f6be33acd5b68              # double 7.8553589999999999
	.quad	0x400fb8ea7ce0fc2f              # double 3.9652910000000001
	.quad	0x400a26e8f29d40ee              # double 3.268999
	.quad	0x3fef16659d12cade              # double 0.97148400000000001
	.quad	0x40191015c209246c              # double 6.2657080000000001
	.quad	0x401a3f8ad2567989              # double 6.5620529999999997
	.quad	0x400a795aaf78feef              # double 3.3092549999999998
	.quad	0x400a5641700cd856              # double 3.2921170000000002
	.quad	0x401ad98a65492ff5              # double 6.7124420000000002
	.quad	0x4006309b738e6d16              # double 2.7737340000000001
	.quad	0x400fdf45e0b4e11e              # double 3.9840200000000001
	.quad	0x401f39fa97e132b5              # double 7.8066199999999996
	.quad	0x3ffc026138fffbce              # double 1.7505809999999999
	.quad	0x40226fec3547e069              # double 9.2185989999999993
	.quad	0x40096ff8ec0f8833              # double 3.1796739999999999
	.quad	0x40162b43d89ce4a8              # double 5.5422510000000003
	.quad	0x3fef31704ff4341a              # double 0.97478500000000001
	.quad	0x4014aa71151611ba              # double 5.1664469999999998
	.quad	0x40211a3a6ce3582a              # double 8.5512270000000008
	.quad	0x4003da250f840182              # double 2.4815160000000001
	.quad	0x40234bd5bab21816              # double 9.6481150000000007
	.quad	0x3fea7761cbccf28c              # double 0.82707299999999994
	.quad	0x4016bb139c94f69d              # double 5.6826920000000003
	.quad	0x400138f0c77dd873              # double 2.152803
	.quad	0x4022ab7e0ac7da1f              # double 9.3349460000000004
	.quad	0x401ed473cd573648              # double 7.7074730000000002
	.quad	0x4021379dd3bafd97              # double 8.6086259999999992
	.quad	0x4001c18bd66277c4              # double 2.2195049999999998
	.quad	0x4021eb64388ebcc7              # double 8.9597490000000004
	.quad	0x4007a1cffeb074a7              # double 2.9540099999999998
	.quad	0x4020669a0ad8a116              # double 8.2003939999999993
	.quad	0x400d543aeab7995f              # double 3.6661280000000001
	.quad	0x4015a713f077ccc0              # double 5.4131619999999998
	.quad	0x40056468cac4b4d0              # double 2.6740279999999998
	.quad	0x401923f63c31df76              # double 6.2851189999999999
	.quad	0x40153aba7b9170d6              # double 5.3073519999999998
	.quad	0x4018247b24638c97              # double 6.0356259999999997
	.quad	0x40006b80ecfa69be              # double 2.052492
	.quad	0x4020ba4f440af1cc              # double 8.3638860000000008
	.quad	0x40238bcdbbe0157f              # double 9.7730540000000001
	.quad	0x4016a044f1a1986c              # double 5.6565130000000003
	.quad	0x3fefa14f0520d131              # double 0.98844100000000001
	.quad	0x4012e549b62c7757              # double 4.7239139999999997
	.quad	0x40042d801b435265              # double 2.5222169999999999
	.quad	0x40107d03d9a95422              # double 4.1220850000000002
	.quad	0x3fe709dcf893faf4              # double 0.71995399999999998
	.quad	0x400d19f90539fba4              # double 3.6376819999999999
	.quad	0x40100eb95e5aff2a              # double 4.0143789999999999
	.quad	0x4005d676640a6b94              # double 2.7297180000000001
	.quad	0x3ff64f47304039ac              # double 1.394355
	.quad	0x3ff055054ac29bf1              # double 1.0207569999999999
	.quad	0x4022e2a5e785b5b7              # double 9.4426719999999999
	.quad	0x40181d2e514c22ee              # double 6.0284969999999998
	.quad	0x4011fa6b0d9513f9              # double 4.4945490000000001
	.quad	0x400669a133c1ce6c              # double 2.801577
	.quad	0x40204387160956c1              # double 8.1318900000000003
	.quad	0x400584484944ed70              # double 2.6895910000000001
	.quad	0x401b1f6598e10cf6              # double 6.7806610000000003
	.quad	0x40165176577531db              # double 5.5795529999999998
	.quad	0x401b8f1dc50ce4eb              # double 6.8897620000000002
	.quad	0x4022a808205ff1d8              # double 9.3281869999999997
	.quad	0x402374126a65cf68              # double 9.7267030000000005
	.quad	0x4020ec7da1ec4e72              # double 8.4618959999999994
	.quad	0x3ffc0e4b87bdcf03              # double 1.75349
	.quad	0x40204eededaec4a4              # double 8.1541589999999999
	.quad	0x401c960ed80a17b1              # double 7.146541
	.quad	0x400045b0ff10ecb7              # double 2.0340289999999999
	.quad	0x400881cd5f99c38b              # double 3.06338
	.quad	0x4021313a71151612              # double 8.5961490000000005
	.quad	0x400f7d27c3936827              # double 3.9361109999999999
	.quad	0x401aa574f722e1ac              # double 6.6615789999999997
	.quad	0x40151145953586cb              # double 5.2668670000000004
	.quad	0x401fa9591cd1c7de              # double 7.9153789999999997
	.quad	0x3fe50331e3a7daa5              # double 0.65664
	.quad	0x400d2558644523f6              # double 3.6432349999999998
	.quad	0x401de9c0229a5ebb              # double 7.4782719999999996
	.quad	0x3ff4568405b39e28              # double 1.2711220000000001
	.quad	0x400ca40e9d51b4fe              # double 3.5801059999999998
	.quad	0x401f8fe1da7b0b39              # double 7.8905099999999999
	.quad	0x4003070196d8f4f9              # double 2.3784209999999999
	.quad	0x402132b841248d7e              # double 8.599062
	.quad	0x400f6339c0ebedfa              # double 3.9234499999999999
	.quad	0x4006e8a1dfb9389b              # double 2.8635899999999999
	.quad	0x401baa6e75ff609e              # double 6.9164370000000002
	.quad	0x401157e0ac7da1ec              # double 4.3358179999999997
	.quad	0x40235b94d9407896              # double 9.6788699999999999
	.quad	0x4012b30b9dc2f406              # double 4.674849
	.quad	0x400ab52e2fbe33ad              # double 3.3384670000000001
	.quad	0x40158e681a9b8cb9              # double 5.3890690000000001
	.quad	0x400dc4894c447c31              # double 3.7209650000000001
	.quad	0x3ff79074213a0c6b              # double 1.4727669999999999
	.quad	0x400808ff327aa68f              # double 3.0043929999999999
	.quad	0x401af2afdda8bd23              # double 6.736999
	.quad	0x400a252934acaff7              # double 3.2681450000000001
	.quad	0x40192d41743e963e              # double 6.2941950000000002
	.quad	0x3feaf11b60ae9681              # double 0.84193200000000001
	.quad	0x4020c2732df505d1              # double 8.379785
	.quad	0x40134ce2089e3433              # double 4.825081
	.quad	0x40145139c94f69cb              # double 5.0793220000000003
	.quad	0x40236629f9ce8d97              # double 9.6995389999999996
	.quad	0x4023596f6512a950              # double 9.6746780000000001
	.quad	0x40126055fbb517a4              # double 4.5940779999999997
	.quad	0x401e25d0fa58f712              # double 7.5369299999999999
	.quad	0x4000b23810e88590              # double 2.087021
	.quad	0x401b74bb1af3a14d              # double 6.8639950000000001
	.quad	0x400e97d30ad46f58              # double 3.8241329999999998
	.quad	0x4006b9420b3d4ae4              # double 2.8404579999999999
	.quad	0x401a824a276b7ed4              # double 6.6272359999999999
	.quad	0x3fe3b3700474d9c7              # double 0.61565400000000003
	.quad	0x4014ed8127b2cc71              # double 5.2319380000000004
	.quad	0x40065e98dcdb37ca              # double 2.7961900000000002
	.quad	0x401ace4c51116a8c              # double 6.7014630000000004
	.quad	0x40161c34c1a8ac5c              # double 5.5275449999999999
	.quad	0x4022d141205bc01a              # double 9.4086999999999996
	.quad	0x401e8e3c536d655e              # double 7.6389019999999999
	.quad	0x401ead78811b1d93              # double 7.6694050000000002
	.quad	0x401da529bae46cfd              # double 7.4112920000000004
	.quad	0x4023d52d01c0ca60              # double 9.9163589999999999
	.quad	0x3fe45f9df548ecd9              # double 0.63667200000000002
	.quad	0x3fed8d759ee88df3              # double 0.92351799999999995
	.quad	0x3ff7646cfc829cfe              # double 1.462018
	.quad	0x4001ec083126e979              # double 2.2402500000000001
	.quad	0x401d38c32a8c9b84              # double 7.3054319999999997
	.quad	0x4020987e9d94d0dd              # double 8.297841
	.quad	0x40031908e581cf78              # double 2.3872239999999998
	.quad	0x401157f90d9d7775              # double 4.3359110000000003
	.quad	0x401140b630a91538              # double 4.3131950000000003
	.quad	0x401ae6ec9e236c16              # double 6.7255120000000002
	.quad	0x400b7118c197e564              # double 3.4302229999999998
	.quad	0x4015391dde37585c              # double 5.3057780000000001
	.quad	0x40220720c8cd63cc              # double 9.0139220000000008
	.quad	0x401a6e957470eb25              # double 6.6079920000000003
	.quad	0x40122832fcac8e69              # double 4.5392570000000001
	.quad	0x401b80029f16b11c              # double 6.8750099999999996
	.quad	0x40205e534373f317              # double 8.1842290000000002
	.quad	0x3ff7e005c4651f3f              # double 1.4921930000000001
	.quad	0x40239e09fe86833c              # double 9.8086699999999993
	.quad	0x4021c52bb23571d2              # double 8.8850990000000003
	.quad	0x401caeed02cd39da              # double 7.1708259999999999
	.quad	0x401209cc74b838c1              # double 4.5095689999999999
	.quad	0x4016460b2c83ec89              # double 5.5684019999999999
	.quad	0x3fcccdb7ae5796c0              # double 0.22502800000000001
	.quad	0x400981733226c3b9              # double 3.1882079999999999
	.quad	0x4015066e86c6583f              # double 5.2562810000000004
	.quad	0x4015efaebc408d8f              # double 5.4840650000000002
	.quad	0x401da13a4f8726d0              # double 7.4074489999999997
	.quad	0x3fffb2ca57a786c2              # double 1.98115
	.quad	0x401b57bbf93ff25e              # double 6.8356779999999997
	.quad	0x40235ffd3f5b5fa2              # double 9.6874789999999997
	.quad	0x3ff8ede657b84dba              # double 1.558081
	.quad	0x401e86e696a26e54              # double 7.6317389999999996
	.quad	0x3ff08dd93c46d82c              # double 1.0346310000000001
	.quad	0x4017ab5a20ddc619              # double 5.9173359999999997
	.quad	0x401d240b780346dc              # double 7.2851999999999997
	.quad	0x40152709b738e6d1              # double 5.2881229999999997
	.quad	0x4000eca4f440af1d              # double 2.1155490000000001
	.quad	0x4013df47735c182f              # double 4.9680460000000002
	.quad	0x4008f75536933a04              # double 3.120768
	.quad	0x401c8fc9795b35b1              # double 7.1404170000000002
	.quad	0x401cea747d805e5f              # double 7.2289599999999998
	.quad	0x3fe6c4dca8e2e2b9              # double 0.71153100000000002
	.quad	0x4022a62584f4c6e7              # double 9.3245050000000003
	.quad	0x3fafb8d3f1843c3a              # double 0.061956999999999998
	.quad	0x40225ce93e1c9b41              # double 9.1814669999999996
	.quad	0x4018b05186db50f4              # double 6.172186
	.quad	0x402323691212513b              # double 9.5691609999999993
	.quad	0x4012cd2a1f8e3ac1              # double 4.7003560000000002
	.quad	0x4022d6b24a6a875d              # double 9.4193289999999993
	.quad	0x400341626b2f2303              # double 2.4069259999999999
	.quad	0x40138dbf0563ed0f              # double 4.8884239999999997
	.quad	0x401d7ced916872b0              # double 7.3719999999999999
	.quad	0x401d8588e368f084              # double 7.3804049999999997
	.quad	0x40225f2799a1fd15              # double 9.1858489999999993
	.quad	0x4023a9aa3f034b0e              # double 9.8313769999999998
	.quad	0x400a338a3b57c4e3              # double 3.275166
	.quad	0x401ed34f3fd933e3              # double 7.7063569999999996
	.quad	0x4021f56de33269e0              # double 8.9793540000000007
	.quad	0x3ffff64cf8d716d3              # double 1.9976320000000001
	.quad	0x3ffde79ee02a77a3              # double 1.869048
	.quad	0x3ffbd0539fba450b              # double 1.738361
	.quad	0x4023f8f1d3ed527e              # double 9.9862199999999994
	.quad	0x3fe5dadd9c27e953              # double 0.68296699999999999
	.quad	0x400fad82ba5a0382              # double 3.9597220000000002
	.quad	0x401865d31337eb29              # double 6.0994380000000001
	.quad	0x400728198f1d3ed5              # double 2.8945799999999999
	.quad	0x401eb6bce8533b10              # double 7.6784549999999996
	.quad	0x4008c19c9d5a187a              # double 3.0945369999999999
	.quad	0x4011ea79bbadc098              # double 4.47898
	.quad	0x4023d7f0ed3d859d              # double 9.9217600000000008
	.quad	0x40226244e93e1c9b              # double 9.1919319999999995
	.quad	0x3fd05ee136e71cda              # double 0.25579099999999999
	.quad	0x401f5ca1059ea572              # double 7.8404579999999999
	.quad	0x4009ee9899bf5947              # double 3.2415020000000001
	.quad	0x3f75454152b0a6fc              # double 0.0051929999999999997
	.quad	0x3fe0c7d3d4280ae1              # double 0.524393
	.quad	0x401195c67dfe32a0              # double 4.3962649999999996
	.quad	0x40017cb89d6adf72              # double 2.185899
	.quad	0x401be873bc903ea7              # double 6.977004
	.quad	0x40103e98dcdb37ca              # double 4.0611300000000004
	.quad	0x401fc6694898f606              # double 7.9437610000000003
	.quad	0x4014a585be1a8262              # double 5.1616429999999998
	.quad	0x3ff319c8c9320d99              # double 1.1937949999999999
	.quad	0x3fe8702e6644d877              # double 0.76369399999999998
	.quad	0x4021a6501e2584f5              # double 8.8248300000000004
	.quad	0x3ff191f4f50a02b8              # double 1.0981339999999999
	.quad	0x4011282235b4edb3              # double 4.289193
	.quad	0x3ff4b0ea18372e6a              # double 1.2931919999999999
	.quad	0x3ff52682b6284599              # double 1.3219019999999999
	.quad	0x402168b652370479              # double 8.7045159999999999
	.quad	0x40183fede97d06bc              # double 6.0624310000000001
	.quad	0x401c0d50a88effe3              # double 7.0130030000000003
	.quad	0x40118e53eb399f5e              # double 4.388992
	.quad	0x401def98fa376923              # double 7.4839820000000001
	.quad	0x40192b17ce52deca              # double 6.2920829999999999
	.quad	0x4021efea5f84cad5              # double 8.9685849999999991
	.quad	0x40212359146e4c0e              # double 8.5690390000000001
	.quad	0x40229b4e3369b9d8              # double 9.303331
	.quad	0x4012f0fdc1615ec0              # double 4.7353430000000003
	.quad	0x400aabb5e0f7fcfc              # double 3.3338429999999999
	.quad	0x3faff90d9d7774ac              # double 0.062447000000000003
	.quad	0x4018c9070fbeb9e5              # double 6.1963160000000004
	.quad	0x40005dab5c39bcba              # double 2.0457369999999999
	.quad	0x400b569f4906034f              # double 3.4172959999999999
	.quad	0x400a92ba16e7a312              # double 3.321644
	.quad	0x4022ef15a4acf313              # double 9.4669620000000005
	.quad	0x40209b81733226c4              # double 8.3037220000000004
	.quad	0x40008c02f2f98740              # double 2.068365
	.quad	0x4020fef2c7325919              # double 8.4979460000000007
	.quad	0x3ffaa6ca03c4b09f              # double 1.6657200000000001
	.quad	0x3ffaddb3397dd00f              # double 1.6791259999999999
	.quad	0x40016d373affb04f              # double 2.178328
	.quad	0x4000c12b5e529bae              # double 2.0943209999999999
	.quad	0x401a518efbb0e5e6              # double 6.5796469999999996
	.quad	0x3fe74319c5a3e39f              # double 0.72694099999999995
	.quad	0x4023ac2374794ea0              # double 9.8362079999999992
	.quad	0x40062fe0ce0b912e              # double 2.7733780000000001
	.quad	0x3fcbae3608d0891a              # double 0.216254
	.quad	0x401244ddb5525cc4              # double 4.5672519999999999
	.quad	0x4016d0c4156e264e              # double 5.7038729999999997
	.quad	0x40207dece5710881              # double 8.2459480000000003
	.quad	0x40084db9c7368ad7              # double 3.0379520000000002
	.quad	0x4021472862f5989e              # double 8.6389800000000001
	.quad	0x401aa7264a16a487              # double 6.6632319999999998
	.quad	0x401da11622813448              # double 7.4073109999999999
	.quad	0x40039a6266fd651b              # double 2.450383
	.quad	0x3ff079d5e4a38327              # double 1.0297449999999999
	.quad	0x4007435e74299d88              # double 2.9078949999999999
	.quad	0x401e5a4873365882              # double 7.5881670000000003
	.quad	0x40138a43fe5c91d1              # double 4.8850249999999997
	.quad	0x3fc34057082491b0              # double 0.15040100000000001
	.quad	0x3fd75b078d92fb1a              # double 0.36493100000000001
	.quad	0x40221d10b1feeb2d              # double 9.0567679999999999
	.quad	0x400a262ed352220c              # double 3.2686440000000001
	.quad	0x4006d4e22a2c2374              # double 2.8539469999999998
	.quad	0x4012ccd78c436fc1              # double 4.7000409999999997
	.quad	0x401cf332f01754b0              # double 7.2374989999999997
	.quad	0x4014d9c6b0531983              # double 5.2126720000000004
	.quad	0x3fe5b1422ccb3a26              # double 0.67788800000000005
	.quad	0x400230247021d10b              # double 2.2735069999999999
	.quad	0x401ad29b280f12c2              # double 6.7056699999999996
	.quad	0x3ffe8c4ef88b9778              # double 1.9092549999999999
	.quad	0x40151a7a85015c21              # double 5.2758580000000004
	.quad	0x3ff1889c1b54195d              # double 1.095852
	.quad	0x4000637585be1a82              # double 2.0485639999999998
	.quad	0x4023b50ca1cef241              # double 9.853612
	.quad	0x4014bef39085f4a1              # double 5.1864759999999999
	.quad	0x400c4931876188b1              # double 3.535739
	.quad	0x4012ead7d7c2ca15              # double 4.7293390000000004
	.quad	0x3fd66d00b45ae600              # double 0.35040300000000002
	.quad	0x401530fc71d60631              # double 5.2978379999999996
	.quad	0x40238e9f05ea24cc              # double 9.7785569999999992
	.quad	0x402226bcc6c54bcf              # double 9.0756589999999999
	.quad	0x4019dc0db2702a35              # double 6.4648960000000004
	.quad	0x4001a04c05921038              # double 2.2032699999999998
	.quad	0x401947446f9b994e              # double 6.3195969999999999
	.quad	0x401557ecbb7f9d6f              # double 5.3358639999999999
	.quad	0x401342de8709741d              # double 4.815302
	.quad	0x40237dd67ba237ce              # double 9.7457770000000004
	.quad	0x401722fc2656abde              # double 5.7841649999999998
	.quad	0x4020c7b17ce52ded              # double 8.3900260000000006
	.quad	0x402155f82b1f687b              # double 8.6679089999999999
	.quad	0x3ff4c6fef7c243dd              # double 1.298583
	.quad	0x4014494face67d78              # double 5.071593
	.quad	0x4011bff609dcf894              # double 4.437462
	.quad	0x3ff2cba40d90e23b              # double 1.174717
	.quad	0x401f3118c197e564              # double 7.7979459999999996
	.quad	0x4022411eeaa6d267              # double 9.1271889999999996
	.quad	0x3fd6ecbb7f9d6f11              # double 0.35819899999999999
	.quad	0x4006f7df19d66adb              # double 2.8710309999999999
	.quad	0x4016aa8c586876e2              # double 5.6665510000000001
	.quad	0x4018adbb16c1e365              # double 6.1696590000000002
	.quad	0x3ff82bf01322f273              # double 1.5107269999999999
	.quad	0x4023b7bedb7281fe              # double 9.8588780000000007
	.quad	0x3ff4fcdcca70d1fa              # double 1.311734
	.quad	0x400383b3636f3b21              # double 2.4393069999999999
	.quad	0x401dcc8fb86f47b6              # double 7.4497669999999996
	.quad	0x4019cbdbe3c10518              # double 6.4490809999999996
	.quad	0x3ffe6b65a9a80496              # double 1.9012199999999999
	.quad	0x3ff7500c521dda06              # double 1.4570430000000001
	.quad	0x40218abc72e275ab              # double 8.7709689999999991
	.quad	0x4015c3f6c2699c7c              # double 5.4413710000000002
	.quad	0x40161182a9930be1              # double 5.5171000000000001
	.quad	0x4022f2fbc1acde1a              # double 9.474577
	.quad	0x4004ef1a1986b9c3              # double 2.616749
	.quad	0x4021d2c7b890d5a6              # double 8.9116800000000005
	.quad	0x4020031df761cbcd              # double 8.0060880000000001
	.quad	0x401bb25c3dee7818              # double 6.9241799999999998
	.quad	0x40109c918e325d4a              # double 4.1528989999999997
	.quad	0x3ffb2a077036c9c1              # double 1.6977610000000001
	.quad	0x4005c0aaeafab53d              # double 2.7190759999999998
	.quad	0x3fede8815e39713b              # double 0.93463200000000002
	.quad	0x40230a32096787cf              # double 9.5199130000000007
	.quad	0x3ffdd695d91ab8e9              # double 1.864889
	.quad	0x400bb079e59f2baa              # double 3.4611700000000001
	.quad	0x40064746455eaee2              # double 2.784802
	.quad	0x401d20f16f4384ba              # double 7.2821709999999999
	.quad	0x40200fc286f8ad25              # double 8.0307809999999993
	.quad	0x3fda84a515ce9e5e              # double 0.41434599999999999
	.quad	0x3fe3d9274e22a2c2              # double 0.62025799999999998
	.quad	0x401760f2becedd48              # double 5.8446759999999998
	.quad	0x401083e8dda48b65              # double 4.1288179999999999
	.quad	0x40236e74080f98fa              # double 9.7157289999999996
	.quad	0x400d940c4156e265              # double 3.697289
	.quad	0x402197e86833c600              # double 8.7966949999999997
	.quad	0x401f896312f4cf4a              # double 7.8841669999999997
	.quad	0x40235dea67e846a6              # double 9.6834290000000003
	.quad	0x40040c282c6ef3d4              # double 2.5059360000000002
	.quad	0x3ff9d65d3996fa83              # double 1.614835
	.quad	0x4002909a671ef30a              # double 2.3206069999999999
	.quad	0x3fefce39b456b442              # double 0.99392400000000003
	.quad	0x4002fcbff47735c2              # double 2.3734130000000002
	.quad	0x4014f50efdc9c4db              # double 5.2393150000000004
	.quad	0x4015407f23cc8de3              # double 5.3129850000000003
	.quad	0x4009acfaeff5c6c1              # double 3.209463
	.quad	0x3ff2cafb3b752114              # double 1.1745559999999999
	.quad	0x402345dd4c76d118              # double 9.6364540000000005
	.quad	0x4012b70c564f97ee              # double 4.6787580000000002
	.quad	0x401bab03e20ccff2              # double 6.9170069999999999
	.quad	0x40036cae642bf983              # double 2.428067
	.quad	0x401877d3910c2c5e              # double 6.1170179999999998
	.quad	0x402038c38f366949              # double 8.1108670000000007
	.quad	0x400470e560418937              # double 2.5551249999999999
	.quad	0x402131769a91105e              # double 8.5966079999999998
	.quad	0x3fd9186db50f40e6              # double 0.39211600000000002
	.quad	0x3ff8506dd69d3027              # double 1.519636
	.quad	0x3fec297396d0917d              # double 0.88005999999999995
	.quad	0x40213f98d8a979e1              # double 8.6242129999999992
	.quad	0x4023b89bb6aa4b99              # double 9.8605630000000008
	.quad	0x40176c51116a8b8f              # double 5.8557779999999999
	.quad	0x400e9fdef8487b9a              # double 3.8280620000000001
	.quad	0x3fff542917507e9e              # double 1.9580470000000001
	.quad	0x40204123810e8859              # double 8.127224
	.quad	0x3ff4c0e38a7e73a3              # double 1.2970919999999999
	.quad	0x3fff0080f98fa377              # double 1.9376230000000001
	.quad	0x4022b754b05b7cfe              # double 9.3580679999999994
	.quad	0x4022753996fa82e8              # double 9.2289549999999991
	.quad	0x40128d4bf0995aaf              # double 4.6379849999999996
	.quad	0x3ffdc4c48adeebb3              # double 1.8605389999999999
	.quad	0x4022f692f6e8294a              # double 9.4815900000000006
	.quad	0x40212a21c8a7a41e              # double 8.5822889999999994
	.quad	0x402263cbc48f10aa              # double 9.1949140000000007
	.quad	0x401c2897e996312f              # double 7.0396419999999997
	.quad	0x401ad0763a190082              # double 6.703576
	.quad	0x401f68b8f14db595              # double 7.8522679999999995
	.quad	0x400c650374ff865d              # double 3.5493229999999998
	.quad	0x400396bc1eff9f88              # double 2.448601
	.quad	0x3fc9892ee84ad795              # double 0.19949900000000001
	.quad	0x3ff139a8cdea033e              # double 1.0765769999999999
	.quad	0x401de3608d08919f              # double 7.472048
	.quad	0x401610ec74320104              # double 5.516527
	.quad	0x400ccb45ae5ffa3c              # double 3.5992540000000002
	.quad	0x401ee1ef30a4e37a              # double 7.7206390000000003
	.quad	0x3fec6ccc46950fc7              # double 0.88828099999999999
	.quad	0x401c64028e4fb97c              # double 7.0976660000000003
	.quad	0x4007e17dae81882b              # double 2.9851030000000001
	.quad	0x40126d0d49949e88              # double 4.6064959999999999
	.quad	0x4018efe2e6ea8544              # double 6.2342639999999996
	.quad	0x4023f2acb85a4f01              # double 9.9739740000000001
	.quad	0x4022081e68a0d34a              # double 9.0158570000000005
	.quad	0x3ffdec493426783a              # double 1.870187
	.quad	0x3ff74b6f9fcb0c02              # double 1.4559169999999999
	.quad	0x401cbe4a7b4e54f8              # double 7.1858310000000003
	.quad	0x400ae62dc6e2a800              # double 3.3623919999999998
	.quad	0x4015c6748e475600              # double 5.4438040000000001
	.quad	0x401058b439581062              # double 4.0866249999999997
	.quad	0x401ad9591cd1c7de              # double 6.7122539999999997
	.quad	0x40221c88a47ecfea              # double 9.0557300000000005
	.quad	0x4023796a8b8f14db              # double 9.7371409999999993
	.quad	0x3ffc8a0c282c6ef4              # double 1.783703
	.quad	0x401d43ca31e7d999              # double 7.3162010000000004
	.quad	0x3fe75a0dfdef8488              # double 0.72974300000000003
	.quad	0x401a194f69ca9ef5              # double 6.5247169999999999
	.quad	0x401a213cab81f96a              # double 6.5324580000000001
	.quad	0x3fef26f826edaa93              # double 0.97350700000000001
	.quad	0x400e980d3cff64d0              # double 3.8242440000000002
	.quad	0x40211b52eb5f5f0b              # double 8.5533669999999997
	.quad	0x4022466687f455a8              # double 9.1375010000000003
	.quad	0x402126916440f239              # double 8.5753280000000007
	.quad	0x3fed1d4b6a619daa              # double 0.90982600000000002
	.quad	0x40146145953586cb              # double 5.0949920000000004
	.quad	0x4012f83cf2cf95d5              # double 4.7424200000000001
	.quad	0x3ffc4b1bbcf4e875              # double 1.768337
	.quad	0x4021beaaf35e310e              # double 8.8723980000000005
	.quad	0x4011e30a4e379b78              # double 4.4717190000000002
	.quad	0x3ffe366e86c6583f              # double 1.8882890000000001
	.quad	0x3ffa6ef2c7325919              # double 1.6520870000000001
	.quad	0x40101ee6b8305d96              # double 4.0301770000000001
	.quad	0x4018115054ac29bf              # double 6.0169079999999999
	.quad	0x401cef5275ee99a6              # double 7.2337129999999998
	.quad	0x3fd2275ee99a62ed              # double 0.28365299999999999
	.quad	0x4021d1c9f72f76e6              # double 8.9097439999999999
	.quad	0x3ff44fe8ab4fa483              # double 1.269509
	.quad	0x4013f0e6afcce1c6              # double 4.9852550000000004
	.quad	0x4005a5d4a5df223a              # double 2.705972
	.quad	0x3ff755a07b352a84              # double 1.458405
	.quad	0x3ff806540cc78e9f              # double 1.5015449999999999
	.quad	0x4023f7f759685122              # double 9.9843089999999997
	.quad	0x3fc4c64fdb09a672              # double 0.162302
	.quad	0x3feb596851223183              # double 0.85466399999999998
	.quad	0x401ca8f92af9a8ce              # double 7.1650130000000001
	.quad	0x3fe953804534bd77              # double 0.79144300000000001
	.quad	0x40120102bc72e276              # double 4.5009870000000003
	.quad	0x40175ce6c093d966              # double 5.8407239999999998
	.quad	0x4000fb64e054690e              # double 2.1227510000000001
	.quad	0x4001ea3400b88ca4              # double 2.239357
	.quad	0x401e6e90795f676f              # double 7.6079730000000003
	.quad	0x4020222f6a50d6b2              # double 8.0667679999999997
	.quad	0x400cd92d1287c201              # double 3.6060430000000001
	.quad	0x4018ba7829068987              # double 6.182099
	.quad	0x401ef011904b3c3e              # double 7.7344419999999996
	.quad	0x4020ff903211cb04              # double 8.4991470000000006
	.quad	0x401d0ebcc6c54bcf              # double 7.264392
	.quad	0x3fffbd1bb4916ca4              # double 1.9836689999999999
	.quad	0x401a0ea78af3e469              # double 6.5143110000000002
	.quad	0x4010e6e5471715c6              # double 4.2254839999999998
	.quad	0x4023e2ac322291fb              # double 9.9427199999999995
	.quad	0x40224fe21d96e9bc              # double 9.1560220000000001
	.quad	0x40231994e1a3f466              # double 9.5499639999999992
	.quad	0x4011ef9ca5bd944b              # double 4.4839960000000003
	.quad	0x401b72b9d3cbc48f              # double 6.8620369999999999
	.quad	0x3fa805e5f30e7ff6              # double 0.046920000000000003
	.quad	0x401179528f190d17              # double 4.3684789999999998
	.quad	0x402040cfe154434e              # double 8.1265859999999996
	.quad	0x3fe611dffc5479d5              # double 0.68968200000000002
	.quad	0x4021ac06e19b90eb              # double 8.8359900000000007
	.quad	0x3fb1918a009f6230              # double 0.068626999999999994
	.quad	0x4012323c85c24c40              # double 4.5490589999999997
	.quad	0x4021c28b8f14db59              # double 8.8799709999999994
	.quad	0x40224c61522a6f3f              # double 9.1491799999999994
	.quad	0x400ac5e785b5b707              # double 3.3466330000000002
	.quad	0x3ffa61f3a57eaa2a              # double 1.648914
	.quad	0x3fe3777f27fe4bcb              # double 0.60833700000000002
	.quad	0x400e55bccaf709b7              # double 3.7918639999999999
	.quad	0x40219e523704790c              # double 8.8092210000000008
	.quad	0x3fec8614163779ea              # double 0.89136700000000002
	.quad	0x40179546d3f9e7b8              # double 5.895778
	.quad	0x4017569d30270f39              # double 5.8345840000000004
	.quad	0x3ffd66aa8eb46349              # double 1.8375649999999999
	.quad	0x400b824d4cb9ecf6              # double 3.4386239999999999
	.quad	0x401d96b6e0d23d4f              # double 7.3971819999999999
	.quad	0x402124766c6de764              # double 8.5712159999999997
	.quad	0x402092a7bd48cb4b              # double 8.2864360000000001
	.quad	0x401b4d6451b93038              # double 6.8255780000000001
	.quad	0x401438db8bac710d              # double 5.0555250000000003
	.quad	0x4017a2917507e9d9              # double 5.9087579999999997
	.quad	0x402351107faa044b              # double 9.6583290000000001
	.quad	0x4017af50a02b8412              # double 5.9212059999999997
	.quad	0x40239deb52c9d170              # double 9.8084360000000004
	.quad	0x3fc99791819d2392              # double 0.199938
	.quad	0x4021b29b499d0204              # double 8.8488410000000001
	.quad	0x400af71971c10d7c              # double 3.370654
	.quad	0x401e0cf56eac8605              # double 7.5126549999999996
	.quad	0x401fbfa333764f12              # double 7.9371460000000003
	.quad	0x4019f287c200c0f0              # double 6.4868459999999999
	.quad	0x401adad5bee3d5fe              # double 6.7137060000000002
	.quad	0x4016d4d6e47dc37a              # double 5.7078509999999998
	.quad	0x3fe0d6b00ffda405              # double 0.52620699999999998
	.quad	0x401736b09635610b              # double 5.8034080000000001
	.quad	0x401fc0a5accd5305              # double 7.9381320000000004
	.quad	0x3ff661cac083126f              # double 1.3988750000000001
	.quad	0x400552aa5c5f7c67              # double 2.6653639999999998
	.quad	0x401a9c36544fe36d              # double 6.6525509999999999
	.quad	0x401eae429e0a41a2              # double 7.6701759999999997
	.quad	0x40158e236c15d2d0              # double 5.3888069999999999
	.quad	0x3ffa3968d759ee89              # double 1.639016
	.quad	0x40239b443d46b26c              # double 9.803255
	.quad	0x40214004d9839475              # double 8.6250370000000007
	.quad	0x401237a8d64d7f0f              # double 4.5543550000000002
	.quad	0x4001e4bec679cc75              # double 2.2366920000000001
	.quad	0x3ff0bc1bda5119ce              # double 1.045925
	.quad	0x40084c3009b30729              # double 3.037201
	.quad	0x40013132f87ad081              # double 2.1490230000000001
	.quad	0x3fef60e51d25aab4              # double 0.98057799999999994
	.quad	0x401dd031055b8994              # double 7.4533120000000004
	.quad	0x40119ab474107315              # double 4.4010790000000002
	.quad	0x4018acd6c2efd439              # double 6.1687880000000002
	.quad	0x400d00af1cb89d6b              # double 3.6253340000000001
	.quad	0x401ef93d102bc72e              # double 7.7433969999999999
	.quad	0x4007d079e59f2baa              # double 2.9767950000000001
	.quad	0x40153deb52c9d170              # double 5.3104680000000002
	.quad	0x3fdd40d0aaa7ded7              # double 0.45708100000000002
	.quad	0x40200bb0813cab82              # double 8.022831
	.quad	0x4020371b47842310              # double 8.1076300000000003
	.quad	0x4020bcb039ef0f17              # double 8.3685320000000001
	.quad	0x4012c96feb4a6656              # double 4.6967160000000003
	.quad	0x400b3522a6f3f530              # double 3.4009450000000001
	.quad	0x4021175e41d4b6a6              # double 8.5456409999999998
	.quad	0x400ad4b61fe21d97              # double 3.353863
	.quad	0x4022388e9b38d60a              # double 9.1104629999999993
	.quad	0x4001dd25aab47410              # double 2.2329819999999998
	.quad	0x400e27631b584b1b              # double 3.7692320000000001
	.quad	0x3feefa5d28d002e2              # double 0.96806199999999998
	.quad	0x3fe88a50507a6bd7              # double 0.76688400000000001
	.quad	0x3fe63d512ec6bce8              # double 0.69498499999999996
	.quad	0x3ffcc2fb5d031056              # double 1.7976030000000001
	.quad	0x401658df7a4e7ab7              # double 5.5867899999999997
	.quad	0x3ff18982cb20fb22              # double 1.0960719999999999
	.quad	0x40205d590c0ad03e              # double 8.1823200000000007
	.quad	0x401855c2d2780779              # double 6.0837510000000004
	.quad	0x4017573083558a76              # double 5.8351459999999999
	.quad	0x40091e34b945308c              # double 3.1397490000000001
	.quad	0x3fb1199bb2788db0              # double 0.066796999999999995
	.quad	0x402377bca1059ea5              # double 9.7338609999999992
	.quad	0x402170305d95dd4c              # double 8.7191189999999991
	.quad	0x4022ee392e1ef73c              # double 9.4652799999999999
	.quad	0x40114bef8ceb356e              # double 4.3241560000000003
	.quad	0x3ff5aa3df6db9410              # double 1.354063
	.quad	0x401f3b1897a67a53              # double 7.8077110000000002
	.quad	0x402210e970718223              # double 9.0330309999999994
	.quad	0x3fe1a7913e81450f              # double 0.551705
	.quad	0x3ff7fe8ee6b8305e              # double 1.4996480000000001
	.quad	0x4016673797460243              # double 5.6007980000000002
	.quad	0x40093cdcca70d1fa              # double 3.1547179999999999
	.quad	0x400345f84cad57bc              # double 2.4091649999999998
	.quad	0x400a5ebc83a96d4c              # double 3.2962579999999999
	.quad	0x3fc0c093d9663843              # double 0.13087699999999999
	.quad	0x40216a350d2806af              # double 8.7074359999999995
	.quad	0x401026dc5d638866              # double 4.0379500000000004
	.quad	0x3ff47bc6eb0b7c35              # double 1.280219
	.quad	0x401f6bb517a46174              # double 7.8551830000000002
	.quad	0x4014047c30d306a3              # double 5.0043800000000003
	.quad	0x3fc0f6ad70e6f2e9              # double 0.13252800000000001
	.quad	0x4001a0c7c0f45176              # double 2.203506
	.quad	0x3ffae1b9f98b71b9              # double 1.6801090000000001
	.quad	0x4019ce9dd7ecbb80              # double 6.4517740000000003
	.quad	0x402024cfd08d4bad              # double 8.0718979999999991
	.quad	0x4022eab3461309c8              # double 9.458399
	.quad	0x40013d816aceaaf3              # double 2.1550319999999998
	.quad	0x4011b0060780fdc1              # double 4.4218979999999997
	.quad	0x3fda4de3b8a19c9d              # double 0.41100399999999998
	.quad	0x40226ad080b673c5              # double 9.2086220000000001
	.quad	0x4020d502ababead5              # double 8.4160360000000001
	.quad	0x3fe90cfbfc6540cc              # double 0.78283499999999994
	.quad	0x401c3d640e9d51b5              # double 7.059952
	.quad	0x3ff1f8d92fb19e73              # double 1.123254
	.quad	0x3ffefee6fb4c3c19              # double 1.9372320000000001
	.quad	0x4019475a74c09c3d              # double 6.3196810000000001
	.quad	0x4020880fdc1615ec              # double 8.265746
	.quad	0x3fe7c32ca57a786c              # double 0.74257499999999999
	.quad	0x3fd27c1376d54973              # double 0.288823
	.quad	0x40233f6427c7c526              # double 9.6238109999999999
	.quad	0x401a1fbca1059ea5              # double 6.5309929999999996
	.quad	0x4020bb1290257c91              # double 8.3653759999999995
	.quad	0x4010c1a4bdba0a52              # double 4.1891049999999996
	.quad	0x4022d0eb463497b7              # double 9.4080449999999995
	.quad	0x401c494af4f0d845              # double 7.0715750000000002
	.quad	0x3fe36e08f2170931              # double 0.607182
	.quad	0x40182ec743201041              # double 6.0456820000000002
	.quad	0x401f4964e8b7e4de              # double 7.8216739999999998
	.quad	0x3ff8e9e7fb267c6c              # double 1.5571060000000001
	.quad	0x3ff1bcc2938de6de              # double 1.108584
	.quad	0x4012c074213a0c6b              # double 4.6879429999999997
	.quad	0x400543315d701d9f              # double 2.6578089999999999
	.quad	0x3fe829b280f12c28              # double 0.75509000000000004
	.quad	0x3fe80bfe3b03e20d              # double 0.75146400000000002
	.quad	0x40051dd54da4ce81              # double 2.639567
	.quad	0x4014f492bc2fc697              # double 5.2388409999999999
	.quad	0x400be5faebc408d9              # double 3.487295
	.quad	0x4021a25d4a5df224              # double 8.8171180000000006
	.quad	0x4000b1a005c4651f              # double 2.0867309999999999
	.quad	0x400b35970b49e01e              # double 3.4011670000000001
	.quad	0x401bfe2c98e53eb4              # double 6.9982170000000004
	.quad	0x401e2523704790b8              # double 7.5362679999999997
	.quad	0x40204ef06b37867f              # double 8.1541779999999999
	.quad	0x401cd30db6a1e81d              # double 7.2061070000000003
	.quad	0x40189b923a29c77a              # double 6.1519250000000003
	.quad	0x4017aac9f2fdb8fe              # double 5.9167860000000001
	.quad	0x4005970153bd1676              # double 2.6987329999999998
	.quad	0x401453b1d0c80410              # double 5.0817329999999998
	.quad	0x401c6c886162f167              # double 7.1059890000000001
	.quad	0x401aa6d2ed783dff              # double 6.6629139999999998
	.quad	0x4015e3d31b9b66f9              # double 5.4724849999999998
	.quad	0x401ab512231832fd              # double 6.6768270000000003
	.quad	0x400a3f23465625a7              # double 3.2808290000000002
	.quad	0x400b52d905c03361              # double 3.4154529999999999
	.quad	0x3fe2afea3df6db94              # double 0.58397399999999999
	.quad	0x4022a858ff759685              # double 9.3288039999999999
	.quad	0x4015f8b69552e2fc              # double 5.4928840000000001
	.quad	0x3ff504c059210386              # double 1.31366
	.quad	0x4017d27fe4bcad9b              # double 5.9555660000000001
	.quad	0x3fdc446f9b994e1a              # double 0.44167699999999999
	.quad	0x4022db784662bae0              # double 9.4286519999999996
	.quad	0x400367e7c06e19b9              # double 2.425735
	.quad	0x401cc8e4755ffe6d              # double 7.1961839999999997
	.quad	0x4002f41aef6f8f04              # double 2.369192
	.quad	0x3ff86b606b7aa25e              # double 1.5262150000000001
	.quad	0x4021e61ac57e23f2              # double 8.9494229999999995
	.quad	0x40149e3476295209              # double 5.1544970000000001
	.quad	0x400d85e0b4e11dbd              # double 3.6903700000000002
	.quad	0x4018caa21a719b4e              # double 6.1978840000000002
	.quad	0x4007a3b46fdeb52d              # double 2.9549340000000002
	.quad	0x4013b19a415f45e1              # double 4.9234400000000003
	.quad	0x400e72a305532618              # double 3.8059750000000001
	.quad	0x401aed523b3636f4              # double 6.7317590000000003
	.quad	0x40031d0d0678c005              # double 2.3891849999999999
	.quad	0x4008d784662bae04              # double 3.1052330000000001
	.quad	0x400e9b139c94f69d              # double 3.8257210000000001
	.quad	0x3ffade321a2e7f6f              # double 1.6792469999999999
	.quad	0x40186815e39713ad              # double 6.1016459999999997
	.quad	0x401efaaf35e310dc              # double 7.7448090000000001
	.quad	0x401e1653868fd19a              # double 7.5218030000000002
	.quad	0x400229e3c968943e              # double 2.270454
	.quad	0x3fef68d10f51ac9b              # double 0.981545
	.quad	0x3fe00c34c1a8ac5c              # double 0.50148999999999999
	.quad	0x3ff890ff97247454              # double 1.5354000000000001
	.quad	0x401f1a8deb0fadf3              # double 7.775932
	.quad	0x40025704790b8499              # double 2.2924890000000002
	.quad	0x401e35c810a569b1              # double 7.5525209999999995
	.quad	0x400e2a8d21bc126a              # double 3.7707769999999998
	.quad	0x400ab7d955714b9d              # double 3.3397700000000001
	.quad	0x400f3e047d3d4281              # double 3.9052820000000001
	.quad	0x4023b0e8427418d7              # double 9.8455220000000007
	.quad	0x4017997635e7429a              # double 5.8998650000000001
	.quad	0x4007bab430f49492              # double 2.966164
	.quad	0x3feeeb24a6a875d5              # double 0.96620399999999995
	.quad	0x4016f24bba12b5e5              # double 5.7366169999999999
	.quad	0x4010466d373affb0              # double 4.0687759999999997
	.quad	0x4017bc6045baf534              # double 5.933961
	.quad	0x400d0fe2e6ea8544              # double 3.6327569999999998
	.quad	0x40116907d912556d              # double 4.3525689999999999
	.quad	0x4002b440af1cb89d              # double 2.3380139999999998
	.quad	0x401e57064ece9a2c              # double 7.5849849999999996
	.quad	0x400bba415f45e0b5              # double 3.4659450000000001
	.quad	0x4008ba77e5eaab04              # double 3.0910489999999999
	.quad	0x401d37b07075b3e1              # double 7.3043839999999998
	.quad	0x401f1fd651b0ccbc              # double 7.781091
	.quad	0x3ff4eb6f19934efd              # double 1.3074790000000001
	.quad	0x4020eb9fba450acc              # double 8.4602029999999999
	.quad	0x3fec19dece571088              # double 0.87815799999999999
	.quad	0x401582441fea8113              # double 5.3772130000000002
	.quad	0x402118f345069a4e              # double 8.5487310000000001
	.quad	0x401e19ffd60e94ee              # double 7.5253899999999998
	.quad	0x3ffecfabda0dfdf0              # double 1.9257010000000001
	.quad	0x40225690ff972474              # double 9.1690749999999994
	.quad	0x400a98b26394face              # double 3.3245589999999998
	.quad	0x40206bb18dac258d              # double 8.2103389999999994
	.quad	0x4021d551b4fe79ee              # double 8.916639
	.quad	0x4013b0b6b6e0d23d              # double 4.9225719999999997
	.quad	0x4018f19ce075f6fd              # double 6.2359499999999999
	.quad	0x4003483d35eb7458              # double 2.4102730000000001
	.quad	0x3fd24c9c90c4dec2              # double 0.28592600000000001
	.quad	0x40162e5b4245f5ae              # double 5.5452700000000004
	.quad	0x40009f340d4dc65c              # double 2.0777359999999998
	.quad	0x4010fdae81882adc              # double 4.2477359999999997
	.quad	0x4009e778140dd3fe              # double 3.238022
	.quad	0x4018bf7f498c3b0c              # double 6.1870089999999998
	.quad	0x4019190e66cb1034              # double 6.2744689999999999
	.quad	0x40174d8be7296f65              # double 5.8257289999999999
	.quad	0x3f9bb8800eae18ad              # double 0.027071000000000001
	.quad	0x40002ed80a17b0f7              # double 2.0228730000000001
	.quad	0x401d2cc35ce18266              # double 7.2937139999999996
	.quad	0x4022c6006d0d4995              # double 9.3867220000000006
	.quad	0x401f47807789a459              # double 7.8198259999999999
	.quad	0x400cb8ce2d1f1cfc              # double 3.5902370000000001
	.quad	0x401dc1ae2da554b9              # double 7.4391410000000002
	.quad	0x40128f572de43ed9              # double 4.6399809999999997
	.quad	0x3fdd1b823c85c24c              # double 0.45480399999999999
	.quad	0x4013bb14ec204f2b              # double 4.9326970000000001
	.quad	0x401f1710880d801b              # double 7.7725239999999997
	.quad	0x402369b003686a4d              # double 9.7064210000000006
	.quad	0x40186b17481b21c4              # double 6.1045809999999996
	.quad	0x3ff03d1676640a6c              # double 1.0149140000000001
	.quad	0x4023839de481f538              # double 9.7570639999999997
	.quad	0x4016799d0203e63f              # double 5.6187630000000004
	.quad	0x4006abbba55d1c3b              # double 2.8338540000000001
	.quad	0x4002992fb19e731d              # double 2.3247979999999999
	.quad	0x4005482adc4c9c91              # double 2.6602380000000001
	.quad	0x40147bfad2999568              # double 5.1210740000000001
	.quad	0x3fd3cd8127b2cc71              # double 0.30941800000000003
	.quad	0x40122f2239e6ab9b              # double 4.5460289999999999
	.quad	0x40089ddf43c7d5ed              # double 3.077086
	.quad	0x3fba7fa1a0cf1801              # double 0.10351
	.quad	0x400044ac6cdaf4ae              # double 2.0335320000000001
	.quad	0x401be1de26916441              # double 6.970574
	.quad	0x3ff3808a697aeddd              # double 1.218882
	.quad	0x401e5f583a53b8e5              # double 7.5931100000000002
	.quad	0x4013e54c985f06f7              # double 4.9739250000000004
	.quad	0x4009f078d92fb19e              # double 3.2424179999999998
	.quad	0x402206d938151a43              # double 9.0133759999999992
	.quad	0x401bbf5989df1173              # double 6.9368650000000001
	.quad	0x401e8dac258d5843              # double 7.6383520000000002
	.quad	0x40109c09c3ce208a              # double 4.1523810000000001
	.quad	0x4022555992428d43              # double 9.1666989999999995
	.quad	0x40148bea4ebdd335              # double 5.1366360000000002
	.quad	0x4022dcd44567125e              # double 9.4313070000000003
	.quad	0x400494bc6a7ef9db              # double 2.5726249999999999
	.quad	0x4005609fe86833c6              # double 2.67218
	.quad	0x3fed944cbe1eb420              # double 0.92435299999999998
	.quad	0x4000219da9c99286              # double 2.0164140000000002
	.quad	0x3fdad7be9856a37b              # double 0.41941800000000001
	.quad	0x401834f61672324d              # double 6.0517200000000004
	.quad	0x4006ed7f0ed3d85a              # double 2.8659650000000001
	.quad	0x40113329c347e8cd              # double 4.2999640000000001
	.quad	0x3fffa172abef06b3              # double 1.9769159999999999
	.quad	0x4008199e518f3ecd              # double 3.0125090000000001
	.quad	0x400800ea5b530ced              # double 3.0004469999999999
	.quad	0x40107954a7f8012e              # double 4.118487
	.quad	0x40184fce3150dae4              # double 6.0779350000000001
	.quad	0x401201b003686a4d              # double 4.5016480000000003
	.quad	0x40043f8f4730403a              # double 2.5310350000000001
	.quad	0x3fc36744b2b777d1              # double 0.151589
	.quad	0x40236b8c9752977d              # double 9.7100570000000008
	.quad	0x3ffe2aec0724b76f              # double 1.8854789999999999
	.quad	0x40163d15ad106ee3              # double 5.559653
	.quad	0x401c28cb4aec8d5c              # double 7.0398379999999996
	.quad	0x402161f212d77319              # double 8.6913
	.quad	0x40003b6fe2e6ea85              # double 2.0290219999999999
	.quad	0x401afeefa1e3eaf7              # double 6.7489610000000004
	.quad	0x3ff19bc01a36e2eb              # double 1.100525
	.quad	0x4020f28d8665e02f              # double 8.4737360000000006
	.quad	0x40196052934acaff              # double 6.3440649999999996
	.quad	0x40116ff540895d0b              # double 4.3593339999999996
	.quad	0x4019fabd5dc40075              # double 6.4948629999999996
	.quad	0x400c8cf63800218e              # double 3.568829
	.quad	0x401c4dae3e6c4c59              # double 7.0758599999999996
	.quad	0x3ff81aa821f2990f              # double 1.506508
	.quad	0x401f058b3f63c31e              # double 7.755414
	.quad	0x4010a35e310dbf05              # double 4.1595389999999997
	.quad	0x40083bed30f062d4              # double 3.029261
	.quad	0x4020e4877681669d              # double 8.4463460000000001
	.quad	0x4022fa43fe5c91d1              # double 9.4887999999999994
	.quad	0x3ffdd1fe64f54d1f              # double 1.8637680000000001
	.quad	0x400d0631f8a0902e              # double 3.6280250000000001
	.quad	0x402084061847f562              # double 8.2578589999999998
	.quad	0x4011bbb2fec56d5d              # double 4.4333
	.quad	0x3ffa28448cf7caa7              # double 1.6348309999999999
	.quad	0x3fa1782d38476f2a              # double 0.034119999999999998
	.quad	0x4015057928e0c9da              # double 5.2553450000000002
	.quad	0x401477c6327ed84d              # double 5.1169669999999998
	.quad	0x4002342c3c9eecc0              # double 2.2754750000000001
	.quad	0x4018635efa615a8e              # double 6.0970420000000001
	.quad	0x401264ce3de6149c              # double 4.5984429999999996
	.quad	0x4012a70153bd1676              # double 4.6630909999999997
	.quad	0x3fe9031487768167              # double 0.78162600000000004
	.quad	0x4021b121ab4b72c5              # double 8.8459599999999998
	.quad	0x3ff072074ea8da7f              # double 1.0278389999999999
	.quad	0x3ff2dacbc8c0ce92              # double 1.178417
	.quad	0x400eeb124d099e0e              # double 3.8647809999999998
	.quad	0x3feb28e92d55a3a1              # double 0.84874400000000005
	.quad	0x4021ae2e4d1a6506              # double 8.8401969999999999
	.quad	0x4000422813448063              # double 2.0323030000000002
	.quad	0x4022616b97fe8ee7              # double 9.1902740000000005
	.quad	0x4023f57f737da61e              # double 9.9794879999999999
	.quad	0x3fe27fbce4217d28              # double 0.57809299999999997
	.quad	0x4021327264a16a48              # double 8.5985289999999992
	.quad	0x401970e347629521              # double 6.3602420000000004
	.quad	0x3ff98d8cb07d0aee              # double 1.5970580000000001
	.quad	0x402236a2d2fe3f36              # double 9.1067110000000007
	.quad	0x400274b48d3ae686              # double 2.3069850000000001
	.quad	0x40181cdbbe0157ef              # double 6.0281820000000002
	.quad	0x401e1007570c5650              # double 7.5156530000000004
	.quad	0x3fe3f18655193709              # double 0.62323300000000004
	.quad	0x40141a3bddfc9ff9              # double 5.0256189999999998
	.quad	0x3ff043f3e0370cdd              # double 1.0165900000000001
	.quad	0x400159b024f6598e              # double 2.168793
	.quad	0x401fefcb923a29c7              # double 7.9841749999999995
	.quad	0x4006e0dfdef8487c              # double 2.8598020000000002
	.quad	0x401c9f1e4b44a1f1              # double 7.1553890000000004
	.quad	0x3feef1d3ed527e52              # double 0.96701999999999999
	.quad	0x40089869835158b8              # double 3.0744199999999999
	.quad	0x402025349be8ff32              # double 8.0726669999999991
	.quad	0x40060316a055757d              # double 2.7515079999999998
	.quad	0x3fe042b0ea18372e              # double 0.50814099999999995
	.quad	0x400251c3265add9c              # double 2.2899229999999999
	.quad	0x402053b0a2ca9ac3              # double 8.1634569999999993
	.quad	0x400dba005c4651f4              # double 3.715821
	.quad	0x4000d0ed3d859c8d              # double 2.1020150000000002
	.quad	0x40098873365881a1              # double 3.1916259999999999
	.quad	0x4008ef5e41d4b6a6              # double 3.116879
	.quad	0x40032aef2c732592              # double 2.3959640000000002
	.quad	0x40062294141e9af6              # double 2.7668840000000001
	.quad	0x4020095e39713ad6              # double 8.0182970000000005
	.quad	0x40031a96d4c33b54              # double 2.3879830000000002
	.quad	0x4003e9c347e8ccde              # double 2.4891420000000002
	.quad	0x3fefed0f6273929f              # double 0.99768800000000001
	.quad	0x400fc484944ed6fe              # double 3.9709560000000002
	.quad	0x3ff2012cf0f9d2bf              # double 1.1252869999999999
	.quad	0x4014e00000000000              # double 5.21875
	.quad	0x401c16f4384ba0e8              # double 7.0224159999999998
	.quad	0x3ffdeda4484944ed              # double 1.8705179999999999
	.quad	0x40066033e78e1933              # double 2.7969740000000001
	.quad	0x402184d24e160d88              # double 8.7594169999999991
	.quad	0x4023d04af922962d              # double 9.906822
	.quad	0x4015394f26aec072              # double 5.3059659999999997
	.quad	0x40160222d5171e2a              # double 5.5020860000000003
	.quad	0x40123c0229a5ebb7              # double 4.5586019999999996
	.quad	0x40232712e40852b5              # double 9.5763160000000002
	.quad	0x40213761ed5ae1ce              # double 8.6081690000000002
	.quad	0x401baac5c13fd0d0              # double 6.9167699999999996
	.quad	0x3fecfebd09e12a52              # double 0.90609600000000001
	.quad	0x40090d2dcb1465e9              # double 3.1314350000000002
	.quad	0x4022c46d1e108c3f              # double 9.3836449999999995
	.quad	0x402021fe004b7f5a              # double 8.0663909999999994
	.quad	0x4009aab367a0f909              # double 3.2083499999999998
	.quad	0x401c2296f6512a95              # double 7.033779
	.quad	0x400ed5faa8a82a56              # double 3.854482
	.quad	0x4023cf1e4b44a1f1              # double 9.9045280000000008
	.quad	0x40152d6ece13f4aa              # double 5.2943680000000004
	.quad	0x401e40af5fd47bee              # double 7.5631690000000003
	.quad	0x3ff11097c80841ee              # double 1.066551
	.quad	0x4023a2e6ea854478              # double 9.818168
	.quad	0x4002d67dbb16c1e3              # double 2.3547319999999998
	.quad	0x401bc7e4de3b8a1a              # double 6.9452090000000002
	.quad	0x3ff43e9b7bf1e8e6              # double 1.265285
	.quad	0x4012c7c84b5dcc64              # double 4.6951000000000001
	.quad	0x401062324c836651              # double 4.0958949999999996
	.quad	0x4008f12cadddf43c              # double 3.1177609999999998
	.quad	0x401eafd08d4bad7d              # double 7.6716939999999995
	.quad	0x3fe0edaa92e62132              # double 0.52901200000000004
	.quad	0x4021e83e425aee63              # double 8.9535999999999998
	.quad	0x401fe68ad6883772              # double 7.9751390000000004
	.quad	0x401038aeb80ecfa7              # double 4.0553540000000003
	.quad	0x401cf26c7eae5bc8              # double 7.2367419999999996
	.quad	0x401fbd4e8fb00bcc              # double 7.9348700000000001
	.quad	0x401054b407032980              # double 4.0827179999999998
	.quad	0x402323ee807bbb62              # double 9.5701789999999995
	.quad	0x40061f90539fba45              # double 2.765412
	.quad	0x401a6d5a187a4a49              # double 6.606789
	.quad	0x3fff8a697aeddce8              # double 1.971292
	.quad	0x4017aa16e7a311e8              # double 5.9161029999999997
	.quad	0x400e89a027525461              # double 3.8172000000000001
	.quad	0x400b2d27807789a4              # double 3.3970479999999998
	.quad	0x401152c83ec892ab              # double 4.3308419999999996
	.quad	0x400bb9d66adb402d              # double 3.465741
	.quad	0x401b170c996b7671              # double 6.7725090000000003
	.quad	0x4005b6a7264a16a5              # double 2.7141860000000002
	.quad	0x3fee6c332f01754b              # double 0.950708
	.quad	0x401fa6c6583e8577              # double 7.9128660000000001
	.quad	0x4020dee82949a565              # double 8.4353649999999991
	.quad	0x4005ce5cd4ed2cbf              # double 2.7257630000000002
	.quad	0x401ca33ebbfd71b0              # double 7.1594189999999998
	.quad	0x4015ce5f30e7ff58              # double 5.4515349999999998
	.quad	0x401da56d5cfaacda              # double 7.4115500000000001
	.quad	0x40004fb3311a543f              # double 2.038916
	.quad	0x402265425f202108              # double 9.1977720000000005
	.quad	0x3ff5757e670e2c13              # double 1.3411850000000001
	.quad	0x3fe96675147f1306              # double 0.79375700000000005
	.quad	0x401a47f51efb6dca              # double 6.570271
	.quad	0x3fe778c0053e2d62              # double 0.73348999999999998
	.quad	0x4020567dfe32a066              # double 8.1689299999999996
	.quad	0x40184a737110e454              # double 6.0727060000000002
	.quad	0x401463682730c671              # double 5.0970769999999996
	.quad	0x400b9056c508b32d              # double 3.445478
	.quad	0x40135cb5bb384fd3              # double 4.8405370000000003
	.quad	0x4007311e85fd04a3              # double 2.898984
	.quad	0x401bf806f262888b              # double 6.9922139999999997
	.quad	0x4017e3ffac1d29dc              # double 5.9726549999999996
	.quad	0x4017b6bc621b7e0b              # double 5.9284530000000002
	.quad	0x40159e44fa05143c              # double 5.40456
	.quad	0x40167f42784a9479              # double 5.6242770000000002
	.quad	0x4004303ea704bc27              # double 2.5235569999999998
	.quad	0x400d32862f5989df              # double 3.64967
	.quad	0x401ac3ac0c62e4d2              # double 6.6910860000000003
	.quad	0x40203f852f7f498c              # double 8.1240629999999995
	.quad	0x4000e1a1554fbdad              # double 2.1101709999999998
	.quad	0x401843d6c7219221              # double 6.066249
	.quad	0x401938de2ac32229              # double 6.3055349999999999
	.quad	0x4015b119ce075f70              # double 5.4229500000000002
	.quad	0x40142cd141a6937d              # double 5.0437669999999999
	.quad	0x401947a6bd6e8af8              # double 6.3199719999999999
	.quad	0x4011efee2c98e53f              # double 4.4843070000000003
	.quad	0x401195f2cb641701              # double 4.3964340000000002
	.quad	0x3ff9c2eba27ae9ab              # double 1.610088
	.quad	0x4012367b5f1bef4a              # double 4.5532050000000002
	.quad	0x4006de53a81dc0db              # double 2.8585579999999999
	.quad	0x401b502c4d65e460              # double 6.8282939999999996
	.quad	0x3ffc6c8d5c74751d              # double 1.776502
	.quad	0x3ffed8c2a454de7f              # double 1.9279200000000001
	.quad	0x4021939c7368ad69              # double 8.7883030000000009
	.quad	0x4008c2b40f66a551              # double 3.0950700000000002
	.quad	0x3fbdad538ac18f82              # double 0.115926
	.quad	0x40141ca0c282c6ef              # double 5.0279569999999998
	.quad	0x3ff80e7ab7564303              # double 1.5035350000000001
	.quad	0x401d8d78c436fc16              # double 7.3881560000000004
	.quad	0x401f8d8904f6dfc6              # double 7.8882180000000002
	.quad	0x4022780a9de8b3b3              # double 9.2344559999999998
	.quad	0x4021e16f21f6cacd              # double 8.9403009999999998
	.quad	0x3ffe9471715c63ae              # double 1.911241
	.quad	0x40167e603d577964              # double 5.6234140000000004
	.quad	0x40219f77292c4934              # double 8.8114559999999997
	.quad	0x401936a98244e93e              # double 6.3033809999999999
	.quad	0x4002267c6b8b6955              # double 2.2687919999999999
	.quad	0x401dd08f21709310              # double 7.4536709999999999
	.quad	0x400dafd08d4bad7d              # double 3.7108469999999998
	.quad	0x400c92aa5c5f7c67              # double 3.5716139999999998
	.quad	0x40157a7f8012dfd7              # double 5.3696270000000004
	.quad	0x4010bd1958969a0b              # double 4.1846670000000001
	.quad	0x401ea8c8eef1bac3              # double 7.6648290000000001
	.quad	0x40232f891e215337              # double 9.5928430000000002
	.quad	0x400f0c7192ea52f0              # double 3.8810760000000002
	.quad	0x401aebc59b8023a7              # double 6.7302460000000002
	.quad	0x400b650ce4ead0c4              # double 3.4243410000000001
	.quad	0x40203238da3c2118              # double 8.0980899999999991
	.quad	0x4017abaa9b499d02              # double 5.917643
	.quad	0x4019bb45f17bd8be              # double 6.4328839999999996
	.quad	0x40107d77b7c7820a              # double 4.1225269999999998
	.quad	0x4022a99f3c70c997              # double 9.3312930000000005
	.quad	0x401c18f9b13165d4              # double 7.0243900000000004
	.quad	0x4015dc26138fffbd              # double 5.4649890000000001
	.quad	0x3ff50df37329c348              # double 1.315906
	.quad	0x4006ddf090f733a9              # double 2.8583690000000002
	.quad	0x40023985ad538ac2              # double 2.2780870000000002
	.quad	0x3ffe35b813016484              # double 1.888115
	.quad	0x4019d694ccab3ede              # double 6.4595520000000004
	.quad	0x4017bd07852f7f4a              # double 5.9345990000000004
	.quad	0x401d7a2834d26fa4              # double 7.369294
	.quad	0x401bf0f840181e04              # double 6.985322
	.quad	0x401f67243137b070              # double 7.8507239999999996
	.quad	0x4020dc7b677f6b1a              # double 8.4306289999999997
	.quad	0x40112849cb252ce0              # double 4.2893439999999998
	.quad	0x400a5be33acd5b68              # double 3.294867
	.quad	0x4016be6fb4c3c18b              # double 5.6859729999999997
	.quad	0x3fbbba12b5e529bb              # double 0.108308
	.quad	0x40093551d68c692f              # double 3.1510349999999998
	.quad	0x401d76b1a2a4db16              # double 7.3659119999999998
	.quad	0x402374b85a4f00ef              # double 9.7279689999999998
	.quad	0x402341b43526527a              # double 9.6283279999999998
	.quad	0x3fcc1522a6f3f530              # double 0.21939500000000001
	.quad	0x4021f9f383f0bae9              # double 8.9881860000000007
	.quad	0x4011f580c308feac              # double 4.4897489999999998
	.quad	0x401e8f8f8a4c1ebd              # double 7.6401960000000004
	.quad	0x4016085ad538ac19              # double 5.508159
	.quad	0x400395885d31337f              # double 2.4480140000000001
	.quad	0x40007a0e8427418d              # double 2.0595979999999998
	.quad	0x4016f7d0aed99cbf              # double 5.7420070000000001
	.quad	0x40124291b823c85c              # double 4.5650089999999999
	.quad	0x4022d4829cfdd228              # double 9.4150589999999994
	.quad	0x3ff61bcec84f8f8a              # double 1.3817889999999999
	.quad	0x3f678b3700474d9c              # double 0.0028739999999999998
	.quad	0x40088707e175d13d              # double 3.0659329999999998
	.quad	0x4000159ee88df373              # double 2.0105569999999999
	.quad	0x3fd5229e90795f67              # double 0.33023799999999998
	.quad	0x402030474d9c6b05              # double 8.0942939999999997
	.quad	0x4009469835158b82              # double 3.1594699999999998
	.quad	0x4023f0c8cd63cb81              # double 9.9702819999999992
	.quad	0x40151aa433508f65              # double 5.2760170000000004
	.quad	0x401130a63305100a              # double 4.2975089999999998
	.quad	0x3fee30813cab81f9              # double 0.94342099999999995
	.quad	0x401c1d75e2046c76              # double 7.0287699999999997
	.quad	0x3fe183f4eca686e8              # double 0.54735800000000001
	.quad	0x4014d620ab713272              # double 5.2091089999999998
	.quad	0x3feedfaa8a82a561              # double 0.96480299999999996
	.quad	0x401a7e43ed959a31              # double 6.6233060000000004
	.quad	0x40051ec99f1ae2da              # double 2.6400329999999999
	.quad	0x4019245f5ad96a6a              # double 6.28552
	.quad	0x4020d065f9591cd2              # double 8.4070280000000004
	.quad	0x40201730a4e379b7              # double 8.0452929999999991
	.quad	0x4003699e0e73604a              # double 2.426571
	.quad	0x401207496aad1d04              # double 4.5071159999999999
	.quad	0x3faa14ad362e9036              # double 0.050938999999999998
	.quad	0x3fdc6dc1a47a9e2c              # double 0.44419900000000001
	.quad	0x401171b7e0ac7da2              # double 4.3610530000000001
	.quad	0x400482f512663411              # double 2.5639439999999998
	.quad	0x3ff1f825e13b18db              # double 1.1230830000000001
	.quad	0x401698348f53c57a              # double 5.648638
	.quad	0x3fe00ffda4052d66              # double 0.50195199999999995
	.quad	0x3ff535350092ccf7              # double 1.3254900000000001
	.quad	0x401ae266fd651b0d              # double 6.7210960000000002
	.quad	0x4023ccb9a9da597d              # double 9.8998539999999994
	.quad	0x3fff28ae74f2f124              # double 1.9474320000000001
	.quad	0x400295a187a4a490              # double 2.3230620000000002
	.quad	0x4018f11947cfa26a              # double 6.2354479999999999
	.quad	0x400bfb152f3c2dae              # double 3.4975990000000001
	.quad	0x40226b24638c9753              # double 9.2092620000000007
	.quad	0x3fff98c6d612c6ac              # double 1.974799
	.quad	0x401ee6a6e32e3822              # double 7.7252460000000003
	.quad	0x400a35286b59146e              # double 3.2759559999999999
	.quad	0x4011813b18dac259              # double 4.3762020000000001
	.quad	0x40003d34df04ddb5              # double 2.0298859999999999
	.quad	0x4014e5e1c15097c8              # double 5.224494
	.quad	0x4022beb09635610b              # double 9.3724410000000002
	.quad	0x401bc1d8a5482385              # double 6.9393029999999998
	.quad	0x40088c1fc8f32379              # double 3.0684200000000001
	.quad	0x4023bab713272431              # double 9.8646779999999996
	.quad	0x400bbb19e731d2e1              # double 3.4663580000000001
	.quad	0x401e7d413122b7bb              # double 7.622319
	.quad	0x40109e5321e603d5              # double 4.1546139999999996
	.quad	0x4017a6adf71eafee              # double 5.9127729999999996
	.quad	0x40148f8a8f3a9b07              # double 5.1401770000000004
	.quad	0x4017042917507e9e              # double 5.7540630000000004
	.quad	0x401faec460ed80a1              # double 7.9206709999999995
	.quad	0x401ae0a0b1bbcf4f              # double 6.7193630000000004
	.quad	0x401129667b5f1bef              # double 4.2904299999999997
	.quad	0x4023bca5df2239e7              # double 9.8684530000000005
	.quad	0x4021cf685985ad54              # double 8.9050930000000008
	.quad	0x400b25e353f7ced9              # double 3.3935
	.quad	0x40210777af64063a              # double 8.5145850000000003
	.quad	0x3fe843aeab7995ee              # double 0.75826199999999999
	.quad	0x3ffbf21e603d5779              # double 1.7466109999999999
	.quad	0x401527faa044ae86              # double 5.2890420000000002
	.quad	0x40234124f227d029              # double 9.6272350000000006
	.quad	0x4022e14727dcbddc              # double 9.4399960000000007
	.quad	0x401be84e3ffef391              # double 6.9768610000000004
	.quad	0x401d05d0fa58f712              # double 7.2556799999999999
	.quad	0x40214315b573eab3              # double 8.6310249999999993
	.quad	0x401686583e8576cd              # double 5.6311960000000001
	.quad	0x402379c66d373b00              # double 9.7378420000000006
	.quad	0x4023183dbc23315d              # double 9.5473459999999992
	.quad	0x4020f5818c5c9a35              # double 8.4795040000000004
	.quad	0x401bd98958d9b5e9              # double 6.9624379999999997
	.quad	0x4021638d3f1843c4              # double 8.6944370000000006
	.quad	0x400b2c67168f8e7e              # double 3.3966810000000001
	.quad	0x4007f2b777d0f1f5              # double 2.9935139999999998
	.quad	0x401416266fd651b1              # double 5.0216310000000002
	.quad	0x401488aa8650e779              # double 5.1334629999999999
	.quad	0x401f0917d6b65a9b              # double 7.7588800000000004
	.quad	0x40239b11409a2403              # double 9.8028659999999998
	.quad	0x4002e469d7342edc              # double 2.3615300000000001
	.quad	0x40237d4f9c1f85d7              # double 9.7447479999999995
	.quad	0x401292378ab0c88a              # double 4.6427899999999998
	.quad	0x401592135daad602              # double 5.392652
	.quad	0x3ffa8663c74fb54a              # double 1.65781
	.quad	0x3f85a8deb0fadf2f              # double 0.010576
	.quad	0x401dad61f5be5d9e              # double 7.4193189999999998
	.quad	0x40156491f2dc2b0f              # double 5.3482130000000003
	.quad	0x3fffd5e39713ad5c              # double 1.989719
	.quad	0x400ac1240746455f              # double 3.3443070000000001
	.quad	0x3ff3c1b75a74c09c              # double 1.2347939999999999
	.quad	0x40178f59ccfaeff6              # double 5.8899910000000002
	.quad	0x40147f327aa68f4b              # double 5.1242159999999997
	.quad	0x3ffc0c7c0f451761              # double 1.7530479999999999
	.quad	0x401b38d25edd0529              # double 6.8054899999999998
	.quad	0x4020877d30ad46f6              # double 8.2646270000000008
	.quad	0x40071acffa7eb6bf              # double 2.8880919999999999
	.quad	0x400e9c81908e581d              # double 3.826419
	.quad	0x3fee069c66d373b0              # double 0.938307
	.quad	0x3f95c63ae2541d8f              # double 0.021264000000000002
	.quad	0x4011018c197e5647              # double 4.2515109999999998
	.quad	0x40114974e65bea0c              # double 4.3217350000000003
	.quad	0x4004b1b93037d630              # double 2.5867789999999999
	.quad	0x401e86a5d6bebe16              # double 7.6314919999999997
	.quad	0x401406837f7be122              # double 5.0063610000000001
	.quad	0x401332541d8e8640              # double 4.7991489999999999
	.quad	0x4023ac779a6b50b1              # double 9.83685
	.quad	0x40022d5ae1cde5d2              # double 2.2721460000000002
	.quad	0x3ffdef8594291750              # double 1.8709769999999999
	.quad	0x3ff35d2e0e30446b              # double 1.2102489999999999
	.quad	0x3ff1f4794ea07703              # double 1.1221859999999999
	.quad	0x402214332f01754b              # double 9.039453
	.quad	0x402266fe4ffc9796              # double 9.2011590000000005
	.quad	0x3ff8da57646ae3a4              # double 1.5533060000000001
	.quad	0x401bbaf35e310dbf              # double 6.932569
	.quad	0x401cc6a6a012599f              # double 7.1939950000000001
	.quad	0x40100bbe878fabda              # double 4.011469
	.quad	0x401617625204af92              # double 5.5228359999999999
	.quad	0x3fd24fd2a62aa194              # double 0.28612199999999999
	.quad	0x40057adc0980b242              # double 2.68499
	.quad	0x401d18c1db0142f6              # double 7.2741769999999999
	.quad	0x4016a83ec892ab69              # double 5.6643020000000002
	.quad	0x3fdce90364388ebd              # double 0.45172200000000001
	.quad	0x4020799a1fd1569f              # double 8.2375039999999995
	.quad	0x40045100a393ee5f              # double 2.539552
	.quad	0x40197161a1db877b              # double 6.3607240000000003
	.quad	0x40149c94f69ca9ef              # double 5.1529119999999997
	.quad	0x401a472c94b380cb              # double 6.5695059999999996
	.quad	0x4021f95d4e8fb00c              # double 8.9870400000000003
	.quad	0x4009f4751ce28ed6              # double 3.244364
	.quad	0x401d810e453d20f3              # double 7.3760310000000002
	.quad	0x3ffa2bd09e12a51e              # double 1.635697
	.quad	0x40231d0efdc9c4db              # double 9.5567550000000007
	.quad	0x401f1f166e008e9b              # double 7.7803589999999998
	.quad	0x401876cacd184c27              # double 6.1160079999999999
	.quad	0x4021883968d759ef              # double 8.7660630000000008
	.quad	0x40235b8b26394fad              # double 9.6787960000000001
	.quad	0x40027f4eca686e7e              # double 2.3121619999999998
	.quad	0x3ffaede00d1b7176              # double 1.6830750000000001
	.quad	0x3fc1680e06530058              # double 0.135988
	.quad	0x401de59103c8e25d              # double 7.4741860000000004
	.quad	0x3ff5da059a73b42d              # double 1.3657280000000001
	.quad	0x3ff58d26fa3fcc9f              # double 1.3469610000000001
	.quad	0x40123e80389f83be              # double 4.5610359999999996
	.quad	0x4023698fe69270b0              # double 9.7061759999999992
	.quad	0x401a15881a1554fc              # double 6.5210270000000001
	.quad	0x401483a2163fdd66              # double 5.1285480000000003
	.quad	0x4012b7ef9db22d0e              # double 4.6796249999999997
	.quad	0x401c122036006d0d              # double 7.0177009999999997
	.quad	0x3ffff5b813016484              # double 1.99749
	.quad	0x400372d6ece13f4b              # double 2.4310740000000002
	.quad	0x40175aa0cae642c0              # double 5.8385040000000004
	.quad	0x401aa1593e5fb720              # double 6.6575670000000002
	.quad	0x4021a16787ce95fb              # double 8.8152430000000006
	.quad	0x4013aff1950331e4              # double 4.9218200000000003
	.quad	0x401b333c60029f17              # double 6.8000350000000003
	.quad	0x40118cc2938de6de              # double 4.3874610000000001
	.quad	0x4004248c7192ea53              # double 2.517846
	.quad	0x400e93d07c84b5dd              # double 3.8221750000000001
	.quad	0x4019ab55ef1fddec              # double 6.4173200000000001
	.quad	0x40217176bc1effa0              # double 8.7216090000000008
	.quad	0x40159c100e6afcce              # double 5.4024049999999999
	.quad	0x3fe5602c9081c2e3              # double 0.66798999999999997
	.quad	0x3fc3b8bac710cb29              # double 0.15407499999999999
	.quad	0x4020d76c050bd87b              # double 8.4207459999999994
	.quad	0x400f841c3efae792              # double 3.9395069999999999
	.quad	0x3ffdde03f705857b              # double 1.866703
	.quad	0x4021ec4b90214ad3              # double 8.9615139999999993
	.quad	0x3ffa99652bd3c361              # double 1.66245
	.quad	0x4011548e043a2164              # double 4.332573
	.quad	0x400b94e8fb00bcbe              # double 3.4477099999999998
	.quad	0x40135676640a6b94              # double 4.8344360000000002
	.quad	0x4022fe3cd9a52264              # double 9.4965580000000002
	.quad	0x4007a9057d1782d4              # double 2.9575300000000002
	.quad	0x3fe6a7cbf6e3f78c              # double 0.70798300000000003
	.quad	0x3fff1aa92e62131b              # double 1.9440090000000001
	.quad	0x4010bb75ea67e847              # double 4.1830670000000003
	.quad	0x4020606cebbba55d              # double 8.1883309999999998
	.quad	0x400bdadd9c27e953              # double 3.481868
	.quad	0x3fbaad81adea8976              # double 0.10421
	.quad	0x401492ef911cf356              # double 5.1434920000000002
	.quad	0x400209da597d49d8              # double 2.2548110000000001
	.quad	0x4022daf901083dbc              # double 9.4276809999999997
	.quad	0x3ff39681ecd4aa11              # double 1.224245
	.quad	0x400bd1a7e3087875              # double 3.4773710000000002
	.quad	0x40140d013a92a305              # double 5.0126999999999997
	.quad	0x4014a364bec679cc              # double 5.1595639999999996
	.quad	0x40234db4aa9717df              # double 9.6517689999999998
	.quad	0x40121e536501e258              # double 4.5296149999999997
	.quad	0x4014c9949e8815e4              # double 5.1968560000000004
	.quad	0x40214f3e89a88ace              # double 8.6547739999999997
	.quad	0x4018dcb35f3d7d39              # double 6.2155279999999999
	.quad	0x3fd3c8472c0e7bc4              # double 0.30909900000000001
	.quad	0x4020b7d49d7ba66a              # double 8.3590440000000008
	.quad	0x401ba23ee1bd1eda              # double 6.9084430000000001
	.quad	0x400a5d4e8fb00bcc              # double 3.29556
	.quad	0x4015ad755bccaf71              # double 5.4193930000000003
	.quad	0x3fe00ea9e6eeb702              # double 0.50178999999999996
	.quad	0x40207d5f3519bd40              # double 8.2448669999999993
	.quad	0x401018d64d7f0ed4              # double 4.0242550000000001
	.quad	0x400e226916440f24              # double 3.7668020000000002
	.quad	0x401e559c065b63d4              # double 7.5836030000000001
	.quad	0x4020fa8d21bc126a              # double 8.4893579999999993
	.quad	0x4019698201cd5f9a              # double 6.3530350000000002
	.quad	0x3ff11e6687f455a8              # double 1.069922
	.quad	0x401abf8726d04e62              # double 6.6870390000000004
	.quad	0x4014d3f85510d38d              # double 5.2070020000000001
	.quad	0x40209b84db9c7369              # double 8.3037480000000006
	.quad	0x401fb9310129cbab              # double 7.9308509999999996
	.quad	0x3fe2ffd3f5b5fa22              # double 0.59372899999999995
	.quad	0x40205dce18266773              # double 8.1832130000000003
	.quad	0x40018a2877ee4e27              # double 2.1924600000000001
	.quad	0x4022d7a376922d95              # double 9.4211690000000007
	.quad	0x400323df6db940ff              # double 2.3925160000000001
	.quad	0x400356e82949a565              # double 2.4174349999999998
	.quad	0x4015e5bb7b6bb129              # double 5.474348
	.quad	0x40155b6a1e81cb47              # double 5.3392720000000002
	.quad	0x4009861e0c5a8156              # double 3.1904870000000001
	.quad	0x4004197aaac1094a              # double 2.5124409999999999
	.quad	0x40173af533f42353              # double 5.8075760000000001
	.quad	0x400cd39eadd590c1              # double 3.6033300000000001
	.quad	0x4012268fd199bb28              # double 4.5376580000000004
	.quad	0x4021b042b734b513              # double 8.8442589999999992
	.quad	0x4015726a65cf67b2              # double 5.3617340000000002
	.quad	0x4016843cc07aaef3              # double 5.6291380000000002
	.quad	0x401c5d909f1f1498              # double 7.0913719999999998
	.quad	0x3fd64955b4677b39              # double 0.34822599999999998
	.quad	0x40037da597d49d7c              # double 2.4363510000000002
	.quad	0x401b22c2bd7f51f0              # double 6.7839460000000003
	.quad	0x401f7f32378ab0c9              # double 7.8742150000000004
	.quad	0x400d0f587d6f9768              # double 3.6324930000000002
	.quad	0x40239257eaa2a0a9              # double 9.7858269999999993
	.quad	0x4022e440af1cb89d              # double 9.4458059999999992
	.quad	0x4012c16f0068db8c              # double 4.6889000000000003
	.quad	0x4007a5f394b7b289              # double 2.9560309999999999
	.quad	0x400253b107746888              # double 2.2908650000000002
	.quad	0x40183588a04d1202              # double 6.0522790000000004
	.quad	0x40237916659d12cb              # double 9.7364990000000002
	.quad	0x4014a1c970f7b9e0              # double 5.1579949999999997
	.quad	0x4020f650c5eb313c              # double 8.4810850000000002
	.quad	0x3ff15579af1886e0              # double 1.0833680000000001
	.quad	0x401867d8cf398e97              # double 6.101413
	.quad	0x4022f00eae18ac9f              # double 9.4688619999999996
	.quad	0x4009b7ef5a964e8b              # double 3.2148119999999998
	.quad	0x400a1bfb58d1526e              # double 3.2636630000000002
	.quad	0x3fd40e6f2e8c0486              # double 0.31338100000000002
	.quad	0x402108c0053e2d62              # double 8.5170899999999996
	.quad	0x4022b0ea18372e6a              # double 9.3455359999999992
	.quad	0x40116ab042528ae7              # double 4.3541879999999997
	.quad	0x40090df82b1f687b              # double 3.131821
	.quad	0x4021a361dc93ea2d              # double 8.8191059999999997
	.quad	0x40233a0b3d4ae42a              # double 9.6133670000000002
	.quad	0x401a18f9f44d4456              # double 6.5243909999999996
	.quad	0x4018c689ca18bd66              # double 6.1938849999999999
	.quad	0x3feda76102795704              # double 0.926682
	.quad	0x4022d1e14bdfd263              # double 9.4099219999999998
	.quad	0x4018ac8cd63cb817              # double 6.1685059999999998
	.quad	0x4016085a921ccd96              # double 5.5081579999999999
	.quad	0x3fdbac29bf162ae5              # double 0.43238300000000002
	.quad	0x3fe7397fe8ee6b83              # double 0.725769
	.quad	0x401e486e7e62dc6e              # double 7.5707339999999999
	.quad	0x4005fa786c22680a              # double 2.7473000000000001
	.quad	0x400f07746887a8d6              # double 3.8786399999999999
	.quad	0x40172bea4ebdd335              # double 5.7928860000000002
	.quad	0x3ffa88f42fe82518              # double 1.658436
	.quad	0x401a0c6ac215b9a6              # double 6.5121260000000003
	.quad	0x3fdc01c0ca600b03              # double 0.43760700000000002
	.quad	0x40230371fbc5de9c              # double 9.5067289999999999
	.quad	0x401dd42b302f72b4              # double 7.4571959999999997
	.quad	0x4016ab7739f340d5              # double 5.6674470000000001
	.quad	0x40034a63305100a4              # double 2.4113220000000002
	.quad	0x4018811904b3c3e7              # double 6.1260719999999997
	.quad	0x4020b0ba1f4b1ee2              # double 8.3451699999999995
	.quad	0x3fd1572580c308ff              # double 0.27094400000000002
	.quad	0x402205084e831ad2              # double 9.0098289999999999
	.quad	0x401eecfa26a22b39              # double 7.7314230000000003
	.quad	0x4019ce7b3d8e0008              # double 6.4516419999999997
	.quad	0x3fe7ac9081c2e33f              # double 0.739815
	.quad	0x4021da9e4d5d80e5              # double 8.9269890000000007
	.quad	0x4014e1094a2b9d3d              # double 5.2197620000000002
	.quad	0x4011c3b14a90470b              # double 4.4411060000000004
	.quad	0x40148805a2d72ffd              # double 5.1328339999999999
	.quad	0x4022e697d06bbdbe              # double 9.4503769999999996
	.quad	0x40127fcd24e160d9              # double 4.6248060000000004
	.quad	0x401bb61c79b34a45              # double 6.9278430000000002
	.quad	0x401faa2cecc814d7              # double 7.9161869999999998
	.quad	0x3fca2d6a9c560c7c              # double 0.204511
	.quad	0x401bb4bcf0b6b6e1              # double 6.9265020000000002
	.quad	0x4021c8ace24bba13              # double 8.8919440000000005
	.quad	0x4023c80b242070b9              # double 9.8907100000000003
	.quad	0x4018aff9f87f023f              # double 6.1718520000000003
	.quad	0x40200db8348f53c5              # double 8.0267959999999992
	.quad	0x4013c9835158b828              # double 4.94679
	.quad	0x401c64af0bf1a5ca              # double 7.0983239999999999
	.quad	0x3fe6b6b2af145522              # double 0.70980200000000004
	.quad	0x40187ece9a2c6690              # double 6.1238349999999997
	.quad	0x401b60f6273929ed              # double 6.8446889999999998
	.quad	0x400fd544bb1af3a1              # double 3.9791349999999999
	.quad	0x3ff5b7b8d3f1843c              # double 1.3573539999999999
	.quad	0x40142c23fab10ba6              # double 5.0431059999999999
	.quad	0x401f9afa2f05a709              # double 7.901345
	.quad	0x402018e71476af8a              # double 8.0486380000000004
	.quad	0x401fbfee6fb4c3c2              # double 7.9374330000000004
	.quad	0x401c1d4801f75105              # double 7.0285950000000001
	.quad	0x401fc3bc4d22c882              # double 7.9411480000000001
	.quad	0x3fe49a8ac5c13fd1              # double 0.64386500000000002
	.quad	0x401ca89fc6da4485              # double 7.1646720000000004
	.quad	0x3fe8663c74fb54a0              # double 0.76248000000000004
	.quad	0x40189896dd26b724              # double 6.1490130000000001
	.quad	0x40236c892ab68cef              # double 9.7119839999999992
	.quad	0x4007eab2e1693c04              # double 2.9895990000000001
	.quad	0x402009359791819d              # double 8.0179869999999998
	.quad	0x4014fe642bf9830e              # double 5.2484289999999998
	.quad	0x400632fa0d77b7c8              # double 2.7748910000000002
	.quad	0x4013e54d1e96c3fc              # double 4.9739269999999998
	.quad	0x401498f57f737da6              # double 5.1493739999999999
	.quad	0x401152ca148ba83f              # double 4.3308489999999997
	.quad	0x4007d4e7ee9142b3              # double 2.978958
	.quad	0x4013b9ed7c6fbd27              # double 4.9315699999999998
	.quad	0x400f0f240fa9c12f              # double 3.882393
	.quad	0x4022d128e0c9d9d3              # double 9.4085149999999995
	.quad	0x40169ea8112ba16e              # double 5.6549379999999996
	.quad	0x401d1b9a5a89b952              # double 7.2769560000000002
	.quad	0x401ca0cf9e3864cb              # double 7.1570419999999997
	.quad	0x4020840f01fb82c3              # double 8.2579270000000005
	.quad	0x40233a187a4a48f9              # double 9.6134679999999992
	.quad	0x4016463d816aceab              # double 5.568594
	.quad	0x4008b5db3397dd01              # double 3.088797
	.quad	0x401b6ec56d5cfaad              # double 6.8581750000000001
	.quad	0x401bffeb4a66559f              # double 6.9999209999999996
	.quad	0x4021025a682b6284              # double 8.5045959999999993
	.quad	0x4012f8bb0a2ca9ac              # double 4.7429009999999998
	.quad	0x401cb94141e9af5c              # double 7.1809130000000003
	.quad	0x3ff57efe0ce0b913              # double 1.343504
	.quad	0x4013cf5cf2495e18              # double 4.9525030000000001
	.quad	0x4021113d96638434              # double 8.5336730000000002
	.quad	0x40098c62e4d1a650              # double 3.1935479999999998
	.quad	0x400ecc75c4a83b1d              # double 3.849834
	.quad	0x400857e5eaab0425              # double 3.0429189999999999
	.quad	0x401cf917507e9d95              # double 7.2432530000000002
	.quad	0x400923b81b64e054              # double 3.1424409999999998
	.quad	0x4023070de8f6ceff              # double 9.5137780000000002
	.quad	0x4011bf27fe4bcada              # double 4.4366760000000003
	.quad	0x400c404b7f5a5333              # double 3.5313940000000001
	.quad	0x4023fa2b3892ee85              # double 9.9886110000000005
	.quad	0x3fcdb6805a2d7300              # double 0.23213200000000001
	.quad	0x402195fd04a2fcf0              # double 8.7929460000000006
	.quad	0x4019b240b780346e              # double 6.4240750000000002
	.quad	0x40032455eaee2004              # double 2.3927420000000001
	.quad	0x3fc6b9991361dc94              # double 0.177539
	.quad	0x40173b866e43aa7a              # double 5.8081300000000002
	.quad	0x401edc8c5004fb12              # double 7.7153790000000004
	.quad	0x3fe506d71f36262d              # double 0.65708500000000003
	.quad	0x40168f73c0c1fc8f              # double 5.6400899999999998
	.quad	0x4020788df37329c3              # double 8.2354579999999995
	.quad	0x400a902363b25700              # double 3.3203800000000001
	.quad	0x4021a4729f59ccfb              # double 8.8211870000000001
	.quad	0x4021033354c12275              # double 8.5062510000000007
	.quad	0x4011087ad080b674              # double 4.2582810000000002
	.quad	0x3fbd1fe64f54d1e9              # double 0.11376799999999999
	.quad	0x4016cb790fb65669              # double 5.6987040000000002
	.quad	0x400aaaf2d7f950b9              # double 3.3334709999999999
	.quad	0x40223017763e4abe              # double 9.0939289999999993
	.quad	0x4022218e757928e1              # double 9.0655400000000004
	.quad	0x401073b70ef56649              # double 4.113003
	.quad	0x40132cf2cf95d4e9              # double 4.793895
	.quad	0x4019dea0ba1f4b1f              # double 6.4674100000000001
	.quad	0x4015a5bc87db2b34              # double 5.4118519999999997
	.quad	0x401acfbf83382e45              # double 6.7028790000000003
	.quad	0x400df059641f6449              # double 3.7423579999999999
	.quad	0x40177675147f1306              # double 5.8656810000000004
	.quad	0x3fff0f4f93bc0a07              # double 1.941238
	.quad	0x3fd0e71cda2b5a21              # double 0.26410600000000001
	.quad	0x401196e115592d99              # double 4.3973430000000002
	.quad	0x3ffda7b4e54f7a92              # double 1.8534440000000001
	.quad	0x40011fd7a13c254a              # double 2.1405479999999999
	.quad	0x4007e85122318330              # double 2.9884360000000001
	.quad	0x4015886ad2dcb146              # double 5.3832199999999997
	.quad	0x4020775e41d4b6a6              # double 8.2331409999999998
	.quad	0x4007ab7aa25d8d7a              # double 2.9587300000000001
	.quad	0x400a1d2849cb252d              # double 3.2642370000000001
	.quad	0x3fe3975afaf85943              # double 0.61222600000000005
	.quad	0x4011dfbeb9e492bc              # double 4.4685009999999998
	.quad	0x40179168f8e7ddca              # double 5.8920019999999997
	.quad	0x400af0b7c3504c49              # double 3.3675380000000001
	.quad	0x40227322291fb3fa              # double 9.2248699999999992
	.quad	0x401b6513f8db4891              # double 6.8487090000000004
	.quad	0x40017b3743632c1f              # double 2.1851639999999999
	.quad	0x3ffb4efed634549b              # double 1.7067859999999999
	.quad	0x3fd3e3864cb5bb38              # double 0.31076199999999998
	.quad	0x4020da1ee675147f              # double 8.4260169999999999
	.quad	0x400dbcdf69878317              # double 3.7172230000000002
	.quad	0x400a71fe64f54d1f              # double 3.3056610000000002
	.quad	0x401863343fa2ad3f              # double 6.0968790000000004
	.quad	0x4014f50c1b97353b              # double 5.2393039999999997
	.quad	0x40148d4f15e7c8d2              # double 5.1379970000000004
	.quad	0x3fd86f9767903212              # double 0.38181100000000001
	.quad	0x3fd3eed02cd39da1              # double 0.31145099999999998
	.quad	0x3fd116fc9bc77143              # double 0.26702799999999999
	.quad	0x401cceb80ecfa69c              # double 7.2018740000000001
	.quad	0x3ff38794ea077037              # double 1.220601
	.quad	0x40141fd7a13c254a              # double 5.0310959999999998
	.quad	0x401728d8665e02eb              # double 5.7898880000000004
	.quad	0x40006d65e4606749              # double 2.053417
	.quad	0x4020bea012599ed8              # double 8.3723150000000004
	.quad	0x401973fc86cebbba              # double 6.3632679999999997
	.quad	0x40058815e39713ad              # double 2.6914479999999998
	.quad	0x40232ecd07852f7f              # double 9.5914079999999994
	.quad	0x401286577531db44              # double 4.6311929999999997
	.quad	0x401ff4ece9a2c669              # double 7.9891849999999999
	.quad	0x400da2374794ea07              # double 3.7042069999999998
	.quad	0x4010f1e42e126202              # double 4.2362219999999997
	.quad	0x3f8081c2e33eff19              # double 0.0080599999999999994
	.quad	0x402256f177a7008a              # double 9.1698109999999993
	.quad	0x401967b7414a4d2b              # double 6.3512849999999998
	.quad	0x400de8cdea033e79              # double 3.7386740000000001
	.quad	0x4005fb0d51f81a58              # double 2.7475839999999998
	.quad	0x3ff7a41d4b6a619e              # double 1.4775670000000001
	.quad	0x401a4db65ecc3e32              # double 6.5758910000000004
	.quad	0x400eddf3b645a1cb              # double 3.8583750000000001
	.quad	0x3ff2bda836eb4e98              # double 1.171303
	.quad	0x401bd02a3486f04a              # double 6.9532860000000003
	.quad	0x4023b19e30014f8b              # double 9.8469099999999993
	.quad	0x4023e97460242d06              # double 9.9559660000000001
	.quad	0x4023e00d1b71758e              # double 9.9375999999999998
	.quad	0x4018527674d16335              # double 6.0805300000000004
	.quad	0x4020854b2745bf27              # double 8.2603390000000001
	.quad	0x4009ca2c2374794f              # double 3.2237170000000002
	.quad	0x3ff794b599aa6091              # double 1.4738059999999999
	.quad	0x4014b7ab7564302b              # double 5.1793649999999998
	.quad	0x402023edb7281fda              # double 8.0701730000000005
	.quad	0x400bb34d6a161e4f              # double 3.4625499999999998
	.quad	0x401b7ccbc05d52c1              # double 6.8718709999999996
	.quad	0x4012c439de481f54              # double 4.6916270000000004
	.quad	0x4023b5a4ce8101f3              # double 9.8547729999999997
	.quad	0x40173f0d844d013b              # double 5.8115750000000004
	.quad	0x401da24d099e0e73              # double 7.4084969999999997
	.quad	0x3ffdf6922d948dc1              # double 1.872698
	.quad	0x3fe4fdfa00e27e0f              # double 0.656003
	.quad	0x400637d84901d191              # double 2.7772679999999998
	.quad	0x3feba671ef30a4e3              # double 0.86406799999999995
	.quad	0x4000934938583622              # double 2.071917
	.quad	0x401cc10e02214270              # double 7.1885300000000001
	.quad	0x40210fd06bbdbe3c              # double 8.5308869999999998
	.quad	0x4018eb5f1bef49cf              # double 6.2298549999999997
	.quad	0x4020613b7d84901d              # double 8.1899069999999998
	.quad	0x401e72977c88e79b              # double 7.6119060000000002
	.quad	0x4007681450efdc9c              # double 2.9258199999999999
	.quad	0x4021b3e7f2c3009b              # double 8.8513789999999997
	.quad	0x402369522a6f3f53              # double 9.705705
	.quad	0x400bcf73c0c1fc8f              # double 3.4762949999999999
	.quad	0x400476a400fba882              # double 2.5579299999999998
	.quad	0x4010b8b2a6b0d951              # double 4.1803689999999998
	.quad	0x3ff05451fc4c1659              # double 1.020586
	.quad	0x4016773860999dcb              # double 5.6164259999999997
	.quad	0x401c76238da3c212              # double 7.1153700000000004
	.quad	0x4019f5c422036007              # double 6.4900060000000002
	.quad	0x400f15b9a5a89b95              # double 3.885608
	.quad	0x4018c78d4fdf3b64              # double 6.1948749999999997
	.quad	0x401cf2595bbbe879              # double 7.236669
	.quad	0x4017d26634117f84              # double 5.9554679999999998
	.quad	0x401443953dea465a              # double 5.0659989999999997
	.quad	0x400cf60e94ee392e              # double 3.6201449999999999
	.quad	0x3ff7d4195cc857f3              # double 1.489282
	.quad	0x4014128f190d1740              # double 5.0181240000000003
	.quad	0x4022a8ab71327243              # double 9.3294329999999999
	.quad	0x3fd4d441355475a3              # double 0.32545499999999999
	.quad	0x401232c5197a2489              # double 4.5495799999999997
	.quad	0x3ff6b5e310dbf056              # double 1.4194059999999999
	.quad	0x4003294ab1d4f9c2              # double 2.395162
	.quad	0x3ffa4ea7ce0fc2ec              # double 1.6442030000000001
	.quad	0x3ff2ea66dbd72bcb              # double 1.1822269999999999
	.quad	0x40035bccaf709b74              # double 2.4198240000000002
	.quad	0x4001a22ee41919ac              # double 2.2041909999999998
	.quad	0x4016463f141205bc              # double 5.5686
	.quad	0x40146ce67d77fae3              # double 5.1063479999999997
	.quad	0x401c51947cfa26a2              # double 7.0796679999999999
	.quad	0x40177d20296b3355              # double 5.8721930000000002
	.quad	0x40184159c4977425              # double 6.0638189999999996
	.quad	0x4009a4f8726d04e6              # double 3.205552
	.quad	0x3ffeabd4cfd08d4c              # double 1.9169510000000001
	.quad	0x40127fc9795b35b1              # double 4.6247920000000002
	.quad	0x4023355f78359bc3              # double 9.6042439999999995
	.quad	0x4015e7f8012dfd69              # double 5.4765319999999997
	.quad	0x4017a43d03968d76              # double 5.9103890000000003
	.quad	0x402183e7296f6513              # double 8.7576230000000006
	.quad	0x401f7b3354c12275              # double 7.8703130000000003
	.quad	0x400a759ccfaeff5c              # double 3.3074279999999998
	.quad	0x40131e260b2c83ed              # double 4.7794420000000004
	.quad	0x3fb752a843808851              # double 0.091105000000000005
	.quad	0x4004852157689ca2              # double 2.5650050000000002
	.quad	0x3fe4a4df47f993d5              # double 0.64512599999999998
	.quad	0x3ffffa322af57710              # double 1.998583
	.quad	0x3ffb883cafb3b752              # double 1.720761
	.quad	0x400239d7774aba38              # double 2.2782429999999998
	.quad	0x4002ebf11f926c7f              # double 2.3652060000000001
	.quad	0x3fdfc475e6362a5e              # double 0.49636599999999997
	.quad	0x40233e3b03e20cd0              # double 9.6215440000000001
	.quad	0x40172ec2480e8c8b              # double 5.7956630000000002
	.quad	0x3fe3e1869835158c              # double 0.62128000000000005
	.quad	0x3fce07d4e09784ec              # double 0.23461399999999999
	.quad	0x4013129888f861a6              # double 4.76816
	.quad	0x3fdd0e0221426fe7              # double 0.45397999999999999
	.quad	0x4023ad933e35c5b5              # double 9.8390140000000005
	.quad	0x401f238bcdfefbf4              # double 7.784713
	.quad	0x400bad7f950b955f              # double 3.4597159999999998
	.quad	0x3ffb29e7fb267c6c              # double 1.6977310000000001
	.quad	0x401e34a0e410b631              # double 7.5513950000000003
	.quad	0x401cc47cfa26a22b              # double 7.1918829999999998
	.quad	0x4023a60c9d9d3459              # double 9.8243150000000003
	.quad	0x40219f6ee73e681b              # double 8.8113930000000007
	.quad	0x401749d6f112fd33              # double 5.8221090000000002
	.quad	0x4014b9c7ffde7211              # double 5.1814270000000002
	.quad	0x3ff488a47ecfe9b8              # double 1.2833600000000001
	.quad	0x40161b641700cd85              # double 5.5267489999999997
	.quad	0x401faa8fc0d2c387              # double 7.9165640000000001
	.quad	0x4014e039abf33871              # double 5.2189699999999997
	.quad	0x402262d106ee30cb              # double 9.1930010000000006
	.quad	0x3fc9c69f8c21e1d2              # double 0.201374
	.quad	0x4020f49d5a187a4a              # double 8.4777629999999995
	.quad	0x4018c4651f3e89a9              # double 6.1917920000000004
	.quad	0x400c89d7ba6698bb              # double 3.5673059999999999
	.quad	0x3ffdb6512a94ff00              # double 1.857011
	.quad	0x400697268d32830a              # double 2.823804
	.quad	0x401482a737110e45              # double 5.1275909999999998
	.quad	0x4005eca0c282c6ef              # double 2.7405409999999999
	.quad	0x40213e7ddca4b125              # double 8.6220540000000003
	.quad	0x3ffb767d34df04de              # double 1.7164280000000001
	.quad	0x40202588e368f084              # double 8.0733099999999993
	.quad	0x402117ec7863beec              # double 8.5467259999999996
	.quad	0x401638eabffcdab2              # double 5.5555830000000004
	.quad	0x4012e69be09bb6aa              # double 4.7252039999999997
	.quad	0x3ffbb5536933a040              # double 1.7317689999999999
	.quad	0x40193fc0096feb4a              # double 6.3122559999999996
	.quad	0x402034024b33daf9              # double 8.1015800000000002
	.quad	0x4017941bfbdf090f              # double 5.8946379999999996
	.quad	0x4012bf7b5aea3162              # double 4.6869940000000003
	.quad	0x3fea1ef5232d2bb2              # double 0.81627899999999998
	.quad	0x3fffcb20fb224aae              # double 1.9870920000000001
	.quad	0x402027aaac1094a3              # double 8.0774740000000005
	.quad	0x400f28d002e23290              # double 3.8949280000000002
	.quad	0x401bd71eafee6fb5              # double 6.9600780000000002
	.quad	0x40128e5b4245f5ae              # double 4.6390200000000004
	.quad	0x40216122fad6cb53              # double 8.6897199999999994
	.quad	0x40236c7e28240b78              # double 9.7118999999999999
	.quad	0x4021c1e71044f1a2              # double 8.8787160000000007
	.quad	0x3fec68c0485a0be5              # double 0.88778699999999999
	.quad	0x3ffee009f623076c              # double 1.929697
	.quad	0x4019b30941c8216c              # double 6.4248399999999997
	.quad	0x40167d933e35c5b5              # double 5.6226320000000003
	.quad	0x400b817a02fb5d03              # double 3.438221
	.quad	0x40166d00b45ae600              # double 5.6064480000000003
	.quad	0x401b352a411c2a02              # double 6.8019189999999998
	.quad	0x4021e4723aafff37              # double 8.9461840000000006
	.quad	0x3ff7b23033a4723b              # double 1.4810030000000001
	.quad	0x4022f42b0ea18373              # double 9.4768910000000001
	.quad	0x3fdc37154003254e              # double 0.44086199999999998
	.quad	0x3ff5ef73c0c1fc8f              # double 1.37096
	.quad	0x4020806bbdbe3c10              # double 8.2508219999999994
	.quad	0x3fe5274e22a2c237              # double 0.66104799999999997
	.quad	0x4014d4a48f96e158              # double 5.2076589999999996
	.quad	0x401ad9e279dd3bb0              # double 6.7127780000000001
	.quad	0x400eac7f34938583              # double 3.8342269999999998
	.quad	0x40233d1a86940358              # double 9.6193430000000006
	.quad	0x400515842b734b51              # double 2.6355059999999999
	.quad	0x401b15625a682b63              # double 6.7708830000000004
	.quad	0x4021d1669ced0b31              # double 8.9089860000000005
	.quad	0x4022ae33eff19503              # double 9.3402399999999997
	.quad	0x401ee476295208e1              # double 7.7231069999999997
	.quad	0x401ac02d16b97fe9              # double 6.6876720000000001
	.quad	0x4021513be22e5de1              # double 8.6586599999999994
	.quad	0x401f189a02752546              # double 7.774025
	.quad	0x400667f90d9d7775              # double 2.8007680000000001
	.quad	0x3fe175d35653c9ac              # double 0.54563300000000003
	.quad	0x4011299567dbb16c              # double 4.2906089999999999
	.quad	0x3fd0ceaaf35e310e              # double 0.26261400000000001
	.quad	0x4021b861a60d4563              # double 8.8601200000000002
	.quad	0x402138c67168f8e8              # double 8.6108890000000002
	.quad	0x4012d577d955714c              # double 4.7084650000000003
	.quad	0x4022d1231c64ba95              # double 9.4084710000000004
	.quad	0x400df6598e10cf5b              # double 3.745288
	.quad	0x3ff1b5c28f5c28f6              # double 1.1068750000000001
	.quad	0x40233cb7d41743e9              # double 9.6185899999999993
	.quad	0x400836b65a9a8049              # double 3.0267149999999998
	.quad	0x402335e071c53f3a              # double 9.6052280000000003
	.quad	0x401b06759ab6d00b              # double 6.7563079999999998
	.quad	0x3ffe6a37ac3eb7cc              # double 1.9009320000000001
	.quad	0x4001a039abf33871              # double 2.2032349999999998
	.quad	0x40033388a8b08dd2              # double 2.400163
	.quad	0x3fe3018611fd5886              # double 0.59393600000000002
	.quad	0x401b2304ccee5abc              # double 6.784198
	.quad	0x4008cb44a1f08030              # double 3.0992519999999999
	.quad	0x40037a860dcb9a9e              # double 2.4348260000000002
	.quad	0x4008650f840181e0              # double 3.0493459999999999
	.quad	0x40157a6506141637              # double 5.3695259999999996
	.quad	0x40223d1351159c49              # double 9.1192879999999992
	.quad	0x400721986b9c304d              # double 2.8914040000000001
	.quad	0x401335b91f70de8f              # double 4.8024639999999996
	.quad	0x40221c1333b96af0              # double 9.0548339999999996
	.quad	0x40227ad1aeb3dd12              # double 9.2398810000000005
	.quad	0x401919246bf01323              # double 6.274553
	.quad	0x3ff603e5321e603d              # double 1.3759509999999999
	.quad	0x4011362c343b70ef              # double 4.3029029999999997
	.quad	0x401ca8759253543b              # double 7.1645110000000001
	.quad	0x3ffdbc31df761cbd              # double 1.858446
	.quad	0x400ff8665e02ea96              # double 3.996289
	.quad	0x3fe31ca7d6733ebc              # double 0.597248
	.quad	0x400d0bd6e8af8162              # double 3.6307809999999998
	.quad	0x3ffe425072085b18              # double 1.8911899999999999
	.quad	0x3ff8f867f0aa21a7              # double 1.560646
	.quad	0x401cec07ee0b0af6              # double 7.230499
	.quad	0x3ff0a670e2c12ad8              # double 1.040635
	.quad	0x3ff5f8a5ce5b4246              # double 1.373205
	.quad	0x3ff60c069e7fb268              # double 1.377936
	.quad	0x400177c2ca148ba8              # double 2.1834769999999999
	.quad	0x401f972862f5989e              # double 7.8976150000000001
	.quad	0x4007e4894c447c31              # double 2.9865900000000001
	.quad	0x401cc65300581494              # double 7.193676
	.quad	0x3fe4bcb3e5753a3f              # double 0.64803500000000003
	.quad	0x4015e85a0be51090              # double 5.4769059999999996
	.quad	0x4008f3061c79b34a              # double 3.1186639999999999
	.quad	0x4012313cee9dd7ed              # double 4.5480840000000002
	.quad	0x4018bf0307f23cc9              # double 6.1865350000000001
	.quad	0x40112a69be09bb6b              # double 4.2914190000000003
	.quad	0x4019f55e6bc621b8              # double 6.4896180000000001
	.quad	0x401c0a63b688bda9              # double 7.0101459999999998
	.quad	0x3fd11dffc5479d4e              # double 0.26745600000000003
	.quad	0x3fba55e28aa43351              # double 0.10287300000000001
	.quad	0x4010c60807357e67              # double 4.19339
	.quad	0x40035cffeb074a77              # double 2.42041
	.quad	0x3fc481ba7fc32ebe              # double 0.16020899999999999
	.quad	0x40127dd6e04c0592              # double 4.6228899999999999
	.quad	0x4012f0aa64c2f838              # double 4.7350250000000003
	.quad	0x3f9b0f27bb2fec57              # double 0.026425000000000001
	.quad	0x40129517a46173b8              # double 4.6455979999999997
	.quad	0x3fe233d29563a9f4              # double 0.56882600000000005
	.quad	0x3fc8da22f6a50d6b              # double 0.194157
	.quad	0x40236fae9ab29e4d              # double 9.7181289999999993
	.quad	0x4021e9289dadfb50              # double 8.9553879999999992
	.quad	0x40215e2281344806              # double 8.6838569999999997
	.quad	0x40021b4c3c18b503              # double 2.2633290000000001
	.quad	0x4016b7229e90795f              # double 5.6788429999999996
	.quad	0x3fe03912dba4d6e4              # double 0.50696699999999995
	.quad	0x401533bcd35a8588              # double 5.3005250000000004
	.quad	0x4015eacbc8c0ce92              # double 5.4792930000000002
	.quad	0x401b542bb6672fba              # double 6.832198
	.quad	0x400a12702a3486f0              # double 3.2590029999999999
	.quad	0x4013070110a137f4              # double 4.7568400000000004
	.quad	0x401413bff8a8f3aa              # double 5.0192870000000003
	.quad	0x401d23d7d3910c2c              # double 7.2850029999999997
	.quad	0x40125f32378ab0c9              # double 4.5929650000000004
	.quad	0x40056820e6299525              # double 2.6758440000000001
	.quad	0x401ca622c4502689              # double 7.162242
	.quad	0x4014553e707e175d              # double 5.0832459999999999
	.quad	0x4020930856e696a2              # double 8.2871729999999992
	.quad	0x4017519ac79702e6              # double 5.8296919999999997
	.quad	0x401896e2eb1c432d              # double 6.1473500000000003
	.quad	0x400292923e5b8562              # double 2.3215680000000001
	.quad	0x4020bb9c304ccee6              # double 8.3664260000000006
	.quad	0x3fe6e0fc2eba27af              # double 0.71496400000000004
	.quad	0x40037907d912556d              # double 2.434097
	.quad	0x3ff534e874c8ffb9              # double 1.3254170000000001
	.quad	0x40039107746887a9              # double 2.4458150000000001
	.quad	0x4023c66ea8544780              # double 9.8875630000000001
	.quad	0x401df68448cf7caa              # double 7.4907389999999996
	.quad	0x401f423704790b85              # double 7.8146630000000003
	.quad	0x4022e8c4bd33d295              # double 9.4546259999999993
	.quad	0x400b72fc2656abde              # double 3.4311449999999999
	.quad	0x401ae9ea14057082              # double 6.7284319999999997
	.quad	0x40231a62aa19439e              # double 9.5515340000000002
	.quad	0x40174a786c22680a              # double 5.8227250000000002
	.quad	0x401c9d2ae8e1d649              # double 7.1534839999999997
	.quad	0x3ffbf49be8ff327b              # double 1.7472190000000001
	.quad	0x4013d21d96e9bbf1              # double 4.9551910000000001
	.quad	0x4018f5dd8f92af9b              # double 6.2401030000000004
	.quad	0x4018e11947cfa26a              # double 6.2198229999999999
	.quad	0x3ff890aaa7ded6bb              # double 1.5353190000000001
	.quad	0x400370c6f7a0b5ee              # double 2.4300670000000002
	.quad	0x3ff19070fbeb9e49              # double 1.097764
	.quad	0x3fe4f763e4abe6a3              # double 0.65519899999999998
	.quad	0x4019b5c67dfe32a0              # double 6.4275149999999996
	.quad	0x401d49c4545846e9              # double 7.322038
	.quad	0x4003133ca31e7d9a              # double 2.3843930000000002
	.quad	0x401f75aa2e3c536d              # double 7.8649069999999996
	.quad	0x402046525892684d              # double 8.1373470000000001
	.quad	0x4021b76c050bd87b              # double 8.8582459999999994
	.quad	0x400f0acc0bdcad15              # double 3.8802720000000002
	.quad	0x4021accf4a558ea8              # double 8.8375190000000003
	.quad	0x4003986ca89fc6da              # double 2.4494259999999999
	.quad	0x400a2ea63b688bdb              # double 3.2727780000000002
	.quad	0x40100325918a009f              # double 4.0030729999999997
	.quad	0x40154221858bc59c              # double 5.3145810000000004
	.quad	0x3ff449491f2dc2b1              # double 1.267892
	.quad	0x3fd0b30728e92d56              # double 0.26092700000000002
	.quad	0x3ffc8bf5d78811b2              # double 1.78417
	.quad	0x401ece6d15ad106f              # double 7.7015880000000001
	.quad	0x4023a4059210385c              # double 9.8203549999999992
	.quad	0x400ac4b662fdfc1a              # double 3.3460510000000001
	.quad	0x4017d264a16a4873              # double 5.9554619999999998
	.quad	0x402219a49c2c1b11              # double 9.050084
	.quad	0x4012d151611ba3ca              # double 4.7044119999999996
	.quad	0x400a76262cba732e              # double 3.30769
	.quad	0x401b18ba83f4eca7              # double 6.7741490000000004
	.quad	0x3ffd3b7a5f41aef7              # double 1.827021
	.quad	0x401248b934699418              # double 4.5710189999999997
	.quad	0x400185510d38cda7              # double 2.190096
	.quad	0x3fee537e2c55c960              # double 0.94769199999999997
	.quad	0x4021674a558ea7ce              # double 8.7017389999999999
	.quad	0x3feaec0d6f544bb2              # double 0.84131500000000004
	.quad	0x4006af102363b257              # double 2.83548
	.quad	0x3ff446594af4f0d8              # double 1.2671749999999999
	.quad	0x400b10ff10ecb74e              # double 3.3832990000000001
	.quad	0x400fe6b0d9513f8e              # double 3.9876420000000001
	.quad	0x4011cfab10ba6267              # double 4.452801
	.quad	0x402212ac322291fb              # double 9.0364699999999996
	.quad	0x4014cfc9363f572e              # double 5.2029160000000001
	.quad	0x4014d48f53c579f2              # double 5.2075779999999998
	.quad	0x400fa4c165907d91              # double 3.9554469999999999
	.quad	0x401c8eebf65dbfcf              # double 7.1395720000000003
	.quad	0x3ffe01b328b6d86f              # double 1.8754150000000001
	.quad	0x3ff4778bbd380453              # double 1.2791859999999999
	.quad	0x401228ce2d1f1cfc              # double 4.5398490000000002
	.quad	0x40025182235b4edb              # double 2.2897989999999999
	.quad	0x401ae004b7f5a533              # double 6.7187679999999999
	.quad	0x4009c6bf8769ec2d              # double 3.222045
	.quad	0x40191559b3d07c85              # double 6.2708500000000003
	.quad	0x3ff6bee0b0af5fd4              # double 1.4216009999999999
	.quad	0x4023077a919695d9              # double 9.5146069999999998
	.quad	0x401aa2d40aaeafab              # double 6.6590119999999997
	.quad	0x3ffe83760bf5d788              # double 1.907095
	.quad	0x400881240746455f              # double 3.0630570000000001
	.quad	0x4009e0ddc6195465              # double 3.2347980000000001
	.quad	0x3fc30cdc8754f377              # double 0.14882999999999999
	.quad	0x40147130df9bdc6a              # double 5.110538
	.quad	0x3fde3dbc23315d70              # double 0.47251799999999999
	.quad	0x40005b994e1a3f46              # double 2.0447259999999998
	.quad	0x40204df37329c348              # double 8.1522480000000002
	.quad	0x4022ffa1e3eaf683              # double 9.4992819999999991
	.quad	0x4004c795703f2d3c              # double 2.5974529999999998
	.quad	0x401b998a222d5172              # double 6.8999410000000001
	.quad	0x3ff112ac753e707e              # double 1.067059
	.quad	0x402304cbc05d52c1              # double 9.5093669999999992
	.quad	0x402303c7f77af640              # double 9.5073849999999993
	.quad	0x3ffc235610adcd2d              # double 1.7586269999999999
	.quad	0x400915703f2d3c79              # double 3.1354679999999999
	.quad	0x4018cf50e3476295              # double 6.2024569999999999
	.quad	0x4009ceebf65dbfcf              # double 3.2260360000000001
	.quad	0x402064b2d905c033              # double 8.1966769999999993
	.quad	0x4017bb3fa6defc7a              # double 5.9328599999999998
	.quad	0x402328c3d25247cb              # double 9.5796189999999992
	.quad	0x40200c2d490e66cb              # double 8.0237829999999999
	.quad	0x3ff3fb5bf6a0dbad              # double 1.2488669999999999
	.quad	0x3fc7089a02752546              # double 0.17995
	.quad	0x401c01c92ddbdb5e              # double 7.0017440000000004
	.quad	0x40185646f1561911              # double 6.0842549999999997
	.quad	0x40137ac083126e98              # double 4.8698750000000004
	.quad	0x4020914445aa2e3c              # double 8.2837239999999994
	.quad	0x401ed73abc947065              # double 7.710185
	.quad	0x40123c2374794ea0              # double 4.5587289999999996
	.quad	0x3ff8d799e518f3ed              # double 1.552637
	.quad	0x3ff4743526527a20              # double 1.2783709999999999
	.quad	0x4010e316e3715400              # double 4.2217669999999998
	.quad	0x4010ba82a5614df9              # double 4.1821390000000003
	.quad	0x40005abb01c92ddc              # double 2.0443020000000001
	.quad	0x40110eed02cd39da              # double 4.2645759999999999
	.quad	0x401d3a3d70a3d70a              # double 7.3068749999999998
	.quad	0x402094877681669d              # double 8.2900960000000001
	.quad	0x3fdcb5286b59146e              # double 0.44855699999999998
	.quad	0x3fd3dad7518b0d0f              # double 0.31023200000000001
	.quad	0x40185933a0407cc8              # double 6.0871110000000002
	.quad	0x40004e4755ffe6d6              # double 2.0382220000000002
	.quad	0x40111a2120e1f7d7              # double 4.2755169999999998
	.quad	0x3ff6ed70e6f2e8c0              # double 1.4329689999999999
	.quad	0x4015fe29f9ce8d97              # double 5.4982069999999998
	.quad	0x4023a09cc319c5a4              # double 9.8136960000000001
	.quad	0x400c4d801b435265              # double 3.5378419999999999
	.quad	0x401f0a89b951c5c5              # double 7.7602909999999996
	.quad	0x402015918a009f62              # double 8.0421259999999997
	.quad	0x400492b1b36bd2b7              # double 2.571628
	.quad	0x401b3715c63ae254              # double 6.8037939999999999
	.quad	0x4014a7c84b5dcc64              # double 5.1638500000000001
	.quad	0x40114bc1acde19fc              # double 4.3239809999999999
	.quad	0x4014fcad9ad85dfb              # double 5.2467560000000004
	.quad	0x40057eb18116ebd5              # double 2.6868620000000001
	.quad	0x4021548d1958969a              # double 8.6651389999999999
	.quad	0x4014465dbfceb789              # double 5.0687170000000004
	.quad	0x400c49da597d49d8              # double 3.5360610000000001
	.quad	0x3ff3e9c66d373b00              # double 1.2445740000000001
	.quad	0x4013d5935fc3b4f6              # double 4.9585699999999999
	.quad	0x401757e1b8ed1bf8              # double 5.8358220000000003
	.quad	0x40006162f166e009              # double 2.047552
	.quad	0x40091b2702a3486f              # double 3.138258
	.quad	0x401d9d8c2a454de8              # double 7.403855
	.quad	0x400ecd5629d8409e              # double 3.8502619999999999
	.quad	0x3fe54cdfaca36199              # double 0.66563399999999995
	.quad	0x4020efdbb16c1e36              # double 8.4684729999999995
	.quad	0x3feef2c5197a2489              # double 0.96713499999999996
	.quad	0x4013865ecc3e3194              # double 4.881221
	.quad	0x4020011b3f20a73f              # double 8.0021609999999992
	.quad	0x40045dfc9ff92f2b              # double 2.5458919999999998
	.quad	0x3ffaad6ba8c58687              # double 1.6673389999999999
	.quad	0x4023f97edc7ef178              # double 9.9872960000000006
	.quad	0x4022698f605ab3ab              # double 9.2061720000000005
	.quad	0x4023fc299d883ba3              # double 9.9925049999999995
	.quad	0x4020d44199fe4367              # double 8.4145629999999993
	.quad	0x401afdad31fcd24e              # double 6.7477309999999999
	.quad	0x40228626f60e0eb6              # double 9.2620159999999991
	.quad	0x401b3847b24638c9              # double 6.8049609999999996
	.quad	0x401be01bc98a222d              # double 6.9688559999999997
	.quad	0x4005b9c6b0531983              # double 2.7157110000000002
	.quad	0x401101db877ab325              # double 4.2518140000000004
	.quad	0x4016fd041cc532a5              # double 5.7470860000000004
	.quad	0x402081dbca9691a7              # double 8.2536299999999994
	.quad	0x400b72734f82f512              # double 3.4308839999999998
	.quad	0x3ff18d5d80e496ee              # double 1.097013
	.quad	0x401daea209aaa3ad              # double 7.4205399999999999
	.quad	0x3fe2afd113836a83              # double 0.58396199999999998
	.quad	0x4021f2dc6e2a8006              # double 8.9743379999999995
	.quad	0x401e8f2239e6ab9b              # double 7.6397789999999998
	.quad	0x40025c28f5c28f5c              # double 2.2949999999999999
	.quad	0x400deec4a4095f24              # double 3.7415859999999999
	.quad	0x4017676fb09203a3              # double 5.8510119999999999
	.quad	0x400a75b9a5a89b95              # double 3.307483
	.quad	0x4011a2fcac8e68e4              # double 4.4091670000000001
	.quad	0x4023129c347e8cce              # double 9.5363480000000003
	.quad	0x40214ca36199780c              # double 8.6496840000000005
	.quad	0x3ffb3224aada33be              # double 1.6997420000000001
	.quad	0x402329c219eb6391              # double 9.5815590000000003
	.quad	0x4019c4da9003eea2              # double 6.44224
	.quad	0x401074534bd76ee7              # double 4.1135989999999998
	.quad	0x4009a6601bc98a22              # double 3.2062379999999999
	.quad	0x40229d1394317acc              # double 9.3067899999999994
	.quad	0x4000dbd1ed9dfdac              # double 2.1073339999999998
	.quad	0x401b866f5019f3c7              # double 6.881284
	.quad	0x401cc2b8c75c4a84              # double 7.1901580000000003
	.quad	0x401fab8800eae18b              # double 7.9175110000000001
	.quad	0x401f4f77af64063a              # double 7.8276050000000001
	.quad	0x4023ed9dfdac68a9              # double 9.9640959999999996
	.quad	0x3ffdcf301eabbcb2              # double 1.863083
	.quad	0x401e9c79f666234b              # double 7.6528090000000004
	.quad	0x4021464adff822bc              # double 8.6372900000000001
	.quad	0x4017f9103c8e25c8              # double 5.9932259999999999
	.quad	0x3fff50dcfcc5b8dc              # double 1.9572419999999999
	.quad	0x401c7c17a89331a1              # double 7.1211840000000004
	.quad	0x401b9d92fb19e732              # double 6.9038810000000002
	.quad	0x4022db82a12f9011              # double 9.4287310000000008
	.quad	0x40121feb4a66559f              # double 4.5311709999999996
	.quad	0x40145fd5cb790fb6              # double 5.0935889999999997
	.quad	0x4023e8e219652bd4              # double 9.9548500000000004
	.quad	0x40010317268d3283              # double 2.126509
	.quad	0x401b009246bf0132              # double 6.7505579999999998
	.quad	0x401adb5cbff47736              # double 6.7142210000000002
	.quad	0x400ad58644523f68              # double 3.35426
	.quad	0x40164bf8fcd67fd4              # double 5.574192
	.quad	0x401edbb6ed677708              # double 7.7145650000000003
	.quad	0x401f86c6583e8577              # double 7.8816160000000001
	.quad	0x4007d6ee73e681aa              # double 2.9799470000000001
	.quad	0x3fecfd47bedb7282              # double 0.905918
	.quad	0x401b3ed1bf7ad4b2              # double 6.8113469999999996
	.quad	0x40193e718a86d71f              # double 6.3109799999999998
	.quad	0x3ff291b4fe79ee03              # double 1.1605730000000001
	.quad	0x4013266772d5e072              # double 4.7875040000000002
	.quad	0x3fff3125dd095af3              # double 1.9494990000000001
	.quad	0x402251d55e6bc622              # double 9.1598310000000005
	.quad	0x400d2386d2ed783e              # double 3.642347
	.quad	0x4020f8b9991361dd              # double 8.4857910000000007
	.quad	0x400b5c79b34a44c8              # double 3.4201540000000001
	.quad	0x3fe8bf961804d984              # double 0.77338700000000004
	.quad	0x4018353e2d6238da              # double 6.0519949999999998
	.quad	0x401c36d4c33b5393              # double 7.0535459999999999
	.quad	0x400ebe16d6dc1a48              # double 3.8428170000000001
	.quad	0x40234b6dca07f66f              # double 9.6473220000000008
	.quad	0x4017cbc126a65cf6              # double 5.9489789999999996
	.quad	0x401224998d045fe1              # double 4.5357419999999999
	.quad	0x401dafb69984a0e4              # double 7.4215949999999999
	.quad	0x402127bdad7518b1              # double 8.5776190000000003
	.quad	0x401648ede54b48d4              # double 5.5712200000000003
	.quad	0x40115ebf22c01e69              # double 4.3425260000000003
	.quad	0x4014c2bbecaab8a6              # double 5.1901700000000002
	.quad	0x3fe98df37329c348              # double 0.79857800000000001
	.quad	0x4006f7b95a294142              # double 2.870959
	.quad	0x40191f151e75360d              # double 6.280354
	.quad	0x400b1c5e6ff7dfa0              # double 3.388852
	.quad	0x40230cb966be7afa              # double 9.5248519999999992
	.quad	0x4000884406c00da2              # double 2.0665360000000002
	.quad	0x400b1f5946c332f0              # double 3.390307
	.quad	0x401de8ec0f883340              # double 7.4774630000000002
	.quad	0x401c2a1ad6451b93              # double 7.041118
	.quad	0x3ffbf4906034f3fe              # double 1.7472080000000001
	.quad	0x400bccf0f9d2bf55              # double 3.475069
	.quad	0x401c2602c9081c2e              # double 7.0371199999999998
	.quad	0x400689856a37ac3f              # double 2.8171490000000001
	.quad	0x3fe6ba6aca793576              # double 0.710256
	.quad	0x400dbd1e53a81dc1              # double 3.7173430000000001
	.quad	0x4017f6d1e108c3f4              # double 5.9910350000000001
	.quad	0x40131c1fc8f32379              # double 4.7774650000000003
	.quad	0x40231bf6c2699c7c              # double 9.5546170000000003
	.quad	0x400246c43f5f9160              # double 2.284554
	.quad	0x3fceadeebb341e15              # double 0.23968300000000001
	.quad	0x4023582773e24fec              # double 9.6721760000000003
	.quad	0x401859752977c88e              # double 6.0873609999999996
	.quad	0x4017ba4f00ef1349              # double 5.9319420000000003
	.quad	0x40005c6540cc78ea              # double 2.045115
	.quad	0x4015339cd8127b2d              # double 5.3004030000000002
	.quad	0x4019896787ce95fb              # double 6.3841840000000003
	.quad	0x401aa04ee7c49fd8              # double 6.6565510000000003
	.quad	0x4004903ea704bc27              # double 2.5704319999999998
	.quad	0x4013cf9fcb0c026d              # double 4.9527580000000002
	.quad	0x400847442c7fbacb              # double 3.0347979999999999
	.quad	0x402051ebc83a96d5              # double 8.1600020000000004
	.quad	0x401d38be2f7b17ce              # double 7.3054129999999997
	.quad	0x400c069d7342edbb              # double 3.5032299999999998
	.quad	0x3ffb46ee30caa327              # double 1.704817
	.quad	0x40062431bde82d7b              # double 2.7676729999999998
	.quad	0x4021c7ffbce4217d              # double 8.8906229999999997
	.quad	0x3fe771e4b44a1f08              # double 0.732653
	.quad	0x3fffaa11ec918e32              # double 1.9790209999999999
	.quad	0x4018c7f3061c79b3              # double 6.1952629999999997
	.quad	0x4016b05bc01a36e3              # double 5.6722250000000001
	.quad	0x402114bec679cc75              # double 8.5405180000000005
	.quad	0x401a1885d31337eb              # double 6.5239479999999999
	.quad	0x3ffee9af5ba2be06              # double 1.9320520000000001
	.quad	0x4020bfc08fa7a850              # double 8.3745159999999998
	.quad	0x401f206748e47560              # double 7.781644
	.quad	0x4019246fdeb52c9d              # double 6.2855829999999999
	.quad	0x3fffafb5d031055c              # double 1.9803980000000001
	.quad	0x40207308dd1e53a8              # double 8.2246769999999998
	.quad	0x40208f33226c3b92              # double 8.2796869999999991
	.quad	0x3ff39187e7c06e1a              # double 1.2230300000000001
	.quad	0x3fe7b122b7baecd0              # double 0.74037299999999995
	.quad	0x40234cd0dcfcc5b9              # double 9.6500310000000002
	.quad	0x401bba81dc0db270              # double 6.9321359999999999
	.quad	0x400f272a7bd48cb5              # double 3.8941240000000001
	.quad	0x400f483771865519              # double 3.9102619999999999
	.quad	0x401ca2bdc26dce3a              # double 7.1589270000000003
	.quad	0x4015e39ef0f16f44              # double 5.4722860000000004
	.quad	0x4021b8880d801b43              # double 8.8604129999999994
	.quad	0x3ffb41d5c31593e6              # double 1.703573
	.quad	0x400183369b9d7fd8              # double 2.1890689999999999
	.quad	0x402094e28ed5f139              # double 8.2907910000000005
	.quad	0x3ff711a32b12d341              # double 1.4418059999999999
	.quad	0x400c1d2e0e30446b              # double 3.5142479999999998
	.quad	0x401c2bb83cf2cf96              # double 7.0426950000000001
	.quad	0x3fbbbcc2938de6de              # double 0.108349
	.quad	0x400d4f840181e03f              # double 3.6638259999999998
	.quad	0x4020993b18dac259              # double 8.2992790000000003
	.quad	0x401fb2656abde3fc              # double 7.9242150000000002
	.quad	0x40107d759ee88df3              # double 4.1225189999999996
	.quad	0x40037924af0bf1a6              # double 2.4341520000000001
	.quad	0x3fbed70e6f2e8c05              # double 0.12046900000000001
	.quad	0x401d9b441bb8c32b              # double 7.4016270000000004
	.quad	0x4022094812be48a6              # double 9.0181280000000008
	.quad	0x3ff763beec39799e              # double 1.4618519999999999
	.quad	0x4001cc02f2f98740              # double 2.224615
	.quad	0x40234295c853c148              # double 9.6300489999999996
	.quad	0x4019328d002e2329              # double 6.299366
	.quad	0x40222a5870da5daf              # double 9.0827059999999999
	.quad	0x40237db63d3e4ef0              # double 9.7455309999999997
	.quad	0x401e51e603d57796              # double 7.5799789999999998
	.quad	0x401e415379fa97e1              # double 7.5637949999999998
	.quad	0x401c9d99cbee807c              # double 7.1539070000000002
	.quad	0x401e46d2ed783dff              # double 7.5691639999999997
	.quad	0x4019fe45803cd142              # double 6.4983120000000003
	.quad	0x3feee601bc98a223              # double 0.96557700000000001
	.quad	0x4014b8c9b845564b              # double 5.1804569999999996
	.quad	0x4008cb228dc981bf              # double 3.0991870000000001
	.quad	0x4009a44955b4677b              # double 3.2052179999999999
	.quad	0x4017d5907d912557              # double 5.9585590000000002
	.quad	0x4023bde00d1b7176              # double 9.8708500000000008
	.quad	0x4013b7dfa00e27e1              # double 4.9295640000000001
	.quad	0x401b8efaa4766c6e              # double 6.8896280000000001
	.quad	0x401dccfaacd9e83e              # double 7.4501749999999998
	.quad	0x4023dcd855970b4a              # double 9.9313380000000002
	.quad	0x4017b910c2c5e2ce              # double 5.9307280000000002
	.quad	0x4000e1f9f01b866e              # double 2.1103399999999999
	.quad	0x4023b0f16f4384ba              # double 9.8455919999999999
	.quad	0x401f44f4c6e6d9be              # double 7.8173399999999997
	.quad	0x402175bd944aa540              # double 8.7299620000000004
	.quad	0x4008b0abb44e50c6              # double 3.086265
	.quad	0x400adfea8112ba17              # double 3.359334
	.quad	0x401187d0aed99cbf              # double 4.3826320000000001
	.quad	0x3fea6837f7be121f              # double 0.82522200000000001
	.quad	0x40129672756861e9              # double 4.6469209999999999
	.quad	0x401327f562174c4d              # double 4.7890220000000001
	.quad	0x4005bcc8de2ac322              # double 2.7171799999999999
	.quad	0x40235a9ae4f33440              # double 9.6769630000000006
	.quad	0x40184c9b845564b6              # double 6.0748119999999997
	.quad	0x4022518c3b0c4589              # double 9.1592730000000007
	.quad	0x3fe961693c03bc4d              # double 0.79314099999999998
	.quad	0x4020ece2089e3433              # double 8.4626619999999999
	.quad	0x4005dbbf93ff25e5              # double 2.7322989999999998
	.quad	0x401399df1172ef0b              # double 4.9002650000000001
	.quad	0x40079f666234a87e              # double 2.9528319999999999
	.quad	0x3ffa3023e9ea1405              # double 1.6367529999999999
	.quad	0x4021fe21101b0037              # double 8.9963460000000008
	.quad	0x401878d32830a0b2              # double 6.1179930000000002
	.quad	0x401d83d3e4ef0282              # double 7.3787380000000002
	.quad	0x4018846ae3a3a8e7              # double 6.1293139999999999
	.quad	0x4014363c31df761d              # double 5.0529640000000002
	.quad	0x3ffff03afb7e9100              # double 1.9961500000000001
	.quad	0x40126d2e514c22ee              # double 4.6066219999999998
	.quad	0x3ff7584d338f7985              # double 1.459058
	.quad	0x401fc8522ea0fd3b              # double 7.9456259999999998
	.quad	0x401f8ee2c98e53eb              # double 7.8895369999999998
	.quad	0x400763dccea28fe2              # double 2.9237609999999998
	.quad	0x402368b220791c4c              # double 9.7044840000000007
	.quad	0x40111f20a73f748a              # double 4.2803979999999999
	.quad	0x4023ae121ee67514              # double 9.8399819999999991
	.quad	0x4013773eab367a10              # double 4.8664500000000004
	.quad	0x402382dc8fb86f48              # double 9.7555890000000005
	.quad	0x40024a704bc27632              # double 2.2863470000000001
	.quad	0x40145d56f32bdc27              # double 5.0911520000000001
	.quad	0x401406523704790c              # double 5.0061730000000004
	.quad	0x401e59b7bf1e8e61              # double 7.5876150000000004
	.quad	0x4012d1af3a14cec4              # double 4.7047699999999999
	.quad	0x40144bb73083558a              # double 5.0739409999999996
	.quad	0x402371ccb7d41744              # double 9.7222650000000001
	.quad	0x401024801f75104d              # double 4.0356449999999997
	.quad	0x401f64388ebcc6c5              # double 7.8478719999999997
	.quad	0x401e65a9a8049668              # double 7.5992800000000002
	.quad	0x401c3532617c1bda              # double 7.0519499999999997
	.quad	0x400f78e086bdf4c3              # double 3.9340220000000001
	.quad	0x4022b85e80bed741              # double 9.3600960000000004
	.quad	0x402250c75c4a83b2              # double 9.1577710000000003
	.quad	0x4000f41743e963dc              # double 2.1191849999999999
	.quad	0x40066cb5bb384fd3              # double 2.8030810000000002
	.quad	0x4005fc36976bc1f0              # double 2.748151
	.quad	0x4022e5d72367e415              # double 9.4489070000000001
	.quad	0x40220f7b17ce52df              # double 9.0302360000000004
	.quad	0x4014a7f27fe4bcae              # double 5.1640110000000004
	.quad	0x4013d1ec4e7253da              # double 4.9550029999999996
	.quad	0x3ffca9728a611772              # double 1.791369
	.quad	0x400c526394face68              # double 3.5402290000000001
	.quad	0x400550b30b5aa716              # double 2.6644040000000002
	.quad	0x4023d8e325d4a5df              # double 9.9236079999999997
	.quad	0x3ff3e323bbc6eb0b              # double 1.2429539999999999
	.quad	0x4011c392e1ef73c1              # double 4.4409900000000002
	.quad	0x4011b61e0c5a8156              # double 4.4278490000000001
	.quad	0x3fff3422467be554              # double 1.9502280000000001
	.quad	0x40186759253543af              # double 6.1009260000000003
	.quad	0x3feb308bb906466b              # double 0.84967599999999999
	.quad	0x401bad640e9d51b5              # double 6.919327
	.quad	0x401ca1fe64f54d1f              # double 7.1581970000000004
	.quad	0x4018fe19b90ea9e7              # double 6.2481450000000001
	.quad	0x4023ccfca42aed14              # double 9.9003650000000007
	.quad	0x3ff62aee2003ab86              # double 1.385481
	.quad	0x4010fe5929670197              # double 4.2483870000000001
	.quad	0x40080f81e8a2ec29              # double 3.0075720000000001
	.quad	0x400f08c79f666235              # double 3.8792870000000002
	.quad	0x4023c54cdb7ae579              # double 9.8853519999999992
	.quad	0x40110f709b738e6d              # double 4.2650779999999999
	.quad	0x401dce6362a5e786              # double 7.4515510000000003
	.quad	0x4021c399b2c40d0b              # double 8.8820320000000006
	.quad	0x40052fc371da37ef              # double 2.6483219999999998
	.quad	0x400e31cfbb949625              # double 3.7743220000000002
	.quad	0x3ff9603925bb7b6c              # double 1.5859920000000001
	.quad	0x40052488c60cbf2b              # double 2.6428389999999999
	.quad	0x3fdefd9ba1b19610              # double 0.48422900000000002
	.quad	0x40197ce0fc2eba28              # double 6.3719520000000003
	.quad	0x40162b2e59af9ebf              # double 5.5421690000000003
	.quad	0x401ad1b3aeee9574              # double 6.7047869999999996
	.quad	0x400331f4f50a02b8              # double 2.3993929999999999
	.quad	0x4010890752da9867              # double 4.1338169999999996
	.quad	0x4013b0db6a1e81cb              # double 4.9227119999999998
	.quad	0x40185a7c5ac471b4              # double 6.0883649999999996
	.quad	0x3ffda1dc93ea2d30              # double 1.852017
	.quad	0x3fe0a3ec02f2f987              # double 0.52000999999999997
	.quad	0x4001fd86a8fc0d2c              # double 2.2487919999999999
	.quad	0x401d61cb46bacf74              # double 7.3455019999999998
	.quad	0x401cac46950fc71d              # double 7.1682379999999997
	.quad	0x40174821f2990f30              # double 5.8204419999999999
	.quad	0x3ff0f254e6e221c9              # double 1.0591630000000001
	.quad	0x40179d0bb6ed6777              # double 5.903365
	.quad	0x40178b018611fd59              # double 5.8857480000000004
	.quad	0x40092c61d8622c45              # double 3.146671
	.quad	0x4016a27fe4bcad9b              # double 5.6586910000000001
	.quad	0x402163bb62413db8              # double 8.6947890000000001
	.quad	0x401d41361dc93ea3              # double 7.3136830000000002
	.quad	0x401a8dedf1e0828c              # double 6.6386029999999998
	.quad	0x401843dc486ad2dd              # double 6.0662700000000003
	.quad	0x4001265625a682b6              # double 2.1437189999999999
	.quad	0x3ff749774256bca5              # double 1.455436
	.quad	0x4016d7eed45e9186              # double 5.7108720000000002
	.quad	0x3ff7fae7924af0bf              # double 1.498756
	.quad	0x400006bce8533b10              # double 2.0032899999999998
	.quad	0x4015cda2f8bdec5f              # double 5.4508169999999998
	.quad	0x4007fee9142b302f              # double 2.9994679999999998
	.quad	0x40158dc33721d53d              # double 5.3884400000000001
	.quad	0x4007d7c2ca148ba8              # double 2.9803519999999999
	.quad	0x401f815e7c8d1959              # double 7.8763370000000003
	.quad	0x400e946994185059              # double 3.8224670000000001
	.quad	0x4022c24031487768              # double 9.3793959999999998
	.quad	0x3ff3513b5bf6a0dc              # double 1.2073320000000001
	.quad	0x40192b71b8aa0019              # double 6.2924259999999999
	.quad	0x40239ad6a9c560c8              # double 9.8024190000000004
	.quad	0x400836c82e019b0b              # double 3.0267490000000001
	.quad	0x40025350092ccf6c              # double 2.29068
	.quad	0x401f07cbf6e3f78c              # double 7.7576140000000002
	.quad	0x400f4878fabda0e0              # double 3.9103870000000001
	.quad	0x40221f761cbccf29              # double 9.0614480000000004
	.quad	0x40230af46aa087ca              # double 9.5213959999999993
	.quad	0x3fe9896bb98c7e28              # double 0.79802499999999998
	.quad	0x400102b6ae7d566d              # double 2.126325
	.quad	0x3ffaaf31b152f3c3              # double 1.667772
	.quad	0x40073143bf727137              # double 2.8990550000000002
	.quad	0x401c7a393ee5eedd              # double 7.1193590000000002
	.quad	0x400f627fa1a0cf18              # double 3.923095
	.quad	0x401b4c970f7b9e06              # double 6.8247949999999999
	.quad	0x401376440f238972              # double 4.865494
	.quad	0x40127893faf42785              # double 4.6177520000000003
	.quad	0x401df650a45d41fa              # double 7.4905419999999996
	.quad	0x401133b6cbd987c6              # double 4.3005019999999998
	.quad	0x401c7b0292817764              # double 7.1201270000000001
	.quad	0x3ff0f3b107746888              # double 1.0594950000000001
	.quad	0x4023b2fc04c8bc9d              # double 9.8495790000000003
	.quad	0x400f384a9478c869              # double 3.9024860000000001
	.quad	0x400258676a7264a1              # double 2.2931659999999998
	.quad	0x40209a6506141637              # double 8.3015519999999992
	.quad	0x4013793ea2d2fe3f              # double 4.8684029999999998
	.quad	0x401274623d0bfa09              # double 4.6136559999999998
	.quad	0x401b64d61b2a27f2              # double 6.8484730000000003
	.quad	0x3fabcd78c436fc16              # double 0.054302000000000003
	.quad	0x401609a91105e1c1              # double 5.5094339999999997
	.quad	0x3ff65269595feda6              # double 1.3951199999999999
	.quad	0x4021c878316a0557              # double 8.8915419999999994
	.quad	0x400960bf5d78811b              # double 3.1722399999999999
	.quad	0x4001372abef06b38              # double 2.1519370000000002
	.quad	0x402357c17a89331a              # double 9.6713979999999999
	.quad	0x4023a3897204295a              # double 9.8194079999999992
	.quad	0x4010ecbaf965b20c              # double 4.2311820000000004
	.quad	0x4010ce15ca6ca03c              # double 4.2012549999999997
	.quad	0x401cb085f4a1272d              # double 7.1723860000000004
	.quad	0x3ffd4c1871e6cd29              # double 1.831078
	.quad	0x40077cbff47735c2              # double 2.9359130000000002
	.quad	0x3ff0b4d37c1376d5              # double 1.0441469999999999
	.quad	0x4014d30f062d40ab              # double 5.2061120000000001
	.quad	0x4020b89aed56b010              # double 8.360557
	.quad	0x401a1afb3b752114              # double 6.5263489999999997
	.quad	0x401f1d3e0bd44999              # double 7.7785570000000001
	.quad	0x40233537c1376d55              # double 9.6039410000000007
	.quad	0x3ffee6256366d7a5              # double 1.9311879999999999
	.quad	0x4013a501e2584f4c              # double 4.9111399999999996
	.quad	0x40138bdec5f394b8              # double 4.8865920000000003
	.quad	0x40228f609dcf8940              # double 9.2800340000000005
	.quad	0x4012fa3c21187e7c              # double 4.74437
	.quad	0x401338d92fb19e73              # double 4.8055159999999999
	.quad	0x40108cb039ef0f17              # double 4.137391
	.quad	0x4007494680171194              # double 2.9107789999999998
	.quad	0x401dbc6e2a80064b              # double 7.4340140000000003
	.quad	0x401dc8bda9435ac9              # double 7.4460360000000003
	.quad	0x401ea209aaa3ad19              # double 7.6582400000000001
	.quad	0x401945b1c8648840              # double 6.3180610000000001
	.quad	0x401ebd41743e963e              # double 7.6848200000000002
	.quad	0x402291ac14c660a2              # double 9.284516
	.quad	0x401f197e996312f5              # double 7.7748970000000001
	.quad	0x4021e45803cd141a              # double 8.9459839999999993
	.quad	0x401ab2ca148ba83f              # double 6.6745989999999997
	.quad	0x40138ce91c8eac00              # double 4.8876080000000002
	.quad	0x4023f64b662fdfc2              # double 9.9810440000000007
	.quad	0x4023c2bdc26dce3a              # double 9.8803540000000005
	.quad	0x3ff881e14bdfd263              # double 1.531709
	.quad	0x4001ba1a0cf1800a              # double 2.2158699999999998
	.quad	0x3fdac33721d53cde              # double 0.41816500000000001
	.quad	0x4014e4dbdf8f4730              # double 5.2234949999999998
	.quad	0x401b6a6f3f52fc26              # double 6.8539399999999997
	.quad	0x3fedd1e108c3f3e0              # double 0.93186999999999997
	.quad	0x4021a65de15ca6ca              # double 8.824935
	.quad	0x4022d9acffa7eb6c              # double 9.425148
	.quad	0x4020f99029ae4f33              # double 8.4874279999999995
	.quad	0x3ff5dd323fee2c99              # double 1.366503
	.quad	0x40226a31832fcac9              # double 9.2074090000000002
	.quad	0x3ff70200c0f01fb8              # double 1.437989
	.quad	0x40123e61cffeb075              # double 4.5609200000000003
	.quad	0x40168cb1897a67a5              # double 5.6373959999999999
	.quad	0x40184e9424e59296              # double 6.0767369999999996
	.quad	0x400ed704790b8499              # double 3.8549890000000002
	.quad	0x400229e01de26916              # double 2.2704469999999999
	.quad	0x3ffdfe8dda48b652              # double 1.874647
	.quad	0x401ad30b5aa71583              # double 6.7060979999999999
	.quad	0x3ff4e98bb4d48883              # double 1.307018
	.quad	0x401cf25a682b6284              # double 7.2366729999999997
	.quad	0x401fcbccaf709b74              # double 7.9490230000000004
	.quad	0x40146d35653c9abb              # double 5.106649
	.quad	0x400ae3a29c779a6b              # double 3.3611499999999999
	.quad	0x401a84dfce3150db              # double 6.6297600000000001
	.quad	0x4013604534bd76ee              # double 4.8440139999999996
	.quad	0x401c2ae8e1d6494d              # double 7.0419039999999997
	.quad	0x3ffcd374bc6a7efa              # double 1.801625
	.quad	0x400488b97785729b              # double 2.5667599999999999
	.quad	0x402124054ef459da              # double 8.5703530000000008
	.quad	0x4018876965f5275f              # double 6.1322380000000001
	.quad	0x40057e8e60807358              # double 2.686795
	.quad	0x3ff0338c5436b8fa              # double 1.0125850000000001
	.quad	0x40090a1a500d5e8d              # double 3.1299329999999999
	.quad	0x3ffe55b24e9c4546              # double 1.8959220000000001
	.quad	0x400dc174c4cdfaca              # double 3.7194609999999999
	.quad	0x401ba0be0ded288d              # double 6.9069750000000001
	.quad	0x400c87075b3e1438              # double 3.5659320000000001
	.quad	0x401f98b588e368f1              # double 7.8991300000000004
	.quad	0x4010e2f449129889              # double 4.221635
	.quad	0x4022a6275ab7dc7b              # double 9.3245190000000004
	.quad	0x402133608d08919f              # double 8.600346
	.quad	0x3fffe27bf61aa3f0              # double 1.992794
	.quad	0x402338ae31d712a1              # double 9.6107040000000001
	.quad	0x4022c36177ea1c69              # double 9.3816030000000001
	.quad	0x40216cd07852f7f5              # double 8.7125280000000007
	.quad	0x3ffba7f4dbdf8f47              # double 1.728505
	.quad	0x3ffd8164840e171a              # double 1.84409
	.quad	0x400ea27d88c1db01              # double 3.8293409999999999
	.quad	0x3ffd188094e5d5b2              # double 1.8184819999999999
	.quad	0x4010bb777d0f1f58              # double 4.1830730000000003
	.quad	0x401c7cf2495e17e3              # double 7.1220179999999997
	.quad	0x400565e785b5b707              # double 2.6747580000000002
	.quad	0x3fb95ee136e71cda              # double 0.099103999999999997
	.quad	0x401e65931ca7d673              # double 7.5991939999999997
	.quad	0x4022d617a02fb5d0              # double 9.4181489999999997
	.quad	0x4018dedd48451330              # double 6.2176410000000004
	.quad	0x4012c758e219652c              # double 4.6946750000000002
	.quad	0x400cc881e4712e41              # double 3.5979040000000002
	.quad	0x4014e350092ccf6c              # double 5.2219850000000001
	.quad	0x40194814d72799a2              # double 6.320392
	.quad	0x3ff34812be48a58b              # double 1.2050959999999999
	.quad	0x401b878ab0c88a48              # double 6.8823650000000001
	.quad	0x401d5f9b13165d3a              # double 7.3433650000000004
	.quad	0x401ae2e9ccb7d417              # double 6.7215949999999998
	.quad	0x4014ed9f4d37c137              # double 5.2320529999999996
	.quad	0x4015714c660a2014              # double 5.3606429999999996
	.quad	0x40051b549f94855e              # double 2.6383450000000002
	.quad	0x40112cda2b5a20de              # double 4.2938010000000002
	.quad	0x401997faa044ae86              # double 6.3984170000000002
	.quad	0x401ba03c4b09e98e              # double 6.9064800000000002
	.quad	0x40197d1526d8b1dd              # double 6.3721509999999997
	.quad	0x3fdfbea91d9b1b7a              # double 0.49601200000000001
	.quad	0x400cdf4c2b51bd62              # double 3.609032
	.quad	0x40165613d31b9b67              # double 5.58406
	.quad	0x4023380ecfa69be1              # double 9.6094880000000006
	.quad	0x40160fdd22856606              # double 5.5154920000000001
	.quad	0x4010e93293d102bc              # double 4.2277319999999996
	.quad	0x3fed8e5e679463d0              # double 0.92362900000000003
	.quad	0x400ddf0ed3d859c9              # double 3.7339150000000001
	.quad	0x401518c8eef1bac3              # double 5.2742040000000001
	.quad	0x3ffacab4fa48301a              # double 1.6744889999999999
	.quad	0x40155e429e0a41a2              # double 5.3420509999999997
	.quad	0x3ffdb9357603925c              # double 1.8577170000000001
	.quad	0x4005d62bf11f926c              # double 2.7295759999999998
	.quad	0x4016398d477bbf94              # double 5.556203
	.quad	0x3ffe13fc0096feb5              # double 1.8798790000000001
	.quad	0x402298fc504816f0              # double 9.2988
	.quad	0x401ba76bc1eff9f8              # double 6.9134969999999996
	.quad	0x3ff56d83c6c97d8d              # double 1.339237
	.quad	0x3ff94ae429e0a41a              # double 1.580784
	.quad	0x4021010b84988095              # double 8.5020410000000002
	.quad	0x4022ac33f85510d4              # double 9.3363340000000007
	.quad	0x401958e757928e0d              # double 6.3368200000000003
	.quad	0x402208cae642bf98              # double 9.0171729999999997
	.quad	0x4015fb76f6d76252              # double 5.495571
	.quad	0x4004a7b677f6b1a3              # double 2.5818910000000002
	.quad	0x401b0e175d13d74d              # double 6.7637609999999997
	.quad	0x3ff8fd188f42fe82              # double 1.5617909999999999
	.quad	0x3fc25e9185cee17a              # double 0.143511
	.quad	0x401af9cfdd228566              # double 6.743957
	.quad	0x3ff72089e34330d7              # double 1.445444
	.quad	0x40212167ec7863bf              # double 8.5652460000000001
	.quad	0x4000233df2a9d628              # double 2.0172080000000001
	.quad	0x3fecc48cf7caa759              # double 0.89899300000000004
	.quad	0x40228992428d434a              # double 9.268694
	.quad	0x400abb499d0203e6              # double 3.3414489999999999
	.quad	0x3fe0be1437c5692b              # double 0.52320299999999997
	.quad	0x4022a23cea6c1a05              # double 9.3168710000000008
	.quad	0x3ffd3a6266fd651b              # double 1.826754
	.quad	0x3ffa21d8622c4502              # double 1.6332629999999999
	.quad	0x4023a5cf67b1c001              # double 9.8238479999999999
	.quad	0x401f6c98e53eb39a              # double 7.856052
	.quad	0x401aab3cc4ac6cdb              # double 6.667224
	.quad	0x3fc25ad538ac18f8              # double 0.143397
	.quad	0x401f9e71476af89c              # double 7.9047289999999997
	.quad	0x401744877681669d              # double 5.8169230000000001
	.quad	0x40232d6c2efd438d              # double 9.5887159999999997
	.quad	0x3fc3884c6a3bddfd              # double 0.15259700000000001
	.quad	0x3ff6fa98eda22f6a              # double 1.4361809999999999
	.quad	0x40220356323bbc6f              # double 9.0065170000000006
	.quad	0x40126afa2f05a709              # double 4.6044700000000001
	.quad	0x40097f06f6944674              # double 3.1870250000000002
	.quad	0x3fd52bba98eda22f              # double 0.33079399999999998
	.quad	0x40201f822bbecaac              # double 8.0615400000000008
	.quad	0x400d183dff3f0fe0              # double 3.6368369999999999
	.quad	0x4007d4e54f7a9197              # double 2.9789530000000002
	.quad	0x4020e3baba7b9171              # double 8.4447840000000003
	.quad	0x401e926e5471715c              # double 7.6429989999999997
	.quad	0x4016fb634dad31fd              # double 5.7454960000000002
	.quad	0x401f5d1f1cfbb949              # double 7.8409389999999996
	.quad	0x401cf0a5269595ff              # double 7.2350050000000001
	.quad	0x401f4cb20fb224ab              # double 7.8248980000000001
	.quad	0x40113c7da1ec4e72              # double 4.3090729999999997
	.quad	0x4014311904b3c3e7              # double 5.0479469999999997
	.quad	0x4012d501e2584f4c              # double 4.7080149999999996
	.quad	0x402175d4e8fb00bd              # double 8.7301400000000005
	.quad	0x3ffdb2a497fa5d29              # double 1.856114
	.quad	0x4021cb91b3f20a74              # double 8.897596
	.quad	0x40176cee9dd7ecbb              # double 5.8563789999999996
	.quad	0x40154980f55de58e              # double 5.3217809999999997
	.quad	0x40160e29307af20f              # double 5.5138290000000003
	.quad	0x4017e0fecdd0d8cb              # double 5.969722
	.quad	0x402081528f190d17              # double 8.2525829999999996
	.quad	0x401a21272c94b381              # double 6.5323760000000002
	.quad	0x40106ba908a265f1              # double 4.105137
	.quad	0x4004cdd3fe1975f3              # double 2.6005020000000001
	.quad	0x3ff5e5ecc3e3193f              # double 1.3686339999999999
	.quad	0x401976f544bb1af4              # double 6.3661700000000003
	.quad	0x4020f991ff7164c7              # double 8.4874419999999997
	.quad	0x40107729b280f12c              # double 4.1163699999999999
	.quad	0x4006a03c4b09e98e              # double 2.8282400000000001
	.quad	0x4013f1b1960fa15e              # double 4.9860290000000003
	.quad	0x40109d87724fa8b5              # double 4.1538370000000002
	.quad	0x4007ab191dde3758              # double 2.9585439999999998
	.quad	0x401a6c4c165907d9              # double 6.6057589999999999
	.quad	0x3fff2e2541d8e864              # double 1.948766
	.quad	0x4002acef672b8844              # double 2.334441
	.quad	0x3fdd985f06f69446              # double 0.46242499999999997
	.quad	0x40203bb9cf9a06a7              # double 8.1166520000000002
	.quad	0x400c180dc33721d5              # double 3.5117449999999999
	.quad	0x400cca6eb91b3f21              # double 3.5988440000000002
	.quad	0x4018763c74fb54a0              # double 6.1154650000000004
	.quad	0x4004d1f9acffa7eb              # double 2.6025269999999998
	.quad	0x402262bb23571d1d              # double 9.1928339999999995
	.quad	0x400ca4840e1719f8              # double 3.58033
	.quad	0x3ff15754b05b7cfe              # double 1.0838209999999999
	.quad	0x3fe866ab9b23dd55              # double 0.76253300000000002
	.quad	0x4020592d55a3a084              # double 8.1741740000000007
	.quad	0x3fd1c37e6f71a7e3              # double 0.277557
	.quad	0x401d596b3354c122              # double 7.3373229999999996
	.quad	0x4013b15ce9e5e248              # double 4.9232060000000004
	.quad	0x40218dd701d9f4d3              # double 8.7770309999999991
	.quad	0x4014637a3db3bfb6              # double 5.0971460000000004
	.quad	0x40033594f26aec07              # double 2.4011629999999999
	.quad	0x4023581040bfe3b0              # double 9.6719989999999996
	.quad	0x401d7459d99029ae              # double 7.3636239999999997
	.quad	0x3ff699146e4c0df6              # double 1.4123730000000001
	.quad	0x401f9a450acc0bdd              # double 7.9006540000000002
	.quad	0x4019f4a1f080303c              # double 6.488899
	.quad	0x401928adeebb341e              # double 6.2897259999999999
	.quad	0x4022d49d388a8b09              # double 9.4152620000000002
	.quad	0x401b87cd898b2e9d              # double 6.8826200000000002
	.quad	0x402326a65cf67b1c              # double 9.5754879999999999
	.quad	0x4017988ce703afb8              # double 5.8989750000000001
	.quad	0x3ff38107314ca926              # double 1.219001
	.quad	0x4017baa3ad18d25f              # double 5.9322650000000001
	.quad	0x40057b09a671ef31              # double 2.6850770000000002
	.quad	0x40230c50efdc9c4e              # double 9.5240550000000006
	.quad	0x4007f8def416bdb2              # double 2.9965190000000002
	.quad	0x4021b91a75cd0bb7              # double 8.8615300000000001
	.quad	0x4018eca18bd66278              # double 6.2310850000000002
	.quad	0x4011fc4c5974e65c              # double 4.4963850000000001
	.quad	0x402296a78af3e469              # double 9.2942470000000004
	.quad	0x3feaaf2734f82f51              # double 0.83388099999999998
	.quad	0x4010a25aab474107              # double 4.1585489999999998
	.quad	0x4022aead70e6f2e9              # double 9.3411670000000004
	.quad	0x4018425b317efe0d              # double 6.0648010000000001
	.quad	0x3ff6f84988094e5d              # double 1.4356169999999999
	.quad	0x400549235f809918              # double 2.6607120000000002
	.quad	0x4019c6c2efd438d2              # double 6.4441030000000001
	.quad	0x40032c32a8c9b845              # double 2.3965809999999999
	.quad	0x4004082b62845996              # double 2.5039889999999998
	.quad	0x40172f68be2f7b18              # double 5.7962980000000002
	.quad	0x400b510ba6266fd6              # double 3.4145729999999999
	.quad	0x4016e0f1f57b41c0              # double 5.7196730000000002
	.quad	0x4013d3bd5992428d              # double 4.9567769999999998
	.quad	0x40189e275ab7dc7b              # double 6.1544470000000002
	.quad	0x401f6ab7995ee137              # double 7.854216
	.quad	0x401cf5c9e6687f45              # double 7.2400279999999997
	.quad	0x402199c0229a5ebb              # double 8.8002939999999992
	.quad	0x40209f81e8a2ec29              # double 8.3115380000000005
	.quad	0x400a90ab2e1693c0              # double 3.3206389999999999
	.quad	0x4017d4fb1183b603              # double 5.9579890000000004
	.quad	0x3fcb790fb65668c2              # double 0.21463199999999999
	.quad	0x4019e17d6b65a9a8              # double 6.470205
	.quad	0x401a66a7ef9db22d              # double 6.60025
	.quad	0x401549e7fb267c6c              # double 5.3221740000000004
	.quad	0x401de6d22424a277              # double 7.4754110000000003
	.quad	0x4022e1a8cdea033e              # double 9.4407409999999992
	.quad	0x40228190f301eabc              # double 9.2530590000000003
	.quad	0x402311c475e6362a              # double 9.5347019999999993
	.quad	0x401c52b12d3415b1              # double 7.0807539999999998
	.quad	0x3fe7be6e653868fd              # double 0.74199599999999999
	.quad	0x3ff57d3a1d323fee              # double 1.343073
	.quad	0x3fb74df04ddb5526              # double 0.091033000000000002
	.quad	0x401085c422036007              # double 4.1306310000000002
	.quad	0x40202a3db3bfb58d              # double 8.0825019999999999
	.quad	0x4013d7aa25d8d79d              # double 4.96061
	.quad	0x4020d3faf42784a9              # double 8.4140239999999995
	.quad	0x3ff1df0b28522ea1              # double 1.116954
	.quad	0x4021ecfc610f0e91              # double 8.9628630000000005
	.quad	0x401598c692f6e829              # double 5.3991949999999997
	.quad	0x400feff1950331e4              # double 3.9921600000000002
	.quad	0x4021485dd8f92afa              # double 8.6413410000000006
	.quad	0x400b1edfa43fe5c9              # double 3.3900749999999999
	.quad	0x3ffc5083dbc23316              # double 1.769657
	.quad	0x401f780064a9cdc4              # double 7.8671889999999998
	.quad	0x401baa73b42cc2d7              # double 6.9164570000000003
	.quad	0x400e5e35c5b4aa97              # double 3.796001
	.quad	0x401ac3968d759ee9              # double 6.6910040000000004
	.quad	0x40162c753e707e17              # double 5.5434159999999997
	.quad	0x401541a2e7f6f4bf              # double 5.3140980000000004
	.quad	0x401a8c5cdd50a88f              # double 6.637073
	.quad	0x4022a252ef911cf3              # double 9.3170389999999994
	.quad	0x3fef0ce91c8eac00              # double 0.97032600000000002
	.quad	0x400852157689ca19              # double 3.0400800000000001
	.quad	0x40224fa00e27e0f0              # double 9.1555180000000007
	.quad	0x4023a3fee2c98e54              # double 9.8203040000000001
	.quad	0x401f3a7b4e54f7a9              # double 7.8071109999999999
	.quad	0x401337329c347e8d              # double 4.8039040000000002
	.quad	0x40138ce5b4245f5b              # double 4.8875950000000001
	.quad	0x401b3feb074a771d              # double 6.8124200000000004
	.quad	0x3ff91ed5ae1cde5d              # double 1.570028
	.quad	0x4021d1a88ace24bc              # double 8.9094890000000006
	.quad	0x402271ef73c0c1fd              # double 9.2225300000000008
	.quad	0x4019e15b573eab36              # double 6.4700749999999996
	.quad	0x3ffaaed783dff3f1              # double 1.667686
	.quad	0x3fb775536933a040              # double 0.091633999999999993
	.quad	0x40004f7ec3547e07              # double 2.0388160000000002
	.quad	0x40197fa658c4bd34              # double 6.3746580000000002
	.quad	0x402024cff21b3aef              # double 8.0718990000000002
	.quad	0x401b62adc4c9c90c              # double 6.8463659999999997
	.quad	0x3ffca48c7192ea53              # double 1.790173
	.quad	0x4008cdf15a4acf31              # double 3.1005579999999999
	.quad	0x400a17e6f71a7e31              # double 3.2616710000000002
	.quad	0x401a6a4b124d099e              # double 6.6038019999999999
	.quad	0x4020d09289dadfb5              # double 8.407368
	.quad	0x4013e878b7a1c25d              # double 4.977023
	.quad	0x402035f4a1272c95              # double 8.1053820000000005
	.quad	0x400541d755bccaf7              # double 2.657149
	.quad	0x4012e8b47c73eee5              # double 4.7272509999999999
	.quad	0x3ffc75a858793dd9              # double 1.7787249999999999
	.quad	0x400d551d68c692f7              # double 3.66656
	.quad	0x400add640e9d51b5              # double 3.358101
	.quad	0x401a9c3dab5c39bd              # double 6.6525790000000002
	.quad	0x3fd115c63ae2541e              # double 0.26695400000000002
	.quad	0x40188c7219220ff5              # double 6.1371539999999998
	.quad	0x40239263f9a49c2c              # double 9.7859189999999998
	.quad	0x3ff5a4fca42aed14              # double 1.3527800000000001
	.quad	0x400304b87bdcf030              # double 2.3773049999999998
	.quad	0x400da163779e9d0f              # double 3.7038030000000002
	.quad	0x401ca94185058dde              # double 7.1652889999999996
	.quad	0x40068cc814d7279a              # double 2.8187410000000002
	.quad	0x4010a9ec7000431c              # double 4.1659410000000001
	.quad	0x3fecad2dcb1465e9              # double 0.89614000000000005
	.quad	0x400127839cd8127b              # double 2.1442939999999999
	.quad	0x4016aaffb04ee7c5              # double 5.6669910000000003
	.quad	0x3fd75aff2a172abf              # double 0.364929
	.quad	0x4005e296b3354c12              # double 2.7356389999999999
	.quad	0x4022dca29845dc83              # double 9.4309279999999997
	.quad	0x4023a07570c564f9              # double 9.8133959999999991
	.quad	0x4009225204af9229              # double 3.1417579999999998
	.quad	0x3fec0fb65668c261              # double 0.87691799999999998
	.quad	0x402291c3efae7925              # double 9.2846980000000006
	.quad	0x4014a02eec7c957d              # double 5.1564290000000002
	.quad	0x401e57ce52deca25              # double 7.5857479999999997
	.quad	0x40010764adff822c              # double 2.1286100000000001
	.quad	0x402248dd1e53a81e              # double 9.1423120000000004
	.quad	0x4022f3393ab430f5              # double 9.4750460000000007
	.quad	0x4012fa597d49d7ba              # double 4.7444819999999996
	.quad	0x4022dc964628027e              # double 9.4308340000000008
	.quad	0x40078d7d7c2ca149              # double 2.9440870000000001
	.quad	0x400de0a7c5ac471b              # double 3.7346949999999999
	.quad	0x40229672b884406c              # double 9.2938439999999999
	.quad	0x3ffcbd00713f077d              # double 1.796143
	.quad	0x40124ca4f440af1d              # double 4.5748480000000002
	.quad	0x40095f687b139c95              # double 3.171586
	.quad	0x4013cd2bf5515055              # double 4.9503630000000003
	.quad	0x401ca83f0bae89ec              # double 7.1643030000000003
	.quad	0x3ffa30ccbc05d52c              # double 1.636914
	.quad	0x4012b4a90470a809              # double 4.6764260000000002
	.quad	0x402086ce5710880e              # double 8.2632930000000009
	.quad	0x40046763a1900820              # double 2.5504829999999998
	.quad	0x400336965f5275ef              # double 2.4016540000000002
	.quad	0x400a39ed7c6fbd27              # double 3.2782849999999999
	.quad	0x401f7366d7a56de3              # double 7.8626969999999998
	.quad	0x3fcded30f062d40b              # double 0.23380100000000001
	.quad	0x401e62003ab862b2              # double 7.5957039999999996
	.quad	0x4014d8f4b61fe21e              # double 5.2118710000000004
	.quad	0x400b47e9d94d0dd0              # double 3.4101140000000001
	.quad	0x400ddd8e0008637c              # double 3.7331810000000001
	.quad	0x400e07ddca4b124d              # double 3.753841
	.quad	0x401e5cc1ca3a4b55              # double 7.5905829999999996
	.quad	0x401a37496aad1d04              # double 6.5539909999999999
	.quad	0x4023f1d798d8a97a              # double 9.9723480000000002
	.quad	0x4009d6e1deacc921              # double 3.2299229999999999
	.quad	0x400475b0bbf50e34              # double 2.5574659999999998
	.quad	0x4020c53cbc48f10b              # double 8.3852290000000007
	.quad	0x4014ea1405708249              # double 5.2285919999999999
	.quad	0x401f443e5321e604              # double 7.8166440000000001
	.quad	0x40206682f944241c              # double 8.2002179999999995
	.quad	0x40218afe82517e78              # double 8.7714730000000003
	.quad	0x401a111c6d1e108c              # double 6.5167099999999998
	.quad	0x4016e86e7e62dc6e              # double 5.7269839999999999
	.quad	0x402335dca4b124d1              # double 9.6051990000000007
	.quad	0x400f77ff151e7536              # double 3.933592
	.quad	0x40205ba190082060              # double 8.1789670000000001
	.quad	0x4017695dd4c76d11              # double 5.8528969999999996
	.quad	0x3ffe993a2df9378f              # double 1.912409
	.quad	0x4002097fa5d28d00              # double 2.2546379999999999
	.quad	0x4022bcd1c7de5083              # double 9.3687880000000003
	.quad	0x401f9585be1a8262              # double 7.8960179999999998
	.quad	0x401446f156191149              # double 5.06928
	.quad	0x4009234d26fa3fcd              # double 3.1422370000000002
	.quad	0x40172c5c13fd0d06              # double 5.7933199999999996
	.quad	0x4016b33ca31e7d9a              # double 5.6750360000000004
	.quad	0x402013a83f4eca68              # double 8.0383929999999992
	.quad	0x4021016744b2b778              # double 8.5027410000000003
	.quad	0x40115deb95e5aff3              # double 4.3417190000000003
	.quad	0x3ff7fd7c2ca148bb              # double 1.4993860000000001
	.quad	0x401c5b90a7829069              # double 7.0894190000000004
	.quad	0x4005c906034f3fd9              # double 2.7231559999999999
	.quad	0x401fafc7607c419a              # double 7.921659
	.quad	0x402296f3d3a1d324              # double 9.294829
	.quad	0x401b52b4d8ba40d9              # double 6.830768
	.quad	0x401217edc7ef177a              # double 4.5233679999999996
	.quad	0x4011d9320d9945b7              # double 4.4621050000000002
	.quad	0x401f9c56d5cfaace              # double 7.9026750000000003
	.quad	0x401e41eafee6fb4c              # double 7.5643729999999998
	.quad	0x401058055fbb517a              # double 4.0859579999999998
	.quad	0x40074307f23cc8de              # double 2.9077299999999999
	.quad	0x4019cbcbe61cffeb              # double 6.44902
	.quad	0x4000da26a22b3893              # double 2.106519
	.quad	0x40220820c49ba5e3              # double 9.0158749999999994
	.quad	0x401c0ac9f2fdb8fe              # double 7.0105360000000001
	.quad	0x3fe6ab4b72c5197a              # double 0.70840999999999998
	.quad	0x4022b5a921ccd962              # double 9.354806
	.quad	0x3fed4bd33d29563b              # double 0.91550600000000004
	.quad	0x40237c35ce182667              # double 9.7425979999999992
	.quad	0x4023279c62a1b5c8              # double 9.5773650000000003
	.quad	0x40192f4e4430b179              # double 6.2961970000000003
	.quad	0x400608a697aeddce              # double 2.7542239999999998
	.quad	0x4021864de3b8a19d              # double 8.7623130000000007
	.quad	0x4014491819d2391d              # double 5.0713809999999997
	.quad	0x401866d0917d6b66              # double 6.1004050000000003
	.quad	0x401d3e9424e59296              # double 7.3111119999999996
	.quad	0x4023297cc39ffd61              # double 9.5810300000000001
	.quad	0x4022ddc26dce39b4              # double 9.4331239999999993
	.quad	0x40217960956c0d6f              # double 8.7370649999999994
	.quad	0x40024e5796bfca86              # double 2.2882530000000001
	.quad	0x400f66a5d6bebe16              # double 3.9251209999999999
	.quad	0x3ffbe786c226809d              # double 1.7440249999999999
	.quad	0x4005a9a34ca0c283              # double 2.7078310000000001
	.quad	0x400015d894812be5              # double 2.0106670000000002
	.quad	0x40143f5dbb9cf9a0              # double 5.0618809999999996
	.quad	0x3fe38a159817b95a              # double 0.61060599999999998
	.quad	0x4023fd8adab9f55a              # double 9.9952000000000005
	.quad	0x4014b6e9ff0cbaf9              # double 5.1786269999999996
	.quad	0x40230fa355043e53              # double 9.5305429999999997
	.quad	0x4016f15df6555c53              # double 5.7357100000000001
	.quad	0x40208a1b9f98b71c              # double 8.2697420000000008
	.quad	0x401d35dfeb8d8234              # double 7.3026119999999999
	.quad	0x3fdc60d4562e09ff              # double 0.44341000000000003
	.quad	0x4014b95a6c5d206d              # double 5.1810090000000004
	.quad	0x3fd6c918e325d4a6              # double 0.35602400000000001
	.quad	0x40166f34d6a161e5              # double 5.6086
	.quad	0x4007279463cfb331              # double 2.894326
	.quad	0x400d8adeebb341e1              # double 3.6928079999999999
	.quad	0x401ac7e52157689d              # double 6.6952100000000003
	.quad	0x3f95803cd141a693              # double 0.020996999999999998
	.quad	0x40221d451fc4c166              # double 9.0571680000000008
	.quad	0x40167c5b078d92fb              # double 5.6214409999999999
	.quad	0x4012471d1d4738a4              # double 4.5694470000000003
	.quad	0x4015da6dacabc515              # double 5.4633089999999997
	.quad	0x4002afe47991bc56              # double 2.3358850000000002
	.quad	0x4020726b723ee1bd              # double 8.2234759999999998
	.quad	0x401d688e368f0846              # double 7.3521049999999999
	.quad	0x4014006ee30caa32              # double 5.0004229999999996
	.quad	0x3feecbfb15b573eb              # double 0.96240000000000003
	.quad	0x4012238327674d16              # double 4.5346799999999998
	.quad	0x4012d7d1782d3847              # double 4.7107599999999996
	.quad	0x401033d20f2becee              # double 4.0506060000000002
	.quad	0x402227878b7a1c26              # double 9.0772060000000003
	.quad	0x401a2183b60285ec              # double 6.5327289999999998
	.quad	0x40153c6327ed84d3              # double 5.3089719999999998
	.quad	0x400ff44c37e6f71a              # double 3.9942859999999998
	.quad	0x402245e58e64b231              # double 9.1365169999999996
	.quad	0x401f6b5a20ddc619              # double 7.8548359999999997
	.quad	0x40201d7f950b955f              # double 8.0576139999999992
	.quad	0x4022cdf3d7d3910c              # double 9.4022509999999996
	.quad	0x40206ebd09e12a52              # double 8.2162860000000002
	.quad	0x400a37143393ab43              # double 3.276894
	.quad	0x402191ef5232d2bb              # double 8.7850289999999998
	.quad	0x401f8441355475a3              # double 7.8791549999999999
	.quad	0x400fbd3bafd976ff              # double 3.9673989999999999
	.quad	0x3fd22ef911cf355d              # double 0.28411700000000001
	.quad	0x3fd92ea960b6f9fd              # double 0.39347300000000002
	.quad	0x40095b4a2339c0ec              # double 3.169575
	.quad	0x400f270b8cfbfc65              # double 3.8940649999999999
	.quad	0x40107b4d48882f0e              # double 4.120412
	.quad	0x401f197891e21533              # double 7.7748739999999996
	.quad	0x40180a5efe931876              # double 6.0101279999999999
	.quad	0x4007a2df0d413123              # double 2.9545270000000001
	.quad	0x4013e325d4a5df22              # double 4.9718239999999998
	.quad	0x4022fe6b3fe9fadb              # double 9.496912
	.quad	0x4017c8cbd1244a62              # double 5.9460899999999999
	.quad	0x3ff409363f572de4              # double 1.2522489999999999
	.quad	0x3ff50f9096bb98c8              # double 1.3163
	.quad	0x401cd6512a94ff00              # double 7.2092939999999999
	.quad	0x4007fcfaacd9e83e              # double 2.9985249999999999
	.quad	0x401a0f8db4890929              # double 6.5151890000000003
	.quad	0x400ecc2e770bd018              # double 3.8496980000000001
	.quad	0x4022b6394face67d              # double 9.3559059999999991
	.quad	0x40119e054690de09              # double 4.4043169999999998
	.quad	0x4022a6f240fa9c13              # double 9.3260670000000001
	.quad	0x3ffe077681669ced              # double 1.876822
	.quad	0x3fe41e3eaf6837f8              # double 0.62869200000000003
	.quad	0x4008371a7e308787              # double 3.0269059999999999
	.quad	0x402083a12b5e529c              # double 8.2570890000000005
	.quad	0x40154327aa68f4b6              # double 5.3155809999999999
	.quad	0x401a3b2e1693c03c              # double 6.5577930000000002
	.quad	0x400899af9ebe9c88              # double 3.0750419999999998
	.quad	0x401018dda48b6523              # double 4.0242829999999996
	.quad	0x401469ce8d972cd8              # double 5.1033270000000002
	.quad	0x40171a7b0b391926              # double 5.7758599999999998
	.quad	0x4016ef8ceb356da0              # double 5.7339359999999999
	.quad	0x40019cbb3c81908e              # double 2.2015289999999998
	.quad	0x40029c6d1e108c3f              # double 2.3263799999999999
	.quad	0x3fe4e6234a87e38f              # double 0.65309300000000003
	.quad	0x3fc1cb35f3d7d391              # double 0.139014
	.quad	0x3fff4d855970b49e              # double 1.956426
	.quad	0x40220ce28ed5f139              # double 9.0251660000000005
	.quad	0x4022d071c53f39d2              # double 9.4071180000000005
	.quad	0x40206a8cbd1244a6              # double 8.2081049999999998
	.quad	0x3fe78726d04e618d              # double 0.73524800000000001
	.quad	0x40191856e696a26e              # double 6.2737689999999997
	.quad	0x4022e20e8427418d              # double 9.4415169999999992
	.quad	0x4021d06940357a35              # double 8.9070529999999994
	.quad	0x400b65fc7e6b3fea              # double 3.424798
	.quad	0x3febafc8b0079a28              # double 0.86520799999999998
	.quad	0x40079330941c8217              # double 2.9468700000000001
	.quad	0x402052b6d00b45ae              # double 8.1615509999999993
	.quad	0x3ff2cc8eef1bac2e              # double 1.174941
	.quad	0x3fe7cdb9c7368ad7              # double 0.74386300000000005
	.quad	0x40176804102ff8ec              # double 5.8515779999999999
	.quad	0x4018cbfd2e946801              # double 6.1992079999999996
	.quad	0x401dcaa1d755bccb              # double 7.447883
	.quad	0x3ffd7b0813cab820              # double 1.8425370000000001
	.quad	0x3ffbb220791c4b90              # double 1.730988
	.quad	0x401d7620685553ef              # double 7.3653579999999996
	.quad	0x3fc33482be8bc16a              # double 0.15004000000000001
	.quad	0x3fab9496249a133c              # double 0.053867999999999999
	.quad	0x3ffedaa4fca42aed              # double 1.92838
	.quad	0x40133880d801b435              # double 4.8051789999999999
	.quad	0x3fe2ce48626f60e1              # double 0.58768100000000001
	.quad	0x3fe9c245f5ad96a7              # double 0.80496500000000004
	.quad	0x402155f9378ee286              # double 8.6679169999999992
	.quad	0x4016c21bc126a65d              # double 5.689559
	.quad	0x3fdd3d29563a9f38              # double 0.45685799999999999
	.quad	0x40230e52bd3c3611              # double 9.5279749999999996
	.quad	0x3fd584b1ab0856e7              # double 0.33622400000000002
	.quad	0x4023dca925fe974a              # double 9.9309779999999996
	.quad	0x400bffafc8b0079a              # double 3.4998469999999999
	.quad	0x40113edcc20d562a              # double 4.3113890000000001
	.quad	0x4022c039abf33871              # double 9.3754399999999993
	.quad	0x3fcb348b220791c5              # double 0.21254100000000001
	.quad	0x4020109df1172ef1              # double 8.0324550000000006
	.quad	0x4000de364bec679d              # double 2.1085020000000001
	.quad	0x40212d63a9f383f1              # double 8.5886510000000005
	.quad	0x4014e4b945308bb9              # double 5.223363
	.quad	0x3fd0380cb6c7a7ca              # double 0.25342100000000001
	.quad	0x3fb1dece5710880e              # double 0.069806000000000007
	.quad	0x40128a4766c6de76              # double 4.6350379999999998
	.quad	0x400e0b8737974602              # double 3.7556289999999999
	.quad	0x40112d9620685554              # double 4.2945180000000001
	.quad	0x4011bd6a161e4f76              # double 4.4349749999999997
	.quad	0x40168f56a7ac81d4              # double 5.6399790000000003
	.quad	0x40135a90470a808d              # double 4.8384410000000004
	.quad	0x4022a5e050374ff8              # double 9.3239769999999992
	.quad	0x4021372fdb8fde2f              # double 8.6077870000000001
	.quad	0x4021cb8da3c21188              # double 8.8975650000000002
	.quad	0x40226dbf0563ed0f              # double 9.2143479999999993
	.quad	0x40065c9bc7714339              # double 2.7952189999999999
	.quad	0x4001af4e0114d2f6              # double 2.2105980000000001
	.quad	0x3fee2eec7c957cd4              # double 0.94322799999999995
	.quad	0x40149c460ed80a18              # double 5.1526110000000003
	.quad	0x4017e1aac53b0814              # double 5.9703780000000002
	.quad	0x40164f6f8f041462              # double 5.5775740000000003
	.quad	0x3ffb0febd09e12a5              # double 1.691387
	.quad	0x40233ee75ff609dd              # double 9.622859
	.quad	0x3fb34373f316e371              # double 0.075247999999999995
	.quad	0x401990bfa0945f9e              # double 6.391356
	.quad	0x4009979f23465626              # double 3.1990340000000002
	.quad	0x40125aafbc1acde2              # double 4.5885610000000003
	.quad	0x4012da0c6b484d77              # double 4.7129380000000003
	.quad	0x400825c0b9991362              # double 3.0184340000000001
	.quad	0x4014a62c343b70ef              # double 5.1622779999999997
	.quad	0x40097f36ac647779              # double 3.1871160000000001
	.quad	0x3ff79d19157abb88              # double 1.475854
	.quad	0x401b85cb790fb656              # double 6.8806589999999996
	.quad	0x400df0c4588a04d1              # double 3.7425619999999999
	.quad	0x40209a56bca5375d              # double 8.3014430000000008
	.quad	0x4020cda272862f5a              # double 8.4016300000000008
	.quad	0x3fb2e07e5a78f25a              # double 0.073737999999999998
	.quad	0x3ff30028e4fb97bb              # double 1.1875389999999999
	.quad	0x3fe56bbfd71b0468              # double 0.66940299999999997
	.quad	0x400e452502eec7c9              # double 3.7837619999999998
	.quad	0x401f882d7b634dad              # double 7.8829859999999998
	.quad	0x401aadeb0fadf2ed              # double 6.669842
	.quad	0x401921be2b4959e6              # double 6.2829519999999999
	.quad	0x401cdf540895d0b7              # double 7.2180939999999998
	.quad	0x3faaca57a786c227              # double 0.052325000000000003
	.quad	0x40195b384fd2a62b              # double 6.3390820000000003
	.quad	0x40172b0a6fc58ab9              # double 5.7920319999999998
	.quad	0x40215924f227d029              # double 8.6741100000000007
	.quad	0x4016964b2314013f              # double 5.6467710000000002
	.quad	0x400bdcf2cf95d4e9              # double 3.482885
	.quad	0x400d25332acfb763              # double 3.6431640000000001
	.quad	0x401af378ab0c88a4              # double 6.7377649999999996
	.quad	0x4005891c8eabffce              # double 2.6919490000000001
	.quad	0x400885e80bed740c              # double 3.0653839999999999
	.quad	0x3fff59e731d2e0e3              # double 1.959449
	.quad	0x401e9d3fe1975f2d              # double 7.6535640000000002
	.quad	0x4022143009b30729              # double 9.0394290000000002
	.quad	0x4020e3c621b7e0ac              # double 8.4448709999999991
	.quad	0x4010f1dda059a73b              # double 4.2361969999999998
	.quad	0x40228980f55de58e              # double 9.2685619999999993
	.quad	0x40124f623076c051              # double 4.5775230000000002
	.quad	0x401e146a1a500d5f              # double 7.5199360000000003
	.quad	0x400b4be8bc169c24              # double 3.4120650000000001
	.quad	0x4005bcd78c436fc1              # double 2.7172079999999998
	.quad	0x40036af3e468cac5              # double 2.4272230000000001
	.quad	0x40203c0db2702a35              # double 8.1172920000000008
	.quad	0x401995e80bed740c              # double 6.3963929999999998
	.quad	0x402132c0e7bc3c5c              # double 8.5991280000000003
	.quad	0x3ff800f01fb82c2c              # double 1.500229
	.quad	0x4014c2f87ad080b6              # double 5.1904009999999996
	.quad	0x400100da1a93293d              # double 2.125416
	.quad	0x401096a93f290abb              # double 4.1471299999999998
	.quad	0x4021c3395c422036              # double 8.881297
	.quad	0x401d417481b21c47              # double 7.3139209999999997
	.quad	0x400774a771c970f8              # double 2.9319600000000001
	.quad	0x4010a8051c9f72f7              # double 4.1640819999999996
	.quad	0x4004238088509bfa              # double 2.5173350000000001
	.quad	0x401e4ba6266fd652              # double 7.5738760000000003
	.quad	0x40219827d88c1db0              # double 8.7971789999999999
	.quad	0x3ff5a23bff8a8f3b              # double 1.3521080000000001
	.quad	0x401c268943e10060              # double 7.0376329999999996
	.quad	0x3fcd4d26fa3fcc9f              # double 0.22891700000000001
	.quad	0x401850b4e11dbca9              # double 6.0788149999999996
	.quad	0x40108a82e87d2c7c              # double 4.1352650000000004
	.quad	0x40230c2c7fbacb43              # double 9.5237770000000008
	.quad	0x401cc935fc3b4f61              # double 7.1964949999999996
	.quad	0x400a89595feda661              # double 3.3170649999999999
	.quad	0x402125dbfceb7889              # double 8.5739439999999991
	.quad	0x4011f1cc100e6afd              # double 4.4861300000000002
	.quad	0x40149599ed7c6fbd              # double 5.1460949999999999
	.quad	0x4012e1f9acffa7eb              # double 4.7206789999999996
	.quad	0x3fe2949e8815e397              # double 0.58064199999999999
	.quad	0x401230ae9680e065              # double 4.5475409999999998
	.quad	0x401c3bbadc0980b2              # double 7.0583299999999998
	.quad	0x401eed0e12e83a11              # double 7.7314990000000003
	.quad	0x3fc09d9d3458cd21              # double 0.12981000000000001
	.quad	0x3fbb228dc981beb2              # double 0.10599600000000001
	.quad	0x401b19e40c8472c1              # double 6.7752840000000001
	.quad	0x3fe5290257c914b1              # double 0.66125599999999995
	.quad	0x400846b2f23033a4              # double 3.0345209999999998
	.quad	0x4022c6518f3eccc4              # double 9.3873409999999992
	.quad	0x401f8e147ae147ae              # double 7.8887499999999999
	.quad	0x4004c5f8d2e514c2              # double 2.5966659999999999
	.quad	0x4023654d4024b33e              # double 9.6978550000000006
	.quad	0x400efb97353b4b30              # double 3.8728470000000002
	.quad	0x401594855da27286              # double 5.3950399999999998
	.quad	0x4022daa5e785b5b7              # double 9.4270469999999999
	.quad	0x402051a36e2eb1c4              # double 8.1594499999999996
	.quad	0x4014463a5c1c6089              # double 5.0685820000000001
	.quad	0x4015e0e27e0ef998              # double 5.469614
	.quad	0x401a8dd872f33ca3              # double 6.6385209999999999
	.quad	0x3ff0cdf37329c348              # double 1.050281
	.quad	0x4012db7f9d6f1130              # double 4.7143540000000002
	.quad	0x401208dfbd6a593a              # double 4.5086659999999998
	.quad	0x401e9f62b6ae7d56              # double 7.6556499999999996
	.quad	0x40090ea4a8c154ca              # double 3.1321500000000002
	.quad	0x40182886162f166e              # double 6.039574
	.quad	0x4020ff5ec80c73ac              # double 8.4987700000000003
	.quad	0x40171763a1900820              # double 5.7728409999999997
	.quad	0x401222074ea8da7f              # double 4.5332309999999998
	.quad	0x400ecfea3df6db94              # double 3.851521
	.quad	0x4019fa6f826edaa9              # double 6.4945659999999998
	.quad	0x4016ae02a77a2ced              # double 5.6699320000000002
	.quad	0x40204bd6a593a2e0              # double 8.1481220000000008
	.quad	0x3ffd682f944241c4              # double 1.837936
	.quad	0x40076ff759685122              # double 2.9296709999999999
	.quad	0x4006b1782d38476f              # double 2.8366549999999999
	.quad	0x402330d4dc65c704              # double 9.5953739999999996
	.quad	0x4013fe54b48d3ae7              # double 4.9983700000000004
	.quad	0x3ff51dfc9ff92f2b              # double 1.3198209999999999
	.quad	0x401aee8101f31f47              # double 6.7329140000000001
	.quad	0x4004c2d83c6c97d9              # double 2.5951390000000001
	.quad	0x4016ddb1209edbf9              # double 5.7164960000000002
	.quad	0x4022a0537e2c55c9              # double 9.3131369999999993
	.quad	0x4020f1f3a57eaa2a              # double 8.4725619999999999
	.quad	0x400b32e2fbe33acd              # double 3.3998469999999998
	.quad	0x4022fe2b27cbf6e4              # double 9.496423
	.quad	0x4013c46412cf0f9d              # double 4.9417879999999998
	.quad	0x3ff04a159817b95a              # double 1.018087
	.quad	0x4021b63779e9d0ea              # double 8.8558920000000008
	.quad	0x3fdf85b5b70691ea              # double 0.49253599999999997
	.quad	0x402133eaf6837f7c              # double 8.6014020000000002
	.quad	0x4018ac8754f3775c              # double 6.1684850000000004
	.quad	0x4015c57ff9b56324              # double 5.4428710000000002
	.quad	0x401d7de97d06bbdc              # double 7.3729610000000001
	.quad	0x40083868fd199bb2              # double 3.0275439999999998
	.quad	0x400ef552e2fbe33b              # double 3.8697870000000001
	.quad	0x401d9f15e7c8d196              # double 7.4053570000000004
	.quad	0x401a088d6d3b6cbe              # double 6.5083520000000004
	.quad	0x401278f47304039b              # double 4.6181200000000002
	.quad	0x3fcf23571d1d4739              # double 0.24326600000000001
	.quad	0x4010e82a12f90108              # double 4.2267229999999998
	.quad	0x40036ea6c1a048e0              # double 2.4290289999999999
	.quad	0x4012ea176ddaceee              # double 4.7286049999999999
	.quad	0x40137dad7518b0d1              # double 4.8727320000000001
	.quad	0x4011e5785f8d2e51              # double 4.4740919999999997
	.quad	0x401bdd10b1feeb2d              # double 6.965884
	.quad	0x402373fcc9ea9a3d              # double 9.7265379999999996
	.quad	0x3ff0b89f83be6602              # double 1.0450740000000001
	.quad	0x3fc98fde2ef4e011              # double 0.19970299999999999
	.quad	0x40093f1a5ca29846              # double 3.1558120000000001
	.quad	0x40235ba7fc32ebe6              # double 9.6790160000000007
	.quad	0x3ff5d49e8815e397              # double 1.364409
	.quad	0x402349d0e991ff71              # double 9.6441719999999993
	.quad	0x3fe0309e98dcdb38              # double 0.50593500000000002
	.quad	0x4022d0ea39c51dac              # double 9.4080370000000002
	.quad	0x3fd25803cd141a69              # double 0.28662199999999999
	.quad	0x40177de5082cf52c              # double 5.8729440000000004
	.quad	0x40145bd0e12e83a1              # double 5.089664
	.quad	0x3fecc55eaee2003b              # double 0.89909300000000003
	.quad	0x3fe1dd7ecbb7f9d7              # double 0.55828800000000001
	.quad	0x401e007b784662bb              # double 7.5004710000000001
	.quad	0x401a6cdd93c46d83              # double 6.6063140000000002
	.quad	0x4010fd634549b62c              # double 4.2474489999999996
	.quad	0x40232e779207d4e1              # double 9.5907560000000007
	.quad	0x4005d315d701d9f5              # double 2.7280690000000001
	.quad	0x400561c2e33eff19              # double 2.6727349999999999
	.quad	0x401a7062d40aaeb0              # double 6.6097520000000003
	.quad	0x401c1ad2dcb1465f              # double 7.0261950000000004
	.quad	0x4013a6a22b3892ef              # double 4.9127280000000004
	.quad	0x401e503bc4d22c88              # double 7.5783529999999998
	.quad	0x4021d85ec3dab5c4              # double 8.9225980000000006
	.quad	0x3feeb8f9b13165d4              # double 0.96008000000000004
	.quad	0x40130d074213a0c7              # double 4.7627230000000003
	.quad	0x401a15818c5c9a35              # double 6.5210020000000002
	.quad	0x4003dc7d5ed06fef              # double 2.4826609999999998
	.quad	0x40224e527a20578e              # double 9.1529729999999994
	.quad	0x40182b6805a2d730              # double 6.042389
	.quad	0x4013d4f50a02b841              # double 4.9579659999999999
	.quad	0x40126a7829068987              # double 4.603974
	.quad	0x4020679f23465626              # double 8.2023860000000006
	.quad	0x4021efa28bb0a2cb              # double 8.9680370000000007
	.quad	0x4003a089e34330d7              # double 2.4533879999999999
	.quad	0x4005b09528f190d1              # double 2.7112219999999998
	.quad	0x4010f39e279dd3bb              # double 4.237908
	.quad	0x40125871e6cd2913              # double 4.5863719999999999
	.quad	0x4010417ebaf10236              # double 4.0639599999999998
	.quad	0x40215fe32a0663c7              # double 8.6872799999999994
	.quad	0x401735a0be510907              # double 5.8023709999999999
	.quad	0x401e641e14bdfd26              # double 7.5977709999999998
	.quad	0x401a121dda059a74              # double 6.5176920000000003
	.quad	0x4020c2bda0dfdef8              # double 8.3803529999999995
	.quad	0x3fb46c8711d798d9              # double 0.079781000000000005
	.quad	0x4015e974a3400b89              # double 5.4779840000000002
	.quad	0x400fb583a53b8e4c              # double 3.9636300000000002
	.quad	0x40187e81cb46bacf              # double 6.1235419999999996
	.quad	0x4019eb2745bf26f2              # double 6.4796420000000001
	.quad	0x3ff35b2b3461309c              # double 1.2097579999999999
	.quad	0x3ff132d2bb23571d              # double 1.074908
	.quad	0x40222170b49e01de              # double 9.0653129999999997
	.quad	0x400f00f9096bb98c              # double 3.8754749999999998
	.quad	0x4020f692d55a3a08              # double 8.4815889999999996
	.quad	0x400fa10624dd2f1b              # double 3.9536250000000002
	.quad	0x4012c9eb2074ea8e              # double 4.6971860000000003
	.quad	0x40096520d130df9c              # double 3.1743790000000001
	.quad	0x4015a987c6327ed8              # double 5.4155569999999997
	.quad	0x40222e2867275686              # double 9.0901519999999998
	.quad	0x4002f8feef5ec80c              # double 2.3715799999999998
	.quad	0x401f34c61d8622c4              # double 7.8015369999999997
	.quad	0x400d76a50d6b228e              # double 3.6829320000000001
	.quad	0x401a9986fcdee350              # double 6.6499290000000002
	.quad	0x401d43c85c24c405              # double 7.3161940000000003
	.quad	0x40232bd5347a5b10              # double 9.5856110000000001
	.quad	0x40115289dadfb507              # double 4.3306040000000001
	.quad	0x4014dc21187e7c07              # double 5.2149700000000001
	.quad	0x3ffc0027d88c1db0              # double 1.750038
	.quad	0x401494ece9a2c669              # double 5.145435
	.quad	0x4018a7c200c0f020              # double 6.1638260000000002
	.quad	0x40231d080b673c4f              # double 9.5567019999999995
	.quad	0x3ffef4d594f26aec              # double 1.934774
	.quad	0x4020d2630ec31162              # double 8.4109119999999997
	.quad	0x3f95a426bb55ac04              # double 0.021134
	.quad	0x401174ba0e842742              # double 4.3639910000000004
	.quad	0x40213e071c53f39d              # double 8.6211479999999998
	.quad	0x401f301c0ca600b0              # double 7.7969819999999999
	.quad	0x402203dba0a52696              # double 9.0075350000000007
	.quad	0x3ff92598e10cf5b2              # double 1.571679
	.quad	0x3ff2e2ff08893b7e              # double 1.1804190000000001
	.quad	0x4019697fa5d28d00              # double 6.3530259999999998
	.quad	0x3fe63edd8b60f1b2              # double 0.69517399999999996
	.quad	0x4017db1897a67a53              # double 5.9639610000000003
	.quad	0x4020bc2a02320968              # double 8.3675080000000008
	.quad	0x3ffcfbf727136a40              # double 1.811515
	.quad	0x401c6af3e468cac5              # double 7.1044460000000003
	.quad	0x3fcdf202107b7846              # double 0.23394799999999999
	.quad	0x4022d4bea4ebdd33              # double 9.4155169999999994
	.quad	0x400a7a0cf1800a7c              # double 3.3095949999999998
	.quad	0x4023d44806290eed              # double 9.9146119999999999
	.quad	0x400b140357a35504              # double 3.3847719999999999
	.quad	0x401b5d0d49949e88              # double 6.8408709999999999
	.quad	0x4000fceaf251c194              # double 2.1234950000000001
	.quad	0x4010100d1b71758e              # double 4.0156749999999999
	.quad	0x4022c75a74c09c3d              # double 9.3893620000000002
	.quad	0x3ff3c9c7ffde7211              # double 1.2367630000000001
	.quad	0x401b5e8533b10774              # double 6.8423049999999996
	.quad	0x40130956c0d6f545              # double 4.7591200000000002
	.quad	0x40014ceaaf35e311              # double 2.1625570000000001
	.quad	0x4013ca7c9de05037              # double 4.9477409999999997
	.quad	0x4018fc96030c23fb              # double 6.2466660000000003
	.quad	0x3fe0e6ab9b23dd55              # double 0.52815800000000002
	.quad	0x4015121af7d30ad4              # double 5.2676809999999996
	.quad	0x40119034f3fd933e              # double 4.3908269999999998
	.quad	0x402208142f61ed5b              # double 9.0157790000000002
	.quad	0x400ae7cfa26a22b4              # double 3.3631890000000002
	.quad	0x3fee1ee675147f13              # double 0.941272
	.quad	0x40219999dcb5781c              # double 8.8000019999999992
	.quad	0x401678ff327aa68f              # double 5.6181609999999997
	.quad	0x4017431f46ed245b              # double 5.8155489999999999
	.quad	0x400498e970718223              # double 2.5746639999999998
	.quad	0x401211869835158c              # double 4.5171150000000004
	.quad	0x401335ee568a5050              # double 4.8026669999999996
	.quad	0x4022b216a4873366              # double 9.3478290000000008
	.quad	0x400450b49e01de27              # double 2.5394070000000002
	.quad	0x40164cfbfc6540cc              # double 5.5751799999999996
	.quad	0x40235b5ed8d36b4c              # double 9.6784579999999991
	.quad	0x4023c15d701d9f4d              # double 9.8776659999999996
	.quad	0x4014dc36976bc1f0              # double 5.215052
	.quad	0x4004085d31337eb3              # double 2.5040840000000002
	.quad	0x40033f42352eb5f6              # double 2.405888
	.quad	0x400f288e79aae6c9              # double 3.894803
	.quad	0x40223235b4edb2f6              # double 9.0980659999999993
	.quad	0x4000c1f85d744f5d              # double 2.0947119999999999
	.quad	0x4017039eadd590c1              # double 5.7535350000000003
	.quad	0x401f2ab2e1693c04              # double 7.7916980000000002
	.quad	0x400471d4738a3b58              # double 2.5555810000000001
	.quad	0x4018732acfb762d8              # double 6.1124679999999998
	.quad	0x4004a37c5692b3cc              # double 2.5798269999999999
	.quad	0x401f78a936c58eeb              # double 7.867833
	.quad	0x400e32b1b36bd2b7              # double 3.774753
	.quad	0x4017dc7a7c9de050              # double 5.9653109999999998
	.quad	0x401ed5c74751ce29              # double 7.708768
	.quad	0x401bc37da61e0c5b              # double 6.9409090000000004
	.quad	0x400845460aa64c30              # double 3.0338250000000002
	.quad	0x3fe1ed82ba5a0382              # double 0.56024300000000005
	.quad	0x401979c49774256c              # double 6.3689140000000002
	.quad	0x3ff805a4f00ef135              # double 1.5013780000000001
	.quad	0x401722e3c536d656              # double 5.7840720000000001
	.quad	0x40081068123810e9              # double 3.0080110000000002
	.quad	0x400714d8ba40d90e              # double 2.8851789999999999
	.quad	0x401962a1b5c7cd8a              # double 6.3463200000000004
	.quad	0x4023f47a17f4128c              # double 9.977494
	.quad	0x401bc44c37e6f71a              # double 6.9416969999999996
	.quad	0x400f0d7be9856a38              # double 3.8815840000000001
	.quad	0x3fe6c918e325d4a6              # double 0.71204800000000001
	.quad	0x40198fe2e6ea8544              # double 6.3905139999999996
	.quad	0x40010e789e774eec              # double 2.132066
	.quad	0x402141fec99f1ae3              # double 8.6288970000000003
	.quad	0x401a00e1f7d73c92              # double 6.5008619999999997
	.quad	0x4005f754b05b7cfe              # double 2.7457669999999998
	.quad	0x4003cd698fe69271              # double 2.4752990000000001
	.quad	0x40195a41a261bf38              # double 6.3381410000000002
	.quad	0x402382e7d566cf42              # double 9.7556750000000001
	.quad	0x4023dce89656eefa              # double 9.9314619999999998
	.quad	0x3ffd8a2fcefaa476              # double 1.8462369999999999
	.quad	0x3fec77d30ad46f58              # double 0.88962699999999995
	.quad	0x402386338b47c73f              # double 9.7621120000000001
	.quad	0x3fce74afd5454153              # double 0.23793600000000001
	.quad	0x3ffe43d9a95421c0              # double 1.8915649999999999
	.quad	0x4011705ea24cc682              # double 4.3597359999999998
	.quad	0x400ee39abf338716              # double 3.861135
	.quad	0x3ffbcf49491f2dc3              # double 1.7381070000000001
	.quad	0x4022e1524bfd2e94              # double 9.4400809999999992
	.quad	0x401a3f3bea91d9b2              # double 6.5617520000000003
	.quad	0x40208e874c8ffb8b              # double 8.2783759999999997
	.quad	0x4010a8672756861f              # double 4.1644560000000004
	.quad	0x3fd9eff1950331e4              # double 0.40527000000000002
	.quad	0x3fe4bdd54da4ce81              # double 0.648173
	.quad	0x4002f8da3c21187e              # double 2.3715099999999998
	.quad	0x4020a22ee41919ac              # double 8.3167639999999991
	.quad	0x3feec80e8c8abd5e              # double 0.96192100000000003
	.quad	0x400b20d5e8d54110              # double 3.3910330000000002
	.quad	0x402105d462c343b7              # double 8.5113859999999999
	.quad	0x400f01d7dbf487fd              # double 3.8759000000000001
	.quad	0x3fc05ce5b4245f5b              # double 0.127835
	.quad	0x40231b951c5c5719              # double 9.5538720000000001
	.quad	0x40233033e78e1933              # double 9.5941460000000002
	.quad	0x40193831f03d145e              # double 6.3048780000000004
	.quad	0x4010c3250b52439a              # double 4.1905710000000003
	.quad	0x40155d666a98244f              # double 5.3412110000000004
	.quad	0x4011d8266772d5e0              # double 4.4610839999999996
	.quad	0x401ac973d9ec7000              # double 6.6967309999999998
	.quad	0x402128f51ac9afe2              # double 8.5799950000000003
	.quad	0x401675004fb1183b              # double 5.6142589999999997
	.quad	0x3fe4b20535c9e668              # double 0.64673099999999994
	.quad	0x400d3edc7ef177a7              # double 3.655694
	.quad	0x401e1c9bc7714339              # double 7.5279379999999997
	.quad	0x40021ff25e56cd6c              # double 2.2655989999999999
	.quad	0x40152efb2aae2974              # double 5.2958800000000004
	.quad	0x400aa52bd3c36113              # double 3.3306499999999999
	.quad	0x4010c14cec41dd1a              # double 4.1887699999999999
	.quad	0x3ffddd57ff9b5632              # double 1.8665389999999999
	.quad	0x3ff7ddcf893faf42              # double 1.4916529999999999
	.quad	0x3ff515ca6ca03c4b              # double 1.31782
	.quad	0x4016cd6b228dc982              # double 5.7006040000000002
	.quad	0x40094647fdc5931d              # double 3.1593170000000002
	.quad	0x4000169d30270f39              # double 2.0110420000000002
	.quad	0x4001cb9cb6848beb              # double 2.2244199999999998
	.quad	0x400d4a1ad6451b93              # double 3.661184
	.quad	0x4016bbab21815a08              # double 5.6832700000000003
	.quad	0x400abcf0307f23cd              # double 3.3422550000000002
	.quad	0x3f8211cb039ef0f1              # double 0.0088229999999999992
	.quad	0x400703f2d3c792d1              # double 2.8769279999999999
	.quad	0x3ff6cf3eccc46951              # double 1.425597
	.quad	0x401cbeee52589268              # double 7.1864559999999997
	.quad	0x400a14a6eb91b3f2              # double 3.260084
	.quad	0x3ff826edaa92e621              # double 1.509504
	.quad	0x4022d80c521dda06              # double 9.4219690000000007
	.quad	0x4022ffe2e6ea8544              # double 9.4997779999999991
	.quad	0x400fdf7164c729f6              # double 3.9841030000000002
	.quad	0x4014421ea35935fc              # double 5.0645699999999998
	.quad	0x4015e8d25edd0529              # double 5.4773649999999998
	.quad	0x401db950b955f783              # double 7.4309719999999997
	.quad	0x401d354046412cf1              # double 7.302003
	.quad	0x401aaf761cbccf29              # double 6.6713490000000002
	.quad	0x4015c2dba4d6e47e              # double 5.4402910000000002
	.quad	0x40211eb8d8234224              # double 8.5600039999999992
	.quad	0x3ff2b50b0f27bb30              # double 1.1692
	.quad	0x4018b634549b62c7              # double 6.1779339999999996
	.quad	0x40232172ef0ae536              # double 9.5653299999999994
	.quad	0x40120e3b46fdeb53              # double 4.5138980000000002
	.quad	0x3fe285e5f30e7ff6              # double 0.57884500000000005
	.quad	0x3ff9aed245b291b8              # double 1.605181
	.quad	0x401bbc1fc8f32379              # double 6.9337150000000003
	.quad	0x4009fbc01a36e2eb              # double 3.247925
	.quad	0x40180c60cbf2b23a              # double 6.0120880000000003
	.quad	0x40074aa4b9884c6a              # double 2.9114469999999999
	.quad	0x4017358c8eef1bac              # double 5.8022939999999998
	.quad	0x4022d4e24bba12b6              # double 9.4157890000000002
	.quad	0x4020b7a15db3397e              # double 8.3586530000000003
	.quad	0x401b2a77e5eaab04              # double 6.7914729999999999
	.quad	0x3fda696a26e54717              # double 0.412684
	.quad	0x40205a6d26740810              # double 8.1766140000000007
	.quad	0x4021df0eb24a6a87              # double 8.9356589999999994
	.quad	0x40119288ce703afb              # double 4.3930999999999996
	.quad	0x400d1f8fcd67fd3f              # double 3.6404109999999998
	.quad	0x400c2b19a415f45e              # double 3.521045
	.quad	0x3fd237c5692b3cc5              # double 0.28465400000000002
	.quad	0x401fc4c8ffb8b264              # double 7.9421730000000004
	.quad	0x4017c288ce703afb              # double 5.9399749999999996
	.quad	0x4001f17bd8be7297              # double 2.242912
	.quad	0x401cae2541d8e864              # double 7.170064
	.quad	0x40078398201cd5fa              # double 2.9392550000000002
	.quad	0x401421b823c85c25              # double 5.0329290000000002
	.quad	0x402161c864883fd5              # double 8.690982
	.quad	0x400f41e3eaf6837f              # double 3.9071729999999998
	.quad	0x4020f33e9a6f826f              # double 8.4750870000000003
	.quad	0x4007045564b662fe              # double 2.877116
	.quad	0x401df5974e65bea1              # double 7.4898350000000002
	.quad	0x4011f6ec9e236c16              # double 4.4911370000000002
	.quad	0x4020c705425f2021              # double 8.3887119999999999
	.quad	0x40223f32378ab0c9              # double 9.1234300000000008
	.quad	0x40112f1e8e608073              # double 4.2960149999999997
	.quad	0x3ff2bb97bb730835              # double 1.1707989999999999
	.quad	0x4022149129888f86              # double 9.0401699999999998
	.quad	0x4011197e132b55ef              # double 4.2748949999999999
	.quad	0x401a0eebb341e14c              # double 6.5145710000000001
	.quad	0x40023b65668c2614              # double 2.2790020000000002
	.quad	0x4009b17df19d66ae              # double 3.2116660000000001
	.quad	0x40114c4eb56fb8f5              # double 4.3245189999999996
	.quad	0x4000be33acd5b680              # double 2.0928719999999998
	.quad	0x3fe9843e5321e604              # double 0.79739300000000001
	.quad	0x4019df88765ba6f0              # double 6.4682940000000002
	.quad	0x40131ebfa8f7db6e              # double 4.7800279999999997
	.quad	0x401e8ee17a02fb5d              # double 7.6395319999999999
	.quad	0x400ccd39da16616b              # double 3.6002079999999999
	.quad	0x401d149ecb31c21a              # double 7.2701370000000001
	.quad	0x3ff2a9b7bf1e8e61              # double 1.1664350000000001
	.quad	0x40088c32a8c9b845              # double 3.0684559999999999
	.quad	0x400f015011904b3c              # double 3.8756409999999999
	.quad	0x401469042d8c2a45              # double 5.1025549999999997
	.quad	0x401e0371971c10d8              # double 7.5033630000000002
	.quad	0x401f1cf4e874c900              # double 7.7782780000000002
	.quad	0x4021ade58e64b231              # double 8.8396419999999996
	.quad	0x400c86a6e32e3822              # double 3.5657480000000001
	.quad	0x401fc1676640a6b9              # double 7.9388709999999997
	.quad	0x3ffe3f727136a401              # double 1.89049
	.quad	0x4002aaf4f0d844d0              # double 2.333475
	.quad	0x4021c302d59d55e7              # double 8.8808810000000005
	.quad	0x40118ea1c68ec52a              # double 4.3892889999999998
	.quad	0x40096e631f8a0903              # double 3.1789000000000001
	.quad	0x4016b1f85d744f5d              # double 5.6737989999999998
	.quad	0x4020578594291750              # double 8.1709409999999991
	.quad	0x4022d9afe1da7b0b              # double 9.4251699999999996
	.quad	0x4020df727136a401              # double 8.43642
	.quad	0x4020e6c7863beec4              # double 8.4507410000000007
	.quad	0x401e96f4384ba0e8              # double 7.6474159999999997
	.quad	0x400a2144028e4fb9              # double 3.2662429999999998
	.quad	0x4023531bde82d7b6              # double 9.6623219999999996
	.quad	0x3fddb75a74c09c3d              # double 0.46431600000000001
	.quad	0x4002a925785f8d2e              # double 2.3325909999999999
	.quad	0x400cb52220bc382a              # double 3.588444
	.quad	0x4004342c3c9eecc0              # double 2.5254750000000001
	.quad	0x40014d1958969a0b              # double 2.1626460000000001
	.quad	0x400ecc4827b6fe2e              # double 3.8497469999999998
	.quad	0x4018a31487768167              # double 6.1592580000000003
	.quad	0x3febd7d5a9eb2075              # double 0.87009700000000001
	.quad	0x4023c2278d0cc35d              # double 9.8792080000000002
	.quad	0x3fae44d87724fa8b              # double 0.059118999999999998
	.quad	0x40186388ebcc6c55              # double 6.0972020000000002
	.quad	0x402267ce3150dae4              # double 9.2027450000000001
	.quad	0x402089550ca1cef2              # double 8.2682269999999995
	.quad	0x4007d96744b2b778              # double 2.9811540000000001
	.quad	0x3fc14e4430b178b3              # double 0.13520099999999999
	.quad	0x3ff684790b849881              # double 1.4073420000000001
	.quad	0x40118950b955f783              # double 4.3840969999999997
	.quad	0x4022f83621fafc8b              # double 9.4847879999999999
	.quad	0x40206d22c881e471              # double 8.2131559999999997
	.quad	0x40053a24894c447c              # double 2.6533899999999999
	.quad	0x40029cf70153bd16              # double 2.3266429999999998
	.quad	0x3fd84690de093533              # double 0.37930700000000001
	.quad	0x4022f0a04d12018a              # double 9.4699729999999995
	.quad	0x3fff31fab96f21f7              # double 1.949702
	.quad	0x402040f32378ab0d              # double 8.1268550000000008
	.quad	0x401023b927d45a60              # double 4.0348860000000002
	.quad	0x4008276427c7c526              # double 3.019234
	.quad	0x40169e0f7fcfc3f8              # double 5.6543559999999999
	.quad	0x4014f89e774eebf6              # double 5.2427919999999997
	.quad	0x3ff5a7221858bc5a              # double 1.3533040000000001
	.quad	0x4001303ea704bc27              # double 2.1485569999999998
	.quad	0x3fe742a66dbd72bd              # double 0.72688600000000003
	.quad	0x4021e7487fcb923a              # double 8.9517249999999997
	.quad	0x40045c443914f484              # double 2.5450520000000001
	.quad	0x4015a59ddc1e7968              # double 5.4117350000000002
	.quad	0x400cf004fb1183b6              # double 3.617197
	.quad	0x401e8420f6f08cc5              # double 7.6290319999999995
	.quad	0x401bbb5568e820e6              # double 6.9329429999999999
	.quad	0x4013ac36da87a073              # double 4.9181780000000002
	.quad	0x40198c4199fe4367              # double 6.3869689999999997
	.quad	0x4005177292c49342              # double 2.6364489999999998
	.quad	0x401fcb46fdeb52ca              # double 7.9485130000000002
	.quad	0x401c1161a1db877b              # double 7.0169740000000003
	.quad	0x40230d2bb23571d2              # double 9.5257240000000003
	.quad	0x402203a1b1960fa1              # double 9.0070929999999993
	.quad	0x40208d4d4024b33e              # double 8.2759800000000006
	.quad	0x3ff866e221c8a7a4              # double 1.525118
	.quad	0x40209de6ff7dfa01              # double 8.3084030000000002
	.quad	0x3fe6ef5caf2d7f95              # double 0.71671899999999999
	.quad	0x400951151611ba3d              # double 3.1645910000000002
	.quad	0x400809595feda661              # double 3.0045649999999999
	.quad	0x40008b1c432ca57a              # double 2.0679249999999998
	.quad	0x3ff6c72085b18549              # double 1.4236150000000001
	.quad	0x4004b801b4352652              # double 2.5898469999999998
	.quad	0x401d7c9ff92f2b67              # double 7.3717040000000003
	.quad	0x4022340485a0be51              # double 9.1015969999999999
	.quad	0x3fcc271fff79c843              # double 0.219944
	.quad	0x4015de07e5a78f26              # double 5.4668270000000003
	.quad	0x4018b5e7c8d19589              # double 6.1776419999999996
	.quad	0x400fe60bb2bba98f              # double 3.9873270000000001
	.quad	0x4023ddf2ecf20642              # double 9.9334939999999996
	.quad	0x4023d51bb4916ca4              # double 9.9162269999999992
	.quad	0x3fe3c2d05f288484              # double 0.61753100000000005
	.quad	0x3fd899fe43675ddd              # double 0.38439899999999999
	.quad	0x40218410d7be9857              # double 8.7579410000000006
	.quad	0x3ffac003254e6e22              # double 1.671878
	.quad	0x3ffc1e14bdfd2631              # double 1.757344
	.quad	0x401934c165907d91              # double 6.3015189999999999
	.quad	0x401eaf2ae07e5a79              # double 7.671062
	.quad	0x40213d3671ac14c6              # double 8.6195559999999993
	.quad	0x400671a4bdba0a52              # double 2.8054899999999998
	.quad	0x4006d8feef5ec80c              # double 2.8559549999999998
	.quad	0x402052582dbe7f2c              # double 8.1608289999999996
	.quad	0x40210bfab10ba626              # double 8.5233969999999992
	.quad	0x3fe7da31a4bdba0a              # double 0.74538499999999996
	.quad	0x4019756fb8f57f73              # double 6.3646839999999996
	.quad	0x401fccf91a32b12d              # double 7.9501689999999998
	.quad	0x40236d2630ec3116              # double 9.7131819999999998
	.quad	0x4020d709d8c6d613              # double 8.4199970000000004
	.quad	0x400152c6ac215b9a              # double 2.1654179999999998
	.quad	0x400df0d7be9856a3              # double 3.7425989999999998
	.quad	0x4014e21858bc59b8              # double 5.220796
	.quad	0x40135581cf7878b8              # double 4.8335030000000003
	.quad	0x3ff379d5e4a38327              # double 1.2172449999999999
	.quad	0x3fe6891e215336df              # double 0.70423800000000003
	.quad	0x3fc7a9da597d49d8              # double 0.18487100000000001
	.quad	0x4022ac04a72ead92              # double 9.3359729999999992
	.quad	0x3fe9788333fc86cf              # double 0.79596100000000003
	.quad	0x4022910129cbab65              # double 9.2832120000000007
	.quad	0x4004341b75a74c0a              # double 2.5254430000000001
	.quad	0x40233399d451fc4c              # double 9.6007829999999998
	.quad	0x4008cb3edd8b60f2              # double 3.0992410000000001
	.quad	0x4001e25072085b18              # double 2.2355049999999999
	.quad	0x4005f72799a1fd15              # double 2.7456809999999998
	.quad	0x4022c75d56f32bdc              # double 9.3893839999999997
	.quad	0x3fe5675579af1887              # double 0.66886400000000001
	.quad	0x400c69d27c393682              # double 3.5516709999999998
	.quad	0x3fe3fdc7abfb9bed              # double 0.62472899999999998
	.quad	0x3fee2c8c5004fb12              # double 0.94293800000000005
	.quad	0x40206b089a027525              # double 8.2090499999999995
	.quad	0x401ef17b95a29414              # double 7.7358229999999999
	.quad	0x3ffde3854046412d              # double 1.868047
	.quad	0x4020369d30270f39              # double 8.1066680000000009
	.quad	0x400bd83382e44b6f              # double 3.4805670000000002
	.quad	0x401961a9b8cb8e08              # double 6.3453739999999996
	.quad	0x3ff96096787ce960              # double 1.5860810000000001
	.quad	0x3fb9e050374ff866              # double 0.101079
	.quad	0x40081eaee2003ab8              # double 3.0149819999999998
	.quad	0x4019e7a786c22681              # double 6.4762250000000003
	.quad	0x4010f8dda48b6523              # double 4.2430329999999996
	.quad	0x4009fa27ae9ab29e              # double 3.2471459999999999
	.quad	0x40200bd0bfa09460              # double 8.0230770000000007
	.quad	0x400de962cfd8f0c7              # double 3.7389579999999998
	.quad	0x3ffb43126e978d50              # double 1.703875
	.quad	0x401413df6db940ff              # double 5.0194070000000002
	.quad	0x4013e8ac18f81e8a              # double 4.9772189999999998
	.quad	0x3fdd696e58a32f45              # double 0.45956000000000002
	.quad	0x4008521815a07b35              # double 3.0400849999999999
	.quad	0x401d95a74c09c3ce              # double 7.3961459999999999
	.quad	0x3fff46f587d6f976              # double 1.9548239999999999
	.quad	0x4023515ca6ca03c5              # double 9.6589100000000005
	.quad	0x401696c2efd438d2              # double 5.6472280000000001
	.quad	0x400b0770bd017daf              # double 3.3786330000000002
	.quad	0x3ff41b6805a2d730              # double 1.256691
	.quad	0x40161466b1e5c0ba              # double 5.5199230000000004
	.quad	0x4018475104d551d7              # double 6.0696450000000004
	.quad	0x40200fd651b0ccbc              # double 8.0309319999999999
	.quad	0x401b05b035bd512f              # double 6.7555550000000002
	.quad	0x402232e946801712              # double 9.0994360000000007
	.quad	0x402377f0ed3d859d              # double 9.7342600000000008
	.quad	0x40229ba9b0681238              # double 9.3040289999999998
	.quad	0x401c16273929ed39              # double 7.0216339999999997
	.quad	0x400f30e453d20f2c              # double 3.898873
	.quad	0x401fc00c9539b888              # double 7.9375479999999996
	.quad	0x4020d868db8bac71              # double 8.4226749999999999
	.quad	0x4021f66a55087011              # double 8.9812799999999999
	.quad	0x3fb3daf8df7a4e7b              # double 0.077560000000000004
	.quad	0x4021d12641b328b7              # double 8.9084950000000003
	.quad	0x4012a25bb7b6bb13              # double 4.6585530000000004
	.quad	0x401d4a74c09c3ce2              # double 7.322711
	.quad	0x40179420f6f08cc5              # double 5.8946569999999996
	.quad	0x4014873a797891e2              # double 5.1320589999999999
	.quad	0x401cbb662fdfc19c              # double 7.1830069999999999
	.quad	0x3fe03736cdf266ba              # double 0.50673999999999997
	.quad	0x402361f4b1ee2435              # double 9.6913199999999992
	.quad	0x4015fd3aa369fcf4              # double 5.4972940000000001
	.quad	0x401015fd47bedb73              # double 4.0214740000000004
	.quad	0x4018dc96cc5fbf83              # double 6.2154189999999998
	.quad	0x3ff1da4f00ef1349              # double 1.1157980000000001
	.quad	0x400eb3fc86cebbba              # double 3.8378839999999999
	.quad	0x4009126e978d4fdf              # double 3.1339999999999999
	.quad	0x3ff99bb4916ca46e              # double 1.600514
	.quad	0x402128e51d25aab4              # double 8.5798729999999991
	.quad	0x4022346ed245b292              # double 9.1024080000000005
	.quad	0x402113499d0203e6              # double 8.5376709999999996
	.quad	0x4005b9c6b0531983              # double 2.7157110000000002
	.quad	0x40158b7f9d6f1130              # double 5.3862290000000002
	.quad	0x3fe955b89939218a              # double 0.79171400000000003
	.quad	0x40167e6ff7dfa00e              # double 5.6234739999999999
	.quad	0x4016cc2c5e2cdc01              # double 5.6993879999999999
	.quad	0x3ff2163baba7b917              # double 1.130428
	.quad	0x3ff9498a222d5172              # double 1.580454
	.quad	0x3ff7b7fe08aefb2b              # double 1.4824200000000001
	.quad	0x4017b153bd167664              # double 5.923171
	.quad	0x4021d2d601ffb481              # double 8.9117890000000006
	.quad	0x4016fb0d9513f8db              # double 5.7451689999999997
	.quad	0x40181b994e1a3f46              # double 6.0269519999999996
	.quad	0x4020e3b46fdeb52d              # double 8.4447360000000007
	.quad	0x402286679463cfb3              # double 9.2625089999999997
	.quad	0x402290afe60c38f3              # double 9.2825919999999993
	.quad	0x3ffe28aa433508f6              # double 1.8849279999999999
	.size	.L__constant_3500xf64, 28000

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
