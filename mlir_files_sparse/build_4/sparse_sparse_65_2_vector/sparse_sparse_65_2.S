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
	.quad	0x4145e3a58d17268d              # double 2869067.1022689999
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
	.quad	54                              # 0x36
	.quad	67                              # 0x43
	.quad	125                             # 0x7d
	.quad	141                             # 0x8d
	.quad	198                             # 0xc6
	.quad	213                             # 0xd5
	.quad	268                             # 0x10c
	.quad	282                             # 0x11a
	.quad	347                             # 0x15b
	.quad	359                             # 0x167
	.quad	416                             # 0x1a0
	.quad	429                             # 0x1ad
	.quad	484                             # 0x1e4
	.quad	500                             # 0x1f4
	.quad	559                             # 0x22f
	.quad	576                             # 0x240
	.quad	631                             # 0x277
	.quad	642                             # 0x282
	.quad	698                             # 0x2ba
	.quad	711                             # 0x2c7
	.quad	768                             # 0x300
	.quad	784                             # 0x310
	.quad	838                             # 0x346
	.quad	854                             # 0x356
	.quad	914                             # 0x392
	.quad	925                             # 0x39d
	.quad	980                             # 0x3d4
	.quad	993                             # 0x3e1
	.quad	1053                            # 0x41d
	.quad	1062                            # 0x426
	.quad	1118                            # 0x45e
	.quad	1135                            # 0x46f
	.quad	1190                            # 0x4a6
	.quad	1199                            # 0x4af
	.quad	1260                            # 0x4ec
	.quad	1267                            # 0x4f3
	.quad	1327                            # 0x52f
	.quad	1347                            # 0x543
	.quad	1403                            # 0x57b
	.quad	1411                            # 0x583
	.quad	1472                            # 0x5c0
	.quad	1483                            # 0x5cb
	.quad	1537                            # 0x601
	.quad	1549                            # 0x60d
	.quad	1607                            # 0x647
	.quad	1622                            # 0x656
	.quad	1680                            # 0x690
	.quad	1693                            # 0x69d
	.quad	1747                            # 0x6d3
	.quad	1761                            # 0x6e1
	.quad	1817                            # 0x719
	.quad	1832                            # 0x728
	.quad	1888                            # 0x760
	.quad	1899                            # 0x76b
	.quad	1958                            # 0x7a6
	.quad	1968                            # 0x7b0
	.quad	2024                            # 0x7e8
	.quad	2036                            # 0x7f4
	.quad	2097                            # 0x831
	.quad	2111                            # 0x83f
	.quad	2167                            # 0x877
	.quad	2181                            # 0x885
	.quad	2234                            # 0x8ba
	.quad	2244                            # 0x8c4
	.quad	2300                            # 0x8fc
	.quad	2311                            # 0x907
	.quad	2364                            # 0x93c
	.quad	2375                            # 0x947
	.quad	2436                            # 0x984
	.quad	2452                            # 0x994
	.quad	2506                            # 0x9ca
	.quad	2525                            # 0x9dd
	.quad	2582                            # 0xa16
	.quad	2596                            # 0xa24
	.quad	2650                            # 0xa5a
	.quad	2664                            # 0xa68
	.quad	2719                            # 0xa9f
	.quad	2732                            # 0xaac
	.quad	2794                            # 0xaea
	.quad	2810                            # 0xafa
	.quad	2866                            # 0xb32
	.quad	2873                            # 0xb39
	.quad	2930                            # 0xb72
	.quad	2954                            # 0xb8a
	.quad	3014                            # 0xbc6
	.quad	3023                            # 0xbcf
	.quad	3077                            # 0xc05
	.quad	3082                            # 0xc0a
	.quad	3137                            # 0xc41
	.quad	3147                            # 0xc4b
	.quad	3204                            # 0xc84
	.quad	3220                            # 0xc94
	.quad	3281                            # 0xcd1
	.quad	3293                            # 0xcdd
	.quad	3355                            # 0xd1b
	.quad	3370                            # 0xd2a
	.quad	3427                            # 0xd63
	.quad	3436                            # 0xd6c
	.quad	3490                            # 0xda2
	.quad	3500                            # 0xdac
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_3500xindex,@object # @__constant_3500xindex
	.p2align	6, 0x0
.L__constant_3500xindex:
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	97                              # 0x61
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	55                              # 0x37
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	79                              # 0x4f
	.quad	92                              # 0x5c
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	66                              # 0x42
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	97                              # 0x61
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
	.quad	37                              # 0x25
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
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
	.quad	15                              # 0xf
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	77                              # 0x4d
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
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
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
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	75                              # 0x4b
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	35                              # 0x23
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	96                              # 0x60
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
	.quad	39                              # 0x27
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
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
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	81                              # 0x51
	.quad	86                              # 0x56
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
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	43                              # 0x2b
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	28                              # 0x1c
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	30                              # 0x1e
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
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
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
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
	.quad	61                              # 0x3d
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
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	80                              # 0x50
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
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
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
	.quad	19                              # 0x13
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
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
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
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	97                              # 0x61
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
	.quad	75                              # 0x4b
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
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	88                              # 0x58
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
	.quad	27                              # 0x1b
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
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
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	66                              # 0x42
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
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
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
	.quad	71                              # 0x47
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	87                              # 0x57
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	81                              # 0x51
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	84                              # 0x54
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
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	97                              # 0x61
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	81                              # 0x51
	.quad	98                              # 0x62
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
	.quad	15                              # 0xf
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
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
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
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
	.quad	73                              # 0x49
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	38                              # 0x26
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	60                              # 0x3c
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
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
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	67                              # 0x43
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
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
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	45                              # 0x2d
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	28                              # 0x1c
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	88                              # 0x58
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
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	29                              # 0x1d
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
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
	.quad	75                              # 0x4b
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
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	75                              # 0x4b
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
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
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
	.quad	43                              # 0x2b
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
	.quad	18                              # 0x12
	.quad	56                              # 0x38
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
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
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	71                              # 0x47
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
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
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	51                              # 0x33
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
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
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
	.quad	35                              # 0x23
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
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	97                              # 0x61
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
	.quad	98                              # 0x62
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	56                              # 0x38
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
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
	.quad	15                              # 0xf
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
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	63                              # 0x3f
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.size	.L__constant_3500xindex, 28000

	.type	.L__constant_3500xf64,@object   # @__constant_3500xf64
	.p2align	6, 0x0
.L__constant_3500xf64:
	.quad	0x40231a0ee8d10f52              # double 9.5508950000000006
	.quad	0x401e1f9b56323bbc              # double 7.5308659999999996
	.quad	0x40238db5b70691ea              # double 9.7767769999999992
	.quad	0x400df3005814940c              # double 3.7436530000000001
	.quad	0x3fdb1f53825e13b2              # double 0.42378700000000002
	.quad	0x400c1702e6644d87              # double 3.5112359999999998
	.quad	0x4014f9f83be6601c              # double 5.2441110000000002
	.quad	0x4013948c2e770bd0              # double 4.8950659999999999
	.quad	0x400341fafc8b007a              # double 2.4072170000000002
	.quad	0x4016db46fdeb52ca              # double 5.7141380000000002
	.quad	0x40216f5515054ac3              # double 8.7174460000000007
	.quad	0x401510999dcb5782              # double 5.2662110000000002
	.quad	0x4011620ccff21b3b              # double 4.3457520000000001
	.quad	0x40171eab7995ee13              # double 5.7799509999999996
	.quad	0x401820c4156e264e              # double 6.0319979999999997
	.quad	0x40239ff04577d955              # double 9.8123799999999992
	.quad	0x3ffcd4185058dde8              # double 1.8017810000000001
	.quad	0x3ff84d3ae685db77              # double 1.5188550000000001
	.quad	0x401be323fee2c98e              # double 6.9718169999999997
	.quad	0x3fdd94e1a3f4666f              # double 0.46221200000000001
	.quad	0x4014947e49b1fab9              # double 5.1450129999999996
	.quad	0x4010868cef672b88              # double 4.1313969999999998
	.quad	0x3fe29c2c1b10fd7e              # double 0.58156399999999997
	.quad	0x402035cdf6987831              # double 8.1050869999999993
	.quad	0x40153d1569f49060              # double 5.3096519999999998
	.quad	0x400d66c97d8cf399              # double 3.675189
	.quad	0x3fe88b73d188f430              # double 0.76702300000000001
	.quad	0x4019751f3e89a88b              # double 6.3643770000000002
	.quad	0x4011fb2314013ec4              # double 4.4952509999999997
	.quad	0x401b97cbb3c81909              # double 6.8982380000000001
	.quad	0x401ad41f644955b4              # double 6.7071509999999996
	.quad	0x401d9d199bb2788e              # double 7.4034180000000003
	.quad	0x4020148b0079a283              # double 8.0401229999999995
	.quad	0x3ff7b9d2bf551505              # double 1.4828669999999999
	.quad	0x40196e889c1b5419              # double 6.3579429999999997
	.quad	0x401cb340d4dc65c7              # double 7.175052
	.quad	0x400c514fce746cb9              # double 3.5397029999999998
	.quad	0x40045743632c1f43              # double 2.5426090000000001
	.quad	0x4014f29563a9f384              # double 5.2368980000000001
	.quad	0x3ffdf8f041461b6d              # double 1.8732759999999999
	.quad	0x40222e1fc08fa7a8              # double 9.0900859999999994
	.quad	0x4014dd441355475a              # double 5.2160799999999998
	.quad	0x4015348626f60e0f              # double 5.3012930000000003
	.quad	0x3ff949a77e5eaab0              # double 1.5804819999999999
	.quad	0x401b97b0f6ad70e7              # double 6.898136
	.quad	0x40036934267839ce              # double 2.4263690000000002
	.quad	0x4018745069a4df48              # double 6.113588
	.quad	0x4005272b884406c0              # double 2.644126
	.quad	0x40213da76d97b310              # double 8.6204180000000008
	.quad	0x3f96aa087ca643cc              # double 0.022133
	.quad	0x3ff21620685553ef              # double 1.1304019999999999
	.quad	0x40218c8605681ecd              # double 8.7744599999999995
	.quad	0x4016bfe32a0663c7              # double 5.6873899999999997
	.quad	0x3ff99cac083126e9              # double 1.6007499999999999
	.quad	0x400ef147f1305964              # double 3.8678129999999999
	.quad	0x3fecf2cd7cf5f4e4              # double 0.90463899999999997
	.quad	0x401c7430f49491f3              # double 7.1134680000000001
	.quad	0x402060b28522ea10              # double 8.1888620000000003
	.quad	0x4004f93bc0a06ea0              # double 2.621696
	.quad	0x401a6a57eaa2a0a9              # double 6.6038509999999997
	.quad	0x401bb399f5dfeb8e              # double 6.9253920000000004
	.quad	0x4011cfbd273d5bab              # double 4.4528699999999999
	.quad	0x401101e7d9988d2a              # double 4.2518609999999999
	.quad	0x4012cf2a5a469d73              # double 4.7023099999999998
	.quad	0x40234102bc72e276              # double 9.6269740000000006
	.quad	0x4017bf1737542a24              # double 5.9366120000000002
	.quad	0x4013e49774256bca              # double 4.9732339999999997
	.quad	0x4005786013660e52              # double 2.6837770000000001
	.quad	0x4021db38f7985272              # double 8.9281690000000005
	.quad	0x40151e17e34b9453              # double 5.279388
	.quad	0x40239fb5aea3161a              # double 9.8119329999999998
	.quad	0x3fe9337c99ae924f              # double 0.78753499999999999
	.quad	0x40058f6a50d6b229              # double 2.6950270000000001
	.quad	0x4021a8f6ad70e6f3              # double 8.8300070000000002
	.quad	0x40190f401c4fc1df              # double 6.2648929999999998
	.quad	0x4015b62b6ae7d567              # double 5.4279000000000002
	.quad	0x4005dc73eee52589              # double 2.7326429999999999
	.quad	0x40182d96638433d7              # double 6.0445190000000002
	.quad	0x400cdf9c62a1b5c8              # double 3.6091850000000001
	.quad	0x401ec8effe2a3cea              # double 7.6962279999999996
	.quad	0x4022259a95421c04              # double 9.0734449999999995
	.quad	0x4011d44bb1af3a15              # double 4.4573200000000002
	.quad	0x40004611fd5885d3              # double 2.034214
	.quad	0x4013be7afa722186              # double 4.9360160000000004
	.quad	0x3fe8bb98c7e28241              # double 0.77290000000000003
	.quad	0x40217a32d2bb2357              # double 8.7386689999999998
	.quad	0x4002ff487fcb923a              # double 2.3746499999999999
	.quad	0x4017430caa326e11              # double 5.8154779999999997
	.quad	0x3fefaad81adea897              # double 0.98960499999999995
	.quad	0x40216bcc07aaef2c              # double 8.7105409999999992
	.quad	0x400734df8b157258              # double 2.900817
	.quad	0x401b70aa21a719b5              # double 6.8600240000000001
	.quad	0x3ff301eff9f87f02              # double 1.1879729999999999
	.quad	0x3feb9dece5710881              # double 0.86302800000000002
	.quad	0x400c8ec743201041              # double 3.5697160000000001
	.quad	0x401d8e9e1b089a02              # double 7.3892749999999996
	.quad	0x401ddccc03793144              # double 7.4656219999999998
	.quad	0x3ffe4189374bc6a8              # double 1.891
	.quad	0x401ee455a7d24181              # double 7.7229830000000001
	.quad	0x3f87a99fa11a975b              # double 0.011554
	.quad	0x4020436d22424a27              # double 8.1316919999999993
	.quad	0x401ece9d94d0dcfd              # double 7.7017730000000002
	.quad	0x4023ecd2d44dca8e              # double 9.9625459999999997
	.quad	0x4012df6837f7be12              # double 4.7181709999999999
	.quad	0x40192294dd72367e              # double 6.2837709999999998
	.quad	0x401fda37ac3eb7cc              # double 7.9631030000000003
	.quad	0x4019b5109070fbec              # double 6.4268210000000003
	.quad	0x401e6d5d80e496ee              # double 7.6068020000000001
	.quad	0x3feda57c914b167f              # double 0.92645100000000002
	.quad	0x3ff1a864020817fc              # double 1.1036109999999999
	.quad	0x401eb98f1d3ed528              # double 7.68121
	.quad	0x40006b1d4f9c1f86              # double 2.0523020000000001
	.quad	0x40048906034f3fd9              # double 2.5669059999999999
	.quad	0x3fef2f4adbc664d4              # double 0.97452300000000002
	.quad	0x400b90110a137f39              # double 3.4453450000000001
	.quad	0x4019ae8c0485a0be              # double 6.4204559999999997
	.quad	0x400f10fbeb9e492c              # double 3.8832930000000001
	.quad	0x4014025247cb70ac              # double 5.0022669999999998
	.quad	0x3ff328f7db6e5040              # double 1.1975020000000001
	.quad	0x4010048387df5cf2              # double 4.0044079999999997
	.quad	0x4023a4810a569b17              # double 9.8212969999999994
	.quad	0x400444b4d056c509              # double 2.5335480000000001
	.quad	0x400739a5a89b951c              # double 2.9031479999999998
	.quad	0x4018bee9142b302f              # double 6.1864359999999996
	.quad	0x400508f32378ab0d              # double 2.6293700000000002
	.quad	0x401391a3b14a9047              # double 4.892226
	.quad	0x400b81c6088d6d3b              # double 3.4383659999999998
	.quad	0x4022a17396d0917d              # double 9.3153349999999993
	.quad	0x400dc1abd1aa821f              # double 3.7195659999999999
	.quad	0x40215d0d2806af47              # double 8.6817410000000006
	.quad	0x400a13cd573647bb              # double 3.2596690000000001
	.quad	0x400a116c1e364bec              # double 3.2585069999999998
	.quad	0x4017256f32bdc26e              # double 5.7865570000000002
	.quad	0x4011f7cdcca70d20              # double 4.4919960000000003
	.quad	0x4002bd1e53a81dc1              # double 2.3423430000000001
	.quad	0x4010e8cb4aec8d5c              # double 4.2273379999999996
	.quad	0x401e669be09bb6aa              # double 7.6002039999999997
	.quad	0x400f713e81450efe              # double 3.9302950000000001
	.quad	0x3ff155831f03d146              # double 1.083377
	.quad	0x4013ab99d451fc4c              # double 4.9175789999999999
	.quad	0x40118df71eafee70              # double 4.3886380000000003
	.quad	0x4009da059a73b42d              # double 3.2314560000000001
	.quad	0x40140a17b0f6ad71              # double 5.0098560000000001
	.quad	0x402299d388a8b08e              # double 9.3004420000000003
	.quad	0x40108d6451b93038              # double 4.1380780000000001
	.quad	0x4021d9904b3c3e75              # double 8.9249290000000006
	.quad	0x4009c22d5171e29b              # double 3.2198129999999998
	.quad	0x401b456e696a26e5              # double 6.8178039999999998
	.quad	0x400b58c3b0c4588a              # double 3.418342
	.quad	0x401d053868fd199c              # double 7.2550980000000003
	.quad	0x40223dc8323358f3              # double 9.1206680000000002
	.quad	0x3fa163779e9d0e99              # double 0.033961999999999999
	.quad	0x4019aac322291fb4              # double 6.41676
	.quad	0x40077b8d3f1843c4              # double 2.9353280000000002
	.quad	0x4022df7d30ad46f6              # double 9.4365020000000008
	.quad	0x401a8be121ee6751              # double 6.6366009999999998
	.quad	0x40223bd2d87f8876              # double 9.1168429999999994
	.quad	0x3ffd1d19157abb88              # double 1.819604
	.quad	0x401f32862f5989df              # double 7.7993399999999999
	.quad	0x400dc8c0ce91c8eb              # double 3.7230240000000001
	.quad	0x400d00dc33721d54              # double 3.6254200000000001
	.quad	0x40221c271fff79c8              # double 9.0549859999999995
	.quad	0x401ece392e1ef73c              # double 7.70139
	.quad	0x400a77dc7abfb9bf              # double 3.3085260000000001
	.quad	0x4021c34d48882f0e              # double 8.8814489999999999
	.quad	0x4013bf0025bfad2a              # double 4.9365240000000004
	.quad	0x401c876a2f48c2e7              # double 7.1322409999999996
	.quad	0x401806ba0620ab71              # double 6.0065689999999998
	.quad	0x401eab97fe8ee6b8              # double 7.6675719999999998
	.quad	0x40035d8d79d0a676              # double 2.4206799999999999
	.quad	0x4015549b62c77575              # double 5.332624
	.quad	0x3ff096ca46e08f21              # double 1.0368139999999999
	.quad	0x4019c103c8e25c81              # double 6.438491
	.quad	0x4015d1db445ed4a2              # double 5.4549380000000003
	.quad	0x3fd93422467be554              # double 0.39380700000000002
	.quad	0x3ff06f640639d5e5              # double 1.0271950000000001
	.quad	0x40006046c764ae00              # double 2.0470100000000002
	.quad	0x40022b324851a869              # double 2.2710919999999999
	.quad	0x401585785f8d2e51              # double 5.3803419999999997
	.quad	0x3feeb37a80cf9e38              # double 0.95940899999999995
	.quad	0x3fd1e379b77c02b0              # double 0.27950900000000001
	.quad	0x4000ec083126e979              # double 2.1152500000000001
	.quad	0x4021f325918a009f              # double 8.9748959999999993
	.quad	0x4015e8d08919ef95              # double 5.4773579999999997
	.quad	0x40000398a65492ff              # double 2.0017559999999999
	.quad	0x4018348e8a71de6a              # double 6.0513250000000003
	.quad	0x401f35d67ba237ce              # double 7.8025760000000002
	.quad	0x401b41c3efae7925              # double 6.8142240000000003
	.quad	0x4021cd810624dd2f              # double 8.9013749999999998
	.quad	0x401c717a02fb5d03              # double 7.1108169999999999
	.quad	0x402075753a3ec02f              # double 8.2294099999999997
	.quad	0x3ffa9906cca2db62              # double 1.6623600000000001
	.quad	0x400c10e560418937              # double 3.5082499999999999
	.quad	0x401b67c4e2f37fbf              # double 6.851337
	.quad	0x3fde90364388ebcc              # double 0.47755199999999998
	.quad	0x401f619f3c70c997              # double 7.8453340000000002
	.quad	0x401609c065b63d3e              # double 5.5095229999999997
	.quad	0x4012f2ddbdb5d895              # double 4.7371740000000004
	.quad	0x401995929670196e              # double 6.3960670000000004
	.quad	0x3fec1565c2d27807              # double 0.87761199999999995
	.quad	0x401c115fcc1871e7              # double 7.0169670000000002
	.quad	0x401fe3cc4ac6cdaf              # double 7.9724589999999997
	.quad	0x401898d477bbf940              # double 6.149248
	.quad	0x40149af6837f7be1              # double 5.1513309999999999
	.quad	0x4023c8adeebb341e              # double 9.8919519999999999
	.quad	0x402298b9dc2f405f              # double 9.2982929999999993
	.quad	0x40101f6cacd184c2              # double 4.0306879999999996
	.quad	0x3ff38fe69270b06c              # double 1.2226319999999999
	.quad	0x40204791a32b12d3              # double 8.1397829999999995
	.quad	0x40116188b11409a2              # double 4.3452479999999998
	.quad	0x3ff99a2f8bdec5f4              # double 1.6001430000000001
	.quad	0x4011e9b13165d399              # double 4.4782149999999996
	.quad	0x4023fe25a682b628              # double 9.9963809999999995
	.quad	0x3fe8015e39713ad6              # double 0.75016700000000003
	.quad	0x3ff0a3443d46b26c              # double 1.03986
	.quad	0x401900913a4f8727              # double 6.2505540000000002
	.quad	0x3ffd6bf8769ec2ce              # double 1.8388599999999999
	.quad	0x4006b9146e4c0df6              # double 2.8403710000000002
	.quad	0x3fe36e1deacc9214              # double 0.60719199999999995
	.quad	0x400769435ac8a372              # double 2.9263979999999998
	.quad	0x4023aeee52589268              # double 9.8416619999999994
	.quad	0x4022e85f6ba0620b              # double 9.4538530000000005
	.quad	0x4002dc8216c61523              # double 2.3576700000000002
	.quad	0x4022d5a1cac08312              # double 9.4172499999999992
	.quad	0x4005c92a30553261              # double 2.7232249999999998
	.quad	0x3fde04ccee5abc0e              # double 0.46904299999999999
	.quad	0x401753a57eaa2a0b              # double 5.8316860000000004
	.quad	0x4014a26a65cf67b2              # double 5.1586090000000002
	.quad	0x3fff4052d666a982              # double 1.9532039999999999
	.quad	0x400f3a8deb0fadf3              # double 3.903591
	.quad	0x401084567125dd09              # double 4.1292359999999997
	.quad	0x3ffeeea63b688bdb              # double 1.9332640000000001
	.quad	0x3feced2674080f99              # double 0.903949
	.quad	0x400f734f82f51266              # double 3.9313039999999999
	.quad	0x3ff32a0ec7432010              # double 1.1977679999999999
	.quad	0x3ff4e10adcd2d44e              # double 1.304942
	.quad	0x3ff1a887a8d64d7f              # double 1.103645
	.quad	0x401d48e92d55a3a1              # double 7.3212020000000004
	.quad	0x40028dcb1465e892              # double 2.3192349999999999
	.quad	0x4009b69b9d7fd827              # double 3.2141639999999998
	.quad	0x40065ee6fb4c3c19              # double 2.7963390000000001
	.quad	0x402257210be9424e              # double 9.1701739999999994
	.quad	0x401a236d655e28aa              # double 6.5345969999999998
	.quad	0x3ff0b5a964e8b7e5              # double 1.044351
	.quad	0x40031ac710cb295f              # double 2.3880750000000002
	.quad	0x400f8d0f6273929f              # double 3.9438770000000001
	.quad	0x401fa38e29f9ce8e              # double 7.9097220000000004
	.quad	0x401d5e9185cee17a              # double 7.342352
	.quad	0x4020a810624dd2f2              # double 8.3282500000000006
	.quad	0x401cc59253543aeb              # double 7.1929410000000003
	.quad	0x401c7a7589efd86b              # double 7.1195890000000004
	.quad	0x401a6c98a222d517              # double 6.6060509999999999
	.quad	0x401c5c39bcba3012              # double 7.0900639999999999
	.quad	0x4012e769ec2ce465              # double 4.7259900000000004
	.quad	0x3ff5dbe7f2c3009b              # double 1.366188
	.quad	0x3ff5734d6a161e4f              # double 1.3406499999999999
	.quad	0x3ff05970b49e01de              # double 1.021836
	.quad	0x402379d68c692f6f              # double 9.7379650000000008
	.quad	0x40190c122749f0e5              # double 6.2617880000000001
	.quad	0x4013ff7ced916873              # double 4.9995000000000003
	.quad	0x40231ea8fc0d2c38              # double 9.5598829999999992
	.quad	0x3ff4c5dfa871a3b1              # double 1.2983089999999999
	.quad	0x3ff1da3e39f77293              # double 1.1157820000000001
	.quad	0x400c79ad85dfa872              # double 3.5594130000000002
	.quad	0x401bc71bcdbbe015              # double 6.9444419999999996
	.quad	0x401a71ab4b72c519              # double 6.6110049999999996
	.quad	0x4009c09246bf0132              # double 3.2190289999999999
	.quad	0x40210f521144cbe2              # double 8.5299230000000001
	.quad	0x400fedf04ddb5526              # double 3.9911810000000001
	.quad	0x401cd41bb8c32a8d              # double 7.2071370000000003
	.quad	0x40052f56eac86057              # double 2.6481150000000002
	.quad	0x3ffa7381d7dbf488              # double 1.6532
	.quad	0x401bc1244a6223e2              # double 6.9386150000000004
	.quad	0x401b18d759ee88df              # double 6.7742589999999998
	.quad	0x3feab3636f3b213e              # double 0.83439799999999997
	.quad	0x400d9525cc426352              # double 3.6978260000000001
	.quad	0x4013b408d8ec95c0              # double 4.9258150000000001
	.quad	0x3ffe67ea5f84cad5              # double 1.9003699999999999
	.quad	0x400f955582129457              # double 3.9479169999999999
	.quad	0x3ffd12806af46aa1              # double 1.8170170000000001
	.quad	0x3ff1f3eff1950332              # double 1.122055
	.quad	0x401b1c42a66dbd73              # double 6.7775980000000002
	.quad	0x3ffda28ed5f138bd              # double 1.852187
	.quad	0x3ffb7dbd2fa0d77b              # double 1.7181979999999999
	.quad	0x40182950b955f783              # double 6.0403469999999997
	.quad	0x4010deea209aaa3b              # double 4.2176900000000002
	.quad	0x4011983ba3443d47              # double 4.3986650000000003
	.quad	0x4006054ac29bf163              # double 2.7525840000000001
	.quad	0x40205e39713ad5bf              # double 8.1840320000000002
	.quad	0x40188950763a1901              # double 6.1340960000000004
	.quad	0x40087392189bd838              # double 3.0564309999999999
	.quad	0x4022705c24c404a7              # double 9.2194529999999997
	.quad	0x4021b691ea78af3e              # double 8.8565819999999995
	.quad	0x3fe421b5c7cd898b              # double 0.62911499999999998
	.quad	0x401f6daceee0f3cb              # double 7.8571049999999997
	.quad	0x401b502eec7c957d              # double 6.8283040000000002
	.quad	0x4023df9fec99f1ae              # double 9.9367669999999997
	.quad	0x3fd27d0f1f57b41c              # double 0.288883
	.quad	0x401009fcf3dc054f              # double 4.009754
	.quad	0x4009ca808c8259e2              # double 3.223878
	.quad	0x4010fe99e94ab1d5              # double 4.248634
	.quad	0x4023749a133c1ce7              # double 9.7277380000000004
	.quad	0x400455c5b4aa9718              # double 2.5418810000000001
	.quad	0x401eb92189bd8384              # double 7.6807920000000003
	.quad	0x4021ef021d10b1ff              # double 8.9668130000000001
	.quad	0x4019b8bef8ceb357              # double 6.4304160000000001
	.quad	0x3fff7dbc23315d70              # double 1.968197
	.quad	0x3ffec0c308feac43              # double 1.922061
	.quad	0x401ffa8bd230b9dc              # double 7.9946739999999998
	.quad	0x3fffdc75818c5c9a              # double 1.991323
	.quad	0x401a48ab4fa48302              # double 6.5709660000000003
	.quad	0x4021f6ec9e236c16              # double 8.9822740000000003
	.quad	0x3fe8c0c4156e264e              # double 0.77353099999999997
	.quad	0x3ff5948238540464              # double 1.348757
	.quad	0x4013e70691ea78af              # double 4.9756109999999998
	.quad	0x4003dfe7e1fc08fa              # double 2.4843289999999998
	.quad	0x401c6517a46173b8              # double 7.0987229999999997
	.quad	0x401771700cd85597              # double 5.860779
	.quad	0x4021e44d22c881e4              # double 8.9459009999999992
	.quad	0x40139e4e69f05ea2              # double 4.9045959999999997
	.quad	0x401a1ef77f27fe4c              # double 6.5302410000000002
	.quad	0x40103622c4502689              # double 4.052867
	.quad	0x402154b44a1f0803              # double 8.665438
	.quad	0x40197e71476af89c              # double 6.3734789999999997
	.quad	0x4013d28e92d55a3a              # double 4.955622
	.quad	0x3ff20b76f6d76252              # double 1.127799
	.quad	0x40047552e2fbe33b              # double 2.5572870000000001
	.quad	0x4010915f88fc9364              # double 4.141966
	.quad	0x4020145fbf83382e              # double 8.0397929999999995
	.quad	0x3ffec3b60285ec3e              # double 1.9227810000000001
	.quad	0x3fd992d1287c200c              # double 0.399586
	.quad	0x40227631f8a0902e              # double 9.2308500000000002
	.quad	0x400ed19ce075f6fd              # double 3.8523499999999999
	.quad	0x4022129c347e8cce              # double 9.0363480000000003
	.quad	0x401c9707182235b5              # double 7.1474880000000001
	.quad	0x4020009070fbeb9e              # double 8.0011019999999995
	.quad	0x40187da7f3cf7015              # double 6.1227109999999998
	.quad	0x3fc41d19157abb88              # double 0.157138
	.quad	0x4003d36a400fba88              # double 2.4782299999999999
	.quad	0x3ffc5a14488c60cc              # double 1.771992
	.quad	0x40225f8dd616f86a              # double 9.1866289999999999
	.quad	0x401fb8023a6ce358              # double 7.9296959999999998
	.quad	0x401fd45aa2e3c537              # double 7.9573770000000001
	.quad	0x40127ce032db1e9f              # double 4.6219489999999999
	.quad	0x3ffb117e77d523b3              # double 1.6917709999999999
	.quad	0x3fca4cbe1eb4202e              # double 0.20546700000000001
	.quad	0x4018448f10a99b6f              # double 6.0669519999999997
	.quad	0x3fb70281ba7fc32f              # double 0.089882000000000004
	.quad	0x4011ef0025bfad2a              # double 4.4833990000000004
	.quad	0x400618a19c9d5a18              # double 2.7620269999999998
	.quad	0x401de966be7afa72              # double 7.4779309999999999
	.quad	0x401e49de8b3b3205              # double 7.5721379999999998
	.quad	0x401d68266772d5e0              # double 7.3517089999999996
	.quad	0x4017c6bebe1650a4              # double 5.9440869999999997
	.quad	0x4016fdd9c27e9531              # double 5.7479009999999997
	.quad	0x40109471b4784231              # double 4.144965
	.quad	0x401b2605ee568a50              # double 6.7871319999999997
	.quad	0x402095d9e40c8473              # double 8.2926780000000004
	.quad	0x401238eb463497b7              # double 4.5555849999999998
	.quad	0x4013d98eda22f6a5              # double 4.962459
	.quad	0x401bc89a459103c9              # double 6.9459010000000001
	.quad	0x3f9b5bb384fd2a63              # double 0.026717000000000001
	.quad	0x4020b4cb1897a67a              # double 8.3531119999999994
	.quad	0x400894f69ca9ef52              # double 3.0727359999999999
	.quad	0x4022c0f1b25f633d              # double 9.3768440000000001
	.quad	0x400129813879c411              # double 2.1452659999999999
	.quad	0x40165b5807fed203              # double 5.5892030000000004
	.quad	0x4011049fd7a13c25              # double 4.2545159999999997
	.quad	0x4002e86b59146e4c              # double 2.363486
	.quad	0x3fe1515ce9e5e248              # double 0.54118200000000005
	.quad	0x4009a3df6db940ff              # double 3.2050160000000001
	.quad	0x400d8308feac42ea              # double 3.6889820000000002
	.quad	0x4014e6801711947d              # double 5.225098
	.quad	0x40023811f4f50a03              # double 2.2773780000000001
	.quad	0x400a303ea704bc27              # double 3.2735569999999998
	.quad	0x3fdc45bf26f1dc51              # double 0.44175700000000001
	.quad	0x40120076c050bd88              # double 4.5004530000000003
	.quad	0x4020c66a98244e94              # double 8.3875320000000002
	.quad	0x400d98012dfd694d              # double 3.6992210000000001
	.quad	0x401bc9231c64ba95              # double 6.9464230000000002
	.quad	0x40144dbb9cf9a06a              # double 5.0759109999999996
	.quad	0x401cb603925bb7b7              # double 7.1777480000000002
	.quad	0x401e8f1bac2df0d4              # double 7.6397539999999999
	.quad	0x400d66dacabc5155              # double 3.6752220000000002
	.quad	0x3fcdd13d74d594f2              # double 0.23294799999999999
	.quad	0x3fecb6134ce3de61              # double 0.89722599999999997
	.quad	0x4010641e57d9dba9              # double 4.097772
	.quad	0x400b850efdc9c4db              # double 3.4399700000000002
	.quad	0x400f7ab8e8ea39c5              # double 3.9349229999999999
	.quad	0x40144f34d6a161e5              # double 5.07735
	.quad	0x4023052bd3c36113              # double 9.5100999999999995
	.quad	0x401f315b9a5a89b9              # double 7.7982009999999997
	.quad	0x401136bacf7446fa              # double 4.3034470000000002
	.quad	0x3fff5a858793dd98              # double 1.9596
	.quad	0x4018c6e7a311e860              # double 6.1942430000000002
	.quad	0x40215461309c7ffe              # double 8.6648040000000002
	.quad	0x401f905b39e279dd              # double 7.8909729999999997
	.quad	0x3ffd6e297396d091              # double 1.8393949999999999
	.quad	0x4012398b71b8aa00              # double 4.5561959999999999
	.quad	0x401476be7afa7222              # double 5.1159610000000004
	.quad	0x401d06687f455a7d              # double 7.2562579999999999
	.quad	0x4020f27807789a46              # double 8.4735720000000008
	.quad	0x402387991bc55864              # double 9.7648399999999995
	.quad	0x4002010d7be9856a              # double 2.2505139999999999
	.quad	0x40131b5ed8d36b4c              # double 4.7767289999999996
	.quad	0x3ffe7adafd113837              # double 1.9049940000000001
	.quad	0x40015185cee17a03              # double 2.164806
	.quad	0x4001a6f156191149              # double 2.206515
	.quad	0x40175ff759685122              # double 5.8437169999999998
	.quad	0x40231d8255b035bd              # double 9.5576349999999994
	.quad	0x4022f8c23fab10ba              # double 9.4858569999999993
	.quad	0x4018c65c70435efa              # double 6.1937119999999997
	.quad	0x402117f69014b59a              # double 8.5468030000000006
	.quad	0x4018923c85c24c40              # double 6.1428089999999997
	.quad	0x400399830e3cd9a5              # double 2.4499569999999999
	.quad	0x402267e132b55ef2              # double 9.20289
	.quad	0x4019d14013ec460f              # double 6.4543460000000001
	.quad	0x401c33ca31e7d999              # double 7.0505760000000004
	.quad	0x40100765ba6efc37              # double 4.0072239999999999
	.quad	0x400c0f88b9778573              # double 3.5075850000000002
	.quad	0x40223a4db163baba              # double 9.1138739999999991
	.quad	0x3fe4984e3ffef391              # double 0.64359200000000005
	.quad	0x3fe01e6cd29131ec              # double 0.503714
	.quad	0x400b77e90ff97247              # double 3.4335499999999999
	.quad	0x4010d5ee568a5050              # double 4.2089169999999996
	.quad	0x3fc4e568a50507a7              # double 0.16325100000000001
	.quad	0x4023c76b1a2a4db1              # double 9.8894889999999993
	.quad	0x3ff1e603d577963a              # double 1.1186560000000001
	.quad	0x401bed55e6bc621b              # double 6.9817729999999996
	.quad	0x401dc6202539756d              # double 7.4434820000000004
	.quad	0x3ffc9b738e6d15ad              # double 1.787952
	.quad	0x3ffee686e7e62dc7              # double 1.931281
	.quad	0x40043f3c70c996b7              # double 2.5308769999999998
	.quad	0x4020180ffda4052d              # double 8.0469969999999993
	.quad	0x3ff0983c6c97d8cf              # double 1.037167
	.quad	0x4012b242d05f2885              # double 4.6740830000000004
	.quad	0x401c3d50225742dd              # double 7.059876
	.quad	0x402244e8533b1077              # double 9.1345849999999995
	.quad	0x401b1c460ed80a18              # double 6.7776110000000003
	.quad	0x40067f9a49c2c1b1              # double 2.812306
	.quad	0x4011568ec52a411c              # double 4.3345289999999999
	.quad	0x402135e76427c7c5              # double 8.6052809999999997
	.quad	0x401f091361dc93ea              # double 7.7588629999999998
	.quad	0x3fe5157470eb24a7              # double 0.65886900000000004
	.quad	0x400bea00192a7371              # double 3.489258
	.quad	0x4020061da7b0b392              # double 8.0119450000000008
	.quad	0x40036f5caf2d7f95              # double 2.429376
	.quad	0x3ffc7709b738e6d1              # double 1.7790619999999999
	.quad	0x401c1b9b66f9335d              # double 7.0269599999999999
	.quad	0x4001a1248d7e0264              # double 2.2036829999999998
	.quad	0x40016ec84f8f8a4c              # double 2.1790929999999999
	.quad	0x401b327913e81451              # double 6.7992900000000001
	.quad	0x3ffedc5f7c6759ab              # double 1.9288019999999999
	.quad	0x3ff263b8a19c9d5a              # double 1.149346
	.quad	0x3ff8e0ded288ce70              # double 1.5548999999999999
	.quad	0x40223cb5350092cd              # double 9.1185700000000001
	.quad	0x40233d5193708aad              # double 9.6197630000000007
	.quad	0x3ff25d57ff9b5632              # double 1.1477889999999999
	.quad	0x40225341bfbdf091              # double 9.1626110000000001
	.quad	0x400af14b167ec786              # double 3.3678189999999999
	.quad	0x40141d898b2e9ccb              # double 5.0288449999999996
	.quad	0x40216cb20fb224ab              # double 8.7122960000000003
	.quad	0x3fa7c8d1958969a1              # double 0.046454000000000002
	.quad	0x4010db3636f3b214              # double 4.2140740000000001
	.quad	0x401877e7c06e19b9              # double 6.1170949999999999
	.quad	0x3ffaa76965f5275f              # double 1.665872
	.quad	0x4021c36cbd987c63              # double 8.8816889999999997
	.quad	0x4000bf77af64063a              # double 2.0934900000000001
	.quad	0x40165da4ce8101f3              # double 5.5914489999999999
	.quad	0x402175efc7a39820              # double 8.7303449999999998
	.quad	0x401baa7d6733ebc0              # double 6.9164940000000001
	.quad	0x4006ddc054ef459e              # double 2.8582770000000002
	.quad	0x4001f1e5c0b99913              # double 2.2431139999999998
	.quad	0x40168f42bb6672fc              # double 5.6399030000000003
	.quad	0x400d5c4d22c881e4              # double 3.6700689999999998
	.quad	0x400ce82adc4c9c91              # double 3.6133630000000001
	.quad	0x400e46f262888b54              # double 3.7846419999999998
	.quad	0x401dd27fe4bcad9b              # double 7.4555660000000001
	.quad	0x401a3bba55d1c3ad              # double 6.5583280000000004
	.quad	0x401b964cf8d716d3              # double 6.8967780000000003
	.quad	0x3ffd6ee525892685              # double 1.839574
	.quad	0x40213a877ee4e26d              # double 8.6143149999999995
	.quad	0x400d5cfc3f811f4f              # double 3.6704029999999999
	.quad	0x4005c759ab6d00b4              # double 2.7223389999999998
	.quad	0x3fe605985ad538ac              # double 0.68818299999999999
	.quad	0x40200afc8b0079a3              # double 8.0214580000000009
	.quad	0x3fd3d28d002e2329              # double 0.309726
	.quad	0x401e922ff08893b8              # double 7.6427610000000001
	.quad	0x4014f788db0574b4              # double 5.241733
	.quad	0x3ffe5bd1ed9dfdac              # double 1.8974169999999999
	.quad	0x402087c7a398201d              # double 8.2651950000000003
	.quad	0x401a366b6177ea1c              # double 6.5531439999999996
	.quad	0x400517f1f9acffa8              # double 2.636692
	.quad	0x40178e81cb46bacf              # double 5.8891669999999996
	.quad	0x4001d0870110a138              # double 2.22682
	.quad	0x401dbe03f705857b              # double 7.435562
	.quad	0x40121d81adea8976              # double 4.5288149999999998
	.quad	0x401a2000431bde83              # double 6.5312510000000001
	.quad	0x3ff0285985ad538b              # double 1.0098510000000001
	.quad	0x40237f25a250f840              # double 9.7483339999999998
	.quad	0x400d756323bbc6eb              # double 3.682318
	.quad	0x40204e536501e258              # double 8.1529799999999994
	.quad	0x3ffefe4abe6a337b              # double 1.9370830000000001
	.quad	0x4020a38e4b87bdcf              # double 8.319445
	.quad	0x401d9418d6909aed              # double 7.3946259999999997
	.quad	0x40155ff151e75361              # double 5.3436940000000002
	.quad	0x4012d64bec679cc7              # double 4.7092739999999997
	.quad	0x401deb85a4f00ef1              # double 7.4800019999999998
	.quad	0x400d9cd898b2e9cd              # double 3.7015850000000001
	.quad	0x4013daf46aa087ca              # double 4.9638229999999997
	.quad	0x4019692ff4ba51a0              # double 6.352722
	.quad	0x4008b1a975afaf86              # double 3.0867490000000002
	.quad	0x400c07d2c7b890d6              # double 3.5038200000000002
	.quad	0x40146a5daf07bfe8              # double 5.1038730000000001
	.quad	0x3ffb5c58255b035c              # double 1.710045
	.quad	0x401407df5cf2495e              # double 5.0076879999999999
	.quad	0x400996659d12cade              # double 3.1984360000000001
	.quad	0x402359244a6223e2              # double 9.6741050000000008
	.quad	0x402016f587d6f976              # double 8.0448419999999992
	.quad	0x4009f765fd8adaba              # double 3.2458
	.quad	0x402076dd8b60f1b2              # double 8.2321589999999993
	.quad	0x3ff60f6dfc5cdd51              # double 1.3787670000000001
	.quad	0x402257ba450acc0c              # double 9.1713430000000002
	.quad	0x4011ec7a7c9de050              # double 4.4809359999999998
	.quad	0x40103fa0d77b7c78              # double 4.0621369999999999
	.quad	0x401dc519bd4067cf              # double 7.4424809999999999
	.quad	0x3fdfc01e68a0d34a              # double 0.49610100000000001
	.quad	0x40163388a8b08dd2              # double 5.5503260000000001
	.quad	0x401901cd1c7de508              # double 6.2517589999999998
	.quad	0x40021dcad14a0a0f              # double 2.2645469999999999
	.quad	0x3fda34267839cd81              # double 0.40943299999999999
	.quad	0x40107ba27ae9ab2a              # double 4.1207370000000001
	.quad	0x401cba2d2fe3f35a              # double 7.181813
	.quad	0x3fee2704bc27631b              # double 0.94226299999999996
	.quad	0x40174cd07852f7f5              # double 5.8250140000000004
	.quad	0x400ee2cd39da1661              # double 3.8607429999999998
	.quad	0x4011bbfb9bed30f0              # double 4.4335769999999997
	.quad	0x3ffdc94c447c30d3              # double 1.861645
	.quad	0x3fef0c3b0c4588a0              # double 0.97024299999999996
	.quad	0x401a484d338f7985              # double 6.5706069999999999
	.quad	0x401ebc947064ecea              # double 7.6841600000000003
	.quad	0x4020001beb18116f              # double 8.0002130000000005
	.quad	0x401a1d3a1d323fee              # double 6.5285419999999998
	.quad	0x4022419c5a3e39f7              # double 9.1281459999999992
	.quad	0x3fc13edd8b60f1b2              # double 0.13473099999999999
	.quad	0x40142d740c4156e2              # double 5.0443879999999996
	.quad	0x4018484c271fff7a              # double 6.0706030000000002
	.quad	0x3ff7b585be1a8262              # double 1.4818169999999999
	.quad	0x3ffba7d77fae3609              # double 1.728477
	.quad	0x401a46cdaf4adbc6              # double 6.5691439999999997
	.quad	0x401ccc50ce4ead0c              # double 7.1995269999999998
	.quad	0x4020e253111f0c35              # double 8.4420400000000004
	.quad	0x4015315f02c4d65e              # double 5.2982139999999998
	.quad	0x401ae221426fe719              # double 6.7208300000000003
	.quad	0x4023fc9c2c1b10fd              # double 9.9933789999999991
	.quad	0x3ff83d66277c45cc              # double 1.5149900000000001
	.quad	0x4022a052d666a982              # double 9.3131319999999995
	.quad	0x3fd6b2e9ccb7d417              # double 0.35466999999999999
	.quad	0x4007173e24febd0a              # double 2.8863490000000001
	.quad	0x4022c31b36bd2b6f              # double 9.3810669999999998
	.quad	0x401df8858ff75968              # double 7.4926969999999997
	.quad	0x402277e9d94d0dd0              # double 9.2342060000000004
	.quad	0x400fadf47f993d53              # double 3.9599389999999999
	.quad	0x4023de093532e7b4              # double 9.9336640000000002
	.quad	0x401b3b2c83ec892b              # double 6.8077870000000003
	.quad	0x402228181e03f706              # double 9.0783090000000009
	.quad	0x400897acc4ef88b9              # double 3.0740599999999998
	.quad	0x401030e9d51b4fe8              # double 4.0477670000000003
	.quad	0x40237ad4d4024b34              # double 9.7399050000000002
	.quad	0x4009c2339c0ebee0              # double 3.2198250000000002
	.quad	0x4016a4edb2f661f2              # double 5.6610630000000004
	.quad	0x4013c8f7985271bd              # double 4.9462570000000001
	.quad	0x4009c1b328b6d86f              # double 3.2195800000000001
	.quad	0x4005aeabffcdab19              # double 2.7102889999999999
	.quad	0x40218bd7d3910c2c              # double 8.7731309999999993
	.quad	0x4017fbc382a12f90              # double 5.9958629999999999
	.quad	0x4020a5f3f961804e              # double 8.3241270000000007
	.quad	0x401fe1187e7c06e2              # double 7.9698200000000003
	.quad	0x40085d74d594f26b              # double 3.045633
	.quad	0x401fef1b69121251              # double 7.9835029999999997
	.quad	0x400294152b0a6fc6              # double 2.3223060000000002
	.quad	0x3fe59344806290ef              # double 0.67422700000000002
	.quad	0x4023736a619da9ca              # double 9.7254210000000008
	.quad	0x4013c9b9d7fd8277              # double 4.9469979999999998
	.quad	0x40178f53825e13b2              # double 5.8899670000000004
	.quad	0x402099c1d6cf850e              # double 8.3003070000000001
	.quad	0x400cee6106ab14ec              # double 3.6163959999999999
	.quad	0x3fd85d7cb2d905c0              # double 0.38070599999999999
	.quad	0x40175ac9f2fdb8fe              # double 5.8386610000000001
	.quad	0x4022ab267c6b8b69              # double 9.3342779999999994
	.quad	0x40056ea960b6f9fd              # double 2.6790340000000001
	.quad	0x401ae876e1deacc9              # double 6.7270159999999999
	.quad	0x3f7adc8fb86f47b6              # double 0.0065579999999999996
	.quad	0x401b60364388ebcc              # double 6.8439569999999996
	.quad	0x401bc3ffac1d29dc              # double 6.9414049999999996
	.quad	0x3ff3b354c122749f              # double 1.231282
	.quad	0x4015a5b8dc55000d              # double 5.4118380000000004
	.quad	0x40106655193708ab              # double 4.0999340000000002
	.quad	0x40035dfc19c17226              # double 2.4208910000000001
	.quad	0x40191011d3671ac1              # double 6.2656929999999997
	.quad	0x4003f7635e74299e              # double 2.4957950000000002
	.quad	0x40193963992c8c50              # double 6.306044
	.quad	0x401ab53fc0096feb              # double 6.6770009999999997
	.quad	0x3fd55942917507ea              # double 0.33357300000000001
	.quad	0x4018f590c0ad03da              # double 6.2398100000000003
	.quad	0x3fe54a1059ea5721              # double 0.66529099999999997
	.quad	0x40021d41fa765343              # double 2.2642859999999998
	.quad	0x4001240fa9c12f0a              # double 2.1426080000000001
	.quad	0x401d66234a87e38f              # double 7.3497440000000003
	.quad	0x4015485ec3dab5c4              # double 5.3206740000000003
	.quad	0x40100c7fbacb4289              # double 4.0122059999999999
	.quad	0x4011661565c2d278              # double 4.349691
	.quad	0x40019266ba493c8a              # double 2.196485
	.quad	0x4023f1697f1f9ad0              # double 9.971508
	.quad	0x400642352eb5f5f1              # double 2.7823280000000001
	.quad	0x401b8222d5171e2a              # double 6.8770860000000003
	.quad	0x40198e70c1333b97              # double 6.3891020000000003
	.quad	0x40138c3d68405b3a              # double 4.8869530000000001
	.quad	0x400d7de481f53826              # double 3.6864710000000001
	.quad	0x402084013ec460ee              # double 8.2578220000000009
	.quad	0x400813215fcc1872              # double 3.009341
	.quad	0x40175b5f1bef49cf              # double 5.8392299999999997
	.quad	0x3fcae9ee45c358b0              # double 0.21026400000000001
	.quad	0x3ff54ff972474539              # double 1.332025
	.quad	0x401a9606748e4756              # double 6.646509
	.quad	0x40195c16df3f9618              # double 6.339931
	.quad	0x401800247021d10b              # double 6.0001389999999999
	.quad	0x4005831162281345              # double 2.6889980000000002
	.quad	0x400a42602c9081c3              # double 3.28241
	.quad	0x3fdf280ae1049236              # double 0.486819
	.quad	0x401d01e53a81dc0e              # double 7.2518510000000003
	.quad	0x40019511dffc547a              # double 2.1977880000000001
	.quad	0x400ef34acaff6d33              # double 3.868795
	.quad	0x40171317efe0ce0c              # double 5.7686460000000004
	.quad	0x4013d818c5c9a34d              # double 4.9610320000000003
	.quad	0x3fe796a8b8f14db6              # double 0.73714100000000005
	.quad	0x401110b3d4ae429e              # double 4.266311
	.quad	0x3fd423a29c779a6b              # double 0.31467499999999998
	.quad	0x3ff765b530ced4e5              # double 1.462331
	.quad	0x4021cfff151e7536              # double 8.9062429999999999
	.quad	0x4020447cb70ac3a8              # double 8.1337639999999993
	.quad	0x3ff3463beec3979a              # double 1.204647
	.quad	0x4011d7a7008a697b              # double 4.4605980000000001
	.quad	0x4005591819d2391d              # double 2.6685029999999998
	.quad	0x4018a08f648c7193              # double 6.1567970000000001
	.quad	0x400a84567125dd09              # double 3.3146179999999998
	.quad	0x3ff475e310dbf056              # double 1.2787809999999999
	.quad	0x40072cfaeff5c6c1              # double 2.896963
	.quad	0x4023ef99c38b04ab              # double 9.9679699999999993
	.quad	0x3feac714fce746cc              # double 0.83680200000000004
	.quad	0x4023dc6eb0b7c350              # double 9.9305319999999995
	.quad	0x4013cdf19d66adb4              # double 4.951117
	.quad	0x401873ca7503b81b              # double 6.1130769999999997
	.quad	0x40217bb55ac03ff7              # double 8.7416180000000008
	.quad	0x400684ed6fda836f              # double 2.8149060000000001
	.quad	0x40231dadd9c27e95              # double 9.5579669999999996
	.quad	0x401094690de09353              # double 4.1449319999999998
	.quad	0x4018e4cdb7ae5797              # double 6.2234410000000002
	.quad	0x40228c784230fcf8              # double 9.2743549999999999
	.quad	0x4021175360d02470              # double 8.5455579999999998
	.quad	0x400464b1ab0856e7              # double 2.5491670000000002
	.quad	0x401bfb5bf6a0dbad              # double 6.9954679999999998
	.quad	0x3fda1a7e30878748              # double 0.40786699999999998
	.quad	0x400e2a643cc07aaf              # double 3.770699
	.quad	0x4000cadab9f559b4              # double 2.0990500000000001
	.quad	0x400e107bfe7e1fc1              # double 3.7580490000000002
	.quad	0x3fedeaa8eb463498              # double 0.93489500000000003
	.quad	0x3fd0a137f38c5437              # double 0.25984000000000002
	.quad	0x401deb352a843809              # double 7.4796950000000004
	.quad	0x4017c303c07ee0b1              # double 5.9404440000000003
	.quad	0x4022d74cd31769a9              # double 9.4205079999999998
	.quad	0x4023a5ff1d81f106              # double 9.8242119999999993
	.quad	0x401a819008205ff2              # double 6.6265260000000001
	.quad	0x4002fa365cb35f3d              # double 2.3721739999999998
	.quad	0x4023baf6e82949a5              # double 9.8651649999999992
	.quad	0x400147674d163348              # double 2.1598649999999999
	.quad	0x40167aa8650e7792              # double 5.619783
	.quad	0x3ff09e8d5410f94d              # double 1.0387090000000001
	.quad	0x3ffe51409a240315              # double 1.8948370000000001
	.quad	0x3ffb363800218def              # double 1.7007369999999999
	.quad	0x4021be195464dc23              # double 8.8712870000000006
	.quad	0x4002304bc27631b6              # double 2.2735820000000002
	.quad	0x4005a5753a3ec02f              # double 2.7057899999999999
	.quad	0x401143bb83cf2cf9              # double 4.3161449999999997
	.quad	0x401ccec41dd1a21f              # double 7.2019200000000003
	.quad	0x4020ea17b0f6ad71              # double 8.4572120000000002
	.quad	0x3fe6a60d4562e0a0              # double 0.70777000000000001
	.quad	0x40059552e2fbe33b              # double 2.6979120000000001
	.quad	0x40111644523f67f5              # double 4.2717450000000001
	.quad	0x4022f347e8ccdd94              # double 9.4751580000000004
	.quad	0x400a41847f562175              # double 3.2819910000000001
	.quad	0x401fc63e07a28bb1              # double 7.9435960000000003
	.quad	0x401995cd0bb6ed67              # double 6.3962899999999996
	.quad	0x4021fc6173b85e81              # double 8.9929310000000005
	.quad	0x40136b5e0f7fcfc4              # double 4.854851
	.quad	0x3feb5cbff47735c2              # double 0.85507200000000005
	.quad	0x40130fe2e6ea8544              # double 4.7655139999999996
	.quad	0x401ab0d0678c0054              # double 6.6726700000000001
	.quad	0x400f44302b40f66a              # double 3.9082949999999999
	.quad	0x40196b7e4de3b8a2              # double 6.3549740000000003
	.quad	0x401efe2046c764ae              # double 7.74817
	.quad	0x4017a756c93a7115              # double 5.9134169999999999
	.quad	0x401d84851a869403              # double 7.3794139999999997
	.quad	0x40010a3bddfc9ff9              # double 2.1299969999999999
	.quad	0x40220962ae4b0186              # double 9.0183309999999999
	.quad	0x401938b32ce89657              # double 6.3053710000000001
	.quad	0x4014e1233df2a9d6              # double 5.2198609999999999
	.quad	0x4018acc0bdcad14a              # double 6.168704
	.quad	0x400b204d12018a44              # double 3.3907720000000001
	.quad	0x401ddc2a02320968              # double 7.4650040000000004
	.quad	0x40205352c9d16fca              # double 8.1627410000000005
	.quad	0x3ff377a5f41aef70              # double 1.2167110000000001
	.quad	0x400ecdf3f961804e              # double 3.8505630000000002
	.quad	0x3ffc454477ff151e              # double 1.7669109999999999
	.quad	0x4010f395c4220360              # double 4.237876
	.quad	0x3fe4d5171e29b6b3              # double 0.65101200000000004
	.quad	0x401868b545c78a6e              # double 6.1022540000000003
	.quad	0x400177603925bb7b              # double 2.1832889999999998
	.quad	0x400dacff21b3aeef              # double 3.7094710000000002
	.quad	0x4017a60d4562e0a0              # double 5.9121600000000001
	.quad	0x400a7294dd72367e              # double 3.3059479999999999
	.quad	0x4001ed30f062d40b              # double 2.2408160000000001
	.quad	0x401d1365cb35f3d8              # double 7.2689430000000002
	.quad	0x401bb7121ab4b72c              # double 6.9287799999999997
	.quad	0x3feb51ed9dfdac69              # double 0.85375100000000004
	.quad	0x4017522ea0fd3b2a              # double 5.8302560000000003
	.quad	0x402115d4e8fb00bd              # double 8.5426400000000005
	.quad	0x40155ac9afe1da7b              # double 5.33866
	.quad	0x400e9a187a4a48f9              # double 3.8252419999999998
	.quad	0x3ffc85f17bd8be73              # double 1.7827010000000001
	.quad	0x4002f2cd7cf5f4e4              # double 2.3685559999999999
	.quad	0x40209832fcac8e69              # double 8.2972640000000002
	.quad	0x4014e6976bc1effa              # double 5.225187
	.quad	0x3f95ce18266772d6              # double 0.021294
	.quad	0x4023d3242070b8d0              # double 9.9123850000000004
	.quad	0x40229f5b5fa22707              # double 9.3112440000000003
	.quad	0x4010b331e3a7daa5              # double 4.174995
	.quad	0x40175b69984a0e41              # double 5.83927
	.quad	0x4021a61eb4202d9d              # double 8.8244530000000001
	.quad	0x3ff14cd74927913f              # double 1.0812600000000001
	.quad	0x401e19d12cadddf4              # double 7.5252119999999998
	.quad	0x40155f3fd933e35c              # double 5.3430169999999997
	.quad	0x400ec6adb402d16c              # double 3.8470110000000002
	.quad	0x401764d6a161e4f7              # double 5.8484749999999996
	.quad	0x400f584b1ab0856e              # double 3.9181119999999998
	.quad	0x3ffa6b5d462c343b              # double 1.6512119999999999
	.quad	0x4020fb2d2bb23572              # double 8.4905790000000003
	.quad	0x40209399f5dfeb8e              # double 8.2882840000000009
	.quad	0x400313d102bc72e2              # double 2.3846759999999998
	.quad	0x3ffe63704790b84a              # double 1.8992770000000001
	.quad	0x3fe81eeed8904f6e              # double 0.753776
	.quad	0x400d314ca925fe97              # double 3.6490719999999999
	.quad	0x401026351deefe50              # double 4.037312
	.quad	0x400493b4b2fa93af              # double 2.5721219999999998
	.quad	0x40177bb4916ca46e              # double 5.870806
	.quad	0x3fe0a11233df2a9d              # double 0.51966199999999996
	.quad	0x4021b141c8216c61              # double 8.8462049999999994
	.quad	0x400eddab5c39bcba              # double 3.8582369999999999
	.quad	0x3fafd04a2fcefaa4              # double 0.062135999999999997
	.quad	0x4007610624dd2f1b              # double 2.9223750000000002
	.quad	0x4018b1e0c5a8155d              # double 6.1737089999999997
	.quad	0x4010cb9d7fd82774              # double 4.1988430000000001
	.quad	0x40190c6de76427c8              # double 6.2621380000000002
	.quad	0x3ff49a32b12d3416              # double 1.2876460000000001
	.quad	0x402186bce8533b10              # double 8.7631599999999992
	.quad	0x4004e7ecfe9b7bf2              # double 2.613245
	.quad	0x3fc8c3e3193f6c27              # double 0.19347800000000001
	.quad	0x400feccab3edd8b6              # double 3.990621
	.quad	0x401b62e48e8a71de              # double 6.8465749999999996
	.quad	0x3fef228997c3d684              # double 0.97296599999999999
	.quad	0x4005b1c087442c80              # double 2.7117930000000001
	.quad	0x40155e9f2778140e              # double 5.3424040000000002
	.quad	0x4021e20bc382a130              # double 8.9414960000000008
	.quad	0x4005473abc947065              # double 2.65978
	.quad	0x40153ecfa69be09c              # double 5.3113390000000003
	.quad	0x4023177c45cbbc2c              # double 9.5458700000000007
	.quad	0x402014e5d5b24e9c              # double 8.0408159999999995
	.quad	0x400eab9f559b3d08              # double 3.8338000000000001
	.quad	0x3fd08f3eccc46951              # double 0.258743
	.quad	0x401bcd3a604e1e71              # double 6.950418
	.quad	0x3ff765eedcc20d56              # double 1.462386
	.quad	0x3ffd7065f9591cd2              # double 1.839941
	.quad	0x40118e553ac4f7ec              # double 4.3889969999999998
	.quad	0x3ff079c1f85d744f              # double 1.0297259999999999
	.quad	0x3fd1934acaff6d33              # double 0.274615
	.quad	0x4011691819d2391d              # double 4.3526309999999997
	.quad	0x4021e29a5ebb773a              # double 8.9425840000000001
	.quad	0x3fe7654f7a919696              # double 0.73111700000000002
	.quad	0x400bfff9b56323bc              # double 3.4999880000000001
	.quad	0x40141344806290ef              # double 5.0188160000000002
	.quad	0x4002b67d34df04de              # double 2.3391060000000001
	.quad	0x3fff7499d0203e64              # double 1.965967
	.quad	0x3ff15e59f2ba9d1f              # double 1.0855349999999999
	.quad	0x40102de093532e7b              # double 4.0448019999999998
	.quad	0x4022ae0ded288ce7              # double 9.33995
	.quad	0x3fd4c5c9a34ca0c3              # double 0.32457200000000003
	.quad	0x401a6976ff3ade22              # double 6.6029929999999997
	.quad	0x3ff1b49385836220              # double 1.1065860000000001
	.quad	0x401e9337eb28d866              # double 7.6437679999999997
	.quad	0x40126fec99f1ae2e              # double 4.6093010000000003
	.quad	0x400cfa49c2c1b110              # double 3.6222110000000001
	.quad	0x3fc0449dbec2480f              # double 0.12709400000000001
	.quad	0x400d28ba83f4eca7              # double 3.6448870000000002
	.quad	0x401fafb86f47b678              # double 7.921602
	.quad	0x401b9f39085f4a12              # double 6.9054909999999996
	.quad	0x40164a2339c0ebee              # double 5.5724
	.quad	0x4010504d98394749              # double 4.0784209999999996
	.quad	0x3ff6ac17ebaf1023              # double 1.4170149999999999
	.quad	0x4022c89e12a51e32              # double 9.3918309999999998
	.quad	0x401b3da9c99285a9              # double 6.8102179999999999
	.quad	0x400013a3ec02f2fa              # double 2.0095900000000002
	.quad	0x3fe754cdb7ae5797              # double 0.72910200000000003
	.quad	0x400e69478c868ba0              # double 3.8014060000000001
	.quad	0x40159d013a92a305              # double 5.4033249999999997
	.quad	0x4014cd20f2becedd              # double 5.2003209999999997
	.quad	0x400b4a78af3e468d              # double 3.4113630000000001
	.quad	0x3fdcdf7a4e7ab756              # double 0.45113999999999999
	.quad	0x3fe11f85d744f5d3              # double 0.53509799999999996
	.quad	0x3fed6bfec13b9f12              # double 0.91943299999999994
	.quad	0x4023763497b7414a              # double 9.7308699999999995
	.quad	0x40116b67c286f8ad              # double 4.3548879999999999
	.quad	0x4022e9409a240315              # double 9.4555710000000008
	.quad	0x401f41e4712e4085              # double 7.8143479999999998
	.quad	0x400defe2e6ea8544              # double 3.7421319999999998
	.quad	0x4016ed9513f8db49              # double 5.7320140000000004
	.quad	0x40113cdfaca36199              # double 4.3094469999999996
	.quad	0x401fe25247cb70ac              # double 7.9710169999999998
	.quad	0x4001764adff822bc              # double 2.18276
	.quad	0x4001a2a023209678              # double 2.2044069999999998
	.quad	0x4019f715831f03d1              # double 6.4912929999999998
	.quad	0x4021cb95e5aff2a1              # double 8.8976279999999992
	.quad	0x40222e9c23b7952d              # double 9.0910349999999998
	.quad	0x401326c5d206c871              # double 4.7878639999999999
	.quad	0x401aff041461b6d4              # double 6.7490389999999998
	.quad	0x4019b95a294141ea              # double 6.4310080000000003
	.quad	0x401294d9c6b0531a              # double 4.6453620000000004
	.quad	0x4013cca643cc07ab              # double 4.9498530000000001
	.quad	0x40226480c73abc94              # double 9.1962949999999992
	.quad	0x4020accb3a2595bc              # double 8.3374880000000004
	.quad	0x401692a5a469d734              # double 5.6432099999999998
	.quad	0x40235701fb82c2bd              # double 9.6699369999999991
	.quad	0x402078d8a979e16d              # double 8.2360279999999992
	.quad	0x40134d759ee88df3              # double 4.8256439999999996
	.quad	0x400fa7bbb62413db              # double 3.9569009999999998
	.quad	0x402377521144cbe2              # double 9.7330480000000001
	.quad	0x402284f440af1cb9              # double 9.2596760000000007
	.quad	0x400ab8fe69270b07              # double 3.3403290000000001
	.quad	0x401fa49a9973d9ec              # double 7.9107459999999996
	.quad	0x3fbe3ca7503b81b6              # double 0.118113
	.quad	0x4021d520afa2f05a              # double 8.9162649999999992
	.quad	0x401635781c714fce              # double 5.5522159999999996
	.quad	0x3fe0a4f440af1cb9              # double 0.52013600000000004
	.quad	0x402053cf0b6b6e0d              # double 8.1636889999999998
	.quad	0x402057229e90795f              # double 8.1701859999999993
	.quad	0x3fff6544fe36d224              # double 1.962224
	.quad	0x4022394940bbb1f2              # double 9.1118869999999994
	.quad	0x3fea586876e1dead              # double 0.82329200000000002
	.quad	0x4018f906034f3fd9              # double 6.2431869999999998
	.quad	0x400eecb295e9e1b1              # double 3.8655750000000002
	.quad	0x3ffa67f8012dfd69              # double 1.6503829999999999
	.quad	0x3fed0c9320d9945b              # double 0.90778499999999995
	.quad	0x400a98b26394face              # double 3.3245589999999998
	.quad	0x3fe2c3547e06961c              # double 0.58634399999999998
	.quad	0x4020978df7a4e7ab              # double 8.2960049999999992
	.quad	0x4019a2003ab862b2              # double 6.4082039999999996
	.quad	0x40103c9795b35b0c              # double 4.0591720000000002
	.quad	0x4006ee4f3343fa2b              # double 2.8663620000000001
	.quad	0x3fedc9adc8fb86f4              # double 0.93086899999999994
	.quad	0x401b34a7b4e54f7b              # double 6.8014210000000004
	.quad	0x4022e9e3c968943e              # double 9.4568159999999999
	.quad	0x4020121e1d2178f7              # double 8.0353860000000008
	.quad	0x4016c45132f87ad1              # double 5.6917160000000004
	.quad	0x402173bcd35a8588              # double 8.7260500000000008
	.quad	0x3ff2eef0ae536502              # double 1.183335
	.quad	0x401ac9ab6d00b45b              # double 6.6969430000000001
	.quad	0x400d6b0ea18372e7              # double 3.6772740000000002
	.quad	0x3ff05bd944aa53fc              # double 1.022424
	.quad	0x4007ee4fb97bb731              # double 2.9913630000000002
	.quad	0x3ffead70e6f2e8c0              # double 1.9173439999999999
	.quad	0x40225b864cb5bb38              # double 9.1787589999999994
	.quad	0x400037f06705c897              # double 2.0273140000000001
	.quad	0x40198f36ac647779              # double 6.3898570000000001
	.quad	0x401fc1554fbdad75              # double 7.9388019999999999
	.quad	0x400b6806af46aa08              # double 3.4257939999999998
	.quad	0x3febf566490a350d              # double 0.87370599999999998
	.quad	0x401fe58a32f44913              # double 7.9741600000000003
	.quad	0x401e5070b8cfbfc6              # double 7.5785549999999997
	.quad	0x4019e2ac322291fb              # double 6.4713599999999998
	.quad	0x402116935b91f70e              # double 8.5440930000000002
	.quad	0x40140961c36976bc              # double 5.0091619999999999
	.quad	0x401f8760bf5d7881              # double 7.8822049999999999
	.quad	0x401b0a10e0221427              # double 6.75983
	.quad	0x402316634117f844              # double 9.5437259999999994
	.quad	0x3ff4b76a2f48c2e7              # double 1.2947789999999999
	.quad	0x4020060ed80a17b1              # double 8.0118320000000001
	.quad	0x40181b7739f340d5              # double 6.0268220000000001
	.quad	0x401e26473471f794              # double 7.5373809999999999
	.quad	0x4019b1c36976bc1f              # double 6.423597
	.quad	0x4023528848387df6              # double 9.6611960000000003
	.quad	0x4023ba67839cd812              # double 9.8640709999999991
	.quad	0x4013afa7221858bc              # double 4.9215359999999997
	.quad	0x4022b1276fb09204              # double 9.3460040000000006
	.quad	0x402125f266ba493d              # double 8.5741150000000008
	.quad	0x3fa757f737da61e1              # double 0.045593000000000002
	.quad	0x402265c2d2780779              # double 9.1987520000000007
	.quad	0x3fb9e2584f4c6e6e              # double 0.10111000000000001
	.quad	0x400b3647baa9b49a              # double 3.4015040000000001
	.quad	0x401717531db445ed              # double 5.7727779999999997
	.quad	0x3fecc3d46b26bf87              # double 0.89890499999999995
	.quad	0x3ff48e93e1c9b414              # double 1.2848090000000001
	.quad	0x401af97c3d68405b              # double 6.7436379999999998
	.quad	0x4000186e3b46fdeb              # double 2.0119289999999999
	.quad	0x3fecdae1cde5d181              # double 0.90171900000000005
	.quad	0x401e92db1e9f2778              # double 7.6434139999999999
	.quad	0x3fc2daa0cae642c0              # double 0.14729700000000001
	.quad	0x3feb469b5a63f9a5              # double 0.85236900000000004
	.quad	0x4010c6d7a56de332              # double 4.1941819999999996
	.quad	0x4019e7e9d94d0dd0              # double 6.4764780000000002
	.quad	0x401aab9d3cbc48f1              # double 6.667592
	.quad	0x401939ea9a3d2d88              # double 6.306559
	.quad	0x4015683e8576cce6              # double 5.351801
	.quad	0x3f9b7baecd07852f              # double 0.026838999999999998
	.quad	0x40205d5a7d24180d              # double 8.1823309999999996
	.quad	0x401320c5a8155d5f              # double 4.7820039999999997
	.quad	0x3ffe8ccccccccccd              # double 1.909375
	.quad	0x4020c8af1cb89d6b              # double 8.3919610000000002
	.quad	0x401cee675147f130              # double 7.2328159999999997
	.quad	0x400b4d79d0a67621              # double 3.41283
	.quad	0x40225786a098915c              # double 9.1709490000000002
	.quad	0x40120538ac18f81f              # double 4.5050990000000004
	.quad	0x400de5b7cfe58601              # double 3.7371669999999999
	.quad	0x4004ab9991361dc9              # double 2.5837889999999999
	.quad	0x400336e0d23d4f16              # double 2.401796
	.quad	0x4006bb906466b1e6              # double 2.8415840000000001
	.quad	0x4014206290eed02d              # double 5.0316260000000002
	.quad	0x40222459fb1e18f0              # double 9.0709990000000005
	.quad	0x400d7b29a1b9f98b              # double 3.6851379999999998
	.quad	0x40024774eebf65dc              # double 2.284891
	.quad	0x401a1008637bd05b              # double 6.515657
	.quad	0x3ffb748c2e770bd0              # double 1.715954
	.quad	0x4015f0c026cc1ca4              # double 5.4851080000000003
	.quad	0x400e155f78359bc3              # double 3.7604359999999999
	.quad	0x4021d6dedaec4a41              # double 8.9196690000000007
	.quad	0x4020828ed5f138bd              # double 8.2549960000000002
	.quad	0x3ff041e4712e4085              # double 1.016087
	.quad	0x40070ed0b30b5aa7              # double 2.882234
	.quad	0x400cb3c36113404f              # double 3.5877750000000002
	.quad	0x402289b1fab96f22              # double 9.2689360000000001
	.quad	0x4019c81e4712e408              # double 6.4454279999999997
	.quad	0x3ff0515592d98bf8              # double 1.019857
	.quad	0x40106cb3a2595bbc              # double 4.1061540000000001
	.quad	0x401b2cd9a52263d8              # double 6.7937989999999999
	.quad	0x400ec324c8366517              # double 3.8452850000000001
	.quad	0x401bd31b584b1ab1              # double 6.9561590000000004
	.quad	0x4005dd0bfa0945fa              # double 2.7329330000000001
	.quad	0x4002f781c714fce7              # double 2.3708529999999999
	.quad	0x4001ae74f2f123c4              # double 2.2101839999999999
	.quad	0x4022e1b4bb5e0f80              # double 9.4408320000000003
	.quad	0x40119dedaec4a409              # double 4.4042269999999997
	.quad	0x4022428deb0fadf3              # double 9.1299890000000001
	.quad	0x400a5d577963992d              # double 3.2955770000000002
	.quad	0x40103aba38759253              # double 4.0573509999999997
	.quad	0x4015132b12d3415b              # double 5.2687189999999999
	.quad	0x400be512231832fd              # double 3.4868510000000001
	.quad	0x401ea185058dde7a              # double 7.6577339999999996
	.quad	0x400425a921ccd962              # double 2.518389
	.quad	0x4015741a6937d1fe              # double 5.3633819999999996
	.quad	0x4011b3c74fb549f9              # double 4.4255649999999997
	.quad	0x4000a8ac5c13fd0d              # double 2.08236
	.quad	0x3ffaf039ef0f16f4              # double 1.683649
	.quad	0x4003ef901083dbc2              # double 2.4919739999999999
	.quad	0x40193d1633482be9              # double 6.3096550000000002
	.quad	0x3fc4efed634549b6              # double 0.163572
	.quad	0x40230433508f648c              # double 9.5082039999999992
	.quad	0x3fc09ea9a3d2d880              # double 0.12984200000000001
	.quad	0x400a9a6937d1fe65              # double 3.325396
	.quad	0x401c6f6cefed6345              # double 7.1088139999999997
	.quad	0x3fe8b1704ff4341a              # double 0.77166000000000001
	.quad	0x3ffcf81e8a2ec28b              # double 1.810576
	.quad	0x40209b17efe0ce0c              # double 8.3029170000000007
	.quad	0x4021ad983947496b              # double 8.8390520000000006
	.quad	0x401c052220bc382a              # double 7.0050129999999999
	.quad	0x4020bb90c9107faa              # double 8.366339
	.quad	0x40166fabda0dfdf0              # double 5.6090540000000004
	.quad	0x40028a21a719b4dd              # double 2.317447
	.quad	0x4021557fb69984a1              # double 8.6669900000000002
	.quad	0x40041f52fc2656ac              # double 2.5152950000000001
	.quad	0x401cfd78811b1d93              # double 7.2475300000000002
	.quad	0x400ed267c6b8b695              # double 3.8527369999999999
	.quad	0x402116e935b91f71              # double 8.5447480000000002
	.quad	0x401fb4c2f837b4a2              # double 7.9265249999999998
	.quad	0x401d2693c03bc4d2              # double 7.2876729999999998
	.quad	0x401cfe03b3e9a6f8              # double 7.2480609999999999
	.quad	0x400e4df7a4e7ab75              # double 3.7880699999999998
	.quad	0x402339274e22a2c2              # double 9.6116279999999996
	.quad	0x401ef888f861a60d              # double 7.7427099999999997
	.quad	0x401a9d8c2a454de8              # double 6.6538550000000001
	.quad	0x4018e465625a682b              # double 6.2230429999999997
	.quad	0x401f9e38eb0318b9              # double 7.9045139999999998
	.quad	0x400c858ff7596851              # double 3.5652159999999999
	.quad	0x3fd3fbc5de9c022a              # double 0.31224200000000002
	.quad	0x401c7b5aa715831f              # double 7.120463
	.quad	0x40190a5b530ced4e              # double 6.2601139999999997
	.quad	0x40228c8ffb8b2639              # double 9.2745359999999994
	.quad	0x400d066f5019f3c7              # double 3.628142
	.quad	0x3fec3bb1f255f352              # double 0.88228700000000004
	.quad	0x40199c6045baf534              # double 6.402711
	.quad	0x4014bf21b3aeee95              # double 5.1866519999999996
	.quad	0x401666366d7a56de              # double 5.5998169999999998
	.quad	0x3fe4a4a276b7ed42              # double 0.64509700000000003
	.quad	0x40132dd97f62b6ae              # double 4.7947749999999996
	.quad	0x4021ce7ab7564303              # double 8.9032800000000005
	.quad	0x4023521511dffc54              # double 9.6603169999999991
	.quad	0x40054055757d5a9f              # double 2.6564130000000001
	.quad	0x4005bca29845dc83              # double 2.7171069999999999
	.quad	0x40214b3e78e1932d              # double 8.6469609999999992
	.quad	0x4018a44d013a92a3              # double 6.16045
	.quad	0x3fe354f15e7c8d19              # double 0.60411899999999996
	.quad	0x40201e861e92923e              # double 8.0596169999999994
	.quad	0x3ffa6de00d1b7176              # double 1.6518250000000001
	.quad	0x40114d616f86a099              # double 4.3255670000000004
	.quad	0x4023fbcf4e874c90              # double 9.991816
	.quad	0x401d3216c61522a7              # double 7.298915
	.quad	0x40057f5cf2495e18              # double 2.687189
	.quad	0x401a82f1ed17c5ef              # double 6.6278759999999997
	.quad	0x4016b4a3c64345d0              # double 5.6764060000000001
	.quad	0x400ff3c925785f8d              # double 3.9940359999999999
	.quad	0x40208c21c044284e              # double 8.273695
	.quad	0x401e5cb74ddf86e4              # double 7.5905430000000003
	.quad	0x400d93dea465a576              # double 3.6972019999999999
	.quad	0x40228116ca46e08f              # double 9.2521269999999998
	.quad	0x40164a821f2990f3              # double 5.572762
	.quad	0x402170ca8198f1d4              # double 8.7202950000000001
	.quad	0x401982a8c9b84556              # double 6.3775969999999997
	.quad	0x3fd52428d434a01b              # double 0.33033200000000001
	.quad	0x4011ce4e69f05ea2              # double 4.4514709999999997
	.quad	0x4012f96851223183              # double 4.7435619999999998
	.quad	0x40194dc33721d53d              # double 6.3259400000000001
	.quad	0x4022a9b71758e219              # double 9.3314749999999993
	.quad	0x40083b1a6d698fe7              # double 3.0288590000000002
	.quad	0x3fe19a95421c0443              # double 0.55012000000000005
	.quad	0x4022d10e23af31b1              # double 9.4083109999999994
	.quad	0x4012085f8d2e514c              # double 4.5081769999999999
	.quad	0x40203fc3d68405b4              # double 8.1245410000000006
	.quad	0x401807cc7d1bb491              # double 6.0076159999999996
	.quad	0x4007e009f623076c              # double 2.984394
	.quad	0x402383636f3b213e              # double 9.7566179999999996
	.quad	0x400840620ab71327              # double 3.0314369999999999
	.quad	0x40060a02b841248d              # double 2.7548879999999998
	.quad	0x3ff07ebaf102363b              # double 1.03094
	.quad	0x400217867f0aa21a              # double 2.2614869999999998
	.quad	0x400dacfbfc6540cc              # double 3.7094649999999998
	.quad	0x400f3efbf401c4fc              # double 3.9057539999999999
	.quad	0x4014df1bac2df0d4              # double 5.2178789999999999
	.quad	0x3ff36de225fa658c              # double 1.2143269999999999
	.quad	0x3ff18b827fa1a0cf              # double 1.09656
	.quad	0x401265add9c27e95              # double 4.5992959999999998
	.quad	0x400d76c58eeae9ee              # double 3.6829939999999999
	.quad	0x401d36cb966be7b0              # double 7.3035110000000003
	.quad	0x3ff41c63ae2541d9              # double 1.256931
	.quad	0x400fbd2630ec3116              # double 3.9673579999999999
	.quad	0x4023ac7c5260f5e4              # double 9.8368859999999997
	.quad	0x3ff7dc193b3a68b2              # double 1.4912350000000001
	.quad	0x40220400da1a9329              # double 9.0078189999999996
	.quad	0x4007b76922d948dc              # double 2.964556
	.quad	0x40152414a4d2b2c0              # double 5.2852350000000001
	.quad	0x4023fa56798958da              # double 9.9889410000000005
	.quad	0x3ffc8fa8b4bf8fcd              # double 1.7850729999999999
	.quad	0x3ff2061b6d43d039              # double 1.1264909999999999
	.quad	0x3ff952d87f88765c              # double 1.5827260000000001
	.quad	0x4018aaf07bfe7e20              # double 6.1669330000000002
	.quad	0x401cae5d5b24e9c4              # double 7.1702779999999997
	.quad	0x4007852deca2552a              # double 2.940029
	.quad	0x401910a2877ee4e2              # double 6.2662449999999996
	.quad	0x40077d4845132f88              # double 2.9361730000000001
	.quad	0x4017d2b40f66a551              # double 5.9557650000000004
	.quad	0x401de46f15619115              # double 7.4730800000000004
	.quad	0x400fd5a07b352a84              # double 3.9793099999999999
	.quad	0x40187dbb59ddc1e8              # double 6.1227850000000004
	.quad	0x401205436b8f9b13              # double 4.5051399999999999
	.quad	0x402062ebe596c82e              # double 8.193206
	.quad	0x4015bb3892ee84ad              # double 5.4328329999999996
	.quad	0x401ac5197a24894c              # double 6.6924799999999998
	.quad	0x4022882dbe7f2c30              # double 9.2659739999999999
	.quad	0x40239f92af9a8cdf              # double 9.8116660000000006
	.quad	0x4014151a86940358              # double 5.0206090000000003
	.quad	0x401cb24180d3cff6              # double 7.1740779999999997
	.quad	0x40207574f722e1ac              # double 8.2294079999999993
	.quad	0x4023fb5f5f0b2852              # double 9.9909619999999997
	.quad	0x402023b1af3a14cf              # double 8.0697150000000004
	.quad	0x401436d7a56de332              # double 5.0535569999999996
	.quad	0x40142eb1c432ca58              # double 5.0456000000000003
	.quad	0x3fd8e7a743a647fe              # double 0.38913900000000001
	.quad	0x401f5a21a719b4dd              # double 7.838019
	.quad	0x401cadc443914f48              # double 7.1696939999999998
	.quad	0x401d74d2b2bfdb4d              # double 7.3640850000000002
	.quad	0x4013078d0cc35ce2              # double 4.7573740000000004
	.quad	0x401714b05b7cfe58              # double 5.7702039999999997
	.quad	0x401f3fe2e6ea8544              # double 7.8123889999999996
	.quad	0x400fb18c9fb6134d              # double 3.961694
	.quad	0x4023c3662fdfc19c              # double 9.8816389999999998
	.quad	0x401573e7d135115a              # double 5.3631890000000002
	.quad	0x401a6fdc5931ca7d              # double 6.6092389999999996
	.quad	0x40239049667b5f1c              # double 9.7818100000000001
	.quad	0x401510e1719f7f8d              # double 5.2664850000000003
	.quad	0x4007377186551937              # double 2.902072
	.quad	0x3ff23d7a13c254a4              # double 1.1400090000000001
	.quad	0x4022d635a426bb56              # double 9.4183780000000006
	.quad	0x4015bbf5515054ac              # double 5.4335529999999999
	.quad	0x4012342cc2d6a9c5              # double 4.5509519999999997
	.quad	0x402094abc5154867              # double 8.2903730000000007
	.quad	0x4008e6d506573216              # double 3.112711
	.quad	0x40156899bf5946c3              # double 5.3521489999999998
	.quad	0x401f0ed916872b02              # double 7.7645
	.quad	0x402095903a7546d4              # double 8.292116
	.quad	0x4013d83c6c97d8cf              # double 4.9611679999999998
	.quad	0x4020d464ba94bbe4              # double 8.4148309999999995
	.quad	0x4014da0b1bbcf4e8              # double 5.2129329999999996
	.quad	0x401f3deb52c9d170              # double 7.8104680000000002
	.quad	0x40022b29e4d5d80e              # double 2.2710759999999999
	.quad	0x401de0e7bc3c5bd1              # double 7.4696340000000001
	.quad	0x40178b8c32a8c9b8              # double 5.8862769999999998
	.quad	0x4021e73e0370cdc8              # double 8.9516449999999992
	.quad	0x4001e8954a7f8013              # double 2.2385660000000001
	.quad	0x40075c64ba94bbe4              # double 2.9201139999999999
	.quad	0x401ad78d4fdf3b64              # double 6.7104999999999997
	.quad	0x401da23d0bfa0946              # double 7.408436
	.quad	0x4021c064ece9a2c6              # double 8.8757699999999993
	.quad	0x3ff07f20a73f748a              # double 1.031037
	.quad	0x3febaf1a9fbe76c9              # double 0.86512500000000003
	.quad	0x400fcbe0589acbc9              # double 3.9745490000000001
	.quad	0x4002ff75104d551d              # double 2.3747349999999998
	.quad	0x401678372e6a7696              # double 5.6173979999999997
	.quad	0x40093d09e12a51e3              # double 3.1548039999999999
	.quad	0x40127bf2b239a390              # double 4.6210430000000002
	.quad	0x401b6985f06f6944              # double 6.8530499999999996
	.quad	0x400c1903211cb03a              # double 3.512213
	.quad	0x4018029ae4f33440              # double 6.0025440000000003
	.quad	0x3fdb1682f944241c              # double 0.42324899999999999
	.quad	0x401e381626b2f230              # double 7.5547719999999998
	.quad	0x40065f865d7cb2d9              # double 2.796643
	.quad	0x3fecdf2239e6ab9b              # double 0.90223799999999998
	.quad	0x401bc2645e4e69f0              # double 6.9398359999999997
	.quad	0x40202b1c64ba94bc              # double 8.0842010000000001
	.quad	0x40222bb213e3e293              # double 9.0853429999999999
	.quad	0x4016a996fa82e87d              # double 5.6656149999999998
	.quad	0x4011bf961804d984              # double 4.4370960000000004
	.quad	0x3ffa454046412cf1              # double 1.641907
	.quad	0x402031919ac79703              # double 8.0968140000000002
	.quad	0x4019e79f666234a8              # double 6.4761939999999996
	.quad	0x401f9426bb55ac04              # double 7.894679
	.quad	0x3feeb0f49491f2dc              # double 0.95910099999999998
	.quad	0x401dc7e9531550ca              # double 7.4452259999999999
	.quad	0x400fac5436b8f9b1              # double 3.9591449999999999
	.quad	0x401c24755ffe6d59              # double 7.0356040000000002
	.quad	0x40213f07e175d13d              # double 8.6231069999999992
	.quad	0x401dde4ef0281ba8              # double 7.467098
	.quad	0x4011217dae81882b              # double 4.2827060000000001
	.quad	0x4015ae2f37fbefd0              # double 5.420102
	.quad	0x401b7e51d25aab47              # double 6.8733589999999998
	.quad	0x4022354562e09fe8              # double 9.1040449999999993
	.quad	0x4022435c182ecaef              # double 9.1315620000000006
	.quad	0x40166ffe2a3cea6c              # double 5.6093679999999999
	.quad	0x400ada4d6e47dc38              # double 3.3565930000000002
	.quad	0x40238ecaab8a5ce6              # double 9.7788900000000005
	.quad	0x40198950331e3a7e              # double 6.3840950000000003
	.quad	0x4011e37ac3eb7cbb              # double 4.4721479999999998
	.quad	0x3ffec07aaef2c732              # double 1.9219919999999999
	.quad	0x3fe5df4e4430b179              # double 0.68350900000000003
	.quad	0x4023d0685553ef6b              # double 9.9070459999999993
	.quad	0x4021c2fb19e731d3              # double 8.8808220000000002
	.quad	0x40217f6fb09203a3              # double 8.7488989999999998
	.quad	0x40024e91c8eabffd              # double 2.2883640000000001
	.quad	0x40031bae46cfc82a              # double 2.3885160000000001
	.quad	0x402226caab8a5ce6              # double 9.0757650000000005
	.quad	0x3ffc763c31df761d              # double 1.7788660000000001
	.quad	0x402137eeb2d0a244              # double 8.6092429999999993
	.quad	0x4013313b18dac259              # double 4.7980770000000001
	.quad	0x3ffa844ae85b9e8c              # double 1.6572979999999999
	.quad	0x4006594b7b28954a              # double 2.7936009999999998
	.quad	0x4021d63ae2541d8f              # double 8.9184180000000008
	.quad	0x3fe6258d5842b735              # double 0.69208400000000003
	.quad	0x3ffb712b1b36bd2b              # double 1.7151289999999999
	.quad	0x40091ab191dde376              # double 3.1380340000000002
	.quad	0x4013a7ad080b673c              # double 4.9137459999999997
	.quad	0x4018b492ff4ba51a              # double 6.176342
	.quad	0x4022e20a52695960              # double 9.4414850000000001
	.quad	0x401acdabe27179c0              # double 6.7008510000000001
	.quad	0x4011069a91105e1c              # double 4.2564489999999999
	.quad	0x401677891e215337              # double 5.6167340000000001
	.quad	0x401063532e7b3d8e              # double 4.096997
	.quad	0x40199704790b8499              # double 6.3974780000000004
	.quad	0x40052158fb43d89d              # double 2.641283
	.quad	0x4020b56451b93038              # double 8.3542810000000003
	.quad	0x3ffbe9b280f12c28              # double 1.7445550000000001
	.quad	0x40202ba6266fd652              # double 8.0852520000000005
	.quad	0x4020e7776c4827b7              # double 8.452083
	.quad	0x3ff18d045fe11127              # double 1.0969279999999999
	.quad	0x401b7d651b0ccbc0              # double 6.8724559999999997
	.quad	0x3fec1e34330d7386              # double 0.878687
	.quad	0x400ed791819d2392              # double 3.8552580000000001
	.quad	0x401617a46173b85f              # double 5.5230880000000004
	.quad	0x401cd40d0aaa7ded              # double 7.2070809999999996
	.quad	0x3ffd8055fbb517a4              # double 1.8438319999999999
	.quad	0x3fe74dbdf8f47304              # double 0.72824
	.quad	0x3f824e160d887ebf              # double 0.0089379999999999997
	.quad	0x40184c3760bf5d79              # double 6.0744300000000004
	.quad	0x3ff16cc814d7279a              # double 1.0890580000000001
	.quad	0x3ffeb9e3864cb5bb              # double 1.920383
	.quad	0x40106a58f7121ab5              # double 4.1038550000000003
	.quad	0x3ffd75b3e1437c57              # double 1.8412360000000001
	.quad	0x4012c9d1b2e59afa              # double 4.6970890000000001
	.quad	0x40126d25edd05293              # double 4.6065899999999997
	.quad	0x3fda03a7546d3f9e              # double 0.40647299999999997
	.quad	0x40159d7060bb2bbb              # double 5.4037490000000004
	.quad	0x4017bde1198aeb81              # double 5.9354290000000001
	.quad	0x40201892ccf6be38              # double 8.0479950000000002
	.quad	0x401dbfeac42e989a              # double 7.4374190000000002
	.quad	0x3fd1e4bcad9ad85e              # double 0.279586
	.quad	0x400ea09c3ce2089e              # double 3.8284229999999999
	.quad	0x4022642528ae74f3              # double 9.1955960000000001
	.quad	0x4004f8f7121ab4b7              # double 2.6215649999999999
	.quad	0x401d1f55de58e64b              # double 7.2806009999999999
	.quad	0x4017c5dfa871a3b1              # double 5.9432359999999997
	.quad	0x3ffb79f23465625a              # double 1.7172719999999999
	.quad	0x400b768ad6883772              # double 3.4328820000000002
	.quad	0x3ff3ff705857afea              # double 1.2498629999999999
	.quad	0x3ff0edd69d30270f              # double 1.058066
	.quad	0x401e857470eb24a7              # double 7.6303270000000003
	.quad	0x3ff702e87d2c7b89              # double 1.43821
	.quad	0x3ffc4672756861e9              # double 1.767199
	.quad	0x4016ca66559f6ec6              # double 5.6976560000000003
	.quad	0x401ef7967caea748              # double 7.7417850000000001
	.quad	0x402213d859c8c932              # double 9.0387599999999999
	.quad	0x3ff562089e34330d              # double 1.3364339999999999
	.quad	0x4023096ca46e08f2              # double 9.5184069999999998
	.quad	0x4016e91e215336df              # double 5.7276540000000002
	.quad	0x4022b00218def417              # double 9.3437660000000005
	.quad	0x401156191148fda0              # double 4.3340800000000002
	.quad	0x3ff9534df04ddb55              # double 1.582838
	.quad	0x401de3fe5c91d14e              # double 7.4726499999999998
	.quad	0x40108e4d5d80e497              # double 4.1389670000000001
	.quad	0x400892a5a469d734              # double 3.0716049999999999
	.quad	0x4022d18e325d4a5e              # double 9.4092880000000001
	.quad	0x401e18af3e468cac              # double 7.5241059999999997
	.quad	0x3ff6a731d2e0e304              # double 1.4158189999999999
	.quad	0x4015ea26e5471716              # double 5.4786640000000002
	.quad	0x40125bfd2e946801              # double 4.5898329999999996
	.quad	0x400a54784230fcf8              # double 3.291245
	.quad	0x401d7055fbb517a4              # double 7.3597029999999997
	.quad	0x40218fb8d3f1843c              # double 8.7807069999999995
	.quad	0x3feca8240b780347              # double 0.89552500000000002
	.quad	0x40166996312f4cf5              # double 5.6031120000000003
	.quad	0x40012ccee5abc0e4              # double 2.1468790000000002
	.quad	0x402196afcce1c582              # double 8.7943099999999994
	.quad	0x400d88f5c28f5c29              # double 3.691875
	.quad	0x400b462bae03b3ea              # double 3.4092630000000002
	.quad	0x4021c3b23571d1d4              # double 8.8822189999999991
	.quad	0x4020a193d5347a5b              # double 8.3155809999999999
	.quad	0x400d6a6dacabc515              # double 3.6769669999999999
	.quad	0x3ff1ae536501e258              # double 1.1050599999999999
	.quad	0x40224cd74927913f              # double 9.1500800000000009
	.quad	0x401b4c764adff823              # double 6.8246700000000002
	.quad	0x4001f4ad362e9036              # double 2.2444709999999999
	.quad	0x401ab9cae21101b0              # double 6.681438
	.quad	0x4023d94317acc4f0              # double 9.9243400000000008
	.quad	0x4012897396d0917d              # double 4.6342299999999996
	.quad	0x40229a18372e6a77              # double 9.3009660000000007
	.quad	0x3ff3e4fb97bb7308              # double 1.243404
	.quad	0x4021756dc1a47a9e              # double 8.7293529999999997
	.quad	0x4022cc9491f2dc2b              # double 9.3995709999999998
	.quad	0x402377b224aada34              # double 9.7337810000000004
	.quad	0x401c1ee957470eb2              # double 7.0301869999999997
	.quad	0x40159f240fa9c12f              # double 5.405411
	.quad	0x401dfc0767d34df0              # double 7.4961219999999997
	.quad	0x40225a6202539757              # double 9.1765290000000004
	.quad	0x3fe30d5629d8409e              # double 0.59537799999999996
	.quad	0x401ade44b6e935b9              # double 6.7170589999999999
	.quad	0x4010ff51697f1f9b              # double 4.2493340000000002
	.quad	0x40047139c94f69cb              # double 2.5552860000000002
	.quad	0x40202908a265f0f6              # double 8.0801440000000007
	.quad	0x400b0225fa658c4c              # double 3.3760490000000001
	.quad	0x3fe33ac929aa1d75              # double 0.60092599999999996
	.quad	0x4014e34f82f51266              # double 5.2219829999999998
	.quad	0x400b39591cd1c7de              # double 3.4030019999999999
	.quad	0x4020a0409e55c0fd              # double 8.3129930000000005
	.quad	0x401f844e50c5eb31              # double 7.8792049999999997
	.quad	0x4022b3dfd2630ec3              # double 9.3513169999999999
	.quad	0x4016e2c7fbacb429              # double 5.7214660000000004
	.quad	0x40181f8726d04e62              # double 6.0307890000000004
	.quad	0x3fe7c8cf7caa758a              # double 0.74326300000000001
	.quad	0x400d3462c343b70f              # double 3.650579
	.quad	0x40087ca29845dc83              # double 3.0608569999999999
	.quad	0x4004ccbaf965b20c              # double 2.5999660000000002
	.quad	0x4015e38cda6e75ff              # double 5.4722169999999997
	.quad	0x4015111e42e12620              # double 5.2667169999999999
	.quad	0x3ff428ccdd93c46e              # double 1.2599610000000001
	.quad	0x4020b2ccd530489d              # double 8.3492189999999997
	.quad	0x3facb252ce032db2              # double 0.056048000000000001
	.quad	0x401bb51b0ccbc05d              # double 6.9268609999999997
	.quad	0x401e3ba301216830              # double 7.5582390000000004
	.quad	0x4015394680171194              # double 5.3059329999999996
	.quad	0x4014b924af0bf1a6              # double 5.1808040000000002
	.quad	0x4001556b87379746              # double 2.166709
	.quad	0x40233e481f53825e              # double 9.6216439999999999
	.quad	0x400d1e68a0d349bf              # double 3.6398480000000002
	.quad	0x40116c0ca600b029              # double 4.3555169999999999
	.quad	0x4021bf6577531db4              # double 8.8738209999999995
	.quad	0x40158f4a1272c94b              # double 5.3899309999999998
	.quad	0x401b58d434a01abd              # double 6.8367469999999999
	.quad	0x3fe64aba38759253              # double 0.69662199999999996
	.quad	0x4019e9fadafd1138              # double 6.4784959999999998
	.quad	0x401e86516db0dd83              # double 7.63117
	.quad	0x3ff6c729f59ccfaf              # double 1.423624
	.quad	0x3ff54e15011904b4              # double 1.3315630000000001
	.quad	0x401ea1acde19fc2b              # double 7.6578860000000004
	.quad	0x4023c89f40a2877f              # double 9.8918400000000001
	.quad	0x4016f79e9d0e9920              # double 5.741816
	.quad	0x4007b713ad5bee3d              # double 2.9643929999999998
	.quad	0x4011d5af6c69b5a6              # double 4.4586769999999998
	.quad	0x400e0448cf7caa76              # double 3.7520920000000002
	.quad	0x401e23ebbfd71b04              # double 7.5350789999999996
	.quad	0x40009e8815e39714              # double 2.0774080000000001
	.quad	0x401ada8a3f8982cb              # double 6.7134179999999999
	.quad	0x400cc6117720c8cd              # double 3.5967129999999998
	.quad	0x4012e94b7b28954a              # double 4.7278269999999996
	.quad	0x3ff442eba27ae9ab              # double 1.266338
	.quad	0x3fffecc814d7279a              # double 1.9953080000000001
	.quad	0x4015fc94f69ca9ef              # double 5.4966619999999997
	.quad	0x400273700474d9c7              # double 2.3063660000000001
	.quad	0x3fca9b0ee49f5169              # double 0.20785699999999999
	.quad	0x4002e43f5f91600f              # double 2.3614489999999999
	.quad	0x4021cf93bc0a06ea              # double 8.905424
	.quad	0x4021c097e996312f              # double 8.8761589999999995
	.quad	0x3ff9bced916872b0              # double 1.608625
	.quad	0x402033b384fd2a63              # double 8.1009790000000006
	.quad	0x4017193250b5243a              # double 5.7746060000000003
	.quad	0x401d91ebc83a96d5              # double 7.3925010000000002
	.quad	0x4022e2cb641700ce              # double 9.4429580000000009
	.quad	0x4004c7cb70ac3a86              # double 2.597556
	.quad	0x4004199aa60913a5              # double 2.512502
	.quad	0x401c351c9f72f76e              # double 7.0518669999999997
	.quad	0x3fe3f9fcb0c026cc              # double 0.62426599999999999
	.quad	0x4013f8e970718223              # double 4.9930779999999997
	.quad	0x401e88ba83f4eca7              # double 7.6335240000000004
	.quad	0x3ffe0c271fff79c8              # double 1.8779669999999999
	.quad	0x401d4a8ac5c13fd1              # double 7.3227950000000002
	.quad	0x401757264a16a487              # double 5.8351069999999998
	.quad	0x4021822ccb3a2596              # double 8.7542480000000005
	.quad	0x401f65885d31337f              # double 7.8491530000000002
	.quad	0x401fdb068123810f              # double 7.9638920000000004
	.quad	0x40091be2b4959e62              # double 3.1386159999999999
	.quad	0x402232b55ef1fddf              # double 9.0990400000000005
	.quad	0x3fe4add7a99fa11b              # double 0.64622100000000005
	.quad	0x4014bf3e0370cdc8              # double 5.1867599999999996
	.quad	0x4008ebbd3804534c              # double 3.1151070000000001
	.quad	0x401f8225b749adc9              # double 7.877097
	.quad	0x401e02cf52b90a78              # double 7.5027439999999998
	.quad	0x401f92b1b36bd2b7              # double 7.893256
	.quad	0x4006e871a3b14a90              # double 2.8634979999999999
	.quad	0x4008cc144028e4fc              # double 3.0996480000000002
	.quad	0x40079debd9018e75              # double 2.9521099999999998
	.quad	0x401a6c918e325d4a              # double 6.6060239999999997
	.quad	0x4021ea9fbe76c8b4              # double 8.9582499999999996
	.quad	0x3fe52c2374794ea0              # double 0.66163799999999995
	.quad	0x400983c31df761cc              # double 3.1893370000000001
	.quad	0x40055c286f8ad256              # double 2.6699989999999998
	.quad	0x3fc6d5a5b9628cbd              # double 0.178395
	.quad	0x401c7a9da597d49d              # double 7.1197419999999996
	.quad	0x400f5990afe60c39              # double 3.918733
	.quad	0x4023e52977c88e7a              # double 9.9475820000000006
	.quad	0x400a1dad7518b0d1              # double 3.264491
	.quad	0x40017944241c3efb              # double 2.184212
	.quad	0x3fd927807789a459              # double 0.393036
	.quad	0x401e79539b888723              # double 7.6184830000000003
	.quad	0x401f6e2b8c75c4a8              # double 7.8575879999999997
	.quad	0x4018fd0fa58f7122              # double 6.2471300000000003
	.quad	0x4019e32ce89656ef              # double 6.471851
	.quad	0x40110d8622c45027              # double 4.2632070000000004
	.quad	0x4022979fa97e132b              # double 9.2961399999999994
	.quad	0x401d82699c7bcc29              # double 7.3773559999999998
	.quad	0x401a8c725c3dee78              # double 6.6371549999999999
	.quad	0x3ff9bc947064ecea              # double 1.6085400000000001
	.quad	0x401dcde4c51116a9              # double 7.4510680000000002
	.quad	0x40207360ae9680e0              # double 8.2253469999999993
	.quad	0x3ff0f3b320535c9e              # double 1.0594969999999999
	.quad	0x400cc44f1a1986ba              # double 3.5958540000000001
	.quad	0x401aa99029ae4f33              # double 6.6655889999999998
	.quad	0x4013fed8d36b4c7f              # double 4.9988739999999998
	.quad	0x4007dfa3b9ae0c17              # double 2.9841989999999998
	.quad	0x3f9ad9ad85dfa872              # double 0.026221000000000001
	.quad	0x401300841ede1199              # double 4.7505040000000003
	.quad	0x401b482f944241c4              # double 6.8204940000000001
	.quad	0x401d36338b47c73f              # double 7.3029310000000001
	.quad	0x402013a96d4c33b5              # double 8.0384019999999996
	.quad	0x4022aa474538ef35              # double 9.3325750000000003
	.quad	0x3fb2e75ff609dcf9              # double 0.073843000000000006
	.quad	0x4023d925bb7b6bb1              # double 9.9241159999999997
	.quad	0x401e933ebbfd71b0              # double 7.6437939999999998
	.quad	0x401505d7cb2d905c              # double 5.255706
	.quad	0x401748909289dae0              # double 5.8208640000000003
	.quad	0x401d8a454de7ea60              # double 7.3850300000000004
	.quad	0x40053b2031ceaf25              # double 2.65387
	.quad	0x4000e5f06f694467              # double 2.1122749999999999
	.quad	0x4020bc4e0daa0cae              # double 8.3677829999999993
	.quad	0x4021c52d234eb9a1              # double 8.8851099999999992
	.quad	0x3ff5cef99806f263              # double 1.3630310000000001
	.quad	0x4010f7008a697aee              # double 4.2412130000000001
	.quad	0x3fc85ea24cc68230              # double 0.190388
	.quad	0x4016206cca2db61c              # double 5.5316650000000003
	.quad	0x40130fb1183b6028              # double 4.7653239999999997
	.quad	0x401209ff0cbaf966              # double 4.5097620000000003
	.quad	0x3fc50153bd167664              # double 0.164103
	.quad	0x40182b15b573eab3              # double 6.0420749999999996
	.quad	0x4007fd2849cb252d              # double 2.9986120000000001
	.quad	0x4015dabd5dc40075              # double 5.4636129999999996
	.quad	0x400c60c0f01fb82c              # double 3.5472429999999999
	.quad	0x4019514013ec460f              # double 6.3293460000000001
	.quad	0x40229213a0c6b485              # double 9.2853060000000003
	.quad	0x3ff64f483cafb3b7              # double 1.3943559999999999
	.quad	0x4023dbeff1950332              # double 9.9295650000000002
	.quad	0x401ab8cac4b4d057              # double 6.6804610000000002
	.quad	0x400cdccaf709b739              # double 3.607809
	.quad	0x4021733bd9cae211              # double 8.725066
	.quad	0x401b84202d9cf13d              # double 6.8790290000000001
	.quad	0x400b5e481f53825e              # double 3.421036
	.quad	0x40214e8b9fdbd2fa              # double 8.6534089999999999
	.quad	0x40065267c6b8b695              # double 2.7902369999999999
	.quad	0x401a90a2877ee4e2              # double 6.6412449999999996
	.quad	0x401af54f3775b813              # double 6.73956
	.quad	0x3ff183b70ef56649              # double 1.094657
	.quad	0x400d20e0eb67c287              # double 3.641054
	.quad	0x402201e2bcf91a33              # double 9.0036830000000005
	.quad	0x3ff93c89f40a2878              # double 1.57728
	.quad	0x3ff80d7be9856a38              # double 1.5032920000000001
	.quad	0x3ffe4b84988094e6              # double 1.893437
	.quad	0x40227b4e9813879c              # double 9.2408339999999995
	.quad	0x40133d91ab8e8ea4              # double 4.8101260000000003
	.quad	0x401d3ba908a265f1              # double 7.308262
	.quad	0x401f61e0828c36db              # double 7.8455830000000004
	.quad	0x400efa743a647fdc              # double 3.8722919999999998
	.quad	0x40016adb402d16b9              # double 2.1771759999999998
	.quad	0x4011eee49f51697f              # double 4.4832939999999999
	.quad	0x401199aaa3ad18d2              # double 4.4000649999999997
	.quad	0x400a8ac647778dd6              # double 3.317761
	.quad	0x4013c6e58a32f449              # double 4.9442349999999999
	.quad	0x40149e46cfc829d0              # double 5.1545670000000001
	.quad	0x3fca0b0292817764              # double 0.203461
	.quad	0x4014b324c8366517              # double 5.1749450000000001
	.quad	0x400fba7d24180d3d              # double 3.966059
	.quad	0x4023a90a99b6f5cb              # double 9.830159
	.quad	0x3fcd54c985f06f69              # double 0.22914999999999999
	.quad	0x4005ddf3300de4c5              # double 2.733374
	.quad	0x4011a1afc04c8bca              # double 4.4078970000000002
	.quad	0x4000724bfd2e9468              # double 2.055809
	.quad	0x4020c9fe004b7f5a              # double 8.3945159999999994
	.quad	0x4010a78a2a90cd42              # double 4.1636129999999998
	.quad	0x4012746ed245b292              # double 4.6137040000000002
	.quad	0x4020e12e1ef73c0c              # double 8.4398049999999997
	.quad	0x4015344dca8e2e2c              # double 5.3010780000000004
	.quad	0x4018f72580c308ff              # double 6.2413540000000003
	.quad	0x401e15831f03d146              # double 7.5210080000000001
	.quad	0x401f9e2d1f1cfbb9              # double 7.9044689999999997
	.quad	0x3f6b823c85c24c40              # double 0.0033579999999999999
	.quad	0x3ffa3f6a0dbad3a6              # double 1.640482
	.quad	0x401f0c2c1b10fd7e              # double 7.7618869999999998
	.quad	0x3ff748c5004fb118              # double 1.4552659999999999
	.quad	0x400a03cafb3b7521              # double 3.251852
	.quad	0x40181d451fc4c166              # double 6.0285840000000004
	.quad	0x4022a86573215fcc              # double 9.3288989999999998
	.quad	0x3ffd283d35eb7458              # double 1.8223240000000001
	.quad	0x4020728240b78034              # double 8.2236499999999992
	.quad	0x4001a45996744b2b              # double 2.2052489999999998
	.quad	0x3ffecc37e6f71a7e              # double 1.924858
	.quad	0x4012a11dffc5479d              # double 4.6573409999999997
	.quad	0x400e2719b4dcebff              # double 3.7690920000000001
	.quad	0x3fd636da87a072d2              # double 0.34709800000000002
	.quad	0x3fda92428d434a02              # double 0.41517700000000002
	.quad	0x3febec743201040c              # double 0.872614
	.quad	0x402171669ced0b31              # double 8.7214860000000005
	.quad	0x40167e03f705857b              # double 5.623062
	.quad	0x401a11b54195cc85              # double 6.5172929999999996
	.quad	0x402039a38fbca106              # double 8.1125760000000007
	.quad	0x4002480bed740c41              # double 2.2851789999999998
	.quad	0x401d09f666234a88              # double 7.2597290000000001
	.quad	0x40222d755bccaf71              # double 9.0887860000000007
	.quad	0x40148d7e889c1b54              # double 5.1381779999999999
	.quad	0x401dd21ee675147f              # double 7.4551959999999999
	.quad	0x401c3d590c0ad03e              # double 7.0599100000000004
	.quad	0x401eeea5b530ced5              # double 7.733054
	.quad	0x401e78c0ce91c8eb              # double 7.6179230000000002
	.quad	0x401aab46fdeb52ca              # double 6.6672630000000002
	.quad	0x400e3533f42352eb              # double 3.7759779999999998
	.quad	0x3ffcbc9795b35b0c              # double 1.7960430000000001
	.quad	0x3ff63739f340d4dc              # double 1.3884829999999999
	.quad	0x4022f103a7546d40              # double 9.4707310000000006
	.quad	0x401ab2f3c2dadb83              # double 6.6747579999999997
	.quad	0x3ff05f77292c4934              # double 1.023307
	.quad	0x4019f7357e670e2c              # double 6.4914149999999999
	.quad	0x4016ef8f041461b7              # double 5.7339440000000002
	.quad	0x400684b90214ad36              # double 2.8148059999999999
	.quad	0x400ed327243137b0              # double 3.8531019999999998
	.quad	0x4023068a936c58ef              # double 9.5127760000000005
	.quad	0x401f755000c9539c              # double 7.8645630000000004
	.quad	0x401d94d9c6b0531a              # double 7.3953620000000004
	.quad	0x3fd62b7baecd0785              # double 0.34640399999999999
	.quad	0x401906e08f217093              # double 6.2567159999999999
	.quad	0x401d24894c447c31              # double 7.2856800000000002
	.quad	0x3fc157603925bb7b              # double 0.13547899999999999
	.quad	0x4013e69b5a63f9a5              # double 4.9752020000000003
	.quad	0x4019fe7e62dc6e2b              # double 6.4985290000000004
	.quad	0x401c3f20a73f748a              # double 7.0616479999999999
	.quad	0x4020fb52eb5f5f0b              # double 8.4908669999999997
	.quad	0x3ff13f540895d0b7              # double 1.0779609999999999
	.quad	0x4013ef9591cd1c7e              # double 4.9839690000000001
	.quad	0x40034155d5f56a7b              # double 2.4069020000000001
	.quad	0x401428626f60e0eb              # double 5.0394379999999996
	.quad	0x40204c8bc9cd3e0c              # double 8.1495040000000003
	.quad	0x40228361bb05faec              # double 9.2566050000000004
	.quad	0x40119f3882278d0d              # double 4.4054890000000002
	.quad	0x401fec32ebe596c8              # double 7.9806629999999998
	.quad	0x3ff5f50e34762952              # double 1.372328
	.quad	0x4021ce6f2e8c0486              # double 8.9031920000000007
	.quad	0x401ee0c176577532              # double 7.7194880000000001
	.quad	0x40172ac753e707e1              # double 5.7917759999999996
	.quad	0x40206131a8ef77f2              # double 8.1898319999999991
	.quad	0x401398e820e62995              # double 4.8993229999999999
	.quad	0x4006d42c3c9eecc0              # double 2.8536000000000001
	.quad	0x401782da122fad6d              # double 5.8777850000000003
	.quad	0x401075f80991793a              # double 4.1152040000000003
	.quad	0x401a327418d6909b              # double 6.5492710000000001
	.quad	0x4022ce82517e77d5              # double 9.4033379999999997
	.quad	0x400721e0c5a8155d              # double 2.8915419999999998
	.quad	0x401648e4b87bdcf0              # double 5.5711849999999998
	.quad	0x4021b5f676ea4229              # double 8.8553960000000007
	.quad	0x4001b9b456b441bc              # double 2.2156760000000002
	.quad	0x4008efd438d1d8a5              # double 3.1171039999999999
	.quad	0x401bb4e8b7e4de3c              # double 6.9266690000000004
	.quad	0x4014cac215b9a5a9              # double 5.1980060000000003
	.quad	0x40221328954a7f80              # double 9.0374189999999999
	.quad	0x400f5013a92a3055              # double 3.9140999999999999
	.quad	0x401caab324851a87              # double 7.1666990000000004
	.quad	0x4018d85ec3dab5c4              # double 6.2112990000000003
	.quad	0x400e62d5171e29b7              # double 3.7982580000000001
	.quad	0x3ff9d881a1554fbe              # double 1.6153580000000001
	.quad	0x400082d9cf13ceea              # double 2.0638920000000001
	.quad	0x4020b38c75c4a83b              # double 8.3506809999999998
	.quad	0x401f139ef0f16f44              # double 7.7691610000000004
	.quad	0x3ff70d844d013a93              # double 1.4408000000000001
	.quad	0x400512f2b66b6178              # double 2.634252
	.quad	0x3ffedb8130164841              # double 1.92859
	.quad	0x401185dcc63f1412              # double 4.380725
	.quad	0x4012c42d05f28848              # double 4.6915779999999998
	.quad	0x4021abf487fcb924              # double 8.8358500000000006
	.quad	0x4022e8d5a5b9628d              # double 9.4547550000000004
	.quad	0x4004d0203e63e8de              # double 2.6016240000000002
	.quad	0x3fb50d173fb7a5f4              # double 0.082230999999999999
	.quad	0x3ffd488b545c78a7              # double 1.830211
	.quad	0x4012f6a337a80cfa              # double 4.7408570000000001
	.quad	0x4000bca29845dc83              # double 2.0921069999999999
	.quad	0x4023e474d9c6b053              # double 9.9462039999999998
	.quad	0x40164bbcb1cc9646              # double 5.5739619999999999
	.quad	0x4005cb5dcc63f141              # double 2.7242999999999999
	.quad	0x4003fe4e69f05ea2              # double 2.4991729999999999
	.quad	0x401d1fd3f5b5fa22              # double 7.2810819999999996
	.quad	0x4012e2fe3f359ff5              # double 4.721673
	.quad	0x3fe2d8d36b4c7f35              # double 0.58896800000000005
	.quad	0x402209d7dbf487fd              # double 9.0192250000000005
	.quad	0x4023343c3a42f1ed              # double 9.6020219999999998
	.quad	0x402204f15e7c8d19              # double 9.0096539999999994
	.quad	0x3fe9e223e1869835              # double 0.80885499999999999
	.quad	0x4023fdd18090b418              # double 9.9957390000000003
	.quad	0x401d70f9096bb98c              # double 7.3603249999999996
	.quad	0x3fb5744f5d35653d              # double 0.083806000000000005
	.quad	0x401c6449dbec2481              # double 7.0979380000000001
	.quad	0x401c27f38c5436b9              # double 7.039015
	.quad	0x4023f59b8023a6ce              # double 9.9797019999999996
	.quad	0x3fb3507e9d94d0dd              # double 0.075447
	.quad	0x401918427418d691              # double 6.2736910000000004
	.quad	0x4022db0f27bb2fec              # double 9.4278499999999993
	.quad	0x4023e38cda6e75ff              # double 9.9444339999999993
	.quad	0x4010c9eba6aca793              # double 4.1971879999999997
	.quad	0x401e90999dcb5782              # double 7.6412110000000002
	.quad	0x4013b5d80e496edf              # double 4.9275820000000001
	.quad	0x4013b4f0d844d014              # double 4.9267000000000003
	.quad	0x3fe4e573215fcc18              # double 0.65300899999999995
	.quad	0x40234888f861a60d              # double 9.6416699999999995
	.quad	0x3fc8559f6ec5b079              # double 0.190113
	.quad	0x401be779a6b50b0f              # double 6.9760499999999999
	.quad	0x40088822ff08893b              # double 3.0664729999999998
	.quad	0x3fe19bb4916ca46e              # double 0.550257
	.quad	0x4012ebe0ded288ce              # double 4.7303499999999996
	.quad	0x4010f906034f3fd9              # double 4.2431869999999998
	.quad	0x401491ac57e23f25              # double 5.1422590000000001
	.quad	0x401785dd4c76d118              # double 5.8807270000000003
	.quad	0x4021c22ff08893b8              # double 8.8792720000000003
	.quad	0x401c29ef0f16f438              # double 7.0409509999999997
	.quad	0x4019ad71b0468449              # double 6.4193790000000002
	.quad	0x4003e770bd017daf              # double 2.4880080000000002
	.quad	0x3fd416ca46e08f21              # double 0.31389099999999998
	.quad	0x40194273929ed395              # double 6.3148939999999998
	.quad	0x40207dc4eb56fb8f              # double 8.2456429999999994
	.quad	0x401a7dfd694ccab4              # double 6.6230370000000001
	.quad	0x400ce23854046413              # double 3.6104590000000001
	.quad	0x401389f5dfeb8d82              # double 4.8847269999999998
	.quad	0x4023e98ce2d1f1d0              # double 9.9561530000000005
	.quad	0x40003984a0e410b6              # double 2.0280849999999999
	.quad	0x401440f062d40aaf              # double 5.0634170000000003
	.quad	0x40231e5300581494              # double 9.5592269999999999
	.quad	0x3fdc589acbc8c0cf              # double 0.44290800000000002
	.quad	0x401b7c22ab25b318              # double 6.8712260000000001
	.quad	0x3ff5dedbf8b9baa1              # double 1.3669089999999999
	.quad	0x3fe19fe43675ddd3              # double 0.55076800000000004
	.quad	0x4022819e731d2e0e              # double 9.2531619999999997
	.quad	0x40007893faf42785              # double 2.0588760000000002
	.quad	0x40107ce8533b1077              # double 4.1219799999999998
	.quad	0x3fe0ab4528283d36              # double 0.52090700000000001
	.quad	0x40182d22856605ee              # double 6.0440769999999997
	.quad	0x3fd9297396d0917d              # double 0.39315499999999998
	.quad	0x4002ec2b51bd61f6              # double 2.3653170000000001
	.quad	0x3ff0225742dcf462              # double 1.0083839999999999
	.quad	0x401eb96249a133c2              # double 7.6810390000000002
	.quad	0x3f855d5f56a7ac82              # double 0.010432
	.quad	0x401e1f23465625a7              # double 7.5304080000000004
	.quad	0x3ff1a55b035bd513              # double 1.10287
	.quad	0x4016b528f190d174              # double 5.676914
	.quad	0x3ff5997f62b6ae7d              # double 1.3499749999999999
	.quad	0x401534df04ddb552              # double 5.3016319999999997
	.quad	0x4023ad09e12a51e3              # double 9.8379659999999997
	.quad	0x40167bbe4473cd57              # double 5.6208429999999998
	.quad	0x40238a1c475e6363              # double 9.7697470000000006
	.quad	0x401817aeddce7cd0              # double 6.0231279999999998
	.quad	0x3ff32bd9018e7579              # double 1.198205
	.quad	0x4000a3126e978d50              # double 2.0796250000000001
	.quad	0x40053eb074a771c9              # double 2.6556099999999998
	.quad	0x401681acde19fc2b              # double 5.6266360000000004
	.quad	0x400c01ab4b72c519              # double 3.5008149999999998
	.quad	0x402375143bf72713              # double 9.7286699999999992
	.quad	0x4015ee1f7d73c925              # double 5.4825419999999996
	.quad	0x400124955b4677b4              # double 2.1428630000000002
	.quad	0x401e54b48d3ae686              # double 7.5827200000000001
	.quad	0x4014526a22b3892f              # double 5.0804830000000001
	.quad	0x3ffa650507a6bd6f              # double 1.6496630000000001
	.quad	0x4020bd1aeb3dd11c              # double 8.3693460000000001
	.quad	0x400a4fa05143bf72              # double 3.2888799999999998
	.quad	0x4021ddba2be0589b              # double 8.9330610000000004
	.quad	0x4018ab94d9407896              # double 6.1675599999999999
	.quad	0x4020689a24031487              # double 8.2043009999999992
	.quad	0x3fe617fe8ee6b830              # double 0.69042899999999996
	.quad	0x401f647baa9b499d              # double 7.8481279999999999
	.quad	0x40086638433d6c72              # double 3.049912
	.quad	0x40226071e6cd2913              # double 9.1883689999999998
	.quad	0x4013afa376922d95              # double 4.9215220000000004
	.quad	0x40193045fe111277              # double 6.297142
	.quad	0x40068dab191dde37              # double 2.8191739999999998
	.quad	0x4019f72d5e071c54              # double 6.491384
	.quad	0x40121f8c21e1d218              # double 4.5308080000000004
	.quad	0x3fd8ff9b56323bbc              # double 0.39060099999999998
	.quad	0x40000744b2b777d1              # double 2.003549
	.quad	0x400bb33b10774688              # double 3.4625149999999998
	.quad	0x40235bf2d3c792d1              # double 9.6795869999999997
	.quad	0x400d115bdd76683c              # double 3.6334759999999999
	.quad	0x4023728aa433508f              # double 9.7237139999999993
	.quad	0x40179c6759ab6d01              # double 5.9027380000000003
	.quad	0x401df989df1172ef              # double 7.4936899999999999
	.quad	0x401fc369fcf3dc05              # double 7.9408339999999997
	.quad	0x402387064ece9a2c              # double 9.7637199999999992
	.quad	0x400423b46fdeb52d              # double 2.5174340000000002
	.quad	0x40131f251c193b3a              # double 4.7804149999999996
	.quad	0x401759420b3d4ae4              # double 5.8371659999999999
	.quad	0x401e8041cc532a49              # double 7.6252509999999995
	.quad	0x4021bcf2ae07e5a8              # double 8.8690390000000008
	.quad	0x402007d8adab9f56              # double 8.0153250000000007
	.quad	0x40179170d62bf120              # double 5.8920320000000004
	.quad	0x4012b310dbf0563f              # double 4.6748690000000002
	.quad	0x40039aa8a82a5615              # double 2.4505170000000001
	.quad	0x401588cfbfc6540d              # double 5.3836050000000002
	.quad	0x40138c9e236c15d3              # double 4.8873220000000002
	.quad	0x3fe8f87ce95faa8b              # double 0.78033300000000005
	.quad	0x400d24628027d88c              # double 3.6427659999999999
	.quad	0x4022716c3fc43b2e              # double 9.2215290000000003
	.quad	0x4002f2b4528283d3              # double 2.3685079999999998
	.quad	0x400aadedaec4a409              # double 3.3349259999999998
	.quad	0x3ff725e99e94ab1d              # double 1.4467559999999999
	.quad	0x40223e0999dcb578              # double 9.1211669999999998
	.quad	0x3fd11461b6d43d04              # double 0.26686900000000002
	.quad	0x3fae3a3a8e71476b              # double 0.059038
	.quad	0x4015c2e48e8a71de              # double 5.4403249999999996
	.quad	0x40128fc6540cc78f              # double 4.6404050000000003
	.quad	0x401dc0ad46f587d7              # double 7.438161
	.quad	0x40027e7f2c3009b3              # double 2.311766
	.quad	0x402316db940fecdd              # double 9.5446439999999999
	.quad	0x400559524bfd2e94              # double 2.6686139999999998
	.quad	0x40112ad1d041cc53              # double 4.2918159999999999
	.quad	0x4002c576cce5f740              # double 2.3464179999999999
	.quad	0x402379b328b6d86f              # double 9.7376950000000004
	.quad	0x4022222c45026890              # double 9.0667439999999999
	.quad	0x401b9f7db6e503fb              # double 6.9057529999999998
	.quad	0x4011c872b020c49c              # double 4.4457500000000003
	.quad	0x40109d0aed99cbef              # double 4.1533620000000004
	.quad	0x401bd3e920c069e8              # double 6.956944
	.quad	0x401fa3b7521144cc              # double 7.9098790000000001
	.quad	0x401314167a95c854              # double 4.7696170000000002
	.quad	0x401d4e4da09cc31a              # double 7.3264680000000002
	.quad	0x3ffc680f12c27a63              # double 1.7754049999999999
	.quad	0x401a4eb5f5f0b285              # double 6.5768659999999999
	.quad	0x4001b49f94855da2              # double 2.2131949999999998
	.quad	0x40234bd9231c64bb              # double 9.6481410000000007
	.quad	0x40207fb890d5a5b9              # double 8.2494549999999993
	.quad	0x4016dcebfec13b9f              # double 5.7157439999999999
	.quad	0x401d98e60807357e              # double 7.3993149999999996
	.quad	0x401c0b78897e9963              # double 7.0112019999999999
	.quad	0x401759029ae4f334              # double 5.8369239999999998
	.quad	0x402382ffb04ee7c5              # double 9.7558570000000006
	.quad	0x4020cde7a743a648              # double 8.402158
	.quad	0x3fd8f601797cc3a0              # double 0.390015
	.quad	0x400ddbe2b4959e62              # double 3.7323659999999999
	.quad	0x40132f39d1b2e59b              # double 4.796119
	.quad	0x401012a12f901084              # double 4.0181930000000001
	.quad	0x3fef64a9cdc44391              # double 0.98103799999999996
	.quad	0x4022bc03dddb120a              # double 9.3672170000000001
	.quad	0x40222ddb1209edc0              # double 9.0895620000000008
	.quad	0x4006f7121ab4b72c              # double 2.8706399999999999
	.quad	0x40221086162f166e              # double 9.032273
	.quad	0x401250902de00d1b              # double 4.5786749999999996
	.quad	0x401b4fd36f7e3d1d              # double 6.8279550000000002
	.quad	0x401d3fa8f7db6e50              # double 7.3121679999999998
	.quad	0x4004dca42aed1394              # double 2.6077349999999999
	.quad	0x4011b696a26e5471              # double 4.4283089999999996
	.quad	0x3ff281e57d9dba91              # double 1.1567130000000001
	.quad	0x401a3714fce746cc              # double 6.5537910000000004
	.quad	0x401c6949a5657fb7              # double 7.1028200000000004
	.quad	0x401540a958537e2c              # double 5.3131459999999997
	.quad	0x40229414c660a201              # double 9.2892209999999995
	.quad	0x401245f28848387e              # double 4.568308
	.quad	0x3fea00474d9c6b05              # double 0.81253399999999998
	.quad	0x3fd980d3cff64cf9              # double 0.39848800000000001
	.quad	0x3ff77416bdb1a6d7              # double 1.4658420000000001
	.quad	0x4021573d5bab2181              # double 8.6703899999999994
	.quad	0x4014059c065b63d4              # double 5.0054780000000001
	.quad	0x400ae5492ff4ba52              # double 3.3619560000000002
	.quad	0x401e1bbcb1cc9646              # double 7.5270869999999999
	.quad	0x40121d82773e24ff              # double 4.5288180000000002
	.quad	0x401305460aa64c30              # double 4.7551500000000004
	.quad	0x4018968ec52a411c              # double 6.1470289999999999
	.quad	0x4021248238540464              # double 8.5713059999999998
	.quad	0x4013ec37a3db3bfb              # double 4.9806809999999997
	.quad	0x402171a38fbca106              # double 8.7219510000000007
	.quad	0x4010a7a9e2bcf91a              # double 4.1637339999999998
	.quad	0x3ff11ba5e353f7cf              # double 1.06925
	.quad	0x3ff20f27bb2fec57              # double 1.1287
	.quad	0x4013d566cf41f213              # double 4.9584000000000001
	.quad	0x4012f71a3b14a904              # double 4.7413109999999996
	.quad	0x40237e5e679463d0              # double 9.7468140000000005
	.quad	0x3ffb4539fba450ad              # double 1.7044010000000001
	.quad	0x3fb05260f5e41d4b              # double 0.063756999999999994
	.quad	0x40070f0e0a84be40              # double 2.8823509999999999
	.quad	0x40172b042528ae75              # double 5.792008
	.quad	0x401c9f8e3ac0c62e              # double 7.1558159999999997
	.quad	0x3ffb1e4b44a1f080              # double 1.694896
	.quad	0x402398307f23cc8e              # double 9.7972450000000002
	.quad	0x4014a3f0bae89eba              # double 5.1600979999999996
	.quad	0x4005194d0dcfcc5c              # double 2.6373540000000002
	.quad	0x4023df7143393ab4              # double 9.9364109999999996
	.quad	0x401992e40852b4d9              # double 6.3934480000000002
	.quad	0x401fd29068986fce              # double 7.9556290000000001
	.quad	0x402171e2de870974              # double 8.7224339999999997
	.quad	0x402000cd855970b5              # double 8.0015680000000007
	.quad	0x401a38cf398e9707              # double 6.5554779999999999
	.quad	0x3fed0fa9c12f09d9              # double 0.90816200000000002
	.quad	0x400c77cd466f501a              # double 3.558497
	.quad	0x3ff44c3b0c4588a0              # double 1.2686109999999999
	.quad	0x4019d3076c050bd8              # double 6.4560829999999996
	.quad	0x402173c536d655e3              # double 8.7261140000000008
	.quad	0x3fe9897c80841ede              # double 0.79803299999999999
	.quad	0x40151739b024f65a              # double 5.2726810000000004
	.quad	0x3fd5738a3b57c4e3              # double 0.335177
	.quad	0x40201e1cde5d1809              # double 8.0588139999999999
	.quad	0x401b673eab367a10              # double 6.8508250000000004
	.quad	0x3ffb48e25c810a57              # double 1.7052940000000001
	.quad	0x3ffb48adeebb341e              # double 1.705244
	.quad	0x40162a8d64d7f0ed              # double 5.5415549999999998
	.quad	0x4018f9bdc69f8c22              # double 6.2438880000000001
	.quad	0x4004722424a276b8              # double 2.555733
	.quad	0x40102575c0767d35              # double 4.0365820000000001
	.quad	0x401eee48e8a71de7              # double 7.7327000000000003
	.quad	0x400fa80c73abc947              # double 3.957055
	.quad	0x400ba0d0247021d1              # double 3.453522
	.quad	0x3fd8be596c82e01a              # double 0.38661800000000002
	.quad	0x40145919695d91ac              # double 5.0870110000000004
	.quad	0x3ff73c371da37ef6              # double 1.4522010000000001
	.quad	0x40208c3efae7924b              # double 8.2739180000000001
	.quad	0x3ff47065f9591cd2              # double 1.277441
	.quad	0x401e9f2990f301eb              # double 7.6554320000000002
	.quad	0x400609552e2fbe34              # double 2.7545570000000001
	.quad	0x3fae6ec9e236c15d              # double 0.059438999999999999
	.quad	0x400a2f041461b6d4              # double 3.2729569999999999
	.quad	0x401d05e0f7fcfc40              # double 7.2557410000000004
	.quad	0x402110ca600b0293              # double 8.5327940000000009
	.quad	0x4021802b841248d8              # double 8.7503320000000002
	.quad	0x400569be09bb6aa5              # double 2.6766320000000001
	.quad	0x4014977574f722e2              # double 5.1479090000000003
	.quad	0x4023839192641b33              # double 9.7569700000000008
	.quad	0x4005a75ab7dc7ac0              # double 2.7067160000000001
	.quad	0x3ffd6684cf0739b0              # double 1.837529
	.quad	0x40207aa3cea6c1a0              # double 8.2395309999999995
	.quad	0x401d8915bdd76684              # double 7.3838720000000002
	.quad	0x4010943b70ef5665              # double 4.1447580000000004
	.quad	0x402165e3fbbd7b20              # double 8.6990049999999997
	.quad	0x3ffd63e6c4c5974e              # double 1.8368899999999999
	.quad	0x40202b9fdbd2fa0d              # double 8.0852039999999992
	.quad	0x401beb317efe0ce1              # double 6.9796810000000002
	.quad	0x3fed7eb28d8665e0              # double 0.92171599999999997
	.quad	0x401fcd27807789a4              # double 7.9503459999999997
	.quad	0x400020e736049ecb              # double 2.0160659999999999
	.quad	0x40192357a355043e              # double 6.2845139999999997
	.quad	0x4003a013660e51d2              # double 2.4531619999999998
	.quad	0x4014044aa53fc009              # double 5.0041909999999996
	.quad	0x40145c8cd63cb817              # double 5.0903809999999998
	.quad	0x3ffd73e5753a3ec0              # double 1.840795
	.quad	0x40208419e30014f9              # double 8.2580100000000005
	.quad	0x4014d378ab0c88a4              # double 5.2065149999999996
	.quad	0x400b7d859c8c9321              # double 3.4362900000000001
	.quad	0x40007a7546d3f9e8              # double 2.0597940000000001
	.quad	0x3feb150dae3e6c4c              # double 0.84631999999999996
	.quad	0x401468a009f62307              # double 5.1021729999999996
	.quad	0x402139a11233df2b              # double 8.6125570000000007
	.quad	0x3fe5308bb906466b              # double 0.66217599999999999
	.quad	0x4023a142917507ea              # double 9.8149610000000003
	.quad	0x401ea4febd09e12a              # double 7.6611279999999997
	.quad	0x401c212fd32c625f              # double 7.0324090000000004
	.quad	0x402352398201cd60              # double 9.6605950000000007
	.quad	0x4015a1950331e3a8              # double 5.4077950000000001
	.quad	0x40100d9d7774aba4              # double 4.0132960000000004
	.quad	0x3ff0e95a6c5d206d              # double 1.0569710000000001
	.quad	0x3ff153bd1676640a              # double 1.0829439999999999
	.quad	0x4001c7ac81d3aa37              # double 2.2224970000000002
	.quad	0x401f1996b76709fa              # double 7.7749889999999997
	.quad	0x401cd935b91f70df              # double 7.2121190000000004
	.quad	0x401e97a7c9de0503              # double 7.6481009999999995
	.quad	0x400a495f2452c5a0              # double 3.2858260000000001
	.quad	0x4020b3d70a3d70a4              # double 8.3512500000000002
	.quad	0x400249107faa044b              # double 2.285676
	.quad	0x3fff430a0b1bbcf5              # double 1.953867
	.quad	0x400661b6d43d0397              # double 2.7977120000000002
	.quad	0x40007bc903ea704c              # double 2.0604420000000001
	.quad	0x4022243e3193f6c2              # double 9.0707869999999993
	.quad	0x401d54d65e460675              # double 7.3328490000000004
	.quad	0x3ff16a4766c6de76              # double 1.0884469999999999
	.quad	0x401434280ae10492              # double 5.0509339999999998
	.quad	0x400cceee957470eb              # double 3.6010409999999999
	.quad	0x400f98c5c9a34ca1              # double 3.9495960000000001
	.quad	0x401cba8650e77920              # double 7.1821529999999996
	.quad	0x400efbb1f255f352              # double 3.8728980000000002
	.quad	0x401b3ff865d7cb2e              # double 6.8124710000000004
	.quad	0x4022f354e2b063e0              # double 9.4752569999999992
	.quad	0x3fe42eff5c6c11a1              # double 0.63073699999999999
	.quad	0x401a94b6e935b91f              # double 6.6452289999999996
	.quad	0x4018aaab042528ae              # double 6.1666679999999996
	.quad	0x400f66e115592d99              # double 3.9252340000000001
	.quad	0x4023d15f02c4d65e              # double 9.9089279999999995
	.quad	0x401287dfa00e27e1              # double 4.6326890000000001
	.quad	0x401d556c508b32cf              # double 7.3334210000000004
	.quad	0x400c6a18bd66277c              # double 3.5518049999999999
	.quad	0x40005be4cd749279              # double 2.04487
	.quad	0x3fda80f12c27a637              # double 0.41411999999999999
	.quad	0x3fc5ef6b5d462c34              # double 0.17136899999999999
	.quad	0x400308a82a5614e0              # double 2.3792270000000002
	.quad	0x3ffd7a97e132b55f              # double 1.84243
	.quad	0x3fec796e158750c2              # double 0.88982300000000003
	.quad	0x4022bb3d4ae429e1              # double 9.3657020000000006
	.quad	0x400ebfe7e1fc08fa              # double 3.8437039999999998
	.quad	0x3fe96df1e0828c37              # double 0.79467100000000002
	.quad	0x3feae10adcd2d44e              # double 0.83997100000000002
	.quad	0x4023619fe43675de              # double 9.6906730000000003
	.quad	0x400950318b934699              # double 3.1641569999999999
	.quad	0x3ff124d6e47dc37a              # double 1.0714939999999999
	.quad	0x40184574f722e1ac              # double 6.0678289999999997
	.quad	0x4005879bbadc0981              # double 2.6912150000000001
	.quad	0x400f6ace24bba12b              # double 3.9271509999999998
	.quad	0x3fe083925bb7b6bb              # double 0.51606099999999999
	.quad	0x401757d6f9767903              # double 5.8357809999999999
	.quad	0x4007ef99806f2629              # double 2.9919920000000002
	.quad	0x4023a6c3760bf5d8              # double 9.8257100000000008
	.quad	0x402362d1287c200c              # double 9.6930019999999998
	.quad	0x40055308bb906467              # double 2.6655440000000001
	.quad	0x40125a009f623077              # double 4.5878930000000002
	.quad	0x4011e547e06961c3              # double 4.4739069999999996
	.quad	0x401d3a25d8d79d0a              # double 7.3067849999999996
	.quad	0x3fe4b7f5a5332ad0              # double 0.64745600000000003
	.quad	0x4023e3ef284167a9              # double 9.9451839999999993
	.quad	0x4021e6e3b46fdeb5              # double 8.9509559999999997
	.quad	0x40016c226809d495              # double 2.1778
	.quad	0x4001de75360d0247              # double 2.233622
	.quad	0x400ade0828c36da8              # double 3.3584139999999998
	.quad	0x4023bbfb58d1526e              # double 9.8671520000000008
	.quad	0x40026b2d905c0336              # double 2.302333
	.quad	0x3fff0e9e5e247885              # double 1.9410689999999999
	.quad	0x402038f08461f9f0              # double 8.1112099999999998
	.quad	0x3ff6eac647778dd6              # double 1.432318
	.quad	0x4014857a786c2268              # double 5.13035
	.quad	0x40236f1b69121251              # double 9.7170059999999995
	.quad	0x401236744b2b777d              # double 4.5531779999999999
	.quad	0x401dace703afb7e9              # double 7.4188499999999999
	.quad	0x401ecca89fc6da45              # double 7.6998620000000004
	.quad	0x4016a203a322af57              # double 5.6582169999999996
	.quad	0x4003c217d2849cb2              # double 2.4697719999999999
	.quad	0x4007c48beb5b2d4d              # double 2.9709699999999999
	.quad	0x3fc0a5efe9318762              # double 0.13006400000000001
	.quad	0x401fffbc5de9c023              # double 7.9997420000000003
	.quad	0x400fa3fc43b2dd37              # double 3.9550709999999998
	.quad	0x40235f3c70c996b7              # double 9.6860079999999992
	.quad	0x400a2d0dcfcc5b8e              # double 3.2719990000000001
	.quad	0x4018a795b35b0bbf              # double 6.1636569999999997
	.quad	0x4021e8e79aae6c8f              # double 8.9548919999999992
	.quad	0x402140ebcc6c54bd              # double 8.6267990000000001
	.quad	0x3fd5c17a89331a09              # double 0.33993400000000001
	.quad	0x40199e8ab4fa4830              # double 6.4048259999999999
	.quad	0x401cdf1843c3a42f              # double 7.2178659999999999
	.quad	0x401822ebe596c82e              # double 6.034103
	.quad	0x40239975afaf8594              # double 9.7997259999999997
	.quad	0x40018be6a337a80d              # double 2.193311
	.quad	0x4014af35e310dbf0              # double 5.1711039999999997
	.quad	0x40043b3d8e000863              # double 2.5289259999999998
	.quad	0x3fbbbb517a46173c              # double 0.10832700000000001
	.quad	0x400dbf4666ec9e23              # double 3.7183959999999998
	.quad	0x401d012f09d8c6d6              # double 7.2511559999999999
	.quad	0x4018178dd616f86a              # double 6.023002
	.quad	0x401b0d0917d6b65b              # double 6.7627300000000004
	.quad	0x3ffb27924af0bf1a              # double 1.6971609999999999
	.quad	0x402078c4156e264e              # double 8.2358709999999995
	.quad	0x40239a7bb2fec56d              # double 9.8017249999999993
	.quad	0x401f691eeaa6d267              # double 7.8526569999999997
	.quad	0x3fc50110a137f38c              # double 0.16409499999999999
	.quad	0x3ff98709741d084f              # double 1.5954680000000001
	.quad	0x40195f5cf2495e18              # double 6.3431280000000001
	.quad	0x4005148ba83f4eca              # double 2.6350319999999998
	.quad	0x3fd09cbab649d389              # double 0.25956600000000002
	.quad	0x401487f9d6f112fd              # double 5.1327889999999998
	.quad	0x40174d3458cd20b0              # double 5.8253950000000003
	.quad	0x4021152e514c22ee              # double 8.5413689999999995
	.quad	0x3ff7bbfa4c61d862              # double 1.483393
	.quad	0x4012b6ffc115df65              # double 4.6787099999999997
	.quad	0x401f2aa79bbadc0a              # double 7.7916550000000004
	.quad	0x401b3d099e0e7360              # double 6.8096069999999997
	.quad	0x4021168512231833              # double 8.543984
	.quad	0x400f444ae85b9e8c              # double 3.9083459999999999
	.quad	0x400373da72a7bd49              # double 2.4315690000000001
	.quad	0x3fe807485e3da2f9              # double 0.75088900000000003
	.quad	0x401bc6d9be4cd749              # double 6.9441899999999999
	.quad	0x40156285a921ccd9              # double 5.3462129999999997
	.quad	0x3ff2ad5171e29b6b              # double 1.167314
	.quad	0x401b735ac8a37260              # double 6.8626509999999996
	.quad	0x401e849949e8815e              # double 7.6294909999999998
	.quad	0x40223a8e71476af9              # double 9.1143680000000007
	.quad	0x4017448909289dae              # double 5.816929
	.quad	0x402060f8a4c1ebc8              # double 8.1893969999999996
	.quad	0x4010ca86d71f3626              # double 4.1977799999999998
	.quad	0x3ffae49b1fab96f2              # double 1.680812
	.quad	0x4013782f0e0a84be              # double 4.8673669999999998
	.quad	0x402191adea897636              # double 8.7845300000000002
	.quad	0x401e9493c89f40a3              # double 7.6450950000000004
	.quad	0x40140f961804d984              # double 5.0152210000000004
	.quad	0x4019fa604e1e7104              # double 6.4945079999999997
	.quad	0x40214cfe79ee02a7              # double 8.6503789999999992
	.quad	0x402368d9b5e95b79              # double 9.7047860000000003
	.quad	0x401732096787ce96              # double 5.798864
	.quad	0x3fe17bdad7518b0d              # double 0.54636899999999999
	.quad	0x401ebd22c881e471              # double 7.6847029999999998
	.quad	0x4001f437c5692b3d              # double 2.2442470000000001
	.quad	0x40157b1c0010c6f8              # double 5.3702240000000003
	.quad	0x401e5b380cb6c7a8              # double 7.5890810000000001
	.quad	0x40083802c0a4a05e              # double 3.0273490000000001
	.quad	0x401379bf5946c333              # double 4.8688940000000001
	.quad	0x4021018c7e28240b              # double 8.5030249999999992
	.quad	0x3fe8c0bfe3b03e21              # double 0.77352900000000002
	.quad	0x4011959ff4fd6d7f              # double 4.3961180000000004
	.quad	0x402233845564b663              # double 9.100619
	.quad	0x3ff8b05319828805              # double 1.543048
	.quad	0x40226b69b9d7fd82              # double 9.2097909999999992
	.quad	0x3fe97811f4f50a03              # double 0.79590700000000003
	.quad	0x40031f865d7cb2d9              # double 2.390393
	.quad	0x4023d48a9bcfd4bf              # double 9.9151199999999999
	.quad	0x401878d4fdf3b646              # double 6.1180000000000003
	.quad	0x40137c4199fe4367              # double 4.8713439999999997
	.quad	0x4015d85fd04a2fcf              # double 5.461303
	.quad	0x401f7821294573a8              # double 7.8673140000000003
	.quad	0x400066516db0dd83              # double 2.04996
	.quad	0x4020053804534bd7              # double 8.0101929999999992
	.quad	0x40091bb62413db7f              # double 3.138531
	.quad	0x401d5fb97bb73083              # double 7.3434809999999997
	.quad	0x401e1810e8858ff7              # double 7.5235019999999996
	.quad	0x401fc4dc22ab25b3              # double 7.9422459999999999
	.quad	0x4018327e9531550d              # double 6.0493110000000003
	.quad	0x3ff255ad106ee30d              # double 1.1459170000000001
	.quad	0x401f45e3da2f8bdf              # double 7.8182520000000002
	.quad	0x40238d16b97fe8ee              # double 9.7755639999999993
	.quad	0x401e6593e5fb71fc              # double 7.5991970000000002
	.quad	0x3ffbdbccaf709b74              # double 1.7411620000000001
	.quad	0x4005eec311622813              # double 2.7415829999999999
	.quad	0x4006e03a322af577              # double 2.859486
	.quad	0x402252a38b8ae31d              # double 9.1614039999999992
	.quad	0x401dce37585be1a8              # double 7.4513829999999998
	.quad	0x3ff7fee3d5fdcdf7              # double 1.4997290000000001
	.quad	0x4012945f17bd8be7              # double 4.6448939999999999
	.quad	0x4000937110e453d2              # double 2.071993
	.quad	0x3ff295757d5a9eb2              # double 1.161489
	.quad	0x401f10b178b37004              # double 7.7663019999999996
	.quad	0x40189a7829068987              # double 6.150849
	.quad	0x401db92c49342678              # double 7.4308329999999997
	.quad	0x402396c54bcf0b6b              # double 9.7944739999999992
	.quad	0x40224ae297396d09              # double 9.1462599999999998
	.quad	0x401af9830e3cd9a5              # double 6.7436639999999999
	.quad	0x4015098dcdb37c9a              # double 5.2593300000000003
	.quad	0x401ca82cf52b90a8              # double 7.1642340000000004
	.quad	0x40000f587d6f9768              # double 2.0074930000000002
	.quad	0x3ff24c21e1d2178f              # double 1.1435869999999999
	.quad	0x3ffb91a32b12d341              # double 1.7230559999999999
	.quad	0x402017ff36ac6477              # double 8.0468689999999992
	.quad	0x401cd331e3a7daa5              # double 7.206245
	.quad	0x400fa40c8472c0e8              # double 3.9551020000000001
	.quad	0x3ffeeb5c39bcba30              # double 1.932461
	.quad	0x40214ef62f9ca5be              # double 8.6542220000000007
	.quad	0x3ff997e670e2c12b              # double 1.599585
	.quad	0x4019e6634117f844              # double 6.4749879999999997
	.quad	0x3ff1020817fc7608              # double 1.0629960000000001
	.quad	0x3ff86915379fa97e              # double 1.525655
	.quad	0x3ff6945308bb9064              # double 1.4112119999999999
	.quad	0x401195e6bc621b7e              # double 4.396388
	.quad	0x4011489f83be6602              # double 4.3209210000000002
	.quad	0x3fe695a294141e9b              # double 0.705766
	.quad	0x4007772580c308ff              # double 2.9331770000000001
	.quad	0x401e761c79b34a45              # double 7.6153430000000001
	.quad	0x401da3821af7d30b              # double 7.4096760000000002
	.quad	0x4021bb73083558a7              # double 8.8661119999999993
	.quad	0x40162ccd0fe8ab50              # double 5.5437510000000003
	.quad	0x4016555a3a08398a              # double 5.5833519999999996
	.quad	0x4003a8dda48b6523              # double 2.4574539999999998
	.quad	0x400bae89656eefa2              # double 3.460223
	.quad	0x400affa22706d506              # double 3.3748209999999998
	.quad	0x3fe40d1958969a0b              # double 0.62659900000000002
	.quad	0x4010f8f1d3ed527e              # double 4.2431099999999997
	.quad	0x4022e6be37de939f              # double 9.4506700000000005
	.quad	0x3fd9ee7c49fd7a14              # double 0.40518100000000001
	.quad	0x3ffd7526527a2058              # double 1.8411010000000001
	.quad	0x401a22cb641700ce              # double 6.5339790000000004
	.quad	0x4008e2ca148ba83f              # double 3.1107369999999999
	.quad	0x3fec6d0b30b5aa71              # double 0.88831099999999996
	.quad	0x4021812923e5b856              # double 8.7522669999999998
	.quad	0x4020f82ff8ec0f88              # double 8.4847409999999996
	.quad	0x401bd8d6909aed57              # double 6.9617560000000003
	.quad	0x3ffd8ded288ce704              # double 1.8471500000000001
	.quad	0x400441e4f765fd8b              # double 2.5321750000000001
	.quad	0x4012bb7c7820a30e              # double 4.6830920000000003
	.quad	0x4007b08787485e3e              # double 2.9611960000000002
	.quad	0x400c93b213e3e293              # double 3.572117
	.quad	0x400ca24f6598e10d              # double 3.579253
	.quad	0x400b09270b06c43f              # double 3.3794689999999998
	.quad	0x3ff2909070fbeb9e              # double 1.1602939999999999
	.quad	0x401a9b2f661f18ca              # double 6.651548
	.quad	0x3fe342aed1394318              # double 0.60189000000000004
	.quad	0x4016d2b51bd61f5c              # double 5.7057690000000001
	.quad	0x4021e32e7b3d8e00              # double 8.9437139999999999
	.quad	0x40082f9096bb98c8              # double 3.0232250000000001
	.quad	0x3faa599ed7c6fbd2              # double 0.051464999999999997
	.quad	0x3f9e5cd4ed2cbea5              # double 0.029651
	.quad	0x3fe30705425f2021              # double 0.594607
	.quad	0x4003ef34d6a161e5              # double 2.4918
	.quad	0x400e783e8576cce6              # double 3.808713
	.quad	0x401ee46cfc829cfe              # double 7.7230720000000002
	.quad	0x4005680e8c8abd5e              # double 2.6758090000000001
	.quad	0x3fe4c0bdcad14a0a              # double 0.64852799999999999
	.quad	0x3febc906034f3fd9              # double 0.86828899999999998
	.quad	0x400ca6e86c6583e8              # double 3.5814979999999998
	.quad	0x4011e67dbb16c1e3              # double 4.4750889999999997
	.quad	0x40137d42c3c9eecc              # double 4.872325
	.quad	0x4023f2a6d2674081              # double 9.973929
	.quad	0x402048157eed45e9              # double 8.1407889999999998
	.quad	0x400fce820e629952              # double 3.9758339999999999
	.quad	0x401ff2ef4e0114d3              # double 7.987241
	.quad	0x400050ced4e4c943              # double 2.0394570000000001
	.quad	0x4020f0a7c5ac471b              # double 8.4700299999999995
	.quad	0x3fdba32b12d3415b              # double 0.431834
	.quad	0x402346994185058e              # double 9.6378880000000002
	.quad	0x40140fd933e35c5b              # double 5.0154769999999997
	.quad	0x4012d639d5e4a383              # double 4.7092049999999999
	.quad	0x3fffaeff5c6c11a1              # double 1.980224
	.quad	0x3fea0b178b370047              # double 0.81385399999999997
	.quad	0x4004d07d912556d2              # double 2.6018020000000002
	.quad	0x402273f8b9baa151              # double 9.2265069999999998
	.quad	0x4008a5b9e8c47a18              # double 3.080921
	.quad	0x4018931337eb28d8              # double 6.1436279999999996
	.quad	0x3ff758676a7264a1              # double 1.4590829999999999
	.quad	0x401e47281fd9ba1b              # double 7.5694889999999999
	.quad	0x400b988b11409a24              # double 3.449484
	.quad	0x401506cb5350092d              # double 5.2566350000000002
	.quad	0x3ff12936c58eeaea              # double 1.072562
	.quad	0x40007c914b167ec8              # double 2.0608240000000002
	.quad	0x400abac9afe1da7b              # double 3.341205
	.quad	0x401d5c79b34a44c8              # double 7.3403080000000002
	.quad	0x3ffd8d8a979e16d7              # double 1.847056
	.quad	0x40167af31b152f3c              # double 5.6200679999999998
	.quad	0x4003f70de8f6ceff              # double 2.4956320000000001
	.quad	0x4013eca29845dc83              # double 4.9810889999999999
	.quad	0x401cb8611fd5885d              # double 7.1800579999999998
	.quad	0x401a75db3397dd01              # double 6.615094
	.quad	0x4019878d4fdf3b64              # double 6.3823749999999997
	.quad	0x40159e5bc87db2b3              # double 5.4046469999999998
	.quad	0x402009f70de8f6cf              # double 8.019463
	.quad	0x40069955f78359bc              # double 2.8248709999999999
	.quad	0x400052367e414e7f              # double 2.040143
	.quad	0x3fea8383ad9f0a1c              # double 0.82855400000000001
	.quad	0x40164d117b5286b6              # double 5.5752620000000004
	.quad	0x401faa0e410b630b              # double 7.9160700000000003
	.quad	0x40110d0aaa7ded6c              # double 4.2627360000000003
	.quad	0x402165e28aa43351              # double 8.6989940000000008
	.quad	0x40218779a6b50b0f              # double 8.7645999999999997
	.quad	0x40178ebf65dbfceb              # double 5.8894019999999996
	.quad	0x3fee61b8ed1bf7ad              # double 0.94942899999999997
	.quad	0x400e22d7b634dad3              # double 3.7670129999999999
	.quad	0x3ffbf5350092ccf7              # double 1.7473650000000001
	.quad	0x4010ffaebc408d8f              # double 4.2496900000000002
	.quad	0x4017117e77d523b3              # double 5.7670839999999997
	.quad	0x4009aa99b6f5caf3              # double 3.2083010000000001
	.quad	0x401ec2d55a3a083a              # double 7.6902670000000004
	.quad	0x3fcb50331e3a7daa              # double 0.21338499999999999
	.quad	0x40224654d61b2a28              # double 9.137366
	.quad	0x4001bb60285ec3db              # double 2.2164920000000001
	.quad	0x3ffa9dbca9691a76              # double 1.66351
	.quad	0x40207f1f36262cba              # double 8.2482849999999992
	.quad	0x401610cdc8754f37              # double 5.5164099999999996
	.quad	0x4009f85f8d2e514c              # double 3.2462759999999999
	.quad	0x40054dc22ab25b31              # double 2.6629679999999998
	.quad	0x401bcdeefe4ffc98              # double 6.9511070000000004
	.quad	0x4007fb64e054690e              # double 2.9977510000000001
	.quad	0x4020eefac6045baf              # double 8.4667569999999994
	.quad	0x40228b52a8438088              # double 9.2721149999999994
	.quad	0x3ffafa6698bb4d49              # double 1.6861330000000001
	.quad	0x3ff40f765fd8adac              # double 1.2537750000000001
	.quad	0x4023d7601797cc3a              # double 9.920655
	.quad	0x400bf5336deb95e6              # double 3.4947270000000001
	.quad	0x401466bb55ac03ff              # double 5.1003239999999996
	.quad	0x4021b7b506dd69d3              # double 8.858803
	.quad	0x4002c47a17f4128c              # double 2.345936
	.quad	0x3fe4c4eb56fb8f58              # double 0.649038
	.quad	0x40019c792d1287c2              # double 2.201403
	.quad	0x3ff9db951c5c5719              # double 1.616109
	.quad	0x3fec99b6f5caf2d8              # double 0.893764
	.quad	0x402223af102363b2              # double 9.0696949999999994
	.quad	0x401a36544fe36d22              # double 6.5530559999999998
	.quad	0x3ff4516db0dd82fd              # double 1.2698799999999999
	.quad	0x4014880cb6c7a7ca              # double 5.1328610000000001
	.quad	0x4023d621d96e9bbf              # double 9.9182269999999999
	.quad	0x4023ef34d6a161e5              # double 9.9672
	.quad	0x401df3a42f1ed17c              # double 7.4879309999999997
	.quad	0x4000362e90364389              # double 2.026456
	.quad	0x3ff4cc0bdcad14a1              # double 1.2998160000000001
	.quad	0x401863ca7503b81b              # double 6.0974519999999997
	.quad	0x3fe6dfb9389b5200              # double 0.71480999999999995
	.quad	0x401b1ef6b5d462c3              # double 6.7802379999999998
	.quad	0x40074f062d40aaeb              # double 2.913586
	.quad	0x400b12641b328b6e              # double 3.3839800000000002
	.quad	0x4005d50331e3a7db              # double 2.7290100000000002
	.quad	0x4003f607c4199fe4              # double 2.4951319999999999
	.quad	0x40208013ec460ed8              # double 8.2501519999999999
	.quad	0x400401e14bdfd263              # double 2.500918
	.quad	0x4010f9b52007dd44              # double 4.2438549999999999
	.quad	0x40204c111ada76d9              # double 8.1485679999999991
	.quad	0x3ff7ed3a604e1e71              # double 1.495417
	.quad	0x3ffd12513b5bf6a1              # double 1.816972
	.quad	0x401ecec204f2ae08              # double 7.701912
	.quad	0x4002aa6fc58ab92c              # double 2.333221
	.quad	0x401ada22b3892ee8              # double 6.7130229999999997
	.quad	0x400bcf8055fbb518              # double 3.4763190000000002
	.quad	0x3fc5a76d97b30f8c              # double 0.16917199999999999
	.quad	0x400b9ab324851a87              # double 3.4505370000000002
	.quad	0x4018249a9973d9ec              # double 6.0357459999999996
	.quad	0x3ff984d12018a43c              # double 1.5949260000000001
	.quad	0x3ff6cd3ae685db77              # double 1.4251050000000001
	.quad	0x400c5608d08919f0              # double 3.5420090000000002
	.quad	0x40076e86c6583e85              # double 2.9289679999999998
	.quad	0x3fdc4e7ab7564303              # double 0.44229000000000002
	.quad	0x3ff5b16c1e364bec              # double 1.3558159999999999
	.quad	0x3ff778854cdb7ae5              # double 1.4669239999999999
	.quad	0x4005d313be22e5de              # double 2.728065
	.quad	0x3fda408d8ec95bff              # double 0.41019
	.quad	0x401afa3443d46b27              # double 6.7443400000000002
	.quad	0x401d55e8d5410f95              # double 7.3338960000000002
	.quad	0x3ff7a223e1869835              # double 1.477085
	.quad	0x3fc02131a8ef77f2              # double 0.12601299999999999
	.quad	0x4001e98e53eb399f              # double 2.2390409999999998
	.quad	0x401a46ff7dfa00e2              # double 6.5693339999999996
	.quad	0x401b77ec3547e069              # double 6.8671119999999997
	.quad	0x4006208205ff1d82              # double 2.765873
	.quad	0x4022b88b32ce8965              # double 9.3604369999999992
	.quad	0x400c20bf5d78811b              # double 3.5159899999999999
	.quad	0x4023bb93ccd0fe8b              # double 9.8663620000000005
	.quad	0x402243aa9b499d02              # double 9.132161
	.quad	0x401ae70ef566490a              # double 6.7256429999999998
	.quad	0x401cef3bea91d9b2              # double 7.2336270000000003
	.quad	0x3ffac10624dd2f1b              # double 1.6721250000000001
	.quad	0x400095c182ecaeea              # double 2.0731229999999998
	.quad	0x4021f3baba7b9171              # double 8.9760340000000003
	.quad	0x40229afbc1acde1a              # double 9.302702
	.quad	0x3ff0505d0fa58f71              # double 1.01962
	.quad	0x40063f255f3519bd              # double 2.7808329999999999
	.quad	0x40231b178b370047              # double 9.5529139999999994
	.quad	0x4022f533d29563aa              # double 9.4789110000000001
	.quad	0x3fd1d61b2a27f1b7              # double 0.27869300000000002
	.quad	0x3ffdc213a0c6b485              # double 1.859882
	.quad	0x4022d82c4d65e460              # double 9.4222129999999993
	.quad	0x4002bf6124074645              # double 2.3434469999999998
	.quad	0x4023a2cc2d6a9c56              # double 9.8179639999999999
	.quad	0x401b69e6256366d8              # double 6.8534170000000003
	.quad	0x40180c68661ae70c              # double 6.0121169999999999
	.quad	0x40222752977c88e8              # double 9.0768020000000007
	.quad	0x4020ff1455219a84              # double 8.4982019999999991
	.quad	0x401c3e4755ffe6d6              # double 7.0608190000000004
	.quad	0x400043c4b09e98dd              # double 2.0330900000000001
	.quad	0x3ff31604189374bc              # double 1.1928749999999999
	.quad	0x401ba5ab3aabcd79              # double 6.9117860000000002
	.quad	0x40190a921ccd9620              # double 6.2603229999999996
	.quad	0x401aeba4d6e47dc3              # double 6.7301209999999996
	.quad	0x402344daf4adbc66              # double 9.6344829999999995
	.quad	0x4009d64628027d89              # double 3.2296260000000001
	.quad	0x401ed5e74299d884              # double 7.7088900000000002
	.quad	0x4000ab52c9d16fca              # double 2.0836540000000001
	.quad	0x3ff283f2d3c792d1              # double 1.157214
	.quad	0x401cda22b3892ee8              # double 7.2130229999999997
	.quad	0x4023db09c7ffde72              # double 9.9278089999999999
	.quad	0x3fe2fd199bb2788e              # double 0.59339600000000003
	.quad	0x3fe4a0e6299524c0              # double 0.64464100000000002
	.quad	0x3fd00ea5b530ced5              # double 0.25089400000000001
	.quad	0x4018f4d4cb9ecf64              # double 6.2390930000000004
	.quad	0x401c6093964a59c0              # double 7.0943129999999996
	.quad	0x3fd3b9cb6848beb6              # double 0.30821500000000002
	.quad	0x40225c0d4dc65c70              # double 9.1797889999999995
	.quad	0x401a03e29307af21              # double 6.5037940000000001
	.quad	0x4023e9c10d7be985              # double 9.9565509999999992
	.quad	0x401209ecf6380022              # double 4.5096930000000004
	.quad	0x401b1c05d52c16df              # double 6.7773659999999998
	.quad	0x401c1690de093533              # double 7.0220370000000001
	.quad	0x401f5a4f00ef1349              # double 7.8381920000000002
	.quad	0x40228ee807bbb624              # double 9.2791139999999998
	.quad	0x400a6b945308bb90              # double 3.3025289999999998
	.quad	0x401ab3461309c800              # double 6.6750720000000001
	.quad	0x401fb0435efa615b              # double 7.9221320000000003
	.quad	0x4015ef3f52fc2657              # double 5.4836400000000003
	.quad	0x4006d87c6327ed85              # double 2.8557060000000001
	.quad	0x3ff0639b456b441c              # double 1.0243180000000001
	.quad	0x401840c7c0f45176              # double 6.0632619999999999
	.quad	0x3fb96bca5375c8da              # double 0.099301
	.quad	0x401b0f672b884407              # double 6.7650420000000002
	.quad	0x401fc3e920c069e8              # double 7.941319
	.quad	0x402128858ff75968              # double 8.5791439999999994
	.quad	0x40237d084e831ad2              # double 9.7442039999999999
	.quad	0x401265e84f09528f              # double 4.5995189999999999
	.quad	0x4019e62b6ae7d567              # double 6.4747750000000002
	.quad	0x401b07ef5a964e8b              # double 6.7577489999999996
	.quad	0x4020730079a2834d              # double 8.2246129999999997
	.quad	0x4003db8c32a8c9b8              # double 2.4822009999999999
	.quad	0x401ca38fbca1059f              # double 7.1597280000000003
	.quad	0x402214504816f007              # double 9.0396750000000008
	.quad	0x401aa92b7fe08af0              # double 6.6652050000000003
	.quad	0x40022f4be835dedf              # double 2.2730939999999999
	.quad	0x401efa2cecc814d7              # double 7.7443119999999998
	.quad	0x4022a6a6e32e3822              # double 9.3254920000000006
	.quad	0x40127041461b6d44              # double 4.6096240000000002
	.quad	0x4006704d551d68c7              # double 2.8048350000000002
	.quad	0x401aee7afa722186              # double 6.7328910000000004
	.quad	0x4020384a0e410b63              # double 8.1099399999999999
	.quad	0x40216c68a936c58f              # double 8.7117360000000001
	.quad	0x40213c6cdaf4adbc              # double 8.6180179999999992
	.quad	0x401f412f4cf4a559              # double 7.813657
	.quad	0x3fe53a1d323fee2d              # double 0.66334400000000004
	.quad	0x401008be7296f651              # double 4.0085389999999999
	.quad	0x40218ab4959e6256              # double 8.7709089999999996
	.quad	0x401b13fc86cebbba              # double 6.7695179999999997
	.quad	0x40238e47778dd617              # double 9.777889
	.quad	0x402245cf0307f23d              # double 9.1363450000000004
	.quad	0x4021bef47b677f6b              # double 8.8729589999999998
	.quad	0x401938ad68837718              # double 6.3053489999999996
	.quad	0x4023d618266772d6              # double 9.9181530000000002
	.quad	0x4007b7e0ac7da1ec              # double 2.9647839999999999
	.quad	0x3ff2776f6d762520              # double 1.1541589999999999
	.quad	0x3ff41e7b80a9de8b              # double 1.2574419999999999
	.quad	0x4003b0dd82fd75e2              # double 2.46136
	.quad	0x3ff356bb98c7e282              # double 1.2086749999999999
	.quad	0x4004f6feb4a6655a              # double 2.620603
	.quad	0x401a7ad57bc7f77b              # double 6.619955
	.quad	0x400c3845dc832336              # double 3.5274770000000002
	.quad	0x3ff0cc26138fffbd              # double 1.049841
	.quad	0x40183be6a337a80d              # double 6.058497
	.quad	0x3fccbc169c23b795              # double 0.22449
	.quad	0x4006c1ede1198aec              # double 2.8446920000000002
	.quad	0x3fd87add15f02c4d              # double 0.38249899999999998
	.quad	0x40106e2e6ea85447              # double 4.1075989999999996
	.quad	0x4020678c0053e2d6              # double 8.2022399999999998
	.quad	0x401c22f9873ffac2              # double 7.0341550000000002
	.quad	0x401cb57ff9b56324              # double 7.1772460000000002
	.quad	0x3fb2682b62845996              # double 0.071901999999999994
	.quad	0x3fe6fde2ef4e0115              # double 0.71849200000000002
	.quad	0x400c698f605ab3ab              # double 3.5515430000000001
	.quad	0x3fe5dab5c39bcba3              # double 0.682948
	.quad	0x4014dfa3b9ae0c17              # double 5.2183979999999996
	.quad	0x4017f0342aa9f7b6              # double 5.9845740000000003
	.quad	0x40194c02f2f98740              # double 6.32423
	.quad	0x4023b59210385c68              # double 9.8546300000000002
	.quad	0x40133e1932d6ece1              # double 4.8106429999999998
	.quad	0x4004bd1a21ea3593              # double 2.5923349999999998
	.quad	0x4008bce9e5e24788              # double 3.0922429999999999
	.quad	0x4013c88ebcc6c54c              # double 4.9458570000000002
	.quad	0x40212aaa19439de5              # double 8.5833290000000009
	.quad	0x3fe7efd21ff2e48f              # double 0.74802500000000005
	.quad	0x4022070d1fa33376              # double 9.0137719999999995
	.quad	0x400f3ca5375c8da0              # double 3.9046120000000002
	.quad	0x40164811b1d92b80              # double 5.5703800000000001
	.quad	0x4001f5b4edb2f662              # double 2.244974
	.quad	0x402279756c93a711              # double 9.2372239999999994
	.quad	0x400059231c64ba95              # double 2.0435240000000001
	.quad	0x40183cc74b838c11              # double 6.0593539999999999
	.quad	0x3febb42aa9f7b5af              # double 0.86574300000000004
	.quad	0x400dfb7d84901d19              # double 3.747798
	.quad	0x401088b7a1c25d07              # double 4.1335129999999998
	.quad	0x3ff89d334c5da6a4              # double 1.5383789999999999
	.quad	0x4010e4aba3875925              # double 4.2233109999999998
	.quad	0x401c8e4c0df58c09              # double 7.1389620000000003
	.quad	0x401d02ff08893b7e              # double 7.2529260000000004
	.quad	0x3ffcd46a1a500d5f              # double 1.8018590000000001
	.quad	0x4011e1bc55864452              # double 4.4704449999999998
	.quad	0x400f039de481f538              # double 3.8767659999999999
	.quad	0x4002baf6c69b5a64              # double 2.341291
	.quad	0x3ff12bc0e38a7e74              # double 1.0731820000000001
	.quad	0x4015030a0b1bbcf5              # double 5.2529680000000001
	.quad	0x3fe784e3ffef3908              # double 0.73497199999999996
	.quad	0x3fbf77af640639d6              # double 0.12292
	.quad	0x4021252ce032db1f              # double 8.5726080000000007
	.quad	0x4019b40f23897204              # double 6.4258389999999999
	.quad	0x4012e63ed0f62739              # double 4.7248489999999999
	.quad	0x4021813ab430f495              # double 8.7524010000000008
	.quad	0x401d5c69b5a63f9a              # double 7.3402469999999997
	.quad	0x40108a93293d102c              # double 4.1353270000000002
	.quad	0x40162feeb2d0a244              # double 5.5468089999999997
	.quad	0x401df6299524bfd3              # double 7.490393
	.quad	0x401f512dfd694ccb              # double 7.8292770000000002
	.quad	0x40232742bb6672fc              # double 9.5766810000000006
	.quad	0x3ff848feac42e98a              # double 1.5178210000000001
	.quad	0x40116032db1e9f27              # double 4.3439439999999996
	.quad	0x3ff87ac1d29dc726              # double 1.5299700000000001
	.quad	0x402192f6837f7be1              # double 8.7870369999999998
	.quad	0x4016255de58e64b2              # double 5.5364909999999998
	.quad	0x4006d57cd466f502              # double 2.8542420000000002
	.quad	0x4005f4fc610f0e91              # double 2.7446220000000001
	.quad	0x3fd92d0a24463066              # double 0.393374
	.quad	0x401e6523f67f4dbe              # double 7.59877
	.quad	0x4021cb43fa2ad3e9              # double 8.8970029999999998
	.quad	0x4014af82b1f687b1              # double 5.1713969999999998
	.quad	0x4020d096787ce960              # double 8.4073980000000006
	.quad	0x4009d38d60a63305              # double 3.228297
	.quad	0x4015d54e2b063e08              # double 5.4583060000000003
	.quad	0x4023a7c06e19b90f              # double 9.8276400000000005
	.quad	0x40086cdd93c46d83              # double 3.0531570000000001
	.quad	0x400a1a9eb2074ea9              # double 3.2629980000000001
	.quad	0x4015d1d9f4d37c13              # double 5.4549329999999996
	.quad	0x3fc1f9d6f112fd33              # double 0.14043700000000001
	.quad	0x4021ce86a4ca4f44              # double 8.9033709999999999
	.quad	0x4010f8b7e4de3b8a              # double 4.2428889999999999
	.quad	0x401df7f4128bf3bf              # double 7.4921420000000003
	.quad	0x401021aeb3dd11be              # double 4.0328929999999996
	.quad	0x3ffb13a2df9378ee              # double 1.692294
	.quad	0x401f3d32c625e99f              # double 7.8097640000000003
	.quad	0x40208ed2cbea4ebe              # double 8.2789520000000003
	.quad	0x4015afd113836a83              # double 5.4216959999999998
	.quad	0x40187f81626b2f23              # double 6.124517
	.quad	0x3ff25a4484944ed7              # double 1.147038
	.quad	0x3ff906290eed02cd              # double 1.5640039999999999
	.quad	0x4020212018a43bb4              # double 8.0646979999999999
	.quad	0x40081bf9c62a1b5c              # double 3.0136599999999998
	.quad	0x4016ad3a1d323fee              # double 5.6691669999999998
	.quad	0x401ee810624dd2f2              # double 7.7266250000000003
	.quad	0x40178f61ed5ae1ce              # double 5.8900220000000001
	.quad	0x400fc56605ee568a              # double 3.9713859999999999
	.quad	0x40231065b63d3e4f              # double 9.5320260000000001
	.quad	0x3fe9d24180d3cff6              # double 0.80691599999999997
	.quad	0x400f9847f562174c              # double 3.9493559999999999
	.quad	0x402390b135979182              # double 9.7826020000000007
	.quad	0x3ff6c23422467be5              # double 1.4224129999999999
	.quad	0x4009e76fb09203a3              # double 3.2380059999999999
	.quad	0x3ff68259e1f3a57f              # double 1.4068240000000001
	.quad	0x40193158fb43d89d              # double 6.2981910000000001
	.quad	0x401c89bbf0dc768e              # double 7.134506
	.quad	0x402030af5fd47bee              # double 8.0950880000000005
	.quad	0x40217e503fb37436              # double 8.7467059999999996
	.quad	0x3ff4efbd273d5bab              # double 1.30853
	.quad	0x4006a7fed20296b3              # double 2.8320289999999999
	.quad	0x3febad7f950b955f              # double 0.86492899999999995
	.quad	0x3fe5ef62f9ca5bd9              # double 0.68547199999999997
	.quad	0x400bfa919695d91b              # double 3.4973480000000001
	.quad	0x4021740d0aaa7ded              # double 8.7266619999999993
	.quad	0x4001fe646f156191              # double 2.249215
	.quad	0x4000de0ded288ce7              # double 2.108425
	.quad	0x4008c6327ed84d34              # double 3.0967760000000002
	.quad	0x3feb60dcb9a9da59              # double 0.85557399999999995
	.quad	0x4003a574b407032a              # double 2.4557890000000002
	.quad	0x40019e1c9b413986              # double 2.2022029999999999
	.quad	0x40204ee49f51697f              # double 8.1540879999999998
	.quad	0x4023265c0b999136              # double 9.5749209999999998
	.quad	0x3ff4ea19439de482              # double 1.307153
	.quad	0x400f008fa7a85016              # double 3.8752740000000001
	.quad	0x3ff2a99c7bcc2939              # double 1.166409
	.quad	0x4020812e40852b4e              # double 8.2523060000000008
	.quad	0x40067460242d05f3              # double 2.8068240000000002
	.quad	0x401b3f3d3a1d3240              # double 6.8117570000000001
	.quad	0x3fb2517e77d523b3              # double 0.071555999999999995
	.quad	0x4010d95aaf78feef              # double 4.2122599999999997
	.quad	0x4006219b90ea9e6f              # double 2.76641
	.quad	0x4018d44d87724fa9              # double 6.2073270000000003
	.quad	0x40111bbecaab8a5d              # double 4.2770950000000001
	.quad	0x4010b0e1f7d73c92              # double 4.1727369999999997
	.quad	0x401f3dc4007570c5              # double 7.8103179999999996
	.quad	0x3ff49374bc6a7efa              # double 1.286
	.quad	0x402239fff79c8430              # double 9.1132810000000006
	.quad	0x3fc9cc857f3061c8              # double 0.20155400000000001
	.quad	0x400237f7be121ee6              # double 2.2773279999999998
	.quad	0x4000ecad57bc7f78              # double 2.1155650000000001
	.quad	0x401ad3b42cc2d6aa              # double 6.7067420000000002
	.quad	0x401d2befd00713f0              # double 7.2929069999999996
	.quad	0x4014f789e774eebf              # double 5.2417369999999996
	.quad	0x4017cde2ac322292              # double 5.95106
	.quad	0x4021af963992c8c5              # double 8.842943
	.quad	0x3ff5526c7eae5bc8              # double 1.3326229999999999
	.quad	0x400cd44e50c5eb31              # double 3.6036649999999999
	.quad	0x40046c46950fc71d              # double 2.5528689999999998
	.quad	0x4010bc3f3e0370ce              # double 4.1838350000000002
	.quad	0x4002c8e15011904b              # double 2.3480859999999999
	.quad	0x40158b80ecfa69be              # double 5.386234
	.quad	0x4003bc5cdd50a88f              # double 2.466974
	.quad	0x4012c26202539757              # double 4.6898270000000002
	.quad	0x400703fcc9ea9a3d              # double 2.8769469999999999
	.quad	0x40234721f6cacd18              # double 9.6389309999999994
	.quad	0x40201873de1e2de8              # double 8.0477589999999992
	.quad	0x400eb45308bb9064              # double 3.8380489999999998
	.quad	0x401105b9e8c47a18              # double 4.255592
	.quad	0x402027863beec398              # double 8.0771960000000007
	.quad	0x40035e82517e77d5              # double 2.4211469999999999
	.quad	0x3fc451dabe27179c              # double 0.158748
	.quad	0x40232d069a4df480              # double 9.5879410000000007
	.quad	0x401c0f3fd933e35c              # double 7.0148919999999997
	.quad	0x3fdab3c3e74afd54              # double 0.41722199999999998
	.quad	0x4023c1d0203e63e9              # double 9.8785410000000002
	.quad	0x4011062131a8ef78              # double 4.255986
	.quad	0x4012f8d9b5e95b79              # double 4.7430180000000002
	.quad	0x402377a80cf9e386              # double 9.7337039999999995
	.quad	0x402160f96e158751              # double 8.6894030000000004
	.quad	0x3fd7eac42e9899bf              # double 0.37370399999999998
	.quad	0x4017ace28ed5f139              # double 5.9188330000000002
	.quad	0x40120306a2b17050              # double 4.502955
	.quad	0x400210e779207d4e              # double 2.258254
	.quad	0x4021819cbee807bc              # double 8.7531490000000005
	.quad	0x3fbdc36976bc1f00              # double 0.11626300000000001
	.quad	0x401d9d9e83e425af              # double 7.4039250000000001
	.quad	0x400098244e93e1ca              # double 2.0742880000000001
	.quad	0x3fff0d184c271fff              # double 1.9406969999999999
	.quad	0x3ffd50ebaade657c              # double 1.8322560000000001
	.quad	0x3fe03a8e71476af9              # double 0.50714800000000004
	.quad	0x4022ffcaa7589efe              # double 9.4995930000000008
	.quad	0x40171c01a36e2eb2              # double 5.7773500000000002
	.quad	0x401d93825e13b18e              # double 7.3940520000000003
	.quad	0x4010452502eec7c9              # double 4.0675239999999997
	.quad	0x3fa878316a055758              # double 0.047792000000000001
	.quad	0x3fd473a797891e21              # double 0.31955899999999998
	.quad	0x400231a32b12d341              # double 2.2742369999999998
	.quad	0x4004a6fcdee34fc6              # double 2.581537
	.quad	0x4016443632c1f42c              # double 5.5666130000000003
	.quad	0x3fb199cbee807bbb              # double 0.068752999999999995
	.quad	0x400f421858bc59b8              # double 3.907273
	.quad	0x3feb04c48adeebb3              # double 0.84433199999999997
	.quad	0x4023c9dc725c3dee              # double 9.8942599999999992
	.quad	0x401ac7a63736cdf2              # double 6.6949699999999996
	.quad	0x40220d9e1f3a57eb              # double 9.0265970000000006
	.quad	0x4021d7ab10ba6267              # double 8.921227
	.quad	0x4016e37542a23c00              # double 5.7221270000000004
	.quad	0x40207b0caa326e11              # double 8.2403309999999994
	.quad	0x4020b38583621fb0              # double 8.3506280000000004
	.quad	0x4022fa135daad602              # double 9.488429
	.quad	0x401260c308feac43              # double 4.5944940000000001
	.quad	0x400a9054ac29bf16              # double 3.3204739999999999
	.quad	0x3fff77985271bcdc              # double 1.9666980000000001
	.quad	0x3ff41ccb7d41743f              # double 1.2570300000000001
	.quad	0x401f5842fa509396              # double 7.8361929999999997
	.quad	0x40201e4712e40853              # double 8.0591360000000005
	.quad	0x401fe7f13059641f              # double 7.9765059999999996
	.quad	0x3ffa44a6223e186a              # double 1.6417600000000001
	.quad	0x3fd6fa54c5543287              # double 0.35902899999999999
	.quad	0x3ffc5ba0a5269596              # double 1.77237
	.quad	0x402084317acc4ef9              # double 8.2581900000000008
	.quad	0x401b6bbe0157eed4              # double 6.8552169999999997
	.quad	0x4007414f8b588e37              # double 2.9068900000000002
	.quad	0x40004a009f623077              # double 2.0361340000000001
	.quad	0x400bf1611ba3ca75              # double 3.492861
	.quad	0x401ee09edbf8b9bb              # double 7.7193560000000003
	.quad	0x402259804d983947              # double 9.1748069999999995
	.quad	0x3fddfcd24e160d88              # double 0.46855599999999997
	.quad	0x40204958d9b5e95b              # double 8.1432559999999992
	.quad	0x40217868fd199bb2              # double 8.7351759999999992
	.quad	0x3feb5ff1d81f1066              # double 0.85546199999999994
	.quad	0x4022e6225fa658c5              # double 9.4494810000000004
	.quad	0x3fe1c486ad2dcb14              # double 0.55523999999999996
	.quad	0x3ffad41e9af5ba2c              # double 1.676787
	.quad	0x3fff450efdc9c4db              # double 1.9543600000000001
	.quad	0x4005585f06f69446              # double 2.6681499999999998
	.quad	0x4017fbbd3804534c              # double 5.9958390000000001
	.quad	0x40075d7f51efb6dd              # double 2.9206530000000002
	.quad	0x401aac1d29dc725c              # double 6.6680799999999998
	.quad	0x4014e8a761027957              # double 5.227201
	.quad	0x3ff3375968512232              # double 1.2010130000000001
	.quad	0x400edbc558644524              # double 3.85731
	.quad	0x40005e481f53825e              # double 2.046036
	.quad	0x401cdb9d3cbc48f1              # double 7.214467
	.quad	0x3fd812599ed7c6fc              # double 0.37612000000000001
	.quad	0x3fd1e3eaf6837f7c              # double 0.27953600000000001
	.quad	0x4010c3e63e8dda49              # double 4.1913080000000003
	.quad	0x401656dbd72bcb60              # double 5.5848230000000001
	.quad	0x4022e2a25d8d79d1              # double 9.4426450000000006
	.quad	0x4014215a4acf312b              # double 5.0325709999999999
	.quad	0x4017c2b884406c01              # double 5.9401570000000001
	.quad	0x401a9d1bb4916ca4              # double 6.6534259999999996
	.quad	0x401533c36113404f              # double 5.3005500000000003
	.quad	0x401b4b73083558a7              # double 6.8236809999999997
	.quad	0x4005aef459d9902a              # double 2.7104270000000001
	.quad	0x4022b3daf8df7a4e              # double 9.3512799999999991
	.quad	0x4013a5ef1fddebd9              # double 4.912045
	.quad	0x400fe6d698fe6927              # double 3.987714
	.quad	0x402256a337a80cfa              # double 9.1692140000000002
	.quad	0x4016cb6a1e81cb47              # double 5.6986470000000002
	.quad	0x3ff0eb90a7829069              # double 1.0575110000000001
	.quad	0x4018eb2074ea8da8              # double 6.229616
	.quad	0x3ff34a697aeddce8              # double 1.205667
	.quad	0x400838d1d8a54824              # double 3.0277440000000002
	.quad	0x400b16bca5375c8e              # double 3.3861020000000002
	.quad	0x4022d3c4f3ba7760              # double 9.4136120000000005
	.quad	0x400fbb3743632c1f              # double 3.9664139999999999
	.quad	0x3ff3181e03f70585              # double 1.1933879999999999
	.quad	0x402204226809d495              # double 9.0080749999999998
	.quad	0x400c558c08b75ea6              # double 3.5417709999999998
	.quad	0x3fd147c73eee5259              # double 0.27000600000000002
	.quad	0x401081522a6f3f53              # double 4.12629
	.quad	0x401546cebbba55d2              # double 5.3191480000000002
	.quad	0x4011a3608d08919f              # double 4.409548
	.quad	0x40156da836eb4e98              # double 5.3570869999999999
	.quad	0x401b2e59f2ba9d1f              # double 6.7952649999999997
	.quad	0x401e95be5d9e40c8              # double 7.6462339999999997
	.quad	0x4020d9ca3a4b5569              # double 8.4253710000000002
	.quad	0x400ef5208e150119              # double 3.869691
	.quad	0x401d634a01abd1ab              # double 7.3469620000000004
	.quad	0x4019aa7e30878748              # double 6.4164969999999997
	.quad	0x40200284dfce3151              # double 8.0049200000000003
	.quad	0x40115321e603d578              # double 4.3311840000000004
	.quad	0x40222fd8f0c77dd8              # double 9.0934519999999992
	.quad	0x40201354c122749f              # double 8.0377559999999999
	.quad	0x40161cbd556084a5              # double 5.5280659999999999
	.quad	0x4017bbf6a0dbad3a              # double 5.9335579999999997
	.quad	0x402039bae46cfc83              # double 8.1127540000000007
	.quad	0x3ff05bf5946c332f              # double 1.022451
	.quad	0x4014d4523f67f4dc              # double 5.2073450000000001
	.quad	0x400e9c105186db51              # double 3.826203
	.quad	0x40197eae5bc87db3              # double 6.3737120000000003
	.quad	0x4012cb0ab2e1693c              # double 4.698283
	.quad	0x40193351159c4977              # double 6.3001139999999998
	.quad	0x401408e757928e0d              # double 5.0086950000000003
	.quad	0x40162f2fdb8fde2f              # double 5.546081
	.quad	0x40208241c3efae79              # double 8.2544079999999997
	.quad	0x4020e4bfd2e94680              # double 8.4467759999999998
	.quad	0x401d4457c0b13598              # double 7.3167410000000003
	.quad	0x40024870110a137f              # double 2.2853699999999999
	.quad	0x40214a6f3f52fc26              # double 8.6453799999999994
	.quad	0x4015f0e38a7e73a3              # double 5.4852429999999996
	.quad	0x4017676fb09203a3              # double 5.8510119999999999
	.quad	0x3fdd47ecfe9b7bf2              # double 0.45751500000000001
	.quad	0x40077d933e35c5b5              # double 2.9363160000000001
	.quad	0x401ff5260f5e41d5              # double 7.9894030000000002
	.quad	0x4012a171e29b6b2b              # double 4.6576610000000001
	.quad	0x4014e48c2e770bd0              # double 5.2231909999999999
	.quad	0x402292d234eb9a17              # double 9.2867599999999992
	.quad	0x401f917f84449dbf              # double 7.8920880000000002
	.quad	0x4008aa400fba8827              # double 3.0831300000000001
	.quad	0x3ff48299d883ba34              # double 1.2818849999999999
	.quad	0x40081a24894c447c              # double 3.0127649999999999
	.quad	0x401c0301eabbcb1d              # double 7.0029370000000002
	.quad	0x40165131a8ef77f2              # double 5.5792909999999996
	.quad	0x4003b474107314cb              # double 2.4631120000000002
	.quad	0x3fe508787485e3da              # double 0.65728399999999998
	.quad	0x400461355475a31a              # double 2.5474649999999999
	.quad	0x40137780fdc1615f              # double 4.8667030000000002
	.quad	0x4022ded0d49949e9              # double 9.4351870000000008
	.quad	0x400b096ededaec4a              # double 3.3796059999999999
	.quad	0x4020c28d002e2329              # double 8.379982
	.quad	0x4022fc7cfa26a22b              # double 9.4931409999999996
	.quad	0x3fa3f4eca686e7e6              # double 0.038977999999999999
	.quad	0x4004aaab8a5ce5b4              # double 2.5833349999999999
	.quad	0x40120395810624dd              # double 4.5034999999999998
	.quad	0x40058aa9f7b5aea3              # double 2.692707
	.quad	0x3ff9bc7a398201cd              # double 1.6085149999999999
	.quad	0x400cf3b107746888              # double 3.6189900000000002
	.quad	0x401e1385c67dfe33              # double 7.5190650000000003
	.quad	0x4020f71561911490              # double 8.4825850000000003
	.quad	0x4023be9a6f826edb              # double 9.8722720000000006
	.quad	0x4017242cc2d6a9c5              # double 5.7853269999999997
	.quad	0x402231359791819d              # double 9.0961119999999998
	.quad	0x402316260b2c83ed              # double 9.5432590000000008
	.quad	0x4023498bf7f06706              # double 9.6436460000000004
	.quad	0x401d3b45f17bd8be              # double 7.3078839999999996
	.quad	0x4023f106ab14ec20              # double 9.9707539999999995
	.quad	0x3ff0dbda5119ce07              # double 1.0536749999999999
	.quad	0x3ff8f764f11b60af              # double 1.5603990000000001
	.quad	0x4001c1e68a0d349c              # double 2.219678
	.quad	0x4007e68ec52a411c              # double 2.9875769999999999
	.quad	0x40201fcce1c58256              # double 8.0621100000000006
	.quad	0x3fc0cff21b3aeee9              # double 0.13134599999999999
	.quad	0x4011fd6adf71eaff              # double 4.4974780000000001
	.quad	0x4021bf7a919695d9              # double 8.8739819999999998
	.quad	0x4022ee113404ea4b              # double 9.4649750000000008
	.quad	0x4018917f4128bf3c              # double 6.1420870000000001
	.quad	0x4015905319828805              # double 5.3909419999999999
	.quad	0x3ff85d22856605ee              # double 1.5227379999999999
	.quad	0x401d232db1e9f278              # double 7.2843540000000004
	.quad	0x401d9b5393250b52              # double 7.4016859999999998
	.quad	0x4010b01eeed8904f              # double 4.1719929999999996
	.quad	0x401e813f4a98aa86              # double 7.6262179999999997
	.quad	0x4002c4b44a1f0803              # double 2.346047
	.quad	0x401afdff3f0fe048              # double 6.7480440000000002
	.quad	0x401a91ea78af3e47              # double 6.6424960000000004
	.quad	0x4018b09b30728e93              # double 6.1724670000000001
	.quad	0x3ffa79c304ccee5b              # double 1.6547270000000001
	.quad	0x4021a904d551d68c              # double 8.8301149999999992
	.quad	0x400c61f7d73c9258              # double 3.5478360000000002
	.quad	0x401704ce8101f31f              # double 5.7546939999999998
	.quad	0x401785f7c6759ab7              # double 5.8808280000000002
	.quad	0x4004c50efdc9c4db              # double 2.5962200000000002
	.quad	0x4008262d40aaeafb              # double 3.0186410000000001
	.quad	0x4005f31d2e0e3044              # double 2.7437079999999998
	.quad	0x3ff04e60807357e6              # double 1.0191349999999999
	.quad	0x4023dd21ff2e48e9              # double 9.9319000000000006
	.quad	0x4014731ca7d6733f              # double 5.1124140000000002
	.quad	0x40188155d5f56a7b              # double 6.1263040000000002
	.quad	0x4021d3f7ced91687              # double 8.9139999999999997
	.quad	0x4011a48f96e15875              # double 4.410704
	.quad	0x40218e4b2314013f              # double 8.7779170000000004
	.quad	0x401b481344806291              # double 6.8203860000000001
	.quad	0x4023fcd29131ec0b              # double 9.9937939999999994
	.quad	0x40216b1f687b139d              # double 8.7092240000000007
	.quad	0x401201e5c0b99913              # double 4.5018529999999997
	.quad	0x3fe109aed56b0100              # double 0.53243200000000002
	.quad	0x401937689ca18bd6              # double 6.3041099999999997
	.quad	0x40119fd4bf0995ab              # double 4.406085
	.quad	0x401a5b4edb2f661f              # double 6.5891679999999999
	.quad	0x40155f82b1f687b1              # double 5.3432719999999998
	.quad	0x402311f42bb66730              # double 9.5350660000000005
	.quad	0x40106ff4fd6d7e89              # double 4.1093330000000003
	.quad	0x4009cb1e5c0b9991              # double 3.2241789999999999
	.quad	0x3fd0a875d56f32be              # double 0.26028200000000001
	.quad	0x400862db61bb05fb              # double 3.04827
	.quad	0x4020ed51b4fe79ee              # double 8.463514
	.quad	0x4023e9930be0ded3              # double 9.9562000000000008
	.quad	0x4021f9ae2da554b9              # double 8.9876570000000005
	.quad	0x401d7b37c99ae925              # double 7.37033
	.quad	0x3ffcef123c42a66e              # double 1.8083670000000001
	.quad	0x402123c1eff9f87f              # double 8.569839
	.quad	0x402249e18efbb0e6              # double 9.1442990000000002
	.quad	0x4003aae4b0186120              # double 2.4584440000000001
	.quad	0x401ea2396073de1e              # double 7.6584219999999998
	.quad	0x401399ef5232d2bb              # double 4.9003269999999999
	.quad	0x400f4e6c8f755369              # double 3.9132929999999999
	.quad	0x4018541248d7e026              # double 6.0821009999999998
	.quad	0x3fd1f1fddebd9019              # double 0.28039500000000001
	.quad	0x401768e8ea39c51e              # double 5.8524510000000003
	.quad	0x3fede2a80064a9ce              # double 0.93391800000000003
	.quad	0x400182e33eff1950              # double 2.1889099999999999
	.quad	0x401fddd0d8cb07d1              # double 7.9666170000000002
	.quad	0x40034ebedfa43fe6              # double 2.4134500000000001
	.quad	0x4009484dfce3150e              # double 3.1603050000000001
	.quad	0x3fef464ba94bbe44              # double 0.97733099999999994
	.quad	0x401913c9eecbfb16              # double 6.2693250000000003
	.quad	0x40146008205ff1d8              # double 5.0937809999999999
	.quad	0x4020ec02f2f98740              # double 8.46096
	.quad	0x3ff76e46cfc829d0              # double 1.464423
	.quad	0x40000e9d51b4fe7a              # double 2.007136
	.quad	0x3ff06f77f27fe4bd              # double 1.0272140000000001
	.quad	0x400fefbb9496249a              # double 3.992057
	.quad	0x3fdeb4d48882f0e1              # double 0.47978700000000002
	.quad	0x401cdf32bdc26dce              # double 7.2179669999999998
	.quad	0x4006cfc3f811f4f5              # double 2.851448
	.quad	0x401b290fb65668c2              # double 6.7900989999999997
	.quad	0x40119b734b51372a              # double 4.4018069999999998
	.quad	0x4010188765ba6efc              # double 4.0239539999999998
	.quad	0x40189386d2ed783e              # double 6.144069
	.quad	0x4021e3f727136a40              # double 8.9452449999999998
	.quad	0x3ff3e59e1f3a57eb              # double 1.2435590000000001
	.quad	0x400d31fa333764f1              # double 3.649403
	.quad	0x3ff839cd8127b2cc              # double 1.5141119999999999
	.quad	0x4011b972cd7cf5f5              # double 4.4311020000000001
	.quad	0x4023a1ab4b72c519              # double 9.8157599999999991
	.quad	0x4022a9b6d43d0397              # double 9.3314730000000008
	.quad	0x401f5b83cf2cf95d              # double 7.8393699999999997
	.quad	0x401c81372a38b8ae              # double 7.1261869999999998
	.quad	0x3fc7e920c069e7fb              # double 0.186802
	.quad	0x4022079aae6c8f75              # double 9.0148519999999994
	.quad	0x3fdb370cdc8754f3              # double 0.42523499999999997
	.quad	0x40066994185058de              # double 2.801552
	.quad	0x4005168d759ee88e              # double 2.636012
	.quad	0x401c84bb1af3a14d              # double 7.1296200000000001
	.quad	0x4002a542e557de0d              # double 2.3306939999999998
	.quad	0x40164d39da16616b              # double 5.5754159999999997
	.quad	0x3ff67968d759ee89              # double 1.404641
	.quad	0x400e3036c9c0a8d2              # double 3.773542
	.quad	0x401b54167a95c854              # double 6.8321170000000002
	.quad	0x400e40c8472c0e7c              # double 3.7816320000000001
	.quad	0x4011786b15f88fc9              # double 4.3675959999999998
	.quad	0x4011158537e2c55d              # double 4.2710160000000004
	.quad	0x3ff716e9bbf0dc77              # double 1.4430940000000001
	.quad	0x3ff8c0d801b43526              # double 1.5470809999999999
	.quad	0x400432f9873ffac2              # double 2.5248900000000001
	.quad	0x3fe2777d0f1f57b4              # double 0.57708599999999999
	.quad	0x4008d3f7ced91687              # double 3.1034999999999999
	.quad	0x4007981733226c3c              # double 2.9492630000000002
	.quad	0x401afe0ded288ce7              # double 6.7481
	.quad	0x401507c6759ab6d0              # double 5.257593
	.quad	0x4012c07faa044ae8              # double 4.6879869999999997
	.quad	0x3fe32a044ae85b9f              # double 0.59887900000000005
	.quad	0x3fea5204af922963              # double 0.82251200000000002
	.quad	0x4022d2595bbbe879              # double 9.410838
	.quad	0x4023bb5b70691ea8              # double 9.8659320000000008
	.quad	0x4007f5e84f09528f              # double 2.995072
	.quad	0x401053825e13b18e              # double 4.0815520000000003
	.quad	0x4023cc8f10a99b6f              # double 9.8995289999999993
	.quad	0x401e14da09cc319c              # double 7.5203629999999997
	.quad	0x401d6fb86f47b678              # double 7.359102
	.quad	0x400c41322f2734f8              # double 3.5318339999999999
	.quad	0x402054f5b1c86488              # double 8.1659369999999996
	.quad	0x4017f26d4801f751              # double 5.986745
	.quad	0x40230f5968512232              # double 9.5299790000000009
	.quad	0x401607b9e060fe48              # double 5.5075450000000004
	.quad	0x401d7ea704bc2763              # double 7.3736839999999999
	.quad	0x402339cb89d6adf7              # double 9.6128809999999997
	.quad	0x3ffeea7ded6ba8c6              # double 1.9322490000000001
	.quad	0x401c31f18c9fb613              # double 7.0487729999999997
	.quad	0x3ffbf5675579af19              # double 1.7474130000000001
	.quad	0x40111625e99e94ab              # double 4.2716289999999999
	.quad	0x4002a9070fbeb9e5              # double 2.3325330000000002
	.quad	0x4022a14ec204f2ae              # double 9.3150539999999999
	.quad	0x4020f4981beb1811              # double 8.4777229999999992
	.quad	0x400b0e2003ab862b              # double 3.3818969999999999
	.quad	0x401a5a9973d9ec70              # double 6.588476
	.quad	0x3fd73d577963992d              # double 0.36311900000000003
	.quad	0x40047b79d909f1f1              # double 2.5602909999999999
	.quad	0x401faf5c28f5c28f              # double 7.9212499999999996
	.quad	0x401551d4f9c1f85d              # double 5.3299139999999996
	.quad	0x3fc2f3343fa2ad3f              # double 0.14804700000000001
	.quad	0x40145d8c6d612c6b              # double 5.0913560000000002
	.quad	0x4015146e4c0df58c              # double 5.269952
	.quad	0x4021820b3d4ae42a              # double 8.7539920000000002
	.quad	0x40136d70e6f2e8c0              # double 4.8568759999999997
	.quad	0x40074046412cf0fa              # double 2.9063840000000001
	.quad	0x3fb085e3da2f8bdf              # double 0.064543000000000003
	.quad	0x400b18d1d8a54824              # double 3.3871190000000002
	.quad	0x4005d5610adcd2d4              # double 2.7291889999999999
	.quad	0x401bf92ff4ba51a0              # double 6.993347
	.quad	0x401b2005c4651f3f              # double 6.7812720000000004
	.quad	0x3fe7a27f1b691212              # double 0.73858599999999996
	.quad	0x40167d26fa3fcc9f              # double 5.6222190000000003
	.quad	0x40237d3996fa82e8              # double 9.7445799999999991
	.quad	0x4017bf9830e3cd9a              # double 5.9371039999999997
	.quad	0x4006f8b71b8aa002              # double 2.8714430000000002
	.quad	0x401fde8a71de69ad              # double 7.9673249999999997
	.quad	0x401f6edd052934ad              # double 7.8582650000000002
	.quad	0x4023fd6883771865              # double 9.9949379999999994
	.quad	0x402097623076c051              # double 8.2956710000000005
	.quad	0x400e219fc2a8869c              # double 3.7664179999999998
	.quad	0x4023471d1d4738a4              # double 9.6388940000000005
	.quad	0x401e567fd3f5b5fa              # double 7.5844719999999999
	.quad	0x3fd7b18116ebd4d0              # double 0.37020900000000001
	.quad	0x3ff27baecd07852f              # double 1.1551959999999999
	.quad	0x401904face67d780              # double 6.2548630000000003
	.quad	0x401f33a68b19a416              # double 7.80044
	.quad	0x4002f4b838c111ae              # double 2.3694920000000002
	.quad	0x40160bb3c81908e6              # double 5.5114280000000004
	.quad	0x4023fd8adab9f55a              # double 9.9952000000000005
	.quad	0x400591172ef0ae53              # double 2.6958449999999998
	.quad	0x40236d58c8eef1bb              # double 9.7135680000000004
	.quad	0x4023c1f42bb66730              # double 9.8788160000000005
	.quad	0x4023166106ab14ec              # double 9.5437089999999997
	.quad	0x402199df548ecd8e              # double 8.8005320000000005
	.quad	0x40110a6a44417870              # double 4.2601709999999997
	.quad	0x3fecaa2e3c536d65              # double 0.89577399999999996
	.quad	0x40204167a95c853c              # double 8.1277439999999998
	.quad	0x4011aae9ee45c359              # double 4.4169080000000003
	.quad	0x402394d551d68c69              # double 9.7906899999999996
	.quad	0x4014ee757928e0ca              # double 5.2328700000000001
	.quad	0x400f8e2c12ad81ae              # double 3.94442
	.quad	0x4016a4bec679cc75              # double 5.6608840000000002
	.quad	0x3ff239f01b866e44              # double 1.1391450000000001
	.quad	0x40199ed5ae1cde5d              # double 6.4051119999999999
	.quad	0x4020241094a2b9d4              # double 8.0704390000000003
	.quad	0x3fc893faf42784a9              # double 0.19201599999999999
	.quad	0x3fe1de5d18090b41              # double 0.55839399999999995
	.quad	0x40138b65ecc3e319              # double 4.8861309999999998
	.quad	0x40233db6a1e81cb4              # double 9.6205339999999992
	.quad	0x400bf99dcb5781c7              # double 3.496883
	.quad	0x40168442c7fbacb4              # double 5.6291609999999999
	.quad	0x401c0c17225b749b              # double 7.0118070000000001
	.quad	0x401ea93e5fb71fbc              # double 7.6652769999999997
	.quad	0x40085191dde37586              # double 3.0398290000000001
	.quad	0x40216961c36976bc              # double 8.7058239999999997
	.quad	0x400b805e5f30e7ff              # double 3.4376799999999998
	.quad	0x401744e7ab756430              # double 5.8172899999999998
	.quad	0x3fe04b9884c6a3be              # double 0.50922800000000001
	.quad	0x40177481b21c475e              # double 5.8637759999999997
	.quad	0x40028f32bdc26dce              # double 2.3199209999999999
	.quad	0x401bcbae46cfc82a              # double 6.9489070000000002
	.quad	0x401aa8a222d5171e              # double 6.6646809999999999
	.quad	0x3ffad0edc3bd5992              # double 1.6760079999999999
	.quad	0x401f8b50f40e5a36              # double 7.8860510000000001
	.quad	0x402105a76d97b310              # double 8.5110430000000008
	.quad	0x3fe9bcdfefbf401c              # double 0.80430599999999996
	.quad	0x400433faf42784a9              # double 2.5253809999999999
	.quad	0x401d19207d4e0978              # double 7.2745379999999997
	.quad	0x3fd7f444e0daa0cb              # double 0.37428400000000001
	.quad	0x401430de093532e8              # double 5.0477220000000003
	.quad	0x401c0edd8b60f1b2              # double 7.0145169999999997
	.quad	0x400850eb24a6a876              # double 3.0395110000000001
	.quad	0x3ff32bae03b3e9a7              # double 1.198164
	.quad	0x40097b3fa6defc7a              # double 3.1851799999999999
	.quad	0x3fdf1f080303c07f              # double 0.48626900000000001
	.quad	0x401ccc3dee781840              # double 7.1994550000000004
	.quad	0x3fe870f9d2bf5515              # double 0.763791
	.quad	0x3fdbc169c23b7953              # double 0.43368000000000001
	.quad	0x401321a005c4651f              # double 4.7828369999999998
	.quad	0x40067b402d16b980              # double 2.810181
	.quad	0x40205731b152f3c3              # double 8.1703010000000003
	.quad	0x401470b8cfbfc654              # double 5.11008
	.quad	0x4021e164a59c065b              # double 8.9402209999999993
	.quad	0x3fc5891e215336df              # double 0.16824700000000001
	.quad	0x3ffeb6b3bb83cf2d              # double 1.919605
	.quad	0x4008782ecaeea63b              # double 3.0586829999999998
	.quad	0x4019c8c08b75ea68              # double 6.4460470000000001
	.quad	0x4006478d0cc35ce2              # double 2.7849370000000002
	.quad	0x40203e6cf41f212d              # double 8.1219249999999992
	.quad	0x3ff43c6fbd273d5c              # double 1.2647550000000001
	.quad	0x401b2e9d0e991ff7              # double 6.7955209999999999
	.quad	0x401c32730c671690              # double 7.0492670000000004
	.quad	0x400f460e51d25aab              # double 3.9092069999999999
	.quad	0x401d949adc8fb86f              # double 7.3951219999999998
	.quad	0x3fc088051c9f72f7              # double 0.12915099999999999
	.quad	0x401bef7878b7a1c2              # double 6.9838579999999997
	.quad	0x40223e9595feda66              # double 9.1222349999999999
	.quad	0x40107fc58ab92c06              # double 4.1247769999999999
	.quad	0x4021411d9b1b79d9              # double 8.6271789999999999
	.quad	0x40113cdc443914f5              # double 4.3094340000000004
	.quad	0x3fd111e85fd04a30              # double 0.26671800000000001
	.quad	0x4016d7b24638c975              # double 5.7106409999999999
	.quad	0x4017a2f9873ffac2              # double 5.9091550000000002
	.quad	0x400ffa597d49d7ba              # double 3.9972409999999998
	.quad	0x3fdd78b7a1c25d07              # double 0.46049299999999999
	.quad	0x402267891e215337              # double 9.2022180000000002
	.quad	0x401b647304039abf              # double 6.8480949999999998
	.quad	0x401fca39c51dabe2              # double 7.9474859999999996
	.quad	0x3fb4445aa2e3c537              # double 0.079168000000000002
	.quad	0x3ff6cc660a201472              # double 1.4249019999999999
	.quad	0x3fed53b4b2fa93af              # double 0.91646799999999995
	.quad	0x402265cf67b1c001              # double 9.1988479999999999
	.quad	0x40236a86d71f3626              # double 9.7080599999999997
	.quad	0x400f329802c0a4a0              # double 3.8997039999999998
	.quad	0x40196d35653c9abb              # double 6.356649
	.quad	0x3ffd06dd69d30271              # double 1.814176
	.quad	0x3fc3b7521144cbe2              # double 0.154032
	.quad	0x4010e0b1bbcf4e87              # double 4.2194279999999997
	.quad	0x4023259fb1e18efc              # double 9.5734840000000005
	.quad	0x4023b3780346dc5d              # double 9.8505249999999993
	.quad	0x4014b7625204af92              # double 5.1790859999999999
	.quad	0x400458705425f202              # double 2.543183
	.quad	0x3fd7079e59f2ba9d              # double 0.35983999999999999
	.quad	0x401af65907d91255              # double 6.7405739999999996
	.quad	0x3fc0345cfede97d0              # double 0.12659799999999999
	.quad	0x40223f485e3da2f9              # double 9.1235990000000005
	.quad	0x4001b803cd141a69              # double 2.2148509999999999
	.quad	0x4015f4c4cdfaca36              # double 5.4890319999999999
	.quad	0x3fe5c84944ed6fdb              # double 0.68069900000000005
	.quad	0x40221c57e23f24d9              # double 9.055358
	.quad	0x40231ef5a964e8b8              # double 9.5604680000000001
	.quad	0x4009f1b93037d630              # double 3.2430289999999999
	.quad	0x3ff9bc371da37ef6              # double 1.6084510000000001
	.quad	0x401a193293d102bc              # double 6.5246069999999996
	.quad	0x4019bc532a497fa6              # double 6.4339110000000002
	.quad	0x400eabc408d8ec96              # double 3.8338700000000001
	.quad	0x40237b890d5a5b96              # double 9.7412799999999997
	.quad	0x4011abda9435ac8a              # double 4.4178259999999998
	.quad	0x4022ee97d06bbdbe              # double 9.4660019999999996
	.quad	0x401956559f6ec5b0              # double 6.3343109999999996
	.quad	0x3fe9321815a07b35              # double 0.78736499999999998
	.quad	0x4022f7ac3eb7cbb4              # double 9.4837360000000003
	.quad	0x40108593e5fb71fc              # double 4.1304470000000002
	.quad	0x401c2e757928e0ca              # double 7.0453700000000001
	.quad	0x401c805c4651f3e9              # double 7.1253520000000004
	.quad	0x400e8467be553ac5              # double 3.814651
	.quad	0x4009c81ba7fc32ec              # double 3.222709
	.quad	0x4021ebc89f40a287              # double 8.9605149999999991
	.quad	0x4020229691a75cd1              # double 8.0675550000000005
	.quad	0x4019089b52007dd4              # double 6.2584049999999998
	.quad	0x4010ed9ad85dfa87              # double 4.2320359999999999
	.quad	0x401053929ed3953e              # double 4.0816140000000001
	.quad	0x4008fc5718eb8950              # double 3.1232129999999998
	.quad	0x4022df3775b81301              # double 9.4359699999999993
	.quad	0x3fb33d6c72192210              # double 0.075156
	.quad	0x40204035158b8280              # double 8.1254050000000007
	.quad	0x401a7d29131ec0b5              # double 6.6222269999999996
	.quad	0x40214c460ed80a18              # double 8.6489720000000005
	.quad	0x40129b9e8c47a17f              # double 4.6519719999999998
	.quad	0x401a907075b3e143              # double 6.6410539999999996
	.quad	0x400afadafd113837              # double 3.3724880000000002
	.quad	0x40149eeed8904f6e              # double 5.155208
	.quad	0x4022062d1f1cfbb9              # double 9.0120629999999995
	.quad	0x4007b6bca5375c8e              # double 2.9642270000000002
	.quad	0x401682630ec31162              # double 5.6273309999999999
	.quad	0x3fd7e542e557de0d              # double 0.37336799999999998
	.quad	0x400d9bb0e5e67946              # double 3.7010209999999999
	.quad	0x401273bcd35a8588              # double 4.6130250000000004
	.quad	0x401741de69ad42c4              # double 5.8143250000000002
	.quad	0x400ac8d2a1f8e3ac              # double 3.348058
	.quad	0x40096fb97bb73083              # double 3.1795529999999999
	.quad	0x402317a95c853c15              # double 9.5462140000000008
	.quad	0x4021a26bf8769ec3              # double 8.8172300000000003
	.quad	0x400f845132f87ad1              # double 3.9396080000000002
	.quad	0x401ec90214ad362f              # double 7.6962970000000003
	.quad	0x3ffc2d44dca8e2e3              # double 1.7610520000000001
	.quad	0x40081f6a0dbad3a6              # double 3.015339
	.quad	0x400979a73b42cc2d              # double 3.1844009999999998
	.quad	0x4008bc6da4484945              # double 3.092006
	.quad	0x3fcb43bf727136a4              # double 0.213005
	.quad	0x4023c38f57f737da              # double 9.8819529999999993
	.quad	0x40047c2d2780778a              # double 2.5606330000000002
	.quad	0x401fa7852f7f498c              # double 7.9135939999999998
	.quad	0x3fd68eeae9ee45c3              # double 0.35247299999999998
	.quad	0x401f7e4d5d80e497              # double 7.873342
	.quad	0x400d65c5f7c6759b              # double 3.6746940000000001
	.quad	0x401dc106ab14ec20              # double 7.4385019999999997
	.quad	0x40199cbea4ebdd33              # double 6.4030709999999997
	.quad	0x400a3c94f69ca9ef              # double 3.2795809999999999
	.quad	0x40210e529bae46d0              # double 8.5279740000000004
	.quad	0x402234e592967019              # double 9.1033139999999992
	.quad	0x3ffef88765ba6efc              # double 1.935676
	.quad	0x400b6a18bd66277c              # double 3.4268049999999999
	.quad	0x40082ac3a860dcba              # double 3.0208810000000001
	.quad	0x4017978e1932d6ed              # double 5.8980030000000001
	.quad	0x4018e1ab4b72c519              # double 6.2203799999999996
	.quad	0x401701c64ba94bbe              # double 5.7517329999999998
	.quad	0x40210ffed20296b3              # double 8.5312409999999996
	.quad	0x40067825e13b18db              # double 2.8086660000000001
	.quad	0x40010ea4a8c154ca              # double 2.1321500000000002
	.quad	0x4023d98dac258d58              # double 9.9249089999999995
	.quad	0x4014438de6ddf00b              # double 5.0659710000000002
	.quad	0x400b18958d9b5e96              # double 3.3870040000000001
	.quad	0x401587bb2fec56d6              # double 5.3825500000000002
	.quad	0x4022aa5b9628cbd1              # double 9.3327299999999997
	.quad	0x4019f45fe1112770              # double 6.4886470000000003
	.quad	0x3fe8c28f5c28f5c3              # double 0.77375000000000005
	.quad	0x4014a6e5cd4ed2cc              # double 5.1629860000000001
	.quad	0x4011afc3b4f61672              # double 4.4216449999999998
	.quad	0x3fa9672324c83665              # double 0.049614999999999999
	.quad	0x40227d2aa5c5f7c6              # double 9.2444659999999992
	.quad	0x3fefb89f83be6602              # double 0.99128700000000003
	.quad	0x40172cd423d9231c              # double 5.7937779999999997
	.quad	0x40104630ec311623              # double 4.0685460000000004
	.quad	0x4007e30b9dc2f406              # double 2.985862
	.quad	0x4012b6d00b45ae60              # double 4.678528
	.quad	0x4016e4a3c64345d0              # double 5.7232810000000001
	.quad	0x400d755e6bc621b8              # double 3.6823090000000001
	.quad	0x400fa2c3c9eecbfb              # double 3.954475
	.quad	0x401752c01e68a0d3              # double 5.8308109999999997
	.quad	0x401b81cc100e6afd              # double 6.8767550000000002
	.quad	0x400268cc575c0768              # double 2.3011710000000001
	.quad	0x4010dcafb3b75211              # double 4.2155139999999998
	.quad	0x40048e2c12ad81ae              # double 2.56942
	.quad	0x3fba7ee9142b302f              # double 0.10349899999999999
	.quad	0x3fdb821f2990f302              # double 0.429817
	.quad	0x402352cd184c2720              # double 9.661721
	.quad	0x40234d81f10667f9              # double 9.6513819999999999
	.quad	0x4001362e09fe8683              # double 2.1514549999999999
	.quad	0x4020d6c3760bf5d8              # double 8.4194600000000008
	.quad	0x40055123c42a66dc              # double 2.6646190000000001
	.quad	0x401b25fd04a2fcf0              # double 6.7870980000000003
	.quad	0x400df3f6c2699c7c              # double 3.7441230000000001
	.quad	0x3fedf24fa8b4bf90              # double 0.93582900000000002
	.quad	0x40123a4c1ebc83a9              # double 4.5569309999999996
	.quad	0x401c86cf41f212d7              # double 7.1316499999999996
	.quad	0x400804eb56fb8f58              # double 3.002402
	.quad	0x4012f4d9c6b0531a              # double 4.7391120000000004
	.quad	0x401aed90e23af31b              # double 6.7319979999999999
	.quad	0x4016f62888b545c8              # double 5.7403890000000004
	.quad	0x4019a6390c9107fb              # double 6.4123270000000003
	.quad	0x4014ea2120e1f7d7              # double 5.2286419999999998
	.quad	0x402151f4d37c1377              # double 8.6600710000000003
	.quad	0x3ff5edfb506dd69d              # double 1.370601
	.quad	0x4011ddbb9cf9a06a              # double 4.4665359999999996
	.quad	0x4003a7e0ef99806f              # double 2.4569719999999999
	.quad	0x401c86833c60029f              # double 7.1313599999999999
	.quad	0x4000dc8323358f2e              # double 2.107672
	.quad	0x40144970b49e01de              # double 5.0717189999999999
	.quad	0x40207efcdee34fc6              # double 8.2480229999999999
	.quad	0x3ffd07496aad1d04              # double 1.814279
	.quad	0x4000680d801b4352              # double 2.0508069999999998
	.quad	0x4020297b95a29414              # double 8.0810209999999997
	.quad	0x400fd020c49ba5e3              # double 3.9766249999999999
	.quad	0x4014d07dd4413554              # double 5.2036049999999996
	.quad	0x402233b7739f340d              # double 9.1010089999999995
	.quad	0x3fff9ce075f6fd22              # double 1.9758
	.quad	0x4016fdea465a5764              # double 5.7479639999999996
	.quad	0x4015d4f82f512663              # double 5.4579779999999998
	.quad	0x401bf8a3b57c4e2f              # double 6.9928119999999998
	.quad	0x40219608aefb2aae              # double 8.7930349999999997
	.quad	0x3ff4ade33269df98              # double 1.2924530000000001
	.quad	0x3ff561c475e6362a              # double 1.3363689999999999
	.quad	0x4017abdd334c5da7              # double 5.9178360000000003
	.quad	0x401fac99f1ae2da5              # double 7.9185559999999997
	.quad	0x4019d21ab4b72c52              # double 6.4551800000000004
	.quad	0x4014e653c9abb01d              # double 5.2249290000000004
	.quad	0x4021927aa68f4b62              # double 8.786092
	.quad	0x402299b3d07c84b6              # double 9.3002000000000002
	.quad	0x4023b80a17b0f6ad              # double 9.8594519999999992
	.quad	0x400f5e4de3b8a19d              # double 3.9210470000000002
	.quad	0x401b31361dc93ea3              # double 6.7980580000000002
	.quad	0x401911804d983947              # double 6.2670909999999997
	.quad	0x400b895e9e1b089a              # double 3.442075
	.quad	0x40207961804d9839              # double 8.2370719999999995
	.quad	0x400d6a2db61bb060              # double 3.6768450000000001
	.quad	0x400ff0bae89eba6b              # double 3.9925440000000001
	.quad	0x40088958537e2c56              # double 3.0670630000000001
	.quad	0x4018233f85510d39              # double 6.0344220000000002
	.quad	0x400584a59c065b64              # double 2.6897690000000001
	.quad	0x4021135f5f0b2852              # double 8.5378369999999997
	.quad	0x40208047b24638c9              # double 8.2505469999999992
	.quad	0x4001e3632c1f42bb              # double 2.2360289999999998
	.quad	0x3fce5ebb7739f341              # double 0.237266
	.quad	0x4022deadd590c0ad              # double 9.4349199999999999
	.quad	0x4012ba98244e93e2              # double 4.6822210000000002
	.quad	0x3fd93eaf6837f7be              # double 0.394451
	.quad	0x401070f5e41d4b6a              # double 4.1103129999999997
	.quad	0x3ff05df2239e6aba              # double 1.0229360000000001
	.quad	0x400d9c21187e7c07              # double 3.7012350000000001
	.quad	0x401432178f68be2f              # double 5.0489179999999996
	.quad	0x40136c3dab5c39bd              # double 4.8557040000000002
	.quad	0x3ff61dbfceb78898              # double 1.382263
	.quad	0x4018ff0a5efe9318              # double 6.2490629999999996
	.quad	0x3ff398bc59b8023a              # double 1.2247889999999999
	.quad	0x400092b3cc4ac6ce              # double 2.0716320000000001
	.quad	0x401f087160956c0d              # double 7.7582449999999996
	.quad	0x400060767d34df05              # double 2.0471010000000001
	.quad	0x3ffb40c0f01fb82c              # double 1.703309
	.quad	0x401a695421c04428              # double 6.6028599999999997
	.quad	0x3ff59b65ecc3e319              # double 1.3504389999999999
	.quad	0x40179672324c8366              # double 5.8969199999999997
	.quad	0x40145e28ed5f138c              # double 5.0919530000000002
	.quad	0x4006bebd9018e758              # double 2.8431350000000002
	.quad	0x402254a643cc07ab              # double 9.1653310000000001
	.quad	0x4021ea513b5bf6a1              # double 8.9576510000000003
	.quad	0x400743465625a683              # double 2.9078490000000001
	.quad	0x3fea0fd9fd36f7e4              # double 0.81443500000000002
	.quad	0x402325249e44fa05              # double 9.5725449999999998
	.quad	0x401430c9d9d3458d              # double 5.0476450000000002
	.quad	0x4011088094e5d5b2              # double 4.2583029999999997
	.quad	0x4018e059a73b42cc              # double 6.2190919999999998
	.quad	0x4011e68cac4b4d05              # double 4.4751459999999996
	.quad	0x402321fbc5de9c02              # double 9.5663739999999997
	.quad	0x4006d0e7ff583a54              # double 2.8520050000000001
	.quad	0x401e99878316a055              # double 7.6499309999999995
	.quad	0x401515f06f694467              # double 5.2714249999999998
	.quad	0x3fda8ce2d1f1cfbc              # double 0.41484900000000002
	.quad	0x401e38f7985271bd              # double 7.5556320000000001
	.quad	0x4023051f81a5870e              # double 9.5100060000000006
	.quad	0x400cfb98c7e28241              # double 3.6228500000000001
	.quad	0x402014c4ef88b978              # double 8.0405650000000009
	.quad	0x40028e87d2c7b891              # double 2.3195950000000001
	.quad	0x4015c5f56a7ac81d              # double 5.4433189999999998
	.quad	0x3fe1fd7a13c254a4              # double 0.56219200000000003
	.quad	0x40224acc4ef88b97              # double 9.1460899999999992
	.quad	0x4020819c9d5a187a              # double 8.2531479999999995
	.quad	0x3ffc0289118c197e              # double 1.7506189999999999
	.quad	0x4014290eed02cd3a              # double 5.0400960000000001
	.quad	0x3fea4ee392e1ef74              # double 0.82213000000000002
	.quad	0x3fc34e65bea0ba1f              # double 0.15082999999999999
	.quad	0x3ffc9b7e0ac7da1f              # double 1.7879620000000001
	.quad	0x400cde4606748e47              # double 3.6085319999999999
	.quad	0x402301e060fe4799              # double 9.5036649999999998
	.quad	0x4002b6dc1a47a9e3              # double 2.3392870000000001
	.quad	0x401e9d206c8711d8              # double 7.6534440000000003
	.quad	0x4016b0adcd2d44dd              # double 5.6725380000000003
	.quad	0x401955e2478854ce              # double 6.3338710000000003
	.quad	0x401b56544fe36d22              # double 6.8343059999999998
	.quad	0x401948aa433508f6              # double 6.3209619999999997
	.quad	0x4011c2a94ff0025c              # double 4.440099
	.quad	0x4017df4cf4a558ea              # double 5.9680669999999996
	.quad	0x4013e4927913e814              # double 4.9732149999999997
	.quad	0x3ffc40346dc5d639              # double 1.7656750000000001
	.quad	0x4023b6d117b5286b              # double 9.8570639999999993
	.quad	0x40178cb6c7a7c9de              # double 5.887416
	.quad	0x4021b3fa4c61d862              # double 8.8515189999999997
	.quad	0x40004876e1deacc9              # double 2.0353829999999999
	.quad	0x4019cf0995aaf790              # double 6.4521850000000001
	.quad	0x400afb1290257c91              # double 3.3725939999999999
	.quad	0x401fa6933a0407cc              # double 7.9126709999999996
	.quad	0x4011f4efcbd55608              # double 4.4891959999999997
	.quad	0x40099aa25d8d79d1              # double 3.2005050000000002
	.quad	0x401a3e8533b10774              # double 6.5610549999999996
	.quad	0x4021bb7f38c5436c              # double 8.8662050000000007
	.quad	0x40134d8b1dd5d3dd              # double 4.8257260000000004
	.quad	0x40239ce874c8ffb9              # double 9.8064610000000005
	.quad	0x3ff9e08bfc2224ee              # double 1.617321
	.quad	0x401d952e72da1230              # double 7.3956850000000003
	.quad	0x40111245f5ad96a7              # double 4.2678450000000003
	.quad	0x4021791a543f1c76              # double 8.7365290000000009
	.quad	0x40134029ae4f3344              # double 4.812659
	.quad	0x4022caa8eb463498              # double 9.3958200000000005
	.quad	0x3fe7e2a80064a9ce              # double 0.74641800000000003
	.quad	0x40238b7d41743e96              # double 9.7724399999999996
	.quad	0x400ce72c0e7bc3c6              # double 3.6128770000000001
	.quad	0x4022d54bad7d7c2d              # double 9.4165930000000006
	.quad	0x40051892ee84ad79              # double 2.6369989999999999
	.quad	0x4023f9270b06c43f              # double 9.9866259999999993
	.quad	0x4005f8c3b0c4588a              # double 2.746467
	.quad	0x401bab24a6a875d5              # double 6.9171319999999996
	.quad	0x400c2bf0995aaf79              # double 3.521455
	.quad	0x4001d6f9fcb0c027              # double 2.2299690000000001
	.quad	0x401074052d666a98              # double 4.1133009999999999
	.quad	0x402205ee568a5050              # double 9.0115839999999992
	.quad	0x4013bd230b9dc2f4              # double 4.934704
	.quad	0x401fcdd7a99fa11b              # double 7.9510180000000003
	.quad	0x4011a37b8d3f1844              # double 4.4096510000000002
	.quad	0x3ff4a8522ea0fd3b              # double 1.291094
	.quad	0x40231e9d0e991ff7              # double 9.5597919999999998
	.quad	0x40232eff5c6c11a1              # double 9.5917919999999998
	.quad	0x401a77d34df04ddb              # double 6.6170169999999997
	.quad	0x400a711f0c34c1a9              # double 3.3052350000000001
	.quad	0x4002f80b242070b9              # double 2.3711150000000001
	.quad	0x3ff5e02645e4e69f              # double 1.367224
	.quad	0x4020c71f79420b3d              # double 8.3889119999999995
	.quad	0x4000cbf2b239a390              # double 2.0995840000000001
	.quad	0x4006243c3a42f1ed              # double 2.767693
	.quad	0x4019d9f383f0bae9              # double 6.4628430000000003
	.quad	0x400bbac1d29dc726              # double 3.4661900000000001
	.quad	0x3ffb122962cfd8f1              # double 1.691934
	.quad	0x3fec150fc71d6063              # double 0.87757099999999999
	.quad	0x40020fbfc6540cc8              # double 2.2576900000000002
	.quad	0x401ab0d413122b7c              # double 6.6726840000000003
	.quad	0x3fed89203a322af5              # double 0.92298899999999995
	.quad	0x4012412dba4d6e48              # double 4.5636510000000001
	.quad	0x3fc30b417ca2120e              # double 0.148781
	.quad	0x400c8148344c37e7              # double 3.563126
	.quad	0x3ffd3fd1dcd7060c              # double 1.8280810000000001
	.quad	0x3fcbe0589acbc8c1              # double 0.21778400000000001
	.quad	0x401da5625a682b63              # double 7.4115080000000004
	.quad	0x4021a00bed740c41              # double 8.8125909999999994
	.quad	0x40214dc768dfbd6a              # double 8.6519119999999994
	.quad	0x3ffe499f1ae2da55              # double 1.8929739999999999
	.quad	0x3fede892253111f1              # double 0.93464000000000003
	.quad	0x4022c3fca85caafc              # double 9.3827870000000004
	.quad	0x3ff1fd04a2fcefaa              # double 1.1242719999999999
	.quad	0x4019811e85fd04a3              # double 6.376093
	.quad	0x401bf25460aa64c3              # double 6.98665
	.quad	0x400bfb38d60a6330              # double 3.4976669999999999
	.quad	0x3fe8dc33721d53ce              # double 0.77688000000000001
	.quad	0x400a4de6ddf00abf              # double 3.2880379999999998
	.quad	0x3ffb7063e07a28bb              # double 1.714939
	.quad	0x401bbac79702e664              # double 6.9324019999999997
	.quad	0x401d2d801b435265              # double 7.2944339999999999
	.quad	0x4023c6dca07f66e8              # double 9.8884019999999992
	.quad	0x402145323fee2c99              # double 8.6351490000000002
	.quad	0x40001e963dc486ad              # double 2.0149349999999999
	.quad	0x4020575d78811b1e              # double 8.1706350000000008
	.quad	0x401504013ec460ee              # double 5.2539110000000004
	.quad	0x3ff0ea400fba8827              # double 1.0571900000000001
	.quad	0x40122ea7ce0fc2ec              # double 4.5455620000000003
	.quad	0x40133a1016ce789e              # double 4.8067019999999996
	.quad	0x401c5d96a6a0125a              # double 7.0913950000000003
	.quad	0x4001caed99cbee80              # double 2.2240859999999998
	.quad	0x401d161b2a27f1b7              # double 7.2715880000000004
	.quad	0x40102822bbecaab9              # double 4.0391950000000003
	.quad	0x4013aa176ddaceee              # double 4.9161049999999999
	.quad	0x4012d72ef0ae5365              # double 4.71014
	.quad	0x401f93cd573647bb              # double 7.8943380000000002
	.quad	0x40113072085b1855              # double 4.2973100000000004
	.quad	0x401ccfb1e18efbb1              # double 7.2028270000000001
	.quad	0x401e7e6a337a80d0              # double 7.6234520000000003
	.quad	0x401c939ffd60e94f              # double 7.1441650000000001
	.quad	0x400c33fb7a5f41af              # double 3.525382
	.quad	0x401e9ad31fcd24e1              # double 7.6511959999999996
	.quad	0x402321ea57214f05              # double 9.5662409999999997
	.quad	0x3ffcb138bcdfefbf              # double 1.7932669999999999
	.quad	0x40173b4bf8fcd680              # double 5.8079070000000002
	.quad	0x4013e1682f944242              # double 4.9701240000000002
	.quad	0x3ff93be22e5de15d              # double 1.5771200000000001
	.quad	0x400df252ce032db2              # double 3.743322
	.quad	0x4011883621fafc8b              # double 4.383019
	.quad	0x4008b5d35653c9ac              # double 3.0887820000000001
	.quad	0x401d5247cb70ac3b              # double 7.3303520000000004
	.quad	0x3ffaa1b6d43d0397              # double 1.6644810000000001
	.quad	0x401f8a979e16d6dc              # double 7.8853439999999999
	.quad	0x402383bf727136a4              # double 9.7573199999999999
	.quad	0x4017e030c23fab11              # double 5.9689360000000002
	.quad	0x40002d01c0ca600b              # double 2.021976
	.quad	0x401149e01de26916              # double 4.3221439999999998
	.quad	0x3fd797f62b6ae7d5              # double 0.36864999999999998
	.quad	0x401c39478c868ba0              # double 7.0559370000000001
	.quad	0x4023ced15ad106ee              # double 9.9039409999999997
	.quad	0x4018feb56fb8f57f              # double 6.2487389999999996
	.quad	0x400f6a4b9884c6a4              # double 3.9269020000000001
	.quad	0x4000745953586ca9              # double 2.0568110000000002
	.quad	0x400fa6adb402d16c              # double 3.9563860000000002
	.quad	0x401d1ef73c0c1fc9              # double 7.28024
	.quad	0x400ddac3eb7cbb3d              # double 3.7318190000000002
	.quad	0x3ff4f2a6b0d95140              # double 1.3092410000000001
	.quad	0x401400357a355044              # double 5.0002040000000001
	.quad	0x401c16e9ff0cbaf9              # double 7.0223769999999996
	.quad	0x4020c8b2c83ec893              # double 8.3919890000000006
	.quad	0x401f7d72bcb5fe54              # double 7.8725079999999998
	.quad	0x400da9efd86a8fc1              # double 3.7079770000000001
	.quad	0x402278d0edc3bd5a              # double 9.2359690000000008
	.quad	0x40123ccb7d41743f              # double 4.5593700000000004
	.quad	0x401f6edaec4a4096              # double 7.858257
	.quad	0x401fa02fb5d03105              # double 7.9064319999999996
	.quad	0x401dd4827b6fe2e7              # double 7.4575290000000001
	.quad	0x400fb2a737110e45              # double 3.9622329999999999
	.quad	0x4014055f3519bd40              # double 5.0052459999999996
	.quad	0x401214bba12b5e53              # double 4.5202470000000003
	.quad	0x40199c061847f562              # double 6.4023669999999999
	.quad	0x4021227d028a1dfc              # double 8.5673600000000007
	.quad	0x402352d9274e22a3              # double 9.6618130000000004
	.quad	0x401f5252ce032db2              # double 7.8303940000000001
	.quad	0x401a943526527a20              # double 6.6447339999999997
	.quad	0x40232c6a3bddfca0              # double 9.586748
	.quad	0x400cd804d9839475              # double 3.6054780000000002
	.quad	0x4021474c2b51bd62              # double 8.6392530000000001
	.quad	0x40104a5093964a5a              # double 4.0725730000000002
	.quad	0x3fe182b628459967              # double 0.54720599999999997
	.quad	0x401bcc2c5e2cdc01              # double 6.9493879999999999
	.quad	0x400b98d79d0a6762              # double 3.44963
	.quad	0x4018ac093d966384              # double 6.1680039999999998
	.quad	0x40066ab1d4f9c1f8              # double 2.8020969999999998
	.quad	0x400e2f62f9ca5bd9              # double 3.7731379999999999
	.quad	0x40085000c9539b89              # double 3.0390640000000002
	.quad	0x3fc74d056c508b33              # double 0.18203800000000001
	.quad	0x3fe61ac14c660a20              # double 0.69076599999999999
	.quad	0x401bf4f00ef1348b              # double 6.9891969999999999
	.quad	0x40208f53a3ec02f3              # double 8.279935
	.quad	0x4021bd5714b9cb68              # double 8.8698049999999995
	.quad	0x4015df9e7b80a9df              # double 5.4683780000000004
	.quad	0x401bf9d8c6d612c7              # double 6.9939910000000003
	.quad	0x4015afcd24e160d9              # double 5.4216810000000004
	.quad	0x3fd4262456f75d9a              # double 0.314828
	.quad	0x4003ddbca9691a76              # double 2.4832700000000001
	.quad	0x40104f9d6f112fd3              # double 4.0777489999999998
	.quad	0x4009eeec7c957cd4              # double 3.2416619999999998
	.quad	0x400be567125dd096              # double 3.4870130000000001
	.quad	0x401d1f41aef6f8f0              # double 7.2805239999999998
	.quad	0x3fb05ff1d81f1066              # double 0.063963999999999993
	.quad	0x3fb4db48909289db              # double 0.081471000000000002
	.quad	0x3ff654f69ca9ef52              # double 1.395743
	.quad	0x3fecd18d25edd053              # double 0.90058000000000005
	.quad	0x400ffa9b8cb8e087              # double 3.9973670000000001
	.quad	0x3ff93018611fd588              # double 1.5742419999999999
	.quad	0x4013935eb7457c0b              # double 4.8939159999999999
	.quad	0x4020a6caab8a5ce6              # double 8.3257650000000005
	.quad	0x401c78e4755ffe6d              # double 7.1180589999999997
	.quad	0x401aa9c51dabe271              # double 6.6657909999999996
	.quad	0x400f3a0ad8a11666              # double 3.9033410000000002
	.quad	0x401b32bae03b3e9a              # double 6.7995409999999996
	.quad	0x4023071cb89d6adf              # double 9.5138909999999992
	.quad	0x3fe2c5b291b823c8              # double 0.58663299999999996
	.quad	0x4023aab4d8ba40d9              # double 9.8334109999999999
	.quad	0x3fe98305d95dd4c7              # double 0.79724399999999995
	.quad	0x3fcd84fd2a62aa19              # double 0.23062099999999999
	.quad	0x400606e7e62dc6e3              # double 2.7533720000000002
	.quad	0x401628a7a41e57da              # double 5.5397020000000001
	.quad	0x3fc387bdcf0307f2              # double 0.15257999999999999
	.quad	0x3fd8c21187e7c06e              # double 0.38684499999999999
	.quad	0x401963361565c2d2              # double 6.3468859999999996
	.quad	0x401e4e7ab7564303              # double 7.5766400000000002
	.quad	0x4022be69270b06c4              # double 9.3718959999999995
	.quad	0x401e5337a80cf9e4              # double 7.5812670000000004
	.quad	0x401b0c914b167ec8              # double 6.7622730000000004
	.quad	0x4016d2acfb762d84              # double 5.7057380000000002
	.quad	0x3fe99a7c17a89332              # double 0.80010800000000004
	.quad	0x401b5794a6eb91b4              # double 6.835528
	.quad	0x4010369c23b7952d              # double 4.0533299999999999
	.quad	0x401f10cf9e3864cb              # double 7.7664169999999996
	.quad	0x402225aa92e62132              # double 9.0735670000000006
	.quad	0x4012aaa60913a4f8              # double 4.6666489999999996
	.quad	0x401474eb56fb8f58              # double 5.114179
	.quad	0x401d9b5ed8d36b4c              # double 7.4017289999999996
	.quad	0x4011e7c3d68405b4              # double 4.4763330000000003
	.quad	0x40228258f7121ab5              # double 9.2545850000000005
	.quad	0x3fe1fe846a5d6bec              # double 0.56231900000000001
	.quad	0x40045f077ccc0379              # double 2.5464009999999999
	.quad	0x40106c881e4712e4              # double 4.105988
	.quad	0x40175ccab3edd8b6              # double 5.8406169999999999
	.quad	0x400e1df97aaac109              # double 3.7646359999999999
	.quad	0x3f912599ed7c6fbd              # double 0.016744999999999999
	.quad	0x401729285a921cce              # double 5.7901930000000004
	.quad	0x401296145953586d              # double 4.6465620000000003
	.quad	0x40179feb4a66559f              # double 5.9061709999999996
	.quad	0x400f7de58e64b231              # double 3.9364729999999999
	.quad	0x4022c80f12c27a63              # double 9.3907399999999991
	.quad	0x401c9d5d80e496ee              # double 7.1536770000000001
	.quad	0x40219c2dcf4623d1              # double 8.8050370000000004
	.quad	0x400eb4dc65c70436              # double 3.838311
	.quad	0x4022730c23fab10c              # double 9.2247020000000006
	.quad	0x4020f97fa5d28d00              # double 8.4873019999999997
	.quad	0x3fd7490a350d2807              # double 0.36383300000000002
	.quad	0x40000c764adff823              # double 2.0060850000000001
	.quad	0x401bb0cf1800a7c6              # double 6.9226650000000003
	.quad	0x401c324638c97529              # double 7.0490959999999996
	.quad	0x402035e050374ff8              # double 8.1052269999999993
	.quad	0x40014de093532e7b              # double 2.1630259999999999
	.quad	0x40088470a808c826              # double 3.0646680000000002
	.quad	0x400710b7c3504c49              # double 2.8831630000000001
	.quad	0x402150c5a8155d5f              # double 8.6577579999999994
	.quad	0x4012f8dc11e42e12              # double 4.7430269999999997
	.quad	0x401345d2d01c0ca6              # double 4.818187
	.quad	0x40080c2374794ea0              # double 3.0059269999999998
	.quad	0x40204afaf8594291              # double 8.1464459999999992
	.quad	0x40125a854477ff15              # double 4.5883989999999999
	.quad	0x401111ef30a4e37a              # double 4.2675140000000003
	.quad	0x4005f739f340d4dc              # double 2.7457159999999998
	.quad	0x400c9a0620ab7132              # double 3.5752069999999998
	.quad	0x40124084e831ad21              # double 4.5630069999999998
	.quad	0x3fe4ad4b2745bf27              # double 0.64615400000000001
	.quad	0x4020e4edb2f661f2              # double 8.4471260000000008
	.quad	0x3fdebe8bc169c23b              # double 0.48037999999999997
	.quad	0x4018c52f7f498c3b              # double 6.192564
	.quad	0x4021aabb44e50c5f              # double 8.8334600000000005
	.quad	0x40136e0a41a261bf              # double 4.8574609999999998
	.quad	0x3ffb4a4c1ebc83a9              # double 1.7056389999999999
	.quad	0x3fc1d6f976790321              # double 0.139373
	.quad	0x4020546e08f21709              # double 8.1649019999999997
	.quad	0x400325a3e39f7729              # double 2.3933789999999999
	.quad	0x4003fd09e12a51e3              # double 2.4985539999999999
	.quad	0x401c45fb2edfe75c              # double 7.0683410000000002
	.quad	0x3fde1426fe718a87              # double 0.46998000000000001
	.quad	0x4017080e8c8abd5e              # double 5.7578680000000002
	.quad	0x4009cc575c0767d3              # double 3.2247759999999999
	.quad	0x4022075cd0bb6ed6              # double 9.0143799999999992
	.quad	0x40074c6a3bddfca0              # double 2.912312
	.quad	0x4009a7685985ad54              # double 3.2067420000000002
	.quad	0x3ff178c0053e2d62              # double 1.09198
	.quad	0x401104020817fc76              # double 4.253914
	.quad	0x3fd5b1e5c0b99913              # double 0.33898299999999998
	.quad	0x4017ff61aa3f034b              # double 5.999396
	.quad	0x4014ccf0739b024f              # double 5.2001359999999996
	.quad	0x401a4cbee807bbb6              # double 6.5749469999999999
	.quad	0x3ff95084e831ad21              # double 1.582158
	.quad	0x401dc392e1ef73c1              # double 7.4409900000000002
	.quad	0x4006e8b652370479              # double 2.863629
	.quad	0x3ff4f5f6fd21ff2e              # double 1.3100499999999999
	.quad	0x40205378cc9a77e6              # double 8.1630310000000001
	.quad	0x4020ee2003ab862b              # double 8.4650879999999997
	.quad	0x4010b613d31b9b67              # double 4.17781
	.quad	0x3ff0f446f9b994e2              # double 1.0596380000000001
	.quad	0x4012af9873ffac1d              # double 4.6714799999999999
	.quad	0x401a0e054690de09              # double 6.5136919999999998
	.quad	0x400bc36544fe36d2              # double 3.4704079999999999
	.quad	0x401d94e54f7a9197              # double 7.3954060000000004
	.quad	0x40109a7ded6ba8c6              # double 4.1508710000000004
	.quad	0x40007a109d0635a4              # double 2.0596019999999999
	.quad	0x400aaf56eac86057              # double 3.3356150000000002
	.quad	0x3fe35d0d8cb07d0b              # double 0.60510900000000001
	.quad	0x4019a36e71cda2b6              # double 6.4096010000000003
	.quad	0x4010733226c3b928              # double 4.1124960000000002
	.quad	0x401fae779207d4e1              # double 7.9203780000000003
	.quad	0x401b2c4ef88b9778              # double 6.7932699999999997
	.quad	0x402052413db7f173              # double 8.1606539999999992
	.quad	0x400d29cdc443914f              # double 3.6454119999999999
	.quad	0x4017c490a350d280              # double 5.9419579999999996
	.quad	0x4022578df7a4e7ab              # double 9.1710049999999992
	.quad	0x3ffabcc5b8dc5500              # double 1.671087
	.quad	0x3ff2ab0318b9346a              # double 1.1667510000000001
	.quad	0x4003d74256bca537              # double 2.4801069999999998
	.quad	0x40203f3775b81301              # double 8.1234699999999993
	.quad	0x401d7b2c40d0aaa8              # double 7.3702860000000001
	.quad	0x401fc3925bb7b6bb              # double 7.9409879999999999
	.quad	0x4020fc5c13fd0d06              # double 8.4928899999999992
	.quad	0x40092d6dc1a47a9e              # double 3.1471819999999999
	.quad	0x402331971c10d7bf              # double 9.5968560000000007
	.quad	0x3fc7040bfe3b03e2              # double 0.179811
	.quad	0x4020f8af81626b2f              # double 8.4857139999999998
	.quad	0x4003ee5929670197              # double 2.4913810000000001
	.quad	0x40022de00d1b7176              # double 2.2724000000000002
	.quad	0x401ac861e92923e6              # double 6.6956860000000002
	.quad	0x4016ab3d07c84b5e              # double 5.6672250000000002
	.quad	0x4020216feb4a6656              # double 8.0653070000000007
	.quad	0x3fc982ecaeea63b7              # double 0.19930800000000001
	.quad	0x3fff221a719b4dcf              # double 1.9458260000000001
	.quad	0x401f3d2e514c22ee              # double 7.8097469999999998
	.quad	0x401afc42e9899bf6              # double 6.7463490000000004
	.quad	0x3fed676ea4228998              # double 0.91887600000000003
	.quad	0x401fbdb37c99ae92              # double 7.9352549999999997
	.quad	0x40158a044ae85b9f              # double 5.3847820000000004
	.quad	0x40237b0292817764              # double 9.7402540000000001
	.quad	0x400889ea14057082              # double 3.0673409999999999
	.quad	0x4005feb2074ea8da              # double 2.7493629999999998
	.quad	0x3fee5efc7a398202              # double 0.94909500000000002
	.quad	0x3ff0d950331e3a7e              # double 1.0530550000000001
	.quad	0x401f2d8ec95bff04              # double 7.7944899999999997
	.quad	0x400055ab7dc7abfc              # double 2.0418310000000002
	.quad	0x400c7b8ed1bf7ad5              # double 3.5603310000000001
	.quad	0x3ffd12428d434a02              # double 1.8169580000000001
	.quad	0x3fedfd566cf41f21              # double 0.93717499999999998
	.quad	0x3fea4020817fc760              # double 0.82032799999999994
	.quad	0x40080c0ad03d9a95              # double 3.0058799999999999
	.quad	0x4016bd8f0c77dd87              # double 5.6851159999999998
	.quad	0x40121ea4ebdd334c              # double 4.5299259999999997
	.quad	0x401ddba55d1c3ac9              # double 7.4644979999999999
	.quad	0x4018459817b95a29              # double 6.0679629999999998
	.quad	0x4021c48909289dae              # double 8.883858
	.quad	0x401a4b90214ad363              # double 6.5737920000000001
	.quad	0x4014674213a0c6b5              # double 5.1008380000000004
	.quad	0x401c8069e7fb267c              # double 7.1254039999999996
	.quad	0x4017ce5082cf52b9              # double 5.951479
	.quad	0x401fe68a936c58ef              # double 7.9751380000000002
	.quad	0x40093315d701d9f5              # double 3.1499440000000001
	.quad	0x402200d844d013a9              # double 9.0016499999999997
	.quad	0x401df2db61bb05fb              # double 7.487165
	.quad	0x4017ad26fa3fcc9f              # double 5.9190940000000003
	.quad	0x401e4e920c069e80              # double 7.5767290000000003
	.quad	0x402184538ef34d6a              # double 8.7584499999999998
	.quad	0x401ef51a437824d5              # double 7.7393580000000001
	.quad	0x4007437718655193              # double 2.9079419999999998
	.quad	0x401c1466b1e5c0ba              # double 7.0199230000000004
	.quad	0x401a37503b81b64e              # double 6.554017
	.quad	0x400a83d0bfa09460              # double 3.3143630000000002
	.quad	0x40045f39d1b2e59b              # double 2.546497
	.quad	0x4022d7c58ab92c06              # double 9.4214289999999998
	.quad	0x401452467be553ac              # double 5.0803469999999997
	.quad	0x4014f87724fa8b4c              # double 5.242642
	.quad	0x402185989df1172f              # double 8.7609300000000001
	.quad	0x4011e30a0b1bbcf5              # double 4.4717180000000001
	.quad	0x4020522f8bdec5f4              # double 8.1605190000000007
	.quad	0x401ae295a6c5d207              # double 6.7212740000000002
	.quad	0x3fd4ba01eeed8905              # double 0.323853
	.quad	0x401296f3f52fc265              # double 4.6474149999999996
	.quad	0x40234af512663411              # double 9.6464009999999991
	.quad	0x401a0a059a73b42d              # double 6.5097870000000002
	.quad	0x401905d5b24e9c45              # double 6.2556979999999998
	.quad	0x401c5c4b90214ad3              # double 7.0901319999999997
	.quad	0x4010ba3ec02f2f98              # double 4.1818799999999996
	.quad	0x4022827829068987              # double 9.254823
	.quad	0x4006b8a548238540              # double 2.8401589999999999
	.quad	0x40183b9bed30f063              # double 6.0582120000000002
	.quad	0x4017376640a6b93d              # double 5.8041010000000002
	.quad	0x40238b6544fe36d2              # double 9.7722569999999997
	.quad	0x3ff77961804d9839              # double 1.4671339999999999
	.quad	0x401ae18c197e5647              # double 6.7202609999999998
	.quad	0x3ff231bef49cf56f              # double 1.1371450000000001
	.quad	0x4021cedacabc5155              # double 8.9040130000000008
	.quad	0x3fe0b0079a2834d2              # double 0.52148799999999995
	.quad	0x401b0d88c1db0143              # double 6.763217
	.quad	0x4011f6a098915bdd              # double 4.4908469999999996
	.quad	0x3fee8398a65492ff              # double 0.95356399999999997
	.quad	0x3ff824755ffe6d59              # double 1.508901
	.quad	0x4021f2426bb55ac0              # double 8.9731629999999995
	.quad	0x3ff3ef8bdec5f395              # double 1.2459830000000001
	.quad	0x40190221426fe719              # double 6.2520800000000003
	.quad	0x4023da4228997c3d              # double 9.9262859999999992
	.quad	0x40174fa93af74cd3              # double 5.8277939999999999
	.quad	0x401b9aab042528ae              # double 6.9010429999999996
	.quad	0x401a45b39e279dd4              # double 6.5680680000000002
	.quad	0x40223684cf0739b0              # double 9.1064819999999997
	.quad	0x3fd6e28240b78034              # double 0.35757499999999998
	.quad	0x4020267d566cf41f              # double 8.0751749999999998
	.quad	0x3fc80f776c4827b7              # double 0.187972
	.quad	0x4023b189bd8383ae              # double 9.8467540000000007
	.quad	0x4022883b1d0c8041              # double 9.266076
	.quad	0x40205c606748e475              # double 8.1804229999999993
	.quad	0x40039ca1059ea572              # double 2.451479
	.quad	0x4014deee957470eb              # double 5.2177069999999999
	.quad	0x4017b56eefa1e3eb              # double 5.927181
	.quad	0x40156b6177ea1c69              # double 5.3548640000000001
	.quad	0x3ff51d69d30270f4              # double 1.3196810000000001
	.quad	0x400d3e9d0e991ff7              # double 3.655573
	.quad	0x401a9ab713272431              # double 6.6510889999999998
	.quad	0x401edfc8f32378ab              # double 7.7185399999999999
	.quad	0x3fda9357603925bb              # double 0.41524299999999997
	.quad	0x4017ff62b6ae7d56              # double 5.9993999999999996
	.quad	0x401119a415f45e0b              # double 4.2750399999999997
	.quad	0x40105fe9fadafd11              # double 4.0936659999999998
	.quad	0x40121696e58a32f4              # double 4.5220599999999997
	.quad	0x4022368ee6b8305e              # double 9.1065590000000007
	.quad	0x3fffe8c47a17f413              # double 1.9943280000000001
	.quad	0x401fceb4202d9cf1              # double 7.9518589999999997
	.quad	0x401b70d9513f8db5              # double 6.8602040000000004
	.quad	0x3fe5e41b328b6d87              # double 0.68409500000000001
	.quad	0x402263a6698bb4d5              # double 9.1946290000000008
	.quad	0x401449cf9a06a6e3              # double 5.0720809999999998
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
