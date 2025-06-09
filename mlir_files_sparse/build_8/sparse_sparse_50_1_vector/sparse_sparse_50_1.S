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
	.quad	0x4142e57edddbec25              # double 2476797.7332740002
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
	.quad	5000                            # 0x1388
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	5000                            # 0x1388
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
	lui	a7, %hi(.L__constant_5000xindex)
	addi	a7, a7, %lo(.L__constant_5000xindex)
	lui	t0, %hi(.L__constant_5000xf64)
	addi	t0, t0, %lo(.L__constant_5000xf64)
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
	.quad	60                              # 0x3c
	.quad	103                             # 0x67
	.quad	146                             # 0x92
	.quad	196                             # 0xc4
	.quad	249                             # 0xf9
	.quad	303                             # 0x12f
	.quad	342                             # 0x156
	.quad	393                             # 0x189
	.quad	447                             # 0x1bf
	.quad	496                             # 0x1f0
	.quad	549                             # 0x225
	.quad	604                             # 0x25c
	.quad	651                             # 0x28b
	.quad	709                             # 0x2c5
	.quad	755                             # 0x2f3
	.quad	803                             # 0x323
	.quad	847                             # 0x34f
	.quad	908                             # 0x38c
	.quad	963                             # 0x3c3
	.quad	1017                            # 0x3f9
	.quad	1062                            # 0x426
	.quad	1106                            # 0x452
	.quad	1157                            # 0x485
	.quad	1209                            # 0x4b9
	.quad	1267                            # 0x4f3
	.quad	1311                            # 0x51f
	.quad	1367                            # 0x557
	.quad	1420                            # 0x58c
	.quad	1463                            # 0x5b7
	.quad	1518                            # 0x5ee
	.quad	1570                            # 0x622
	.quad	1622                            # 0x656
	.quad	1670                            # 0x686
	.quad	1718                            # 0x6b6
	.quad	1768                            # 0x6e8
	.quad	1825                            # 0x721
	.quad	1869                            # 0x74d
	.quad	1918                            # 0x77e
	.quad	1966                            # 0x7ae
	.quad	2011                            # 0x7db
	.quad	2071                            # 0x817
	.quad	2116                            # 0x844
	.quad	2174                            # 0x87e
	.quad	2226                            # 0x8b2
	.quad	2276                            # 0x8e4
	.quad	2329                            # 0x919
	.quad	2383                            # 0x94f
	.quad	2432                            # 0x980
	.quad	2474                            # 0x9aa
	.quad	2529                            # 0x9e1
	.quad	2582                            # 0xa16
	.quad	2632                            # 0xa48
	.quad	2690                            # 0xa82
	.quad	2735                            # 0xaaf
	.quad	2780                            # 0xadc
	.quad	2833                            # 0xb11
	.quad	2882                            # 0xb42
	.quad	2941                            # 0xb7d
	.quad	2990                            # 0xbae
	.quad	3039                            # 0xbdf
	.quad	3088                            # 0xc10
	.quad	3133                            # 0xc3d
	.quad	3180                            # 0xc6c
	.quad	3237                            # 0xca5
	.quad	3291                            # 0xcdb
	.quad	3340                            # 0xd0c
	.quad	3388                            # 0xd3c
	.quad	3436                            # 0xd6c
	.quad	3475                            # 0xd93
	.quad	3522                            # 0xdc2
	.quad	3579                            # 0xdfb
	.quad	3637                            # 0xe35
	.quad	3688                            # 0xe68
	.quad	3732                            # 0xe94
	.quad	3786                            # 0xeca
	.quad	3830                            # 0xef6
	.quad	3878                            # 0xf26
	.quad	3920                            # 0xf50
	.quad	3968                            # 0xf80
	.quad	4030                            # 0xfbe
	.quad	4080                            # 0xff0
	.quad	4115                            # 0x1013
	.quad	4160                            # 0x1040
	.quad	4213                            # 0x1075
	.quad	4255                            # 0x109f
	.quad	4297                            # 0x10c9
	.quad	4350                            # 0x10fe
	.quad	4402                            # 0x1132
	.quad	4443                            # 0x115b
	.quad	4498                            # 0x1192
	.quad	4548                            # 0x11c4
	.quad	4599                            # 0x11f7
	.quad	4649                            # 0x1229
	.quad	4705                            # 0x1261
	.quad	4756                            # 0x1294
	.quad	4798                            # 0x12be
	.quad	4852                            # 0x12f4
	.quad	4897                            # 0x1321
	.quad	4946                            # 0x1352
	.quad	5000                            # 0x1388
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_5000xindex,@object # @__constant_5000xindex
	.p2align	6, 0x0
.L__constant_5000xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
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
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
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
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
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
	.quad	1                               # 0x1
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
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
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
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
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
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.size	.L__constant_5000xindex, 40000

	.type	.L__constant_5000xf64,@object   # @__constant_5000xf64
	.p2align	6, 0x0
.L__constant_5000xf64:
	.quad	0x3fea7566490a350d              # double 0.82683099999999998
	.quad	0x4021b78fabda0dfe              # double 8.8585180000000001
	.quad	0x401182656abde3fc              # double 4.3773400000000002
	.quad	0x3ff1d01f31f46ed2              # double 1.1133109999999999
	.quad	0x3fe965cd4ed2cbea              # double 0.79367699999999997
	.quad	0x4018d5015c209247              # double 6.2080130000000002
	.quad	0x40204e931876188b              # double 8.1534659999999999
	.quad	0x4021f40b9991361e              # double 8.9766510000000004
	.quad	0x4022368943e10060              # double 9.1065159999999992
	.quad	0x4014ae3f78bbd380              # double 5.1701639999999998
	.quad	0x3fff9ddb1209edc0              # double 1.9760390000000001
	.quad	0x401b10b9991361dd              # double 6.7663330000000004
	.quad	0x401e42bb6672fba0              # double 7.5651679999999999
	.quad	0x401af90795f676ea              # double 6.7431929999999998
	.quad	0x400d9f43c7d5ed07              # double 3.702766
	.quad	0x4000ee557de0d66f              # double 2.116374
	.quad	0x401c359ccfaeff5c              # double 7.0523559999999996
	.quad	0x400f0de6ddf00abf              # double 3.8817879999999998
	.quad	0x401954bf0995aaf8              # double 6.3327600000000004
	.quad	0x4022341a47a9e2bd              # double 9.101763
	.quad	0x40201cb4d056c509              # double 8.0560670000000005
	.quad	0x401a2b70ac3a860e              # double 6.5424220000000002
	.quad	0x4015f4955b4677b4              # double 5.4888510000000004
	.quad	0x40236ec15d2d01c1              # double 9.7163190000000003
	.quad	0x401bbb0318b9346a              # double 6.9326290000000004
	.quad	0x3ff5a3bbc6eb0b7c              # double 1.352474
	.quad	0x4010c591cd1c7de5              # double 4.192939
	.quad	0x40103ad7518b0d0f              # double 4.0574620000000001
	.quad	0x3ffc299524bfd2e9              # double 1.7601519999999999
	.quad	0x3ffe1409a2403148              # double 1.8798919999999999
	.quad	0x400b1a22706d5065              # double 3.3877609999999998
	.quad	0x400e39b90ea9e6ef              # double 3.7781850000000001
	.quad	0x401fb055757d5a9f              # double 7.9222010000000002
	.quad	0x401c4a82a5614df9              # double 7.0727640000000003
	.quad	0x4010b8f5c28f5c29              # double 4.180625
	.quad	0x401135f6ba0620ab              # double 4.3026989999999996
	.quad	0x3fab341e14bdfd26              # double 0.053131999999999999
	.quad	0x3ff469ea14057082              # double 1.2758579999999999
	.quad	0x40219058dde7a744              # double 8.7819280000000006
	.quad	0x4021acb380cb6c7a              # double 8.8373069999999991
	.quad	0x4012882c2bd7f51f              # double 4.632981
	.quad	0x40068ad81adea897              # double 2.8177949999999998
	.quad	0x400f4460ed80a17b              # double 3.908388
	.quad	0x401ee8cef672b884              # double 7.7273519999999998
	.quad	0x3ff203e8576cce5f              # double 1.1259539999999999
	.quad	0x401f1940bbb1f256              # double 7.774661
	.quad	0x40168785f8d2e515              # double 5.6323470000000002
	.quad	0x40139584b1ab0857              # double 4.8960140000000001
	.quad	0x3ff69e15ca6ca03c              # double 1.4135949999999999
	.quad	0x3fe2ca643cc07aaf              # double 0.58720600000000001
	.quad	0x401d7d755bccaf71              # double 7.3725180000000003
	.quad	0x401d7b124d099e0e              # double 7.3701869999999996
	.quad	0x401abd03968d759f              # double 6.6845840000000001
	.quad	0x40227bcf4e874c90              # double 9.241816
	.quad	0x400e6b68cef672b9              # double 3.8024460000000002
	.quad	0x402329ac9afe1da8              # double 9.5813950000000005
	.quad	0x4014ed22856605ee              # double 5.2315769999999997
	.quad	0x401f598c7e28240b              # double 7.8374499999999995
	.quad	0x40187bdfd2630ec3              # double 6.1209709999999999
	.quad	0x40149bbe878fabda              # double 5.152094
	.quad	0x40218fdf7e8038a0              # double 8.7810020000000009
	.quad	0x4022f17a67a52ac7              # double 9.4716369999999994
	.quad	0x4019938b47c73eee              # double 6.3940859999999997
	.quad	0x401c04dad31fcd25              # double 7.0047410000000001
	.quad	0x401813476295208e              # double 6.0188269999999999
	.quad	0x3ff05fefbf401c50              # double 1.0234220000000001
	.quad	0x4014621d96e9bbf1              # double 5.0958160000000001
	.quad	0x4009ac0379314446              # double 3.2089910000000001
	.quad	0x40232a5072085b18              # double 9.5826449999999994
	.quad	0x401822f166e008ea              # double 6.0341240000000003
	.quad	0x401ab0dd82fd75e2              # double 6.67272
	.quad	0x4020e64bec679cc7              # double 8.4497979999999995
	.quad	0x401d9224aada33be              # double 7.3927180000000003
	.quad	0x3ff1837e6f71a7e3              # double 1.094603
	.quad	0x4023e899bf5946c3              # double 9.9542979999999996
	.quad	0x40107da09cc319c6              # double 4.1226830000000003
	.quad	0x40233adff822bbed              # double 9.6149900000000005
	.quad	0x401491a4bdba0a52              # double 5.1422299999999996
	.quad	0x4022fc1094a2b9d4              # double 9.4923140000000003
	.quad	0x40136ef3d3a1d324              # double 4.858352
	.quad	0x401c413836a832ba              # double 7.0636910000000004
	.quad	0x40159e121ee67514              # double 5.4043659999999996
	.quad	0x4006efe9b7bf1e8e              # double 2.8671449999999998
	.quad	0x3ffda7fb267c6b8b              # double 1.8535109999999999
	.quad	0x4005ae5604189375              # double 2.7101250000000001
	.quad	0x40118b70ef566491              # double 4.3861730000000003
	.quad	0x4010dbb384fd2a63              # double 4.2145520000000003
	.quad	0x400b760f1b25f634              # double 3.4326460000000001
	.quad	0x4021be72324c8366              # double 8.8719649999999994
	.quad	0x40233806d0d4994a              # double 9.6094270000000002
	.quad	0x3fe2f9ebe9c88616              # double 0.59300799999999998
	.quad	0x40188f1800a7c5ac              # double 6.1397399999999998
	.quad	0x3ff20c70867ad8e4              # double 1.128037
	.quad	0x401b5f2e8c0485a1              # double 6.8429510000000002
	.quad	0x402344b09e98dcdb              # double 9.6341599999999996
	.quad	0x3ffec052d666a982              # double 1.9219539999999999
	.quad	0x4017ad823422467c              # double 5.9194420000000001
	.quad	0x3ff3b4267839cd81              # double 1.231482
	.quad	0x4016bd031055b899              # double 5.6845819999999998
	.quad	0x401f9d5629d8409e              # double 7.9036489999999997
	.quad	0x401878c9752977c9              # double 6.1179560000000004
	.quad	0x3fdf9c7bcc2938de              # double 0.49392599999999998
	.quad	0x40018e8f29d40ee0              # double 2.1946089999999998
	.quad	0x401581fd5885d313              # double 5.3769429999999998
	.quad	0x4014d8eeae9ee45c              # double 5.2118479999999998
	.quad	0x400ed5fbb517a461              # double 3.8544839999999998
	.quad	0x401e55675579af19              # double 7.5834020000000004
	.quad	0x4012bda4484944ed              # double 4.6851969999999996
	.quad	0x402278b1572580c3              # double 9.2357279999999999
	.quad	0x3ffc1539b888722a              # double 1.755182
	.quad	0x4020e3aade657b85              # double 8.4446630000000003
	.quad	0x4004c1083dbc2331              # double 2.5942539999999998
	.quad	0x4015240bbb1f255f              # double 5.2852009999999998
	.quad	0x400333fc0096feb5              # double 2.4003830000000002
	.quad	0x4005d9e30014f8b6              # double 2.7313900000000002
	.quad	0x400e3dd334c5da6a              # double 3.7801879999999999
	.quad	0x4003c74c09c3ce21              # double 2.4723130000000002
	.quad	0x3fcffefbf401c4fc              # double 0.249969
	.quad	0x40224e9813879c41              # double 9.1535039999999999
	.quad	0x401ee2085b18548b              # double 7.7207350000000003
	.quad	0x3fa6c39799e518f4              # double 0.044461000000000001
	.quad	0x4010a7021d10b1ff              # double 4.1630940000000001
	.quad	0x4019e47bedb72820              # double 6.4731290000000001
	.quad	0x400c2f3882278d0d              # double 3.5230570000000001
	.quad	0x4013a59146e4c0df              # double 4.9116869999999997
	.quad	0x401c6d18d25edd05              # double 7.1065399999999999
	.quad	0x40203fb19e731d2e              # double 8.1244019999999999
	.quad	0x402047177a7008a7              # double 8.1388510000000007
	.quad	0x4007bb29a1b9f98b              # double 2.9663879999999998
	.quad	0x40137f0563ed0f62              # double 4.8740439999999996
	.quad	0x3fea43ac929aa1d7              # double 0.82076099999999996
	.quad	0x4015fecbfb15b574              # double 5.4988250000000001
	.quad	0x40120c2b0ea18373              # double 4.5118830000000001
	.quad	0x40208eca25529fe0              # double 8.278886
	.quad	0x4017481733226c3c              # double 5.8204010000000004
	.quad	0x4007dc5154866a12              # double 2.982577
	.quad	0x401c4a0b1bbcf4e8              # double 7.0723079999999996
	.quad	0x3fea87f88765ba6f              # double 0.829098
	.quad	0x4014d89b0ee49f51              # double 5.2115289999999996
	.quad	0x401be3ea2d2fe3f3              # double 6.9725729999999997
	.quad	0x401f855d5f56a7ad              # double 7.8802390000000004
	.quad	0x400e68e4fb97bb73              # double 3.801218
	.quad	0x40208588c1db0143              # double 8.2608090000000001
	.quad	0x4006bd3b29a1b9fa              # double 2.8423980000000002
	.quad	0x40214d50a88effe3              # double 8.6510060000000006
	.quad	0x3fed3790fb65668c              # double 0.91303299999999998
	.quad	0x40223791c4b90215              # double 9.1085340000000006
	.quad	0x4022692ad81adea9              # double 9.2054050000000007
	.quad	0x400c5cf13cee9dd8              # double 3.545382
	.quad	0x402027496aad1d04              # double 8.0767319999999998
	.quad	0x3fd515379fa97e13              # double 0.32941999999999999
	.quad	0x3ff4b621fafc8b00              # double 1.2944659999999999
	.quad	0x40239fd8f0c77dd8              # double 9.8122019999999992
	.quad	0x400ee73797460243              # double 3.8628990000000001
	.quad	0x401195b6805a2d73              # double 4.396204
	.quad	0x4020b5e0b4e11dbd              # double 8.3552300000000006
	.quad	0x4022f656eefa1e3f              # double 9.4811320000000005
	.quad	0x4018c36c15d2d01c              # double 6.190842
	.quad	0x4021336d22424a27              # double 8.6004419999999993
	.quad	0x400fedeb0fadf2ed              # double 3.991171
	.quad	0x401f3b86b15f88fd              # double 7.8081310000000003
	.quad	0x401dcf5f0b28522f              # double 7.4525110000000003
	.quad	0x402080153bd16766              # double 8.2501619999999996
	.quad	0x40093ae70c1333b9              # double 3.1537609999999998
	.quad	0x40135925bb7b6bb1              # double 4.8370579999999999
	.quad	0x3fe5fe2e6ea85447              # double 0.68727799999999994
	.quad	0x4023aecaab8a5ce6              # double 9.8413900000000005
	.quad	0x4021418b93469942              # double 8.6280180000000009
	.quad	0x4007bef284167a96              # double 2.9682360000000001
	.quad	0x3ff997b0f6ad70e7              # double 1.599534
	.quad	0x4020d3e4cd749279              # double 8.4138549999999999
	.quad	0x40228246bf01322f              # double 9.2544459999999997
	.quad	0x400e3efb6dca07f6              # double 3.7807529999999998
	.quad	0x3fe653111f0c34c2              # double 0.69764000000000004
	.quad	0x4021867f90d9d777              # double 8.7626919999999995
	.quad	0x400851950331e3a8              # double 3.0398350000000001
	.quad	0x401c1bdba0a52696              # double 7.0272050000000004
	.quad	0x401c20c9107faa04              # double 7.0320169999999997
	.quad	0x400b943f1c75818c              # double 3.4473859999999998
	.quad	0x400b5001d5c31594              # double 3.414066
	.quad	0x3fe71817b95a2941              # double 0.72169099999999997
	.quad	0x4005a82e019b0ab3              # double 2.7071190000000001
	.quad	0x4022f26d8b1dd5d4              # double 9.4734920000000002
	.quad	0x40038bccf28c79f6              # double 2.4432619999999998
	.quad	0x3feef31098d477bc              # double 0.967171
	.quad	0x400dac7a7c9de050              # double 3.7092179999999999
	.quad	0x40083a24894c447c              # double 3.0283899999999999
	.quad	0x4013c15e39713ad6              # double 4.9388360000000002
	.quad	0x3fd71cb039ef0f17              # double 0.361126
	.quad	0x4022a101083dbc23              # double 9.3144609999999997
	.quad	0x40051506573215fd              # double 2.6352660000000001
	.quad	0x402026a400fba882              # double 8.0754699999999993
	.quad	0x4013928aa433508f              # double 4.8931069999999997
	.quad	0x400e97574f722e1b              # double 3.8238970000000001
	.quad	0x401f3c08fa7a8501              # double 7.8086279999999996
	.quad	0x3fe1474b838c111b              # double 0.53995300000000002
	.quad	0x401731a1db877ab3              # double 5.7984689999999999
	.quad	0x401a188db0574b40              # double 6.5239779999999996
	.quad	0x4022b5b0dd82fd76              # double 9.3548650000000002
	.quad	0x3fe204f09528f191              # double 0.56310300000000002
	.quad	0x4010cb167ec7863c              # double 4.1983280000000001
	.quad	0x3fda3c7d5ed06fef              # double 0.40994199999999997
	.quad	0x4023e831f03d145e              # double 9.9535060000000009
	.quad	0x40108d872f33ca32              # double 4.1382110000000001
	.quad	0x401f6a8ef77f27fe              # double 7.8540609999999997
	.quad	0x401a18ba40d90e24              # double 6.5241480000000003
	.quad	0x4015adcd7060bb2c              # double 5.4197290000000002
	.quad	0x401abcc8de2ac322              # double 6.6843599999999999
	.quad	0x4011b8754f3775b8              # double 4.4301349999999999
	.quad	0x3fdcaeab7995ee13              # double 0.44816099999999998
	.quad	0x40025640639d5e4a              # double 2.2921149999999999
	.quad	0x4015860bb2bba98f              # double 5.3809040000000001
	.quad	0x3fa78fcd67fd3f5b              # double 0.046018999999999997
	.quad	0x400eb44aa53fc009              # double 3.8380329999999998
	.quad	0x4010fe78183f91e6              # double 4.2485049999999998
	.quad	0x4021bca276b7ed42              # double 8.8684270000000005
	.quad	0x40168e820e629952              # double 5.6391679999999997
	.quad	0x401a6da22f6a50d7              # double 6.6070640000000003
	.quad	0x40187f36694898f6              # double 6.124231
	.quad	0x400c718b93469942              # double 3.5554420000000002
	.quad	0x4021a4d5f99c38b0              # double 8.8219449999999995
	.quad	0x4019f616b54e2b06              # double 6.4903209999999998
	.quad	0x400af4202d9cf13d              # double 3.369202
	.quad	0x4001883a96d4c33b              # double 2.1915179999999999
	.quad	0x4000197d49d7ba67              # double 2.0124460000000002
	.quad	0x402186d7e889c1b5              # double 8.7633659999999995
	.quad	0x401c2b78897e9963              # double 7.0424519999999999
	.quad	0x40102e3715400325              # double 4.0451319999999997
	.quad	0x40183d22856605ee              # double 6.0597019999999997
	.quad	0x401f78858ff75968              # double 7.8676969999999997
	.quad	0x4013a632c1f42bb6              # double 4.9123029999999996
	.quad	0x3ff2e7264a16a487              # double 1.181433
	.quad	0x4005c0d1b71758e2              # double 2.71915
	.quad	0x3ffdaf166e008e9b              # double 1.855246
	.quad	0x4017de4b018611fd              # double 5.9670829999999997
	.quad	0x3ff5d3c9abb01c93              # double 1.364206
	.quad	0x401e0fad6cb53501              # double 7.5153100000000003
	.quad	0x3fd6f01b866e43aa              # double 0.35840499999999997
	.quad	0x40207387160956c1              # double 8.2256400000000003
	.quad	0x401364eb56fb8f58              # double 4.848554
	.quad	0x401d393f290abb45              # double 7.3059050000000001
	.quad	0x4022791cf355cd92              # double 9.2365490000000001
	.quad	0x4023ecf95d4e8fb0              # double 9.9628399999999999
	.quad	0x401db30be0ded289              # double 7.4248500000000002
	.quad	0x40019359791819d2              # double 2.1969479999999999
	.quad	0x401a00153bd16766              # double 6.5000809999999998
	.quad	0x40236f8feef5ec81              # double 9.7178950000000003
	.quad	0x40202902de00d1b7              # double 8.0800999999999998
	.quad	0x40215f38a3b57c4e              # double 8.6859789999999997
	.quad	0x402312e81882adc5              # double 9.5369270000000003
	.quad	0x402146b6bf444e0e              # double 8.6381130000000006
	.quad	0x400b2116ebd4cfd1              # double 3.3911570000000002
	.quad	0x4002b5dc4007570c              # double 2.3387989999999999
	.quad	0x401c4fec56d5cfab              # double 7.0780500000000002
	.quad	0x401cdb45ae5ffa3c              # double 7.2141330000000004
	.quad	0x401b68049667b5f2              # double 6.8515800000000002
	.quad	0x40210d2bd3c36113              # double 8.5257249999999996
	.quad	0x401ba6106ab14ec2              # double 6.912172
	.quad	0x3fe191c8eabffcdb              # double 0.54904600000000003
	.quad	0x4013a993d5347a5b              # double 4.9156029999999999
	.quad	0x3fcca59c065b63d4              # double 0.223804
	.quad	0x3ff1fc9eecbfb15b              # double 1.1241749999999999
	.quad	0x40214fb7a5f41aef              # double 8.6556979999999992
	.quad	0x402158813cab81f9              # double 8.6728609999999993
	.quad	0x3fcdf42352eb5f5f              # double 0.234013
	.quad	0x3ff1c9adc8fb86f4              # double 1.1117379999999999
	.quad	0x40043321e603d578              # double 2.5249670000000002
	.quad	0x4004f8611fd5885d              # double 2.6212789999999999
	.quad	0x3fe7dd744f5d3565              # double 0.74578299999999997
	.quad	0x3fe4a21a719b4dcf              # double 0.64478800000000003
	.quad	0x40217ac493426784              # double 8.7397810000000006
	.quad	0x400eeafff36ac647              # double 3.8647459999999998
	.quad	0x3fe68e736049ecb3              # double 0.70488899999999999
	.quad	0x401cb94ccab3edd9              # double 7.1809570000000003
	.quad	0x4012a2ce032db1ea              # double 4.658989
	.quad	0x400f1d0d8cb07d0b              # double 3.889186
	.quad	0x40006a3e7d135116              # double 2.0518770000000002
	.quad	0x40169d7f0ed3d85a              # double 5.6538050000000002
	.quad	0x400e85cdd50a88f0              # double 3.815334
	.quad	0x4017e936c58eeaea              # double 5.9777480000000001
	.quad	0x40215778dd616f87              # double 8.6708440000000007
	.quad	0x40061737542a23c0              # double 2.761336
	.quad	0x40137b82c2bd7f52              # double 4.8706160000000001
	.quad	0x4021e413fd0d0679              # double 8.9454650000000004
	.quad	0x4004505857afea3e              # double 2.539231
	.quad	0x401275f91600f345              # double 4.615208
	.quad	0x401840817fc7607c              # double 6.0629939999999998
	.quad	0x40210f0d62bf11f9              # double 8.5293989999999997
	.quad	0x401a3877681669cf              # double 6.5551430000000002
	.quad	0x401e185b5b70691f              # double 7.5237860000000003
	.quad	0x3fd3f46aa087ca64              # double 0.31179299999999999
	.quad	0x40228c486ad2dcb1              # double 9.2739899999999995
	.quad	0x400e6d099e0e7360              # double 3.8032409999999999
	.quad	0x4021714f483cafb4              # double 8.7213080000000005
	.quad	0x401e187b99d451fc              # double 7.5239089999999997
	.quad	0x401d46030c23fab1              # double 7.318371
	.quad	0x3ff4646f15619115              # double 1.2745200000000001
	.quad	0x402165fd694ccab4              # double 8.6991990000000001
	.quad	0x400ab16b11c6d1e1              # double 3.33663
	.quad	0x401646e86c6583e8              # double 5.5692459999999997
	.quad	0x3ffd9bf9c62a1b5c              # double 1.8505799999999999
	.quad	0x401c9b76709fa54c              # double 7.1518189999999997
	.quad	0x3ff735536933a040              # double 1.4505189999999999
	.quad	0x4014a8d36b4c7f35              # double 5.1648690000000004
	.quad	0x40232d66adb402d1              # double 9.5886739999999992
	.quad	0x4009e408d8ec95c0              # double 3.236345
	.quad	0x4023cb3a0407cc7d              # double 9.8969269999999998
	.quad	0x4018c27d028a1dfc              # double 6.1899300000000004
	.quad	0x400303db3bfb58d1              # double 2.3768829999999999
	.quad	0x4020f001f75104d5              # double 8.4687649999999994
	.quad	0x40223de2ef4e0115              # double 9.1208720000000003
	.quad	0x40223f694467381d              # double 9.1238499999999991
	.quad	0x400562645e4e69f0              # double 2.6730429999999998
	.quad	0x3feb5f56a7ac81d4              # double 0.85538800000000003
	.quad	0x40065719f7f8ca82              # double 2.7925300000000002
	.quad	0x400098fabda0dfdf              # double 2.074697
	.quad	0x40103489d27c3937              # double 4.0513070000000004
	.quad	0x3fe3287e38eb0319              # double 0.59869300000000003
	.quad	0x4023d37d41743e96              # double 9.9130649999999996
	.quad	0x40085246bf01322f              # double 3.0401739999999999
	.quad	0x3ff7206a6e32e382              # double 1.445414
	.quad	0x40232e94467381d8              # double 9.5909750000000002
	.quad	0x401b3cbee807bbb6              # double 6.8093219999999999
	.quad	0x4018c27674d16335              # double 6.1899050000000004
	.quad	0x4018b27f1b691212              # double 6.1743129999999997
	.quad	0x40231e4a9cdc4439              # double 9.5591629999999998
	.quad	0x40040b2d0a244630              # double 2.5054569999999998
	.quad	0x400a3ea57214f052              # double 3.280589
	.quad	0x400771001d5c3159              # double 2.9301759999999999
	.quad	0x4011bd43d03968d7              # double 4.4348289999999997
	.quad	0x40224aa433508f65              # double 9.1457840000000008
	.quad	0x4009d463cfb3311a              # double 3.2287059999999999
	.quad	0x4011ed53cddd6e05              # double 4.4817650000000002
	.quad	0x401ee179bfdf7e80              # double 7.7201909999999998
	.quad	0x3fdbf4a558ea7ce1              # double 0.436807
	.quad	0x40172c44bf4cb189              # double 5.7932309999999996
	.quad	0x4020890342aa9f7b              # double 8.2676029999999994
	.quad	0x3ff147c5260f5e42              # double 1.080022
	.quad	0x400c7e2ac3222920              # double 3.5616050000000001
	.quad	0x401dc7160956c0d7              # double 7.44442
	.quad	0x402256b93ccd0fe9              # double 9.1693820000000006
	.quad	0x3fe40bf7f06705c9              # double 0.62646100000000005
	.quad	0x401110ea5b530ced              # double 4.2665189999999997
	.quad	0x3fe4982235b4edb3              # double 0.643571
	.quad	0x401c0eefa1e3eaf7              # double 7.0145860000000004
	.quad	0x401b5aa821f2990f              # double 6.8385319999999998
	.quad	0x402095c209246bf0              # double 8.2924959999999999
	.quad	0x401c6bccf28c79f6              # double 7.1052739999999996
	.quad	0x3ffadfb0d51f81a6              # double 1.6796120000000001
	.quad	0x4014eb367a0f9097              # double 5.2297000000000002
	.quad	0x4007538bcdfefbf4              # double 2.915794
	.quad	0x40059219220ff541              # double 2.6963370000000002
	.quad	0x401526e371540032              # double 5.2879769999999997
	.quad	0x401d4f5558212945              # double 7.3274739999999996
	.quad	0x4022633ebbfd71b0              # double 9.1938379999999995
	.quad	0x3feb4636b0963561              # double 0.852321
	.quad	0x3fe65974e65bea0c              # double 0.69842000000000004
	.quad	0x4020d4db163baba8              # double 8.4157340000000005
	.quad	0x4001c2b6ae7d566d              # double 2.220075
	.quad	0x401df00da1a93294              # double 7.4844270000000002
	.quad	0x401aec664d3bf2f5              # double 6.7308589999999997
	.quad	0x40002bf7f06705c9              # double 2.0214690000000002
	.quad	0x4020275c28f5c28f              # double 8.0768749999999994
	.quad	0x400fa03254e6e222              # double 3.9532210000000001
	.quad	0x3fdb7eed45e9185d              # double 0.429622
	.quad	0x4021c6c52a411c2a              # double 8.888223
	.quad	0x401d42edbb59ddc2              # double 7.3153600000000001
	.quad	0x3fe2bcc4ac6cdaf5              # double 0.58554300000000004
	.quad	0x3ff4607e5a78f25a              # double 1.273558
	.quad	0x4007f8c5436b8f9b              # double 2.99647
	.quad	0x3fe5eabde3fbbd7b              # double 0.68490499999999999
	.quad	0x4023d5729b280f13              # double 9.9168900000000004
	.quad	0x401d2eb5f5f0b285              # double 7.2956159999999999
	.quad	0x401c3cb4f1e4b44a              # double 7.0592839999999999
	.quad	0x3fe4a1a719b4dcec              # double 0.644733
	.quad	0x4005acca2db61bb0              # double 2.7093699999999998
	.quad	0x3ff76f5232d2bb23              # double 1.4646779999999999
	.quad	0x400172e946801712              # double 2.1811090000000002
	.quad	0x401bd96851223183              # double 6.9623119999999998
	.quad	0x401c06e6106ab14f              # double 7.0067370000000002
	.quad	0x4003cb1dd5d3dc8c              # double 2.4741780000000002
	.quad	0x4010a09e12a51e32              # double 4.1568529999999999
	.quad	0x400f1ca07f66e86c              # double 3.8889779999999998
	.quad	0x3ff0a925fe974a34              # double 1.041296
	.quad	0x400270edc3bd5992              # double 2.3051409999999999
	.quad	0x40225e7f0aa21a72              # double 9.1845630000000007
	.quad	0x3fe3f78feef5ec81              # double 0.62397000000000002
	.quad	0x40237581adea8976              # double 9.7295049999999996
	.quad	0x401ee536d655e28b              # double 7.7238420000000003
	.quad	0x4010d21144cbe1eb              # double 4.2051439999999998
	.quad	0x401580cae642bf98              # double 5.3757739999999998
	.quad	0x4000d99fe43675de              # double 2.1062620000000001
	.quad	0x402048bd230b9dc3              # double 8.1420680000000001
	.quad	0x400b4594af4f0d84              # double 3.4089749999999999
	.quad	0x402207e974a3400c              # double 9.0154530000000008
	.quad	0x4014da2f48c2e771              # double 5.2130710000000002
	.quad	0x40227c00b88ca3e8              # double 9.2421930000000003
	.quad	0x400094eb9a176ddb              # double 2.0727150000000001
	.quad	0x3fed644fa05143bf              # double 0.91849499999999995
	.quad	0x4002081e4712e408              # double 2.2539639999999999
	.quad	0x3ffee19fc2a8869c              # double 1.9300839999999999
	.quad	0x4020304c271fff7a              # double 8.0943310000000004
	.quad	0x3fd3b8066c2acb86              # double 0.30810700000000002
	.quad	0x401a103f2d3c792d              # double 6.5158659999999999
	.quad	0x3fe4ef75d9a0f0a6              # double 0.65423100000000001
	.quad	0x3ffbdbef49cf56eb              # double 1.741195
	.quad	0x401d8ed30f062d41              # double 7.3894770000000003
	.quad	0x400fec5a8155d5f5              # double 3.9904069999999998
	.quad	0x40221737110e453d              # double 9.0453419999999998
	.quad	0x400673ebbfd71b04              # double 2.8066019999999998
	.quad	0x40110579f2346562              # double 4.2553479999999997
	.quad	0x3fffd65d3996fa83              # double 1.989835
	.quad	0x4022b310fd7e4580              # double 9.3497389999999996
	.quad	0x3f90aa64c2f837b5              # double 0.016275000000000001
	.quad	0x401c10be9424e593              # double 7.0163520000000004
	.quad	0x401d10db2702a348              # double 7.2664609999999996
	.quad	0x401a164a59c065b6              # double 6.5217679999999998
	.quad	0x401a69713ad5bee4              # double 6.6029710000000001
	.quad	0x4000599cbee807bc              # double 2.0437560000000001
	.quad	0x401699b9d7fd8277              # double 5.6501229999999998
	.quad	0x4015dad6cb535009              # double 5.4637099999999998
	.quad	0x4019fe529bae46d0              # double 6.4983620000000002
	.quad	0x4005e0f451761459              # double 2.7348409999999999
	.quad	0x4018ea1016ce789e              # double 6.2285769999999996
	.quad	0x40048e642bf9830e              # double 2.5695269999999999
	.quad	0x3ff0a86e7e62dc6e              # double 1.041121
	.quad	0x402358904f6dfc5d              # double 9.6729760000000002
	.quad	0x4010d1a1554fbdad              # double 4.2047169999999996
	.quad	0x3ff93edb7281fd9c              # double 1.5778460000000001
	.quad	0x40096d31769a9110              # double 3.1783169999999998
	.quad	0x3ffe5f7d73c92578              # double 1.8983129999999999
	.quad	0x4013d9e44fa05144              # double 4.9627850000000002
	.quad	0x400dd6c2efd438d2              # double 3.7298640000000001
	.quad	0x4007e664d3bf2f55              # double 2.9874969999999998
	.quad	0x401f3ed6fda836eb              # double 7.8113669999999997
	.quad	0x400cf6a161e4f766              # double 3.620425
	.quad	0x4023b489f40a2878              # double 9.8526150000000001
	.quad	0x4001a8997c3d6840              # double 2.2073239999999998
	.quad	0x3fc1641f644955b4              # double 0.13586799999999999
	.quad	0x401f694898f605ab              # double 7.8528159999999997
	.quad	0x400979f44d445671              # double 3.1845479999999999
	.quad	0x4007f8a32f44912a              # double 2.9964050000000002
	.quad	0x40038235b4edb2f6              # double 2.4385789999999998
	.quad	0x4019051697f1f9ad              # double 6.254969
	.quad	0x4012eaec4a4095f2              # double 4.7294169999999998
	.quad	0x400e857f3061c79b              # double 3.8151839999999999
	.quad	0x3fddcdd93c46d82c              # double 0.46568900000000002
	.quad	0x40004c3547e06962              # double 2.0372110000000001
	.quad	0x4022ba2b5a20ddc6              # double 9.3636119999999998
	.quad	0x3ff00d79d0a67621              # double 1.00329
	.quad	0x40102b6a619da9ca              # double 4.0423980000000004
	.quad	0x4021c4ea8da7f3cf              # double 8.8846019999999992
	.quad	0x401394bfd2e94680              # double 4.8952629999999999
	.quad	0x40179ea39c51dabe              # double 5.9049209999999999
	.quad	0x4018571715c63ae2              # double 6.0850489999999997
	.quad	0x3fd57e670e2c12ae              # double 0.33584000000000003
	.quad	0x4020089a88ace24c              # double 8.0168040000000004
	.quad	0x40233ef459d9902a              # double 9.6229580000000006
	.quad	0x400b1529fe004b7f              # double 3.3853339999999998
	.quad	0x401b145e4e69f05f              # double 6.7698910000000003
	.quad	0x3fe49aef6f8f0414              # double 0.64391299999999996
	.quad	0x4017bc7192ea52f0              # double 5.9340270000000004
	.quad	0x4005de83e425aee6              # double 2.7336499999999999
	.quad	0x400251758e219653              # double 2.2897750000000001
	.quad	0x3ffa4ea9e6eeb702              # double 1.6442049999999999
	.quad	0x401ac78183f91e64              # double 6.6948299999999996
	.quad	0x4012d06c8711d799              # double 4.7035390000000001
	.quad	0x3fed01eabbcb1cc9              # double 0.90648399999999996
	.quad	0x401879b66f9335d2              # double 6.1188599999999997
	.quad	0x3fffe2888b545c79              # double 1.9928060000000001
	.quad	0x3fede1e4f765fd8b              # double 0.93382500000000002
	.quad	0x401481693c03bc4d              # double 5.1263779999999999
	.quad	0x40206b13be22e5de              # double 8.2091349999999998
	.quad	0x400a28eb463497b7              # double 3.2699799999999999
	.quad	0x4022c0b934699418              # double 9.3764129999999994
	.quad	0x4013f5de15ca6ca0              # double 4.9901049999999998
	.quad	0x40155330d738609a              # double 5.3312410000000003
	.quad	0x4014ad206c8711d8              # double 5.1690690000000004
	.quad	0x4014649ecb31c21a              # double 5.0982620000000001
	.quad	0x3fcfa02fb5d03105              # double 0.24707599999999999
	.quad	0x4013e21187e7c06e              # double 4.9707699999999999
	.quad	0x40172760bf5d7881              # double 5.7884549999999999
	.quad	0x401e36a098915bdd              # double 7.5533469999999995
	.quad	0x400ed438d1d8a548              # double 3.8536239999999999
	.quad	0x4017e5f80991793a              # double 5.9745790000000003
	.quad	0x3fe86de97d06bbdc              # double 0.76341700000000001
	.quad	0x3fd0e70c1333b96b              # double 0.264102
	.quad	0x40212a0c49ba5e35              # double 8.5821249999999996
	.quad	0x4016a5f45e0b4e12              # double 5.6620650000000001
	.quad	0x40232b65cb35f3d8              # double 9.5847610000000003
	.quad	0x4020a1322f2734f8              # double 8.3148359999999997
	.quad	0x402155c981beb181              # double 8.6675529999999998
	.quad	0x401a87fcb923a29c              # double 6.6327999999999996
	.quad	0x4022d94163779e9d              # double 9.4243269999999998
	.quad	0x401d83d4ae429e0a              # double 7.3787409999999998
	.quad	0x40212034b0e1b4bb              # double 8.5629019999999993
	.quad	0x400d4fd976ff3ade              # double 3.6639889999999999
	.quad	0x401d90e2c12ad81b              # double 7.3914900000000001
	.quad	0x3feac80a5accd530              # double 0.83691899999999997
	.quad	0x401e5fbe76c8b439              # double 7.5934999999999996
	.quad	0x40225e62fdfc19c1              # double 9.1843489999999992
	.quad	0x401f625918a009f6              # double 7.8460429999999999
	.quad	0x401a8ac7da1ec4e7              # double 6.6355279999999999
	.quad	0x401fc9f94855da27              # double 7.9472399999999998
	.quad	0x4020c03fb3743633              # double 8.3754860000000004
	.quad	0x3fd963a9f383f0bb              # double 0.39670800000000001
	.quad	0x400857fd82773e25              # double 3.042964
	.quad	0x3ff7d207d4e09785              # double 1.488777
	.quad	0x4013002d16b97fe9              # double 4.7501720000000001
	.quad	0x400b6e8af81626b3              # double 3.428976
	.quad	0x4023c518f3eccc47              # double 9.8849560000000007
	.quad	0x40064dea897635e7              # double 2.7880449999999999
	.quad	0x401bf6a8b8f14db6              # double 6.9908780000000004
	.quad	0x40226cd3bf2f5558              # double 9.2125529999999997
	.quad	0x4002f9b77c02afde              # double 2.3719320000000002
	.quad	0x40228dd9e40c8473              # double 9.2770530000000004
	.quad	0x4010dd31769a9110              # double 4.2160089999999997
	.quad	0x4001696dd26b723f              # double 2.1764790000000001
	.quad	0x4020bec00da1a933              # double 8.3725590000000008
	.quad	0x40214aca79357604              # double 8.6460760000000007
	.quad	0x4019f45f17bd8be7              # double 6.4886439999999999
	.quad	0x401e7c81d3aa36a0              # double 7.6215890000000002
	.quad	0x4014bc725c3dee78              # double 5.1840299999999999
	.quad	0x3fffc0e9d51b4fe8              # double 1.9845980000000001
	.quad	0x3fea23810e8858ff              # double 0.81683399999999995
	.quad	0x3fec5a2d72ffd1dd              # double 0.88600800000000002
	.quad	0x4015eb8c75c4a83b              # double 5.4800279999999999
	.quad	0x4016ca01eeed8905              # double 5.697273
	.quad	0x4020c3a96d4c33b5              # double 8.3821519999999996
	.quad	0x40239cef88b97785              # double 9.8065149999999992
	.quad	0x3fe924052d666a98              # double 0.78564699999999998
	.quad	0x400b7afd113836a8              # double 3.4350529999999999
	.quad	0x401da43914f483cb              # double 7.410374
	.quad	0x4004cda122fad6cb              # double 2.6004049999999999
	.quad	0x4021c9a08bfc2225              # double 8.8938030000000001
	.quad	0x4022bf9a06a6e32e              # double 9.3742219999999996
	.quad	0x3fdebd9cae21101b              # double 0.480323
	.quad	0x40150cbddb9841ab              # double 5.2624430000000002
	.quad	0x402044ac29bf162b              # double 8.1341260000000002
	.quad	0x4013a26e115592da              # double 4.9086230000000004
	.quad	0x40203b5d249e44fa              # double 8.115945
	.quad	0x40161719b4dcebff              # double 5.5225590000000002
	.quad	0x4010f7739f340d4e              # double 4.2416520000000002
	.quad	0x4021c602ea960b70              # double 8.8867410000000007
	.quad	0x401add099e0e7360              # double 6.7158569999999997
	.quad	0x401c0d1569f49060              # double 7.0127769999999998
	.quad	0x3fe227264a16a487              # double 0.56727899999999998
	.quad	0x401d4a98244e93e2              # double 7.3228460000000002
	.quad	0x40221e544fe36d22              # double 9.0592369999999995
	.quad	0x400d0aada33bd9cb              # double 3.6302140000000001
	.quad	0x400ff64f97edc7ef              # double 3.995269
	.quad	0x4020b5d63886594b              # double 8.3551500000000001
	.quad	0x401580d49949e881              # double 5.3758109999999997
	.quad	0x40088915379fa97e              # double 3.066935
	.quad	0x40036fc2656abde4              # double 2.42957
	.quad	0x40204d0d2806af47              # double 8.1504910000000006
	.quad	0x4023c6caab8a5ce6              # double 9.8882650000000005
	.quad	0x3fd4468cac4b4d05              # double 0.31680599999999998
	.quad	0x40117c23b7952d23              # double 4.3712299999999997
	.quad	0x4022c6ff3ade2260              # double 9.3886660000000006
	.quad	0x400e637a3db3bfb6              # double 3.7985730000000002
	.quad	0x3fe51e2de8709742              # double 0.65993400000000002
	.quad	0x401f39085f4a1273              # double 7.8056960000000001
	.quad	0x401a23061c79b34a              # double 6.5342029999999998
	.quad	0x40074b4fa48301a8              # double 2.9117730000000002
	.quad	0x40143d3e0bd44999              # double 5.0598070000000002
	.quad	0x3fffbbd7b2031ceb              # double 1.98336
	.quad	0x4014c5158b827fa2              # double 5.1924650000000003
	.quad	0x401aba6defc7a398              # double 6.6820599999999999
	.quad	0x4005e37f7be121ee              # double 2.7360829999999998
	.quad	0x4021caffb04ee7c5              # double 8.8964820000000007
	.quad	0x3ff135e310dbf056              # double 1.0756559999999999
	.quad	0x401846748e475600              # double 6.0688040000000001
	.quad	0x401a367a0f9096bc              # double 6.5532000000000004
	.quad	0x3ffe3b890d5a5b96              # double 1.889535
	.quad	0x4014363f572de43f              # double 5.0529760000000001
	.quad	0x401f99289dadfb50              # double 7.8995689999999996
	.quad	0x402251e646f15619              # double 9.1599599999999999
	.quad	0x401c1ddca4b124d1              # double 7.0291620000000004
	.quad	0x4013ce35c5b4aa97              # double 4.9513769999999999
	.quad	0x4019ef5f0b28522f              # double 6.4837610000000003
	.quad	0x4013eaed56b00ffe              # double 4.9794210000000003
	.quad	0x401c3d4e8fb00bcc              # double 7.0598700000000001
	.quad	0x3ffd1cc964628028              # double 1.819528
	.quad	0x3fed11276fb09204              # double 0.90834400000000004
	.quad	0x40213422ccb3a259              # double 8.6018279999999994
	.quad	0x401c0f1a5ca29846              # double 7.0147490000000001
	.quad	0x4004c7192ea52ef9              # double 2.597216
	.quad	0x401b9c13fd0d0679              # double 6.9024200000000002
	.quad	0x4023c3d29563a9f4              # double 9.8824660000000008
	.quad	0x401e45aee631f8a1              # double 7.5680500000000003
	.quad	0x401f987e7c06e19c              # double 7.8989200000000004
	.quad	0x40221147ae147ae1              # double 9.0337499999999995
	.quad	0x40180fb506dd69d3              # double 6.015339
	.quad	0x401f15dd4c76d118              # double 7.7713520000000002
	.quad	0x401bdf0d413122b8              # double 6.9678240000000002
	.quad	0x4005e425aee631f9              # double 2.7364000000000002
	.quad	0x4000e4388ebcc6c5              # double 2.1114359999999999
	.quad	0x400446772d5e071c              # double 2.5344069999999999
	.quad	0x3ff99a2403148777              # double 1.6001320000000001
	.quad	0x4007d6049ecb31c2              # double 2.979501
	.quad	0x400bb5b6805a2d73              # double 3.463727
	.quad	0x4010a7f90d9d7775              # double 4.1640360000000003
	.quad	0x401373c74fb549f9              # double 4.8630649999999997
	.quad	0x3ff3df88fc9363f5              # double 1.2420739999999999
	.quad	0x3ff69d8f92af9a8d              # double 1.413467
	.quad	0x4023b3fd2e946801              # double 9.8515409999999992
	.quad	0x4018aec56d5cfaad              # double 6.1706750000000001
	.quad	0x3ff0a9cfdd228566              # double 1.041458
	.quad	0x4021c9c15097c808              # double 8.8940529999999995
	.quad	0x402249adea897636              # double 9.1439050000000002
	.quad	0x4010788f42fe8251              # double 4.1177339999999996
	.quad	0x3ff86d4e4c942d49              # double 1.526686
	.quad	0x3fef000c9539b888              # double 0.96875599999999995
	.quad	0x4023c34e3369b9d8              # double 9.881456
	.quad	0x40223e9c0229a5ec              # double 9.1222840000000005
	.quad	0x401892b1704ff434              # double 6.1432549999999999
	.quad	0x3ffcc027d88c1db0              # double 1.796913
	.quad	0x40239f27136a4010              # double 9.8108450000000005
	.quad	0x4004055fbb517a46              # double 2.502624
	.quad	0x401e8ac6045baf53              # double 7.6355209999999997
	.quad	0x4016dcc5fbf83383              # double 5.7155990000000001
	.quad	0x400e99a30984e400              # double 3.825018
	.quad	0x40220327ed84d339              # double 9.0061640000000001
	.quad	0x4023e8c32a8c9b84              # double 9.9546139999999994
	.quad	0x4018f7182235b4ee              # double 6.2413030000000003
	.quad	0x4020b11f70de8f6d              # double 8.3459430000000001
	.quad	0x4023eb80a9de8b3b              # double 9.9599659999999996
	.quad	0x3ffde1c044284dfd              # double 1.867615
	.quad	0x401c2f355cd91eeb              # double 7.0461020000000003
	.quad	0x4022d73e681a9b8d              # double 9.4203980000000004
	.quad	0x4020476cefed6345              # double 8.1395029999999995
	.quad	0x4023f8f55de58e65              # double 9.9862470000000005
	.quad	0x3fdbe1869835158c              # double 0.43564000000000003
	.quad	0x40008b6523704791              # double 2.0680640000000001
	.quad	0x4016a1a048e043a2              # double 5.6578379999999999
	.quad	0x4020b10342aa9f7b              # double 8.3457279999999994
	.quad	0x3fe24c5da6a44418              # double 0.57182200000000005
	.quad	0x40238cb3c3e74afd              # double 9.7748089999999994
	.quad	0x40081b317efe0ce1              # double 3.0132780000000001
	.quad	0x3ff641322f2734f8              # double 1.390917
	.quad	0x4014dc647778dd61              # double 5.2152269999999996
	.quad	0x3ff0b16f4384ba0f              # double 1.0433190000000001
	.quad	0x4009883d35eb7458              # double 3.1915230000000001
	.quad	0x4012eab042528ae7              # double 4.7291879999999997
	.quad	0x402313bcd35a8588              # double 9.5385500000000007
	.quad	0x401f8f3a57eaa2a1              # double 7.8898710000000003
	.quad	0x401e131b584b1ab1              # double 7.5186590000000004
	.quad	0x3fe89d2178f68be3              # double 0.769181
	.quad	0x401259d451fc4c16              # double 4.5877239999999997
	.quad	0x4020d15097c80842              # double 8.4088180000000001
	.quad	0x3ff3eb51bd61f5be              # double 1.2449509999999999
	.quad	0x401dacd3e0bd449a              # double 7.4187770000000004
	.quad	0x4022d7038e29f9cf              # double 9.4199490000000007
	.quad	0x4006aa1c68ec52a4              # double 2.833062
	.quad	0x4012287d6f976790              # double 4.5395409999999998
	.quad	0x400de0a393ee5eee              # double 3.7346870000000001
	.quad	0x40118bf5515054ac              # double 4.3866779999999999
	.quad	0x401ed7f23cc8de2b              # double 7.7108850000000002
	.quad	0x401f05cc857f3062              # double 7.7556630000000002
	.quad	0x4007951deefe4ffd              # double 2.9478110000000002
	.quad	0x4009f584b1ab0857              # double 3.244882
	.quad	0x4009bb46fdeb52ca              # double 3.2164440000000001
	.quad	0x4022badb61bb05fb              # double 9.3649550000000001
	.quad	0x401bf5100a393ee6              # double 6.9893190000000001
	.quad	0x3ffe9c74751ce28f              # double 1.913197
	.quad	0x3feade6ddf00abf7              # double 0.83965199999999995
	.quad	0x401c95dfa871a3b1              # double 7.1463609999999997
	.quad	0x40236b161a1db878              # double 9.7091530000000005
	.quad	0x401b3b09635610ae              # double 6.8076530000000002
	.quad	0x4011572ead9274e2              # double 4.3351389999999999
	.quad	0x402245c6195464dc              # double 9.1362769999999997
	.quad	0x401197ea1c68ec53              # double 4.3983540000000003
	.quad	0x4022995464dc22ab              # double 9.2994719999999997
	.quad	0x401414b018611fd6              # double 5.0202030000000004
	.quad	0x4021e2fd5454152b              # double 8.9433389999999999
	.quad	0x3ffa1fab96f21f6d              # double 1.6327320000000001
	.quad	0x4019abcc6c54bcf1              # double 6.4177720000000003
	.quad	0x40227629307af20f              # double 9.2307830000000006
	.quad	0x4020883c297bfa4c              # double 8.2660839999999993
	.quad	0x4022d96638433d6c              # double 9.4246079999999992
	.quad	0x4011671151611ba4              # double 4.3506520000000002
	.quad	0x3ff569307af20ea6              # double 1.3381810000000001
	.quad	0x40140549731098d4              # double 5.0051629999999996
	.quad	0x4023d15fcc1871e7              # double 9.9089340000000003
	.quad	0x401257ddca4b124d              # double 4.585807
	.quad	0x3ff8cbccf28c79f6              # double 1.5497559999999999
	.quad	0x4008a9de8b3b3205              # double 3.0829439999999999
	.quad	0x401ad2ea0fd3b29a              # double 6.7059709999999999
	.quad	0x40212c3632c1f42c              # double 8.5863510000000005
	.quad	0x401623a0c6b484d7              # double 5.5347929999999996
	.quad	0x400480f776c4827b              # double 2.5629719999999998
	.quad	0x4016d9a133c1ce6c              # double 5.712529
	.quad	0x40139b76b3bb83cf              # double 4.9018199999999998
	.quad	0x40153ae536501e26              # double 5.3075150000000004
	.quad	0x402246a8da7f3cf7              # double 9.138007
	.quad	0x40141ec679cc74b8              # double 5.0300539999999998
	.quad	0x4019e65881a15550              # double 6.4749470000000002
	.quad	0x401df6cebbba55d2              # double 7.4910230000000002
	.quad	0x3ff023854046412d              # double 1.008672
	.quad	0x4021dc886162f167              # double 8.9307280000000002
	.quad	0x4006b2fba01eeed9              # double 2.8373940000000002
	.quad	0x4021ebcb81733227              # double 8.9605370000000004
	.quad	0x3febc7496aad1d04              # double 0.86807699999999998
	.quad	0x401fa0baa582dbe8              # double 7.906962
	.quad	0x40071a6defc7a398              # double 2.8879049999999999
	.quad	0x3fff3a68b19a415f              # double 1.9517599999999999
	.quad	0x402288e6f2e8c048              # double 9.2673869999999993
	.quad	0x40198f227d028a1e              # double 6.38978
	.quad	0x40069b0142f61ed6              # double 2.8256860000000001
	.quad	0x4022f0387df5cf25              # double 9.4691810000000007
	.quad	0x402296455eaee200              # double 9.2934979999999995
	.quad	0x4022a25269595fee              # double 9.3170350000000006
	.quad	0x4020d47cb70ac3a8              # double 8.4150139999999993
	.quad	0x4009ddebd9018e75              # double 3.2333599999999998
	.quad	0x4017944bb1af3a15              # double 5.8948200000000002
	.quad	0x401d55c0b9991362              # double 7.3337430000000001
	.quad	0x402099d6f112fd33              # double 8.3004680000000004
	.quad	0x40018f2734f82f51              # double 2.1948989999999999
	.quad	0x4014509917939a7c              # double 5.0787089999999999
	.quad	0x401cbeaaf35e310e              # double 7.1861990000000002
	.quad	0x3ff1b6dfc5cdd50b              # double 1.1071470000000001
	.quad	0x40090ae536501e26              # double 3.1303200000000002
	.quad	0x4010b8aac96cc5fc              # double 4.180339
	.quad	0x3fe0f967caea747e              # double 0.53044500000000006
	.quad	0x40031210385c67e0              # double 2.3838200000000001
	.quad	0x4020343526527a20              # double 8.1019679999999994
	.quad	0x40163e2a3cea6c1a              # double 5.560708
	.quad	0x4021c58afc47e49b              # double 8.8858259999999998
	.quad	0x4020f328f9f44d44              # double 8.4749219999999994
	.quad	0x4015c2c16df3f962              # double 5.4401910000000004
	.quad	0x401cce158750c1b9              # double 7.2012539999999996
	.quad	0x40239f121ab4b72c              # double 9.8106849999999994
	.quad	0x400eff02c4d65e46              # double 3.874517
	.quad	0x40046d85dfa871a4              # double 2.5534780000000001
	.quad	0x400fc1bf37b8d3f2              # double 3.9696030000000002
	.quad	0x4010e645e4e69f06              # double 4.2248760000000001
	.quad	0x401fe95a294141ea              # double 7.9778830000000003
	.quad	0x40077da7b0b39192              # double 2.9363549999999998
	.quad	0x40215c75818c5c9a              # double 8.6805839999999996
	.quad	0x4017dcbc48f10a9a              # double 5.9655620000000003
	.quad	0x4016751f81a5870e              # double 5.6143780000000003
	.quad	0x40201ae3a3a8e714              # double 8.0525179999999991
	.quad	0x4023cc6455eaee20              # double 9.899203
	.quad	0x3ff1d056c508b32d              # double 1.113364
	.quad	0x400c2b3b320535ca              # double 3.521109
	.quad	0x40105e542e557de1              # double 4.0921180000000001
	.quad	0x40221d182a9930be              # double 9.0568249999999999
	.quad	0x400bc3cafb3b7521              # double 3.470602
	.quad	0x40157f95d4e8fb01              # double 5.3745950000000002
	.quad	0x40154075b3e1437c              # double 5.3129489999999997
	.quad	0x40119fdd65a14489              # double 4.4061180000000002
	.quad	0x40210926634117f8              # double 8.5178709999999995
	.quad	0x4022f46173b85e81              # double 9.4773060000000004
	.quad	0x4005878c868b9fdc              # double 2.6911860000000001
	.quad	0x400d396744b2b778              # double 3.6530290000000001
	.quad	0x40152bfb15b573eb              # double 5.2929500000000003
	.quad	0x40070eb24a6a875d              # double 2.8821759999999998
	.quad	0x400ccf1800a7c5ac              # double 3.6011199999999999
	.quad	0x400e3b445ed4a1ad              # double 3.7789389999999998
	.quad	0x40148eb8950763a2              # double 5.1393760000000004
	.quad	0x40210fcdcca70d20              # double 8.5308670000000006
	.quad	0x401707f455a7d242              # double 5.7577680000000004
	.quad	0x4023e86d938151a4              # double 9.9539609999999996
	.quad	0x3feb9626b2f23034              # double 0.86207900000000003
	.quad	0x401a163022dd7a9a              # double 6.521668
	.quad	0x401ea3b107746888              # double 7.6598550000000003
	.quad	0x40234386b15f88fd              # double 9.6318870000000007
	.quad	0x40019df6555c52e7              # double 2.2021299999999999
	.quad	0x3fff01e8a2ec28b3              # double 1.9379660000000001
	.quad	0x401c82be8bc169c2              # double 7.1276799999999998
	.quad	0x401ccb26bf8769ec              # double 7.1983899999999998
	.quad	0x4015422424a276b8              # double 5.3145910000000001
	.quad	0x401764b90214ad36              # double 5.8483619999999998
	.quad	0x400e59231c64ba95              # double 3.7935240000000001
	.quad	0x3fc12378ab0c88a4              # double 0.13389499999999999
	.quad	0x3fc5e4606748e475              # double 0.17103199999999999
	.quad	0x400f6005c4651f3f              # double 3.9218860000000002
	.quad	0x4000682517e77d52              # double 2.0508519999999999
	.quad	0x40102904b3c3e74b              # double 4.040057
	.quad	0x401c9fd5454152b1              # double 7.1560870000000003
	.quad	0x40101919ef954eb1              # double 4.0245129999999998
	.quad	0x3fe52fd5454152b1              # double 0.66208900000000004
	.quad	0x4010494ff0025bfb              # double 4.0715940000000002
	.quad	0x401a628dc981beb2              # double 6.5962440000000004
	.quad	0x3fa9b0ccbc05d52c              # double 0.050176999999999999
	.quad	0x3ff13c3c5bd0e12f              # double 1.0772060000000001
	.quad	0x401808e4fb97bb73              # double 6.008686
	.quad	0x4016dbe8bc169c24              # double 5.7147550000000003
	.quad	0x401670aed99cbee8              # double 5.610042
	.quad	0x40210aee2003ab86              # double 8.5213479999999997
	.quad	0x3ff45f36262cba73              # double 1.273245
	.quad	0x402162c493426784              # double 8.6929060000000006
	.quad	0x3fec1d7dbf487fcc              # double 0.87860000000000004
	.quad	0x3fe57befd00713f0              # double 0.67137899999999995
	.quad	0x400f57ba6698bb4d              # double 3.9178359999999999
	.quad	0x401ed5b0ff10ecb7              # double 7.7086829999999997
	.quad	0x401d5d8e432441ff              # double 7.3413630000000003
	.quad	0x401e55b8561d4307              # double 7.583711
	.quad	0x401afd7e02645e4e              # double 6.7475509999999996
	.quad	0x400c37f0ed3d859d              # double 3.5273150000000002
	.quad	0x401bc616b54e2b06              # double 6.9434459999999998
	.quad	0x40105d74927913e8              # double 4.0912649999999999
	.quad	0x401d01e8a2ec28b3              # double 7.2518640000000003
	.quad	0x401e820e6299524c              # double 7.627008
	.quad	0x401e4f19d66adb40              # double 7.5772469999999998
	.quad	0x400f3b54195cc858              # double 3.903969
	.quad	0x40214806af46aa08              # double 8.6406759999999991
	.quad	0x4010e916872b020c              # double 4.2276249999999997
	.quad	0x3fe214727dcbddba              # double 0.56499600000000005
	.quad	0x4022854003254e6e              # double 9.2602539999999998
	.quad	0x4021075a964e8b7e              # double 8.5143629999999995
	.quad	0x40206944028e4fb9              # double 8.2055969999999991
	.quad	0x401e940af1cb89d7              # double 7.6445730000000002
	.quad	0x400d891d9b1b79d9              # double 3.691951
	.quad	0x401ab6f694467382              # double 6.6786750000000001
	.quad	0x40134503b81b64e0              # double 4.8173969999999997
	.quad	0x3fd73de1e2de8709              # double 0.36315199999999997
	.quad	0x40126c3dee781840              # double 4.6057050000000004
	.quad	0x3feda849cb252ce0              # double 0.92679299999999997
	.quad	0x4007c45803cd141a              # double 2.9708709999999998
	.quad	0x4022c7281fd9ba1b              # double 9.3889779999999998
	.quad	0x401e49d909f1f14a              # double 7.5721170000000004
	.quad	0x401ebc89b0ee49f5              # double 7.6841189999999999
	.quad	0x4005c05d52c16df4              # double 2.718928
	.quad	0x3fda138fffbce421              # double 0.40744399999999997
	.quad	0x401dd81b21c475e6              # double 7.4610409999999998
	.quad	0x40222aa0a958537e              # double 9.0832569999999997
	.quad	0x40208fe3f359ff50              # double 8.2810360000000003
	.quad	0x4014811c6d1e108c              # double 5.1260849999999998
	.quad	0x3ffa7fd1dcd7060c              # double 1.6562060000000001
	.quad	0x401cdcc74b838c11              # double 7.2156039999999999
	.quad	0x4015e5109070fbec              # double 5.4736960000000003
	.quad	0x401d2441355475a3              # double 7.2854049999999999
	.quad	0x4021a88e9b38d60a              # double 8.8292129999999993
	.quad	0x4007468b9fdbd2fa              # double 2.909446
	.quad	0x40172ec0b567557a              # double 5.7956570000000003
	.quad	0x4020133892ee84ad              # double 8.0375409999999992
	.quad	0x40151d5c31593e60              # double 5.2786720000000003
	.quad	0x401a632617c1bda5              # double 6.5968249999999999
	.quad	0x40101c4da9003eea              # double 4.0276399999999999
	.quad	0x40236d0268900c52              # double 9.7129089999999998
	.quad	0x3fe0a6b50b0f27bb              # double 0.52034999999999998
	.quad	0x3feb782d38476f2a              # double 0.85841999999999996
	.quad	0x401531ea78af3e47              # double 5.2987460000000004
	.quad	0x400436b65a9a8049              # double 2.5267149999999998
	.quad	0x3fd4704bc27631b6              # double 0.31935400000000003
	.quad	0x4001f62413db7f17              # double 2.2451859999999999
	.quad	0x4016fe653868fd1a              # double 5.7484330000000003
	.quad	0x400371876188b114              # double 2.430434
	.quad	0x401fa3743632c1f4              # double 7.9096229999999998
	.quad	0x4016aea78af3e469              # double 5.6705610000000002
	.quad	0x4021ffa2ad3e920c              # double 8.9992879999999999
	.quad	0x4018cafdda8bd231              # double 6.1982340000000002
	.quad	0x400e71958969a0ae              # double 3.8054610000000002
	.quad	0x400b6a4f440af1cc              # double 3.4269090000000002
	.quad	0x3ffa3b0e5e679464              # double 1.639418
	.quad	0x4023c2b324851a87              # double 9.8802730000000007
	.quad	0x3ffb37b17ce52ded              # double 1.7010970000000001
	.quad	0x4023362c55c96031              # double 9.6058070000000004
	.quad	0x3ff955da272862f6              # double 1.5834600000000001
	.quad	0x40144877ee4e26d5              # double 5.0707700000000004
	.quad	0x40123aa8a82a5615              # double 4.5572840000000001
	.quad	0x401c5679463cfb33              # double 7.0844469999999999
	.quad	0x3ff45815a07b352b              # double 1.2715050000000001
	.quad	0x400ae659d12cadde              # double 3.362476
	.quad	0x402209e215336dec              # double 9.0193030000000007
	.quad	0x401ae7ddca4b124d              # double 6.726432
	.quad	0x40061631b584b1ab              # double 2.760837
	.quad	0x4018935f80991794              # double 6.1439190000000004
	.quad	0x400fe699c7bcc294              # double 3.9875980000000002
	.quad	0x4005d71b0468448d              # double 2.730032
	.quad	0x4018f3198288051d              # double 6.2374020000000003
	.quad	0x400a15d031055b8a              # double 3.2606510000000002
	.quad	0x401b6cae21101b00              # double 6.8561329999999998
	.quad	0x401b1cbf6e3f78bc              # double 6.7780740000000002
	.quad	0x4001bd912556d19e              # double 2.217562
	.quad	0x3ffc987a4a48f96e              # double 1.787226
	.quad	0x400a9e5c91d14e3c              # double 3.3273250000000001
	.quad	0x402030a6117720c9              # double 8.0950170000000004
	.quad	0x401228fe260b2c84              # double 4.5400320000000001
	.quad	0x40186c7219220ff5              # double 6.1059039999999998
	.quad	0x40142b99d451fc4c              # double 5.0425789999999999
	.quad	0x4013f77036c9c0a9              # double 4.9916390000000002
	.quad	0x401a850ebaade658              # double 6.6299390000000002
	.quad	0x401a1ef39085f4a1              # double 6.5302259999999999
	.quad	0x40147d51b4fe79ee              # double 5.122382
	.quad	0x400a49fb6134ce3e              # double 3.286124
	.quad	0x3ffefc2a8869c66d              # double 1.936564
	.quad	0x40145aa64c2f837b              # double 5.0885249999999997
	.quad	0x4017d178705425f2              # double 5.954561
	.quad	0x40221aec6bce8534              # double 9.0525850000000005
	.quad	0x3fea034b0e1b4bb6              # double 0.81290200000000001
	.quad	0x401c30abf76a2f49              # double 7.0475310000000002
	.quad	0x40209ee34fc610f1              # double 8.3103280000000002
	.quad	0x401e64de7ea5f84d              # double 7.5985050000000002
	.quad	0x4018d814d72799a2              # double 6.211017
	.quad	0x4021f6f0281ba7fc              # double 8.9823009999999996
	.quad	0x401a6f57f737da62              # double 6.6087340000000001
	.quad	0x401db2b4d8ba40d9              # double 7.424518
	.quad	0x400f2a22b3892ee8              # double 3.8955739999999999
	.quad	0x3fff81dd1a21ea36              # double 1.9692050000000001
	.quad	0x401e9cefaa4766c7              # double 7.6532580000000001
	.quad	0x401dc109070fbeba              # double 7.4385110000000001
	.quad	0x3ff132dc2b0ea183              # double 1.0749169999999999
	.quad	0x3ff33024f6598e11              # double 1.199254
	.quad	0x40137def8487b99d              # double 4.8729839999999998
	.quad	0x3ff013a4f8726d05              # double 1.004796
	.quad	0x3ffac8cc575c0768              # double 1.674023
	.quad	0x4012d8b97785729b              # double 4.7116449999999999
	.quad	0x4020b56dc1a47a9e              # double 8.3543529999999997
	.quad	0x3ff8159a30984e40              # double 1.505274
	.quad	0x400ae2b5a20ddc62              # double 3.3606980000000002
	.quad	0x40108621fafc8b00              # double 4.1309889999999996
	.quad	0x3ff3c13660e51d26              # double 1.2346710000000001
	.quad	0x4021335393250b52              # double 8.6002469999999995
	.quad	0x40179d75e2046c76              # double 5.9037699999999997
	.quad	0x400267abfb9bed31              # double 2.300621
	.quad	0x4000bbc903ea704c              # double 2.0916920000000001
	.quad	0x40203fb4e54f7a92              # double 8.1244270000000007
	.quad	0x4022354280ae1049              # double 9.1040229999999998
	.quad	0x40056cd39da16617              # double 2.6781380000000001
	.quad	0x40210d0507a6bd6f              # double 8.5254290000000008
	.quad	0x4020cfe260b2c83f              # double 8.4060240000000004
	.quad	0x401a19b8887229e9              # double 6.525118
	.quad	0x4022c381d7dbf488              # double 9.38185
	.quad	0x40187bd9cae21102              # double 6.1209480000000003
	.quad	0x400881b2a27f1b69              # double 3.063329
	.quad	0x4007ad7518b0d0ee              # double 2.9596960000000001
	.quad	0x401cc3cddd6e04c0              # double 7.1912149999999997
	.quad	0x40143bf9c62a1b5c              # double 5.0585699999999996
	.quad	0x4016fce6c093d966              # double 5.7469739999999998
	.quad	0x401b10b1feeb2d0a              # double 6.7663039999999999
	.quad	0x3fd31df3300de4c5              # double 0.298703
	.quad	0x401aa4e0114d2f5e              # double 6.6610110000000002
	.quad	0x401f7477ff151e75              # double 7.8637389999999998
	.quad	0x4017824bba12b5e5              # double 5.8772419999999999
	.quad	0x4004d42a23bff8a9              # double 2.603596
	.quad	0x4015ac6f7a0b5ed9              # double 5.4183940000000002
	.quad	0x400143ab862b27cc              # double 2.158042
	.quad	0x4016b55bccaf709b              # double 5.6771079999999996
	.quad	0x4005c1e71044f1a2              # double 2.7196790000000002
	.quad	0x401703743632c1f4              # double 5.7533729999999998
	.quad	0x401b8b15b573eab3              # double 6.8858249999999996
	.quad	0x40148a87e38eb032              # double 5.1352840000000004
	.quad	0x400f0ec6bce8533b              # double 3.882215
	.quad	0x40025fdef8487b9a              # double 2.2968120000000001
	.quad	0x401e7b88ca3e7d13              # double 7.6206389999999997
	.quad	0x401a1ea57214f052              # double 6.529928
	.quad	0x3ffc07789a459104              # double 1.751824
	.quad	0x3f9a8b08dd1e53a8              # double 0.025921
	.quad	0x40216c5ac471b478              # double 8.7116299999999995
	.quad	0x401cf6030c23fab1              # double 7.240246
	.quad	0x4016bb34a44c7b03              # double 5.6828180000000001
	.quad	0x40185c358afc47e5              # double 6.0900480000000003
	.quad	0x3ff7ec79702e6645              # double 1.495233
	.quad	0x3fe79cffeb074a77              # double 0.73791499999999999
	.quad	0x402150ae9680e065              # double 8.6575819999999997
	.quad	0x401ed9d2bf551505              # double 7.7127179999999997
	.quad	0x40236601de269164              # double 9.6992329999999995
	.quad	0x3fffc9fd7a13c255              # double 1.9868140000000001
	.quad	0x3fa9d57ff9b56324              # double 0.050457000000000002
	.quad	0x402114b4aec8d5c7              # double 8.5404409999999995
	.quad	0x401871c432ca57a8              # double 6.1111000000000004
	.quad	0x4015480ae1049236              # double 5.320354
	.quad	0x3feb7b95a294141f              # double 0.85883600000000004
	.quad	0x401ab2dbe7f2c301              # double 6.6746670000000003
	.quad	0x4023c88b75ea67e8              # double 9.8916889999999995
	.quad	0x3ff1b9d0a67620ef              # double 1.1078650000000001
	.quad	0x4011cf6a50d6b229              # double 4.4525540000000001
	.quad	0x401dd7e28240b780              # double 7.4608249999999998
	.quad	0x4020251a437824d5              # double 8.0724660000000004
	.quad	0x401cc37c1376d549              # double 7.1909029999999996
	.quad	0x3fc74eb13dfb0d52              # double 0.182089
	.quad	0x3fff274c09c3ce21              # double 1.9470940000000001
	.quad	0x402307aaef2c7326              # double 9.5149760000000008
	.quad	0x40235032db1e9f27              # double 9.6566379999999991
	.quad	0x4023af92f2b66b61              # double 9.8429179999999991
	.quad	0x4022bd6d7e889c1b              # double 9.3699759999999994
	.quad	0x401bc7b8d3f1843c              # double 6.9450409999999998
	.quad	0x401a06cb966be7b0              # double 6.5066360000000003
	.quad	0x4020c37e4de3b8a2              # double 8.3818230000000007
	.quad	0x3ff209c6f36ef805              # double 1.1273869999999999
	.quad	0x4021ca8a82a5614e              # double 8.8955880000000001
	.quad	0x40177f4f0d844d01              # double 5.8743249999999998
	.quad	0x4017575afaf85943              # double 5.8353080000000004
	.quad	0x40221b7cbb3c8191              # double 9.0536860000000008
	.quad	0x401d506b37867f0b              # double 7.3285340000000003
	.quad	0x400399f666234a88              # double 2.450177
	.quad	0x3ff9cff10ecb74de              # double 1.613267
	.quad	0x40133ff9f87f023f              # double 4.8124770000000003
	.quad	0x401da2a5a469d734              # double 7.4088349999999998
	.quad	0x400ff9d6f112fd33              # double 3.9969920000000001
	.quad	0x401d8f112fd32c62              # double 7.3897139999999997
	.quad	0x40180d8b1dd5d3dd              # double 6.0132260000000004
	.quad	0x4000e17a02fb5d03              # double 2.110096
	.quad	0x40231b05532617c2              # double 9.5527750000000005
	.quad	0x401d9a89fc6da448              # double 7.4009169999999997
	.quad	0x402099d0c8041030              # double 8.300421
	.quad	0x400676a7264a16a5              # double 2.8079360000000002
	.quad	0x401c2b5cbff47736              # double 7.0423460000000002
	.quad	0x4007b8a8f3a9b068              # double 2.965166
	.quad	0x3ff9910a137f38c5              # double 1.5979099999999999
	.quad	0x40220c0420f6f08d              # double 9.0234690000000004
	.quad	0x3ffe4a148ba83f4f              # double 1.893086
	.quad	0x40113bba12b5e52a              # double 4.3083270000000002
	.quad	0x4021c3c59b8023a7              # double 8.8823670000000003
	.quad	0x3feb83f91e646f15              # double 0.85985999999999996
	.quad	0x40217feac42e989a              # double 8.7498380000000004
	.quad	0x4008f97891e21533              # double 3.1218119999999998
	.quad	0x40216cbe835dedf2              # double 8.7123910000000002
	.quad	0x40032774eebf65dc              # double 2.394266
	.quad	0x4019697c3d68405b              # double 6.3530129999999998
	.quad	0x3fdbea5f84cad57c              # double 0.43618000000000001
	.quad	0x400861cde5d18091              # double 3.0477560000000001
	.quad	0x4017fd5171e29b6b              # double 5.9973809999999999
	.quad	0x4017e5c4eb56fb8f              # double 5.9743839999999997
	.quad	0x400ede0589acbc8c              # double 3.858409
	.quad	0x4021ea33df2a9d62              # double 8.9574269999999991
	.quad	0x4020c6fcdee34fc6              # double 8.3886479999999999
	.quad	0x3ff810b30b5aa716              # double 1.5040770000000001
	.quad	0x3fef682517e77d52              # double 0.98146299999999997
	.quad	0x3ff049c4da9003ef              # double 1.0180100000000001
	.quad	0x401cd2189bd8383b              # double 7.2051720000000001
	.quad	0x400cdac81d3aa36a              # double 3.606827
	.quad	0x4023703d35eb7458              # double 9.7192170000000004
	.quad	0x40189e49b1fab96f              # double 6.1545779999999999
	.quad	0x401a0bf487fcb924              # double 6.5116750000000003
	.quad	0x40231b914f483cb0              # double 9.5538430000000005
	.quad	0x3fedd256798958da              # double 0.93192600000000003
	.quad	0x4013a64628027d89              # double 4.9123770000000002
	.quad	0x4023df5579af1887              # double 9.9361990000000002
	.quad	0x3fdc990afe60c38f              # double 0.44684099999999999
	.quad	0x400ac3aafff36ac6              # double 3.3455409999999999
	.quad	0x4020e690ff972474              # double 8.4503249999999994
	.quad	0x401faeaf6837f7be              # double 7.9205909999999999
	.quad	0x402099c219eb6391              # double 8.3003090000000004
	.quad	0x40144436b8f9b131              # double 5.0666149999999996
	.quad	0x3fa10f0e90bc7b46              # double 0.033318
	.quad	0x4020a7be553ac4f8              # double 8.3276240000000001
	.quad	0x401c3059641f6449              # double 7.0472159999999997
	.quad	0x40112fd32c625e9a              # double 4.2967040000000001
	.quad	0x40036b87bdcf0308              # double 2.427505
	.quad	0x40157d29563a9f38              # double 5.3722279999999998
	.quad	0x402378b06c43f5f9              # double 9.7357209999999998
	.quad	0x4023b35ce1826677              # double 9.8503179999999996
	.quad	0x40223e0008637bd0              # double 9.1210939999999994
	.quad	0x4017797f1f9acffa              # double 5.8686489999999996
	.quad	0x40096e3715400325              # double 3.1788159999999999
	.quad	0x3fe8ff151e75360d              # double 0.781138
	.quad	0x4017a42fe82517e7              # double 5.9103389999999996
	.quad	0x3fcfab191dde3758              # double 0.24740899999999999
	.quad	0x400d0b94d9407896              # double 3.630655
	.quad	0x400d98bb4d48882f              # double 3.699576
	.quad	0x400f6dfc5cdd50a9              # double 3.9287040000000002
	.quad	0x40020b3fe9fadafd              # double 2.255493
	.quad	0x3ff7198aeb80ecfa              # double 1.4437359999999999
	.quad	0x3ffca21a719b4dcf              # double 1.7895760000000001
	.quad	0x40207c2b94d94079              # double 8.2425200000000007
	.quad	0x4010e04039abf338              # double 4.2189949999999996
	.quad	0x4000c19fc2a8869c              # double 2.0945429999999998
	.quad	0x40221464fdb09a67              # double 9.0398329999999998
	.quad	0x402119d99029ae4f              # double 8.5504879999999996
	.quad	0x40233732bdc26dce              # double 9.6078089999999996
	.quad	0x3fff905c03361566              # double 1.9727440000000001
	.quad	0x3fe730db6a1e81cb              # double 0.72471399999999997
	.quad	0x401f34217d2849cb              # double 7.8009089999999998
	.quad	0x4020c5cca70d1fa3              # double 8.3863269999999996
	.quad	0x4012ac8eabffcdab              # double 4.6685129999999999
	.quad	0x401ab1c25d074214              # double 6.6735930000000003
	.quad	0x3ff74edb2f661f19              # double 1.456752
	.quad	0x401646c3fc43b2dd              # double 5.5691069999999998
	.quad	0x4018b0856e696a27              # double 6.1723840000000001
	.quad	0x400ff4c7f3493858              # double 3.9945219999999999
	.quad	0x3fc37e5eaab04253              # double 0.15229400000000001
	.quad	0x3ffb1ea897635e74              # double 1.694985
	.quad	0x4020ab70691ea78b              # double 8.3348420000000001
	.quad	0x400d35e529bae46d              # double 3.651316
	.quad	0x3fe287160956c0d7              # double 0.57899
	.quad	0x40219fd5ed06fef8              # double 8.8121790000000004
	.quad	0x3fec40980b242071              # double 0.88288500000000003
	.quad	0x401385132f87ad08              # double 4.879956
	.quad	0x401247192ea52ef9              # double 4.5694319999999999
	.quad	0x3ff22b9e492bc2fc              # double 1.1356489999999999
	.quad	0x40057532617c1bda              # double 2.6822249999999999
	.quad	0x3fe81d3cbc48f10b              # double 0.75356900000000004
	.quad	0x401ce2d666a98245              # double 7.2215210000000001
	.quad	0x3ffbd8201cd5f99c              # double 1.740265
	.quad	0x400099e8c47a17f4              # double 2.075151
	.quad	0x3fd2ae1049235f81              # double 0.29187400000000002
	.quad	0x4003b4c2b51bd61f              # double 2.4632619999999998
	.quad	0x40122f8c64fdb09a              # double 4.5464339999999996
	.quad	0x4014f965f5275eea              # double 5.2435530000000004
	.quad	0x3fe17f0025bfad2a              # double 0.54675300000000004
	.quad	0x401509fc6da44849              # double 5.2597519999999998
	.quad	0x4004934acaff6d33              # double 2.57192
	.quad	0x4022a8f5c28f5c29              # double 9.3300000000000001
	.quad	0x4021539042d8c2a4              # double 8.6632099999999994
	.quad	0x4020f5af294dd723              # double 8.4798519999999993
	.quad	0x4006a86b59146e4c              # double 2.832236
	.quad	0x40210ea960b6f9fd              # double 8.5286360000000005
	.quad	0x402166638433d6c7              # double 8.6999779999999998
	.quad	0x40153e5082cf52b9              # double 5.310854
	.quad	0x3fe12df71eafee70              # double 0.53686100000000003
	.quad	0x3ff4525460aa64c3              # double 1.2701
	.quad	0x3ff1e1e1d2178f69              # double 1.1176470000000001
	.quad	0x3ff86437824d4cba              # double 1.524467
	.quad	0x4001b2799a1fd157              # double 2.2121460000000002
	.quad	0x40208eaee2003ab8              # double 8.2786779999999993
	.quad	0x3ff789d16fc9bc77              # double 1.471147
	.quad	0x40168d556084a516              # double 5.6380210000000002
	.quad	0x4023da5529fe004b              # double 9.9264309999999991
	.quad	0x401aa9b499d0203e              # double 6.6657279999999997
	.quad	0x40142ffef39085f5              # double 5.0468710000000003
	.quad	0x402236c226809d49              # double 9.1069499999999994
	.quad	0x3ffc95f88fc9363f              # double 1.7866139999999999
	.quad	0x3ff3b671ac14c661              # double 1.2320420000000001
	.quad	0x4017bd63022dd7aa              # double 5.9349480000000003
	.quad	0x4016bcdf69878317              # double 5.6844460000000003
	.quad	0x400f4512a94ff002              # double 3.9087269999999998
	.quad	0x401aa710cb295e9e              # double 6.6631499999999999
	.quad	0x40189d15ad106ee3              # double 6.153403
	.quad	0x40121e21d96e9bbf              # double 4.529426
	.quad	0x401f59c065b63d3e              # double 7.8376479999999997
	.quad	0x3ffb5a2e7f6f4be8              # double 1.709517
	.quad	0x4021570a5efe9318              # double 8.6700009999999992
	.quad	0x40071bd7b2031ceb              # double 2.888595
	.quad	0x40101b56b8737974              # double 4.0266979999999997
	.quad	0x4005d7d63022dd7b              # double 2.7303890000000002
	.quad	0x4021b642e1262025              # double 8.8559789999999996
	.quad	0x40232a3704790b85              # double 9.5824510000000007
	.quad	0x4010ec226809d495              # double 4.2305999999999999
	.quad	0x4022e06b37867f0b              # double 9.4383180000000006
	.quad	0x401535aee631f8a1              # double 5.3024250000000004
	.quad	0x401acd50225742dd              # double 6.700501
	.quad	0x3fe1aa172abef06b              # double 0.55201299999999998
	.quad	0x4020eaf837b4a234              # double 8.4589250000000006
	.quad	0x400384da09cc319c              # double 2.4398689999999998
	.quad	0x400b913cee9dd7ed              # double 3.4459170000000001
	.quad	0x3fd7c0b135979182              # double 0.37113600000000002
	.quad	0x4010a6cf41f212d7              # double 4.1628999999999996
	.quad	0x3ff205ec3dab5c3a              # double 1.1264460000000001
	.quad	0x40151d1e96c3fc44              # double 5.2784370000000003
	.quad	0x3ff6a4cd74927914              # double 1.415235
	.quad	0x400da84a515ce9e6              # double 3.7071730000000001
	.quad	0x401f035f3d7d3911              # double 7.7532930000000002
	.quad	0x4018d5c96030c240              # double 6.2087760000000003
	.quad	0x40200edb7281fd9c              # double 8.0290180000000006
	.quad	0x4007eb702602c908              # double 2.98996
	.quad	0x401c1e789e774eec              # double 7.029757
	.quad	0x4010107852f7f499              # double 4.0160840000000002
	.quad	0x40193aa3f034b0e2              # double 6.3072660000000003
	.quad	0x401dd253da72a7bd              # double 7.4553979999999997
	.quad	0x4014f76e6106ab15              # double 5.2416320000000001
	.quad	0x3fddd5b24e9c4546              # double 0.46616800000000003
	.quad	0x400075fbb517a461              # double 2.0576089999999998
	.quad	0x3ff5b1cfbb949625              # double 1.3559110000000001
	.quad	0x400ba9635610adcd              # double 3.4577089999999999
	.quad	0x401d1c065b63d3e5              # double 7.2773680000000001
	.quad	0x40182e90bc7b45f1              # double 6.0454739999999996
	.quad	0x3fc17082491afc05              # double 0.13624600000000001
	.quad	0x3ff96d3f9e7b80aa              # double 1.589172
	.quad	0x401dc69ced0b30b6              # double 7.4439580000000003
	.quad	0x3fd838088509bf9c              # double 0.37841999999999998
	.quad	0x4022f5a5b9628cbd              # double 9.4797799999999998
	.quad	0x4021641ca3a4b557              # double 8.6955310000000008
	.quad	0x4018a1c8eabffcdb              # double 6.1579930000000003
	.quad	0x4008743bf727136a              # double 3.0567549999999999
	.quad	0x40231242f1ed17c6              # double 9.5356670000000001
	.quad	0x401e21f2dc2b0ea2              # double 7.5331530000000004
	.quad	0x400388c26138fffc              # double 2.4417770000000001
	.quad	0x401009bb2788db05              # double 4.0095029999999996
	.quad	0x4023597d6b65a9a8              # double 9.6747849999999999
	.quad	0x401bf631f8a0902e              # double 6.9904250000000001
	.quad	0x4012aea747d805e6              # double 4.67056
	.quad	0x3ffed4f69ca9ef52              # double 1.926993
	.quad	0x401c334b51372a39              # double 7.0500920000000002
	.quad	0x4015eb089a027525              # double 5.4795249999999998
	.quad	0x401f9193f6c2699c              # double 7.8921659999999996
	.quad	0x40137bbe4473cd57              # double 4.8708429999999998
	.quad	0x4012fada76d97b31              # double 4.744974
	.quad	0x4018af648c7192ea              # double 6.1712819999999997
	.quad	0x400473b5bf6a0dbb              # double 2.5564990000000001
	.quad	0x4014780389f83be6              # double 5.1172009999999997
	.quad	0x4023b36284599674              # double 9.8503609999999994
	.quad	0x401f0e02645e4e6a              # double 7.7636810000000001
	.quad	0x401c663065f9591d              # double 7.0997940000000002
	.quad	0x40107a4db163baba              # double 4.1194369999999996
	.quad	0x401decf41f212d77              # double 7.4813999999999998
	.quad	0x3ff94da9003eea21              # double 1.5814600000000001
	.quad	0x4018e69d7342edbb              # double 6.2252099999999997
	.quad	0x400708d4bad7d7c3              # double 2.8793120000000001
	.quad	0x4011779a6b50b0f2              # double 4.3667999999999996
	.quad	0x4002ef29d40ee06e              # double 2.3667790000000002
	.quad	0x401079f7f8ca8199              # double 4.11911
	.quad	0x4008f87379746024              # double 3.1213139999999999
	.quad	0x402101e1f3a57eaa              # double 8.5036769999999997
	.quad	0x40147b4289118c19              # double 5.1203709999999996
	.quad	0x401e3343fa2ad3e9              # double 7.5500639999999998
	.quad	0x4020f25119ce075f              # double 8.4732749999999992
	.quad	0x401b44dc65c70436              # double 6.8172470000000001
	.quad	0x3feef1da37ef5a96              # double 0.96702299999999997
	.quad	0x4001756191148fda              # double 2.182315
	.quad	0x3fe8cf28c79f6662              # double 0.77528799999999998
	.quad	0x401c4042d8c2a455              # double 7.0627550000000001
	.quad	0x3fd37ffde7210be9              # double 0.30468699999999999
	.quad	0x40153e279dd3bafe              # double 5.3106980000000004
	.quad	0x40108c57e23f24d9              # double 4.137054
	.quad	0x40038b2af145521a              # double 2.4429530000000002
	.quad	0x4009fb1290257c91              # double 3.2475939999999999
	.quad	0x40203ad0c3d25248              # double 8.1148740000000004
	.quad	0x401312dcf4623d0c              # double 4.768421
	.quad	0x3fddcd31769a9110              # double 0.46564899999999998
	.quad	0x4023cdf45e0b4e12              # double 9.9022550000000003
	.quad	0x4017880389f83be6              # double 5.8828259999999997
	.quad	0x401ffdf2239e6aba              # double 7.9979940000000003
	.quad	0x4021adc1e7967caf              # double 8.8393700000000006
	.quad	0x4008df97aaac1095              # double 3.1091760000000002
	.quad	0x3fd6028a1dfb938a              # double 0.34390500000000002
	.quad	0x3ffd4d3cff64cf8d              # double 1.8313569999999999
	.quad	0x4013f4f6dfc5cdd5              # double 4.989223
	.quad	0x3fe5ae557de0d66f              # double 0.67753099999999999
	.quad	0x401c1d912556d19e              # double 7.0288740000000001
	.quad	0x40172bd5992428d4              # double 5.7928069999999998
	.quad	0x3fe6ee9bbf0dc769              # double 0.71662700000000001
	.quad	0x400e28f217093101              # double 3.7699929999999999
	.quad	0x401555ad96a6a012              # double 5.3336699999999997
	.quad	0x3ff58d62bf11f927              # double 1.347018
	.quad	0x4010b5796bfca85d              # double 4.1772210000000003
	.quad	0x3ff56d06fef7c244              # double 1.339118
	.quad	0x3fdc0f1f57b41bfc              # double 0.43842300000000001
	.quad	0x400608049667b5f2              # double 2.7539150000000001
	.quad	0x4023ea0bc382a130              # double 9.9571210000000008
	.quad	0x3fef43d03968d75a              # double 0.97702800000000001
	.quad	0x40154ad6451b9303              # double 5.3230829999999996
	.quad	0x401b911f4f50a02c              # double 6.8917210000000004
	.quad	0x3ffde933a0407cc8              # double 1.869434
	.quad	0x400bc67f90d9d777              # double 3.4719229999999999
	.quad	0x4004bf2a172abef0              # double 2.5933419999999998
	.quad	0x40102cce1c58255b              # double 4.043755
	.quad	0x4007c071c53f39d2              # double 2.9689670000000001
	.quad	0x4005a10060780fdc              # double 2.703614
	.quad	0x402026481f53825e              # double 8.0747689999999999
	.quad	0x4020c4b89d6adf72              # double 8.3842210000000001
	.quad	0x3ffcc7f455a7d242              # double 1.7988170000000001
	.quad	0x401422977c88e79b              # double 5.0337810000000003
	.quad	0x40204db4245f5ad9              # double 8.1517649999999993
	.quad	0x4005e2a80064a9ce              # double 2.7356720000000001
	.quad	0x400a8cd31769a911              # double 3.318762
	.quad	0x3ffc3954eb13dfb1              # double 1.763997
	.quad	0x401e309e12a51e32              # double 7.5474779999999999
	.quad	0x3ffcaf60e0eb67c3              # double 1.7928170000000001
	.quad	0x4018bbb59ddc1e79              # double 6.1833099999999996
	.quad	0x40168085b18548aa              # double 5.6255100000000002
	.quad	0x3fe3b486f049a997              # double 0.61578699999999997
	.quad	0x400ff9a38fbca106              # double 3.9968940000000002
	.quad	0x40137fd694ccab3f              # double 4.8748420000000001
	.quad	0x400c2192a737110e              # double 3.5163929999999999
	.quad	0x4021577ad4b2745c              # double 8.670859
	.quad	0x40042729f59ccfaf              # double 2.519123
	.quad	0x4021a1ef30a4e37a              # double 8.8162780000000005
	.quad	0x3fe9712e40852b4e              # double 0.79506600000000005
	.quad	0x3fef77f8ca8198f2              # double 0.98339500000000002
	.quad	0x4016932c1f42bb66              # double 5.6437229999999996
	.quad	0x3ffeeba9d1f60179              # double 1.9325349999999999
	.quad	0x401bfb584b1ab085              # double 6.9954539999999996
	.quad	0x3fe51c75818c5c9a              # double 0.65972399999999998
	.quad	0x3fd5e21101b00368              # double 0.34192299999999998
	.quad	0x3ff88f2ae07e5a79              # double 1.534953
	.quad	0x402110014f8b588e              # double 8.5312599999999996
	.quad	0x3fe2dcfcc5b8dc55              # double 0.589476
	.quad	0x401abdba908a265f              # double 6.6852819999999999
	.quad	0x401aa5208e150119              # double 6.661257
	.quad	0x401188427418d691              # double 4.3830660000000004
	.quad	0x402315b8348f53c5              # double 9.5424209999999991
	.quad	0x4014f5821294573a              # double 5.2397539999999996
	.quad	0x4019e1fddebd9019              # double 6.4706950000000001
	.quad	0x4007c4dec1c1d6d0              # double 2.9711280000000002
	.quad	0x401a00221426fe72              # double 6.5001300000000004
	.quad	0x400c6873bc903ea7              # double 3.551002
	.quad	0x3fe295336deb95e6              # double 0.58071300000000003
	.quad	0x40146e3b03e20cd0              # double 5.107647
	.quad	0x401ad0281ba7fc33              # double 6.7032780000000001
	.quad	0x4000e573215fcc18              # double 2.1120359999999998
	.quad	0x400735885d31337f              # double 2.9011390000000001
	.quad	0x401888259e1f3a58              # double 6.1329560000000001
	.quad	0x401e7c925785f8d3              # double 7.621652
	.quad	0x40143561d4306e5d              # double 5.0521310000000001
	.quad	0x3fb9f44d44567126              # double 0.101384
	.quad	0x401ea75ab7dc7ac0              # double 7.6634320000000002
	.quad	0x3fdd4c6e6d9be4cd              # double 0.45778999999999997
	.quad	0x40158215fcc1871e              # double 5.3770369999999996
	.quad	0x4016c31b152f3c2e              # double 5.6905330000000003
	.quad	0x40017780baa582dc              # double 2.183351
	.quad	0x401f0c9c4da9003f              # double 7.762315
	.quad	0x4011acdea033e78e              # double 4.4188179999999999
	.quad	0x4022738dc55000c9              # double 9.2256909999999994
	.quad	0x3fff4156e264e486              # double 1.953452
	.quad	0x4021f599029ae4f3              # double 8.9796829999999996
	.quad	0x4000dd77fae3608d              # double 2.108139
	.quad	0x4002dd9e40c8472c              # double 2.358212
	.quad	0x4007f5f676ea4229              # double 2.9950990000000002
	.quad	0x401bcd19dece5711              # double 6.9502940000000004
	.quad	0x3ffaa37ef5a964e9              # double 1.6649160000000001
	.quad	0x4004ff8b1572580c              # double 2.6247769999999999
	.quad	0x4018e462c343b70f              # double 6.223033
	.quad	0x40107af6c69b5a64              # double 4.120082
	.quad	0x400c60f1b25f633d              # double 3.547336
	.quad	0x40104c8abd5dc400              # double 4.0747479999999996
	.quad	0x401a5aca36199781              # double 6.5886620000000002
	.quad	0x3fed22b9d3cbc48f              # double 0.91048899999999999
	.quad	0x401c6fa58f7121ab              # double 7.1090299999999997
	.quad	0x3ff14228997c3d68              # double 1.0786519999999999
	.quad	0x401a8e72da122fad              # double 6.6391099999999996
	.quad	0x4008db2d4d4024b3              # double 3.1070199999999999
	.quad	0x400a39ae924f227d              # double 3.278165
	.quad	0x401e12fa93af74cd              # double 7.5185339999999998
	.quad	0x4020b85c67dfe32a              # double 8.36008
	.quad	0x400820535c9e6688              # double 3.015784
	.quad	0x4022e71d60631727              # double 9.4513960000000007
	.quad	0x4010b884406c00da              # double 4.1801919999999999
	.quad	0x4022daf4f0d844d0              # double 9.4276499999999999
	.quad	0x401f6d9e83e425af              # double 7.85705
	.quad	0x400a7fb9389b5200              # double 3.3123649999999998
	.quad	0x400c152220bc382a              # double 3.510319
	.quad	0x401f97f1f9acffa8              # double 7.898384
	.quad	0x4007dcc857f3061c              # double 2.9828039999999998
	.quad	0x4011192c49342678              # double 4.2745829999999998
	.quad	0x40211f64adff822c              # double 8.5613150000000004
	.quad	0x4014f8151a437825              # double 5.2422680000000001
	.quad	0x4021a840181e03f7              # double 8.828614
	.quad	0x40154402d16b97ff              # double 5.3164170000000004
	.quad	0x400f631487768167              # double 3.9233790000000002
	.quad	0x40155e78183f91e6              # double 5.3422549999999998
	.quad	0x3ffd2b6f19934efd              # double 1.8231040000000001
	.quad	0x3ff51bcdbbe0157f              # double 1.319288
	.quad	0x3ff09d6cf850df16              # double 1.0384340000000001
	.quad	0x40087cb039ef0f17              # double 3.060883
	.quad	0x400ebb9841aac53b              # double 3.841599
	.quad	0x40236b7c5692b3cc              # double 9.7099329999999994
	.quad	0x4015593964a59c06              # double 5.3371329999999997
	.quad	0x40153366516db0de              # double 5.3001950000000004
	.quad	0x401daaed56b00ffe              # double 7.4169210000000003
	.quad	0x4019021101b00368              # double 6.2520179999999996
	.quad	0x401a28d4fdf3b646              # double 6.5398750000000003
	.quad	0x4016627ae9ab29e5              # double 5.5961720000000001
	.quad	0x40207d7928e0c9da              # double 8.2450650000000003
	.quad	0x3ff5e4463065f959              # double 1.368231
	.quad	0x401430ffda4052d6              # double 5.0478509999999996
	.quad	0x401ea7c3d68405b4              # double 7.6638330000000003
	.quad	0x402363f487fcb924              # double 9.6952250000000006
	.quad	0x402035466f5019f4              # double 8.1040530000000003
	.quad	0x40237d2d234eb9a1              # double 9.7444849999999991
	.quad	0x3fe2deefe4ffc979              # double 0.58971399999999996
	.quad	0x4021e5ab7dc7abfc              # double 8.9485740000000006
	.quad	0x40009526527a2058              # double 2.0728270000000002
	.quad	0x40210742352eb5f6              # double 8.5141770000000001
	.quad	0x4021d3480a5accd5              # double 8.9126589999999997
	.quad	0x401542e8c0485a0c              # double 5.3153410000000001
	.quad	0x401eba9a8049667b              # double 7.6822299999999996
	.quad	0x401a5fd71b046845              # double 6.5935940000000004
	.quad	0x401661344806290f              # double 5.5949260000000001
	.quad	0x401ba6d2674080fa              # double 6.9129120000000004
	.quad	0x3fde08e15011904b              # double 0.46929199999999999
	.quad	0x401c669db65ecc3e              # double 7.1002109999999998
	.quad	0x401a2f6ec5b078d9              # double 6.5463209999999998
	.quad	0x401499b7bf1e8e61              # double 5.1501150000000004
	.quad	0x3fc975c0767d34df              # double 0.198906
	.quad	0x40032d373affb04f              # double 2.397078
	.quad	0x3fe784816f0068dc              # double 0.73492500000000005
	.quad	0x40201ec9c0a8d21c              # double 8.0601330000000004
	.quad	0x400ff67903211cb0              # double 3.9953479999999999
	.quad	0x4017c9e40c8472c1              # double 5.9471590000000001
	.quad	0x401866bd2b6f1993              # double 6.1003309999999997
	.quad	0x4017f704bc27631b              # double 5.9912289999999997
	.quad	0x401fa5e1c15097c8              # double 7.9119939999999999
	.quad	0x401a754f7a919696              # double 6.6145610000000001
	.quad	0x3ff9905af6c69b5a              # double 1.5977429999999999
	.quad	0x40223189bd8383ae              # double 9.0967540000000007
	.quad	0x402173f1843c3a43              # double 8.7264520000000001
	.quad	0x40136a7e73a365cb              # double 4.8539979999999998
	.quad	0x401129578a2a90cd              # double 4.2903729999999998
	.quad	0x4002b470eb24a6a8              # double 2.3381059999999998
	.quad	0x401a953e2d6238da              # double 6.6457449999999998
	.quad	0x3ff686fef7c243dd              # double 1.407958
	.quad	0x4013704a2fcefaa4              # double 4.8596579999999996
	.quad	0x4004471fff79c843              # double 2.534729
	.quad	0x4016ca4441787054              # double 5.6975259999999999
	.quad	0x401d438fbca1059f              # double 7.3159780000000003
	.quad	0x400346aec0724b77              # double 2.409513
	.quad	0x3f8c4a83b1d0c804              # double 0.013814
	.quad	0x400a0a0a0f4d7add              # double 3.254902
	.quad	0x4022c0abf76a2f49              # double 9.3763120000000004
	.quad	0x3ffbd845dc832336              # double 1.7403010000000001
	.quad	0x40229b486f049a99              # double 9.3032869999999992
	.quad	0x40106563ed0f6274              # double 4.0990140000000004
	.quad	0x40164240b780346e              # double 5.5647000000000002
	.quad	0x3ff92eb91b3f20a7              # double 1.5739069999999999
	.quad	0x40015eef5ec80c74              # double 2.1713550000000001
	.quad	0x4013de4b87bdcf03              # double 4.967085
	.quad	0x4011759f2ba9d1f6              # double 4.364865
	.quad	0x40071c5de9c0229a              # double 2.8888509999999998
	.quad	0x4023d1932d6ece14              # double 9.909326
	.quad	0x3fe961a3f4666eca              # double 0.79316900000000001
	.quad	0x40234070da5daf08              # double 9.6258610000000004
	.quad	0x4015750f840181e0              # double 5.3643169999999998
	.quad	0x4007da30984e3fff              # double 2.981538
	.quad	0x3ff07e1650a45d42              # double 1.030783
	.quad	0x4010577681669ced              # double 4.085413
	.quad	0x4008cb2e1693c03c              # double 3.0992090000000001
	.quad	0x4012c2aa19439de5              # double 4.6901020000000004
	.quad	0x3fcfa7d24180d3d0              # double 0.247309
	.quad	0x40105a908a265f0f              # double 4.0884419999999997
	.quad	0x40062534bd76ee74              # double 2.768167
	.quad	0x401d16ee73e681aa              # double 7.2723940000000002
	.quad	0x4015ded1bf7ad4b2              # double 5.4675969999999996
	.quad	0x4022682afdda8bd2              # double 9.2034529999999997
	.quad	0x4011ae5929670197              # double 4.4202620000000001
	.quad	0x3fc4d306a2b17050              # double 0.16269
	.quad	0x4023cd232d2bb235              # double 9.9006589999999992
	.quad	0x40227ac9d16fc9bc              # double 9.2398209999999991
	.quad	0x3fdd8655193708ab              # double 0.46132400000000001
	.quad	0x40160b89d6adf71f              # double 5.5112680000000003
	.quad	0x3febbce2089e3433              # double 0.86680699999999999
	.quad	0x4005dfc19c17225b              # double 2.7342559999999998
	.quad	0x4002126d04e618ce              # double 2.2589969999999999
	.quad	0x40158250b524399b              # double 5.3772609999999998
	.quad	0x4015ec026cc1ca3a              # double 5.4804779999999997
	.quad	0x400266a11ec918e3              # double 2.3001119999999999
	.quad	0x401a9a5b530ced4e              # double 6.6507389999999997
	.quad	0x401326cce5f7403e              # double 4.7878910000000001
	.quad	0x401d92c3009b3073              # double 7.3933220000000004
	.quad	0x401e8934acaff6d3              # double 7.6339899999999998
	.quad	0x40202d783dff3f10              # double 8.0888080000000002
	.quad	0x40217186db50f40e              # double 8.7217319999999994
	.quad	0x402093897204295a              # double 8.2881579999999992
	.quad	0x400ad1dd5d3dc8b8              # double 3.3524729999999998
	.quad	0x3fd1e8a71de69ad4              # double 0.27982499999999999
	.quad	0x40189297396d0918              # double 6.1431550000000001
	.quad	0x400681b10fd7e458              # double 2.813326
	.quad	0x4008ee83a109d063              # double 3.1164619999999998
	.quad	0x401625f9df548ece              # double 5.5370860000000004
	.quad	0x4019b1e8a2ec28b3              # double 6.4237390000000003
	.quad	0x401e5ef62f9ca5be              # double 7.5927360000000004
	.quad	0x40177ca600b02928              # double 5.8717269999999999
	.quad	0x401a0e657b84db9c              # double 6.5140589999999996
	.quad	0x40219b1ad2135dab              # double 8.8029390000000003
	.quad	0x4002fbc0a06e9ff1              # double 2.3729260000000001
	.quad	0x4015270329802c0a              # double 5.2880979999999997
	.quad	0x4021911c087442c8              # double 8.783417
	.quad	0x401521819d2391d5              # double 5.2827209999999996
	.quad	0x401f21f8a0902de0              # double 7.783175
	.quad	0x3ff09f2cb641700d              # double 1.038861
	.quad	0x4019e496aad1d042              # double 6.4732310000000002
	.quad	0x4017333c60029f17              # double 5.8000350000000003
	.quad	0x401659ae924f227d              # double 5.58758
	.quad	0x400fc908a265f0f6              # double 3.9731610000000002
	.quad	0x402064d63cb81733              # double 8.1969469999999998
	.quad	0x40156a11233df2aa              # double 5.3535810000000001
	.quad	0x400e292ff4ba51a0              # double 3.770111
	.quad	0x401154840e1719f8              # double 4.332535
	.quad	0x400a6b0d9513f8db              # double 3.3022719999999999
	.quad	0x4021657be9856a38              # double 8.6982110000000006
	.quad	0x3ff375536933a040              # double 1.2161439999999999
	.quad	0x40116f961804d984              # double 4.3589710000000004
	.quad	0x40218f3c0c1fc8f3              # double 8.7797549999999998
	.quad	0x401667000431bde8              # double 5.6005859999999998
	.quad	0x401f179bfdf7e804              # double 7.7730560000000004
	.quad	0x401c16abde3fbbd8              # double 7.0221400000000003
	.quad	0x4014efd7e45803cd              # double 5.2342219999999999
	.quad	0x3ffd2c9afe1da7b1              # double 1.8233900000000001
	.quad	0x4016f94d0dcfcc5c              # double 5.7434580000000004
	.quad	0x401cfe1cde5d1809              # double 7.248157
	.quad	0x40036b0c026cc1ca              # double 2.4272689999999999
	.quad	0x40169b2bfdb4cc25              # double 5.651535
	.quad	0x3fd043b2dd377e1c              # double 0.25413200000000002
	.quad	0x400d6bfd2e946801              # double 3.6777289999999998
	.quad	0x4014b118c197e564              # double 5.1729459999999996
	.quad	0x401abcb81733226c              # double 6.6842959999999998
	.quad	0x40213dd872f33ca3              # double 8.6207919999999998
	.quad	0x4007da6ce358298d              # double 2.9816530000000001
	.quad	0x400d71287c200c0f              # double 3.680253
	.quad	0x400a3209edbf8b9c              # double 3.2744330000000001
	.quad	0x4019aa6698bb4d49              # double 6.4164070000000004
	.quad	0x4005a2f405f6ba06              # double 2.7045669999999999
	.quad	0x40072dc3bd599243              # double 2.8973460000000002
	.quad	0x401e46e19b90ea9e              # double 7.5692199999999996
	.quad	0x401dc6c69b5a63fa              # double 7.4441170000000003
	.quad	0x40190efed634549b              # double 6.2646439999999997
	.quad	0x4015642e557de0d6              # double 5.3478329999999996
	.quad	0x40077872f33ca31e              # double 2.9338129999999998
	.quad	0x401888a43bb40b35              # double 6.1334390000000001
	.quad	0x4021f589acbc8c0d              # double 8.9795660000000002
	.quad	0x3ff514cdb7ae5797              # double 1.3175790000000001
	.quad	0x4018fa92e62131a9              # double 6.2447010000000001
	.quad	0x400a5373affb04ee              # double 3.2907479999999998
	.quad	0x3ff5a5d18090b418              # double 1.352983
	.quad	0x4021b01dc0db2703              # double 8.8439770000000006
	.quad	0x4014fe0ef99806f2              # double 5.2481039999999997
	.quad	0x40044916ca46e08f              # double 2.5356879999999999
	.quad	0x3ffe8ae536501e26              # double 1.9089100000000001
	.quad	0x400a48e92d55a3a1              # double 3.2856010000000002
	.quad	0x400fbcdcca70d1fa              # double 3.9672179999999999
	.quad	0x4021aebc83a96d4c              # double 8.8412819999999996
	.quad	0x3ffa0bf7f06705c9              # double 1.6279220000000001
	.quad	0x40043abc947064ed              # double 2.52868
	.quad	0x3ffef549f94855da              # double 1.934885
	.quad	0x401a7aad1d041cc5              # double 6.6198009999999998
	.quad	0x4016021ee675147f              # double 5.5020709999999999
	.quad	0x4021dfa99fa11a97              # double 8.9368409999999994
	.quad	0x4013e1deefe4ffc9              # double 4.9705769999999996
	.quad	0x40055a08bfc2224f              # double 2.6689620000000001
	.quad	0x401555b813016484              # double 5.33371
	.quad	0x400328bb0a2ca9ac              # double 2.3948879999999999
	.quad	0x400e2ead9274e22a              # double 3.7727919999999999
	.quad	0x3fd09235f8099179              # double 0.25892399999999999
	.quad	0x3ff76a0cae642bfa              # double 1.4633910000000001
	.quad	0x400291f926c7eae6              # double 2.3212760000000001
	.quad	0x4014bf3061c79b35              # double 5.1867080000000003
	.quad	0x400caf2a5a469d73              # double 3.5855299999999999
	.quad	0x3ff99bca9691a75d              # double 1.600535
	.quad	0x3ff7d40bbb1f255f              # double 1.489269
	.quad	0x400544b90214ad36              # double 2.6585559999999999
	.quad	0x3ff14b1ee2435697              # double 1.08084
	.quad	0x3ff637878b7a1c26              # double 1.388557
	.quad	0x400b2919695d91ac              # double 3.3950680000000002
	.quad	0x4009bd84901d1915              # double 3.2175379999999998
	.quad	0x4020b1fc08fa7a85              # double 8.347626
	.quad	0x401eed627bf61aa4              # double 7.7318210000000001
	.quad	0x4012956798958d9b              # double 4.6459029999999997
	.quad	0x3feed810624dd2f2              # double 0.96387500000000004
	.quad	0x400a10e23af31b15              # double 3.2582439999999999
	.quad	0x400e3623076c050c              # double 3.7764340000000001
	.quad	0x401b9254e6e221c9              # double 6.8929020000000003
	.quad	0x4012198958d9b5e9              # double 4.5249379999999997
	.quad	0x3ff5ff22c01e68a1              # double 1.374789
	.quad	0x4004745bf26f1dc5              # double 2.556816
	.quad	0x40086bdd334c5da7              # double 3.0526680000000002
	.quad	0x4013ac0d6f544bb2              # double 4.9180200000000003
	.quad	0x4021fa15336deb96              # double 8.9884430000000002
	.quad	0x40230d61d4306e5d              # double 9.5261370000000002
	.quad	0x40147895d0b73d19              # double 5.1177590000000004
	.quad	0x40121a85015c2092              # double 4.5258979999999998
	.quad	0x401d5cdea033e78e              # double 7.3406929999999999
	.quad	0x400f9508f648c719              # double 3.9477709999999999
	.quad	0x401c2938583621fb              # double 7.040254
	.quad	0x4012875968512232              # double 4.6321770000000004
	.quad	0x401bbf3eccc46951              # double 6.936763
	.quad	0x3ff2ed0a24463066              # double 1.182871
	.quad	0x4018153b4b2fa93b              # double 6.020734
	.quad	0x4005476fb09203a3              # double 2.6598809999999999
	.quad	0x401fe1e321a2e7f7              # double 7.970593
	.quad	0x4020a0750c1b9735              # double 8.3133929999999996
	.quad	0x400cee19b90ea9e7              # double 3.61626
	.quad	0x4019d9a027525461              # double 6.4625250000000003
	.quad	0x400ef9c6b0531983              # double 3.8719610000000002
	.quad	0x3ff2491c087442c8              # double 1.142849
	.quad	0x3fec0a19c9d5a188              # double 0.87623300000000004
	.quad	0x3ffaef2d7f950b95              # double 1.6833929999999999
	.quad	0x3fe06957470eb24a              # double 0.51285899999999995
	.quad	0x400b0c82e019b0ab              # double 3.3811089999999999
	.quad	0x401dabab21815a08              # double 7.4176450000000002
	.quad	0x401430f4d7add15f              # double 5.047809
	.quad	0x3fe736976bc1effa              # double 0.725414
	.quad	0x401a2fff79c842fa              # double 6.5468729999999997
	.quad	0x3fefaf661f18c9fb              # double 0.99016099999999995
	.quad	0x4019858f7121ab4b              # double 6.3804299999999996
	.quad	0x4021debebe1650a4              # double 8.9350489999999993
	.quad	0x4015d39ef0f16f44              # double 5.4566610000000004
	.quad	0x3ff3ff865d7cb2d9              # double 1.249884
	.quad	0x3fb973b85e80bed7              # double 0.099421999999999996
	.quad	0x401cc56a7ac81d3b              # double 7.1927890000000003
	.quad	0x40237caf4f0d844d              # double 9.7435249999999999
	.quad	0x4016275ee99a62ed              # double 5.5384479999999998
	.quad	0x4013e049235f8099              # double 4.9690289999999999
	.quad	0x40164dd15f02c4d6              # double 5.5759939999999997
	.quad	0x40060a71de69ad43              # double 2.7551000000000001
	.quad	0x40119c4007570c56              # double 4.4025879999999997
	.quad	0x401c5680e0653006              # double 7.0844760000000004
	.quad	0x401da97b7414a4d3              # double 7.4155100000000003
	.quad	0x401243f7ced91687              # double 4.5663749999999999
	.quad	0x4008b796bfca85cb              # double 3.0896430000000001
	.quad	0x400adaad601ffb48              # double 3.356776
	.quad	0x4018dd83c6c97d8d              # double 6.216323
	.quad	0x40177f141205bc02              # double 5.8741000000000003
	.quad	0x3ffb75104d551d69              # double 1.71608
	.quad	0x4020ce2888b545c8              # double 8.4026530000000008
	.quad	0x3fb8909289dadfb5              # double 0.095956
	.quad	0x401a32f837b4a234              # double 6.5497750000000003
	.quad	0x3fe131ad2135daad              # double 0.53731399999999996
	.quad	0x401f51abd1aa821f              # double 7.8297569999999998
	.quad	0x40140a67e846a5d7              # double 5.0101620000000002
	.quad	0x4002842528ae74f3              # double 2.314524
	.quad	0x4017ae94ee392e1f              # double 5.92049
	.quad	0x4012d6ab5807fed2              # double 4.709638
	.quad	0x401a1d844d013a93              # double 6.5288250000000003
	.quad	0x400e0b239a38fbca              # double 3.755439
	.quad	0x402076ab7995ee13              # double 8.2317769999999992
	.quad	0x402109b7bf1e8e61              # double 8.5189800000000009
	.quad	0x4009f4f1e4b44a1f              # double 3.244602
	.quad	0x3fd8fcf80dc33722              # double 0.39044000000000001
	.quad	0x4017250a45d41fa7              # double 5.7861719999999996
	.quad	0x3fe11a5657fb6998              # double 0.53446499999999997
	.quad	0x4009abc1eff9f87f              # double 3.208866
	.quad	0x40120537e2c55c96              # double 4.505096
	.quad	0x400c389a459103c9              # double 3.5276380000000001
	.quad	0x3ff8ba92a3055326              # double 1.54555
	.quad	0x3ff7247dc37a3db4              # double 1.4464090000000001
	.quad	0x4013ae5aff2a172b              # double 4.9202690000000002
	.quad	0x4014393d5347a5b1              # double 5.055898
	.quad	0x4022fafdda8bd231              # double 9.4902180000000004
	.quad	0x4017bfd438d1d8a5              # double 5.9373329999999997
	.quad	0x4020d5debd9018e7              # double 8.4177149999999994
	.quad	0x401f9152b0a6fc59              # double 7.8919170000000002
	.quad	0x4011e822ff08893b              # double 4.4766959999999996
	.quad	0x4022f5c13fd0d068              # double 9.4799900000000008
	.quad	0x3ff7a684cf0739b0              # double 1.478154
	.quad	0x3ffd4766c6de7642              # double 1.8299319999999999
	.quad	0x401f5a87e38eb032              # double 7.8384090000000004
	.quad	0x4012f3f572de43ee              # double 4.7382410000000004
	.quad	0x3ff916f544bb1af4              # double 1.5681050000000001
	.quad	0x400da7807789a459              # double 3.706788
	.quad	0x402136512a94ff00              # double 8.6060879999999997
	.quad	0x40028c36544fe36d              # double 2.3184629999999999
	.quad	0x3fe4fab96f21f6cb              # double 0.65560600000000002
	.quad	0x401b0154434e336a              # double 6.7512980000000002
	.quad	0x4006cb7fe08aefb3              # double 2.8493650000000001
	.quad	0x401396edaa92e621              # double 4.8973909999999998
	.quad	0x3ff38b8f14db5958              # double 1.2215720000000001
	.quad	0x40183f776c4827b7              # double 6.061979
	.quad	0x4017ecc319c5a3e4              # double 5.9812130000000003
	.quad	0x401bf0efdc9c4da9              # double 6.98529
	.quad	0x401acf41f212d773              # double 6.7023999999999999
	.quad	0x4003b583a53b8e4c              # double 2.4636300000000002
	.quad	0x4010b58afc47e49b              # double 4.1772879999999999
	.quad	0x4015c3f20a73f749              # double 5.4413530000000003
	.quad	0x3fce355043e5321e              # double 0.23600199999999999
	.quad	0x3ffd9e84f09528f2              # double 1.8512010000000001
	.quad	0x4021fb8fbca1059f              # double 8.9913310000000006
	.quad	0x40050e3ffef39086              # double 2.631958
	.quad	0x401777b2031ceaf2              # double 5.8668899999999997
	.quad	0x4021b41bfbdf090f              # double 8.8517759999999992
	.quad	0x400bf94c87980f56              # double 3.4967280000000001
	.quad	0x3ff6770bd017dae8              # double 1.404064
	.quad	0x3ff4ddffc5479d4e              # double 1.3041990000000001
	.quad	0x401e893ee5eedcc2              # double 7.634029
	.quad	0x400f654046412cf1              # double 3.924439
	.quad	0x3ffc9084e831ad21              # double 1.785283
	.quad	0x40177da4484944ed              # double 5.8726969999999996
	.quad	0x3ff2fbf1e8e60807              # double 1.18651
	.quad	0x401a4a2339c0ebee              # double 6.5724
	.quad	0x401ecd8ec95bff04              # double 7.7007399999999997
	.quad	0x401f25b6805a2d73              # double 7.786829
	.quad	0x40188b45ae5ffa3c              # double 6.1360080000000004
	.quad	0x401dc47ecfe9b7bf              # double 7.4418899999999999
	.quad	0x3ff0ef826edaa92e              # double 1.0584739999999999
	.quad	0x4000f59817b95a29              # double 2.1199189999999999
	.quad	0x3fd6736049ecb31c              # double 0.35079199999999999
	.quad	0x3ff5e83e425aee63              # double 1.3692
	.quad	0x4022798a86d71f36              # double 9.2373849999999997
	.quad	0x40214499f1ae2da5              # double 8.6339869999999994
	.quad	0x4010dc25d074213a              # double 4.214988
	.quad	0x4023e5f1e0828c37              # double 9.9491110000000002
	.quad	0x401be85122318330              # double 6.9768720000000002
	.quad	0x4020d3e4cd749279              # double 8.4138549999999999
	.quad	0x401d9a52ac753e70              # double 7.4007059999999996
	.quad	0x3fe39ab4b72c5198              # double 0.61263500000000004
	.quad	0x4017628fe260b2c8              # double 5.8462519999999998
	.quad	0x4008a9cd3e0bd44a              # double 3.0829110000000002
	.quad	0x40238bff69014b5a              # double 9.7734330000000007
	.quad	0x3fd43cd573647bab              # double 0.31621300000000002
	.quad	0x401029d8c6d612c7              # double 4.0408660000000003
	.quad	0x400746d4801f7510              # double 2.9095849999999999
	.quad	0x3fe2dc1c6088d6d4              # double 0.58936900000000003
	.quad	0x4009669c66d373b0              # double 3.175103
	.quad	0x40175b677f6b1a2a              # double 5.8392619999999997
	.quad	0x3fee0bf3bea91d9b              # double 0.93895899999999999
	.quad	0x4020ff34f82f5126              # double 8.4984509999999993
	.quad	0x40239cb5568e820e              # double 9.8060709999999993
	.quad	0x401797be9856a37b              # double 5.8981880000000002
	.quad	0x401b58262456f75e              # double 6.8360830000000004
	.quad	0x3fa9d7342edbb59e              # double 0.050470000000000001
	.quad	0x40156ebc408d8ec9              # double 5.3581399999999997
	.quad	0x400c66c00da1a933              # double 3.5501710000000002
	.quad	0x3f97fae3608d0892              # double 0.023418000000000001
	.quad	0x3fe1317efe0ce0b9              # double 0.53729199999999999
	.quad	0x402311a95421c044              # double 9.5344949999999997
	.quad	0x3feaddb9841aac54              # double 0.83956600000000003
	.quad	0x4009bf41aef6f8f0              # double 3.2183869999999999
	.quad	0x3fe89d2178f68be3              # double 0.769181
	.quad	0x40234110c2c5e2ce              # double 9.6270810000000004
	.quad	0x3ff29791819d2392              # double 1.162004
	.quad	0x401e72120e1f7d74              # double 7.6113970000000002
	.quad	0x3fdab517a46173b8              # double 0.41730299999999998
	.quad	0x4007bd0c80410300              # double 2.9673090000000002
	.quad	0x401d87785729b281              # double 7.3822950000000001
	.quad	0x4018be4430b178b3              # double 6.1858069999999996
	.quad	0x4016f2e946801712              # double 5.7372180000000004
	.quad	0x4020ee7a311e85fd              # double 8.465776
	.quad	0x4023ad77fae3608d              # double 9.8388059999999999
	.quad	0x3fee44f7ec3547e0              # double 0.94591899999999995
	.quad	0x4020934efcbd5561              # double 8.2877120000000009
	.quad	0x4021519e30014f8b              # double 8.6594099999999994
	.quad	0x40008d4cb9ecf638              # double 2.068994
	.quad	0x3ffe10cc35ce1826              # double 1.8791009999999999
	.quad	0x401431bcdbbe0158              # double 5.0485720000000001
	.quad	0x401a49185cee17a0              # double 6.5713819999999998
	.quad	0x4023a3b7952d234f              # double 9.8197600000000004
	.quad	0x402032e9680e0653              # double 8.099437
	.quad	0x4002c752da98676a              # double 2.3473259999999998
	.quad	0x40142e0b0af5fd48              # double 5.0449640000000002
	.quad	0x4015f066c2acb85a              # double 5.4847669999999997
	.quad	0x40018e3de6149c6f              # double 2.1944539999999999
	.quad	0x4014bd7342edbb5a              # double 5.1850100000000001
	.quad	0x40082694898f605b              # double 3.0188380000000001
	.quad	0x4019e3022dd7a9a0              # double 6.4716880000000003
	.quad	0x4021160b0af5fd48              # double 8.5430530000000005
	.quad	0x4019c4a515ce9e5e              # double 6.4420359999999999
	.quad	0x40019b8b26394fad              # double 2.200949
	.quad	0x4011a38f36694899              # double 4.409726
	.quad	0x4018d6e43aa79bbb              # double 6.2098550000000001
	.quad	0x400b2e60807357e6              # double 3.3976449999999998
	.quad	0x4020626bf8769ec3              # double 8.1922300000000003
	.quad	0x400c6f23033a4724              # double 3.5542660000000001
	.quad	0x3fc3f04ddb5525cc              # double 0.15577099999999999
	.quad	0x3ff6742aa9f7b5af              # double 1.4033610000000001
	.quad	0x401b6b3aeee95747              # double 6.8547169999999999
	.quad	0x4001d735c182ecaf              # double 2.230083
	.quad	0x402209294573a798              # double 9.0178930000000008
	.quad	0x400c4e297396d091              # double 3.5381649999999998
	.quad	0x4021f938583621fb              # double 8.986758
	.quad	0x401c3542e557de0d              # double 7.0520129999999996
	.quad	0x3ff095a7d24180d4              # double 1.036537
	.quad	0x401814d1633482bf              # double 6.0203300000000004
	.quad	0x40069bd1ed9dfdac              # double 2.8260839999999998
	.quad	0x401dd6f75d9a0f0a              # double 7.4599279999999997
	.quad	0x4009de0ded288ce7              # double 3.233425
	.quad	0x4005bf5c6c11a112              # double 2.7184379999999999
	.quad	0x401bcad57bc7f77b              # double 6.94808
	.quad	0x40212ab7fe08aefb              # double 8.5834349999999997
	.quad	0x4023f36d86ec17ec              # double 9.9754450000000005
	.quad	0x401abbc5154866a1              # double 6.6833689999999999
	.quad	0x40203c57c0b13598              # double 8.1178570000000008
	.quad	0x4022b8b7e4de3b8a              # double 9.3607779999999998
	.quad	0x3ffb22a5e785b5b7              # double 1.695959
	.quad	0x40222262888b545c              # double 9.0671579999999991
	.quad	0x40239ceaaf35e311              # double 9.8064780000000002
	.quad	0x40166c1333b96af0              # double 5.6055419999999998
	.quad	0x401f056323bbc6eb              # double 7.7552609999999999
	.quad	0x3fb7ae3608d0891a              # double 0.092502
	.quad	0x4008d4a1ad6451b9              # double 3.1038239999999999
	.quad	0x40224d4da4ce8102              # double 9.1509830000000001
	.quad	0x3ff13317efe0ce0c              # double 1.0749740000000001
	.quad	0x402305a0168b5cc0              # double 9.510987
	.quad	0x4020619c7bcc2939              # double 8.1906470000000002
	.quad	0x4010efa76534373f              # double 4.2340369999999998
	.quad	0x401e32e59af9ebea              # double 7.5497040000000002
	.quad	0x4012a0446b69db66              # double 4.6565110000000001
	.quad	0x4023f4da9003eea2              # double 9.9782299999999999
	.quad	0x4021da15b9a5a89c              # double 8.9259470000000007
	.quad	0x3fffc3a42f1ed17c              # double 1.9852639999999999
	.quad	0x3fda3cea6c1a048e              # double 0.409968
	.quad	0x400d50941c8216c6              # double 3.664345
	.quad	0x4015f0d5629d840a              # double 5.4851890000000001
	.quad	0x401be168f8e7ddca              # double 6.9701269999999997
	.quad	0x40112e17a02fb5d0              # double 4.2950119999999998
	.quad	0x400de489d27c3937              # double 3.7365910000000002
	.quad	0x4019f7ecbb7f9d6f              # double 6.4921139999999999
	.quad	0x401a1e76c8b43958              # double 6.5297499999999999
	.quad	0x4022ba977c88e79b              # double 9.3644370000000005
	.quad	0x3fe0e72fba01eeee              # double 0.52822100000000005
	.quad	0x401e6615ebfa8f7e              # double 7.5996930000000003
	.quad	0x401f74b8bef8ceb3              # double 7.8639859999999996
	.quad	0x3fb3c957cd466f50              # double 0.077290999999999998
	.quad	0x3fd0070b8cfbfc65              # double 0.25042999999999999
	.quad	0x4016dd70a3d70a3d              # double 5.7162499999999996
	.quad	0x400f6944ed6fda83              # double 3.9264009999999998
	.quad	0x4010568cac4b4d05              # double 4.0845209999999996
	.quad	0x40194082cf52b90a              # double 6.3129989999999996
	.quad	0x40005230b9dc2f40              # double 2.0401319999999998
	.quad	0x4015858ab92c0618              # double 5.3804119999999998
	.quad	0x4008d0a0b1bbcf4f              # double 3.1018690000000002
	.quad	0x401058d1d8a54824              # double 4.0867380000000004
	.quad	0x400068a50507a6bd              # double 2.0510959999999998
	.quad	0x401183c254a3c643              # double 4.3786709999999998
	.quad	0x4023d3399f5dfeb9              # double 9.9125490000000002
	.quad	0x4003a98c3b0c4589              # double 2.4577870000000002
	.quad	0x3ff707c5260f5e42              # double 1.439397
	.quad	0x4000442e12620254              # double 2.0332910000000002
	.quad	0x4011460bb2bba98f              # double 4.3184040000000001
	.quad	0x4022546bf01322f2              # double 9.1648859999999992
	.quad	0x401770f66a550870              # double 5.8603149999999999
	.quad	0x401f76f7e3d1cc10              # double 7.8661799999999999
	.quad	0x4005509d0635a427              # double 2.6643620000000001
	.quad	0x401b7f68be2f7b18              # double 6.8744230000000002
	.quad	0x401ed3ef284167a9              # double 7.7069669999999996
	.quad	0x400b9a4d6e47dc38              # double 3.4503430000000002
	.quad	0x40060c20d5629d84              # double 2.755922
	.quad	0x401fca5df2239e6b              # double 7.9476240000000002
	.quad	0x40202c30d306a2b1              # double 8.0863099999999992
	.quad	0x401ce12018a43bb4              # double 7.219849
	.quad	0x401e58383ad9f0a2              # double 7.5861520000000002
	.quad	0x4020c859ea57214f              # double 8.391311
	.quad	0x4000e9e44fa05144              # double 2.1142050000000001
	.quad	0x400b0232096787cf              # double 3.3760720000000002
	.quad	0x40176679463cfb33              # double 5.8500719999999999
	.quad	0x4013bb51372a38b9              # double 4.9329270000000003
	.quad	0x4018a752da98676a              # double 6.1634019999999996
	.quad	0x3fdac58eeae9ee46              # double 0.41830800000000001
	.quad	0x4012e8beb5b2d4d4              # double 4.72729
	.quad	0x4005fb0a2ca9ac36              # double 2.7475779999999999
	.quad	0x401f45eb7457c0b1              # double 7.8182809999999998
	.quad	0x40205c373f316e37              # double 8.1801089999999999
	.quad	0x400c1a8e71476af9              # double 3.5129670000000002
	.quad	0x400ec142f61ed5ae              # double 3.8443659999999999
	.quad	0x40039c7c5260f5e4              # double 2.4514089999999999
	.quad	0x4004665d7cb2d906              # double 2.5499830000000001
	.quad	0x3ffdfd3804534bd7              # double 1.8743209999999999
	.quad	0x401ea3dddb1209ee              # double 7.6600260000000002
	.quad	0x3ff6a238da3c2118              # double 1.4146049999999999
	.quad	0x400af84ec636b096              # double 3.3712439999999999
	.quad	0x4023596d6dc1a47b              # double 9.6746630000000006
	.quad	0x400d17342edbb59e              # double 3.6363300000000001
	.quad	0x401d46ee73e681aa              # double 7.3192690000000002
	.quad	0x4005e9ea9a3d2d88              # double 2.739217
	.quad	0x400a537fbefd0071              # double 3.2907709999999999
	.quad	0x401d92c493426784              # double 7.3933280000000003
	.quad	0x40223472c0e7bc3c              # double 9.1024379999999993
	.quad	0x3ffd03d68405b39e              # double 1.813437
	.quad	0x3ffbcb30b5aa7158              # double 1.737107
	.quad	0x40103ccd96206855              # double 4.0593779999999997
	.quad	0x4022279d0a67620f              # double 9.0773700000000002
	.quad	0x40179b5393250b52              # double 5.9016859999999998
	.quad	0x4011438b8ae31d71              # double 4.3159619999999999
	.quad	0x401082abef06b378              # double 4.1276089999999996
	.quad	0x3fc37121ab4b72c5              # double 0.15189
	.quad	0x40021ebb7739f341              # double 2.2650060000000001
	.quad	0x400a58487b99d452              # double 3.293107
	.quad	0x4022b385c67dfe33              # double 9.3506300000000007
	.quad	0x40158f4906034f40              # double 5.3899270000000001
	.quad	0x4004a880d801b435              # double 2.5822769999999999
	.quad	0x401253bfb58d1527              # double 4.5817860000000001
	.quad	0x3fe0de529bae46d0              # double 0.52713900000000002
	.quad	0x4023c2cc4ef88b97              # double 9.8804649999999991
	.quad	0x401d5e7c06e19b91              # double 7.3422700000000001
	.quad	0x401259f4906034f4              # double 4.587847
	.quad	0x3fb80fa9c12f09d9              # double 0.093989000000000003
	.quad	0x40079b3aeee95747              # double 2.950796
	.quad	0x402212014727dcbe              # double 9.0351660000000003
	.quad	0x401742c83ec892ab              # double 5.8152169999999996
	.quad	0x40166ae21101b003              # double 5.6043779999999996
	.quad	0x3ff5cad14a0a0f4d              # double 1.3620159999999999
	.quad	0x401bd8f36694898f              # double 6.9618659999999997
	.quad	0x4023efee2c98e53f              # double 9.9686140000000005
	.quad	0x4001ed1f1cfbb949              # double 2.2407819999999998
	.quad	0x401353bff8a8f3aa              # double 4.8317870000000003
	.quad	0x3fff581adea89763              # double 1.9590099999999999
	.quad	0x3fda63d816aceaaf              # double 0.41234399999999999
	.quad	0x3fc656d5cfaacd9f              # double 0.17452500000000001
	.quad	0x4017bf240fa9c12f              # double 5.936661
	.quad	0x402260576cce5f74              # double 9.1881669999999999
	.quad	0x3ff6fd75e2046c76              # double 1.4368799999999999
	.quad	0x3fdc9d66adb402d1              # double 0.44710699999999998
	.quad	0x3fd10f8c64fdb09a              # double 0.26657399999999998
	.quad	0x40035d81f10667f9              # double 2.420658
	.quad	0x4019939a38fbca10              # double 6.3941429999999997
	.quad	0x40200b28954a7f80              # double 8.0217939999999999
	.quad	0x40196bb83cf2cf96              # double 6.3551950000000001
	.quad	0x400b83a8e71476b0              # double 3.4392870000000002
	.quad	0x3fe54c9ea9a3d2d8              # double 0.66560299999999994
	.quad	0x4021b2326e115593              # double 8.8480410000000003
	.quad	0x4021df8bdec5f395              # double 8.9366140000000005
	.quad	0x3ffd5f97aaac1095              # double 1.8358380000000001
	.quad	0x3fec9f53825e13b2              # double 0.89444900000000005
	.quad	0x3ff3d58ea7ce0fc3              # double 1.239638
	.quad	0x3ff54ae429e0a41a              # double 1.330784
	.quad	0x4011ed666a98244f              # double 4.4818360000000004
	.quad	0x4002be111276fb09              # double 2.3428059999999999
	.quad	0x40059419e30014f9              # double 2.6973150000000001
	.quad	0x4001fa41e57d9dbb              # double 2.2471960000000002
	.quad	0x400995c39bcba301              # double 3.1981269999999999
	.quad	0x3ffbfa4c61d8622c              # double 1.7486079999999999
	.quad	0x3fe1fe3d1cc100e7              # double 0.56228500000000003
	.quad	0x4019513f4a98aa86              # double 6.3293429999999997
	.quad	0x400d23f67f4dbdf9              # double 3.64256
	.quad	0x3fcd728a6117720d              # double 0.23005800000000001
	.quad	0x40221ac12ad81adf              # double 9.0522550000000006
	.quad	0x40103bea91d9b1b8              # double 4.0585120000000003
	.quad	0x401fa1e42e126202              # double 7.9080969999999997
	.quad	0x4002047c30d306a3              # double 2.2521900000000001
	.quad	0x401d2237cdcca70d              # double 7.2834159999999999
	.quad	0x40119358afc47e4a              # double 4.3938930000000003
	.quad	0x4015f58298cc1440              # double 5.4897559999999999
	.quad	0x4000c78af3e468cb              # double 2.0974330000000001
	.quad	0x401c3af4adbc664d              # double 7.0575739999999998
	.quad	0x3fe7230984e3ffef              # double 0.72302699999999998
	.quad	0x40184028a1dfb939              # double 6.0626550000000003
	.quad	0x40005a0d77b7c782              # double 2.043971
	.quad	0x3fe6d6cb5350092d              # double 0.71372000000000002
	.quad	0x400c6d5410f94c88              # double 3.5533830000000002
	.quad	0x4013f83cafb3b752              # double 4.9924189999999999
	.quad	0x400405be1a826245              # double 2.5028039999999998
	.quad	0x401371e1d2178f69              # double 4.8612130000000002
	.quad	0x401935edd052934b              # double 6.3026650000000002
	.quad	0x400c85907d912557              # double 3.5652170000000001
	.quad	0x4000a6b93ccd0fe9              # double 2.0814080000000001
	.quad	0x401c045dc8323359              # double 7.004264
	.quad	0x3feb638eb0318b93              # double 0.85590299999999997
	.quad	0x4022b0379314445b              # double 9.3441740000000006
	.quad	0x3fdcb90ea9e6eeb7              # double 0.448795
	.quad	0x3fe67d6b65a9a805              # double 0.70281000000000005
	.quad	0x3fe9ac29bf162ae5              # double 0.80226600000000003
	.quad	0x40224095af294dd7              # double 9.1261419999999998
	.quad	0x40232f778dd616f8              # double 9.5927089999999992
	.quad	0x4009373eab367a10              # double 3.1519750000000002
	.quad	0x401daaa19439de48              # double 7.4166319999999998
	.quad	0x4010861e92923e5c              # double 4.1309760000000004
	.quad	0x3ffaa35610adcd2d              # double 1.6648769999999999
	.quad	0x3ff802adc4c9c90c              # double 1.5006539999999999
	.quad	0x400d38537e2c55c9              # double 3.6525029999999998
	.quad	0x401eec692f6e8295              # double 7.7308700000000003
	.quad	0x401c5b328b6d86ec              # double 7.0890599999999999
	.quad	0x401355592d98bf7f              # double 4.833348
	.quad	0x400f03a96d4c33b5              # double 3.8767879999999999
	.quad	0x4022d8f238972043              # double 9.4237230000000007
	.quad	0x4002c0c62e4d1a65              # double 2.344128
	.quad	0x401a950f40e5a35d              # double 6.6455659999999996
	.quad	0x3ff591f0c34c1a8b              # double 1.3481300000000001
	.quad	0x40136a8f3a9b0681              # double 4.8540619999999999
	.quad	0x3ff37c72e275ab7e              # double 1.217883
	.quad	0x400e274fb549f948              # double 3.7691949999999999
	.quad	0x3fdd2ccb3a2595bc              # double 0.45585900000000001
	.quad	0x4000ad39da16616b              # double 2.0845829999999999
	.quad	0x401a26d506573216              # double 6.537922
	.quad	0x3fe5adb61bb05faf              # double 0.67745500000000003
	.quad	0x4010dc4d22c881e4              # double 4.2151379999999996
	.quad	0x400f0709fa54c554              # double 3.8784369999999999
	.quad	0x3ff4925bb7b6bb13              # double 1.2857320000000001
	.quad	0x3ff2d91ab8e8ea3a              # double 1.1780040000000001
	.quad	0x40121b0d0edc3bd6              # double 4.5264170000000004
	.quad	0x401f136b4c7f3494              # double 7.7689640000000004
	.quad	0x40014b05b7cfe586              # double 2.161632
	.quad	0x40228d1f601797cc              # double 9.2756299999999995
	.quad	0x40087f444e0daa0d              # double 3.0621420000000001
	.quad	0x401510bd44998d04              # double 5.2663469999999997
	.quad	0x40024babead4f590              # double 2.2869489999999999
	.quad	0x3ffe4c1a8ac5c140              # double 1.89358
	.quad	0x3ff9eb6390c91080              # double 1.6199680000000001
	.quad	0x3feadbb16c1e364c              # double 0.839318
	.quad	0x40125e3476295209              # double 4.5919970000000001
	.quad	0x401a5fe718a86d72              # double 6.593655
	.quad	0x3fc40bfe3b03e20d              # double 0.15661600000000001
	.quad	0x4008820e6299524c              # double 3.063504
	.quad	0x401a1f6a0dbad3a6              # double 6.530678
	.quad	0x401c571a3b14a904              # double 7.0850609999999996
	.quad	0x40002ec95bff0457              # double 2.0228449999999998
	.quad	0x401d0af1455219a8              # double 7.2606859999999998
	.quad	0x401438448cf7caa7              # double 5.0549489999999997
	.quad	0x40056391d57ff9b5              # double 2.6736179999999998
	.quad	0x3ff10c7e28240b78              # double 1.06555
	.quad	0x4017177531db445f              # double 5.7729080000000002
	.quad	0x401cab8887229e90              # double 7.1675129999999996
	.quad	0x4022dce874c8ffb9              # double 9.4314610000000005
	.quad	0x4014f9b845564b66              # double 5.2438669999999998
	.quad	0x40187a19439de482              # double 6.119237
	.quad	0x3fec89310129cbab              # double 0.89174699999999996
	.quad	0x401c0589efd86a90              # double 7.0054090000000002
	.quad	0x40200788b9778573              # double 8.0147150000000007
	.quad	0x401a1ba0620ab713              # double 6.5269789999999999
	.quad	0x401c59c2c1b10fd8              # double 7.0876570000000001
	.quad	0x4020edf69878316a              # double 8.464772
	.quad	0x3fe8c96030c23fab              # double 0.77458199999999999
	.quad	0x40016cd9e83e425b              # double 2.17815
	.quad	0x401b543d89ce4a7b              # double 6.8322659999999997
	.quad	0x402284f2ae07e5a8              # double 9.2596640000000007
	.quad	0x4009e14940bbb1f2              # double 3.2350029999999999
	.quad	0x401be15b1422ccb4              # double 6.9700740000000003
	.quad	0x3feb7301eabbcb1d              # double 0.85778900000000002
	.quad	0x40220f47b677f6b2              # double 9.0298440000000006
	.quad	0x40058ccb3a2595bc              # double 2.6937470000000001
	.quad	0x4015188b545c78a7              # double 5.2739690000000001
	.quad	0x401db85058dde7a7              # double 7.4299939999999998
	.quad	0x401a480c308feac4              # double 6.5703589999999998
	.quad	0x3fe59c1f85d744f6              # double 0.67530800000000002
	.quad	0x3fee29717df19d67              # double 0.94255900000000004
	.quad	0x401ca715831f03d1              # double 7.1631679999999998
	.quad	0x4011dcfb3311a544              # double 4.465802
	.quad	0x401306dd26b723ee              # double 4.7567029999999999
	.quad	0x3ffe9a437824d4cc              # double 1.9126620000000001
	.quad	0x3ff5a8049667b5f2              # double 1.3535200000000001
	.quad	0x3ff4e33acd5b6806              # double 1.3054760000000001
	.quad	0x400f69320d9945b7              # double 3.9263650000000001
	.quad	0x401354ca4f440af2              # double 4.8328030000000002
	.quad	0x4006b3543aeab799              # double 2.8375629999999998
	.quad	0x400cc0d1b71758e2              # double 3.59415
	.quad	0x400988a2ec28b2a7              # double 3.1917170000000001
	.quad	0x3fc75b24e9c45458              # double 0.18246899999999999
	.quad	0x4004e7dbb16c1e36              # double 2.6132119999999999
	.quad	0x40231ded8d36b4c8              # double 9.558453
	.quad	0x3ffff112fd32c626              # double 1.996356
	.quad	0x400c64934267839d              # double 3.5491090000000001
	.quad	0x3ff54ea39c51dabe              # double 1.331699
	.quad	0x3fe41118c197e564              # double 0.62708699999999995
	.quad	0x401fe4ccab3edd8b              # double 7.9734369999999996
	.quad	0x4016eafd113836a8              # double 5.7294809999999998
	.quad	0x401a2ac29bf162ae              # double 6.5417579999999997
	.quad	0x402359e44fa05144              # double 9.6755700000000004
	.quad	0x400bf8793dd97f63              # double 3.4963250000000001
	.quad	0x400a3eda66128390              # double 3.2806899999999999
	.quad	0x40214c05b39e279e              # double 8.6484810000000003
	.quad	0x4012f11904b3c3e7              # double 4.7354469999999997
	.quad	0x401985e4e69f05ea              # double 6.3807559999999999
	.quad	0x401e0d9cae21101b              # double 7.5132929999999999
	.quad	0x4014af950b955f78              # double 5.1714669999999998
	.quad	0x3ff83a1e3eaf6838              # double 1.514189
	.quad	0x4016cfed20296b33              # double 5.7030529999999997
	.quad	0x3fe70a9bcfd4bf0a              # double 0.72004500000000005
	.quad	0x401ce805e5f30e80              # double 7.226585
	.quad	0x3fd89a73b42cc2d7              # double 0.38442700000000002
	.quad	0x401568509bf9c62a              # double 5.3518699999999999
	.quad	0x40142929aa1d755c              # double 5.0401980000000002
	.quad	0x4015f218def416be              # double 5.4864230000000003
	.quad	0x4012ba48f96e1587              # double 4.6819189999999997
	.quad	0x402397c2a8869c67              # double 9.7964070000000003
	.quad	0x4014b220bc382a13              # double 5.173953
	.quad	0x4022f3c70c996b76              # double 9.4761279999999992
	.quad	0x40219dae81882adc              # double 8.8079719999999994
	.quad	0x4023ac1fc8f32379              # double 9.8361800000000005
	.quad	0x40095713ad5bee3d              # double 3.1675179999999998
	.quad	0x401398be7296f651              # double 4.8991639999999999
	.quad	0x4020785c03361566              # double 8.2350770000000004
	.quad	0x3ff68b8cfbfc6541              # double 1.40907
	.quad	0x4007ab2e9ccb7d41              # double 2.9585849999999998
	.quad	0x402080ca1cef2410              # double 8.2515420000000006
	.quad	0x3fe6fbdcf0307f24              # double 0.71824500000000002
	.quad	0x40180b4e11dbca97              # double 6.0110400000000004
	.quad	0x4014f476295208e1              # double 5.2387319999999997
	.quad	0x4015ab630a91537a              # double 5.41737
	.quad	0x401e5e132b55ef20              # double 7.5918700000000001
	.quad	0x3fee3723ee1bd1ee              # double 0.94423100000000004
	.quad	0x40220cfbfc6540cc              # double 9.0253599999999991
	.quad	0x400043925bb7b6bb              # double 2.032994
	.quad	0x4023971a5ca29846              # double 9.7951230000000002
	.quad	0x402171526d8b1dd6              # double 8.7213320000000003
	.quad	0x4022c91e85fd04a3              # double 9.392811
	.quad	0x4015c245f5ad96a7              # double 5.4397200000000003
	.quad	0x4021324e9c454584              # double 8.5982559999999992
	.quad	0x3fc65953586ca8a0              # double 0.17460100000000001
	.quad	0x4001fad18d25edd0              # double 2.2474699999999999
	.quad	0x40051239a38fbca1              # double 2.633899
	.quad	0x4013615db3397dd0              # double 4.8450839999999999
	.quad	0x3ffbae05ccc89b0f              # double 1.729986
	.quad	0x4003d6ef8055fbb5              # double 2.479949
	.quad	0x40220510d38cda6e              # double 9.0098939999999992
	.quad	0x4002b8da3c21187e              # double 2.3402599999999998
	.quad	0x40075af965b20b80              # double 2.9194209999999998
	.quad	0x3fe9a66dbd72bcb6              # double 0.801566
	.quad	0x40233fbe33acd5b7              # double 9.6244980000000008
	.quad	0x400e3df00abf76a3              # double 3.780243
	.quad	0x3fcf9ca5bd944aa5              # double 0.24696799999999999
	.quad	0x4016f6f36ef80560              # double 5.7411630000000002
	.quad	0x3fc9d15f02c4d65e              # double 0.20170199999999999
	.quad	0x3fd84ddf86e3b470              # double 0.37975300000000001
	.quad	0x3ff3ed46f587d6f9              # double 1.2454289999999999
	.quad	0x401a804b7f5a5333              # double 6.6252880000000003
	.quad	0x401c72e1ac57e23f              # double 7.1121889999999999
	.quad	0x401944f7ec3547e0              # double 6.3173519999999996
	.quad	0x3ff936a7264a16a5              # double 1.5758430000000001
	.quad	0x3ff45ba5e353f7cf              # double 1.272375
	.quad	0x4021694488c60cbf              # double 8.7056009999999997
	.quad	0x4011747e06961c37              # double 4.3637620000000004
	.quad	0x40216357a355043e              # double 8.6940279999999994
	.quad	0x400d97fe8ee6b830              # double 3.6992159999999998
	.quad	0x400e28216c61522a              # double 3.7695949999999998
	.quad	0x400b326634117f84              # double 3.3996089999999999
	.quad	0x4000a91b823c85c2              # double 2.0825719999999999
	.quad	0x401dff893faf4278              # double 7.4995469999999997
	.quad	0x40186b54195cc858              # double 6.104813
	.quad	0x401ba3964a59c066              # double 6.9097530000000003
	.quad	0x3fcd5970b49e01de              # double 0.229292
	.quad	0x3ff2f64bec679cc7              # double 1.1851309999999999
	.quad	0x3ff74a116659d12d              # double 1.4555830000000001
	.quad	0x400d49ecb31c219f              # double 3.6610960000000001
	.quad	0x400c873365881a15              # double 3.5660159999999999
	.quad	0x40231cbcf0b6b6e1              # double 9.5561290000000003
	.quad	0x401a13b14a90470b              # double 6.5192310000000004
	.quad	0x40169327ed84d339              # double 5.643707
	.quad	0x4014353c148344c3              # double 5.0519869999999996
	.quad	0x401e0853c148344c              # double 7.5081319999999998
	.quad	0x4007570bd017dae8              # double 2.917503
	.quad	0x402149843c3a42f2              # double 8.6435870000000001
	.quad	0x4009f83ad9f0a1be              # double 3.2462059999999999
	.quad	0x401f2d3b29a1b9fa              # double 7.7941710000000004
	.quad	0x4018cfe3f359ff50              # double 6.2030180000000001
	.quad	0x401afae5bc87db2b              # double 6.7450169999999998
	.quad	0x4017965ecc3e3194              # double 5.896846
	.quad	0x400bf38b47c73eee              # double 3.4939179999999999
	.quad	0x400eefaeff5c6c12              # double 3.8670330000000002
	.quad	0x3ff1505186db50f4              # double 1.082109
	.quad	0x40183b37c99ae925              # double 6.05783
	.quad	0x40009daf8df7a4e8              # double 2.0769950000000001
	.quad	0x3fe6e4d5d80e496f              # double 0.71543400000000001
	.quad	0x3fea7609dcf893fb              # double 0.82690900000000001
	.quad	0x400bd47bedb72820              # double 3.4787520000000001
	.quad	0x401d15a5fc7e6b40              # double 7.2711410000000001
	.quad	0x401e84202d9cf13d              # double 7.629029
	.quad	0x400cd9934efcbd55              # double 3.6062379999999998
	.quad	0x40156a63f9a49c2c              # double 5.3538969999999999
	.quad	0x3ffd26bc621b7e0b              # double 1.821957
	.quad	0x4022498f1d3ed528              # double 9.1436700000000001
	.quad	0x4022ce08d08919f0              # double 9.4024110000000007
	.quad	0x3f9b07075b3e1438              # double 0.026394000000000001
	.quad	0x3ff4ef35e310dbf0              # double 1.3084009999999999
	.quad	0x3ff6cd1d8a548238              # double 1.4250769999999999
	.quad	0x4019355b4677b396              # double 6.3021060000000002
	.quad	0x400c824aada33bda              # double 3.5636190000000001
	.quad	0x40106fd75e2046c7              # double 4.1092199999999997
	.quad	0x3fe50a5ce5b4245f              # double 0.65751499999999996
	.quad	0x3fe9fb1c0010c6f8              # double 0.81190300000000004
	.quad	0x4017e78c868b9fdc              # double 5.9761220000000002
	.quad	0x400687ffde7210bf              # double 2.8164060000000002
	.quad	0x401c811c6d1e108c              # double 7.1260849999999998
	.quad	0x401204c2f837b4a2              # double 4.5046499999999998
	.quad	0x401a8c881e4712e4              # double 6.637238
	.quad	0x3ffa1f4d37c1376d              # double 1.6326419999999999
	.quad	0x401e61f10667f90e              # double 7.5956460000000003
	.quad	0x4020719eb6390c91              # double 8.2219139999999999
	.quad	0x401072a305532618              # double 4.1119500000000002
	.quad	0x40206c471b478423              # double 8.2114799999999999
	.quad	0x3ffe194af4f0d845              # double 1.881175
	.quad	0x401c33b5bf6a0dbb              # double 7.0504980000000002
	.quad	0x402358c6b484d76b              # double 9.6733910000000005
	.quad	0x3fe119dece571088              # double 0.53440799999999999
	.quad	0x401d89ca9ef5232d              # double 7.3845619999999998
	.quad	0x40031ad6451b9303              # double 2.3881039999999998
	.quad	0x40089940789613d3              # double 3.07483
	.quad	0x4009edc1a47a9e2c              # double 3.2410920000000001
	.quad	0x401adc2efd438d1e              # double 6.7150230000000004
	.quad	0x401ea61f18c9fb61              # double 7.6622279999999998
	.quad	0x4007e6f60e0eb67c              # double 2.9877739999999999
	.quad	0x401121b8ed1bf7ad              # double 4.2829319999999997
	.quad	0x400ae18def416bdb              # double 3.360134
	.quad	0x4020ade17e34b945              # double 8.3396109999999997
	.quad	0x4019de1262025397              # double 6.4668669999999997
	.quad	0x3ff00bbb1f255f35              # double 1.002864
	.quad	0x400be4f440af1cb9              # double 3.4867940000000002
	.quad	0x4021aa53da72a7bd              # double 8.8326709999999995
	.quad	0x3ff7fbc1acde19fc              # double 1.498964
	.quad	0x4000654823854046              # double 2.0494539999999999
	.quad	0x40014d9a52263d81              # double 2.1628919999999998
	.quad	0x40238e3b8a19c9d6              # double 9.7777980000000007
	.quad	0x3ff6460242d05f29              # double 1.3920920000000001
	.quad	0x40188b90ea9e6eeb              # double 6.1362949999999996
	.quad	0x3ff7b59146e4c0df              # double 1.4818279999999999
	.quad	0x401caf62b6ae7d56              # double 7.1712749999999996
	.quad	0x3fe5525aab474107              # double 0.66630299999999998
	.quad	0x40104623076c050c              # double 4.0684930000000001
	.quad	0x3fe8429e0a41a262              # double 0.75813200000000003
	.quad	0x401022c12ad81adf              # double 4.0339400000000003
	.quad	0x3ffafe86833c6003              # double 1.6871400000000001
	.quad	0x400f37b0f6ad70e7              # double 3.902193
	.quad	0x40080e26d4801f75              # double 3.00691
	.quad	0x401971049235f80a              # double 6.3603690000000004
	.quad	0x400dc5aee631f8a1              # double 3.7215250000000002
	.quad	0x4013406466b1e5c1              # double 4.8128830000000002
	.quad	0x3fb36e82949a5658              # double 0.075905
	.quad	0x401bd60bb2bba98f              # double 6.9590290000000001
	.quad	0x400afbec2480e8c9              # double 3.3730090000000001
	.quad	0x401994156e264e48              # double 6.3946129999999997
	.quad	0x40118d72799a1fd1              # double 4.3881319999999997
	.quad	0x400d87b9170d62bf              # double 3.691271
	.quad	0x401bde1da7b0b392              # double 6.9669100000000004
	.quad	0x401d283f91e646f1              # double 7.2893049999999997
	.quad	0x3ff86ac647778dd6              # double 1.526068
	.quad	0x400f143fa2ad3e92              # double 3.884887
	.quad	0x40054dd82fd75e20              # double 2.6630099999999999
	.quad	0x40006a9a3d2d87f9              # double 2.0520520000000002
	.quad	0x3ff697bc7f77af64              # double 1.412045
	.quad	0x401abcb4289118c2              # double 6.6842810000000004
	.quad	0x40215a2f8bdec5f4              # double 8.6761440000000007
	.quad	0x400574bdfd2630ec              # double 2.6820029999999999
	.quad	0x3ff8e44523f67f4e              # double 1.5557300000000001
	.quad	0x401c5148fd9fd36f              # double 7.0793799999999996
	.quad	0x401befd1dcd7060c              # double 6.9841990000000003
	.quad	0x402075f19d66adb4              # double 8.2303589999999999
	.quad	0x400b36b97fe8ee6c              # double 3.4017210000000002
	.quad	0x402072cd5b6805a3              # double 8.2242230000000003
	.quad	0x401a0011904b3c3e              # double 6.5000669999999996
	.quad	0x4019dc970f7b9e06              # double 6.4654199999999999
	.quad	0x40146ef5ec80c73b              # double 5.1083600000000002
	.quad	0x401778259e1f3a58              # double 5.8673310000000001
	.quad	0x4021cece789e774f              # double 8.9039190000000001
	.quad	0x400b6a1511dffc54              # double 3.4267979999999998
	.quad	0x4021290c6f7a0b5f              # double 8.5801730000000003
	.quad	0x4020aa936c58eeaf              # double 8.3331560000000007
	.quad	0x400f5d75e2046c76              # double 3.9206349999999999
	.quad	0x3fe4f77079e59f2c              # double 0.65520500000000004
	.quad	0x401647b5f1bef49d              # double 5.57003
	.quad	0x401d144998d045fe              # double 7.2698119999999999
	.quad	0x3fe7e273929ed395              # double 0.74639299999999997
	.quad	0x40211ebce8533b10              # double 8.5600349999999992
	.quad	0x3ff1f341e14bdfd2              # double 1.1218889999999999
	.quad	0x4020afd1fe64f54d              # double 8.3433989999999998
	.quad	0x40202f5f4e4430b1              # double 8.0925239999999992
	.quad	0x4003a6cebbba55d2              # double 2.4564490000000001
	.quad	0x400e73cc4ac6cdaf              # double 3.8065419999999999
	.quad	0x400adcdf69878317              # double 3.3578480000000002
	.quad	0x401d66ef3d3a1d32              # double 7.3505219999999998
	.quad	0x400d8b0c88a47ed0              # double 3.692895
	.quad	0x3ff0bd1dcd7060bb              # double 1.046171
	.quad	0x401b98ef34d6a162              # double 6.8993500000000001
	.quad	0x4008e0f5e41d4b6a              # double 3.1098439999999998
	.quad	0x4019c8b97785729b              # double 6.4460199999999999
	.quad	0x40160fb82c2bd7f5              # double 5.5153509999999999
	.quad	0x40208b910c2c5e2d              # double 8.2725910000000002
	.quad	0x40105a0902de00d2              # double 4.0879250000000003
	.quad	0x40058a47ecfe9b7c              # double 2.69252
	.quad	0x401d3bcd78c436fc              # double 7.3084009999999999
	.quad	0x4020855f78359bc3              # double 8.2604939999999996
	.quad	0x401d96950fc71d60              # double 7.3970529999999997
	.quad	0x401d00474d9c6b05              # double 7.2502719999999998
	.quad	0x3fd2a376922d948e              # double 0.29122700000000001
	.quad	0x4009f10667f90d9d              # double 3.2426879999999998
	.quad	0x4002d7be9856a37b              # double 2.3553440000000001
	.quad	0x4020eda9a8049668              # double 8.4641850000000005
	.quad	0x40041f84449dbec2              # double 2.5153889999999999
	.quad	0x401f4558a7610279              # double 7.8177209999999996
	.quad	0x3f9f2c7325918a01              # double 0.030443000000000001
	.quad	0x3fe4ded6ba8c5868              # double 0.65220199999999995
	.quad	0x4007ae8f29d40ee0              # double 2.9602339999999998
	.quad	0x3ff24a85caafbc1b              # double 1.143194
	.quad	0x4003f9dfdac68a93              # double 2.4970089999999998
	.quad	0x3ff81fc8f32378ab              # double 1.50776
	.quad	0x401e9d6b228dc982              # double 7.6537290000000002
	.quad	0x3fe2e1a8262456f7              # double 0.59004599999999996
	.quad	0x401ac7dd00f776c5              # double 6.6951790000000004
	.quad	0x4018cb4a2339c0ec              # double 6.1985250000000001
	.quad	0x40110959a30984e4              # double 4.259131
	.quad	0x401221b584b1ab08              # double 4.5329189999999997
	.quad	0x3ff128f9f44d4456              # double 1.0725039999999999
	.quad	0x40017afd113836a8              # double 2.1850529999999999
	.quad	0x40098ccd530489d2              # double 3.1937509999999998
	.quad	0x4014dc77143393ab              # double 5.2152979999999998
	.quad	0x40159784ec636b09              # double 5.3979679999999997
	.quad	0x40089182235b4edb              # double 3.0710489999999999
	.quad	0x3ff3a4b018611fd6              # double 1.2277070000000001
	.quad	0x3fe381d3aa369fcf              # double 0.60959799999999997
	.quad	0x401bd91819d2391d              # double 6.9620059999999997
	.quad	0x4005a27e9531550d              # double 2.7043430000000002
	.quad	0x400ad0d1fa333765              # double 3.351963
	.quad	0x4020a611fd5885d3              # double 8.3243559999999999
	.quad	0x4012c86d2ed783e0              # double 4.695729
	.quad	0x402000eef1bac2df              # double 8.0018229999999999
	.quad	0x400de22c45026890              # double 3.735436
	.quad	0x401819dc2f405f6c              # double 6.0252540000000003
	.quad	0x401eb1a2e7f6f4bf              # double 7.6734730000000004
	.quad	0x40031d199bb2788e              # double 2.3892090000000001
	.quad	0x4014b1bda5119ce0              # double 5.1735749999999996
	.quad	0x400a2da661283904              # double 3.2722899999999999
	.quad	0x40133d60e94ee393              # double 4.8099400000000001
	.quad	0x40162c925785f8d3              # double 5.5435270000000001
	.quad	0x3ff57fdb4cc25072              # double 1.343715
	.quad	0x400fbd6f112fd32c              # double 3.9674969999999998
	.quad	0x402224abc5154867              # double 9.0716230000000007
	.quad	0x3fe9e3d1cc100e6b              # double 0.80906
	.quad	0x40094d972cd7cf5f              # double 3.1628859999999999
	.quad	0x3fd55043e5321e60              # double 0.33302399999999999
	.quad	0x3ff9eb3edd8b60f2              # double 1.6199330000000001
	.quad	0x3fa8d002e2328f9f              # double 0.048461999999999998
	.quad	0x400769ec2ce46499              # double 2.92672
	.quad	0x401fd9795b35b0bc              # double 7.962377
	.quad	0x401354f54d1e96c4              # double 4.832967
	.quad	0x401c039042d8c2a4              # double 7.0034799999999997
	.quad	0x3fd50a915379fa98              # double 0.32877000000000001
	.quad	0x4010c0fdc1615ec0              # double 4.1884680000000003
	.quad	0x402123c7f77af640              # double 8.5698849999999993
	.quad	0x4023b16fc9bc7714              # double 9.8465559999999996
	.quad	0x401bf93532e7b3d9              # double 6.9933670000000001
	.quad	0x3fea44da9003eea2              # double 0.820905
	.quad	0x3ff315629d8409e5              # double 1.1927209999999999
	.quad	0x400a6f5d35653c9b              # double 3.3043770000000001
	.quad	0x40218ca6223e186a              # double 8.7747050000000009
	.quad	0x3ff76fa93af74cd3              # double 1.464761
	.quad	0x3fe34bcad9ad85e0              # double 0.60300200000000004
	.quad	0x4011366a11ec918e              # double 4.3031389999999998
	.quad	0x401a3b4e11dbca97              # double 6.5579150000000004
	.quad	0x401720f12c27a637              # double 5.7821699999999998
	.quad	0x40124f661f18c9fb              # double 4.5775379999999997
	.quad	0x400298c197e56473              # double 2.3245879999999999
	.quad	0x40053fea8112ba17              # double 2.656209
	.quad	0x3fd24102ff8ec0f9              # double 0.28521800000000003
	.quad	0x4012058793dd97f6              # double 4.5053999999999998
	.quad	0x3ff84e6f2e8c0486              # double 1.5191490000000001
	.quad	0x40211fc5ac471b48              # double 8.5620550000000009
	.quad	0x4017276d97b30f8c              # double 5.7885039999999996
	.quad	0x4014326d8b1dd5d4              # double 5.0492460000000001
	.quad	0x40136dd377e1b8ed              # double 4.8572519999999999
	.quad	0x3fd1711947cfa26a              # double 0.27252799999999999
	.quad	0x400d2bacf7446f9c              # double 3.6463260000000002
	.quad	0x3fe2636f3b213e3e              # double 0.57463799999999998
	.quad	0x3ffdedeb95e5aff3              # double 1.8705860000000001
	.quad	0x401227a17f4128bf              # double 4.5387019999999998
	.quad	0x400209aed56b0100              # double 2.2547280000000001
	.quad	0x3ff0cfc829cfdd23              # double 1.0507280000000001
	.quad	0x40119fee2c98e53f              # double 4.4061820000000003
	.quad	0x400deea4228997c4              # double 3.7415240000000001
	.quad	0x400d004d12018a44              # double 3.6251470000000001
	.quad	0x3ffd381733226c3c              # double 1.8261940000000001
	.quad	0x4010e881a1554fbe              # double 4.2270570000000003
	.quad	0x3ff9b5275ee99a63              # double 1.606727
	.quad	0x4012cdfd2630ec31              # double 4.7011609999999999
	.quad	0x401ced9b5e95b78d              # double 7.2320380000000002
	.quad	0x40216469f8c21e1d              # double 8.6961209999999998
	.quad	0x4023c4b8e086bdf5              # double 9.8842230000000004
	.quad	0x4004aa137f38c543              # double 2.5830449999999998
	.quad	0x4023cb3f85510d39              # double 9.8969690000000003
	.quad	0x4018aacd9e83e426              # double 6.1668000000000003
	.quad	0x4007ba1f4b1ee243              # double 2.9658799999999998
	.quad	0x4014a3a365cb35f4              # double 5.1598030000000001
	.quad	0x3fdb193b3a68b19a              # double 0.42341499999999999
	.quad	0x3ff914845132f87b              # double 1.567509
	.quad	0x4023dc9ff92f2b67              # double 9.9309080000000005
	.quad	0x401fee1d6494d50f              # double 7.9825340000000002
	.quad	0x401085a858793dd9              # double 4.1305249999999996
	.quad	0x402100292817763e              # double 8.5003139999999995
	.quad	0x3ff081c92ddbdb5e              # double 1.0316860000000001
	.quad	0x401aeebf22c01e69              # double 6.7331510000000003
	.quad	0x40179ef99806f263              # double 5.9052490000000004
	.quad	0x401c6bdb1a6d6990              # double 7.1053280000000001
	.quad	0x401caea033e78e19              # double 7.1705329999999998
	.quad	0x3fe35fdac68a936c              # double 0.60545099999999996
	.quad	0x4013f97f1f9acffa              # double 4.9936489999999996
	.quad	0x401b95b35b0bbf51              # double 6.8961920000000001
	.quad	0x4000b31b152f3c2e              # double 2.0874540000000001
	.quad	0x4023def4be835dee              # double 9.9354610000000001
	.quad	0x401892ac322291fb              # double 6.1432349999999998
	.quad	0x3fdd4a9cdc443915              # double 0.457679
	.quad	0x3ff735147f130596              # double 1.4504589999999999
	.quad	0x40186e04c0592104              # double 6.1074400000000004
	.quad	0x3ff94a3d70a3d70a              # double 1.5806249999999999
	.quad	0x40111160956c0d6f              # double 4.2669699999999997
	.quad	0x4011253c579f2346              # double 4.2863629999999997
	.quad	0x3f93ca31e7d9988d              # double 0.019325999999999999
	.quad	0x3ff881cf7878b7a2              # double 1.5316920000000001
	.quad	0x40042d17c5ef62fa              # double 2.5220180000000001
	.quad	0x400e097d06bbdbe4              # double 3.7546330000000001
	.quad	0x40158e04c0592104              # double 5.3886900000000004
	.quad	0x400172be48a58b3f              # double 2.1810269999999998
	.quad	0x401d91c219eb6391              # double 7.3923420000000002
	.quad	0x400a6cae642bf983              # double 3.303067
	.quad	0x40210cd50ebaade6              # double 8.5250629999999994
	.quad	0x4015b9d0203e63e9              # double 5.4314580000000001
	.quad	0x4018a07e5a78f25a              # double 6.1567319999999999
	.quad	0x4020ea3c21187e7c              # double 8.4574899999999999
	.quad	0x401e9ad7d7c2ca15              # double 7.6512140000000004
	.quad	0x400a5b36bd2b6f1a              # double 3.2945380000000002
	.quad	0x3fc12ad81adea897              # double 0.13411999999999999
	.quad	0x401d289b951c5c57              # double 7.2896559999999999
	.quad	0x4019e786c226809d              # double 6.4760999999999997
	.quad	0x4023630014f8b589              # double 9.6933600000000001
	.quad	0x400399baa1511e00              # double 2.4500630000000001
	.quad	0x4010e84e831ad213              # double 4.2268619999999997
	.quad	0x401aa5c5718eb895              # double 6.661886
	.quad	0x40006af78feef5ed              # double 2.0522300000000002
	.quad	0x400aefcb4f1e4b45              # double 3.3670870000000002
	.quad	0x3ff48331e3a7daa5              # double 1.28203
	.quad	0x401ee51ce28ed5f1              # double 7.7237429999999998
	.quad	0x4021068cac4b4d05              # double 8.5127919999999992
	.quad	0x4018901fb82c2bd8              # double 6.140746
	.quad	0x4009cc11a11233df              # double 3.2246429999999999
	.quad	0x4018b2fa5093964a              # double 6.1747829999999997
	.quad	0x401d3432441fea81              # double 7.3009729999999999
	.quad	0x3ff275b91f70de8f              # double 1.1537409999999999
	.quad	0x401c6c1c6088d6d4              # double 7.1055770000000003
	.quad	0x400908dc981beb18              # double 3.129327
	.quad	0x401beeb67c286f8b              # double 6.9831180000000002
	.quad	0x4020db5fc3b4f616              # double 8.4284649999999992
	.quad	0x400ad4f3775b8130              # double 3.35398
	.quad	0x4021a51ed9dfdac7              # double 8.8225010000000008
	.quad	0x3ffe6dcd2d44dca9              # double 1.901807
	.quad	0x3fe949afe1da7b0b              # double 0.79024499999999998
	.quad	0x4016a74299d883ba              # double 5.6633399999999998
	.quad	0x40211528ae74f2f1              # double 8.5413259999999998
	.quad	0x401619f87f023e9f              # double 5.5253620000000003
	.quad	0x3fb06594af4f0d84              # double 0.064049999999999996
	.quad	0x400a196d0917d6b6              # double 3.2624149999999998
	.quad	0x4022c2858793dd98              # double 9.379925
	.quad	0x402281e3a7daa4fd              # double 9.2536900000000006
	.quad	0x401b5ca7503b81b6              # double 6.8404819999999997
	.quad	0x40103de657b84dba              # double 4.0604490000000002
	.quad	0x40019fcd24e160d9              # double 2.2030280000000002
	.quad	0x4001cb78897e9963              # double 2.224351
	.quad	0x401e2cf63800218e              # double 7.5439080000000001
	.quad	0x402040fa7a85015c              # double 8.1269109999999997
	.quad	0x401f34ddf86e3b47              # double 7.801628
	.quad	0x4012613122b7baed              # double 4.5949140000000002
	.quad	0x4017add76683c298              # double 5.9197670000000002
	.quad	0x4015d1fe21d96e9c              # double 5.4550710000000002
	.quad	0x401e20bcbe61cfff              # double 7.5319700000000002
	.quad	0x40197d573647baaa              # double 6.3724030000000003
	.quad	0x3fe919c9d5a187a5              # double 0.78439800000000004
	.quad	0x4015b260f5e41d4b              # double 5.4241979999999996
	.quad	0x4010c3c03bc4d22d              # double 4.1911630000000004
	.quad	0x40227d530489d27c              # double 9.2447739999999996
	.quad	0x401e8028a1dfb939              # double 7.6251550000000003
	.quad	0x401406494d50ebab              # double 5.0061390000000001
	.quad	0x401619efd86a8fc1              # double 5.5253290000000002
	.quad	0x4006664b2314013f              # double 2.7999480000000001
	.quad	0x400b1a4b5568e821              # double 3.387839
	.quad	0x401eaef416bdb1a7              # double 7.6708530000000001
	.quad	0x402367b4a2339c0f              # double 9.7025500000000004
	.quad	0x4009590214ad362f              # double 3.1684610000000002
	.quad	0x40066eef1bac2df1              # double 2.8041670000000001
	.quad	0x4023ffa1c25d0742              # double 9.9992809999999999
	.quad	0x402159001d5c3159              # double 8.6738289999999996
	.quad	0x4000f99c38b04ab6              # double 2.12188
	.quad	0x401faa16e7a311e8              # double 7.9161029999999996
	.quad	0x40141e64b2314014              # double 5.0296810000000001
	.quad	0x401f560999dcb578              # double 7.8340209999999999
	.quad	0x3fe3dda48b652370              # double 0.62080599999999997
	.quad	0x40159d9e40c8472c              # double 5.4039239999999999
	.quad	0x4013db6f5caf2d80              # double 4.9642920000000004
	.quad	0x3fe7d62bf11f926c              # double 0.74489399999999995
	.quad	0x4007934e7685985b              # double 2.9469270000000001
	.quad	0x4020256b00ffda40              # double 8.0730819999999994
	.quad	0x3fef760bf5d78812              # double 0.98316000000000003
	.quad	0x4004cfdda8bd230c              # double 2.6014970000000002
	.quad	0x40044c2ce4649907              # double 2.5371950000000001
	.quad	0x400f923d4f15e7c9              # double 3.9464060000000001
	.quad	0x40181615a8deb0fb              # double 6.0215670000000001
	.quad	0x402115fe111276fb              # double 8.5429539999999999
	.quad	0x401e7002e2328f9f              # double 7.6093859999999997
	.quad	0x4013611fd5885d31              # double 4.8448479999999998
	.quad	0x400cdbefd00713f0              # double 3.6073909999999998
	.quad	0x3ffe2c6bce8533b1              # double 1.885845
	.quad	0x4015930270f38822              # double 5.3935639999999996
	.quad	0x400d4635a426bb56              # double 3.6592820000000001
	.quad	0x40179866e43aa79c              # double 5.8988300000000002
	.quad	0x3fcb3825e13b18db              # double 0.21265100000000001
	.quad	0x4023f0a9de8b3b32              # double 9.970046
	.quad	0x401aff609dcf8940              # double 6.7493920000000003
	.quad	0x40046fc9bc771434              # double 2.5545840000000002
	.quad	0x401321654d61b2a2              # double 4.7826129999999996
	.quad	0x4014d08dd1e53a82              # double 5.2036660000000001
	.quad	0x4018ab8cfbfc6541              # double 6.1675300000000002
	.quad	0x401078f57f737da6              # double 4.1181239999999999
	.quad	0x4013895421c04428              # double 4.8841099999999997
	.quad	0x40045f0563ed0f62              # double 2.5463969999999998
	.quad	0x4011ee65bea0ba1f              # double 4.4828099999999997
	.quad	0x401263b2dd377e1c              # double 4.5973620000000004
	.quad	0x40019348b220791c              # double 2.1969159999999999
	.quad	0x3ff1814940bbb1f2              # double 1.0940639999999999
	.quad	0x3fdd870da5daf07c              # double 0.461368
	.quad	0x40186a57214f0521              # double 6.1038480000000002
	.quad	0x401390cbaf965b21              # double 4.8914020000000002
	.quad	0x4021c1496249a134              # double 8.8775130000000004
	.quad	0x400caf954eb13dfb              # double 3.585734
	.quad	0x401c9d84d338f798              # double 7.1538269999999997
	.quad	0x401479d627bf61aa              # double 5.1189809999999998
	.quad	0x40178a5df2239e6b              # double 5.8851240000000002
	.quad	0x401f6328b6d86ec1              # double 7.8468349999999995
	.quad	0x400bde4ffc9795b3              # double 3.4835509999999998
	.quad	0x401ac675147f1306              # double 6.6938060000000004
	.quad	0x400e58a8f3a9b068              # double 3.793291
	.quad	0x4022e583a53b8e4c              # double 9.4482700000000008
	.quad	0x401fdf15e7c8d196              # double 7.9678570000000004
	.quad	0x3ff3117d6b65a9a8              # double 1.19177
	.quad	0x401f8287c200c0f0              # double 7.8774709999999999
	.quad	0x400ed6ce789e774f              # double 3.854886
	.quad	0x3ffb5011904b3c3e              # double 1.7070479999999999
	.quad	0x40229eff5c6c11a1              # double 9.3105419999999999
	.quad	0x40047fe3b03e20cd              # double 2.562446
	.quad	0x40007f5a5332acfb              # double 2.0621839999999998
	.quad	0x402356ca686e7e63              # double 9.6695130000000002
	.quad	0x3ff20ffda4052d66              # double 1.1289039999999999
	.quad	0x3fff52ff4ba51a00              # double 1.9577629999999999
	.quad	0x401b81ea78af3e47              # double 6.8768710000000004
	.quad	0x400ff65881a15550              # double 3.9952860000000001
	.quad	0x402120bc169c23b8              # double 8.5639350000000007
	.quad	0x4004b4959e625636              # double 2.5881759999999998
	.quad	0x4017af284167a95d              # double 5.9210520000000004
	.quad	0x401b1127f5e84f09              # double 6.7667539999999997
	.quad	0x40218c6f15619115              # double 8.7742850000000008
	.quad	0x3fbdc27e9531550d              # double 0.11624900000000001
	.quad	0x4011b20c49ba5e35              # double 4.4238749999999998
	.quad	0x400f24c9c90c4dec              # double 3.892963
	.quad	0x400664da09cc319c              # double 2.7992439999999998
	.quad	0x4012df9830e3cd9a              # double 4.7183539999999997
	.quad	0x402299e59f2ba9d2              # double 9.3005800000000001
	.quad	0x40201b61fe21d96f              # double 8.0534820000000007
	.quad	0x40036fbf401c4fc2              # double 2.4295640000000001
	.quad	0x4000fbce4217d285              # double 2.1229520000000002
	.quad	0x400801b10fd7e458              # double 3.000826
	.quad	0x400e1bce4217d285              # double 3.7635770000000002
	.quad	0x400e5601797cc3a0              # double 3.791995
	.quad	0x4000a8d8ec95bff0              # double 2.0824449999999999
	.quad	0x40231eca89fc6da4              # double 9.5601389999999994
	.quad	0x4022cc6d612c6ac2              # double 9.3992719999999998
	.quad	0x4012f7a7c9de0503              # double 4.7418509999999996
	.quad	0x401fffb8b26394fb              # double 7.9997280000000001
	.quad	0x4012c02d9cf13cef              # double 4.6876740000000003
	.quad	0x401878793dd97f63              # double 6.1176500000000003
	.quad	0x3ff685c5718eb895              # double 1.407659
	.quad	0x3fe4e6e86c6583e8              # double 0.65318699999999996
	.quad	0x400ed6cbd987c632              # double 3.8548809999999998
	.quad	0x401f8e5109070fbf              # double 7.8889810000000002
	.quad	0x401da757d5a9eb20              # double 7.4134209999999996
	.quad	0x40189a08398a6549              # double 6.1504219999999998
	.quad	0x3ff5876af89c5e70              # double 1.345561
	.quad	0x40164e59af9ebe9d              # double 5.5765140000000004
	.quad	0x4012d955714b9cb7              # double 4.7122400000000004
	.quad	0x402090385c67dfe3              # double 8.2816799999999997
	.quad	0x4016ab8a19c9d5a2              # double 5.6675190000000004
	.quad	0x4007930489d27c39              # double 2.9467859999999999
	.quad	0x4021ba5b749adc90              # double 8.8639790000000005
	.quad	0x4018395cc857f306              # double 6.0560179999999999
	.quad	0x401e1d9a95421c04              # double 7.5289099999999998
	.quad	0x401b6a20ddc61954              # double 6.8536409999999997
	.quad	0x401bd8a58b3f63c3              # double 6.9615689999999999
	.quad	0x3ffd1dbfceb78898              # double 1.819763
	.quad	0x401db4a16a487336              # double 7.4263969999999997
	.quad	0x400c5bc01a36e2eb              # double 3.5448
	.quad	0x4018c57c914b167f              # double 6.1928580000000002
	.quad	0x40048cc78e9f6a94              # double 2.56874
	.quad	0x4014c7d6f9767903              # double 5.1951559999999999
	.quad	0x401b8e6bc621b7e1              # double 6.8890830000000003
	.quad	0x401c618a009f6230              # double 7.0952529999999996
	.quad	0x40231de58e64b231              # double 9.5583919999999995
	.quad	0x401e730c67168f8e              # double 7.6123519999999996
	.quad	0x3fce53b8e4b87bdd              # double 0.23693
	.quad	0x400ef41d084e831b              # double 3.8691960000000001
	.quad	0x40068d2806af46aa              # double 2.818924
	.quad	0x40202dcf0307f23d              # double 8.0894700000000004
	.quad	0x401f5e6687f455a8              # double 7.8421880000000001
	.quad	0x400e997cc39ffd61              # double 3.824945
	.quad	0x401aa4e09784ec63              # double 6.6610129999999996
	.quad	0x4018b1e0828c36db              # double 6.1737080000000004
	.quad	0x4019cfe1da7b0b39              # double 6.4530099999999999
	.quad	0x4007eb7c3504c48b              # double 2.9899830000000001
	.quad	0x4023ebe07a28bb0a              # double 9.9606969999999997
	.quad	0x40226bb14a90470b              # double 9.2103370000000009
	.quad	0x400a330df9bdc6a0              # double 3.2749290000000002
	.quad	0x3ffb9fa658c4bd34              # double 1.726477
	.quad	0x400c39f87f023e9f              # double 3.5283060000000002
	.quad	0x40153ad1d041cc53              # double 5.3074409999999999
	.quad	0x4013c23422467be5              # double 4.9396519999999997
	.quad	0x4014ae9af5ba2be0              # double 5.1705129999999997
	.quad	0x400ed8b1572580c3              # double 3.855807
	.quad	0x40062e5eedcc20d5              # double 2.7726419999999998
	.quad	0x4016df1b25f633ce              # double 5.7178769999999997
	.quad	0x3ffa37824d4cb9ed              # double 1.638552
	.quad	0x400d2a0ba1f4b1ee              # double 3.6455299999999999
	.quad	0x401a2829068986fd              # double 6.5392190000000001
	.quad	0x40062318b9346994              # double 2.767137
	.quad	0x4014ba4f440af1cc              # double 5.1819430000000004
	.quad	0x3fc65a2d72ffd1dd              # double 0.174627
	.quad	0x4018562456f75d9a              # double 6.0841229999999999
	.quad	0x400c4e8ea39c51db              # double 3.5383580000000001
	.quad	0x402267e56473471f              # double 9.2029219999999992
	.quad	0x4003b204295a6c5d              # double 2.4619219999999999
	.quad	0x401aa3305100a394              # double 6.6593640000000001
	.quad	0x401adbbe0157eed4              # double 6.7145919999999997
	.quad	0x4021aaacb85a4f01              # double 8.8333490000000001
	.quad	0x4019a2b628459967              # double 6.4088979999999998
	.quad	0x402186c204f2ae08              # double 8.7631990000000002
	.quad	0x401816e08f217093              # double 6.0223409999999999
	.quad	0x4023ac74751ce28f              # double 9.8368260000000002
	.quad	0x3fe092599ed7c6fc              # double 0.51786500000000002
	.quad	0x401603b9ae0c1765              # double 5.5036379999999996
	.quad	0x402298b6f9fcb0c0              # double 9.2982709999999997
	.quad	0x3ffc25f41aef6f8f              # double 1.759266
	.quad	0x3fe0445aa2e3c537              # double 0.50834400000000002
	.quad	0x3ff6d0203e63e8de              # double 1.4258120000000001
	.quad	0x4015e81669ced0b3              # double 5.476648
	.quad	0x3f9477bbf93ff25e              # double 0.019987999999999999
	.quad	0x400706149c6f36f0              # double 2.8779690000000002
	.quad	0x401b7f4517614595              # double 6.8742869999999998
	.quad	0x401bdf05ea24cc68              # double 6.9677959999999999
	.quad	0x3fea5d4c76d117b5              # double 0.82388899999999998
	.quad	0x3ff90c23fab10ba6              # double 1.565464
	.quad	0x402004853c148345              # double 8.0088290000000004
	.quad	0x4009100a393ee5ef              # double 3.1328320000000001
	.quad	0x40236814d72799a2              # double 9.703284
	.quad	0x4010e90795f676ea              # double 4.2275679999999998
	.quad	0x4014ffc9ff92f2b6              # double 5.2497939999999996
	.quad	0x4022247da1ec4e72              # double 9.0712709999999994
	.quad	0x401756df82b1f688              # double 5.8348370000000003
	.quad	0x401c9e368f084620              # double 7.1545050000000003
	.quad	0x4001bf27fe4bcada              # double 2.2183380000000001
	.quad	0x40205dd00f776c48              # double 8.1832279999999997
	.quad	0x4010cb76f6d76252              # double 4.198696
	.quad	0x401a638de6ddf00b              # double 6.5972210000000002
	.quad	0x401bd4399b2c40d1              # double 6.9572510000000003
	.quad	0x40229656cd6c2efd              # double 9.2936309999999995
	.quad	0x40215fd566cf41f2              # double 8.6871749999999999
	.quad	0x401f03fee2c98e54              # double 7.7539020000000001
	.quad	0x4009a9731098d478              # double 3.2077390000000001
	.quad	0x3ffa35ce18266773              # double 1.638136
	.quad	0x400098d25edd0529              # double 2.0746199999999999
	.quad	0x4023eb734b51372a              # double 9.9598639999999996
	.quad	0x40042e1a3f4666ed              # double 2.5225110000000002
	.quad	0x401af96e9bbf0dc7              # double 6.7435859999999996
	.quad	0x402049d7774aba38              # double 8.1442219999999992
	.quad	0x4018038476f2a5a4              # double 6.0034349999999996
	.quad	0x3fe787c6327ed84d              # double 0.73532399999999998
	.quad	0x40125bc05d52c16e              # double 4.589601
	.quad	0x401d69ab29e4d5d8              # double 7.3531919999999999
	.quad	0x4020b0e71476af8a              # double 8.3455130000000004
	.quad	0x4000792e1ef73c0c              # double 2.0591699999999999
	.quad	0x4010c7f9d6f112fd              # double 4.1952889999999998
	.quad	0x400203608d08919f              # double 2.251649
	.quad	0x401968a4c1ebc83b              # double 6.3521910000000004
	.quad	0x401ba262cba732df              # double 6.9085799999999997
	.quad	0x4013731337eb28d8              # double 4.8623779999999996
	.quad	0x401c292684cf073a              # double 7.0401860000000003
	.quad	0x3ff9f252ce032db2              # double 1.621661
	.quad	0x401bf283d35eb745              # double 6.9868309999999996
	.quad	0x4016775e6362a5e8              # double 5.6165710000000004
	.quad	0x401df7ecfe9b7bf2              # double 7.4921150000000001
	.quad	0x3ffb0c0ad03d9a95              # double 1.6904399999999999
	.quad	0x40215590e23af31b              # double 8.6671209999999999
	.quad	0x3fea085b18548a9c              # double 0.81352000000000002
	.quad	0x4023d68661ae70c1              # double 9.9189939999999996
	.quad	0x3fc899524bfd2e94              # double 0.19217899999999999
	.quad	0x402083897204295a              # double 8.2569079999999992
	.quad	0x402137f1d81f1066              # double 8.6092669999999991
	.quad	0x40144b83cf2cf95d              # double 5.0737449999999997
	.quad	0x3fe5928e0c9d9d34              # double 0.67413999999999996
	.quad	0x402049dda059a73b              # double 8.1442689999999995
	.quad	0x40207d9b3d07c84b              # double 8.2453249999999993
	.quad	0x4012f902de00d1b7              # double 4.7431749999999999
	.quad	0x4012f8769ec2ce46              # double 4.7426399999999997
	.quad	0x3fd248c7192ea52f              # double 0.285692
	.quad	0x401bb9ccfaeff5c7              # double 6.9314460000000002
	.quad	0x3fb2580c308feac4              # double 0.071655999999999997
	.quad	0x401a507075b3e143              # double 6.5785539999999996
	.quad	0x401015a1cac08312              # double 4.0211249999999996
	.quad	0x401cfb0b7c3504c5              # double 7.2451610000000004
	.quad	0x4023d55757d5a9eb              # double 9.9166819999999997
	.quad	0x40208320b8066c2b              # double 8.2561090000000004
	.quad	0x40063dee78183f92              # double 2.78024
	.quad	0x40038e4b018611fd              # double 2.4444789999999998
	.quad	0x400e9bf93ff25e57              # double 3.8261590000000001
	.quad	0x40032b71b8aa0019              # double 2.3962129999999999
	.quad	0x400111feeb2d0a24              # double 2.1337869999999999
	.quad	0x4015e13fd0d0678c              # double 5.46997
	.quad	0x3fdd91eeaa6d2674              # double 0.462032
	.quad	0x4016c093532e7b3e              # double 5.6880620000000004
	.quad	0x40013d4e09784ec6              # double 2.1549339999999999
	.quad	0x40157c53f39d1b2e              # double 5.3714139999999997
	.quad	0x401c6f5126634118              # double 7.108708
	.quad	0x4021ac4b2b777d0f              # double 8.8365109999999998
	.quad	0x4013d2d234eb9a17              # double 4.9558799999999996
	.quad	0x4003bbb16c1e364c              # double 2.466647
	.quad	0x3fd4ac083126e979              # double 0.32300000000000001
	.quad	0x4021d499f1ae2da5              # double 8.9152369999999994
	.quad	0x40174c5f7c6759ab              # double 5.8245829999999996
	.quad	0x401504f69ca9ef52              # double 5.2548469999999998
	.quad	0x401ba76ff3ade226              # double 6.913513
	.quad	0x400543265add9c28              # double 2.657788
	.quad	0x40203def62f9ca5c              # double 8.1209670000000002
	.quad	0x4022f4ff0025bfad              # double 9.4785079999999997
	.quad	0x3ffbacb5350092cd              # double 1.729665
	.quad	0x401a48448cf7caa7              # double 6.5705739999999997
	.quad	0x4013d384ba0e8427              # double 4.9565609999999998
	.quad	0x4023532a6b0d9514              # double 9.662433
	.quad	0x40229ecedd484513              # double 9.3101719999999997
	.quad	0x40212f2b884406c0              # double 8.5921289999999999
	.quad	0x4011d908a265f0f6              # double 4.4619470000000003
	.quad	0x4023a060fe47991c              # double 9.8132400000000004
	.quad	0x4022e22df9378ee3              # double 9.4417570000000008
	.quad	0x400fa22b3892ee85              # double 3.9541840000000001
	.quad	0x4019df6124074645              # double 6.4681439999999997
	.quad	0x3fd877b395c42203              # double 0.38230599999999998
	.quad	0x4022901626b2f230              # double 9.2814189999999996
	.quad	0x400591769a91105e              # double 2.696027
	.quad	0x3ffbea8da7f3cf70              # double 1.744764
	.quad	0x4016732873bc903f              # double 5.6124590000000003
	.quad	0x4018c25fa658c4bd              # double 6.1898179999999998
	.quad	0x3ff0f1758e219653              # double 1.0589500000000001
	.quad	0x4022432b55ef1fde              # double 9.1311900000000001
	.quad	0x401604bb1af3a14d              # double 5.5046200000000001
	.quad	0x40229aef911cf356              # double 9.3026090000000003
	.quad	0x3fc54ba51a005c46              # double 0.16637099999999999
	.quad	0x3fff2687f455a7d2              # double 1.9469069999999999
	.quad	0x3fc2c38f36694899              # double 0.146593
	.quad	0x4011edfeb8d82342              # double 4.4824169999999999
	.quad	0x401f96b6177ea1c7              # double 7.8971790000000003
	.quad	0x3fe84d573647baaa              # double 0.75944100000000003
	.quad	0x3ffa9eecbfb15b57              # double 1.6637999999999999
	.quad	0x40134d43d03968d7              # double 4.8254539999999997
	.quad	0x4019f5cb35f3d7d4              # double 6.4900330000000004
	.quad	0x3fc917acc4ef88b9              # double 0.19603499999999999
	.quad	0x401bd76ee73e681b              # double 6.9603840000000003
	.quad	0x3ffac8d7e02645e5              # double 1.674034
	.quad	0x400e3c5a3e39f773              # double 3.7794690000000002
	.quad	0x3ffe76c58eeae9ee              # double 1.9039969999999999
	.quad	0x3ffc369a91105e1c              # double 1.763331
	.quad	0x401c02d05f288484              # double 7.0027480000000004
	.quad	0x40201cffc9795b36              # double 8.0566390000000006
	.quad	0x3ffa9d3458cd20b0              # double 1.6633800000000001
	.quad	0x401f0216c61522a7              # double 7.75204
	.quad	0x3ff19e76427c7c52              # double 1.1011869999999999
	.quad	0x401181c9f72f76e6              # double 4.3767469999999999
	.quad	0x401690995aaf78ff              # double 5.6412100000000001
	.quad	0x400710eb24a6a876              # double 2.8832610000000001
	.quad	0x3fd6b8c32a8c9b84              # double 0.35502699999999998
	.quad	0x401f43dbc23315d7              # double 7.8162679999999999
	.quad	0x3fa8db6a1e81cb47              # double 0.048549000000000002
	.quad	0x4000c778140dd3fe              # double 2.097397
	.quad	0x3fbd46d3f9e7b80b              # double 0.11436200000000001
	.quad	0x4023759ab6d00b46              # double 9.7296960000000006
	.quad	0x4001f34f82f51266              # double 2.2438039999999999
	.quad	0x4022bb502ababead              # double 9.3658459999999994
	.quad	0x4000c2edbb59ddc2              # double 2.09518
	.quad	0x40105eb463497b74              # double 4.0924849999999999
	.quad	0x3fdb7ac81d3aa36a              # double 0.429369
	.quad	0x4006d185cee17a03              # double 2.852306
	.quad	0x400faeed02cd39da              # double 3.960413
	.quad	0x3ff55c347e8ccdd9              # double 1.3350109999999999
	.quad	0x40161947cfa26a23              # double 5.5246880000000003
	.quad	0x400a08bb0a2ca9ac              # double 3.2542629999999999
	.quad	0x400b0e2b8c75c4a8              # double 3.3819189999999999
	.quad	0x40186f8487b99d45              # double 6.1089039999999999
	.quad	0x4023739f127f5e85              # double 9.7258230000000001
	.quad	0x4019b704790b8499              # double 6.4287280000000004
	.quad	0x40030cb5bb384fd3              # double 2.3812060000000002
	.quad	0x40188adea897635e              # double 6.1356149999999996
	.quad	0x3fe756494d50ebab              # double 0.72928300000000001
	.quad	0x401d3de0d66f0cfe              # double 7.3104279999999999
	.quad	0x402372a19439de48              # double 9.7238889999999997
	.quad	0x401833cf2cf95d4f              # double 6.0505950000000004
	.quad	0x401d1087ca643cc0              # double 7.2661429999999996
	.quad	0x4020648d7e02645e              # double 8.1963919999999995
	.quad	0x4008bf487fcb923a              # double 3.0933999999999999
	.quad	0x40151d8e432441ff              # double 5.2788630000000003
	.quad	0x401d7662fdfc19c1              # double 7.3656119999999996
	.quad	0x4023b2599ed7c6fc              # double 9.8483400000000003
	.quad	0x40230578a2a90cd4              # double 9.5106859999999997
	.quad	0x40166aa0cae642c0              # double 5.6041290000000004
	.quad	0x4021617b95a29414              # double 8.6903959999999997
	.quad	0x4010b8fc504816f0              # double 4.18065
	.quad	0x3fb025072085b185              # double 0.063064999999999996
	.quad	0x400dcc0485a0be51              # double 3.724618
	.quad	0x401a723571d1d474              # double 6.6115320000000004
	.quad	0x401f72bae03b3e9a              # double 7.8620409999999996
	.quad	0x401e320578e5c4eb              # double 7.5488489999999996
	.quad	0x40156e4bcad9ad86              # double 5.3577110000000001
	.quad	0x4014203ab862b27d              # double 5.0314740000000002
	.quad	0x400567a9e2bcf91a              # double 2.6756169999999999
	.quad	0x4007e527a20578e6              # double 2.9868920000000001
	.quad	0x4016f4827b6fe2e7              # double 5.7387790000000001
	.quad	0x40199f676ea4228a              # double 6.4056680000000004
	.quad	0x3ff7078c868b9fdc              # double 1.439343
	.quad	0x40225a54c5543287              # double 9.1764279999999996
	.quad	0x40239e44fa05143c              # double 9.80912
	.quad	0x4012d86f049a9974              # double 4.7113610000000001
	.quad	0x3ff69e30014f8b59              # double 1.4136200000000001
	.quad	0x4023d886bdf4c2b5              # double 9.9229029999999998
	.quad	0x3fe292d77318fc50              # double 0.58042499999999997
	.quad	0x4018a3ac929aa1d7              # double 6.1598379999999997
	.quad	0x400f909bf9c62a1b              # double 3.9456099999999998
	.quad	0x3fdad9d7774aba38              # double 0.41954599999999997
	.quad	0x400094c7f3493858              # double 2.0726469999999999
	.quad	0x402287edc7ef177a              # double 9.2654859999999992
	.quad	0x4016471de69ad42c              # double 5.5694499999999998
	.quad	0x400ab0507a6bd6e9              # double 3.3360910000000001
	.quad	0x4012908205ff1d82              # double 4.6411210000000001
	.quad	0x4010a4ce8101f31f              # double 4.1609439999999998
	.quad	0x401d9fa82e87d2c8              # double 7.4059150000000002
	.quad	0x40222497b7414a4d              # double 9.0714699999999997
	.quad	0x40202e9f6a93f291              # double 8.0910600000000006
	.quad	0x4021970c1333b96b              # double 8.7950140000000001
	.quad	0x40120e0ce0b912dc              # double 4.5137210000000003
	.quad	0x4000befb6dca07f6              # double 2.0932529999999998
	.quad	0x4014d66666666666              # double 5.2093749999999996
	.quad	0x40229fea8112ba17              # double 9.3123360000000002
	.quad	0x400e472fba01eeee              # double 3.7847590000000002
	.quad	0x4019709d495182aa              # double 6.3599750000000004
	.quad	0x4012b1697f1f9ad0              # double 4.673254
	.quad	0x3ff5692a30553261              # double 1.3381749999999999
	.quad	0x400aad413122b7bb              # double 3.334597
	.quad	0x4022c78f68be2f7b              # double 9.3897659999999998
	.quad	0x3ff21731098d477c              # double 1.1306620000000001
	.quad	0x4007303c07ee0b0b              # double 2.898552
	.quad	0x4017309784ec636b              # double 5.797453
	.quad	0x4021c687f455a7d2              # double 8.8877559999999995
	.quad	0x4001e62ed352220c              # double 2.2373940000000001
	.quad	0x400c9e492bc2fc69              # double 3.5772879999999998
	.quad	0x402241ee88df3733              # double 9.1287730000000007
	.quad	0x40044394face67d7              # double 2.5329989999999998
	.quad	0x3feebcf0b6b6e0d2              # double 0.96056399999999997
	.quad	0x401463affb04ee7c              # double 5.0973509999999997
	.quad	0x4006939fba450acc              # double 2.822082
	.quad	0x40233a26c3b927d4              # double 9.6135769999999993
	.quad	0x401a792ea52ef912              # double 6.6183420000000002
	.quad	0x401de2641b328b6e              # double 7.4710850000000004
	.quad	0x4002f65b20b8066c              # double 2.3702909999999999
	.quad	0x402112fcce1c5825              # double 8.5370849999999994
	.quad	0x401a8f75536933a0              # double 6.6400959999999998
	.quad	0x4005beb2074ea8da              # double 2.7181129999999998
	.quad	0x401e65ec3dab5c3a              # double 7.5995340000000002
	.quad	0x3fdae34fc610f0e9              # double 0.420124
	.quad	0x40149022dd7a99fa              # double 5.1407579999999999
	.quad	0x4020eb8583621fb0              # double 8.4600030000000004
	.quad	0x40039586ca89fc6e              # double 2.4480110000000002
	.quad	0x4009ad8a116659d1              # double 3.2097359999999999
	.quad	0x4023ddc4007570c5              # double 9.9331359999999992
	.quad	0x4013052157689ca2              # double 4.7550100000000004
	.quad	0x40212e75360d0247              # double 8.590738
	.quad	0x4023b385a4f00ef1              # double 9.8506289999999996
	.quad	0x4022657774aba387              # double 9.1981769999999994
	.quad	0x401ab8c7192ea52f              # double 6.680447
	.quad	0x400a7101b003686a              # double 3.3051789999999999
	.quad	0x4023536ed677707a              # double 9.6629550000000002
	.quad	0x4015afc86cebbba5              # double 5.4216629999999997
	.quad	0x400e5c49774256bd              # double 3.7950620000000002
	.quad	0x40094942d490e66d              # double 3.1607720000000001
	.quad	0x401c2799a1fd156a              # double 7.038672
	.quad	0x40233368f08461fa              # double 9.6004100000000001
	.quad	0x401768c5436b8f9b              # double 5.8523149999999999
	.quad	0x40025be4473cd573              # double 2.2948689999999998
	.quad	0x40100434e3369b9d              # double 4.0041079999999996
	.quad	0x40179ab92c061848              # double 5.901097
	.quad	0x401a02ff08893b7e              # double 6.5029260000000004
	.quad	0x3fef5275ee99a62f              # double 0.97881600000000001
	.quad	0x401a3628027d88c2              # double 6.5528870000000001
	.quad	0x4001b3c579f23465              # double 2.2127789999999998
	.quad	0x4022e9ec2ce46499              # double 9.4568799999999999
	.quad	0x400b58e53eb399f6              # double 3.4184060000000001
	.quad	0x3ffdaaf89c5e6ff8              # double 1.854241
	.quad	0x4013603eea209aaa              # double 4.8439899999999998
	.quad	0x3fef20e1f7d73c92              # double 0.97276399999999996
	.quad	0x400d6cd9e83e425b              # double 3.67815
	.quad	0x3ff7fc7607c419a0              # double 1.499136
	.quad	0x4011e77f27fe4bcb              # double 4.4760710000000001
	.quad	0x40141f383f0bae8a              # double 5.0304880000000001
	.quad	0x400d2db7281fd9ba              # double 3.647322
	.quad	0x40235fd60e94ee39              # double 9.6871799999999996
	.quad	0x4003f4dad31fcd25              # double 2.4945580000000001
	.quad	0x4021d43ce2089e34              # double 8.9145269999999996
	.quad	0x400cc74fb549f948              # double 3.5973199999999999
	.quad	0x401a845baf533f42              # double 6.6292559999999998
	.quad	0x3feed245b291b824              # double 0.96316800000000002
	.quad	0x3ff14906034f3fd9              # double 1.080328
	.quad	0x3fe5123a29c779a7              # double 0.65847500000000003
	.quad	0x4016919da9c99286              # double 5.6422030000000003
	.quad	0x4015fb8d3f1843c4              # double 5.4956560000000003
	.quad	0x40231aec0724b76f              # double 9.5525819999999992
	.quad	0x401bd0ee8d10f51b              # double 6.9540350000000002
	.quad	0x3fd1f05a708ede55              # double 0.28029500000000002
	.quad	0x40236e798958d9b6              # double 9.7157710000000002
	.quad	0x40214d38476f2a5a              # double 8.6508199999999995
	.quad	0x4016af2734f82f51              # double 5.6710479999999999
	.quad	0x402244a57a786c22              # double 9.1340749999999993
	.quad	0x401b44ee392e1ef7              # double 6.8173149999999998
	.quad	0x401c838583621fb0              # double 7.1284390000000002
	.quad	0x3fecaf5771001d5c              # double 0.89640399999999997
	.quad	0x400715a187a4a490              # double 2.8855620000000002
	.quad	0x4020fb73f316e371              # double 8.4911189999999994
	.quad	0x401a1078d92fb19e              # double 6.5160859999999996
	.quad	0x400a93797460242d              # double 3.322009
	.quad	0x4023a401e68a0d35              # double 9.8203270000000006
	.quad	0x3ff4d13e81450efe              # double 1.301085
	.quad	0x40009a54c5543287              # double 2.0753569999999999
	.quad	0x3ffc0f32378ab0c9              # double 1.7537100000000001
	.quad	0x40231d8ba40d90e2              # double 9.5577059999999996
	.quad	0x3fff64e26d4801f7              # double 1.9621299999999999
	.quad	0x401acdc7abfb9bed              # double 6.7009569999999998
	.quad	0x401bc430b178b370              # double 6.941592
	.quad	0x402292b1704ff434              # double 9.2865099999999998
	.quad	0x4017740a6b93ccd1              # double 5.863321
	.quad	0x400699a49c2c1b11              # double 2.825021
	.quad	0x401b497b30f8c650              # double 6.8217590000000001
	.quad	0x3ffa2d45e9185cee              # double 1.636053
	.quad	0x4006dc04c8bc9cd4              # double 2.8574310000000001
	.quad	0x40156ba493c89f41              # double 5.3551200000000003
	.quad	0x3ff4cc5b8dc55001              # double 1.299892
	.quad	0x4021205af6c69b5a              # double 8.5631939999999993
	.quad	0x40200ba0a5269596              # double 8.02271
	.quad	0x3ff2a6644d877250              # double 1.1656230000000001
	.quad	0x401cd3461309c800              # double 7.2063220000000001
	.quad	0x401b3c2938de6ddf              # double 6.808751
	.quad	0x401c4c0980b24207              # double 7.074255
	.quad	0x4013ba2b9d3cbc49              # double 4.9318070000000001
	.quad	0x4017c014f8b588e3              # double 5.9375799999999996
	.quad	0x4014213986338b48              # double 5.0324460000000002
	.quad	0x401ac9a38fbca106              # double 6.6969130000000003
	.quad	0x3fd0606b7aa25d8d              # double 0.25588499999999997
	.quad	0x3ffd28a6117720c9              # double 1.822424
	.quad	0x3ffc39756c93a711              # double 1.7640279999999999
	.quad	0x4015ff9f44d44567              # double 5.4996309999999999
	.quad	0x4007c901d19157ac              # double 2.9731480000000001
	.quad	0x40160b2cc70867ae              # double 5.5109130000000004
	.quad	0x402254a4b124d09a              # double 9.1653190000000002
	.quad	0x401ddbba12b5e52a              # double 7.4645770000000002
	.quad	0x40192b2b3461309c              # double 6.2921569999999996
	.quad	0x40037dfb0d51f81a              # double 2.4365139999999998
	.quad	0x402267548ecd8dbd              # double 9.2018170000000001
	.quad	0x401df04534bd76ee              # double 7.4846389999999996
	.quad	0x40201c15097c8084              # double 8.0548479999999997
	.quad	0x40176c579f234656              # double 5.8558029999999999
	.quad	0x4019a59641f64495              # double 6.4117059999999997
	.quad	0x401960ef99806f26              # double 6.3446639999999999
	.quad	0x4012e283d35eb745              # double 4.7212059999999996
	.quad	0x400f648d7e02645e              # double 3.9240979999999999
	.quad	0x402220a9de8b3b32              # double 9.063796
	.quad	0x402105c70435efa6              # double 8.5112839999999998
	.quad	0x3ff7cf6598e10cf6              # double 1.4881340000000001
	.quad	0x40167abfb9bed30f              # double 5.619872
	.quad	0x401e6771c970f7ba              # double 7.6010200000000001
	.quad	0x3ff9a6e5471715c6              # double 1.6032459999999999
	.quad	0x401f66d0917d6b66              # double 7.8504050000000003
	.quad	0x401584db163baba8              # double 5.3797420000000002
	.quad	0x40025246bf01322f              # double 2.2901739999999999
	.quad	0x3ffaa14bdfd2630f              # double 1.6643790000000001
	.quad	0x400b8909289dadfb              # double 3.4419119999999999
	.quad	0x3ff706ae3a3a8e71              # double 1.4391309999999999
	.quad	0x4013f5b78cc9a77e              # double 4.9899579999999997
	.quad	0x3fe84020817fc760              # double 0.75782799999999994
	.quad	0x4010cfa05143bf72              # double 4.2027599999999996
	.quad	0x400870b84988094e              # double 3.0550389999999998
	.quad	0x40164606317268d3              # double 5.5683829999999999
	.quad	0x401c3df86e3b46fe              # double 7.0605180000000001
	.quad	0x40111abb01c92ddc              # double 4.2761040000000001
	.quad	0x40068527a20578e6              # double 2.8150170000000001
	.quad	0x4022a8611fd5885d              # double 9.3288659999999997
	.quad	0x401b0c31df761cbd              # double 6.7619090000000002
	.quad	0x4006e05143bf7271              # double 2.8595299999999999
	.quad	0x40220fc86cebbba5              # double 9.0308259999999994
	.quad	0x40003e6ddf00abf7              # double 2.0304829999999998
	.quad	0x40207bbecaab8a5d              # double 8.2416900000000002
	.quad	0x40198cfc3f811f4f              # double 6.3876809999999997
	.quad	0x401abe221c8a7a42              # double 6.6856770000000001
	.quad	0x401b490d5a5b9629              # double 6.8213400000000002
	.quad	0x4004efe82517e77d              # double 2.6171419999999999
	.quad	0x40238d28283d35eb              # double 9.7756969999999991
	.quad	0x4023605e3da2f8be              # double 9.6882190000000001
	.quad	0x4020b8537e2c55c9              # double 8.3600119999999993
	.quad	0x4021a5bbe0157eed              # double 8.8236989999999995
	.quad	0x401a20b1feeb2d0a              # double 6.5319289999999999
	.quad	0x401ddf1d81f10668              # double 7.467886
	.quad	0x4013b042528ae74f              # double 4.9221279999999998
	.quad	0x40104c8216c61523              # double 4.0747150000000003
	.quad	0x4020810fb65668c2              # double 8.2520729999999993
	.quad	0x401f193ab430f495              # double 7.7746380000000003
	.quad	0x401dba47ecfe9b7c              # double 7.431915
	.quad	0x401b40bed740c415              # double 6.8132279999999996
	.quad	0x40142e7c49fd7a14              # double 5.0453960000000002
	.quad	0x4020474256bca537              # double 8.1391779999999994
	.quad	0x401cf8d32830a0b2              # double 7.2429930000000002
	.quad	0x40224e81a9b8cb8e              # double 9.1533329999999999
	.quad	0x400770a6fc58ab93              # double 2.9300060000000001
	.quad	0x4010bf28c79f6662              # double 4.1866789999999998
	.quad	0x3ff18091c087442c              # double 1.0938889999999999
	.quad	0x401888637bd05af7              # double 6.1331920000000002
	.quad	0x4017b5d31337eb29              # double 5.9275630000000001
	.quad	0x4012492c061847f5              # double 4.5714569999999997
	.quad	0x401367e23f24d8fd              # double 4.8514489999999997
	.quad	0x40063116a8b8f14e              # double 2.7739690000000001
	.quad	0x400f45fb71fbc5df              # double 3.9091710000000002
	.quad	0x40117d25247cb70b              # double 4.3722120000000002
	.quad	0x4017c7ce95faa8a8              # double 5.9451239999999999
	.quad	0x3ffcaeea63b688be              # double 1.7927040000000001
	.quad	0x401b54677b395c42              # double 6.8324259999999999
	.quad	0x4014bad31fcd24e1              # double 5.1824459999999997
	.quad	0x4000aa643cc07aaf              # double 2.083199
	.quad	0x4018a9ff4fd6d7e9              # double 6.1660130000000004
	.quad	0x3fe910d173fb7a5f              # double 0.78330299999999997
	.quad	0x3fe35759ee88df37              # double 0.60441299999999998
	.quad	0x4017290c0ad03d9b              # double 5.7900850000000004
	.quad	0x3ffd38583621fafd              # double 1.8262560000000001
	.quad	0x3ffd2c11a11233df              # double 1.823259
	.quad	0x40166dba0a526959              # double 5.6071549999999997
	.quad	0x3fedfeb28d8665e0              # double 0.93734099999999997
	.quad	0x40108dd8b60f1b26              # double 4.138522
	.quad	0x4013ff6f08cc575c              # double 4.999447
	.quad	0x4013dd4e09784ec6              # double 4.9661179999999998
	.quad	0x4010db599aa60914              # double 4.2142090000000003
	.quad	0x40205b61dc93ea2d              # double 8.1784809999999997
	.quad	0x3fbc725c3dee7818              # double 0.11112
	.quad	0x3ffc94cb9ecf6380              # double 1.786327
	.quad	0x3fdc65a9a8049668              # double 0.44370500000000002
	.quad	0x400abb56b8737974              # double 3.3414739999999998
	.quad	0x3fc2e7253da72a7c              # double 0.147679
	.quad	0x3ff5b8e7ddca4b12              # double 1.3576429999999999
	.quad	0x400f1634549b62c7              # double 3.8858419999999998
	.quad	0x400010d413122b7c              # double 2.0082170000000001
	.quad	0x3fd6fede97d06bbe              # double 0.35930600000000001
	.quad	0x401e7138fffbce42              # double 7.6105689999999999
	.quad	0x4022b0cfe154434e              # double 9.3453359999999996
	.quad	0x3fe0e1a8262456f7              # double 0.52754599999999996
	.quad	0x4021331209edbf8c              # double 8.5997470000000006
	.quad	0x40166ef62f9ca5be              # double 5.6083610000000004
	.quad	0x400d3dedf1e0828c              # double 3.6552389999999999
	.quad	0x40216672756861e9              # double 8.7000919999999997
	.quad	0x401a4a7d24180d3d              # double 6.572743
	.quad	0x4011efdd22856606              # double 4.4842420000000001
	.quad	0x4014bf6f08cc575c              # double 5.186947
	.quad	0x400e8b042528ae75              # double 3.817879
	.quad	0x401fa8adab9f559b              # double 7.9147249999999997
	.quad	0x400ec364bec679cc              # double 3.8454069999999998
	.quad	0x4017b1f6cacd184c              # double 5.9237929999999999
	.quad	0x40226c226809d495              # double 9.2111999999999998
	.quad	0x40218591eeaa6d26              # double 8.7608789999999992
	.quad	0x400fc54823854046              # double 3.9713289999999999
	.quad	0x3fea470435efa616              # double 0.82116900000000004
	.quad	0x401d46256366d7a5              # double 7.3185019999999996
	.quad	0x3ffa13bc0a06e9ff              # double 1.629818
	.quad	0x4014b6f0cfe15443              # double 5.1786529999999997
	.quad	0x40124516db0dd830              # double 4.5674700000000001
	.quad	0x401f7eb24a6a875d              # double 7.8737269999999996
	.quad	0x40065e5753a3ec03              # double 2.796065
	.quad	0x3fed6c6bce8533b1              # double 0.919485
	.quad	0x4018ad2e514c22ee              # double 6.1691219999999998
	.quad	0x401d3e70c1333b97              # double 7.3109770000000003
	.quad	0x400682be0589acbd              # double 2.8138390000000002
	.quad	0x3ff32bcc6c54bcf1              # double 1.1981930000000001
	.quad	0x401c8578e5c4eb57              # double 7.130344
	.quad	0x401a7e957470eb25              # double 6.6236170000000003
	.quad	0x4002a64b2314013f              # double 2.3311980000000001
	.quad	0x40148148fd9fd36f              # double 5.1262549999999996
	.quad	0x40088583e8576cce              # double 3.0651929999999998
	.quad	0x4020b8fa15db3398              # double 8.3612830000000002
	.quad	0x4012b97c80841ede              # double 4.6811389999999999
	.quad	0x4013b442c7fbacb4              # double 4.9260359999999999
	.quad	0x3fedac3009b30729              # double 0.92726900000000001
	.quad	0x4021b034d26fa3fd              # double 8.8441530000000004
	.quad	0x3fe472abef06b378              # double 0.63899799999999995
	.quad	0x401e4878316a0557              # double 7.5707709999999996
	.quad	0x401735510d38cda7              # double 5.8020670000000001
	.quad	0x40160c10d7be9857              # double 5.5117830000000003
	.quad	0x4021a4c5b8dc5500              # double 8.8218209999999999
	.quad	0x401c4e9ff0cbaf96              # double 7.0767819999999997
	.quad	0x4019c6ba8c586877              # double 6.4440710000000001
	.quad	0x4018ed3ae685db77              # double 6.2316700000000003
	.quad	0x3ff606cca2db61bb              # double 1.37666
	.quad	0x3fd17c6327ed84d3              # double 0.27321699999999999
	.quad	0x4015a7d45a5fc7e7              # double 5.4138960000000003
	.quad	0x40110bc2b94d9408              # double 4.2614850000000004
	.quad	0x402210ba83f4eca7              # double 9.0326730000000008
	.quad	0x40081d5885d31338              # double 3.014329
	.quad	0x40206ea8112ba16e              # double 8.2161259999999992
	.quad	0x400afbaba7b9170d              # double 3.3728859999999998
	.quad	0x400ccf32378ab0c9              # double 3.6011700000000002
	.quad	0x4022031487768167              # double 9.0060160000000007
	.quad	0x3fe8529bae46cfc8              # double 0.76008399999999998
	.quad	0x4020e697f1f9ad00              # double 8.4503780000000006
	.quad	0x3ffc0b1ee2435697              # double 1.752715
	.quad	0x400ee6fe718a86d7              # double 3.8627899999999999
	.quad	0x401003037d63022e              # double 4.0029430000000001
	.quad	0x3ffa28c26138fffc              # double 1.634951
	.quad	0x401a13f7ced91687              # double 6.5194999999999999
	.quad	0x401b941e57d9dba9              # double 6.894647
	.quad	0x401a9357a355043e              # double 6.6438889999999997
	.quad	0x401c22018a43bb41              # double 7.0332090000000003
	.quad	0x402391a60d4562e1              # double 9.7844700000000006
	.quad	0x40105bf6e3f78bbd              # double 4.0898089999999998
	.quad	0x40204be4abe6a338              # double 8.1482290000000006
	.quad	0x40186c54bcf0b6b7              # double 6.1057920000000001
	.quad	0x3fc93edd8b60f1b2              # double 0.19723099999999999
	.quad	0x4002a555c52e72da              # double 2.33073
	.quad	0x4021e1d712a0ec74              # double 8.9410939999999996
	.quad	0x4012b2ae4b018612              # double 4.674493
	.quad	0x402132e3a3a8e714              # double 8.5993929999999991
	.quad	0x4017d16659d12cae              # double 5.9544920000000001
	.quad	0x401da468448cf7cb              # double 7.4105540000000003
	.quad	0x3ff777be121ee675              # double 1.466734
	.quad	0x40196d35eb7457c1              # double 6.3566510000000003
	.quad	0x3ffb2877ee4e26d5              # double 1.6973800000000001
	.quad	0x3fed263f9a49c2c2              # double 0.91091900000000003
	.quad	0x40131fecdd0d8cb0              # double 4.7811769999999996
	.quad	0x4012430ced4e4c94              # double 4.5654789999999998
	.quad	0x400695e7c8d19589              # double 2.8231959999999998
	.quad	0x4021abdbc23315d7              # double 8.835661
	.quad	0x4013a440f2389720              # double 4.9104039999999998
	.quad	0x40109d25247cb70b              # double 4.1534620000000002
	.quad	0x4009af1dc50ce4eb              # double 3.2105060000000001
	.quad	0x4020628da7f3cf70              # double 8.1924869999999999
	.quad	0x4021b30ccbc05d53              # double 8.8497070000000004
	.quad	0x40201145953586cb              # double 8.0337340000000008
	.quad	0x3fffdc6195464dc2              # double 1.991304
	.quad	0x402015ee34fc610f              # double 8.0428329999999999
	.quad	0x400a4c918e325d4a              # double 3.2873869999999998
	.quad	0x4010e3061c79b34a              # double 4.2217029999999998
	.quad	0x401d0a719b4dcec0              # double 7.2601990000000001
	.quad	0x3fdf92b7fe08aefb              # double 0.49332999999999999
	.quad	0x3ffe8a48f96e1587              # double 1.9087609999999999
	.quad	0x3fee7190d173fb7a              # double 0.95136299999999996
	.quad	0x3fdd7ce0fc2eba28              # double 0.46074700000000002
	.quad	0x4009e792d1287c20              # double 3.238073
	.quad	0x401e42a8869c66d3              # double 7.5650959999999995
	.quad	0x40091b81b64e0547              # double 3.1384310000000002
	.quad	0x401b4185058dde7a              # double 6.8139839999999996
	.quad	0x3fe66c460ed80a18              # double 0.70071700000000003
	.quad	0x40158376922d948e              # double 5.3783820000000002
	.quad	0x4001400eae18ac9f              # double 2.1562779999999999
	.quad	0x401fc7cd466f501a              # double 7.945119
	.quad	0x400d19ba1b1960fa              # double 3.637562
	.quad	0x400d890257c914b1              # double 3.6918989999999998
	.quad	0x401a8e6b8305d95e              # double 6.6390820000000001
	.quad	0x3ffa533c1ce6c094              # double 1.645321
	.quad	0x401c3201cd5f99c4              # double 7.0488350000000004
	.quad	0x400e9b7739f340d5              # double 3.8259110000000001
	.quad	0x4021ee5dbfceb789              # double 8.9655590000000007
	.quad	0x4002bb66f9335d25              # double 2.3415050000000002
	.quad	0x40023fdd65a14489              # double 2.2811840000000001
	.quad	0x4019571b0468448d              # double 6.335064
	.quad	0x401395bbbe878fac              # double 4.8962240000000001
	.quad	0x3ff062749f0e4da1              # double 1.0240370000000001
	.quad	0x40178efd86a8fc0d              # double 5.8896389999999998
	.quad	0x401c2f5126634118              # double 7.046208
	.quad	0x3fd8a98aa8650e78              # double 0.38534800000000002
	.quad	0x40228cfa05143bf7              # double 9.2753449999999997
	.quad	0x3ff0fdaf8df7a4e8              # double 1.0619350000000001
	.quad	0x401c97564302b40f              # double 7.1477899999999996
	.quad	0x4019cd0635a426bb              # double 6.4502189999999997
	.quad	0x4020c651b0ccbc06              # double 8.3873420000000003
	.quad	0x3fff7b341e14bdfd              # double 1.967579
	.quad	0x4021e7daa4fca42b              # double 8.9528400000000001
	.quad	0x40110327674d1633              # double 4.2530799999999997
	.quad	0x4000af166e008e9b              # double 2.0854919999999999
	.quad	0x3ff98a643cc07aaf              # double 1.596287
	.quad	0x401797225b749add              # double 5.8975920000000004
	.quad	0x3ffe9da7b0b39192              # double 1.9134899999999999
	.quad	0x40116daf07bfe7e2              # double 4.357113
	.quad	0x401a053586ca89fc              # double 6.5050869999999996
	.quad	0x401db3c74fb549f9              # double 7.4255649999999997
	.quad	0x4010be6687f455a8              # double 4.1859380000000002
	.quad	0x4022dc7cfa26a22b              # double 9.4306409999999996
	.quad	0x40238a1ab4b72c52              # double 9.7697350000000007
	.quad	0x4003dd52c16df3f9              # double 2.4830679999999998
	.quad	0x3ffff67903211cb0              # double 1.9976739999999999
	.quad	0x4011f719b4dcebff              # double 4.4913090000000002
	.quad	0x402095e892253112              # double 8.2927900000000001
	.quad	0x401faaab8a5ce5b4              # double 7.9166699999999999
	.quad	0x40179e9ccb7d4174              # double 5.9048949999999998
	.quad	0x401f6c09c3ce208a              # double 7.8555060000000001
	.quad	0x4006e5510d38cda7              # double 2.861971
	.quad	0x4021c7e9d94d0dd0              # double 8.8904560000000004
	.quad	0x400ee1d323fee2ca              # double 3.8602660000000002
	.quad	0x40215c093d966384              # double 8.6797579999999996
	.quad	0x400254a5df2239e7              # double 2.2913320000000001
	.quad	0x4022b0667f90d9d7              # double 9.3445319999999992
	.quad	0x401d99e8c47a17f4              # double 7.4003019999999999
	.quad	0x400d128c79f66623              # double 3.6340569999999999
	.quad	0x4008b57c4e2f37fc              # double 3.088616
	.quad	0x401da115df6555c5              # double 7.4073099999999998
	.quad	0x3febf02e6644d877              # double 0.87306899999999998
	.quad	0x4004cdb940fecdd1              # double 2.6004510000000001
	.quad	0x4023078a2a90cd42              # double 9.5147259999999996
	.quad	0x401c2b70ac3a860e              # double 7.0424220000000002
	.quad	0x4022caa90cd423d9              # double 9.3958209999999997
	.quad	0x3feaeda0168b5cc0              # double 0.84150700000000001
	.quad	0x4023dbe1c9b41398              # double 9.9294569999999993
	.quad	0x400d354195cc857f              # double 3.6510039999999999
	.quad	0x401c277f27fe4bcb              # double 7.0385710000000001
	.quad	0x3fef444bf4cb1898              # double 0.97708700000000003
	.quad	0x40107457c0b13598              # double 4.1136160000000004
	.quad	0x3ff713cddd6e04c0              # double 1.4423349999999999
	.quad	0x3fd9b7ed41b75a75              # double 0.40185100000000001
	.quad	0x4020b7f609dcf894              # double 8.359299
	.quad	0x401f80f1f57b41c0              # double 7.8759230000000002
	.quad	0x3ff46202539756c9              # double 1.2739279999999999
	.quad	0x401209c99285a922              # double 4.5095580000000002
	.quad	0x400528754f3775b8              # double 2.644755
	.quad	0x40233fd7c2ca148c              # double 9.6246930000000006
	.quad	0x4018804f6dfc5cdd              # double 6.1253029999999997
	.quad	0x400e1220ff540896              # double 3.7588520000000001
	.quad	0x3fffc36976bc1f00              # double 1.9852080000000001
	.quad	0x3ff24b7b28954a80              # double 1.1434280000000001
	.quad	0x4003c460ed80a17b              # double 2.470888
	.quad	0x40225299d883ba34              # double 9.1613299999999995
	.quad	0x40074b9991361dc9              # double 2.9119139999999999
	.quad	0x4011988c1db0142f              # double 4.3989719999999997
	.quad	0x3fdec38b04ab606b              # double 0.48068499999999997
	.quad	0x40045c18b502abac              # double 2.544969
	.quad	0x401f5ecaeea63b69              # double 7.8425710000000004
	.quad	0x4010f95421c04428              # double 4.2434849999999997
	.quad	0x400667e52157689d              # double 2.8007300000000002
	.quad	0x4011275ff609dcf9              # double 4.2884520000000004
	.quad	0x401cd0129cbab64a              # double 7.2031960000000002
	.quad	0x3ff42ec6bce8533b              # double 1.26142
	.quad	0x401f2681ecd4aa11              # double 7.7876050000000001
	.quad	0x400ff345069a4df4              # double 3.9937839999999998
	.quad	0x3ff699f1ae2da555              # double 1.4125840000000001
	.quad	0x401c00232096787d              # double 7.0001340000000001
	.quad	0x3ff49a597d49d7ba              # double 1.2876829999999999
	.quad	0x3fedc1a6937d1fe6              # double 0.92988899999999997
	.quad	0x400a0b6d00b45ae6              # double 3.255579
	.quad	0x3ffe9c714fce746d              # double 1.9131940000000001
	.quad	0x4017c5604189374c              # double 5.9427500000000002
	.quad	0x401fbe39713ad5bf              # double 7.935766
	.quad	0x401432acb85a4f01              # double 5.0494870000000001
	.quad	0x3f9753e707e175d1              # double 0.022780999999999999
	.quad	0x401b5ddce7cd0353              # double 6.8416629999999996
	.quad	0x400a411c2a023209              # double 3.2817919999999998
	.quad	0x401cd8dbcec84f90              # double 7.2117760000000004
	.quad	0x401fd77ea1c68ec5              # double 7.9604439999999998
	.quad	0x4003638b04ab606b              # double 2.4236049999999998
	.quad	0x401c35393250b524              # double 7.0519759999999998
	.quad	0x40013e58e64b2314              # double 2.155443
	.quad	0x401cc7c30d306a2b              # double 7.1950799999999999
	.quad	0x400facacd184c272              # double 3.959314
	.quad	0x3fe75ff3f0fe047d              # double 0.73046299999999997
	.quad	0x401e9eff5c6c11a1              # double 7.6552709999999999
	.quad	0x3fe06e41919ac797              # double 0.513459
	.quad	0x401b169c23b7952d              # double 6.7720799999999999
	.quad	0x40143f7b9e060fe4              # double 5.0619949999999996
	.quad	0x4004b4549b62c775              # double 2.5880519999999998
	.quad	0x400776e58a32f449              # double 2.933055
	.quad	0x402090cc78e9f6a9              # double 8.2828099999999996
	.quad	0x400a36c0d6f544bb              # double 3.276735
	.quad	0x40234e21d96e9bbf              # double 9.6526019999999999
	.quad	0x4005452ef911cf35              # double 2.6587809999999998
	.quad	0x3fc9ec56d5cfaace              # double 0.20252500000000001
	.quad	0x4006b660e51d25ab              # double 2.8390520000000001
	.quad	0x4006895a6c5d206d              # double 2.8170670000000002
	.quad	0x40228276534373f3              # double 9.2548089999999998
	.quad	0x4004d286b59146e5              # double 2.6027960000000001
	.quad	0x4006a6c7eae5bc88              # double 2.8314360000000001
	.quad	0x4022852178f68be3              # double 9.2600210000000001
	.quad	0x401b43d145d85165              # double 6.8162279999999997
	.quad	0x4016f2556d19dece              # double 5.7366539999999997
	.quad	0x3ff86c508b32ce89              # double 1.5264439999999999
	.quad	0x4010d3779e9d0e99              # double 4.2065109999999999
	.quad	0x3ffd94467381d7dc              # double 1.8487
	.quad	0x40209dcd4ed2cbea              # double 8.3082069999999995
	.quad	0x401b820c49ba5e35              # double 6.8769999999999998
	.quad	0x4016f878b7a1c25d              # double 5.742648
	.quad	0x400bebf4cb1897a6              # double 3.4902129999999998
	.quad	0x3ff07193f6c2699c              # double 1.0277289999999999
	.quad	0x401ed5b9e8c47a18              # double 7.708717
	.quad	0x4017b13be22e5de1              # double 5.9230799999999997
	.quad	0x40215c2f1ed17c5f              # double 8.6800470000000001
	.quad	0x401a675c0767d34e              # double 6.6009370000000001
	.quad	0x3ffe405e5f30e7ff              # double 1.8907149999999999
	.quad	0x401d7055fbb517a4              # double 7.3597029999999997
	.quad	0x400e2540cc78e9f7              # double 3.7681900000000002
	.quad	0x40102bf4cb1897a6              # double 4.0429259999999996
	.quad	0x401b07c5ef62f9ca              # double 6.7575909999999997
	.quad	0x40080bbba55d1c3b              # double 3.0057290000000001
	.quad	0x3ff19e9f2778140e              # double 1.101226
	.quad	0x3ff1ea1a500d5e8d              # double 1.1196539999999999
	.quad	0x400b95e7c8d19589              # double 3.4481959999999998
	.quad	0x3fe3fdcdf6987831              # double 0.62473199999999995
	.quad	0x4005e8909289dae0              # double 2.7385570000000001
	.quad	0x40207676a7264a17              # double 8.2313740000000006
	.quad	0x3ff80a222d5171e3              # double 1.5024740000000001
	.quad	0x402327689ca18bd6              # double 9.5769699999999993
	.quad	0x3fed8ffb8b263950              # double 0.92382600000000004
	.quad	0x4013ed2630ec3116              # double 4.9815909999999999
	.quad	0x4019ca704bc27632              # double 6.4476940000000003
	.quad	0x3ff8fcfc3f811f4f              # double 1.5617639999999999
	.quad	0x401c131b9b66f933              # double 7.0186599999999997
	.quad	0x401b32e3821af7d3              # double 6.799696
	.quad	0x401a62862f5989df              # double 6.5962149999999999
	.quad	0x401e0612839042d9              # double 7.5059300000000002
	.quad	0x4006ab3892ee84ad              # double 2.8336039999999998
	.quad	0x401ac3fd933e35c6              # double 6.6913970000000003
	.quad	0x4004c49129888f86              # double 2.59598
	.quad	0x3fc0805a2d72ffd2              # double 0.128917
	.quad	0x40209a1858bc59b8              # double 8.300967
	.quad	0x402189f05ea24cc7              # double 8.7694120000000009
	.quad	0x3fee123e5b8561d4              # double 0.93972699999999997
	.quad	0x40135574b407032a              # double 4.8334530000000004
	.quad	0x4021cf24b76f6d76              # double 8.9045769999999997
	.quad	0x40234a57c914b168              # double 9.6452010000000001
	.quad	0x40102c404a72ead9              # double 4.0432139999999999
	.quad	0x4001f3e1c9b41398              # double 2.2440829999999998
	.quad	0x4000546887a8d64d              # double 2.0412149999999998
	.quad	0x401a73b8e4b87bdd              # double 6.6130100000000001
	.quad	0x4022b64abe6a337b              # double 9.3560390000000008
	.quad	0x401965a5332acfb7              # double 6.3492629999999997
	.quad	0x3fe89ffb480a5acd              # double 0.76952900000000002
	.quad	0x3faa1b7e0ac7da1f              # double 0.050991000000000002
	.quad	0x3fef795f676ea423              # double 0.98356600000000005
	.quad	0x3fef6d7c6fbd273d              # double 0.98211499999999996
	.quad	0x401d2faacd9e83e4              # double 7.2965499999999999
	.quad	0x40190b7b6bb12902              # double 6.2612129999999997
	.quad	0x4023d0676a7264a1              # double 9.9070389999999992
	.quad	0x4014ddaceee0f3cb              # double 5.2164799999999998
	.quad	0x4008db1c0010c6f8              # double 3.1069870000000002
	.quad	0x3ffa79d909f1f14a              # double 1.6547480000000001
	.quad	0x400a46a098915bdd              # double 3.2844859999999998
	.quad	0x4019749f51697f20              # double 6.3638890000000004
	.quad	0x3ffd9db22d0e5604              # double 1.851
	.quad	0x40030e557de0d66f              # double 2.381999
	.quad	0x400bc48b65237048              # double 3.4709690000000002
	.quad	0x3ff9c026cc1ca3a5              # double 1.6094120000000001
	.quad	0x3fd1b8c75c4a83b2              # double 0.27690300000000001
	.quad	0x3fe78913a4f8726d              # double 0.735483
	.quad	0x401fc07357e670e3              # double 7.9379400000000002
	.quad	0x401ba810e8858ff7              # double 6.9141269999999997
	.quad	0x40166052934acaff              # double 5.5940649999999996
	.quad	0x400d77edc7ef177a              # double 3.6835589999999998
	.quad	0x40236dcb35f3d7d4              # double 9.7144410000000007
	.quad	0x3fbe3dc486ad2dcb              # double 0.11813
	.quad	0x40233bca31e7d999              # double 9.6167770000000007
	.quad	0x4012a7d4e09784ec              # double 4.6638979999999997
	.quad	0x4022d1f44d445671              # double 9.4100669999999997
	.quad	0x3feee61cffeb074a              # double 0.96558999999999995
	.quad	0x4019da66559f6ec6              # double 6.4632810000000003
	.quad	0x4019bc0c62e4d1a6              # double 6.4336409999999997
	.quad	0x400e0ed80a17b0f7              # double 3.7572480000000001
	.quad	0x3fda37c99ae924f2              # double 0.40965499999999999
	.quad	0x4013330c67168f8e              # double 4.7998519999999996
	.quad	0x4015d0d9d7774aba              # double 5.4539559999999998
	.quad	0x401899731098d478              # double 6.1498530000000002
	.quad	0x4016b3415b1422cd              # double 5.6750540000000003
	.quad	0x40078a454de7ea60              # double 2.9425150000000002
	.quad	0x401415d7cb2d905c              # double 5.021331
	.quad	0x40117e26916440f2              # double 4.3731939999999998
	.quad	0x4018bc3e3193f6c2              # double 6.1838309999999996
	.quad	0x3fef4e4a7b4e54f8              # double 0.97830700000000003
	.quad	0x400f2e3a3a8e7147              # double 3.8975719999999998
	.quad	0x401f76b97fe8ee6c              # double 7.8659420000000004
	.quad	0x40101fbf401c4fc2              # double 4.0310030000000001
	.quad	0x3fe16236c15d2d02              # double 0.54323900000000003
	.quad	0x40133b8b26394fad              # double 4.8081480000000001
	.quad	0x4023cd5e28aa4335              # double 9.9011089999999999
	.quad	0x400c62c77574f723              # double 3.5482320000000001
	.quad	0x4020a3e0bd44998d              # double 8.320074
	.quad	0x40219d3cbc48f10b              # double 8.8071040000000007
	.quad	0x4013ac87db2b3461              # double 4.9184869999999998
	.quad	0x400a9771001d5c31              # double 3.3239459999999998
	.quad	0x4023e84a2fcefaa4              # double 9.9536909999999991
	.quad	0x4012e1d8622c4502              # double 4.7205519999999996
	.quad	0x401dc1804d983947              # double 7.4389659999999997
	.quad	0x4003984449dbec25              # double 2.4493490000000002
	.quad	0x40215b86d2ed783e              # double 8.678763
	.quad	0x40020ca3e7d13511              # double 2.2561719999999998
	.quad	0x40221a515ce9e5e2              # double 9.0514019999999995
	.quad	0x400c584901d19158              # double 3.5431080000000001
	.quad	0x40233358d1526d8b              # double 9.6002869999999997
	.quad	0x401da5cfaacd9e84              # double 7.4119250000000001
	.quad	0x4017d8055fbb517a              # double 5.9609579999999998
	.quad	0x4004a9142b302f73              # double 2.5825580000000001
	.quad	0x401db49d388a8b09              # double 7.4263810000000001
	.quad	0x40228dafd113836b              # double 9.2767320000000009
	.quad	0x400cbd651b0ccbc0              # double 3.5924779999999998
	.quad	0x3feae4d3bf2f5558              # double 0.84043299999999999
	.quad	0x4023746173b85e81              # double 9.7273060000000004
	.quad	0x40209575c0767d35              # double 8.2919140000000002
	.quad	0x401762d3415b1423              # double 5.8465090000000002
	.quad	0x400fd2253111f0c3              # double 3.9776099999999999
	.quad	0x3ff444d013a92a30              # double 1.2667999999999999
	.quad	0x402011320d9945b7              # double 8.0335850000000004
	.quad	0x40152df47f993d53              # double 5.2948779999999998
	.quad	0x4006040a6b93ccd1              # double 2.751973
	.quad	0x400b8ec52a411c2a              # double 3.444712
	.quad	0x4005c3a9f383f0bb              # double 2.720539
	.quad	0x4023aa170931012a              # double 9.8322070000000004
	.quad	0x400a2710cb295e9e              # double 3.269075
	.quad	0x3fff6ea63b688bdb              # double 1.9645140000000001
	.quad	0x40235aa582dbe7f3              # double 9.6770440000000004
	.quad	0x40028b9884c6a3be              # double 2.3181620000000001
	.quad	0x4020fa47021d10b2              # double 8.488823
	.quad	0x3fdef1bac2df0d41              # double 0.48350399999999999
	.quad	0x402112a66dbd72bd              # double 8.5364260000000005
	.quad	0x4011ce33eff19503              # double 4.4513699999999998
	.quad	0x401fe8a3f8982cb2              # double 7.9771879999999999
	.quad	0x400cb0ec31162281              # double 3.5863879999999999
	.quad	0x4011422d5171e29b              # double 4.3146259999999996
	.quad	0x401c46f36ef80560              # double 7.0692880000000002
	.quad	0x40103536d655e28b              # double 4.0519670000000003
	.quad	0x401fe19a847b2464              # double 7.9703160000000004
	.quad	0x401785696e58a32f              # double 5.8802849999999998
	.quad	0x400368b9fdbd2fa1              # double 2.4261360000000001
	.quad	0x3ff9020c49ba5e35              # double 1.5629999999999999
	.quad	0x4015fa4228997c3d              # double 5.4943929999999996
	.quad	0x401bf9bbf0dc768e              # double 6.993881
	.quad	0x400c3421c044284e              # double 3.525455
	.quad	0x4007810d7be9856a              # double 2.9380139999999999
	.quad	0x400a44f54d1e96c4              # double 3.283671
	.quad	0x400abc7b45f17bd9              # double 3.3420320000000001
	.quad	0x3ff8a53868fd199c              # double 1.5403370000000001
	.quad	0x402387190d173fb8              # double 9.7638630000000006
	.quad	0x401c17ecfe9b7bf2              # double 7.0233650000000001
	.quad	0x3ff7b9e8c47a17f4              # double 1.482888
	.quad	0x4021f96b54e2b064              # double 8.9871470000000002
	.quad	0x4013ad36b4c7f349              # double 4.9191539999999998
	.quad	0x401358c3b0c4588a              # double 4.836684
	.quad	0x4020f3adc0980b24              # double 8.4759349999999997
	.quad	0x402155c4c9c90c4e              # double 8.6675170000000001
	.quad	0x40087049a9973d9f              # double 3.0548280000000001
	.quad	0x40228670196d8f50              # double 9.2625740000000008
	.quad	0x4011673b85e80bed              # double 4.3508129999999996
	.quad	0x40125387160956c1              # double 4.5815700000000001
	.quad	0x3ff960f1b25f633d              # double 1.586168
	.quad	0x401bbe60c38f3669              # double 6.9359159999999997
	.quad	0x4021bca9478c868c              # double 8.8684790000000006
	.quad	0x3fffebfa8f7db6e5              # double 1.995112
	.quad	0x40010b8066c2acb8              # double 2.1306159999999998
	.quad	0x40133c3e3193f6c2              # double 4.8088309999999996
	.quad	0x4016077143393ab4              # double 5.5072679999999998
	.quad	0x400c58dde7a743a6              # double 3.5433919999999999
	.quad	0x401fc1c7de5082cf              # double 7.9392389999999997
	.quad	0x401d65219a847b24              # double 7.3487609999999997
	.quad	0x4009ff1ae2da554c              # double 3.2495630000000002
	.quad	0x3fb1352220bc382a              # double 0.067216999999999999
	.quad	0x401581cef240fa9c              # double 5.3767659999999999
	.quad	0x401c3a92e62131a9              # double 7.0572010000000001
	.quad	0x402030d62bf11f92              # double 8.0953839999999992
	.quad	0x3ff9efa7221858bc              # double 1.6210089999999999
	.quad	0x4011a363b256ffc1              # double 4.4095599999999999
	.quad	0x401a42b841248d7e              # double 6.565156
	.quad	0x3ffcb2f23033a472              # double 1.7936879999999999
	.quad	0x401a0a6698bb4d49              # double 6.5101570000000004
	.quad	0x4023115f45e0b4e1              # double 9.5339299999999997
	.quad	0x400dd0ced4e4c943              # double 3.7269570000000001
	.quad	0x401c87f23cc8de2b              # double 7.1327600000000002
	.quad	0x40189c6fbd273d5c              # double 6.1527700000000003
	.quad	0x3ffea83e425aee63              # double 1.916075
	.quad	0x4011257e670e2c13              # double 4.2866150000000003
	.quad	0x401322d234eb9a17              # double 4.7840049999999996
	.quad	0x401fbd73860999dd              # double 7.9350110000000002
	.quad	0x400f071de69ad42c              # double 3.8784749999999999
	.quad	0x40060779207d4e09              # double 2.7536489999999998
	.quad	0x4019be1f7d73c925              # double 6.4356669999999996
	.quad	0x4007ddaad601ffb5              # double 2.9832360000000002
	.quad	0x402362bc5154866a              # double 9.6928429999999999
	.quad	0x4012c2da554b8bf0              # double 4.6902860000000004
	.quad	0x40147fc4c165907e              # double 5.1247740000000004
	.quad	0x3fbf9378ee286727              # double 0.123344
	.quad	0x40224d288ce703b0              # double 9.1507000000000005
	.quad	0x40223a1cac083127              # double 9.1135000000000002
	.quad	0x4019f0be9424e593              # double 6.4851020000000004
	.quad	0x4006d9af9ebe9c88              # double 2.8562919999999998
	.quad	0x3fea685122318330              # double 0.82523400000000002
	.quad	0x3ffb8bff47735c18              # double 1.721679
	.quad	0x4012472abef06b38              # double 4.5694990000000004
	.quad	0x4020bfb634dad320              # double 8.3744370000000004
	.quad	0x402383636f3b213e              # double 9.7566179999999996
	.quad	0x3fea779c842fa509              # double 0.82710099999999998
	.quad	0x3fd1b11c6d1e108c              # double 0.27643499999999999
	.quad	0x400a523c42a66dbd              # double 3.2901539999999998
	.quad	0x4018dfbbd7b2031d              # double 6.2184900000000001
	.quad	0x3ffc7a22706d5065              # double 1.7798179999999999
	.quad	0x40230d03fb374363              # double 9.5254209999999996
	.quad	0x3fdb2c5e2cdc011d              # double 0.42458299999999999
	.quad	0x4019b9a5657fb69a              # double 6.4312950000000004
	.quad	0x4021816f21f6cacd              # double 8.7528009999999998
	.quad	0x4022d26634117f84              # double 9.4109359999999995
	.quad	0x4021ccc8366516db              # double 8.8999649999999999
	.quad	0x3f9714b9cb6848bf              # double 0.022540000000000001
	.quad	0x401b7b2c83ec892b              # double 6.8702870000000003
	.quad	0x4023e373affb04ee              # double 9.9442419999999991
	.quad	0x402345109070fbec              # double 9.6348920000000006
	.quad	0x4020d029f16b11c7              # double 8.4065700000000003
	.quad	0x4015fe53eb399f5e              # double 5.498367
	.quad	0x40203da37ef5a965              # double 8.1203880000000002
	.quad	0x401717f77af64064              # double 5.7734050000000003
	.quad	0x3fe2d7f0ed3d859d              # double 0.58886000000000005
	.quad	0x4016461bb05faebc              # double 5.5684649999999998
	.quad	0x4015176534373f31              # double 5.2728469999999996
	.quad	0x40224436544fe36d              # double 9.1332269999999998
	.quad	0x4015e9c886162f16              # double 5.4783039999999996
	.quad	0x4019476b7ed41b76              # double 6.3197460000000003
	.quad	0x401b62220bc382a1              # double 6.8458329999999998
	.quad	0x40098008637bd05b              # double 3.187516
	.quad	0x4022be922d948dc1              # double 9.3722089999999997
	.quad	0x4015e2513b5bf6a1              # double 5.4710130000000001
	.quad	0x401ed0520d130dfa              # double 7.7034380000000002
	.quad	0x40217af48c2e770c              # double 8.7401470000000003
	.quad	0x4010d2862f5989df              # double 4.2055899999999999
	.quad	0x3ffb7b784662bae0              # double 1.7176439999999999
	.quad	0x3ffe060aa64c2f83              # double 1.8764749999999999
	.quad	0x40198f993d5347a6              # double 6.3902330000000003
	.quad	0x3fe61496249a133c              # double 0.69001299999999999
	.quad	0x4016ce3821af7d31              # double 5.7013860000000003
	.quad	0x401eecdb7ae5796c              # double 7.731306
	.quad	0x3fe4c5260f5e41d5              # double 0.64906600000000003
	.quad	0x4022371971c10d7c              # double 9.1076160000000001
	.quad	0x40211b2a6b0d9514              # double 8.553058
	.quad	0x40116939a7c17a89              # double 4.3527589999999998
	.quad	0x40237df04ddb5526              # double 9.7459740000000004
	.quad	0x401cce60807357e6              # double 7.2015399999999996
	.quad	0x3fd56801711947d0              # double 0.33447300000000002
	.quad	0x400fc2f512663411              # double 3.9701939999999998
	.quad	0x402277460242d05f              # double 9.2329559999999997
	.quad	0x401a9a4441787054              # double 6.6506509999999999
	.quad	0x400845c3dee78184              # double 3.034065
	.quad	0x401ae7546d3f9e7c              # double 6.7259080000000004
	.quad	0x4009e787485e3da3              # double 3.238051
	.quad	0x3fc3993d5347a5b1              # double 0.153114
	.quad	0x4020be80389f83be              # double 8.3720719999999993
	.quad	0x40216436fc158fb4              # double 8.6957319999999995
	.quad	0x401573f2d3c792d1              # double 5.3632309999999999
	.quad	0x400dbd93c46d82ba              # double 3.7175669999999998
	.quad	0x400ed02c4d65e460              # double 3.8516469999999998
	.quad	0x4020b9a73b42cc2d              # double 8.3626039999999993
	.quad	0x401ec383ad9f0a1c              # double 7.6909320000000001
	.quad	0x401cc25edd052935              # double 7.1898150000000003
	.quad	0x3fe58a116659d12d              # double 0.67310400000000004
	.quad	0x400f411c2a023209              # double 3.9067919999999998
	.quad	0x4023d5fd2630ec31              # double 9.9179469999999998
	.quad	0x40159d9ec7000432              # double 5.4039260000000002
	.quad	0x40189455eaee2004              # double 6.1448590000000003
	.quad	0x4016180e496ededb              # double 5.5234920000000001
	.quad	0x3fc13fb7a5f41aef              # double 0.13475699999999999
	.quad	0x40153c1eff9f87f0              # double 5.3087119999999999
	.quad	0x401b6502eec7c958              # double 6.8486440000000002
	.quad	0x3ff6b049a9973d9f              # double 1.418039
	.quad	0x401feff10ecb74de              # double 7.984318
	.quad	0x3fbcfc0d2c386d2f              # double 0.113221
	.quad	0x402007c7c5260f5e              # double 8.0151959999999995
	.quad	0x3ff6a4e160d887ec              # double 1.415254
	.quad	0x40202bb6cbd987c6              # double 8.0853789999999996
	.quad	0x40191e56473471f8              # double 6.2796260000000004
	.quad	0x4022c8900c521dda              # double 9.391724
	.quad	0x4019288765ba6efc              # double 6.2895789999999998
	.quad	0x4016a08e15011905              # double 5.6567920000000003
	.quad	0x4012a44f5d35653d              # double 4.6604590000000004
	.quad	0x40222219c9d5a188              # double 9.0666030000000006
	.quad	0x402103ab430f4949              # double 8.5071659999999998
	.quad	0x4023585f28848388              # double 9.6726010000000002
	.quad	0x4021bcebdd334c5e              # double 8.8689870000000006
	.quad	0x3ff29e14bdfd2631              # double 1.163594
	.quad	0x401be1c714fce747              # double 6.9704860000000002
	.quad	0x401c6f4a98aa8651              # double 7.1086830000000001
	.quad	0x4017721c044284e0              # double 5.8614350000000002
	.quad	0x4015f38088509bfa              # double 5.4877950000000002
	.quad	0x4023c00c308feac4              # double 9.8750929999999996
	.quad	0x4006a915379fa97e              # double 2.83256
	.quad	0x4021006c00da1a93              # double 8.5008239999999997
	.quad	0x4020d50df15a4acf              # double 8.4161219999999997
	.quad	0x401bdfbbd7b2031d              # double 6.9684900000000001
	.quad	0x40183fc9bc771434              # double 6.0622930000000004
	.quad	0x40234e0f1b25f634              # double 9.6524590000000003
	.quad	0x400c641fea8112ba              # double 3.548889
	.quad	0x3ffc605ab3aabcd8              # double 1.7735240000000001
	.quad	0x401f9d3f1843c3a4              # double 7.9035609999999998
	.quad	0x3ffb1878316a0557              # double 1.6934739999999999
	.quad	0x401c89eecbfb15b5              # double 7.1346999999999996
	.quad	0x3fe20de093532e7b              # double 0.56419399999999997
	.quad	0x4023ba5d6bebe165              # double 9.8639939999999999
	.quad	0x402380366516db0e              # double 9.7504150000000003
	.quad	0x400b941f212d7732              # double 3.4473250000000002
	.quad	0x40094d65e4606749              # double 3.162792
	.quad	0x400421c4fc1df330              # double 2.516489
	.quad	0x3fcd6e04c0592104              # double 0.22992000000000001
	.quad	0x401d25b5b70691ea              # double 7.2868259999999996
	.quad	0x40017bd3804534bd              # double 2.1854619999999998
	.quad	0x400bf38583621fb0              # double 3.4939070000000001
	.quad	0x3ffd98b827fa1a0d              # double 1.849785
	.quad	0x4007246c764adff8              # double 2.8927849999999999
	.quad	0x401341144cbe1eb4              # double 4.8135539999999999
	.quad	0x4012d2b1f687b13a              # double 4.7057570000000002
	.quad	0x3fe975c6c11a1123              # double 0.79562699999999997
	.quad	0x400795f80991793a              # double 2.9482270000000002
	.quad	0x401ceabde3fbbd7b              # double 7.2292399999999999
	.quad	0x4021acc3c18b502b              # double 8.8374310000000005
	.quad	0x401fda9c560c7c0f              # double 7.9634869999999997
	.quad	0x3febe7c286f8ad25              # double 0.87204099999999996
	.quad	0x40188b2e59af9ebf              # double 6.1359190000000003
	.quad	0x40104ff583a53b8e              # double 4.0780849999999997
	.quad	0x40154964a59c065b              # double 5.3216729999999997
	.quad	0x3fd855a3a08398a6              # double 0.38022699999999998
	.quad	0x3fff59a1fd1569f5              # double 1.9593830000000001
	.quad	0x3fff2be0589acbc9              # double 1.9482120000000001
	.quad	0x3ff17c664d3bf2f5              # double 1.0928709999999999
	.quad	0x40201106ee30caa3              # double 8.0332559999999997
	.quad	0x401cc31b584b1ab1              # double 7.1905340000000004
	.quad	0x4009f996fa82e87d              # double 3.2468699999999999
	.quad	0x401db4178705425f              # double 7.4258709999999999
	.quad	0x3fd7c111ada76d98              # double 0.37115900000000002
	.quad	0x4003a0a73f748a16              # double 2.4534440000000002
	.quad	0x40232d47e06961c3              # double 9.5884389999999992
	.quad	0x3fcdb645a1cac083              # double 0.232125
	.quad	0x3ffc8473cd573648              # double 1.7823370000000001
	.quad	0x3fd868cac4b4d057              # double 0.38139600000000001
	.quad	0x40189e5c91d14e3c              # double 6.1546500000000002
	.quad	0x40148038e29f9ce9              # double 5.1252170000000001
	.quad	0x401606173b85e80c              # double 5.5059480000000001
	.quad	0x4023c708461f9f02              # double 9.8887350000000005
	.quad	0x3ff208b97785729b              # double 1.12713
	.quad	0x401444024b33daf9              # double 5.0664150000000001
	.quad	0x40008500d5e8d541              # double 2.064943
	.quad	0x401668ef77f27fe5              # double 5.6024760000000002
	.quad	0x400b96f3b213e3e3              # double 3.4487070000000002
	.quad	0x401ab1f9f01b866e              # double 6.6738049999999998
	.quad	0x401fd202d9cf13cf              # double 7.955089
	.quad	0x4014b8f36694898f              # double 5.1806159999999997
	.quad	0x40148eed8904f6e0              # double 5.1395780000000002
	.quad	0x400d19b23dd54da5              # double 3.6375470000000001
	.quad	0x4014f5ca29845dc8              # double 5.2400289999999998
	.quad	0x402137ea1c68ec53              # double 8.6092080000000006
	.quad	0x40226d573647baaa              # double 9.2135560000000005
	.quad	0x402389dda059a73b              # double 9.7692689999999995
	.quad	0x3ff8a9003eea209b              # double 1.5412600000000001
	.quad	0x4020a40b13597918              # double 8.3203969999999998
	.quad	0x3ff31fe111276fb1              # double 1.1952830000000001
	.quad	0x40200d974e65bea1              # double 8.0265450000000005
	.quad	0x3fea5a921ccd9620              # double 0.82355599999999995
	.quad	0x401b0536933a0408              # double 6.7550910000000002
	.quad	0x3ffc501d19157abc              # double 1.7695590000000001
	.quad	0x40198bf338716095              # double 6.3866699999999996
	.quad	0x40064dd69d30270f              # double 2.7880069999999999
	.quad	0x4019eafee6fb4c3c              # double 6.4794879999999999
	.quad	0x4015d569f4906035              # double 5.458412
	.quad	0x40205226809d4952              # double 8.1604500000000009
	.quad	0x4013064e48626f61              # double 4.7561580000000001
	.quad	0x400cd87a4a48f96e              # double 3.605702
	.quad	0x401e1a9a3d2d87f9              # double 7.5259790000000004
	.quad	0x40121059210385c6              # double 4.5159649999999996
	.quad	0x4023e76a2f48c2e7              # double 9.9519819999999992
	.quad	0x401da79a2834d270              # double 7.4136740000000003
	.quad	0x3fff1e57d9dba909              # double 1.9449080000000001
	.quad	0x3ffba4f6598e10cf              # double 1.7277739999999999
	.quad	0x4019785985ad538b              # double 6.3675290000000002
	.quad	0x3fddb4cc25072086              # double 0.46416000000000002
	.quad	0x401423465625a683              # double 5.0344480000000003
	.quad	0x3ff39dde37585be2              # double 1.2260420000000001
	.quad	0x3fec9b43526527a2              # double 0.893953
	.quad	0x40123fe43675ddd3              # double 4.5623940000000003
	.quad	0x4007290f733a8a40              # double 2.8950490000000002
	.quad	0x400b2ed3d859c8c9              # double 3.3978649999999999
	.quad	0x401ab49be8ff327b              # double 6.6763760000000003
	.quad	0x3fdeb4677b395c42              # double 0.47976099999999999
	.quad	0x401d19578a2a90cd              # double 7.2747479999999998
	.quad	0x402392c493426784              # double 9.7866560000000006
	.quad	0x4009ee3ef284167b              # double 3.2413310000000002
	.quad	0x400bf1633482be8c              # double 3.4928650000000001
	.quad	0x400767da1ec4e725              # double 2.9257089999999999
	.quad	0x3ffcd0dcfcc5b8dc              # double 1.8009919999999999
	.quad	0x4021ab8561d4306e              # double 8.8350019999999994
	.quad	0x400a068900c521de              # double 3.2531910000000002
	.quad	0x401db1b64e054691              # double 7.4235470000000001
	.quad	0x4019deea209aaa3b              # double 6.4676900000000002
	.quad	0x401af8909289dae0              # double 6.7427390000000003
	.quad	0x3ff7f9c62a1b5c7d              # double 1.49848
	.quad	0x3fdcea4a8c154c98              # double 0.45179999999999998
	.quad	0x40224a7ded6ba8c6              # double 9.1454920000000008
	.quad	0x3fcffe7e1fc08fa8              # double 0.24995400000000001
	.quad	0x4002c4284dfce315              # double 2.34578
	.quad	0x40047c2e33eff195              # double 2.560635
	.quad	0x401dc68986fcdee3              # double 7.4438839999999997
	.quad	0x3ff7dc92ddbdb5d9              # double 1.4913510000000001
	.quad	0x4013490214ad362f              # double 4.8212970000000004
	.quad	0x400cc6f3f52fc265              # double 3.5971449999999998
	.quad	0x3fb027d88c1db014              # double 0.063107999999999997
	.quad	0x3fda230fcf80dc33              # double 0.40838999999999998
	.quad	0x402369f10667f90e              # double 9.7069170000000007
	.quad	0x40189f8e7ddca4b1              # double 6.1558169999999999
	.quad	0x3fc4f355cd91eeaa              # double 0.16367599999999999
	.quad	0x4018f2a497fa5d29              # double 6.2369560000000002
	.quad	0x401ca9899bf5946c              # double 7.1655639999999998
	.quad	0x400035286b59146e              # double 2.0259559999999999
	.quad	0x401b82ff08893b7e              # double 6.8779260000000004
	.quad	0x4014619da9c99286              # double 5.0953280000000003
	.quad	0x3ff110efdc9c4da9              # double 1.066635
	.quad	0x3fe20110a137f38c              # double 0.56262999999999996
	.quad	0x402217e06961c369              # double 9.0466339999999992
	.quad	0x40189044f1a1986c              # double 6.1408880000000003
	.quad	0x401cba7d24180d3d              # double 7.182118
	.quad	0x40188ad794a6eb92              # double 6.1355880000000003
	.quad	0x400aba1a93293d10              # double 3.3408709999999999
	.quad	0x401a1c5f7c6759ab              # double 6.5277079999999996
	.quad	0x4020664ffc9795b3              # double 8.1998289999999994
	.quad	0x3fed36dca07f66e8              # double 0.91294699999999995
	.quad	0x401b81950331e3a8              # double 6.8765450000000001
	.quad	0x40203d5c96030c24              # double 8.119847
	.quad	0x3ff12719b4dcebff              # double 1.0720460000000001
	.quad	0x4023fc02afdda8bd              # double 9.9922079999999997
	.quad	0x401cf1f31f46ed24              # double 7.2362789999999997
	.quad	0x401623d9231c64bb              # double 5.5350080000000004
	.quad	0x4001e3d577963993              # double 2.2362470000000001
	.quad	0x400cc5479d4d8341              # double 3.5963280000000002
	.quad	0x401a49d8409e55c1              # double 6.572114
	.quad	0x4022eb6d86ec17ec              # double 9.4598200000000005
	.quad	0x4016cc9f2fdb8fde              # double 5.6998259999999998
	.quad	0x40219c493426783a              # double 8.8052460000000004
	.quad	0x401efa0232096788              # double 7.7441490000000001
	.quad	0x40208a3465625a68              # double 8.2699309999999997
	.quad	0x402174caf709b739              # double 8.7281110000000002
	.quad	0x4020470aa21a719b              # double 8.1387529999999995
	.quad	0x4002dfbce4217d28              # double 2.3592469999999999
	.quad	0x4013be831ad2135e              # double 4.9360470000000003
	.quad	0x3ffaa9f4906034f4              # double 1.666493
	.quad	0x4006c2d6a9c560c8              # double 2.8451360000000001
	.quad	0x40222e0b2c83ec89              # double 9.0899289999999997
	.quad	0x3ff74e5f7403dddb              # double 1.456634
	.quad	0x401014d44567125e              # double 4.0203410000000002
	.quad	0x4016b1eb4202d9cf              # double 5.6737489999999999
	.quad	0x401c79d66adb402d              # double 7.1189819999999999
	.quad	0x4018539713ad5bee              # double 6.0816309999999998
	.quad	0x4002e34549b62c77              # double 2.3609719999999998
	.quad	0x3ff286bce8533b10              # double 1.1578949999999999
	.quad	0x4023d3d017dae819              # double 9.9136970000000008
	.quad	0x3ff15219a847b246              # double 1.082544
	.quad	0x3ff3c4567125dd09              # double 1.2354339999999999
	.quad	0x40222cb295e9e1b1              # double 9.0873000000000008
	.quad	0x4005bf2778140dd4              # double 2.718337
	.quad	0x3feb25093964a59c              # double 0.84827099999999999
	.quad	0x401b4c37a3db3bfb              # double 6.8244309999999997
	.quad	0x4021925119ce075f              # double 8.7857749999999992
	.quad	0x3fd05a8deb0fadf3              # double 0.255527
	.quad	0x4020093c46d82ba6              # double 8.0180380000000007
	.quad	0x401aad755bccaf71              # double 6.6693930000000003
	.quad	0x3fe28f4f93bc0a07              # double 0.57999400000000001
	.quad	0x3ff1b81e8a2ec28b              # double 1.107451
	.quad	0x4010ffce3150dae4              # double 4.2498100000000001
	.quad	0x401690a0f4d7add1              # double 5.6412389999999997
	.quad	0x401c60ae9680e065              # double 7.0944159999999998
	.quad	0x401ed8622c450269              # double 7.7113120000000003
	.quad	0x3ff3f49be8ff327b              # double 1.2472190000000001
	.quad	0x40216696e58a32f4              # double 8.7003699999999994
	.quad	0x401f9d9f90539fba              # double 7.9039289999999998
	.quad	0x402396c69b5a63fa              # double 9.7944840000000006
	.quad	0x3fd75c8d9f9053a0              # double 0.36502400000000002
	.quad	0x401844ce8101f31f              # double 6.0671939999999998
	.quad	0x40129c87980f55de              # double 4.6528609999999997
	.quad	0x3fc0e26d4801f751              # double 0.13191
	.quad	0x3ffc08b652370479              # double 1.752127
	.quad	0x3fce25072085b185              # double 0.23550499999999999
	.quad	0x3ff8d87b56b87379              # double 1.5528519999999999
	.quad	0x40079adb8348f53c              # double 2.9506139999999998
	.quad	0x3ff2d81adea89763              # double 1.1777599999999999
	.quad	0x40109981beb18117              # double 4.1499090000000001
	.quad	0x401ff5579af1886e              # double 7.989592
	.quad	0x40161d4a1ad6451c              # double 5.5286030000000004
	.quad	0x401d8a450acc0bdd              # double 7.3850290000000003
	.quad	0x40239b886594af4f              # double 9.8037749999999999
	.quad	0x400e72cd7cf5f4e4              # double 3.8060559999999999
	.quad	0x4008f02de00d1b71              # double 3.1172749999999998
	.quad	0x40030f97edc7ef17              # double 2.3826139999999998
	.quad	0x3fc379e9d0e991ff              # double 0.15215799999999999
	.quad	0x402116ab14ec204f              # double 8.5442739999999997
	.quad	0x401e5dda059a73b4              # double 7.5916519999999998
	.quad	0x401266ab9b23dd55              # double 4.6002640000000001
	.quad	0x4023f75fd47bedb7              # double 9.9831529999999997
	.quad	0x3fe9ddce7cd03537              # double 0.80832599999999999
	.quad	0x40163ff9f87f023f              # double 5.5624770000000003
	.quad	0x401c5cc0bdcad14a              # double 7.090579
	.quad	0x4014a5f1bef49cf5              # double 5.1620549999999996
	.quad	0x401f5ee0b0af5fd4              # double 7.8426539999999996
	.quad	0x40213bfbdf090f73              # double 8.6171559999999996
	.quad	0x3ffbd6c82e019b0b              # double 1.7399370000000001
	.quad	0x401e1c471b478423              # double 7.5276149999999999
	.quad	0x401139d0e991ff71              # double 4.3064609999999997
	.quad	0x4014fc2fc69728a6              # double 5.2462759999999999
	.quad	0x4010d9de05037500              # double 4.2127610000000004
	.quad	0x3fefa7ed84d338f8              # double 0.98924900000000004
	.quad	0x400561e4f765fd8b              # double 2.6728000000000001
	.quad	0x4008225c810a569b              # double 3.016778
	.quad	0x401ecd4d834091c1              # double 7.7004910000000004
	.quad	0x40055256ffc115df              # double 2.6652049999999998
	.quad	0x401d76b2af145522              # double 7.3659160000000004
	.quad	0x401b248cf7caa759              # double 6.7856940000000003
	.quad	0x4006095af294dd72              # double 2.7545679999999999
	.quad	0x401c1ed4a1ad6452              # double 7.0301080000000002
	.quad	0x402201f72f76e610              # double 9.0038389999999993
	.quad	0x4023d2ee41919ac8              # double 9.9119740000000007
	.quad	0x4012b9ee88df3733              # double 4.6815740000000003
	.quad	0x3ff85d6adf71eaff              # double 1.522807
	.quad	0x401753b57c4e2f38              # double 5.831747
	.quad	0x3facc0bdcad14a0a              # double 0.056158
	.quad	0x401e607ee0b0af60              # double 7.5942340000000002
	.quad	0x401c2ee2435696e6              # double 7.0457850000000004
	.quad	0x3ff1ada0168b5cc0              # double 1.104889
	.quad	0x401e49c0229a5ebb              # double 7.5720219999999995
	.quad	0x4023510fd7e45804              # double 9.6583240000000003
	.quad	0x400f147735c182ed              # double 3.8849930000000001
	.quad	0x40166a8a3f8982cb              # double 5.6040429999999999
	.quad	0x4012ebee807bbb62              # double 4.7304019999999998
	.quad	0x4017029068986fce              # double 5.7525040000000001
	.quad	0x4021641acde19fc3              # double 8.6955170000000006
	.quad	0x3ff4894a2b9d3cbc              # double 1.2835179999999999
	.quad	0x3ff794738a3b57c5              # double 1.473743
	.quad	0x401a8c7c5260f5e4              # double 6.6371929999999999
	.quad	0x4018eaf533f42353              # double 6.2294510000000001
	.quad	0x40214f8a0902de01              # double 8.6553500000000003
	.quad	0x40204f3c4f3ba776              # double 8.154757
	.quad	0x3ff3c17225b749ae              # double 1.234728
	.quad	0x4015b491afc04c8c              # double 5.4263370000000002
	.quad	0x3ffa7ae3608d0892              # double 1.6550020000000001
	.quad	0x3fdf238da3c21188              # double 0.48654500000000001
	.quad	0x4019a5d31337eb29              # double 6.4119380000000001
	.quad	0x402305842b734b51              # double 9.5107739999999996
	.quad	0x400578ee28672757              # double 2.6840480000000002
	.quad	0x40233fc0096feb4a              # double 9.6245119999999993
	.quad	0x4013490ea9e6eeb7              # double 4.821345
	.quad	0x401f35286b59146e              # double 7.8019119999999997
	.quad	0x400c76e7a311e860              # double 3.5580590000000001
	.quad	0x401697c4199fe436              # double 5.6482089999999996
	.quad	0x40210efa82e87d2c              # double 8.5292549999999991
	.quad	0x4010651372a38b8b              # double 4.0987070000000001
	.quad	0x401656df82b1f688              # double 5.5848370000000003
	.quad	0x402277f7be121ee6              # double 9.2343119999999992
	.quad	0x4016f1101b003687              # double 5.7354130000000003
	.quad	0x40105fe7e1fc08fa              # double 4.0936579999999996
	.quad	0x3fd14cd31769a911              # double 0.270314
	.quad	0x40054dbb59ddc1e8              # double 2.6629550000000002
	.quad	0x40158c929aa1d756              # double 5.3872780000000002
	.quad	0x4020bcface67d780              # double 8.3691010000000006
	.quad	0x402071d1b2e59afa              # double 8.2223030000000001
	.quad	0x4023db62e9036439              # double 9.9284890000000007
	.quad	0x402198431bde82d8              # double 8.7973870000000005
	.quad	0x401a8f440af1cb8a              # double 6.6399080000000001
	.quad	0x4023bf4bc6a7ef9e              # double 9.8736250000000005
	.quad	0x4009f1c2a0232096              # double 3.2430469999999998
	.quad	0x40121b28954a7f80              # double 4.5265219999999999
	.quad	0x401207c3d68405b4              # double 4.5075830000000003
	.quad	0x40110fd04a2fcefb              # double 4.2654430000000003
	.quad	0x4010d0242d05f288              # double 4.2032629999999997
	.quad	0x3fdaf36694898f60              # double 0.42110599999999998
	.quad	0x40121ae9ee45c359              # double 4.5262830000000003
	.quad	0x401f14080f98fa37              # double 7.7695619999999996
	.quad	0x40080e557de0d66f              # double 3.006999
	.quad	0x4015cd25247cb70b              # double 5.4503370000000002
	.quad	0x3fe67c88e79aae6d              # double 0.70270200000000005
	.quad	0x4009ebebe1650a46              # double 3.2401960000000001
	.quad	0x3fd3b890d5a5b963              # double 0.30814000000000002
	.quad	0x402012643cc07aaf              # double 8.0359210000000001
	.quad	0x4016355ffe6d58c9              # double 5.5521240000000001
	.quad	0x402038fa9c12f09e              # double 8.1112870000000008
	.quad	0x40211e7839cd8128              # double 8.5595110000000005
	.quad	0x40142d0f6273929f              # double 5.0440040000000002
	.quad	0x401123db3bfb58d1              # double 4.2850159999999997
	.quad	0x40136dadb8348f54              # double 4.8571080000000002
	.quad	0x402156709fa54c55              # double 8.6688279999999995
	.quad	0x4017f0fd3b29a1ba              # double 5.985341
	.quad	0x400087c286f8ad25              # double 2.0662889999999998
	.quad	0x4010d621fafc8b00              # double 4.2091139999999996
	.quad	0x401ebb7414a4d2b3              # double 7.6830600000000002
	.quad	0x3ff9269ced0b30b6              # double 1.5719270000000001
	.quad	0x4023455dc4007571              # double 9.6354810000000004
	.quad	0x4013fea57214f052              # double 4.998678
	.quad	0x4016310c2c5e2cdc              # double 5.547898
	.quad	0x40230143393ab431              # double 9.502466
	.quad	0x400836d117b5286b              # double 3.0267659999999998
	.quad	0x4010a0bbf50e3476              # double 4.1569669999999999
	.quad	0x40177d851654d61b              # double 5.8725779999999999
	.quad	0x402189c68ec52a41              # double 8.7690929999999998
	.quad	0x3ff8d9e83e425aee              # double 1.5531999999999999
	.quad	0x40224064020817fc              # double 9.1257629999999991
	.quad	0x40027a6266fd651b              # double 2.309758
	.quad	0x3ffe0726d04e618d              # double 1.876746
	.quad	0x3fedbea0ba1f4b1f              # double 0.92952000000000001
	.quad	0x401b0189bd8383ae              # double 6.7515020000000003
	.quad	0x4017dd9cae21101b              # double 5.966418
	.quad	0x40146c0ce91c8eac              # double 5.105518
	.quad	0x402299d99029ae4f              # double 9.3004879999999996
	.quad	0x402267192ea52ef9              # double 9.2013639999999999
	.quad	0x40054d7f0ed3d85a              # double 2.6628400000000001
	.quad	0x400842b0ea18372e              # double 3.0325639999999998
	.quad	0x401bf69a0ad8a116              # double 6.9908219999999996
	.quad	0x3ffeb215fcc1871e              # double 1.9184779999999999
	.quad	0x4012531ca7d6733f              # double 4.5811640000000002
	.quad	0x3fd6d25edd052935              # double 0.35659000000000002
	.quad	0x401c24c6a3bddfca              # double 7.035914
	.quad	0x40162e6f2e8c0486              # double 5.5453460000000003
	.quad	0x3ff07810e8858ff7              # double 1.0293129999999999
	.quad	0x4022a29ac36544fe              # double 9.3175869999999996
	.quad	0x3fd9b2788db0574b              # double 0.40151799999999999
	.quad	0x401df81c714fce74              # double 7.4922959999999996
	.quad	0x4023c46583e8576d              # double 9.8835870000000003
	.quad	0x4012b98fa376922e              # double 4.6812120000000004
	.quad	0x4007535c182ecaef              # double 2.9157030000000002
	.quad	0x4007a56de33269e0              # double 2.9557760000000002
	.quad	0x401766e32e3821af              # double 5.8504759999999996
	.quad	0x401fc9707182235b              # double 7.9467179999999997
	.quad	0x3fe17e8ccdd93c47              # double 0.54669800000000002
	.quad	0x4020cfd47bedb728              # double 8.4059179999999998
	.quad	0x4016c44ed6fda837              # double 5.6917070000000001
	.quad	0x400a5e492bc2fc69              # double 3.2960379999999998
	.quad	0x401ec999dcb5781c              # double 7.6968759999999996
	.quad	0x4012273b85e80bed              # double 4.5383129999999996
	.quad	0x3fd9dd9c27e95315              # double 0.40415099999999998
	.quad	0x4013c660e51d25ab              # double 4.9437290000000003
	.quad	0x400129d8409e55c1              # double 2.145432
	.quad	0x3febadeebb341e15              # double 0.86498200000000003
	.quad	0x4017ac5eb313be23              # double 5.9183300000000001
	.quad	0x4021255a5b9628cc              # double 8.5729550000000003
	.quad	0x401bbffda4052d66              # double 6.9374909999999996
	.quad	0x4013755475a31a4c              # double 4.8645800000000001
	.quad	0x3ff52db61bb05faf              # double 1.3236600000000001
	.quad	0x40151cc0bdcad14a              # double 5.278079
	.quad	0x3ff718e10cf5b1c8              # double 1.4435739999999999
	.quad	0x4009017b0f6ad70e              # double 3.1257229999999998
	.quad	0x40214f67903211cb              # double 8.655087
	.quad	0x3fcfeac42e9899bf              # double 0.24935199999999999
	.quad	0x40238e5929670197              # double 9.7780240000000002
	.quad	0x3fe370c996b7670a              # double 0.607518
	.quad	0x3fc7ce52deca2553              # double 0.18598400000000001
	.quad	0x400d1c60029f16b1              # double 3.638855
	.quad	0x401ed98958d9b5e9              # double 7.7124379999999996
	.quad	0x401a164e054690de              # double 6.521782
	.quad	0x4023d65f9591cd1c              # double 9.9186979999999991
	.quad	0x401ef4c8ffb8b264              # double 7.7390480000000004
	.quad	0x401ef6c2699c7bcc              # double 7.7409759999999999
	.quad	0x4010ef01322f2735              # double 4.233403
	.quad	0x400ee1c9b4139863              # double 3.8602479999999999
	.quad	0x400ed1212513b5bf              # double 3.8521139999999998
	.quad	0x40159de15ca6ca04              # double 5.4041800000000002
	.quad	0x401cd9435ac8a372              # double 7.2121709999999997
	.quad	0x400838958d9b5e96              # double 3.0276290000000001
	.quad	0x3ffcea21a719b4dd              # double 1.807161
	.quad	0x3fd6f78feef5ec81              # double 0.35886000000000001
	.quad	0x401a903dddb1209f              # double 6.6408610000000001
	.quad	0x40112894c447c30d              # double 4.2896299999999998
	.quad	0x400c4bd556084a51              # double 3.5370279999999998
	.quad	0x40238e5c91d14e3c              # double 9.7780500000000003
	.quad	0x4021aaaac1094a2c              # double 8.8333340000000006
	.quad	0x401e5c52e72da123              # double 7.59016
	.quad	0x40195a400fba8827              # double 6.3381350000000003
	.quad	0x4023936c3760bf5d              # double 9.7879349999999991
	.quad	0x40102c536d655e29              # double 4.0432870000000003
	.quad	0x401b59988d2a1f8e              # double 6.8374959999999998
	.quad	0x4000b7be121ee675              # double 2.089718
	.quad	0x3fd7d0dcfcc5b8dc              # double 0.37212299999999998
	.quad	0x40182bd5dc400757              # double 6.042808
	.quad	0x402145143bf72713              # double 8.6349199999999993
	.quad	0x3ff67854046412cf              # double 1.404377
	.quad	0x3fe45e39713ad5bf              # double 0.63650200000000001
	.quad	0x4019e5996744b2b7              # double 6.4742179999999996
	.quad	0x40129da5daf07bfe              # double 4.6539529999999996
	.quad	0x4015604f2ae07e5a              # double 5.3440519999999996
	.quad	0x3fef5321e603d578              # double 0.97889800000000004
	.quad	0x402155710880d802              # double 8.6668780000000005
	.quad	0x400ed291b823c85c              # double 3.8528169999999999
	.quad	0x4016f89acbc8c0cf              # double 5.7427780000000004
	.quad	0x4002357e670e2c13              # double 2.2761200000000001
	.quad	0x40047e7a743a6480              # double 2.5617570000000001
	.quad	0x4017f39e6ab9b23e              # double 5.9879090000000001
	.quad	0x40229448f10a99b7              # double 9.2896190000000001
	.quad	0x3fe38ae1049235f8              # double 0.610703
	.quad	0x4017d4cdb7ae5797              # double 5.9578160000000002
	.quad	0x4006952b0a6fc58b              # double 2.8228360000000001
	.quad	0x40152fb71fbc5dea              # double 5.2965970000000002
	.quad	0x40178de3b8a19c9d              # double 5.8885639999999997
	.quad	0x401e0e807bbb6241              # double 7.5141619999999997
	.quad	0x400c93a0407cc7d2              # double 3.5720830000000001
	.quad	0x401c9237cdcca70d              # double 7.1427909999999999
	.quad	0x40123ff822bbecab              # double 4.5624700000000002
	.quad	0x400830edc3bd5992              # double 3.0238909999999999
	.quad	0x40098ab9b23dd54e              # double 3.1927370000000002
	.quad	0x3ffcb7446f9b994e              # double 1.794743
	.quad	0x401b29c4545846e9              # double 6.790788
	.quad	0x4012a984e3ffef39              # double 4.665546
	.quad	0x40104f5946c332f0              # double 4.0774889999999999
	.quad	0x4021d0537e2c55c9              # double 8.9068869999999993
	.quad	0x3fd5c50ce4ead0c4              # double 0.34015200000000001
	.quad	0x401f31cffeb074a7              # double 7.7986449999999996
	.quad	0x3fed42d8c2a454de              # double 0.91440999999999995
	.quad	0x4002f365881a1555              # double 2.368846
	.quad	0x3ffbd3e3e29307af              # double 1.739231
	.quad	0x401ff6d2aa5c5f7c              # double 7.9910379999999996
	.quad	0x401f03a1d323fee3              # double 7.7535470000000001
	.quad	0x4014332096787ce9              # double 5.0499289999999997
	.quad	0x4017f4e5d5b24e9c              # double 5.9891579999999998
	.quad	0x400040a2014727dd              # double 2.0315590000000001
	.quad	0x4022e7ebd09e12a5              # double 9.4529709999999997
	.quad	0x400dad74927913e8              # double 3.709695
	.quad	0x3fe46e5eedcc20d5              # double 0.63847299999999996
	.quad	0x3febc163779e9d0f              # double 0.86735700000000004
	.quad	0x4012e039ef0f16f4              # double 4.7189709999999998
	.quad	0x401f3bb2fec56d5d              # double 7.8083
	.quad	0x401a957646ae3a3b              # double 6.6459590000000004
	.quad	0x400e2c25072085b2              # double 3.7715550000000002
	.quad	0x40039aa2e3c536d6              # double 2.4505059999999999
	.quad	0x4012ec319c5a3e3a              # double 4.730658
	.quad	0x3fe5a8e71476af8a              # double 0.67686800000000003
	.quad	0x3fe7f353b4b2fa94              # double 0.74845300000000003
	.quad	0x400c1496aad1d042              # double 3.5100530000000001
	.quad	0x401272cdc011d367              # double 4.6121129999999999
	.quad	0x4016aebe1650a45d              # double 5.6706469999999998
	.quad	0x3fe0edfc5cdd50a9              # double 0.52905100000000005
	.quad	0x4011751f81a5870e              # double 4.3643780000000003
	.quad	0x4018a999567dbb17              # double 6.1656240000000002
	.quad	0x40193cabc5154867              # double 6.3092490000000003
	.quad	0x401d2e4712e40853              # double 7.2951930000000003
	.quad	0x3fa3c1eff9f87f02              # double 0.038588999999999998
	.quad	0x402012617c1bda51              # double 8.0358999999999998
	.quad	0x3ffb3f562174c4ce              # double 1.702963
	.quad	0x401169e44fa05144              # double 4.3534100000000002
	.quad	0x4011ed4bf0995aaf              # double 4.4817349999999996
	.quad	0x40225ebd2b6f1993              # double 9.1850369999999995
	.quad	0x4022190fb65668c2              # double 9.0489479999999993
	.quad	0x4009c1e1d2178f69              # double 3.2196690000000001
	.quad	0x40049e1e2de87097              # double 2.5772059999999999
	.quad	0x4010dfb3fa6defc8              # double 4.2184600000000003
	.quad	0x402302250f840182              # double 9.5041890000000002
	.quad	0x4020559a30984e40              # double 8.167192
	.quad	0x4020ec7325918a01              # double 8.4618160000000007
	.quad	0x402243bbc6eb0b7c              # double 9.1322919999999996
	.quad	0x3fffb042528ae74f              # double 1.980532
	.quad	0x40117325918a009f              # double 4.3624479999999997
	.quad	0x4021f7b7a5f41aef              # double 8.9838229999999992
	.quad	0x4010ff2495e17e35              # double 4.2491630000000002
	.quad	0x40150a67620ee8d1              # double 5.2601599999999999
	.quad	0x4021f1b4784230fd              # double 8.9720800000000001
	.quad	0x400f60535c9e6688              # double 3.922034
	.quad	0x4023ec0aaeafab54              # double 9.9610190000000002
	.quad	0x4019a26dce39b457              # double 6.4086220000000003
	.quad	0x401ed70110a137f4              # double 7.7099650000000004
	.quad	0x40163aa433508f65              # double 5.5572670000000004
	.quad	0x4022caf2734f82f5              # double 9.3963809999999998
	.quad	0x400a6effe2a3cea7              # double 3.3041990000000001
	.quad	0x3f88665e02ea960b              # double 0.011913999999999999
	.quad	0x40185144cbe1eb42              # double 6.079364
	.quad	0x40229c37824d4cba              # double 9.3051110000000001
	.quad	0x4023091819d2391d              # double 9.5177619999999993
	.quad	0x400856ca46e08f21              # double 3.0423779999999998
	.quad	0x401e62fba01eeed9              # double 7.5966630000000003
	.quad	0x4019d06705c896dd              # double 6.4535179999999999
	.quad	0x40202cc33b539325              # double 8.0874269999999999
	.quad	0x3ff2da3f4666ec9e              # double 1.178283
	.quad	0x3fe036fe2e6ea854              # double 0.50671299999999997
	.quad	0x40053036c9c0a8d2              # double 2.648542
	.quad	0x401d5134ce3de615              # double 7.3293030000000003
	.quad	0x402093e22e5de15d              # double 8.2888350000000006
	.quad	0x4005a07d4e09784f              # double 2.7033640000000001
	.quad	0x40162b584b1ab085              # double 5.5423289999999996
	.quad	0x4021cbe1437c5693              # double 8.8982030000000005
	.quad	0x402385e15ca6ca04              # double 9.7614850000000004
	.quad	0x3fbd355475a31a4c              # double 0.114095
	.quad	0x40084045baf533f4              # double 3.0313829999999999
	.quad	0x4019d71b47842310              # double 6.4600650000000002
	.quad	0x4011211dbca9691a              # double 4.2823399999999996
	.quad	0x402088aaa7ded6bb              # double 8.2669270000000008
	.quad	0x4014780cf9e3864d              # double 5.1172370000000003
	.quad	0x402143dc69f8c21e              # double 8.6325409999999998
	.quad	0x401ce5814940bbb2              # double 7.224126
	.quad	0x402151b21c475e63              # double 8.6595619999999993
	.quad	0x401692263d816acf              # double 5.6427240000000003
	.quad	0x40182b59ddc1e796              # double 6.0423349999999996
	.quad	0x400e9320535c9e67              # double 3.8218390000000002
	.quad	0x4010cc4cdfaca362              # double 4.1995120000000004
	.quad	0x401ea945f9df548f              # double 7.6653060000000001
	.quad	0x3ff2c63065f9591d              # double 1.173386
	.quad	0x40200db7ae5796c0              # double 8.0267920000000004
	.quad	0x401a9524bfd2e947              # double 6.6456480000000004
	.quad	0x4020927f1b691212              # double 8.2861259999999994
	.quad	0x3ff2bc9de0503750              # double 1.171049
	.quad	0x4017971b8aa00193              # double 5.8975660000000003
	.quad	0x401be6eac8605682              # double 6.9755050000000001
	.quad	0x401d39029ae4f334              # double 7.3056739999999998
	.quad	0x40176c061847f562              # double 5.8554919999999999
	.quad	0x400ca7381d7dbf48              # double 3.5816499999999998
	.quad	0x3fec9b9d7fd82774              # double 0.89399600000000001
	.quad	0x4012cacb85a4f00f              # double 4.6980420000000001
	.quad	0x402029fff79c8430              # double 8.0820310000000006
	.quad	0x3ff35e75360d0247              # double 1.210561
	.quad	0x4023986a2b1704ff              # double 9.7976849999999995
	.quad	0x3fd5eea209aaa3ad              # double 0.34268999999999999
	.quad	0x3ff846d0d49949e9              # double 1.5172890000000001
	.quad	0x4003b9a95421c044              # double 2.4656549999999999
	.quad	0x401cf24180d3cff6              # double 7.2365779999999997
	.quad	0x40182e4a7b4e54f8              # double 6.0452060000000003
	.quad	0x401dc6f976790321              # double 7.4443109999999999
	.quad	0x4015eababead4f59              # double 5.479228
	.quad	0x401fb59ff4fd6d7f              # double 7.9273680000000004
	.quad	0x4003b0153bd16766              # double 2.4609779999999999
	.quad	0x3ff6b22f2734f82f              # double 1.4185019999999999
	.quad	0x4000573083558a76              # double 2.042573
	.quad	0x3ff391eeaa6d2674              # double 1.223128
	.quad	0x4002656f75d9a0f1              # double 2.2995290000000002
	.quad	0x402219bf5946c333              # double 9.0502880000000001
	.quad	0x401bed87b56b8738              # double 6.9819630000000004
	.quad	0x40101bf401c4fc1e              # double 4.027298
	.quad	0x401ba503fb374363              # double 6.9111479999999998
	.quad	0x4023aae33eff1950              # double 9.8337649999999996
	.quad	0x40159f5232d2bb23              # double 5.4055869999999997
	.quad	0x401c8fce3150dae4              # double 7.1404350000000001
	.quad	0x400cda7a85015c21              # double 3.6066790000000002
	.quad	0x400e31d4f9c1f85d              # double 3.7743319999999998
	.quad	0x3fdee12620253975              # double 0.48249199999999998
	.quad	0x40152b8f9b13165d              # double 5.2925399999999998
	.quad	0x3ff6d898b2e9ccb8              # double 1.42788
	.quad	0x4010c24bba12b5e5              # double 4.1897419999999999
	.quad	0x4018f280ae104923              # double 6.2368189999999997
	.quad	0x4020eb6cdf266ba5              # double 8.4598150000000008
	.quad	0x402210aaeafab53d              # double 9.0325539999999993
	.quad	0x40214ab990afe60c              # double 8.6459469999999996
	.quad	0x401fed44567125dd              # double 7.9817059999999999
	.quad	0x40168ffef39085f5              # double 5.6406210000000003
	.quad	0x401720446b69db66              # double 5.7815110000000001
	.quad	0x3ff87af42784a948              # double 1.5300180000000001
	.quad	0x4012dee73e681a9c              # double 4.7176790000000004
	.quad	0x3fd58c36da87a073              # double 0.33668300000000001
	.quad	0x4020680b02928177              # double 8.2032089999999993
	.quad	0x401cb84d338f7985              # double 7.1799819999999999
	.quad	0x401367625204af92              # double 4.8509609999999999
	.quad	0x401a571b47842310              # double 6.5850650000000002
	.quad	0x401eb66d373affb0              # double 7.6781509999999997
	.quad	0x40231e5e89225311              # double 9.5593149999999997
	.quad	0x4003eb7fe08aefb3              # double 2.4899900000000001
	.quad	0x400771a3b14a9047              # double 2.930488
	.quad	0x401a3311e85fd04a              # double 6.5498729999999998
	.quad	0x400391b8aa00192a              # double 2.4461529999999998
	.quad	0x400c0dcd2d44dca9              # double 3.5067390000000001
	.quad	0x4020225e99e94ab2              # double 8.0671280000000003
	.quad	0x401a64a515ce9e5e              # double 6.5982859999999999
	.quad	0x400d5a7221858bc6              # double 3.6691630000000002
	.quad	0x3fe07b3b7521144d              # double 0.51504300000000003
	.quad	0x4011553bd1676641              # double 4.3332360000000003
	.quad	0x401fbe3150dae3e7              # double 7.9357350000000002
	.quad	0x402218eb24a6a876              # double 9.0486690000000003
	.quad	0x4021b606961c3697              # double 8.8555189999999993
	.quad	0x3ff978d3f1843c3a              # double 1.5919989999999999
	.quad	0x40205b1b152f3c2e              # double 8.1779410000000006
	.quad	0x400d96d4c33b5393              # double 3.6986479999999999
	.quad	0x40216396af038e2a              # double 8.694509
	.quad	0x402128b242070b8d              # double 8.579485
	.quad	0x40229b8c32a8c9b8              # double 9.3038039999999995
	.quad	0x401d15870da5daf0              # double 7.2710229999999996
	.quad	0x4012bcdd50a88f00              # double 4.6844380000000001
	.quad	0x40072476f2a5a46a              # double 2.8928050000000001
	.quad	0x4012f88e79aae6c9              # double 4.742731
	.quad	0x401b1ceb356da017              # double 6.7782410000000004
	.quad	0x4012353f39d1b2e6              # double 4.5519990000000004
	.quad	0x400197f498c3b0c4              # double 2.1991969999999998
	.quad	0x40213d0aaa7ded6c              # double 8.6192220000000006
	.quad	0x401d44e618ce2d1f              # double 7.3172839999999999
	.quad	0x401773504c48adef              # double 5.8626110000000002
	.quad	0x40209614163779ea              # double 8.2931220000000003
	.quad	0x401270bed740c415              # double 4.6101029999999996
	.quad	0x40205e8a2ec28b2a              # double 8.1846479999999993
	.quad	0x4017aa11ec918e32              # double 5.9160839999999997
	.quad	0x3fd704b3c3e74afd              # double 0.35966199999999998
	.quad	0x400e60218def416c              # double 3.7969390000000001
	.quad	0x40201b382e44b6e9              # double 8.0531629999999996
	.quad	0x3fdeea1405708249              # double 0.48303699999999999
	.quad	0x40126dc5931ca7d6              # double 4.6071989999999996
	.quad	0x4010a913a4f8726d              # double 4.165114
	.quad	0x40049208e1501190              # double 2.5713059999999999
	.quad	0x40141140dd3fe197              # double 5.0168489999999997
	.quad	0x3ff06426bb55ac04              # double 1.024451
	.quad	0x401eb98e53eb399f              # double 7.6812069999999996
	.quad	0x401223f2d3c792d1              # double 4.5351059999999999
	.quad	0x40184f6c2699c7bd              # double 6.0775610000000002
	.quad	0x3fc562f9ca5bd945              # double 0.16708300000000001
	.quad	0x4013ef383f0bae8a              # double 4.9836130000000001
	.quad	0x4011e1fc08fa7a85              # double 4.470688
	.quad	0x3fd0e26d4801f751              # double 0.26382
	.quad	0x400ab6512a94ff00              # double 3.3390219999999999
	.quad	0x3ff7b3e78e1932d7              # double 1.481422
	.quad	0x401b1ad688377186              # double 6.7762089999999997
	.quad	0x4016dccbc05d52c1              # double 5.7156209999999996
	.quad	0x3fb31b25f633ce64              # double 0.074633000000000005
	.quad	0x400e7838c111ada7              # double 3.8087019999999998
	.quad	0x401e09c12f09d8c7              # double 7.5095260000000001
	.quad	0x401e4beb9e492bc3              # double 7.574141
	.quad	0x401a7f6d330941c8              # double 6.6244399999999999
	.quad	0x4016909aaa3ad18d              # double 5.6412149999999999
	.quad	0x401b6db59578a2a9              # double 6.857138
	.quad	0x40005d69d30270f4              # double 2.0456120000000002
	.quad	0x4000978897e99631              # double 2.0739909999999999
	.quad	0x3ffdc091c087442c              # double 1.8595139999999999
	.quad	0x3ff4dea78af3e469              # double 1.304359
	.quad	0x3fee94d0dcfcc5b9              # double 0.95566600000000002
	.quad	0x401970b45ae5ffa4              # double 6.3600630000000002
	.quad	0x401f75d63886594b              # double 7.865075
	.quad	0x40116bb5e0f7fcfc              # double 4.3551859999999998
	.quad	0x401c11565c2d2780              # double 7.0169309999999996
	.quad	0x4012f66772d5e072              # double 4.7406290000000002
	.quad	0x4012e376d5497311              # double 4.7221330000000004
	.quad	0x400e044b6e935b92              # double 3.752097
	.quad	0x40066d67fd3f5b60              # double 2.8034210000000002
	.quad	0x400bbca5bd944aa5              # double 3.4671129999999999
	.quad	0x400211cb039ef0f1              # double 2.2586879999999998
	.quad	0x4019b4a90470a809              # double 6.4264260000000002
	.quad	0x3fb508f648c7192f              # double 0.082168000000000005
	.quad	0x40227e3a19008206              # double 9.246537
	.quad	0x401022788db0574b              # double 4.0336629999999998
	.quad	0x4012a2007dd44135              # double 4.6582049999999997
	.quad	0x4015bed9dfdac68b              # double 5.4363780000000004
	.quad	0x40042151a437824d              # double 2.5162689999999999
	.quad	0x401a123a29c779a7              # double 6.5178000000000003
	.quad	0x40170495e17e34b9              # double 5.7544779999999998
	.quad	0x401e1280ae104923              # double 7.5180689999999996
	.quad	0x3fefc2656abde3fc              # double 0.99248000000000002
	.quad	0x40097efe93187619              # double 3.1870090000000002
	.quad	0x4015652bd3c36113              # double 5.3487999999999998
	.quad	0x3fb179af1886df83              # double 0.068263000000000004
	.quad	0x401fb36deb95e5b0              # double 7.925224
	.quad	0x4015df5c6c11a112              # double 5.4681259999999998
	.quad	0x40179237cdcca70d              # double 5.8927909999999999
	.quad	0x400c8af46aa087ca              # double 3.5678489999999998
	.quad	0x401342ba16e7a312              # double 4.8151630000000001
	.quad	0x40093e5c91d14e3c              # double 3.1554500000000001
	.quad	0x401b1dc768dfbd6a              # double 6.7790809999999997
	.quad	0x4009735653c9abb0              # double 3.181317
	.quad	0x4016e2c669057d18              # double 5.7214600000000004
	.quad	0x4004ebee807bbb62              # double 2.6152009999999999
	.quad	0x40239d26527a2058              # double 9.8069330000000007
	.quad	0x401929b845564b66              # double 6.2907419999999998
	.quad	0x3fedae40852b4d8c              # double 0.92752100000000003
	.quad	0x401ade481f53825e              # double 6.7170719999999999
	.quad	0x4011edce7cd03537              # double 4.4822329999999999
	.quad	0x3ff89dba908a265f              # double 1.538508
	.quad	0x401a57de939eadd6              # double 6.5858100000000004
	.quad	0x3fd531b152f3c2db              # double 0.33115800000000001
	.quad	0x4011c282c6ef3d3a              # double 4.4399519999999999
	.quad	0x402212d905c03361              # double 9.0368119999999994
	.quad	0x4021a9888f861a61              # double 8.8311200000000003
	.quad	0x40177c27631b584b              # double 5.8712439999999999
	.quad	0x4021b8d5629d840a              # double 8.8610030000000002
	.quad	0x3fff9c15097c8084              # double 1.975606
	.quad	0x401eb9dadfb506dd              # double 7.6814989999999996
	.quad	0x401f4308bb906467              # double 7.8154630000000002
	.quad	0x401f3bc7b45f17be              # double 7.8083790000000004
	.quad	0x4022877af640639d              # double 9.2646099999999993
	.quad	0x4008b0eed02cd39e              # double 3.0863930000000002
	.quad	0x4020db955f78359c              # double 8.4288740000000004
	.quad	0x401dfac8605681ed              # double 7.4949050000000001
	.quad	0x4012efa58f7121ab              # double 4.7340299999999997
	.quad	0x3fec6d0d49949e88              # double 0.88831199999999999
	.quad	0x4008442a66dbd72c              # double 3.0332840000000001
	.quad	0x3ff7759ff4fd6d7f              # double 1.4662170000000001
	.quad	0x40047d8409e55c10              # double 2.5612870000000001
	.quad	0x400f15e28aa43351              # double 3.8856860000000002
	.quad	0x3fc7352220bc382a              # double 0.181309
	.quad	0x400c0fe36d22424a              # double 3.5077579999999999
	.quad	0x401db4a1f080303c              # double 7.426399
	.quad	0x4009dc68661ae70c              # double 3.232621
	.quad	0x3fb080303c07ee0b              # double 0.064455999999999999
	.quad	0x400273e3e29307af              # double 2.3065869999999999
	.quad	0x401cd21187e7c06e              # double 7.2051449999999999
	.quad	0x3fba0c8cd63cb817              # double 0.101754
	.quad	0x401b0b2bfdb4cc25              # double 6.76091
	.quad	0x400be887229e9079              # double 3.4885389999999998
	.quad	0x401f5017dae81883              # double 7.8282160000000002
	.quad	0x3ff2f8a7e73a365d              # double 1.1857070000000001
	.quad	0x40117832b990afe6              # double 4.367381
	.quad	0x4023a27bd48cb4af              # double 9.8173510000000003
	.quad	0x3ff4b2fdb8fde2ef              # double 1.2936989999999999
	.quad	0x4014c9e55c0fcb4f              # double 5.1971639999999999
	.quad	0x4021cbd230b9dc2f              # double 8.8980879999999996
	.quad	0x4023ba600b029281              # double 9.8640139999999991
	.quad	0x4012f99392189bd8              # double 4.7437269999999998
	.quad	0x401cdc1bda5119ce              # double 7.21495
	.quad	0x400d2306e5cd4ed3              # double 3.6421030000000001
	.quad	0x4023f853e2d6238e              # double 9.9850150000000006
	.quad	0x401af91148fd9fd3              # double 6.7432299999999996
	.quad	0x3fa59253543aeab8              # double 0.042132000000000003
	.quad	0x400228eef1bac2df              # double 2.269987
	.quad	0x3fc0a2b9d3cbc48f              # double 0.129966
	.quad	0x3ff6f6d97b30f8c6              # double 1.4352659999999999
	.quad	0x4009e95c853c1483              # double 3.2389459999999999
	.quad	0x3ff6cfbeb9e492bc              # double 1.425719
	.quad	0x40163f57b41bfbdf              # double 5.561858
	.quad	0x40122bc6a7ef9db2              # double 4.5427499999999998
	.quad	0x4011204b3c3e74b0              # double 4.2815370000000001
	.quad	0x3ff29a921ccd9620              # double 1.1627369999999999
	.quad	0x401edc2a02320968              # double 7.7150040000000004
	.quad	0x40231f42fe82517e              # double 9.5610579999999992
	.quad	0x3ff5bb7c7820a30e              # double 1.3582730000000001
	.quad	0x400f8163779e9d0f              # double 3.9381780000000002
	.quad	0x40185effe2a3cea7              # double 6.0927730000000002
	.quad	0x4016b61e0c5a8156              # double 5.6778490000000001
	.quad	0x3fef723aafff36ac              # double 0.98269399999999995
	.quad	0x3ffb807cc7d1bb49              # double 1.718869
	.quad	0x3ffc06833c60029f              # double 1.75159
	.quad	0x4001a4ece9a2c669              # double 2.20553
	.quad	0x40228b22f2734f83              # double 9.2717510000000001
	.quad	0x4014c044284dfce3              # double 5.1877599999999999
	.quad	0x401c3e9a2c669058              # double 7.0611350000000002
	.quad	0x40137ac79702e664              # double 4.8699019999999997
	.quad	0x401effdb4cc25072              # double 7.74986
	.quad	0x4020ec83a96d4c34              # double 8.4619420000000005
	.quad	0x4004f4d1e96c3fc4              # double 2.6195409999999999
	.quad	0x3fd7ff9b56323bbc              # double 0.37497599999999998
	.quad	0x4022bf3f0fe047d4              # double 9.3735280000000003
	.quad	0x3ff9335f3d7d3911              # double 1.5750420000000001
	.quad	0x4022abe707e175d1              # double 9.3357469999999996
	.quad	0x4010721a719b4dcf              # double 4.1114290000000002
	.quad	0x3ff8b18a86d71f36              # double 1.543345
	.quad	0x40080ae429e0a41a              # double 3.0053179999999999
	.quad	0x4021f9a5a89b951c              # double 8.9875919999999993
	.quad	0x401a8c3f811f4f51              # double 6.6369610000000003
	.quad	0x4007e68986fcdee3              # double 2.9875669999999999
	.quad	0x40198f26aec0724b              # double 6.3897959999999996
	.quad	0x3ffa75536933a040              # double 1.6536439999999999
	.quad	0x400c5afea3df6db9              # double 3.5444309999999999
	.quad	0x3fe5fefe0ce0b913              # double 0.68737700000000002
	.quad	0x400b8f95d4e8fb01              # double 3.4451100000000001
	.quad	0x401ce90d5a5b9629              # double 7.2275900000000002
	.quad	0x4000a4bb1af3a14d              # double 2.080435
	.quad	0x4011b00bcbe61d00              # double 4.4219200000000001
	.quad	0x3fda09aaa3ad18d2              # double 0.40683999999999998
	.quad	0x4017ca415f45e0b5              # double 5.9475150000000001
	.quad	0x4019970196d8f4f9              # double 6.3974669999999998
	.quad	0x4022a59c6b053198              # double 9.3234589999999997
	.quad	0x4019b30c23fab10c              # double 6.4248510000000003
	.quad	0x40098b67c286f8ad              # double 3.1930689999999999
	.quad	0x3ff384806290eed0              # double 1.219849
	.quad	0x401db85510d38cda              # double 7.4300119999999996
	.quad	0x4006d73860999dcb              # double 2.8550879999999998
	.quad	0x400538665e02ea96              # double 2.652539
	.quad	0x4009865c70435efa              # double 3.1906059999999998
	.quad	0x400b2ab367a0f909              # double 3.3958499999999998
	.quad	0x402145bee3d5fdce              # double 8.6362220000000001
	.quad	0x40103554fbdad752              # double 4.0520820000000004
	.quad	0x401a4f5e84f09529              # double 6.5775090000000001
	.quad	0x40158436fc158fb4              # double 5.3791159999999998
	.quad	0x400e6b25b317efe1              # double 3.8023180000000001
	.quad	0x40221e81ecd4aa11              # double 9.0595850000000002
	.quad	0x401aecf67b1c0011              # double 6.7314090000000002
	.quad	0x401d6606b7aa25d9              # double 7.3496350000000001
	.quad	0x400cd3354c12274a              # double 3.603129
	.quad	0x40173b6e503fb374              # double 5.8080379999999998
	.quad	0x4014a6909aed56b0              # double 5.1626609999999999
	.quad	0x3ff74c6e6d9be4cd              # double 1.4561599999999999
	.quad	0x401634855da27286              # double 5.5512899999999998
	.quad	0x4002e30c23fab10c              # double 2.3608630000000002
	.quad	0x3ff569af5ba2be06              # double 1.3383020000000001
	.quad	0x401b64666ec9e237              # double 6.8480470000000002
	.quad	0x40108b7b28954a80              # double 4.1362120000000004
	.quad	0x4010de8ea39c51db              # double 4.2173410000000002
	.quad	0x40173e6644d87725              # double 5.810937
	.quad	0x401d652b4d8ba40e              # double 7.3487980000000004
	.quad	0x400f0e008e9b38d6              # double 3.881837
	.quad	0x4016da11233df2aa              # double 5.7129560000000001
	.quad	0x4006357b41bfbdf1              # double 2.7761140000000002
	.quad	0x401b28e4fb97bb73              # double 6.789936
	.quad	0x400b3fbf83382e45              # double 3.4061270000000001
	.quad	0x3fd79db65ecc3e32              # double 0.36900100000000002
	.quad	0x401e0b3461309c80              # double 7.510942
	.quad	0x4019ede3b8a19c9d              # double 6.4823139999999997
	.quad	0x4009896bb98c7e28              # double 3.1920999999999999
	.quad	0x4015d75c8d9f9054              # double 5.4603140000000003
	.quad	0x3ff94a2877ee4e27              # double 1.580605
	.quad	0x401125cf2495e17e              # double 4.2869229999999998
	.quad	0x40119b9e060fe47a              # double 4.4019700000000004
	.quad	0x4014258ab92c0618              # double 5.0366619999999998
	.quad	0x4023510624dd2f1b              # double 9.6582500000000006
	.quad	0x4016919b90ea9e6f              # double 5.6421950000000001
	.quad	0x401797de0d66f0d0              # double 5.8983080000000001
	.quad	0x4010b529fe004b7f              # double 4.1769179999999997
	.quad	0x401d4c76d117b528              # double 7.3246719999999996
	.quad	0x40185cd07852f7f5              # double 6.0906390000000004
	.quad	0x4007783f91e646f1              # double 2.9337149999999999
	.quad	0x4004cbaf965b20b8              # double 2.599456
	.quad	0x401b5bc87db2b346              # double 6.8396319999999999
	.quad	0x4019721fafc8b008              # double 6.3614490000000004
	.quad	0x4023e11105e1c151              # double 9.9395830000000007
	.quad	0x402077bb2fec56d6              # double 8.2338500000000003
	.quad	0x3fb5656eefa1e3eb              # double 0.083579000000000001
	.quad	0x40156465625a682b              # double 5.3480429999999997
	.quad	0x3ff52e48e8a71de7              # double 1.3238000000000001
	.quad	0x401fd87db2b34613              # double 7.9614169999999999
	.quad	0x3ff5dd8622c45027              # double 1.3665830000000001
	.quad	0x401b33293d102bc7              # double 6.7999619999999998
	.quad	0x4016300431bde82d              # double 5.5468909999999996
	.quad	0x4020e9ada76d97b3              # double 8.4564029999999999
	.quad	0x401ac199780baa58              # double 6.6890619999999998
	.quad	0x400c7208e1501190              # double 3.5556809999999999
	.quad	0x4020c6b50b0f27bb              # double 8.3880999999999997
	.quad	0x400844f54d1e96c4              # double 3.033671
	.quad	0x4017b4046412cf10              # double 5.9257980000000003
	.quad	0x3fed327243137b07              # double 0.912408
	.quad	0x4010421ff2e48e8a              # double 4.0645749999999996
	.quad	0x401837f023e9ea14              # double 6.054627
	.quad	0x3ff35270b06c43f6              # double 1.207627
	.quad	0x4020f996fa82e87d              # double 8.4874799999999997
	.quad	0x4019835935fc3b4f              # double 6.3782699999999997
	.quad	0x4021b1e71044f1a2              # double 8.8474660000000007
	.quad	0x401d04ec636b0963              # double 7.2548079999999997
	.quad	0x3ff996191148fda0              # double 1.599145
	.quad	0x4006df4dbdf8f473              # double 2.859035
	.quad	0x4018fbeec39799e5              # double 6.2460279999999999
	.quad	0x401d71f57b41bfbe              # double 7.3612880000000001
	.quad	0x401287b0b3919264              # double 4.6325099999999999
	.quad	0x4002aeeb702602c9              # double 2.33541
	.quad	0x40145c4545846e8f              # double 5.0901079999999999
	.quad	0x40235dc3bd599243              # double 9.6831340000000007
	.quad	0x4004b648c7192ea5              # double 2.5890059999999999
	.quad	0x3fdf0c5a8155d5f5              # double 0.48512899999999998
	.quad	0x4020940767d34df0              # double 8.2891189999999995
	.quad	0x40112fbca1059ea5              # double 4.2966179999999996
	.quad	0x4011e87ad080b674              # double 4.4770310000000002
	.quad	0x4004b8d6909aed57              # double 2.5902530000000001
	.quad	0x3ff8e23af31b152f              # double 1.5552319999999999
	.quad	0x40120d87f88765ba              # double 4.5132139999999996
	.quad	0x4023490c4dec1c1d              # double 9.6426719999999992
	.quad	0x4018084be40420f7              # double 6.0081020000000001
	.quad	0x4005c3265add9c28              # double 2.720288
	.quad	0x401ac8feef5ec80c              # double 6.6962849999999996
	.quad	0x401a8b295e9e1b09              # double 6.6359000000000004
	.quad	0x401e8058dde7a744              # double 7.6253390000000003
	.quad	0x3ffc1783dff3f0fe              # double 1.755741
	.quad	0x3fe0b44a1f080304              # double 0.52200800000000003
	.quad	0x400d34317acc4ef9              # double 3.6504850000000002
	.quad	0x4004d5c182ecaeea              # double 2.6043729999999998
	.quad	0x4009aa0dbad3a605              # double 3.2080340000000001
	.quad	0x4023cae81882adc5              # double 9.8963020000000003
	.quad	0x4021621682f94424              # double 8.6915779999999998
	.quad	0x4021f6e17a02fb5d              # double 8.982189
	.quad	0x3fe97605ab3aabcd              # double 0.79565699999999995
	.quad	0x4023ac6195464dc2              # double 9.8366819999999997
	.quad	0x401d592a737110e4              # double 7.3370759999999997
	.quad	0x3ff6f5fa22706d50              # double 1.4350529999999999
	.quad	0x4014f2cc70867ad9              # double 5.2371080000000001
	.quad	0x4002e43fe5c91d15              # double 2.36145
	.quad	0x4022cb65668c2614              # double 9.3972580000000007
	.quad	0x402092745bf26f1e              # double 8.2860440000000004
	.quad	0x4022e2e03b3e9a70              # double 9.4431170000000009
	.quad	0x400c24649906cca3              # double 3.5177700000000001
	.quad	0x4022d22a6f3f52fc              # double 9.4104799999999997
	.quad	0x40012ab606b7aa26              # double 2.1458550000000001
	.quad	0x40076a21a719b4dd              # double 2.926822
	.quad	0x400137318fc50481              # double 2.1519499999999998
	.quad	0x40075ec02f2f9874              # double 2.921265
	.quad	0x40078352eb5f5f0b              # double 2.9391229999999999
	.quad	0x3ff4ad3d859c8c93              # double 1.292295
	.quad	0x400dacd7cf5f4e44              # double 3.7093959999999999
	.quad	0x3ff5fbe33acd5b68              # double 1.373996
	.quad	0x400856f6512a94ff              # double 3.042462
	.quad	0x401348e757928e0d              # double 4.8211950000000003
	.quad	0x401c6f78359bc340              # double 7.1088570000000004
	.quad	0x401a6e58e64b2314              # double 6.607761
	.quad	0x4018b74cd31769a9              # double 6.1790039999999999
	.quad	0x3ff177521144cbe2              # double 1.091631
	.quad	0x401ad20ab7132724              # double 6.7051189999999998
	.quad	0x401d927fa1a0cf18              # double 7.3930649999999999
	.quad	0x40084ce91c8eac00              # double 3.0375540000000001
	.quad	0x40211f5126634118              # double 8.5611660000000001
	.quad	0x400d5dc054ef459e              # double 3.6707770000000002
	.quad	0x3fe93a0e8427418d              # double 0.78833699999999995
	.quad	0x40200feac42e989a              # double 8.0310880000000004
	.quad	0x40104e2089e34331              # double 4.0762960000000001
	.quad	0x4020dd9be4cd7492              # double 8.4328299999999992
	.quad	0x401c061f5be5d9e4              # double 7.005979
	.quad	0x40012500d5e8d541              # double 2.143068
	.quad	0x40183bdcad14a0a1              # double 6.058459
	.quad	0x400b80f12c27a637              # double 3.4379599999999999
	.quad	0x3fdcddf00abf76a3              # double 0.451046
	.quad	0x4008be707e175d14              # double 3.0929880000000001
	.quad	0x401620f7fcfc3f81              # double 5.5321959999999999
	.quad	0x40192b4395810625              # double 6.2922500000000001
	.quad	0x4012098d8a979e17              # double 4.5093290000000001
	.quad	0x4009d48b220791c5              # double 3.2287810000000001
	.quad	0x4021bcf6be37de94              # double 8.8690700000000006
	.quad	0x4016168405b39e28              # double 5.5219880000000003
	.quad	0x3fdd50c5eb313be2              # double 0.45805499999999999
	.quad	0x400a079dd3bafd97              # double 3.2537189999999998
	.quad	0x400e5ac471b47842              # double 3.7943199999999999
	.quad	0x40219378ee286727              # double 8.7880319999999994
	.quad	0x401f22617c1bda51              # double 7.7835749999999999
	.quad	0x4014e6cd29131ec1              # double 5.2253920000000003
	.quad	0x3ffb6d2fe3f359ff              # double 1.7141569999999999
	.quad	0x40135650e779207d              # double 4.8342929999999997
	.quad	0x402311633482be8c              # double 9.5339600000000004
	.quad	0x3feaa55d1c3ac92a              # double 0.83268600000000004
	.quad	0x400780841ede1199              # double 2.9377520000000001
	.quad	0x401c3f8a4c1ebc84              # double 7.0620510000000003
	.quad	0x4016f454de7ea5f8              # double 5.7386049999999997
	.quad	0x40125592d98bf7f0              # double 4.5835679999999996
	.quad	0x4020f15b9a5a89b9              # double 8.4714019999999994
	.quad	0x3faf7e5eaab04253              # double 0.061511000000000003
	.quad	0x40147f77af64063a              # double 5.1244800000000001
	.quad	0x3ffadcca70d1fa33              # double 1.678904
	.quad	0x3ffc272ead9274e2              # double 1.759566
	.quad	0x400d72c40d0aaa7e              # double 3.681038
	.quad	0x400e12862f5989df              # double 3.759045
	.quad	0x400189cf56eac860              # double 2.1922899999999998
	.quad	0x401011693c03bc4d              # double 4.0170029999999999
	.quad	0x400a2789e774eebf              # double 3.2693059999999998
	.quad	0x40221352220bc383              # double 9.0377360000000007
	.quad	0x401526c69b5a63fa              # double 5.2878670000000003
	.quad	0x401157a13c254a3c              # double 4.3355759999999997
	.quad	0x40211ccab3edd8b6              # double 8.5562339999999999
	.quad	0x4014125aee631f8a              # double 5.017925
	.quad	0x400ba350d2806af4              # double 3.4547439999999998
	.quad	0x40143b9d3cbc48f1              # double 5.058217
	.quad	0x4017360fa15db339              # double 5.8027939999999996
	.quad	0x400a6b6e0d23d4f1              # double 3.3024559999999998
	.quad	0x40033bc98a222d51              # double 2.4041929999999998
	.quad	0x401610cb6c7a7c9e              # double 5.5164010000000001
	.quad	0x4008a93532e7b3d9              # double 3.0826210000000001
	.quad	0x3fffbb890d5a5b96              # double 1.983285
	.quad	0x40157e17a02fb5d0              # double 5.3731369999999998
	.quad	0x4022140e1719f7f9              # double 9.0391700000000004
	.quad	0x401ab1a1db877ab3              # double 6.6734689999999999
	.quad	0x3fef1fa333764f12              # double 0.97261200000000003
	.quad	0x401083929ed3953e              # double 4.1284890000000001
	.quad	0x401175caf2d7f951              # double 4.3650320000000002
	.quad	0x402390468448cf7d              # double 9.7817880000000005
	.quad	0x3ff7350f40e5a35d              # double 1.4504539999999999
	.quad	0x3ffb9506573215fd              # double 1.7238830000000001
	.quad	0x40105a6c1a048e04              # double 4.0883029999999998
	.quad	0x400363fcc9ea9a3d              # double 2.4238219999999999
	.quad	0x40167ba94bbe4474              # double 5.6207630000000002
	.quad	0x401a8dbb9cf9a06a              # double 6.6384109999999996
	.quad	0x40220ae0e30446b7              # double 9.0212470000000007
	.quad	0x401545193708aac9              # double 5.3174789999999996
	.quad	0x402137a93af74cd3              # double 8.6087129999999998
	.quad	0x401db6bbdbe3c105              # double 7.4284509999999999
	.quad	0x4008136f7e3d1cc1              # double 3.00949
	.quad	0x400c2f3775b81301              # double 3.5230549999999998
	.quad	0x4015af327aa68f4b              # double 5.4210909999999997
	.quad	0x401f47f6f4be835e              # double 7.8202780000000001
	.quad	0x401eb54b8bef8ceb              # double 7.6770459999999998
	.quad	0x4016a444e0daa0cb              # double 5.6604190000000001
	.quad	0x4007598d8a979e17              # double 2.9187270000000001
	.quad	0x400b041461b6d43d              # double 3.376992
	.quad	0x4023e2d3e920c06a              # double 9.9430230000000002
	.quad	0x4000550ca1cef241              # double 2.041528
	.quad	0x4011d09289dadfb5              # double 4.453684
	.quad	0x4005bb9e060fe47a              # double 2.7166100000000002
	.quad	0x400ddb80a9de8b3b              # double 3.7321789999999999
	.quad	0x40158c97d8cf398f              # double 5.3872980000000004
	.quad	0x401a383c6c97d8cf              # double 6.5549179999999998
	.quad	0x4015a8561d4306e6              # double 5.4143910000000002
	.quad	0x4002c6f5019f3c71              # double 2.3471470000000001
	.quad	0x40120e6d58c8eef2              # double 4.5140890000000002
	.quad	0x401cd1de69ad42c4              # double 7.2049500000000002
	.quad	0x401e0cf893faf428              # double 7.5126670000000004
	.quad	0x40093b34a44c7b03              # double 3.1539090000000001
	.quad	0x401960e410b630a9              # double 6.3446199999999999
	.quad	0x4017e079a2834d27              # double 5.969214
	.quad	0x40066194c0160525              # double 2.797647
	.quad	0x401da57b84db9c73              # double 7.4116039999999996
	.quad	0x3fe2b38d60a63305              # double 0.58441799999999999
	.quad	0x401d035d67ba237d              # double 7.2532860000000001
	.quad	0x3fe6ddf86e3b46fe              # double 0.71459600000000001
	.quad	0x400d2711d798d8a9              # double 3.6440769999999998
	.quad	0x4023145c5718eb89              # double 9.5397669999999994
	.quad	0x400e067168f8e7de              # double 3.7531460000000001
	.quad	0x401de8fffbce4218              # double 7.4775390000000001
	.quad	0x401163d5fdcdf698              # double 4.3474959999999996
	.quad	0x3fd75757d5a9eb20              # double 0.36470599999999997
	.quad	0x401b3f34d6a161e5              # double 6.811725
	.quad	0x4013a3293d102bc7              # double 4.9093369999999998
	.quad	0x3ff274d9c6b0531a              # double 1.1535280000000001
	.quad	0x40212d9c065b63d4              # double 8.5890810000000001
	.quad	0x3fe6ab367a0f9097              # double 0.70840000000000003
	.quad	0x4002758969a0ad8a              # double 2.307391
	.quad	0x4015eb9884c6a3be              # double 5.4800740000000001
	.quad	0x3fda38ac18f81e8a              # double 0.40970899999999999
	.quad	0x401e29d2bf551505              # double 7.5408429999999997
	.quad	0x4021805271bcdbbe              # double 8.750629
	.quad	0x3fba122fad6cb535              # double 0.10184
	.quad	0x400255a07b352a84              # double 2.2918099999999999
	.quad	0x401764434e3369ba              # double 5.8479130000000001
	.quad	0x3ff0d8116ebd4cfd              # double 1.052751
	.quad	0x4012408e9b38d60a              # double 4.5630439999999997
	.quad	0x40041776c4827b70              # double 2.5114570000000001
	.quad	0x4020627546d3f9e8              # double 8.1923010000000005
	.quad	0x400bcb3354c12275              # double 3.4742190000000002
	.quad	0x40229a29a5ebb774              # double 9.3010990000000006
	.quad	0x4000f3f290abb44e              # double 2.1191149999999999
	.quad	0x4023b49cb252ce03              # double 9.8527579999999996
	.quad	0x4004039ef0f16f44              # double 2.5017680000000002
	.quad	0x3feb603b3e9a6f82              # double 0.85549699999999995
	.quad	0x40211da8deb0fadf              # double 8.5579289999999997
	.quad	0x3ff8ef2a5a469d73              # double 1.5583899999999999
	.quad	0x401737afea3df6dc              # double 5.8043820000000004
	.quad	0x4017c5d5f56a7ac8              # double 5.9431989999999999
	.quad	0x4010609c7ffde721              # double 4.094347
	.quad	0x40112a0dfdef8488              # double 4.2910690000000002
	.quad	0x401d969b5a63f9a5              # double 7.3970770000000003
	.quad	0x3fe12f6a50d6b229              # double 0.53703800000000002
	.quad	0x400239a38fbca106              # double 2.2781440000000002
	.quad	0x3fe8ac710cb295ea              # double 0.77105000000000001
	.quad	0x401ae7a3db3bfb59              # double 6.7262110000000002
	.quad	0x40186219eb6390c9              # double 6.0958019999999999
	.quad	0x40185881e4712e41              # double 6.0864330000000004
	.quad	0x40158b2a27f1b691              # double 5.3859029999999999
	.quad	0x401918c36da87a07              # double 6.2741829999999998
	.quad	0x3ff3a396073de1e3              # double 1.227438
	.quad	0x4020a3f0bae89eba              # double 8.3201959999999993
	.quad	0x402107e414e7ee91              # double 8.5154119999999995
	.quad	0x3fd5fe974a3400b9              # double 0.34366400000000003
	.quad	0x40147996b76709fa              # double 5.1187389999999997
	.quad	0x4022abf4eca686e8              # double 9.3358530000000001
	.quad	0x4023744d65e46067              # double 9.7271529999999994
	.quad	0x401999cbee807bbb              # double 6.4001919999999997
	.quad	0x4006380e496ededb              # double 2.777371
	.quad	0x4021c158750c1b97              # double 8.8776279999999996
	.quad	0x4021d2089e34330d              # double 8.9102219999999992
	.quad	0x4016505c896dd26b              # double 5.5784779999999996
	.quad	0x4022f62e09fe8683              # double 9.4808199999999995
	.quad	0x40110a65492ff4ba              # double 4.2601519999999997
	.quad	0x40084de5d18090b4              # double 3.038036
	.quad	0x4001c69ad42c3c9f              # double 2.221975
	.quad	0x4014a1737542a23c              # double 5.157667
	.quad	0x400f377d0f1f57b4              # double 3.902094
	.quad	0x400ff1b4784230fd              # double 3.99302
	.quad	0x401f2c2d6a9c560c              # double 7.7931419999999996
	.quad	0x401fe67168f8e7de              # double 7.9750420000000002
	.quad	0x40136b213e3e2930              # double 4.8546189999999996
	.quad	0x400630fa58f7121b              # double 2.7739150000000001
	.quad	0x4008c36006d0d499              # double 3.0953979999999999
	.quad	0x400954aec8d5c747              # double 3.1663489999999999
	.quad	0x4021701adea89763              # double 8.7189549999999993
	.quad	0x401065d78811b1d9              # double 4.0994549999999998
	.quad	0x3ffaee5de15ca6ca              # double 1.683195
	.quad	0x4015c17df19d66ae              # double 5.4389570000000003
	.quad	0x4007f4f93bc0a06f              # double 2.9946160000000002
	.quad	0x4007be38eb0318b9              # double 2.9678819999999999
	.quad	0x401e8b139c94f69d              # double 7.6358170000000002
	.quad	0x3ffc4b417ca2120e              # double 1.768373
	.quad	0x4018b3293d102bc7              # double 6.1749619999999998
	.quad	0x3ff87a743a647fdc              # double 1.5298959999999999
	.quad	0x401ab4b7b28954a8              # double 6.676482
	.quad	0x40183059210385c6              # double 6.0472149999999996
	.quad	0x40150929670196d9              # double 5.258947
	.quad	0x4002841919ac7970              # double 2.3145009999999999
	.quad	0x4020552dcb1465e9              # double 8.1663650000000008
	.quad	0x3ffd1b8348f53c58              # double 1.8192170000000001
	.quad	0x40206e65bea0ba1f              # double 8.2156199999999995
	.quad	0x400a0b39192641b3              # double 3.2554799999999999
	.quad	0x401b1b702602c908              # double 6.7767949999999999
	.quad	0x4001c4ba94bbe447              # double 2.2210589999999999
	.quad	0x40081c58ab92c062              # double 3.0138410000000002
	.quad	0x40162e5e2478854d              # double 5.5452810000000001
	.quad	0x401fcb3edd8b60f2              # double 7.9484820000000003
	.quad	0x4015853b8e4b87be              # double 5.3801100000000002
	.quad	0x40018a3f034b0e1b              # double 2.1925029999999999
	.quad	0x4012965d7cb2d906              # double 4.6468410000000002
	.quad	0x3fdd6b228dc981bf              # double 0.45966400000000002
	.quad	0x401c9f9d2bf55150              # double 7.1558729999999997
	.quad	0x401617219220ff54              # double 5.522589
	.quad	0x3fc45692b3cc4ac7              # double 0.15889200000000001
	.quad	0x3fcacfd8f0c77dd8              # double 0.20946799999999999
	.quad	0x4014bbfb15b573eb              # double 5.1835750000000003
	.quad	0x4016a2f72b452828              # double 5.6591459999999998
	.quad	0x401845d9a0f0a5f0              # double 6.0682130000000001
	.quad	0x4013d4a8c154c986              # double 4.9576750000000001
	.quad	0x3ffe1d0e991ff716              # double 1.8820939999999999
	.quad	0x400a6959e6256367              # double 3.3014410000000001
	.quad	0x401e720a73f748a1              # double 7.6113679999999996
	.quad	0x401c42495e17e34c              # double 7.0647330000000004
	.quad	0x40181d099e0e7360              # double 6.0283569999999997
	.quad	0x4021a4b7f5a5332b              # double 8.8217160000000003
	.quad	0x4012110cf5b1c865              # double 4.5166510000000004
	.quad	0x4018ecde5d18090b              # double 6.2313169999999998
	.quad	0x3f8864cb5bb384fd              # double 0.011911
	.quad	0x402197dd872f33ca              # double 8.7966119999999997
	.quad	0x401d52aed1394318              # double 7.3307450000000002
	.quad	0x401614185058dde8              # double 5.5196240000000003
	.quad	0x4015a910c2c5e2ce              # double 5.4151030000000002
	.quad	0x4017a68be2f7b17d              # double 5.9126430000000001
	.quad	0x401c50f7fcfc3f81              # double 7.0790709999999999
	.quad	0x4015f4f440af1cb9              # double 5.4892130000000003
	.quad	0x3feb6d0917d6b65b              # double 0.85706000000000004
	.quad	0x4017996af038e2a0              # double 5.8998220000000003
	.quad	0x4011c1832fcac8e7              # double 4.4389770000000004
	.quad	0x40200743e963dc48              # double 8.0141899999999993
	.quad	0x40163b0f27bb2fec              # double 5.5576749999999997
	.quad	0x4010b2f7b17ce52e              # double 4.1747730000000001
	.quad	0x4023df5f4e4430b1              # double 9.9362739999999991
	.quad	0x4013bc282c6ef3d4              # double 4.9337470000000003
	.quad	0x4022355d1c3ac92a              # double 9.1042260000000006
	.quad	0x3ffba8eb463497b7              # double 1.7287399999999999
	.quad	0x3ff471ef30a4e37a              # double 1.2778160000000001
	.quad	0x4020cc6de76427c8              # double 8.3992760000000004
	.quad	0x40108c968943e100              # double 4.1372929999999997
	.quad	0x4011eb5a20ddc619              # double 4.4798359999999997
	.quad	0x3fffc87ebf22c01e              # double 1.9864489999999999
	.quad	0x3ff024f00ef1348b              # double 1.009018
	.quad	0x4020898b502ababf              # double 8.2686410000000006
	.quad	0x4020ad8d79d0a676              # double 8.3389699999999998
	.quad	0x4022ed9c8c9320da              # double 9.4640850000000007
	.quad	0x401d3b020c49ba5e              # double 7.3076249999999998
	.quad	0x4022f9fa54c55433              # double 9.4882380000000008
	.quad	0x3ff50cae642bf983              # double 1.315596
	.quad	0x40213bdaf8df7a4e              # double 8.6169049999999991
	.quad	0x40167ae31d712a0f              # double 5.6200070000000002
	.quad	0x4013c69db65ecc3e              # double 4.9439609999999998
	.quad	0x401f472862f5989e              # double 7.8194900000000001
	.quad	0x4021bc25aee631f9              # double 8.8674750000000007
	.quad	0x4020a4853c148345              # double 8.3213290000000004
	.quad	0x401b2bf4cb1897a6              # double 6.7929259999999996
	.quad	0x4020d00cd855970b              # double 8.4063479999999995
	.quad	0x402035dce7cd0353              # double 8.1052009999999992
	.quad	0x40051fb480a5accd              # double 2.6404809999999999
	.quad	0x4018e3ccd0fe8ab5              # double 6.222461
	.quad	0x3ffa1db9841aac54              # double 1.6322570000000001
	.quad	0x400986b50b0f27bb              # double 3.1907749999999999
	.quad	0x4016cf0c77dd872f              # double 5.7021959999999998
	.quad	0x401053686a4ca4f4              # double 4.0814529999999998
	.quad	0x4019e1d6494d50ec              # double 6.4705440000000003
	.quad	0x4023e5883ba3443d              # double 9.9483049999999995
	.quad	0x3fe473cf70153bd1              # double 0.63913699999999996
	.quad	0x401b40dbf0563ed1              # double 6.813339
	.quad	0x3ff2bfca85caafbc              # double 1.171824
	.quad	0x4023361b6d43d039              # double 9.6056779999999992
	.quad	0x3ff64167a95c853c              # double 1.390968
	.quad	0x401b012620253975              # double 6.7511219999999996
	.quad	0x402070bcdfefbf40              # double 8.2201909999999998
	.quad	0x4018f1d041cc532a              # double 6.2361459999999997
	.quad	0x401f7ce8d972cd7d              # double 7.871982
	.quad	0x3fe9181beb18116f              # double 0.78419300000000003
	.quad	0x401db516db0dd830              # double 7.4268450000000001
	.quad	0x40194a6c5d206c87              # double 6.3226789999999999
	.quad	0x3fe9b9a7c17a8933              # double 0.80391299999999999
	.quad	0x4022f24f6598e10d              # double 9.473262
	.quad	0x3faf0e0a84be4042              # double 0.060654
	.quad	0x401aa4b9cb6848bf              # double 6.6608650000000003
	.quad	0x4013fc536d655e29              # double 4.9964120000000003
	.quad	0x401235610adcd2d4              # double 4.5521279999999997
	.quad	0x400b8ae429e0a41a              # double 3.4428179999999999
	.quad	0x40182363b256ffc1              # double 6.0345599999999999
	.quad	0x3fbda5119ce075f7              # double 0.1158
	.quad	0x401563f1843c3a43              # double 5.347601
	.quad	0x401cea9435ac8a37              # double 7.2290809999999999
	.quad	0x4019e9a3d2d87f88              # double 6.4781639999999996
	.quad	0x4005e432ca57a787              # double 2.7364250000000001
	.quad	0x401dc1ca7d6733ec              # double 7.4392490000000002
	.quad	0x4015b6a550870111              # double 5.4283650000000003
	.quad	0x401923f4666ec9e2              # double 6.2851119999999998
	.quad	0x40153beb9e492bc3              # double 5.308516
	.quad	0x401b38548a9bcfd5              # double 6.8050100000000002
	.quad	0x4018faac96cc5fc0              # double 6.2447990000000004
	.quad	0x401872cb641700ce              # double 6.1121040000000004
	.quad	0x402342d44dca8e2e              # double 9.6305259999999997
	.quad	0x40065a0620ab7132              # double 2.7939569999999998
	.quad	0x400b4cfe154434e3              # double 3.4125939999999999
	.quad	0x40238ea35935fc3b              # double 9.7785899999999994
	.quad	0x400d70ff97247454              # double 3.6801750000000002
	.quad	0x4012801797cc3a00              # double 4.6250900000000001
	.quad	0x3ff98c996b7670a0              # double 1.5968260000000001
	.quad	0x4007b7fb69984a0e              # double 2.9648349999999999
	.quad	0x4021e14b9cb6848c              # double 8.9400300000000001
	.quad	0x401b5a04d12018a4              # double 6.8379089999999998
	.quad	0x400b1d7a13c254a4              # double 3.3893930000000001
	.quad	0x400fa635a426bb56              # double 3.9561570000000001
	.quad	0x4010f5bd944aa540              # double 4.2399810000000002
	.quad	0x400cd2990f301eac              # double 3.6028310000000001
	.quad	0x3fd0f43c7d5ed070              # double 0.264907
	.quad	0x401c9f0fe047d3d4              # double 7.1553339999999999
	.quad	0x401b8c6540cc78ea              # double 6.887105
	.quad	0x4021c087442c7fbb              # double 8.8760320000000004
	.quad	0x401af4b48d3ae686              # double 6.7389700000000001
	.quad	0x4016c8adeebb341e              # double 5.6959759999999999
	.quad	0x4008ce95faa8a82a              # double 3.1008719999999999
	.quad	0x400eccf398e97072              # double 3.8500740000000002
	.quad	0x401aabda0dfdef85              # double 6.6678240000000004
	.quad	0x402179be8ff327aa              # double 8.7377819999999993
	.quad	0x400cd7ff151e7536              # double 3.605467
	.quad	0x4010d6191148fda0              # double 4.2090800000000002
	.quad	0x4020a0c3d25247cb              # double 8.3139939999999992
	.quad	0x3ff8bab649d388a9              # double 1.5455840000000001
	.quad	0x4012e65881a15550              # double 4.7249470000000002
	.quad	0x4022bc37824d4cba              # double 9.3676110000000001
	.quad	0x3ffa60f5e41d4b6a              # double 1.6486719999999999
	.quad	0x40215345ae5ffa3c              # double 8.6626410000000007
	.quad	0x401f4ce24bba12b6              # double 7.8250820000000001
	.quad	0x4013f52ef911cf35              # double 4.9894369999999997
	.quad	0x4019811233df2a9d              # double 6.3760459999999997
	.quad	0x401f49667b5f1bef              # double 7.8216799999999997
	.quad	0x3feec2d6a9c560c8              # double 0.96128400000000002
	.quad	0x4006e23076c050be              # double 2.8604440000000002
	.quad	0x40212c59b8023a6d              # double 8.5866220000000002
	.quad	0x401d7d052934acb0              # double 7.37209
	.quad	0x40145f1ae2da554c              # double 5.0928760000000004
	.quad	0x401901db0142f61f              # double 6.2518120000000001
	.quad	0x40193cb6c7a7c9de              # double 6.309291
	.quad	0x400d4c271fff79c8              # double 3.6621839999999999
	.quad	0x4011e1098d477bc0              # double 4.4697630000000004
	.quad	0x400fe30ec3116228              # double 3.985868
	.quad	0x401f7a67e846a5d7              # double 7.8695370000000002
	.quad	0x3ffa3212d77318fc              # double 1.6372249999999999
	.quad	0x40221e47778dd617              # double 9.0591390000000001
	.quad	0x3ff70dc55000c954              # double 1.4408620000000001
	.quad	0x40224a599ed7c6fc              # double 9.1452150000000003
	.quad	0x401adee7c49fd7a1              # double 6.7176809999999998
	.quad	0x400dfd334c5da6a4              # double 3.7486329999999999
	.quad	0x4019e87b56b87379              # double 6.4770329999999996
	.quad	0x400095c63ae2541e              # double 2.0731320000000002
	.quad	0x402022bbecaab8a6              # double 8.0678400000000003
	.quad	0x3feee4b87bdcf030              # double 0.96541999999999994
	.quad	0x401215ec3dab5c3a              # double 4.5214090000000002
	.quad	0x40081e4606748e47              # double 3.0147819999999999
	.quad	0x40127e89656eefa2              # double 4.6235710000000001
	.quad	0x402397fde7210be9              # double 9.7968589999999995
	.quad	0x4009b2862f5989df              # double 3.21217
	.quad	0x3ffff65cb35f3d7d              # double 1.997647
	.quad	0x3fe044007570c565              # double 0.508301
	.quad	0x401253d6c7219221              # double 4.581874
	.quad	0x3fa4ad14a0a0f4d8              # double 0.040383000000000002
	.quad	0x401fbd7add15f02c              # double 7.9350389999999997
	.quad	0x400b9a5332acfb76              # double 3.4503539999999999
	.quad	0x4011564fdb09a672              # double 4.3342890000000001
	.quad	0x3fee7631b584b1ab              # double 0.951928
	.quad	0x4023d8765ba6efc3              # double 9.9227779999999992
	.quad	0x4014497460242d06              # double 5.071733
	.quad	0x4007b568e820e62a              # double 2.9635790000000002
	.quad	0x3ffb3d68405b39e2              # double 1.7024919999999999
	.quad	0x3ff84de5d18090b4              # double 1.519018
	.quad	0x40221c4ac6cdaf4b              # double 9.0552580000000003
	.quad	0x40190a771c970f7c              # double 6.2602200000000003
	.quad	0x40175eab367a0f91              # double 5.8424500000000004
	.quad	0x40238a5482385404              # double 9.7701759999999993
	.quad	0x4013f2fdfc19c172              # double 4.9872969999999999
	.quad	0x3ff1269ad42c3c9f              # double 1.071925
	.quad	0x3fcc5c03361565c3              # double 0.221558
	.quad	0x400dd311a543f1c7              # double 3.7280609999999998
	.quad	0x4018b5d18090b418              # double 6.1775570000000002
	.quad	0x40208d8e64b23140              # double 8.2764769999999999
	.quad	0x401432c6ac215b9a              # double 5.0495859999999997
	.quad	0x401ddbb55ac03ff7              # double 7.4645590000000004
	.quad	0x4008e5729b280f13              # double 3.1120350000000001
	.quad	0x40044110a137f38c              # double 2.5317699999999999
	.quad	0x4014051eb851eb85              # double 5.0049999999999999
	.quad	0x3fd45dcc63f14120              # double 0.31822499999999998
	.quad	0x40234ff13059641f              # double 9.6561369999999993
	.quad	0x400742f944241c3f              # double 2.907702
	.quad	0x400fcdbd72bcb5fe              # double 3.9754589999999999
	.quad	0x401af1159c497742              # double 6.7354339999999997
	.quad	0x401bddab9f559b3d              # double 6.966475
	.quad	0x40219a1fd1569f49              # double 8.801024
	.quad	0x4023b993b3a68b1a              # double 9.8624550000000006
	.quad	0x3ff9473ffac1d29e              # double 1.579895
	.quad	0x3fe665ffa3b9ae0c              # double 0.69995099999999999
	.quad	0x3fe08151a437824d              # double 0.51578599999999997
	.quad	0x4011d7cdcca70d20              # double 4.4607460000000003
	.quad	0x4017d5f80991793a              # double 5.9589540000000003
	.quad	0x401b7e0ac7da1ec5              # double 6.8730880000000001
	.quad	0x401e6c176577531e              # double 7.6055580000000003
	.quad	0x401a2f9f87f023ea              # double 6.5465070000000001
	.quad	0x4015377c88e79aae              # double 5.3041859999999996
	.quad	0x4023a6e568a50508              # double 9.8259690000000006
	.quad	0x401807f8ca8198f2              # double 6.0077850000000002
	.quad	0x4013c53c579f2346              # double 4.9426129999999997
	.quad	0x401aa24851a86940              # double 6.6584789999999998
	.quad	0x4015dec39799e519              # double 5.467543
	.quad	0x401b64d26fa3fcca              # double 6.8484590000000001
	.quad	0x401f3ca85caafbc2              # double 7.8092360000000003
	.quad	0x3fd2fafc8b0079a3              # double 0.29656900000000003
	.quad	0x4022ae11ba3ca750              # double 9.3399789999999996
	.quad	0x3fec1695d91ab8e9              # double 0.87775700000000001
	.quad	0x402180de4c51116b              # double 8.7516960000000008
	.quad	0x3ffc57d3910c2c5e              # double 1.771442
	.quad	0x40166ca5375c8da0              # double 5.6060990000000004
	.quad	0x4011d71758e21965              # double 4.4600499999999998
	.quad	0x401ac4ddb5525cc4              # double 6.6922519999999999
	.quad	0x401356f2e8c0485a              # double 4.834911
	.quad	0x400278bbd3804535              # double 2.3089520000000001
	.quad	0x3fcc4199fe43675e              # double 0.220752
	.quad	0x400dd4e3bcd35a86              # double 3.7289500000000002
	.quad	0x4006e964e8b7e4de              # double 2.8639619999999999
	.quad	0x40020c3547e06962              # double 2.2559610000000001
	.quad	0x4014b3c70c996b76              # double 5.1755639999999996
	.quad	0x3ff61e0a41a261bf              # double 1.382334
	.quad	0x400d593ccd0fe8ab              # double 3.6685729999999999
	.quad	0x40094b5675579af2              # double 3.1617860000000002
	.quad	0x3ffc7b320535c9e6              # double 1.7800769999999999
	.quad	0x401552fb5d031056              # double 5.3310370000000002
	.quad	0x3ff99c25d074213a              # double 1.600622
	.quad	0x3ff7819c17225b75              # double 1.4691430000000001
	.quad	0x400909c0a8d21bc1              # double 3.1297619999999999
	.quad	0x400cc2834d26fa40              # double 3.5949770000000001
	.quad	0x4022026351deefe5              # double 9.004664
	.quad	0x40225d73647baa9b              # double 9.1825209999999995
	.quad	0x400b59ca5bd944aa              # double 3.4188429999999999
	.quad	0x4001f3dfb0d51f82              # double 2.2440790000000002
	.quad	0x40206b90ea9e6eeb              # double 8.2100899999999992
	.quad	0x40154647fdc5931d              # double 5.3186340000000003
	.quad	0x4012c744f5d35654              # double 4.6945990000000002
	.quad	0x4023fcc426351def              # double 9.993684
	.quad	0x4014e09d8c6d612c              # double 5.2193509999999996
	.quad	0x401de13879c4113c              # double 7.4699419999999996
	.quad	0x4020f8a41a261bf3              # double 8.4856269999999991
	.quad	0x4022bfa7eb6bf445              # double 9.3743280000000002
	.quad	0x402191246bf01323              # double 8.7834810000000001
	.quad	0x3ffa5eb95e5aff2a              # double 1.648126
	.quad	0x3ff02cb85a4f00ef              # double 1.010918
	.quad	0x4003ec282c6ef3d4              # double 2.4903110000000002
	.quad	0x401dd916440f2389              # double 7.4619989999999996
	.quad	0x40083b0c4588a04d              # double 3.028832
	.quad	0x40140d22856605ee              # double 5.0128269999999997
	.quad	0x4020cbbdbe3c1052              # double 8.3979320000000008
	.quad	0x401744b5dcc63f14              # double 5.8170999999999999
	.quad	0x3ff6c564f97edc7f              # double 1.423192
	.quad	0x3fe538066c2acb86              # double 0.66308900000000004
	.quad	0x4010d0a244630660              # double 4.2037440000000004
	.quad	0x40126d4a5df2239e              # double 4.6067289999999996
	.quad	0x3ffef2990f301eac              # double 1.9342280000000001
	.quad	0x401ed48d7e02645e              # double 7.7075709999999997
	.quad	0x3fd9edc7ef177a70              # double 0.405138
	.quad	0x401bd4c51116a8b9              # double 6.9577830000000001
	.quad	0x4001ed338f798527              # double 2.240821
	.quad	0x4020c88b32ce8965              # double 8.3916869999999992
	.quad	0x4021728dc981beb2              # double 8.7237380000000009
	.quad	0x4007921ee675147f              # double 2.946348
	.quad	0x4023f203e63e8dda              # double 9.9726859999999995
	.quad	0x3fe97090f733a8a4              # double 0.794991
	.quad	0x40083cc426351def              # double 3.029671
	.quad	0x400a2265f0f5a101              # double 3.2667959999999998
	.quad	0x401394e1e71044f2              # double 4.8953930000000003
	.quad	0x3fe7f3fd933e35c6              # double 0.74853400000000003
	.quad	0x4017e7f4dbdf8f47              # double 5.9765199999999998
	.quad	0x40236bed740c4157              # double 9.7107960000000002
	.quad	0x401883c925785f8d              # double 6.1286969999999998
	.quad	0x4002744806290eed              # double 2.306778
	.quad	0x4019ccd898b2e9cd              # double 6.4500450000000003
	.quad	0x401af2e9ccb7d417              # double 6.7372199999999998
	.quad	0x40106784ec636b09              # double 4.1010929999999997
	.quad	0x3ffc022ab25b317f              # double 1.750529
	.quad	0x3fcf79d0a67620ef              # double 0.24590500000000001
	.quad	0x401ec1a8ac5c13fd              # double 7.6891199999999999
	.quad	0x3fe7907b784662bb              # double 0.73638700000000001
	.quad	0x4017cb20fb224aae              # double 5.9483680000000003
	.quad	0x3ff8d32d6ece13f5              # double 1.5515570000000001
	.quad	0x402062a369fcf3dc              # double 8.1926529999999999
	.quad	0x40227fc06e19b90f              # double 9.2495150000000006
	.quad	0x402189ce4a7b4e55              # double 8.7691520000000001
	.quad	0x400c874080f98fa3              # double 3.5660409999999998
	.quad	0x3ffe055000c9539c              # double 1.8762970000000001
	.quad	0x400472becedd4845              # double 2.556028
	.quad	0x401b4b76f6d76252              # double 6.823696
	.quad	0x3ff914a1ad6451b9              # double 1.567537
	.quad	0x40186b3aeee95747              # double 6.1047169999999999
	.quad	0x401fd66fd651b0cd              # double 7.9594110000000002
	.quad	0x4012ae175d13d74d              # double 4.6700109999999997
	.quad	0x401fdeeaa6d26741              # double 7.9676920000000004
	.quad	0x401f18eef1bac2df              # double 7.7743489999999999
	.quad	0x400ebde7210be942              # double 3.8427259999999999
	.quad	0x3fe9ff79c842fa51              # double 0.81243600000000005
	.quad	0x400d3ddfc9ff92f3              # double 3.6552120000000001
	.quad	0x4023387724fa8b4c              # double 9.610284
	.quad	0x40205e4d7f0ed3d8              # double 8.1841849999999994
	.quad	0x3fd7eb3dd11be6e6              # double 0.37373299999999998
	.quad	0x401ec459103c8e26              # double 7.6917460000000002
	.quad	0x402329355475a31a              # double 9.5804849999999995
	.quad	0x400c1ba6698bb4d5              # double 3.5135010000000002
	.quad	0x4020c6d698fe6927              # double 8.3883559999999999
	.quad	0x400ce1f42bb66730              # double 3.6103290000000001
	.quad	0x400f5d8a54823854              # double 3.920674
	.quad	0x401a05ebb7739f34              # double 6.505782
	.quad	0x3fe0ff0cbaf965b2              # double 0.531134
	.quad	0x40150484d76ab580              # double 5.2544129999999996
	.quad	0x401e7b2745bf26f2              # double 7.6202670000000001
	.quad	0x4011790470a808c8              # double 4.3681809999999999
	.quad	0x401e9a975afaf859              # double 7.6509679999999997
	.quad	0x40169d6b65a9a805              # double 5.6537300000000004
	.quad	0x4006748b220791c5              # double 2.8069060000000001
	.quad	0x401b6d983947496b              # double 6.8570260000000003
	.quad	0x401fb7021d10b1ff              # double 7.928719
	.quad	0x4016480baa582dbe              # double 5.5703569999999996
	.quad	0x4014fa8d64d7f0ed              # double 5.2446799999999998
	.quad	0x40197e15011904b4              # double 6.3731270000000002
	.quad	0x402111dbca9691a7              # double 8.5348799999999994
	.quad	0x4016f28f9f44d445              # double 5.7368759999999996
	.quad	0x3ff7a8fd199bb279              # double 1.4787570000000001
	.quad	0x401dc08637bd05af              # double 7.4380119999999996
	.quad	0x4021f67ec7863bef              # double 8.9814360000000004
	.quad	0x4022ac6950fc71d6              # double 9.336741
	.quad	0x3fcaefaa4766c6de              # double 0.21043899999999999
	.quad	0x3ff0b5b2d4d4024b              # double 1.04436
	.quad	0x4021473797460243              # double 8.6390960000000003
	.quad	0x3ffe2d7b634dad32              # double 1.886104
	.quad	0x401f908d8ec95bff              # double 7.8911649999999999
	.quad	0x3fd34af922962cfe              # double 0.30145100000000002
	.quad	0x4021fc4bf4cb1898              # double 8.9927670000000006
	.quad	0x3fa16c61522a6f3f              # double 0.034029999999999998
	.quad	0x3febc154c985f06f              # double 0.86734999999999995
	.quad	0x401d5ee136e71cda              # double 7.3426559999999998
	.quad	0x401db1f4f50a02b8              # double 7.4237859999999997
	.quad	0x401e9a2a90cd423e              # double 7.6505530000000004
	.quad	0x3fe940229a5ebb77              # double 0.78907899999999997
	.quad	0x40229d78811b1d93              # double 9.3075600000000005
	.quad	0x4022182ea960b6fa              # double 9.047231
	.quad	0x401618194c016052              # double 5.5235339999999997
	.quad	0x3ff66d256798958e              # double 1.4016470000000001
	.quad	0x40189c2656abde40              # double 6.1524900000000002
	.quad	0x4020f8fe047d3d43              # double 8.4863130000000009
	.quad	0x40074b04ab606b7b              # double 2.9116300000000002
	.quad	0x40236ddedf1e0829              # double 9.7145910000000004
	.quad	0x401452d2bb23571d              # double 5.0808819999999999
	.quad	0x3ff36cedd4845133              # double 1.214094
	.quad	0x401adf6b5d462c34              # double 6.7181829999999998
	.quad	0x4022de95b78cc9a7              # double 9.4347359999999991
	.quad	0x40195c918e325d4a              # double 6.3403989999999997
	.quad	0x402301c2c1b10fd8              # double 9.5034390000000001
	.quad	0x40062d352220bc38              # double 2.7720739999999999
	.quad	0x400a0c9539b88872              # double 3.2561439999999999
	.quad	0x40238ec050bd87b5              # double 9.7788109999999992
	.quad	0x4012136bd2b6f199              # double 4.5189659999999998
	.quad	0x40228bd20f2becee              # double 9.2730870000000003
	.quad	0x400429b62c77574f              # double 2.5203669999999998
	.quad	0x4014b6a9c560c7c1              # double 5.178382
	.quad	0x4017d85058dde7a7              # double 5.9612439999999998
	.quad	0x4003f44aa53fc009              # double 2.4942829999999998
	.quad	0x40180b97bb730835              # double 6.0113209999999997
	.quad	0x3ff8ba27ae9ab29e              # double 1.5454479999999999
	.quad	0x4011b215b9a5a89c              # double 4.4239110000000004
	.quad	0x4021950f40e5a35d              # double 8.7911319999999993
	.quad	0x401d224af0bf1a5d              # double 7.2834890000000003
	.quad	0x3ff220cf1800a7c6              # double 1.1330100000000001
	.quad	0x4019801c0ca600b0              # double 6.3751069999999999
	.quad	0x402007f6b1a2a4db              # double 8.0155539999999998
	.quad	0x4012f6c9c0a8d21c              # double 4.7410040000000002
	.quad	0x401a09934efcbd55              # double 6.5093509999999997
	.quad	0x40042c026cc1ca3a              # double 2.5214889999999999
	.quad	0x3fffaabcd78c4370              # double 1.9791840000000001
	.quad	0x401c67774aba3876              # double 7.1010410000000004
	.quad	0x4007ea5375c8d9f9              # double 2.989417
	.quad	0x401605d1c3ac929b              # double 5.5056830000000003
	.quad	0x40141d3415b1422d              # double 5.0285190000000002
	.quad	0x4023b3c792d1287c              # double 9.8511319999999997
	.quad	0x4019283dbc23315d              # double 6.2892979999999996
	.quad	0x3ff778ef34d6a162              # double 1.467025
	.quad	0x40148cff64cf8d71              # double 5.1376929999999996
	.size	.L__constant_5000xf64, 40000

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
