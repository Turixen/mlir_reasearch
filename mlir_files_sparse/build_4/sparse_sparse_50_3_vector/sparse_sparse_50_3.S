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
	.quad	0x414310060560ae97              # double 2498572.0420130002
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
	.quad	64                              # 0x40
	.quad	108                             # 0x6c
	.quad	153                             # 0x99
	.quad	218                             # 0xda
	.quad	269                             # 0x10d
	.quad	318                             # 0x13e
	.quad	380                             # 0x17c
	.quad	412                             # 0x19c
	.quad	451                             # 0x1c3
	.quad	512                             # 0x200
	.quad	557                             # 0x22d
	.quad	607                             # 0x25f
	.quad	672                             # 0x2a0
	.quad	722                             # 0x2d2
	.quad	766                             # 0x2fe
	.quad	831                             # 0x33f
	.quad	876                             # 0x36c
	.quad	922                             # 0x39a
	.quad	977                             # 0x3d1
	.quad	1026                            # 0x402
	.quad	1068                            # 0x42c
	.quad	1132                            # 0x46c
	.quad	1172                            # 0x494
	.quad	1213                            # 0x4bd
	.quad	1274                            # 0x4fa
	.quad	1328                            # 0x530
	.quad	1373                            # 0x55d
	.quad	1435                            # 0x59b
	.quad	1474                            # 0x5c2
	.quad	1514                            # 0x5ea
	.quad	1574                            # 0x626
	.quad	1618                            # 0x652
	.quad	1654                            # 0x676
	.quad	1719                            # 0x6b7
	.quad	1766                            # 0x6e6
	.quad	1810                            # 0x712
	.quad	1873                            # 0x751
	.quad	1915                            # 0x77b
	.quad	1958                            # 0x7a6
	.quad	2016                            # 0x7e0
	.quad	2063                            # 0x80f
	.quad	2110                            # 0x83e
	.quad	2166                            # 0x876
	.quad	2206                            # 0x89e
	.quad	2236                            # 0x8bc
	.quad	2294                            # 0x8f6
	.quad	2341                            # 0x925
	.quad	2387                            # 0x953
	.quad	2450                            # 0x992
	.quad	2497                            # 0x9c1
	.quad	2539                            # 0x9eb
	.quad	2611                            # 0xa33
	.quad	2654                            # 0xa5e
	.quad	2694                            # 0xa86
	.quad	2752                            # 0xac0
	.quad	2796                            # 0xaec
	.quad	2838                            # 0xb16
	.quad	2904                            # 0xb58
	.quad	2944                            # 0xb80
	.quad	2981                            # 0xba5
	.quad	3046                            # 0xbe6
	.quad	3084                            # 0xc0c
	.quad	3123                            # 0xc33
	.quad	3185                            # 0xc71
	.quad	3228                            # 0xc9c
	.quad	3275                            # 0xccb
	.quad	3344                            # 0xd10
	.quad	3387                            # 0xd3b
	.quad	3428                            # 0xd64
	.quad	3489                            # 0xda1
	.quad	3539                            # 0xdd3
	.quad	3585                            # 0xe01
	.quad	3649                            # 0xe41
	.quad	3699                            # 0xe73
	.quad	3748                            # 0xea4
	.quad	3815                            # 0xee7
	.quad	3855                            # 0xf0f
	.quad	3892                            # 0xf34
	.quad	3960                            # 0xf78
	.quad	4000                            # 0xfa0
	.quad	4046                            # 0xfce
	.quad	4111                            # 0x100f
	.quad	4159                            # 0x103f
	.quad	4205                            # 0x106d
	.quad	4265                            # 0x10a9
	.quad	4304                            # 0x10d0
	.quad	4348                            # 0x10fc
	.quad	4408                            # 0x1138
	.quad	4445                            # 0x115d
	.quad	4486                            # 0x1186
	.quad	4550                            # 0x11c6
	.quad	4594                            # 0x11f2
	.quad	4633                            # 0x1219
	.quad	4694                            # 0x1256
	.quad	4736                            # 0x1280
	.quad	4778                            # 0x12aa
	.quad	4844                            # 0x12ec
	.quad	4882                            # 0x1312
	.quad	4924                            # 0x133c
	.quad	5000                            # 0x1388
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_5000xindex,@object # @__constant_5000xindex
	.p2align	6, 0x0
.L__constant_5000xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
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
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	47                              # 0x2f
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
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
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
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
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
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
	.quad	84                              # 0x54
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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
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
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
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
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
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
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	64                              # 0x40
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
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
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
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
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
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
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
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
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
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
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
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
	.quad	99                              # 0x63
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
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
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	77                              # 0x4d
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
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
	.size	.L__constant_5000xindex, 40000

	.type	.L__constant_5000xf64,@object   # @__constant_5000xf64
	.p2align	6, 0x0
.L__constant_5000xf64:
	.quad	0x4021188d2a1f8e3b              # double 8.5479520000000004
	.quad	0x4022afbbd7b2031d              # double 9.3432300000000001
	.quad	0x40068ac3a860dcba              # double 2.8177560000000001
	.quad	0x40003942917507ea              # double 2.0279590000000001
	.quad	0x3fe562bae03b3e9a              # double 0.66830199999999995
	.quad	0x400b787e7c06e19c              # double 3.4338350000000002
	.quad	0x4013824bfd2e9468              # double 4.877243
	.quad	0x401bc3fc43b2dd37              # double 6.9413919999999996
	.quad	0x40152117b5286b59              # double 5.2823169999999999
	.quad	0x4020fe6c6de76428              # double 8.4969210000000004
	.quad	0x401fb8997c3d6840              # double 7.9302729999999997
	.quad	0x401162163fdd65a1              # double 4.3457879999999998
	.quad	0x3fd2c96030c23fab              # double 0.293541
	.quad	0x401e37329c347e8d              # double 7.5539040000000001
	.quad	0x4010a489d27c3937              # double 4.1606820000000004
	.quad	0x40209044284dfce3              # double 8.2817699999999999
	.quad	0x4021a557de0d66f1              # double 8.8229360000000003
	.quad	0x400e9c5479d4d834              # double 3.826333
	.quad	0x3ffac7c0f4517614              # double 1.6737679999999999
	.quad	0x4020c6ee73e681aa              # double 8.3885380000000005
	.quad	0x400cea7e73a365cb              # double 3.6144989999999999
	.quad	0x3ff341eeed8904f7              # double 1.203597
	.quad	0x40230809b30728e9              # double 9.5156989999999996
	.quad	0x4021de11ba3ca750              # double 8.9337289999999996
	.quad	0x3fab382e44b6e936              # double 0.053163000000000002
	.quad	0x401df9f87f023e9f              # double 7.4941120000000003
	.quad	0x401bb543f1c75819              # double 6.9270170000000002
	.quad	0x4003e49a9973d9ec              # double 2.4866229999999998
	.quad	0x4020ae432441fea8              # double 8.3403559999999999
	.quad	0x401615f202107b78              # double 5.5214309999999998
	.quad	0x401165bc87db2b34              # double 4.3493519999999997
	.quad	0x400afd5cb790fb65              # double 3.3737119999999998
	.quad	0x401c1e41d4b6a61a              # double 7.0295480000000001
	.quad	0x401c4bc558644524              # double 7.073995
	.quad	0x4018d49774256bca              # double 6.2076089999999997
	.quad	0x3fd7a704bc27631b              # double 0.36956899999999998
	.quad	0x401b98c9752977c9              # double 6.8992060000000004
	.quad	0x400198dcdb37c99b              # double 2.19964
	.quad	0x3fda290abb44e50c              # double 0.40875499999999998
	.quad	0x3fe11a6937d1fe65              # double 0.534474
	.quad	0x4002250df15a4acf              # double 2.2680929999999999
	.quad	0x40222fda61e0c5a8              # double 9.0934629999999999
	.quad	0x3fd29856a37ac3eb              # double 0.29054799999999997
	.quad	0x3fe059ea57214f05              # double 0.51097599999999999
	.quad	0x3fe2bdbe3c105187              # double 0.58566200000000002
	.quad	0x3ff042c5e2cdc012              # double 1.016302
	.quad	0x3ffae43bb40b34e7              # double 1.6807209999999999
	.quad	0x4020349e8815e397              # double 8.1027719999999999
	.quad	0x401ae007570c5650              # double 6.7187780000000004
	.quad	0x401af47064ece9a3              # double 6.7387100000000002
	.quad	0x40072a31e7d9988d              # double 2.8956029999999999
	.quad	0x3ffb1d851654d61b              # double 1.694707
	.quad	0x401ca22467be553b              # double 7.1583420000000002
	.quad	0x4011f94a2b9d3cbc              # double 4.4934469999999997
	.quad	0x3fcf8bdec5f394b8              # double 0.24645600000000001
	.quad	0x4013df0aa21a719b              # double 4.9678139999999997
	.quad	0x3ff3249d388a8b09              # double 1.196439
	.quad	0x402204215b9a5a8a              # double 9.0080670000000005
	.quad	0x400f6c20d5629d84              # double 3.927797
	.quad	0x40050451b93037d6              # double 2.6271089999999999
	.quad	0x401fd0e065300581              # double 7.9539809999999997
	.quad	0x40178ae3608d0892              # double 5.8856330000000003
	.quad	0x401f69d8c6d612c7              # double 7.8533660000000002
	.quad	0x400bb9999999999a              # double 3.4656250000000002
	.quad	0x3fd83d25247cb70b              # double 0.37873200000000001
	.quad	0x400fa4840e1719f8              # double 3.95533
	.quad	0x4017e3f4eca686e8              # double 5.9726140000000001
	.quad	0x4020d5072085b185              # double 8.4160699999999995
	.quad	0x3ffd033d6c721922              # double 1.813291
	.quad	0x40203fe2a3cea6c2              # double 8.1247760000000007
	.quad	0x4019d5219a847b24              # double 6.4581359999999997
	.quad	0x401a6957470eb24a              # double 6.6028719999999996
	.quad	0x40211ab4528283d3              # double 8.5521569999999993
	.quad	0x40034f0e90bc7b46              # double 2.413602
	.quad	0x40012a2e3c536d65              # double 2.1455959999999998
	.quad	0x4001bc2c1b10fd7e              # double 2.2168809999999999
	.quad	0x402308eda22f6a51              # double 9.5174380000000002
	.quad	0x401bfe236c15d2d0              # double 6.9981819999999999
	.quad	0x3ff93e29307af20f              # double 1.5776760000000001
	.quad	0x3fce11fd5885d313              # double 0.23492399999999999
	.quad	0x401446ffc115df65              # double 5.0693349999999997
	.quad	0x40171c126a65cf68              # double 5.7774140000000003
	.quad	0x3fee8cf9e3864cb6              # double 0.95470900000000003
	.quad	0x4022ea836eb4e981              # double 9.4580339999999996
	.quad	0x40185357e670e2c1              # double 6.0813899999999999
	.quad	0x3ffc578811b1d92b              # double 1.7713699999999999
	.quad	0x4008956191148fda              # double 3.07294
	.quad	0x4023fbf4666ec9e2              # double 9.9920989999999996
	.quad	0x4022425aab474107              # double 9.1295979999999997
	.quad	0x40184262cba732df              # double 6.0648299999999997
	.quad	0x401e9f81a5870da6              # double 7.6557680000000001
	.quad	0x40239b45f17bd8be              # double 9.8032679999999992
	.quad	0x3fe2ded4a1ad6452              # double 0.58970100000000003
	.quad	0x4018de54f7a91969              # double 6.2171209999999997
	.quad	0x4008103c8e25c811              # double 3.0079280000000002
	.quad	0x402178433d6c7219              # double 8.7348879999999998
	.quad	0x4023145bd0e12e84              # double 9.5397630000000006
	.quad	0x4018a93bc0a06ea0              # double 6.1652670000000001
	.quad	0x4002c70b06c43f60              # double 2.3471890000000002
	.quad	0x4014e588e368f084              # double 5.2241549999999997
	.quad	0x3ffe3ba98eda22f7              # double 1.8895660000000001
	.quad	0x4001f1d712a0ec74              # double 2.2430859999999999
	.quad	0x4023a2f78feef5ed              # double 9.8182950000000008
	.quad	0x40221a224edf6124              # double 9.0510429999999999
	.quad	0x400951f926c7eae6              # double 3.1650260000000001
	.quad	0x4022d73bc903ea70              # double 9.4203779999999995
	.quad	0x4011b40420f6f08d              # double 4.4257970000000002
	.quad	0x4011e1d0c8041030              # double 4.470523
	.quad	0x4018426b2f23033a              # double 6.0648619999999998
	.quad	0x401c93aa79bbadc1              # double 7.1442050000000004
	.quad	0x402066bca5375c8e              # double 8.2006580000000007
	.quad	0x4010f76c4827b6fe              # double 4.2416239999999998
	.quad	0x40006755ffe6d58d              # double 2.0504570000000002
	.quad	0x4008c8f75536933a              # double 3.098128
	.quad	0x400846ce358298cc              # double 3.034573
	.quad	0x40123d38476f2a5a              # double 4.5597849999999998
	.quad	0x40073f9d6f112fd3              # double 2.9060619999999999
	.quad	0x401c2be4cd749279              # double 7.0428649999999999
	.quad	0x40108ef5232d2bb2              # double 4.1396069999999998
	.quad	0x40236cf61672324d              # double 9.7128150000000008
	.quad	0x3ffceafbc1acde1a              # double 1.807369
	.quad	0x3fef3cf91a32b12d              # double 0.97619299999999997
	.quad	0x402307fcdab191de              # double 9.5156010000000002
	.quad	0x401752c7325918a0              # double 5.830838
	.quad	0x400ff371971c10d8              # double 3.9938690000000001
	.quad	0x401ee7c1bda5119d              # double 7.7263250000000001
	.quad	0x3fe1f34938583622              # double 0.560948
	.quad	0x4016a87c6327ed85              # double 5.6645370000000002
	.quad	0x401dace91c8eac00              # double 7.4188580000000002
	.quad	0x40084a8869c66d37              # double 3.0363929999999999
	.quad	0x401fdb6a619da9ca              # double 7.9642730000000004
	.quad	0x3fdbc5da6a444178              # double 0.43395099999999998
	.quad	0x401a51e321a2e7f7              # double 6.579968
	.quad	0x4001b0fc71d60631              # double 2.2114189999999998
	.quad	0x401aa07dd4413554              # double 6.6567299999999996
	.quad	0x401b6a4f8726d04e              # double 6.8538189999999997
	.quad	0x40231ac1b10fd7e4              # double 9.5522589999999993
	.quad	0x3ffaf3a57eaa2a0b              # double 1.6844840000000001
	.quad	0x3fc471f79420b3d5              # double 0.15972800000000001
	.quad	0x3fe55e4c51116a8c              # double 0.66776100000000005
	.quad	0x4008e9d0635a426c              # double 3.1141670000000001
	.quad	0x4005661bf37b8d3f              # double 2.674858
	.quad	0x3ff53192ea52ef91              # double 1.324603
	.quad	0x401eb19c5a3e39f7              # double 7.6734479999999996
	.quad	0x4005ce38a7e73a36              # double 2.7256939999999998
	.quad	0x4006444178705426              # double 2.783328
	.quad	0x4020830c88a47ed0              # double 8.2559550000000002
	.quad	0x400bc5c3dee78184              # double 3.471565
	.quad	0x3fc83af31b152f3c              # double 0.189299
	.quad	0x4007b656eefa1e3f              # double 2.9640330000000001
	.quad	0x4001fbeb9e492bc3              # double 2.248008
	.quad	0x400e81fd1569f490              # double 3.8134709999999998
	.quad	0x401f2758e219652c              # double 7.7884250000000002
	.quad	0x400ead40aaeafab5              # double 3.8345959999999999
	.quad	0x4020aed373affb05              # double 8.3414570000000001
	.quad	0x401f2ce13f4a98ab              # double 7.7938280000000004
	.quad	0x40172f8594291750              # double 5.7964079999999996
	.quad	0x401ba704ff43419e              # double 6.9131049999999998
	.quad	0x40134f0ed3d859c9              # double 4.8272050000000002
	.quad	0x40026974a3400b89              # double 2.3014920000000001
	.quad	0x400ae226809d4952              # double 3.3604250000000002
	.quad	0x4021b1209edbf8ba              # double 8.8459520000000005
	.quad	0x4003f51e75360d02              # double 2.4946869999999999
	.quad	0x401e2c5f7c6759ab              # double 7.5433329999999996
	.quad	0x4004c7daa4fca42b              # double 2.597585
	.quad	0x3fe9f09b738e6d16              # double 0.81062100000000004
	.quad	0x4000780c308feac4              # double 2.0586169999999999
	.quad	0x4022a1d14e3bcd36              # double 9.3160500000000006
	.quad	0x3ffd52a0ec743201              # double 1.832673
	.quad	0x4013a1af7d30ad47              # double 4.907896
	.quad	0x401d121ccd962068              # double 7.2676879999999997
	.quad	0x400f3117b5286b59              # double 3.898971
	.quad	0x40092e503fb37436              # double 3.1476139999999999
	.quad	0x401fc4a9cdc44391              # double 7.9420539999999997
	.quad	0x3fd5422ccb3a2596              # double 0.33216400000000001
	.quad	0x400adfe004b7f5a5              # double 3.3593139999999999
	.quad	0x402250010c6f7a0b              # double 9.1562579999999993
	.quad	0x4007acb31c219eb6              # double 2.9593259999999999
	.quad	0x3ffd2dd15f02c4d6              # double 1.8236859999999999
	.quad	0x3ff34edb2f661f19              # double 1.206752
	.quad	0x401674167a95c854              # double 5.6133670000000002
	.quad	0x4019caf640639d5e              # double 6.4482049999999997
	.quad	0x401c81cd5f99c38b              # double 7.12676
	.quad	0x401ee301a79fec9a              # double 7.721686
	.quad	0x4005b44241c3efae              # double 2.7130169999999998
	.quad	0x4012628e92d55a3a              # double 4.596247
	.quad	0x400a4391d57ff9b5              # double 3.2829929999999998
	.quad	0x401ab0e4da09cc32              # double 6.6727480000000003
	.quad	0x3fe5752b90a78290              # double 0.67055299999999995
	.quad	0x401417f993d5347a              # double 5.0234129999999997
	.quad	0x401cd36544fe36d2              # double 7.2064409999999999
	.quad	0x3fd23b03e20ccff2              # double 0.28485199999999999
	.quad	0x401e5e11dbca9692              # double 7.5918650000000003
	.quad	0x40227006f262888b              # double 9.2188029999999994
	.quad	0x4014ec610f0e90bc              # double 5.2308389999999996
	.quad	0x400d9604189374bc              # double 3.6982499999999998
	.quad	0x40143890d5a5b963              # double 5.0552400000000004
	.quad	0x40221ea550870111              # double 9.0598550000000007
	.quad	0x3ff6e2b4959e6256              # double 1.430348
	.quad	0x3fe5bd2fa0d77b7c              # double 0.67934399999999995
	.quad	0x401db86b9c304ccf              # double 7.4300980000000001
	.quad	0x400474cdb7ae5797              # double 2.5570330000000001
	.quad	0x3fcc79d4d834091c              # double 0.222468
	.quad	0x4014633b5393250b              # double 5.0969059999999997
	.quad	0x40058485a0be5109              # double 2.689708
	.quad	0x4016b4cb9ecf6380              # double 5.676558
	.quad	0x401664cd74927914              # double 5.5984400000000001
	.quad	0x3ff2c8feac42e98a              # double 1.1740710000000001
	.quad	0x402019e321a2e7f7              # double 8.0505610000000001
	.quad	0x3ffd6415f45e0b4e              # double 1.836935
	.quad	0x3fecffde7210be94              # double 0.90623399999999998
	.quad	0x3fc12a6b0d9513f9              # double 0.134107
	.quad	0x401dffbc1acde1a0              # double 7.4997410000000002
	.quad	0x40110067cf1c3266              # double 4.2503960000000003
	.quad	0x3fa62ae4b0186120              # double 0.043296000000000001
	.quad	0x40150602c9081c2e              # double 5.2558699999999998
	.quad	0x400e76fc158fb43e              # double 3.8080980000000002
	.quad	0x3fff9872f33ca31e              # double 1.9747189999999999
	.quad	0x40091d95dd4c76d1              # double 3.139446
	.quad	0x4022ba3c85c24c40              # double 9.3637429999999994
	.quad	0x3fe4e7f4dbdf8f47              # double 0.65331499999999998
	.quad	0x401b0133c1ce6c09              # double 6.7511739999999998
	.quad	0x40115539b888722a              # double 4.3332280000000001
	.quad	0x40229790fb65668c              # double 9.2960279999999997
	.quad	0x402232fc69728a61              # double 9.0995819999999998
	.quad	0x4011e78d0cc35ce2              # double 4.4761240000000004
	.quad	0x40202c9eecbfb15b              # double 8.0871499999999994
	.quad	0x401bf61b2a27f1b7              # double 6.9903380000000004
	.quad	0x3fd84723aafff36b              # double 0.37934200000000001
	.quad	0x402198d9513f8db5              # double 8.7985330000000008
	.quad	0x40093a00e27e0efa              # double 3.1533220000000002
	.quad	0x4007edc33721d53d              # double 2.9910950000000001
	.quad	0x3ff20bcdfefbf402              # double 1.1278820000000001
	.quad	0x3fe24d5d80e496ee              # double 0.57194400000000001
	.quad	0x4010ea3875925354              # double 4.2287309999999998
	.quad	0x40166ad9274e22a3              # double 5.6043440000000002
	.quad	0x40160a5a89b951c6              # double 5.5101110000000002
	.quad	0x401da113404ea4a9              # double 7.4073000000000002
	.quad	0x3ff234d6a161e4f7              # double 1.1378999999999999
	.quad	0x4022b6e4c0df58c1              # double 9.3572140000000008
	.quad	0x3fd9df86e3b46fdf              # double 0.40426800000000002
	.quad	0x40121f455a7d2418              # double 4.530538
	.quad	0x4012feb4a66559f7              # double 4.7487360000000001
	.quad	0x401f029a1b9f98b7              # double 7.7525409999999999
	.quad	0x40191da836eb4e98              # double 6.2789619999999999
	.quad	0x400e581beb18116f              # double 3.7930220000000001
	.quad	0x4012ceaa2a0a9585              # double 4.7018209999999998
	.quad	0x4001958afc47e49b              # double 2.1980189999999999
	.quad	0x3ff88aff6d330942              # double 1.533935
	.quad	0x3ff95fc2a8869c67              # double 1.585879
	.quad	0x40198fa22706d506              # double 6.3902669999999997
	.quad	0x401d3bac2df0d413              # double 7.3082739999999999
	.quad	0x4018b5e28aa43351              # double 6.1776220000000004
	.quad	0x40236f1044f1a198              # double 9.7169209999999992
	.quad	0x4021645ae5ffa3ba              # double 8.6960060000000006
	.quad	0x4015d27e9531550d              # double 5.4555610000000003
	.quad	0x401b98405b39e27a              # double 6.8986830000000001
	.quad	0x4023ea14f0520d13              # double 9.9571909999999999
	.quad	0x4017950acc0bdcad              # double 5.8955489999999999
	.quad	0x401f09d7ba6698bb              # double 7.7596119999999997
	.quad	0x402387bf401c4fc2              # double 9.7651310000000002
	.quad	0x3ffc2534373f316e              # double 1.759083
	.quad	0x40170425f202107b              # double 5.7540509999999996
	.quad	0x401464430b178b37              # double 5.097912
	.quad	0x401d456eefa1e3eb              # double 7.317806
	.quad	0x40203c371da37ef6              # double 8.1176080000000006
	.quad	0x40222f8f25a250f8              # double 9.0928889999999996
	.quad	0x3fe5531550ca1cef              # double 0.66639199999999998
	.quad	0x400c8da22f6a50d7              # double 3.5691570000000001
	.quad	0x40228ef911cf355d              # double 9.2792440000000003
	.quad	0x4001e934acaff6d3              # double 2.2388699999999999
	.quad	0x40051a8f7db6e504              # double 2.637969
	.quad	0x400456b3354c1227              # double 2.5423339999999999
	.quad	0x3ff4e10adcd2d44e              # double 1.304942
	.quad	0x400d1c5b4aa9717e              # double 3.638846
	.quad	0x400625ffa3b9ae0c              # double 2.768554
	.quad	0x400b1fb7a5f41aef              # double 3.3904869999999998
	.quad	0x3ff96bfa8f7db6e5              # double 1.588862
	.quad	0x4020d266dbd72bcb              # double 8.4109409999999993
	.quad	0x4020e8fd9fd36f7e              # double 8.4550599999999996
	.quad	0x4009680c73abc947              # double 3.175805
	.quad	0x3fd3792d1287c201              # double 0.30427100000000001
	.quad	0x401ba10e8858ff76              # double 6.9072820000000004
	.quad	0x40167e4de3b8a19d              # double 5.6233440000000003
	.quad	0x401e403fb3743633              # double 7.5627430000000002
	.quad	0x4016dda4052d666b              # double 5.7164460000000004
	.quad	0x40165d8f0c77dd87              # double 5.5913659999999998
	.quad	0x4000531ec0b56755              # double 2.0405859999999998
	.quad	0x4023c853e2d6238e              # double 9.8912650000000006
	.quad	0x400238023a6ce358              # double 2.2773479999999999
	.quad	0x3ff134c5da6a4441              # double 1.0753839999999999
	.quad	0x400ef50f40e5a35d              # double 3.8696579999999998
	.quad	0x3ffca3ca7503b81b              # double 1.7899879999999999
	.quad	0x4005da9f383f0baf              # double 2.7317490000000002
	.quad	0x401ab39756c93a71              # double 6.6753819999999999
	.quad	0x3fed5718eb895076              # double 0.91688199999999997
	.quad	0x4023baf555821294              # double 9.8651529999999993
	.quad	0x40219e6d7a56de33              # double 8.8094289999999997
	.quad	0x40141faca3619978              # double 5.030932
	.quad	0x3ff538c64fdb09a6              # double 1.3263609999999999
	.quad	0x40011ba450acc0be              # double 2.1384970000000001
	.quad	0x4022a6d41b75a74c              # double 9.3258369999999999
	.quad	0x4013e4aa10e02214              # double 4.9733049999999999
	.quad	0x4003c577d955714c              # double 2.4714200000000002
	.quad	0x4022c205bc01a36e              # double 9.3789499999999997
	.quad	0x401e15929670196e              # double 7.5210670000000004
	.quad	0x401bbb8950763a19              # double 6.933141
	.quad	0x401d79f16b11c6d2              # double 7.3690850000000001
	.quad	0x4011c8f29d40ee07              # double 4.4462380000000001
	.quad	0x4015bef1fddebd90              # double 5.4364699999999999
	.quad	0x4023cd4f9c1f85d7              # double 9.9009979999999995
	.quad	0x401a0367e414e7ef              # double 6.5033260000000004
	.quad	0x401bd4c6a3bddfca              # double 6.957789
	.quad	0x40141b738e6d15ad              # double 5.0268079999999999
	.quad	0x40098dbf0563ed0f              # double 3.1942119999999998
	.quad	0x401361ee2435696e              # double 4.8456349999999997
	.quad	0x3fe5a7b4e54f7a92              # double 0.67672200000000005
	.quad	0x401b90dbad3a604e              # double 6.8914629999999999
	.quad	0x3ff65dba908a265f              # double 1.397883
	.quad	0x3fd372e275ab7dc8              # double 0.30388700000000002
	.quad	0x4020ac80a5accd53              # double 8.336919
	.quad	0x3fe6c2f1ed17c5ef              # double 0.71129699999999996
	.quad	0x401e721c8a7a41e5              # double 7.6114369999999995
	.quad	0x4023b2be48a58b3f              # double 9.8491079999999993
	.quad	0x40193508f648c719              # double 6.3017919999999998
	.quad	0x3ffeb4fc610f0e91              # double 1.9191860000000001
	.quad	0x402149bf9c62a1b6              # double 8.6440400000000004
	.quad	0x3ff738f041461b6d              # double 1.4514009999999999
	.quad	0x401d1a615a8deb10              # double 7.2757620000000003
	.quad	0x3fe09e85fd04a2fd              # double 0.51935100000000001
	.quad	0x402390c2e770bd01              # double 9.7827369999999991
	.quad	0x40115b2702a3486f              # double 4.339016
	.quad	0x4011af733a8a3f8a              # double 4.4213380000000004
	.quad	0x3fe0c6d612c6ac21              # double 0.52427199999999996
	.quad	0x3ff7a994185058de              # double 1.478901
	.quad	0x4002db3bfb58d152              # double 2.3570479999999998
	.quad	0x4017d25785f8d2e5              # double 5.9554119999999999
	.quad	0x401c4559b3d07c85              # double 7.0677250000000003
	.quad	0x40183234a87e38eb              # double 6.049029
	.quad	0x401ae68e820e6299              # double 6.7251529999999997
	.quad	0x401a80afa2f05a71              # double 6.6256700000000004
	.quad	0x402248e0008637bd              # double 9.142334
	.quad	0x4010621a2e7f6f4c              # double 4.0958030000000001
	.quad	0x4010ed3671ac14c6              # double 4.2316529999999997
	.quad	0x3fcb604189374bc7              # double 0.21387500000000001
	.quad	0x3fe50a6117720c8d              # double 0.65751700000000002
	.quad	0x3fe9795703f2d3c8              # double 0.79606200000000005
	.quad	0x4017ec558644523f              # double 5.9807949999999996
	.quad	0x3ff4124f227d028a              # double 1.25447
	.quad	0x4010f9b1fab96f22              # double 4.243843
	.quad	0x401c11426fe718a8              # double 7.0168549999999996
	.quad	0x4011d6b053198288              # double 4.459657
	.quad	0x40205229845dc832              # double 8.1604729999999996
	.quad	0x401b57fe08aefb2b              # double 6.8359300000000003
	.quad	0x40156785f8d2e515              # double 5.3510970000000002
	.quad	0x40206c0dd3fe1976              # double 8.2110430000000001
	.quad	0x401acd566cf41f21              # double 6.7005249999999998
	.quad	0x401feccc89b0ee4a              # double 7.981249
	.quad	0x4020cdbbe0157eed              # double 8.4018239999999995
	.quad	0x4022842a454de7ea              # double 9.2581349999999993
	.quad	0x4020c8ea9e6eeb70              # double 8.3924149999999997
	.quad	0x401d8f5515054ac3              # double 7.3899730000000003
	.quad	0x3ff1313165d39970              # double 1.0745100000000001
	.quad	0x40226d6c72192210              # double 9.2137180000000001
	.quad	0x401518c154c985f0              # double 5.2741749999999996
	.quad	0x401ee0bfe3b03e21              # double 7.7194820000000001
	.quad	0x401eee22a2c23748              # double 7.7325540000000003
	.quad	0x3ff03ba12b5e529c              # double 1.0145580000000001
	.quad	0x400869835158b828              # double 3.05152
	.quad	0x401a96299524bfd3              # double 6.6466430000000001
	.quad	0x40226763a1900820              # double 9.2019319999999993
	.quad	0x4002a808c8259e1f              # double 2.3320479999999999
	.quad	0x4018555ef1fddebe              # double 6.0833700000000004
	.quad	0x400fb1a3b14a9047              # double 3.961738
	.quad	0x3fda92bc2fc69729              # double 0.41520600000000002
	.quad	0x3ff4f9bfdf7e8039              # double 1.3109740000000001
	.quad	0x4020075968512232              # double 8.0143540000000009
	.quad	0x3fe0d460aa64c2f8              # double 0.52592499999999998
	.quad	0x400103b46fdeb52d              # double 2.1268090000000002
	.quad	0x40044a6fc58ab92c              # double 2.536346
	.quad	0x40211c8eef1bac2e              # double 8.5557780000000001
	.quad	0x3ff5ffc2224edf61              # double 1.374941
	.quad	0x3fe164cf8d716d2b              # double 0.54355600000000004
	.quad	0x3ff3df1e0828c36e              # double 1.2419720000000001
	.quad	0x400be80f12c27a63              # double 3.4883099999999998
	.quad	0x40220346dc5d6388              # double 9.0063999999999993
	.quad	0x40225068db8bac71              # double 9.1570499999999999
	.quad	0x401eefc610f0e90c              # double 7.7341540000000002
	.quad	0x400053c70c996b76              # double 2.0409069999999998
	.quad	0x40029985271bcdbc              # double 2.3249610000000001
	.quad	0x401bcb549f94855e              # double 6.9485650000000003
	.quad	0x40067670196d8f50              # double 2.8078310000000002
	.quad	0x3ff4e074ea8da7f4              # double 1.304799
	.quad	0x4010a65cf67b1c00              # double 4.1624639999999999
	.quad	0x40077203a322af57              # double 2.9306709999999998
	.quad	0x401e5be1650a45d4              # double 7.5897269999999999
	.quad	0x401ae13cab81f96a              # double 6.7199580000000001
	.quad	0x3fe2cba301216830              # double 0.58735800000000005
	.quad	0x3fb3328b6d86ec18              # double 0.074990000000000001
	.quad	0x4012ce3f359ff4fd              # double 4.7014129999999996
	.quad	0x401243810e8858ff              # double 4.5659219999999996
	.quad	0x400e3929670196d9              # double 3.777911
	.quad	0x4010b8fabda0dfdf              # double 4.180644
	.quad	0x400e7af20ea5b531              # double 3.8100320000000001
	.quad	0x3ff444c48adeebb3              # double 1.2667889999999999
	.quad	0x3fe9b73f316e3715              # double 0.80361899999999997
	.quad	0x4014be80bed740c4              # double 5.1860379999999999
	.quad	0x401fe894812be48a              # double 7.9771289999999997
	.quad	0x401a8098915bdd76              # double 6.6255819999999996
	.quad	0x40213f16d2aa5c5f              # double 8.6232209999999991
	.quad	0x402317b09203a323              # double 9.5462690000000005
	.quad	0x402255cf2495e17e              # double 9.1675959999999996
	.quad	0x401ae8b86b15f890              # double 6.7272660000000002
	.quad	0x401fe6cacd184c27              # double 7.9753829999999998
	.quad	0x3fc4cadddf43c7d6              # double 0.162441
	.quad	0x40229a3e18698351              # double 9.3012549999999994
	.quad	0x401c223e18698351              # double 7.0334399999999997
	.quad	0x401a1fb97bb73083              # double 6.5309809999999997
	.quad	0x4021d4b33daf8df8              # double 8.9154300000000006
	.quad	0x401da67b5f1bef4a              # double 7.4125800000000002
	.quad	0x3ff225efe9318762              # double 1.1342620000000001
	.quad	0x40235a0ec7432010              # double 9.6758939999999996
	.quad	0x401c12a305532618              # double 7.0182000000000002
	.quad	0x401608a7a41e57da              # double 5.5084520000000001
	.quad	0x40043cb2d905c033              # double 2.5296379999999998
	.quad	0x40009b6672fba01f              # double 2.075879
	.quad	0x3ffb5d462c343b71              # double 1.710272
	.quad	0x4011230a915379fb              # double 4.2842200000000004
	.quad	0x402096a7264a16a5              # double 8.2942440000000008
	.quad	0x401862d98bf7f067              # double 6.096533
	.quad	0x3fd5ea28fe260b2d              # double 0.34241700000000003
	.quad	0x3fb0f0b6b6e0d23d              # double 0.066172999999999996
	.quad	0x3ff906887a8d64d8              # double 1.564095
	.quad	0x400b743e963dc487              # double 3.4317600000000001
	.quad	0x3ff1926d8b1dd5d4              # double 1.098249
	.quad	0x40032db7ae5796c0              # double 2.3973230000000001
	.quad	0x4002cb72c5197a25              # double 2.3493400000000002
	.quad	0x401e913be22e5de1              # double 7.6418299999999996
	.quad	0x4023deeefa1e3eaf              # double 9.9354169999999992
	.quad	0x3ffcbbbc6eb0b7c3              # double 1.7958339999999999
	.quad	0x40234577b7c7820a              # double 9.6356789999999997
	.quad	0x3fe5db39e279dd3c              # double 0.68301100000000003
	.quad	0x400b3d9d3458cd21              # double 3.4050850000000001
	.quad	0x401984ce3de6149c              # double 6.3796929999999996
	.quad	0x3ff8d3b6cbd987c6              # double 1.551688
	.quad	0x400bef7ec3547e07              # double 3.4919410000000002
	.quad	0x401694c122749f0e              # double 5.6452679999999997
	.quad	0x40148f2170931013              # double 5.1397760000000003
	.quad	0x401a19aaa3ad18d2              # double 6.5250649999999997
	.quad	0x401f5493c89f40a3              # double 7.8325950000000004
	.quad	0x400165bf26f1dc51              # double 2.1746810000000001
	.quad	0x401b4a1059ea5721              # double 6.8223279999999997
	.quad	0x401eb900c521dda0              # double 7.6806669999999997
	.quad	0x401efeb0b7c3504c              # double 7.7487209999999997
	.quad	0x4010190364388ebd              # double 4.0244270000000002
	.quad	0x401c5cf91a32b12d              # double 7.0907939999999998
	.quad	0x4020ad8ec95bff04              # double 8.3389799999999993
	.quad	0x3ff822584f4c6e6e              # double 1.5083850000000001
	.quad	0x3fe997ca2120e1f8              # double 0.79977900000000002
	.quad	0x401f2658c4bd33d3              # double 7.7874480000000003
	.quad	0x3ffad6ffc115df65              # double 1.6774899999999999
	.quad	0x40115af5ba2be059              # double 4.3388280000000004
	.quad	0x4022ff264a16a487              # double 9.4983389999999996
	.quad	0x402318bc59b8023a              # double 9.5483119999999992
	.quad	0x40070afcce1c5825              # double 2.8803649999999998
	.quad	0x400af17939a7c17b              # double 3.3679070000000002
	.quad	0x40004e3ef284167b              # double 2.0382060000000002
	.quad	0x4022b4628027d88c              # double 9.3523139999999997
	.quad	0x3fd088db0574b407              # double 0.258353
	.quad	0x4022375d78811b1e              # double 9.1081350000000008
	.quad	0x401f28d21bc126a6              # double 7.7898639999999997
	.quad	0x4020b5b61bb05faf              # double 8.3549050000000005
	.quad	0x4022321ccd962068              # double 9.0978759999999994
	.quad	0x3fe789b951c5c572              # double 0.73556200000000005
	.quad	0x4020fc9fd7a13c25              # double 8.4934069999999995
	.quad	0x4017f5432873bc90              # double 5.9895139999999998
	.quad	0x401c1df090f733a9              # double 7.0292380000000003
	.quad	0x40068aada33bd9cb              # double 2.8177140000000001
	.quad	0x40226b9baa1511e0              # double 9.210172
	.quad	0x401786238da3c212              # double 5.8809950000000004
	.quad	0x4015851b4fe79ee0              # double 5.3799869999999999
	.quad	0x3fe2abda0dfdef85              # double 0.58347800000000005
	.quad	0x40117c26dce39b45              # double 4.3712419999999996
	.quad	0x3fd6a06e9ff0cbb0              # double 0.35354200000000002
	.quad	0x40114d249e44fa05              # double 4.3253349999999999
	.quad	0x4004b398e9707182              # double 2.5876939999999999
	.quad	0x40206706f6944674              # double 8.2012250000000008
	.quad	0x401028a6dacabc51              # double 4.0396989999999997
	.quad	0x4010552ef911cf35              # double 4.0831869999999997
	.quad	0x3fcfa4484944ed70              # double 0.247201
	.quad	0x402208739b024f66              # double 9.0165070000000007
	.quad	0x400c7481b21c475e              # double 3.5568879999999998
	.quad	0x40219fca85caafbc              # double 8.8120919999999998
	.quad	0x4002d67e414e7ee9              # double 2.354733
	.quad	0x40237526d8b1dd5d              # double 9.7288119999999995
	.quad	0x401bfc0229a5ebb7              # double 6.9961019999999996
	.quad	0x4018820ea5b530cf              # double 6.1270090000000001
	.quad	0x400745de15ca6ca0              # double 2.9091149999999999
	.quad	0x3ff35ae70c1333b9              # double 1.2096929999999999
	.quad	0x401914e6e221c8a8              # double 6.2704120000000003
	.quad	0x400757c3d68405b4              # double 2.9178540000000002
	.quad	0x401481d10b1feeb3              # double 5.1267740000000002
	.quad	0x401cd73c0c1fc8f3              # double 7.2101899999999999
	.quad	0x3ff9d269595feda6              # double 1.6138699999999999
	.quad	0x4019dafff36ac647              # double 6.4638669999999996
	.quad	0x4023d2d6a9c560c8              # double 9.9117940000000004
	.quad	0x400118d25edd0529              # double 2.1371199999999999
	.quad	0x401a491cd1c7de51              # double 6.5713990000000004
	.quad	0x4008b455219a847b              # double 3.0880529999999999
	.quad	0x40045715c63ae254              # double 2.5425219999999999
	.quad	0x4021166a76965f52              # double 8.5437809999999992
	.quad	0x40164e8bc169c23b              # double 5.5767049999999996
	.quad	0x4008e4d013a92a30              # double 3.1117249999999999
	.quad	0x3ff1f481b21c475e              # double 1.1221939999999999
	.quad	0x401071e29b6b2af1              # double 4.1112159999999998
	.quad	0x40228b9f127f5e85              # double 9.2726980000000001
	.quad	0x401c2ce24bba12b6              # double 7.0438320000000001
	.quad	0x4020836a1e81cb47              # double 8.2566690000000005
	.quad	0x401320d5a5b9628d              # double 4.7820650000000002
	.quad	0x401c2fb4c3c18b50              # double 7.0465879999999999
	.quad	0x40137b1ee2435697              # double 4.8702350000000001
	.quad	0x40182b499d0203e6              # double 6.0422729999999998
	.quad	0x401c488765ba6efc              # double 7.0708289999999998
	.quad	0x4018036e2eb1c433              # double 6.0033500000000002
	.quad	0x4020bfa7eb6bf445              # double 8.3743280000000002
	.quad	0x4014903b3e9a6f82              # double 5.1408509999999996
	.quad	0x400672ba9d1f6018              # double 2.8060200000000002
	.quad	0x401b9a11a975afb0              # double 6.9004580000000004
	.quad	0x400e733a0407cc7d              # double 3.806263
	.quad	0x401097318fc50481              # double 4.1476499999999996
	.quad	0x40167a23bff8a8f4              # double 5.6192770000000003
	.quad	0x402078316a055758              # double 8.2347520000000003
	.quad	0x401ca28d434a01ac              # double 7.1587420000000002
	.quad	0x40063be7f2c3009b              # double 2.7792509999999999
	.quad	0x4019fab81f969e3d              # double 6.4948430000000004
	.quad	0x401b618dac258d58              # double 6.8452669999999998
	.quad	0x402270ac18f81e8a              # double 9.2200629999999997
	.quad	0x400fbcf1c3265ade              # double 3.9672580000000002
	.quad	0x402244404a72ead9              # double 9.1333029999999997
	.quad	0x401473bb40b34e77              # double 5.1130190000000004
	.quad	0x4012beb8950763a2              # double 4.6862510000000004
	.quad	0x3ffa82699c7bcc29              # double 1.656839
	.quad	0x3ff7c3c18b502abb              # double 1.4852920000000001
	.quad	0x4020793db7f17375              # double 8.2367989999999995
	.quad	0x40143a13c254a3c6              # double 5.0567159999999998
	.quad	0x4009c5ee568a5050              # double 3.2216459999999998
	.quad	0x4022f85a708ede55              # double 9.4850650000000005
	.quad	0x401a6f3ba775fb2f              # double 6.6086260000000001
	.quad	0x400f1797cc39ffd6              # double 3.88652
	.quad	0x40081ad96a6a0126              # double 3.0131100000000002
	.quad	0x4020b6323bbc6eb1              # double 8.3558520000000005
	.quad	0x3ff849917939a7c1              # double 1.5179609999999999
	.quad	0x401715c52e72da12              # double 5.7712599999999998
	.quad	0x40206c32a8c9b845              # double 8.2113239999999994
	.quad	0x4018e7d9988d2a20              # double 6.2264160000000004
	.quad	0x401d92263d816acf              # double 7.3927240000000003
	.quad	0x4013ad9a95421c04              # double 4.9195349999999998
	.quad	0x401e6bdf8f473040              # double 7.6053449999999998
	.quad	0x3fe8e102795703f3              # double 0.77746700000000002
	.quad	0x3feb6030c23fab11              # double 0.85549200000000003
	.quad	0x3fea9971c10d7bea              # double 0.83123100000000005
	.quad	0x401552a0663c74fb              # double 5.3306899999999997
	.quad	0x4018ef5be5d9e40d              # double 6.2337490000000004
	.quad	0x4018122f6a50d6b2              # double 6.0177589999999999
	.quad	0x3fbf996fa82e87d3              # double 0.123435
	.quad	0x4020037f1737542a              # double 8.0068289999999998
	.quad	0x40109bb341e14be0              # double 4.1520510000000002
	.quad	0x401c7a85caafbc1b              # double 7.1196510000000002
	.quad	0x402285d54da4ce81              # double 9.261393
	.quad	0x3ffd74cf4a558ea8              # double 1.841018
	.quad	0x3fc5881a1554fbdb              # double 0.168216
	.quad	0x40169fbe76c8b439              # double 5.6559999999999997
	.quad	0x40082453d20f2bed              # double 3.017738
	.quad	0x3fec5bdb5d894813              # double 0.88621300000000003
	.quad	0x3fef3c2dadb8348f              # double 0.97609599999999996
	.quad	0x3fe3e6d7a56de332              # double 0.62192899999999995
	.quad	0x3fe38abd5dc40075              # double 0.61068599999999995
	.quad	0x40030c069e7fb268              # double 2.3808720000000001
	.quad	0x4021c64ead0c3d25              # double 8.8873189999999997
	.quad	0x4011dfba450acc0c              # double 4.4684840000000001
	.quad	0x4018293469941850              # double 6.0402389999999997
	.quad	0x4002577531db445f              # double 2.2927040000000001
	.quad	0x3fce73b42cc2d6aa              # double 0.23790600000000001
	.quad	0x400ebaecd07852f8              # double 3.841272
	.quad	0x4008c26e5471715c              # double 3.0949369999999998
	.quad	0x401399c842fa5094              # double 4.9001780000000004
	.quad	0x3ffabb2aae297397              # double 1.670695
	.quad	0x4003d18a009f6230              # double 2.4773139999999998
	.quad	0x400e05186db50f41              # double 3.752488
	.quad	0x40105d5a5b9628cc              # double 4.0911650000000002
	.quad	0x401ab2ad3e920c07              # double 6.6744890000000003
	.quad	0x4013be1693c03bc5              # double 4.9356330000000002
	.quad	0x40108e74afd54541              # double 4.1391169999999997
	.quad	0x3fd53f4eca686e7e              # double 0.33198899999999998
	.quad	0x3ff6d783dff3f0fe              # double 1.427616
	.quad	0x3fd75fa658c4bd34              # double 0.36521300000000001
	.quad	0x3ff5821e1d2178f7              # double 1.3442670000000001
	.quad	0x4011927d88c1db01              # double 4.3930569999999998
	.quad	0x40237fd2849cb253              # double 9.7496530000000003
	.quad	0x4019d4fa48301a7a              # double 6.457986
	.quad	0x40042e0a84be4042              # double 2.522481
	.quad	0x3ff335aea3161a1e              # double 1.2006060000000001
	.quad	0x4012b6683c297bfa              # double 4.6781319999999997
	.quad	0x4015c8398a654930              # double 5.445532
	.quad	0x400f5c4c9c90c4df              # double 3.9200680000000001
	.quad	0x401665a57646ae3a              # double 5.5992639999999998
	.quad	0x401689439de481f5              # double 5.6340469999999998
	.quad	0x401deedfa43fe5c9              # double 7.4832749999999998
	.quad	0x3fe4c05f6ba0620b              # double 0.64848300000000003
	.quad	0x401da73eee525892              # double 7.4133259999999996
	.quad	0x3ff4b8cb8e086bdf              # double 1.2951159999999999
	.quad	0x40195e8427418d69              # double 6.342301
	.quad	0x3fcb1832fcac8e69              # double 0.211676
	.quad	0x400ce6d7a56de332              # double 3.6127159999999998
	.quad	0x4016fb352a843809              # double 5.7453200000000004
	.quad	0x4009f0813cab81f9              # double 3.2424339999999998
	.quad	0x401d7c215b9a5a8a              # double 7.3712210000000002
	.quad	0x400c6d41b75a74c1              # double 3.5533480000000002
	.quad	0x401019c347e8ccde              # double 4.0251590000000004
	.quad	0x40165ff4ba51a006              # double 5.5937070000000002
	.quad	0x402241b0ccbc05d5              # double 9.1283019999999997
	.quad	0x4012359d99029ae5              # double 4.552359
	.quad	0x401eb1a32b12d341              # double 7.6734739999999996
	.quad	0x3ffd021d10b1feeb              # double 1.813016
	.quad	0x4015aa2f8bdec5f4              # double 5.4161970000000004
	.quad	0x4022137d63022dd8              # double 9.0380660000000006
	.quad	0x40215fc4199fe436              # double 8.6870429999999992
	.quad	0x3ffb3b8d3f1843c4              # double 1.7020390000000001
	.quad	0x40103438d1d8a548              # double 4.0509979999999999
	.quad	0x4003111cf355cd92              # double 2.383356
	.quad	0x3fa7f1d81f106680              # double 0.046767000000000003
	.quad	0x40129ccff21b3aef              # double 4.6531370000000001
	.quad	0x400b002ea960b6fa              # double 3.375089
	.quad	0x4017b6049ecb31c2              # double 5.9277519999999999
	.quad	0x40219a24aada33be              # double 8.8010610000000007
	.quad	0x4023622d72ffd1dd              # double 9.6917530000000002
	.quad	0x3fca71cda2b5a20e              # double 0.206598
	.quad	0x3ff88b673c4f3ba7              # double 1.5340339999999999
	.quad	0x40208c16bdb1a6d7              # double 8.2736110000000007
	.quad	0x4011d18b502ababf              # double 4.4546330000000003
	.quad	0x40155d55a3a08399              # double 5.3411470000000003
	.quad	0x401c47521144cbe2              # double 7.0696490000000001
	.quad	0x400c8a875d56f32c              # double 3.5676410000000001
	.quad	0x40022ea4228997c4              # double 2.2727740000000001
	.quad	0x3fe5889a02752546              # double 0.672925
	.quad	0x4016d2e1ac57e23f              # double 5.7059389999999999
	.quad	0x3fc5269595feda66              # double 0.16524
	.quad	0x40116965b20b8067              # double 4.3529270000000002
	.quad	0x3fefb64388ebcc6c              # double 0.99099899999999996
	.quad	0x3ff5183621fafc8b              # double 1.318411
	.quad	0x3ffb97ebaf102364              # double 1.7245900000000001
	.quad	0x40166499d0203e64              # double 5.5982430000000001
	.quad	0x401fee3476295209              # double 7.9826220000000001
	.quad	0x400ea77ff151e753              # double 3.8317869999999998
	.quad	0x4019e2f1a9fbe76d              # double 6.4716250000000004
	.quad	0x40088df82b1f687b              # double 3.069321
	.quad	0x402287d36f7e3d1d              # double 9.2652850000000004
	.quad	0x4022a22120e1f7d7              # double 9.3166589999999996
	.quad	0x4021db63d3e4ef03              # double 8.9284960000000009
	.quad	0x40149cd74927913f              # double 5.1531650000000004
	.quad	0x3ff16bf8769ec2ce              # double 1.0888599999999999
	.quad	0x401622a77a2cecc8              # double 5.5338419999999999
	.quad	0x4020ce0b2c83ec89              # double 8.4024289999999997
	.quad	0x40200ce5d5b24e9c              # double 8.0251909999999995
	.quad	0x400255d031055b8a              # double 2.2919010000000002
	.quad	0x3fdabecaab8a5ce6              # double 0.41789500000000002
	.quad	0x40062ba1f4b1ee24              # double 2.7713049999999999
	.quad	0x40205b72a38b8ae3              # double 8.1786089999999998
	.quad	0x4019f45c358afc48              # double 6.4886330000000001
	.quad	0x3fea03f4eca686e8              # double 0.81298300000000001
	.quad	0x40159dbf8b9baa15              # double 5.4040509999999999
	.quad	0x4023eb5610adcd2d              # double 9.9596409999999995
	.quad	0x4019809bf9c62a1b              # double 6.3755949999999997
	.quad	0x400554013ec460ee              # double 2.6660180000000002
	.quad	0x3fe5f4751ce28ed6              # double 0.68609100000000001
	.quad	0x4009d12556d19ded              # double 3.227122
	.quad	0x40166b21c475e636              # double 5.6046209999999999
	.quad	0x4023fdc37a3db3c0              # double 9.9956320000000005
	.quad	0x401fbc9795b35b0c              # double 7.9341720000000002
	.quad	0x400961d2178f68be              # double 3.1727639999999999
	.quad	0x3ff3427fa1a0cf18              # double 1.203735
	.quad	0x4017b669057d1783              # double 5.9281350000000002
	.quad	0x4013fe73e681a9b9              # double 4.9984890000000002
	.quad	0x3ff53c58ab92c062              # double 1.3272330000000001
	.quad	0x4020a852f7f498c4              # double 8.3287580000000005
	.quad	0x3ffe4ec84f8f8a4c              # double 1.894234
	.quad	0x401917ab324851a8              # double 6.2731139999999996
	.quad	0x40101da597d49d7c              # double 4.0289520000000003
	.quad	0x4003c91105e1c151              # double 2.4731770000000002
	.quad	0x3fe6ba6efc371da3              # double 0.71025799999999994
	.quad	0x401eb417ca2120e2              # double 7.675872
	.quad	0x40009f64cf8d716d              # double 2.0778289999999999
	.quad	0x3ffcd1d8a5482385              # double 1.8012319999999999
	.quad	0x4011ecefed63454a              # double 4.4813840000000003
	.quad	0x401f712dfd694ccb              # double 7.8605270000000002
	.quad	0x401aab089a027525              # double 6.6670249999999998
	.quad	0x3f88dbcec84f8f8a              # double 0.012137999999999999
	.quad	0x3fff4ecfa69be09c              # double 1.9567410000000001
	.quad	0x401aec76d117b528              # double 6.7309219999999996
	.quad	0x402331908e581cf8              # double 9.5968060000000008
	.quad	0x401dc29cfdd22856              # double 7.4400519999999997
	.quad	0x40177963dc486ad3              # double 5.8685450000000001
	.quad	0x40143dba0a526959              # double 5.0602799999999997
	.quad	0x4016e74d9c6b0532              # double 5.7258820000000004
	.quad	0x401df47dc37a3db4              # double 7.4887610000000002
	.quad	0x40183842b734b513              # double 6.0549419999999996
	.quad	0x4020fd9b3d07c84b              # double 8.4953249999999993
	.quad	0x401285cdd50a88f0              # double 4.630668
	.quad	0x402219f3e89a88ad              # double 9.0506890000000002
	.quad	0x401386e115592d99              # double 4.8817180000000002
	.quad	0x400365109070fbec              # double 2.4243480000000002
	.quad	0x401961b003686a4d              # double 6.3453980000000003
	.quad	0x4022fe102795703f              # double 9.4962169999999996
	.quad	0x400da78d0cc35ce2              # double 3.7068120000000002
	.quad	0x3fd97df5cf2495e1              # double 0.39831299999999997
	.quad	0x4008c6940357a355              # double 3.096962
	.quad	0x4014a2b8c75c4a84              # double 5.1589080000000003
	.quad	0x4022659253543aeb              # double 9.1983820000000005
	.quad	0x401dad4d834091c1              # double 7.4192410000000004
	.quad	0x40238f2d1aeb3dd1              # double 9.7796409999999998
	.quad	0x4008569878316a05              # double 3.0422829999999998
	.quad	0x401ffa93293d102c              # double 7.9947020000000002
	.quad	0x40235d7a56de3327              # double 9.6825740000000006
	.quad	0x401b8c105186db51              # double 6.886781
	.quad	0x40214f644955b467              # double 8.6550619999999991
	.quad	0x40174f609dcf8940              # double 5.8275170000000003
	.quad	0x4015952ac753e708              # double 5.3956710000000001
	.quad	0x4019da9de8b3b320              # double 6.4634929999999997
	.quad	0x4005cfe8ab4fa483              # double 2.726518
	.quad	0x4023da14cec41dd2              # double 9.9259400000000007
	.quad	0x401fdc62e4d1a650              # double 7.9652209999999997
	.quad	0x401e068900c521de              # double 7.5063820000000003
	.quad	0x4020ebd0e12e83a1              # double 8.4605779999999999
	.quad	0x4021eae3e6c4c597              # double 8.9587699999999995
	.quad	0x40211704790b8499              # double 8.5449560000000009
	.quad	0x400827ea5f84cad5              # double 3.0194899999999998
	.quad	0x3ff23d7d3910c2c6              # double 1.140012
	.quad	0x400ee9c886162f16              # double 3.8641519999999998
	.quad	0x3fc4e7c49fd7a13c              # double 0.163323
	.quad	0x401fe86df82b1f68              # double 7.9769819999999995
	.quad	0x4021b5ad106ee30d              # double 8.8548360000000006
	.quad	0x4021a3f7f06705c9              # double 8.8202510000000007
	.quad	0x3ffcc7021d10b1ff              # double 1.798586
	.quad	0x40145804102ff8ec              # double 5.0859529999999999
	.quad	0x4020ccf3775b8130              # double 8.4002949999999998
	.quad	0x400b20d1b71758e2              # double 3.391025
	.quad	0x4023cf225b749add              # double 9.9045590000000007
	.quad	0x4012341355475a32              # double 4.5508550000000003
	.quad	0x40220b0ab2e1693c              # double 9.0215659999999999
	.quad	0x4021a5933e35c5b5              # double 8.8233890000000006
	.quad	0x4002359bc33f8551              # double 2.276176
	.quad	0x400d030014f8b589              # double 3.626465
	.quad	0x3fe914d940789614              # double 0.78379500000000001
	.quad	0x40171f2e8c0485a1              # double 5.7804510000000002
	.quad	0x401d7708ede54b49              # double 7.3662450000000002
	.quad	0x4006f2b3461309c8              # double 2.868506
	.quad	0x40200cab606b7aa2              # double 8.0247449999999994
	.quad	0x401aa9f94855da27              # double 6.6659899999999999
	.quad	0x401f525aab474107              # double 7.8304239999999998
	.quad	0x4014e2b8c75c4a84              # double 5.2214080000000003
	.quad	0x4021219cbee807bc              # double 8.5656490000000005
	.quad	0x401b143419e30015              # double 6.76973
	.quad	0x3ff8236f3b213e3e              # double 1.508651
	.quad	0x400b05015c209247              # double 3.3774440000000001
	.quad	0x401ce23810e88590              # double 7.220917
	.quad	0x401c941fa7653437              # double 7.1446519999999998
	.quad	0x400a0cfd08d4bad8              # double 3.2563420000000001
	.quad	0x4017918b0d0edc3c              # double 5.8921320000000001
	.quad	0x401b456eac860568              # double 6.8178049999999999
	.quad	0x402161c23b7952d2              # double 8.6909349999999996
	.quad	0x40067afea3df6db9              # double 2.8100559999999999
	.quad	0x400e0a8c154c985f              # double 3.75515
	.quad	0x4020361e2de87097              # double 8.1056989999999995
	.quad	0x401ed6f6d7625205              # double 7.7099260000000002
	.quad	0x3ffbbccaf709b739              # double 1.733592
	.quad	0x3fea77ad4b2745bf              # double 0.82710899999999998
	.quad	0x401fe8b75ea67e84              # double 7.9772619999999996
	.quad	0x400b9b03e20ccff2              # double 3.450691
	.quad	0x4016fe1a3f4666ed              # double 5.7481470000000003
	.quad	0x400d9971c10d7bea              # double 3.6999240000000002
	.quad	0x3fe11620685553ef              # double 0.53395099999999995
	.quad	0x4009c2d7b634dad3              # double 3.2201379999999999
	.quad	0x4011020817fc7608              # double 4.2519840000000002
	.quad	0x4020e36fe2e6ea85              # double 8.4442129999999995
	.quad	0x400d00b45ae5ffa4              # double 3.6253440000000001
	.quad	0x3fc564f97edc7ef1              # double 0.16714399999999999
	.quad	0x3ff6de57d9dba909              # double 1.4292830000000001
	.quad	0x4003986fcdee34fc              # double 2.4494319999999998
	.quad	0x402287ad2999567e              # double 9.2649930000000005
	.quad	0x402341d1f601797d              # double 9.6285550000000004
	.quad	0x401a8127b2cc7086              # double 6.6261279999999996
	.quad	0x3ffad65b20b8066c              # double 1.677333
	.quad	0x4001821101b00368              # double 2.1885089999999998
	.quad	0x4013b37a80cf9e38              # double 4.9252719999999997
	.quad	0x4000f1dc50ce4ead              # double 2.118096
	.quad	0x401c839fba450acc              # double 7.128539
	.quad	0x402030583621fafd              # double 8.0944230000000008
	.quad	0x40197f70153bd167              # double 6.3744509999999996
	.quad	0x40016192a737110e              # double 2.1726429999999999
	.quad	0x3ffd38f14db59579              # double 1.8264020000000001
	.quad	0x40065ee02a77a2cf              # double 2.7963260000000001
	.quad	0x4023af1bac2df0d4              # double 9.8420079999999998
	.quad	0x40064077036c9c0b              # double 2.7814770000000002
	.quad	0x3ff7601040bfe3b0              # double 1.4609529999999999
	.quad	0x402379d57ff9b563              # double 9.7379569999999997
	.quad	0x401aa74c09c3ce21              # double 6.6633760000000004
	.quad	0x4008ae6a76965f52              # double 3.0851639999999998
	.quad	0x4009b991361dc93f              # double 3.2156090000000002
	.quad	0x401431187e7c06e2              # double 5.0479450000000003
	.quad	0x40043dd7ecbb7f9d              # double 2.5301969999999998
	.quad	0x401f69146e4c0df6              # double 7.8526170000000004
	.quad	0x3ff1edaa92e62132              # double 1.1205240000000001
	.quad	0x3fcff6d330941c82              # double 0.24972
	.quad	0x401675b20b8066c3              # double 5.6149370000000003
	.quad	0x3fdf6440f2389720              # double 0.49049399999999999
	.quad	0x402251adea897636              # double 9.1595300000000002
	.quad	0x40165ebd09e12a52              # double 5.5925180000000001
	.quad	0x4017cf45e0b4e11e              # double 5.9524150000000002
	.quad	0x40095f5515054ac3              # double 3.1715490000000002
	.quad	0x4022c41f644955b4              # double 9.3830519999999992
	.quad	0x400faeed8904f6e0              # double 3.9604140000000001
	.quad	0x3fdc36262cba732e              # double 0.440805
	.quad	0x4020456fb8f57f73              # double 8.1356179999999991
	.quad	0x4021a4f355cd91ef              # double 8.8221690000000006
	.quad	0x3fedbfee2c98e53f              # double 0.92967900000000003
	.quad	0x401ea940357a3550              # double 7.6652839999999998
	.quad	0x401f553a81dc0db2              # double 7.8332309999999996
	.quad	0x401709f05ea24cc7              # double 5.7597060000000004
	.quad	0x3fe426f826edaa93              # double 0.62975700000000001
	.quad	0x4021bc4fc1df3301              # double 8.8677960000000002
	.quad	0x3ff4efd5454152b1              # double 1.3085530000000001
	.quad	0x3ff4fe6e653868fd              # double 1.312117
	.quad	0x402225b7cfe58601              # double 9.0736679999999996
	.quad	0x401cce2478854cdb              # double 7.2013109999999996
	.quad	0x401e2411c2a02321              # double 7.5352240000000003
	.quad	0x4013ad894812be49              # double 4.9194690000000003
	.quad	0x401c1625204af923              # double 7.0216260000000004
	.quad	0x400ae7c9de050375              # double 3.363178
	.quad	0x3fec162281344806              # double 0.87770199999999998
	.quad	0x4019120a30db6a1f              # double 6.2676170000000004
	.quad	0x40132fce746cb967              # double 4.7966860000000002
	.quad	0x4002b0f733a8a3f9              # double 2.3364090000000002
	.quad	0x401e441e57d9dba9              # double 7.5665219999999999
	.quad	0x40231121ee675148              # double 9.5334620000000001
	.quad	0x4022cd1a65061416              # double 9.4005919999999996
	.quad	0x402033358f2e05cd              # double 8.1000180000000004
	.quad	0x3fc8889c1b54195d              # double 0.19166900000000001
	.quad	0x40196e1650a45d42              # double 6.357507
	.quad	0x4018fee30caa326e              # double 6.2489129999999999
	.quad	0x401642cfd8f0c77e              # double 5.5652460000000001
	.quad	0x400a237585be1a82              # double 3.2673139999999998
	.quad	0x402052fff36ac647              # double 8.1621089999999992
	.quad	0x40204551d68c692f              # double 8.1353899999999992
	.quad	0x40239ad5171e29b7              # double 9.8024070000000005
	.quad	0x3fc08a47ecfe9b7c              # double 0.12922
	.quad	0x4022e730c67168f9              # double 9.4515440000000001
	.quad	0x3fff0fd6d7e889c2              # double 1.9413670000000001
	.quad	0x4001890a350d2807              # double 2.1919140000000001
	.quad	0x401cedc6e2a80065              # double 7.2322040000000003
	.quad	0x401a4e935b91f70e              # double 6.5767340000000001
	.quad	0x401e2c6c54bcf0b7              # double 7.5433820000000002
	.quad	0x40199ec0f88333fd              # double 6.4050330000000004
	.quad	0x40189b5e0f7fcfc4              # double 6.151726
	.quad	0x3fff93b7d84901d2              # double 1.9735640000000001
	.quad	0x3fdb188b11409a24              # double 0.423373
	.quad	0x40153d3b6cbd987c              # double 5.3097969999999997
	.quad	0x40004743201040c0              # double 2.034796
	.quad	0x401c7902de00d1b7              # double 7.1181749999999999
	.quad	0x40191f2452c59fb2              # double 6.2804120000000001
	.quad	0x40117bc72e275ab8              # double 4.3708770000000001
	.quad	0x4020d5dc6195464e              # double 8.4176970000000004
	.quad	0x40156b93ccd0fe8b              # double 5.3550560000000003
	.quad	0x401dff077ccc0379              # double 7.4990519999999998
	.quad	0x3ff11041cc532a49              # double 1.0664689999999999
	.quad	0x40103fe4bcad9ad8              # double 4.0623959999999997
	.quad	0x40100f0cbaf965b2              # double 4.014697
	.quad	0x3fd332c1f42bb667              # double 0.29997299999999999
	.quad	0x3fb1a4acf312b1b3              # double 0.068918999999999994
	.quad	0x40096a6eb91b3f21              # double 3.1769690000000002
	.quad	0x402184c35ce18266              # double 8.7593029999999992
	.quad	0x3ff71e310dbf0564              # double 1.444871
	.quad	0x3ffb4dcfcc5b8dc5              # double 1.7064969999999999
	.quad	0x400e9ad538ac18f8              # double 3.8256019999999999
	.quad	0x401e74aec8d5c747              # double 7.6139479999999997
	.quad	0x401ae5996744b2b7              # double 6.7242179999999996
	.quad	0x401a8644955b4678              # double 6.6311210000000003
	.quad	0x4000f6672fba01ef              # double 2.120314
	.quad	0x401db87980f55de6              # double 7.4301510000000004
	.quad	0x401e329fe004b7f6              # double 7.5494380000000003
	.quad	0x3ffb3be4473cd573              # double 1.7021219999999999
	.quad	0x4014b84449dbec25              # double 5.1799480000000004
	.quad	0x4013b0baa582dbe8              # double 4.922587
	.quad	0x3fff35371971c10d              # double 1.9504919999999999
	.quad	0x3ff32ceaaf35e311              # double 1.198466
	.quad	0x401ec0fecdd0d8cb              # double 7.6884719999999999
	.quad	0x3fecfaaef2c73259              # double 0.90560099999999999
	.quad	0x401995681ecd4aa1              # double 6.395905
	.quad	0x401f3892ab68cef6              # double 7.8052469999999996
	.quad	0x3fe756909aed56b0              # double 0.72931699999999999
	.quad	0x3fbb40c4156e264e              # double 0.106457
	.quad	0x4023c4bd1244a622              # double 9.8842549999999996
	.quad	0x401efb502ababead              # double 7.7454229999999997
	.quad	0x402080ded288ce70              # double 8.2516999999999996
	.quad	0x4021ea40d90e23af              # double 8.9575259999999997
	.quad	0x4011b2f901083dbc              # double 4.4247779999999999
	.quad	0x400d208a697aeddd              # double 3.640889
	.quad	0x401023e5b8561d43              # double 4.035056
	.quad	0x400ebd5347a5b0ff              # double 3.842444
	.quad	0x4006ac308feac42f              # double 2.8340770000000002
	.quad	0x4020bdab9f559b3d              # double 8.3704499999999999
	.quad	0x3ffb40a06e9ff0cc              # double 1.7032780000000001
	.quad	0x401811b2e59af9ec              # double 6.0172840000000001
	.quad	0x4020f62d40aaeafb              # double 8.4808140000000005
	.quad	0x400b3ae0c1765775              # double 3.4037489999999999
	.quad	0x4023abdb7f173754              # double 9.8356589999999997
	.quad	0x3ff6d6de33269df9              # double 1.4274579999999999
	.quad	0x402002db61bb05fb              # double 8.0055800000000001
	.quad	0x4005c5af6c69b5a6              # double 2.7215259999999999
	.quad	0x3ffc7a5093964a5a              # double 1.7798620000000001
	.quad	0x40239869a4df47fa              # double 9.7976810000000008
	.quad	0x401e248e8a71de6a              # double 7.5357000000000003
	.quad	0x4011ad9a95421c04              # double 4.4195349999999998
	.quad	0x3fd6e19fc2a8869c              # double 0.35752099999999998
	.quad	0x401330945f9df549              # double 4.7974410000000001
	.quad	0x401311a11233df2b              # double 4.7672160000000003
	.quad	0x4017f434a01abd1b              # double 5.9884820000000003
	.quad	0x4016443137b07076              # double 5.5665940000000003
	.quad	0x40225fb09203a323              # double 9.1868940000000006
	.quad	0x4010bec41dd1a21f              # double 4.1862950000000003
	.quad	0x401625525cc42635              # double 5.5364469999999999
	.quad	0x4015ddf505d0fa59              # double 5.466755
	.quad	0x40072f6a50d6b229              # double 2.8981520000000001
	.quad	0x40236e3a19008206              # double 9.715287
	.quad	0x40180582dbe7f2c3              # double 6.005382
	.quad	0x40136fea8112ba17              # double 4.8592930000000001
	.quad	0x3ffaeee957470eb2              # double 1.6833279999999999
	.quad	0x40205be09bb6aa4c              # double 8.1794480000000007
	.quad	0x40103d97b30f8c65              # double 4.060149
	.quad	0x40100e47dc37a3db              # double 4.0139459999999998
	.quad	0x40173e0370cdc875              # double 5.8105599999999997
	.quad	0x401a87ae147ae148              # double 6.6325000000000003
	.quad	0x3fcdc779a6b50b0f              # double 0.23265
	.quad	0x401115061416377a              # double 4.2705310000000001
	.quad	0x3fea0bae89eba6ad              # double 0.81392600000000004
	.quad	0x400eeb85a4f00ef1              # double 3.8650009999999999
	.quad	0x40229e7f0aa21a72              # double 9.3095630000000007
	.quad	0x402029dbca9691a7              # double 8.0817549999999994
	.quad	0x401e4a8155d5f56a              # double 7.5727589999999996
	.quad	0x401705d28d002e23              # double 5.7556859999999999
	.quad	0x4016b895d0b73d19              # double 5.6802590000000004
	.quad	0x400bcb9a176ddacf              # double 3.474415
	.quad	0x402088f2becedd48              # double 8.2674769999999995
	.quad	0x401580a06e9ff0cc              # double 5.3756120000000003
	.quad	0x4010077bbf93ff26              # double 4.0073080000000001
	.quad	0x4023bb1e7d9988d3              # double 9.8654670000000006
	.quad	0x3ff01e74299d883c              # double 1.0074350000000001
	.quad	0x40230d946c332f01              # double 9.5265229999999991
	.quad	0x401eadc0db2702a3              # double 7.6696809999999997
	.quad	0x4016114c660a2014              # double 5.5168929999999996
	.quad	0x401c0d4cb9ecf638              # double 7.012988
	.quad	0x4017e882adc4c9c9              # double 5.977061
	.quad	0x40052da6e75ff60a              # double 2.6472910000000001
	.quad	0x401885c4651f3e8a              # double 6.1306320000000003
	.quad	0x4021ec3e10060781              # double 8.961411
	.quad	0x40059045fe111277              # double 2.695446
	.quad	0x40225515ce9e5e24              # double 9.1661819999999991
	.quad	0x4020b662dc6e2a80              # double 8.356223
	.quad	0x3ff6df7c6759ab6d              # double 1.429562
	.quad	0x400c19b3d07c84b6              # double 3.5125500000000001
	.quad	0x3ffc2cd9e83e425b              # double 1.76095
	.quad	0x4003f7e3d1cc100e              # double 2.4960399999999998
	.quad	0x402259dc2f405f6c              # double 9.1755080000000006
	.quad	0x3ff807a398201cd6              # double 1.501865
	.quad	0x3ff17634dad31fcd              # double 1.091359
	.quad	0x4021ba0c49ba5e35              # double 8.8633749999999996
	.quad	0x3fdf66a98244e93e              # double 0.49064099999999999
	.quad	0x3fcb18090b417ca2              # double 0.211671
	.quad	0x400f60181e03f706              # double 3.9219210000000002
	.quad	0x400adf3b645a1cac              # double 3.359
	.quad	0x3ff50bed740c4157              # double 1.315412
	.quad	0x4020e2bf11f926c8              # double 8.4428640000000001
	.quad	0x3ff85dc2f405f6ba              # double 1.522891
	.quad	0x400f7f8a0902de01              # double 3.9372750000000001
	.quad	0x4016e9f0e4da09cc              # double 5.7284579999999998
	.quad	0x401656dca07f66e8              # double 5.5848259999999996
	.quad	0x3ff8c51eb851eb85              # double 1.548125
	.quad	0x4023c145d851654d              # double 9.8774859999999993
	.quad	0x3ffbc5ae5ffa3b9b              # double 1.735762
	.quad	0x401ccc3b0c4588a0              # double 7.1994439999999997
	.quad	0x401d294680171194              # double 7.2903079999999996
	.quad	0x401341016ce789e7              # double 4.8134819999999996
	.quad	0x402368d77b7c7821              # double 9.7047690000000006
	.quad	0x402374061847f562              # double 9.7266089999999998
	.quad	0x40005e71044f1a1a              # double 2.0461140000000002
	.quad	0x401a51cf355cd91f              # double 6.5798920000000001
	.quad	0x402061c58255b036              # double 8.1909600000000005
	.quad	0x4001ce3ac0c62e4d              # double 2.225698
	.quad	0x401e1d0e991ff716              # double 7.5283759999999997
	.quad	0x3fe63a68b19a415f              # double 0.69462999999999997
	.quad	0x40176e1ef73c0c20              # double 5.8575400000000002
	.quad	0x4012c99b6f5caf2d              # double 4.6968819999999996
	.quad	0x4022fc40f2389720              # double 9.4926829999999995
	.quad	0x400f0405b39e279e              # double 3.8769640000000001
	.quad	0x3fe5432a8c9b8455              # double 0.66444899999999996
	.quad	0x400726f2e8c0485a              # double 2.894018
	.quad	0x4013159210385c68              # double 4.7710650000000001
	.quad	0x3feb11c6d1e108c4              # double 0.84592
	.quad	0x401b07ee4e26d480              # double 6.7577449999999999
	.quad	0x3ff09955714b9cb7              # double 1.0374350000000001
	.quad	0x401f73eccc469510              # double 7.8632080000000002
	.quad	0x400680daa0cae643              # double 2.8129170000000001
	.quad	0x401cf5dd095af295              # double 7.2401010000000001
	.quad	0x40203454de7ea5f8              # double 8.1022099999999995
	.quad	0x401fcce89656eefa              # double 7.9501059999999999
	.quad	0x4023a68533b10774              # double 9.8252349999999992
	.quad	0x3ff6e936c58eeaea              # double 1.431937
	.quad	0x3ff7e5ffa3b9ae0c              # double 1.493652
	.quad	0x3fdc4c942d490e67              # double 0.44217400000000001
	.quad	0x40058c8bc9cd3e0c              # double 2.6936260000000001
	.quad	0x4015b7625204af92              # double 5.4290859999999999
	.quad	0x401d508a265f0f5a              # double 7.3286519999999999
	.quad	0x40216ed288ce703b              # double 8.71645
	.quad	0x40018d7a56de3327              # double 2.1940810000000002
	.quad	0x402245b2702a3487              # double 9.1361270000000001
	.quad	0x401204d72799a1fd              # double 4.5047269999999999
	.quad	0x401c081733226c3c              # double 7.0079010000000004
	.quad	0x4012b4ac6cdaf4ae              # double 4.6764390000000002
	.quad	0x401638298cc14403              # double 5.5548460000000004
	.quad	0x40136eab367a0f91              # double 4.8580750000000004
	.quad	0x40070a51e321a2e8              # double 2.880039
	.quad	0x3ffe5b9b66f9335d              # double 1.897365
	.quad	0x40042a8a82a5614e              # double 2.520772
	.quad	0x4022206f262888b5              # double 9.0633479999999995
	.quad	0x40223f345069a4df              # double 9.1234459999999995
	.quad	0x3fbf761cbccf28c8              # double 0.12289600000000001
	.quad	0x3ff4fd45a5fc7e6b              # double 1.3118339999999999
	.quad	0x3ff9e67620ee8d11              # double 1.618765
	.quad	0x401a300e27e0ef9a              # double 6.5469290000000004
	.quad	0x4009f289dadfb507              # double 3.2434270000000001
	.quad	0x40099feda6612839              # double 3.20309
	.quad	0x401639dcf893faf4              # double 5.5565069999999999
	.quad	0x401bb02afdda8bd2              # double 6.9220389999999998
	.quad	0x40214c812be48a59              # double 8.6494230000000005
	.quad	0x401233b7521144cc              # double 4.5505040000000001
	.quad	0x3fe88aa433508f65              # double 0.76692400000000005
	.quad	0x40225b2f661f18ca              # double 9.178096
	.quad	0x3ffffe920c069e80              # double 1.9996510000000001
	.quad	0x4018e485a0be5109              # double 6.223166
	.quad	0x40135c558644523f              # double 4.8401699999999996
	.quad	0x4001e393ee5eedcc              # double 2.2361219999999999
	.quad	0x4014c3f705857aff              # double 5.1913720000000003
	.quad	0x4009cc436fc158fb              # double 3.2247379999999999
	.quad	0x3ff3e7f2c3009b30              # double 1.2441279999999999
	.quad	0x40182f5126634118              # double 6.046208
	.quad	0x40103e1a8262456f              # double 4.0606479999999996
	.quad	0x401a6d69d30270f4              # double 6.6068490000000004
	.quad	0x40085cb6848beb5b              # double 3.0452699999999999
	.quad	0x40135ebd9018e758              # double 4.8425200000000004
	.quad	0x40234fa05143bf72              # double 9.6555199999999992
	.quad	0x4004f78feef5ec81              # double 2.6208800000000001
	.quad	0x4019bd92fb19e732              # double 6.4351310000000002
	.quad	0x4020b04f09528f19              # double 8.3443529999999999
	.quad	0x40229fccc0379314              # double 9.3121089999999995
	.quad	0x3fd2f95d4e8fb00c              # double 0.29647000000000001
	.quad	0x401b217a46173b86              # double 6.7826930000000001
	.quad	0x400159513f8db489              # double 2.168612
	.quad	0x401e727e0ef99807              # double 7.611809
	.quad	0x40074616b54e2b06              # double 2.9092229999999999
	.quad	0x401c340314877681              # double 7.0507929999999996
	.quad	0x4023ac1a261bf37c              # double 9.8361370000000007
	.quad	0x3ff37913e81450f0              # double 1.21706
	.quad	0x3ffff3311a543f1c              # double 1.9968729999999999
	.quad	0x401f67a4a48f96e1              # double 7.8512139999999996
	.quad	0x3fff48b652370479              # double 1.955252
	.quad	0x401fce2ef4e0114d              # double 7.9513509999999998
	.quad	0x40180dc2b0ea1837              # double 6.0134379999999998
	.quad	0x401890dbf0563ed1              # double 6.141464
	.quad	0x40181f0c34c1a8ac              # double 6.0303199999999997
	.quad	0x401073d9ec700043              # double 4.1131359999999999
	.quad	0x401bbd5e8d5410f9              # double 6.9349309999999997
	.quad	0x402091656eefa1e4              # double 8.2839770000000001
	.quad	0x3fe794fce746cb96              # double 0.73693699999999995
	.quad	0x401fec564f97edc8              # double 7.980798
	.quad	0x3fe96cdd0d8cb07d              # double 0.794539
	.quad	0x40133c0724b76f6d              # double 4.8086209999999996
	.quad	0x401927a0b5ed8d37              # double 6.2886990000000003
	.quad	0x400d26f2e8c0485a              # double 3.644018
	.quad	0x40143f10ecb74de0              # double 5.0615880000000004
	.quad	0x4017bf544bb1af3a              # double 5.9368449999999999
	.quad	0x4013d77143393ab4              # double 4.9603929999999998
	.quad	0x40176ceb356da017              # double 5.8563660000000004
	.quad	0x3ff8fb3a68b19a41              # double 1.5613349999999999
	.quad	0x40238aaf1455219b              # double 9.7708670000000008
	.quad	0x401c75668c261390              # double 7.114649
	.quad	0x401f6667f90d9d77              # double 7.8500059999999995
	.quad	0x40074539fba450ad              # double 2.9088020000000001
	.quad	0x4016396d0917d6b6              # double 5.5560799999999997
	.quad	0x3fbeb7dc7abfb9bf              # double 0.119993
	.quad	0x40229324c8366517              # double 9.2873900000000003
	.quad	0x401818d21bc126a6              # double 6.0242389999999997
	.quad	0x40172432873bc904              # double 5.7853490000000001
	.quad	0x3ffb7eda66128390              # double 1.7184699999999999
	.quad	0x401f5e28aa433509              # double 7.841952
	.quad	0x4013e8d434a01abd              # double 4.9773719999999999
	.quad	0x4020609a671ef30a              # double 8.1886779999999995
	.quad	0x3fc5dd7ecbb7f9d7              # double 0.170822
	.quad	0x401a67f62b6ae7d5              # double 6.6015249999999996
	.quad	0x400b9ca29845dc83              # double 3.4514819999999999
	.quad	0x401a3f0fe047d3d4              # double 6.5615839999999999
	.quad	0x4017680f55de58e6              # double 5.8516209999999997
	.quad	0x3fb4c25072085b18              # double 0.081089999999999995
	.quad	0x400ac7b2cc70867b              # double 3.3475090000000001
	.quad	0x4022f1a133c1ce6c              # double 9.4719329999999999
	.quad	0x40115de15ca6ca04              # double 4.3416800000000002
	.quad	0x401692f8bdec5f39              # double 5.6435269999999997
	.quad	0x401a74230fcf80dc              # double 6.6134149999999998
	.quad	0x401f0fac6045baf5              # double 7.7653059999999998
	.quad	0x40174e9531550ca2              # double 5.8267410000000002
	.quad	0x401b08cef672b884              # double 6.7586019999999998
	.quad	0x3ff85807fed20297              # double 1.5214920000000001
	.quad	0x3ffbfb6672fba01f              # double 1.748877
	.quad	0x402228f190d173fb              # double 9.0799679999999992
	.quad	0x400bbd883ba3443d              # double 3.4675449999999999
	.quad	0x40023f9bdc69f8c2              # double 2.2810589999999999
	.quad	0x40231c0ebedfa440              # double 9.5548000000000001
	.quad	0x40218a47a9e2bcf9              # double 8.7700779999999998
	.quad	0x4022ffd6733ebbfd              # double 9.4996829999999992
	.quad	0x400361c68ec52a41              # double 2.422742
	.quad	0x40169b4b72c5197a              # double 5.6516549999999999
	.quad	0x3fd75afaf8594291              # double 0.36492799999999997
	.quad	0x401a8d03d9a95422              # double 6.6377100000000002
	.quad	0x4022bcdfaca36199              # double 9.3688939999999991
	.quad	0x40147820a30db6a2              # double 5.1173120000000001
	.quad	0x400f3341e14bdfd2              # double 3.9000279999999998
	.quad	0x4018e9307af20ea6              # double 6.2277240000000003
	.quad	0x40211e74299d883c              # double 8.5594800000000006
	.quad	0x40234093faf42785              # double 9.6261290000000006
	.quad	0x40162b67c286f8ad              # double 5.5423879999999999
	.quad	0x4021a3474107314d              # double 8.8189030000000006
	.quad	0x40156d9ec7000432              # double 5.3570510000000002
	.quad	0x400e7a9a8049667b              # double 3.8098649999999998
	.quad	0x3ffe94562e09fe87              # double 1.9112150000000001
	.quad	0x401c72b51bd61f5c              # double 7.1120190000000001
	.quad	0x401cef22c01e68a1              # double 7.2335310000000002
	.quad	0x400c8d2e514c22ee              # double 3.5689359999999999
	.quad	0x40061eec39799e52              # double 2.7650990000000002
	.quad	0x4013bc17a89331a1              # double 4.9336840000000004
	.quad	0x400685c2d2780779              # double 2.8153130000000002
	.quad	0x4014ea6b0d9513f9              # double 5.2289240000000001
	.quad	0x40215ab777d0f1f5              # double 8.6771809999999991
	.quad	0x401e6fe4bcad9ad8              # double 7.6092709999999996
	.quad	0x400324b6e935b91f              # double 2.3929269999999998
	.quad	0x40130f9f44d44567              # double 4.7652559999999999
	.quad	0x4015cb966be7afa7              # double 5.4488159999999999
	.quad	0x401c1aac53b0813d              # double 7.0260480000000003
	.quad	0x4010303361565c2d              # double 4.0470709999999999
	.quad	0x401fd373affb04ee              # double 7.9564959999999996
	.quad	0x3ff9e597d49d7ba6              # double 1.6185529999999999
	.quad	0x40225a28fe260b2d              # double 9.1760940000000009
	.quad	0x401f4410b630a915              # double 7.8164699999999998
	.quad	0x3fc27a7c9de05037              # double 0.14436299999999999
	.quad	0x402073738e6d15ad              # double 8.2254909999999999
	.quad	0x4002d0624dd2f1aa              # double 2.35175
	.quad	0x401b48c868b9fdbd              # double 6.8210769999999998
	.quad	0x40064e12e83a109d              # double 2.788122
	.quad	0x401245054ac29bf1              # double 4.5674029999999997
	.quad	0x3fc05ce5b4245f5b              # double 0.127835
	.quad	0x40194a29845dc832              # double 6.3224239999999998
	.quad	0x4015c98201cd5f9a              # double 5.4467850000000002
	.quad	0x3ff4b5f4e4430b18              # double 1.2944230000000001
	.quad	0x3fe9577963992c8c              # double 0.79192799999999996
	.quad	0x401cb3bf2f555821              # double 7.1755339999999999
	.quad	0x402174dd72367e41              # double 8.7282519999999995
	.quad	0x4009f3198288051d              # double 3.2437010000000002
	.quad	0x4012ab7e90ff9724              # double 4.6674749999999996
	.quad	0x4001488509bf9c63              # double 2.1604100000000002
	.quad	0x4011acc0bdcad14a              # double 4.418704
	.quad	0x4004837ac3eb7cbb              # double 2.5641989999999999
	.quad	0x4022690fd7e45804              # double 9.2051990000000003
	.quad	0x4013112ba16e7a31              # double 4.7667679999999999
	.quad	0x401886e7a311e860              # double 6.1317430000000002
	.quad	0x402300a697aeddce              # double 9.5012709999999991
	.quad	0x402016c0724b76f7              # double 8.0444370000000003
	.quad	0x4022baf533f42353              # double 9.3651520000000001
	.quad	0x40229846c764ae00              # double 9.2974150000000008
	.quad	0x400876473471f794              # double 3.0577529999999999
	.quad	0x3ff5e80cf9e3864d              # double 1.3691530000000001
	.quad	0x40118d3d4280ae10              # double 4.3879289999999997
	.quad	0x4015f79fa97e132b              # double 5.4918199999999997
	.quad	0x4012469ec2ce464a              # double 4.5689650000000004
	.quad	0x401e13bd5992428d              # double 7.5192769999999997
	.quad	0x4004415ebfa8f7db              # double 2.5319189999999998
	.quad	0x4014a817763e4abe              # double 5.1641519999999996
	.quad	0x40118edc7ef177a7              # double 4.389513
	.quad	0x401fb83fd5022574              # double 7.9299309999999998
	.quad	0x400b10be0ded288d              # double 3.383175
	.quad	0x3fff9ddc1e7967cb              # double 1.97604
	.quad	0x401564901d19157b              # double 5.3482060000000002
	.quad	0x40176bff47735c18              # double 5.8554659999999998
	.quad	0x4003c90abb44e50c              # double 2.4731649999999998
	.quad	0x402392305532617c              # double 9.7855249999999998
	.quad	0x401b57f77af64064              # double 6.8359050000000003
	.quad	0x3ff59f51697f1f9b              # double 1.351396
	.quad	0x400812cf95d4e8fb              # double 3.009185
	.quad	0x400131bcdbbe0158              # double 2.149286
	.quad	0x402026fa1e3eaf68              # double 8.0761269999999996
	.quad	0x3fedf268d32830a1              # double 0.93584100000000003
	.quad	0x3fd930941c8216c6              # double 0.39359
	.quad	0x401bad052934acb0              # double 6.918965
	.quad	0x3fdbf68be2f7b17d              # double 0.43692300000000001
	.quad	0x40167316e3715400              # double 5.6123919999999998
	.quad	0x40225d5b24e9c454              # double 9.1823359999999993
	.quad	0x401aae7d1351159c              # double 6.6703989999999997
	.quad	0x4003b5d56f32bdc2              # double 2.4637859999999998
	.quad	0x401e0ec4e7253da7              # double 7.5144229999999998
	.quad	0x402278ab0c88a47f              # double 9.2356800000000003
	.quad	0x4013e1fafc8b007a              # double 4.9706840000000003
	.quad	0x40210c34a01abd1b              # double 8.5238390000000006
	.quad	0x400d3fce3150dae4              # double 3.656155
	.quad	0x40125f041461b6d4              # double 4.5927889999999998
	.quad	0x401528cf7caa758a              # double 5.2898540000000001
	.quad	0x3fe8b65ecc3e3194              # double 0.772262
	.quad	0x402023c8c0ce91c9              # double 8.0698910000000001
	.quad	0x4023e83d9a95421c              # double 9.9535949999999999
	.quad	0x4020e8fbeb9e492c              # double 8.4550470000000004
	.quad	0x4000c30c23fab10c              # double 2.0952380000000002
	.quad	0x4014afb69984a0e4              # double 5.1715949999999999
	.quad	0x4013a5143bf72713              # double 4.9112099999999996
	.quad	0x4023f5abc0e38a7e              # double 9.9798259999999992
	.quad	0x3ff925aff2a172ac              # double 1.571701
	.quad	0x3fc35a294141e9af              # double 0.15118899999999999
	.quad	0x3ffc8968943e1006              # double 1.783547
	.quad	0x40161a871a3b14a9              # double 5.525906
	.quad	0x4023e9285a921cce              # double 9.9553860000000007
	.quad	0x40215db9c7368ad7              # double 8.6830580000000008
	.quad	0x401b5e642bf9830e              # double 6.8421789999999998
	.quad	0x4013379b34a44c7b              # double 4.804303
	.quad	0x401246c5d206c871              # double 4.5691139999999999
	.quad	0x3ff6d590c0ad03da              # double 1.4271400000000001
	.quad	0x402084af2d7f950c              # double 8.2591490000000007
	.quad	0x400d60ddc6195465              # double 3.6722980000000001
	.quad	0x4010390ff9724745              # double 4.0557249999999998
	.quad	0x401b819e731d2e0e              # double 6.8765809999999998
	.quad	0x401b303ff69014b6              # double 6.7971190000000004
	.quad	0x401ea1de69ad42c4              # double 7.6580750000000002
	.quad	0x401619491f2dc2b1              # double 5.5246930000000001
	.quad	0x3fdee8533b107747              # double 0.48293000000000003
	.quad	0x40042544fe36d224              # double 2.5181979999999999
	.quad	0x401914d1633482bf              # double 6.2703300000000004
	.quad	0x40174ed6fda836eb              # double 5.8269919999999997
	.quad	0x40001bd8383ad9f1              # double 2.0135960000000002
	.quad	0x401e141355475a32              # double 7.5196050000000003
	.quad	0x3ff69454152b0a70              # double 1.4112130000000001
	.quad	0x40129d8f0c77dd87              # double 4.6538659999999998
	.quad	0x401d2e9e1b089a02              # double 7.2955249999999996
	.quad	0x3ff575536933a040              # double 1.3411439999999999
	.quad	0x3ff542b0ea18372e              # double 1.3287819999999999
	.quad	0x400a7eb9e492bc30              # double 3.3118780000000001
	.quad	0x3ff736e503fb3743              # double 1.4509019999999999
	.quad	0x40224d2502eec7c9              # double 9.1506729999999994
	.quad	0x401ce144cbe1eb42              # double 7.219989
	.quad	0x401c82b7baecd078              # double 7.1276539999999997
	.quad	0x400a68bda9435ac9              # double 3.3011430000000002
	.quad	0x400303a8e71476b0              # double 2.3767870000000002
	.quad	0x4023d3fceb78897f              # double 9.9140390000000007
	.quad	0x401b57fc7607c41a              # double 6.8359240000000003
	.quad	0x400c829bf162ae4b              # double 3.563774
	.quad	0x4013b461f9f01b86              # double 4.9261549999999996
	.quad	0x401270b955f7835a              # double 4.6100820000000002
	.quad	0x401a8edd8b60f1b2              # double 6.6395169999999997
	.quad	0x401f3f4f0d844d01              # double 7.8118249999999997
	.quad	0x3f974107314ca926              # double 0.022709
	.quad	0x402361682f944242              # double 9.6902480000000004
	.quad	0x401c718b502ababf              # double 7.1108830000000003
	.quad	0x40190a704bc27632              # double 6.2601940000000003
	.quad	0x400a346bacf74470              # double 3.2755960000000002
	.quad	0x40219b0af5fd47bf              # double 8.8028180000000003
	.quad	0x4001bcc857f3061c              # double 2.2171789999999998
	.quad	0x3fdd11b1d92b7fe1              # double 0.45420500000000003
	.quad	0x402031ec7000431c              # double 8.0975070000000002
	.quad	0x4020fdd54da4ce81              # double 8.495768
	.quad	0x401a3641b328b6d8              # double 6.5529849999999996
	.quad	0x401bc1fafc8b007a              # double 6.9394340000000003
	.quad	0x4020af04577d9557              # double 8.3418299999999999
	.quad	0x4007e14940bbb1f2              # double 2.9850029999999999
	.quad	0x401598bbd3804535              # double 5.3991540000000002
	.quad	0x4011befcbd556085              # double 4.4365110000000003
	.quad	0x3fa3a908a265f0f6              # double 0.038399000000000003
	.quad	0x401ddf038e29f9cf              # double 7.4677870000000004
	.quad	0x4010c43dccea28fe              # double 4.1916419999999999
	.quad	0x40225cb2745bf26f              # double 9.1810489999999998
	.quad	0x3fe6f3c2dadb8349              # double 0.717256
	.quad	0x40203fe69270b06c              # double 8.1248059999999995
	.quad	0x40217e5082cf52b9              # double 8.7467079999999999
	.quad	0x400631fff79c8430              # double 2.7744140000000002
	.quad	0x401bc5f17bd8be73              # double 6.9433040000000004
	.quad	0x4017644d44567126              # double 5.8479510000000001
	.quad	0x401d89741d084e83              # double 7.3842319999999999
	.quad	0x40120fa76534373f              # double 4.5152869999999998
	.quad	0x401243c536d655e3              # double 4.5661820000000004
	.quad	0x3fe151dabe27179c              # double 0.541242
	.quad	0x40231afb5d031056              # double 9.5526990000000005
	.quad	0x3ff89f46ed245b29              # double 1.538886
	.quad	0x4000df0025bfad2a              # double 2.1088870000000002
	.quad	0x40147af7d30ad46f              # double 5.1200859999999997
	.quad	0x4016cecf63800219              # double 5.7019630000000001
	.quad	0x401c6d22c881e471              # double 7.1065779999999998
	.quad	0x4023d6c2acb85a4f              # double 9.9194539999999999
	.quad	0x4006734acaff6d33              # double 2.806295
	.quad	0x40182add9c27e953              # double 6.0418609999999999
	.quad	0x400a9929ed3953df              # double 3.3247870000000002
	.quad	0x3fda1e57d9dba909              # double 0.40810200000000002
	.quad	0x400805b5b70691ea              # double 3.0027879999999998
	.quad	0x400071409a240315              # double 2.0552990000000002
	.quad	0x40048160d887ebf2              # double 2.5631729999999999
	.quad	0x400fc631f8a0902e              # double 3.9717750000000001
	.quad	0x401523c536d655e3              # double 5.2849320000000004
	.quad	0x4023e0a88effe2a4              # double 9.9387860000000003
	.quad	0x4016924b33daf8df              # double 5.6428649999999996
	.quad	0x401b0f950b955f78              # double 6.7652169999999998
	.quad	0x401fa6d8f4f93bc1              # double 7.9129370000000003
	.quad	0x40199ba0a5269596              # double 6.40198
	.quad	0x40234562e09fe868              # double 9.6355199999999996
	.quad	0x3fecdd1c3ac929aa              # double 0.90199099999999999
	.quad	0x4007b3eff1950332              # double 2.96286
	.quad	0x401bf5cd91eeaa6d              # double 6.9900419999999999
	.quad	0x4017f0d0edc3bd5a              # double 5.9851720000000004
	.quad	0x40067ba237cdcca7              # double 2.810368
	.quad	0x401e0b517a46173c              # double 7.5110530000000004
	.quad	0x40213711f926c7eb              # double 8.6075590000000002
	.quad	0x400314d0dcfcc5b9              # double 2.3851640000000001
	.quad	0x401d8518f3eccc47              # double 7.3799780000000004
	.quad	0x4007445803cd141a              # double 2.9083709999999998
	.quad	0x401ea4dd2f1a9fbe              # double 7.6609999999999996
	.quad	0x4014591d57ff9b56              # double 5.0870259999999998
	.quad	0x40142167a95c853c              # double 5.0326219999999999
	.quad	0x4003188b11409a24              # double 2.386984
	.quad	0x4015919157abb880              # double 5.3921559999999999
	.quad	0x401b1d60a6330510              # double 6.778689
	.quad	0x40191f7c6759ab6d              # double 6.280748
	.quad	0x4016236f3b213e3e              # double 5.5346039999999999
	.quad	0x401d4ef0281ba7fc              # double 7.3270879999999998
	.quad	0x3ff7d810624dd2f2              # double 1.4902500000000001
	.quad	0x4023ed36d655e28b              # double 9.9633090000000006
	.quad	0x4016f991ff7164c7              # double 5.7437209999999999
	.quad	0x401efbba12b5e52a              # double 7.7458270000000002
	.quad	0x401e584cf0739b02              # double 7.5862309999999997
	.quad	0x3ff145f9df548ece              # double 1.0795840000000001
	.quad	0x401622606fac6046              # double 5.5335710000000002
	.quad	0x4014ecfa69be09bb              # double 5.2314239999999996
	.quad	0x3ff1b811f4f50a03              # double 1.1074390000000001
	.quad	0x4020ec4fe36d2242              # double 8.4615469999999995
	.quad	0x3fe39322f2734f83              # double 0.611711
	.quad	0x3fd59435ac8a3726              # double 0.337171
	.quad	0x3fe6ea76965f5276              # double 0.71612100000000001
	.quad	0x401fa5870da5daf0              # double 7.9116479999999996
	.quad	0x4021e4dcca70d1fa              # double 8.9469969999999996
	.quad	0x3fe222339c0ebee0              # double 0.56667500000000004
	.quad	0x3ffed083dbc23316              # double 1.925907
	.quad	0x4021daa0663c74fb              # double 8.9270049999999994
	.quad	0x40024c74b838c112              # double 2.2873320000000001
	.quad	0x400fd4bd76ee73e7              # double 3.9788770000000002
	.quad	0x3ffcebf9830e3cda              # double 1.8076110000000001
	.quad	0x4020cd77318fc505              # double 8.4013000000000009
	.quad	0x400ac24cc6822ff1              # double 3.3448730000000002
	.quad	0x401926ad70e6f2e9              # double 6.2877710000000002
	.quad	0x4013fc6822ff0889              # double 4.9964909999999998
	.quad	0x40099491f2dc2b0f              # double 3.1975440000000002
	.quad	0x401a18b8ae31d713              # double 6.5241420000000003
	.quad	0x4021c165d3996fa8              # double 8.8777299999999997
	.quad	0x402319ad42c3c9ef              # double 9.5501500000000003
	.quad	0x401cf3343fa2ad3f              # double 7.2375040000000004
	.quad	0x3ffe250f840181e0              # double 1.8840479999999999
	.quad	0x401c9fdb8fde2ef5              # double 7.1561110000000001
	.quad	0x400ad724fa8b4bf9              # double 3.355051
	.quad	0x400aab69db65ecc4              # double 3.3336980000000001
	.quad	0x40222b9abf338716              # double 9.0851649999999999
	.quad	0x40165dc50ce4ead1              # double 5.5915720000000002
	.quad	0x401e16b50b0f27bb              # double 7.5221749999999998
	.quad	0x3feee82d7b634dad              # double 0.96584199999999997
	.quad	0x40230a28997c3d68              # double 9.5198409999999995
	.quad	0x4013965e89225311              # double 4.8968449999999999
	.quad	0x4022b1ba3ca7503c              # double 9.3471240000000008
	.quad	0x400d8d8b1dd5d3dd              # double 3.6941130000000002
	.quad	0x3ff153ae685db76b              # double 1.0829299999999999
	.quad	0x401ea003686a4ca5              # double 7.656263
	.quad	0x4014fb48d3ae685e              # double 5.2453950000000003
	.quad	0x401fe23076c050be              # double 7.9708880000000004
	.quad	0x4020f0e7ff583a54              # double 8.4705200000000004
	.quad	0x401bbb167ec7863c              # double 6.9327030000000001
	.quad	0x3ff9993708aac96d              # double 1.5999060000000001
	.quad	0x40149756c93a7115              # double 5.1477919999999999
	.quad	0x401b6b60f1b25f63              # double 6.8548619999999998
	.quad	0x4017abd6a593a2e0              # double 5.9178110000000004
	.quad	0x4011ae542e557de1              # double 4.4202430000000001
	.quad	0x4021d830a0b1bbcf              # double 8.9222459999999995
	.quad	0x401b1487fcb923a3              # double 6.7700500000000003
	.quad	0x4023ef12c27a6373              # double 9.9669399999999992
	.quad	0x400b5e08aefb2aae              # double 3.4209149999999999
	.quad	0x402371fb1e18efbb              # double 9.7226189999999999
	.quad	0x4019acd07852f7f5              # double 6.4187640000000004
	.quad	0x401f4fddebd9018e              # double 7.8279949999999996
	.quad	0x400cb5e529bae46d              # double 3.588816
	.quad	0x401b2cf850df15a5              # double 6.7939160000000003
	.quad	0x4023a74ff865d7cb              # double 9.8267819999999996
	.quad	0x4016dd606317268d              # double 5.7161879999999998
	.quad	0x40106b5e0f7fcfc4              # double 4.104851
	.quad	0x3fdb656abde3fbbd              # double 0.42806499999999997
	.quad	0x4020d10539fba451              # double 8.4082430000000006
	.quad	0x4008087c200c0f02              # double 3.004143
	.quad	0x3fd0b3aeee957471              # double 0.260967
	.quad	0x400df40ee06d9381              # double 3.7441689999999999
	.quad	0x3fed43419e300150              # double 0.91446000000000005
	.quad	0x40104b61bb05faec              # double 4.0736150000000002
	.quad	0x400b2047d3d4280b              # double 3.3907620000000001
	.quad	0x401929df97aaac11              # double 6.2908920000000004
	.quad	0x3fcd9b56323bbc6f              # double 0.23130300000000001
	.quad	0x4001f246bf01322f              # double 2.2432989999999999
	.quad	0x401b51f5be5d9e41              # double 6.8300390000000002
	.quad	0x4023a209246bf013              # double 9.8164759999999997
	.quad	0x40234eeb2d0a2446              # double 9.6541379999999997
	.quad	0x4022fc58eeae9ee4              # double 9.4928659999999993
	.quad	0x4021a39628cbd124              # double 8.8195049999999994
	.quad	0x4023c06fac6045bb              # double 9.875852
	.quad	0x40115c08fa7a8501              # double 4.3398779999999997
	.quad	0x4021da21ea359360              # double 8.9260400000000004
	.quad	0x4010b4eca686e7e6              # double 4.1766839999999998
	.quad	0x4018b007570c5650              # double 6.1719030000000004
	.quad	0x401c71fc8f32378b              # double 7.1113150000000003
	.quad	0x4011a7121ab4b72c              # double 4.4131549999999997
	.quad	0x3fe9f74cd31769a9              # double 0.81143799999999999
	.quad	0x3fe6aa737110e454              # double 0.70830700000000002
	.quad	0x401074755ffe6d59              # double 4.1137290000000002
	.quad	0x401deb8305d95dd5              # double 7.4799920000000002
	.quad	0x4011ff0281ba7fc3              # double 4.4990329999999998
	.quad	0x401cffd60e94ee39              # double 7.2498399999999998
	.quad	0x401eb22c881e4713              # double 7.673998
	.quad	0x3feb9ea35935fc3b              # double 0.86311499999999997
	.quad	0x40104773e24febd1              # double 4.0697780000000003
	.quad	0x4020ce1cffeb074a              # double 8.4025649999999992
	.quad	0x3ff1c896dd26b724              # double 1.111472
	.quad	0x4009134ce3de614a              # double 3.1344240000000001
	.quad	0x3fc5b71758e21965              # double 0.16965
	.quad	0x401fc43914f483cb              # double 7.941624
	.quad	0x4005509a671ef30a              # double 2.6643569999999999
	.quad	0x3ff34ecd8dbcec85              # double 1.206739
	.quad	0x3febafc04c8bc9cd              # double 0.86520399999999997
	.quad	0x40166598e10cf5b2              # double 5.5992160000000002
	.quad	0x40183a4f440af1cc              # double 6.0569430000000004
	.quad	0x40239b413986338b              # double 9.8032319999999995
	.quad	0x400b7ee4e26d4802              # double 3.43696
	.quad	0x4010055b4677b396              # double 4.0052310000000002
	.quad	0x401e0edb2f661f19              # double 7.5145080000000001
	.quad	0x401fa4b5568e820e              # double 7.9108479999999997
	.quad	0x4010ebea0ba1f4b2              # double 4.2303850000000001
	.quad	0x401c290f733a8a40              # double 7.0400980000000004
	.quad	0x400e400431bde82d              # double 3.7812579999999998
	.quad	0x4021c013a92a3055              # double 8.8751499999999997
	.quad	0x40227ceb56fb8f58              # double 9.243983
	.quad	0x40103d8fd5cb7910              # double 4.0601190000000003
	.quad	0x3fcb4091c087442c              # double 0.21290799999999999
	.quad	0x40164426351deefe              # double 5.5665519999999997
	.quad	0x40203d1bb4916ca4              # double 8.1193519999999992
	.quad	0x3ffe48e15011904b              # double 1.8927929999999999
	.quad	0x40151743201040c0              # double 5.2727170000000001
	.quad	0x401dfc332f01754b              # double 7.4962889999999999
	.quad	0x4019d9231c64ba95              # double 6.4620480000000002
	.quad	0x4021a80e27e0ef9a              # double 8.8282330000000009
	.quad	0x4022265fd8adab9f              # double 9.0749499999999994
	.quad	0x4017ac4ef88b9778              # double 5.9182699999999997
	.quad	0x3ffefd87b56b8738              # double 1.9368970000000001
	.quad	0x4019fa4ebdd334c6              # double 6.4944410000000001
	.quad	0x4011a1871e6cd291              # double 4.4077419999999998
	.quad	0x400ae7caea747d80              # double 3.3631799999999998
	.quad	0x40216f9fec99f1ae              # double 8.7180169999999997
	.quad	0x4006043ed959a30a              # double 2.7520730000000002
	.quad	0x40054ed4e4c942d5              # double 2.6634920000000002
	.quad	0x401b4d3e0bd44999              # double 6.8254320000000002
	.quad	0x401746b69db65ecc              # double 5.8190559999999998
	.quad	0x401b49424e592967              # double 6.821542
	.quad	0x401d110060780fdc              # double 7.2666029999999999
	.quad	0x402281b7e0ac7da2              # double 9.2533560000000001
	.quad	0x4007967ba237cdcd              # double 2.9484780000000002
	.quad	0x4022ab32f01754b0              # double 9.3343729999999994
	.quad	0x4023f5e5aff2a173              # double 9.9802680000000005
	.quad	0x400dad1d041cc533              # double 3.7095280000000002
	.quad	0x401ead00f776c482              # double 7.6689489999999996
	.quad	0x3fe65117b5286b59              # double 0.69739899999999999
	.quad	0x402175b9841aac54              # double 8.7299310000000005
	.quad	0x3ff372ca57a786c2              # double 1.215525
	.quad	0x3ffcf4e0114d2f5e              # double 1.8097840000000001
	.quad	0x4015e3ea704bc276              # double 5.4725739999999998
	.quad	0x401408d4fdf3b646              # double 5.0086250000000003
	.quad	0x4002f6aad1d041cc              # double 2.3704429999999999
	.quad	0x401b41b7e0ac7da2              # double 6.8141780000000001
	.quad	0x3fe95527e5215769              # double 0.79164500000000004
	.quad	0x401414edf6124074              # double 5.0204389999999997
	.quad	0x4017f2b51bd61f5c              # double 5.9870190000000001
	.quad	0x400da6d8b1dd5d3e              # double 3.7064680000000001
	.quad	0x400ecaaa7ded6ba9              # double 3.8489580000000001
	.quad	0x4010940dd3fe1976              # double 4.144584
	.quad	0x4014bff8ec0f8833              # double 5.1874729999999998
	.quad	0x4017c1465e892253              # double 5.9387449999999999
	.quad	0x4005896030c23fab              # double 2.692078
	.quad	0x4003b3b96af038e3              # double 2.4627560000000002
	.quad	0x3feb20902de00d1b              # double 0.84772499999999995
	.quad	0x3fff7a0a52695960              # double 1.967295
	.quad	0x4019245e0b4e11dc              # double 6.2855150000000002
	.quad	0x40129a2fcefaa476              # double 4.6505729999999996
	.quad	0x40024b73d188f430              # double 2.286842
	.quad	0x401f778b7a1c25d0              # double 7.8667429999999996
	.quad	0x3ff1dbb7b6bb1290              # double 1.116142
	.quad	0x40205cbab649d389              # double 8.1811120000000006
	.quad	0x401fdde26916440f              # double 7.9666839999999998
	.quad	0x4016e0902de00d1b              # double 5.7192999999999996
	.quad	0x40018eef1bac2df1              # double 2.1947920000000001
	.quad	0x400bfc91d14e3bcd              # double 3.4983249999999999
	.quad	0x40151592d98bf7f0              # double 5.2710679999999996
	.quad	0x401d5712e40852b5              # double 7.3350330000000001
	.quad	0x401bb45846e8f29d              # double 6.9261179999999998
	.quad	0x40161280f12c27a6              # double 5.5180699999999998
	.quad	0x400508b545c78a6e              # double 2.6292520000000001
	.quad	0x3ffbef294dd72368              # double 1.745889
	.quad	0x3ff7b4e54f7a9197              # double 1.4816640000000001
	.quad	0x4022e91f70de8f6d              # double 9.4553180000000001
	.quad	0x4012c0c7c0f45176              # double 4.6882619999999999
	.quad	0x4017943137b07076              # double 5.8947190000000003
	.quad	0x401576eb4e981388              # double 5.3661320000000003
	.quad	0x4008c22036006d0d              # double 3.0947879999999999
	.quad	0x4013a7dbf487fcb9              # double 4.9139249999999999
	.quad	0x4023c19ef954eb14              # double 9.8781660000000002
	.quad	0x401ded6f544bb1af              # double 7.4818699999999998
	.quad	0x401819b66f9335d2              # double 6.0251099999999997
	.quad	0x40184649d388a8b1              # double 6.0686410000000004
	.quad	0x4014263e8dda48b6              # double 5.0373479999999997
	.quad	0x3ff65e3a7daa4fca              # double 1.3980049999999999
	.quad	0x4014e92ddbdb5d89              # double 5.2277139999999997
	.quad	0x4021552674080f99              # double 8.666309
	.quad	0x3ffd453e2d6238da              # double 1.8294049999999999
	.quad	0x4001987d6f976790              # double 2.1994579999999999
	.quad	0x3fe17496aad1d042              # double 0.54548200000000002
	.quad	0x3ff688333fc86cec              # double 1.4082520000000001
	.quad	0x3fde8244e93e1c9b              # double 0.47670099999999999
	.quad	0x40142984a0e410b6              # double 5.0405449999999998
	.quad	0x400fff2cb641700d              # double 3.9995970000000001
	.quad	0x401897d2c7b890d6              # double 6.1482650000000003
	.quad	0x3fee3b1d0c804103              # double 0.944716
	.quad	0x400a70d844d013a9              # double 3.3050999999999999
	.quad	0x40202107b784662c              # double 8.0645120000000005
	.quad	0x401921800a7c5ac4              # double 6.2827149999999996
	.quad	0x3ff099806f262889              # double 1.0374760000000001
	.quad	0x3fff927913e81451              # double 1.97326
	.quad	0x4016523897204296              # double 5.5802940000000003
	.quad	0x4022139bed30f063              # double 9.0382990000000003
	.quad	0x400ac71476af89c6              # double 3.347207
	.quad	0x3ffd358f2e05ccc9              # double 1.8255760000000001
	.quad	0x400358fbca1059ea              # double 2.4184489999999998
	.quad	0x4006143a647fdc59              # double 2.7598769999999999
	.quad	0x4007786b9c304ccf              # double 2.933799
	.quad	0x4012a40b780346dc              # double 4.6601999999999997
	.quad	0x401bf20ea5b530cf              # double 6.9863840000000001
	.quad	0x3fc637a3db3bfb59              # double 0.17357300000000001
	.quad	0x4021fc3a647fdc59              # double 8.9926329999999997
	.quad	0x4020fdbbbe878fac              # double 8.4955730000000002
	.quad	0x401e0670e2c12ad8              # double 7.5062899999999999
	.quad	0x400e16544fe36d22              # double 3.7609029999999999
	.quad	0x3fe8175d13d74d59              # double 0.75285199999999997
	.quad	0x40048f20ea5b530d              # double 2.569887
	.quad	0x3fe6f8f47304039b              # double 0.71789000000000003
	.quad	0x40158b31c219eb64              # double 5.3859320000000004
	.quad	0x40135958d9b5e95b              # double 4.8372529999999996
	.quad	0x400f6d1fa333764f              # double 3.928283
	.quad	0x3ff8e5e56cd6c2f0              # double 1.556127
	.quad	0x40222961c36976bc              # double 9.0808239999999997
	.quad	0x40119340d4dc65c7              # double 4.393802
	.quad	0x4020a9f8a0902de0              # double 8.3319749999999999
	.quad	0x402072497fa5d28d              # double 8.223217
	.quad	0x40173d60a6330510              # double 5.809939
	.quad	0x402333780346dc5d              # double 9.6005249999999993
	.quad	0x3fc47fb267c6b8b7              # double 0.16014700000000001
	.quad	0x400f318a86d71f36              # double 3.8991899999999999
	.quad	0x40235b66f9335d25              # double 9.6785200000000006
	.quad	0x40123f5caf2d7f95              # double 4.561877
	.quad	0x40106c99ae924f22              # double 4.1060549999999996
	.quad	0x40141b3aeee95747              # double 5.0265919999999999
	.quad	0x401e009784ec636b              # double 7.5005779999999999
	.quad	0x40214937d1fe64f5              # double 8.6430039999999995
	.quad	0x3ffa44a9478c868c              # double 1.6417630000000001
	.quad	0x401190cb295e9e1b              # double 4.3914
	.quad	0x40143b1c432ca57a              # double 5.0577249999999996
	.quad	0x4020a0a697aeddce              # double 8.3137709999999991
	.quad	0x400eac985f06f694              # double 3.8342749999999999
	.quad	0x400cdf2239e6ab9b              # double 3.6089519999999999
	.quad	0x401888d759ee88df              # double 6.1336339999999998
	.quad	0x401d860ed80a17b1              # double 7.380916
	.quad	0x40224699e94ab1d5              # double 9.137893
	.quad	0x402354eb78897e99              # double 9.6658589999999993
	.quad	0x3fdd6961c36976bc              # double 0.45955699999999999
	.quad	0x4021beda4484944f              # double 8.8727590000000003
	.quad	0x4017c19f3c70c997              # double 5.9390840000000003
	.quad	0x3ff72c460ed80a18              # double 1.4483090000000001
	.quad	0x40079cad9ad85dfb              # double 2.9515030000000002
	.quad	0x4008a7fe4bcad9ae              # double 3.0820280000000002
	.quad	0x40232b95a294141f              # double 9.5851260000000007
	.quad	0x3fe35e28aa433509              # double 0.605244
	.quad	0x4023578982cb20fb              # double 9.6709709999999997
	.quad	0x40091e4473cd5736              # double 3.1397789999999999
	.quad	0x4023f49491f2dc2b              # double 9.9776959999999998
	.quad	0x401eaf2cf95d4e90              # double 7.6710700000000003
	.quad	0x40200c9ba5e353f8              # double 8.0246250000000003
	.quad	0x3fd7176577531db4              # double 0.36080299999999998
	.quad	0x3fe93f9a49c2c1b1              # double 0.78901399999999999
	.quad	0x401a3d08d4bad7d8              # double 6.5596040000000002
	.quad	0x4001268986fcdee3              # double 2.1438169999999999
	.quad	0x4023b97d6b65a9a8              # double 9.8622849999999999
	.quad	0x4021dc73471f7942              # double 8.9305669999999999
	.quad	0x3fd86c69b5a63f9a              # double 0.38161699999999998
	.quad	0x40008f87ad080b67              # double 2.0700829999999999
	.quad	0x3fefbf9c62a1b5c8              # double 0.99214000000000002
	.quad	0x400224a276b7ed42              # double 2.2678880000000001
	.quad	0x401f59c4545846e9              # double 7.837663
	.quad	0x4012f04c48adeebb              # double 4.7346659999999998
	.quad	0x402112263d816acf              # double 8.5354480000000006
	.quad	0x3fd6b62c77574f72              # double 0.35486899999999999
	.quad	0x4016d5082cf52b91              # double 5.7080390000000003
	.quad	0x40147cee5abc0e39              # double 5.1220030000000003
	.quad	0x3fdfad0c3d25247d              # double 0.49493700000000002
	.quad	0x3ffcee536501e258              # double 1.8081849999999999
	.quad	0x4012fd823422467c              # double 4.7475670000000001
	.quad	0x400c874c8ffb8b26              # double 3.5660639999999999
	.quad	0x4016233a4723ab00              # double 5.534402
	.quad	0x40186968943e1006              # double 6.102938
	.quad	0x40237a47a9e2bcf9              # double 9.7388279999999998
	.quad	0x40157a5b9628cbd1              # double 5.3694899999999999
	.quad	0x4015100218def417              # double 5.2656330000000002
	.quad	0x40105bb4916ca46e              # double 4.089556
	.quad	0x4021768e820e6299              # double 8.7315559999999994
	.quad	0x400a28d10f51ac9b              # double 3.26993
	.quad	0x400f0167a95c853c              # double 3.875686
	.quad	0x3fea7b395c422036              # double 0.827542
	.quad	0x40220c9f94855da2              # double 9.0246549999999992
	.quad	0x4020518aeb80ecfa              # double 8.1592629999999993
	.quad	0x3ff7b0b8cfbfc654              # double 1.480645
	.quad	0x401e4cab3edd8b61              # double 7.574872
	.quad	0x402077ba01eeed89              # double 8.233841
	.quad	0x4017c1cc532a4980              # double 5.9392560000000003
	.quad	0x401f1ba7fc32ebe6              # double 7.7770080000000004
	.quad	0x401c139085f4a127              # double 7.0191059999999998
	.quad	0x3fef022ff08893b8              # double 0.96901700000000001
	.quad	0x40198ad03d9a9542              # double 6.3855599999999999
	.quad	0x4020b3ef49cf56eb              # double 8.3514350000000004
	.quad	0x40202c34a01abd1b              # double 8.0863390000000006
	.quad	0x4005b76ddaceee0f              # double 2.7145649999999999
	.quad	0x40223c358afc47e5              # double 9.1175960000000007
	.quad	0x4023ba8f9f44d445              # double 9.8643769999999992
	.quad	0x401e40635a426bb5              # double 7.5628789999999996
	.quad	0x4011a1cf355cd91f              # double 4.4080170000000001
	.quad	0x3fd544523f67f4dc              # double 0.33229500000000001
	.quad	0x400dec39799e518f              # double 3.7403439999999999
	.quad	0x401ae549f94855da              # double 6.7239149999999999
	.quad	0x40148594f26aec07              # double 5.1304509999999999
	.quad	0x40147b1465e89225              # double 5.1201949999999998
	.quad	0x4018c3797460242d              # double 6.190893
	.quad	0x40076a6fc58ab92c              # double 2.926971
	.quad	0x40216751697f1f9b              # double 8.7017930000000003
	.quad	0x40060f049a9973da              # double 2.757333
	.quad	0x4016b544fe36d224              # double 5.6770209999999999
	.quad	0x3f5116a8b8f14db6              # double 0.0010430000000000001
	.quad	0x400f77928e0c9d9d              # double 3.9333849999999999
	.quad	0x3ff159988d2a1f8e              # double 1.0843739999999999
	.quad	0x4000fa543f1c7582              # double 2.1222310000000002
	.quad	0x4001b43e963dc487              # double 2.2130100000000001
	.quad	0x3ff5c468448cf7cb              # double 1.3604510000000001
	.quad	0x4021eeed245b291c              # double 8.9666530000000008
	.quad	0x4021e1897a67a52b              # double 8.9405020000000004
	.quad	0x40104136e71cda2b              # double 4.0636859999999997
	.quad	0x401649f7b5aea316              # double 5.5722339999999999
	.quad	0x4017b963992c8c50              # double 5.931044
	.quad	0x3fd0a1dfb9389b52              # double 0.25988
	.quad	0x400737542a23bff9              # double 2.9020160000000002
	.quad	0x3ff26424a276b7ed              # double 1.1494489999999999
	.quad	0x3fe8e7ad8e432442              # double 0.778281
	.quad	0x4011818090b417ca              # double 4.3764669999999999
	.quad	0x400a6009f623076c              # double 3.296894
	.quad	0x401ecb18116ebd4d              # double 7.698334
	.quad	0x3ff10399b2c40d0b              # double 1.0633790000000001
	.quad	0x400d844955b4677b              # double 3.6895929999999999
	.quad	0x400c4efed634549b              # double 3.5385719999999998
	.quad	0x4011ac4545846e8f              # double 4.4182329999999999
	.quad	0x3ffda3f67f4dbdf9              # double 1.85253
	.quad	0x3fe72b042528ae75              # double 0.72400100000000001
	.quad	0x4020a9cc96462802              # double 8.3316389999999991
	.quad	0x3ffbcda1a93293d1              # double 1.737703
	.quad	0x401091f080303c08              # double 4.1425190000000001
	.quad	0x401165df6555c52e              # double 4.3494849999999996
	.quad	0x4000824c404a72eb              # double 2.0636220000000001
	.quad	0x40085e96c3fc43b3              # double 3.0461860000000001
	.quad	0x4003ace1c58255b0              # double 2.4594149999999999
	.quad	0x40111080f98fa377              # double 4.2661170000000004
	.quad	0x40123b6bb1290258              # double 4.5580280000000002
	.quad	0x40052478854cdb7b              # double 2.642808
	.quad	0x401c43cc4ac6cdaf              # double 7.0662089999999997
	.quad	0x402053cb81733227              # double 8.1636620000000004
	.quad	0x3fd0ccdd93c46d83              # double 0.26250400000000002
	.quad	0x401eefa9c12f09d9              # double 7.7340460000000001
	.quad	0x40205fdd872f33ca              # double 8.1872369999999997
	.quad	0x402086ef5ec80c74              # double 8.2635450000000005
	.quad	0x3fe820f0a5efe932              # double 0.75402100000000005
	.quad	0x40120d7e889c1b54              # double 4.5131779999999999
	.quad	0x401024a66559f6ec              # double 4.0357909999999997
	.quad	0x4020d486cebbba56              # double 8.4150910000000003
	.quad	0x40157681669ced0b              # double 5.3657279999999998
	.quad	0x401459f90539fba4              # double 5.0878639999999997
	.quad	0x4009825b749adc90              # double 3.1886510000000001
	.quad	0x4011c5a31a4bdba1              # double 4.4430050000000003
	.quad	0x402342d6ece13f4b              # double 9.6305460000000007
	.quad	0x3ff99b5d894812be              # double 1.6004309999999999
	.quad	0x4001aa159817b95a              # double 2.2080489999999999
	.quad	0x4002e15ebfa8f7db              # double 2.3600439999999998
	.quad	0x4021a113836a832c              # double 8.8146020000000007
	.quad	0x401c9165d3996fa8              # double 7.1419899999999998
	.quad	0x3fef967a95c853c1              # double 0.98711899999999996
	.quad	0x3ff1b7b17ce52ded              # double 1.1073470000000001
	.quad	0x4017b566cf41f213              # double 5.9271500000000001
	.quad	0x401a0561d4306e5d              # double 6.5052560000000001
	.quad	0x401e530728e92d56              # double 7.5810820000000003
	.quad	0x400bee9f6a93f291              # double 3.4915150000000001
	.quad	0x3ffc65375c8d9f90              # double 1.7747109999999999
	.quad	0x40226b5bd512ec6c              # double 9.2096850000000003
	.quad	0x4023b7d88c1db014              # double 9.8590739999999996
	.quad	0x401ff1f75104d552              # double 7.9862950000000001
	.quad	0x401fcfa22706d506              # double 7.9527669999999997
	.quad	0x3fc5574f722e1ac5              # double 0.16672699999999999
	.quad	0x4022d5b3397dd00f              # double 9.4173829999999991
	.quad	0x40046adeebb341e1              # double 2.5521829999999999
	.quad	0x400749d1f601797d              # double 2.9110450000000001
	.quad	0x400bbf3d7d3910c3              # double 3.4683790000000001
	.quad	0x401cf7928e0c9d9d              # double 7.2417699999999998
	.quad	0x3ffdf4ff865d7cb3              # double 1.872314
	.quad	0x3fee2c710cb295ea              # double 0.94292500000000001
	.quad	0x4023230292817764              # double 9.5683790000000001
	.quad	0x40037c5f7c6759ab              # double 2.4357289999999998
	.quad	0x4005d0a1be2b495a              # double 2.726871
	.quad	0x40170394317acc4f              # double 5.753495
	.quad	0x3feb09f623076c05              # double 0.84496599999999999
	.quad	0x3ff0834f3fd933e3              # double 1.0320579999999999
	.quad	0x4010091a32b12d34              # double 4.0088889999999999
	.quad	0x40195edd48451330              # double 6.3426410000000004
	.quad	0x400e4ac96cc5fbf8              # double 3.7865169999999999
	.quad	0x40224d529fe004b8              # double 9.151021
	.quad	0x4015e5fa658c4bd3              # double 5.4745879999999998
	.quad	0x400c44189374bc6a              # double 3.5332499999999998
	.quad	0x402298650e779208              # double 9.2976460000000002
	.quad	0x4006d0b30b5aa716              # double 2.8519040000000002
	.quad	0x401fb126634117f8              # double 7.9229979999999997
	.quad	0x40233cb2d905c033              # double 9.6185519999999993
	.quad	0x3fbfd976ff3ade22              # double 0.12441199999999999
	.quad	0x400e36238da3c212              # double 3.7764350000000002
	.quad	0x4021cf3f316e3715              # double 8.9047789999999996
	.quad	0x401583bd5992428d              # double 5.3786519999999998
	.quad	0x3fcd9aae6c8f7553              # double 0.23128299999999999
	.quad	0x401f52ed783dff3f              # double 7.8309839999999999
	.quad	0x401011361dc93ea3              # double 4.0168080000000002
	.quad	0x400faeab7995ee13              # double 3.9602879999999998
	.quad	0x400731843c3a42f2              # double 2.899178
	.quad	0x401f6797460242d0              # double 7.8511629999999997
	.quad	0x4023cee49f51697f              # double 9.9040879999999997
	.quad	0x401f72d1287c200c              # double 7.8621259999999999
	.quad	0x3fe30e086bdf4c2b              # double 0.59546299999999996
	.quad	0x40209b31c219eb64              # double 8.3031140000000007
	.quad	0x401f9a13c254a3c6              # double 7.9004659999999998
	.quad	0x400d86a98244e93e              # double 3.690753
	.quad	0x4023a5b5525cc426              # double 9.8236489999999996
	.quad	0x401b6619da9c9928              # double 6.8497079999999997
	.quad	0x4020e2bf9830e3ce              # double 8.4428680000000007
	.quad	0x3ff152c386d2ed78              # double 1.0827059999999999
	.quad	0x40161f88b9778573              # double 5.5307950000000003
	.quad	0x402120ccff21b3af              # double 8.5640640000000001
	.quad	0x4014947c30d306a3              # double 5.1450050000000003
	.quad	0x4017b66adb402d17              # double 5.9281420000000002
	.quad	0x400ab3f85510d38d              # double 3.3378760000000001
	.quad	0x400c0299524bfd2f              # double 3.5012690000000002
	.quad	0x3ffe65a682b62846              # double 1.8998170000000001
	.quad	0x3fda24e592967019              # double 0.40850199999999998
	.quad	0x40001572580c3090              # double 2.010472
	.quad	0x4003401ffb480a5b              # double 2.4063110000000001
	.quad	0x3fd09435ac8a3726              # double 0.259046
	.quad	0x401ea6dacabc5155              # double 7.6629440000000004
	.quad	0x401ff11ec918e326              # double 7.9854690000000002
	.quad	0x3fe42c0c62e4d1a6              # double 0.63037699999999997
	.quad	0x3fd27eaa2a0a9585              # double 0.28898099999999999
	.quad	0x4003d062d40aaeb0              # double 2.4767510000000001
	.quad	0x40218a2ab25b317f              # double 8.769857
	.quad	0x4020e1b4784230fd              # double 8.4408300000000001
	.quad	0x401dcf141205bc02              # double 7.4522250000000003
	.quad	0x40118577d955714c              # double 4.3803400000000003
	.quad	0x3fd7e21101b00368              # double 0.37317299999999998
	.quad	0x3fedc18d6909aed5              # double 0.92987699999999995
	.quad	0x40234ed84d338f7a              # double 9.6539940000000009
	.quad	0x401fdab8a5ce5b42              # double 7.9635949999999998
	.quad	0x401db925785f8d2e              # double 7.4308069999999997
	.quad	0x4005893964a59c06              # double 2.6920039999999998
	.quad	0x401bc5ee136e71ce              # double 6.9432910000000003
	.quad	0x4023d3139c94f69d              # double 9.9122590000000005
	.quad	0x400614b380cb6c7a              # double 2.7601079999999998
	.quad	0x4017b83dff3f0fe0              # double 5.9299239999999998
	.quad	0x3fd1bafd976ff3ae              # double 0.27703800000000001
	.quad	0x3ff959c17225b74a              # double 1.5844130000000001
	.quad	0x4023547c30d306a3              # double 9.6650100000000005
	.quad	0x400fb9b4dcebfec1              # double 3.9656769999999999
	.quad	0x402246d5ae1cde5d              # double 9.1383489999999998
	.quad	0x401f73cd573647bb              # double 7.8630880000000002
	.quad	0x3fe4e451b93037d6              # double 0.65287099999999998
	.quad	0x401137bfe7e1fc09              # double 4.304443
	.quad	0x4020c130164840e1              # double 8.3773199999999992
	.quad	0x4020012ea52ef912              # double 8.0023090000000003
	.quad	0x401ea9131ec0b567              # double 7.6651119999999997
	.quad	0x40181109070fbeba              # double 6.0166360000000001
	.quad	0x4023871bac2df0d4              # double 9.7638829999999998
	.quad	0x4012e01e68a0d34a              # double 4.7188660000000002
	.quad	0x401b4cac8e68e3ef              # double 6.8248769999999999
	.quad	0x4020f1ed5ae1cde6              # double 8.4725140000000003
	.quad	0x4004ca9bcfd4bf0a              # double 2.5989300000000002
	.quad	0x3ffb29b8cb8e086c              # double 1.697686
	.quad	0x40201f3fd933e35c              # double 8.0610339999999993
	.quad	0x400879db22d0e560              # double 3.0594999999999999
	.quad	0x3ffc07e175d13d75              # double 1.751924
	.quad	0x4023c96e37154003              # double 9.8934189999999997
	.quad	0x401cd0e410b630a9              # double 7.2039949999999999
	.quad	0x402161676640a6b9              # double 8.6902419999999996
	.quad	0x4008b32378ab0c89              # double 3.0874700000000002
	.quad	0x4022208bfc2224ee              # double 9.0635680000000001
	.quad	0x401c4f5f4e4430b1              # double 7.0775119999999996
	.quad	0x4023cc493426783a              # double 9.8989960000000004
	.quad	0x4013d9a671ef30a5              # double 4.9625490000000001
	.quad	0x401899fadafd1138              # double 6.1503709999999998
	.quad	0x4021d862b27cbf6e              # double 8.9226279999999996
	.quad	0x4012fb7a5f41aef7              # double 4.745584
	.quad	0x40200767903211cb              # double 8.014462
	.quad	0x40002d2c386d2ed8              # double 2.0220570000000002
	.quad	0x4010558969a0ad8a              # double 4.0835319999999999
	.quad	0x401d636b4c7f3494              # double 7.3470890000000004
	.quad	0x400b57b07075b3e1              # double 3.4178169999999999
	.quad	0x401c67891e215337              # double 7.1011090000000001
	.quad	0x401afc5197a24895              # double 6.7464050000000002
	.quad	0x40074c5a8155d5f5              # double 2.9122819999999998
	.quad	0x40218fa99fa11a97              # double 8.7805909999999994
	.quad	0x4010c9884c6a3bde              # double 4.196809
	.quad	0x4000355ef1fddebe              # double 2.0260600000000002
	.quad	0x400bd31e3a7daa50              # double 3.4780850000000001
	.quad	0x4002e060780fdc16              # double 2.359559
	.quad	0x401b830ad46f587d              # double 6.8779709999999996
	.quad	0x40029d40ee06d938              # double 2.326784
	.quad	0x3ff76934acaff6d3              # double 1.463185
	.quad	0x400f79e279dd3bb0              # double 3.9345140000000001
	.quad	0x4014162456f75d9a              # double 5.0216229999999999
	.quad	0x3fe4ca2fcefaa476              # double 0.64968099999999995
	.quad	0x4022d972abef06b3              # double 9.4247029999999991
	.quad	0x40203a6cc1ca3a4b              # double 8.1141109999999994
	.quad	0x4021153804534bd7              # double 8.5414429999999992
	.quad	0x401dd0780fdc1616              # double 7.4535830000000001
	.quad	0x3ff02e31d712a0ec              # double 1.0112779999999999
	.quad	0x40105b923a29c77a              # double 4.0894250000000003
	.quad	0x401971a500d5e8d5              # double 6.3609809999999998
	.quad	0x40213351372a38b9              # double 8.6002290000000006
	.quad	0x4007293e1c9b413a              # double 2.8951380000000002
	.quad	0x40116502eec7c958              # double 4.3486440000000002
	.quad	0x3fea7fef39085f4a              # double 0.82811699999999999
	.quad	0x3ff1358298cc1440              # double 1.075564
	.quad	0x40153abffcdab192              # double 5.3073730000000001
	.quad	0x4022d91f70de8f6d              # double 9.4240680000000001
	.quad	0x4022c8a6117720c9              # double 9.3918920000000003
	.quad	0x3fd9e39713ad5bee              # double 0.40451599999999999
	.quad	0x401027d63022dd7b              # double 4.0389030000000004
	.quad	0x4016a07bfe7e1fc1              # double 5.6567230000000004
	.quad	0x400f27b4e54f7a92              # double 3.8943880000000002
	.quad	0x401f309310129cbb              # double 7.7974360000000002
	.quad	0x401d00153bd16766              # double 7.2500809999999998
	.quad	0x4001e72b020c49ba              # double 2.2378749999999998
	.quad	0x40219e889c1b5419              # double 8.8096359999999994
	.quad	0x400421626b2f2303              # double 2.5163009999999999
	.quad	0x3ff7f7446f9b994e              # double 1.497868
	.quad	0x401c76e5cd4ed2cc              # double 7.1161110000000001
	.quad	0x40181d96638433d7              # double 6.0288940000000002
	.quad	0x401a0736cdf266ba              # double 6.5070449999999997
	.quad	0x400dfa7eb6bf444e              # double 3.747312
	.quad	0x3ffe8e4649906cca              # double 1.909735
	.quad	0x402379c75818c5ca              # double 9.7378490000000006
	.quad	0x4000b7e3d1cc100e              # double 2.0897899999999998
	.quad	0x3ff2f5c5b4aa9718              # double 1.185003
	.quad	0x401054df8b157258              # double 4.082884
	.quad	0x401714d1e96c3fc4              # double 5.7703319999999998
	.quad	0x4021ecae429e0a42              # double 8.9622670000000006
	.quad	0x3fecc6a1a500d5e9              # double 0.89924700000000002
	.quad	0x3ff9ae6a76965f52              # double 1.6050819999999999
	.quad	0x402115ba2be0589b              # double 8.5424360000000004
	.quad	0x400ffd912556d19e              # double 3.998812
	.quad	0x4011bb649d388a8b              # double 4.433001
	.quad	0x40212e379b77c02b              # double 8.590268
	.quad	0x401ba000c9539b89              # double 6.9062530000000004
	.quad	0x4020a93f6c2699c8              # double 8.3305620000000005
	.quad	0x401ac010c6f7a0b6              # double 6.6875640000000001
	.quad	0x3ffc75360d024702              # double 1.778616
	.quad	0x4021d64e69f05ea2              # double 8.9185669999999995
	.quad	0x40121f56eac86057              # double 4.5306050000000004
	.quad	0x4020ecaa326e1156              # double 8.4622360000000008
	.quad	0x40002b13dfb0d520              # double 2.0210340000000002
	.quad	0x4016191600f34507              # double 5.5244980000000004
	.quad	0x4017eecfa69be09c              # double 5.9832140000000003
	.quad	0x40192b866e43aa7a              # double 6.2925050000000002
	.quad	0x4022b76a2f48c2e7              # double 9.3582319999999992
	.quad	0x402250a4a05dd8f9              # double 9.1575059999999997
	.quad	0x401926f262888b54              # double 6.2880339999999997
	.quad	0x4012a1fe64f54d1f              # double 4.6581970000000004
	.quad	0x3ffd5471715c63ae              # double 1.833116
	.quad	0x3ff5f228dc981beb              # double 1.371621
	.quad	0x401eec24c404a72f              # double 7.7306090000000002
	.quad	0x401367bfa4c61d86              # double 4.8513169999999999
	.quad	0x40001faebc408d8f              # double 2.0154700000000001
	.quad	0x4023002b40f66a55              # double 9.5003299999999999
	.quad	0x400e47381d7dbf48              # double 3.7847749999999998
	.quad	0x4016f52c16df3f96              # double 5.7394259999999999
	.quad	0x400528ff327aa68f              # double 2.6450179999999999
	.quad	0x400bd763e4abe6a3              # double 3.4801709999999999
	.quad	0x402041424e592967              # double 8.127459
	.quad	0x4020861ae70c1334              # double 8.2619240000000004
	.quad	0x401bef2c3009b307              # double 6.9835669999999999
	.quad	0x4022fb3c60029f17              # double 9.4906950000000005
	.quad	0x401dd0ea18372e6a              # double 7.4540179999999996
	.quad	0x401fb56fb8f57f73              # double 7.9271839999999995
	.quad	0x3fe126f60e0eb67c              # double 0.53600599999999998
	.quad	0x4013d9da9c99285b              # double 4.9627480000000004
	.quad	0x401de0817fc7607c              # double 7.4692439999999998
	.quad	0x40067a08bfc2224f              # double 2.8095870000000001
	.quad	0x400578dcdb37c99b              # double 2.684015
	.quad	0x400da528283d35eb              # double 3.7056429999999998
	.quad	0x4022272474538ef3              # double 9.0764499999999995
	.quad	0x40213b82c2bd7f52              # double 8.6162320000000001
	.quad	0x401607e62dc6e2a8              # double 5.507714
	.quad	0x400fe4a05dd8f92b              # double 3.986634
	.quad	0x4011c06dd69d3027              # double 4.4379189999999999
	.quad	0x4000d7d523b3636f              # double 2.1053869999999999
	.quad	0x40120fe931876189              # double 4.5155380000000003
	.quad	0x4013d05faebc408e              # double 4.9534900000000004
	.quad	0x40204fe43675ddd3              # double 8.1560380000000006
	.quad	0x3ff60d72799a1fd1              # double 1.3782829999999999
	.quad	0x4005472d1aeb3dd1              # double 2.659754
	.quad	0x3ff0eb6f19934efd              # double 1.0574790000000001
	.quad	0x4017e5c358afc47e              # double 5.9743779999999997
	.quad	0x401b7a08398a6549              # double 6.8691719999999998
	.quad	0x4020a1003eea209b              # double 8.3144550000000006
	.quad	0x4015f728e92d55a4              # double 5.4913670000000003
	.quad	0x401d7d130df9bdc7              # double 7.3721430000000003
	.quad	0x40111cbf6e3f78bc              # double 4.2780740000000002
	.quad	0x401295f02c4d65e4              # double 4.6464239999999997
	.quad	0x3ff17dff3f0fe048              # double 1.093261
	.quad	0x40221cc89b0ee49f              # double 9.0562179999999994
	.quad	0x4016d74ea8da7f3d              # double 5.710261
	.quad	0x401c281344806291              # double 7.0391360000000001
	.quad	0x401e65c6c11a1123              # double 7.5993909999999997
	.quad	0x4014908205ff1d82              # double 5.1411210000000001
	.quad	0x40140dba908a265f              # double 5.0134069999999999
	.quad	0x3ff804ed6fda836f              # double 1.5012030000000001
	.quad	0x3ffb5ddd2ae8e1d6              # double 1.7104159999999999
	.quad	0x401d305f6ba0620b              # double 7.2972390000000003
	.quad	0x4023a93ccd0fe8ab              # double 9.8305419999999994
	.quad	0x4000b6c3760bf5d8              # double 2.0892400000000002
	.quad	0x400fe809d495182b              # double 3.9883000000000002
	.quad	0x401a12d0a2446306              # double 6.5183739999999997
	.quad	0x401a0f9591cd1c7e              # double 6.5152190000000001
	.quad	0x40136d26fa3fcc9f              # double 4.8565940000000003
	.quad	0x4017db7e90ff9724              # double 5.9643499999999996
	.quad	0x3fe155c0fcb4f1e5              # double 0.54171800000000003
	.quad	0x4011a8a009f62307              # double 4.4146729999999996
	.quad	0x3fddb6c7a7c9de05              # double 0.464281
	.quad	0x3fdb62e90364388f              # double 0.42791200000000001
	.quad	0x4008e31593e5fb72              # double 3.110881
	.quad	0x4013e9cc319c5a3e              # double 4.9783179999999998
	.quad	0x40228f1e6cd29132              # double 9.2795290000000001
	.quad	0x3fff931ca7d6733f              # double 1.9734160000000001
	.quad	0x3ff8002e2328f9f4              # double 1.5000439999999999
	.quad	0x401ec0aaa7ded6bb              # double 7.6881510000000004
	.quad	0x4015a083126e978d              # double 5.4067499999999997
	.quad	0x401a28793dd97f63              # double 6.5395250000000003
	.quad	0x4018c543aeab7996              # double 6.1926410000000001
	.quad	0x40116611ba3ca750              # double 4.3496769999999998
	.quad	0x402278e1b4bb5e0f              # double 9.2360969999999991
	.quad	0x4001683e425aee63              # double 2.1758999999999999
	.quad	0x4023e8d2a1f8e3ac              # double 9.9547319999999999
	.quad	0x401ab5f202107b78              # double 6.6776809999999998
	.quad	0x40095a47a9e2bcf9              # double 3.169082
	.quad	0x3ff89db9841aac54              # double 1.5385070000000001
	.quad	0x4010f1cfbb949625              # double 4.2361440000000004
	.quad	0x3fe70b71b8aa0019              # double 0.72014699999999998
	.quad	0x3fc2eff5c6c11a11              # double 0.147948
	.quad	0x3fd4c99f1ae2da55              # double 0.32480599999999998
	.quad	0x40173cb1465e8922              # double 5.8092699999999997
	.quad	0x40151210385c67e0              # double 5.2676400000000001
	.quad	0x40050ac322291fb4              # double 2.630255
	.quad	0x40173255b035bd51              # double 5.7991549999999998
	.quad	0x4008914fce746cb9              # double 3.0709529999999998
	.quad	0x400193be22e5de16              # double 2.1971400000000001
	.quad	0x4011997e996312f5              # double 4.3998970000000002
	.quad	0x401c3e275ab7dc7b              # double 7.0606970000000002
	.quad	0x40225e0d23d4f15e              # double 9.1836939999999991
	.quad	0x401363fab10ba626              # double 4.8476359999999996
	.quad	0x40157db8348f53c5              # double 5.3727729999999996
	.quad	0x402096e675147f13              # double 8.294727
	.quad	0x4014a18e325d4a5e              # double 5.157769
	.quad	0x4015b32e7b3d8e00              # double 5.424982
	.quad	0x401e06527a20578e              # double 7.5061739999999997
	.quad	0x4017ad9dfdac68a9              # double 5.9195479999999998
	.quad	0x3ff82e74f2f123c4              # double 1.511342
	.quad	0x3ff578ed1bf7ad4b              # double 1.342023
	.quad	0x4020b5379fa97e13              # double 8.3539399999999997
	.quad	0x3f86659d12cadddf              # double 0.010936
	.quad	0x3ff035fb2edfe75c              # double 1.0131790000000001
	.quad	0x401519435ac8a372              # double 5.2746709999999997
	.quad	0x4011404c48adeebb              # double 4.3127909999999998
	.quad	0x401dff127f5e84f1              # double 7.4990940000000003
	.quad	0x40229159e6256367              # double 9.2838890000000003
	.quad	0x401fd21815a07b35              # double 7.9551699999999998
	.quad	0x40206ca6ca03c4b1              # double 8.2122100000000007
	.quad	0x40093ac68a936c59              # double 3.153699
	.quad	0x400676b3354c1227              # double 2.8079589999999999
	.quad	0x3ff75abe27179bfe              # double 1.459654
	.quad	0x3ffe566277c45cbc              # double 1.8960900000000001
	.quad	0x400c60bfe3b03e21              # double 3.5472410000000001
	.quad	0x40125a5614df8b15              # double 4.5882189999999996
	.quad	0x400f7be5d9e40c84              # double 3.9354969999999998
	.quad	0x3ffedb39e279dd3c              # double 1.9285220000000001
	.quad	0x401eb3eee5258927              # double 7.6757160000000004
	.quad	0x4001787c6327ed85              # double 2.1838310000000001
	.quad	0x3feb9f926c7eae5c              # double 0.86322900000000002
	.quad	0x40142148344c37e7              # double 5.032502
	.quad	0x3fffcd64d7f0ed3e              # double 1.9876450000000001
	.quad	0x3ff32a4228997c3d              # double 1.1978169999999999
	.quad	0x400e7495182a9931              # double 3.8069250000000001
	.quad	0x3ffb32f449129889              # double 1.69994
	.quad	0x40105b5bf6a0dbad              # double 4.0892179999999998
	.quad	0x40181872f33ca31e              # double 6.0238759999999996
	.quad	0x401d739bcba30121              # double 7.3628989999999996
	.quad	0x400f1f6b1a2a4db1              # double 3.8903409999999998
	.quad	0x400a129888f861a6              # double 3.25908
	.quad	0x401e17f23cc8de2b              # double 7.5233850000000002
	.quad	0x4023c458eeae9ee4              # double 9.8834909999999993
	.quad	0x3ff9122962cfd8f1              # double 1.566934
	.quad	0x4011357a355043e5              # double 4.3022239999999998
	.quad	0x401ba6034f3fd934              # double 6.9121220000000001
	.quad	0x40137ee4e26d4802              # double 4.87392
	.quad	0x40230ff8ec0f8833              # double 9.5311959999999995
	.quad	0x3ff1aae3a3a8e714              # double 1.1042209999999999
	.quad	0x3ff24385c67dfe33              # double 1.1414850000000001
	.quad	0x400c13d5347a5b10              # double 3.509684
	.quad	0x40157756861e9292              # double 5.3665409999999998
	.quad	0x401e24f8f8a4c1ec              # double 7.5361060000000002
	.quad	0x3fe25f1e0828c36e              # double 0.57411100000000004
	.quad	0x400a179fa97e132b              # double 3.2615349999999999
	.quad	0x400e9d909f1f1498              # double 3.8269359999999999
	.quad	0x4019a92a30553261              # double 6.4151999999999996
	.quad	0x400947d0aed99cbf              # double 3.160066
	.quad	0x4021cea8112ba16e              # double 8.9036259999999992
	.quad	0x4020d41ebc83a96d              # double 8.4142969999999995
	.quad	0x3fd3b37c99ae924f              # double 0.30782999999999999
	.quad	0x4014f9439de481f5              # double 5.2434219999999998
	.quad	0x40075ec99f1ae2da              # double 2.9212829999999999
	.quad	0x40206cd2f5dbb9d0              # double 8.2125470000000007
	.quad	0x400815c31593e5fb              # double 3.0106259999999998
	.quad	0x3fec402d16b97fe9              # double 0.88283400000000001
	.quad	0x401d0017dae81883              # double 7.2500910000000003
	.quad	0x3ff31ab29e4d5d81              # double 1.194018
	.quad	0x401a3e685db76b3c              # double 6.5609450000000002
	.quad	0x401acfbf83382e45              # double 6.7028790000000003
	.quad	0x3fe795faa8a82a56              # double 0.73705799999999999
	.quad	0x400dd056c508b32d              # double 3.726728
	.quad	0x40226e20685553ef              # double 9.2150909999999993
	.quad	0x401871af3a14cec4              # double 6.1110199999999999
	.quad	0x4010d713f077ccc0              # double 4.2100369999999998
	.quad	0x400905ccc89b0ee5              # double 3.1278320000000002
	.quad	0x4020a7b4e54f7a92              # double 8.3275520000000007
	.quad	0x4016511904b3c3e7              # double 5.5791969999999997
	.quad	0x40147f826edaa92e              # double 5.1245209999999997
	.quad	0x3ffd9158b827fa1a              # double 1.847985
	.quad	0x4022c0db8bac710d              # double 9.3766750000000005
	.quad	0x402072253111f0c3              # double 8.2229399999999995
	.quad	0x401efd0dcfcc5b8e              # double 7.7471230000000002
	.quad	0x4016925f633ce63a              # double 5.6429419999999997
	.quad	0x400e40a6b93ccd10              # double 3.781568
	.quad	0x3ff25799e518f3ed              # double 1.146387
	.quad	0x40202f88765ba6f0              # double 8.0928380000000004
	.quad	0x4013c5b4677b395c              # double 4.9430709999999998
	.quad	0x4007d1465e892253              # double 2.977185
	.quad	0x40100fd1569f4906              # double 4.015447
	.quad	0x400ef68512231833              # double 3.870371
	.quad	0x400bf0c804102ff9              # double 3.492569
	.quad	0x402305ddf43c7d5f              # double 9.5114590000000003
	.quad	0x400981d7dbf487fd              # double 3.1884000000000001
	.quad	0x4021042c5e2cdc01              # double 8.5081509999999998
	.quad	0x401a393682730c67              # double 6.5558719999999999
	.quad	0x401e71897a67a52b              # double 7.6108760000000001
	.quad	0x40219c0639d5e4a4              # double 8.8047350000000008
	.quad	0x4021dffe2a3cea6c              # double 8.9374859999999998
	.quad	0x402048c026cc1ca4              # double 8.1420910000000006
	.quad	0x3fe68de4c51116a9              # double 0.70482100000000003
	.quad	0x4020edec80c73abd              # double 8.4646950000000007
	.quad	0x3ff396c1e364bec6              # double 1.2243059999999999
	.quad	0x40214a5f84cad57c              # double 8.6452600000000003
	.quad	0x3feb11233df2a9d6              # double 0.84584199999999998
	.quad	0x4020fcbc8c0ce91d              # double 8.4936260000000008
	.quad	0x401c3818c5c9a34d              # double 7.0547820000000003
	.quad	0x4017bd7ba6698bb5              # double 5.9350420000000002
	.quad	0x400478be7296f651              # double 2.5589569999999999
	.quad	0x40027635e74299d9              # double 2.3077200000000002
	.quad	0x4023759685122318              # double 9.7296639999999996
	.quad	0x400737e4de3b8a1a              # double 2.9022920000000001
	.quad	0x401c3202107b7846              # double 7.0488359999999997
	.quad	0x400252f9873ffac2              # double 2.2905150000000001
	.quad	0x4022d7a5f41aef70              # double 9.4211880000000008
	.quad	0x400d0ea077036c9c              # double 3.632142
	.quad	0x3fda3f5b5fa22707              # double 0.41011700000000001
	.quad	0x40186b3bfb58d152              # double 6.1047209999999996
	.quad	0x401066c3760bf5d8              # double 4.1003550000000004
	.quad	0x3fec3061c79b34a4              # double 0.88090599999999996
	.quad	0x3fc45425f202107b              # double 0.15881799999999999
	.quad	0x3ff6077ff151e753              # double 1.3768309999999999
	.quad	0x3fe02e5ffa3b9ae1              # double 0.50566100000000003
	.quad	0x3ffdf662fdfc19c1              # double 1.8726529999999999
	.quad	0x3fe319157abb8801              # double 0.59681200000000001
	.quad	0x3fbc9731098d477c              # double 0.111682
	.quad	0x40112690de093533              # double 4.2876620000000001
	.quad	0x400f59a30984e400              # double 3.918768
	.quad	0x4000fd1f601797cc              # double 2.1235949999999999
	.quad	0x4017cd4f5903a754              # double 5.9504979999999996
	.quad	0x4006294e5d5b24ea              # double 2.7701690000000001
	.quad	0x40100df58c08b75f              # double 4.0136320000000003
	.quad	0x3ffdeeb3dd11be6e              # double 1.8707769999999999
	.quad	0x400a8c26138fffbd              # double 3.318432
	.quad	0x3fc58f3eccc46951              # double 0.168434
	.quad	0x40202a85a921ccd9              # double 8.0830509999999993
	.quad	0x4010d682b6284599              # double 4.2094829999999996
	.quad	0x3fdb33764f11b60b              # double 0.425016
	.quad	0x3ffd8d0aaa7ded6c              # double 1.8469340000000001
	.quad	0x3fd21d68c692f6e8              # double 0.28304499999999999
	.quad	0x4010bf893faf4278              # double 4.1870469999999997
	.quad	0x3ff0992c8c5004fb              # double 1.037396
	.quad	0x401996fda836eb4f              # double 6.3974520000000004
	.quad	0x40115052934acaff              # double 4.3284399999999996
	.quad	0x401592e5de15ca6d              # double 5.3934550000000003
	.quad	0x400e293532e7b3d9              # double 3.7701210000000001
	.quad	0x40032a337a80cf9e              # double 2.3956059999999999
	.quad	0x3ff7d4e09784ec63              # double 1.4894719999999999
	.quad	0x40238d77d955714c              # double 9.7763050000000006
	.quad	0x3fbea18372e6a769              # double 0.11965199999999999
	.quad	0x3fe2085f4a1272c9              # double 0.56352199999999997
	.quad	0x401fe60807357e67              # double 7.9746399999999999
	.quad	0x400bf5f02c4d65e4              # double 3.4950869999999998
	.quad	0x401729f127f5e84f              # double 5.790959
	.quad	0x4011c8c1db0142f6              # double 4.4460519999999999
	.quad	0x4023309f40a2877f              # double 9.5949650000000001
	.quad	0x3fe8f9207d4e0978              # double 0.78041099999999997
	.quad	0x40010b31c219eb64              # double 2.1304660000000002
	.quad	0x400467c4199fe436              # double 2.5506669999999998
	.quad	0x401f15f4e4430b18              # double 7.7714420000000004
	.quad	0x4019676ea4228998              # double 6.3510080000000002
	.quad	0x3feede80bed740c4              # double 0.96466099999999999
	.quad	0x402021eadd590c0b              # double 8.0662450000000003
	.quad	0x3ff94c9ea9a3d2d8              # double 1.5812059999999999
	.quad	0x401cd0ef566490a3              # double 7.2040379999999997
	.quad	0x4002dbc5de9c022a              # double 2.3573110000000002
	.quad	0x40152a450acc0bdd              # double 5.2912790000000003
	.quad	0x4020e395810624dd              # double 8.4444999999999997
	.quad	0x4018e513f8db4891              # double 6.2237090000000004
	.quad	0x4012907bbb62413e              # double 4.6410970000000002
	.quad	0x4020838305d95dd5              # double 8.2568590000000004
	.quad	0x4002d6c2efd438d2              # double 2.3548640000000001
	.quad	0x401d41f2dc2b0ea2              # double 7.3144030000000004
	.quad	0x3fe027f3cf70153c              # double 0.50487700000000002
	.quad	0x40207ea033e78e19              # double 8.2473159999999996
	.quad	0x400744f3343fa2ad              # double 2.9086669999999999
	.quad	0x4012719220ff5409              # double 4.6109090000000004
	.quad	0x4021ec39ffd60e95              # double 8.9613800000000001
	.quad	0x40212ad2135daad6              # double 8.583634
	.quad	0x3ff4a0157eed45e9              # double 1.289083
	.quad	0x4019f54e6e221c8a              # double 6.4895569999999996
	.quad	0x401a41600f34506a              # double 6.5638430000000003
	.quad	0x4019e92923e5b856              # double 6.4776959999999999
	.quad	0x4016883e425aee63              # double 5.6330499999999999
	.quad	0x3ff44d48882f0e0b              # double 1.2688680000000001
	.quad	0x400788c692f6e829              # double 2.9417849999999999
	.quad	0x40192a28bb0a2caa              # double 6.2911710000000003
	.quad	0x400e128f9f44d445              # double 3.7590629999999998
	.quad	0x4004e6961c36976c              # double 2.6125910000000001
	.quad	0x40215dc24c404a73              # double 8.6831230000000001
	.quad	0x3ff37b267c6b8b69              # double 1.2175659999999999
	.quad	0x4022121e3eaf6838              # double 9.0353870000000001
	.quad	0x40227126634117f8              # double 9.2209959999999995
	.quad	0x401d5c475e6362a6              # double 7.3401160000000001
	.quad	0x400d531e3a7daa50              # double 3.6655850000000001
	.quad	0x402333163baba7b9              # double 9.5997789999999998
	.quad	0x4006ac52a411c2a0              # double 2.8341419999999999
	.quad	0x402106c508b32ce9              # double 8.5132220000000007
	.quad	0x4022618cc144028e              # double 9.1905269999999994
	.quad	0x400d6ed99cbee808              # double 3.6791260000000001
	.quad	0x402119c79b34a44c              # double 8.5503509999999991
	.quad	0x40222a2dd7a99fa1              # double 9.0823809999999998
	.quad	0x400e2a960b6f9fcb              # double 3.770794
	.quad	0x4023f04b5dcc63f1              # double 9.9693249999999995
	.quad	0x4023624723aafff3              # double 9.6919489999999992
	.quad	0x402128b8066c2acc              # double 8.5795290000000008
	.quad	0x401ab8a7a41e57da              # double 6.6803270000000001
	.quad	0x401e21e4712e4085              # double 7.5330979999999998
	.quad	0x3fe1ea9e6eeb7026              # double 0.55989
	.quad	0x40055eb28d8665e0              # double 2.6712389999999999
	.quad	0x40209369984a0e41              # double 8.2879149999999999
	.quad	0x400f253868fd199c              # double 3.8931740000000001
	.quad	0x401cbd9945b6c376              # double 7.185155
	.quad	0x3ffafd3a1d323fee              # double 1.686823
	.quad	0x3ffd4ccff21b3aef              # double 1.831253
	.quad	0x401f86b4c7f34938              # double 7.8815489999999996
	.quad	0x3ffa84ee7c49fd7a              # double 1.657454
	.quad	0x4003cf72b4528284              # double 2.4762930000000001
	.quad	0x401947cbf6e3f78c              # double 6.3201140000000002
	.quad	0x401d9f9c62a1b5c8              # double 7.4058700000000001
	.quad	0x401615d4e8fb00bd              # double 5.5213200000000002
	.quad	0x3fd3635610adcd2d              # double 0.30293799999999999
	.quad	0x401ff834d26fa3fd              # double 7.9923890000000001
	.quad	0x4021159a30984e40              # double 8.542192
	.quad	0x4021bd64302b40f6              # double 8.8699049999999993
	.quad	0x402268cc575c0768              # double 9.2046840000000003
	.quad	0x4017ce28ed5f138c              # double 5.9513280000000002
	.quad	0x40105611fd5885d3              # double 4.0840529999999999
	.quad	0x3fc71b823c85c24c              # double 0.18052699999999999
	.quad	0x40228c1bb8c32a8d              # double 9.2736490000000007
	.quad	0x400dd04b3c3e74b0              # double 3.7267060000000001
	.quad	0x4000ac5fbf83382e              # double 2.0841669999999999
	.quad	0x401c5172ef0ae536              # double 7.0795399999999997
	.quad	0x400549fc6da44849              # double 2.6611259999999999
	.quad	0x4011302795703f2d              # double 4.2970259999999998
	.quad	0x400fa344c37e6f72              # double 3.9547210000000002
	.quad	0x3ffbc3e8576cce5f              # double 1.7353289999999999
	.quad	0x401826ba0620ab71              # double 6.0378189999999998
	.quad	0x4020bad96a6a0126              # double 8.3649400000000007
	.quad	0x4015162aa19439de              # double 5.2716469999999997
	.quad	0x401d64dad31fcd25              # double 7.3484910000000001
	.quad	0x401708cbd1244a62              # double 5.7585899999999999
	.quad	0x400700b6f9fcb0c0              # double 2.8753489999999999
	.quad	0x401db642396073de              # double 7.4279869999999999
	.quad	0x3fd88e4b87bdcf03              # double 0.383685
	.quad	0x4020a822bbecaab9              # double 8.3283900000000006
	.quad	0x401894152b0a6fc6              # double 6.1446120000000004
	.quad	0x3fb3d60e94ee392e              # double 0.077484999999999998
	.quad	0x401ff3608d08919f              # double 7.987673
	.quad	0x402003badc0980b2              # double 8.0072849999999995
	.quad	0x402170f9096bb98c              # double 8.7206499999999991
	.quad	0x4011e08205ff1d82              # double 4.4692460000000001
	.quad	0x400c3060bb2bba99              # double 3.523622
	.quad	0x401b9fe6d58c8eef              # double 6.9061539999999999
	.quad	0x4007fa4484944ed7              # double 2.997201
	.quad	0x401602174c4cdfad              # double 5.5020420000000003
	.quad	0x400cb6e9bbf0dc77              # double 3.5893130000000002
	.quad	0x4002e6df82b1f688              # double 2.3627310000000001
	.quad	0x401c0d96638433d7              # double 7.0132690000000002
	.quad	0x3fe8afcce1c58256              # double 0.77146000000000003
	.quad	0x4022903c6c97d8cf              # double 9.2817109999999996
	.quad	0x40026cc4ef88b978              # double 2.3031100000000002
	.quad	0x4004dfcd24e160d9              # double 2.6092780000000002
	.quad	0x4021cd90c0ad03da              # double 8.9014950000000006
	.quad	0x401522396073de1e              # double 5.2834219999999998
	.quad	0x3f9ef911cf355cd9              # double 0.030247
	.quad	0x401bb94a2b9d3cbc              # double 6.9309469999999997
	.quad	0x4021a8f57f737da6              # double 8.8299979999999998
	.quad	0x4022510adcd2d44e              # double 9.1582860000000004
	.quad	0x400b809c3ce2089e              # double 3.4377979999999999
	.quad	0x4017ccf2495e17e3              # double 5.9501429999999997
	.quad	0x40081e57d9dba909              # double 3.0148160000000002
	.quad	0x4023cdcfcc5b8dc5              # double 9.9019759999999994
	.quad	0x402266043a2163fe              # double 9.1992510000000003
	.quad	0x401d56994185058e              # double 7.3345690000000001
	.quad	0x402293cb3e5753a4              # double 9.2886600000000001
	.quad	0x40232f345069a4df              # double 9.5921959999999995
	.quad	0x401e79fe43675ddd              # double 7.6191339999999998
	.quad	0x401236fe718a86d7              # double 4.5537049999999999
	.quad	0x400a3f9f01b866e4              # double 3.2810649999999999
	.quad	0x40225ce160d887ec              # double 9.181407
	.quad	0x401b34538ef34d6a              # double 6.8010999999999999
	.quad	0x40238ffcfc3f811f              # double 9.7812269999999994
	.quad	0x4013e52b0a6fc58b              # double 4.9737970000000002
	.quad	0x40180737da61e0c6              # double 6.0070490000000003
	.quad	0x4020e70691ea78af              # double 8.4512219999999996
	.quad	0x3ffd4c996b7670a0              # double 1.8312010000000001
	.quad	0x3ffc3d41743e963e              # double 1.7649550000000001
	.quad	0x400a8196d8f4f93c              # double 3.3132760000000001
	.quad	0x4000de3d1cc100e7              # double 2.1085150000000001
	.quad	0x40119507e9d94d0e              # double 4.3955380000000002
	.quad	0x4009d97785729b28              # double 3.231185
	.quad	0x40210303e20ccff2              # double 8.5058889999999998
	.quad	0x4008a16b54e2b064              # double 3.0788180000000001
	.quad	0x40153c09c3ce208a              # double 5.3086310000000001
	.quad	0x40164c753e707e17              # double 5.5746659999999997
	.quad	0x3fd8b845564b6630              # double 0.38624700000000001
	.quad	0x401e433a0407cc7d              # double 7.5656509999999999
	.quad	0x3ffe511be6e65387              # double 1.8948020000000001
	.quad	0x402397b9bed30f06              # double 9.7963389999999997
	.quad	0x3fa0420f6f08cc57              # double 0.031753999999999998
	.quad	0x4004f60f1b25f634              # double 2.6201460000000001
	.quad	0x400a1e774eebf65e              # double 3.2648760000000001
	.quad	0x401c922dd7a99fa1              # double 7.1427529999999999
	.quad	0x401f9aa044ae85ba              # double 7.9010020000000001
	.quad	0x40207b5c39bcba30              # double 8.2409379999999999
	.quad	0x40170798d8a979e1              # double 5.7574189999999996
	.quad	0x4011c6317268d328              # double 4.4435479999999998
	.quad	0x400b8d2ed783dff4              # double 3.443937
	.quad	0x400d1ab21815a07b              # double 3.6380349999999999
	.quad	0x3ff66b09635610ae              # double 1.401132
	.quad	0x401c9b7f1737542a              # double 7.1518519999999999
	.quad	0x401bddc4007570c5              # double 6.9665679999999996
	.quad	0x400f369552e2fbe3              # double 3.9016519999999999
	.quad	0x4013ac4bd33d2956              # double 4.9182579999999998
	.quad	0x4023c887ebf22c02              # double 9.8916620000000002
	.quad	0x401bf797460242d0              # double 6.9917879999999997
	.quad	0x400472d3415b1423              # double 2.5560670000000001
	.quad	0x4011b8f9f44d4456              # double 4.4306409999999996
	.quad	0x3ff8b11c6d1e108c              # double 1.5432399999999999
	.quad	0x401ef3e468cac4b5              # double 7.7381760000000001
	.quad	0x401464cb9ecf6380              # double 5.098433
	.quad	0x3ff8374aba387592              # double 1.5134989999999999
	.quad	0x3ffd4a350d2806af              # double 1.8306169999999999
	.quad	0x401f94959e625636              # double 7.8951019999999996
	.quad	0x4018e0fcf80dc337              # double 6.2197149999999999
	.quad	0x4023caa2a0a95853              # double 9.8957719999999991
	.quad	0x40119daad601ffb5              # double 4.4039720000000004
	.quad	0x400d6a9e6eeb7026              # double 3.67706
	.quad	0x402239b90ea9e6ef              # double 9.1127400000000005
	.quad	0x40103a6b50b0f27c              # double 4.0570500000000003
	.quad	0x40099a4f8726d04e              # double 3.2003469999999998
	.quad	0x4014656c0d6f544c              # double 5.0990450000000003
	.quad	0x401edb317efe0ce1              # double 7.7140560000000002
	.quad	0x3fe862089e34330d              # double 0.76196699999999995
	.quad	0x40075ad85dfa871a              # double 2.9193579999999999
	.quad	0x401b9edcc20d562a              # double 6.9051390000000001
	.quad	0x3ffa9e82d7b634db              # double 1.663699
	.quad	0x3ffed4c22ee4191a              # double 1.9269430000000001
	.quad	0x401c8b4fe79ee02a              # double 7.1360469999999996
	.quad	0x4023befa1e3eaf68              # double 9.8730019999999996
	.quad	0x401f8db48909289e              # double 7.8883840000000003
	.quad	0x4019c31c64ba94bc              # double 6.4405380000000001
	.quad	0x3fc1932d6ece13f5              # double 0.13730400000000001
	.quad	0x401144f82f512663              # double 4.3173529999999998
	.quad	0x4019ff83be6601bd              # double 6.4995260000000004
	.quad	0x4013654e2b063e08              # double 4.8489310000000003
	.quad	0x4013df5dbb9cf9a0              # double 4.9681309999999996
	.quad	0x401d30a73f748a16              # double 7.2975130000000004
	.quad	0x401dbcfcc5b8dc55              # double 7.434558
	.quad	0x4015a127b2cc7086              # double 5.4073779999999996
	.quad	0x3fdda9d627bf61aa              # double 0.46349099999999999
	.quad	0x401b37fe08aefb2b              # double 6.8046800000000003
	.quad	0x4010c610f0e90bc8              # double 4.1934240000000003
	.quad	0x400b7be5d9e40c84              # double 3.4354969999999998
	.quad	0x4014a3eea209aaa4              # double 5.1600900000000003
	.quad	0x401351a47a9e2bd0              # double 4.8297290000000004
	.quad	0x401ea64b2314013f              # double 7.6623960000000002
	.quad	0x401f540e5a35d67c              # double 7.8320860000000003
	.quad	0x4019bcca2db61bb0              # double 6.4343649999999997
	.quad	0x401676b37867f0aa              # double 5.6159189999999999
	.quad	0x4016fba1b1960fa1              # double 5.7457339999999997
	.quad	0x402270807357e671              # double 9.2197300000000002
	.quad	0x40020311e85fd04a              # double 2.2514989999999999
	.quad	0x40164ee84ad794a7              # double 5.5770580000000001
	.quad	0x400596b5d462c344              # double 2.6985890000000001
	.quad	0x400395bf6a0dbad4              # double 2.4481190000000002
	.quad	0x4011e23c42a66dbd              # double 4.4709329999999996
	.quad	0x401a6d1e108c3f3e              # double 6.60656
	.quad	0x401cdef30a4e379b              # double 7.2177239999999996
	.quad	0x400726b26bf8769f              # double 2.8938950000000001
	.quad	0x401f8132b55ef1fe              # double 7.8761700000000001
	.quad	0x401458d002e23290              # double 5.0867310000000003
	.quad	0x40146b324851a869              # double 5.1046839999999998
	.quad	0x40011f162ae4b018              # double 2.1401789999999998
	.quad	0x4022e2602c9081c3              # double 9.4421400000000001
	.quad	0x401c4eb356da0169              # double 7.0768560000000003
	.quad	0x4010c97c80841ede              # double 4.1967639999999999
	.quad	0x401da80a9de8b3b3              # double 7.4141029999999999
	.quad	0x3fb4fa48301a79ff              # double 0.081944000000000003
	.quad	0x4014e88e368f0846              # double 5.2271049999999999
	.quad	0x3fd7aa9b499d0204              # double 0.36978800000000001
	.quad	0x40106055b8993922              # double 4.0940770000000004
	.quad	0x40214a8da7f3cf70              # double 8.6456119999999999
	.quad	0x3ff2054bcf0b6b6e              # double 1.126293
	.quad	0x3ffb30cfe154434e              # double 1.699417
	.quad	0x401299f5dfeb8d82              # double 4.6503519999999998
	.quad	0x40210c29e0a41a26              # double 8.5237569999999998
	.quad	0x400fee89656eefa2              # double 3.991473
	.quad	0x400daa2339c0ebee              # double 3.708075
	.quad	0x400e8cebbba55d1c              # double 3.8188089999999999
	.quad	0x40233ff92f2b66b6              # double 9.6249479999999998
	.quad	0x4020d649f51697f2              # double 8.418533
	.quad	0x4012a6ffc115df65              # double 4.6630849999999997
	.quad	0x402267b71fbc5dea              # double 9.2025690000000004
	.quad	0x4003f8b71b8aa002              # double 2.4964430000000002
	.quad	0x402128ad03d9a954              # double 8.5794449999999997
	.quad	0x4004200d1b71758e              # double 2.5156499999999999
	.quad	0x401811e646f15619              # double 6.0174799999999999
	.quad	0x401f10064a9cdc44              # double 7.7656489999999998
	.quad	0x401469ffd60e94ee              # double 5.1035149999999998
	.quad	0x401934095f2452c6              # double 6.3008170000000003
	.quad	0x4011088bda9435ad              # double 4.2583460000000004
	.quad	0x401757fd82773e25              # double 5.835928
	.quad	0x3fd1ba6266fd651b              # double 0.277001
	.quad	0x3fffb852f7f498c4              # double 1.9825010000000001
	.quad	0x4020cb3a68b19a41              # double 8.3969299999999993
	.quad	0x3ffe84178705425f              # double 1.907249
	.quad	0x400e06c43f5f9160              # double 3.753304
	.quad	0x400bc2d83c6c97d9              # double 3.4701390000000001
	.quad	0x4005547f993d5348              # double 2.6662590000000002
	.quad	0x4005019da9c99286              # double 2.6257890000000002
	.quad	0x401df0bd87b56b87              # double 7.4850979999999998
	.quad	0x4021a5ff822bbecb              # double 8.8242150000000006
	.quad	0x40239c4a6223e187              # double 9.8052550000000007
	.quad	0x4020188e9b38d60a              # double 8.0479629999999993
	.quad	0x4010abad7d7c2ca1              # double 4.1676539999999997
	.quad	0x40060da76d97b310              # double 2.7566670000000002
	.quad	0x3ff2b2074ea8da7f              # double 1.1684639999999999
	.quad	0x3fce1f080303c07f              # double 0.235322
	.quad	0x4004440c8472c0e8              # double 2.5332270000000001
	.quad	0x4019734fc610f0e9              # double 6.362609
	.quad	0x40189389f83be660              # double 6.1440809999999999
	.quad	0x401f22d6a9c560c8              # double 7.7840220000000002
	.quad	0x3ffda84be40420f7              # double 1.853588
	.quad	0x400b1e22e5de15ca              # double 3.3897149999999998
	.quad	0x3fbdba7fc32ebe59              # double 0.11612699999999999
	.quad	0x4019df06705c896e              # double 6.4677980000000002
	.quad	0x3fe439a9da597d4a              # double 0.63203900000000002
	.quad	0x3fe6d851654d61b3              # double 0.71390600000000004
	.quad	0x4018b7d45a5fc7e7              # double 6.1795210000000003
	.quad	0x3ffacdf9bdc69f8c              # double 1.675287
	.quad	0x401250e347629521              # double 4.5789920000000004
	.quad	0x4009f57e670e2c13              # double 3.2448700000000001
	.quad	0x401c77e49b1fab97              # double 7.117083
	.quad	0x4001d5e6362a5e78              # double 2.2294429999999998
	.quad	0x4021ede0f7fcfc40              # double 8.9646070000000008
	.quad	0x3fe96202539756c9              # double 0.79321399999999997
	.quad	0x4020cf10667f90da              # double 8.4044220000000003
	.quad	0x3ffd25881a1554fc              # double 1.821663
	.quad	0x3ffe00379314445b              # double 1.8750530000000001
	.quad	0x3fc4d0fe8ab4fa48              # double 0.16262799999999999
	.quad	0x400d72ffd1dcd706              # double 3.681152
	.quad	0x4021d786a098915c              # double 8.9209490000000002
	.quad	0x4022dc29bf162ae5              # double 9.4300060000000005
	.quad	0x4023d171e29b6b2b              # double 9.9090720000000001
	.quad	0x40150ff10ecb74de              # double 5.265568
	.quad	0x401caa52ac753e70              # double 7.1663309999999996
	.quad	0x4020fc0d0aaa7ded              # double 8.4922869999999993
	.quad	0x401317a4a48f96e1              # double 4.7730889999999997
	.quad	0x401a38b04ab606b8              # double 6.5553600000000003
	.quad	0x4021c209edbf8b9c              # double 8.8789820000000005
	.quad	0x4016a8e219652bd4              # double 5.6649250000000002
	.quad	0x40119cb295e9e1b1              # double 4.4030250000000004
	.quad	0x4015dc70867ad8e4              # double 5.4652729999999998
	.quad	0x3fffe2b3892ee84b              # double 1.992847
	.quad	0x40081606317268d3              # double 3.0107539999999999
	.quad	0x401418ae74f2f124              # double 5.0241030000000002
	.quad	0x400e6ab474107315              # double 3.8021020000000001
	.quad	0x401d6d4cfd08d4bb              # double 7.3567390000000001
	.quad	0x4023fbb3636f3b21              # double 9.9916029999999995
	.quad	0x402284a29845dc83              # double 9.2590529999999998
	.quad	0x4018a7ee9142b303              # double 6.163996
	.quad	0x400371eafee6fb4c              # double 2.4306239999999999
	.quad	0x400c6b5e529bae47              # double 3.5524260000000001
	.quad	0x40169f401c4fc1df              # double 5.6555179999999998
	.quad	0x40143f2389720429              # double 5.0616589999999997
	.quad	0x4023261cffeb074a              # double 9.5744399999999992
	.quad	0x401849cfdd228566              # double 6.072082
	.quad	0x402071d883ba3444              # double 8.2223550000000003
	.quad	0x3fe7051eb851eb85              # double 0.71937499999999999
	.quad	0x3fdd806290eed02d              # double 0.46096100000000001
	.quad	0x4021076af89c5e70              # double 8.5144880000000001
	.quad	0x40151eb13dfb0d52              # double 5.279973
	.quad	0x4015d42e12620254              # double 5.4572070000000004
	.quad	0x401bddfb9389b520              # double 6.96678
	.quad	0x4019c5c28f5c28f6              # double 6.4431250000000002
	.quad	0x401130ae9680e065              # double 4.2975409999999998
	.quad	0x3fddb2bba98eda23              # double 0.464034
	.quad	0x401041611ba3ca75              # double 4.063847
	.quad	0x400f06950fc71d60              # double 3.8782139999999998
	.quad	0x401e1fa26a22b389              # double 7.5308929999999998
	.quad	0x3ff1ca89fc6da448              # double 1.1119479999999999
	.quad	0x40220f6837f7be12              # double 9.0300919999999998
	.quad	0x401226dbd72bcb60              # double 4.5379480000000001
	.quad	0x40116d5c31593e60              # double 4.3567970000000003
	.quad	0x40184517e77d523b              # double 6.0674739999999998
	.quad	0x3ffa875e6362a5e8              # double 1.6580490000000001
	.quad	0x40002ad601ffb481              # double 2.0209160000000002
	.quad	0x401cd8655193708b              # double 7.2113240000000003
	.quad	0x4020a3c558644524              # double 8.319865
	.quad	0x3fd73f748a159818              # double 0.36324800000000002
	.quad	0x40035b9170d62bf1              # double 2.4197109999999999
	.quad	0x4020c1205bc01a37              # double 8.3772000000000002
	.quad	0x40229b8de6ddf00b              # double 9.3038170000000004
	.quad	0x4023870ef566490a              # double 9.7637859999999996
	.quad	0x3fed1ba1b1960fa1              # double 0.90962299999999996
	.quad	0x40216e09784ec637              # double 8.7149160000000006
	.quad	0x4022eabe0589acbd              # double 9.4584810000000008
	.quad	0x40147e65bea0ba1f              # double 5.1234349999999997
	.quad	0x400b4b92c061847f              # double 3.4119009999999999
	.quad	0x401aa93a2df9378f              # double 6.6652610000000001
	.quad	0x3ff26272862f598a              # double 1.149035
	.quad	0x4010d4ebdd334c5e              # double 4.2079310000000003
	.quad	0x401c260c38f36695              # double 7.0371560000000004
	.quad	0x3ff5652ce032db1f              # double 1.3372010000000001
	.quad	0x3ff25f9378ee2867              # double 1.148334
	.quad	0x3fd4bd5dc4007571              # double 0.32405800000000001
	.quad	0x4004e06d0d49949f              # double 2.6095830000000002
	.quad	0x402157778dd616f8              # double 8.6708339999999993
	.quad	0x4020a68a936c58ef              # double 8.3252760000000006
	.quad	0x40118aa9717df19d              # double 4.3854119999999996
	.quad	0x3fd2be553ac4f7ec              # double 0.29286699999999999
	.quad	0x4001f4d48882f0e1              # double 2.2445460000000002
	.quad	0x3ffc9c90c4dec1c2              # double 1.788224
	.quad	0x40200bfe5c91d14e              # double 8.0234249999999996
	.quad	0x40211e2b063e07a3              # double 8.5589220000000008
	.quad	0x4019da543f1c7582              # double 6.4632120000000004
	.quad	0x3fec0a32f4491299              # double 0.87624500000000005
	.quad	0x4022578cc9a77e5f              # double 9.1709960000000006
	.quad	0x40223903c8e25c81              # double 9.1113569999999999
	.quad	0x3ff360d77b7c7821              # double 1.2111430000000001
	.quad	0x402260678c0053e3              # double 9.1882900000000003
	.quad	0x40133cd0bb6ed677              # double 4.8093899999999996
	.quad	0x4021cde2cdc011d3              # double 8.9021209999999993
	.quad	0x40212f312b1b36bd              # double 8.5921719999999997
	.quad	0x4023959c065b63d4              # double 9.7922060000000001
	.quad	0x401b7681669ced0b              # double 6.8657279999999998
	.quad	0x40193e72da122fad              # double 6.3109849999999996
	.quad	0x4007197bb7308356              # double 2.8874430000000002
	.quad	0x40211e3369b9d7fe              # double 8.5589860000000009
	.quad	0x4018189ce4a7b4e5              # double 6.0240359999999997
	.quad	0x4018d171e29b6b2b              # double 6.2045360000000001
	.quad	0x40178947cfa26a23              # double 5.8840630000000003
	.quad	0x401427dbb16c1e36              # double 5.0389239999999997
	.quad	0x401d25c13fd0d068              # double 7.2868700000000004
	.quad	0x401655614df8b157              # double 5.5833789999999999
	.quad	0x3ff9d0d7be9856a3              # double 1.6134869999999999
	.quad	0x401d057b41bfbdf1              # double 7.2553530000000004
	.quad	0x40127b6d43d03969              # double 4.6205340000000001
	.quad	0x40205ee9dd7ecbb8              # double 8.185378
	.quad	0x4013b8a7e73a365d              # double 4.9303280000000003
	.quad	0x40060bf338716095              # double 2.7558349999999998
	.quad	0x3fddbed30f062d41              # double 0.46477200000000002
	.quad	0x4020473cd573647c              # double 8.1391360000000005
	.quad	0x4014403b81b64e05              # double 5.0627269999999998
	.quad	0x4020915097c80842              # double 8.2838180000000001
	.quad	0x401e960b2c83ec89              # double 7.6465269999999998
	.quad	0x40035cc07aaef2c7              # double 2.4202889999999999
	.quad	0x402373c72e275ab8              # double 9.7261290000000002
	.quad	0x4017e6cb10342aaa              # double 5.975384
	.quad	0x3fe2dac68a936c59              # double 0.58920600000000001
	.quad	0x401cbdfa871a3b15              # double 7.1855260000000003
	.quad	0x401ced93c46d82ba              # double 7.2320089999999997
	.quad	0x40057c63ae2541d9              # double 2.685737
	.quad	0x401cd2170931012a              # double 7.2051660000000002
	.quad	0x401cac8bc9cd3e0c              # double 7.1685020000000002
	.quad	0x4014e97396d0917d              # double 5.2279799999999996
	.quad	0x40219bb5bf6a0dbb              # double 8.8041210000000003
	.quad	0x401d50828c36da88              # double 7.3286230000000003
	.quad	0x401ae985ad538ac2              # double 6.7280490000000004
	.quad	0x4020a00b673c4f3c              # double 8.3125870000000006
	.quad	0x4020ae2f5989df11              # double 8.3402049999999992
	.quad	0x3fe39b3d07c84b5e              # double 0.61270000000000002
	.quad	0x3fd4024f6598e10d              # double 0.312641
	.quad	0x400b7de58e64b231              # double 3.4364729999999999
	.quad	0x4015560a2014727e              # double 5.3340230000000002
	.quad	0x4010c8476f2a5a47              # double 4.1955850000000003
	.quad	0x400f92d666a98245              # double 3.946698
	.quad	0x4010daa582dbe7f3              # double 4.2135220000000002
	.quad	0x3fd5311622813448              # double 0.331121
	.quad	0x4016444d87724fa9              # double 5.5667020000000003
	.quad	0x4018a558a7610279              # double 6.1614709999999997
	.quad	0x3ffabef177a7008a              # double 1.6716169999999999
	.quad	0x401424b1ee243569              # double 5.0358349999999996
	.quad	0x401ffb8a5ce5b424              # double 7.9956449999999997
	.quad	0x4022790de093532e              # double 9.2364339999999991
	.quad	0x3ff9c636b0963561              # double 1.610892
	.quad	0x40149be7296f6513              # double 5.1522490000000003
	.quad	0x4011e771001d5c31              # double 4.4760169999999997
	.quad	0x400a214f8b588e37              # double 3.2662650000000002
	.quad	0x3ff4518a009f6230              # double 1.2699069999999999
	.quad	0x401493929ed3953e              # double 5.1441140000000001
	.quad	0x3fe01cb252ce032e              # double 0.50350300000000003
	.quad	0x3fbcc4dec1c1d6d0              # double 0.11237900000000001
	.quad	0x40102af251c193b4              # double 4.0419400000000003
	.quad	0x401931beb18116ec              # double 6.2985790000000001
	.quad	0x402186e136e71cda              # double 8.7634369999999997
	.quad	0x4013bdbad3a604e2              # double 4.9352830000000001
	.quad	0x40239b65a9a80496              # double 9.8035099999999993
	.quad	0x4021d9e3c968943e              # double 8.9255659999999999
	.quad	0x401fb873365881a1              # double 7.9301269999999997
	.quad	0x40054c81d3aa36a0              # double 2.6623570000000001
	.quad	0x40239f518b0d0edc              # double 9.8111689999999995
	.quad	0x401cdef0281ba7fc              # double 7.2177129999999998
	.quad	0x401fcce28ed5f139              # double 7.9500830000000002
	.quad	0x4009477681669ced              # double 3.159894
	.quad	0x4015c2517e77d524              # double 5.4397640000000003
	.quad	0x401d4a4484944ed7              # double 7.322527
	.quad	0x3feeba6266fd651b              # double 0.96025199999999999
	.quad	0x401730dae3e6c4c6              # double 5.7977100000000004
	.quad	0x4021bab4b72c5198              # double 8.8646600000000007
	.quad	0x4014352c59fb1e19              # double 5.0519270000000001
	.quad	0x400c07cb70ac3a86              # double 3.503806
	.quad	0x40213012dfd694cd              # double 8.5938940000000006
	.quad	0x400c7accd530489d              # double 3.5599609999999999
	.quad	0x401ffc67168f8e7e              # double 7.9964870000000001
	.quad	0x3ff86afdda8bd231              # double 1.5261210000000001
	.quad	0x400da0fa9c12f09e              # double 3.7036030000000002
	.quad	0x3ff584806290eed0              # double 1.344849
	.quad	0x40122f2e05ccc89b              # double 4.5460739999999999
	.quad	0x4020fd05d0fa58f7              # double 8.4941849999999999
	.quad	0x401745b70691ea79              # double 5.8180810000000003
	.quad	0x400dba14cec41dd2              # double 3.7158600000000002
	.quad	0x401f0f72b4528284              # double 7.7650860000000002
	.quad	0x40151969a0ad8a11              # double 5.2748169999999996
	.quad	0x3ff4d24d099e0e73              # double 1.3013429999999999
	.quad	0x401643d640e9d51b              # double 5.5662469999999997
	.quad	0x4002ab5dcc63f141              # double 2.3336749999999999
	.quad	0x4004f57603925bb8              # double 2.6198540000000001
	.quad	0x401bca5e353f7cee              # double 6.9476250000000004
	.quad	0x4020eb42cc2d6a9c              # double 8.4594939999999994
	.quad	0x3ffe9a60d4562e0a              # double 1.91269
	.quad	0x4016816a48733659              # double 5.6263820000000004
	.quad	0x402331e12a51e322              # double 9.5974210000000006
	.quad	0x4020644aa53fc009              # double 8.1958819999999992
	.quad	0x3fcb70d62bf11f92              # double 0.21438099999999999
	.quad	0x4012fd855970b49e              # double 4.747579
	.quad	0x400d69129888f862              # double 3.6763050000000002
	.quad	0x4021577f06705c89              # double 8.6708909999999992
	.quad	0x400eed66f0cfe154              # double 3.8659189999999999
	.quad	0x401d2c725c3dee78              # double 7.2934049999999999
	.quad	0x3ff2a6d9be4cd749              # double 1.165735
	.quad	0x402052641b328b6e              # double 8.1609200000000008
	.quad	0x401015ef62f9ca5c              # double 4.0214210000000001
	.quad	0x401852b0ea18372e              # double 6.0807529999999996
	.quad	0x3fe0b33fc86cebbc              # double 0.52188100000000004
	.quad	0x3fc727e52157689d              # double 0.18090500000000001
	.quad	0x40198018611fd588              # double 6.3750929999999997
	.quad	0x4021d0140dd3fe19              # double 8.9064029999999992
	.quad	0x4012dca9ef5232d3              # double 4.7154920000000002
	.quad	0x402114d5b6805a2d              # double 8.5406929999999992
	.quad	0x4021878d4fdf3b64              # double 8.7647499999999993
	.quad	0x401036f7e3d1cc10              # double 4.0536799999999999
	.quad	0x3ff63a53b8e4b87c              # double 1.38924
	.quad	0x3fe315c209246bf0              # double 0.59640599999999999
	.quad	0x40223e757928e0ca              # double 9.1219900000000003
	.quad	0x40128b3c3e74afd5              # double 4.6359719999999998
	.quad	0x402102f5989df117              # double 8.5057799999999997
	.quad	0x401adbeec39799e5              # double 6.7147779999999999
	.quad	0x3ff63c98a222d517              # double 1.389794
	.quad	0x40167dddb1209edc              # double 5.622916
	.quad	0x40228f607c4199fe              # double 9.2800329999999995
	.quad	0x400c2a23bff8a8f4              # double 3.5205760000000001
	.quad	0x4017f850df15a4ad              # double 5.992496
	.quad	0x401a7d20296b3355              # double 6.6221930000000002
	.quad	0x400a01669ced0b31              # double 3.2506840000000001
	.quad	0x402161d4306e5cd5              # double 8.6910720000000001
	.quad	0x4022607ee0b0af60              # double 9.1884680000000003
	.quad	0x4011b3b5bf6a0dbb              # double 4.4254980000000002
	.quad	0x402077f498c3b0c4              # double 8.2342879999999993
	.quad	0x40176746cb966be8              # double 5.8508560000000003
	.quad	0x3fee6631f8a0902e              # double 0.94997500000000001
	.quad	0x40194019b0ab2e17              # double 6.3125980000000004
	.quad	0x3ff2c4a83b1d0c80              # double 1.1730119999999999
	.quad	0x3ff15e774eebf65e              # double 1.0855630000000001
	.quad	0x400b870b8cfbfc65              # double 3.4409399999999999
	.quad	0x40119840181e03f7              # double 4.398682
	.quad	0x40091be0157eed46              # double 3.138611
	.quad	0x4022de5f7403dddb              # double 9.4343219999999998
	.quad	0x3fe50eef1bac2df1              # double 0.65807300000000002
	.quad	0x4004048f96e15875              # double 2.502227
	.quad	0x40170a85015c2092              # double 5.7602729999999998
	.quad	0x3fff1550ca1cef24              # double 1.942704
	.quad	0x4022019029ae4f33              # double 9.0030529999999995
	.quad	0x402222ca36199781              # double 9.0679490000000005
	.quad	0x3feb6596c82e019b              # double 0.856151
	.quad	0x40230f72b4528284              # double 9.5301720000000003
	.quad	0x402077d60e94ee39              # double 8.2340549999999997
	.quad	0x400bd5dedf1e0829              # double 3.4794290000000001
	.quad	0x40119e5cd4ed2cbf              # double 4.4046510000000003
	.quad	0x40203e2845996745              # double 8.1214010000000005
	.quad	0x400709374bc6a7f0              # double 2.8795000000000002
	.quad	0x401ed58b3f63c31e              # double 7.708539
	.quad	0x40218d2977c88e7a              # double 8.7757070000000006
	.quad	0x3fe13b320535c9e6              # double 0.53847599999999995
	.quad	0x3ff448a47ecfe9b8              # double 1.2677350000000001
	.quad	0x40012275ab7dc7ac              # double 2.141826
	.quad	0x402348ed80a17b0f              # double 9.6424369999999992
	.quad	0x400dd78feef5ec81              # double 3.7302550000000001
	.quad	0x400123a2163fdd66              # double 2.1423990000000002
	.quad	0x401e16adf71eafee              # double 7.5221479999999996
	.quad	0x400255536933a040              # double 2.2916629999999998
	.quad	0x401991deacc92147              # double 6.3924510000000003
	.quad	0x40120aab47410731              # double 4.5104189999999997
	.quad	0x400365471715c63b              # double 2.4244520000000001
	.quad	0x3fb9ec3dab5c39bd              # double 0.101261
	.quad	0x3ff28e160d887ebf              # double 1.159689
	.quad	0x40225265add9c27f              # double 9.1609320000000007
	.quad	0x401c993bc0a06ea0              # double 7.1496420000000001
	.quad	0x3ff3141c8216c615              # double 1.19241
	.quad	0x4021a306c43f5f91              # double 8.8184109999999993
	.quad	0x401f3454de7ea5f8              # double 7.8011049999999997
	.quad	0x401af861a60d4563              # double 6.7425600000000001
	.quad	0x3ff65b24e9c45458              # double 1.3972519999999999
	.quad	0x400ba70d1fa33376              # double 3.4565679999999999
	.quad	0x4021ede892253112              # double 8.9646650000000001
	.quad	0x3ffd9899bf5946c3              # double 1.849756
	.quad	0x4014b544fe36d224              # double 5.1770209999999999
	.quad	0x400897c7820a30db              # double 3.0741109999999998
	.quad	0x3fd0134ce3de614a              # double 0.25117800000000001
	.quad	0x402199f8e3ac0c63              # double 8.8007270000000002
	.quad	0x401936266fd651b1              # double 6.3028810000000002
	.quad	0x4019882c6ef3d3a2              # double 6.3829820000000002
	.quad	0x401e29103c8e25c8              # double 7.5401009999999999
	.quad	0x401c8d4801f75105              # double 7.1379700000000001
	.quad	0x40208ebd9018e758              # double 8.2787900000000008
	.quad	0x4022ad19157abb88              # double 9.3380819999999999
	.quad	0x4016a333b96af039              # double 5.6593770000000001
	.quad	0x3fd4a7c9de050375              # double 0.322741
	.quad	0x4013cdbcec84f8f9              # double 4.9509160000000003
	.quad	0x401521a261bf37b9              # double 5.2828460000000002
	.quad	0x4007adfdef8487ba              # double 2.9599570000000002
	.quad	0x402280984e3ffef4              # double 9.2511620000000007
	.quad	0x4005b9513f8db489              # double 2.715487
	.quad	0x40160620ab713272              # double 5.5059839999999998
	.quad	0x4004669ced0b30b6              # double 2.5501040000000001
	.quad	0x40234e3a9f383f0c              # double 9.6527910000000005
	.quad	0x401fac896dd26b72              # double 7.9184929999999998
	.quad	0x400af34373f316e3              # double 3.3687809999999998
	.quad	0x4012f3f67f4dbdf9              # double 4.738245
	.quad	0x4023f3dd54da4ce8              # double 9.9762979999999998
	.quad	0x40143b85e80bed74              # double 5.058128
	.quad	0x4010254ef459d990              # double 4.0364339999999999
	.quad	0x4022ff0e4da09cc3              # double 9.4981559999999998
	.quad	0x4017907746887a8d              # double 5.8910799999999997
	.quad	0x4010ef6be37de93a              # double 4.2338100000000001
	.quad	0x3ff61709310129cc              # double 1.3806240000000001
	.quad	0x3ff78940bbb1f256              # double 1.471009
	.quad	0x4021bf950b955f78              # double 8.8741839999999996
	.quad	0x4023f881e4712e41              # double 9.9853660000000008
	.quad	0x4010447c30d306a3              # double 4.0668800000000003
	.quad	0x4019cdd54da4ce81              # double 6.451009
	.quad	0x40227d933e35c5b5              # double 9.2452640000000006
	.quad	0x401920d3cff64cf9              # double 6.2820580000000001
	.quad	0x3fc8ca4f440af1cc              # double 0.19367400000000001
	.quad	0x400f7a4723aafff3              # double 3.9347059999999998
	.quad	0x401e4dab9f559b3d              # double 7.5758499999999999
	.quad	0x400b9ee45c358afc              # double 3.4525839999999999
	.quad	0x4017c5e6362a5e78              # double 5.9432609999999997
	.quad	0x4011cbd2fa0d77b8              # double 4.4490470000000002
	.quad	0x4004cc15d2d01c0d              # double 2.5996510000000002
	.quad	0x40015506dd69d302              # double 2.1665169999999998
	.quad	0x3ffa87075b3e1438              # double 1.6579660000000001
	.quad	0x3ff6bdd872f33ca3              # double 1.421349
	.quad	0x3feff1715c63ae25              # double 0.99822299999999997
	.quad	0x3f7debd9018e7579              # double 0.0073049999999999999
	.quad	0x401fa88a04d12019              # double 7.9145890000000003
	.quad	0x4019611e42e12620              # double 6.3448419999999999
	.quad	0x40112e71476af89c              # double 4.2953539999999997
	.quad	0x400dbcdf69878317              # double 3.7172230000000002
	.quad	0x401c6c5c9a34ca0c              # double 7.1058219999999999
	.quad	0x401f5e24bba12b5e              # double 7.8419369999999997
	.quad	0x40201ce93e1c9b41              # double 8.0564669999999996
	.quad	0x4017a8b26394face              # double 5.9147429999999996
	.quad	0x401e42fcac8e68e4              # double 7.5654170000000001
	.quad	0x4010dff1d81f1066              # double 4.2186959999999996
	.quad	0x3ffe714b9cb6848c              # double 1.90266
	.quad	0x40095d8d79d0a676              # double 3.1706799999999999
	.quad	0x401f319b0ab2e169              # double 7.7984429999999997
	.quad	0x402373c27631b585              # double 9.7260930000000005
	.quad	0x4011ec0b13597918              # double 4.4805109999999999
	.quad	0x4017ee6362a5e786              # double 5.9828010000000003
	.quad	0x40059f04ddb5525d              # double 2.7026460000000001
	.quad	0x40161c215b9a5a8a              # double 5.5274710000000002
	.quad	0x3fb62da554b8bef9              # double 0.086634000000000003
	.quad	0x402108c38f366949              # double 8.5171170000000007
	.quad	0x401a2e25c810a56a              # double 6.5450660000000003
	.quad	0x40041d55e6bc621b              # double 2.5143239999999998
	.quad	0x4021f92ba16e7a31              # double 8.9866609999999998
	.quad	0x3ffd66aca7935760              # double 1.837567
	.quad	0x401a8927d45a5fc8              # double 6.6339410000000001
	.quad	0x40095fd9ba1b1961              # double 3.171802
	.quad	0x400ec77b395c4220              # double 3.8474029999999999
	.quad	0x3ff6955b4677b396              # double 1.4114640000000001
	.quad	0x400cad1e96c3fc44              # double 3.5845310000000001
	.quad	0x40215a871a3b14a9              # double 8.676812
	.quad	0x40193ce67d77fae3              # double 6.3094729999999997
	.quad	0x3ff2f7f498c3b0c4              # double 1.1855359999999999
	.quad	0x402172bc2fc69729              # double 8.7240920000000006
	.quad	0x4015b630a91537a0              # double 5.4279200000000003
	.quad	0x4016f9008205ff1e              # double 5.7431660000000004
	.quad	0x3fee8bbd3804534c              # double 0.95455800000000001
	.quad	0x3fd5b10ba6266fd6              # double 0.33893099999999998
	.quad	0x4014289ca18bd662              # double 5.0396599999999996
	.quad	0x4015354ef459d990              # double 5.3020589999999999
	.quad	0x40126332acfb762e              # double 4.5968730000000004
	.quad	0x401e9ef1348b2208              # double 7.6552170000000003
	.quad	0x4022e7db8fde2ef5              # double 9.4528470000000002
	.quad	0x400d793c46d82ba6              # double 3.6841970000000002
	.quad	0x4023eab81f969e3d              # double 9.9584360000000007
	.quad	0x401359f4906034f4              # double 4.837847
	.quad	0x40017e3b03e20cd0              # double 2.186636
	.quad	0x3fed0d6f544bb1af              # double 0.90788999999999997
	.quad	0x402131df3300de4c              # double 8.5974059999999994
	.quad	0x400d6be2f7b17ce5              # double 3.6776789999999999
	.quad	0x401ba4a38327674d              # double 6.9107799999999999
	.quad	0x40092cfa69be09bb              # double 3.1469619999999998
	.quad	0x40181d1e96c3fc44              # double 6.0284370000000003
	.quad	0x401027b56b873797              # double 4.0387779999999998
	.quad	0x3ff1dccb7d41743f              # double 1.1164050000000001
	.quad	0x4003d673c4f3ba77              # double 2.4797129999999998
	.quad	0x40083394b7b28955              # double 3.0251860000000002
	.quad	0x3ff33e3e29307af2              # double 1.202696
	.quad	0x401ed53825e13b19              # double 7.7082220000000001
	.quad	0x4023789613d31b9b              # double 9.7355199999999992
	.quad	0x40225475818c5c9a              # double 9.1649589999999996
	.quad	0x40214b5e310dbf05              # double 8.6472029999999993
	.quad	0x3fd5b5c7cd898b2f              # double 0.33922000000000002
	.quad	0x3fc8352eb5f5f0b3              # double 0.18912300000000001
	.quad	0x401a6916440f2389              # double 6.6026239999999996
	.quad	0x3fc688051c9f72f7              # double 0.17602599999999999
	.quad	0x401091b4bb5e0f80              # double 4.1422910000000002
	.quad	0x40237eb5b2d4d402              # double 9.7474799999999995
	.quad	0x401dabc23315d702              # double 7.4177330000000001
	.quad	0x3ffb1b8130164841              # double 1.694215
	.quad	0x40201079a2834d27              # double 8.032178
	.quad	0x402320520d130dfa              # double 9.5631260000000005
	.quad	0x3fe1a513b5bf6a0e              # double 0.55140100000000003
	.quad	0x3fe12413db7f1737              # double 0.53565399999999996
	.quad	0x401b278290689870              # double 6.7885840000000002
	.quad	0x3ffb337a80cf9e38              # double 1.7000679999999999
	.quad	0x4005d377e1b8ed1c              # double 2.728256
	.quad	0x4021b1fddebd9019              # double 8.8476400000000002
	.quad	0x400a1996744b2b77              # double 3.2624939999999998
	.quad	0x3fefedf612407464              # double 0.99779799999999996
	.quad	0x3fe2151611ba3ca7              # double 0.56507399999999997
	.quad	0x4010eed916872b02              # double 4.23325
	.quad	0x4021da80cf9e3865              # double 8.9267640000000004
	.quad	0x3ff82597d49d7ba6              # double 1.5091779999999999
	.quad	0x4000f0917d6b65aa              # double 2.1174650000000002
	.quad	0x3fd3dc011d3671ac              # double 0.310303
	.quad	0x4020b1e42e126202              # double 8.3474439999999994
	.quad	0x401d03300de4c511              # double 7.2531129999999999
	.quad	0x40203cc70867ad8e              # double 8.1187059999999995
	.quad	0x4018401d9f4d37c1              # double 6.0626129999999998
	.quad	0x40023324851a8694              # double 2.274972
	.quad	0x3fcefa3fcc9ea9a4              # double 0.242012
	.quad	0x40136710880d801b              # double 4.8506489999999998
	.quad	0x401581d041cc532a              # double 5.3767709999999997
	.quad	0x401a20a1be2b495a              # double 6.5318670000000001
	.quad	0x40195e48626f60e1              # double 6.3420730000000001
	.quad	0x4018c5471715c63b              # double 6.1926540000000001
	.quad	0x401ed005814940bc              # double 7.7031460000000003
	.quad	0x401c05dbb9cf9a07              # double 7.0057210000000003
	.quad	0x4005efec56d5cfab              # double 2.7421500000000001
	.quad	0x40200be6e6538690              # double 8.0232460000000003
	.quad	0x3fb1aec4a4095f24              # double 0.069072999999999996
	.quad	0x4001c8954a7f8013              # double 2.2229410000000001
	.quad	0x401195058dde7a74              # double 4.3955289999999998
	.quad	0x40201379b77c02b0              # double 8.0380380000000002
	.quad	0x401f6841aac53b08              # double 7.8518129999999999
	.quad	0x4023bff498c3b0c4              # double 9.8749129999999993
	.quad	0x401c7b8348f53c58              # double 7.1206180000000003
	.quad	0x4018187d6f976790              # double 6.0239159999999998
	.quad	0x401dcd44dca8e2e3              # double 7.4504580000000002
	.quad	0x40207ec9c0a8d21c              # double 8.2476330000000004
	.quad	0x4011200431bde82d              # double 4.2812659999999996
	.quad	0x4010bf190d173fb8              # double 4.1866190000000003
	.quad	0x4021292c49342678              # double 8.5804159999999996
	.quad	0x401a1ee3d5fdcdf7              # double 6.5301660000000004
	.quad	0x40124e8a2ec28b2a              # double 4.5766989999999996
	.quad	0x400f969014b599aa              # double 3.9485169999999998
	.quad	0x4006713cee9dd7ed              # double 2.8052920000000001
	.quad	0x4020f31e7d9988d3              # double 8.4748420000000007
	.quad	0x401dc4c271fff79d              # double 7.4421480000000004
	.quad	0x4023b3a27ae9ab2a              # double 9.8508490000000002
	.quad	0x4023caf48c2e770c              # double 9.8963970000000003
	.quad	0x401beb4f61672325              # double 6.9797950000000002
	.quad	0x401af5379fa97e13              # double 6.7394699999999998
	.quad	0x401b985dfa871a3b              # double 6.8987959999999999
	.quad	0x4012f4927913e814              # double 4.7388399999999997
	.quad	0x3fffd0d6b228dc98              # double 1.988486
	.quad	0x4023d6ab9b23dd55              # double 9.9192780000000002
	.quad	0x3fd3fe9b7bf1e8e6              # double 0.312415
	.quad	0x401e53dddb1209ee              # double 7.5819010000000002
	.quad	0x401e1acb85a4f00f              # double 7.526167
	.quad	0x40042b5e529bae47              # double 2.5211760000000001
	.quad	0x401c8d3b29a1b9fa              # double 7.1379210000000004
	.quad	0x4012aa2c2374794f              # double 4.6661840000000003
	.quad	0x400bc94467381d7e              # double 3.4732750000000001
	.quad	0x40208b1f03d145d8              # double 8.2717209999999994
	.quad	0x400435c0fcb4f1e5              # double 2.5262470000000001
	.quad	0x400311ab8e8ea39c              # double 2.3836279999999999
	.quad	0x401ba1c92ddbdb5e              # double 6.9079940000000004
	.quad	0x400fcb884406c00e              # double 3.9743810000000002
	.quad	0x40214ae83a109d06              # double 8.6463029999999996
	.quad	0x4015cd22c881e471              # double 5.4503279999999998
	.quad	0x4023ca2a0a958538              # double 9.8948520000000002
	.quad	0x400f8b5d462c343b              # double 3.9430489999999998
	.quad	0x4008d28a6117720d              # double 3.1028030000000002
	.quad	0x4020d897e996312f              # double 8.4230339999999995
	.quad	0x40016dba4d6e47dc              # double 2.1785779999999999
	.quad	0x4022568ccdd93c47              # double 9.1690430000000003
	.quad	0x3fd45cbbc2b94d94              # double 0.31816
	.quad	0x40166b3aeee95747              # double 5.6047169999999999
	.quad	0x3ff37890d5a5b963              # double 1.2169350000000001
	.quad	0x400e3761cbccf28c              # double 3.7770419999999998
	.quad	0x402359efd86a8fc1              # double 9.6756580000000003
	.quad	0x4019e0c308feac43              # double 6.4694940000000001
	.quad	0x4018743201040bfe              # double 6.1134719999999998
	.quad	0x401f8679cc74b839              # double 7.8813240000000002
	.quad	0x4008361ed5ae1cde              # double 3.0264259999999998
	.quad	0x400d28d10f51ac9b              # double 3.64493
	.quad	0x4020b933c1ce6c09              # double 8.3617229999999996
	.quad	0x4002b173fb7a5f42              # double 2.3366470000000001
	.quad	0x40137944aa53fc01              # double 4.8684260000000004
	.quad	0x40155007dd441355              # double 5.3281549999999998
	.quad	0x40183c7a7c9de050              # double 6.0590609999999998
	.quad	0x4022e349e01de269              # double 9.4439229999999998
	.quad	0x40204a674080f990              # double 8.1453190000000006
	.quad	0x3ffa144998d045fe              # double 1.629953
	.quad	0x401fa6d1e108c3f4              # double 7.9129100000000001
	.quad	0x400d3834091c0874              # double 3.6524429999999999
	.quad	0x400e57d73c925786              # double 3.792891
	.quad	0x4023ad4b2745bf27              # double 9.838464
	.quad	0x40001935fc3b4f61              # double 2.0123099999999998
	.quad	0x400919335d249e45              # double 3.137305
	.quad	0x4014f9185cee17a0              # double 5.2432569999999998
	.quad	0x4000c6916440f239              # double 2.0969570000000002
	.quad	0x4016c2da122fad6d              # double 5.6902850000000003
	.quad	0x401185186db50f41              # double 4.3799760000000001
	.quad	0x40230d66277c45cc              # double 9.5261700000000004
	.quad	0x4017fbb1290257c9              # double 5.9957929999999999
	.quad	0x400afb38d60a6330              # double 3.3726669999999999
	.quad	0x400816c8b4395810              # double 3.0111249999999998
	.quad	0x3fe30389f83be660              # double 0.59418199999999999
	.quad	0x401370b4e11dbca9              # double 4.8600649999999996
	.quad	0x40003b96af038e2a              # double 2.029096
	.quad	0x400b5ef49cf56ead              # double 3.4213650000000002
	.quad	0x400df3dc054ef45a              # double 3.7440720000000001
	.quad	0x4020b437e6f71a7e              # double 8.3519889999999997
	.quad	0x3ffd11d57ff9b563              # double 1.816854
	.quad	0x4023887b56b87379              # double 9.7665659999999991
	.quad	0x401e7f969e3c9689              # double 7.6245979999999997
	.quad	0x40225b98e9707182              # double 9.1789009999999998
	.quad	0x4007bf40a2877ee5              # double 2.9683850000000001
	.quad	0x40235a86940357a3              # double 9.6768079999999994
	.quad	0x4007acd0fe8ab4fa              # double 2.9593829999999999
	.quad	0x402234d76ab58080              # double 9.1032060000000001
	.quad	0x40203701754b05b8              # double 8.1074330000000003
	.quad	0x4002fbc7f77af640              # double 2.3729399999999998
	.quad	0x3ff140f12c27a637              # double 1.078355
	.quad	0x4007342917507e9e              # double 2.9004690000000002
	.quad	0x4004e424a276b7ed              # double 2.6113979999999999
	.quad	0x400e0b78897e9963              # double 3.755601
	.quad	0x3fea7666234a87e4              # double 0.82695300000000004
	.quad	0x401c1f30a4e379b7              # double 7.0304589999999996
	.quad	0x401a236c15d2d01c              # double 6.534592
	.quad	0x402229a21ea35936              # double 9.081315
	.quad	0x401e843632c1f42c              # double 7.6291130000000003
	.quad	0x4022aca148ba83f5              # double 9.3371680000000001
	.quad	0x3ff3984d338f7985              # double 1.224683
	.quad	0x402046a0dbad3a60              # double 8.1379459999999995
	.quad	0x4003243cc07aaef3              # double 2.3926940000000001
	.quad	0x4013447f993d5348              # double 4.8168930000000003
	.quad	0x400069c1b54195cd              # double 2.0516390000000002
	.quad	0x40082f10a99b6f5d              # double 3.0229810000000001
	.quad	0x4022687c4199fe43              # double 9.2040729999999993
	.quad	0x3ffbebb341e14be0              # double 1.745044
	.quad	0x402014caf709b739              # double 8.0406110000000002
	.quad	0x40104fe931876189              # double 4.0780380000000003
	.quad	0x401461376d549731              # double 5.094938
	.quad	0x40239907b784662c              # double 9.7988870000000005
	.quad	0x400fbf44d4456712              # double 3.9683929999999998
	.quad	0x400a78622c450269              # double 3.3087810000000002
	.quad	0x401e62e557de0d67              # double 7.596578
	.quad	0x3fbee5796bfca85d              # double 0.120689
	.quad	0x401ca31e3a7daa50              # double 7.1592950000000002
	.quad	0x401586940357a355              # double 5.381424
	.quad	0x400a4957cd466f50              # double 3.285812
	.quad	0x40152cd7060bb2bc              # double 5.2937890000000003
	.quad	0x4016546f9b994e1a              # double 5.5824569999999998
	.quad	0x3feed0dae3e6c4c6              # double 0.96299500000000005
	.quad	0x4017fadff822bbed              # double 5.9949950000000003
	.quad	0x401aee646f156191              # double 6.7328049999999999
	.quad	0x3feaf648c7192ea5              # double 0.84256399999999998
	.quad	0x40167147ae147ae1              # double 5.6106249999999998
	.quad	0x40171785f8d2e515              # double 5.7729720000000002
	.quad	0x4023f3bd9cae2110              # double 9.9760559999999998
	.quad	0x401f4c532a497fa6              # double 7.8245360000000002
	.quad	0x4010f26b2f23033a              # double 4.2367369999999998
	.quad	0x4008d88ebcc6c54c              # double 3.1057410000000001
	.quad	0x400f22107b784663              # double 3.8916330000000001
	.quad	0x401a2110a137f38c              # double 6.5322899999999997
	.quad	0x4015fd0c3d25247d              # double 5.4971170000000003
	.quad	0x40211a62ed352221              # double 8.5515360000000005
	.quad	0x3fdc9a30984e3fff              # double 0.446911
	.quad	0x40008bb4d48882f1              # double 2.0682160000000001
	.quad	0x3fde8d8ec95bff04              # double 0.47738999999999998
	.quad	0x4014570c564f97ee              # double 5.0850080000000002
	.quad	0x402188cdea033e79              # double 8.7671960000000002
	.quad	0x3ffaf2e275ab7dc8              # double 1.6842980000000001
	.quad	0x4022b3037d63022e              # double 9.3496360000000003
	.quad	0x402286084a515cea              # double 9.2617820000000002
	.quad	0x40082df505d0fa59              # double 3.02244
	.quad	0x3ff26c332f01754b              # double 1.151416
	.quad	0x4021c1b9f98b71b9              # double 8.8783720000000006
	.quad	0x400878cf398e9707              # double 3.058989
	.quad	0x3fe28b69552e2fbe              # double 0.57951799999999998
	.quad	0x400f544806290eed              # double 3.916153
	.quad	0x3ffa9d3fe1975f2d              # double 1.6633910000000001
	.quad	0x40078a99b6f5caf3              # double 2.9426760000000001
	.quad	0x3ff7db37c99ae925              # double 1.49102
	.quad	0x400400e94ee392e2              # double 2.500445
	.quad	0x401212ae07e5a78f              # double 4.5182419999999999
	.quad	0x3f4a2e7f6f4be836              # double 7.9900000000000001E-4
	.quad	0x401cb20ff540895d              # double 7.173889
	.quad	0x3fe8076c050bd87b              # double 0.75090599999999996
	.quad	0x40096c4dec1c1d6d              # double 3.177883
	.quad	0x4009b8b47c73eee5              # double 3.2151879999999999
	.quad	0x400659dece571088              # double 2.793882
	.quad	0x401d169d7342edbb              # double 7.2720849999999997
	.quad	0x3ff4f8b26394face              # double 1.3107169999999999
	.quad	0x400c01b97353b4b3              # double 3.500842
	.quad	0x4023cf221858bc5a              # double 9.9045570000000005
	.quad	0x40048cfbfc6540cc              # double 2.5688399999999998
	.quad	0x4001127a20578e5c              # double 2.1340219999999999
	.quad	0x40081b3fa6defc7a              # double 3.0133049999999999
	.quad	0x40214c1e57d9dba9              # double 8.6486689999999999
	.quad	0x3feb6e136e71cda3              # double 0.85718700000000003
	.quad	0x4021519220ff5409              # double 8.6593180000000007
	.quad	0x400adb0dd82fd75e              # double 3.3569599999999999
	.quad	0x401cd02f2f987400              # double 7.2033050000000003
	.quad	0x4012c450268900c5              # double 4.6917119999999999
	.quad	0x4010329888f861a6              # double 4.04941
	.quad	0x4017876188b1140a              # double 5.8822080000000003
	.quad	0x4014bc6de76427c8              # double 5.1840130000000002
	.quad	0x3fe4bd5992428d43              # double 0.64811399999999997
	.quad	0x3ff4675147f13059              # double 1.2752239999999999
	.quad	0x40203e6c2acb85a5              # double 8.1219190000000001
	.quad	0x3ff0c89c1b54195d              # double 1.048977
	.quad	0x4004b4a87e38eb03              # double 2.588212
	.quad	0x3ff2561c36976bc2              # double 1.146023
	.quad	0x40140d07852f7f4a              # double 5.0127240000000004
	.quad	0x401183cf2cf95d4f              # double 4.3787200000000004
	.quad	0x4007dbd05af6c69b              # double 2.9823309999999998
	.quad	0x3fff046e8f29d40f              # double 1.938582
	.quad	0x401e385942917508              # double 7.555028
	.quad	0x4023f02dbe7f2c30              # double 9.9690989999999999
	.quad	0x40200fb0d51f81a6              # double 8.0306460000000008
	.quad	0x4013af08cc575c07              # double 4.9209319999999996
	.quad	0x401cc8cfbfc6540d              # double 7.1961050000000002
	.quad	0x402329b4bb5e0f80              # double 9.5814570000000003
	.quad	0x40023a82e87d2c7c              # double 2.2785700000000002
	.quad	0x40234db35b0bbf51              # double 9.6517590000000001
	.quad	0x3fe024d4cb9ecf64              # double 0.50449600000000006
	.quad	0x4000c76c050bd87b              # double 2.0973739999999998
	.quad	0x401e18d5c74751ce              # double 7.5242529999999999
	.quad	0x40191d73860999dd              # double 6.2787610000000003
	.quad	0x3ffc1f6ba0620ab7              # double 1.757671
	.quad	0x40137090f733a8a4              # double 4.859928
	.quad	0x4014d6d22424a277              # double 5.2097860000000003
	.quad	0x401275cc426351df              # double 4.6150370000000001
	.quad	0x401ddedcc20d562a              # double 7.4676390000000001
	.quad	0x40167d68405b39e2              # double 5.6224679999999996
	.quad	0x3fec44827b6fe2e7              # double 0.88336300000000001
	.quad	0x401b006cca2db61c              # double 6.7504150000000003
	.quad	0x4011d70b49e01de2              # double 4.4600039999999996
	.quad	0x3fe3baeab7995ee1              # double 0.61656699999999998
	.quad	0x4006520a73f748a1              # double 2.7900589999999998
	.quad	0x3fe177a4e7ab7564              # double 0.54585499999999998
	.quad	0x40213267c6b8b695              # double 8.5984479999999994
	.quad	0x401009d388a8b08e              # double 4.0095960000000002
	.quad	0x3ffbb60285ec3dab              # double 1.7319359999999999
	.quad	0x3fc6c6583e8576cd              # double 0.177928
	.quad	0x3fe88c0053e2d624              # double 0.76709000000000004
	.quad	0x40104d26fa3fcc9f              # double 4.0753440000000003
	.quad	0x3ff87035bd512ec7              # double 1.5273950000000001
	.quad	0x40133465a57646ae              # double 4.8011689999999998
	.quad	0x40103fcb923a29c7              # double 4.0622999999999996
	.quad	0x3ff96b13dfb0d520              # double 1.5886420000000001
	.quad	0x40219b52220bc383              # double 8.8033610000000007
	.quad	0x401bc87379746024              # double 6.9457529999999998
	.quad	0x3ffed566cf41f213              # double 1.9271
	.quad	0x4023090adcd2d44e              # double 9.5176610000000004
	.quad	0x3ff9fd75e2046c76              # double 1.6243799999999999
	.quad	0x3ff316a6a012599f              # double 1.19303
	.quad	0x4012a2da122fad6d              # double 4.6590350000000003
	.quad	0x3fd271cda2b5a20e              # double 0.28819600000000001
	.quad	0x4019083c297bfa4c              # double 6.2580419999999997
	.quad	0x40074ddf86e3b470              # double 2.9130240000000001
	.quad	0x401b047ae147ae14              # double 6.7543749999999996
	.quad	0x4009ae1693c03bc5              # double 3.2100040000000001
	.quad	0x4022664e48626f61              # double 9.1998160000000002
	.quad	0x4010a6e7a311e860              # double 4.1629930000000002
	.quad	0x4012d234eb9a176e              # double 4.7052800000000001
	.quad	0x40147b3e5753a3ec              # double 5.120355
	.quad	0x3fd8c59fb1e18efc              # double 0.38706200000000002
	.quad	0x3fc6a2db61bb05fb              # double 0.176845
	.quad	0x400919c38b04ab60              # double 3.1375799999999998
	.quad	0x4001630b178b3700              # double 2.1733609999999999
	.quad	0x400fbd11be6e6538              # double 3.9673189999999998
	.quad	0x4012bdcf0307f23d              # double 4.6853600000000002
	.quad	0x4017ebc83a96d4c3              # double 5.9802559999999998
	.quad	0x40208f87f023e9ea              # double 8.2803339999999999
	.quad	0x4018354823854046              # double 6.0520329999999998
	.quad	0x3ff29f4a1272c94b              # double 1.163889
	.quad	0x401b458c8eef1bac              # double 6.8179189999999998
	.quad	0x40225b992c8c5005              # double 9.178903
	.quad	0x3fe6c6887a8d64d8              # double 0.71173500000000001
	.quad	0x401c3be7296f6513              # double 7.0584990000000003
	.quad	0x401404b380cb6c7a              # double 5.0045909999999996
	.quad	0x401243b3a68b19a4              # double 4.5661149999999999
	.quad	0x40060ee286727568              # double 2.7572679999999998
	.quad	0x401415feda661284              # double 5.0214800000000004
	.quad	0x401da89a02752546              # double 7.41465
	.quad	0x401885564b662fe0              # double 6.1302120000000002
	.quad	0x4016d4b5dcc63f14              # double 5.7077249999999999
	.quad	0x401064c6e6d9be4d              # double 4.0984150000000001
	.quad	0x4023ec03dddb120a              # double 9.9609670000000001
	.quad	0x3ff95426fe718a87              # double 1.583045
	.quad	0x40196296f6512a95              # double 6.346279
	.quad	0x40206860fe47991c              # double 8.2038650000000004
	.quad	0x400d1d96638433d7              # double 3.6394470000000001
	.quad	0x3fe14e4a7b4e54f8              # double 0.54080700000000004
	.quad	0x3fcc31bde82d7b63              # double 0.22026799999999999
	.quad	0x400599f5dfeb8d82              # double 2.7001759999999999
	.quad	0x3fe6222b3892ee85              # double 0.69167100000000004
	.quad	0x3fb9dcc63f141206              # double 0.101025
	.quad	0x401e4b6848beb5b3              # double 7.5736400000000001
	.quad	0x401bbe5bc87db2b3              # double 6.9358969999999998
	.quad	0x401015fbb517a461              # double 4.0214679999999996
	.quad	0x4013e457c0b13598              # double 4.9729910000000004
	.quad	0x3ff41693c03bc4d2              # double 1.255512
	.quad	0x40206ff27fe4bcae              # double 8.2186470000000007
	.quad	0x4022dd6909aed56b              # double 9.4324419999999999
	.quad	0x401db9e492bc2fc7              # double 7.4315360000000004
	.quad	0x400942d83c6c97d9              # double 3.1576390000000001
	.quad	0x402155859c8c9321              # double 8.6670350000000003
	.quad	0x40204c473cd57364              # double 8.1489809999999991
	.quad	0x4009623a6ce3582a              # double 3.1729630000000002
	.quad	0x4014974e65bea0ba              # double 5.1477599999999999
	.quad	0x4011c888f861a60d              # double 4.4458349999999998
	.quad	0x4010e022dd7a99fa              # double 4.2188829999999999
	.quad	0x4023f8de8f6cefed              # double 9.9860729999999993
	.quad	0x401f98e29f9ce8d9              # double 7.8993019999999996
	.quad	0x40161711d798d8a9              # double 5.5225289999999996
	.quad	0x400bc8d759ee88df              # double 3.4730669999999999
	.quad	0x401f9e97d06bbdbe              # double 7.9048759999999998
	.quad	0x400e2c5f394b7b29              # double 3.7716660000000002
	.quad	0x4009e9e12a51e322              # double 3.2391990000000002
	.quad	0x40115b7b28954a80              # double 4.3393370000000004
	.quad	0x401a5df47f993d53              # double 6.5917529999999998
	.quad	0x4018a2b7fe08aefb              # double 6.1589049999999999
	.quad	0x4020821bc126a65d              # double 8.2541180000000001
	.quad	0x3fea152d234eb9a1              # double 0.81508499999999995
	.quad	0x401c86013660e51d              # double 7.1308639999999999
	.quad	0x4005881b21c475e6              # double 2.6914579999999999
	.quad	0x401a493d5347a5b1              # double 6.571523
	.quad	0x40221a4ca4f440af              # double 9.0513659999999998
	.quad	0x4011e442c7fbacb4              # double 4.4729109999999999
	.quad	0x400e14195cc857f3              # double 3.759814
	.quad	0x4014852c59fb1e19              # double 5.1300520000000001
	.quad	0x40216310fd7e4580              # double 8.6934889999999996
	.quad	0x4018041205bc01a3              # double 6.0039749999999996
	.quad	0x3ff3cd940789613d              # double 1.23769
	.quad	0x400e77efe0ce0b91              # double 3.8085629999999999
	.quad	0x40221f368ad68837              # double 9.0609629999999992
	.quad	0x40123020c49ba5e3              # double 4.5469999999999997
	.quad	0x400cff1cfbb94962              # double 3.6245669999999999
	.quad	0x400e3bcb1cc96463              # double 3.7791960000000002
	.quad	0x401a0d80a17b0f6b              # double 6.5131860000000001
	.quad	0x4012d8f7db6e5040              # double 4.7118830000000003
	.quad	0x4016bf78bbd38045              # double 5.6869839999999998
	.quad	0x4022444b09e98dce              # double 9.1333850000000005
	.quad	0x400dee11dbca9692              # double 3.7412450000000002
	.quad	0x3ffd79fcb0c026cc              # double 1.842282
	.quad	0x3ffed2e40852b4d9              # double 1.9264870000000001
	.quad	0x4012537e2c55c960              # double 4.5815359999999998
	.quad	0x40212bf7ced91687              # double 8.5858749999999997
	.quad	0x40168672324c8366              # double 5.6312949999999997
	.quad	0x40213a1fd1569f49              # double 8.613524
	.quad	0x3faf3647baa9b49a              # double 0.060961000000000001
	.quad	0x402010ef1348b220              # double 8.0330739999999992
	.quad	0x3ff78a2fcefaa476              # double 1.4712369999999999
	.quad	0x3ff1c7182235b4ee              # double 1.1111070000000001
	.quad	0x401597635e74299e              # double 5.3978400000000004
	.quad	0x401214fd6d7e889c              # double 4.5204979999999999
	.quad	0x4023576d7625204b              # double 9.670757
	.quad	0x3fcd59b3d07c84b6              # double 0.2293
	.quad	0x401ad9c347e8ccde              # double 6.7126590000000004
	.quad	0x400f537110e453d2              # double 3.915743
	.quad	0x4003fe5b8561d430              # double 2.4991979999999998
	.quad	0x402177fae3608d09              # double 8.7343360000000008
	.quad	0x4005e0f9096bb98c              # double 2.7348499999999998
	.quad	0x401831dc50ce4ead              # double 6.048692
	.quad	0x4020c320d9945b6c              # double 8.3811099999999996
	.quad	0x402040114d2f5dbc              # double 8.1251320000000006
	.quad	0x400ac92ee84ad795              # double 3.3482340000000002
	.quad	0x401d825529fe004b              # double 7.3772779999999996
	.quad	0x3ffb1c37a3db3bfb              # double 1.6943889999999999
	.quad	0x40212e6559f6ec5b              # double 8.5906169999999999
	.quad	0x4000b9314445aa2e              # double 2.0904259999999999
	.quad	0x401fe882adc4c9c9              # double 7.9770609999999999
	.quad	0x3fec7950b955f783              # double 0.88980899999999996
	.quad	0x4023d85058dde7a7              # double 9.9224879999999995
	.quad	0x401a3087ca643cc0              # double 6.5473929999999996
	.quad	0x4019cbe8bc169c24              # double 6.4491300000000003
	.quad	0x4004c8b2a6b0d951              # double 2.5979969999999999
	.quad	0x4022e5da48b65237              # double 9.4489309999999999
	.quad	0x3fcbb18dac258d58              # double 0.21635599999999999
	.quad	0x4017fc1094a2b9d4              # double 5.9961570000000002
	.quad	0x4023067c6b8b6955              # double 9.5126679999999996
	.quad	0x4019daf6837f7be1              # double 6.4638309999999999
	.quad	0x40104ffb480a5acd              # double 4.0781070000000001
	.quad	0x3ff6314b9cb6848c              # double 1.387035
	.quad	0x3ffd37ae5796bfcb              # double 1.8260940000000001
	.quad	0x4010d3387160956c              # double 4.20627
	.quad	0x402065360d024702              # double 8.1976779999999998
	.quad	0x4021373a57eaa2a1              # double 8.6078670000000006
	.quad	0x40166772d5e071c5              # double 5.6010239999999998
	.quad	0x40077d6bebe1650a              # double 2.9362409999999999
	.quad	0x400024f8726d04e6              # double 2.018052
	.quad	0x40158e481f53825e              # double 5.3889469999999999
	.quad	0x400afd8cf398e970              # double 3.3738039999999998
	.quad	0x40238820817fc760              # double 9.7658729999999991
	.quad	0x400d3294573a7979              # double 3.6496970000000002
	.quad	0x400e4afb3b752114              # double 3.7866119999999999
	.quad	0x402057498c3b0c46              # double 8.1704830000000008
	.quad	0x401b4b88ca3e7d13              # double 6.8237639999999997
	.quad	0x3ffc66a11ec918e3              # double 1.775056
	.quad	0x3fe543bb40b34e77              # double 0.66451800000000005
	.quad	0x4010b0cbaf965b21              # double 4.1726520000000002
	.quad	0x4006467f0aa21a72              # double 2.7844220000000002
	.quad	0x4011c20fb224aada              # double 4.4395129999999998
	.quad	0x40176fb3b7521145              # double 5.8590840000000002
	.quad	0x401c3fd08d4bad7d              # double 7.0623189999999996
	.quad	0x40211f90752da986              # double 8.5616489999999992
	.quad	0x401ad11ada76d97b              # double 6.7042039999999998
	.quad	0x40020a80064a9cdc              # double 2.2551269999999999
	.quad	0x401dcbd5dc400757              # double 7.449058
	.quad	0x401bfe297396d091              # double 6.9982049999999996
	.quad	0x401ccfb3743632c2              # double 7.202833
	.quad	0x401b7b823c85c24c              # double 6.8706139999999998
	.quad	0x4012deed02cd39da              # double 4.7177009999999999
	.quad	0x4020dc91f2dc2b0f              # double 8.4308010000000007
	.quad	0x4011ca9b499d0204              # double 4.4478580000000001
	.quad	0x4014a69ced0b30b6              # double 5.1627080000000003
	.quad	0x4023b8982cb20fb2              # double 9.8605359999999997
	.quad	0x400412702a3486f0              # double 2.5090029999999999
	.quad	0x4012ee7f6f4be836              # double 4.7329080000000001
	.quad	0x400802fa5093964a              # double 3.0014539999999998
	.quad	0x401635182a9930be              # double 5.55185
	.quad	0x402285b7ae5796c0              # double 9.2611670000000003
	.quad	0x40207ff77af64064              # double 8.2499350000000006
	.quad	0x3fe3f9096bb98c7e              # double 0.62414999999999998
	.quad	0x40196d4f9c1f85d7              # double 6.3567489999999998
	.quad	0x4000b1fcd24e160e              # double 2.0869080000000002
	.quad	0x40149bce8533b107              # double 5.1521549999999996
	.quad	0x400087d6f9767903              # double 2.0663279999999999
	.quad	0x401bece789e774ef              # double 6.9813520000000002
	.quad	0x3fc27e62dc6e2a80              # double 0.144482
	.quad	0x401881dabe27179c              # double 6.126811
	.quad	0x4017f5aee631f8a1              # double 5.9899250000000004
	.quad	0x40172748a159817c              # double 5.7883630000000004
	.quad	0x401d0f672b884407              # double 7.2650420000000002
	.quad	0x40210f90d9d7774b              # double 8.5304020000000005
	.quad	0x40027cb9a9da597d              # double 2.3109009999999999
	.quad	0x4010d3cc07aaef2c              # double 4.2068329999999996
	.quad	0x4020585058dde7a7              # double 8.1724879999999995
	.quad	0x400fc385c67dfe33              # double 3.9704700000000002
	.quad	0x3fe3fe6d58c8eef2              # double 0.62480800000000003
	.quad	0x4013ead8a116659d              # double 4.9793419999999999
	.quad	0x3fed25df2239e6ac              # double 0.91087300000000004
	.quad	0x4016965d3996fa83              # double 5.6468400000000001
	.quad	0x400f4ae536501e26              # double 3.9115700000000002
	.quad	0x40002df37329c348              # double 2.022437
	.quad	0x40179e3b03e20cd0              # double 5.904522
	.quad	0x4004dd2b6f19934f              # double 2.607993
	.quad	0x40165530ced4e4c9              # double 5.5831939999999998
	.quad	0x40237f36ac647779              # double 9.7484640000000002
	.quad	0x402329ed7c6fbd27              # double 9.5818899999999995
	.quad	0x401a42849cb252ce              # double 6.564959
	.quad	0x400dd969e3c96894              # double 3.7311589999999999
	.quad	0x3fd85ed4a1ad6452              # double 0.38078800000000002
	.quad	0x4012e6cf41f212d7              # double 4.7253999999999996
	.quad	0x40227fc06e19b90f              # double 9.2495150000000006
	.quad	0x40225f64f11b60af              # double 9.1863170000000007
	.quad	0x4016903bc4d22c88              # double 5.6408529999999999
	.quad	0x40166b8cb8e086be              # double 5.605029
	.quad	0x3ff94ceb356da017              # double 1.5812790000000001
	.quad	0x40133e0157eed45f              # double 4.8105520000000004
	.quad	0x4020fa76b7ed41b7              # double 8.4891869999999994
	.quad	0x4013654da4ce8102              # double 4.848929
	.quad	0x4018d31162281345              # double 6.2061210000000004
	.quad	0x4007f8b47c73eee5              # double 2.9964379999999999
	.quad	0x3fe42d2999567dbb              # double 0.63051299999999999
	.quad	0x4010b9b23dd54da5              # double 4.1813440000000002
	.quad	0x4022f6c15d2d01c1              # double 9.4819440000000003
	.quad	0x40207c028e4fb97c              # double 8.2422070000000005
	.quad	0x401b347021d10b20              # double 6.8012090000000001
	.quad	0x4021fc6cfc829cfe              # double 8.9930190000000003
	.quad	0x4010314940bbb1f2              # double 4.0481309999999997
	.quad	0x400f79620685553f              # double 3.934269
	.quad	0x40215c7ef177a701              # double 8.6806560000000008
	.quad	0x401f61d798d8a97a              # double 7.8455490000000001
	.quad	0x400f076f2a5a469d              # double 3.8786299999999998
	.quad	0x4001f42b302f72b4              # double 2.2442229999999999
	.quad	0x40045ac79702e664              # double 2.5443259999999999
	.quad	0x4021e9eecbfb15b5              # double 8.9568999999999992
	.quad	0x4001cf3f52fc2657              # double 2.2261950000000001
	.quad	0x40051a91105e1c15              # double 2.637972
	.quad	0x3fe1f61ed5ae1cde              # double 0.56129399999999996
	.quad	0x400111526d8b1dd6              # double 2.1334580000000001
	.quad	0x40053670196d8f50              # double 2.6515810000000002
	.quad	0x401383be22e5de16              # double 4.8786550000000002
	.quad	0x4023c6a593a2df93              # double 9.8879819999999991
	.quad	0x40010e3e6c4c5975              # double 2.131955
	.quad	0x4023ac6455eaee20              # double 9.836703
	.quad	0x40236e5cb35f3d7d              # double 9.7155509999999996
	.quad	0x401ec46173b85e81              # double 7.6917780000000002
	.quad	0x401db51159c49774              # double 7.4268239999999999
	.quad	0x401c5c37e6f71a7e              # double 7.0900569999999998
	.quad	0x3fd8c67dfe32a066              # double 0.38711499999999999
	.quad	0x3ff155992428d435              # double 1.0833980000000001
	.quad	0x4013bb039ef0f16f              # double 4.9326309999999998
	.quad	0x401301797cc39ffd              # double 4.7514399999999997
	.quad	0x401e55e7c8d19589              # double 7.5838919999999996
	.quad	0x3fec9da9c99285a9              # double 0.89424599999999999
	.quad	0x4004cd99cbee807c              # double 2.6003910000000001
	.quad	0x3fede6d7a56de332              # double 0.93442899999999995
	.quad	0x4022fc4156e264e5              # double 9.4926860000000008
	.quad	0x40228ddf2239e6ac              # double 9.2770930000000006
	.quad	0x4004aab0c88a47ed              # double 2.583345
	.quad	0x4017936262cba733              # double 5.8939300000000001
	.quad	0x401727aaef2c7326              # double 5.7887380000000004
	.quad	0x3ff29695d91ab8e9              # double 1.161764
	.quad	0x3fe357518b0d0edc              # double 0.60440899999999997
	.quad	0x400445b749adc8fc              # double 2.5340410000000002
	.quad	0x40040b14ec204f2b              # double 2.5054110000000001
	.quad	0x401f6379b77c02b0              # double 7.8471440000000001
	.quad	0x3feab00ffda4052d              # double 0.83399199999999996
	.quad	0x4018024d099e0e73              # double 6.0022469999999997
	.quad	0x40194fea8112ba17              # double 6.3280430000000001
	.quad	0x4015e2856605ee57              # double 5.4712120000000004
	.quad	0x401f37304039abf3              # double 7.8038949999999998
	.quad	0x4014d744b2b777d1              # double 5.210223
	.quad	0x3ff9bbedb7281fda              # double 1.6083810000000001
	.quad	0x400dc70fbeb9e493              # double 3.7221980000000001
	.quad	0x4003fb99d451fc4c              # double 2.497852
	.quad	0x401c32e019b0ab2e              # double 7.0496829999999999
	.quad	0x3ff6501d19157abc              # double 1.3945590000000001
	.quad	0x401fa656eefa1e3f              # double 7.9124410000000002
	.quad	0x400fca8b08dd1e54              # double 3.9738980000000002
	.quad	0x4018106705c896dd              # double 6.0160179999999999
	.quad	0x4023a67f4dbdf8f4              # double 9.8251899999999992
	.quad	0x401832fdb8fde2ef              # double 6.0497959999999997
	.quad	0x40117c28f5c28f5c              # double 4.3712499999999999
	.quad	0x40140143bf727137              # double 5.0012350000000003
	.quad	0x3fd0bb73083558a7              # double 0.26144099999999998
	.quad	0x4013915e7c8d1959              # double 4.8919620000000004
	.quad	0x4021faa7bd48cb4b              # double 8.9895610000000001
	.quad	0x4013020817fc7608              # double 4.7519840000000002
	.quad	0x401c5b26394face6              # double 7.0890129999999996
	.quad	0x401f41049235f80a              # double 7.8134940000000004
	.quad	0x4023d03d790752db              # double 9.9067190000000007
	.quad	0x402065692b3cc4ac              # double 8.1980679999999992
	.quad	0x4003b3f9e7b80a9e              # double 2.462879
	.quad	0x40179b76709fa54c              # double 5.9018189999999997
	.quad	0x40014e1ac57e23f2              # double 2.1631369999999999
	.quad	0x4011b344c37e6f72              # double 4.4250670000000003
	.quad	0x4017a3037d63022e              # double 5.9091930000000001
	.quad	0x3ff545a3e39f7729              # double 1.329502
	.quad	0x4019c529bae46cfd              # double 6.4425420000000004
	.quad	0x40235ebaade657b8              # double 9.6850179999999994
	.quad	0x40239855b8993922              # double 9.7975290000000008
	.quad	0x40207755ffe6d58d              # double 8.2330780000000008
	.quad	0x401320c0f01fb82c              # double 4.7819859999999998
	.quad	0x4020786034f3fd93              # double 8.2351089999999996
	.quad	0x4010ed7ecbb7f9d7              # double 4.2319290000000001
	.quad	0x3fed958750c1b973              # double 0.92450299999999996
	.quad	0x4015aee957470eb2              # double 5.4208119999999997
	.quad	0x401c0b673c4f3ba7              # double 7.0111359999999996
	.quad	0x4019f9a4df47f994              # double 6.4937930000000001
	.quad	0x401cac54bcf0b6b7              # double 7.1682920000000001
	.quad	0x40159b44e50c5eb3              # double 5.4016299999999999
	.quad	0x40127c4588a04d12              # double 4.621359
	.quad	0x3ff67fe6d58c8eef              # double 1.406226
	.quad	0x40225ae18ac9f2fe              # double 9.1775020000000005
	.quad	0x3fd4379314445aa3              # double 0.31589200000000001
	.quad	0x4010fe1ef73c0c20              # double 4.2481650000000002
	.quad	0x401a0dca4b124d0a              # double 6.5134670000000003
	.quad	0x40018ada33bd9cae              # double 2.1927989999999999
	.quad	0x40141c857f3061c8              # double 5.0278530000000003
	.quad	0x40054c1e364bec68              # double 2.6621670000000002
	.quad	0x400227ac81d3aa37              # double 2.2693720000000002
	.quad	0x3ff8ec0f88333fc8              # double 1.5576319999999999
	.quad	0x401d8a0d77b7c782              # double 7.384817
	.quad	0x401d807789a45910              # double 7.3754559999999998
	.quad	0x40189d98bf7f0670              # double 6.1539029999999997
	.quad	0x40086d5f99c38b05              # double 3.0534050000000001
	.quad	0x4010f1461b6d43d0              # double 4.2356189999999998
	.quad	0x3fc25cb35f3d7d39              # double 0.143454
	.quad	0x402265f69878316a              # double 9.199147
	.quad	0x40213deb95e5aff3              # double 8.6209380000000007
	.quad	0x3ffc4b2e9ccb7d41              # double 1.7683549999999999
	.quad	0x3ffda367e414e7ef              # double 1.8523940000000001
	.quad	0x401c93009b30728f              # double 7.1435570000000004
	.quad	0x40120634549b62c7              # double 4.5060589999999996
	.quad	0x40230a0791c4b902              # double 9.5195889999999999
	.quad	0x3ff551f0c34c1a8b              # double 1.3325050000000001
	.quad	0x4022320b1bbcf4e8              # double 9.0977409999999992
	.quad	0x3fe1cc46950fc71d              # double 0.55618599999999996
	.quad	0x4021fef2a5a469d7              # double 8.9979449999999996
	.quad	0x401b3cbff47735c2              # double 6.8093260000000004
	.quad	0x402228eed02cd39e              # double 9.0799470000000007
	.quad	0x4013aaaef2c73259              # double 4.9166829999999999
	.quad	0x4017eadd590c0ad0              # double 5.9793599999999998
	.quad	0x400694bc6a7ef9db              # double 2.8226249999999999
	.quad	0x3fa0b5aa715831f0              # double 0.032635999999999998
	.quad	0x4023da3a6ce3582a              # double 9.9262270000000008
	.quad	0x4020967b3d8e0008              # double 8.2939089999999993
	.quad	0x400f9be22e5de15d              # double 3.9511150000000002
	.quad	0x400da0bcbe61cfff              # double 3.7034850000000001
	.quad	0x4019c2f123c42a67              # double 6.4403730000000001
	.quad	0x4023e81ecd4aa10e              # double 9.95336
	.quad	0x3fedb6b09635610b              # double 0.92855100000000002
	.quad	0x4023f55b035bd513              # double 9.9792100000000001
	.quad	0x401fa049667b5f1c              # double 7.9065300000000001
	.quad	0x40186803cd141a69              # double 6.1015769999999998
	.quad	0x3ffab28d8665e02f              # double 1.6685920000000001
	.quad	0x40187ce4649906cd              # double 6.1219650000000003
	.quad	0x4021cf995ee136e7              # double 8.9054669999999998
	.quad	0x4022741b97353b4b              # double 9.2267729999999997
	.quad	0x3fd8a925fe974a34              # double 0.385324
	.quad	0x400172849cb252ce              # double 2.180917
	.quad	0x4012cccfaeff5c6c              # double 4.7000109999999999
	.quad	0x4000e7e62dc6e2a8              # double 2.113232
	.quad	0x3ff5a4c729f59cd0              # double 1.3527290000000001
	.quad	0x4013812dba4d6e48              # double 4.8761510000000001
	.quad	0x401018aefb2aae29              # double 4.0241049999999996
	.quad	0x4023ac710cb295ea              # double 9.8368000000000002
	.quad	0x401de07faa044ae8              # double 7.4692369999999996
	.quad	0x401c26dfc5cdd50b              # double 7.0379630000000004
	.quad	0x4019d5fc3b4f6167              # double 6.4589699999999999
	.quad	0x40172bf1a5ca2984              # double 5.7929139999999997
	.quad	0x401b20b8cfbfc654              # double 6.781955
	.quad	0x40030f49491f2dc3              # double 2.3824640000000001
	.quad	0x3fe367210be9424e              # double 0.60633899999999996
	.quad	0x401cd6266fd651b1              # double 7.2091310000000002
	.quad	0x40207e4345cfede9              # double 8.2466069999999991
	.quad	0x401912d1f1cfbb95              # double 6.2683790000000004
	.quad	0x3fd66ec9e236c15d              # double 0.35051199999999999
	.quad	0x3ff2ec81d3aa36a0              # double 1.182741
	.quad	0x4022370d413122b8              # double 9.1075230000000005
	.quad	0x40201f4f2f123c43              # double 8.0611510000000006
	.quad	0x4007aa4ebdd334c6              # double 2.9581580000000001
	.quad	0x4020fb220791c4b9              # double 8.490494
	.quad	0x40055ff4fd6d7e89              # double 2.6718540000000002
	.quad	0x40220996fa82e87d              # double 9.0187299999999997
	.quad	0x400d68d8665e02eb              # double 3.6761940000000002
	.quad	0x4018397fa5d28d00              # double 6.0561509999999998
	.quad	0x3ff2a30fcf80dc33              # double 1.1648099999999999
	.quad	0x3ff4cbb2bba98eda              # double 1.299731
	.quad	0x4021c959a30984e4              # double 8.893262
	.quad	0x401070270f388228              # double 4.1095240000000004
	.quad	0x401880420f6f08cc              # double 6.1252519999999997
	.quad	0x401ecfc9ff92f2b6              # double 7.7029189999999996
	.quad	0x4001d654d61b2a28              # double 2.229654
	.quad	0x401a9caa7589efd8              # double 6.6529939999999996
	.quad	0x40171fdda8bd230c              # double 5.7811190000000003
	.quad	0x3ff23562174c4ce0              # double 1.1380330000000001
	.quad	0x401f2b927d45a5fc              # double 7.7925509999999996
	.quad	0x401078461f9f01b8              # double 4.1174549999999996
	.quad	0x40044e18266772d6              # double 2.5381320000000001
	.quad	0x401a78344c37e6f7              # double 6.6173869999999999
	.quad	0x401d0dbb59ddc1e8              # double 7.2634100000000004
	.quad	0x401c92bf9830e3ce              # double 7.1433090000000004
	.quad	0x4023b522856605ee              # double 9.8537789999999994
	.quad	0x400775350092ccf7              # double 2.9322300000000001
	.quad	0x4017cb7fe08aefb3              # double 5.9487300000000003
	.quad	0x3ffe30446b69db66              # double 1.886784
	.quad	0x4011d07e5a78f25a              # double 4.4536069999999999
	.quad	0x40215b764f11b60b              # double 8.6786370000000002
	.quad	0x401a9dfc9ff92f2b              # double 6.6542839999999996
	.quad	0x3ff6a093532e7b3e              # double 1.4142030000000001
	.quad	0x4023f45154866a12              # double 9.9771830000000001
	.quad	0x40118ca1cef240fb              # double 4.3873360000000003
	.quad	0x400954c4cdfaca36              # double 3.166391
	.quad	0x40137bbadc0980b2              # double 4.8708299999999998
	.quad	0x40221e978d4fdf3b              # double 9.0597499999999993
	.quad	0x3ff83a42f1ed17c6              # double 1.514224
	.quad	0x4010153e707e175d              # double 4.0207459999999999
	.quad	0x40075e0157eed45f              # double 2.9209010000000002
	.quad	0x401639285a921cce              # double 5.5558180000000004
	.quad	0x4017854195cc857f              # double 5.8801329999999998
	.quad	0x4012e8d9b5e95b79              # double 4.7273930000000002
	.quad	0x3ff88054ef459d99              # double 1.531331
	.quad	0x4017853005814941              # double 5.8800660000000002
	.quad	0x401cabb9cf9a06a7              # double 7.1677010000000001
	.quad	0x4023af5a74c09c3d              # double 9.8424870000000002
	.quad	0x401441bb05faebc4              # double 5.06419
	.quad	0x401dbfbe33acd5b7              # double 7.4372490000000004
	.quad	0x4023b389f83be660              # double 9.8506619999999998
	.quad	0x3ffd48919ef954eb              # double 1.830217
	.quad	0x401848f217093101              # double 6.0712359999999999
	.quad	0x401d4d05f2884838              # double 7.3252179999999995
	.quad	0x401ebe46cfc829d0              # double 7.6858170000000001
	.quad	0x40142c069e7fb268              # double 5.0429940000000002
	.quad	0x401c1720c8cd63cc              # double 7.0225860000000004
	.quad	0x40237c955b4677b4              # double 9.7433270000000007
	.quad	0x40134eee0f3cb3e5              # double 4.8270799999999996
	.quad	0x4001515df6555c53              # double 2.16473
	.quad	0x401ace74afd54541              # double 6.7016169999999997
	.quad	0x4023424e379b77c0              # double 9.6295029999999997
	.quad	0x3fed8e086bdf4c2b              # double 0.92358799999999996
	.quad	0x401806d43d03968d              # double 6.0066689999999996
	.quad	0x4015610385c67dfe              # double 5.3447399999999998
	.quad	0x4010f3e35c5b4aa9              # double 4.2381719999999996
	.quad	0x4015b7b4e54f7a92              # double 5.4294010000000004
	.quad	0x3fe02087ca643cc0              # double 0.50397099999999995
	.quad	0x40137ffb04ee7c4a              # double 4.874981
	.quad	0x40174b352a843809              # double 5.8234450000000004
	.quad	0x401ef19fc2a8869c              # double 7.7359609999999996
	.quad	0x401e20539fba450b              # double 7.5315690000000001
	.quad	0x400741205bc01a37              # double 2.9068000000000001
	.quad	0x400d4940bbb1f256              # double 3.660768
	.quad	0x3fd96612839042d9              # double 0.39685500000000001
	.quad	0x401ee34549b62c77              # double 7.7219439999999996
	.quad	0x4013f6c5d206c871              # double 4.9909889999999999
	.quad	0x4019e0e1f7d73c92              # double 6.4696119999999997
	.quad	0x4012d14c22ee4192              # double 4.7043920000000004
	.quad	0x401d200f776c4828              # double 7.2813090000000003
	.quad	0x3fc21e603d577964              # double 0.14155200000000001
	.quad	0x400d25f41aef6f8f              # double 3.643532
	.quad	0x3ff5fe8ccdd93c47              # double 1.374646
	.quad	0x40116fe586013661              # double 4.3592740000000001
	.quad	0x3ff91a2834d26fa4              # double 1.568886
	.quad	0x4005eea077036c9c              # double 2.741517
	.quad	0x4022f158fb43d89d              # double 9.4713820000000001
	.quad	0x4005507c84b5dcc6              # double 2.6642999999999999
	.quad	0x40205f079e59f2bb              # double 8.1856050000000007
	.quad	0x3fd0810624dd2f1b              # double 0.25787500000000002
	.quad	0x4023d96b54e2b064              # double 9.9246470000000002
	.quad	0x401b169fcf3dc055              # double 6.7720940000000001
	.quad	0x4019fa5ebb7739f3              # double 6.4945019999999998
	.quad	0x3fe3c47a17f4128c              # double 0.61773400000000001
	.quad	0x3ff6ce3ac0c62e4d              # double 1.425349
	.quad	0x4014123d4f15e7c9              # double 5.0178120000000002
	.quad	0x401eabedfa43fe5d              # double 7.6679000000000003
	.quad	0x4022d77f6b1a2a4e              # double 9.4208940000000005
	.quad	0x4023d1d0635a426c              # double 9.9097930000000005
	.quad	0x401702231832fcad              # double 5.7520870000000004
	.quad	0x402140ad68837718              # double 8.6263229999999993
	.quad	0x4010ec4588a04d12              # double 4.230734
	.quad	0x3ff2492ddbdb5d89              # double 1.1428659999999999
	.quad	0x40129543f1c75819              # double 4.6457670000000002
	.quad	0x40202347c73eee52              # double 8.0689069999999994
	.quad	0x401676ab14ec204f              # double 5.6158869999999999
	.quad	0x40068fa9c12f09d9              # double 2.8201480000000001
	.quad	0x401b5a0dbad3a605              # double 6.8379430000000001
	.quad	0x3fed550ebaade658              # double 0.91663300000000003
	.quad	0x4012d514c22ee419              # double 4.7080869999999999
	.quad	0x400c3b6672fba01f              # double 3.529004
	.quad	0x4012c48e8a71de6a              # double 4.6919500000000003
	.quad	0x40117a26a22b3893              # double 4.3692880000000001
	.quad	0x3fedfb5d031055b9              # double 0.93693400000000004
	.quad	0x4005fd3fe1975f2d              # double 2.7486570000000001
	.quad	0x401735c74751ce29              # double 5.8025180000000001
	.quad	0x401a9495e17e34b9              # double 6.6451029999999998
	.quad	0x4012d1dc0db2702a              # double 4.7049409999999998
	.quad	0x401ef46994185059              # double 7.7386840000000001
	.quad	0x401733cea6c1a049              # double 5.8005930000000001
	.quad	0x401b709dcf893faf              # double 6.8599769999999998
	.quad	0x40224fee0b0af5fd              # double 9.1561129999999995
	.quad	0x40208543aeab7996              # double 8.2602820000000001
	.quad	0x4014482fd75e2047              # double 5.0704950000000002
	.quad	0x4022615a4acf312b              # double 9.1901419999999998
	.quad	0x3fe2dd872f33ca32              # double 0.58954200000000001
	.quad	0x400fc15097c80842              # double 3.969392
	.quad	0x3ff4522856605ee5              # double 1.2700579999999999
	.quad	0x4016f77a7008a698              # double 5.7416780000000003
	.quad	0x4010a6ae3a3a8e71              # double 4.1627739999999998
	.quad	0x4021905fd04a2fcf              # double 8.781981
	.quad	0x401ae4a90470a809              # double 6.7233010000000002
	.quad	0x400cba06a6e32e38              # double 3.5908329999999999
	.quad	0x4019ea4e379b77c0              # double 6.4788139999999999
	.quad	0x400234024b33daf9              # double 2.2753950000000001
	.quad	0x40208781626b2f23              # double 8.264659
	.quad	0x3fb467cf1c3265ae              # double 0.079709000000000002
	.quad	0x401b747c30d306a3              # double 6.8637550000000003
	.quad	0x4003bd095af294dd              # double 2.4673029999999998
	.quad	0x3ffb8e6afcce1c58              # double 1.72227
	.quad	0x4015a4c6e6d9be4d              # double 5.4109150000000001
	.quad	0x400c8cad57bc7f78              # double 3.5686900000000001
	.quad	0x4022ae5a14488c61              # double 9.3405310000000004
	.quad	0x3fed3955f78359bc              # double 0.91324899999999997
	.quad	0x3ff0db62c77574f7              # double 1.053561
	.quad	0x401566822ff08894              # double 5.3501060000000003
	.quad	0x4016b56eefa1e3eb              # double 5.677181
	.quad	0x400a7b6c3760bf5d              # double 3.3102649999999998
	.quad	0x40135861e92923e6              # double 4.8363110000000002
	.quad	0x4010a9c7368ad688              # double 4.1657989999999998
	.quad	0x3ff6444bf4cb1898              # double 1.3916740000000001
	.quad	0x4018272474538ef3              # double 6.0382249999999997
	.quad	0x40165c126a65cf68              # double 5.5899140000000003
	.quad	0x40135c8a7a41e57e              # double 4.8403720000000003
	.quad	0x401ab4aa10e02214              # double 6.6764299999999999
	.quad	0x3fe88ef77f27fe4c              # double 0.76745200000000002
	.quad	0x3ff30ef99806f263              # double 1.1911560000000001
	.quad	0x40100f94c87980f5              # double 4.0152159999999997
	.quad	0x3ff02a411c2a0232              # double 1.010316
	.quad	0x401207739f340d4e              # double 4.5072770000000002
	.quad	0x4016693dd97f62b7              # double 5.6027750000000003
	.quad	0x402165d1e53a81dc              # double 8.6988669999999999
	.quad	0x3fc9636f3b213e3e              # double 0.198347
	.quad	0x400578c111ada76e              # double 2.6839620000000002
	.quad	0x400a421ea35935fc              # double 3.2822849999999999
	.quad	0x40229832db1e9f27              # double 9.2972629999999992
	.quad	0x4019d94812be48a6              # double 6.4621890000000004
	.quad	0x40144724fa8b4bf9              # double 5.069477
	.quad	0x401f32b90a782907              # double 7.7995340000000004
	.quad	0x3fd23b14a90470a8              # double 0.284856
	.quad	0x400019c304ccee5b              # double 2.0125790000000001
	.quad	0x4020fe616b54e2b0              # double 8.4968369999999993
	.quad	0x4022ea55b035bd51              # double 9.4576849999999996
	.quad	0x3ffa7dd54da4ce81              # double 1.655721
	.quad	0x40128aef2c732592              # double 4.6356780000000004
	.quad	0x40213299fa11a976              # double 8.5988310000000006
	.quad	0x40230d39b888722a              # double 9.5258310000000002
	.quad	0x4022c011d3671ac1              # double 9.3751359999999994
	.quad	0x401a2d6c2efd438d              # double 6.5443579999999999
	.quad	0x4022beba27ae9ab3              # double 9.3725140000000006
	.quad	0x40234069835158b8              # double 9.6258049999999997
	.quad	0x4022eee34fc610f1              # double 9.4665780000000001
	.quad	0x400308387df5cf25              # double 2.3790140000000002
	.quad	0x402131248d7e0264              # double 8.5959819999999993
	.quad	0x3ff4b41e14bdfd26              # double 1.293974
	.quad	0x401b8d5cb790fb65              # double 6.8880489999999996
	.quad	0x4002f22291fb3fa7              # double 2.3682300000000001
	.quad	0x40043f8b1572580c              # double 2.5310269999999999
	.quad	0x4003f9c49774256c              # double 2.4969570000000001
	.quad	0x40013d28d002e233              # double 2.1548630000000002
	.quad	0x4020be744b2b777d              # double 8.3719809999999999
	.quad	0x40181287c200c0f0              # double 6.0180959999999999
	.quad	0x3ff9f484d76ab580              # double 1.6221969999999999
	.quad	0x40019e02ea960b70              # double 2.2021540000000002
	.quad	0x401159d883ba3444              # double 4.3377400000000002
	.quad	0x401c57204295a6c6              # double 7.0850840000000002
	.quad	0x400f0ce91c8eac00              # double 3.8813040000000001
	.quad	0x3feb0d887ebf22c0              # double 0.84540199999999999
	.quad	0x402117f47735c183              # double 8.5467870000000001
	.quad	0x40111ab0856e696a              # double 4.2760639999999999
	.quad	0x401796490a350d28              # double 5.896763
	.quad	0x4009ce25c810a56a              # double 3.2256580000000001
	.quad	0x401bca897635e743              # double 6.9477900000000004
	.quad	0x401380b242070b8d              # double 4.87568
	.quad	0x4013b75d9a0f0a5f              # double 4.929068
	.quad	0x4012f04b3c3e74b0              # double 4.7346620000000001
	.quad	0x3ff3554b8bef8ceb              # double 1.208324
	.quad	0x40223c15097c8084              # double 9.1173479999999997
	.quad	0x401d39d2391d5800              # double 7.3064660000000003
	.quad	0x4000db890d5a5b96              # double 2.1071949999999999
	.quad	0x4013968d32830a0b              # double 4.8970229999999999
	.quad	0x4014094b380cb6c8              # double 5.0090760000000003
	.quad	0x401b5ab6d00b45ae              # double 6.8385879999999997
	.quad	0x401566d58c8eef1c              # double 5.3504240000000003
	.quad	0x401cdb7414a4d2b3              # double 7.2143100000000002
	.quad	0x3ff05f94855da273              # double 1.0233350000000001
	.quad	0x3fe3b914f483cafb              # double 0.61634299999999997
	.quad	0x3ffd6861e92923e6              # double 1.8379840000000001
	.quad	0x4020720c49ba5e35              # double 8.2227499999999996
	.quad	0x400bcdbad3a604e2              # double 3.475454
	.quad	0x401e7d3f5b5fa227              # double 7.6223119999999999
	.quad	0x401e4346dc5d6388              # double 7.5656999999999996
	.quad	0x3fefa6d8b1dd5d3e              # double 0.98911700000000002
	.quad	0x401275011904b3c4              # double 4.6142620000000001
	.quad	0x4010d7c243dccea3              # double 4.2107020000000004
	.quad	0x400e5239a38fbca1              # double 3.790149
	.quad	0x401dad10b1feeb2d              # double 7.419009
	.quad	0x401df65ecc3e3194              # double 7.490596
	.quad	0x401cb6a65cf67b1c              # double 7.178369
	.quad	0x3fee4b2314013ec4              # double 0.94667199999999995
	.quad	0x3fe343393ab430f5              # double 0.60195600000000005
	.quad	0x3fdd3c297bfa4c62              # double 0.45679700000000001
	.quad	0x3fff04a72ead9275              # double 1.938636
	.quad	0x4010b693c03bc4d2              # double 4.1782979999999998
	.quad	0x4017fb1fab96f21f              # double 5.9952379999999996
	.quad	0x401e43d89ce4a7b5              # double 7.566256
	.quad	0x3ff8c59641f64495              # double 1.5482389999999999
	.quad	0x3ff5c62f5989df11              # double 1.3608849999999999
	.quad	0x401d13f705857aff              # double 7.2694970000000003
	.quad	0x4022825a89b951c6              # double 9.2545970000000004
	.quad	0x400c1a3a08398a65              # double 3.5128059999999999
	.quad	0x401d17c0f4517614              # double 7.2731969999999997
	.quad	0x4022778c436fc159              # double 9.233492
	.quad	0x4021344c5974e65c              # double 8.6021450000000001
	.quad	0x4019b74107314ca9              # double 6.4289589999999999
	.quad	0x401cba9c12f09d8c              # double 7.1822359999999996
	.quad	0x3ffa1290257c914b              # double 1.629532
	.quad	0x4011eb7c7820a30e              # double 4.4799670000000003
	.quad	0x3fd3b3397dd00f77              # double 0.30781399999999998
	.quad	0x400f408e9b38d60a              # double 3.9065219999999998
	.quad	0x400896abde3fbbd8              # double 3.0735700000000001
	.quad	0x3fb111dffc5479d5              # double 0.066679000000000002
	.quad	0x400f0d6dc1a47a9e              # double 3.8815569999999999
	.quad	0x402326d3b6cbd988              # double 9.5758340000000004
	.quad	0x401acfda4052d667              # double 6.7029810000000003
	.quad	0x4020dea50d6b228e              # double 8.4348530000000004
	.quad	0x4021cc9949e8815e              # double 8.8996069999999996
	.quad	0x4012aad7518b0d0f              # double 4.6668370000000001
	.quad	0x40106671ef30a4e3              # double 4.1000439999999996
	.quad	0x3fe802235b4edb2f              # double 0.75026099999999996
	.quad	0x401b8d7a56de3327              # double 6.8881620000000003
	.quad	0x4015e96aad1d041d              # double 5.4779460000000002
	.quad	0x401590f301eabbcb              # double 5.3915519999999999
	.quad	0x400355ff609dcf89              # double 2.4169909999999999
	.quad	0x3fe4be121ee67514              # double 0.64820199999999994
	.quad	0x401f1f54d1e96c40              # double 7.7805970000000002
	.quad	0x4007562bf11f926c              # double 2.9170759999999998
	.quad	0x3faa15fcc1871e6d              # double 0.050949000000000001
	.quad	0x40199470eb24a6a8              # double 6.3949619999999996
	.quad	0x401477ce95faa8a8              # double 5.1169989999999999
	.quad	0x3ffa72b12d3415b1              # double 1.6530009999999999
	.quad	0x40187db76b3bb83d              # double 6.12277
	.quad	0x3fd73d96638433d7              # double 0.36313400000000001
	.quad	0x402267720c8cd63d              # double 9.2020420000000005
	.quad	0x401b6c42a66dbd73              # double 6.8557230000000002
	.quad	0x401fb369b9d7fd82              # double 7.9252079999999996
	.quad	0x40121a398201cd60              # double 4.5256100000000004
	.quad	0x3fe8943e10060781              # double 0.768096
	.quad	0x40072f61672324c8              # double 2.8981349999999999
	.quad	0x3ffecd62bf11f927              # double 1.925143
	.quad	0x4022a8be0ded288d              # double 9.3295750000000002
	.quad	0x401fe931ca7d6734              # double 7.9777290000000001
	.quad	0x40047b5286b59147              # double 2.560216
	.quad	0x401b773eee525892              # double 6.8664509999999996
	.quad	0x3ff3370cdc8754f3              # double 1.2009399999999999
	.quad	0x4020628d002e2329              # double 8.192482
	.quad	0x401bae6601bc98a2              # double 6.9203109999999999
	.quad	0x3fccd80a17b0f6ad              # double 0.22534299999999999
	.quad	0x3fe62f09d8c6d613              # double 0.69324200000000002
	.quad	0x3fd0f2cb641700ce              # double 0.26481900000000003
	.quad	0x40230101f31f46ed              # double 9.5019679999999997
	.quad	0x40234f71eafee6fb              # double 9.6551659999999994
	.quad	0x401e53e35c5b4aa9              # double 7.5819219999999996
	.quad	0x400657fe8ee6b830              # double 2.7929659999999998
	.quad	0x40204e3f141205bc              # double 8.1528249999999999
	.quad	0x3fff4d4562e09fe8              # double 1.9563649999999999
	.quad	0x400677939a7c17a9              # double 2.8083870000000002
	.quad	0x40235a817763e4ac              # double 9.6767690000000001
	.quad	0x402332cb20fb224b              # double 9.5992060000000005
	.quad	0x40194bab649d388b              # double 6.3238960000000004
	.quad	0x4010a43cc07aaef3              # double 4.1603880000000002
	.quad	0x40140b90214ad363              # double 5.0112920000000001
	.quad	0x40150231c64ba94c              # double 5.2521430000000002
	.quad	0x402051042d8c2a45              # double 8.1582349999999995
	.quad	0x40237e7dfe32a066              # double 9.7470549999999996
	.quad	0x40225b14445aa2e4              # double 9.1778890000000004
	.quad	0x3ff550edc3bd5992              # double 1.3322579999999999
	.quad	0x401714a16a487336              # double 5.7701469999999997
	.quad	0x400e5733226c3b92              # double 3.7925779999999998
	.quad	0x3fb3fceb78897e99              # double 0.078077999999999995
	.quad	0x3ffea92817763e4b              # double 1.9162980000000001
	.quad	0x4023e8f733a8a3f9              # double 9.9550110000000007
	.quad	0x4011f01abd1aa822              # double 4.484477
	.quad	0x401908bc9cd3e0bd              # double 6.2585319999999998
	.quad	0x401c4054ef459d99              # double 7.062824
	.quad	0x400c1b6bb1290258              # double 3.5133890000000001
	.quad	0x401bf57d1782d384              # double 6.9897349999999996
	.quad	0x400d6229a5ebb774              # double 3.6729310000000002
	.quad	0x401a5ae85b9e8c48              # double 6.5887770000000003
	.quad	0x4003b8b8ae31d713              # double 2.4651960000000002
	.quad	0x401c9b05b7cfe586              # double 7.151389
	.quad	0x401936d938151a43              # double 6.3035629999999996
	.quad	0x401c94ab606b7aa2              # double 7.1451849999999997
	.quad	0x40103de76427c7c5              # double 4.0604529999999999
	.quad	0x40200485c24c404a              # double 8.0088329999999992
	.quad	0x3ff40c6d612c6ac2              # double 1.253034
	.quad	0x4023ac827b6fe2e7              # double 9.8369330000000001
	.quad	0x3fdb1c193b3a68b2              # double 0.42359000000000002
	.quad	0x400157995ee136e7              # double 2.1677729999999999
	.quad	0x3fb130164840e172              # double 0.067140000000000005
	.quad	0x3fd9cb74ddf86e3b              # double 0.40304299999999998
	.quad	0x3ff835360d024702              # double 1.512991
	.quad	0x401e3db6a1e81cb4              # double 7.5602669999999996
	.quad	0x4020146a1a500d5f              # double 8.0398720000000008
	.quad	0x3ff3fcb70ac3a861              # double 1.249198
	.quad	0x400661fea8112ba1              # double 2.7978489999999998
	.quad	0x40061d5a187a4a49              # double 2.764332
	.quad	0x402384d6c2efd439              # double 9.7594510000000003
	.quad	0x4015e24cc6822ff1              # double 5.4709960000000004
	.quad	0x401fad15ad106ee3              # double 7.9190279999999999
	.quad	0x402278389f83be66              # double 9.234807
	.quad	0x40003fbf83382e45              # double 2.0311270000000001
	.quad	0x40026b0292817764              # double 2.302251
	.quad	0x401f052934acaff7              # double 7.7550400000000001
	.quad	0x401e50cd855970b5              # double 7.5789090000000003
	.quad	0x3fedb69552e2fbe3              # double 0.92853799999999997
	.quad	0x4003febc83a96d4c              # double 2.4993829999999999
	.quad	0x4021006034f3fd93              # double 8.5007339999999996
	.quad	0x401244bbe4473cd5              # double 4.5671229999999996
	.quad	0x402009522a6f3f53              # double 8.018205
	.quad	0x3ffc64db163baba8              # double 1.7746230000000001
	.quad	0x40076e4b87bdcf03              # double 2.928855
	.quad	0x401dee0e30446b6a              # double 7.4824760000000001
	.quad	0x4010bd14e3bcd35b              # double 4.1846500000000004
	.quad	0x402169d30270f388              # double 8.7066879999999998
	.quad	0x4020836284599674              # double 8.2566109999999994
	.quad	0x3ffb119bd4067cf2              # double 1.6917990000000001
	.quad	0x401a6e2c55c96031              # double 6.6075910000000002
	.quad	0x401e7b003686a4ca              # double 7.6201179999999997
	.quad	0x400aa5e785b5b707              # double 3.3310080000000002
	.quad	0x400f2dd377e1b8ed              # double 3.897376
	.quad	0x401a5ba5a038194c              # double 6.589499
	.quad	0x3fe824f8726d04e6              # double 0.75451299999999999
	.quad	0x401de84db9c7368b              # double 7.4768590000000001
	.quad	0x4023ef11d798d8a9              # double 9.9669329999999991
	.quad	0x40074676a7264a17              # double 2.9094060000000002
	.quad	0x4011085cee17a030              # double 4.2581670000000003
	.quad	0x4012e7d8cf398e97              # double 4.726413
	.quad	0x3ff8c7b45f17bd8c              # double 1.548756
	.quad	0x4005608b75ea67e8              # double 2.6721409999999999
	.quad	0x401bee8d5410f94d              # double 6.9829610000000004
	.quad	0x4008d3636f3b213e              # double 3.1032169999999999
	.quad	0x402270f3a9b06812              # double 9.2206089999999996
	.quad	0x40023221858bc59c              # double 2.2744780000000002
	.quad	0x4021c29563a9f384              # double 8.8800460000000001
	.quad	0x3fffdca29845dc83              # double 1.991366
	.quad	0x401299ef954eb13e              # double 4.650328
	.quad	0x40201db20b8066c3              # double 8.0579990000000006
	.quad	0x3fc6940357a35504              # double 0.17639199999999999
	.quad	0x3ff207d3d4280ae1              # double 1.126911
	.quad	0x400b63b81b64e054              # double 3.4236909999999998
	.quad	0x4018e4fb97bb7308              # double 6.2236159999999998
	.quad	0x4016037e6f71a7e3              # double 5.503412
	.quad	0x3ff03cb3e5753a3f              # double 1.0148200000000001
	.quad	0x3ffad16fc9bc7714              # double 1.676132
	.quad	0x3ff79cc20d5629d8              # double 1.4757709999999999
	.quad	0x400cbdc2f405f6ba              # double 3.592657
	.quad	0x402256577531db44              # double 9.1686359999999993
	.quad	0x4002c3621fafc8b0              # double 2.345402
	.quad	0x4008c2b063e07a29              # double 3.0950630000000001
	.quad	0x40138533f42352eb              # double 4.8800809999999997
	.quad	0x4022cdb2f661f18d              # double 9.4017560000000006
	.quad	0x401a79a77e5eaab0              # double 6.6188029999999998
	.quad	0x401718448cf7caa7              # double 5.7736989999999997
	.quad	0x4020fe557de0d66f              # double 8.4967459999999999
	.quad	0x401a63c6c97d8cf4              # double 6.5974380000000004
	.quad	0x401f9eac8605681f              # double 7.9049550000000001
	.quad	0x40122d944aa53fc0              # double 4.544511
	.quad	0x401ef199780baa58              # double 7.7359369999999998
	.quad	0x400b6f2e05ccc89b              # double 3.429287
	.quad	0x401f7bc382a12f90              # double 7.8708629999999999
	.quad	0x4021c13f077ccc03              # double 8.8774339999999992
	.quad	0x4014f405b39e279e              # double 5.2383030000000002
	.quad	0x401d8547e06961c3              # double 7.3801569999999996
	.quad	0x400c36aa4b9884c7              # double 3.5266920000000002
	.quad	0x4014967620ee8d11              # double 5.146935
	.quad	0x40201cd22c881e47              # double 8.0562909999999999
	.quad	0x3ff3a80cf9e3864d              # double 1.2285280000000001
	.quad	0x3fffd0917d6b65aa              # double 1.9884200000000001
	.quad	0x4021d0869c66d374              # double 8.9072770000000005
	.quad	0x4022d9ee675147f1              # double 9.4256469999999996
	.quad	0x401e659641f64495              # double 7.5992059999999996
	.quad	0x3fac1e57d9dba909              # double 0.054919000000000003
	.quad	0x4021ace7253da72a              # double 8.8377009999999991
	.quad	0x401bac96cc5fbf83              # double 6.9185439999999998
	.quad	0x3fe4f84230fcf80e              # double 0.65530500000000003
	.quad	0x400dd93469941850              # double 3.7310569999999998
	.quad	0x40234e3f359ff4fd              # double 9.6528259999999992
	.quad	0x40141cc39ffd60e9              # double 5.0280899999999997
	.quad	0x402017177a7008a7              # double 8.0451010000000007
	.quad	0x3ff2c7980f55de59              # double 1.173729
	.quad	0x401b3e1f3a57eaa3              # double 6.8106660000000003
	.quad	0x40212a1a500d5e8d              # double 8.5822319999999994
	.quad	0x40205a797891e215              # double 8.1767079999999996
	.quad	0x4016ff1cb89d6adf              # double 5.7491329999999996
	.quad	0x4011e9f0e4da09cc              # double 4.4784579999999998
	.quad	0x4021f9d16fc9bc77              # double 8.9879259999999999
	.quad	0x3fcde1198aeb80ed              # double 0.233432
	.quad	0x401411212513b5bf              # double 5.0167279999999996
	.quad	0x4021d9f53825e13b              # double 8.9256989999999998
	.quad	0x40175de657b84dba              # double 5.8416990000000002
	.quad	0x4003f862b27cbf6e              # double 2.4962819999999999
	.quad	0x4020ece54f7a9197              # double 8.4626870000000007
	.quad	0x3ffa57afea3df6dc              # double 1.6464080000000001
	.quad	0x3fe35043e5321e60              # double 0.60354799999999997
	.quad	0x4018532acfb762d8              # double 6.0812179999999998
	.quad	0x40148a658c4bd33d              # double 5.1351529999999999
	.quad	0x3ffdc7d805e5f30e              # double 1.8612899999999999
	.quad	0x40009a365cb35f3d              # double 2.0752989999999998
	.quad	0x400cf35b0bbf50e3              # double 3.6188259999999999
	.quad	0x4021ef30c67168f9              # double 8.9671690000000002
	.quad	0x4022d78ad2567989              # double 9.4209809999999993
	.quad	0x402377564302b40f              # double 9.7330799999999992
	.quad	0x401ca15df6555c53              # double 7.1575850000000001
	.quad	0x40060a77a2cecc81              # double 2.7551109999999999
	.quad	0x3ffe29ced0b30b5b              # double 1.8852070000000001
	.quad	0x401d70cdc8754f37              # double 7.3601599999999996
	.quad	0x3fe3ac8605681ecd              # double 0.61480999999999997
	.quad	0x4010db445ed4a1ad              # double 4.2141279999999997
	.quad	0x400c78cb07d0aeda              # double 3.5589810000000002
	.quad	0x4019519d2391d580              # double 6.329701
	.quad	0x3fe4ac1b10fd7e46              # double 0.64600900000000006
	.quad	0x401740247021d10b              # double 5.8126389999999999
	.quad	0x3ff87ff8a8f3a9b0              # double 1.5312429999999999
	.quad	0x401692a411c2a023              # double 5.6432039999999999
	.quad	0x401c8a4484944ed7              # double 7.135027
	.quad	0x4001ac1b97353b4b              # double 2.2090369999999999
	.quad	0x401085d63886594b              # double 4.1307
	.quad	0x4023431e18efbb0e              # double 9.6310889999999993
	.quad	0x401f3789613d31ba              # double 7.8042350000000003
	.quad	0x3fed441dd1a21ea3              # double 0.91456499999999996
	.quad	0x3ffb6b50b0f27bb3              # double 1.7137
	.quad	0x4020f8a8b08dd1e5              # double 8.4856619999999996
	.quad	0x40193fe32a0663c7              # double 6.3123899999999997
	.quad	0x4019a8c32a8c9b84              # double 6.4148069999999997
	.quad	0x4007549a5657fb6a              # double 2.9163100000000002
	.quad	0x4007cd0c3d25247d              # double 2.9751210000000001
	.quad	0x401327f0ed3d859d              # double 4.7890050000000004
	.quad	0x3ffbb530ced4e4c9              # double 1.7317359999999999
	.quad	0x4017b633482be8bc              # double 5.9279299999999999
	.quad	0x3ff7f58afc47e49b              # double 1.497447
	.quad	0x400d821f2990f302              # double 3.688536
	.quad	0x4002d1c970f7b9e0              # double 2.3524349999999998
	.quad	0x401b1f548ecd8dbd              # double 6.7805960000000001
	.quad	0x402140ff10ecb74e              # double 8.6269460000000002
	.quad	0x40111710880d801b              # double 4.2725239999999998
	.quad	0x4001a3a96d4c33b5              # double 2.2049129999999999
	.quad	0x4005cf91a32b12d3              # double 2.7263519999999999
	.quad	0x4013702afdda8bd2              # double 4.8595389999999998
	.quad	0x4020c88fc9363f57              # double 8.3917219999999997
	.quad	0x4019b34dad31fcd2              # double 6.4251009999999997
	.quad	0x3fa1276fb09203a3              # double 0.033503999999999999
	.quad	0x400d5fbb517a4617              # double 3.6717439999999999
	.quad	0x4017af77f27fe4bd              # double 5.9213560000000003
	.quad	0x401096961c36976c              # double 4.1470570000000002
	.quad	0x4016c7763e4abe6a              # double 5.6947869999999998
	.quad	0x3ffce84cf0739b02              # double 1.8067139999999999
	.quad	0x402352452c59fb1e              # double 9.6606839999999998
	.quad	0x401ccc9752977c89              # double 7.1997960000000001
	.quad	0x4020fcae642bf983              # double 8.4935179999999999
	.quad	0x401817689ca18bd6              # double 6.0228599999999997
	.quad	0x400ac0e496ededaf              # double 3.3441860000000001
	.quad	0x401d90d5a5b9628d              # double 7.3914400000000002
	.quad	0x4023ddc8754f3776              # double 9.9331700000000005
	.quad	0x4015dab7995ee137              # double 5.4635910000000001
	.quad	0x4015085c67dfe32a              # double 5.258165
	.quad	0x40161955f78359bc              # double 5.5247419999999998
	.quad	0x400d00f5e41d4b6a              # double 3.6254689999999998
	.quad	0x4010be924f227d03              # double 4.1861050000000004
	.quad	0x401eabba12b5e52a              # double 7.6677020000000002
	.quad	0x4009c9bd8383ad9f              # double 3.223506
	.quad	0x3ff50e9f6a93f291              # double 1.3160700000000001
	.quad	0x4007bbca9691a75d              # double 2.9666950000000001
	.quad	0x4018348e4755ffe7              # double 6.0513240000000001
	.quad	0x4018e0a2014727dd              # double 6.2193680000000002
	.quad	0x400cbeb7cbb3c819              # double 3.593124
	.quad	0x3fd5878316a05575              # double 0.33639599999999997
	.quad	0x40173164c729f59d              # double 5.7982360000000002
	.quad	0x3fd5013ec460ed81              # double 0.32820100000000002
	.quad	0x40164ca2db61bb06              # double 5.57484
	.quad	0x3fcd18c197e56473              # double 0.22731799999999999
	.quad	0x402013065f9591cd              # double 8.0371579999999998
	.quad	0x3febc96ededaec4a              # double 0.86833899999999997
	.quad	0x4008aab367a0f909              # double 3.0833499999999998
	.quad	0x3feb657d9dba908a              # double 0.85613899999999998
	.quad	0x4000ffd933e35c5b              # double 2.1249259999999999
	.quad	0x4021cf90539fba45              # double 8.9053979999999999
	.quad	0x401d2859c8c9320e              # double 7.2894050000000004
	.quad	0x40028ceb356da017              # double 2.3188080000000002
	.quad	0x40209b1290257c91              # double 8.3028759999999995
	.quad	0x4023011d57ff9b56              # double 9.5021769999999997
	.quad	0x400933415b1422cd              # double 3.1500270000000001
	.quad	0x401e6f166e008e9b              # double 7.6084839999999998
	.quad	0x3ffc10763a190082              # double 1.754019
	.quad	0x40217727bb2fec57              # double 8.7327250000000003
	.quad	0x401ca9b6b2af1455              # double 7.1657359999999999
	.quad	0x3ff5284dfce3150e              # double 1.3223400000000001
	.quad	0x3ff60c5a8155d5f5              # double 1.3780159999999999
	.quad	0x40167e8af81626b3              # double 5.623577
	.quad	0x401f0eebb341e14c              # double 7.7645710000000001
	.quad	0x3fdfb31c219eb639              # double 0.495307
	.quad	0x4016068986fcdee3              # double 5.5063839999999997
	.quad	0x4014878183f91e64              # double 5.1323299999999996
	.quad	0x40226ac9081c2e34              # double 9.2085650000000001
	.quad	0x400cd0e4da09cc32              # double 3.6019990000000002
	.quad	0x4011352ef911cf35              # double 4.3019369999999997
	.quad	0x4011b4aa9717df1a              # double 4.4264320000000001
	.quad	0x4017217c5ef62f9d              # double 5.7827010000000003
	.quad	0x3ff1a515ce9e5e24              # double 1.1028039999999999
	.quad	0x40057911cf355cd9              # double 2.6841159999999999
	.quad	0x4005cfa7a85015c2              # double 2.726394
	.quad	0x40239e534373f317              # double 9.8092290000000001
	.quad	0x3fedc83a96d4c33b              # double 0.93069199999999996
	.quad	0x4020aee73e681a9c              # double 8.3416080000000007
	.quad	0x401de2d6a9c560c8              # double 7.4715220000000002
	.quad	0x4020c5712a0ec743              # double 8.3856289999999998
	.quad	0x4005cc1b10fd7e46              # double 2.7246610000000002
	.quad	0x40117a05dd8f92b0              # double 4.3691630000000004
	.quad	0x3fd27c9de0503750              # double 0.288856
	.quad	0x401f754c122749f1              # double 7.864548
	.quad	0x401ba5a294141e9b              # double 6.911753
	.quad	0x401a420ab7132724              # double 6.5644939999999998
	.quad	0x400d2301a79fec9a              # double 3.642093
	.quad	0x401a92178f68be2f              # double 6.6426679999999996
	.quad	0x3ff39ce39b456b44              # double 1.225803
	.quad	0x402333e74afd5454              # double 9.6013739999999998
	.quad	0x3ff417c1bda5119d              # double 1.2558
	.quad	0x401c47414a4d2b2c              # double 7.069585
	.quad	0x4019b3986338b47c              # double 6.4253859999999996
	.quad	0x401a26ba493c89f4              # double 6.53782
	.quad	0x4006b462c343b70f              # double 2.838079
	.quad	0x4021b4cfd08d4bad              # double 8.8531479999999991
	.quad	0x40164bc3c5bd0e13              # double 5.5739890000000001
	.quad	0x4015315c63ae2542              # double 5.2982040000000001
	.quad	0x4016495182a9930c              # double 5.5716000000000001
	.quad	0x401d47720c8cd63d              # double 7.3197710000000002
	.quad	0x4020054c122749f1              # double 8.0103460000000002
	.quad	0x4020d4918e325d4a              # double 8.4151729999999993
	.quad	0x4007a67a52ac753e              # double 2.9562879999999998
	.quad	0x400645efe9318762              # double 2.7841490000000002
	.quad	0x402093e9ea140571              # double 8.2888940000000009
	.quad	0x401830941c8216c6              # double 6.0474399999999999
	.quad	0x401e34d44567125e              # double 7.5515910000000002
	.quad	0x402084ef240fa9c1              # double 8.2596369999999997
	.quad	0x40123f14983d7907              # double 4.5616019999999997
	.quad	0x4008db7e90ff9724              # double 3.1071749999999998
	.quad	0x4018e36933a0407d              # double 6.2220810000000002
	.quad	0x40239a52ce032db2              # double 9.8014130000000002
	.quad	0x401d5cf0307f23cd              # double 7.3407600000000004
	.quad	0x400a194af4f0d845              # double 3.2623500000000001
	.quad	0x3ff0c72c0e7bc3c6              # double 1.0486260000000001
	.quad	0x4021f098b2e9ccb8              # double 8.9699150000000003
	.quad	0x40197b2c83ec892b              # double 6.3702870000000003
	.quad	0x3ff380de4c51116b              # double 1.2189620000000001
	.quad	0x401bd80e8c8abd5e              # double 6.9609930000000002
	.quad	0x401e6c0b9991361e              # double 7.6055130000000002
	.quad	0x401e677f27fe4bcb              # double 7.6010710000000001
	.quad	0x3fff4ea077036c9c              # double 1.956696
	.quad	0x4018ad0e56041893              # double 6.1689999999999996
	.quad	0x40003c5e6ff7dfa0              # double 2.029477
	.quad	0x401071aa821f2991              # double 4.111002
	.quad	0x3ff62ad4f5903a75              # double 1.3854569999999999
	.quad	0x400644de3b8a19ca              # double 2.7836270000000001
	.quad	0x3ff51be3c105186e              # double 1.3193090000000001
	.quad	0x4018cdc8fb86f47b              # double 6.2009619999999996
	.quad	0x3ffb22a3cea6c1a0              # double 1.6959569999999999
	.quad	0x400987c286f8ad25              # double 3.1912889999999998
	.quad	0x40208944028e4fb9              # double 8.2680969999999991
	.quad	0x4022457c2ca148bb              # double 9.1357130000000009
	.quad	0x4008c387df5cf249              # double 3.0954739999999998
	.quad	0x3ffdbf0bae89eba7              # double 1.8591420000000001
	.quad	0x400f445aa2e3c537              # double 3.9083760000000001
	.quad	0x40225ee99a62ed35              # double 9.1853759999999998
	.quad	0x401802539756c93a              # double 6.0022719999999996
	.quad	0x40216907d912556d              # double 8.7051379999999998
	.quad	0x3ffedbed30f062d4              # double 1.928693
	.quad	0x401801a11233df2b              # double 6.0015910000000003
	.quad	0x3ffec57d1782d384              # double 1.9232149999999999
	.quad	0x40133787485e3da3              # double 4.804227
	.quad	0x40154fce3150dae4              # double 5.3279350000000001
	.quad	0x4023c4e4217d284a              # double 9.8845530000000004
	.quad	0x4020d666234a87e4              # double 8.4187480000000007
	.quad	0x401cd9774256bca5              # double 7.2123689999999998
	.quad	0x400d01d8e8640208              # double 3.625902
	.quad	0x4010bb1b79d909f2              # double 4.1827220000000001
	.quad	0x4021c66f9335d24a              # double 8.8875700000000002
	.quad	0x40136d5fdcdf6988              # double 4.8568110000000004
	.quad	0x3ffca40d90e23af3              # double 1.790052
	.quad	0x4013162281344806              # double 4.7716159999999999
	.quad	0x401014e874c8ffb9              # double 4.0204180000000003
	.quad	0x40131b884406c00e              # double 4.7768870000000003
	.quad	0x3fc4d1aeb3dd11be              # double 0.16264899999999999
	.quad	0x40150d141a6937d2              # double 5.262772
	.quad	0x401c18900c521dda              # double 7.023987
	.quad	0x40147f89c5e6ff7e              # double 5.124549
	.quad	0x3fe5674f2f123c43              # double 0.66886100000000004
	.quad	0x401654df47f993d5              # double 5.5828829999999998
	.quad	0x3fe1203a322af577              # double 0.53518399999999999
	.quad	0x40153a369fcf3dc0              # double 5.3068489999999997
	.quad	0x4004d34a44c7b02d              # double 2.6031689999999998
	.quad	0x3fff9ada76d97b31              # double 1.975306
	.quad	0x40187cb9ecf63800              # double 6.1218029999999999
	.quad	0x4019d18fc504816f              # double 6.45465
	.quad	0x40149abc947064ed              # double 5.1511100000000001
	.quad	0x4008111f926c7eae              # double 3.0083609999999998
	.quad	0x40102c8e25c810a5              # double 4.0435109999999996
	.quad	0x3fc7ad3a604e1e71              # double 0.184974
	.quad	0x400362ababead4f6              # double 2.4231790000000002
	.quad	0x3ff8e0e736049ecb              # double 1.554908
	.quad	0x400f2fe79ee02a78              # double 3.8983910000000002
	.quad	0x400ccdcca70d1fa3              # double 3.6004879999999999
	.quad	0x40143f0d844d013b              # double 5.0615750000000004
	.quad	0x400eb0ab2e1693c0              # double 3.8362639999999999
	.quad	0x40081a11a975afb0              # double 3.0127290000000002
	.quad	0x3feb4964628027d9              # double 0.85270900000000005
	.quad	0x40051f359ff4fd6d              # double 2.6402389999999998
	.quad	0x40125d3aa369fcf4              # double 4.5910440000000001
	.quad	0x4023e47778dd6170              # double 9.9462240000000008
	.quad	0x401f90025bfad29a              # double 7.8906340000000004
	.quad	0x4023fc85e3da2f8c              # double 9.9932090000000002
	.quad	0x40175766c6de7642              # double 5.8353529999999996
	.quad	0x3fe75c9c4da9003f              # double 0.73005500000000001
	.quad	0x4016d996b76709fa              # double 5.7124889999999997
	.quad	0x3fb422bbecaab8a6              # double 0.078655000000000002
	.quad	0x4010d79314445aa3              # double 4.2105220000000001
	.quad	0x4012ba9f7b5aea31              # double 4.6822489999999997
	.quad	0x40163918e325d4a6              # double 5.5557590000000001
	.quad	0x401236744b2b777d              # double 4.5531779999999999
	.quad	0x40018bf444e0daa1              # double 2.1933370000000001
	.quad	0x401b6deb95e5aff3              # double 6.8573440000000003
	.quad	0x4002b563a9f383f1              # double 2.3385690000000001
	.quad	0x4003ba09cc319c5a              # double 2.4658389999999999
	.quad	0x4012606317268d33              # double 4.5941280000000004
	.quad	0x401fcd71b0468449              # double 7.9506290000000001
	.quad	0x40089e2f7b17ce53              # double 3.0772390000000001
	.quad	0x3ff4f5371971c10d              # double 1.3098669999999999
	.quad	0x402136cfa69be09c              # double 8.6070530000000005
	.quad	0x40201e5d18090b41              # double 8.0593039999999991
	.quad	0x40140a415f45e0b5              # double 5.0100150000000001
	.quad	0x401943b70ef56649              # double 6.316128
	.quad	0x3fff78705425f202              # double 1.966904
	.quad	0x400277c6fbd273d6              # double 2.3084850000000001
	.quad	0x4006c4b3c3e74afd              # double 2.8460459999999999
	.quad	0x401c3d330941c821              # double 7.0597649999999996
	.quad	0x40203ec2efd438d2              # double 8.1225810000000003
	.quad	0x3fd5c98e53eb399f              # double 0.34042699999999998
	.quad	0x40094ec41dd1a21f              # double 3.1634600000000002
	.quad	0x401f32f72b452828              # double 7.7997709999999997
	.quad	0x401ed8d92fb19e73              # double 7.7117659999999998
	.quad	0x40034a62aa19439e              # double 2.411321
	.quad	0x3fb17d9dba908a26              # double 0.068322999999999995
	.quad	0x3fff8f41f212d773              # double 1.972475
	.quad	0x401cb4794ea07703              # double 7.1762439999999996
	.quad	0x4003bace67d77fae              # double 2.4662139999999999
	.quad	0x4022e2f0bf1a5ca3              # double 9.4432430000000007
	.quad	0x40188733ebbfd71b              # double 6.132034
	.quad	0x3fe39307af20ea5b              # double 0.61169799999999996
	.quad	0x3ffa5018e757928e              # double 1.644555
	.quad	0x3fd6d1bb4916ca47              # double 0.35655100000000001
	.quad	0x3ff62e221c8a7a42              # double 1.386263
	.quad	0x40231d4e8fb00bcc              # double 9.5572400000000001
	.quad	0x401ad85b5b70691f              # double 6.7112860000000003
	.quad	0x3fc7c23315d701da              # double 0.185614
	.quad	0x4014df77292c4934              # double 5.2182279999999999
	.quad	0x40180b827fa1a0cf              # double 6.0112399999999999
	.quad	0x4021acb48d3ae686              # double 8.8373150000000003
	.quad	0x401474ad362e9036              # double 5.1139419999999998
	.quad	0x401879a77e5eaab0              # double 6.1188029999999998
	.quad	0x3ff015bee3d5fdce              # double 1.005309
	.quad	0x4022e432873bc904              # double 9.4456980000000001
	.quad	0x3fe34d44567125dd              # double 0.603182
	.quad	0x40213004b7f5a533              # double 8.5937859999999997
	.quad	0x40109d2a62aa1944              # double 4.1534820000000003
	.quad	0x401016f2e8c0485a              # double 4.022411
	.quad	0x3fff9ecd4aa10e02              # double 1.97627
	.quad	0x401a4f29d40ee06e              # double 6.5773080000000004
	.quad	0x3ffc62046c764ae0              # double 1.77393
	.quad	0x4009b13be22e5de1              # double 3.2115399999999998
	.quad	0x401641e321a2e7f7              # double 5.564343
	.quad	0x400eb4aec8d5c747              # double 3.8382239999999999
	.quad	0x40025e61cffeb075              # double 2.2960850000000002
	.quad	0x401725e9e1b089a0              # double 5.7870249999999999
	.quad	0x4022497f4128bf3c              # double 9.1435490000000001
	.quad	0x400a0afdda8bd231              # double 3.2553670000000001
	.quad	0x401134b1ee243569              # double 4.3014599999999996
	.quad	0x4009362a5e785b5b              # double 3.1514479999999998
	.quad	0x3fd83cb81733226c              # double 0.37870599999999999
	.quad	0x401cc1c9f72f76e6              # double 7.1892469999999999
	.quad	0x40212f35c182ecaf              # double 8.5922070000000001
	.quad	0x40035e2b4959e625              # double 2.4209809999999998
	.quad	0x402292ed99cbee80              # double 9.2869689999999991
	.quad	0x4010bead0c3d2524              # double 4.1862069999999996
	.quad	0x401cfeda66128390              # double 7.2488799999999998
	.quad	0x3fe52f76e6106ab1              # double 0.66204399999999997
	.quad	0x401079057d1782d4              # double 4.1181850000000004
	.quad	0x4022a4f9c1f85d74              # double 9.3222179999999994
	.quad	0x40208c0e5a35d67c              # double 8.2735470000000006
	.quad	0x401a9e6fb4c3c18b              # double 6.6547229999999997
	.quad	0x401aa083dbc23316              # double 6.6567530000000001
	.quad	0x401e46ee30caa327              # double 7.5692680000000001
	.quad	0x4005b5e071c53f3a              # double 2.7138070000000001
	.quad	0x401bba0ec7432010              # double 6.9316969999999998
	.quad	0x401185be1a826245              # double 4.3806079999999996
	.quad	0x401460d4dc65c704              # double 5.0945619999999998
	.quad	0x401537eb6bf444e1              # double 5.3046090000000001
	.quad	0x3ff2038d1d8a5482              # double 1.125867
	.quad	0x401196e19b90ea9e              # double 4.3973449999999996
	.quad	0x400f76965f5275ef              # double 3.9329040000000002
	.quad	0x4014b7a072d1aeb4              # double 5.1793230000000001
	.quad	0x3ff39e5e2478854d              # double 1.226164
	.quad	0x40206010624dd2f2              # double 8.1876250000000006
	.quad	0x402198298cc14403              # double 8.7971920000000008
	.quad	0x3ff4b76a2f48c2e7              # double 1.2947789999999999
	.quad	0x40154356da0168b6              # double 5.3157610000000002
	.quad	0x3fd4810e8858ff76              # double 0.32037700000000002
	.quad	0x400477eed45e9186              # double 2.5585610000000001
	.quad	0x40207577531db446              # double 8.2294260000000001
	.quad	0x4009d6a0dbad3a60              # double 3.2297989999999999
	.quad	0x401ad150dae3e6c5              # double 6.7044100000000002
	.quad	0x3fcbbc126a65cf68              # double 0.21667700000000001
	.quad	0x3fe33ad7d7c2ca15              # double 0.60093300000000005
	.quad	0x4019587b99d451fc              # double 6.3364089999999997
	.quad	0x400e6a600b029281              # double 3.8019409999999998
	.quad	0x400df8d1526d8b1e              # double 3.7464930000000001
	.quad	0x401ec467381d7dbf              # double 7.6917999999999997
	.quad	0x402071ef73c0c1fd              # double 8.2225300000000008
	.quad	0x4022d2a172abef07              # double 9.4113880000000005
	.quad	0x3ff45958969a0ad9              # double 1.2718130000000001
	.quad	0x4010f5332acfb763              # double 4.2394530000000001
	.quad	0x4012009bb6aa4b99              # double 4.5005940000000004
	.quad	0x401e47e9531550ca              # double 7.5702259999999999
	.quad	0x4012ca1be2b4959e              # double 4.6973719999999997
	.quad	0x4016788a8b08dd1e              # double 5.6177159999999997
	.quad	0x400d9cc2938de6de              # double 3.701543
	.quad	0x401e6359bc33f855              # double 7.5970219999999999
	.quad	0x4017cf51efb6dca0              # double 5.9524609999999996
	.quad	0x400b99a6b50b0f28              # double 3.4500250000000001
	.quad	0x40062e0d23d4f15e              # double 2.7724859999999998
	.quad	0x4007ee1719f7f8cb              # double 2.9912550000000002
	.quad	0x401bed06fef7c244              # double 6.9814720000000001
	.quad	0x4009bb152f3c2dae              # double 3.2163490000000001
	.quad	0x4000ad70e6f2e8c0              # double 2.0846879999999999
	.quad	0x4015ae2478854cdb              # double 5.4200609999999996
	.quad	0x400e19029ae4f334              # double 3.7622119999999999
	.quad	0x400b4b6b6e0d23d5              # double 3.411826
	.quad	0x4013af06705c896e              # double 4.9209230000000002
	.quad	0x3ff3524399b2c40d              # double 1.207584
	.quad	0x40158c7e28240b78              # double 5.3872
	.quad	0x401a0f9a06a6e32e              # double 6.5152359999999998
	.quad	0x3ff2fa96d4c33b54              # double 1.1861790000000001
	.quad	0x401d155ffe6d58c9              # double 7.2708740000000001
	.quad	0x40064b2fa93af74d              # double 2.7867120000000001
	.quad	0x400156a487336588              # double 2.167306
	.quad	0x3fc6195464dc22ab              # double 0.172648
	.quad	0x3fd126cc1ca3a4b5              # double 0.26799299999999998
	.quad	0x4017316a48733659              # double 5.7982570000000004
	.quad	0x401bab9baa1511e0              # double 6.917586
	.quad	0x4020b1335d249e45              # double 8.346095
	.quad	0x402333691212513b              # double 9.6004109999999993
	.quad	0x3ff2d3c46d82ba5a              # double 1.176701
	.quad	0x400671159c497742              # double 2.8052169999999998
	.quad	0x400a723571d1d474              # double 3.3057660000000002
	.quad	0x3ff393e707e175d1              # double 1.2236089999999999
	.quad	0x401bc6a3bddfca00              # double 6.9439840000000004
	.quad	0x40193e1d6494d50f              # double 6.3106590000000002
	.quad	0x4021a80abf76a2f5              # double 8.8282070000000008
	.quad	0x40212fd8cf398e97              # double 8.593451
	.quad	0x4018c0ca600b0293              # double 6.1882720000000004
	.quad	0x4014d04816f0068e              # double 5.2034000000000002
	.quad	0x4023831a4bdba0a5              # double 9.7560599999999997
	.quad	0x400a8dd1e53a81dc              # double 3.319248
	.quad	0x3ffc46bce8533b10              # double 1.7672699999999999
	.quad	0x401d67f51efb6dca              # double 7.351521
	.quad	0x4020e70e90bc7b46              # double 8.4512830000000001
	.quad	0x3feb1f4906034f40              # double 0.84756900000000002
	.quad	0x40142d2f1a9fbe77              # double 5.0441250000000002
	.quad	0x401a63c4f3ba7760              # double 6.5974310000000003
	.quad	0x402007c4c165907e              # double 8.0151730000000008
	.quad	0x400fd404ea4a8c15              # double 3.9785249999999999
	.quad	0x40031a4acf312b1b              # double 2.3878379999999999
	.quad	0x401ee84f8f8a4c1f              # double 7.7268660000000002
	.quad	0x401c1d8be7296f65              # double 7.0288539999999999
	.quad	0x4018d5019f3c70ca              # double 6.2080140000000004
	.quad	0x4013017acc4ef88c              # double 4.7514450000000004
	.quad	0x4017c46bacf74470              # double 5.9418170000000003
	.quad	0x401bcf15e7c8d196              # double 6.9522320000000004
	.quad	0x4010b85553ef6b5d              # double 4.1800129999999998
	.quad	0x4004c51fc4c16590              # double 2.5962519999999998
	.quad	0x4023200eae18ac9f              # double 9.5626119999999996
	.quad	0x401ccd759ee88df3              # double 7.2006439999999996
	.quad	0x3fec1fbe76c8b439              # double 0.87887499999999996
	.quad	0x40160c64fdb09a67              # double 5.5121039999999999
	.quad	0x402314eb9a176ddb              # double 9.5408600000000003
	.quad	0x40144cb9ecf63800              # double 5.0749279999999999
	.quad	0x401cc3e6c4c5974e              # double 7.1913099999999996
	.quad	0x3ffc4bfe3b03e20d              # double 1.768553
	.quad	0x401ad26cc1ca3a4b              # double 6.7054929999999997
	.quad	0x4010f5d9e40c8473              # double 4.2400890000000002
	.quad	0x40002e043a2163fe              # double 2.0224690000000001
	.quad	0x402393ab21815a08              # double 9.7884150000000005
	.quad	0x402084ef0281ba80              # double 8.2596360000000004
	.quad	0x4008725aab474107              # double 3.0558369999999999
	.quad	0x3ff57f609dcf8940              # double 1.3435980000000001
	.quad	0x401640752da98677              # double 5.5629470000000003
	.quad	0x402099dba908a266              # double 8.3005040000000001
	.quad	0x40121904b3c3e74b              # double 4.524432
	.quad	0x4023561f18c9fb61              # double 9.6682059999999996
	.quad	0x40085524399b2c41              # double 3.0415730000000001
	.quad	0x3fecf763e4abe6a3              # double 0.90519899999999998
	.quad	0x401481dd5d3dc8b8              # double 5.1268209999999996
	.quad	0x401ea72a7bd48cb5              # double 7.6632480000000002
	.quad	0x40233365cb35f3d8              # double 9.6003860000000003
	.quad	0x401c9635e74299d9              # double 7.1466900000000004
	.quad	0x4018ea52263d816b              # double 6.2288290000000002
	.quad	0x4012e1df3300de4c              # double 4.7205779999999997
	.quad	0x4022e432a8c9b845              # double 9.4456989999999994
	.quad	0x3ff4cdeb0fadf2ed              # double 1.300273
	.quad	0x4021d46cb966be7b              # double 8.914892
	.quad	0x4014161b2a27f1b7              # double 5.0215880000000004
	.quad	0x3ff46b5a20ddc619              # double 1.2762089999999999
	.quad	0x4004a79b34a44c7b              # double 2.581839
	.quad	0x4020f8fd9fd36f7e              # double 8.4863099999999996
	.quad	0x40015606b7aa25d9              # double 2.1670050000000001
	.quad	0x3fea66d7a56de332              # double 0.82505399999999995
	.quad	0x3fef957470eb24a7              # double 0.98699400000000003
	.quad	0x401374fbdad7518b              # double 4.864242
	.quad	0x40122a48f96e1587              # double 4.5412939999999997
	.quad	0x4021a6c8f7553693              # double 8.8257519999999996
	.quad	0x4019245e9185cee1              # double 6.2855169999999996
	.quad	0x4007fdaf8df7a4e8              # double 2.9988700000000001
	.quad	0x402158a5accd5305              # double 8.6731390000000008
	.quad	0x401b8517a46173b8              # double 6.8799729999999997
	.quad	0x401cec1a048e043a              # double 7.2305679999999999
	.quad	0x3feca3d0bfa09460              # double 0.89499700000000004
	.quad	0x401dad2806af46aa              # double 7.419098
	.quad	0x40102e935b91f70e              # double 4.0454840000000001
	.quad	0x400ba3e425aee632              # double 3.455025
	.quad	0x401cdd76ee73e682              # double 7.2162740000000003
	.quad	0x401bc8d002e23290              # double 6.9461060000000003
	.quad	0x400533dd97f62b6b              # double 2.650325
	.quad	0x40102b688bda9436              # double 4.0423910000000003
	.quad	0x401153b29a1b9f99              # double 4.3317360000000003
	.quad	0x4021c5490e66cb10              # double 8.8853229999999996
	.quad	0x3fd13b0c4588a04d              # double 0.269229
	.quad	0x40126dd76683c298              # double 4.6072670000000002
	.quad	0x40189c8b43958106              # double 6.1528749999999999
	.quad	0x40044653868fd19a              # double 2.5343390000000001
	.quad	0x4022a31876188b11              # double 9.3185459999999996
	.quad	0x401b223571d1d474              # double 6.7834070000000004
	.quad	0x401ea5892684cf07              # double 7.6616559999999997
	.quad	0x4014f81cb46bacf7              # double 5.2422969999999998
	.quad	0x400027852f7f498c              # double 2.0192969999999999
	.quad	0x3ffc69a0ad8a1166              # double 1.7757879999999999
	.quad	0x401c1d7060bb2bbb              # double 7.0287490000000004
	.quad	0x3fe4877ee4e26d48              # double 0.64154
	.quad	0x4009650507a6bd6f              # double 3.1743260000000002
	.quad	0x402118a88effe2a4              # double 8.5481610000000003
	.quad	0x3ff0b5be5d9e40c8              # double 1.0443709999999999
	.quad	0x401d5bbb1f255f35              # double 7.3395809999999999
	.quad	0x3fde4189374bc6a8              # double 0.47275
	.quad	0x402148b04ab606b8              # double 8.6419700000000006
	.quad	0x3ffa76deb95e5aff              # double 1.654021
	.quad	0x4018e5c6c11a1123              # double 6.2243909999999998
	.quad	0x4015a589efd86a90              # double 5.4116590000000002
	.quad	0x400aca0c282c6ef4              # double 3.3486560000000001
	.quad	0x3fef0ae536501e26              # double 0.97008000000000005
	.quad	0x400adf36ac647779              # double 3.3589910000000001
	.quad	0x40228f6d7625204b              # double 9.280132
	.quad	0x40025fc5479d4d83              # double 2.2967629999999999
	.quad	0x40029b3743632c1f              # double 2.3257889999999999
	.quad	0x4023fdd701d9f4d3              # double 9.9957809999999991
	.quad	0x40223fba6698bb4d              # double 9.1244689999999995
	.quad	0x4020875e6362a5e8              # double 8.2643920000000008
	.quad	0x40228a9e2bcf91a3              # double 9.2707379999999997
	.quad	0x3ffc6a411c2a0232              # double 1.775941
	.quad	0x40233554b8bef8cf              # double 9.6041620000000005
	.quad	0x4022ea39e6ab9b24              # double 9.4574730000000002
	.quad	0x40231529dc725c3e              # double 9.5413350000000001
	.quad	0x4022a6a8b8f14db6              # double 9.3255060000000007
	.quad	0x401616390c9107fb              # double 5.5217020000000003
	.quad	0x4023da7ef9db22d1              # double 9.9267500000000001
	.quad	0x40220d4845132f88              # double 9.0259420000000006
	.quad	0x3fda3508f648c719              # double 0.40948699999999999
	.quad	0x401e8bf50e347629              # double 7.6366769999999997
	.quad	0x4016bcc3e3193f6c              # double 5.6843409999999999
	.quad	0x40119a6c1a048e04              # double 4.4008029999999998
	.quad	0x40232ce50c5eb314              # double 9.5876850000000004
	.quad	0x40234f075b3e1438              # double 9.6543530000000004
	.quad	0x40222d4f9c1f85d7              # double 9.0884979999999995
	.quad	0x401f99f666234a88              # double 7.900354
	.quad	0x4002e121682f9442              # double 2.3599269999999999
	.quad	0x4008a15d2d01c0ca              # double 3.0787909999999998
	.quad	0x401976bf01322f27              # double 6.3659629999999998
	.quad	0x3fed6d5cfaacd9e8              # double 0.91959999999999997
	.quad	0x400e73dc054ef45a              # double 3.8065720000000001
	.quad	0x4011450f840181e0              # double 4.3174419999999998
	.quad	0x4019716440f23897              # double 6.3607339999999999
	.quad	0x4019b4ef459d9903              # double 6.4266940000000004
	.quad	0x401b10ae536501e2              # double 6.7662899999999997
	.quad	0x402006e7c49fd7a1              # double 8.0134869999999996
	.quad	0x3fe902adc4c9c90c              # double 0.78157699999999996
	.quad	0x3fe931704ff4341a              # double 0.78728500000000001
	.quad	0x400ca28cbd1244a6              # double 3.5793699999999999
	.quad	0x4000d9335d249e45              # double 2.106055
	.quad	0x402294ce3de6149c              # double 9.2906359999999992
	.quad	0x4002f436b8f9b131              # double 2.3692449999999998
	.quad	0x4021065cf67b1c00              # double 8.5124279999999999
	.quad	0x400b31633482be8c              # double 3.3991150000000001
	.quad	0x40217e3da2f8bdec              # double 8.7465639999999993
	.quad	0x3fb6e008e9b38d61              # double 0.089356000000000005
	.quad	0x4022308c3f3e0371              # double 9.0948200000000003
	.quad	0x40221910a137f38c              # double 9.0489549999999994
	.quad	0x3fabe9a6f826edab              # double 0.054517000000000003
	.quad	0x401fdcd8dbcec850              # double 7.9656710000000004
	.quad	0x3fd7c5eb313be22e              # double 0.37145499999999998
	.quad	0x4015aeb56fb8f57f              # double 5.4206139999999996
	.quad	0x3ff690a88effe2a4              # double 1.410317
	.quad	0x401fe72799a1fd15              # double 7.9757369999999996
	.quad	0x3fedec13b9f127f6              # double 0.93506800000000001
	.quad	0x4022dbb8c32a8c9c              # double 9.4291440000000008
	.quad	0x40163735c182ecaf              # double 5.5539160000000001
	.quad	0x3ff7972367e414e8              # double 1.474399
	.quad	0x3feb9f8e3ac0c62e              # double 0.86322699999999997
	.quad	0x3ffe6ca9ac365450              # double 1.901529
	.quad	0x3feae39d5e4a3832              # double 0.84028499999999995
	.quad	0x401e1b3aabcd78c4              # double 7.5265909999999998
	.quad	0x40181a11ec918e32              # double 6.0254589999999997
	.quad	0x3ffa6dd377e1b8ed              # double 1.651813
	.quad	0x3ffd3ec2480e8c8b              # double 1.8278220000000001
	.quad	0x4013b6b9c304ccee              # double 4.9284429999999997
	.quad	0x4009a90b417ca212              # double 3.207541
	.quad	0x4005436da87a072d              # double 2.657924
	.quad	0x400f2a465a57646b              # double 3.895642
	.quad	0x400c78a8f3a9b068              # double 3.558916
	.quad	0x401b99780baa582e              # double 6.8998720000000002
	.quad	0x4003a2699c7bcc29              # double 2.4543029999999999
	.quad	0x4020c84901d19158              # double 8.3911820000000006
	.quad	0x4010df2778140dd4              # double 4.217924
	.quad	0x401aaa0cae642bfa              # double 6.6660640000000004
	.quad	0x401e35f633ce63a6              # double 7.5526970000000002
	.quad	0x40078ac29bf162ae              # double 2.9427539999999999
	.quad	0x3ffc8c9fb6134ce4              # double 1.784332
	.quad	0x400e7cb5781c7150              # double 3.8108930000000001
	.quad	0x40238987c6327ed8              # double 9.7686139999999994
	.quad	0x40191b662fdfc19c              # double 6.2767569999999999
	.quad	0x401f39628cbd1245              # double 7.8060400000000003
	.quad	0x3fee5d206c8711d8              # double 0.94886800000000004
	.quad	0x402117b58d1526d9              # double 8.5463070000000005
	.quad	0x40227024d4cb9ecf              # double 9.2190309999999993
	.quad	0x402190b5675579af              # double 8.7826339999999998
	.quad	0x3ff6a4dd2f1a9fbe              # double 1.4152499999999999
	.quad	0x4020df03afb7e910              # double 8.435575
	.quad	0x4019afcb4f1e4b45              # double 6.4216740000000003
	.quad	0x4018b495e17e34b9              # double 6.1763529999999998
	.quad	0x40229aa4fca42aed              # double 9.3020399999999999
	.quad	0x4012b3465625a683              # double 4.6750730000000003
	.quad	0x4020e7705857afea              # double 8.4520289999999996
	.quad	0x4022d83dddb1209f              # double 9.4223470000000002
	.quad	0x4011e4751ce28ed6              # double 4.4731030000000001
	.quad	0x3fd513f4a98aa865              # double 0.329343
	.quad	0x3fd65321e603d578              # double 0.34882400000000002
	.quad	0x400cd69f4906034f              # double 3.6047959999999999
	.quad	0x401887219220ff54              # double 6.131964
	.quad	0x401c41b97353b4b3              # double 7.064184
	.quad	0x401569652bd3c361              # double 5.3529249999999999
	.quad	0x4011d4e618ce2d1f              # double 4.4579089999999999
	.quad	0x401c6a95c853c148              # double 7.1040869999999998
	.quad	0x401743e8dda48b65              # double 5.8163179999999999
	.quad	0x4023d1f44d445671              # double 9.9100669999999997
	.quad	0x400cef53c579f234              # double 3.6168589999999998
	.quad	0x400f4d7add15f02c              # double 3.9128319999999999
	.quad	0x40041b395c422036              # double 2.513293
	.quad	0x3ffac2d59d55e6bc              # double 1.6725669999999999
	.quad	0x4012ac08fa7a8501              # double 4.6680029999999997
	.quad	0x40201fe77d523b36              # double 8.0623129999999996
	.quad	0x400eea24463065f9              # double 3.8643269999999998
	.quad	0x3ff45a87a072d1af              # double 1.2721020000000001
	.quad	0x4020632fec56d5d0              # double 8.1937250000000006
	.quad	0x400e93f077ccc038              # double 3.8222360000000002
	.quad	0x4021279aae6c8f75              # double 8.5773519999999994
	.quad	0x401f6acd5b6805a3              # double 7.8542990000000001
	.quad	0x40004f6837f7be12              # double 2.0387729999999999
	.quad	0x3ff07821af7d30ad              # double 1.0293289999999999
	.quad	0x4009c4b7f5a5332b              # double 3.2210540000000001
	.quad	0x4021c9c25d074214              # double 8.8940610000000006
	.quad	0x400ccd1a65061416              # double 3.6001479999999999
	.quad	0x402336872b020c4a              # double 9.6065000000000005
	.quad	0x3fda44f5d35653ca              # double 0.41045900000000002
	.quad	0x3ffe6d9ad85dfa87              # double 1.901759
	.quad	0x400276c9c0a8d21c              # double 2.3080020000000001
	.quad	0x4021e4ccee5abc0e              # double 8.9468759999999996
	.quad	0x4020c953586ca8a0              # double 8.3932140000000004
	.quad	0x40219cce5f7403de              # double 8.8062620000000003
	.quad	0x4000a7dd44135547              # double 2.0819649999999998
	.quad	0x400b0a66dbd72bcb              # double 3.3800789999999998
	.quad	0x40043694467381d8              # double 2.5266500000000001
	.quad	0x401d921187e7c06e              # double 7.3926449999999999
	.quad	0x4018bc868b9fdbd3              # double 6.184107
	.quad	0x4020d9309c7ffde7              # double 8.4241989999999998
	.quad	0x4000415336deb95e              # double 2.0318969999999998
	.quad	0x4003a576cce5f740              # double 2.4557929999999999
	.quad	0x3ffd2d234eb9a177              # double 1.82352
	.quad	0x3ff7d62281344806              # double 1.489779
	.quad	0x401e5a80cf9e3865              # double 7.5883820000000001
	.quad	0x4011c4927913e814              # double 4.4419649999999997
	.quad	0x40160aa60913a4f8              # double 5.5103989999999996
	.quad	0x4005fae46cfc829d              # double 2.747506
	.quad	0x4012ea647fdc5932              # double 4.7288990000000002
	.quad	0x401ae8a3f8982cb2              # double 6.7271879999999999
	.quad	0x40068a1405708249              # double 2.817421
	.quad	0x3fe43b7f9d6f1130              # double 0.63226300000000002
	.quad	0x400aa17a89331a09              # double 3.3288470000000001
	.quad	0x4017edf3b645a1cb              # double 5.9823750000000002
	.quad	0x40083463cfb3311a              # double 3.0255809999999999
	.quad	0x400d89c6f36ef805              # double 3.6922739999999998
	.quad	0x401c47c7c5260f5e              # double 7.0700979999999998
	.quad	0x401fc4e4c942d491              # double 7.942279
	.quad	0x400ec141e9af5ba3              # double 3.8443640000000001
	.quad	0x3ffe47075b3e1438              # double 1.8923410000000001
	.quad	0x401192af1455219b              # double 4.3932460000000004
	.quad	0x4008ef6c69b5a640              # double 3.1169060000000002
	.quad	0x40039f212d773190              # double 2.4527000000000001
	.quad	0x3ff4c95f2452c5a0              # double 1.2991630000000001
	.quad	0x40200cdea033e78e              # double 8.0251359999999998
	.quad	0x40212e892253111f              # double 8.5908899999999999
	.quad	0x401b9b8887229e90              # double 6.9018879999999996
	.quad	0x40073fff79c842fa              # double 2.9062489999999999
	.quad	0x4022f08377186552              # double 9.4697530000000008
	.quad	0x4020e420f6f08cc5              # double 8.4455639999999992
	.quad	0x400724894c447c31              # double 2.8928400000000001
	.quad	0x401d229a5ebb773a              # double 7.283792
	.quad	0x4008d460aa64c2f8              # double 3.1036999999999999
	.quad	0x401a20ee49f51698              # double 6.532159
	.quad	0x3ff9105c03361566              # double 1.5664940000000001
	.quad	0x40131dd69d30270f              # double 4.7791389999999998
	.quad	0x3fe841b10fd7e458              # double 0.758019
	.quad	0x40225d13b5bf6a0e              # double 9.1817910000000005
	.quad	0x401054ad794a6eb9              # double 4.0826929999999999
	.quad	0x400c306ab14ec205              # double 3.523641
	.quad	0x4015b3415b1422cd              # double 5.4250540000000003
	.quad	0x40114898b2e9ccb8              # double 4.3208950000000002
	.quad	0x401268b3b320535d              # double 4.6022480000000003
	.quad	0x3ff4773083558a76              # double 1.279099
	.quad	0x40235e8986fcdee3              # double 9.6846429999999994
	.quad	0x3faf3a365cb35f3d              # double 0.060990999999999997
	.quad	0x40037159c4977425              # double 2.4303469999999998
	.quad	0x401bcc3bd5992429              # double 6.9494470000000002
	.quad	0x4006965d3996fa83              # double 2.82342
	.quad	0x401dcdd76683c298              # double 7.4510170000000002
	.quad	0x4001068cac4b4d05              # double 2.1281979999999998
	.quad	0x402323890d5a5b96              # double 9.5694049999999997
	.quad	0x40076a5accd53049              # double 2.9269310000000002
	.quad	0x4021cbf0bae89eba              # double 8.8983209999999993
	.quad	0x401c2e468cac4b4d              # double 7.045191
	.quad	0x4022f0a265f0f5a1              # double 9.4699889999999999
	.quad	0x3fd3966be7afa722              # double 0.30605599999999999
	.quad	0x40208519157abb88              # double 8.259957
	.quad	0x400d81719f7f8ca8              # double 3.688205
	.quad	0x401cb2734f82f512              # double 7.1742679999999996
	.quad	0x402396323bbc6eb1              # double 9.7933520000000005
	.quad	0x3fe52d01c0ca600b              # double 0.661744
	.quad	0x401449cb6848beb6              # double 5.0720650000000003
	.quad	0x40043e82d7b634db              # double 2.5305230000000001
	.quad	0x401ab641b328b6d8              # double 6.6779849999999996
	.quad	0x4004a3cea6c1a049              # double 2.5799840000000001
	.quad	0x3fef59817b95a294              # double 0.97967599999999999
	.quad	0x4023c6111276fb09              # double 9.8868489999999997
	.quad	0x401cde7d566cf41f              # double 7.2172749999999999
	.quad	0x4022b1c560c7c0f4              # double 9.3472089999999994
	.quad	0x3fe71a21ea359360              # double 0.72194000000000003
	.quad	0x400ee573215fcc18              # double 3.8620359999999998
	.quad	0x4023818b93469942              # double 9.7530180000000009
	.quad	0x4008ecf63800218e              # double 3.115704
	.quad	0x40140804534bd76f              # double 5.0078290000000001
	.quad	0x4023b7722e1ac57e              # double 9.8582929999999998
	.quad	0x401a6fcefaa4766c              # double 6.6091879999999996
	.quad	0x3fd319695d91ab8f              # double 0.29842600000000002
	.quad	0x4023e0d349be8ff3              # double 9.9391119999999997
	.quad	0x4016b543f1c75819              # double 5.6770170000000002
	.quad	0x40203b1fab96f21f              # double 8.1154759999999992
	.quad	0x3ff7207f66e86c66              # double 1.4454340000000001
	.quad	0x3fd7dd26b723ee1c              # double 0.37287300000000001
	.quad	0x3ffbf92af9a8cdea              # double 1.748332
	.quad	0x4008e97a67a52ac7              # double 3.1140029999999999
	.quad	0x400b029e0a41a262              # double 3.3762780000000001
	.quad	0x4010433269df97ab              # double 4.0656220000000003
	.quad	0x40142e1ef73c0c20              # double 5.0450400000000002
	.quad	0x401f8c918e325d4a              # double 7.8872739999999997
	.quad	0x401eca9b499d0204              # double 7.6978580000000001
	.quad	0x401936ed6777079e              # double 6.3036399999999997
	.quad	0x40139950331e3a7e              # double 4.8997200000000003
	.quad	0x4021da9bf162ae4b              # double 8.926971
	.quad	0x4006b2a5a469d734              # double 2.8372299999999999
	.quad	0x4011c32e3821af7d              # double 4.4406059999999998
	.quad	0x40200ba3443d46b2              # double 8.0227299999999993
	.quad	0x400c080e06530058              # double 3.503933
	.quad	0x40142294dd72367e              # double 5.0337709999999998
	.quad	0x402179c193b3a68b              # double 8.7378049999999998
	.quad	0x401550232096787d              # double 5.3282590000000001
	.quad	0x401f49c065b63d3e              # double 7.8220229999999997
	.quad	0x40173cf9a06a6e33              # double 5.8095460000000001
	.quad	0x401d98bf3bea91da              # double 7.3991670000000003
	.quad	0x401970192a737111              # double 6.3594710000000001
	.quad	0x400f3f8d2e514c23              # double 3.906031
	.quad	0x40131425f202107b              # double 4.7696759999999996
	.quad	0x4019641b75a74c0a              # double 6.3477610000000002
	.quad	0x3ff29b20b8066c2b              # double 1.162873
	.quad	0x3ffb2d8f4f93bc0a              # double 1.698623
	.quad	0x400fc7724fa8b4c0              # double 3.9723860000000002
	.quad	0x3fff5a72a7bd48cb              # double 1.9595819999999999
	.quad	0x40178d7a99fa11a9              # double 5.8881629999999996
	.quad	0x4010a307f23cc8de              # double 4.1592099999999999
	.quad	0x4011fff64cf8d717              # double 4.4999630000000002
	.quad	0x40191a5ce5b4245f              # double 6.2757449999999997
	.quad	0x402049e12a51e322              # double 8.1442960000000006
	.quad	0x4013cecc814d727a              # double 4.9519520000000004
	.quad	0x4013d3b29a1b9f99              # double 4.9567360000000003
	.quad	0x4015074c4cdfaca3              # double 5.2571269999999997
	.quad	0x402355da6a444178              # double 9.6676819999999992
	.quad	0x3ff2be43675ddd2b              # double 1.171451
	.quad	0x4015486940357a35              # double 5.3207139999999997
	.quad	0x40098836eb4e9814              # double 3.1915110000000002
	.quad	0x3ff4ba0f9096bb99              # double 1.295425
	.quad	0x4016753005814941              # double 5.6144410000000002
	.quad	0x4011b643cc07aaef              # double 4.4279929999999998
	.quad	0x4008a0a9de8b3b32              # double 3.078449
	.quad	0x401eb64b2314013f              # double 7.6780210000000002
	.quad	0x4023548c2e770bd0              # double 9.6651319999999998
	.quad	0x4014a6c2acb85a4f              # double 5.162852
	.quad	0x3fe07f609dcf8940              # double 0.51554900000000004
	.quad	0x40085240fa9c12f1              # double 3.0401630000000002
	.quad	0x3ff794cfd08d4bad              # double 1.4738309999999999
	.quad	0x4020f73c70c996b7              # double 8.4828829999999993
	.quad	0x40128ed4e4c942d5              # double 4.6394840000000004
	.quad	0x4003ba14488c60cc              # double 2.465859
	.quad	0x40229b5e310dbf05              # double 9.3034529999999993
	.quad	0x4017bbe76c8b4396              # double 5.9335000000000004
	.quad	0x401222bc2fc69729              # double 4.5339210000000003
	.quad	0x3f74f0520d130dfa              # double 0.0051120000000000002
	.quad	0x40101f8594291750              # double 4.0307829999999996
	.quad	0x40218636d22424a2              # double 8.7621369999999992
	.quad	0x400bb79d0a67620f              # double 3.464655
	.quad	0x402320db8bac710d              # double 9.5641750000000005
	.quad	0x3feb3f61aa3f034b              # double 0.85148699999999999
	.quad	0x400e8514c22ee419              # double 3.814981
	.quad	0x3fbeacb85a4f00ef              # double 0.119823
	.quad	0x400579bc33f85511              # double 2.6844410000000001
	.quad	0x4014aa4ce8101f32              # double 5.166309
	.quad	0x40077fc9ff92f2b6              # double 2.9373969999999998
	.quad	0x401e5172abef06b3              # double 7.5795389999999995
	.quad	0x400195db3397dd01              # double 2.198172
	.quad	0x3ff96018a43bb40b              # double 1.585961
	.quad	0x4018fafbc1acde1a              # double 6.245101
	.quad	0x40236e9ec2ce464a              # double 9.7160550000000008
	.quad	0x3ff8be52157689ca              # double 1.546465
	.quad	0x402265eedcc20d56              # double 9.1990879999999997
	.quad	0x4021ed1351159c49              # double 8.9630379999999992
	.quad	0x400f24fdb09a671f              # double 3.893062
	.quad	0x40185a96d4c33b54              # double 6.0884660000000004
	.quad	0x401ff898b2e9ccb8              # double 7.9927700000000001
	.quad	0x401662c7fbacb429              # double 5.5964660000000004
	.quad	0x40128aa3ad18d25f              # double 4.6353900000000001
	.quad	0x40231bf20a73f749              # double 9.5545810000000006
	.quad	0x3fe23de6149c6f37              # double 0.57005600000000001
	.quad	0x3fe8b5cbff47735c              # double 0.77219199999999998
	.quad	0x400575e4a3832767              # double 2.6825649999999999
	.quad	0x4008cf1800a7c5ac              # double 3.1011199999999999
	.quad	0x401aded740c4156e              # double 6.7176179999999999
	.quad	0x401bd74ff865d7cb              # double 6.9602659999999998
	.quad	0x4012e7dbb16c1e36              # double 4.7264239999999997
	.quad	0x40001de58e64b231              # double 2.0145979999999999
	.quad	0x40122cd6c2efd439              # double 4.5437880000000002
	.quad	0x4014a1b4bb5e0f80              # double 5.1579160000000002
	.quad	0x3fec9e215336deb9              # double 0.89430299999999996
	.quad	0x3fe524052d666a98              # double 0.66064699999999998
	.quad	0x40130a67e846a5d7              # double 4.7601620000000002
	.quad	0x401c83065f9591cd              # double 7.1279539999999999
	.quad	0x400e01c3efae7925              # double 3.7508620000000001
	.quad	0x401fc9014b599aa6              # double 7.946294
	.quad	0x4016b360d0247022              # double 5.6751740000000002
	.quad	0x401dfc8abd5dc400              # double 7.4966229999999996
	.quad	0x3ff480ebedfa43fe              # double 1.2814749999999999
	.quad	0x402002f0e0a84be4              # double 8.0057439999999999
	.quad	0x401253a42f1ed17c              # double 4.5816809999999997
	.quad	0x401e2f51697f1f9b              # double 7.5462090000000001
	.quad	0x4018fe67d77fae36              # double 6.248443
	.quad	0x4021e9680e065300              # double 8.9558719999999994
	.quad	0x4023974bc6a7ef9e              # double 9.7955000000000005
	.quad	0x4023dd12ec6bce85              # double 9.9317849999999996
	.quad	0x401c89702e6644d8              # double 7.1342169999999996
	.quad	0x40183d27807789a4              # double 6.0597209999999997
	.quad	0x401ba60c7c0f4517              # double 6.9121569999999997
	.quad	0x4014274cd31769a9              # double 5.0383789999999999
	.quad	0x400f2355043e5322              # double 3.892252
	.quad	0x401addc3bd599243              # double 6.7165670000000004
	.quad	0x4017fe410b630a91              # double 5.9982949999999997
	.quad	0x4021bdc8b86b15f9              # double 8.8706720000000008
	.quad	0x401a1ee1bd1ed9e0              # double 6.5301580000000001
	.quad	0x3ffd7d5992428d43              # double 1.8431029999999999
	.quad	0x402013c7b45f17be              # double 8.0386330000000008
	.quad	0x40237ed959a30985              # double 9.7477520000000001
	.quad	0x4021f6a18372e6a7              # double 8.9817009999999993
	.quad	0x3ffdd9392189bd84              # double 1.8655330000000001
	.quad	0x4015f24d099e0e73              # double 5.4866219999999997
	.quad	0x4022362f9ca5bd94              # double 9.1058319999999994
	.quad	0x3fec99d2391d5800              # double 0.89377700000000004
	.quad	0x3fe0ca9ac36544fe              # double 0.52473199999999998
	.quad	0x3ffbc45564b662fe              # double 1.735433
	.quad	0x4002dee1bd1ed9e0              # double 2.3588290000000001
	.quad	0x40156f6555c52e73              # double 5.3587850000000001
	.quad	0x40215a04f2ae07e6              # double 8.6758190000000006
	.quad	0x400ebe33269df97b              # double 3.8428710000000001
	.quad	0x4023e180f55de58e              # double 9.9404369999999993
	.quad	0x4022cfcf5f4e4431              # double 9.4058790000000005
	.quad	0x401f07082491afc0              # double 7.7568669999999997
	.quad	0x3ff3be4ef0281ba8              # double 1.233962
	.quad	0x401eed6451b93038              # double 7.7318280000000001
	.quad	0x40056602c9081c2e              # double 2.6748099999999999
	.quad	0x3ffd9a554b8bef8d              # double 1.850179
	.quad	0x401f6b042528ae75              # double 7.854508
	.quad	0x3ffe025bfad29995              # double 1.8755759999999999
	.quad	0x4021abdee78183f9              # double 8.8356849999999998
	.quad	0x4021e562bf11f927              # double 8.9480190000000004
	.quad	0x40201503b81b64e0              # double 8.0410439999999994
	.quad	0x4001b2428d434a02              # double 2.2120410000000001
	.quad	0x4012bb8cb8e086be              # double 4.683154
	.quad	0x4012b4662bae03b4              # double 4.6761710000000001
	.quad	0x4008cc0053e2d624              # double 3.0996100000000002
	.quad	0x3fb94df8b1572581              # double 0.098846000000000003
	.quad	0x4023015e9e1b089a              # double 9.502675
	.quad	0x401d1fea8112ba17              # double 7.2811680000000001
	.quad	0x4013320b8066c2ad              # double 4.7988720000000002
	.quad	0x4021bc308feac42f              # double 8.8675580000000007
	.quad	0x401c017763e4abe7              # double 7.0014320000000003
	.quad	0x401c6163779e9d0f              # double 7.0951060000000004
	.quad	0x4008a46173b85e81              # double 3.0802640000000001
	.quad	0x4005916c1e364bec              # double 2.6960069999999998
	.quad	0x4013ff7c243dccea              # double 4.9994969999999999
	.quad	0x4018f2ea960b6fa0              # double 6.2372230000000002
	.quad	0x400b9d8f0c77dd87              # double 3.4519329999999999
	.quad	0x401db71971c10d7c              # double 7.4288080000000001
	.quad	0x4021c9e6cd29131f              # double 8.8943390000000004
	.quad	0x402312795703f2d4              # double 9.5360820000000003
	.quad	0x40155dce7cd03537              # double 5.3416079999999999
	.quad	0x40224f6bc1eff9f8              # double 9.1551189999999991
	.quad	0x4021312c27a63737              # double 8.5960400000000003
	.quad	0x4000ee5b4245f5ae              # double 2.1163850000000002
	.quad	0x3ff0a6d373affb05              # double 1.040729
	.quad	0x400ed7c99ae924f2              # double 3.8553649999999999
	.quad	0x402399f926c7eae6              # double 9.8007290000000005
	.quad	0x3fd009635610adcd              # double 0.25057299999999999
	.quad	0x4014626527a20579              # double 5.0960890000000001
	.quad	0x401d2f2becedd484              # double 7.2960659999999997
	.quad	0x40148a1511dffc54              # double 5.1348459999999996
	.quad	0x4016aff8ec0f8833              # double 5.6718479999999998
	.quad	0x40058941c8216c61              # double 2.6920199999999999
	.quad	0x401f03ccd0fe8ab5              # double 7.753711
	.quad	0x4002fc5718eb8950              # double 2.3732129999999998
	.quad	0x400d23f359ff4fd7              # double 3.6425540000000001
	.quad	0x3ff4b8982cb20fb2              # double 1.295067
	.quad	0x40234062f5989df1              # double 9.6257549999999998
	.quad	0x40142da98676a726              # double 5.0445919999999997
	.quad	0x401a6c49ba5e353f              # double 6.6057499999999996
	.quad	0x40217709b738e6d1              # double 8.7324959999999994
	.quad	0x401707eed45e9186              # double 5.7577470000000002
	.quad	0x401ddc4b4d056c51              # double 7.4651310000000004
	.quad	0x401af54195cc857f              # double 6.7395079999999998
	.quad	0x402378127b2cc708              # double 9.7345159999999992
	.quad	0x401911a3b14a9047              # double 6.267226
	.quad	0x40238b0c67168f8e              # double 9.7715789999999991
	.quad	0x4014ac011d3671ac              # double 5.1679729999999999
	.quad	0x3fe678ec0f883340              # double 0.70226100000000002
	.quad	0x3ffe21ae70c1333c              # double 1.8832230000000001
	.quad	0x401f398f605ab3ab              # double 7.8062110000000002
	.quad	0x401e5be6e6538690              # double 7.5897480000000002
	.quad	0x401c1a3161a1db87              # double 7.0255789999999996
	.quad	0x400c129d40ee06d9              # double 3.5090889999999999
	.quad	0x400cd0aa21a719b5              # double 3.6018870000000001
	.quad	0x401e5539756c93a7              # double 7.5832269999999999
	.quad	0x4013682dbe7f2c30              # double 4.851737
	.quad	0x400311569f490603              # double 2.3834659999999999
	.quad	0x4021156605ee568a              # double 8.5417939999999994
	.quad	0x40210c0fa9c12f0a              # double 8.5235570000000003
	.quad	0x40112b44a1f08030              # double 4.2922539999999998
	.quad	0x4012b67903211cb0              # double 4.6781959999999998
	.quad	0x4015b1f7d73c9258              # double 5.4237970000000004
	.quad	0x4016e03c07ee0b0b              # double 5.718979
	.quad	0x4023d12018a43bb4              # double 9.9084479999999999
	.quad	0x400c20192a737111              # double 3.515673
	.quad	0x4020761bb05faebc              # double 8.2306799999999995
	.quad	0x3fd71c36976bc1f0              # double 0.361097
	.quad	0x3fe5fb0d51f81a58              # double 0.68689599999999995
	.quad	0x401cd918a009f623              # double 7.212008
	.quad	0x4016cf5232d2bb23              # double 5.7024619999999997
	.quad	0x40146fbd6a593a2e              # double 5.109121
	.quad	0x40210638c9752978              # double 8.5121520000000004
	.quad	0x400ec2aed1394318              # double 3.8450600000000001
	.quad	0x3ff04434e3369b9d              # double 1.0166519999999999
	.quad	0x400cc106ab14ec20              # double 3.5942509999999999
	.quad	0x400e8fa58f7121ab              # double 3.8201399999999999
	.quad	0x40198ef62f9ca5be              # double 6.3896110000000004
	.quad	0x40067e3e29307af2              # double 2.811642
	.quad	0x4023c3c9cd3e0bd4              # double 9.8823989999999994
	.quad	0x401754628027d88c              # double 5.8324069999999999
	.quad	0x4012e5154866a11f              # double 4.7237140000000002
	.quad	0x4004fa54c5543287              # double 2.6222319999999999
	.quad	0x3fe10726d04e618d              # double 0.53212300000000001
	.quad	0x401aa107746887a9              # double 6.6572550000000001
	.quad	0x40099ce2089e3433              # double 3.201603
	.quad	0x401e2d32830a0b1c              # double 7.5441380000000002
	.quad	0x4008dbc6eb0b7c35              # double 3.107313
	.quad	0x4011d5564b662fe0              # double 4.4583370000000002
	.quad	0x40236c0c62e4d1a6              # double 9.7110319999999994
	.quad	0x4023105f8d2e514c              # double 9.5319789999999997
	.quad	0x401fecaab8a5ce5b              # double 7.9811199999999997
	.quad	0x40171c5fbf83382e              # double 5.7777089999999998
	.quad	0x4008f8a86d71f362              # double 3.1214149999999998
	.quad	0x40162cdea033e78e              # double 5.5438179999999999
	.quad	0x400e8b45ae5ffa3c              # double 3.8180040000000002
	.quad	0x3fd5e86c6583e857              # double 0.34231099999999998
	.quad	0x401bb5f1bef49cf5              # double 6.9276799999999996
	.quad	0x400e79c6b0531983              # double 3.8094610000000002
	.quad	0x401a379bfdf7e804              # double 6.5543060000000004
	.quad	0x3ff0635610adcd2d              # double 1.0242519999999999
	.quad	0x4005c03254e6e222              # double 2.7188460000000001
	.quad	0x400e6e0114d2f5dc              # double 3.8037130000000001
	.quad	0x40013e37585be1a8              # double 2.1553789999999999
	.quad	0x40224d73eab367a1              # double 9.151275
	.quad	0x40213c898f605ab4              # double 8.6182370000000005
	.quad	0x3ff2cc3b0c4588a0              # double 1.1748609999999999
	.quad	0x3fff239713ad5bee              # double 1.9461889999999999
	.quad	0x401122263d816acf              # double 4.2833490000000003
	.quad	0x400e834a01abd1ab              # double 3.8141060000000002
	.quad	0x4018d7bdcf0307f2              # double 6.2106849999999998
	.quad	0x401f752e72da1230              # double 7.8644350000000003
	.quad	0x40183a4a48f96e16              # double 6.0569240000000004
	.quad	0x4023293a92a30553              # double 9.5805249999999997
	.quad	0x40219efdc9c4da90              # double 8.81053
	.quad	0x402130348f53c57a              # double 8.5941510000000001
	.quad	0x400ace075f6fd220              # double 3.3506
	.quad	0x4018faec8d5c7475              # double 6.2450429999999999
	.quad	0x402032d3c792d128              # double 8.0992719999999991
	.quad	0x4011c5b813016484              # double 4.443085
	.quad	0x402168548a9bcfd5              # double 8.7037700000000005
	.quad	0x401b377036c9c0a9              # double 6.8041390000000002
	.quad	0x3fd117225b749add              # double 0.26703700000000002
	.quad	0x4010ba3443d46b27              # double 4.1818400000000002
	.quad	0x4023693c254a3c64              # double 9.7055369999999996
	.quad	0x401951fcd24e160e              # double 6.3300660000000004
	.quad	0x4015e7221858bc5a              # double 5.4757160000000002
	.quad	0x402223aa369fcf3e              # double 9.0696580000000004
	.quad	0x4020b92ccf6be37e              # double 8.3616700000000002
	.quad	0x3fddc4007570c565              # double 0.465088
	.quad	0x400e6cd4aa10e022              # double 3.80314
	.quad	0x401194384ba0e842              # double 4.3947459999999996
	.quad	0x40054298cc144029              # double 2.657518
	.quad	0x400e49f51697f1fa              # double 3.7861120000000001
	.quad	0x401edbb7b6bb1290              # double 7.7145679999999999
	.quad	0x4002679aae6c8f75              # double 2.3005879999999999
	.quad	0x4010c5ebb7739f34              # double 4.193282
	.quad	0x4002b379fa97e133              # double 2.3376350000000001
	.quad	0x3fc1eedcc20d562a              # double 0.140102
	.quad	0x40131d96a6a0125a              # double 4.7788950000000003
	.quad	0x40226911ada76d98              # double 9.2052130000000005
	.quad	0x40218b1f46ed245b              # double 8.7717229999999997
	.quad	0x401ccadafd113837              # double 7.1981010000000003
	.quad	0x4021ccfede97d06c              # double 8.9003820000000004
	.quad	0x4021c7bb9496249a              # double 8.8901029999999999
	.quad	0x4020414f0520d131              # double 8.1275560000000002
	.quad	0x3fe8d2a411c2a023              # double 0.77571299999999999
	.quad	0x3fefbac4f7ec3548              # double 0.99154900000000001
	.quad	0x40219765ba6efc37              # double 8.7956979999999998
	.quad	0x401c8f9830e3cd9a              # double 7.1402289999999997
	.quad	0x4018871327243138              # double 6.1319090000000003
	.quad	0x4015e7414a4d2b2c              # double 5.475835
	.quad	0x401c5168f8e7ddca              # double 7.0795019999999997
	.quad	0x400b34b72c5197a2              # double 3.4007399999999999
	.quad	0x40103559f6ec5b08              # double 4.0521010000000004
	.quad	0x40127acf312b1b37              # double 4.6199310000000002
	.quad	0x401e2c679cc74b84              # double 7.5433640000000004
	.quad	0x3fd51af3a14cec42              # double 0.32977000000000001
	.quad	0x400727cc7d1bb491              # double 2.8944329999999998
	.quad	0x3ffba85553ef6b5d              # double 1.7285969999999999
	.quad	0x400e1f50e3476295              # double 3.7652909999999999
	.quad	0x40203df266ba493d              # double 8.1209900000000008
	.quad	0x3fe79986b9c304cd              # double 0.73749100000000001
	.quad	0x3ffa57d5a9eb2075              # double 1.646444
	.quad	0x401f68f47304039b              # double 7.8524950000000002
	.quad	0x40181e40852b4d8c              # double 6.0295430000000003
	.quad	0x40224fa7008a697b              # double 9.1555710000000001
	.quad	0x40136cc35ce18266              # double 4.8562139999999996
	.quad	0x3fd4ce0fc2eba27b              # double 0.325077
	.quad	0x40166c382a12f901              # double 5.605683
	.quad	0x3fca5ec3dab5c39c              # double 0.20601700000000001
	.quad	0x4010333721d53cde              # double 4.0500150000000001
	.quad	0x40104a0fd3b29a1c              # double 4.0723260000000003
	.quad	0x401f04195cc857f3              # double 7.7540029999999999
	.quad	0x40188845132f87ad              # double 6.133076
	.quad	0x401d6a8b8f14db59              # double 7.3540479999999997
	.quad	0x401b1f09528f190d              # double 6.7803089999999999
	.quad	0x40018e2b8c75c4a8              # double 2.1944189999999999
	.quad	0x4014e35a858793de              # double 5.2220250000000004
	.quad	0x401fdccf28c79f66              # double 7.9656339999999997
	.quad	0x3ff452a305532618              # double 1.2701750000000001
	.quad	0x400ba065b63d3e4f              # double 3.453319
	.quad	0x4002795f676ea423              # double 2.3092640000000002
	.quad	0x4017314b167ec786              # double 5.7981379999999998
	.quad	0x400104e1e71044f2              # double 2.1273840000000002
	.quad	0x402300d5842b734b              # double 9.5016289999999994
	.quad	0x3ff7ddf97aaac109              # double 1.4916929999999999
	.quad	0x4018c6e158750c1c              # double 6.1942190000000004
	.quad	0x4001880bed740c41              # double 2.1914289999999998
	.quad	0x401465675579af19              # double 5.0990270000000004
	.quad	0x3fe4ae6a76965f52              # double 0.64629099999999995
	.quad	0x400d94f61672324d              # double 3.6977350000000002
	.quad	0x400f4ff7dfa00e28              # double 3.9140470000000001
	.quad	0x40181caff6d33094              # double 6.0280149999999999
	.quad	0x3ffbfd5bab21815a              # double 1.749355
	.quad	0x401af08a265f0f5a              # double 6.7349019999999999
	.quad	0x4010512f901083dc              # double 4.0792830000000002
	.quad	0x400a997353b4b2fb              # double 3.3249270000000002
	.quad	0x3ffa3a1d323fee2d              # double 1.6391880000000001
	.quad	0x402228f55de58e65              # double 9.0799970000000005
	.quad	0x4019c8fc9363f573              # double 6.4462760000000001
	.quad	0x40156df8b1572581              # double 5.3573940000000002
	.quad	0x4018b3cd9a52263e              # double 6.1755890000000004
	.quad	0x4011f56a37ac3eb8              # double 4.4896630000000002
	.quad	0x401c988e79aae6c9              # double 7.148981
	.quad	0x3ff8dd11be6e6538              # double 1.5539719999999999
	.quad	0x400d3bc44bf4cb19              # double 3.6541830000000002
	.quad	0x402109cd3e0bd44a              # double 8.5191440000000007
	.quad	0x3ffb5759ee88df37              # double 1.708826
	.quad	0x3fe4b1c864883fd5              # double 0.646702
	.quad	0x401051376d549731              # double 4.079313
	.quad	0x4022402ba5a03819              # double 9.1253329999999995
	.quad	0x402320acc0bdcad1              # double 9.5638179999999994
	.quad	0x4021b3c3e74afd54              # double 8.8511039999999994
	.quad	0x4022f1003eea209b              # double 9.4707050000000005
	.quad	0x40106f6598e10cf6              # double 4.1087860000000003
	.quad	0x400632cadddf43c8              # double 2.7748010000000001
	.quad	0x400d0117f84449dc              # double 3.625534
	.quad	0x40116f69014b599b              # double 4.3587990000000003
	.quad	0x3feb501c0ca600b0              # double 0.85352899999999998
	.quad	0x3ff0d87b56b87379              # double 1.0528519999999999
	.quad	0x4022e5f612407464              # double 9.4491429999999994
	.quad	0x4003fc422036006d              # double 2.498173
	.quad	0x4012f96e9bbf0dc7              # double 4.7435859999999996
	.quad	0x4000c81f53825e14              # double 2.0977160000000001
	.quad	0x401bc16ebd4cfd09              # double 6.9388990000000002
	.quad	0x400ad7b634dad320              # double 3.3553280000000001
	.quad	0x3fefb441bb8c32a9              # double 0.99075400000000002
	.quad	0x40205964840e171a              # double 8.1745950000000001
	.quad	0x3ffd04b1ab0856e7              # double 1.8136460000000001
	.quad	0x4011a291b823c85c              # double 4.4087589999999999
	.quad	0x401cea4acf312b1b              # double 7.2288009999999998
	.quad	0x3fd85c896dd26b72              # double 0.38064799999999999
	.quad	0x4022670563ed0f62              # double 9.2012129999999992
	.quad	0x400e2b1cc9646280              # double 3.7710509999999999
	.quad	0x401a4b9991361dc9              # double 6.5738279999999998
	.quad	0x40130729f59ccfaf              # double 4.756996
	.quad	0x40103a1be2b4959e              # double 4.0567469999999997
	.quad	0x40206173b85e80bf              # double 8.1903360000000003
	.quad	0x401c72917507e9d9              # double 7.1118829999999997
	.quad	0x402399fbc5de9c02              # double 9.8007489999999997
	.quad	0x40115f4517614595              # double 4.3430369999999998
	.quad	0x401582b5a20ddc62              # double 5.3776460000000004
	.quad	0x40169b317efe0ce1              # double 5.6515560000000002
	.quad	0x4014367f90d9d777              # double 5.0532209999999997
	.quad	0x40182f22c01e68a1              # double 6.0460310000000002
	.quad	0x4007e25e99e94ab2              # double 2.9855320000000001
	.quad	0x40209c050bd87b57              # double 8.3047260000000005
	.quad	0x3fe2b27674d16335              # double 0.58428500000000005
	.quad	0x401c1fbdf090f734              # double 7.0309980000000003
	.quad	0x3fdba8eb463497b7              # double 0.43218499999999999
	.quad	0x4022c1c0ca600b03              # double 9.3784240000000007
	.quad	0x400f4a63305100a4              # double 3.9113220000000002
	.quad	0x3ff916ca46e08f21              # double 1.5680639999999999
	.quad	0x4009dacffa7eb6bf              # double 3.2318419999999999
	.quad	0x40016ce2d1f1cfbc              # double 2.1781670000000002
	.quad	0x4023eb09635610ae              # double 9.9590560000000004
	.quad	0x3ff59719f7f8ca82              # double 1.3493900000000001
	.quad	0x3ff54a2a90cd423e              # double 1.3306070000000001
	.quad	0x401aa23b7952d235              # double 6.6584300000000001
	.quad	0x3ffab61565c2d278              # double 1.669454
	.quad	0x4007356eac860568              # double 2.9010899999999999
	.quad	0x40204d7ba6698bb5              # double 8.1513340000000003
	.quad	0x4012c10d38cda6e7              # double 4.6885269999999997
	.quad	0x3fc0e9ab29e4d5d8              # double 0.132131
	.quad	0x402263f141205bc0              # double 9.1951999999999998
	.quad	0x40193700474d9c6b              # double 6.303712
	.quad	0x40016fd00713f078              # double 2.1795960000000001
	.quad	0x401bf1f687b139c9              # double 6.9862919999999997
	.quad	0x4022b7f865d7cb2e              # double 9.3593170000000008
	.quad	0x4006bebd9018e758              # double 2.8431350000000002
	.quad	0x4015dc02afdda8bd              # double 5.4648539999999999
	.quad	0x4013c43f5f91600f              # double 4.9416479999999998
	.quad	0x4023a3b6cbd987c6              # double 9.8197539999999996
	.quad	0x3fd69d2391d57ffa              # double 0.35334100000000002
	.quad	0x4020caea3161a1dc              # double 8.3963180000000008
	.quad	0x4021b2da33bd9cae              # double 8.8493209999999998
	.quad	0x3fe8b7542a23bff9              # double 0.77237900000000004
	.quad	0x400821c714fce747              # double 3.0164930000000001
	.quad	0x3ff21e646f156191              # double 1.13242
	.quad	0x4012776102795704              # double 4.616581
	.quad	0x401a7624dd2f1aa0              # double 6.6153750000000002
	.quad	0x4007b0e779207d4e              # double 2.961379
	.quad	0x3fffa702a3486f05              # double 1.9782740000000001
	.quad	0x40213cdf47f993d5              # double 8.6188909999999996
	.quad	0x40138a5bd944aa54              # double 4.885116
	.quad	0x4023622dd7a99fa1              # double 9.6917559999999998
	.quad	0x401d592817763e4b              # double 7.3370670000000002
	.quad	0x402350a372606fac              # double 9.6574969999999993
	.quad	0x4008cb81733226c4              # double 3.0993680000000001
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
