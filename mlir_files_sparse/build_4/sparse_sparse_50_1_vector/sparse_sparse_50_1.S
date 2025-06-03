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
	.quad	0x41429c34355f1bef              # double 2439272.4169649999
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
	.quad	49                              # 0x31
	.quad	100                             # 0x64
	.quad	150                             # 0x96
	.quad	199                             # 0xc7
	.quad	256                             # 0x100
	.quad	311                             # 0x137
	.quad	359                             # 0x167
	.quad	409                             # 0x199
	.quad	458                             # 0x1ca
	.quad	502                             # 0x1f6
	.quad	547                             # 0x223
	.quad	598                             # 0x256
	.quad	653                             # 0x28d
	.quad	704                             # 0x2c0
	.quad	751                             # 0x2ef
	.quad	803                             # 0x323
	.quad	853                             # 0x355
	.quad	904                             # 0x388
	.quad	965                             # 0x3c5
	.quad	1006                            # 0x3ee
	.quad	1063                            # 0x427
	.quad	1121                            # 0x461
	.quad	1173                            # 0x495
	.quad	1220                            # 0x4c4
	.quad	1272                            # 0x4f8
	.quad	1320                            # 0x528
	.quad	1369                            # 0x559
	.quad	1424                            # 0x590
	.quad	1474                            # 0x5c2
	.quad	1518                            # 0x5ee
	.quad	1565                            # 0x61d
	.quad	1616                            # 0x650
	.quad	1671                            # 0x687
	.quad	1724                            # 0x6bc
	.quad	1778                            # 0x6f2
	.quad	1820                            # 0x71c
	.quad	1863                            # 0x747
	.quad	1916                            # 0x77c
	.quad	1960                            # 0x7a8
	.quad	2009                            # 0x7d9
	.quad	2053                            # 0x805
	.quad	2105                            # 0x839
	.quad	2157                            # 0x86d
	.quad	2205                            # 0x89d
	.quad	2255                            # 0x8cf
	.quad	2305                            # 0x901
	.quad	2347                            # 0x92b
	.quad	2396                            # 0x95c
	.quad	2448                            # 0x990
	.quad	2500                            # 0x9c4
	.quad	2557                            # 0x9fd
	.quad	2605                            # 0xa2d
	.quad	2657                            # 0xa61
	.quad	2703                            # 0xa8f
	.quad	2750                            # 0xabe
	.quad	2808                            # 0xaf8
	.quad	2865                            # 0xb31
	.quad	2915                            # 0xb63
	.quad	2962                            # 0xb92
	.quad	3015                            # 0xbc7
	.quad	3069                            # 0xbfd
	.quad	3119                            # 0xc2f
	.quad	3169                            # 0xc61
	.quad	3222                            # 0xc96
	.quad	3275                            # 0xccb
	.quad	3334                            # 0xd06
	.quad	3385                            # 0xd39
	.quad	3437                            # 0xd6d
	.quad	3490                            # 0xda2
	.quad	3542                            # 0xdd6
	.quad	3587                            # 0xe03
	.quad	3635                            # 0xe33
	.quad	3681                            # 0xe61
	.quad	3731                            # 0xe93
	.quad	3775                            # 0xebf
	.quad	3822                            # 0xeee
	.quad	3875                            # 0xf23
	.quad	3926                            # 0xf56
	.quad	3972                            # 0xf84
	.quad	4027                            # 0xfbb
	.quad	4081                            # 0xff1
	.quad	4129                            # 0x1021
	.quad	4176                            # 0x1050
	.quad	4231                            # 0x1087
	.quad	4273                            # 0x10b1
	.quad	4325                            # 0x10e5
	.quad	4376                            # 0x1118
	.quad	4425                            # 0x1149
	.quad	4474                            # 0x117a
	.quad	4525                            # 0x11ad
	.quad	4572                            # 0x11dc
	.quad	4621                            # 0x120d
	.quad	4666                            # 0x123a
	.quad	4710                            # 0x1266
	.quad	4761                            # 0x1299
	.quad	4814                            # 0x12ce
	.quad	4859                            # 0x12fb
	.quad	4907                            # 0x132b
	.quad	4953                            # 0x1359
	.quad	5000                            # 0x1388
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_5000xindex,@object # @__constant_5000xindex
	.p2align	6, 0x0
.L__constant_5000xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
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
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
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
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
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
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
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
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
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
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
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
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
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
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
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
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
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
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.size	.L__constant_5000xindex, 40000

	.type	.L__constant_5000xf64,@object   # @__constant_5000xf64
	.p2align	6, 0x0
.L__constant_5000xf64:
	.quad	0x4019f25c3dee7818              # double 6.4866799999999998
	.quad	0x3fd1befd00713f07              # double 0.27728199999999997
	.quad	0x4022285db76b3bb8              # double 9.0788399999999996
	.quad	0x3ff24123810e8859              # double 1.140903
	.quad	0x40219c7dc37a3db4              # double 8.8056470000000004
	.quad	0x401971b21c475e63              # double 6.3610309999999997
	.quad	0x401d7d916872b021              # double 7.3726250000000002
	.quad	0x401b345f17bd8be7              # double 6.8011439999999999
	.quad	0x40109ccccccccccd              # double 4.1531250000000002
	.quad	0x3fe49884c6a3bde0              # double 0.64361800000000002
	.quad	0x4002ed8ec95bff04              # double 2.3659949999999998
	.quad	0x3fbaa326e115592e              # double 0.10405200000000001
	.quad	0x4014fa7829068987              # double 5.244599
	.quad	0x4007ea53fc0096ff              # double 2.9894180000000001
	.quad	0x400840f55de58e65              # double 3.0317180000000001
	.quad	0x3fdabe5109070fbf              # double 0.41786600000000002
	.quad	0x3ffe08dc11e42e12              # double 1.8771629999999999
	.quad	0x401a11804d983947              # double 6.5170909999999997
	.quad	0x4004fbc664d3bf2f              # double 2.6229369999999999
	.quad	0x400ae6bce8533b10              # double 3.3626649999999998
	.quad	0x401951d3aa369fcf              # double 6.3299089999999998
	.quad	0x40137fa3b9ae0c17              # double 4.8746479999999996
	.quad	0x402107ac3eb7cbb4              # double 8.5149860000000003
	.quad	0x4012f938de6ddf01              # double 4.7433810000000003
	.quad	0x401f73cf70153bd1              # double 7.8630959999999996
	.quad	0x40103c7abfb9bed3              # double 4.0590619999999999
	.quad	0x4004844178705426              # double 2.564578
	.quad	0x401c2d2d01c0ca60              # double 7.044117
	.quad	0x401d1ffcdab191de              # double 7.2812380000000001
	.quad	0x3fe3a0c282c6ef3d              # double 0.61337399999999997
	.quad	0x40124ec8d5c74752              # double 4.5769380000000002
	.quad	0x4010fc8b43958106              # double 4.2466249999999999
	.quad	0x40058861e92923e6              # double 2.6915930000000001
	.quad	0x4021d11fd5885d31              # double 8.9084459999999996
	.quad	0x4023363cfb3311a5              # double 9.6059339999999995
	.quad	0x400a5b76b3bb83cf              # double 3.2946599999999999
	.quad	0x401a165f9591cd1c              # double 6.5218489999999996
	.quad	0x401d351116a8b8f1              # double 7.3018229999999997
	.quad	0x40218dab5c39bcba              # double 8.7766979999999997
	.quad	0x400774a558ea7ce1              # double 2.931956
	.quad	0x4022b1ec7000431c              # double 9.3475070000000002
	.quad	0x4016afd7e45803cd              # double 5.6717219999999999
	.quad	0x4009c271fff79c84              # double 3.2199439999999999
	.quad	0x400ba8954a7f8013              # double 3.4573160000000001
	.quad	0x3fdf152b0a6fc58b              # double 0.48566700000000002
	.quad	0x4000c4a72ead9275              # double 2.0960220000000001
	.quad	0x40033cc20d5629d8              # double 2.4046669999999999
	.quad	0x400e08aac96cc5fc              # double 3.754232
	.quad	0x3fffe87e38eb0319              # double 1.9942610000000001
	.quad	0x4016c3d6c7219221              # double 5.691249
	.quad	0x400b87e62dc6e2a8              # double 3.441357
	.quad	0x401805ffe6d58c8f              # double 6.0058590000000001
	.quad	0x401ca31098d477bc              # double 7.159243
	.quad	0x40176c5931ca7d67              # double 5.8558089999999998
	.quad	0x4005e38759253544              # double 2.7360980000000001
	.quad	0x4018eae9ab29e4d6              # double 6.2294070000000001
	.quad	0x4006d9420b3d4ae4              # double 2.8560829999999999
	.quad	0x400013543aeab799              # double 2.0094379999999998
	.quad	0x40199395c4220360              # double 6.394126
	.quad	0x402360014f8b588e              # double 9.6875099999999996
	.quad	0x4012c8262456f75e              # double 4.6954580000000004
	.quad	0x400bfe74299d883c              # double 3.4992450000000002
	.quad	0x401c2995ee136e72              # double 7.0406110000000002
	.quad	0x40108c47e49b1fac              # double 4.1369930000000004
	.quad	0x40183c29bf162ae5              # double 6.0587530000000003
	.quad	0x400718b47c73eee5              # double 2.8870629999999999
	.quad	0x4017abd6a593a2e0              # double 5.9178110000000004
	.quad	0x400eb3e468cac4b5              # double 3.8378380000000001
	.quad	0x4021eb7f9d6f1130              # double 8.9599580000000003
	.quad	0x401e526aec0724b7              # double 7.5804859999999996
	.quad	0x401d48c9320d9946              # double 7.3210800000000003
	.quad	0x401ae34b51372a39              # double 6.7219670000000002
	.quad	0x4018f39ffd60e94f              # double 6.2379150000000001
	.quad	0x401e82b6ae7d566d              # double 7.62765
	.quad	0x400e282730c67169              # double 3.769606
	.quad	0x401b4d1958969a0b              # double 6.8252920000000001
	.quad	0x3feed77d955714ba              # double 0.96380500000000002
	.quad	0x3fe38155d5f56a7b              # double 0.60953800000000002
	.quad	0x3fc640af1cb89d6b              # double 0.173849
	.quad	0x4000f8d25edd0529              # double 2.1214949999999999
	.quad	0x40100ce5b4245f5b              # double 4.0125950000000001
	.quad	0x4016600f345069a5              # double 5.5938080000000001
	.quad	0x4004008637bd05af              # double 2.5002559999999998
	.quad	0x401113b1d0c80410              # double 4.2692329999999998
	.quad	0x401f57daa4fca42b              # double 7.835795
	.quad	0x4020092a737110e4              # double 8.0179019999999994
	.quad	0x400e669595feda66              # double 3.80009
	.quad	0x3ffa6a8eb463497b              # double 1.6510149999999999
	.quad	0x401f505d0fa58f71              # double 7.8284799999999998
	.quad	0x401631bd61f5be5e              # double 5.5485740000000003
	.quad	0x3fa9d9b1b79d909f              # double 0.050488999999999999
	.quad	0x402136e2eb1c432d              # double 8.6072000000000006
	.quad	0x40194c0df58c08b7              # double 6.3242719999999997
	.quad	0x4017a4ebdd334c5e              # double 5.9110560000000003
	.quad	0x400547ae9ab29e4d              # double 2.6600009999999998
	.quad	0x40212a22d5171e2a              # double 8.5822970000000005
	.quad	0x40201b3c3e74afd5              # double 8.0531939999999995
	.quad	0x40183b9ecf638002              # double 6.0582229999999999
	.quad	0x3fe9f64f11b60ae9              # double 0.81131699999999995
	.quad	0x3fc3600f345069a5              # double 0.151369
	.quad	0x3fe11320d9945b6c              # double 0.53358499999999998
	.quad	0x402253519bd4067d              # double 9.1627320000000001
	.quad	0x40115cedd4845133              # double 4.340751
	.quad	0x3fe9d56d19dece57              # double 0.80730299999999999
	.quad	0x4023fc200c0f01fc              # double 9.9924320000000008
	.quad	0x401f2ce2d1f1cfbc              # double 7.7938340000000004
	.quad	0x3ff5fe27179bfdf8              # double 1.374549
	.quad	0x401db986b9c304cd              # double 7.4311780000000001
	.quad	0x4009aee631f8a090              # double 3.2103999999999999
	.quad	0x4016fc8b43958106              # double 5.7466249999999999
	.quad	0x401e116659d12cae              # double 7.5169920000000001
	.quad	0x4014fc88e79aae6d              # double 5.2466160000000004
	.quad	0x40055f69014b599b              # double 2.6715870000000002
	.quad	0x401ac21fafc8b008              # double 6.6895740000000004
	.quad	0x4017c625204af923              # double 5.9435010000000004
	.quad	0x401f6d0678c0053e              # double 7.8564699999999998
	.quad	0x401c785b18548a9c              # double 7.1175350000000002
	.quad	0x40179e4430b178b3              # double 5.9045569999999996
	.quad	0x40100b62c77574f7              # double 4.0111189999999999
	.quad	0x4021d7b02d59d55e              # double 8.9212659999999993
	.quad	0x401cb836a832b991              # double 7.1798960000000003
	.quad	0x401c8f9fcb0c026d              # double 7.1402580000000002
	.quad	0x4004a9a5657fb69a              # double 2.5828350000000002
	.quad	0x3ff3faeff5c6c11a              # double 1.248764
	.quad	0x401f1ee9dd7ecbb8              # double 7.780189
	.quad	0x4020d6e45c358afc              # double 8.4197109999999995
	.quad	0x3ff2cd8127b2cc71              # double 1.1751720000000001
	.quad	0x401afcd7060bb2bc              # double 6.7469140000000003
	.quad	0x3fe8aa5a469d7343              # double 0.77079500000000001
	.quad	0x40226e1c79b34a45              # double 9.2150610000000004
	.quad	0x4020c9717df19d67              # double 8.3934440000000006
	.quad	0x400fdfa97e132b56              # double 3.98421
	.quad	0x3fff5455219a847b              # double 1.958089
	.quad	0x400049af5ba2be06              # double 2.0359790000000002
	.quad	0x400674373f316e37              # double 2.806746
	.quad	0x3ffeb16e37154003              # double 1.918318
	.quad	0x401a4804d9839475              # double 6.5703310000000004
	.quad	0x401d701c4fc1df33              # double 7.359483
	.quad	0x4017f4e160d887ec              # double 5.989141
	.quad	0x400d1059641f6449              # double 3.6329829999999999
	.quad	0x401b07ef5a964e8b              # double 6.7577489999999996
	.quad	0x3fe8fd71b0468449              # double 0.78093800000000002
	.quad	0x400caf1cb89d6adf              # double 3.5855039999999998
	.quad	0x3ff8da87a072d1af              # double 1.5533520000000001
	.quad	0x4008fe6bc621b7e1              # double 3.1242290000000001
	.quad	0x402284c985f06f69              # double 9.2593499999999995
	.quad	0x3fdf3d3a1d323fee              # double 0.48811199999999999
	.quad	0x400714a98aa8650e              # double 2.8850889999999998
	.quad	0x40228d104d551d69              # double 9.2755150000000004
	.quad	0x3fe508effe2a3cea              # double 0.65734099999999995
	.quad	0x401e3f8982cb20fb              # double 7.5620479999999998
	.quad	0x40207dee136e71ce              # double 8.2459570000000006
	.quad	0x3ff93c0096feb4a6              # double 1.5771489999999999
	.quad	0x401d2b8b69552e30              # double 7.2925240000000002
	.quad	0x3ff62f87ad080b67              # double 1.3866039999999999
	.quad	0x40151961804d9839              # double 5.2747859999999998
	.quad	0x4021229bae46cfc8              # double 8.5675939999999997
	.quad	0x401960da1a93293d              # double 6.3445819999999999
	.quad	0x400eea16a4873366              # double 3.8643010000000002
	.quad	0x402397f0ed3d859d              # double 9.7967600000000008
	.quad	0x40232e9ced0b30b6              # double 9.5910410000000006
	.quad	0x3fe95612c6ac215c              # double 0.79175700000000004
	.quad	0x40230f2f9873ffac              # double 9.5296599999999997
	.quad	0x40158990f301eabc              # double 5.3843420000000002
	.quad	0x3fc950d2806af46b              # double 0.19777900000000001
	.quad	0x40200bc3c5bd0e13              # double 8.0229780000000002
	.quad	0x3fdbc82e019b0ab3              # double 0.43409300000000001
	.quad	0x401ff484d76ab580              # double 7.9887879999999996
	.quad	0x40146cbfb15b573f              # double 5.1062000000000003
	.quad	0x4020afd3d4280ae1              # double 8.343413
	.quad	0x3fd9ae9680e06530              # double 0.401281
	.quad	0x401a76eb4e981388              # double 6.6161320000000003
	.quad	0x402346ab5807fed2              # double 9.638026
	.quad	0x4002baecd07852f8              # double 2.341272
	.quad	0x4012156323bbc6eb              # double 4.520886
	.quad	0x4014b11409a24031              # double 5.1729279999999997
	.quad	0x40131afff36ac647              # double 4.7763669999999996
	.quad	0x3ff7151611ba3ca7              # double 1.4426479999999999
	.quad	0x401adec56d5cfaad              # double 6.7175500000000001
	.quad	0x401fc7a63736cdf2              # double 7.9449699999999996
	.quad	0x3ff39f70de8f6cf0              # double 1.226426
	.quad	0x3ffe689fc6da4485              # double 1.9005430000000001
	.quad	0x4013767f4dbdf8f4              # double 4.8657199999999996
	.quad	0x400635193708aac9              # double 2.7759269999999998
	.quad	0x3fd9e6ab9b23dd55              # double 0.40470400000000001
	.quad	0x4021e23810e88590              # double 8.9418340000000001
	.quad	0x3fc067f90d9d7775              # double 0.12817300000000001
	.quad	0x4022bf95b35b0bbf              # double 9.3741889999999994
	.quad	0x4015558c08b75ea6              # double 5.3335419999999996
	.quad	0x4006cb367a0f9097              # double 2.8492250000000001
	.quad	0x401dbe429e0a41a2              # double 7.4358009999999997
	.quad	0x3ff4653da72a7bd5              # double 1.2747170000000001
	.quad	0x400d201a36e2eb1c              # double 3.6406749999999999
	.quad	0x3fdfda9003eea20a              # double 0.49771500000000002
	.quad	0x402258c8472c0e7c              # double 9.1734030000000004
	.quad	0x4023de0a63305101              # double 9.9336730000000006
	.quad	0x4022c926634117f8              # double 9.3928709999999995
	.quad	0x4003cbc2fc69728a              # double 2.4744929999999998
	.quad	0x40153d5bee3d5fdd              # double 5.3099210000000001
	.quad	0x3ff492d87f88765c              # double 1.2858510000000001
	.quad	0x40100fb97bb73083              # double 4.0153559999999997
	.quad	0x3fc36b11c6d1e109              # double 0.15170500000000001
	.quad	0x3ff1922c881e4713              # double 1.098187
	.quad	0x4005116a8b8f14db              # double 2.6335039999999998
	.quad	0x4019a8ff75968512              # double 6.4150369999999999
	.quad	0x4014cfbbd7b2031d              # double 5.2028650000000001
	.quad	0x3fddc093d9663843              # double 0.46487899999999999
	.quad	0x3ffa9669ced0b30b              # double 1.6617219999999999
	.quad	0x4010f67a95c853c1              # double 4.2407019999999997
	.quad	0x3fef09fa54c55433              # double 0.96996800000000005
	.quad	0x4011387d6f976790              # double 4.3051659999999998
	.quad	0x40204d8537e2c55d              # double 8.1514070000000007
	.quad	0x4006f702602c9082              # double 2.8706100000000001
	.quad	0x401b9f06705c896e              # double 6.9052980000000002
	.quad	0x4020c998aeb80ed0              # double 8.3937430000000006
	.quad	0x40107a4e7ab75643              # double 4.11944
	.quad	0x3ffd8068db8bac71              # double 1.84385
	.quad	0x40193c970f7b9e06              # double 6.3091699999999999
	.quad	0x401a99235f809918              # double 6.6495490000000004
	.quad	0x401d59d30270f388              # double 7.3377189999999998
	.quad	0x4021e8f3882278d1              # double 8.9549830000000004
	.quad	0x4013594b380cb6c8              # double 4.8372010000000003
	.quad	0x40049e4bcad9ad86              # double 2.5772930000000001
	.quad	0x40116039ef0f16f4              # double 4.3439709999999998
	.quad	0x40102b2af145521a              # double 4.0421560000000003
	.quad	0x4006f6d117b5286b              # double 2.8705159999999998
	.quad	0x4005dd1dcd7060bb              # double 2.7329669999999999
	.quad	0x40206690795f676f              # double 8.2003210000000006
	.quad	0x3fff150763a19008              # double 1.942634
	.quad	0x3ff145a2d72ffd1e              # double 1.079501
	.quad	0x3fe2c9235f809918              # double 0.58705300000000005
	.quad	0x4000705857afea3e              # double 2.054856
	.quad	0x401f54e5d5b24e9c              # double 7.8329079999999998
	.quad	0x40053d31337eb28e              # double 2.6548790000000002
	.quad	0x3fdd7fae3608d089              # double 0.46091799999999999
	.quad	0x401641a2e7f6f4bf              # double 5.5640980000000004
	.quad	0x402339ecd4aa10e0              # double 9.6131349999999998
	.quad	0x402189f1ae2da555              # double 8.7694220000000005
	.quad	0x4016e9c27e953155              # double 5.728281
	.quad	0x4023c1f0c34c1a8b              # double 9.8787900000000004
	.quad	0x4022d7ad4b2745bf              # double 9.4212439999999997
	.quad	0x3ff44c9107faa045              # double 1.2686930000000001
	.quad	0x40219fc9bc771434              # double 8.8120860000000007
	.quad	0x4002f3964a59c066              # double 2.3689390000000001
	.quad	0x3fdcd0c3d25247cb              # double 0.45024199999999998
	.quad	0x40155035bd512ec7              # double 5.3283300000000002
	.quad	0x401290d49949e881              # double 4.6414359999999997
	.quad	0x40157b92c061847f              # double 5.3706769999999997
	.quad	0x3fecd14e3bcd35a8              # double 0.90054999999999996
	.quad	0x3ff557efe0ce0b91              # double 1.333969
	.quad	0x40150d6e8af81627              # double 5.2631170000000003
	.quad	0x40101a5daf07bfe8              # double 4.0257480000000001
	.quad	0x4023400f12c27a63              # double 9.6251149999999991
	.quad	0x401ae48e043a2164              # double 6.723198
	.quad	0x40059fa43fe5c91d              # double 2.70295
	.quad	0x402131819d2391d5              # double 8.5966919999999991
	.quad	0x4023310752da9867              # double 9.5957589999999992
	.quad	0x40164f94c87980f5              # double 5.5777159999999997
	.quad	0x4011c32fcac8e68e              # double 4.4406119999999998
	.quad	0x40233e5f30e7ff58              # double 9.6218199999999995
	.quad	0x401eeda059a73b43              # double 7.7320570000000001
	.quad	0x40123182235b4edb              # double 4.5483479999999998
	.quad	0x400af5d80e496edf              # double 3.3700410000000001
	.quad	0x3fde17481b21c476              # double 0.47017100000000001
	.quad	0x4021b3a493c89f41              # double 8.8508650000000006
	.quad	0x3fa08c1db0142f62              # double 0.032319000000000001
	.quad	0x401616833c60029f              # double 5.5219849999999999
	.quad	0x400074dad31fcd25              # double 2.0570580000000001
	.quad	0x401a56e47dc37a3e              # double 6.5848560000000003
	.quad	0x3ff1079f666234a8              # double 1.0643609999999999
	.quad	0x4018dd948dc11e43              # double 6.2163870000000001
	.quad	0x3fe2d074213a0c6b              # double 0.58794599999999997
	.quad	0x401d435b91f70de9              # double 7.315779
	.quad	0x3ff7cd3ae685db77              # double 1.4876050000000001
	.quad	0x4005631c64ba94bc              # double 2.673394
	.quad	0x3ff032e8c0485a0c              # double 1.012429
	.quad	0x401b724c404a72eb              # double 6.8616190000000001
	.quad	0x4003fb3e1437c569              # double 2.4976769999999999
	.quad	0x4014939c94f69caa              # double 5.1441520000000001
	.quad	0x400b3d4d834091c1              # double 3.4049330000000002
	.quad	0x40105069a4df47fa              # double 4.0785280000000004
	.quad	0x4015f775fb2edfe7              # double 5.4916609999999997
	.quad	0x40222063beec397a              # double 9.0632610000000007
	.quad	0x4016fdc1615ebfa9              # double 5.747808
	.quad	0x3feaf110e453d20f              # double 0.84192699999999998
	.quad	0x4004d4f69ca9ef52              # double 2.6039859999999999
	.quad	0x3ff4aab68cef672c              # double 1.2916780000000001
	.quad	0x400f67496aad1d04              # double 3.925433
	.quad	0x3ff8841bb8c32a8d              # double 1.5322530000000001
	.quad	0x400069b280f12c28              # double 2.0516100000000002
	.quad	0x3fba34330d73860a              # double 0.10235900000000001
	.quad	0x40112f04ddb5525d              # double 4.2959170000000002
	.quad	0x3ff0de0a41a261bf              # double 1.054209
	.quad	0x401c095aaf78feef              # double 7.0091349999999997
	.quad	0x402113d3804534bd              # double 8.5387229999999992
	.quad	0x4020c51a21ea3593              # double 8.3849649999999993
	.quad	0x401b8b966be7afa7              # double 6.8863159999999999
	.quad	0x401764cdfaca361a              # double 5.8484420000000004
	.quad	0x4002bf7403dddb12              # double 2.343483
	.quad	0x402282e514c22ee4              # double 9.2556539999999998
	.quad	0x4013d0856e696a27              # double 4.9536340000000001
	.quad	0x401aceb24a6a875d              # double 6.7018519999999997
	.quad	0x40054f922962cfd9              # double 2.663853
	.quad	0x401676cf41f212d7              # double 5.6160249999999996
	.quad	0x4007aa6eb91b3f21              # double 2.9582190000000002
	.quad	0x40148c154c985f07              # double 5.1368
	.quad	0x3fed4126a65cf67b              # double 0.91420299999999999
	.quad	0x401267efe0ce0b91              # double 4.6015009999999998
	.quad	0x3fe8a56798958d9b              # double 0.77019099999999996
	.quad	0x4012ba5daf07bfe8              # double 4.6819980000000001
	.quad	0x4015e08feac42e99              # double 5.4692990000000004
	.quad	0x4004e4934267839d              # double 2.6116090000000001
	.quad	0x3ffc99f1ae2da555              # double 1.7875840000000001
	.quad	0x401a6e0bd44998d0              # double 6.6074669999999998
	.quad	0x402089886df82b1f              # double 8.2686189999999993
	.quad	0x3ff0a7d34df04ddb              # double 1.0409729999999999
	.quad	0x402350af1cb89d6b              # double 9.6575860000000002
	.quad	0x4011900c0f01fb83              # double 4.3906710000000002
	.quad	0x40034c09c3ce208a              # double 2.412128
	.quad	0x40132e8858ff7597              # double 4.7954420000000004
	.quad	0x3ffe22d6238da3c2              # double 1.883505
	.quad	0x40227d983947496b              # double 9.2453020000000006
	.quad	0x40009b10fd7e4580              # double 2.0757159999999999
	.quad	0x40191fe7e1fc08fa              # double 6.2811579999999996
	.quad	0x402098b178b37004              # double 8.2982289999999991
	.quad	0x4022b5b1209edbf9              # double 9.3548670000000004
	.quad	0x4011808bfc2224ee              # double 4.375534
	.quad	0x4013171865519371              # double 4.7725540000000004
	.quad	0x40123860999dcb58              # double 4.5550560000000004
	.quad	0x40050f4f93bc0a07              # double 2.632476
	.quad	0x3ff6ffceb78897ea              # double 1.4374530000000001
	.quad	0x4009e3914f483cb0              # double 3.2361170000000001
	.quad	0x400186256366d7a5              # double 2.1905009999999998
	.quad	0x4012356e264e4862              # double 4.5521779999999996
	.quad	0x4018235d67ba237d              # double 6.0345360000000001
	.quad	0x400cc4178705425f              # double 3.5957479999999999
	.quad	0x3ff2fc07ee0b0af6              # double 1.186531
	.quad	0x401b3459103c8e26              # double 6.8011210000000002
	.quad	0x3fc9a398201cd5fa              # double 0.20030500000000001
	.quad	0x3ff506dd69d30271              # double 1.314176
	.quad	0x3ffce9ed3953dea4              # double 1.8071109999999999
	.quad	0x401ada960b6f9fcb              # double 6.713463
	.quad	0x4005322291fb3fa7              # double 2.6494800000000001
	.quad	0x4012a19fc2a8869c              # double 4.6578359999999996
	.quad	0x40060144028e4fb9              # double 2.7506179999999998
	.quad	0x3fdb0c8472c0e7bc              # double 0.42263899999999999
	.quad	0x4019bdf37329c348              # double 6.4354990000000001
	.quad	0x402020574b407033              # double 8.0631660000000007
	.quad	0x40063d2391d57ffa              # double 2.7798530000000001
	.quad	0x400a6bdb1a6d6990              # double 3.302664
	.quad	0x402157a28bb0a2cb              # double 8.6711620000000007
	.quad	0x4009e7192ea52ef9              # double 3.237841
	.quad	0x3fe38f75536933a0              # double 0.61126199999999997
	.quad	0x40222ce5710880d8              # double 9.087688
	.quad	0x4006ae147ae147ae              # double 2.835
	.quad	0x3fe4e8815e39713b              # double 0.65338200000000002
	.quad	0x40025741d084e832              # double 2.2926060000000001
	.quad	0x3fd2e2e2b8c75c4b              # double 0.29509800000000003
	.quad	0x400d5313be22e5de              # double 3.665565
	.quad	0x401b67b5286b5914              # double 6.8512769999999996
	.quad	0x3fe32018a43bb40b              # double 0.59766799999999998
	.quad	0x4011400b45ae5ffa              # double 4.3125429999999998
	.quad	0x3f91f080303c07ee              # double 0.017519
	.quad	0x3ffce38759253544              # double 1.8055490000000001
	.quad	0x40195fdef8487b9a              # double 6.3436240000000002
	.quad	0x40215bb98c7e2824              # double 8.6791499999999999
	.quad	0x40182604189374bc              # double 6.0371249999999996
	.quad	0x3ff327bd48cb4aed              # double 1.1972020000000001
	.quad	0x3fff8d551d68c693              # double 1.972005
	.quad	0x401ea7e90ff97247              # double 7.6639749999999997
	.quad	0x401837924af0bf1a              # double 6.0542689999999997
	.quad	0x401b5bb7b6bb1290              # double 6.8395679999999999
	.quad	0x3ff0543d03968d76              # double 1.0205660000000001
	.quad	0x400e08a0d349be90              # double 3.754213
	.quad	0x3fe71841aac53b08              # double 0.72171099999999999
	.quad	0x3fe20dae3e6c4c59              # double 0.56416999999999995
	.quad	0x401297ba237cdcca              # double 4.6481709999999996
	.quad	0x4008d8897e996313              # double 3.105731
	.quad	0x3fdc845132f87ad1              # double 0.44557600000000003
	.quad	0x4011d086bdf4c2b5              # double 4.4536389999999999
	.quad	0x4016a44d87724fa9              # double 5.6604520000000003
	.quad	0x4008cef459d9902a              # double 3.1010520000000001
	.quad	0x4022663065f9591d              # double 9.1995880000000003
	.quad	0x400ef9ca5bd944aa              # double 3.8719679999999999
	.quad	0x40228edbb59ddc1e              # double 9.2790199999999992
	.quad	0x3fff0ded288ce704              # double 1.9409000000000001
	.quad	0x40221bbea91d9b1b              # double 9.0541889999999992
	.quad	0x3fe7b11a543f1c76              # double 0.74036900000000005
	.quad	0x401c14927913e814              # double 7.0200899999999997
	.quad	0x400de036006d0d4a              # double 3.7344780000000002
	.quad	0x4022bd17a46173b8              # double 9.3693209999999993
	.quad	0x400c1e7f2c3009b3              # double 3.514891
	.quad	0x3fc88f08461f9f02              # double 0.19186500000000001
	.quad	0x401a5cb7d41743e9              # double 6.5905449999999997
	.quad	0x402084c5b8dc5500              # double 8.2593209999999999
	.quad	0x3fdf919ac79702e6              # double 0.49326199999999998
	.quad	0x3ffe7afc8b0079a3              # double 1.9050260000000001
	.quad	0x4022d907faa044af              # double 9.4238890000000008
	.quad	0x4023ab5f80991794              # double 9.8347130000000007
	.quad	0x400e9f7c6759ab6d              # double 3.827874
	.quad	0x401b2a1405708249              # double 6.7910919999999999
	.quad	0x40197b93ccd0fe8b              # double 6.3706810000000003
	.quad	0x3fecf570c564f97f              # double 0.90496100000000002
	.quad	0x4020a02a9930be0e              # double 8.3128250000000001
	.quad	0x3fc3ba8826aa8eb4              # double 0.15412999999999999
	.quad	0x4017905100a393ee              # double 5.8909339999999997
	.quad	0x4017154eb13dfb0d              # double 5.7708079999999997
	.quad	0x4002914983d79075              # double 2.3209409999999999
	.quad	0x3ffc8723aafff36b              # double 1.7829930000000001
	.quad	0x4005a40c8472c0e8              # double 2.7051020000000001
	.quad	0x400d81650a45d420              # double 3.6881810000000002
	.quad	0x3ff572e1693c03bc              # double 1.3405469999999999
	.quad	0x4013165dbfceb789              # double 4.7718420000000004
	.quad	0x401ee1376d549731              # double 7.7199379999999999
	.quad	0x401247ee0b0af5fd              # double 4.5702439999999998
	.quad	0x4022c047f562174c              # double 9.3755489999999994
	.quad	0x4020127d45a5fc7e              # double 8.0361119999999993
	.quad	0x40187bba98eda22f              # double 6.1208289999999996
	.quad	0x400aff5c6c11a112              # double 3.3746879999999999
	.quad	0x402212deca2552a0              # double 9.0368560000000002
	.quad	0x3ff39888f861a60d              # double 1.2247399999999999
	.quad	0x4012a35b4edb2f66              # double 4.6595279999999999
	.quad	0x4016f06290eed02d              # double 5.7347510000000002
	.quad	0x402366ccc46950fc              # double 9.7007809999999992
	.quad	0x401b8633482be8bc              # double 6.8810549999999999
	.quad	0x401059c99285a922              # double 4.0876830000000002
	.quad	0x402034393682730c              # double 8.1019989999999992
	.quad	0x4006e23d0bfa0946              # double 2.860468
	.quad	0x401b25f7403dddb1              # double 6.7870759999999999
	.quad	0x400568ccdd93c46e              # double 2.6761720000000002
	.quad	0x4022dd31769a9110              # double 9.4320179999999993
	.quad	0x40030eda22f6a50d              # double 2.3822519999999998
	.quad	0x401aa628027d88c2              # double 6.6622620000000001
	.quad	0x401c48ce703afb7f              # double 7.0711000000000004
	.quad	0x400fdbe09bb6aa4c              # double 3.9823620000000002
	.quad	0x401cc00b88ca3e7d              # double 7.1875439999999999
	.quad	0x4021dd36b4c7f349              # double 8.9320579999999996
	.quad	0x40135fc58ab92c06              # double 4.8435269999999999
	.quad	0x402014199fe43676              # double 8.0392580000000002
	.quad	0x400a4ed6fda836eb              # double 3.2884959999999999
	.quad	0x40170e5109070fbf              # double 5.7639810000000002
	.quad	0x4001faa8a82a5615              # double 2.2473920000000001
	.quad	0x4019be0daa0cae64              # double 6.4355989999999998
	.quad	0x4019585a921ccd96              # double 6.3362829999999999
	.quad	0x401be24c404a72eb              # double 6.9709940000000001
	.quad	0x3fce46d82ba5a038              # double 0.236537
	.quad	0x3ff41b09a671ef31              # double 1.2566010000000001
	.quad	0x4021ca41e57d9dbb              # double 8.8950340000000008
	.quad	0x4004dc382a12f901              # double 2.607529
	.quad	0x4021ae7be553ac4f              # double 8.8407889999999991
	.quad	0x3ffd44c7b02d59d5              # double 1.8292919999999999
	.quad	0x3feb3456b441bb8c              # double 0.85013899999999997
	.quad	0x400f5e6b3fe9fadb              # double 3.921103
	.quad	0x3fd5fbb517a46174              # double 0.34348800000000002
	.quad	0x3fd4a5f84cad57bc              # double 0.32262999999999997
	.quad	0x402378bdcad14a0a              # double 9.7358229999999999
	.quad	0x3fd45edd052934ad              # double 0.31829000000000002
	.quad	0x4017b15d2d01c0ca              # double 5.9232069999999997
	.quad	0x401c4a5df2239e6b              # double 7.0726240000000002
	.quad	0x401a5b2dd377e1b9              # double 6.5890420000000001
	.quad	0x4004b826edaa92e6              # double 2.5899179999999999
	.quad	0x3ff8f3f316e37154              # double 1.559558
	.quad	0x4011c1e3eaf6837f              # double 4.4393459999999996
	.quad	0x3fd37d0f1f57b41c              # double 0.304508
	.quad	0x4020219ce075f6fd              # double 8.0656499999999998
	.quad	0x40084834d26fa3fd              # double 3.0352570000000001
	.quad	0x40167bead4f5903a              # double 5.6210129999999996
	.quad	0x402038f27bb2fec5              # double 8.1112249999999992
	.quad	0x401edf28848387df              # double 7.7179279999999996
	.quad	0x4011c7c8d195896a              # double 4.4451020000000003
	.quad	0x401118e79aae6c8f              # double 4.2743209999999996
	.quad	0x4019beb80ecfa69c              # double 6.4362490000000001
	.quad	0x401d253111f0c34c              # double 7.2863199999999999
	.quad	0x402186835dedf1e1              # double 8.7627210000000009
	.quad	0x4018e6ee30caa327              # double 6.2255180000000001
	.quad	0x400369bae46cfc83              # double 2.4266260000000002
	.quad	0x401efb17ce52deca              # double 7.7452079999999999
	.quad	0x4015f32df505d0fa              # double 5.4874799999999997
	.quad	0x4023458f4f93bc0a              # double 9.635859
	.quad	0x401a2a57a786c227              # double 6.5413500000000004
	.quad	0x3ff222962cfd8f0c              # double 1.1334439999999999
	.quad	0x401ecc857f3061c8              # double 7.6997280000000003
	.quad	0x3febc5c9a34ca0c3              # double 0.86789400000000005
	.quad	0x3fc79c842fa50939              # double 0.18446399999999999
	.quad	0x400a76006d0d4995              # double 3.3076180000000002
	.quad	0x4012af13059641f6              # double 4.6709709999999998
	.quad	0x40023804534bd76f              # double 2.277352
	.quad	0x3feeeb3dd11be6e6              # double 0.96621599999999996
	.quad	0x400be81669ced0b3              # double 3.488324
	.quad	0x402104d12018a43c              # double 8.5094080000000005
	.quad	0x401c7253111f0c35              # double 7.1116450000000002
	.quad	0x4021586317268d33              # double 8.6726310000000009
	.quad	0x40214e0ce0b912dc              # double 8.6524420000000006
	.quad	0x401fefaebc408d8f              # double 7.9840650000000001
	.quad	0x400de7c6327ed84d              # double 3.7381709999999999
	.quad	0x40206a367e414e7f              # double 8.2074470000000002
	.quad	0x400742a23bff8a8f              # double 2.9075359999999999
	.quad	0x40223d25247cb70b              # double 9.1194240000000004
	.quad	0x3ffa78a7e73a365d              # double 1.6544570000000001
	.quad	0x40175b51bd61f5be              # double 5.8391789999999997
	.quad	0x401cca52ac753e70              # double 7.1975809999999996
	.quad	0x3ff8b02f72b45283              # double 1.5430140000000001
	.quad	0x4006695182a9930c              # double 2.8014250000000001
	.quad	0x402343d8e0008638              # double 9.6325140000000004
	.quad	0x4016aac4b4d056c5              # double 5.666766
	.quad	0x401157f9d6f112fd              # double 4.3359139999999998
	.quad	0x400e70bd87b56b87              # double 3.8050489999999999
	.quad	0x40235fabda0dfdf0              # double 9.6868580000000009
	.quad	0x40219555a3a08399              # double 8.7916690000000006
	.quad	0x4022528c79f66623              # double 9.1612279999999995
	.quad	0x40237709d8c6d613              # double 9.7324970000000003
	.quad	0x401597867f0aa21a              # double 5.3979739999999996
	.quad	0x40188e1198aeb80f              # double 6.1387390000000002
	.quad	0x401ebabfb9bed30f              # double 7.6823719999999999
	.quad	0x4007bb866e43aa7a              # double 2.9665650000000001
	.quad	0x402204881e4712e4              # double 9.0088509999999999
	.quad	0x400ece503fb37436              # double 3.8507389999999999
	.quad	0x3ff1a9a5ebb7739f              # double 1.103918
	.quad	0x3fe3c450268900c5              # double 0.61771399999999999
	.quad	0x4020a332ce89656f              # double 8.3187470000000001
	.quad	0x401aa75c8d9f9054              # double 6.6634390000000003
	.quad	0x4020381d9f4d37c1              # double 8.1096009999999996
	.quad	0x40216dbf0563ed0f              # double 8.7143479999999993
	.quad	0x400a404af922962d              # double 3.281393
	.quad	0x400ae8027d88c1db              # double 3.363286
	.quad	0x4017422c01e68a0d              # double 5.8146209999999998
	.quad	0x4009d70691ea78af              # double 3.2299929999999999
	.quad	0x3fe77d45a5fc7e6b              # double 0.73404199999999997
	.quad	0x4021b068fd199bb2              # double 8.8445509999999992
	.quad	0x3fe484f09528f191              # double 0.64122800000000002
	.quad	0x400496ce789e774f              # double 2.573636
	.quad	0x40134cca2db61bb0              # double 4.8249899999999997
	.quad	0x3fe5f4080f98fa37              # double 0.68603899999999995
	.quad	0x400ee6f9b994e1a4              # double 3.862781
	.quad	0x400a922c01e68a0d              # double 3.3213729999999999
	.quad	0x400debbf50e34763              # double 3.7401110000000002
	.quad	0x3fb37b17ce52deca              # double 0.076096999999999998
	.quad	0x400b1a9003eea20a              # double 3.3879700000000001
	.quad	0x40060d477bbf93ff              # double 2.7564839999999999
	.quad	0x401067ef177a7009              # double 4.1014980000000003
	.quad	0x401fd7dc7abfb9bf              # double 7.9608020000000001
	.quad	0x4023dab25b317efe              # double 9.9271419999999999
	.quad	0x400c8c5eb313be23              # double 3.56854
	.quad	0x4021a78290689870              # double 8.8271680000000003
	.quad	0x4011fbbf0dc768e0              # double 4.4958460000000002
	.quad	0x4013537585be1a82              # double 4.8315029999999997
	.quad	0x401468626f60e0eb              # double 5.1019379999999996
	.quad	0x401e67ded6ba8c58              # double 7.6014359999999996
	.quad	0x401233cddd6e04c0              # double 4.5505899999999997
	.quad	0x3fd9681669ced0b3              # double 0.396978
	.quad	0x401b120535c9e668              # double 6.7675979999999996
	.quad	0x401763a8a3f8982d              # double 5.8473230000000003
	.quad	0x3fa4ac8e68e3ef28              # double 0.040378999999999998
	.quad	0x402258e38a7e73a3              # double 9.1736109999999993
	.quad	0x4020dff972474539              # double 8.4374500000000001
	.quad	0x401b7a9435ac8a37              # double 6.8697059999999999
	.quad	0x40235f32378ab0c9              # double 9.6859300000000008
	.quad	0x4014f35158b827fa              # double 5.2376149999999999
	.quad	0x4017233d29563a9f              # double 5.7844129999999998
	.quad	0x40028cea28fe260b              # double 2.3188059999999999
	.quad	0x3fe96eac8605681f              # double 0.79476000000000002
	.quad	0x400e95f56a7ac81d              # double 3.8232219999999999
	.quad	0x4023005186db50f4              # double 9.5006219999999999
	.quad	0x4013bbb05faebc41              # double 4.9332900000000004
	.quad	0x401e77eb28d8665e              # double 7.617108
	.quad	0x401a6d77fae3608d              # double 6.606903
	.quad	0x400a26b484d76ab6              # double 3.2688990000000002
	.quad	0x4019b30d7386099a              # double 6.4248560000000001
	.quad	0x4002fb3a68b19a41              # double 2.3726699999999998
	.quad	0x3fe85790752da986              # double 0.76068899999999995
	.quad	0x401ba73b85e80bed              # double 6.9133129999999996
	.quad	0x402395b70691ea79              # double 9.7924120000000005
	.quad	0x401bd571d1d4738a              # double 6.9584419999999998
	.quad	0x400f65dbfceb7889              # double 3.9247359999999998
	.quad	0x40236dbff04577d9              # double 9.7143549999999994
	.quad	0x400c0b6e0d23d4f1              # double 3.5055809999999998
	.quad	0x3ff362e09fe86834              # double 1.2116400000000001
	.quad	0x40074549b62c7757              # double 2.9088319999999999
	.quad	0x4009ab9f559b3d08              # double 3.2088000000000001
	.quad	0x3ffaae1ac57e23f2              # double 1.6675059999999999
	.quad	0x4010835f80991794              # double 4.1282940000000004
	.quad	0x4022c41b10fd7e46              # double 9.3830190000000009
	.quad	0x401a931d2e0e3044              # double 6.6436659999999996
	.quad	0x400f7463cfb3311a              # double 3.9318309999999999
	.quad	0x400405fe111276fb              # double 2.502926
	.quad	0x3ff6f61bb05faebc              # double 1.4350849999999999
	.quad	0x3fe7d68a50507a6c              # double 0.74493900000000002
	.quad	0x401e3575c0767d35              # double 7.5522070000000001
	.quad	0x401cf5a7d24180d4              # double 7.2398980000000002
	.quad	0x3ff615464dc22ab2              # double 1.3801939999999999
	.quad	0x3fe758b3f63c31df              # double 0.72957799999999995
	.quad	0x401f2e308787485e              # double 7.7951069999999998
	.quad	0x4012dd3f1843c3a4              # double 4.7160609999999998
	.quad	0x400baf123c42a66e              # double 3.4604840000000001
	.quad	0x4022ce60a2014728              # double 9.4030810000000002
	.quad	0x3fa720c8cd63cb81              # double 0.045171999999999997
	.quad	0x4003dd9988d2a1f9              # double 2.483203
	.quad	0x4019b4c985f06f69              # double 6.4265499999999998
	.quad	0x400f1797460242d0              # double 3.8865189999999998
	.quad	0x401e43910c2c5e2d              # double 7.5659830000000001
	.quad	0x402093265add9c28              # double 8.2874020000000002
	.quad	0x40218eda66128390              # double 8.7790099999999995
	.quad	0x40216fed41b75a75              # double 8.7186070000000004
	.quad	0x400bb9acffa7eb6c              # double 3.465662
	.quad	0x3ffec1733226c3b9              # double 1.922229
	.quad	0x40118383f0bae89f              # double 4.3784330000000002
	.quad	0x4010ce6cd29131ec              # double 4.201587
	.quad	0x4023e4cbc05d52c1              # double 9.9468669999999992
	.quad	0x402232d05f288484              # double 9.0992460000000008
	.quad	0x40166a265f0f5a10              # double 5.6036619999999999
	.quad	0x40047821294573a8              # double 2.5586570000000002
	.quad	0x400ac1f2990f301f              # double 3.3447010000000001
	.quad	0x4022a3c03bc4d22d              # double 9.3198260000000008
	.quad	0x40228d0092ccf6be              # double 9.2753949999999996
	.quad	0x3ffc0b5dcc63f141              # double 1.752775
	.quad	0x40230f73e24febd1              # double 9.5301810000000006
	.quad	0x401be788db0574b4              # double 6.976108
	.quad	0x3fe1b3ebbfd71b04              # double 0.55321299999999995
	.quad	0x400ef0ec31162281              # double 3.8676379999999999
	.quad	0x400b8d5e071c53f4              # double 3.4440270000000002
	.quad	0x402050efdc9c4da9              # double 8.15808
	.quad	0x4006be718a86d71f              # double 2.8429899999999999
	.quad	0x3ffd380dc33721d5              # double 1.8261849999999999
	.quad	0x3ff6db20b8066c2b              # double 1.428498
	.quad	0x401bb1ac14c660a2              # double 6.923508
	.quad	0x3fd62a80064a9cdc              # double 0.34634399999999999
	.quad	0x4018c38b8ae31d71              # double 6.1909619999999999
	.quad	0x40132d249e44fa05              # double 4.7940849999999999
	.quad	0x401d44f6dfc5cdd5              # double 7.317348
	.quad	0x402063b0a2ca9ac3              # double 8.1947069999999993
	.quad	0x4022f52f1a9fbe77              # double 9.4788750000000003
	.quad	0x3ff52f2e8c0485a1              # double 1.3240190000000001
	.quad	0x400070f733a8a3f9              # double 2.0551590000000002
	.quad	0x402202e557de0d67              # double 9.0056560000000001
	.quad	0x401b19f05ea24cc7              # double 6.7753310000000004
	.quad	0x3fe33b44e50c5eb3              # double 0.60098499999999999
	.quad	0x40025c011d3671ac              # double 2.294924
	.quad	0x3ff48fa58f7121ab              # double 1.2850699999999999
	.quad	0x402148ee6b8305d9              # double 8.6424439999999993
	.quad	0x40111a4ce8101f32              # double 4.275684
	.quad	0x40226a1db877ab32              # double 9.2072579999999995
	.quad	0x4021c68cac4b4d05              # double 8.8877919999999992
	.quad	0x3ffce8f5c28f5c29              # double 1.806875
	.quad	0x4021b9a5870da5db              # double 8.8625910000000001
	.quad	0x402393c77143393b              # double 9.7886310000000005
	.quad	0x401520e410b630a9              # double 5.2821199999999999
	.quad	0x4023785985ad538b              # double 9.7350580000000004
	.quad	0x402196e6fb4c3c19              # double 8.7947310000000005
	.quad	0x401575625a682b63              # double 5.3646330000000004
	.quad	0x401f84228997c3d7              # double 7.8790380000000004
	.quad	0x3fe858c8eef1bac3              # double 0.76083800000000001
	.quad	0x3fec17b7414a4d2b              # double 0.87789499999999998
	.quad	0x400683f359ff4fd7              # double 2.8144290000000001
	.quad	0x4020054b05b7cfe6              # double 8.0103380000000008
	.quad	0x4013ed72bcb5fe54              # double 4.9818829999999998
	.quad	0x402237fc5479d4d8              # double 9.1093469999999996
	.quad	0x400cc5a35d67ba23              # double 3.5965029999999998
	.quad	0x3f6bc98a222d5172              # double 0.003392
	.quad	0x400bbcd898b2e9cd              # double 3.4672100000000001
	.quad	0x401a64855da27286              # double 6.5981649999999998
	.quad	0x400ffc0c1fc8f323              # double 3.9980699999999998
	.quad	0x40222214ad362e90              # double 9.0665639999999996
	.quad	0x4003d074213a0c6b              # double 2.4767839999999999
	.quad	0x40177bd66277c45d              # double 5.8709350000000002
	.quad	0x402343122b7baecd              # double 9.6309979999999999
	.quad	0x4022f90539fba451              # double 9.4863680000000005
	.quad	0x3ff9d19695d91ab9              # double 1.613669
	.quad	0x401a21ff2e48e8a7              # double 6.5331999999999999
	.quad	0x40206d0870110a13              # double 8.2129549999999991
	.quad	0x400a0e34fc610f0f              # double 3.2569370000000002
	.quad	0x4018e137f38c5437              # double 6.2199400000000002
	.quad	0x4022646c11a11234              # double 9.1961370000000002
	.quad	0x4006f10129cbab65              # double 2.8676780000000002
	.quad	0x40025da48b652370              # double 2.2957239999999999
	.quad	0x401dea5c5f7c675a              # double 7.4788680000000003
	.quad	0x3ffa1710880d801b              # double 1.6306309999999999
	.quad	0x4017eb4c7f349386              # double 5.9797840000000004
	.quad	0x4001c61ae70c1334              # double 2.2217310000000001
	.quad	0x40199a60d4562e0a              # double 6.40076
	.quad	0x4017bf06b37867f1              # double 5.9365490000000003
	.quad	0x3ff1b036c9c0a8d2              # double 1.105521
	.quad	0x3ffd393ab430f495              # double 1.8264720000000001
	.quad	0x3fcf614df8b15726              # double 0.24515700000000001
	.quad	0x4014976cce5f7404              # double 5.1478760000000001
	.quad	0x400bb42f61ed5ae2              # double 3.4629810000000001
	.quad	0x400f3c58255b035c              # double 3.9044650000000001
	.quad	0x4006b356da0168b6              # double 2.8375680000000001
	.quad	0x3ff44d972cd7cf5f              # double 1.2689429999999999
	.quad	0x401b541dd1a21ea3              # double 6.8321449999999997
	.quad	0x401e53f4a98aa865              # double 7.5819879999999999
	.quad	0x400e24345cfede98              # double 3.7676780000000001
	.quad	0x40231cda4ce8101f              # double 9.5563529999999996
	.quad	0x401c57ce0fc2eba2              # double 7.0857469999999996
	.quad	0x40102ef177a7008a              # double 4.0458429999999996
	.quad	0x4017ee5c0b999136              # double 5.9827729999999999
	.quad	0x401efeaab042528b              # double 7.748698
	.quad	0x40220da5119ce076              # double 9.0266500000000001
	.quad	0x400112324c836651              # double 2.1338849999999998
	.quad	0x400e9dfb0d51f81a              # double 3.8271389999999998
	.quad	0x401888cc144028e5              # double 6.133591
	.quad	0x3ffae96c3fc43b2e              # double 1.681988
	.quad	0x40083d8e0008637c              # double 3.0300560000000001
	.quad	0x401db6b3fe9fadb0              # double 7.4284210000000002
	.quad	0x40203b5a20ddc619              # double 8.1159219999999994
	.quad	0x401da2374794ea07              # double 7.4084139999999996
	.quad	0x401177f6f4be835e              # double 4.3671530000000001
	.quad	0x40140cfc3f811f4f              # double 5.0126809999999997
	.quad	0x401cc76f2a5a469d              # double 7.1947599999999996
	.quad	0x401e71737542a23c              # double 7.610792
	.quad	0x401300203e63e8de              # double 4.7501230000000003
	.quad	0x3ff16a161e4f7660              # double 1.0884
	.quad	0x4018ef301eabbcb2              # double 6.2335820000000002
	.quad	0x40225219439de482              # double 9.1603490000000001
	.quad	0x3fe9b8c5436b8f9b              # double 0.80380499999999999
	.quad	0x3fefbbb1f255f352              # double 0.99166200000000004
	.quad	0x40169ed2cbea4ebe              # double 5.6551010000000002
	.quad	0x401f97785729b281              # double 7.89792
	.quad	0x401f4b4202d9cf14              # double 7.8234940000000002
	.quad	0x3fe7a5d074213a0c              # double 0.73899099999999995
	.quad	0x400b86a875d56f33              # double 3.4407510000000001
	.quad	0x401f4b5a63f9a49c              # double 7.8235869999999998
	.quad	0x400a8cd63cb81733              # double 3.3187679999999999
	.quad	0x40126ba0620ab713              # double 4.6051039999999999
	.quad	0x4009e038194c0160              # double 3.2344819999999999
	.quad	0x400ee54ac29bf163              # double 3.8619590000000001
	.quad	0x401c02784a9478c8              # double 7.0024119999999996
	.quad	0x4013076102795704              # double 4.757206
	.quad	0x3fee2e2541d8e864              # double 0.94313299999999999
	.quad	0x40168ef9db22d0e5              # double 5.6396249999999997
	.quad	0x401f6bc44bf4cb19              # double 7.8552410000000003
	.quad	0x400a3e52157689ca              # double 3.28043
	.quad	0x4016164dc22ab25b              # double 5.5217809999999998
	.quad	0x40234ff349385836              # double 9.6561529999999998
	.quad	0x3ff424712e40852b              # double 1.2588969999999999
	.quad	0x400a7ccc03793144              # double 3.3109359999999999
	.quad	0x40054c1f42bb6673              # double 2.662169
	.quad	0x40207504c48adeec              # double 8.2285520000000005
	.quad	0x3ff09aeb3dd11be7              # double 1.037822
	.quad	0x40231be100607810              # double 9.5544510000000002
	.quad	0x3ff852e40852b4d9              # double 1.5202370000000001
	.quad	0x40201a005c4651f4              # double 8.0507840000000001
	.quad	0x3fdfa0a0f4d7add1              # double 0.49417899999999998
	.quad	0x4015c6199780baa6              # double 5.4434570000000004
	.quad	0x401da46aa087ca64              # double 7.4105629999999998
	.quad	0x400b6e4b87bdcf03              # double 3.428855
	.quad	0x40060374ff865d7d              # double 2.7516880000000001
	.quad	0x3ff3d1fa333764f1              # double 1.238764
	.quad	0x3fd0e2c12ad81adf              # double 0.26384000000000002
	.quad	0x3fde27f1b6912125              # double 0.471188
	.quad	0x3fffe43dccea28fe              # double 1.993223
	.quad	0x402384536d655e29              # double 9.7584490000000005
	.quad	0x40207c18d6909aed              # double 8.2423769999999994
	.quad	0x401847a41e57d9dc              # double 6.0699620000000003
	.quad	0x400f57f737da61e1              # double 3.9179520000000001
	.quad	0x3ff47496aad1d042              # double 1.278464
	.quad	0x401f14c6e6d9be4d              # double 7.7702900000000001
	.quad	0x4005f996fa82e87d              # double 2.7468699999999999
	.quad	0x400c34efcbd55608              # double 3.5258479999999999
	.quad	0x3fc43c9eecbfb15b              # double 0.15809999999999999
	.quad	0x400aa95f2452c5a0              # double 3.3327010000000001
	.quad	0x4013920ab7132724              # double 4.8926189999999998
	.quad	0x4023789acbc8c0cf              # double 9.7355560000000007
	.quad	0x4022c3e1c9b41398              # double 9.3825819999999993
	.quad	0x402045f7e80389f8              # double 8.1366569999999996
	.quad	0x4010a0e1719f7f8d              # double 4.1571100000000003
	.quad	0x401daf5903a7546d              # double 7.4212379999999998
	.quad	0x3fe1a73f748a1598              # double 0.55166599999999999
	.quad	0x40076a9930be0ded              # double 2.9270499999999999
	.quad	0x40062a1e81cb46bb              # double 2.7705660000000001
	.quad	0x401fcba450acc0be              # double 7.9488690000000002
	.quad	0x401000c069e7fb26              # double 4.0007339999999996
	.quad	0x4013d29c347e8cce              # double 4.9556740000000001
	.quad	0x3fe693f6c2699c7c              # double 0.70556200000000002
	.quad	0x3f9bab649d388a8b              # double 0.027021
	.quad	0x4006b34d6a161e4f              # double 2.8375499999999998
	.quad	0x3ff3cccbc05d52c1              # double 1.2374989999999999
	.quad	0x3fd5476f2a5a469d              # double 0.33248499999999998
	.quad	0x400f51244a6223e2              # double 3.9146200000000002
	.quad	0x40055823422467be              # double 2.6680359999999999
	.quad	0x40045b25f633ce64              # double 2.5445060000000002
	.quad	0x3ffdb3d07c84b5dd              # double 1.8564000000000001
	.quad	0x4019357646ae3a3b              # double 6.3022090000000004
	.quad	0x4020e25b0ff10ecb              # double 8.4421009999999992
	.quad	0x3fc301322f2734f8              # double 0.14847399999999999
	.quad	0x40013512ec6bce85              # double 2.1509149999999999
	.quad	0x401010de093532e8              # double 4.0164720000000003
	.quad	0x4008bd51b4fe79ee              # double 3.092441
	.quad	0x40147a038194c016              # double 5.119154
	.quad	0x401c0ac53b0813cb              # double 7.0105180000000002
	.quad	0x3feef075b3e1437c              # double 0.96685299999999996
	.quad	0x40188f9b56323bbc              # double 6.1402409999999996
	.quad	0x4005542b302f72b4              # double 2.6660979999999999
	.quad	0x4023b2c0a4a05dd9              # double 9.849126
	.quad	0x4022dc2224edf612              # double 9.4299479999999996
	.quad	0x3fe8619da9c99286              # double 0.76191600000000004
	.quad	0x3ff55cf355cd91ef              # double 1.3351930000000001
	.quad	0x3ff2573d9ec70004              # double 1.146299
	.quad	0x3fe34a29845dc832              # double 0.60280299999999998
	.quad	0x401f0e4b87bdcf03              # double 7.7639599999999999
	.quad	0x4021d948344c37e7              # double 8.9243790000000001
	.quad	0x401890bd017dae82              # double 6.1413460000000004
	.quad	0x401d14b8bef8ceb3              # double 7.2702359999999997
	.quad	0x402341fa76534374              # double 9.628864
	.quad	0x4006454ac29bf163              # double 2.7838340000000001
	.quad	0x4013b1b1960fa15e              # double 4.9235290000000003
	.quad	0x400fb0374ff865d8              # double 3.9610430000000001
	.quad	0x40164b9dc2f405f7              # double 5.5738440000000002
	.quad	0x3ffedd6bebe1650a              # double 1.9290579999999999
	.quad	0x4013bc3b927d45a6              # double 4.933821
	.quad	0x40206ee0f3cb3e57              # double 8.2165599999999994
	.quad	0x3ff69393250b5244              # double 1.4110290000000001
	.quad	0x4007da847b24638d              # double 2.9816980000000002
	.quad	0x401adb1f255f351a              # double 6.7139860000000002
	.quad	0x4012d18c197e5647              # double 4.7046359999999998
	.quad	0x40180ffb480a5acd              # double 6.0156070000000001
	.quad	0x401ba0d1b71758e2              # double 6.9070499999999999
	.quad	0x4021a77d73c92578              # double 8.8271289999999993
	.quad	0x3ff5168d759ee88e              # double 1.318006
	.quad	0x400d0ed56b00ffda              # double 3.6322429999999999
	.quad	0x4021c5e4a3832767              # double 8.8865099999999995
	.quad	0x401c31c3265add9c              # double 7.0485959999999999
	.quad	0x40206f9314445aa3              # double 8.2179190000000002
	.quad	0x40165c2d2780778a              # double 5.5900160000000003
	.quad	0x401e24bdba0a5269              # double 7.5358799999999996
	.quad	0x401b3ec204f2ae08              # double 6.8112870000000001
	.quad	0x4015c08e581cf788              # double 5.4380430000000004
	.quad	0x401825b3e1437c57              # double 6.0368190000000004
	.quad	0x401d96d0917d6b66              # double 7.3972800000000003
	.quad	0x401c2d955714b9cb              # double 7.0445149999999996
	.quad	0x3ff4fa02fb5d0310              # double 1.3110379999999999
	.quad	0x3ff272f661f18ca0              # double 1.1530670000000001
	.quad	0x3ff200f12c27a637              # double 1.12523
	.quad	0x400f5b60ae9680e0              # double 3.9196179999999998
	.quad	0x40110440f2389720              # double 4.2541539999999998
	.quad	0x401dd65e89225311              # double 7.4593449999999999
	.quad	0x4008ae3cd9a52264              # double 3.0850770000000001
	.quad	0x401fdb3311a543f2              # double 7.9640620000000002
	.quad	0x3ff77d5dc4007571              # double 1.4681070000000001
	.quad	0x3fe3361dc93ea2d3              # double 0.600356
	.quad	0x4009f604189374bc              # double 3.2451249999999998
	.quad	0x40106e58e64b2314              # double 4.107761
	.quad	0x4022be577531db44              # double 9.3717609999999993
	.quad	0x3ffa05fbf83382e4              # double 1.6264609999999999
	.quad	0x4003a7ba237cdcca              # double 2.4568979999999998
	.quad	0x3ffe86f262888b54              # double 1.9079459999999999
	.quad	0x402011e9d0e991ff              # double 8.0349869999999992
	.quad	0x401759378ee28672              # double 5.8371259999999996
	.quad	0x4014695e17e34b94              # double 5.1028979999999997
	.quad	0x40008773e24febd1              # double 2.0661390000000002
	.quad	0x400cefdb09a671ef              # double 3.6171169999999999
	.quad	0x4008927d45a5fc7e              # double 3.0715279999999998
	.quad	0x4007b4aa10e02214              # double 2.9632149999999999
	.quad	0x402213b6cbd987c6              # double 9.0385039999999996
	.quad	0x4021dfc7607c419a              # double 8.937068
	.quad	0x3fcebc947064ecea              # double 0.24013000000000001
	.quad	0x401b99c7ffde7211              # double 6.9001770000000002
	.quad	0x3ff52b7fe08aefb3              # double 1.3231200000000001
	.quad	0x40235a0ee8d10f52              # double 9.6758950000000006
	.quad	0x4017052263d816ad              # double 5.7550140000000001
	.quad	0x4020c749491f2dc3              # double 8.3892310000000005
	.quad	0x3fe6b6672fba01ef              # double 0.70976600000000001
	.quad	0x401a9fe4bcad9ad8              # double 6.6561459999999997
	.quad	0x3ff034b945308bb9              # double 1.012872
	.quad	0x400570563ed0f627              # double 2.6798519999999999
	.quad	0x3feedb48909289db              # double 0.96426800000000001
	.quad	0x401400ad46f587d7              # double 5.000661
	.quad	0x400089435ac8a372              # double 2.0670229999999998
	.quad	0x3fef63c968943e10              # double 0.980931
	.quad	0x401b81ada76d97b3              # double 6.8766389999999999
	.quad	0x3fd92817763e4abe              # double 0.39307199999999998
	.quad	0x400310691ea78af4              # double 2.383013
	.quad	0x4019ece5f7403dde              # double 6.4813460000000003
	.quad	0x3fe1894812be48a6              # double 0.54800800000000005
	.quad	0x40236ef3b213e3e3              # double 9.7167030000000007
	.quad	0x401fde996312f4cf              # double 7.9673819999999997
	.quad	0x401b7a450acc0bdd              # double 6.8694040000000003
	.quad	0x401136c54bcf0b6b              # double 4.3034869999999996
	.quad	0x4012e5992428d435              # double 4.7242170000000003
	.quad	0x4000a25d074213a1              # double 2.0792790000000001
	.quad	0x401d44306e5cd4ed              # double 7.3165909999999998
	.quad	0x4022dc7325918a01              # double 9.4305660000000006
	.quad	0x40074e07e5a78f26              # double 2.9131010000000002
	.quad	0x401aed1b2e59af9f              # double 6.7315490000000002
	.quad	0x400016fb09203a32              # double 2.0112209999999999
	.quad	0x3fe780abf76a2f49              # double 0.73445700000000003
	.quad	0x3f6fd7a13c254a3c              # double 0.0038869999999999998
	.quad	0x3fe4015e39713ad6              # double 0.62516700000000003
	.quad	0x4005402539756c94              # double 2.6563210000000002
	.quad	0x3fec60d4562e09ff              # double 0.88682000000000005
	.quad	0x40200439ffd60e95              # double 8.0082550000000001
	.quad	0x401760fcb4f1e4b4              # double 5.8447139999999997
	.quad	0x4023b26b50b0f27c              # double 9.8484750000000005
	.quad	0x400141ae70c1333c              # double 2.1570710000000002
	.quad	0x401b4d4280ae1049              # double 6.8254489999999999
	.quad	0x40150a4ebdd334c6              # double 5.2600660000000001
	.quad	0x3ffbbb0a2ca9ac36              # double 1.7331639999999999
	.quad	0x3ff11cbee807bbb6              # double 1.069518
	.quad	0x4006d04ddb5525cc              # double 2.8517109999999999
	.quad	0x3fe0abc0e38a7e74              # double 0.52096600000000004
	.quad	0x401fe2788db0574b              # double 7.9711629999999997
	.quad	0x3ffd5de9c0229a5f              # double 1.8354280000000001
	.quad	0x401c5b5ed8d36b4c              # double 7.0892289999999996
	.quad	0x402370f7985271bd              # double 9.7206390000000002
	.quad	0x4008ece2d1f1cfbc              # double 3.1156670000000002
	.quad	0x401a808fa7a85016              # double 6.6255480000000002
	.quad	0x40107e48626f60e1              # double 4.1233230000000001
	.quad	0x401ce6e9bbf0dc77              # double 7.2255010000000004
	.quad	0x4021ed55e6bc621b              # double 8.9635459999999991
	.quad	0x402194790b849881              # double 8.7899860000000007
	.quad	0x401205fa22706d50              # double 4.5058369999999996
	.quad	0x4020328e2e2b8c76              # double 8.0987410000000004
	.quad	0x3ffa1a08bfc2224f              # double 1.631356
	.quad	0x40196e8ff327aa69              # double 6.357971
	.quad	0x40097508f648c719              # double 3.1821459999999999
	.quad	0x40235e3dc486ad2e              # double 9.6840650000000004
	.quad	0x402137db6e503fb3              # double 8.6090959999999992
	.quad	0x4021c2f89c5e6ff8              # double 8.8808030000000002
	.quad	0x401e32ea960b6fa0              # double 7.5497230000000002
	.quad	0x4023777ea1c68ec5              # double 9.7333879999999997
	.quad	0x4023a993d5347a5b              # double 9.8312059999999998
	.quad	0x401a9ebf65dbfceb              # double 6.6550269999999996
	.quad	0x401fba5375c8d9f9              # double 7.9319589999999999
	.quad	0x4008c8f29d40ee07              # double 3.0981190000000001
	.quad	0x4018fd91ab8e8ea4              # double 6.2476260000000003
	.quad	0x40221f5536933a04              # double 9.0611969999999999
	.quad	0x400aa65e02ea960b              # double 3.3312339999999998
	.quad	0x402066da87a072d2              # double 8.2008860000000006
	.quad	0x4020d04406c00da2              # double 8.4067690000000006
	.quad	0x402376f3d3a1d324              # double 9.732329
	.quad	0x3ff39b4677b395c4              # double 1.225409
	.quad	0x3fd9ea209aaa3ad2              # double 0.40491500000000002
	.quad	0x3fecf266ba493c8a              # double 0.90459000000000001
	.quad	0x40021c1f85d744f6              # double 2.2637320000000001
	.quad	0x4003338de6ddf00b              # double 2.4001730000000001
	.quad	0x401cd948dc11e42e              # double 7.2121919999999999
	.quad	0x400d0694898f605b              # double 3.6282130000000001
	.quad	0x4010f30f8c64fdb1              # double 4.2373640000000004
	.quad	0x4019e393250b5244              # double 6.4722410000000004
	.quad	0x400407807789a459              # double 2.503663
	.quad	0x40111892253111f1              # double 4.2739950000000002
	.quad	0x4014d3a68b19a416              # double 5.20669
	.quad	0x40220afbc1acde1a              # double 9.021452
	.quad	0x401e36a76965f527              # double 7.5533729999999996
	.quad	0x401cd11dbca9691a              # double 7.2042149999999996
	.quad	0x3ff78d25edd05293              # double 1.4719599999999999
	.quad	0x4021930df9bdc6a0              # double 8.7872160000000008
	.quad	0x40003654d61b2a28              # double 2.026529
	.quad	0x3f96583e8576cce6              # double 0.021821
	.quad	0x401f63721d53cddd              # double 7.8471149999999996
	.quad	0x401f59c8c9320d99              # double 7.8376799999999997
	.quad	0x40032954a7f8012e              # double 2.395181
	.quad	0x401f2e80bed740c4              # double 7.7954129999999999
	.quad	0x402140123810e886              # double 8.6251390000000008
	.quad	0x40099db6e503fb37              # double 3.2020089999999999
	.quad	0x40228a1fafc8b008              # double 9.2697730000000007
	.quad	0x401374ed2cbea4ec              # double 4.8641860000000001
	.quad	0x4010025a250f8402              # double 4.0022970000000004
	.quad	0x401fd456f75d9a0f              # double 7.9573629999999999
	.quad	0x4022633354c12275              # double 9.1937510000000007
	.quad	0x4010362ae4b01861              # double 4.0528979999999999
	.quad	0x400349b62c77574f              # double 2.4109919999999998
	.quad	0x401816b8f9b13166              # double 6.0221900000000002
	.quad	0x3ffdd8622c450269              # double 1.8653280000000001
	.quad	0x3fe0a5e785b5b707              # double 0.52025200000000005
	.quad	0x3fdebe5d9e40c847              # double 0.48036899999999999
	.quad	0x402080b7c3504c49              # double 8.2514020000000006
	.quad	0x401ae93bc0a06ea0              # double 6.7277670000000001
	.quad	0x4022da5b0ff10ecb              # double 9.4264759999999991
	.quad	0x4023e85015c20924              # double 9.9537359999999992
	.quad	0x400c9b3b7521144d              # double 3.5757970000000001
	.quad	0x401cda2fcefaa476              # double 7.2130729999999996
	.quad	0x400092bdc26dce3a              # double 2.0716510000000001
	.quad	0x40152b42cc2d6a9c              # double 5.2922469999999997
	.quad	0x401b1b9baa1511e0              # double 6.776961
	.quad	0x3ff12a897635e743              # double 1.0728850000000001
	.quad	0x4014cd794a6eb91b              # double 5.2006579999999998
	.quad	0x400fac271fff79c8              # double 3.9590589999999999
	.quad	0x40210345069a4df4              # double 8.5063859999999991
	.quad	0x401ddda0168b5cc0              # double 7.466431
	.quad	0x401959fcf3dc054f              # double 6.337879
	.quad	0x3fee0a2ca9ac3654              # double 0.93874199999999996
	.quad	0x3fdc50bd87b56b87              # double 0.44242799999999999
	.quad	0x40111068123810e9              # double 4.2660220000000004
	.quad	0x4019191ff7164c73              # double 6.2745360000000003
	.quad	0x3fd2c87980f55de6              # double 0.29348600000000002
	.quad	0x402231b10fd7e458              # double 9.097054
	.quad	0x3ff1456d5cfaacda              # double 1.07945
	.quad	0x3fc34057082491b0              # double 0.15040100000000001
	.quad	0x402386a1a500d5e9              # double 9.7629520000000002
	.quad	0x4017781adea89763              # double 5.8672899999999997
	.quad	0x4010585f06f69446              # double 4.0862999999999996
	.quad	0x40125032db1e9f27              # double 4.5783189999999996
	.quad	0x40016ec0724b76f7              # double 2.1790780000000001
	.quad	0x402350535c9e6688              # double 9.656886
	.quad	0x40058f2f9873ffac              # double 2.6949149999999999
	.quad	0x3fdb0c1fc8f32379              # double 0.42261500000000002
	.quad	0x4006a5c810a569b1              # double 2.8309479999999998
	.quad	0x3fb8814d72799a20              # double 0.095723000000000002
	.quad	0x3fec6bc83a96d4c3              # double 0.88815699999999997
	.quad	0x3fe098b502ababeb              # double 0.51864100000000002
	.quad	0x401f3ddce7cd0353              # double 7.8104129999999996
	.quad	0x40109804534bd76f              # double 4.1484540000000001
	.quad	0x40201ed1bf7ad4b2              # double 8.0601939999999992
	.quad	0x400a6e3ef284167b              # double 3.3038310000000002
	.quad	0x401b799b2c40d0ab              # double 6.8687560000000003
	.quad	0x40024b039ef0f16f              # double 2.2866279999999999
	.quad	0x40036cb8e086bdf5              # double 2.4280870000000001
	.quad	0x400a3888f861a60d              # double 3.2776049999999999
	.quad	0x40092c76d117b528              # double 3.1467109999999998
	.quad	0x40111fa4c61d8623              # double 4.2809020000000002
	.quad	0x3fa8dbad3a604e1e              # double 0.048550999999999997
	.quad	0x40194968943e1006              # double 6.321688
	.quad	0x40111db5d894812c              # double 4.2790140000000001
	.quad	0x40205494b380cb6c              # double 8.1651969999999991
	.quad	0x401e6ea9a3d2d880              # double 7.6080690000000004
	.quad	0x401034d37c1376d5              # double 4.0515879999999997
	.quad	0x3fe78b7c3504c48b              # double 0.73577700000000001
	.quad	0x401a83ffac1d29dc              # double 6.6289049999999996
	.quad	0x401b964388ebcc6c              # double 6.8967419999999997
	.quad	0x401609d4d834091c              # double 5.509601
	.quad	0x4010bf1a1986b9c3              # double 4.186623
	.quad	0x40154f09d8c6d613              # double 5.3271860000000002
	.quad	0x4019f44a6223e187              # double 6.4885650000000004
	.quad	0x4015767ba237cdcd              # double 5.3657060000000003
	.quad	0x4020ac1ebc83a96d              # double 8.3361719999999995
	.quad	0x4019ea9f7b5aea31              # double 6.4791239999999997
	.quad	0x4020697a67a52ac7              # double 8.2060119999999994
	.quad	0x4014d35653c9abb0              # double 5.2063839999999999
	.quad	0x400ffe42e1262025              # double 3.9991509999999999
	.quad	0x40210c07ee0b0af6              # double 8.523498
	.quad	0x400a842d05f28848              # double 3.3145389999999999
	.quad	0x4016592f2b66b617              # double 5.5870939999999996
	.quad	0x401d66a22b3892ef              # double 7.3502280000000004
	.quad	0x40133c4588a04d12              # double 4.808859
	.quad	0x40162b4a66559f6f              # double 5.5422760000000002
	.quad	0x4015a8cb07d0aeda              # double 5.4148370000000003
	.quad	0x4004cded288ce704              # double 2.6005500000000001
	.quad	0x402322db402d16b9              # double 9.5680789999999991
	.quad	0x4003359ff4fd6d7f              # double 2.4011840000000002
	.quad	0x40139e996312f4cf              # double 4.9048819999999997
	.quad	0x400319e279dd3bb0              # double 2.3876390000000001
	.quad	0x4020189d495182aa              # double 8.0480750000000008
	.quad	0x401c922ee41919ac              # double 7.1427569999999996
	.quad	0x401236b441bb8c33              # double 4.5534220000000003
	.quad	0x3ffe353825e13b19              # double 1.887993
	.quad	0x4021dc91d14e3bcd              # double 8.9307999999999996
	.quad	0x4014480b673c4f3c              # double 5.0703560000000003
	.quad	0x401881bf7ad4b274              # double 6.1267069999999997
	.quad	0x40021e45803cd142              # double 2.2647810000000002
	.quad	0x401b8da37ef5a965              # double 6.8883190000000001
	.quad	0x40143988d2a1f8e4              # double 5.0561860000000003
	.quad	0x4023e6518f3eccc4              # double 9.9498409999999992
	.quad	0x4001a1b6d43d0397              # double 2.2039620000000002
	.quad	0x3ff77f76a2f48c2e              # double 1.4686189999999999
	.quad	0x400ca41355475a32              # double 3.5801150000000002
	.quad	0x401a7e8d10f51aca              # double 6.6235850000000003
	.quad	0x4011b28134480629              # double 4.4243209999999999
	.quad	0x40139e07a28bb0a3              # double 4.9043260000000002
	.quad	0x40071d71b0468449              # double 2.8893770000000001
	.quad	0x4022f9b54195cc85              # double 9.4877109999999991
	.quad	0x401e89ff0cbaf966              # double 7.6347620000000003
	.quad	0x40117df0d413122b              # double 4.3729889999999996
	.quad	0x40207109aed56b01              # double 8.220777
	.quad	0x40123373f316e371              # double 4.5502469999999997
	.quad	0x401bee45c358afc4              # double 6.9826879999999996
	.quad	0x4003686162f166e0              # double 2.425967
	.quad	0x3ff520535c9e6688              # double 1.320392
	.quad	0x3ffff0b5aa715832              # double 1.996267
	.quad	0x400273cf70153bd1              # double 2.3065479999999998
	.quad	0x3ff775d13d74d595              # double 1.466264
	.quad	0x401bfbc48f10a99b              # double 6.9958669999999996
	.quad	0x401f93f9a49c2c1b              # double 7.8945069999999999
	.quad	0x400a4cebbba55d1c              # double 3.2875589999999999
	.quad	0x3ffcf66f9335d24a              # double 1.810165
	.quad	0x4020ca3b9ae0c176              # double 8.3949859999999994
	.quad	0x4022bb58f2e05ccd              # double 9.3659130000000008
	.quad	0x4013b0370cdc8755              # double 4.922085
	.quad	0x40200b161a1db878              # double 8.0216530000000006
	.quad	0x400da0956c0d6f54              # double 3.7034099999999999
	.quad	0x4006757603925bb8              # double 2.8073540000000001
	.quad	0x4008dd65a14488c6              # double 3.108104
	.quad	0x400c54d594f26aec              # double 3.541423
	.quad	0x401c5bed740c4157              # double 7.0897730000000001
	.quad	0x4010ef8a4c1ebc84              # double 4.2339260000000003
	.quad	0x3fe9a4bba12b5e53              # double 0.80135900000000004
	.quad	0x4019cccb7d41743f              # double 6.4499950000000004
	.quad	0x402181513f8db489              # double 8.7525729999999999
	.quad	0x4022eaaf5771001d              # double 9.4583689999999993
	.quad	0x40151a775fb2edfe              # double 5.2758459999999996
	.quad	0x402210c23fab10ba              # double 9.0327319999999993
	.quad	0x40034ca25529fe00              # double 2.4124189999999999
	.quad	0x401e4f9ebe9c8861              # double 7.5777539999999996
	.quad	0x401a4cb2d905c033              # double 6.5749009999999997
	.quad	0x402179b068123811              # double 8.7376740000000002
	.quad	0x4022d5a74c09c3ce              # double 9.4172919999999998
	.quad	0x4015354b05b7cfe6              # double 5.3020440000000004
	.quad	0x400db8e0008637bd              # double 3.715271
	.quad	0x4020a8ee8d10f51b              # double 8.3299450000000004
	.quad	0x4012c36fc158fb44              # double 4.6908560000000001
	.quad	0x3fed2c3009b30729              # double 0.91164400000000001
	.quad	0x400e3612c6ac215c              # double 3.7764030000000002
	.quad	0x3ff6c6c00da1a933              # double 1.4235230000000001
	.quad	0x4017025e13b18dac              # double 5.7523119999999999
	.quad	0x400cff8ec0f88334              # double 3.624784
	.quad	0x4023f6f62f9ca5be              # double 9.9823470000000007
	.quad	0x401d0521144cbe1f              # double 7.2550090000000003
	.quad	0x401f25b3e1437c57              # double 7.7868190000000003
	.quad	0x40199a91d9b1b79e              # double 6.4009470000000004
	.quad	0x401b699ae924f228              # double 6.8531300000000002
	.quad	0x4005bb20b8066c2b              # double 2.7163710000000001
	.quad	0x40071363f572de44              # double 2.884468
	.quad	0x401787681669ced1              # double 5.8822330000000003
	.quad	0x401bacf13cee9dd8              # double 6.9188890000000001
	.quad	0x400750a45d41fa76              # double 2.9143759999999999
	.quad	0x4003056c508b32cf              # double 2.3776480000000002
	.quad	0x4014fdb65ecc3e32              # double 5.2477660000000004
	.quad	0x40176581cf7878b8              # double 5.8491280000000003
	.quad	0x400ff7ee4e26d480              # double 3.9960599999999999
	.quad	0x4009529802c0a4a0              # double 3.1653289999999998
	.quad	0x40183d65e4606749              # double 6.0599590000000001
	.quad	0x4002f935fc3b4f61              # double 2.3716849999999998
	.quad	0x3ff05b6e503fb374              # double 1.022322
	.quad	0x40164974e65bea0c              # double 5.5717350000000003
	.quad	0x4021bde26916440f              # double 8.8708679999999998
	.quad	0x4023aa839042d8c3              # double 9.8330350000000006
	.quad	0x3ff1fa7fc32ebe59              # double 1.1236569999999999
	.quad	0x4020aa4cc6822ff1              # double 8.3326170000000008
	.quad	0x4023dac81d3aa36a              # double 9.927308
	.quad	0x40004edd48451330              # double 2.0385080000000002
	.quad	0x400b15aa715831f0              # double 3.3855789999999999
	.quad	0x40119ae89eba6aca              # double 4.4012779999999996
	.quad	0x40134a7d24180d3d              # double 4.822743
	.quad	0x3ffe725d4a5df224              # double 1.9029210000000001
	.quad	0x3fc79096bb98c7e3              # double 0.18410000000000001
	.quad	0x40201f1ef30a4e38              # double 8.0607830000000007
	.quad	0x40062b84988094e6              # double 2.7712490000000001
	.quad	0x402251fd1569f490              # double 9.1601339999999993
	.quad	0x3ff69bc98a222d51              # double 1.4130339999999999
	.quad	0x40236c558644523f              # double 9.7115899999999992
	.quad	0x4006737b07075b3e              # double 2.806387
	.quad	0x401243f8db489093              # double 4.5663790000000004
	.quad	0x4010be43ed959a31              # double 4.1858060000000004
	.quad	0x4001d320d9945b6c              # double 2.2280899999999999
	.quad	0x3ff24eb78897e996              # double 1.144218
	.quad	0x400d909070fbeb9e              # double 3.6955879999999999
	.quad	0x4002d6fd21ff2e49              # double 2.354975
	.quad	0x40132c9752977c89              # double 4.7935460000000001
	.quad	0x40211208e1501190              # double 8.5352239999999995
	.quad	0x401fab749adc8fb8              # double 7.9174369999999996
	.quad	0x4022ae338b47c73f              # double 9.3402370000000001
	.quad	0x401d9ea78af3e469              # double 7.4049360000000002
	.quad	0x400e0bfdb4cc2507              # double 3.7558549999999999
	.quad	0x3ffd787ad080b674              # double 1.8419140000000001
	.quad	0x3ffab1593e5fb720              # double 1.6682980000000001
	.quad	0x3ffc85f6ba0620ab              # double 1.7827059999999999
	.quad	0x401c1352eb5f5f0b              # double 7.0188709999999999
	.quad	0x401c18c21e1d2179              # double 7.024178
	.quad	0x400f962a5e785b5b              # double 3.9483229999999998
	.quad	0x402226e41919ac79              # double 9.0759589999999992
	.quad	0x4007d14c22ee4192              # double 2.9771960000000002
	.quad	0x400974690de09353              # double 3.1818409999999999
	.quad	0x3ffef02b40f66a55              # double 1.933635
	.quad	0x4010d21e1d2178f7              # double 4.2051930000000004
	.quad	0x402355454152b0a7              # double 9.666544
	.quad	0x4019a1bf37b8d3f2              # double 6.4079560000000004
	.quad	0x401b1b12d3415b14              # double 6.7764389999999999
	.quad	0x4006728bf3bea91e              # double 2.8059310000000002
	.quad	0x4023cc473cd57364              # double 9.8989809999999991
	.quad	0x4016883947496aad              # double 5.6330309999999999
	.quad	0x400dfa35d67ba238              # double 3.7471730000000001
	.quad	0x4018ffdda8bd230c              # double 6.2498690000000003
	.quad	0x401b8c903ea704bc              # double 6.8872689999999999
	.quad	0x4001e34a01abd1ab              # double 2.2359810000000002
	.quad	0x3ff07fcfc3f811f5              # double 1.031204
	.quad	0x401a68a8f3a9b068              # double 6.6022069999999999
	.quad	0x3ff10183f91e646f              # double 1.06287
	.quad	0x3fc4f284167a95c8              # double 0.16365099999999999
	.quad	0x401329652bd3c361              # double 4.7904249999999999
	.quad	0x4007bc4651f3e89b              # double 2.9669310000000002
	.quad	0x4019eb2074ea8da8              # double 6.479616
	.quad	0x4000e2f72b452828              # double 2.1108229999999999
	.quad	0x40239869835158b8              # double 9.7976799999999997
	.quad	0x401c0bbe4473cd57              # double 7.0114679999999998
	.quad	0x400ffbe9856a37ac              # double 3.9980039999999999
	.quad	0x40108b3f20a73f75              # double 4.1359830000000004
	.quad	0x3ffb3585be1a8262              # double 1.7005669999999999
	.quad	0x4014cb2cc70867ae              # double 5.1984130000000004
	.quad	0x4022fc0b9991361e              # double 9.4922760000000004
	.quad	0x401158cc144028e5              # double 4.336716
	.quad	0x4020477f06705c89              # double 8.1396409999999992
	.quad	0x3ff1fb8f57f737da              # double 1.1239159999999999
	.quad	0x3feadd2d01c0ca60              # double 0.83949899999999999
	.quad	0x401f59b1b79d909f              # double 7.8375919999999998
	.quad	0x400cd3b5393250b5              # double 3.6033729999999999
	.quad	0x401a2018a43bb40b              # double 6.5313439999999998
	.quad	0x401524790b849881              # double 5.2856180000000004
	.quad	0x4020240096feb4a6              # double 8.0703169999999993
	.quad	0x40018b630a91537a              # double 2.19306
	.quad	0x400418c436fc1590              # double 2.5120930000000001
	.quad	0x401a8448cf7caa76              # double 6.6291840000000004
	.quad	0x4001ca2b1704ff43              # double 2.2237149999999999
	.quad	0x3fe4492ff4ba51a0              # double 0.633934
	.quad	0x402061869835158c              # double 8.1904800000000008
	.quad	0x40111574f722e1ac              # double 4.2709539999999997
	.quad	0x400611a543f1c758              # double 2.758616
	.quad	0x3ff78cd74927913f              # double 1.4718850000000001
	.quad	0x40182be553ac4f7f              # double 6.0428670000000002
	.quad	0x3ff1f3a57eaa2a0b              # double 1.1219840000000001
	.quad	0x3ff97dad7518b0d1              # double 1.593183
	.quad	0x401186534373f317              # double 4.3811770000000001
	.quad	0x400e04e7253da72a              # double 3.7523939999999998
	.quad	0x401ff715c63ae254              # double 7.9912939999999999
	.quad	0x4010efdc9c4da900              # double 4.2342399999999998
	.quad	0x400955bd512ec6bd              # double 3.166865
	.quad	0x40220301c92ddbdb              # double 9.0058729999999994
	.quad	0x3fff2c0d6f544bb2              # double 1.9482550000000001
	.quad	0x4019052b4d8ba40e              # double 6.2550480000000004
	.quad	0x4021becfa69be09c              # double 8.8726780000000005
	.quad	0x4018aa53b8e4b87c              # double 6.1663350000000001
	.quad	0x401bd50acc0bdcad              # double 6.9580489999999999
	.quad	0x40216176577531db              # double 8.6903559999999995
	.quad	0x401872413db7f173              # double 6.1115769999999996
	.quad	0x400f1a2be0589acc              # double 3.8877790000000001
	.quad	0x401a66249a133c1d              # double 6.5997490000000001
	.quad	0x401c148d7e02645e              # double 7.0200709999999997
	.quad	0x401d0f5d78811b1e              # double 7.2650050000000004
	.quad	0x3ff6d5f02c4d65e4              # double 1.4272309999999999
	.quad	0x401d5202107b7846              # double 7.3300859999999997
	.quad	0x401cc18e325d4a5e              # double 7.189019
	.quad	0x3ff388c60cbf2b24              # double 1.2208920000000001
	.quad	0x401cbf9767903212              # double 7.1871010000000002
	.quad	0x40239ee5eedcc20d              # double 9.8103479999999994
	.quad	0x401a4e6e221c8a7a              # double 6.5765919999999998
	.quad	0x401659e98dcdb37d              # double 5.5878050000000004
	.quad	0x3ff01461b6d43d04              # double 1.0049760000000001
	.quad	0x40222915bdd76684              # double 9.0802440000000004
	.quad	0x4018b6b7ed41b75a              # double 6.1784359999999996
	.quad	0x401fee2b063e07a3              # double 7.9825860000000004
	.quad	0x402090e23af31b15              # double 8.2829759999999997
	.quad	0x401403c07ee0b0af              # double 5.0036639999999997
	.quad	0x4016de789e774eec              # double 5.717257
	.quad	0x3fd754477ff151e7              # double 0.36451899999999998
	.quad	0x3ffaa2ad3e920c07              # double 1.6647160000000001
	.quad	0x40130cf80dc33722              # double 4.7626650000000001
	.quad	0x401bcd27c3936827              # double 6.9503469999999998
	.quad	0x4012d76188b1140a              # double 4.7103330000000003
	.quad	0x3ff7510b1feeb2d1              # double 1.4572860000000001
	.quad	0x401d747496aad1d0              # double 7.3637259999999998
	.quad	0x401abe757928e0ca              # double 6.6859950000000001
	.quad	0x401622f23033a472              # double 5.5341269999999998
	.quad	0x3fe8630ec3116228              # double 0.76209199999999999
	.quad	0x400de62b27cbf6e4              # double 3.737387
	.quad	0x4022835ce1826677              # double 9.2565679999999997
	.quad	0x402259210385c67e              # double 9.17408
	.quad	0x40238859a73b42cc              # double 9.7663089999999996
	.quad	0x4021b3545c78a6db              # double 8.8502530000000004
	.quad	0x402346f99806f263              # double 9.6386230000000008
	.quad	0x40142fb86f47b678              # double 5.046602
	.quad	0x401d009fa54c5543              # double 7.2506089999999999
	.quad	0x4008d1cf355cd91f              # double 3.102446
	.quad	0x3ffde0642396073e              # double 1.867283
	.quad	0x3fd97bc7f77af640              # double 0.39817999999999998
	.quad	0x4023c9b8cb8e086c              # double 9.8939880000000002
	.quad	0x3fd6b26394face68              # double 0.35463800000000001
	.quad	0x4015b244a6223e18              # double 5.4240899999999996
	.quad	0x4002189a459103c9              # double 2.2620130000000001
	.quad	0x40171b3fa6defc7a              # double 5.7766099999999998
	.quad	0x401db4d4024b33db              # double 7.42659
	.quad	0x40179b738e6d15ad              # double 5.9018079999999999
	.quad	0x401122f87ad080b6              # double 4.2841509999999996
	.quad	0x40236fae9ab29e4d              # double 9.7181289999999993
	.quad	0x3ff2b78cc9a77e5f              # double 1.1698120000000001
	.quad	0x400c206c8711d799              # double 3.5158320000000001
	.quad	0x400d25f394b7b289              # double 3.6435309999999999
	.quad	0x4023eff3ade225fa              # double 9.9686559999999993
	.quad	0x40021d084e831ad2              # double 2.264176
	.quad	0x401c0ec460ed80a1              # double 7.0144209999999996
	.quad	0x40151bd944aa53fc              # double 5.277196
	.quad	0x3ffb882cf52b90a8              # double 1.7207460000000001
	.quad	0x4022089df1172ef1              # double 9.0168300000000006
	.quad	0x4011205f28848388              # double 4.2816130000000001
	.quad	0x40107b899392189c              # double 4.1206420000000001
	.quad	0x4016f8f7121ab4b7              # double 5.7431299999999998
	.quad	0x3fea56e696a26e54              # double 0.82310799999999995
	.quad	0x3fd4785f8d2e514c              # double 0.31984699999999999
	.quad	0x400e4e89656eefa2              # double 3.788348
	.quad	0x3ffdbf8982cb20fb              # double 1.859262
	.quad	0x401ec702a3486f05              # double 7.6943460000000003
	.quad	0x3fe0fb45f17bd8be              # double 0.53067299999999995
	.quad	0x4022b184a0e410b6              # double 9.3467149999999997
	.quad	0x400ea107b784662c              # double 3.8286280000000001
	.quad	0x401326b441bb8c33              # double 4.7877970000000003
	.quad	0x402335b50f40e5a3              # double 9.6048969999999993
	.quad	0x400bcead9274e22a              # double 3.4759169999999999
	.quad	0x3ff8af2b66b6177f              # double 1.5427660000000001
	.quad	0x401d86d1e108c3f4              # double 7.3816600000000001
	.quad	0x4023ae77d523b363              # double 9.8407579999999992
	.quad	0x3fd0a0d349be8ff3              # double 0.25981599999999999
	.quad	0x4016015a07b352a8              # double 5.5013199999999998
	.quad	0x401af1bbcf4e874d              # double 6.7360680000000004
	.quad	0x4003c76d97b30f8c              # double 2.4723769999999998
	.quad	0x4017441d8e864021              # double 5.8165190000000004
	.quad	0x4020d359146e4c0e              # double 8.4127890000000001
	.quad	0x400c2d2fe3f359ff              # double 3.5220639999999999
	.quad	0x40139d1d041cc533              # double 4.9034310000000003
	.quad	0x401281c36976bc1f              # double 4.626722
	.quad	0x40225af1455219a8              # double 9.1776219999999995
	.quad	0x400f0787ce95faa9              # double 3.8786770000000002
	.quad	0x4018a7724fa8b4c0              # double 6.1635220000000004
	.quad	0x4011451761459536              # double 4.3174720000000004
	.quad	0x40100362e9036439              # double 4.0033070000000004
	.quad	0x401be4003254e6e2              # double 6.9726569999999999
	.quad	0x400f95182a9930be              # double 3.9478
	.quad	0x4013af1cfbb94962              # double 4.9210089999999997
	.quad	0x4019a1a47a9e2bd0              # double 6.4078540000000004
	.quad	0x40169b3d07c84b5e              # double 5.6516000000000002
	.quad	0x3feb5eb95e5aff2a              # double 0.85531299999999999
	.quad	0x4008bc08fa7a8501              # double 3.0918139999999998
	.quad	0x40231b7fe08aefb3              # double 9.5537100000000005
	.quad	0x40216908c3f3e037              # double 8.7051449999999999
	.quad	0x402355c8323358f3              # double 9.6675430000000002
	.quad	0x402174d8dbcec850              # double 8.7282170000000008
	.quad	0x40203eba27ae9ab3              # double 8.1225140000000007
	.quad	0x4023ace7253da72a              # double 9.8377009999999991
	.quad	0x4005d6c93a711516              # double 2.729876
	.quad	0x401a9da09cc319c6              # double 6.6539330000000003
	.quad	0x3ff3456b441bb8c3              # double 1.204448
	.quad	0x40045f9df548ecd9              # double 2.5466880000000001
	.quad	0x401e79a5a89b951c              # double 7.6187959999999997
	.quad	0x4023436e0d23d4f1              # double 9.6316989999999993
	.quad	0x401058398a654930              # double 4.086157
	.quad	0x4008bca29845dc83              # double 3.0921069999999999
	.quad	0x401b98576cce5f74              # double 6.898771
	.quad	0x4023c63cb8173322              # double 9.8871819999999992
	.quad	0x401e1f566490a351              # double 7.5306030000000001
	.quad	0x40197e3864cb5bb4              # double 6.3732620000000004
	.quad	0x401f5e76427c7c52              # double 7.8422479999999997
	.quad	0x4005e363b256ffc1              # double 2.73603
	.quad	0x4003166f0cfe1544              # double 2.3859539999999999
	.quad	0x4012fc7d5ed06fef              # double 4.7465719999999996
	.quad	0x4022aa6d04e618ce              # double 9.3328629999999997
	.quad	0x4022c92641b328b7              # double 9.3928700000000002
	.quad	0x4020c2c7da1ec4e7              # double 8.3804309999999997
	.quad	0x402342378ab0c88a              # double 9.6293299999999995
	.quad	0x400a9192641b328b              # double 3.3210799999999998
	.quad	0x401fdcf398e97072              # double 7.9657730000000004
	.quad	0x402119aa60913a50              # double 8.5501280000000008
	.quad	0x3fe443efae7924af              # double 0.63329299999999999
	.quad	0x40008599ed7c6fbd              # double 2.0652349999999999
	.quad	0x4019747c73eee526              # double 6.3637560000000004
	.quad	0x4018a3e07a28bb0a              # double 6.1600359999999998
	.quad	0x400e892923e5b856              # double 3.8169729999999999
	.quad	0x40141187e7c06e1a              # double 5.0171200000000002
	.quad	0x3fe8291d9b1b79d9              # double 0.755019
	.quad	0x401a87add15f02c5              # double 6.6324990000000001
	.quad	0x400d0c0053e2d624              # double 3.6308600000000002
	.quad	0x401f92ad81adea89              # double 7.8932399999999995
	.quad	0x400c08b2a6b0d951              # double 3.5042469999999999
	.quad	0x400002d5171e29b7              # double 2.0013830000000001
	.quad	0x3fe42756861e9292              # double 0.62980199999999997
	.quad	0x401aa8c1db0142f6              # double 6.6648019999999999
	.quad	0x3fe43d640e9d51b5              # double 0.632494
	.quad	0x4021da656abde3fc              # double 8.9265550000000004
	.quad	0x3feaa3fab10ba626              # double 0.83251699999999995
	.quad	0x40129ac4b4d056c5              # double 4.651141
	.quad	0x4021237f7be121ee              # double 8.5693319999999993
	.quad	0x3ffafd017dae8188              # double 1.686769
	.quad	0x3ff3cd3bf2f55582              # double 1.237606
	.quad	0x4014e9cf13cee9dd              # double 5.2283289999999996
	.quad	0x402003c05d52c16e              # double 8.0073270000000001
	.quad	0x401e06d15ad106ee              # double 7.5066579999999998
	.quad	0x3ff932cd7cf5f4e4              # double 1.5749029999999999
	.quad	0x401d1debd9018e75              # double 7.2792199999999996
	.quad	0x3ff46674080f98fa              # double 1.275013
	.quad	0x4017eaa60913a4f8              # double 5.9791489999999996
	.quad	0x401671a86940357a              # double 5.6109939999999998
	.quad	0x400127179bfdf7e8              # double 2.144088
	.quad	0x4023fe12839042d9              # double 9.9962350000000004
	.quad	0x400eda71151611ba              # double 3.8566609999999999
	.quad	0x401bd0ecfa69be0a              # double 6.9540290000000002
	.quad	0x4019249d388a8b09              # double 6.2857560000000001
	.quad	0x4014e8854cdb7ae5              # double 5.2270709999999996
	.quad	0x40206a1ec4e7253e              # double 8.2072660000000006
	.quad	0x4006673471f79421              # double 2.8003930000000001
	.quad	0x4005c1eabbcb1cc9              # double 2.7196859999999998
	.quad	0x4021f03afb7e9100              # double 8.9692000000000007
	.quad	0x3ff15233df2a9d62              # double 1.0825689999999999
	.quad	0x401370813cab81f9              # double 4.8598679999999996
	.quad	0x401cf315d701d9f5              # double 7.2373880000000002
	.quad	0x400bcffda4052d66              # double 3.4765579999999998
	.quad	0x3fef66ec9e236c16              # double 0.98131400000000002
	.quad	0x4022956238da3c21              # double 9.2917649999999998
	.quad	0x4014182f0e0a84be              # double 5.0236169999999998
	.quad	0x40227cadddf43c7d              # double 9.2435139999999993
	.quad	0x4019e8262456f75e              # double 6.4767080000000004
	.quad	0x4020a2edbb59ddc2              # double 8.3182200000000002
	.quad	0x401f7a8c154c985f              # double 7.8696749999999999
	.quad	0x3ffd20d349be8ff3              # double 1.820514
	.quad	0x402176b15f88fc93              # double 8.7318219999999993
	.quad	0x3ff549f94855da27              # double 1.33056
	.quad	0x400ecc3c9eecbfb1              # double 3.8497249999999998
	.quad	0x4020c1b93037d630              # double 8.3783659999999998
	.quad	0x401650fba8826aa9              # double 5.5790850000000001
	.quad	0x3fe34a01abd1aa82              # double 0.60278399999999999
	.quad	0x401be8d64d7f0ed4              # double 6.9773800000000001
	.quad	0x401dd04790b84988              # double 7.4533979999999999
	.quad	0x40033a81dc0db270              # double 2.4035679999999999
	.quad	0x401309fbe76c8b44              # double 4.7597500000000004
	.quad	0x401a39d94d0dcfcc              # double 6.5564929999999997
	.quad	0x3fddfad2999567dc              # double 0.46843400000000002
	.quad	0x4014489118c197e5              # double 5.0708659999999997
	.quad	0x3fbe4052d666a982              # double 0.118169
	.quad	0x4014e0f3cb3e5754              # double 5.2196800000000003
	.quad	0x40124aa9717df19d              # double 4.5729119999999996
	.quad	0x401a359f6ec5b079              # double 6.5523660000000001
	.quad	0x40232d67125dd096              # double 9.5886770000000006
	.quad	0x40205d7342edbb5a              # double 8.1825200000000002
	.quad	0x3fe55cd2d44dca8e              # double 0.66758099999999998
	.quad	0x40106415f45e0b4e              # double 4.0977399999999999
	.quad	0x401d1267839cd812              # double 7.2679729999999996
	.quad	0x3ff134dcebfec13c              # double 1.0754060000000001
	.quad	0x3ffd89c90c4dec1c              # double 1.846139
	.quad	0x3fe8f99a1fd1569f              # double 0.78046899999999997
	.quad	0x40000ba83f4eca68              # double 2.0056919999999998
	.quad	0x40070e28ed5f138c              # double 2.8819140000000001
	.quad	0x3fe021682f944242              # double 0.50407800000000003
	.quad	0x4021972085b18549              # double 8.7951700000000006
	.quad	0x401cf883ba3443d4              # double 7.2426899999999996
	.quad	0x401fc2135daad602              # double 7.939527
	.quad	0x4005e46173b85e81              # double 2.7365140000000001
	.quad	0x401df9b62c77574f              # double 7.4938589999999996
	.quad	0x3ff00d72799a1fd1              # double 1.0032829999999999
	.quad	0x40207992a737110e              # double 8.2374469999999995
	.quad	0x3ff841908e581cf8              # double 1.5160070000000001
	.quad	0x401c3b33daf8df7a              # double 7.0578149999999997
	.quad	0x4013112a0ec74320              # double 4.7667619999999999
	.quad	0x4013053868fd199c              # double 4.7550980000000003
	.quad	0x401dd29a5ebb773a              # double 7.455667
	.quad	0x4018043a2163fdd6              # double 6.0041279999999997
	.quad	0x4019449c6f36ef80              # double 6.3170029999999997
	.quad	0x40162454152b0a70              # double 5.5354770000000002
	.quad	0x401761682f944242              # double 5.8451240000000002
	.quad	0x401832a6b0d95140              # double 6.0494640000000004
	.quad	0x40209efb6dca07f6              # double 8.3105119999999992
	.quad	0x401d1efed634549b              # double 7.2802689999999997
	.quad	0x3ff61f79420b3d4b              # double 1.382684
	.quad	0x4016dee6fb4c3c19              # double 5.7176780000000003
	.quad	0x3fd788d2a1f8e3ac              # double 0.367726
	.quad	0x3ffe93bc0a06e9ff              # double 1.911068
	.quad	0x400fb21bc126a65d              # double 3.961967
	.quad	0x3faaa53fc0096feb              # double 0.052041999999999998
	.quad	0x40129dd2f1a9fbe7              # double 4.6541249999999996
	.quad	0x400235d0b73d188f              # double 2.2762769999999999
	.quad	0x3ff072bdc26dce3a              # double 1.0280130000000001
	.quad	0x4023c5350092ccf7              # double 9.8851700000000004
	.quad	0x4022d110e453d20f              # double 9.4083319999999996
	.quad	0x40208336bd2b6f1a              # double 8.2562770000000008
	.quad	0x4016e4c6e6d9be4d              # double 5.7234150000000001
	.quad	0x4013084ec636b096              # double 4.7581129999999998
	.quad	0x401ebf7f8ca8198f              # double 7.6870099999999998
	.quad	0x3fff616f86a09891              # double 1.9612879999999999
	.quad	0x400d2fb3311a543f              # double 3.648291
	.quad	0x400de646f1561911              # double 3.7374399999999999
	.quad	0x3febabb6672fba02              # double 0.86471100000000001
	.quad	0x401648db4890928a              # double 5.5711490000000001
	.quad	0x401d12e2fbe33acd              # double 7.2684439999999997
	.quad	0x4021d295c853c148              # double 8.9112989999999996
	.quad	0x40075cc857f3061c              # double 2.9203039999999998
	.quad	0x40198e54b48d3ae7              # double 6.3889950000000004
	.quad	0x401d0eb1c432ca58              # double 7.2643500000000003
	.quad	0x4014ba1ad6451b93              # double 5.181743
	.quad	0x4022f65b4245f5ae              # double 9.4811650000000007
	.quad	0x4022a83947496aad              # double 9.3285619999999998
	.quad	0x3ff74357a355043e              # double 1.4539409999999999
	.quad	0x3ffe97e45803cd14              # double 1.912083
	.quad	0x3ff5fdeb52c9d170              # double 1.374492
	.quad	0x401862f7b17ce52e              # double 6.0966480000000001
	.quad	0x3fe9ff36ac647779              # double 0.81240400000000002
	.quad	0x3fd1e6c4c5974e66              # double 0.27971000000000001
	.quad	0x3ffa27ad8e432442              # double 1.634687
	.quad	0x40168a222d5171e3              # double 5.6348960000000003
	.quad	0x4021488a697aeddd              # double 8.6416810000000002
	.quad	0x401176f86a098916              # double 4.3661820000000002
	.quad	0x40198aa64c2f837b              # double 6.3853999999999997
	.quad	0x3fe27cdcca70d1fa              # double 0.57774199999999998
	.quad	0x4007549b62c77575              # double 2.916312
	.quad	0x401b0f533f42352f              # double 6.7649660000000003
	.quad	0x3fb36fe2e6ea8544              # double 0.075925999999999993
	.quad	0x40069dfb9389b520              # double 2.82714
	.quad	0x402252294141e9af              # double 9.1604709999999994
	.quad	0x400a4c8ffb8b2639              # double 3.2873839999999999
	.quad	0x400f0d27807789a4              # double 3.8814229999999998
	.quad	0x402145434a01abd2              # double 8.6352790000000006
	.quad	0x40122cb790fb6567              # double 4.5436690000000004
	.quad	0x40216cc1871e6cd3              # double 8.7124140000000008
	.quad	0x4020c37f9d6f1130              # double 8.3818330000000003
	.quad	0x401fcf969e3c9689              # double 7.9527229999999997
	.quad	0x40158f7596851223              # double 5.3900969999999999
	.quad	0x4015fd2fa0d77b7c              # double 5.4972519999999996
	.quad	0x401d711b60ae9681              # double 7.3604560000000001
	.quad	0x3fc983c6c97d8cf4              # double 0.19933400000000001
	.quad	0x4022035d67ba237d              # double 9.0065720000000002
	.quad	0x40180d666a98244f              # double 6.0130860000000004
	.quad	0x4023defef7c243dd              # double 9.9355390000000003
	.quad	0x4014da2f8bdec5f4              # double 5.2130720000000004
	.quad	0x401c4255f3519bd4              # double 7.064781
	.quad	0x40072f294dd72368              # double 2.898028
	.quad	0x40232c1a048e043a              # double 9.5861359999999998
	.quad	0x4012ff8ad2567989              # double 4.7495529999999997
	.quad	0x40113ff04577d955              # double 4.3124399999999996
	.quad	0x4014a9a1fd1569f5              # double 5.1656570000000004
	.quad	0x4017e30f062d40ab              # double 5.9717370000000001
	.quad	0x4011cd9cf13cee9e              # double 4.4507940000000001
	.quad	0x4018af98b71b8aa0              # double 6.171481
	.quad	0x4011ae3b46fdeb53              # double 4.4201480000000002
	.quad	0x401a6737542a23c0              # double 6.600797
	.quad	0x3ff5548ba83f4eca              # double 1.3331409999999999
	.quad	0x401c73cea6c1a049              # double 7.1130930000000001
	.quad	0x4014bfc158fb43d9              # double 5.1872610000000003
	.quad	0x401f4dd8b60f1b26              # double 7.826022
	.quad	0x3ff3781f969e3c97              # double 1.2168270000000001
	.quad	0x3fee352220bc382a              # double 0.94398599999999999
	.quad	0x401d90e94ee392e2              # double 7.3915150000000001
	.quad	0x401c48f648c7192f              # double 7.0712520000000003
	.quad	0x3fe84a05dd8f92b0              # double 0.75903600000000004
	.quad	0x40099645a1cac083              # double 3.198375
	.quad	0x4022e7c3504c48ae              # double 9.4526620000000001
	.quad	0x3ff8aa5f84cad57c              # double 1.541595
	.quad	0x3fc1da48b6523704              # double 0.13947399999999999
	.quad	0x40217face67d77fb              # double 8.7493660000000002
	.quad	0x401bfa09cc319c5a              # double 6.9941779999999998
	.quad	0x4006ac07aaef2c73              # double 2.8339989999999999
	.quad	0x4000f41f212d7732              # double 2.1192000000000002
	.quad	0x401acaee631f8a09              # double 6.698175
	.quad	0x400c5c3504c48adf              # double 3.545023
	.quad	0x40227a4f8726d04e              # double 9.2388879999999993
	.quad	0x401ae8f9b13165d4              # double 6.7275150000000004
	.quad	0x4018e02bc72e275b              # double 6.2189170000000003
	.quad	0x401f2afcce1c5825              # double 7.7919799999999996
	.quad	0x40162939eadd590c              # double 5.54026
	.quad	0x3fe76c093d966384              # double 0.73193799999999998
	.quad	0x40162d66277c45cc              # double 5.5443350000000002
	.quad	0x3ff5faf31b152f3c              # double 1.373767
	.quad	0x4023e4100e6afcce              # double 9.9454349999999998
	.quad	0x3ff88545846e8f2a              # double 1.532537
	.quad	0x3fe9d7f51efb6dca              # double 0.807612
	.quad	0x401fe8f861a60d45              # double 7.9775099999999996
	.quad	0x4000500cd855970b              # double 2.0390869999999999
	.quad	0x4012f499d0203e64              # double 4.7388680000000001
	.quad	0x4021098d6909aed5              # double 8.5186569999999993
	.quad	0x3fe30dcdb37c99af              # double 0.59543500000000005
	.quad	0x40225a2ad3e920c0              # double 9.1761079999999992
	.quad	0x40203f55bccaf70a              # double 8.1237010000000005
	.quad	0x40212282a5614df9              # double 8.5674030000000005
	.quad	0x3f85faa8a82a5615              # double 0.010732
	.quad	0x400b8a31e7d9988d              # double 3.4424779999999999
	.quad	0x402008cf9e3864cb              # double 8.0172089999999994
	.quad	0x4023958383ad9f0a              # double 9.7920189999999998
	.quad	0x4000caeafab53d64              # double 2.099081
	.quad	0x3ff5d593e5fb71fc              # double 1.3646430000000001
	.quad	0x4014478d0cc35ce2              # double 5.0698740000000004
	.quad	0x4021e9522a6f3f53              # double 8.955705
	.quad	0x402111d3aa369fcf              # double 8.5348179999999996
	.quad	0x40102c5197a24895              # double 4.0432800000000002
	.quad	0x4012d367e414e7ef              # double 4.7064510000000004
	.quad	0x3ff9d18f3eccc469              # double 1.6136619999999999
	.quad	0x4012cef49cf56ead              # double 4.7021050000000004
	.quad	0x4020683a53b8e4b8              # double 8.2035699999999991
	.quad	0x401239c94f69ca9f              # double 4.556432
	.quad	0x401377839cd8127b              # double 4.8667129999999998
	.quad	0x40129fbacb428912              # double 4.6559860000000004
	.quad	0x3ff0dced0b30b5aa              # double 1.0539369999999999
	.quad	0x400f54024b33daf9              # double 3.9160200000000001
	.quad	0x40230a86b59146e5              # double 9.5205590000000004
	.quad	0x4019d8d1d8a54824              # double 6.4617380000000004
	.quad	0x400878090b417ca2              # double 3.058611
	.quad	0x3fe746ae3a3a8e71              # double 0.72737799999999997
	.quad	0x402092641b328b6e              # double 8.2859200000000008
	.quad	0x4021b337867f0aa2              # double 8.8500329999999998
	.quad	0x400e5996744b2b77              # double 3.7937439999999998
	.quad	0x3ff9c3201040bfe4              # double 1.6101380000000001
	.quad	0x401ea9335d249e45              # double 7.665235
	.quad	0x401eb0435efa615b              # double 7.6721320000000003
	.quad	0x400c624e59296702              # double 3.5480010000000002
	.quad	0x3ff7d260f5e41d4b              # double 1.4888619999999999
	.quad	0x3fe1cf09528f190d              # double 0.55652299999999999
	.quad	0x40143d68c692f6e8              # double 5.0599699999999999
	.quad	0x4021dab10ba62670              # double 8.9271320000000003
	.quad	0x4021263a3a8e7147              # double 8.5746629999999993
	.quad	0x400c9b9628cbd124              # double 3.5759699999999999
	.quad	0x40212fb2031ceaf2              # double 8.5931549999999994
	.quad	0x4007cfd86a8fc0d3              # double 2.9764870000000001
	.quad	0x40134cca70d1fa33              # double 4.8249909999999998
	.quad	0x401ab081c2e33eff              # double 6.6723699999999999
	.quad	0x401a8f3cb3e5753a              # double 6.6398799999999998
	.quad	0x3fff570e6f2e8c05              # double 1.9587540000000001
	.quad	0x401ac40fecdd0d8d              # double 6.6914670000000003
	.quad	0x4023e3d6a593a2e0              # double 9.9449970000000008
	.quad	0x4003aa70d1fa3337              # double 2.4582229999999998
	.quad	0x400e288e79aae6c9              # double 3.769803
	.quad	0x40146bf338716095              # double 5.1054199999999996
	.quad	0x40204049667b5f1c              # double 8.1255600000000001
	.quad	0x401334845132f87b              # double 4.8012860000000002
	.quad	0x40231e379b77c02b              # double 9.559018
	.quad	0x3fd7959e6256366d              # double 0.36850699999999997
	.quad	0x3ffbb387160956c1              # double 1.73133
	.quad	0x4019f3e3193f6c27              # double 6.4881710000000004
	.quad	0x4003e38759253544              # double 2.4860980000000001
	.quad	0x4016077ff151e753              # double 5.5073239999999997
	.quad	0x4016a1526d8b1dd6              # double 5.6575410000000002
	.quad	0x4023025fe974a340              # double 9.5046379999999999
	.quad	0x40140446f9b994e2              # double 5.0041770000000003
	.quad	0x3fe47c8f32378ab1              # double 0.64020500000000002
	.quad	0x40056d7cf5f4e443              # double 2.678461
	.quad	0x4009e0370cdc8755              # double 3.23448
	.quad	0x401925b89939218a              # double 6.2868370000000002
	.quad	0x4008db18dac258d6              # double 3.1069810000000002
	.quad	0x402235aa715831f0              # double 9.1048159999999996
	.quad	0x40235f533f42352f              # double 9.6861820000000005
	.quad	0x4023711b1d92b7fe              # double 9.7209099999999999
	.quad	0x4022c8c9fb6134ce              # double 9.3921659999999996
	.quad	0x4019036e71cda2b6              # double 6.2533510000000003
	.quad	0x40200afe1da7b0b4              # double 8.0214700000000007
	.quad	0x401ffd5dc4007571              # double 7.9974280000000002
	.quad	0x40120816f0068db9              # double 4.5079000000000002
	.quad	0x40203ec7000431be              # double 8.1226120000000002
	.quad	0x40233bd790752daa              # double 9.6168790000000008
	.quad	0x400756733ebbfd72              # double 2.9172120000000001
	.quad	0x40101c4545846e8f              # double 4.0276079999999999
	.quad	0x401527d49d7ba66a              # double 5.2888970000000004
	.quad	0x401142f01754b05b              # double 4.3153689999999996
	.quad	0x40215c7f13059642              # double 8.6806570000000001
	.quad	0x401d12f37fbefd00              # double 7.2685069999999996
	.quad	0x3ff1449cb252ce03              # double 1.079251
	.quad	0x40227da07b352a84              # double 9.2453649999999996
	.quad	0x401c3e1b4bb5e0f8              # double 7.060651
	.quad	0x401e6e0653005815              # double 7.6074460000000003
	.quad	0x4006cee49f51697f              # double 2.8510219999999999
	.quad	0x3ff012ec6bce8534              # double 1.0046200000000001
	.quad	0x402264046412cf10              # double 9.1953460000000007
	.quad	0x40141eb399f5dfec              # double 5.0299820000000004
	.quad	0x40116ad8a116659d              # double 4.3543419999999999
	.quad	0x4012486ec17ebaf1              # double 4.570735
	.quad	0x40239ebd09e12a52              # double 9.8100360000000002
	.quad	0x401d7b21c475e636              # double 7.3702459999999999
	.quad	0x4010421ff2e48e8a              # double 4.0645749999999996
	.quad	0x40216c10f94c8798              # double 8.7110669999999999
	.quad	0x3ff96b56fb8f57f7              # double 1.588706
	.quad	0x3ff20be835dedf1e              # double 1.127907
	.quad	0x4022b57ff9b56324              # double 9.3544920000000004
	.quad	0x400785ea24cc6823              # double 2.940388
	.quad	0x3ffccc426351def0              # double 1.799868
	.quad	0x40219d0763a19008              # double 8.8066969999999998
	.quad	0x4015bbf1a5ca2984              # double 5.4335389999999997
	.quad	0x4015baae297396d1              # double 5.4323050000000004
	.quad	0x40235386f47b677f              # double 9.6631389999999992
	.quad	0x3ffdb2e9ccb7d417              # double 1.8561799999999999
	.quad	0x401ea87f88765ba7              # double 7.664549
	.quad	0x401a97368ad68837              # double 6.6476689999999996
	.quad	0x401a20f51ac9afe2              # double 6.5321850000000001
	.quad	0x401f2185cee17a03              # double 7.782737
	.quad	0x4017cd16fc9bc771              # double 5.9502829999999998
	.quad	0x401991f03d145d85              # double 6.3925179999999999
	.quad	0x3fe105ff1d81f106              # double 0.53198199999999995
	.quad	0x401e6d948dc11e43              # double 7.6070120000000001
	.quad	0x401f13704790b84a              # double 7.7689830000000004
	.quad	0x40164e22a2c23748              # double 5.5763040000000004
	.quad	0x4011edc486ad2dcb              # double 4.4821949999999999
	.quad	0x40230cefcbd55608              # double 9.5252669999999994
	.quad	0x4003b59ccfaeff5c              # double 2.4636779999999998
	.quad	0x401523660e51d25b              # double 5.2845690000000003
	.quad	0x401f8c45cbbc2b95              # double 7.8869850000000001
	.quad	0x40199dbfceb78898              # double 6.4040520000000001
	.quad	0x4012595e17e34b94              # double 4.5872729999999997
	.quad	0x3ffe70292817763e              # double 1.9023829999999999
	.quad	0x4016140c4156e265              # double 5.5195780000000001
	.quad	0x401307eed45e9186              # double 4.7577470000000002
	.quad	0x40132eb52c9d16fd              # double 4.7956130000000003
	.quad	0x40231aa4fca42aed              # double 9.5520399999999998
	.quad	0x4013fa8b8f14db59              # double 4.9946729999999997
	.quad	0x40219e3cd9a52264              # double 8.8090580000000002
	.quad	0x401ab92ee84ad795              # double 6.6808430000000003
	.quad	0x400be520d130df9c              # double 3.4868790000000001
	.quad	0x401d163ed0f62739              # double 7.2717239999999999
	.quad	0x3ff1e113404ea4a9              # double 1.1174500000000001
	.quad	0x40215e69ad42c3ca              # double 8.6844000000000001
	.quad	0x40202fda61e0c5a8              # double 8.0934629999999999
	.quad	0x400c47cd898b2e9d              # double 3.5350600000000001
	.quad	0x3fe4fc0d2c386d2f              # double 0.65576800000000002
	.quad	0x4018ee7210be9425              # double 6.2328570000000001
	.quad	0x4018e8e4755ffe6d              # double 6.2274339999999997
	.quad	0x40209300de4c5111              # double 8.2871159999999993
	.quad	0x3fecd2bf5515054b              # double 0.90072600000000003
	.quad	0x40169aba7b9170d6              # double 5.6511019999999998
	.quad	0x40148f7446f9b995              # double 5.1400920000000001
	.quad	0x402146f544bb1af4              # double 8.6385900000000006
	.quad	0x401aada272862f5a              # double 6.6695650000000004
	.quad	0x4020deee73e681aa              # double 8.4354130000000005
	.quad	0x401c1762d83c6c98              # double 7.0228380000000001
	.quad	0x4019a435ac8a3726              # double 6.410361
	.quad	0x3ff3a9e4d5d80e49              # double 1.2289779999999999
	.quad	0x4023a0f062d40aaf              # double 9.8143340000000005
	.quad	0x4021e0a82a5614e0              # double 8.9387830000000008
	.quad	0x402388468448cf7d              # double 9.7661630000000005
	.quad	0x40235b302f72b453              # double 9.6781020000000008
	.quad	0x40230fd912556d1a              # double 9.5309530000000002
	.quad	0x3ff4b7c5692b3cc5              # double 1.2948660000000001
	.quad	0x3ff151a975afaf86              # double 1.0824370000000001
	.quad	0x4023a5faebc408d9              # double 9.8241800000000001
	.quad	0x401ab4af0bf1a5ca              # double 6.6764489999999999
	.quad	0x40225191361dc93f              # double 9.1593110000000006
	.quad	0x3ff6757928e0c9da              # double 1.40368
	.quad	0x4003664e48626f61              # double 2.4249540000000001
	.quad	0x400a89c4da9003ef              # double 3.3172700000000002
	.quad	0x3f9a3f4666ec9e23              # double 0.025631999999999999
	.quad	0x402129a32b12d341              # double 8.5813229999999994
	.quad	0x4020199d451fc4c1              # double 8.0500279999999993
	.quad	0x402381fd5885d313              # double 9.7538859999999996
	.quad	0x400ef870da5daf08              # double 3.8713090000000001
	.quad	0x401c7d66277c45cc              # double 7.1224600000000002
	.quad	0x40216d492ff4ba52              # double 8.7134490000000007
	.quad	0x401a34256bca5376              # double 6.5509240000000002
	.quad	0x400bc59ea57214f0              # double 3.4714939999999999
	.quad	0x401bd9ef0f16f438              # double 6.9628259999999997
	.quad	0x40215785729b280f              # double 8.6709399999999999
	.quad	0x4022219eb6390c91              # double 9.0656639999999999
	.quad	0x402328e820e62995              # double 9.5798959999999997
	.quad	0x40204ef47b677f6b              # double 8.1542089999999998
	.quad	0x4019eea8da7f3cf7              # double 6.483066
	.quad	0x401532bc2fc69729              # double 5.2995460000000003
	.quad	0x40228f06b37867f1              # double 9.2793480000000006
	.quad	0x40233f82d38476f3              # double 9.6240450000000006
	.quad	0x3ff6c55219a847b2              # double 1.4231739999999999
	.quad	0x400e3144cbe1eb42              # double 3.774057
	.quad	0x3ff24ef1348b2208              # double 1.1442730000000001
	.quad	0x4008f6c508b32ce9              # double 3.1204930000000002
	.quad	0x4010478140dd3fe2              # double 4.0698290000000004
	.quad	0x3ff3bcfb3311a544              # double 1.233638
	.quad	0x3fefd97b30f8c650              # double 0.99529800000000002
	.quad	0x3ff2b304039abf34              # double 1.1687050000000001
	.quad	0x401ef3305100a394              # double 7.7374890000000001
	.quad	0x402393d944aa53fc              # double 9.7887669999999999
	.quad	0x3fd8e68a0d349be9              # double 0.389071
	.quad	0x40221f07bfe7e1fc              # double 9.0606059999999999
	.quad	0x400297a355043e53              # double 2.3240419999999999
	.quad	0x4011e7243137b070              # double 4.4757239999999996
	.quad	0x4010bbcf0b6b6e0d              # double 4.1834069999999999
	.quad	0x401ab79463cfb331              # double 6.6792769999999999
	.quad	0x40203426351deefe              # double 8.1018539999999994
	.quad	0x401a2524399b2c41              # double 6.5362710000000002
	.quad	0x401eb50268900c52              # double 7.6767669999999999
	.quad	0x3ffb2c1094a2b9d4              # double 1.698258
	.quad	0x3fdbc0053e2d6239              # double 0.43359500000000001
	.quad	0x4020ecf95d4e8fb0              # double 8.4628399999999999
	.quad	0x4013c67d77fae361              # double 4.9438380000000004
	.quad	0x401826202539756d              # double 6.0372320000000004
	.quad	0x3ffa2de657b84dba              # double 1.636206
	.quad	0x40151798d8a979e1              # double 5.2730439999999996
	.quad	0x3feed2135daad602              # double 0.963144
	.quad	0x40002e2eb1c432ca              # double 2.0225499999999998
	.quad	0x401ad06573215fcc              # double 6.7035119999999999
	.quad	0x4011d61cbccf28c8              # double 4.4590940000000003
	.quad	0x400ebe6eeb702603              # double 3.8429850000000001
	.quad	0x401b5e0c9d9d3459              # double 6.8418450000000002
	.quad	0x401d239a38fbca10              # double 7.2847679999999997
	.quad	0x4001ec3dab5c39bd              # double 2.2403520000000001
	.quad	0x401f56da0168b5cc              # double 7.834816
	.quad	0x401a1bd48cb4aec9              # double 6.5271780000000001
	.quad	0x4001e3bddfc9ff93              # double 2.236202
	.quad	0x40220a01eeed8905              # double 9.0195460000000001
	.quad	0x4023bab7995ee137              # double 9.8646820000000001
	.quad	0x4022dc5996744b2b              # double 9.4303709999999991
	.quad	0x402154886162f167              # double 8.6651030000000002
	.quad	0x3fcc00eae18ac9f3              # double 0.218778
	.quad	0x3fdc9c6f36ef8056              # double 0.447048
	.quad	0x4007f7a2cecc814d              # double 2.9959159999999998
	.quad	0x4012130728e92d56              # double 4.5185820000000003
	.quad	0x400d0c47a17f4129              # double 3.6309960000000001
	.quad	0x400714573a797892              # double 2.8849320000000001
	.quad	0x400adcee17a02fb6              # double 3.3578760000000001
	.quad	0x3fe73302f72b4528              # double 0.72497699999999998
	.quad	0x3ff7832ca57a786c              # double 1.469525
	.quad	0x3ff209310129cbab              # double 1.1272439999999999
	.quad	0x4012cf1f9acffa7f              # double 4.7022690000000003
	.quad	0x3fe5fce746cb966c              # double 0.68712200000000001
	.quad	0x3ff04a116659d12d              # double 1.0180830000000001
	.quad	0x401bd65061416378              # double 6.9592910000000003
	.quad	0x401dea2403148777              # double 7.4786530000000004
	.quad	0x40227294ff0025c0              # double 9.2237930000000005
	.quad	0x4016b76c050bd87b              # double 5.6791229999999997
	.quad	0x40230e772d5e071c              # double 9.5282529999999994
	.quad	0x4009d601ffb480a6              # double 3.2294960000000001
	.quad	0x400e98ea7ce0fc2f              # double 3.8246660000000001
	.quad	0x4008986338b47c74              # double 3.074408
	.quad	0x40029b54195cc858              # double 2.325844
	.quad	0x4011025aab474107              # double 4.2522989999999998
	.quad	0x402353cc2938de6e              # double 9.6636670000000002
	.quad	0x4017a2a9930be0df              # double 5.9088500000000002
	.quad	0x40216b72e6a76966              # double 8.7098610000000001
	.quad	0x401e82c9081c2e34              # double 7.6277200000000001
	.quad	0x4002800f345069a5              # double 2.3125290000000001
	.quad	0x4011fd184c271fff              # double 4.4971629999999996
	.quad	0x401e51bfbdf090f7              # double 7.5798329999999998
	.quad	0x401f2e6e653868fd              # double 7.7953429999999999
	.quad	0x4018e705857afea4              # double 6.2256070000000001
	.quad	0x40239c215b9a5a8a              # double 9.8049420000000005
	.quad	0x402244197e564734              # double 9.1330069999999992
	.quad	0x4004a96ededaec4a              # double 2.5827309999999999
	.quad	0x402258d08919ef95              # double 9.1734659999999995
	.quad	0x4014864302b40f67              # double 5.1311150000000003
	.quad	0x3ff8903d9a95421c              # double 1.535215
	.quad	0x3fff49fe86833c60              # double 1.955565
	.quad	0x401d5a276b7ed41b              # double 7.3380409999999996
	.quad	0x402382a7589efd87              # double 9.7551830000000006
	.quad	0x40124282c6ef3d3a              # double 4.5649519999999999
	.quad	0x40139ffc115df655              # double 4.9062349999999997
	.quad	0x4018a82d7b634dad              # double 6.1642359999999998
	.quad	0x401d3ec9e236c15d              # double 7.3113169999999998
	.quad	0x3fd21950331e3a7e              # double 0.28279500000000002
	.quad	0x401d5ebc83a96d4c              # double 7.3425159999999998
	.quad	0x3fe3ef4be835dedf              # double 0.62296099999999999
	.quad	0x40115a69be09bb6b              # double 4.3382940000000003
	.quad	0x3ff594c87980f55e              # double 1.348824
	.quad	0x401f8cba30121683              # double 7.887429
	.quad	0x3fd2acd5b6805a2d              # double 0.29179899999999998
	.quad	0x4017a8969a0ad8a1              # double 5.9146369999999999
	.quad	0x40031fd36f7e3d1d              # double 2.3905400000000001
	.quad	0x4013e726d04e618d              # double 4.9757340000000001
	.quad	0x401a057eaa2a0a96              # double 6.5053660000000004
	.quad	0x401fe2e0e30446b7              # double 7.9715610000000003
	.quad	0x401499bc77143394              # double 5.1501330000000003
	.quad	0x401625dc8323358f              # double 5.5369739999999998
	.quad	0x401545536933a040              # double 5.3177009999999996
	.quad	0x402354ab81f969e4              # double 9.6653710000000003
	.quad	0x40106e3d5fdcdf6a              # double 4.1076560000000004
	.quad	0x3ff9885b18548a9c              # double 1.59579
	.quad	0x400f434a01abd1ab              # double 3.9078560000000002
	.quad	0x3fd1c864883fd502              # double 0.27785599999999999
	.quad	0x4012135e310dbf05              # double 4.5189139999999997
	.quad	0x4023e0d25edd0529              # double 9.9391049999999996
	.quad	0x40143484d76ab580              # double 5.0512879999999996
	.quad	0x402275a78f25a251              # double 9.2297940000000001
	.quad	0x3f9c77dd872f33ca              # double 0.027800999999999999
	.quad	0x3fca32b990afe60c              # double 0.20467299999999999
	.quad	0x400f131ec0b56755              # double 3.8843359999999998
	.quad	0x40076b3cc4ac6cdb              # double 2.927362
	.quad	0x401e8be2f7b17ce5              # double 7.6366079999999998
	.quad	0x402104e7cd035372              # double 8.5095810000000007
	.quad	0x4019370f7b9e0610              # double 6.3037700000000001
	.quad	0x40006389f83be660              # double 2.048603
	.quad	0x4002162f166e008f              # double 2.2608320000000002
	.quad	0x400621a5870da5db              # double 2.766429
	.quad	0x3fe042e9899bf594              # double 0.50816799999999995
	.quad	0x401249856a37ac3f              # double 4.5717980000000003
	.quad	0x400efc486ad2dcb1              # double 3.8731849999999999
	.quad	0x401225072085b185              # double 4.5361599999999997
	.quad	0x400f612b5e529bae              # double 3.9224459999999999
	.quad	0x40197923e5b8561d              # double 6.3683009999999998
	.quad	0x40194819d2391d58              # double 6.320411
	.quad	0x401f2b3c3e74afd5              # double 7.7922219999999997
	.quad	0x40110cd78c436fc1              # double 4.2625409999999997
	.quad	0x401631d041cc532a              # double 5.5486459999999997
	.quad	0x40122ce7cd035372              # double 4.5438530000000004
	.quad	0x4020bfca42aed139              # double 8.3745899999999995
	.quad	0x4005a8c2e770bd01              # double 2.7074029999999998
	.quad	0x3fe2a89118c197e5              # double 0.58307699999999996
	.quad	0x40215402d16b97ff              # double 8.6640840000000008
	.quad	0x4002947f993d5348              # double 2.3225090000000002
	.quad	0x400d5a2cecc814d7              # double 3.6690309999999999
	.quad	0x400e64755ffe6d59              # double 3.7990520000000001
	.quad	0x3ff32d2dcb1465e9              # double 1.1985300000000001
	.quad	0x3ffdd0abb44e50c6              # double 1.863445
	.quad	0x401e099806f26289              # double 7.5093690000000004
	.quad	0x40118560c7c0f451              # double 4.3802519999999996
	.quad	0x40198b4959e62563              # double 6.3860219999999996
	.quad	0x3fe3e366d7a56de3              # double 0.62150899999999998
	.quad	0x3ff56f33ca31e7da              # double 1.3396490000000001
	.quad	0x4002ca1059ea5721              # double 2.3486639999999999
	.quad	0x4013de19fc2a886a              # double 4.9668960000000002
	.quad	0x3fe0b2bfdb4cc250              # double 0.52181999999999995
	.quad	0x3ff15841aac53b08              # double 1.084047
	.quad	0x4022b682949a5658              # double 9.356465
	.quad	0x3fe50d77b7c7820a              # double 0.65789399999999998
	.quad	0x3fec99f1ae2da555              # double 0.89379200000000003
	.quad	0x401dd36501e2584f              # double 7.4564399999999997
	.quad	0x40194141e9af5ba3              # double 6.3137280000000002
	.quad	0x401cfb62c77574f7              # double 7.2454939999999999
	.quad	0x401924cd74927914              # double 6.2859400000000001
	.quad	0x4014265e89225311              # double 5.0374699999999999
	.quad	0x40106d9513f8db49              # double 4.1070140000000004
	.quad	0x402220a8d21bc127              # double 9.0637880000000006
	.quad	0x40176464dc22ab26              # double 5.8480410000000003
	.quad	0x4018507e9d94d0dd              # double 6.078608
	.quad	0x4008a31ceaf251c2              # double 3.0796450000000002
	.quad	0x4016b8969a0ad8a1              # double 5.6802619999999999
	.quad	0x401b717720c8cd64              # double 6.8608060000000002
	.quad	0x400f43e63e8dda49              # double 3.9081540000000001
	.quad	0x400661d96e9bbf0e              # double 2.7977780000000001
	.quad	0x401889c779a6b50b              # double 6.1345499999999999
	.quad	0x4008f3e81450efdd              # double 3.1190950000000002
	.quad	0x3feb74bc6a7ef9db              # double 0.85799999999999998
	.quad	0x3fd5afea3df6db94              # double 0.338862
	.quad	0x3ff4beb9e492bc30              # double 1.296564
	.quad	0x401315b078d92fb2              # double 4.7711810000000003
	.quad	0x40217e04189374bc              # double 8.7461249999999992
	.quad	0x40196e503fb37436              # double 6.3577279999999998
	.quad	0x3ffde72ead9274e2              # double 1.868941
	.quad	0x4019ac00da1a9329              # double 6.4179719999999998
	.quad	0x4003b7939a7c17a9              # double 2.4646370000000002
	.quad	0x4017c7064ece9a2c              # double 5.9443599999999996
	.quad	0x4019ddf43c7d5ed0              # double 6.4667519999999996
	.quad	0x3ff96a3486f049aa              # double 1.5884290000000001
	.quad	0x3fc854ef459d9903              # double 0.19009200000000001
	.quad	0x3fea63ed0f627393              # double 0.82469800000000004
	.quad	0x3ff79ec2ce464990              # double 1.4762599999999999
	.quad	0x4019ebd05af6c69b              # double 6.4802869999999997
	.quad	0x3fe73f91e646f156              # double 0.72650999999999999
	.quad	0x401569e6256366d8              # double 5.3534170000000003
	.quad	0x3fdd0c996b7670a0              # double 0.45389400000000002
	.quad	0x401e07bc3c5bd0e1              # double 7.5075539999999998
	.quad	0x3fdc1d606317268d              # double 0.43929299999999999
	.quad	0x4011b15f45e0b4e1              # double 4.4232149999999999
	.quad	0x401ecd4a1ad6451c              # double 7.7004780000000004
	.quad	0x401bc1cef240fa9c              # double 6.9392659999999999
	.quad	0x401a394c447c30d3              # double 6.555955
	.quad	0x4017a924af0bf1a6              # double 5.9151790000000002
	.quad	0x400004e831ad2136              # double 2.0023960000000001
	.quad	0x40042cea28fe260b              # double 2.5219309999999999
	.quad	0x401a48ebcc6c54bd              # double 6.5712120000000001
	.quad	0x40146d834091c087              # double 5.1069459999999998
	.quad	0x4007e253111f0c35              # double 2.9855100000000001
	.quad	0x4023aa60f5e41d4b              # double 9.8327709999999992
	.quad	0x4010e4a0e410b631              # double 4.2232700000000003
	.quad	0x40184ba83f4eca68              # double 6.0738839999999996
	.quad	0x4017ffe47991bc56              # double 5.9998950000000004
	.quad	0x3fe04d834091c087              # double 0.50946199999999997
	.quad	0x402167c5cdd50a89              # double 8.7026810000000001
	.quad	0x4019f1a437824d4d              # double 6.4859780000000002
	.quad	0x401fb8ccdd93c46e              # double 7.9304690000000004
	.quad	0x400c0c5974e65bea              # double 3.50603
	.quad	0x401197f993d5347a              # double 4.3984129999999997
	.quad	0x401f6b827fa1a0cf              # double 7.8549899999999999
	.quad	0x401f820afa2f05a7              # double 7.8769949999999999
	.quad	0x4007dd2391d57ffa              # double 2.9829780000000001
	.quad	0x3fd121144cbe1eb4              # double 0.26764399999999999
	.quad	0x40164e21d96e9bbf              # double 5.576301
	.quad	0x400b5685985ad539              # double 3.4172470000000001
	.quad	0x3fb5dc6195464dc2              # double 0.085393999999999997
	.quad	0x401052e44b6e935c              # double 4.0809490000000004
	.quad	0x40083acffa7eb6bf              # double 3.0287169999999999
	.quad	0x401943a2df9378ee              # double 6.3160509999999999
	.quad	0x4016834a87e38eb0              # double 5.6282139999999998
	.quad	0x40163d96e9bbf0dc              # double 5.5601459999999996
	.quad	0x400e87160956c0d7              # double 3.81596
	.quad	0x400b9758e219652c              # double 3.4489000000000001
	.quad	0x40219e0d0247021d              # double 8.8086929999999999
	.quad	0x401ef41a6937d1fe              # double 7.7383819999999996
	.quad	0x3fdcf0e4da09cc32              # double 0.45220300000000002
	.quad	0x401f2578a2a90cd4              # double 7.7865929999999999
	.quad	0x400306b37867f0aa              # double 2.3782719999999999
	.quad	0x4008203ab862b27d              # double 3.0157370000000001
	.quad	0x4020bec7a7c9de05              # double 8.372617
	.quad	0x3fb25f633ce63a5c              # double 0.071767999999999998
	.quad	0x3fe53cd78c436fc1              # double 0.66367699999999996
	.quad	0x401e5c3f811f4f51              # double 7.5900860000000003
	.quad	0x4018551dabe2717a              # double 6.0831210000000002
	.quad	0x3fe03c87db2b3461              # double 0.50738899999999998
	.quad	0x400817689ca18bd6              # double 3.0114299999999998
	.quad	0x4004daecd07852f8              # double 2.606897
	.quad	0x40132903a7546d40              # double 4.7900530000000003
	.quad	0x3fe5cf0520d130e0              # double 0.68152100000000004
	.quad	0x4023935e0f7fcfc4              # double 9.787827
	.quad	0x4023656473471f79              # double 9.6980319999999995
	.quad	0x4023e7c610f0e90c              # double 9.9526830000000003
	.quad	0x3ff9af9873ffac1d              # double 1.60537
	.quad	0x3fe64d67fd3f5b60              # double 0.69694900000000004
	.quad	0x401020e90bc7b45f              # double 4.0321389999999999
	.quad	0x3fe25c5718eb8950              # double 0.57377199999999995
	.quad	0x4002def9db22d0e5              # double 2.3588749999999998
	.quad	0x4022e5bff04577d9              # double 9.4487299999999994
	.quad	0x401cfad6cb535009              # double 7.2449599999999998
	.quad	0x4019666516db0dd8              # double 6.3499949999999998
	.quad	0x400f9b499d0203e6              # double 3.9508239999999999
	.quad	0x4020fdac258d5843              # double 8.4954540000000005
	.quad	0x40208fa8b4bf8fcd              # double 8.2805839999999993
	.quad	0x401046a76965f527              # double 4.0689979999999997
	.quad	0x402327d2849cb253              # double 9.5777780000000003
	.quad	0x4004a4473cd57364              # double 2.5802139999999998
	.quad	0x40201dcf893faf42              # double 8.0582239999999992
	.quad	0x4022c77d30ad46f6              # double 9.3896270000000008
	.quad	0x4020fdc9a34ca0c3              # double 8.4956790000000009
	.quad	0x3fe5b068123810e9              # double 0.67778400000000005
	.quad	0x3fd3c78a6dacabc5              # double 0.309054
	.quad	0x402182836eb4e981              # double 8.7549089999999996
	.quad	0x400569a027525461              # double 2.6765750000000001
	.quad	0x401f116df3f96180              # double 7.7670209999999997
	.quad	0x3f8fbefd00713f07              # double 0.015500999999999999
	.quad	0x3feb715a4acf312b              # double 0.85758699999999999
	.quad	0x400c8a71de69ad43              # double 3.5676000000000001
	.quad	0x400c185dfa871a3b              # double 3.511898
	.quad	0x400e68626f60e0eb              # double 3.8009689999999998
	.quad	0x4010aa554b8bef8d              # double 4.1663410000000001
	.quad	0x40006702a3486f05              # double 2.0502980000000002
	.quad	0x40198fbc5de9c023              # double 6.3903670000000004
	.quad	0x40110c37a3db3bfb              # double 4.2619309999999997
	.quad	0x40229b324851a869              # double 9.3031179999999996
	.quad	0x40170d1351159c49              # double 5.7627689999999996
	.quad	0x400b6437824d4cba              # double 3.423934
	.quad	0x401ed70cdc8754f3              # double 7.7100099999999995
	.quad	0x401fb9f40a2877ee              # double 7.9315949999999997
	.quad	0x3ff627caea747d80              # double 1.3847149999999999
	.quad	0x40000eb56fb8f57f              # double 2.0071819999999998
	.quad	0x401d8fdef8487b9a              # double 7.3904990000000002
	.quad	0x401d3d07852f7f4a              # double 7.3095990000000004
	.quad	0x401cf73a797891e2              # double 7.2414339999999999
	.quad	0x4017224e9c454584              # double 5.7835029999999996
	.quad	0x401cdef459d9902a              # double 7.2177290000000003
	.quad	0x4012246aa087ca64              # double 4.5355629999999998
	.quad	0x40230a365cb35f3d              # double 9.5199459999999991
	.quad	0x4003fc0b13597918              # double 2.498068
	.quad	0x4003c46173b85e81              # double 2.4708890000000001
	.quad	0x4008a807bbb62414              # double 3.0820460000000001
	.quad	0x4021f3ae89eba6ad              # double 8.9759410000000006
	.quad	0x402308fa9c12f09e              # double 9.5175370000000008
	.quad	0x401c29c0a8d21bc1              # double 7.0407739999999999
	.quad	0x4023dd568e820e63              # double 9.9323010000000007
	.quad	0x3fffd9a73b42cc2d              # double 1.9906379999999999
	.quad	0x401456da0168b5cc              # double 5.084816
	.quad	0x402085d7cb2d905c              # double 8.2614119999999999
	.quad	0x400d5215fcc1871e              # double 3.6650809999999998
	.quad	0x401cfccff21b3aef              # double 7.2468870000000001
	.quad	0x3fea6d1e108c3f3e              # double 0.82582
	.quad	0x40127b92c061847f              # double 4.6206769999999997
	.quad	0x401ab30c23fab10c              # double 6.6748510000000003
	.quad	0x401864666ec9e237              # double 6.0980470000000002
	.quad	0x400dc50d6b228dca              # double 3.7212170000000002
	.quad	0x3fe55143bf727137              # double 0.66617000000000004
	.quad	0x3fca271fff79c843              # double 0.204319
	.quad	0x4014999524bfd2e9              # double 5.1499829999999998
	.quad	0x40202b3a2595bbbf              # double 8.0844280000000008
	.quad	0x400d4fdb8fde2ef5              # double 3.6639930000000001
	.quad	0x40231e3369b9d7fe              # double 9.5589860000000009
	.quad	0x401d112cadddf43c              # double 7.2667719999999996
	.quad	0x40074589acbc8c0d              # double 2.908954
	.quad	0x401b1ebc83a96d4c              # double 6.7800159999999998
	.quad	0x400636ac647778dd              # double 2.7766959999999998
	.quad	0x4000aba301216830              # double 2.0838070000000002
	.quad	0x4023cc37a3db3bfb              # double 9.8988619999999993
	.quad	0x401ba17a02fb5d03              # double 6.9076919999999999
	.quad	0x402252ab68cef673              # double 9.1614640000000005
	.quad	0x3f98e2e2b8c75c4b              # double 0.024303000000000002
	.quad	0x3fc2074ea8da7f3d              # double 0.140848
	.quad	0x40063f9bdc69f8c2              # double 2.7810589999999999
	.quad	0x4021e9cf9a06a6e3              # double 8.9566619999999997
	.quad	0x4022803f4eca686e              # double 9.2504829999999991
	.quad	0x3ff2b395c4220360              # double 1.168844
	.quad	0x401854ccab3edd8b              # double 6.0828119999999997
	.quad	0x40147fce3150dae4              # double 5.1248100000000001
	.quad	0x3fc2de1198aeb80f              # double 0.14740200000000001
	.quad	0x4017338e29f9ce8e              # double 5.8003470000000004
	.quad	0x40171d2c7b890d5a              # double 5.7784899999999997
	.quad	0x402212d905c03361              # double 9.0368119999999994
	.quad	0x400170ea9e6eeb70              # double 2.1801349999999999
	.quad	0x4020bccd0fe8ab50              # double 8.3687520000000006
	.quad	0x4019b72de43ed95a              # double 6.4288860000000003
	.quad	0x3fd974afd5454153              # double 0.39774700000000002
	.quad	0x402086ffe2a3cea7              # double 8.2636710000000004
	.quad	0x40236152f3c2dadc              # double 9.6900860000000008
	.quad	0x400e6c3547e06962              # double 3.8028360000000001
	.quad	0x4007275ee99a62ed              # double 2.8942239999999999
	.quad	0x3ffb961b2a27f1b7              # double 1.7241470000000001
	.quad	0x40200f6c2699c7bd              # double 8.0301220000000004
	.quad	0x4014ece1c58255b0              # double 5.2313299999999998
	.quad	0x40185795f676ea42              # double 6.0855329999999999
	.quad	0x401d2dde37585be2              # double 7.2947930000000003
	.quad	0x3ff8c9dadfb506dd              # double 1.5492809999999999
	.quad	0x402284f52b90a783              # double 9.2596830000000008
	.quad	0x4023b8ff10ecb74e              # double 9.8613210000000002
	.quad	0x4014de275ab7dc7b              # double 5.2169470000000002
	.quad	0x4023734a2339c0ec              # double 9.7251750000000001
	.quad	0x3fb994e1a3f4666f              # double 0.099928000000000003
	.quad	0x4014dd79d0a67621              # double 5.2162850000000001
	.quad	0x401133d96638433d              # double 4.3006339999999996
	.quad	0x40225daad601ffb5              # double 9.1829440000000009
	.quad	0x3fd439cd8127b2cc              # double 0.31602799999999998
	.quad	0x4001427f1b691212              # double 2.1574689999999999
	.quad	0x3fd4c925785f8d2e              # double 0.32477699999999998
	.quad	0x4012b8d4bad7d7c3              # double 4.6804990000000002
	.quad	0x4015968be2f7b17d              # double 5.3970180000000001
	.quad	0x4019510ba6266fd6              # double 6.3291459999999997
	.quad	0x4001169e3c968944              # double 2.1360440000000001
	.quad	0x40206148ba83f4ed              # double 8.1900080000000006
	.quad	0x40213e30ec311623              # double 8.6214670000000009
	.quad	0x4022d3749adc8fb8              # double 9.4129989999999992
	.quad	0x4012c012dfd694cd              # double 4.6875720000000003
	.quad	0x40127f9b56323bbc              # double 4.6246159999999996
	.quad	0x400b386d2ed783e0              # double 3.402552
	.quad	0x4011ff1a1986b9c3              # double 4.499123
	.quad	0x4019ae9c886162f1              # double 6.4205189999999996
	.quad	0x4020f5f676ea4229              # double 8.4803960000000007
	.quad	0x401d028ed5f138bd              # double 7.2524980000000001
	.quad	0x3fdcb86f47b677f7              # double 0.44875700000000002
	.quad	0x401fb3dd54da4ce8              # double 7.9256489999999999
	.quad	0x4022c2df0d413123              # double 9.3806080000000005
	.quad	0x400056c61522a6f4              # double 2.04237
	.quad	0x40208989df1172ef              # double 8.2686299999999999
	.quad	0x40161db37c99ae92              # double 5.5290049999999997
	.quad	0x401685e4a3832767              # double 5.6307549999999997
	.quad	0x3fe404ab606b7aa2              # double 0.62556999999999996
	.quad	0x3ff57bc903ea704c              # double 1.3427210000000001
	.quad	0x4023cac083126e98              # double 9.8960000000000007
	.quad	0x400b1368ad688377              # double 3.384477
	.quad	0x40045aa2e3c536d6              # double 2.5442559999999999
	.quad	0x401b67852f7f498c              # double 6.8510939999999998
	.quad	0x4002abd4cfd08d4c              # double 2.3339020000000001
	.quad	0x4022efd0aed99cbf              # double 9.4683890000000001
	.quad	0x4020a08051c9f72f              # double 8.3134789999999992
	.quad	0x40131b02d59d55e7              # double 4.7763780000000002
	.quad	0x401318e64b231401              # double 4.7743159999999998
	.quad	0x401e885d31337eb3              # double 7.6331680000000003
	.quad	0x40232e26916440f2              # double 9.5901379999999996
	.quad	0x3ffe7967caea747e              # double 1.9046400000000001
	.quad	0x40060d362e903644              # double 2.7564510000000002
	.quad	0x401a6fff36ac6477              # double 6.6093719999999996
	.quad	0x4020d8997c3d6840              # double 8.4230459999999994
	.quad	0x401ed1a3f4666eca              # double 7.7047270000000001
	.quad	0x3ff4c61e92923e5c              # double 1.2983690000000001
	.quad	0x4021ba836eb4e981              # double 8.8642839999999996
	.quad	0x401d32003ab862b2              # double 7.2988289999999996
	.quad	0x401edd91ab8e8ea4              # double 7.7163760000000003
	.quad	0x40218ce0114d2f5e              # double 8.7751470000000005
	.quad	0x4014557ff9b56324              # double 5.0834960000000002
	.quad	0x400a5c2656abde40              # double 3.2949950000000001
	.quad	0x4021a15379fa97e1              # double 8.8150899999999996
	.quad	0x4023abb6ed677708              # double 9.8353800000000006
	.quad	0x3fecda0dfdef8488              # double 0.90161800000000003
	.quad	0x4012edbe7f2c300a              # double 4.7321720000000003
	.quad	0x401a3c0229a5ebb7              # double 6.5586019999999996
	.quad	0x400a8a0b1bbcf4e8              # double 3.3174039999999998
	.quad	0x400e2d38cda6e760              # double 3.772081
	.quad	0x401305350092ccf7              # double 4.7550850000000002
	.quad	0x400cf92189bd8384              # double 3.6216460000000001
	.quad	0x402244adbc664d3c              # double 9.134138
	.quad	0x4016b812be48a58b              # double 5.6797589999999998
	.quad	0x4015c753e707e176              # double 5.4446560000000002
	.quad	0x4018023d4f15e7c9              # double 6.0021870000000002
	.quad	0x3fc7e9531550ca1d              # double 0.186808
	.quad	0x4009232441fea811              # double 3.1421589999999999
	.quad	0x4023fadf71eafee7              # double 9.989986
	.quad	0x3ff74cfe154434e3              # double 1.456297
	.quad	0x40213b11c6d1e109              # double 8.6153700000000004
	.quad	0x3fde4091c087442c              # double 0.47269099999999997
	.quad	0x3fee3d816aceaaf3              # double 0.94500799999999996
	.quad	0x400862f6a50d6b23              # double 3.0483220000000002
	.quad	0x4020e36672fba01f              # double 8.4441410000000001
	.quad	0x3ff9f15d701d9f4d              # double 1.621427
	.quad	0x4006d9991361dc94              # double 2.856249
	.quad	0x3fe5490a350d2807              # double 0.66516600000000004
	.quad	0x4020e0858ff75968              # double 8.4385189999999994
	.quad	0x4015d18bd66277c4              # double 5.4546349999999997
	.quad	0x4022a9d495182a99              # double 9.3316999999999997
	.quad	0x400345e02ea960b7              # double 2.409119
	.quad	0x401ef06573215fcc              # double 7.7347619999999999
	.quad	0x401f2af533f42353              # double 7.791951
	.quad	0x400c4c34c1a8ac5c              # double 3.53721
	.quad	0x3ffd774aba387592              # double 1.8416239999999999
	.quad	0x40238df676ea4229              # double 9.7772710000000007
	.quad	0x3ff061cac083126f              # double 1.0238750000000001
	.quad	0x4013d70eb24a6a87              # double 4.9600169999999997
	.quad	0x400b46fd651b0ccc              # double 3.4096630000000001
	.quad	0x40237dc7cd898b2f              # double 9.7456650000000006
	.quad	0x401e05ba6efc371e              # double 7.5055940000000003
	.quad	0x4023debd9018e758              # double 9.9350400000000007
	.quad	0x4022320f4d7add16              # double 9.0977730000000001
	.quad	0x400da298cc144029              # double 3.704393
	.quad	0x401992fd75e2046c              # double 6.3935449999999996
	.quad	0x4000c5668c261390              # double 2.096387
	.quad	0x3ff2ccf398e97072              # double 1.1750370000000001
	.quad	0x4020177d955714ba              # double 8.0458800000000004
	.quad	0x401849270b06c43f              # double 6.0714379999999997
	.quad	0x4010dc0a4a05dd90              # double 4.2148830000000004
	.quad	0x401ea373affb04ee              # double 7.6596209999999996
	.quad	0x3fee86705c896dd2              # double 0.95391099999999995
	.quad	0x4008287ebf22c01e              # double 3.0197729999999998
	.quad	0x3fe5f23465625a68              # double 0.68581599999999998
	.quad	0x40227eca686e7e63              # double 9.2476380000000002
	.quad	0x401dabd017dae819              # double 7.4177860000000004
	.quad	0x40217d031055b899              # double 8.7441639999999996
	.quad	0x400a4e325d4a5df2              # double 3.2881819999999999
	.quad	0x402187befd00713f              # double 8.7651289999999999
	.quad	0x4016c647baa9b49a              # double 5.6936330000000002
	.quad	0x40234362a5e785b6              # double 9.6316120000000005
	.quad	0x40027c4d22c881e4              # double 2.3106939999999998
	.quad	0x400884b3c3e74afd              # double 3.0647959999999999
	.quad	0x402291008205ff1e              # double 9.2832070000000009
	.quad	0x3fdcf601797cc3a0              # double 0.452515
	.quad	0x4015439abf338716              # double 5.31602
	.quad	0x401acabb8800eae2              # double 6.6979810000000004
	.quad	0x4021c3e33acd5b68              # double 8.882593
	.quad	0x402150a6117720c9              # double 8.6575170000000004
	.quad	0x4006b3929ed3953e              # double 2.837682
	.quad	0x400dd405f6ba0621              # double 3.7285270000000001
	.quad	0x401d0fb00bcbe61d              # double 7.26532
	.quad	0x40121c3547e06962              # double 4.5275470000000002
	.quad	0x40157aa79bbadc0a              # double 5.3697800000000004
	.quad	0x401921198aeb80ed              # double 6.282324
	.quad	0x3fd6387160956c0d              # double 0.34719499999999998
	.quad	0x3fea021d10b1feeb              # double 0.81275799999999998
	.quad	0x3ff07419e30014f9              # double 1.0283450000000001
	.quad	0x4005f59bc33f8551              # double 2.744926
	.quad	0x400ca548a9bcfd4c              # double 3.580705
	.quad	0x401b0a582dbe7f2c              # double 6.7601019999999998
	.quad	0x400f2923e5b8561d              # double 3.8950879999999999
	.quad	0x3ff9a0b2c83ec893              # double 1.6017330000000001
	.quad	0x40159ebd9018e758              # double 5.4050200000000004
	.quad	0x400cc205ff1d81f1              # double 3.594738
	.quad	0x3ff262046c764ae0              # double 1.14893
	.quad	0x3fe6aacd9e83e426              # double 0.70835000000000004
	.quad	0x401793d96638433d              # double 5.8943839999999996
	.quad	0x40215ee7c49fd7a1              # double 8.6853619999999996
	.quad	0x4014c3f63c31df76              # double 5.1913689999999999
	.quad	0x400e1cd898b2e9cd              # double 3.7640850000000001
	.quad	0x4021fb313be22e5e              # double 8.9906100000000002
	.quad	0x4021e5f86e3b46fe              # double 8.9491610000000001
	.quad	0x3fd658a32f44912a              # double 0.34916000000000003
	.quad	0x40200a747d805e5f              # double 8.0204199999999997
	.quad	0x3fc23211cb039ef1              # double 0.142153
	.quad	0x4007ce90364388ec              # double 2.9758610000000001
	.quad	0x4002843e5321e604              # double 2.3145720000000001
	.quad	0x4014d7bcc2938de7              # double 5.2106810000000001
	.quad	0x3ff8dc0010c6f7a1              # double 1.5537110000000001
	.quad	0x40035ee136e71cda              # double 2.4213279999999999
	.quad	0x401e8bef8ceb356e              # double 7.6366560000000003
	.quad	0x40218b213e3e2930              # double 8.7717379999999991
	.quad	0x401f689656eefa1e              # double 7.8521359999999998
	.quad	0x3ffbd5182a9930be              # double 1.739525
	.quad	0x3ffc507a6bd6e8b0              # double 1.7696480000000001
	.quad	0x400b00f3cb3e5754              # double 3.3754650000000002
	.quad	0x401783996fa82e88              # double 5.8785150000000002
	.quad	0x40223ec5d206c871              # double 9.1226029999999998
	.quad	0x4001a679463cfb33              # double 2.206286
	.quad	0x401d53925bb7b6bb              # double 7.3316129999999999
	.quad	0x3fd1dc5d63886595              # double 0.27907500000000002
	.quad	0x401ac939a7c17a89              # double 6.6965089999999998
	.quad	0x3ff7d080b673c4f4              # double 1.4884040000000001
	.quad	0x4020643a860dcb9b              # double 8.1957590000000007
	.quad	0x3ff58623d0bfa094              # double 1.3452489999999999
	.quad	0x4008785058dde7a7              # double 3.0587469999999999
	.quad	0x3ff85da6a4441787              # double 1.522864
	.quad	0x4011cdf3300de4c5              # double 4.4511229999999999
	.quad	0x401c50ba1f4b1ee2              # double 7.0788349999999998
	.quad	0x4021fc61b6d43d04              # double 8.9929330000000007
	.quad	0x3ff18302b40f66a5              # double 1.0944849999999999
	.quad	0x400c6ea39c51dabe              # double 3.5540229999999999
	.quad	0x3fe1cbec679cc74c              # double 0.55614300000000005
	.quad	0x40202b1e18efbb0e              # double 8.0842139999999993
	.quad	0x401c9a20578e5c4f              # double 7.1505140000000003
	.quad	0x3ff669a8049667b6              # double 1.400795
	.quad	0x400fc7daa4fca42b              # double 3.972585
	.quad	0x4013e863beec397a              # double 4.9769430000000003
	.quad	0x4000401a36e2eb1c              # double 2.0312999999999999
	.quad	0x3fe31f1cfbb94962              # double 0.59754799999999997
	.quad	0x4023dc0ebedfa440              # double 9.9298000000000001
	.quad	0x400e1c2f405f6ba0              # double 3.7637619999999998
	.quad	0x40079a4acf312b1b              # double 2.9503379999999999
	.quad	0x40203b4f61672325              # double 8.1158400000000004
	.quad	0x4007bbff04577d95              # double 2.9667949999999998
	.quad	0x401faec28b2a6b0e              # double 7.9206640000000004
	.quad	0x401b00dae3e6c4c6              # double 6.7508350000000004
	.quad	0x3fd7555c52e72da1              # double 0.36458499999999999
	.quad	0x3ff7b7c1376d5497              # double 1.482362
	.quad	0x3feb55ae1cde5d18              # double 0.854209
	.quad	0x4016af944241c3f0              # double 5.6714640000000003
	.quad	0x4023c6492bc2fc69              # double 9.8872769999999992
	.quad	0x402289bbadc0980b              # double 9.2690099999999997
	.quad	0x401a83aeab7995ee              # double 6.6285959999999999
	.quad	0x40119912556d19df              # double 4.3994840000000002
	.quad	0x4022f09fa54c5543              # double 9.4699679999999997
	.quad	0x4011377c02afdda9              # double 4.3041840000000002
	.quad	0x4004d9c27e953155              # double 2.606328
	.quad	0x401ae5321e603d57              # double 6.7238239999999996
	.quad	0x400ea6dbd72bcb60              # double 3.831474
	.quad	0x4023b2786c22680a              # double 9.8485750000000003
	.quad	0x401b321e603d5779              # double 6.7989439999999997
	.quad	0x401927ee9142b303              # double 6.288996
	.quad	0x4016c54eb13dfb0d              # double 5.6926829999999997
	.quad	0x4023c25d6bebe165              # double 9.8796189999999999
	.quad	0x4014668837718655              # double 5.1001289999999999
	.quad	0x401fbd15ad106ee3              # double 7.9346529999999999
	.quad	0x40208d7eed45e918              # double 8.2763589999999994
	.quad	0x40170d4fdf3b645a              # double 5.7629999999999999
	.quad	0x4021d0474d9c6b05              # double 8.9067939999999997
	.quad	0x40126f95d4e8fb01              # double 4.6089700000000002
	.quad	0x3ff61f6cacd184c2              # double 1.3826719999999999
	.quad	0x400dbde8b3b32053              # double 3.7177289999999998
	.quad	0x401cadda059a73b4              # double 7.1697769999999998
	.quad	0x40107cd530489d28              # double 4.1219070000000002
	.quad	0x40144d5f138bcdff              # double 5.075558
	.quad	0x4019a4ca0c282c6f              # double 6.410927
	.quad	0x3fdb0c6b484d76ab              # double 0.42263299999999998
	.quad	0x40220fe38eb0318c              # double 9.0310330000000007
	.quad	0x400671ab8e8ea39c              # double 2.8055029999999999
	.quad	0x3fc05100a393ee5f              # double 0.127472
	.quad	0x401958ca8198f1d4              # double 6.3367100000000001
	.quad	0x400ff9ec7000431c              # double 3.9970330000000001
	.quad	0x3ff076ab5807fed2              # double 1.028972
	.quad	0x400751960fa15db3              # double 2.9148369999999999
	.quad	0x4002d27cbf6e3f79              # double 2.3527770000000001
	.quad	0x4021cee503fb3743              # double 8.9040909999999993
	.quad	0x4022b9a0ad8a1166              # double 9.3625539999999994
	.quad	0x4004aa1e81cb46bb              # double 2.5830660000000001
	.quad	0x401efff151e75361              # double 7.7499440000000001
	.quad	0x40151a62ed352221              # double 5.2757680000000002
	.quad	0x40170e54b48d3ae7              # double 5.7639950000000004
	.quad	0x401c977ee4e26d48              # double 7.147945
	.quad	0x4012554823854046              # double 4.5832829999999998
	.quad	0x4021b17a02fb5d03              # double 8.8466339999999999
	.quad	0x4021ab9713ad5bee              # double 8.8351369999999996
	.quad	0x400198561d4306e6              # double 2.1993830000000001
	.quad	0x400ca1deacc92147              # double 3.5790380000000002
	.quad	0x400ae03ff69014b6              # double 3.3594970000000002
	.quad	0x401d5b3b320535ca              # double 7.3390930000000001
	.quad	0x3fff09d27c393682              # double 1.9398979999999999
	.quad	0x401818b652370479              # double 6.024133
	.quad	0x40174abf76a2f48c              # double 5.8229959999999998
	.quad	0x3fb8b1bbcf4e874d              # double 0.096462000000000006
	.quad	0x401563ee5eedcc21              # double 5.3475890000000001
	.quad	0x4007c6ce358298cc              # double 2.972073
	.quad	0x40211a224edf6124              # double 8.5510429999999999
	.quad	0x40026ab713272431              # double 2.3021069999999999
	.quad	0x4000b06f69446738              # double 2.0861499999999999
	.quad	0x3ff9a0be51090710              # double 1.6017440000000001
	.quad	0x401e8f6a93f290ac              # double 7.6400550000000003
	.quad	0x4022a78c868b9fdc              # double 9.3272440000000003
	.quad	0x4022975d13d74d59              # double 9.2956319999999995
	.quad	0x402294b252ce032e              # double 9.2904230000000005
	.quad	0x401008b2e9ccb7d4              # double 4.0084949999999999
	.quad	0x4005d5b35b0bbf51              # double 2.729346
	.quad	0x3fedd95bbbe878fb              # double 0.93278300000000003
	.quad	0x400d0b702602c908              # double 3.630585
	.quad	0x40112e6a337a80d0              # double 4.2953270000000003
	.quad	0x401d2d8a979e16d7              # double 7.2944740000000001
	.quad	0x400e0e325d4a5df2              # double 3.7569319999999999
	.quad	0x4023b64cd7492791              # double 9.8560549999999995
	.quad	0x4021f883558a7610              # double 8.9853769999999997
	.quad	0x40211d564b662fe0              # double 8.5572990000000004
	.quad	0x4020f5f97aaac109              # double 8.4804189999999995
	.quad	0x3fa63dc486ad2dcb              # double 0.043439999999999999
	.quad	0x4008f14983d79075              # double 3.1178159999999999
	.quad	0x40184b1c0010c6f8              # double 6.0733490000000003
	.quad	0x4022fd3671ac14c6              # double 9.4945559999999993
	.quad	0x4022cd6b00ffda40              # double 9.4012069999999994
	.quad	0x401e82dcf4623d0c              # double 7.627796
	.quad	0x40187c79b34a44c8              # double 6.1215580000000003
	.quad	0x40218e96a26e5471              # double 8.7784929999999992
	.quad	0x4020810e66cb1034              # double 8.2520629999999997
	.quad	0x401d507852f7f499              # double 7.3285840000000002
	.quad	0x40219abbecaab8a6              # double 8.8022150000000003
	.quad	0x3fc2c2d6a9c560c8              # double 0.14657100000000001
	.quad	0x4012890eed02cd3a              # double 4.6338460000000001
	.quad	0x4010c1b64e054691              # double 4.1891720000000001
	.quad	0x400c03d790752daa              # double 3.5018760000000002
	.quad	0x4023b1656eefa1e4              # double 9.8464770000000001
	.quad	0x40233eb80ecfa69c              # double 9.6224980000000002
	.quad	0x40227764cf8d716d              # double 9.2331909999999997
	.quad	0x4013c7f84449dbec              # double 4.9452829999999999
	.quad	0x40197efed634549b              # double 6.3740189999999997
	.quad	0x3ff4182fd75e2047              # double 1.255905
	.quad	0x40152f20a73f748a              # double 5.2960229999999999
	.quad	0x401b7df19d66adb4              # double 6.872992
	.quad	0x401760d0247021d1              # double 5.844544
	.quad	0x4019039de481f538              # double 6.2535319999999999
	.quad	0x400a54efcbd55608              # double 3.2914729999999999
	.quad	0x401dd1ff2e48e8a7              # double 7.4550749999999999
	.quad	0x3ffb0bdba0a52696              # double 1.6903950000000001
	.quad	0x401a5bb2788db057              # double 6.5895479999999997
	.quad	0x40198606317268d3              # double 6.3808829999999999
	.quad	0x4020787fed20296b              # double 8.2353509999999996
	.quad	0x401c7eca25529fe0              # double 7.123818
	.quad	0x4010a12ec6bce853              # double 4.1574049999999998
	.quad	0x4013e116a8b8f14e              # double 4.9698130000000003
	.quad	0x401fd87a072d1aeb              # double 7.9614029999999997
	.quad	0x4011f80bed740c41              # double 4.4922329999999997
	.quad	0x40046864883fd502              # double 2.5509729999999999
	.quad	0x4023a5c93ea2d2fe              # double 9.8238009999999996
	.quad	0x4010dee49f51697f              # double 4.2176689999999999
	.quad	0x4000b0270f388228              # double 2.0860120000000002
	.quad	0x3fd798dcdb37c99b              # double 0.368705
	.quad	0x4010b7de5082cf53              # double 4.1795590000000002
	.quad	0x3ffdfafea3df6db9              # double 1.8737779999999999
	.quad	0x401b782be8bc169c              # double 6.8673549999999999
	.quad	0x401ecd9513f8db49              # double 7.7007640000000003
	.quad	0x40180426bb55ac04              # double 6.004054
	.quad	0x402069fbe76c8b44              # double 8.2070000000000007
	.quad	0x401d7bbc2b94d940              # double 7.3708349999999996
	.quad	0x3fdb2f4cf4a558ea              # double 0.42476199999999997
	.quad	0x3ff804d338f79852              # double 1.5011779999999999
	.quad	0x400e0ed352220bc4              # double 3.7572390000000002
	.quad	0x401294901d19157b              # double 4.6450810000000002
	.quad	0x3ff417a67a52ac75              # double 1.2557739999999999
	.quad	0x40137d6a161e4f76              # double 4.8724749999999997
	.quad	0x401637214f0520d1              # double 5.5538379999999998
	.quad	0x401a1ebf65dbfceb              # double 6.5300269999999996
	.quad	0x4007fcbddb9841ab              # double 2.9984090000000001
	.quad	0x4010b74213a0c6b5              # double 4.1789630000000004
	.quad	0x4017edccea28fe26              # double 5.982227
	.quad	0x3fe777db6e503fb3              # double 0.73338099999999995
	.quad	0x401688a0902de00d              # double 5.6334249999999999
	.quad	0x4006f0c996b7670a              # double 2.867572
	.quad	0x402176aab042528b              # double 8.7317710000000002
	.quad	0x401b7f151e75360d              # double 6.874104
	.quad	0x4019422813448063              # double 6.3146060000000004
	.quad	0x4021ac868b9fdbd3              # double 8.836964
	.quad	0x401940afe60c38f3              # double 6.3131709999999996
	.quad	0x4013803afb7e9100              # double 4.8752250000000004
	.quad	0x400e9ca8e2e2b8c7              # double 3.8264939999999998
	.quad	0x3fed704ff43419e3              # double 0.91996
	.quad	0x3f9c1ce6c093d966              # double 0.027453999999999999
	.quad	0x40174c3547e06962              # double 5.8244220000000002
	.quad	0x400d93a0407cc7d2              # double 3.6970830000000001
	.quad	0x400dfa597d49d7ba              # double 3.7472409999999998
	.quad	0x4014798bb4d48883              # double 5.1186970000000001
	.quad	0x4010c1feeb2d0a24              # double 4.1894489999999998
	.quad	0x4018248d7e02645e              # double 6.0356959999999997
	.quad	0x40203e861e92923e              # double 8.1221169999999994
	.quad	0x4005ecaab8a5ce5b              # double 2.7405599999999999
	.quad	0x402205cf4623d0c0              # double 9.0113470000000006
	.quad	0x401eb039ef0f16f4              # double 7.6720959999999998
	.quad	0x3fd21209edbf8b9c              # double 0.28235100000000002
	.quad	0x40131ebfec13b9f1              # double 4.7800289999999999
	.quad	0x40237c0767d34df0              # double 9.7422439999999995
	.quad	0x3fc54784230fcf81              # double 0.166245
	.quad	0x3ff655ebfa8f7db7              # double 1.395977
	.quad	0x401d58259e1f3a58              # double 7.336081
	.quad	0x3ff58dd2f1a9fbe7              # double 1.3471249999999999
	.quad	0x40214db035bd512f              # double 8.6517350000000004
	.quad	0x40236b92c061847f              # double 9.7101039999999994
	.quad	0x400929691a75cd0c              # double 3.1452200000000001
	.quad	0x40203416bdb1a6d7              # double 8.1017360000000007
	.quad	0x3fdec016052502ef              # double 0.48047400000000001
	.quad	0x4022ce86833c6003              # double 9.4033700000000006
	.quad	0x3fd50346dc5d6388              # double 0.32832499999999998
	.quad	0x3ff2cf51ac9afe1e              # double 1.1756150000000001
	.quad	0x3ff6492ee84ad795              # double 1.3928670000000001
	.quad	0x401dab2a27f1b691              # double 7.4171529999999999
	.quad	0x401a6158b827fa1a              # double 6.595065
	.quad	0x4020c29691a75cd1              # double 8.3800550000000005
	.quad	0x3fcedf7a4e7ab756              # double 0.24119499999999999
	.quad	0x4022bc8ecd8dbced              # double 9.3682770000000008
	.quad	0x3fac804102ff8ec1              # double 0.055666
	.quad	0x400d46b8b69552e3              # double 3.659532
	.quad	0x4016499e0e73604a              # double 5.5718920000000001
	.quad	0x401c6394face67d7              # double 7.0972479999999996
	.quad	0x4023dfd1782d3847              # double 9.9371449999999992
	.quad	0x400713343fa2ad3f              # double 2.8843770000000002
	.quad	0x4013073fb7a5f41b              # double 4.7570790000000001
	.quad	0x4004ad43d03968d7              # double 2.5846019999999998
	.quad	0x4011a37c99ae924f              # double 4.4096549999999999
	.quad	0x4016caa087ca643d              # double 5.6978780000000002
	.quad	0x402027a2ad3e920c              # double 8.0774129999999999
	.quad	0x40121167ec7863bf              # double 4.5169980000000001
	.quad	0x40132391d57ff9b5              # double 4.7847359999999997
	.quad	0x401a40b45ae5ffa4              # double 6.5631880000000002
	.quad	0x4020800fba8826ab              # double 8.2501200000000008
	.quad	0x3fe88389f83be660              # double 0.76605699999999998
	.quad	0x40223b4e3369b9d8              # double 9.115831
	.quad	0x402065929670196e              # double 8.1983840000000008
	.quad	0x4023d5d7a99fa11b              # double 9.9176610000000007
	.quad	0x40174ca57a786c22              # double 5.8248499999999996
	.quad	0x4006cdfefbf401c5              # double 2.850584
	.quad	0x3ff6ed02cd39da16              # double 1.4328639999999999
	.quad	0x4023d72dc2b0ea18              # double 9.9202709999999996
	.quad	0x4003a3d89ce4a7b5              # double 2.455003
	.quad	0x400d0b00ffda4053              # double 3.6303730000000001
	.quad	0x4020acd594f26aec              # double 8.3375669999999999
	.quad	0x400e50856e696a27              # double 3.789317
	.quad	0x3ff4caf709b738e7              # double 1.299552
	.quad	0x400beaa8650e7792              # double 3.489579
	.quad	0x4011c7b395c42203              # double 4.4450209999999997
	.quad	0x4017d4b51372a38c              # double 5.9577220000000004
	.quad	0x4018774a771c970f              # double 6.1164949999999996
	.quad	0x3fd178705425f202              # double 0.272976
	.quad	0x400554024b33daf9              # double 2.6660200000000001
	.quad	0x400cc6687f455a7d              # double 3.5968789999999999
	.quad	0x3ff410d0678c0054              # double 1.254105
	.quad	0x401dd1b79d909f1f              # double 7.4548019999999999
	.quad	0x401ef25892684cf0              # double 7.7366659999999996
	.quad	0x401304b1ab0856e7              # double 4.7545840000000004
	.quad	0x3ff845b9e8c47a18              # double 1.517023
	.quad	0x3ffd5df6555c52e7              # double 1.83544
	.quad	0x4001f4cb9ecf6380              # double 2.244529
	.quad	0x400cc2d38476f2a6              # double 3.5951300000000002
	.quad	0x3fe8066e43aa79bc              # double 0.75078500000000003
	.quad	0x3fd131a08bfc2225              # double 0.268654
	.quad	0x40206cd39da16617              # double 8.2125520000000005
	.quad	0x3fd6b3f20a73f749              # double 0.35473300000000002
	.quad	0x401e95c4eb56fb8f              # double 7.6462589999999996
	.quad	0x4023e0ca3e7d1351              # double 9.9390429999999998
	.quad	0x3ff93c7e6b3fe9fb              # double 1.577269
	.quad	0x40154cd39da16617              # double 5.3250260000000003
	.quad	0x40167972474538ef              # double 5.6185999999999998
	.quad	0x401cb664d3bf2f55              # double 7.1781189999999997
	.quad	0x3fe95c8b86b15f89              # double 0.792547
	.quad	0x4022432db1e9f278              # double 9.1312080000000009
	.quad	0x400f06c332f01755              # double 3.8783020000000001
	.quad	0x4020965a57646ae4              # double 8.2936580000000006
	.quad	0x400ddd24180d3cff              # double 3.7329789999999998
	.quad	0x400bf68e820e6299              # double 3.4953889999999999
	.quad	0x3fe8ecebbba55d1c              # double 0.77892099999999997
	.quad	0x401bd31550ca1cef              # double 6.9561359999999999
	.quad	0x3fe2ca558ea7ce10              # double 0.58719900000000003
	.quad	0x401219af9ebe9c88              # double 4.5250839999999997
	.quad	0x4020428dc981beb2              # double 8.1299880000000009
	.quad	0x4021322467be553b              # double 8.5979340000000004
	.quad	0x401200cb295e9e1b              # double 4.500775
	.quad	0x3ffcf102363b2570              # double 1.80884
	.quad	0x4023519fe43675de              # double 9.6594230000000003
	.quad	0x3ff7aebf65dbfceb              # double 1.4801629999999999
	.quad	0x3fedd182a9930be1              # double 0.93182500000000001
	.quad	0x400dbfa3b9ae0c17              # double 3.7185739999999998
	.quad	0x400e2ebd4cfd08d5              # double 3.7728220000000001
	.quad	0x40133b2788db0575              # double 4.8077680000000003
	.quad	0x401109a415f45e0b              # double 4.2594149999999997
	.quad	0x40053839cd8127b3              # double 2.6524540000000001
	.quad	0x3fd9a71de69ad42c              # double 0.40082499999999999
	.quad	0x401c57bf1e8e6080              # double 7.0856899999999996
	.quad	0x4016308787485e3e              # double 5.5473920000000003
	.quad	0x402043a3ec02f2fa              # double 8.1321100000000008
	.quad	0x4013e76ee73e681b              # double 4.9760090000000003
	.quad	0x4020cb897204295a              # double 8.3975329999999992
	.quad	0x400ddf4cb1897a68              # double 3.7340330000000002
	.quad	0x3ffb498c3b0c4589              # double 1.7054560000000001
	.quad	0x401c85b35b0bbf51              # double 7.1305670000000001
	.quad	0x401307d5ed06fef8              # double 4.7576520000000002
	.quad	0x401576659d12cade              # double 5.3656220000000001
	.quad	0x401a87e5eaab0425              # double 6.6327129999999999
	.quad	0x401f4bb9496249a1              # double 7.8239489999999998
	.quad	0x4021075c0767d34e              # double 8.5143740000000001
	.quad	0x4022696b3354c122              # double 9.2058959999999992
	.quad	0x4017b0f66a550870              # double 5.9228149999999999
	.quad	0x401cbbae03b3e9a7              # double 7.183281
	.quad	0x40185b11409a2403              # double 6.0889329999999999
	.quad	0x4009ddd6e04c0592              # double 3.23332
	.quad	0x401c0fcdee34fc61              # double 7.0154339999999999
	.quad	0x401281e5c0b99913              # double 4.6268529999999997
	.quad	0x4011a1733226c3b9              # double 4.4076659999999999
	.quad	0x401153c968943e10              # double 4.331823
	.quad	0x40070f14db59578a              # double 2.8823639999999999
	.quad	0x4020d974e65bea0c              # double 8.4247200000000006
	.quad	0x3ff7220ddc619546              # double 1.4458139999999999
	.quad	0x4022d3aa582dbe7f              # double 9.4134089999999996
	.quad	0x400b998f1d3ed528              # double 3.44998
	.quad	0x40228b5e310dbf05              # double 9.2722029999999993
	.quad	0x40058f7e3d1cc101              # double 2.695065
	.quad	0x40035cf5f4e4430b              # double 2.420391
	.quad	0x3feb69ab29e4d5d8              # double 0.85664899999999999
	.quad	0x40208b07075b3e14              # double 8.2715379999999996
	.quad	0x4019b718a86d71f3              # double 6.4288049999999997
	.quad	0x40203d57de0d66f1              # double 8.1198110000000003
	.quad	0x401ab0dae3e6c4c6              # double 6.6727100000000004
	.quad	0x401c533c60029f17              # double 7.0812850000000003
	.quad	0x3fc9da059a73b42d              # double 0.20196600000000001
	.quad	0x40219b445ed4a1ad              # double 8.8032559999999993
	.quad	0x401e85935fc3b4f6              # double 7.6304449999999999
	.quad	0x3fed46e4c0df58c1              # double 0.91490400000000005
	.quad	0x402055e4c51116a9              # double 8.1677610000000005
	.quad	0x401106ae7d566cf4              # double 4.2565249999999999
	.quad	0x401667a0b5ed8d37              # double 5.6011990000000003
	.quad	0x4022f81a79fec99f              # double 9.4845769999999998
	.quad	0x4002009cc319c5a4              # double 2.250299
	.quad	0x4016163022dd7a9a              # double 5.521668
	.quad	0x40146a9ac36544fe              # double 5.1041059999999998
	.quad	0x4013f18fc504816f              # double 4.9859
	.quad	0x3fdce5c0b9991362              # double 0.45152300000000001
	.quad	0x3febaf4f0d844d01              # double 0.86514999999999997
	.quad	0x40096aa8eb463498              # double 3.1770800000000001
	.quad	0x3ff2dc0ca600b029              # double 1.178723
	.quad	0x4009a3c968943e10              # double 3.204974
	.quad	0x3ff7bc3b4f616723              # double 1.483455
	.quad	0x4012d537e2c55c96              # double 4.708221
	.quad	0x400057d955714b9d              # double 2.0428950000000001
	.quad	0x401c9a0f4d7add16              # double 7.1504490000000001
	.quad	0x4013581d7dbf4880              # double 4.8360500000000002
	.quad	0x401a971971c10d7c              # double 6.6475580000000001
	.quad	0x40206a8155d5f56a              # double 8.2080179999999991
	.quad	0x40217b8d1d8a5482              # double 8.7413109999999996
	.quad	0x3ff171832fcac8e7              # double 1.0902130000000001
	.quad	0x401fe611fd5885d3              # double 7.9746779999999999
	.quad	0x400c86a5d6bebe16              # double 3.5657459999999999
	.quad	0x400758e757928e0d              # double 2.9184100000000002
	.quad	0x400b447cb70ac3a8              # double 3.4084409999999998
	.quad	0x3fff5de8b3b32053              # double 1.9604269999999999
	.quad	0x3fff94845132f87b              # double 1.973759
	.quad	0x4016b6cf850df15a              # double 5.6785259999999997
	.quad	0x40086779207d4e09              # double 3.0505239999999998
	.quad	0x3fef59513f8db489              # double 0.97965299999999999
	.quad	0x40129fe08aefb2ab              # double 4.6561300000000001
	.quad	0x40201713ad5bee3d              # double 8.0450719999999993
	.quad	0x400033b18dac258d              # double 2.0252409999999998
	.quad	0x4006abe48a58b3f6              # double 2.8339319999999999
	.quad	0x3fff5aee631f8a09              # double 1.9597
	.quad	0x400365d8d79d0a67              # double 2.4247299999999998
	.quad	0x402096fb8f57f738              # double 8.2948880000000003
	.quad	0x4023da72862f598a              # double 9.9266550000000002
	.quad	0x3ff9bb6dca07f66f              # double 1.6082590000000001
	.quad	0x401b313f077ccc03              # double 6.7980919999999996
	.quad	0x4013c323bbc6eb0b              # double 4.9405659999999996
	.quad	0x4010d9731098d478              # double 4.2123530000000002
	.quad	0x3ff3d4b05b7cfe58              # double 1.2394259999999999
	.quad	0x400c8a9930be0ded              # double 3.5676749999999999
	.quad	0x40100386d2ed783e              # double 4.003444
	.quad	0x4022607bfe7e1fc1              # double 9.1884460000000008
	.quad	0x3fe0c26dce39b457              # double 0.52373400000000003
	.quad	0x3ff9b996fa82e87d              # double 1.60781
	.quad	0x3faf901083dbc233              # double 0.061645999999999999
	.quad	0x401da2ba9d1f6018              # double 7.4089150000000003
	.quad	0x3ffb225204af9229              # double 1.6958789999999999
	.quad	0x40193a6dacabc515              # double 6.3070589999999997
	.quad	0x3fefe43ed959a30a              # double 0.99661200000000005
	.quad	0x401c2e89eba6aca8              # double 7.0454480000000004
	.quad	0x3ff040bfe3b03e21              # double 1.015808
	.quad	0x400d0d96a6a0125a              # double 3.6316350000000002
	.quad	0x40238313165d3997              # double 9.756005
	.quad	0x401fe55f3519bd40              # double 7.9739959999999996
	.quad	0x4020816a6a01259a              # double 8.2527650000000001
	.quad	0x3fb1cfbb9496249a              # double 0.069575999999999999
	.quad	0x401bad4801f75105              # double 6.9192200000000001
	.quad	0x40209858dde7a744              # double 8.2975530000000006
	.quad	0x402258cbaf965b21              # double 9.1734290000000005
	.quad	0x4013e8c692f6e829              # double 4.9773199999999997
	.quad	0x40072c0b5675579b              # double 2.896506
	.quad	0x401cf4245f5ad96a              # double 7.2384199999999996
	.quad	0x40159d6777079e5a              # double 5.403715
	.quad	0x4021588c1db0142f              # double 8.6729439999999993
	.quad	0x4020cce93e1c9b41              # double 8.4002169999999996
	.quad	0x3ff72ff6d330941d              # double 1.4492100000000001
	.quad	0x4021e3bf0dc768e0              # double 8.9448170000000005
	.quad	0x4013805af6c69b5a              # double 4.8753469999999997
	.quad	0x4021ac5d41fa7653              # double 8.8366489999999995
	.quad	0x401b2e0e30446b6a              # double 6.7949760000000001
	.quad	0x3ffac11904b3c3e7              # double 1.6721429999999999
	.quad	0x4019b46a5d6bebe1              # double 6.4261869999999996
	.quad	0x40100bd76ee73e68              # double 4.0115639999999999
	.quad	0x3fc2769ec2ce464a              # double 0.14424500000000001
	.quad	0x4023eb65668c2614              # double 9.9597580000000007
	.quad	0x400315a74c09c3ce              # double 2.3855729999999999
	.quad	0x3fff7570c564f97f              # double 1.966172
	.quad	0x3fe99f01b866e43b              # double 0.80066000000000004
	.quad	0x40221488a47ecfea              # double 9.0401050000000005
	.quad	0x4011f7785729b281              # double 4.4916700000000001
	.quad	0x402070244e93e1ca              # double 8.2190270000000005
	.quad	0x3fe5ba14cec41dd2              # double 0.67896500000000004
	.quad	0x402034840e1719f8              # double 8.1025700000000001
	.quad	0x40129ec0724b76f7              # double 4.6550310000000001
	.quad	0x40163bb8c32a8c9c              # double 5.5583220000000004
	.quad	0x40133ad96a6a0126              # double 4.8074700000000004
	.quad	0x401720de4c51116b              # double 5.7820980000000004
	.quad	0x401d8229a5ebb774              # double 7.3771120000000003
	.quad	0x4012df4128bf3beb              # double 4.7180220000000004
	.quad	0x4005ac996b7670a0              # double 2.7092770000000002
	.quad	0x401f91c9f72f76e6              # double 7.8923719999999999
	.quad	0x40159944ed6fda83              # double 5.3996769999999996
	.quad	0x4014bc382a12f901              # double 5.183808
	.quad	0x40057f6f4be835df              # double 2.6872240000000001
	.quad	0x40217d8a54823854              # double 8.7451959999999999
	.quad	0x4016b81f53825e14              # double 5.6798070000000003
	.quad	0x3ffe2009f623076c              # double 1.882822
	.quad	0x40202cad362e9036              # double 8.0872589999999995
	.quad	0x400a9de050374ff8              # double 3.3270879999999998
	.quad	0x401d399285a921cd              # double 7.3062230000000001
	.quad	0x3fca28d434a01abd              # double 0.204371
	.quad	0x3feb638433d6c722              # double 0.85589800000000005
	.quad	0x4019db1290257c91              # double 6.4639379999999997
	.quad	0x4020614b9cb6848c              # double 8.1900300000000001
	.quad	0x401f537110e453d2              # double 7.8314859999999999
	.quad	0x40119df612407464              # double 4.4042589999999997
	.quad	0x3fe35260f5e41d4b              # double 0.60380599999999995
	.quad	0x3fe910129cbab64a              # double 0.78321200000000002
	.quad	0x4021d74d37c1376d              # double 8.9205109999999994
	.quad	0x40220c7eae5bc87e              # double 9.0244040000000005
	.quad	0x4023e4c37e6f71a8              # double 9.9468040000000002
	.quad	0x40012ac5c13fd0d0              # double 2.1458849999999998
	.quad	0x401d57c243dccea3              # double 7.3357020000000004
	.quad	0x40118c679cc74b84              # double 4.3871140000000004
	.quad	0x3ffa9f90539fba45              # double 1.663956
	.quad	0x3ff82d9be4cd7492              # double 1.5111349999999999
	.quad	0x4013e4d338f79852              # double 4.9734619999999996
	.quad	0x4004fcbc48f10a9a              # double 2.6234060000000001
	.quad	0x4014334b945308bc              # double 5.0500930000000004
	.quad	0x4022088cc575c076              # double 9.0166989999999991
	.quad	0x4005363d3e4ef028              # double 2.651484
	.quad	0x4014706b7aa25d8d              # double 5.1097849999999996
	.quad	0x4020b3cf91a32b13              # double 8.3511930000000003
	.quad	0x4018a1e57d9dba91              # double 6.1581020000000004
	.quad	0x401df5ac03ff6901              # double 7.4899139999999997
	.quad	0x400162b27cbf6e3f              # double 2.1731919999999998
	.quad	0x40187ba0620ab713              # double 6.1207289999999999
	.quad	0x3febc013ec460ed8              # double 0.867197
	.quad	0x4022b129ed3953df              # double 9.3460230000000006
	.quad	0x4017fa6bd6e8af81              # double 5.9945519999999997
	.quad	0x3ffa1dabe27179c0              # double 1.632244
	.quad	0x400a47e62dc6e2a8              # double 3.285107
	.quad	0x4011e56eefa1e3eb              # double 4.474056
	.quad	0x4013e5ebb7739f34              # double 4.974532
	.quad	0x401682a1b5c7cd8a              # double 5.6275700000000004
	.quad	0x400df4cec41dd1a2              # double 3.7445349999999999
	.quad	0x4017a0d0aaa7ded7              # double 5.9070460000000002
	.quad	0x4020329dc725c3df              # double 8.0988600000000002
	.quad	0x400715a5332acfb7              # double 2.8855689999999998
	.quad	0x400c07f77af64064              # double 3.5038900000000002
	.quad	0x40153bccf28c79f6              # double 5.3083989999999996
	.quad	0x400d39fa97e132b5              # double 3.6533099999999998
	.quad	0x401264ec204f2ae0              # double 4.5985569999999996
	.quad	0x4016a1f4f50a02b8              # double 5.6581609999999998
	.quad	0x401c056861e92924              # double 7.0052810000000001
	.quad	0x40229d93e5fb71fc              # double 9.3077690000000004
	.quad	0x400687b02d59d55e              # double 2.8162539999999998
	.quad	0x4007dc70435efa61              # double 2.9826359999999998
	.quad	0x3f98f57f737da61e              # double 0.024374
	.quad	0x4013f234eb9a176e              # double 4.9865300000000001
	.quad	0x4018f5e9e1b089a0              # double 6.2401499999999999
	.quad	0x401b461cbccf28c8              # double 6.8184690000000003
	.quad	0x40123b7aa25d8d7a              # double 4.5580850000000002
	.quad	0x4015421dda059a74              # double 5.3145670000000003
	.quad	0x4013e50374ff865d              # double 4.9736459999999996
	.quad	0x4018991105e1c151              # double 6.1494790000000004
	.quad	0x4008564302b40f67              # double 3.0421200000000002
	.quad	0x40129138bcdfefbf              # double 4.6418179999999998
	.quad	0x401f00c4dec1c1d7              # double 7.7507510000000001
	.quad	0x4011f80a5accd530              # double 4.4922269999999997
	.quad	0x4013f533f42352eb              # double 4.9894559999999997
	.quad	0x4001f9bf5946c333              # double 2.246947
	.quad	0x4018ce8533b10774              # double 6.2016799999999996
	.quad	0x4020c87a6bd6e8b0              # double 8.3915590000000009
	.quad	0x3fe5a6e5471715c6              # double 0.67662299999999997
	.quad	0x401e9d666a98244f              # double 7.6537110000000003
	.quad	0x3ff43776c4827b70              # double 1.263541
	.quad	0x4019993f6c2699c8              # double 6.3996560000000002
	.quad	0x401f91ef73c0c1fd              # double 7.8925150000000003
	.quad	0x40167a21a719b4dd              # double 5.6192690000000001
	.quad	0x3fcbf4cb1897a67a              # double 0.21840799999999999
	.quad	0x400a4854477ff152              # double 3.285317
	.quad	0x3fc29e0a41a261bf              # double 0.14544799999999999
	.quad	0x400694727dcbddba              # double 2.8224840000000002
	.quad	0x3ffe3d74d594f26b              # double 1.890004
	.quad	0x40057b7c7820a30e              # double 2.6852960000000001
	.quad	0x3fe623ee1bd1ed9e              # double 0.691886
	.quad	0x4022a25dd095af29              # double 9.3171219999999995
	.quad	0x4022e6dce39b456b              # double 9.4509039999999995
	.quad	0x40018fd75e2046c7              # double 2.1952349999999998
	.quad	0x401a79d2bf551505              # double 6.6189679999999997
	.quad	0x40140bf8b9baa151              # double 5.0116909999999999
	.quad	0x3ff43211cb039ef1              # double 1.262224
	.quad	0x3fc6e5710880d802              # double 0.17887700000000001
	.quad	0x40197f0dc768dfbd              # double 6.3740759999999996
	.quad	0x4022f8b73d188f43              # double 9.485773
	.quad	0x401388cb07d0aeda              # double 4.8835870000000003
	.quad	0x402324230fcf80dc              # double 9.5705799999999996
	.quad	0x401368b7a1c25d07              # double 4.8522629999999998
	.quad	0x4023cf35e310dbf0              # double 9.9047079999999994
	.quad	0x3fd579a2834d26fa              # double 0.33554899999999999
	.quad	0x4022e3b14a90470b              # double 9.4447120000000008
	.quad	0x40224cd0fe8ab4fa              # double 9.1500319999999995
	.quad	0x40218f09fa54c554              # double 8.7793729999999996
	.quad	0x4007d38151a43782              # double 2.9782739999999999
	.quad	0x402185e76427c7c5              # double 8.7615309999999997
	.quad	0x40220a7264a16a48              # double 9.0204039999999992
	.quad	0x3ff2f24851a86940              # double 1.184151
	.quad	0x3fe7ace032db1e9f              # double 0.73985299999999998
	.quad	0x401079e774eebf66              # double 4.1190470000000001
	.quad	0x40122cc4ac6cdaf5              # double 4.5437190000000003
	.quad	0x40219d2a84380885              # double 8.8069649999999999
	.quad	0x401e4682b6284599              # double 7.5688579999999996
	.quad	0x3fde0d0247021d11              # double 0.46954400000000002
	.quad	0x3ffdb076c050bd88              # double 1.8555820000000001
	.quad	0x400f43a3a8e71477              # double 3.9080270000000001
	.quad	0x401a3f98b71b8aa0              # double 6.562106
	.quad	0x401137ebaf102364              # double 4.3046100000000003
	.quad	0x3fe3191ff7164c73              # double 0.59681700000000004
	.quad	0x402129b97353b4b3              # double 8.581493
	.quad	0x40121c3efae7924b              # double 4.5275840000000001
	.quad	0x40141610f0e90bc8              # double 5.0215490000000003
	.quad	0x40202a9eb2074ea9              # double 8.0832420000000003
	.quad	0x4022e13404ea4a8c              # double 9.4398499999999998
	.quad	0x4022e4ab606b7aa2              # double 9.4466199999999994
	.quad	0x401c57d30ad46f58              # double 7.0857659999999996
	.quad	0x400439d909f1f14a              # double 2.5282460000000002
	.quad	0x402078e66cb10343              # double 8.2361330000000006
	.quad	0x40150856605ee569              # double 5.2581420000000003
	.quad	0x3ff670856e696a27              # double 1.402471
	.quad	0x40209b178b370047              # double 8.3029139999999995
	.quad	0x401f00331e3a7daa              # double 7.7501949999999997
	.quad	0x4010ee115592d98c              # double 4.232488
	.quad	0x4003a674080f98fa              # double 2.4562759999999999
	.quad	0x402357635e74299e              # double 9.6706800000000008
	.quad	0x4017a97fa5d28d00              # double 5.9155259999999998
	.quad	0x3ff7e49906cca2db              # double 1.4933099999999999
	.quad	0x401f64067cf1c326              # double 7.8476809999999997
	.quad	0x3fd544d87724fa8b              # double 0.33232699999999998
	.quad	0x3f97bd8be7296f65              # double 0.023184
	.quad	0x401e3959e6256367              # double 7.5560070000000001
	.quad	0x40234cd44567125e              # double 9.6500570000000003
	.quad	0x40180d3953dea466              # double 6.0129140000000003
	.quad	0x4018f0578e5c4eb5              # double 6.2347089999999996
	.quad	0x401cf903a7546d40              # double 7.2431780000000003
	.quad	0x400273e81450efdd              # double 2.3065950000000002
	.quad	0x401d871044f1a198              # double 7.3818979999999996
	.quad	0x4007a449dbec2481              # double 2.955219
	.quad	0x40212d729b280f13              # double 8.5887650000000004
	.quad	0x3ffeb4245f5ad96a              # double 1.9189799999999999
	.quad	0x3ffdcea18372e6a7              # double 1.8629469999999999
	.quad	0x3fd4fe4ffc9795b3              # double 0.32802199999999998
	.quad	0x401a0074a771c971              # double 6.500445
	.quad	0x401e6369b9d7fd82              # double 7.5970829999999996
	.quad	0x401f596bfca85cab              # double 7.837326
	.quad	0x401cb37f38c5436c              # double 7.1752900000000004
	.quad	0x3ff984cbe1eb4203              # double 1.594921
	.quad	0x4013f063e07a28bb              # double 4.984756
	.quad	0x40054e4f3343fa2b              # double 2.6632370000000001
	.quad	0x4023db3c60029f17              # double 9.9281950000000005
	.quad	0x3ff534cf4a558ea8              # double 1.325393
	.quad	0x4010ee85fd04a2fd              # double 4.2329330000000001
	.quad	0x40235d8e86402081              # double 9.6827279999999991
	.quad	0x400de938583621fb              # double 3.738877
	.quad	0x400c5cf13cee9dd8              # double 3.545382
	.quad	0x3fff12e0e30446b7              # double 1.9421090000000001
	.quad	0x3fe99acde19fc2a9              # double 0.80014700000000005
	.quad	0x4013ce3c968943e1              # double 4.951403
	.quad	0x400caf355cd91eeb              # double 3.5855510000000002
	.quad	0x40208e2ed352220c              # double 8.2777010000000004
	.quad	0x400b2e1ac57e23f2              # double 3.3975119999999999
	.quad	0x40146bffcdab191e              # double 5.1054680000000001
	.quad	0x3fe4af1455219a84              # double 0.64637199999999995
	.quad	0x4005c3779e9d0e99              # double 2.7204429999999999
	.quad	0x401f5b11409a2403              # double 7.8389329999999999
	.quad	0x4017f9ce8d972cd8              # double 5.9939520000000002
	.quad	0x4011f16df3f96180              # double 4.4857709999999997
	.quad	0x401600e0221426fe              # double 5.5008549999999996
	.quad	0x4009a1bf37b8d3f2              # double 3.2039780000000002
	.quad	0x3ff91204af922963              # double 1.566899
	.quad	0x40158847f562174c              # double 5.3830869999999997
	.quad	0x40111ca03c4b09ea              # double 4.2779550000000004
	.quad	0x4001dd1676640a6c              # double 2.2329530000000002
	.quad	0x4020d2411c2a0232              # double 8.4106529999999999
	.quad	0x40119845996744b3              # double 4.3987030000000003
	.quad	0x40048d130df9bdc7              # double 2.5688840000000002
	.quad	0x4022db36bd2b6f1a              # double 9.4281520000000008
	.quad	0x401aea8e2e2b8c76              # double 6.7290580000000002
	.quad	0x4021b755de58e64b              # double 8.8580769999999998
	.quad	0x401cffe32a0663c7              # double 7.2498899999999997
	.quad	0x40110634549b62c7              # double 4.2560589999999996
	.quad	0x4010e3d5347a5b10              # double 4.2224930000000001
	.quad	0x3ff2acb31c219eb6              # double 1.167163
	.quad	0x3fd32f48c2e770bd              # double 0.299761
	.quad	0x400e69cbab649d39              # double 3.8016580000000002
	.quad	0x4022fe44d87724fb              # double 9.4966190000000008
	.quad	0x3fffed83c6c97d8d              # double 1.995487
	.quad	0x3fe8265cf67b1c00              # double 0.75468299999999999
	.quad	0x3ff4bbc3c5bd0e13              # double 1.295841
	.quad	0x4020f404c8bc9cd4              # double 8.4765990000000002
	.quad	0x40059068123810e9              # double 2.6955110000000002
	.quad	0x3fe67ab96f21f6cb              # double 0.70248100000000002
	.quad	0x401a1d3910c2c5e3              # double 6.5285380000000002
	.quad	0x3ff343a860dcb9aa              # double 1.204018
	.quad	0x401d1d7d7c2ca149              # double 7.2787990000000002
	.quad	0x402163ac2df0d413              # double 8.6946729999999999
	.quad	0x4020089f40a2877f              # double 8.0168400000000002
	.quad	0x402238d823422468              # double 9.1110240000000005
	.quad	0x40200d58644523f6              # double 8.0260649999999991
	.quad	0x4016b620ee8d10f5              # double 5.6778599999999999
	.quad	0x3ff8f5360d024702              # double 1.559866
	.quad	0x400dbe19fc2a886a              # double 3.7178230000000001
	.quad	0x401acef672b88440              # double 6.7021119999999996
	.quad	0x400345bc87db2b34              # double 2.4090509999999998
	.quad	0x400ba707e175d13d              # double 3.4565579999999998
	.quad	0x4012535f3d7d3911              # double 4.5814180000000002
	.quad	0x4020adc13fd0d068              # double 8.3393650000000008
	.quad	0x3fea69728a611772              # double 0.82537199999999999
	.quad	0x402229dc93ea2d30              # double 9.0817610000000002
	.quad	0x401769d51b4fe79f              # double 5.8533520000000001
	.quad	0x4011dd4d834091c1              # double 4.4661160000000004
	.quad	0x4018231487768167              # double 6.0342580000000003
	.quad	0x402254f765fd8adb              # double 9.1659500000000005
	.quad	0x401d746412cf0f9d              # double 7.3636629999999998
	.quad	0x40117be33acd5b68              # double 4.370984
	.quad	0x401c8d462c343b71              # double 7.1379630000000001
	.quad	0x40224072b020c49c              # double 9.1258750000000006
	.quad	0x401fec647778dd61              # double 7.9808519999999996
	.quad	0x4023cce0fc2eba28              # double 9.9001540000000005
	.quad	0x3fe740746455eaee              # double 0.72661799999999999
	.quad	0x4023605a4f00ef13              # double 9.6881889999999994
	.quad	0x40208ee696a26e54              # double 8.2791029999999992
	.quad	0x3ff2d83947496aad              # double 1.177789
	.quad	0x4023465a35d67ba2              # double 9.6374069999999996
	.quad	0x400c8962cfd8f0c7              # double 3.5670829999999998
	.quad	0x401e394b380cb6c8              # double 7.5559510000000003
	.quad	0x4016d4ddf86e3b47              # double 5.707878
	.quad	0x401b5b302f72b453              # double 6.8390510000000004
	.quad	0x3fdf5baf533f4235              # double 0.48997099999999999
	.quad	0x4000516db0dd82fd              # double 2.0397599999999998
	.quad	0x40177763e4abe6a3              # double 5.8665919999999998
	.quad	0x4005c999dcb5781c              # double 2.7234379999999998
	.quad	0x3ff0fda5119ce076              # double 1.061925
	.quad	0x400aede19fc2a887              # double 3.3661530000000002
	.quad	0x3ff85af7d30ad46f              # double 1.5222089999999999
	.quad	0x401a943c3a42f1ed              # double 6.6447609999999999
	.quad	0x4021c3f67f4dbdf9              # double 8.8827400000000001
	.quad	0x400bdd5f56a7ac82              # double 3.4830920000000001
	.quad	0x4022d6b5b2d4d402              # double 9.4193549999999995
	.quad	0x400c55d13d74d595              # double 3.541903
	.quad	0x401704f00ef1348b              # double 5.7548219999999999
	.quad	0x400adc89f40a2878              # double 3.357685
	.quad	0x40202ec050bd87b5              # double 8.0913109999999993
	.quad	0x3fe35b6805a2d730              # double 0.604908
	.quad	0x400016d43d03968d              # double 2.0111469999999998
	.quad	0x400d5f9591cd1c7e              # double 3.671672
	.quad	0x40222fe28240b780              # double 9.0935249999999996
	.quad	0x4012aac471b47842              # double 4.6667649999999998
	.quad	0x40198b749adc8fb8              # double 6.3861869999999996
	.quad	0x400ec3a7daa4fca4              # double 3.8455349999999999
	.quad	0x401fe2d83c6c97d9              # double 7.9715280000000001
	.quad	0x40082308787485e4              # double 3.0171060000000001
	.quad	0x401d9890d5a5b963              # double 7.3989900000000004
	.quad	0x4004c9e7fb267c6c              # double 2.5985870000000002
	.quad	0x402280b029281776              # double 9.2513439999999996
	.quad	0x401de4fd2a62aa19              # double 7.4736219999999998
	.quad	0x40179afbc1acde1a              # double 5.901351
	.quad	0x400a9530ced4e4c9              # double 3.3228469999999999
	.quad	0x3fe8cf41f212d773              # double 0.77529999999999999
	.quad	0x40235a55f3519bd4              # double 9.6764369999999999
	.quad	0x4014b4f2ae07e5a8              # double 5.1767070000000004
	.quad	0x401c6ed02cd39da1              # double 7.1082159999999996
	.quad	0x40103502ababead5              # double 4.051768
	.quad	0x4009db2cc70867ae              # double 3.2320190000000002
	.quad	0x401644a72ead9275              # double 5.5670440000000001
	.quad	0x402032012599ed7c              # double 8.0976649999999992
	.quad	0x402373d5fdcdf698              # double 9.7262419999999991
	.quad	0x401b4e39f77292c5              # double 6.8263930000000004
	.quad	0x40006ee7c49fd7a1              # double 2.0541529999999999
	.quad	0x3fecd130df9bdc6a              # double 0.900536
	.quad	0x401b429e90795f67              # double 6.8150579999999996
	.quad	0x40170d0bfa0945fa              # double 5.7627410000000001
	.quad	0x4009d57603925bb8              # double 3.2292290000000001
	.quad	0x402272c881e4712e              # double 9.2241859999999996
	.quad	0x4012b91600f34507              # double 4.6807480000000004
	.quad	0x40028c87980f55de              # double 2.3186179999999998
	.quad	0x401761869835158c              # double 5.8452400000000004
	.quad	0x3fe0aac53b0813cb              # double 0.52084600000000003
	.quad	0x400ee8b545c78a6e              # double 3.8636270000000001
	.quad	0x40170013ec460ed8              # double 5.750076
	.quad	0x401365710880d802              # double 4.8490640000000003
	.quad	0x401891bb8c32a8ca              # double 6.1423170000000002
	.quad	0x401abd68405b39e2              # double 6.6849679999999996
	.quad	0x3feb22cecc814d72              # double 0.84799899999999995
	.quad	0x402218153bd16766              # double 9.0470369999999996
	.quad	0x401a5f9830e3cd9a              # double 6.5933539999999997
	.quad	0x400c4afee6fb4c3c              # double 3.536619
	.quad	0x3ffdbbd9cae21102              # double 1.8583620000000001
	.quad	0x3fecd4003254e6e2              # double 0.90087899999999999
	.quad	0x401a560d887ebf23              # double 6.5840360000000002
	.quad	0x4023ded7c6fbd274              # double 9.9352400000000002
	.quad	0x40222d4a3c64345d              # double 9.088457
	.quad	0x400c49a4df47f994              # double 3.5359590000000001
	.quad	0x3ffd46dd69d30271              # double 1.829801
	.quad	0x401c7c8c0ce91c8f              # double 7.1216280000000003
	.quad	0x4023c0dc981beb18              # double 9.8766829999999998
	.quad	0x40239fd9ba1b1961              # double 9.812208
	.quad	0x400f0bd6e8af8162              # double 3.8807809999999998
	.quad	0x400202a0a958537e              # double 2.2512829999999999
	.quad	0x40009c4651f3e89b              # double 2.0763060000000002
	.quad	0x4021d944241c3efb              # double 8.9243480000000002
	.quad	0x3ff68ba83f4eca68              # double 1.4090959999999999
	.quad	0x4008f6922d948dc1              # double 3.1203959999999999
	.quad	0x402314386d2ed784              # double 9.5394930000000002
	.quad	0x400eadaa0cae642c              # double 3.834797
	.quad	0x40170a98244e93e2              # double 5.7603460000000002
	.quad	0x4015c6b6177ea1c7              # double 5.4440540000000004
	.quad	0x401f3b923a29c77a              # double 7.8081750000000003
	.quad	0x40125e9f6a93f291              # double 4.5924050000000003
	.quad	0x4012c8eda22f6a51              # double 4.6962190000000001
	.quad	0x4011534699418506              # double 4.3313240000000004
	.quad	0x40198698fe69270b              # double 6.381443
	.quad	0x4022aec743201041              # double 9.3413640000000004
	.quad	0x400935c209246bf0              # double 3.151249
	.quad	0x402146a7ac81d3aa              # double 8.6379979999999996
	.quad	0x4014e9835158b828              # double 5.22804
	.quad	0x40129e2c98e53eb4              # double 4.6544670000000004
	.quad	0x401c34efcbd55608              # double 7.0516959999999997
	.quad	0x400d3fb71fbc5dea              # double 3.6561110000000001
	.quad	0x400b8be5109070fc              # double 3.443308
	.quad	0x3ff47868fd199bb2              # double 1.2793969999999999
	.quad	0x4016a29cfdd22856              # double 5.6588019999999997
	.quad	0x401ecfaacd9e83e4              # double 7.7027999999999999
	.quad	0x402336008e9b38d6              # double 9.6054729999999999
	.quad	0x401ed65f0f5a1017              # double 7.7093470000000001
	.quad	0x4022364755ffe6d6              # double 9.1060130000000008
	.quad	0x3ff1e4e160d887ec              # double 1.118379
	.quad	0x401d412cadddf43c              # double 7.3136469999999996
	.quad	0x3fff346dc5d63886              # double 1.9502999999999999
	.quad	0x4010e6bfca85cab0              # double 4.2253410000000002
	.quad	0x4011960029f16b12              # double 4.3964850000000002
	.quad	0x401814445aa2e3c5              # double 6.0197919999999998
	.quad	0x4016ebdb5d894813              # double 5.7303290000000002
	.quad	0x3ff287f023e9ea14              # double 1.158188
	.quad	0x3ffacd1633482be9              # double 1.6750700000000001
	.quad	0x3ff519f4d37c1377              # double 1.318837
	.quad	0x4022730df9bdc6a0              # double 9.2247160000000008
	.quad	0x4019e96073de1e2e              # double 6.4779070000000001
	.quad	0x3ffa1fcd24e160d9              # double 1.6327640000000001
	.quad	0x4002140aaeafab54              # double 2.2597860000000001
	.quad	0x3ffa71c970f7b9e0              # double 1.6527799999999999
	.quad	0x401646145953586d              # double 5.5684370000000003
	.quad	0x40060e17a02fb5d0              # double 2.7568809999999999
	.quad	0x3ff0bfda4052d667              # double 1.0468390000000001
	.quad	0x40109c5d206c8712              # double 4.1526990000000001
	.quad	0x40209f5d13d74d59              # double 8.3112569999999995
	.quad	0x402147822bbecaac              # double 8.6396650000000008
	.quad	0x4019f54866a11ec9              # double 6.4895339999999999
	.quad	0x3ffc8e0fc2eba27b              # double 1.784683
	.quad	0x40156eae9ee45c36              # double 5.3580880000000004
	.quad	0x40098a747d805e5f              # double 3.1926049999999999
	.quad	0x401fc7cb70ac3a86              # double 7.945112
	.quad	0x40070183f91e646f              # double 2.87574
	.quad	0x400a31d041cc532a              # double 3.2743229999999999
	.quad	0x401ff82c6ef3d3a2              # double 7.9923570000000002
	.quad	0x40012ff9f87f023f              # double 2.1484260000000002
	.quad	0x400f23e8dda48b65              # double 3.8925339999999999
	.quad	0x3fc7276fb09203a3              # double 0.180891
	.quad	0x4007c5cc426351df              # double 2.971581
	.quad	0x40228c27418d690a              # double 9.2737370000000006
	.quad	0x400f58ef34d6a162              # double 3.918425
	.quad	0x40071b20b8066c2b              # double 2.8882460000000001
	.quad	0x4009bac03ff69015              # double 3.2161870000000001
	.quad	0x401a1664d3bf2f55              # double 6.5218689999999997
	.quad	0x401bdcb5bb384fd3              # double 6.9655370000000003
	.quad	0x4020638327674d16              # double 8.1943599999999996
	.quad	0x401efbdec5f394b8              # double 7.7459670000000002
	.quad	0x401955b035bd512f              # double 6.3336800000000002
	.quad	0x4002d6a7264a16a5              # double 2.3548110000000002
	.quad	0x3fdfb7281fd9ba1b              # double 0.49555399999999999
	.quad	0x40205fae7924af0c              # double 8.186878
	.quad	0x401d876fb09203a3              # double 7.3822619999999999
	.quad	0x4009f4c016052503              # double 3.244507
	.quad	0x4019318372e6a769              # double 6.2983529999999996
	.quad	0x401720639d5e4a38              # double 5.7816299999999998
	.quad	0x400a6185058dde7a              # double 3.2976169999999998
	.quad	0x3feecc404a72ead9              # double 0.96243299999999998
	.quad	0x40212b5371971c11              # double 8.5846210000000003
	.quad	0x40164ed959a30985              # double 5.5770010000000001
	.quad	0x4018f4d4024b33db              # double 6.23909
	.quad	0x3fe9ab7fe08aefb3              # double 0.80218500000000004
	.quad	0x4000d80e496ededb              # double 2.105496
	.quad	0x401aafb9389b5200              # double 6.6716049999999996
	.quad	0x4020a171c10d7bea              # double 8.3153210000000009
	.quad	0x400d8331e3a7daa5              # double 3.68906
	.quad	0x401c99e774eebf66              # double 7.1502970000000001
	.quad	0x401c63bc4d22c882              # double 7.0973980000000001
	.quad	0x4022dd99cbee807c              # double 9.4328140000000004
	.quad	0x401c2944aa53fc01              # double 7.0403010000000004
	.quad	0x401ed840e1719f80              # double 7.7111850000000004
	.quad	0x401d881a5870da5e              # double 7.3829130000000003
	.quad	0x400ba54046412cf1              # double 3.455689
	.quad	0x3ff8dea78af3e469              # double 1.554359
	.quad	0x4010dfa48301a7a0              # double 4.2184010000000001
	.quad	0x4023a61eb4202d9d              # double 9.8244530000000001
	.quad	0x4015f5cd4ed2cbea              # double 5.4900409999999997
	.quad	0x4021a015c209246c              # double 8.8126660000000001
	.quad	0x4019e049235f8099              # double 6.4690289999999999
	.quad	0x401007b28954a7f8              # double 4.007517
	.quad	0x401f877531db445f              # double 7.8822830000000001
	.quad	0x3fd9d50ebaade658              # double 0.40362900000000002
	.quad	0x400868d4bad7d7c3              # double 3.0511870000000001
	.quad	0x4001dcb81733226c              # double 2.2327729999999999
	.quad	0x4014389b951c5c57              # double 5.0552809999999999
	.quad	0x3ffb41acde19fc2b              # double 1.7035340000000001
	.quad	0x4013fc7820a30db7              # double 4.9965520000000003
	.quad	0x4017a4738a3b57c5              # double 5.9105970000000001
	.quad	0x3ff279f23465625a              # double 1.1547719999999999
	.quad	0x3ffaba97e132b55f              # double 1.670555
	.quad	0x40223e358298cc14              # double 9.1215019999999995
	.quad	0x3ff89bbe0157eed4              # double 1.5380229999999999
	.quad	0x400be74c09c3ce21              # double 3.4879380000000002
	.quad	0x3ff5e0ddc6195465              # double 1.367399
	.quad	0x400224c059210386              # double 2.2679450000000001
	.quad	0x402076cd07852f7f              # double 8.2320329999999995
	.quad	0x3fcd40357a355044              # double 0.228522
	.quad	0x401f8ae89eba6aca              # double 7.8856529999999996
	.quad	0x4010f1e8e6080735              # double 4.2362399999999996
	.quad	0x40150144cbe1eb42              # double 5.251239
	.quad	0x40006d6238da3c21              # double 2.05341
	.quad	0x4020a9ddc1e7967d              # double 8.3317700000000006
	.quad	0x400f441461b6d43d              # double 3.908242
	.quad	0x4006504816f0068e              # double 2.7892000000000001
	.quad	0x4021ac24e5929670              # double 8.8362189999999998
	.quad	0x401249884c6a3bde              # double 4.571809
	.quad	0x40160e76c8b43958              # double 5.5141249999999999
	.quad	0x40174dc443914f48              # double 5.8259439999999998
	.quad	0x3ff638f8a4c1ebc8              # double 1.3889089999999999
	.quad	0x4023d766c6de7642              # double 9.9207059999999991
	.quad	0x40150193b3a68b1a              # double 5.2515400000000003
	.quad	0x4014336ef8055fbb              # double 5.0502279999999997
	.quad	0x40097f562174c4ce              # double 3.187176
	.quad	0x40193360d0247022              # double 6.3001740000000002
	.quad	0x402024ab1d4f9c20              # double 8.0716180000000008
	.quad	0x401fc57470eb24a7              # double 7.9428270000000003
	.quad	0x3fe72e87d2c7b891              # double 0.72443000000000002
	.quad	0x401398049667b5f2              # double 4.8984550000000002
	.quad	0x401c84ffc9795b36              # double 7.1298820000000003
	.quad	0x40115be22e5de15d              # double 4.3397300000000003
	.quad	0x401119c9d5a187a5              # double 4.2751840000000003
	.quad	0x4012a3d102bc72e2              # double 4.6599769999999996
	.quad	0x4010268c692f6e83              # double 4.0376450000000004
	.quad	0x40012950fc71d606              # double 2.1451739999999999
	.quad	0x401c03a4f8726d05              # double 7.0035590000000001
	.quad	0x401bd8f10a99b6f6              # double 6.9618570000000002
	.quad	0x40125e9c886162f1              # double 4.5923939999999996
	.quad	0x40202d12a94ff002              # double 8.0880329999999994
	.quad	0x4023c8b04ab606b8              # double 9.8919700000000005
	.quad	0x4021dbd3e4ef0282              # double 8.9293510000000005
	.quad	0x400cf0b28522ea10              # double 3.6175280000000001
	.quad	0x4020b62c77574f72              # double 8.3558079999999997
	.quad	0x400fa934267839ce              # double 3.9576190000000002
	.quad	0x40194100e6afcce2              # double 6.3134800000000002
	.quad	0x4021c32b3461309c              # double 8.8811889999999991
	.quad	0x3fd0b0e5e679463d              # double 0.260797
	.quad	0x400c757689ca18bd              # double 3.5573549999999998
	.quad	0x3ffb05f5ad96a6a0              # double 1.688955
	.quad	0x400013f1843c3a43              # double 2.009738
	.quad	0x40236e8a0d349be9              # double 9.715897
	.quad	0x3fc209917939a7c1              # double 0.14091699999999999
	.quad	0x4018763a5c1c6089              # double 6.1154570000000001
	.quad	0x4013b62845996745              # double 4.9278880000000003
	.quad	0x40137ea854477ff1              # double 4.8736889999999997
	.quad	0x3fa03dddb1209edc              # double 0.031722
	.quad	0x401efe9af5ba2be0              # double 7.7486379999999997
	.quad	0x3fe266a337a80cfa              # double 0.57502900000000001
	.quad	0x4021f6e49f51697f              # double 8.9822129999999998
	.quad	0x4002589e774eebf6              # double 2.2932709999999998
	.quad	0x400efbeb9e492bc3              # double 3.873008
	.quad	0x400658266772d5e0              # double 2.7930419999999998
	.quad	0x3fed09bd8383ad9f              # double 0.907439
	.quad	0x401ac6266fd651b1              # double 6.6935060000000002
	.quad	0x401462d05f288484              # double 5.0964980000000004
	.quad	0x401e4b0d51f81a58              # double 7.5732929999999996
	.quad	0x3fe4819d2391d580              # double 0.640822
	.quad	0x401d0b8d3f1843c4              # double 7.2612810000000003
	.quad	0x3fef8270f3882279              # double 0.98467300000000002
	.quad	0x400068fe260b2c84              # double 2.051266
	.quad	0x401a721d53cddd6e              # double 6.61144
	.quad	0x3ff6c87fcb923a2a              # double 1.42395
	.quad	0x3fffd698fe69270b              # double 1.989892
	.quad	0x401ecfec13b9f128              # double 7.703049
	.quad	0x401109728a611772              # double 4.259226
	.quad	0x4010884e3ffef391              # double 4.1331110000000004
	.quad	0x400dc2e557de0d67              # double 3.720164
	.quad	0x400da83558a76102              # double 3.7071329999999998
	.quad	0x3fea95c63ae2541e              # double 0.83078300000000005
	.quad	0x400e5e5753a3ec03              # double 3.796065
	.quad	0x401d72e946801712              # double 7.3622180000000004
	.quad	0x400a846b69db65ed              # double 3.3146580000000001
	.quad	0x401bcea9e6eeb702              # double 6.9518199999999997
	.quad	0x4007d66490a350d3              # double 2.9796840000000002
	.quad	0x40137d0678c0053e              # double 4.8720949999999998
	.quad	0x4020ad2fa0d77b7c              # double 8.3382539999999991
	.quad	0x3fa72abef06b3786              # double 0.045247999999999997
	.quad	0x4019d696a26e5471              # double 6.4595589999999996
	.quad	0x4020cc105186db51              # double 8.3985620000000001
	.quad	0x4019878897e99631              # double 6.3823569999999998
	.quad	0x40198ba6266fd652              # double 6.3863760000000003
	.quad	0x401be39e279dd3bb              # double 6.972283
	.quad	0x3ff4c02f2f987400              # double 1.2969200000000001
	.quad	0x3ffa62478854cdb8              # double 1.6489940000000001
	.quad	0x40179a21ea359360              # double 5.9005200000000002
	.quad	0x3ffc0ce703afb7e9              # double 1.75315
	.quad	0x3f5f255f3519bd40              # double 0.0019009999999999999
	.quad	0x3fb2c7325918a00a              # double 0.073352000000000001
	.quad	0x4016a13f4a98aa86              # double 5.6574679999999997
	.quad	0x4017259d99029ae5              # double 5.786734
	.quad	0x4017b40f23897204              # double 5.9258389999999999
	.quad	0x400aa2fa5093964a              # double 3.3295789999999998
	.quad	0x4018ee7c06e19b91              # double 6.2328950000000001
	.quad	0x401abd590c0ad03e              # double 6.6849100000000004
	.quad	0x3ff17b677f6b1a2a              # double 1.0926279999999999
	.quad	0x3ff6a8027d88c1db              # double 1.416018
	.quad	0x3fe8cffeb074a772              # double 0.77539000000000002
	.quad	0x40209fe260b2c83f              # double 8.3122740000000004
	.quad	0x40187691a75cd0bb              # double 6.1157899999999996
	.quad	0x400a03d35eb7457c              # double 3.251868
	.quad	0x4018870b49e01de2              # double 6.1318789999999996
	.quad	0x3fea788fc9363f57              # double 0.82721699999999998
	.quad	0x401fadf00abf76a3              # double 7.919861
	.quad	0x40221950fc71d606              # double 9.0494459999999997
	.quad	0x401f64213a0c6b48              # double 7.8477829999999997
	.quad	0x4022e2502eec7c95              # double 9.4420179999999991
	.quad	0x4010513be22e5de1              # double 4.0793299999999997
	.quad	0x4012888fc9363f57              # double 4.6333609999999998
	.quad	0x40189164840e171a              # double 6.141985
	.quad	0x4001561240746456              # double 2.167027
	.quad	0x40188a5d28d002e2              # double 6.1351209999999998
	.quad	0x40117387160956c1              # double 4.3628200000000001
	.quad	0x40231d8a54823854              # double 9.5576959999999999
	.quad	0x400ac3e6c4c5974e              # double 3.3456549999999998
	.quad	0x4007aa582dbe7f2c              # double 2.9581759999999999
	.quad	0x40211c9081c2e33f              # double 8.55579
	.quad	0x401284dd72367e41              # double 4.6297509999999997
	.quad	0x3ffd510e453d20f3              # double 1.8322890000000001
	.quad	0x401d044a1f080304              # double 7.2541890000000002
	.quad	0x401e9b6b2af14552              # double 7.6517759999999999
	.quad	0x3fe40750c1b97354              # double 0.62589300000000003
	.quad	0x401832e4d1a65061              # double 6.0497009999999998
	.quad	0x4022b7ad4b2745bf              # double 9.3587439999999997
	.quad	0x402062af35e310dc              # double 8.1927430000000001
	.quad	0x401f03161a1db878              # double 7.7530140000000002
	.quad	0x3fee21cef240fa9c              # double 0.94162699999999999
	.quad	0x3ff5328954a7f801              # double 1.324838
	.quad	0x3fb692817763e4ac              # double 0.088173000000000001
	.quad	0x40125382a12f9011              # double 4.5815530000000004
	.quad	0x4018b18655193709              # double 6.1733640000000003
	.quad	0x4015ac100e6afcce              # double 5.4180299999999999
	.quad	0x4009517b5286b591              # double 3.1647859999999999
	.quad	0x401add3953dea466              # double 6.7160390000000003
	.quad	0x4017ed9231c64ba9              # double 5.9820029999999997
	.quad	0x40045c44bf4cb189              # double 2.5450529999999998
	.quad	0x3ffe2f672b884407              # double 1.8865730000000001
	.quad	0x3fdea80064a9cdc4              # double 0.47900399999999999
	.quad	0x40102b4202d9cf14              # double 4.0422440000000002
	.quad	0x400586fe718a86d7              # double 2.6909149999999999
	.quad	0x400661deacc92147              # double 2.7977880000000002
	.quad	0x4015e7cb2d905c03              # double 5.4763609999999998
	.quad	0x3fe5d894812be48a              # double 0.68268799999999996
	.quad	0x401d42eba27ae9ab              # double 7.3153519999999999
	.quad	0x401d76117720c8cd              # double 7.3653009999999997
	.quad	0x4010d4a6eb91b3f2              # double 4.207668
	.quad	0x4006dc99285a921d              # double 2.8577140000000001
	.quad	0x4022473cf70153bd              # double 9.1391369999999998
	.quad	0x402379650a45d420              # double 9.7370990000000006
	.quad	0x4021354b2745bf27              # double 8.6040890000000001
	.quad	0x400d3a860dcb9a9e              # double 3.6535760000000002
	.quad	0x4022e10385c67dfe              # double 9.4394799999999996
	.quad	0x3fffafcdee34fc61              # double 1.980421
	.quad	0x402004f312b1b36c              # double 8.0096670000000003
	.quad	0x400721c36976bc1f              # double 2.891486
	.quad	0x3ff36ae7d566cf42              # double 1.2136
	.quad	0x3ffe71ac14c660a2              # double 1.902752
	.quad	0x3fe55f99c38b04ab              # double 0.66791999999999996
	.quad	0x4012c6f0068db8bb              # double 4.6942750000000002
	.quad	0x400d11c5c5718eb9              # double 3.6336780000000002
	.quad	0x4019b3265add9c28              # double 6.4249510000000001
	.quad	0x4015411904b3c3e7              # double 5.3135719999999997
	.quad	0x40219e748e475600              # double 8.8094830000000001
	.quad	0x40034b28d8665e03              # double 2.411699
	.quad	0x3fc118655193708b              # double 0.13355700000000001
	.quad	0x402178b06c43f5f9              # double 8.7357209999999998
	.quad	0x40214e1975f2cb64              # double 8.6525379999999998
	.quad	0x4001991f70de8f6d              # double 2.199767
	.quad	0x4020d558644523f6              # double 8.4166899999999991
	.quad	0x40215f811f4f50a0              # double 8.6865319999999997
	.quad	0x3fec718655193709              # double 0.88885800000000004
	.quad	0x401280b3d4ae429e              # double 4.625686
	.quad	0x400f858cd20afa2f              # double 3.94021
	.quad	0x40237481d3aa36a0              # double 9.7275530000000003
	.quad	0x4015fb86b15f88fd              # double 5.4956310000000004
	.quad	0x3ff51ae1cde5d181              # double 1.3190630000000001
	.quad	0x401e936ef8055fbb              # double 7.6439779999999997
	.quad	0x3fe9bce4217d284a              # double 0.80430800000000002
	.quad	0x4019343e963dc487              # double 6.3010200000000003
	.quad	0x400ed8023a6ce358              # double 3.8554729999999999
	.quad	0x400c45add9c27e95              # double 3.5340229999999999
	.quad	0x40179fb1183b6028              # double 5.9059489999999997
	.quad	0x4002a5c9a34ca0c3              # double 2.3309510000000002
	.quad	0x40027bc01a36e2eb              # double 2.310425
	.quad	0x400d1d05af6c69b6              # double 3.6391710000000002
	.quad	0x40136c016052502f              # double 4.8554740000000001
	.quad	0x3ffd8663c74fb54a              # double 1.84531
	.quad	0x401be7b95a294142              # double 6.9762930000000001
	.quad	0x401b2bfb9bed30f0              # double 6.7929519999999997
	.quad	0x4004678290689870              # double 2.5505420000000001
	.quad	0x400804c404a72eae              # double 3.0023270000000002
	.quad	0x4004a90d5a5b9629              # double 2.5825450000000001
	.quad	0x3fd74156e264e486              # double 0.36336299999999999
	.quad	0x401a8ae46cfc829d              # double 6.635637
	.quad	0x3fe4854046412cf1              # double 0.641266
	.quad	0x401d742a23bff8a9              # double 7.363442
	.quad	0x40233968943e1006              # double 9.6121259999999999
	.quad	0x400e4c9081c2e33f              # double 3.787385
	.quad	0x4020e1c886162f16              # double 8.4409829999999992
	.quad	0x40130e7cd0353719              # double 4.7641479999999996
	.quad	0x4014263065f9591d              # double 5.0372940000000002
	.quad	0x4017f30c23fab10c              # double 5.9873510000000003
	.quad	0x40147c27e9531551              # double 5.1212460000000002
	.quad	0x401d8c4cdfaca362              # double 7.3870120000000004
	.quad	0x3fff752fc2656abe              # double 1.96611
	.quad	0x4011d6598e10cf5b              # double 4.4593259999999999
	.quad	0x401fb0e779207d4e              # double 7.922758
	.quad	0x402129ab4b72c519              # double 8.5813849999999992
	.quad	0x400314ee392e1ef7              # double 2.3852199999999999
	.quad	0x3fd6f290abb44e51              # double 0.35855500000000001
	.quad	0x4022c4a3c64345d0              # double 9.3840620000000001
	.quad	0x401beaee2003ab86              # double 6.9794239999999999
	.quad	0x40224d6a7ac81d3b              # double 9.1512030000000006
	.quad	0x40084b9346994185              # double 3.036902
	.quad	0x40126612c6ac215c              # double 4.5996810000000004
	.quad	0x4017918f3eccc469              # double 5.8921479999999997
	.quad	0x40026597d49d7ba6              # double 2.2996059999999998
	.quad	0x40165b7e90ff9724              # double 5.5893499999999996
	.quad	0x3fe3efb4c3c18b50              # double 0.62301099999999998
	.quad	0x40208d13b5bf6a0e              # double 8.2755410000000005
	.quad	0x401922f123c42a67              # double 6.2841230000000001
	.quad	0x40222b9cb6848beb              # double 9.0851799999999994
	.quad	0x401ef9c17225b74a              # double 7.7439020000000003
	.quad	0x401c219008205ff2              # double 7.0327760000000001
	.quad	0x40157dfdac68a937              # double 5.3730380000000002
	.quad	0x401546ac647778dd              # double 5.3190169999999997
	.quad	0x3ff6686f8ad2567a              # double 1.4004970000000001
	.quad	0x400143c9eecbfb16              # double 2.1581000000000001
	.quad	0x40128b1d4f9c1f86              # double 4.6358540000000001
	.quad	0x3fe9899e0e73604a              # double 0.79804900000000001
	.quad	0x40047a6aca793576              # double 2.559774
	.quad	0x4006afa7221858bc              # double 2.8357679999999998
	.quad	0x3fee3458cd20afa3              # double 0.94389000000000001
	.quad	0x40007fbacb428912              # double 2.0623680000000002
	.quad	0x4014d646f1561911              # double 5.2092549999999997
	.quad	0x400cb7d955714b9d              # double 3.5897700000000001
	.quad	0x4003e29845dc8323              # double 2.4856419999999999
	.quad	0x3fe1daee631f8a09              # double 0.557975
	.quad	0x3ff693d5347a5b10              # double 1.411092
	.quad	0x402377f6b1a2a4db              # double 9.7343039999999998
	.quad	0x4017ce2f7b17ce53              # double 5.9513530000000001
	.quad	0x40163ed3953dea46              # double 5.5613539999999997
	.quad	0x400f2c4156e264e5              # double 3.8966090000000002
	.quad	0x3ff517b5286b5914              # double 1.3182879999999999
	.quad	0x40135115592d98bf              # double 4.8291829999999996
	.quad	0x4015b131ec0b5675              # double 5.4230419999999997
	.quad	0x3fed66bc621b7e0b              # double 0.91879100000000002
	.quad	0x40185a843808850a              # double 6.0883950000000002
	.quad	0x40165f3b213e3e29              # double 5.5929989999999998
	.quad	0x40143ba1b1960fa1              # double 5.0582339999999997
	.quad	0x4014e9131ec0b567              # double 5.2276119999999997
	.quad	0x400ff69c23b7952d              # double 3.9954149999999999
	.quad	0x4007fbcc2938de6e              # double 2.9979480000000001
	.quad	0x4015d293d102bc73              # double 5.4556420000000001
	.quad	0x4000fc3bd5992429              # double 2.1231610000000001
	.quad	0x4021c75dfeb8d823              # double 8.8893889999999995
	.quad	0x401d42a3cea6c1a0              # double 7.3150779999999997
	.quad	0x3fdd3f4666ec9e23              # double 0.45698699999999998
	.quad	0x40054c8f75536934              # double 2.6623830000000002
	.quad	0x3fc1b8ed1bf7ad4b              # double 0.138456
	.quad	0x4020e43d68405b3a              # double 8.4457810000000002
	.quad	0x40071b48909289db              # double 2.8883220000000001
	.quad	0x3fea7b09203a322b              # double 0.827519
	.quad	0x4023dfba6698bb4d              # double 9.9369689999999994
	.quad	0x40214ced6fda836f              # double 8.6502490000000005
	.quad	0x40223a7a41e57d9e              # double 9.1142140000000005
	.quad	0x40191eb28d8665e0              # double 6.2799779999999998
	.quad	0x4011ff9830e3cd9a              # double 4.4996039999999997
	.quad	0x40172f0d844d013b              # double 5.7959500000000004
	.quad	0x402239511dffc548              # double 9.1119470000000007
	.quad	0x3ff561a2e7f6f4bf              # double 1.3363370000000001
	.quad	0x3ffa06940357a355              # double 1.626606
	.quad	0x40035dc725c3dee8              # double 2.4207900000000002
	.quad	0x4021edf69878316a              # double 8.964772
	.quad	0x3ff4bf27fe4bcada              # double 1.2966690000000001
	.quad	0x40171a847b24638d              # double 5.7758960000000004
	.quad	0x400c2872b020c49c              # double 3.5197500000000002
	.quad	0x40202f4c6e6d9be5              # double 8.0923800000000004
	.quad	0x4006827e0ef99807              # double 2.813717
	.quad	0x401d73914f483cb0              # double 7.3628590000000003
	.quad	0x400c88bd230b9dc3              # double 3.566767
	.quad	0x3ffeb63b256ffc11              # double 1.9194899999999999
	.quad	0x4021a22e3c536d65              # double 8.8167589999999993
	.quad	0x401ad3b7952d234f              # double 6.7067550000000002
	.quad	0x40227b7f38c5436c              # double 9.2412050000000007
	.quad	0x4019e1bd61f5be5e              # double 6.4704490000000003
	.quad	0x4020965668c26139              # double 8.293628
	.quad	0x400ebf8ec0f88334              # double 3.843534
	.quad	0x4006cf5b1c864884              # double 2.851248
	.quad	0x400e92a843808851              # double 3.8216100000000002
	.quad	0x3ff60a7829068987              # double 1.377556
	.quad	0x3ffe02c9081c2e34              # double 1.87568
	.quad	0x40068da4ce8101f3              # double 2.8191619999999999
	.quad	0x4008132b55ef1fde              # double 3.00936
	.quad	0x4002b605ab3aabcd              # double 2.3388779999999998
	.quad	0x40171aade657b84e              # double 5.7760540000000002
	.quad	0x402098cb8e086bdf              # double 8.2984279999999995
	.quad	0x4014f199fe43675e              # double 5.2359390000000001
	.quad	0x4020a0da1a93293d              # double 8.3141639999999999
	.quad	0x401c5845dc832336              # double 7.0862040000000004
	.quad	0x400ee0e7bc3c5bd1              # double 3.8598170000000001
	.quad	0x401ce94d50ebaade              # double 7.2278339999999996
	.quad	0x4020fbd859c8c932              # double 8.4918849999999999
	.quad	0x40129d0cc35ce182              # double 4.6533689999999996
	.quad	0x400b6c6b484d76ab              # double 3.4279389999999998
	.quad	0x3fb239f77292c493              # double 0.071196999999999996
	.quad	0x4013a17b5286b591              # double 4.9076969999999998
	.quad	0x3ff1ae297396d091              # double 1.1050199999999999
	.quad	0x4020880d5e8d5411              # double 8.265727
	.quad	0x40124a95c853c148              # double 4.5728369999999998
	.quad	0x400509a1b9f98b72              # double 2.6297030000000001
	.quad	0x4010c386d2ed783e              # double 4.190944
	.quad	0x3ffec24a276b7ed4              # double 1.922434
	.quad	0x401df59d55e6bc62              # double 7.4898579999999999
	.quad	0x400ad3892ee84ad8              # double 3.3532890000000002
	.quad	0x401a76ca89fc6da4              # double 6.6160069999999997
	.quad	0x401d8e2f37fbefd0              # double 7.388852
	.quad	0x3fe7ff8ec0f88334              # double 0.749946
	.quad	0x3ffc33508f648c72              # double 1.7625280000000001
	.quad	0x4002463e07a28bb1              # double 2.2842980000000002
	.quad	0x400189680e065300              # double 2.1920929999999998
	.quad	0x4021ce0e94ee392e              # double 8.9024549999999998
	.quad	0x4007e724b76f6d76              # double 2.9878629999999999
	.quad	0x3ff52bcf91a32b13              # double 1.323196
	.quad	0x400db30489d27c39              # double 3.7124109999999999
	.quad	0x3fbf3f20a73f748a              # double 0.122057
	.quad	0x40169c08fa7a8501              # double 5.6523779999999997
	.quad	0x40155d66277c45cc              # double 5.3412100000000002
	.quad	0x400c578cc9a77e5f              # double 3.5427490000000001
	.quad	0x4012b85e3da2f8be              # double 4.6800470000000001
	.quad	0x4011a53c9abb01c9              # double 4.4113639999999998
	.quad	0x4020b5ddd2ae8e1d              # double 8.3552079999999993
	.quad	0x4008dd05af6c69b6              # double 3.1079210000000002
	.quad	0x4020049fb6134ce4              # double 8.0090310000000002
	.quad	0x3ff9910c2c5e2cdc              # double 1.597912
	.quad	0x40176a9f7b5aea31              # double 5.8541239999999997
	.quad	0x4006aa63305100a4              # double 2.8331970000000002
	.quad	0x3fda08919ef954eb              # double 0.406773
	.quad	0x4013a3e74afd5454              # double 4.9100619999999999
	.quad	0x4018a9a38fbca106              # double 6.1656630000000003
	.quad	0x40239823c85c24c4              # double 9.7971479999999999
	.quad	0x4022a10b630a9153              # double 9.3145399999999992
	.quad	0x4009498dcdb37c9a              # double 3.1609150000000001
	.quad	0x400834bf0995aaf8              # double 3.0257550000000002
	.quad	0x3ff07dc9c4da9004              # double 1.03071
	.quad	0x401183a68b19a416              # double 4.378565
	.quad	0x401435a1cac08312              # double 5.0523749999999996
	.quad	0x3fe2c27c7c5260f6              # double 0.58624100000000001
	.quad	0x401a48f605ab3aac              # double 6.5712510000000002
	.quad	0x4007e17ca2120e1f              # double 2.9851009999999998
	.quad	0x40202c2dcf4623d1              # double 8.0862870000000004
	.quad	0x40159e136e71cda3              # double 5.4043710000000003
	.quad	0x4000d01c0ca600b0              # double 2.1016159999999999
	.quad	0x402328470a808c82              # double 9.5786669999999994
	.quad	0x400d8dce39b456b4              # double 3.6942409999999999
	.quad	0x3ff211fe64f54d1f              # double 1.1293930000000001
	.quad	0x40005cc4ac6cdaf5              # double 2.0452970000000001
	.quad	0x402233afb7e90ff9              # double 9.1009499999999992
	.quad	0x400e016e7a311e86              # double 3.750699
	.quad	0x3fed01b64e054691              # double 0.90645900000000001
	.quad	0x4021fcc7b02d59d5              # double 8.9937109999999993
	.quad	0x402220900c521dda              # double 9.063599
	.quad	0x4020534395810625              # double 8.1626250000000002
	.quad	0x4013cd5e071c53f4              # double 4.9505540000000003
	.quad	0x401f90f40e5a35d6              # double 7.8915559999999996
	.quad	0x4018d1a6937d1fe6              # double 6.2047369999999997
	.quad	0x4010071001d5c316              # double 4.0068970000000004
	.quad	0x4014f451fc4c1659              # double 5.238594
	.quad	0x3fb39463cfb3311a              # double 0.076482999999999995
	.quad	0x401958b439581062              # double 6.3366249999999997
	.quad	0x401685bbbe878fac              # double 5.6305990000000001
	.quad	0x40170a0b1bbcf4e8              # double 5.7598079999999996
	.quad	0x4023403e425aee63              # double 9.6254749999999997
	.quad	0x4022b774256bca53              # double 9.3583079999999991
	.quad	0x402115e9185cee18              # double 8.5427940000000007
	.quad	0x401f4ea3161a1db8              # double 7.8267939999999995
	.quad	0x400bc326e115592e              # double 3.4702890000000002
	.quad	0x40228a224edf6124              # double 9.2697929999999999
	.quad	0x4019c06ab14ec205              # double 6.437907
	.quad	0x40230df3f961804e              # double 9.5272520000000007
	.quad	0x3ffc8d31769a9110              # double 1.7844709999999999
	.quad	0x4018b967caea747e              # double 6.1810600000000004
	.quad	0x4023d733ebbfd71b              # double 9.9203179999999999
	.quad	0x40201d2a62aa1944              # double 8.0569640000000006
	.quad	0x4021d10be9424e59              # double 8.9082939999999997
	.quad	0x40231d17c5ef62fa              # double 9.5568220000000004
	.quad	0x401ef9a671ef30a5              # double 7.743799
	.quad	0x4021404189374bc7              # double 8.6255000000000006
	.quad	0x40139514c22ee419              # double 4.8955869999999999
	.quad	0x4018ecdd93c46d83              # double 6.2313140000000002
	.quad	0x4013fcbc05d52c17              # double 4.9968110000000001
	.quad	0x402000b439581062              # double 8.0013749999999995
	.quad	0x401242e946801712              # double 4.5653430000000004
	.quad	0x3ffdd15bdd76683c              # double 1.863613
	.quad	0x40169cd8127b2cc7              # double 5.653168
	.quad	0x402256c02f2f9874              # double 9.169435
	.quad	0x401a921ff2e48e8a              # double 6.6426999999999996
	.quad	0x402178f3cb3e5754              # double 8.7362350000000006
	.quad	0x3fabddfc9ff92f2b              # double 0.054427999999999997
	.quad	0x401db299d883ba34              # double 7.4244149999999998
	.quad	0x40128acbc8c0ce92              # double 4.6355430000000002
	.quad	0x40071d74d594f26b              # double 2.889383
	.quad	0x3fe8df809917939a              # double 0.77728299999999995
	.quad	0x400f7368ad688377              # double 3.931352
	.quad	0x3fe1b3e5753a3ec0              # double 0.55320999999999998
	.quad	0x4003f07c84b5dcc6              # double 2.4924249999999999
	.quad	0x3ff67f327aa68f4b              # double 1.4060539999999999
	.quad	0x401dc8066c2acb86              # double 7.4453370000000003
	.quad	0x400332fec56d5cfb              # double 2.3999000000000001
	.quad	0x40059394b7b28955              # double 2.6970610000000002
	.quad	0x400bf5e071c53f3a              # double 3.4950570000000001
	.quad	0x3fe93aecd07852f8              # double 0.788443
	.quad	0x4002795feda66128              # double 2.3092649999999999
	.quad	0x3ff335aea3161a1e              # double 1.2006060000000001
	.quad	0x3fe56fdc9c4da900              # double 0.66990499999999997
	.quad	0x4015f3dd97f62b6b              # double 5.4881500000000001
	.quad	0x40216a7418d6909b              # double 8.7079170000000001
	.quad	0x402015bd512ec6bd              # double 8.0424600000000002
	.quad	0x4015d20c069e7fb2              # double 5.4551239999999996
	.quad	0x40224af038e29f9d              # double 9.1463640000000002
	.quad	0x3fb75a63f9a49c2c              # double 0.091222999999999999
	.quad	0x4020137de939eadd              # double 8.0380699999999994
	.quad	0x4013d1b3f20a73f7              # double 4.9547879999999997
	.quad	0x400fa31055b89939              # double 3.9546209999999999
	.quad	0x40220b700474d9c7              # double 9.0223390000000006
	.quad	0x402142e297396d09              # double 8.6306349999999998
	.quad	0x3ff6a87f455a7d24              # double 1.416137
	.quad	0x4004bad96a6a0126              # double 2.5912350000000002
	.quad	0x401eeb384fd2a62b              # double 7.7297070000000003
	.quad	0x402222e685db76b4              # double 9.0681650000000004
	.quad	0x4023fa55b035bd51              # double 9.9889349999999996
	.quad	0x40212bddfc9ff92f              # double 8.5856779999999997
	.quad	0x3ff36003ab862b28              # double 1.210941
	.quad	0x4014d35935fc3b4f              # double 5.2063949999999997
	.quad	0x401399d6adf71eb0              # double 4.9002330000000001
	.quad	0x4010307faa044ae8              # double 4.0473619999999997
	.quad	0x40212eeed8904f6e              # double 8.591666
	.quad	0x4023dcfd8f0c77de              # double 9.9316220000000008
	.quad	0x3fc36b09635610ae              # double 0.15170400000000001
	.quad	0x4022f99934efcbd5              # double 9.4874969999999994
	.quad	0x40083da16616b54e              # double 3.0300929999999999
	.quad	0x4002b7ba6698bb4d              # double 2.3397109999999999
	.quad	0x4009cc5b078d92fb              # double 3.224783
	.quad	0x401dd6ffc115df65              # double 7.4599599999999997
	.quad	0x4020e3d1cc100e6b              # double 8.44496
	.quad	0x401858127b2cc708              # double 6.0860079999999996
	.quad	0x40178f49cf56eac8              # double 5.8899299999999997
	.quad	0x40239c692f6e8295              # double 9.8054900000000007
	.quad	0x401e1e0653005815              # double 7.5293210000000003
	.quad	0x4005e4b5568e820e              # double 2.7366739999999998
	.quad	0x4012f2c77574f723              # double 4.7370890000000001
	.quad	0x4022ef125dd095af              # double 9.4669369999999997
	.quad	0x40063e6c4c5974e6              # double 2.7804799999999998
	.quad	0x40204ba16e7a311f              # double 8.1477160000000008
	.quad	0x3fe1fd438d1d8a55              # double 0.56216600000000005
	.quad	0x3fe61a5ebb7739f3              # double 0.69071899999999997
	.quad	0x401e25fbb517a461              # double 7.5370929999999995
	.quad	0x401d4141205bc01a              # double 7.3137249999999998
	.quad	0x3fb772c5197a2489              # double 0.091594999999999996
	.quad	0x4000b606b7aa25d9              # double 2.0888800000000001
	.quad	0x3ff05d65a14488c6              # double 1.022802
	.quad	0x4021b34aa9717df2              # double 8.8501790000000007
	.quad	0x401494677b395c42              # double 5.1449259999999999
	.quad	0x40077d9988d2a1f9              # double 2.936328
	.quad	0x402398afe60c38f3              # double 9.7982169999999992
	.quad	0x3ff17c169c23b795              # double 1.092795
	.quad	0x4017fb1dd5d3dc8c              # double 5.9952310000000004
	.quad	0x40228328b6d86ec1              # double 9.2561699999999991
	.quad	0x3fed38f7985271bd              # double 0.91320400000000002
	.quad	0x3ff8cd0aaa7ded6c              # double 1.5500590000000001
	.quad	0x4010abc558644524              # double 4.167745
	.quad	0x3ff98c144028e4fc              # double 1.5966990000000001
	.quad	0x4023700c0f01fb83              # double 9.7188420000000004
	.quad	0x40201147ae147ae1              # double 8.0337499999999995
	.quad	0x401e1fb9389b5200              # double 7.5309799999999996
	.quad	0x400462de8709741d              # double 2.548276
	.quad	0x40183f0bf1a5ca2a              # double 6.0615690000000004
	.quad	0x3ff716b228dc981c              # double 1.443041
	.quad	0x402126edaa92e621              # double 8.5760319999999997
	.quad	0x4010ae7b3d8e0008              # double 4.1703919999999997
	.quad	0x4012fd78811b1d93              # double 4.7475300000000002
	.quad	0x401646d330941c82              # double 5.5691649999999999
	.quad	0x3fec13d31b9b66f9              # double 0.87741999999999998
	.quad	0x4023dc5004fb1184              # double 9.9302980000000005
	.quad	0x402055810624dd2f              # double 8.1669999999999998
	.quad	0x40179fc9795b35b1              # double 5.9060420000000002
	.quad	0x40228388ebcc6c55              # double 9.2569040000000005
	.quad	0x4018d1f8e3ac0c63              # double 6.2050510000000001
	.quad	0x400059513f8db489              # double 2.043612
	.quad	0x3fec2bae03b3e9a7              # double 0.880332
	.quad	0x401685e84f09528f              # double 5.6307689999999999
	.quad	0x40236ebd6e8af816              # double 9.7162889999999997
	.quad	0x401f75a5332acfb7              # double 7.8648879999999996
	.quad	0x401133ee1bd1ed9e              # double 4.300713
	.quad	0x402246390c9107fb              # double 9.1371540000000007
	.quad	0x401ce2096787ce96              # double 7.220739
	.quad	0x401bd00c9539b888              # double 6.9531729999999996
	.quad	0x3ffc4a7b4e54f7a9              # double 1.768184
	.quad	0x40151884c6a3bde0              # double 5.2739440000000002
	.quad	0x40137ca5bd944aa5              # double 4.8717259999999998
	.quad	0x402080ae74f2f124              # double 8.2513310000000004
	.quad	0x3fe838d1d8a54824              # double 0.75693600000000005
	.quad	0x3febd7d5a9eb2075              # double 0.87009700000000001
	.quad	0x4019ba25529fe005              # double 6.4317830000000002
	.quad	0x400d0b8305d95dd5              # double 3.6306210000000001
	.quad	0x402065cd7060bb2c              # double 8.1988330000000004
	.quad	0x3fffcfa69be09bb7              # double 1.9881960000000001
	.quad	0x3fffc2d27807789a              # double 1.9850639999999999
	.quad	0x400ac47a9e2bcf92              # double 3.3459370000000002
	.quad	0x3fe3877ccc037931              # double 0.61028899999999997
	.quad	0x4021450ebaade658              # double 8.6348780000000005
	.quad	0x402013f0fe047d3d              # double 8.0389479999999995
	.quad	0x40238abc947064ed              # double 9.7709700000000001
	.quad	0x400ca312f4cf4a56              # double 3.5796260000000002
	.quad	0x40170968d759ee89              # double 5.7591890000000001
	.quad	0x40109a9fbe76c8b4              # double 4.1509999999999998
	.quad	0x3fffedefc7a39820              # double 1.99559
	.quad	0x3fdb88ebcc6c54bd              # double 0.430232
	.quad	0x4021a5eb7457c0b1              # double 8.8240619999999996
	.quad	0x4020568986fcdee3              # double 8.1690179999999994
	.quad	0x4003bc115df6555c              # double 2.4668299999999999
	.quad	0x4023481e2584f4c7              # double 9.6408550000000001
	.quad	0x40050f33ca31e7da              # double 2.6324230000000002
	.quad	0x401f752e72da1230              # double 7.8644350000000003
	.quad	0x40007ac258d5842b              # double 2.0599409999999998
	.quad	0x401664f0d844d014              # double 5.5985750000000003
	.quad	0x4003ef56eac86057              # double 2.4918650000000002
	.quad	0x3ff7e323bbc6eb0b              # double 1.4929539999999999
	.quad	0x4015f0b06c43f5f9              # double 5.4850479999999999
	.quad	0x3ff94430b178b370              # double 1.579148
	.quad	0x40089bef49cf56eb              # double 3.0761400000000001
	.quad	0x401bc10cb295e9e2              # double 6.9385250000000003
	.quad	0x3ff0282d7b634dad              # double 1.009809
	.quad	0x401e9acf312b1b37              # double 7.6511810000000002
	.quad	0x401fc03fb3743633              # double 7.9377430000000002
	.quad	0x4012ba1511dffc54              # double 4.6817209999999996
	.quad	0x3fe146bacf7446fa              # double 0.53988400000000003
	.quad	0x3ff70588a04d1202              # double 1.4388510000000001
	.quad	0x3ff12d330941c821              # double 1.0735349999999999
	.quad	0x400df65a9a804966              # double 3.7452899999999998
	.quad	0x40131f3cb3e5753a              # double 4.7805049999999998
	.quad	0x4014c5c422036007              # double 5.1931310000000002
	.quad	0x40201dc896dd26b7              # double 8.0581709999999998
	.quad	0x402082fe1da7b0b4              # double 8.2558450000000007
	.quad	0x4011dedd48451330              # double 4.4676410000000004
	.quad	0x3fe052fe3f359ff5              # double 0.510131
	.quad	0x40074df0d413122b              # double 2.9130569999999998
	.quad	0x3fdcd7cb2d905c03              # double 0.45067099999999999
	.quad	0x3ff2a37de939eadd              # double 1.1649149999999999
	.quad	0x4008415b9a5a89b9              # double 3.0319129999999999
	.quad	0x4019e7531db445ed              # double 6.4759029999999997
	.quad	0x4012649ecb31c21a              # double 4.5982620000000001
	.quad	0x400bd8ea7ce0fc2f              # double 3.4809160000000001
	.quad	0x40006a6fc58ab92c              # double 2.051971
	.quad	0x4005fdaa4fca42af              # double 2.7488600000000001
	.quad	0x401ab96030c23fab              # double 6.6810309999999999
	.quad	0x400a03c31df761cc              # double 3.2518370000000001
	.quad	0x40203d9d3458cd21              # double 8.1203400000000006
	.quad	0x4022d4f6be37de94              # double 9.4159450000000006
	.quad	0x401de81f10667f91              # double 7.4766810000000001
	.quad	0x401f471c970f7b9e              # double 7.819445
	.quad	0x401f6305100a393f              # double 7.846699
	.quad	0x401924eb13dfb0d5              # double 6.2860529999999999
	.quad	0x400f44228997c3d7              # double 3.9082690000000002
	.quad	0x40220b6ae7d566cf              # double 9.0222999999999995
	.quad	0x3fea1cc319c5a3e4              # double 0.81601100000000004
	.quad	0x401f267ad8e43244              # double 7.7875779999999999
	.quad	0x401dea400fba8827              # double 7.4787600000000003
	.quad	0x4016620ee8d10f52              # double 5.5957600000000003
	.quad	0x402098f5e41d4b6a              # double 8.2987509999999993
	.quad	0x400defb19e731d2e              # double 3.742038
	.quad	0x3ffd6c79702e6645              # double 1.838983
	.quad	0x402380e66cb10343              # double 9.7517580000000005
	.quad	0x400ac44284dfce31              # double 3.3458299999999999
	.quad	0x4013b55e28aa4335              # double 4.927117
	.quad	0x400e80fa15db3398              # double 3.8129770000000001
	.quad	0x4021df9096bb98c8              # double 8.9366500000000002
	.quad	0x4017f4d26fa3fcca              # double 5.9890840000000001
	.quad	0x401f0b04ee7c49fd              # double 7.7607609999999995
	.quad	0x3fe37125dd095af3              # double 0.60756200000000005
	.quad	0x4017290b84988095              # double 5.7900830000000001
	.quad	0x401488027d88c1db              # double 5.132822
	.quad	0x4018c927913e8145              # double 6.1964399999999999
	.quad	0x401ed3d5bab21816              # double 7.7068700000000003
	.quad	0x3ff1567caea747d8              # double 1.083615
	.quad	0x4019f005814940bc              # double 6.4843960000000003
	.quad	0x3ff2c7f349385836              # double 1.173816
	.quad	0x4020f029ae4f3344              # double 8.469068
	.quad	0x401216a11ec918e3              # double 4.5220989999999999
	.quad	0x3ffef5903a7546d4              # double 1.934952
	.quad	0x401ad3c925785f8d              # double 6.7068219999999998
	.quad	0x401c01ac57e23f25              # double 7.0016340000000001
	.quad	0x401f9e9424e59296              # double 7.9048619999999996
	.quad	0x400873037d63022e              # double 3.0561590000000001
	.quad	0x401711a60d4562e1              # double 5.7672350000000003
	.quad	0x4012ba7b4e54f7a9              # double 4.6821109999999999
	.quad	0x401d7efa615a8deb              # double 7.3740019999999999
	.quad	0x4006eba94bbe4474              # double 2.8650690000000001
	.quad	0x4018d2eec7c957cd              # double 6.2059889999999998
	.quad	0x401a207d4e09784f              # double 6.5317280000000002
	.quad	0x40182a1272c94b38              # double 6.041086
	.quad	0x40230790539fba45              # double 9.5147729999999999
	.quad	0x401818bef8ceb357              # double 6.0241660000000001
	.quad	0x40216f95b35b0bbf              # double 8.7179389999999994
	.quad	0x40202f6d97b30f8c              # double 8.0926329999999992
	.quad	0x3fcc0157eed45e92              # double 0.21879100000000001
	.quad	0x401c46f2e8c0485a              # double 7.069286
	.quad	0x4021f5ee568a5050              # double 8.9803339999999992
	.quad	0x40156b8b69552e30              # double 5.3550240000000002
	.quad	0x3ff0ebbba55d1c3b              # double 1.057552
	.quad	0x4021998d477bbf94              # double 8.799906
	.quad	0x4013007bbb62413e              # double 4.7504720000000002
	.quad	0x4021e6fb2aae2974              # double 8.9511350000000007
	.quad	0x4016eac647778dd6              # double 5.7292719999999999
	.quad	0x40138824d4cb9ecf              # double 4.8829529999999997
	.quad	0x401fd94dd72367e4              # double 7.9622109999999999
	.quad	0x401598f53c579f23              # double 5.3993729999999998
	.quad	0x4012057e670e2c13              # double 4.5053650000000003
	.quad	0x402326490a350d28              # double 9.5747759999999999
	.quad	0x40207ea704bc2763              # double 8.2473679999999998
	.quad	0x3ffcd0a350d2806b              # double 1.800937
	.quad	0x3fceb76709fa54c5              # double 0.23997199999999999
	.quad	0x401c03b4f6167232              # double 7.0036199999999997
	.quad	0x400d045803cd141a              # double 3.6271209999999998
	.quad	0x401186aca7935760              # double 4.3815179999999998
	.quad	0x3fd1e29f9ce8d973              # double 0.27945700000000001
	.quad	0x3fa573860999dcb5              # double 0.041896999999999997
	.quad	0x40230e3cb8173322              # double 9.5278069999999992
	.quad	0x40186601797cc3a0              # double 6.099615
	.quad	0x4002565ba6efc372              # double 2.2921670000000001
	.quad	0x401f9ccea28fe261              # double 7.9031320000000002
	.quad	0x3fd65668c2613900              # double 0.349024
	.quad	0x4005b66516db0dd8              # double 2.7140599999999999
	.quad	0x401f414488c60cbf              # double 7.8137379999999998
	.quad	0x4023d570a3d70a3d              # double 9.9168749999999992
	.quad	0x4020a19524bfd2e9              # double 8.3155909999999995
	.quad	0x4020983621fafc8b              # double 8.297288
	.quad	0x3ff2371b8aa00193              # double 1.1384540000000001
	.quad	0x40144e18efbb0e5e              # double 5.0762669999999996
	.quad	0x4023b9782d38476f              # double 9.8622449999999997
	.quad	0x3fff90614163779f              # double 1.9727490000000001
	.quad	0x3ffede44fa05143c              # double 1.929265
	.quad	0x401d3797460242d0              # double 7.3042879999999997
	.quad	0x40167b8a19c9d5a2              # double 5.6206440000000004
	.quad	0x40179b3e1437c569              # double 5.9016039999999998
	.quad	0x402377cb0c026cc2              # double 9.7339710000000004
	.quad	0x401cc73b42cc2d6b              # double 7.1945620000000003
	.quad	0x40183b6b2af14552              # double 6.0580259999999999
	.quad	0x3fdcbe40420f6f09              # double 0.44911200000000001
	.quad	0x40178ca70d1fa333              # double 5.8873559999999996
	.quad	0x3f7171e29b6b2af1              # double 0.0042589999999999998
	.quad	0x4022204e618ce2d2              # double 9.0630980000000001
	.quad	0x401c06312f4cf4a5              # double 7.0060469999999997
	.quad	0x40155b599aa60914              # double 5.3392090000000003
	.quad	0x401b2e17a02fb5d0              # double 6.7950119999999998
	.quad	0x4011fd4c33b53932              # double 4.4973609999999997
	.quad	0x401433a08398a655              # double 5.0504170000000004
	.quad	0x401aac51116a8b8f              # double 6.6682779999999999
	.quad	0x400220828c36da88              # double 2.2658740000000002
	.quad	0x401eb4bf0995aaf8              # double 7.6765100000000003
	.quad	0x401ea537e2c55c96              # double 7.661346
	.quad	0x40214f64f11b60af              # double 8.6550670000000007
	.quad	0x3fdea28bb0a2ca9b              # double 0.47867100000000001
	.quad	0x401b802c0a4a05de              # double 6.8751680000000004
	.quad	0x3fd702107b784663              # double 0.35950100000000001
	.quad	0x401102ca9ac36545              # double 4.252726
	.quad	0x4010b35fc3b4f616              # double 4.1751699999999996
	.quad	0x40057f4666ec9e23              # double 2.6871459999999998
	.quad	0x4010bfd04a2fcefb              # double 4.1873180000000003
	.quad	0x4008a2ac322291fb              # double 3.0794299999999999
	.quad	0x400bc085b18548aa              # double 3.4690050000000001
	.quad	0x401e54d37c1376d5              # double 7.5828379999999997
	.quad	0x400c5963992c8c50              # double 3.543647
	.quad	0x4018889613d31b9b              # double 6.1333849999999996
	.quad	0x401d94a66559f6ec              # double 7.3951659999999997
	.quad	0x40099ffac1d29dc7              # double 3.2031149999999999
	.quad	0x401b30a2014727dd              # double 6.7974930000000002
	.quad	0x3ff896db0dd82fd7              # double 1.5368299999999999
	.quad	0x40192600f345069a              # double 6.2871129999999997
	.quad	0x3fee882f0e0a84be              # double 0.95412399999999997
	.quad	0x402370198f1d3ed5              # double 9.7189449999999997
	.quad	0x4014312d3415b142              # double 5.0480239999999998
	.quad	0x4023460cbf2b239a              # double 9.6368159999999996
	.quad	0x4015544b6e935b92              # double 5.332319
	.quad	0x400e65cf67b1c001              # double 3.799712
	.quad	0x40020dde7a743a64              # double 2.2567719999999998
	.quad	0x3ffe6a52ef911cf3              # double 1.9009579999999999
	.quad	0x3fdf2089e34330d7              # double 0.48636099999999999
	.quad	0x4015d3fe5c91d14e              # double 5.4570249999999998
	.quad	0x3ffc65742dcf4624              # double 1.774769
	.quad	0x3ff2672fba01eeee              # double 1.1501920000000001
	.quad	0x40137f05ea24cc68              # double 4.8740459999999999
	.quad	0x4009e5c70435efa6              # double 3.237196
	.quad	0x3feb2b92c061847f              # double 0.84906899999999996
	.quad	0x4002ad538ac18f82              # double 2.334632
	.quad	0x4015f167a95c853c              # double 5.4857469999999999
	.quad	0x400ba49c2c1b10fd              # double 3.4553759999999998
	.quad	0x40210b91d57ff9b5              # double 8.5225969999999993
	.quad	0x401857e5a78f25a2              # double 6.0858369999999997
	.quad	0x40190772d5e071c5              # double 6.2572739999999998
	.quad	0x4021240980b24207              # double 8.5703849999999999
	.quad	0x402223f11f926c7f              # double 9.0701990000000006
	.quad	0x40203247cb70ac3b              # double 8.0982040000000008
	.quad	0x40166efc371da37f              # double 5.608384
	.quad	0x40070564f97edc7f              # double 2.877634
	.quad	0x401cda9cdc443915              # double 7.213489
	.quad	0x401ffb98c7e28241              # double 7.9957000000000002
	.quad	0x40133f92af9a8cdf              # double 4.8120830000000003
	.quad	0x4016b35935fc3b4f              # double 5.6751449999999997
	.quad	0x400a0c3c9eecbfb1              # double 3.2559749999999998
	.quad	0x3fb1552e2fbe33ad              # double 0.067706000000000002
	.quad	0x3fea209aaa3ad18d              # double 0.81647999999999998
	.quad	0x401faf4a98aa8651              # double 7.921183
	.quad	0x4020bceee0f3cb3e              # double 8.3690099999999994
	.quad	0x400c2d0e56041893              # double 3.5219999999999998
	.quad	0x401b9cd9a52263d8              # double 6.9031739999999999
	.quad	0x400d358afc47e49b              # double 3.6511439999999999
	.quad	0x4020a193b3a68b1a              # double 8.3155800000000006
	.quad	0x3ff02f405f6ba062              # double 1.011536
	.quad	0x3ffaf22e1ac57e24              # double 1.684126
	.quad	0x3fdaf9e7b80a9de9              # double 0.42150300000000002
	.quad	0x3ff6c74fb549f948              # double 1.4236599999999999
	.quad	0x401b783cafb3b752              # double 6.8674189999999999
	.quad	0x400be9478c868ba0              # double 3.4889060000000001
	.quad	0x4012840314877681              # double 4.6289179999999996
	.quad	0x4020fa055757d5aa              # double 8.4883220000000001
	.quad	0x3ffec4ef88b97785              # double 1.9230799999999999
	.quad	0x401d963800218def              # double 7.3966979999999998
	.quad	0x401b86bdf4c2b51c              # double 6.8815840000000001
	.quad	0x400d39b5e95b78cd              # double 3.6531790000000002
	.quad	0x3fee53d4280ae105              # double 0.94773300000000005
	.quad	0x3fd76d3f9e7b80aa              # double 0.36604300000000001
	.quad	0x401beab7dc7abfba              # double 6.9792170000000002
	.quad	0x3ff139bbadc0980b              # double 1.076595
	.quad	0x402283c6a7ef9db2              # double 9.2573749999999997
	.quad	0x3ff7db5b70691ea8              # double 1.4910540000000001
	.quad	0x4021765109070fbf              # double 8.7310870000000005
	.quad	0x4016e2834d26fa40              # double 5.7212040000000002
	.quad	0x401c277d955714ba              # double 7.0385650000000002
	.quad	0x3fe3ce91c8eabffd              # double 0.61896600000000002
	.quad	0x4020797a67a52ac7              # double 8.2372619999999994
	.quad	0x40039321e603d578              # double 2.4468420000000002
	.quad	0x401b677d955714ba              # double 6.8510650000000002
	.quad	0x4013f0d306a2b170              # double 4.9851799999999997
	.quad	0x40155a37ef5a964f              # double 5.3381040000000004
	.quad	0x401dd365881a1555              # double 7.456442
	.quad	0x402096ca686e7e63              # double 8.2945130000000002
	.quad	0x401bc393250b5244              # double 6.9409910000000004
	.quad	0x401254ccee5abc0e              # double 4.5828129999999998
	.quad	0x3fcfe37585be1a82              # double 0.24912899999999999
	.quad	0x4015773471f79421              # double 5.3664110000000003
	.quad	0x3fe5acf0f9d2bf55              # double 0.67736099999999999
	.quad	0x3ff39a964e8b7e4e              # double 1.225241
	.quad	0x40169eca25529fe0              # double 5.655068
	.quad	0x4020db018611fd59              # double 8.4277460000000008
	.quad	0x402397d1fe64f54d              # double 9.7965239999999997
	.quad	0x401fccd898b2e9cd              # double 7.9500450000000002
	.quad	0x401b9ceb78897e99              # double 6.9032419999999997
	.quad	0x402077b3d8e00086              # double 8.2337939999999996
	.quad	0x4003d6694898f606              # double 2.4796930000000001
	.quad	0x400aad1e96c3fc44              # double 3.3345310000000001
	.quad	0x4011c2089e34330d              # double 4.4394859999999996
	.quad	0x40124bead4f5903a              # double 4.5741379999999996
	.quad	0x3ffe3fac1d29dc72              # double 1.8905449999999999
	.quad	0x4022895aaf78feef              # double 9.2682699999999993
	.quad	0x3ff2b8140dd3fe19              # double 1.1699409999999999
	.quad	0x40104856605ee569              # double 4.0706420000000003
	.quad	0x401d92e7b3d8e001              # double 7.3934620000000004
	.quad	0x400fddc8b86b15f9              # double 3.9832930000000002
	.quad	0x3fdeebd4cfd08d4c              # double 0.48314400000000002
	.quad	0x40155f4adbc664d4              # double 5.3430590000000002
	.quad	0x4017128dc981beb2              # double 5.7681190000000004
	.quad	0x4017efc58ab92c06              # double 5.9841519999999999
	.quad	0x4014682d38476f2a              # double 5.1017349999999997
	.quad	0x3fda1886df82b1f7              # double 0.40774700000000003
	.quad	0x40228f95d4e8fb01              # double 9.2804400000000005
	.quad	0x400a3f15a4acf313              # double 3.2808030000000001
	.quad	0x401a04039abf3387              # double 6.5039199999999999
	.quad	0x401927fa5d28d003              # double 6.2890410000000001
	.quad	0x400fbc02afdda8bd              # double 3.9668019999999999
	.quad	0x401a1aac1094a2ba              # double 6.5260470000000002
	.quad	0x3ffa20fd3b29a1ba              # double 1.633054
	.quad	0x401209b13165d399              # double 4.5094649999999996
	.quad	0x4018f107314ca926              # double 6.235379
	.quad	0x3ff7e8c47a17f413              # double 1.4943280000000001
	.quad	0x4016c15d2d01c0ca              # double 5.6888319999999997
	.quad	0x4013f8b545c78a6e              # double 4.9928790000000003
	.quad	0x400b516872b020c5              # double 3.4147500000000002
	.quad	0x4020ce08aefb2aae              # double 8.4024099999999997
	.quad	0x4022f76e3f78bbd4              # double 9.4832630000000008
	.quad	0x3ff463ca7503b81b              # double 1.2743629999999999
	.quad	0x4020225d074213a1              # double 8.0671160000000004
	.quad	0x4005d67ba237cdcd              # double 2.7297280000000002
	.quad	0x40110a209aaa3ad2              # double 4.2598900000000004
	.quad	0x3ff2d66490a350d3              # double 1.1773420000000001
	.quad	0x40235dda059a73b4              # double 9.6833039999999996
	.quad	0x40110a8b8f14db59              # double 4.2602979999999997
	.quad	0x4013e9991361dc94              # double 4.9781230000000001
	.quad	0x4016d84d76ab5808              # double 5.711233
	.quad	0x401d6823422467be              # double 7.3516969999999997
	.quad	0x4011aa9da597d49d              # double 4.4166169999999996
	.quad	0x3fd4ac29bf162ae5              # double 0.32300800000000002
	.quad	0x400c0b851eb851ec              # double 3.5056250000000002
	.quad	0x401ff7d7c2ca148c              # double 7.9920340000000003
	.quad	0x4012a19da9c99286              # double 4.6578280000000003
	.quad	0x4000083b1d0c8041              # double 2.004019
	.quad	0x4002e7418d6909af              # double 2.3629180000000001
	.quad	0x4005624e59296702              # double 2.6730010000000002
	.quad	0x4014bd7d7c2ca149              # double 5.1850490000000002
	.quad	0x401f09e7b80a9de9              # double 7.7596730000000002
	.quad	0x4015a5011904b3c4              # double 5.4111370000000001
	.quad	0x3fcb0c804102ff8f              # double 0.21131900000000001
	.quad	0x400c464883fd5022              # double 3.5343179999999998
	.quad	0x4016f7d84901d191              # double 5.7420359999999997
	.quad	0x4020bff327aa68f5              # double 8.3749020000000005
	.quad	0x401b9af31b152f3c              # double 6.9013179999999998
	.quad	0x401f04a59c065b64              # double 7.7545380000000002
	.quad	0x402306eb702602c9              # double 9.5135149999999999
	.quad	0x401dc882f0e0a84c              # double 7.4458120000000001
	.quad	0x3ff4e79aae6c8f75              # double 1.3065439999999999
	.quad	0x3ff784662bae03b4              # double 1.469824
	.quad	0x4007dd894812be49              # double 2.9831720000000002
	.quad	0x40122389f83be660              # double 4.5347059999999999
	.quad	0x401e79635610adcd              # double 7.6185429999999998
	.quad	0x4021be295208e150              # double 8.8714089999999999
	.quad	0x400b4dc5d6388659              # double 3.4129749999999999
	.quad	0x4022596d4c33b539              # double 9.1746619999999997
	.quad	0x400c42834d26fa40              # double 3.5324770000000001
	.quad	0x400008b97785729b              # double 2.0042599999999999
	.quad	0x401c059791819d24              # double 7.0054610000000004
	.quad	0x400aec33b5393251              # double 3.3653330000000001
	.quad	0x3fe00bc59b8023a7              # double 0.50143700000000002
	.quad	0x3ff43c9363f572de              # double 1.2647889999999999
	.quad	0x401531b9f98b71b9              # double 5.2985610000000003
	.quad	0x401541272c94b381              # double 5.3136260000000002
	.quad	0x400c21187e7c06e2              # double 3.5161600000000002
	.quad	0x400929a9973d9ec7              # double 3.145343
	.quad	0x40130bb98c7e2824              # double 4.76145
	.quad	0x400ce2c01e68a0d3              # double 3.6107179999999999
	.quad	0x401c582491afc04d              # double 7.0860770000000004
	.quad	0x4012c2339c0ebee0              # double 4.6896500000000003
	.quad	0x3ffc3296f6512a95              # double 1.762351
	.quad	0x401788f8a4c1ebc8              # double 5.8837609999999998
	.quad	0x3f9c9bc77143393b              # double 0.027938000000000001
	.quad	0x40181281fd9ba1b2              # double 6.0180740000000004
	.quad	0x401dac26138fffbd              # double 7.4181140000000001
	.quad	0x401db96744b2b778              # double 7.4310580000000001
	.quad	0x40217d94f26aec07              # double 8.7452769999999997
	.quad	0x401cefaa4766c6de              # double 7.2340479999999996
	.quad	0x400be42396073de2              # double 3.4863960000000001
	.quad	0x401922135daad602              # double 6.283277
	.quad	0x400e653b0813cab8              # double 3.7994289999999999
	.quad	0x402247f43419e300              # double 9.1405349999999999
	.quad	0x3fac46950fc71d60              # double 0.055225999999999997
	.quad	0x40234520afa2f05a              # double 9.6350149999999992
	.quad	0x3ff8b3fb7a5f41af              # double 1.543941
	.quad	0x401f77e52157689d              # double 7.8670850000000003
	.quad	0x40009a2834d26fa4              # double 2.075272
	.quad	0x40227a7cbf6e3f79              # double 9.2392330000000005
	.quad	0x3ffd06950fc71d60              # double 1.8141069999999999
	.quad	0x4006e675147f1306              # double 2.8625280000000002
	.quad	0x40206086594af4f1              # double 8.1885250000000003
	.quad	0x401f009bb6aa4b99              # double 7.7505940000000004
	.quad	0x400319c17225b74a              # double 2.3875760000000001
	.quad	0x3f8adfb506dd69d3              # double 0.013122
	.quad	0x4022d5b70691ea79              # double 9.4174120000000005
	.quad	0x3ffa014f8b588e37              # double 1.6253200000000001
	.quad	0x401f3efbf401c4fc              # double 7.8115079999999999
	.quad	0x4011d9b5e95b78cd              # double 4.4626080000000004
	.quad	0x4015c1a719b4dcec              # double 5.439114
	.quad	0x400364a16a487336              # double 2.4241359999999998
	.quad	0x4021d2b713272431              # double 8.9115529999999996
	.quad	0x40152686a4ca4f44              # double 5.287623
	.quad	0x40170ee3d5fdcdf7              # double 5.7645410000000004
	.quad	0x4020a79dd3bafd97              # double 8.3273759999999992
	.quad	0x4010359b3d07c84b              # double 4.0523499999999997
	.quad	0x4020fa41a261bf38              # double 8.4887820000000005
	.quad	0x401bc0a45d41fa76              # double 6.9381269999999997
	.quad	0x400a0f19934efcbd              # double 3.2573729999999999
	.quad	0x401e1cf56eac8605              # double 7.5282799999999996
	.quad	0x401183cd9a52263e              # double 4.3787140000000004
	.quad	0x40237524399b2c41              # double 9.7287920000000003
	.quad	0x4010395a6c5d206d              # double 4.0560090000000004
	.quad	0x401adcd67fd3f5b6              # double 6.715662
	.quad	0x3fff0c5a8155d5f5              # double 1.9405159999999999
	.quad	0x3ff551676640a6b9              # double 1.3323739999999999
	.quad	0x40113cd29131ec0b              # double 4.3093969999999997
	.quad	0x40208433f85510d4              # double 8.2582090000000007
	.quad	0x3ffd5a5daf07bfe8              # double 1.834562
	.quad	0x4013d0856e696a27              # double 4.9536340000000001
	.quad	0x402355bd512ec6bd              # double 9.6674600000000001
	.quad	0x400ca79357603926              # double 3.5818240000000001
	.quad	0x401cf44241c3efae              # double 7.2385339999999996
	.quad	0x40139ae3608d0892              # double 4.9012580000000003
	.quad	0x402109c68ec52a41              # double 8.5190929999999998
	.quad	0x402142b7995ee137              # double 8.6303070000000002
	.quad	0x402039d4d834091c              # double 8.1129519999999999
	.quad	0x4012520afa2f05a7              # double 4.58012
	.quad	0x4021637aa25d8d7a              # double 8.6942950000000003
	.quad	0x40027b7a5f41aef7              # double 2.310292
	.quad	0x400963dccea28fe2              # double 3.1737609999999998
	.quad	0x401315942917507f              # double 4.7710730000000003
	.quad	0x402219ff92f2b66b              # double 9.0507779999999993
	.quad	0x401413dd11be6e65              # double 5.0193979999999998
	.quad	0x401c7ff69014b59a              # double 7.1249640000000003
	.quad	0x402171c347e8ccde              # double 8.7221930000000008
	.quad	0x3ff206583e8576cd              # double 1.126549
	.quad	0x3ff5b9df548ecd8e              # double 1.3578790000000001
	.quad	0x401348a65492ff4c              # double 4.8209470000000003
	.quad	0x4012c20ddc619546              # double 4.6895059999999997
	.quad	0x401a5a9478c868ba              # double 6.588457
	.quad	0x4010ca033e78e193              # double 4.1972779999999998
	.quad	0x401385c03361565c              # double 4.8806159999999998
	.quad	0x401b5b7baecd0785              # double 6.8393389999999998
	.quad	0x4010ba5a038194c0              # double 4.1819839999999999
	.quad	0x40081a5daf07bfe8              # double 3.0128740000000001
	.quad	0x4015b8f6cefed634              # double 5.4306289999999997
	.quad	0x3fe739d5e4a38327              # double 0.72580999999999996
	.quad	0x3ff774eebf65dbfd              # double 1.466048
	.quad	0x400e068900c521de              # double 3.7531910000000002
	.quad	0x401f949235f80991              # double 7.8950889999999995
	.quad	0x400659e3864cb5bb              # double 2.7938909999999999
	.quad	0x401c80d0678c0054              # double 7.1257950000000001
	.quad	0x40047c32ebe596c8              # double 2.5606439999999999
	.quad	0x4023a0578e5c4eb5              # double 9.8131679999999992
	.quad	0x401bdc1df3300de5              # double 6.9649580000000002
	.quad	0x4022ad02ababead5              # double 9.3379110000000001
	.quad	0x402335992428d435              # double 9.6046840000000006
	.quad	0x3ff5637ef5a964e9              # double 1.3367910000000001
	.quad	0x4015a05d52c16df4              # double 5.406606
	.quad	0x401caf6c69b5a640              # double 7.1713120000000004
	.quad	0x3ffd9d701d9f4d38              # double 1.8509370000000001
	.quad	0x401c37f06705c897              # double 7.0546280000000001
	.quad	0x4010ebb40b34e768              # double 4.2301789999999997
	.quad	0x4017cae5bc87db2b              # double 5.9481419999999998
	.quad	0x402258f648c7192f              # double 9.1737540000000006
	.quad	0x3ff1c6e08f217093              # double 1.111054
	.quad	0x3ff71f7c6759ab6d              # double 1.445187
	.quad	0x401fb0a45d41fa76              # double 7.9225019999999997
	.quad	0x40166b0ff10ecb75              # double 5.6045530000000001
	.quad	0x40221c8adeebb342              # double 9.0557470000000002
	.quad	0x401525696e58a32f              # double 5.2865349999999998
	.quad	0x401959afe1da7b0b              # double 6.3375849999999998
	.quad	0x40217569d30270f4              # double 8.7293230000000008
	.quad	0x3febb9b456b441bc              # double 0.86641900000000005
	.quad	0x40134d74d594f26b              # double 4.8256410000000001
	.quad	0x40188111ada76d98              # double 6.1260440000000003
	.quad	0x4022df774aba3876              # double 9.4364570000000008
	.quad	0x40066fdc1615ebfb              # double 2.8046190000000002
	.quad	0x400d455c0fcb4f1e              # double 3.6588669999999999
	.quad	0x40082f01754b05b8              # double 3.0229520000000001
	.quad	0x40158ff7164c729f              # double 5.3905909999999997
	.quad	0x3ff7b487fcb923a3              # double 1.4815750000000001
	.quad	0x3ffcf486f049a997              # double 1.8096989999999999
	.quad	0x3ffa655e28aa4335              # double 1.649748
	.quad	0x401b8be09bb6aa4c              # double 6.8865990000000004
	.quad	0x4008549f0e4da09d              # double 3.0413190000000001
	.quad	0x40142b2b777d0f1f              # double 5.0421579999999997
	.quad	0x400816e47dc37a3e              # double 3.0111780000000001
	.quad	0x401bea2c669057d1              # double 6.9786849999999996
	.quad	0x400d21ea35935fc4              # double 3.6415600000000001
	.quad	0x3fecca925fe974a3              # double 0.89972799999999997
	.quad	0x4021ba98676a7265              # double 8.8644440000000007
	.quad	0x4013b79ee02a77a3              # double 4.9293170000000002
	.quad	0x40200fab7564302b              # double 8.0306049999999995
	.quad	0x40166f8ad2567989              # double 5.6089279999999997
	.quad	0x402325f4a1272c95              # double 9.5741320000000005
	.quad	0x4022db925bb7b6bb              # double 9.4288509999999998
	.quad	0x3ff7603f705857b0              # double 1.460998
	.quad	0x4020b2ca36199781              # double 8.3491990000000005
	.quad	0x3fb9186db50f40e6              # double 0.098029000000000005
	.quad	0x3ffe63b688bda943              # double 1.8993439999999999
	.quad	0x400ff88f42fe8251              # double 3.9963669999999998
	.quad	0x40047ece5710880e              # double 2.5619170000000002
	.quad	0x4012cfe7e1fc08fa              # double 4.7030329999999996
	.quad	0x3fefd16db0dd82fd              # double 0.99431499999999994
	.quad	0x3fe626f1dc50ce4f              # double 0.69225400000000004
	.quad	0x4020caa64c2f837b              # double 8.3957999999999995
	.quad	0x40233de785b5b707              # double 9.6209070000000007
	.quad	0x40235d100a393ee6              # double 9.6817630000000001
	.quad	0x4002fe4bcad9ad86              # double 2.3741680000000001
	.quad	0x401b81e42e126202              # double 6.8768469999999997
	.quad	0x400c3a2c669057d1              # double 3.5284049999999998
	.quad	0x4023078726d04e62              # double 9.5147030000000008
	.quad	0x3ff2057e23f24d90              # double 1.126341
	.quad	0x4014e9774256bca5              # double 5.2279939999999998
	.quad	0x400b22f512663411              # double 3.3920689999999998
	.quad	0x3feb013660e51d26              # double 0.84389800000000004
	.quad	0x4004c804102ff8ec              # double 2.597664
	.quad	0x3ff51ab29e4d5d81              # double 1.319018
	.quad	0x3febc9c6f36ef805              # double 0.86838099999999996
	.quad	0x3ffa6ccd530489d2              # double 1.6515629999999999
	.quad	0x401c2348f53c579f              # double 7.0344579999999999
	.quad	0x3ffd2278d0cc35ce              # double 1.820916
	.quad	0x401acd8e0008637c              # double 6.7007370000000002
	.quad	0x4020750e34762952              # double 8.2286239999999999
	.quad	0x401252e8c0485a0c              # double 4.5809660000000001
	.quad	0x4020e5ab191dde37              # double 8.4485709999999994
	.quad	0x40204423d9231c65              # double 8.1330860000000005
	.quad	0x401f0737da61e0c6              # double 7.7570490000000003
	.quad	0x4020d8eb0318b934              # double 8.4236679999999992
	.quad	0x40137314013ec461              # double 4.8623810000000001
	.quad	0x401e70cb6c7a7c9e              # double 7.6101510000000001
	.quad	0x3feb4c729f59ccfb              # double 0.85308200000000001
	.quad	0x4022792a51e321a3              # double 9.2366510000000002
	.quad	0x4012997e56473472              # double 4.649896
	.quad	0x401299e3864cb5bb              # double 4.6502819999999998
	.quad	0x4021aa363b256ffc              # double 8.8324449999999998
	.quad	0x4015e40b34e7685a              # double 5.4726990000000004
	.quad	0x4020e75afaf85943              # double 8.4518660000000008
	.quad	0x4000007bbb62413e              # double 2.0002360000000001
	.quad	0x40153a08bfc2224f              # double 5.3066740000000001
	.quad	0x40143c5fbf83382e              # double 5.0589589999999998
	.quad	0x40133a9cdc443915              # double 4.807239
	.quad	0x3fe2728848387df6              # double 0.57648100000000002
	.quad	0x3ffbcae1049235f8              # double 1.737031
	.quad	0x401ff03148776816              # double 7.9845629999999996
	.quad	0x40222eb9a176ddad              # double 9.0912600000000001
	.quad	0x400fd5f45e0b4e12              # double 3.9794700000000001
	.quad	0x40096770bd017daf              # double 3.1755080000000002
	.quad	0x3fe88c5004fb1184              # double 0.76712800000000003
	.quad	0x401e24face67d780              # double 7.5361130000000003
	.quad	0x4000d51372a38b8b              # double 2.1040410000000001
	.quad	0x402195a1a93293d1              # double 8.792249
	.quad	0x401d3563ed0f6274              # double 7.3021390000000004
	.quad	0x401ce0cf5b1c8649              # double 7.2195410000000004
	.quad	0x3feb83ea704bc276              # double 0.85985299999999998
	.quad	0x3ff9cad362e90364              # double 1.612018
	.quad	0x400d93660e51d25b              # double 3.6969720000000001
	.quad	0x4021f5592d98bf7f              # double 8.979196
	.quad	0x401834bb1af3a14d              # double 6.0514950000000001
	.quad	0x400854d9c6b0531a              # double 3.0414310000000002
	.quad	0x401fa2db1e9f2778              # double 7.9090389999999999
	.quad	0x4008008637bd05af              # double 3.0002559999999998
	.quad	0x402277b2031ceaf2              # double 9.2337799999999994
	.quad	0x3fedc9d16fc9bc77              # double 0.93088599999999999
	.quad	0x4013cbd76ee73e68              # double 4.9490639999999999
	.quad	0x401c42e5de15ca6d              # double 7.0653300000000003
	.quad	0x402119f2dc2b0ea2              # double 8.5506810000000009
	.quad	0x3fd6485a0be51090              # double 0.34816599999999998
	.quad	0x4001bc7c5260f5e4              # double 2.2170339999999999
	.quad	0x400a2f9f44d44567              # double 3.273253
	.quad	0x402301ddc1e7967d              # double 9.5036450000000005
	.quad	0x401e0fd694ccab3f              # double 7.5154670000000001
	.quad	0x400843621fafc8b0              # double 3.032902
	.quad	0x4020df3f0fe047d4              # double 8.4360280000000003
	.quad	0x3fcbd3ed527e5215              # double 0.21740499999999999
	.quad	0x3fee3c7f77af6406              # double 0.94488499999999997
	.quad	0x401d2e04c0592104              # double 7.2949400000000004
	.quad	0x4021869d30270f39              # double 8.7629180000000009
	.quad	0x3ff0cb5675579af2              # double 1.0496430000000001
	.quad	0x3ff11d0203e63e8e              # double 1.069582
	.quad	0x4015db04ab606b7b              # double 5.4638850000000003
	.quad	0x401b74d61b2a27f2              # double 6.8640980000000003
	.quad	0x40061d55e6bc621b              # double 2.7643239999999998
	.quad	0x3ff35fc2a8869c67              # double 1.210879
	.quad	0x40163a69be09bb6b              # double 5.5570440000000003
	.quad	0x400cfc9d5a187a4a              # double 3.6233469999999999
	.quad	0x40027c4b09e98dce              # double 2.3106900000000001
	.quad	0x401c4b41bfbdf091              # double 7.073493
	.quad	0x40232bf9830e3cda              # double 9.5858880000000006
	.quad	0x3fbf5fc3b4f61672              # double 0.122555
	.quad	0x3fb41cb46bacf744              # double 0.078562999999999994
	.quad	0x40212489b0ee49f5              # double 8.5713629999999998
	.quad	0x3fe15080b673c4f4              # double 0.54107700000000003
	.quad	0x401c907fed20296b              # double 7.1411129999999998
	.quad	0x4015a8c75c4a83b2              # double 5.4148230000000002
	.quad	0x401989d99029ae4f              # double 6.3846189999999998
	.quad	0x401e766b1e5c0b9a              # double 7.6156430000000004
	.quad	0x40211b91b3f20a74              # double 8.553846
	.quad	0x400d55d249e44fa0              # double 3.6669049999999999
	.quad	0x4022490ff9724745              # double 9.1426999999999996
	.quad	0x402257221858bc5a              # double 9.1701820000000005
	.quad	0x40201fc6fbd273d6              # double 8.0620650000000005
	.quad	0x401078765ba6efc3              # double 4.1176389999999996
	.quad	0x4007eef240fa9c13              # double 2.991673
	.quad	0x3ff3f704790b8499              # double 1.2478070000000001
	.quad	0x40238a1ec4e7253e              # double 9.7697660000000006
	.quad	0x40165b499d0203e6              # double 5.5891479999999998
	.quad	0x4019f887a8d64d7f              # double 6.4927049999999999
	.quad	0x4023f63ffef39086              # double 9.9809570000000001
	.quad	0x401c1962cfd8f0c7              # double 7.0247909999999996
	.quad	0x401357c286f8ad25              # double 4.8357029999999996
	.quad	0x400fe544fe36d224              # double 3.9869479999999999
	.quad	0x4020ae42bf9830e4              # double 8.3403530000000003
	.quad	0x401ad846e8f29d41              # double 6.7112080000000001
	.quad	0x400b2364388ebcc7              # double 3.3922810000000001
	.quad	0x401bb0a02b841249              # double 6.9224860000000001
	.quad	0x401ffecbb7f9d6f1              # double 7.9988239999999999
	.quad	0x40004b5e529bae47              # double 2.0368010000000001
	.quad	0x401b648f53c579f2              # double 6.8482029999999998
	.quad	0x4012597b7414a4d3              # double 4.5873850000000003
	.quad	0x401091c8eabffcdb              # double 4.1423680000000003
	.quad	0x400d690470a808c8              # double 3.6762779999999999
	.quad	0x40236f6965f5275f              # double 9.7176010000000001
	.quad	0x4010846e8f29d40f              # double 4.1293280000000001
	.quad	0x3ffeb5a1016ce78a              # double 1.919343
	.quad	0x401eee6ddf00abf7              # double 7.7328409999999996
	.quad	0x3fe80bb906466b1e              # double 0.75143099999999996
	.quad	0x3fc91b691212513b              # double 0.19614899999999999
	.quad	0x4013f801b4352652              # double 4.9921939999999996
	.quad	0x400a6188b11409a2              # double 3.2976239999999999
	.quad	0x4016844955b4677b              # double 5.6291859999999998
	.quad	0x4020b5b5b70691ea              # double 8.3549019999999992
	.quad	0x4023aba55d1c3ac9              # double 9.8352459999999997
	.quad	0x40200004534bd76f              # double 8.0000330000000002
	.quad	0x40175045fe111277              # double 5.828392
	.quad	0x40179975afaf8594              # double 5.8998629999999999
	.quad	0x40227f5d9a0f0a5f              # double 9.248761
	.quad	0x401ddd8f0c77dd87              # double 7.4663659999999998
	.quad	0x4023490d7be9856a              # double 9.6426809999999996
	.quad	0x400a88a7a41e57da              # double 3.3167260000000001
	.quad	0x401c4775fb2edfe7              # double 7.0697859999999997
	.quad	0x40201ae5ffa3b9ae              # double 8.0525359999999999
	.quad	0x401b13e29307af21              # double 6.7694190000000001
	.quad	0x4003f801b4352652              # double 2.4960969999999998
	.quad	0x4021cb4938583622              # double 8.897043
	.quad	0x4003a581cf7878b8              # double 2.4558140000000002
	.quad	0x3fd4517614595358              # double 0.31747199999999998
	.quad	0x400e15ff609dcf89              # double 3.7607409999999999
	.quad	0x4001c5f9df548ece              # double 2.2216680000000002
	.quad	0x4013f9bb6aa4b988              # double 4.9938789999999997
	.quad	0x401321a4bdba0a52              # double 4.7828549999999996
	.quad	0x402175d851654d62              # double 8.7301660000000005
	.quad	0x400a95feda661284              # double 3.3232400000000002
	.quad	0x401b7374bc6a7efa              # double 6.8627500000000001
	.quad	0x40150332f01754b0              # double 5.2531239999999997
	.quad	0x401a38b47c73eee5              # double 6.5553759999999999
	.quad	0x401bd667b5f1bef5              # double 6.9593800000000003
	.quad	0x4002c8d7e02645e5              # double 2.348068
	.quad	0x4015b9f90539fba4              # double 5.4316139999999997
	.quad	0x3ffe4c88a47ecfea              # double 1.8936850000000001
	.quad	0x400c0dedaec4a409              # double 3.5068009999999998
	.quad	0x401a29728a611772              # double 6.540476
	.quad	0x3feef41d084e831b              # double 0.96729900000000001
	.quad	0x4001b392189bd838              # double 2.2126809999999999
	.quad	0x4021c2a3ad18d25f              # double 8.8801550000000002
	.quad	0x4019dbd87b56b873              # double 6.4646929999999996
	.quad	0x400b11a32b12d341              # double 3.3836119999999998
	.quad	0x4016150e779207d5              # double 5.5205630000000001
	.quad	0x3fe4b4f82f512663              # double 0.64709099999999997
	.quad	0x40233164840e171a              # double 9.5964700000000001
	.quad	0x4005ec282c6ef3d4              # double 2.7403110000000002
	.quad	0x40164543aeab7996              # double 5.5676410000000001
	.quad	0x400f41a79fec99f2              # double 3.9070580000000001
	.quad	0x4000db60285ec3db              # double 2.1071170000000001
	.quad	0x3ff07c30d306a2b1              # double 1.0303199999999999
	.quad	0x401b78626f60e0eb              # double 6.8675629999999996
	.quad	0x400d6d2b2bfdb4cc              # double 3.6783049999999999
	.quad	0x401ab5a63f9a49c3              # double 6.6773920000000002
	.quad	0x40051d2178f68be3              # double 2.639224
	.quad	0x4017ac7325918a01              # double 5.9184080000000003
	.quad	0x4021cc5692b3cc4b              # double 8.8990980000000004
	.quad	0x402319f2dc2b0ea2              # double 9.5506810000000009
	.quad	0x4012d9817b95a294              # double 4.7124079999999999
	.quad	0x400ca3fc43b2dd37              # double 3.5800709999999998
	.quad	0x4022edae1cde5d18              # double 9.4642189999999999
	.quad	0x400a667620ee8d11              # double 3.30003
	.quad	0x401d0b80a9de8b3b              # double 7.2612329999999998
	.quad	0x401ab938151a4378              # double 6.6808779999999999
	.quad	0x4019c3a7546d3f9e              # double 6.4410679999999996
	.quad	0x4011318266772d5e              # double 4.298349
	.quad	0x4006f8dd616f86a1              # double 2.8715160000000002
	.quad	0x40130bc1acde19fc              # double 4.7614809999999999
	.quad	0x402168d2806af46b              # double 8.7047310000000007
	.quad	0x40088f32bdc26dce              # double 3.0699209999999999
	.quad	0x40106ac29bf162ae              # double 4.1042579999999997
	.quad	0x3ff14a925fe974a3              # double 1.0807059999999999
	.quad	0x3f8e44fa05143bf7              # double 0.01478
	.quad	0x3fe0ef9767903212              # double 0.52924700000000002
	.quad	0x401b63f63c31df76              # double 6.8476189999999999
	.quad	0x40067d5a9eb2074f              # double 2.8112080000000002
	.quad	0x4012bbae89eba6ad              # double 4.6832830000000003
	.quad	0x400e76861e92923e              # double 3.8078729999999998
	.quad	0x400dd813879c4114              # double 3.7305060000000001
	.quad	0x40122f84449dbec2              # double 4.5464029999999998
	.quad	0x3fee74538ef34d6a              # double 0.95169999999999999
	.quad	0x401dfbb517a46174              # double 7.4958080000000002
	.quad	0x3ff1af6b5d462c34              # double 1.1053269999999999
	.quad	0x400fe5fbf83382e4              # double 3.9872969999999999
	.quad	0x3fc0876e1deacc92              # double 0.129133
	.quad	0x3ff1a7503b81b64e              # double 1.103348
	.quad	0x3ff6b9a06a6e32e4              # double 1.4203190000000001
	.quad	0x4011b2ea960b6fa0              # double 4.4247230000000002
	.quad	0x400587182235b4ee              # double 2.6909640000000001
	.quad	0x401fa2f123c42a67              # double 7.9091230000000001
	.quad	0x4020ee03925bb7b7              # double 8.4648710000000005
	.quad	0x3fefaee631f8a090              # double 0.99009999999999998
	.quad	0x401bb8d8ec95bff0              # double 6.9305149999999998
	.quad	0x401815929670196e              # double 6.0210670000000004
	.quad	0x400cc393682730c6              # double 3.5954959999999998
	.quad	0x40177cce1c58255b              # double 5.87188
	.quad	0x4022bb226c3b927d              # double 9.3654969999999995
	.quad	0x40197ee84ad794a7              # double 6.3739330000000001
	.quad	0x400f3661f18c9fb6              # double 3.901554
	.quad	0x3fd1054ef459d990              # double 0.26594899999999999
	.quad	0x402271044f1a1987              # double 9.2207360000000005
	.quad	0x3ff7e5460aa64c30              # double 1.4934750000000001
	.quad	0x401a832441fea811              # double 6.6280679999999998
	.quad	0x4013e456b441bb8c              # double 4.9729869999999998
	.quad	0x4003148d3ae685db              # double 2.3850349999999998
	.quad	0x4008b2c40d0aaa7e              # double 3.087288
	.quad	0x4022e1e75360d024              # double 9.4412179999999992
	.quad	0x40003781c714fce7              # double 2.0271029999999999
	.quad	0x401a6c625e99e94b              # double 6.6058440000000003
	.quad	0x3ffc9001d5c31594              # double 1.785158
	.quad	0x40207041461b6d44              # double 8.2192480000000003
	.quad	0x400299be4cd74928              # double 2.3250700000000002
	.quad	0x401f68583621fafd              # double 7.8518990000000004
	.quad	0x400ffc25d074213a              # double 3.998119
	.quad	0x3fd83b3a68b19a41              # double 0.37861499999999998
	.quad	0x3ff44f09528f190d              # double 1.269296
	.quad	0x3fcfab21815a07b3              # double 0.24740999999999999
	.quad	0x4011f60b2c83ec89              # double 4.4902769999999999
	.quad	0x400c87a9e2bcf91a              # double 3.5662419999999999
	.quad	0x4022cef8ceb356da              # double 9.404242
	.quad	0x3ff00e1f7d73c925              # double 1.0034479999999999
	.quad	0x401a1a68f4b61fe2              # double 6.5257909999999999
	.quad	0x3ffdfcf91a32b12d              # double 1.874261
	.quad	0x4006b8e086bdf4c3              # double 2.8402720000000001
	.quad	0x4012ac764adff823              # double 4.6684200000000002
	.quad	0x40175d35eb7457c1              # double 5.8410260000000003
	.quad	0x4021e7ddebd9018e              # double 8.9528649999999992
	.quad	0x401c704a72ead927              # double 7.1096589999999997
	.quad	0x4016364a16a48733              # double 5.5530169999999996
	.quad	0x401bbd8a979e16d7              # double 6.9350990000000001
	.quad	0x401e720d5629d841              # double 7.6113790000000003
	.quad	0x402399886df82b1f              # double 9.7998689999999992
	.quad	0x4012e92ddbdb5d89              # double 4.7277139999999997
	.quad	0x4009b7ee4e26d480              # double 3.2148099999999999
	.quad	0x4022dd73eab367a1              # double 9.432525
	.quad	0x40203079c4113c68              # double 8.0946789999999993
	.quad	0x402214558644523f              # double 9.0397149999999993
	.quad	0x4013dbcdbbe0157f              # double 4.9646520000000001
	.quad	0x4011d20d130df9be              # double 4.4551280000000002
	.quad	0x4009545e9185cee1              # double 3.1661959999999998
	.quad	0x401795b2d4d4024b              # double 5.8961899999999998
	.quad	0x3ffe56b97fe8ee6c              # double 1.8961730000000001
	.quad	0x402040c9d9d3458d              # double 8.1265400000000003
	.quad	0x4007e29d8409e55c              # double 2.985652
	.quad	0x401cd2be48a58b3f              # double 7.2058039999999997
	.quad	0x40209948dc11e42e              # double 8.2993839999999999
	.quad	0x4014f18fc504816f              # double 5.2359
	.quad	0x400ddead4f5903a7              # double 3.7337289999999999
	.quad	0x401dfd45e9185cee              # double 7.4973369999999999
	.quad	0x401ad8ad25679896              # double 6.7115980000000004
	.quad	0x3fd9372606fac604              # double 0.39399099999999998
	.quad	0x401373af74cd3177              # double 4.8629740000000004
	.quad	0x4020e4069e7fb268              # double 8.4453630000000004
	.quad	0x4016f681a9b8cb8e              # double 5.740729
	.quad	0x3ff5ddece5710881              # double 1.366681
	.quad	0x400defb3311a543f              # double 3.742041
	.quad	0x3ff22209aaa3ad19              # double 1.13331
	.quad	0x3fc1aa3f034b0e1b              # double 0.13800799999999999
	.quad	0x40221c22036006d1              # double 9.0549470000000003
	.quad	0x3fe8a830a0b1bbcf              # double 0.77053099999999997
	.quad	0x40147734f82f5126              # double 5.1164129999999997
	.quad	0x3ff69f01b866e43b              # double 1.4138200000000001
	.quad	0x4001706bbdbe3c10              # double 2.1798929999999999
	.quad	0x401f86ef8055fbb5              # double 7.8817729999999999
	.quad	0x401c1b1d0c804103              # double 7.026478
	.quad	0x401bfa337a80cf9e              # double 6.9943369999999998
	.quad	0x401e0ea18372e6a7              # double 7.5142879999999996
	.quad	0x401bf8d5410f94c8              # double 6.9930009999999996
	.quad	0x401e6fc71d606317              # double 7.6091579999999998
	.quad	0x4001afcf80dc3372              # double 2.2108449999999999
	.quad	0x3ff6416052502eec              # double 1.3909609999999999
	.quad	0x40141c87db2b3461              # double 5.0278619999999998
	.quad	0x3ff077f38c5436b9              # double 1.029285
	.quad	0x3ffe39fec99f1ae3              # double 1.889159
	.quad	0x400c8290eed02cd4              # double 3.5637530000000002
	.quad	0x401a707ee0b0af60              # double 6.6098590000000002
	.quad	0x3ffc48919ef954eb              # double 1.767717
	.quad	0x402320379314445b              # double 9.5629240000000006
	.quad	0x4014b57eaa2a0a96              # double 5.1772410000000004
	.quad	0x402383f5b5fa2270              # double 9.7577339999999992
	.quad	0x4020384dfce3150e              # double 8.1099700000000006
	.quad	0x4021d8a222d5171e              # double 8.9231119999999997
	.quad	0x4018e40895d0b73d              # double 6.2226889999999999
	.quad	0x400e8b0079a2834d              # double 3.8178719999999999
	.quad	0x3fd91a60d4562e0a              # double 0.392235
	.quad	0x401153419e300150              # double 4.3313050000000004
	.quad	0x401a85d28d002e23              # double 6.6306859999999999
	.quad	0x401f1c122749f0e5              # double 7.7774130000000001
	.quad	0x40006b0ea18372e7              # double 2.0522740000000002
	.quad	0x40149428d434a01b              # double 5.1446870000000002
	.quad	0x4006d2af9a8cdea0              # double 2.8528739999999999
	.quad	0x4009f4e11dbca969              # double 3.24457
	.quad	0x400cf5cf2495e17e              # double 3.6200239999999999
	.quad	0x40181fd5454152b1              # double 6.0310870000000003
	.quad	0x4009fb089a027525              # double 3.2475749999999999
	.quad	0x3ff3ee7c49fd7a14              # double 1.2457240000000001
	.quad	0x4019f4eb56fb8f58              # double 6.489179
	.quad	0x4013ea9fbe76c8b4              # double 4.9791249999999998
	.quad	0x4012d64c2f837b4a              # double 4.7092749999999999
	.quad	0x400cfa4052d666aa              # double 3.6221930000000002
	.quad	0x40210d31fcd24e16              # double 8.5257719999999999
	.quad	0x401970c4dec1c1d7              # double 6.3601260000000002
	.quad	0x3fdabfca85caafbc              # double 0.41795599999999999
	.quad	0x3ffcfa450acc0bdd              # double 1.8111010000000001
	.quad	0x3ff95821294573a8              # double 1.5840160000000001
	.quad	0x401a8385c67dfe33              # double 6.6284400000000003
	.quad	0x3fe6a6a875d56f33              # double 0.70784400000000003
	.quad	0x4007635d67ba237d              # double 2.9235180000000001
	.quad	0x40124b2f661f18ca              # double 4.573423
	.quad	0x4023b6fbf401c4fc              # double 9.8573909999999997
	.quad	0x4011d88377186552              # double 4.4614390000000004
	.quad	0x4020492b3cc4ac6d              # double 8.1429080000000003
	.quad	0x401b8c02afdda8bd              # double 6.8867289999999999
	.quad	0x400e9ef39085f4a1              # double 3.8276129999999999
	.quad	0x4015f7746887a8d6              # double 5.4916549999999997
	.quad	0x402185f633ce63a6              # double 8.7616440000000004
	.quad	0x3ff33852f7f498c4              # double 1.2012510000000001
	.quad	0x401fc950331e3a7e              # double 7.9465950000000003
	.quad	0x4020ad8ba40d90e2              # double 8.3389559999999996
	.quad	0x3fefdaec4a4095f2              # double 0.99547399999999997
	.quad	0x3ff52dbc664d3bf3              # double 1.323666
	.quad	0x4012b5f0b28522ea              # double 4.6776759999999999
	.quad	0x402098b8066c2acc              # double 8.2982790000000008
	.quad	0x4020d7b0f6ad70e7              # double 8.4212720000000001
	.quad	0x401373e100607810              # double 4.8631630000000001
	.quad	0x400a6b0d0edc3bd6              # double 3.3022710000000002
	.quad	0x3fba684cf0739b02              # double 0.103154
	.quad	0x4014c1cd1c7de508              # double 5.1892589999999998
	.quad	0x3ff0ca569b17481b              # double 1.049399
	.quad	0x4017c996744b2b77              # double 5.9468629999999996
	.quad	0x4020535cbff47736              # double 8.1628170000000004
	.quad	0x40029ab0856e696a              # double 2.3255319999999999
	.quad	0x400d6b0b7c3504c5              # double 3.6772680000000002
	.quad	0x40222140357a3550              # double 9.0649429999999995
	.quad	0x40201e44523f67f5              # double 8.0591150000000003
	.quad	0x402128950763a190              # double 8.5792619999999999
	.quad	0x4023ad306a2b1705              # double 9.83826
	.quad	0x4014919f7f8ca81a              # double 5.1422100000000004
	.quad	0x3ff8525892684cf0              # double 1.5201039999999999
	.quad	0x4017bcb74ddf86e4              # double 5.9342930000000003
	.quad	0x401b80e065300581              # double 6.8758559999999997
	.quad	0x3fe71a95421c0443              # double 0.72199500000000005
	.quad	0x40155a68b19a415f              # double 5.3382899999999998
	.quad	0x4021ab369b9d7fd8              # double 8.8344009999999997
	.quad	0x3fd02d4d4024b33e              # double 0.25276500000000002
	.quad	0x40137666ec9e236c              # double 4.8656269999999999
	.quad	0x401e522d5171e29b              # double 7.5802509999999996
	.quad	0x401b59a5657fb69a              # double 6.8375450000000004
	.quad	0x4021c7c8b0079a28              # double 8.8902029999999996
	.quad	0x400b27ae147ae148              # double 3.3943750000000001
	.quad	0x401d7bd2fa0d77b8              # double 7.3709220000000001
	.quad	0x3fe65cf67b1c0011              # double 0.69884800000000002
	.quad	0x4012eb90214ad363              # double 4.7300420000000001
	.quad	0x401bfc0fcb4f1e4b              # double 6.9961539999999998
	.quad	0x402122ef2c732592              # double 8.5682310000000008
	.quad	0x400359817b95a294              # double 2.418704
	.quad	0x40159d940789613d              # double 5.4038849999999998
	.quad	0x4023e16f4384ba0f              # double 9.9403020000000008
	.quad	0x401c28433d6c7219              # double 7.0393189999999999
	.quad	0x3ffdbb5d031055b9              # double 1.8582430000000001
	.quad	0x401f101eabbcb1cd              # double 7.7657420000000003
	.quad	0x3ffd6d2ed783dff4              # double 1.839156
	.quad	0x4021c6c7a7c9de05              # double 8.888242
	.quad	0x4023c690364388ec              # double 9.8878190000000003
	.quad	0x3ff57ce0fc2eba28              # double 1.3429880000000001
	.quad	0x4022c8de4c51116b              # double 9.3923210000000008
	.quad	0x4008c225742dcf46              # double 3.0947979999999999
	.quad	0x4012dbc44bf4cb19              # double 4.7146160000000004
	.quad	0x3feaff0aa21a719b              # double 0.84363299999999997
	.quad	0x401b3b0b39192642              # double 6.8076600000000003
	.quad	0x40093c52e72da123              # double 3.154455
	.quad	0x4020042ca148ba84              # double 8.008153
	.quad	0x401cb13b9f127f5f              # double 7.1730790000000004
	.quad	0x402090a9bcfd4bf1              # double 8.2825450000000007
	.quad	0x400376f7e3d1cc10              # double 2.43309
	.quad	0x3fe9d710880d801b              # double 0.80750299999999997
	.quad	0x40223d8622c45027              # double 9.1201640000000008
	.quad	0x3ff93a5b0ff10ecb              # double 1.5767469999999999
	.quad	0x4013ff15a4acf313              # double 4.9991060000000003
	.quad	0x4012671de69ad42c              # double 4.6006999999999998
	.quad	0x400f0bd66277c45d              # double 3.8807800000000001
	.quad	0x401ce6b053198288              # double 7.225282
	.quad	0x401bea237cdcca71              # double 6.9786510000000002
	.quad	0x3fe576a2f48c2e77              # double 0.67073199999999999
	.quad	0x3ff81c6b05319829              # double 1.5069380000000001
	.quad	0x4023f3c4f3ba7760              # double 9.9761120000000005
	.quad	0x40207048e043a216              # double 8.2193059999999996
	.quad	0x4017014bdfd2630f              # double 5.7512660000000002
	.quad	0x40037a9b8cb8e087              # double 2.4348670000000001
	.quad	0x40015cf9a06a6e33              # double 2.170398
	.quad	0x40220fd3d4280ae1              # double 9.030913
	.quad	0x401f9a0e8427418d              # double 7.9004459999999996
	.quad	0x3ff4c43c3a42f1ed              # double 1.297909
	.quad	0x401235cee17a02fb              # double 4.5525469999999997
	.quad	0x40003beec39799e5              # double 2.029264
	.quad	0x4020c581cf7878b8              # double 8.3857560000000007
	.quad	0x401fda2120e1f7d7              # double 7.9630169999999997
	.quad	0x401557079e59f2bb              # double 5.3349900000000003
	.quad	0x401bba5a469d7343              # double 6.9319850000000001
	.quad	0x400fdd3f5b5fa227              # double 3.983031
	.quad	0x400568af81626b2f              # double 2.6761159999999999
	.quad	0x402220198f1d3ed5              # double 9.0626949999999997
	.quad	0x400cf30c67168f8e              # double 3.6186759999999998
	.quad	0x40170c625e99e94b              # double 5.7620940000000003
	.quad	0x402041dcf893faf4              # double 8.1286389999999997
	.quad	0x401ba852b4d8ba41              # double 6.9143780000000001
	.quad	0x401ec14c660a2014              # double 7.6887679999999996
	.quad	0x40183c38b04ab607              # double 6.0588100000000003
	.quad	0x401fbab92c061848              # double 7.932347
	.quad	0x4000dac6045baf53              # double 2.1068229999999999
	.quad	0x400124d983947497              # double 2.1429930000000001
	.quad	0x4022bf4f0d844d01              # double 9.3736499999999995
	.quad	0x400551e5c0b99913              # double 2.6649889999999998
	.quad	0x400dbf9a49c2c1b1              # double 3.718556
	.quad	0x3ff45233df2a9d62              # double 1.2700689999999999
	.quad	0x402393150dae3e6c              # double 9.7872699999999994
	.quad	0x4022d06338b47c74              # double 9.4070070000000001
	.quad	0x4019e0407cc7d1bb              # double 6.4689959999999997
	.quad	0x3fe095ca6ca03c4b              # double 0.518285
	.quad	0x4011f723aafff36b              # double 4.4913470000000002
	.quad	0x400308c692f6e829              # double 2.3792849999999999
	.quad	0x40073f4a1272c94b              # double 2.9059029999999999
	.quad	0x4010376683c297c0              # double 4.0541020000000003
	.quad	0x401d05f84cad57bc              # double 7.2558299999999996
	.quad	0x4018bca29845dc83              # double 6.1842139999999999
	.quad	0x4016727bf61aa3f0              # double 5.6118009999999998
	.quad	0x4012bc8b43958106              # double 4.6841249999999999
	.quad	0x40114fb19e731d2e              # double 4.327826
	.quad	0x4019c81cf7878b7a              # double 6.4454229999999999
	.quad	0x4005023854046413              # double 2.6260840000000001
	.quad	0x40024449dbec2481              # double 2.283344
	.quad	0x3f8291b823c85c25              # double 0.0090670000000000004
	.quad	0x400273a365cb35f4              # double 2.3064640000000001
	.quad	0x40103839cd8127b3              # double 4.0549080000000002
	.quad	0x3fdb59253543aeab              # double 0.42731599999999997
	.quad	0x40121517a46173b8              # double 4.5205979999999997
	.quad	0x4021d85ab3aabcd8              # double 8.9225670000000008
	.quad	0x4013d314013ec461              # double 4.9561310000000001
	.quad	0x3ff55e1f3a57eaa3              # double 1.3354790000000001
	.quad	0x4004653da72a7bd5              # double 2.5494340000000002
	.quad	0x401170f6273929ed              # double 4.3603139999999998
	.quad	0x40239624dd2f1aa0              # double 9.7932500000000005
	.quad	0x40185677b395c422              # double 6.084441
	.quad	0x400476ca46e08f21              # double 2.5580029999999998
	.quad	0x4022ec2b51bd61f6              # double 9.4612680000000005
	.quad	0x401c291eeaa6d267              # double 7.0401569999999998
	.quad	0x3ff88c0ce91c8eac              # double 1.534192
	.quad	0x400582834d26fa40              # double 2.6887270000000001
	.quad	0x40224340f66a5508              # double 9.1313549999999992
	.quad	0x400321c4fc1df330              # double 2.391489
	.quad	0x3febf9a49c2c1b11              # double 0.874224
	.quad	0x401a080346dc5d64              # double 6.5078250000000004
	.quad	0x40056cf95d4e8fb0              # double 2.67821
	.quad	0x4021ec026cc1ca3a              # double 8.9609559999999995
	.quad	0x40217dddf43c7d5f              # double 8.7458340000000003
	.quad	0x3ffb0ec311622813              # double 1.6911039999999999
	.quad	0x4021be675147f130              # double 8.8718819999999994
	.quad	0x4012c17b0f6ad70e              # double 4.6889459999999996
	.quad	0x3fcd2ca57a786c22              # double 0.22792499999999999
	.quad	0x40134b352a843809              # double 4.8234450000000004
	.quad	0x3fff1e3da2f8bdec              # double 1.9448829999999999
	.quad	0x40228fe175d13d75              # double 9.2810170000000003
	.quad	0x401cbe1c58255b03              # double 7.1856549999999997
	.quad	0x3fe938a3b57c4e2f              # double 0.78816399999999998
	.quad	0x401f6d794a6eb91b              # double 7.8569079999999997
	.quad	0x40203b71da37ef5b              # double 8.1161030000000007
	.quad	0x40235170f7b9e061              # double 9.659065
	.quad	0x3fb65604189374bc              # double 0.087249999999999994
	.quad	0x4012b7e56473471f              # double 4.6795859999999996
	.quad	0x40128291fb3fa6df              # double 4.62751
	.quad	0x402332b430f49492              # double 9.5990310000000001
	.quad	0x3fffc883fd502257              # double 1.9864539999999999
	.quad	0x3ff7f80ecfa69be1              # double 1.4980610000000001
	.quad	0x400ba57b84db9c73              # double 3.4558019999999998
	.quad	0x40110008a697aede              # double 4.2500330000000002
	.quad	0x400cc9d40ee06d94              # double 3.5985490000000002
	.quad	0x40101ed916872b02              # double 4.030125
	.quad	0x400a6f1d3ed527e5              # double 3.3042549999999999
	.quad	0x4014d656abde3fbc              # double 5.2093150000000001
	.quad	0x40113fa3fcc9ea9a              # double 4.3121489999999998
	.quad	0x40069a6f826edaa9              # double 2.8254079999999999
	.quad	0x4013f25a682b6284              # double 4.9866729999999997
	.quad	0x4016baff2a172abf              # double 5.6826140000000001
	.quad	0x4017fae2da554b8c              # double 5.9950060000000001
	.quad	0x402013d5dc400757              # double 8.0387409999999999
	.quad	0x4009e8c586876e1e              # double 3.238658
	.quad	0x4012950092ccf6be              # double 4.6455099999999998
	.quad	0x3ff7bb14a90470a8              # double 1.483174
	.quad	0x40148b0318b9346a              # double 5.1357540000000004
	.quad	0x3fff78d716d2aa5c              # double 1.9670019999999999
	.quad	0x40010f62f9ca5bd9              # double 2.1325129999999999
	.quad	0x3fa4b4aec8d5c747              # double 0.040440999999999998
	.quad	0x400499285a921cce              # double 2.5747840000000002
	.quad	0x40211f97460242d0              # double 8.5617009999999993
	.quad	0x4022576e6106ab15              # double 9.1707640000000001
	.quad	0x3ff98b9346994185              # double 1.596576
	.quad	0x401ebad5bee3d5fe              # double 7.6824560000000002
	.quad	0x40213434c1a8ac5c              # double 8.6019649999999998
	.quad	0x40206c9774256bca              # double 8.2120929999999994
	.quad	0x400f9cb790fb6567              # double 3.9515220000000002
	.quad	0x401440c1b97353b5              # double 5.0632390000000003
	.quad	0x40175e46cfc829d0              # double 5.8420670000000001
	.quad	0x40128009f623076c              # double 4.625038
	.quad	0x401b20abf76a2f49              # double 6.7819060000000002
	.quad	0x400efc7c5260f5e4              # double 3.8732839999999999
	.quad	0x402192e1ef73c0c2              # double 8.78688
	.quad	0x4019b3c1ce6c093e              # double 6.4255440000000004
	.quad	0x400cc291fb3fa6df              # double 3.595005
	.quad	0x40231502cd39da16              # double 9.5410369999999993
	.quad	0x3ff18e11dbca9692              # double 1.0971850000000001
	.quad	0x4010bcb3e5753a3f              # double 4.1842800000000002
	.quad	0x3feaa9670196d8f5              # double 0.833179
	.quad	0x401bbff759685122              # double 6.9374669999999998
	.quad	0x4015f3198288051d              # double 5.4874020000000003
	.quad	0x401a97a63736cdf2              # double 6.6480949999999996
	.quad	0x401c199c7bcc2939              # double 7.0250110000000001
	.quad	0x40031de7a743a648              # double 2.389602
	.quad	0x400e8bb6ed677708              # double 3.8182200000000002
	.quad	0x40021cf91a32b12d              # double 2.2641469999999999
	.quad	0x4023fe5f7403dddb              # double 9.9968219999999998
	.quad	0x40168fb506dd69d3              # double 5.640339
	.quad	0x400d84b662fdfc1a              # double 3.6898010000000001
	.quad	0x4023a15ad106ee31              # double 9.8151460000000003
	.quad	0x401292c94b380cb7              # double 4.6433460000000002
	.quad	0x40138acffa7eb6bf              # double 4.8855589999999998
	.quad	0x401f8ee525892685              # double 7.8895460000000001
	.quad	0x402300407cc7d1bb              # double 9.5004919999999994
	.quad	0x40019a5119ce075f              # double 2.2003499999999998
	.quad	0x40167b4f1e4b44a2              # double 5.6204190000000001
	.quad	0x3ff29fa11a975afb              # double 1.163972
	.quad	0x4023edd4a5df223a              # double 9.9645130000000002
	.quad	0x401b343fa2ad3e92              # double 6.801024
	.quad	0x401574d87724fa8b              # double 5.3641069999999997
	.quad	0x4014c05e1c15097d              # double 5.1878590000000004
	.quad	0x401644cdb7ae5797              # double 5.5671910000000002
	.quad	0x40205d72367e414e              # double 8.1825119999999991
	.quad	0x40140686e7e62dc7              # double 5.0063740000000001
	.quad	0x401b76d82ba5a038              # double 6.8660589999999999
	.quad	0x40211fd6f9767903              # double 8.5621869999999998
	.quad	0x4010e8a2a90cd424              # double 4.2271830000000001
	.quad	0x402236616b54e2b0              # double 9.1062119999999993
	.quad	0x40141d10f51ac9b0              # double 5.0283850000000001
	.quad	0x4020d37329c347e9              # double 8.4129880000000004
	.quad	0x40222d4f5903a754              # double 9.0884959999999992
	.quad	0x400ce6ee30caa327              # double 3.6127590000000001
	.quad	0x401546299524bfd3              # double 5.3185180000000001
	.quad	0x401cc160d887ebf2              # double 7.1888459999999998
	.quad	0x4022b4e7cd035372              # double 9.3533310000000007
	.quad	0x402234894c447c31              # double 9.1026100000000003
	.quad	0x40236999fe43675e              # double 9.7062530000000002
	.quad	0x40155e160d887ebf              # double 5.3418809999999999
	.quad	0x40208bee807bbb62              # double 8.2733039999999995
	.quad	0x400ace1deacc9214              # double 3.3506429999999998
	.quad	0x4017823358f2e05d              # double 5.8771490000000002
	.quad	0x401e3318b9346994              # double 7.5498989999999999
	.quad	0x4010cfdcdf698783              # double 4.2029909999999999
	.quad	0x401bb93c46d82ba6              # double 6.9308940000000003
	.quad	0x3fe3883771865519              # double 0.61037799999999998
	.quad	0x401f42491afc04c9              # double 7.8147320000000002
	.quad	0x4020ad9ea57214f0              # double 8.3391009999999994
	.quad	0x401628f5c28f5c29              # double 5.54
	.quad	0x400ba6a65cf67b1c              # double 3.456372
	.quad	0x4004eb228dc981bf              # double 2.6148120000000001
	.quad	0x4023242656abde40              # double 9.5706050000000004
	.quad	0x4022daed99cbee80              # double 9.4275939999999991
	.quad	0x4020b1203a322af5              # double 8.3459489999999992
	.quad	0x3ff105d0fa58f712              # double 1.06392
	.quad	0x401f58854cdb7ae5              # double 7.8364459999999995
	.quad	0x4015386c226809d5              # double 5.3051000000000004
	.quad	0x4010263c74fb54a0              # double 4.0373400000000004
	.quad	0x401a2e68a0d349bf              # double 6.5453210000000004
	.quad	0x4017e05681ecd4aa              # double 5.9690799999999999
	.quad	0x401a0cd962068555              # double 6.5125479999999998
	.quad	0x40083bd512ec6bcf              # double 3.0292150000000002
	.quad	0x401a1c1f42bb6673              # double 6.527463
	.quad	0x3fff0d24e160d888              # double 1.940709
	.quad	0x4015cb8f14db5958              # double 5.4487880000000004
	.quad	0x4019e2c5197a2489              # double 6.4714549999999997
	.quad	0x3ff63c9363f572de              # double 1.3897889999999999
	.quad	0x3fca67168f8e7ddd              # double 0.20627100000000001
	.quad	0x40108da1a93293d1              # double 4.138312
	.quad	0x4013c0e065300581              # double 4.9383559999999997
	.quad	0x40142db50f40e5a3              # double 5.0446359999999997
	.quad	0x4014f1f6cacd184c              # double 5.2362929999999999
	.quad	0x3fef5e58e64b2314              # double 0.98026699999999999
	.quad	0x4018ded6777079e6              # double 6.2176150000000003
	.quad	0x40197b313be22e5e              # double 6.3703050000000001
	.quad	0x40141b58d1526d8b              # double 5.0267059999999999
	.quad	0x401810c5a8155d5f              # double 6.0163789999999997
	.quad	0x3ffff84ba0e84274              # double 1.998119
	.quad	0x3fac1eff9f87f024              # double 0.054924000000000001
	.quad	0x402210f9d2bf5515              # double 9.033156
	.quad	0x4003339756c93a71              # double 2.400191
	.quad	0x401a97cdcca70d20              # double 6.6482460000000003
	.quad	0x401706b0d9513f8e              # double 5.7565340000000003
	.quad	0x40138aa8a82a5615              # double 4.8854090000000001
	.quad	0x3ffea58b3f63c31e              # double 1.915416
	.quad	0x401cf32f87ad080b              # double 7.2374859999999996
	.quad	0x400bda554b8bef8d              # double 3.481608
	.quad	0x401053fab10ba626              # double 4.0820109999999996
	.quad	0x4017781b64e05469              # double 5.867292
	.quad	0x4017db2074ea8da8              # double 5.963991
	.quad	0x40219fd805e5f30e              # double 8.8121949999999991
	.quad	0x4020a6ddce7cd035              # double 8.3259109999999996
	.quad	0x3ff5251a005c4652              # double 1.321558
	.quad	0x400dc0157eed45e9              # double 3.718791
	.quad	0x401375d894812be5              # double 4.8650840000000004
	.quad	0x400e9fcb0c026cc2              # double 3.8280240000000001
	.quad	0x4018d9378ee28672              # double 6.2121259999999996
	.quad	0x402390bd017dae82              # double 9.7826920000000008
	.quad	0x40141cad9ad85dfb              # double 5.0280060000000004
	.quad	0x40204c267839cd81              # double 8.1487309999999997
	.quad	0x4000bc55000c953a              # double 2.0919590000000001
	.quad	0x4015bac471b47842              # double 5.4323899999999998
	.quad	0x40220013ec460ed8              # double 9.0001519999999999
	.quad	0x401cedef8487b99d              # double 7.2323589999999998
	.quad	0x4013d1e75360d024              # double 4.9549839999999996
	.quad	0x401ebbe61cffeb07              # double 7.6834949999999997
	.quad	0x401f6090f733a8a4              # double 7.844303
	.quad	0x3fed5273d5bab218              # double 0.91631499999999999
	.quad	0x40167857f3061c7a              # double 5.6175230000000003
	.quad	0x40165c0d6f544bb2              # double 5.5898950000000003
	.quad	0x3feb5ed6ba8c5868              # double 0.85532699999999995
	.quad	0x400b1040bfe3b03e              # double 3.3829359999999999
	.quad	0x4011aca686e7e62e              # double 4.4186040000000002
	.quad	0x401a1aaef2c73259              # double 6.5260579999999999
	.quad	0x3fc5b6bb1290257d              # double 0.16963900000000001
	.quad	0x401e04a0e410b631              # double 7.5045200000000003
	.quad	0x40179bd9018e7579              # double 5.9021949999999999
	.quad	0x401013065f9591cd              # double 4.0185789999999999
	.quad	0x40146146a1a500d6              # double 5.0949960000000001
	.quad	0x3ffbd17939a7c17b              # double 1.7386410000000001
	.quad	0x400ca69835158b82              # double 3.5813449999999998
	.quad	0x4013ec48adeebb34              # double 4.9807459999999999
	.quad	0x3ff927d34df04ddb              # double 1.5722229999999999
	.quad	0x40028dd0d8cb07d1              # double 2.3192460000000001
	.quad	0x401decf2495e17e3              # double 7.4813929999999997
	.quad	0x40084c73abc94706              # double 3.0373299999999999
	.quad	0x4003f5a8deb0fadf              # double 2.4949509999999999
	.quad	0x4021c668a0d349bf              # double 8.8875170000000008
	.quad	0x400d3c9eecbfb15b              # double 3.6545999999999998
	.quad	0x4005768405b39e28              # double 2.6828690000000002
	.quad	0x40202034d26fa3fd              # double 8.0629030000000004
	.quad	0x401293b60285ec3e              # double 4.6442490000000003
	.quad	0x402177525460aa65              # double 8.7330500000000004
	.quad	0x3ffc6eed8904f6e0              # double 1.7770820000000001
	.quad	0x3fdc7d805e5f30e8              # double 0.44516
	.quad	0x4023aab3461309c8              # double 9.833399
	.quad	0x401e99aae6c8f755              # double 7.6500659999999998
	.quad	0x3fe9031f03d145d8              # double 0.78163099999999996
	.quad	0x3ff04c069e7fb268              # double 1.018561
	.quad	0x4016a86c226809d5              # double 5.6644750000000004
	.quad	0x4010873c0c1fc8f3              # double 4.1320649999999999
	.quad	0x401f7c504816f007              # double 7.8714000000000003
	.quad	0x3fd36a619da9c993              # double 0.30336800000000003
	.quad	0x3ff259dece571088              # double 1.146941
	.quad	0x4020b491afc04c8c              # double 8.3526740000000003
	.quad	0x400db27136a400fc              # double 3.7121300000000002
	.quad	0x40142f0cbaf965b2              # double 5.045947
	.quad	0x40212011d3671ac1              # double 8.5626359999999995
	.quad	0x4005e8b5cbff4773              # double 2.7386279999999998
	.quad	0x4021499aa60913a5              # double 8.6437580000000001
	.quad	0x40027ac68a936c59              # double 2.309949
	.quad	0x4019ac74fb549f95              # double 6.4184150000000004
	.quad	0x401c969b9d7fd827              # double 7.1470779999999996
	.quad	0x3fc8582dbe7f2c30              # double 0.190191
	.quad	0x3ffd8b0af5fd47bf              # double 1.846446
	.quad	0x4022912dfd694ccb              # double 9.2835540000000005
	.quad	0x4021b2231832fcad              # double 8.8479240000000008
	.quad	0x4012679314445aa3              # double 4.6011470000000001
	.quad	0x40218b526527a205              # double 8.7721129999999992
	.quad	0x401b3533f42352eb              # double 6.8019559999999997
	.quad	0x400e00096feb4a66              # double 3.7500179999999999
	.quad	0x40043d71b0468449              # double 2.5300020000000001
	.quad	0x3ffbe35d67ba237d              # double 1.743009
	.quad	0x4023d56a37ac3eb8              # double 9.9168260000000003
	.quad	0x40138070329802c1              # double 4.8754280000000003
	.quad	0x401378433d6c7219              # double 4.8674439999999999
	.quad	0x3ff3bc243dccea29              # double 1.233433
	.quad	0x40224b7de939eadd              # double 9.1474449999999994
	.quad	0x401e99f340d4dc66              # double 7.6503420000000002
	.quad	0x4021cb1e18efbb0e              # double 8.8967139999999993
	.quad	0x3fdf02a3486f049b              # double 0.48453600000000002
	.quad	0x400a2ab5807fed20              # double 3.2708539999999999
	.quad	0x401944a276b7ed42              # double 6.3170260000000003
	.quad	0x4023ad41d8e86402              # double 9.8383929999999999
	.quad	0x401be4b6a619da9d              # double 6.9733530000000004
	.quad	0x401e9ea747d805e6              # double 7.654935
	.quad	0x3ff9fb83cf2cf95d              # double 1.6239049999999999
	.quad	0x40068198f1d3ed52              # double 2.8132799999999998
	.quad	0x3ff3e2a90cd423d9              # double 1.242837
	.quad	0x401f93eea209aaa4              # double 7.8944650000000003
	.quad	0x40004ecfa69be09c              # double 2.0384820000000001
	.quad	0x400d2324c8366517              # double 3.6421600000000001
	.quad	0x3ffbda8ac5c13fd1              # double 1.740855
	.quad	0x40011ce746cb966c              # double 2.139113
	.quad	0x4013b7afea3df6dc              # double 4.9293820000000004
	.quad	0x3fe19f9ce8d972cd              # double 0.55073399999999995
	.quad	0x4023b587b56b8738              # double 9.8545510000000007
	.quad	0x401c0df19d66adb4              # double 7.013617
	.quad	0x4015d0e0eb67c287              # double 5.453983
	.quad	0x400a2e4a7b4e54f8              # double 3.2726030000000002
	.quad	0x401abf0c34c1a8ac              # double 6.6865699999999997
	.quad	0x401a3a08398a6549              # double 6.5566719999999998
	.quad	0x3fded22c881e4713              # double 0.48157800000000001
	.quad	0x4022fd9146e4c0df              # double 9.4952489999999993
	.quad	0x40159ee34fc610f1              # double 5.4051640000000001
	.quad	0x401ebbb3c81908e6              # double 7.6833030000000004
	.quad	0x4005656abde3fbbd              # double 2.6745199999999998
	.quad	0x401ba96312f4cf4a              # double 6.9154169999999997
	.quad	0x40212aabcd78c437              # double 8.583342
	.quad	0x402012e147ae147b              # double 8.0368750000000002
	.quad	0x400c6d530489d27c              # double 3.5533809999999999
	.quad	0x40211c436fc158fb              # double 8.5552019999999995
	.quad	0x4010aac29bf162ae              # double 4.1667579999999997
	.quad	0x4022bf9bdc69f8c2              # double 9.3742359999999998
	.quad	0x4017903148776816              # double 5.8908129999999996
	.quad	0x3ff1fd07c84b5dcc              # double 1.1242749999999999
	.quad	0x3ff8242396073de2              # double 1.508823
	.quad	0x3ff2a30446b69db6              # double 1.1647989999999999
	.quad	0x3ff40d002e2328fa              # double 1.253174
	.quad	0x401a89f2fdb8fde3              # double 6.6347160000000001
	.quad	0x401b8f30e7ff583a              # double 6.8898349999999997
	.quad	0x4017163cb8173322              # double 5.7717159999999996
	.quad	0x40185ee9142b302f              # double 6.0926859999999996
	.quad	0x400e0c3f3e0370ce              # double 3.7559800000000001
	.quad	0x401c46aa087ca644              # double 7.0690080000000002
	.quad	0x3fd50d7be9856a38              # double 0.32894800000000002
	.quad	0x401694d940789614              # double 5.6453600000000002
	.quad	0x3ff6ebb01c92ddbe              # double 1.4325410000000001
	.quad	0x4012e6a6a012599f              # double 4.7252450000000001
	.quad	0x401f3620ee8d10f5              # double 7.8028599999999999
	.quad	0x4015894e1a3f4667              # double 5.3840870000000001
	.quad	0x4018b2a80064a9ce              # double 6.1744690000000002
	.quad	0x40145bd76ee73e68              # double 5.0896889999999999
	.quad	0x4010295faa8a82a5              # double 4.0404039999999997
	.quad	0x400b041919ac7970              # double 3.3770009999999999
	.quad	0x40120febd09e12a5              # double 4.5155479999999999
	.quad	0x4005f16ca46e08f2              # double 2.742883
	.quad	0x401556a3bddfca00              # double 5.3346090000000004
	.quad	0x3fef422036006d0d              # double 0.97682199999999996
	.quad	0x400e7235f8099179              # double 3.8057669999999999
	.quad	0x3fcf767903211cb0              # double 0.24580299999999999
	.quad	0x3fd6a4df47f993d5              # double 0.35381299999999999
	.quad	0x400bbb3397dd00f7              # double 3.4664069999999998
	.quad	0x40224aaed1394318              # double 9.1458650000000005
	.quad	0x4016b94b380cb6c8              # double 5.6809510000000003
	.quad	0x4014228283d35eb7              # double 5.0337009999999998
	.quad	0x3fea515ce9e5e248              # double 0.82243200000000005
	.quad	0x3fdec54bcf0b6b6e              # double 0.480792
	.quad	0x4016eab81f969e3d              # double 5.7292180000000004
	.quad	0x401708e4755ffe6d              # double 5.7586839999999997
	.quad	0x3fd0e5d18090b418              # double 0.26402700000000001
	.quad	0x40178cc100e6afcd              # double 5.8874550000000001
	.quad	0x3ffa996d8f4f93bc              # double 1.662458
	.quad	0x40217c9129888f86              # double 8.7432949999999998
	.quad	0x4022df56861e9292              # double 9.4362069999999996
	.quad	0x4014baa21a719b4e              # double 5.1822590000000002
	.quad	0x4014338bcdfefbf4              # double 5.050338
	.quad	0x3fb009d495182a99              # double 0.062649999999999997
	.quad	0x3fe467f6f4be835e              # double 0.63769100000000001
	.quad	0x401141ffb480a5ad              # double 4.3144520000000002
	.quad	0x401e04f93bc0a06f              # double 7.5048570000000003
	.quad	0x402195d91ab8e8ea              # double 8.7926719999999996
	.quad	0x40012dc011d3671b              # double 2.1473390000000001
	.quad	0x40081f1843c3a42f              # double 3.0151829999999999
	.quad	0x4019ffaf42784a94              # double 6.4996919999999996
	.quad	0x401aa8f36694898f              # double 6.6649909999999997
	.quad	0x3fd76876e1deacc9              # double 0.36575099999999999
	.quad	0x401d5e8f6cefed63              # double 7.3423439999999998
	.quad	0x401d1d4a5df2239e              # double 7.2786039999999996
	.quad	0x4014c373affb04ee              # double 5.1908709999999996
	.quad	0x4017155e6bc621b8              # double 5.7708680000000001
	.quad	0x40237fbbb62413db              # double 9.7494789999999991
	.quad	0x401e84ab606b7aa2              # double 7.6295599999999997
	.quad	0x3ff8d0880d801b43              # double 1.5509109999999999
	.quad	0x3ffa9ea897635e74              # double 1.663735
	.quad	0x40029d4a5df2239e              # double 2.3268019999999998
	.quad	0x4016d31a08bfc222              # double 5.7061539999999997
	.quad	0x4019da493c89f40a              # double 6.4631699999999999
	.quad	0x400209ee45c358b0              # double 2.2548490000000001
	.quad	0x401a9cc74b838c11              # double 6.6531039999999999
	.quad	0x40222b8bcdfefbf4              # double 9.0850509999999999
	.quad	0x4009e70eb24a6a87              # double 3.2378209999999998
	.quad	0x3fe2aa1f8e3ac0c6              # double 0.58326699999999998
	.quad	0x4013ccfa69be09bb              # double 4.9501739999999996
	.quad	0x40138e8101f31f47              # double 4.8891640000000001
	.quad	0x40237b8da3c21188              # double 9.7413150000000001
	.quad	0x3ff912ea52ef911d              # double 1.567118
	.quad	0x4021f9b17481b21c              # double 8.9876819999999995
	.quad	0x401b76f75d9a0f0a              # double 6.8661779999999997
	.quad	0x3fc4af6837f7be12              # double 0.161603
	.quad	0x4021ea80ae104923              # double 8.9580129999999993
	.quad	0x401b6e935b91f70e              # double 6.8579840000000001
	.quad	0x40203d5fbb517a46              # double 8.1198709999999998
	.quad	0x400e1ca7503b81b6              # double 3.7639909999999999
	.quad	0x4010cb7995ee136e              # double 4.1987059999999996
	.quad	0x4012759791819d24              # double 4.6148360000000004
	.quad	0x40200256798958da              # double 8.0045660000000005
	.quad	0x401d5d905c033615              # double 7.3413709999999996
	.quad	0x401e239ffd60e94f              # double 7.53479
	.quad	0x3ff6600c0f01fb83              # double 1.3984490000000001
	.quad	0x401a75aab4741073              # double 6.6149089999999999
	.quad	0x4006107b784662bb              # double 2.7580480000000001
	.quad	0x40224ee17a02fb5d              # double 9.154064
	.quad	0x3ffcb84449dbec25              # double 1.7949870000000001
	.quad	0x40215b4f82f51266              # double 8.6783409999999996
	.quad	0x3ff271c10d7be985              # double 1.1527719999999999
	.quad	0x40148cc964628028              # double 5.1374870000000001
	.quad	0x3f98d8665e02ea96              # double 0.024263
	.quad	0x3fe04e91c8eabffd              # double 0.50959100000000002
	.quad	0x3fe7f1b0468448cf              # double 0.74825299999999995
	.quad	0x40218a31832fcac9              # double 8.7699090000000002
	.quad	0x401e1462c343b70f              # double 7.519908
	.quad	0x400e441aac53b081              # double 3.7832539999999999
	.quad	0x40183726d04e618d              # double 6.0538590000000001
	.quad	0x3ff57bcc2938de6e              # double 1.342724
	.quad	0x4022ad40cc78e9f7              # double 9.3383850000000006
	.quad	0x400fbaa582dbe7f3              # double 3.9661360000000001
	.quad	0x40147d783dff3f10              # double 5.1225290000000001
	.quad	0x4020195f2452c5a0              # double 8.0495540000000005
	.quad	0x3ff701b43526527a              # double 1.437916
	.quad	0x3ff07b3e9a6f826f              # double 1.030089
	.quad	0x4013c7c6327ed84d              # double 4.9450919999999998
	.quad	0x401034a98aa8650e              # double 4.0514279999999996
	.quad	0x401e540c4156e265              # double 7.582078
	.quad	0x4023ba47021d10b2              # double 9.863823
	.quad	0x4014d43f1c75818c              # double 5.2072719999999997
	.quad	0x401ed6f4384ba0e8              # double 7.7099159999999997
	.quad	0x3ff10a009f623077              # double 1.0649420000000001
	.quad	0x40148ba6efc371da              # double 5.1363789999999998
	.quad	0x3fd307182235b4ee              # double 0.29730800000000002
	.quad	0x3fe5af48c2e770bd              # double 0.677647
	.quad	0x3f991ea78af3e469              # double 0.024531000000000001
	.quad	0x400265e56cd6c2f0              # double 2.2997540000000001
	.quad	0x401009b8cb8e086c              # double 4.0094940000000001
	.quad	0x401e3089e34330d7              # double 7.5474009999999998
	.quad	0x3fea4a9cdc443915              # double 0.821608
	.quad	0x4022da6dacabc515              # double 9.4266179999999994
	.quad	0x401e09d16fc9bc77              # double 7.5095879999999999
	.quad	0x3fe2d4c76d117b53              # double 0.58847400000000005
	.quad	0x3fd5a500d5e8d541              # double 0.338196
	.quad	0x40137bd33d29563b              # double 4.8709230000000003
	.quad	0x401eeca6ca03c4b1              # double 7.7311050000000003
	.quad	0x3ff7b00de4c51117              # double 1.4804820000000001
	.quad	0x400e5ee0b0af5fd4              # double 3.7963269999999998
	.quad	0x401263686a4ca4f4              # double 4.5970779999999998
	.quad	0x3fdac5974e65bea1              # double 0.41831000000000002
	.quad	0x3fecb9b66f9335d2              # double 0.89766999999999997
	.quad	0x40220dadd9c27e95              # double 9.0267169999999997
	.quad	0x4014b3c89f40a287              # double 5.1755699999999996
	.quad	0x400d0c37e6f71a7e              # double 3.6309659999999999
	.quad	0x401f777bbf93ff26              # double 7.8666830000000001
	.quad	0x4003ad8fd5cb7910              # double 2.4597470000000001
	.quad	0x401fdc4c165907d9              # double 7.9651339999999999
	.quad	0x40007420b3d4ae43              # double 2.0567030000000002
	.quad	0x401ad6049ecb31c2              # double 6.7090019999999999
	.quad	0x3fd4f7b5aea3161a              # double 0.32761899999999999
	.quad	0x40212383ad9f0a1c              # double 8.5693640000000002
	.quad	0x4020201b866e43aa              # double 8.0627099999999992
	.quad	0x40101e61cffeb075              # double 4.0296700000000003
	.quad	0x3fd88266772d5e07              # double 0.38295899999999999
	.quad	0x4022b6379b77c02b              # double 9.355893
	.quad	0x3ffc4128bf3bea92              # double 1.765908
	.quad	0x3ffbbd9ba1b19610              # double 1.7337910000000001
	.quad	0x4021a2ba38759253              # double 8.8178269999999994
	.quad	0x401159db22d0e560              # double 4.3377499999999998
	.quad	0x40238b4edb2f661f              # double 9.7720859999999998
	.quad	0x401f43797460242d              # double 7.8158929999999999
	.quad	0x3fc9ce746cb966be              # double 0.20161299999999999
	.quad	0x40125785b5b70692              # double 4.5854710000000001
	.quad	0x4019250374ff865d              # double 6.2861459999999996
	.quad	0x400c71d57ff9b563              # double 3.5555829999999999
	.quad	0x40090f1b25f633ce              # double 3.1323759999999998
	.quad	0x4013ac165907d912              # double 4.9180539999999997
	.quad	0x401ee641700cd856              # double 7.7248590000000004
	.quad	0x40123d0c80410300              # double 4.5596180000000004
	.quad	0x4004a023a6ce3583              # double 2.5781930000000002
	.quad	0x3fc4bc0e38a7e73a              # double 0.16198899999999999
	.quad	0x40040c6c54bcf0b7              # double 2.5060660000000001
	.quad	0x4017c635610adcd3              # double 5.9435630000000002
	.quad	0x401c61359791819d              # double 7.0949309999999999
	.quad	0x4003060913a4f872              # double 2.3779469999999998
	.quad	0x400ef327aa68f4b6              # double 3.8687279999999999
	.quad	0x4000d26527a20579              # double 2.102732
	.quad	0x40235e82730c6717              # double 9.6845890000000007
	.quad	0x401765286b59146e              # double 5.8487869999999997
	.quad	0x4022442699c7bcc3              # double 9.1331070000000008
	.quad	0x401191d4306e5cd5              # double 4.3924110000000001
	.quad	0x4003d3721d53cddd              # double 2.4782449999999998
	.quad	0x400c36cf850df15a              # double 3.5267629999999999
	.quad	0x400f282491afc04d              # double 3.8946010000000002
	.quad	0x4016a6db50f40e5a              # double 5.6629459999999998
	.quad	0x3fcfec13b9f127f6              # double 0.249392
	.quad	0x3ffa59b6f5caf2d8              # double 1.646903
	.quad	0x401ca507e9d94d0e              # double 7.1611630000000002
	.quad	0x401c78583621fafd              # double 7.1175240000000004
	.quad	0x4016652eb5f5f0b3              # double 5.5988110000000004
	.quad	0x3ff82c204f2ae07e              # double 1.5107729999999999
	.quad	0x40139b399f5dfeb9              # double 4.9015870000000001
	.quad	0x3ff151676640a6b9              # double 1.0823739999999999
	.quad	0x4019cc8d5c74751d              # double 6.4497580000000001
	.quad	0x401340dbad3a604e              # double 4.8133379999999999
	.quad	0x401c3c5a8155d5f5              # double 7.0589389999999996
	.quad	0x4009347064ece9a3              # double 3.1506050000000001
	.quad	0x4023e6a012599ed8              # double 9.9504400000000003
	.quad	0x3fe8752fc2656abe              # double 0.76430500000000001
	.quad	0x3feb5fa00e27e0f0              # double 0.85542300000000004
	.quad	0x4000c295208e1501              # double 2.095011
	.quad	0x4006626e5471715c              # double 2.7980619999999998
	.quad	0x4018fac9f2fdb8fe              # double 6.2449110000000001
	.quad	0x4017ce004b7f5a53              # double 5.9511729999999998
	.quad	0x4023d432873bc904              # double 9.9144480000000001
	.quad	0x40092adab9f559b4              # double 3.1459250000000001
	.quad	0x402283c0c1fc8f32              # double 9.2573299999999996
	.quad	0x40052a337a80cf9e              # double 2.6456059999999999
	.quad	0x4020e28ed5f138bd              # double 8.4424960000000002
	.size	.L__constant_5000xf64, 40000

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
