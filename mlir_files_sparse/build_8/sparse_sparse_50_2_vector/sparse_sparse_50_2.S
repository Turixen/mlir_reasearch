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
	.quad	0x41492bb2b46fac60              # double 3299173.4096579999
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
	.quad	66                              # 0x42
	.quad	94                              # 0x5e
	.quad	163                             # 0xa3
	.quad	198                             # 0xc6
	.quad	268                             # 0x10c
	.quad	306                             # 0x132
	.quad	375                             # 0x177
	.quad	412                             # 0x19c
	.quad	477                             # 0x1dd
	.quad	505                             # 0x1f9
	.quad	567                             # 0x237
	.quad	600                             # 0x258
	.quad	672                             # 0x2a0
	.quad	704                             # 0x2c0
	.quad	772                             # 0x304
	.quad	806                             # 0x326
	.quad	875                             # 0x36b
	.quad	914                             # 0x392
	.quad	983                             # 0x3d7
	.quad	1019                            # 0x3fb
	.quad	1086                            # 0x43e
	.quad	1124                            # 0x464
	.quad	1191                            # 0x4a7
	.quad	1222                            # 0x4c6
	.quad	1286                            # 0x506
	.quad	1323                            # 0x52b
	.quad	1391                            # 0x56f
	.quad	1417                            # 0x589
	.quad	1476                            # 0x5c4
	.quad	1507                            # 0x5e3
	.quad	1569                            # 0x621
	.quad	1601                            # 0x641
	.quad	1669                            # 0x685
	.quad	1709                            # 0x6ad
	.quad	1772                            # 0x6ec
	.quad	1807                            # 0x70f
	.quad	1870                            # 0x74e
	.quad	1901                            # 0x76d
	.quad	1964                            # 0x7ac
	.quad	1991                            # 0x7c7
	.quad	2061                            # 0x80d
	.quad	2094                            # 0x82e
	.quad	2159                            # 0x86f
	.quad	2197                            # 0x895
	.quad	2267                            # 0x8db
	.quad	2304                            # 0x900
	.quad	2374                            # 0x946
	.quad	2401                            # 0x961
	.quad	2464                            # 0x9a0
	.quad	2496                            # 0x9c0
	.quad	2565                            # 0xa05
	.quad	2599                            # 0xa27
	.quad	2669                            # 0xa6d
	.quad	2706                            # 0xa92
	.quad	2773                            # 0xad5
	.quad	2809                            # 0xaf9
	.quad	2874                            # 0xb3a
	.quad	2916                            # 0xb64
	.quad	2976                            # 0xba0
	.quad	3002                            # 0xbba
	.quad	3066                            # 0xbfa
	.quad	3096                            # 0xc18
	.quad	3162                            # 0xc5a
	.quad	3187                            # 0xc73
	.quad	3254                            # 0xcb6
	.quad	3286                            # 0xcd6
	.quad	3355                            # 0xd1b
	.quad	3382                            # 0xd36
	.quad	3448                            # 0xd78
	.quad	3482                            # 0xd9a
	.quad	3555                            # 0xde3
	.quad	3595                            # 0xe0b
	.quad	3665                            # 0xe51
	.quad	3695                            # 0xe6f
	.quad	3768                            # 0xeb8
	.quad	3798                            # 0xed6
	.quad	3865                            # 0xf19
	.quad	3894                            # 0xf36
	.quad	3963                            # 0xf7b
	.quad	3996                            # 0xf9c
	.quad	4062                            # 0xfde
	.quad	4091                            # 0xffb
	.quad	4155                            # 0x103b
	.quad	4197                            # 0x1065
	.quad	4264                            # 0x10a8
	.quad	4294                            # 0x10c6
	.quad	4361                            # 0x1109
	.quad	4397                            # 0x112d
	.quad	4465                            # 0x1171
	.quad	4502                            # 0x1196
	.quad	4571                            # 0x11db
	.quad	4609                            # 0x1201
	.quad	4674                            # 0x1242
	.quad	4706                            # 0x1262
	.quad	4775                            # 0x12a7
	.quad	4808                            # 0x12c8
	.quad	4874                            # 0x130a
	.quad	4901                            # 0x1325
	.quad	4973                            # 0x136d
	.quad	5000                            # 0x1388
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_5000xindex,@object # @__constant_5000xindex
	.p2align	6, 0x0
.L__constant_5000xindex:
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
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	79                              # 0x4f
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
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
	.quad	61                              # 0x3d
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
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
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
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
	.quad	57                              # 0x39
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
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	57                              # 0x39
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
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
	.quad	51                              # 0x33
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
	.quad	69                              # 0x45
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
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
	.quad	25                              # 0x19
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
	.quad	71                              # 0x47
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
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
	.quad	25                              # 0x19
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
	.quad	43                              # 0x2b
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	75                              # 0x4b
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
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
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	45                              # 0x2d
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
	.quad	75                              # 0x4b
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
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	49                              # 0x31
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
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
	.quad	19                              # 0x13
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
	.quad	37                              # 0x25
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	21                              # 0x15
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
	.quad	65                              # 0x41
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
	.quad	81                              # 0x51
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
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	39                              # 0x27
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
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
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
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
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	31                              # 0x1f
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	65                              # 0x41
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
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
	.quad	53                              # 0x35
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
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
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
	.quad	81                              # 0x51
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
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	53                              # 0x35
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
	.quad	69                              # 0x45
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	15                              # 0xf
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
	.quad	31                              # 0x1f
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
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
	.quad	52                              # 0x34
	.quad	53                              # 0x35
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
	.quad	71                              # 0x47
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	85                              # 0x55
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
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	25                              # 0x19
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	33                              # 0x21
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	97                              # 0x61
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
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
	.quad	17                              # 0x11
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
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
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
	.quad	51                              # 0x33
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	17                              # 0x11
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	61                              # 0x3d
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
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
	.quad	23                              # 0x17
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
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
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
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
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
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
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
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
	.quad	59                              # 0x3b
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.size	.L__constant_5000xindex, 40000

	.type	.L__constant_5000xf64,@object   # @__constant_5000xf64
	.p2align	6, 0x0
.L__constant_5000xf64:
	.quad	0x401201ef73c0c1fd              # double 4.5018900000000004
	.quad	0x401be8ba83f4eca7              # double 6.9772740000000004
	.quad	0x401b10a782906898              # double 6.7662639999999996
	.quad	0x400cd113836a832c              # double 3.6020880000000002
	.quad	0x3fc610cf5b1c8649              # double 0.17238800000000001
	.quad	0x40221ae31d712a0f              # double 9.0525140000000004
	.quad	0x4009f3a68b19a416              # double 3.24397
	.quad	0x4000dabb8800eae2              # double 2.1068030000000002
	.quad	0x401617396d0917d7              # double 5.5226800000000003
	.quad	0x4020f08b9778572a              # double 8.4698150000000005
	.quad	0x402392120e1f7d74              # double 9.7852940000000003
	.quad	0x4014a5a0be510907              # double 5.1617459999999999
	.quad	0x4020655ed06fef7c              # double 8.1979889999999997
	.quad	0x400ce4c5974e65bf              # double 3.6117050000000002
	.quad	0x40229385c67dfe33              # double 9.2881300000000007
	.quad	0x401f4ec6bce8533b              # double 7.8269299999999999
	.quad	0x3fcc5692b3cc4ac7              # double 0.22139200000000001
	.quad	0x401d577dd872f33d              # double 7.3354410000000003
	.quad	0x3fe23940fecdd0d9              # double 0.56948900000000002
	.quad	0x3ff22351deefe500              # double 1.133623
	.quad	0x40025dc8b86b15f9              # double 2.2957930000000002
	.quad	0x400a8bc169c23b79              # double 3.3182399999999999
	.quad	0x401ab603d577963a              # double 6.6777490000000004
	.quad	0x40082d58c8eef1bb              # double 3.0221420000000001
	.quad	0x3ffe494a2b9d3cbc              # double 1.8928929999999999
	.quad	0x4013cd7f51efb6dd              # double 4.9506810000000003
	.quad	0x40150fd71b046845              # double 5.2654690000000004
	.quad	0x3fd2bc4d22c881e4              # double 0.29274299999999998
	.quad	0x4019aaad1d041cc5              # double 6.4166759999999998
	.quad	0x4023cd2999567dbb              # double 9.9007079999999998
	.quad	0x3fe1190d173fb7a6              # double 0.53430800000000001
	.quad	0x400f62eb1c432ca5              # double 3.9232999999999998
	.quad	0x3ff2e2424a276b7f              # double 1.180239
	.quad	0x4015702eec7c957d              # double 5.3595540000000002
	.quad	0x3feef903211cb03a              # double 0.96789700000000001
	.quad	0x4020eea9a3d2d880              # double 8.4661380000000008
	.quad	0x4016f5e80bed740c              # double 5.7401429999999998
	.quad	0x3f8183b60285ec3e              # double 0.0085520000000000006
	.quad	0x3fd0201cd5f99c39              # double 0.25196000000000002
	.quad	0x4020300cb6c7a7ca              # double 8.0938470000000002
	.quad	0x400b63f24d8fd5cb              # double 3.4238019999999998
	.quad	0x401d79335d249e45              # double 7.36836
	.quad	0x402046d6fda836eb              # double 8.1383589999999995
	.quad	0x40218c22ab25b318              # double 8.7737020000000001
	.quad	0x4023bf9357603926              # double 9.8741710000000005
	.quad	0x400b7b691212513b              # double 3.4352589999999998
	.quad	0x4014ff266ba493c9              # double 5.2491700000000003
	.quad	0x401171c15097c808              # double 4.3610889999999998
	.quad	0x400f11c3265add9c              # double 3.8836729999999999
	.quad	0x4013599392189bd8              # double 4.8374769999999998
	.quad	0x3ff65c2a02320968              # double 1.3975010000000001
	.quad	0x401ab4c7b02d59d5              # double 6.6765429999999997
	.quad	0x401a324399b2c40d              # double 6.549086
	.quad	0x400aab6177ea1c69              # double 3.333682
	.quad	0x4018df0fe047d3d4              # double 6.2178339999999999
	.quad	0x4014e821af7d30ad              # double 5.2266909999999998
	.quad	0x40083e3f359ff4fd              # double 3.0303939999999998
	.quad	0x401b752b90a78290              # double 6.8644239999999996
	.quad	0x401512acfb762d84              # double 5.2682380000000002
	.quad	0x4001917c5ef62f9d              # double 2.1960380000000002
	.quad	0x3fb87cfa26a22b39              # double 0.095657000000000006
	.quad	0x4022298611fd5886              # double 9.0811010000000003
	.quad	0x401175ca6ca03c4b              # double 4.36503
	.quad	0x4021cfb7414a4d2b              # double 8.9056949999999997
	.quad	0x401131919ac79703              # double 4.2984070000000001
	.quad	0x401333c579f23465              # double 4.8005579999999997
	.quad	0x4023b98cc144028e              # double 9.8624019999999994
	.quad	0x40064efdc9c4da90              # double 2.78857
	.quad	0x401ab12839042d8c              # double 6.6730049999999999
	.quad	0x401ecdea897635e7              # double 7.7010899999999997
	.quad	0x3ff7c141e9af5ba3              # double 1.4846820000000001
	.quad	0x40235ad6238da3c2              # double 9.6774149999999999
	.quad	0x400c8f0bf1a5ca2a              # double 3.5698470000000002
	.quad	0x401341932d6ece14              # double 4.814038
	.quad	0x4011f9fdbd2fa0d7              # double 4.4941319999999996
	.quad	0x400afd3996fa82e8              # double 3.3736449999999998
	.quad	0x400c22ae4b018612              # double 3.516934
	.quad	0x401e0e3c968943e1              # double 7.5139029999999999
	.quad	0x40210eb0b7c3504c              # double 8.5286919999999994
	.quad	0x4021ccd87724fa8b              # double 8.9000889999999995
	.quad	0x3febd5f78359bc34              # double 0.869869
	.quad	0x401aee1ef73c0c20              # double 6.7325400000000002
	.quad	0x4019e010c6f7a0b6              # double 6.4688140000000001
	.quad	0x4019c8af81626b2f              # double 6.4459819999999999
	.quad	0x4011aea6c1a048e0              # double 4.4205579999999998
	.quad	0x401d4ee7c49fd7a1              # double 7.3270559999999998
	.quad	0x3fdd64a59c065b64              # double 0.45926800000000001
	.quad	0x40006ee525892685              # double 2.0541480000000001
	.quad	0x4022dd4738a3b57c              # double 9.4321839999999994
	.quad	0x4022667cf1c3265b              # double 9.2001720000000002
	.quad	0x3ff15d96e9bbf0dc              # double 1.0853489999999999
	.quad	0x3fcc3aeab7995ee1              # double 0.22054799999999999
	.quad	0x401cbda48b652370              # double 7.1851979999999998
	.quad	0x4013dcae642bf983              # double 4.965509
	.quad	0x4005d700474d9c6b              # double 2.729981
	.quad	0x401ccabb8800eae2              # double 7.1979810000000004
	.quad	0x401d0954a7f8012e              # double 7.259112
	.quad	0x4011814a90470a81              # double 4.3762610000000004
	.quad	0x4019bd6451b93038              # double 6.4349530000000001
	.quad	0x4011fc4651f3e89b              # double 4.4963620000000004
	.quad	0x3fa90539fba450ad              # double 0.048868000000000002
	.quad	0x4023acf206423960              # double 9.8377839999999992
	.quad	0x400c8fdd22856606              # double 3.570246
	.quad	0x4016002c4d65e460              # double 5.5001689999999996
	.quad	0x401734b51372a38c              # double 5.8014720000000004
	.quad	0x4018b96249a133c2              # double 6.1810390000000002
	.quad	0x4020a7969e3c9689              # double 8.3273209999999995
	.quad	0x40121647baa9b49a              # double 4.5217580000000002
	.quad	0x4015c233df2a9d62              # double 5.4396509999999996
	.quad	0x4017f9fc2a8869c6              # double 5.9941259999999996
	.quad	0x3ff4856f75d9a0f1              # double 1.2825770000000001
	.quad	0x4015e45b6c3760bf              # double 5.4730049999999997
	.quad	0x3fe01f14983d7907              # double 0.50379399999999996
	.quad	0x4015c1c8216c6152              # double 5.4392399999999999
	.quad	0x401ac5579af1886e              # double 6.692717
	.quad	0x400360ff540895d1              # double 2.4223620000000001
	.quad	0x3ff24f1d3ed527e5              # double 1.144315
	.quad	0x4020550268900c52              # double 8.1660339999999998
	.quad	0x40205bfaf42784a9              # double 8.1796489999999995
	.quad	0x3f97bfa4c61d8623              # double 0.023192000000000001
	.quad	0x4005f347a5b0ff11              # double 2.743789
	.quad	0x4023fbda2f8bdec6              # double 9.9918990000000001
	.quad	0x400e69d1f601797d              # double 3.8016700000000001
	.quad	0x400a35faa8a82a56              # double 3.276357
	.quad	0x3f76f0068db8bac7              # double 0.0055999999999999999
	.quad	0x3ffd1c6195464dc2              # double 1.819429
	.quad	0x401dc8af3e468cac              # double 7.4459809999999997
	.quad	0x400538de6ddf00ac              # double 2.652768
	.quad	0x401aff633ce63a5c              # double 6.7494019999999999
	.quad	0x40225d816aceaaf3              # double 9.1826279999999993
	.quad	0x401b335610adcd2d              # double 6.8001329999999998
	.quad	0x401c0480a5accd53              # double 7.004397
	.quad	0x4016a3dea465a576              # double 5.6600289999999998
	.quad	0x4023f60956c0d6f5              # double 9.9805399999999995
	.quad	0x400ae45b291b823d              # double 3.3615020000000002
	.quad	0x401192ecaeea63b7              # double 4.3934810000000004
	.quad	0x400f300ffda4052d              # double 3.8984679999999998
	.quad	0x3fe3b85e80bed741              # double 0.61625600000000003
	.quad	0x401bf4167a95c854              # double 6.9883670000000002
	.quad	0x401f018611fd5886              # double 7.7514880000000002
	.quad	0x4021eb1183b60286              # double 8.9591180000000001
	.quad	0x401016f86a098916              # double 4.0224320000000002
	.quad	0x40055758e219652c              # double 2.6676500000000001
	.quad	0x3fc6ee84ad794a6f              # double 0.17915400000000001
	.quad	0x400ff85c67dfe32a              # double 3.99627
	.quad	0x3ffe97481b21c476              # double 1.911934
	.quad	0x400a04d3bf2f5558              # double 3.2523569999999999
	.quad	0x400ea282c6ef3d3a              # double 3.8293509999999999
	.quad	0x4023ad12018a43bb              # double 9.8380279999999995
	.quad	0x4018e059210385c6              # double 6.2190899999999996
	.quad	0x40229908e581cf78              # double 9.2988959999999991
	.quad	0x4014bdb65ecc3e32              # double 5.1852660000000004
	.quad	0x4021f21b7e0ac7da              # double 8.9728659999999998
	.quad	0x402129ccfaeff5c7              # double 8.5816420000000004
	.quad	0x40117b9389b52008              # double 4.3706800000000001
	.quad	0x3ff216052502eec8              # double 1.130376
	.quad	0x40228b841248d7e0              # double 9.2724919999999997
	.quad	0x4020a42d05f28848              # double 8.3206559999999996
	.quad	0x40149784662bae04              # double 5.1479660000000003
	.quad	0x4001071044f1a198              # double 2.1284489999999998
	.quad	0x40224e7210be9425              # double 9.1532140000000002
	.quad	0x401c7603d577963a              # double 7.1152490000000004
	.quad	0x4013fc7ef177a701              # double 4.9965780000000004
	.quad	0x400f2af5771001d6              # double 3.8959760000000001
	.quad	0x40144d495182a993              # double 5.075475
	.quad	0x4018e578e5c4eb57              # double 6.224094
	.quad	0x402179d2391d5800              # double 8.7379320000000007
	.quad	0x4017a1c193b3a68b              # double 5.9079649999999999
	.quad	0x40140bf5515054ac              # double 5.0116779999999999
	.quad	0x40231c3ed959a30a              # double 9.5551670000000009
	.quad	0x4023281f969e3c97              # double 9.5783660000000008
	.quad	0x3ff46bc83a96d4c3              # double 1.2763139999999999
	.quad	0x400215a4acf312b2              # double 2.2605680000000001
	.quad	0x40239679ee02a77a              # double 9.7938989999999997
	.quad	0x401d7d9dba908a26              # double 7.3726719999999997
	.quad	0x4020219bb2788db0              # double 8.0656409999999994
	.quad	0x4021a549d7ba6699              # double 8.8228290000000005
	.quad	0x40185c0c1fc8f323              # double 6.0898899999999996
	.quad	0x402062da33bd9cae              # double 8.1930709999999998
	.quad	0x401c74ffc9795b36              # double 7.1142570000000003
	.quad	0x4005bf8a0902de01              # double 2.7185250000000001
	.quad	0x40122dcf893faf42              # double 4.5447369999999996
	.quad	0x40005955f78359bc              # double 2.0436209999999999
	.quad	0x4016d04790b84988              # double 5.703398
	.quad	0x400c56e82949a565              # double 3.5424349999999998
	.quad	0x3fa17bd8be7296f6              # double 0.034147999999999998
	.quad	0x401bf9192641b329              # double 6.9932600000000003
	.quad	0x40105068986fcdee              # double 4.0785239999999998
	.quad	0x4014515a8deb0fae              # double 5.079447
	.quad	0x400d96084a515cea              # double 3.698258
	.quad	0x401aaf37329c347f              # double 6.6711090000000004
	.quad	0x4015b1dda059a73b              # double 5.4236969999999998
	.quad	0x40205b7281fd9ba2              # double 8.1786080000000005
	.quad	0x4014918f81e8a2ec              # double 5.1421489999999999
	.quad	0x401cc1b36bd2b6f2              # double 7.1891610000000004
	.quad	0x40223ba2163fdd66              # double 9.1164710000000007
	.quad	0x3ffc780dc33721d5              # double 1.7793099999999999
	.quad	0x401b95e0f7fcfc40              # double 6.8963660000000004
	.quad	0x4003db634dad31fd              # double 2.4821230000000001
	.quad	0x3fe5011b1d92b7fe              # double 0.656385
	.quad	0x3fea770153bd1676              # double 0.82702699999999996
	.quad	0x4021e4fede97d06c              # double 8.9472570000000004
	.quad	0x3ffbd813879c4114              # double 1.740253
	.quad	0x400beeb13dfb0d52              # double 3.491549
	.quad	0x402291bbcf4e874d              # double 9.2846360000000008
	.quad	0x401dae596c82e01a              # double 7.4202630000000003
	.quad	0x401a014a0a0f4d7b              # double 6.5012590000000001
	.quad	0x3fe6e1deacc92147              # double 0.71507200000000004
	.quad	0x4021a6605ee568a5              # double 8.824954
	.quad	0x3ffa595dd4c76d11              # double 1.6468179999999999
	.quad	0x3ffa5471715c63ae              # double 1.645616
	.quad	0x401ea9628cbd1245              # double 7.6654150000000003
	.quad	0x4011f07f66e86c66              # double 4.4848610000000004
	.quad	0x4023ac7b02d59d56              # double 9.8368760000000002
	.quad	0x400dfc7a398201cd              # double 3.7482799999999998
	.quad	0x3ff09ea897635e74              # double 1.038735
	.quad	0x3fc1d49d7ba6698c              # double 0.13930100000000001
	.quad	0x3ff1b06f69446738              # double 1.105575
	.quad	0x4003ddc725c3dee8              # double 2.4832900000000002
	.quad	0x3ff83f7596851223              # double 1.515493
	.quad	0x3fd97b7c7820a30e              # double 0.39816200000000002
	.quad	0x40189109070fbeba              # double 6.1416360000000001
	.quad	0x401fda07f66e86c6              # double 7.9629209999999997
	.quad	0x4005714c22ee4192              # double 2.6803210000000002
	.quad	0x4016e198aeb80ed0              # double 5.7203090000000003
	.quad	0x4015c4a72ead9275              # double 5.4420440000000001
	.quad	0x4010d84901d19158              # double 4.2112160000000003
	.quad	0x4011a2541d8e8640              # double 4.4085239999999999
	.quad	0x40037511dffc547a              # double 2.4321630000000001
	.quad	0x400ede76427c7c52              # double 3.8586239999999998
	.quad	0x40196107746887a9              # double 6.3447550000000001
	.quad	0x401114d22c881e47              # double 4.2703329999999999
	.quad	0x3feb49f51697f1fa              # double 0.85277800000000004
	.quad	0x40178ea24cc68230              # double 5.8892910000000001
	.quad	0x40239ac01e68a0d3              # double 9.8022469999999994
	.quad	0x3fecfe06961c3697              # double 0.90600899999999995
	.quad	0x40140f8487b99d45              # double 5.0151539999999999
	.quad	0x3fee779e9d0e9920              # double 0.952102
	.quad	0x400ef192ea52ef91              # double 3.8679559999999999
	.quad	0x3fbf04ddb5525cc4              # double 0.121168
	.quad	0x400d9c8fb86f47b6              # double 3.7014459999999998
	.quad	0x40026a7ce0fc2eba              # double 2.3019959999999999
	.quad	0x401f0109070fbeba              # double 7.7510110000000001
	.quad	0x3ff573061c79b34a              # double 1.3405819999999999
	.quad	0x3ffa84449dbec248              # double 1.657292
	.quad	0x402043020c49ba5e              # double 8.1308749999999996
	.quad	0x400ea201cd5f99c4              # double 3.8291050000000002
	.quad	0x401b76f6d7625205              # double 6.8661760000000003
	.quad	0x401ae6c69b5a63fa              # double 6.7253670000000003
	.quad	0x40157143393ab431              # double 5.360608
	.quad	0x3fd1c9fb6134ce3e              # double 0.27795300000000001
	.quad	0x4018db9f127f5e85              # double 6.2144740000000001
	.quad	0x40232d113836a833              # double 9.5880220000000004
	.quad	0x4000568e820e6299              # double 2.0422639999999999
	.quad	0x40197137b07075b4              # double 6.3605640000000001
	.quad	0x400539b56323bbc7              # double 2.653178
	.quad	0x401a0f5a5332acfb              # double 6.5149929999999996
	.quad	0x4023e6d00b45ae60              # double 9.950806
	.quad	0x401648982cb20fb2              # double 5.5708929999999999
	.quad	0x4021c91ada76d97b              # double 8.8927829999999997
	.quad	0x400c07eae5bc87db              # double 3.5038659999999999
	.quad	0x40004cf41f212d77              # double 2.0375749999999999
	.quad	0x40006ed783dff3f1              # double 2.054122
	.quad	0x4006e1b9f98b71b9              # double 2.8602180000000001
	.quad	0x402353d5992428d4              # double 9.6637389999999996
	.quad	0x400c75b6805a2d73              # double 3.557477
	.quad	0x4022025e99e94ab2              # double 9.0046280000000003
	.quad	0x4020c45dc8323359              # double 8.3835280000000001
	.quad	0x401b5ac929aa1d75              # double 6.8386579999999997
	.quad	0x400dd35eb7457c0b              # double 3.728208
	.quad	0x4021e5610adcd2d4              # double 8.9480059999999994
	.quad	0x4003c112ba16e7a3              # double 2.469274
	.quad	0x4004fe56cd6c2efd              # double 2.6241889999999999
	.quad	0x3ffdfa237cdcca71              # double 1.873569
	.quad	0x400b45caafbc1ace              # double 3.4090780000000001
	.quad	0x4001400fba8826ab              # double 2.1562800000000002
	.quad	0x401584007570c565              # double 5.378908
	.quad	0x4007c0aa64c2f838              # double 2.9690750000000001
	.quad	0x400abe8e60807358              # double 3.343045
	.quad	0x401e4fd1dcd7060c              # double 7.5779490000000003
	.quad	0x4022b973b85e80bf              # double 9.3622110000000002
	.quad	0x3ffed971c10d7bea              # double 1.9280870000000001
	.quad	0x401f77edc7ef177a              # double 7.8671179999999996
	.quad	0x4022c9357603925c              # double 9.3929860000000005
	.quad	0x3fe4e23076c050be              # double 0.65261100000000005
	.quad	0x3ff5f761cbccf28c              # double 1.3728959999999999
	.quad	0x4020ef00abf76a2f              # double 8.4668019999999995
	.quad	0x3fe383dff3f0fe04              # double 0.60984799999999995
	.quad	0x3fe177bbf93ff25e              # double 0.54586599999999996
	.quad	0x40139b80a9de8b3b              # double 4.9018579999999998
	.quad	0x401faf861a60d456              # double 7.9214099999999998
	.quad	0x400e1f540895d0b7              # double 3.7652969999999999
	.quad	0x4018b95f676ea423              # double 6.1810280000000004
	.quad	0x40032ea077036c9c              # double 2.397767
	.quad	0x4016fbe7afa72218              # double 5.7460009999999997
	.quad	0x400f81adea897636              # double 3.93832
	.quad	0x4010990364388ebd              # double 4.1494270000000002
	.quad	0x40152aa21a719b4e              # double 5.2916340000000002
	.quad	0x4019d30b178b3700              # double 6.4560969999999998
	.quad	0x3fdc18ce2d1f1cfc              # double 0.43901400000000002
	.quad	0x400b143632c1f42c              # double 3.3848690000000001
	.quad	0x401e8331a08bfc22              # double 7.6281189999999999
	.quad	0x40011845564b6630              # double 2.1368510000000001
	.quad	0x3fed0de4c51116a9              # double 0.90794600000000003
	.quad	0x40214ca46e08f217              # double 8.6496919999999999
	.quad	0x3fee1704ff43419e              # double 0.94030999999999998
	.quad	0x3ff9377f27fe4bcb              # double 1.576049
	.quad	0x4008d0c4dec1c1d7              # double 3.1019380000000001
	.quad	0x40000fb8f57f737e              # double 2.0076770000000002
	.quad	0x401e182cb20fb225              # double 7.5236080000000002
	.quad	0x400608e68e3ef284              # double 2.754346
	.quad	0x3fc98655193708ab              # double 0.19941200000000001
	.quad	0x4023e7f27fe4bcae              # double 9.9530220000000007
	.quad	0x3fda37b8d3f1843c              # double 0.40965099999999999
	.quad	0x4005b6273929ed39              # double 2.7139419999999999
	.quad	0x40205f9bbadc0981              # double 8.1867350000000005
	.quad	0x3fe9839042d8c2a4              # double 0.79730999999999996
	.quad	0x3ff6d82fd75e2047              # double 1.42778
	.quad	0x4023833c3e74afd5              # double 9.7563189999999995
	.quad	0x4018c72b4528283d              # double 6.1945009999999998
	.quad	0x401106cf41f212d7              # double 4.2566499999999996
	.quad	0x40088c3b927d45a6              # double 3.068473
	.quad	0x4010b0bf1a5ca298              # double 4.1726039999999998
	.quad	0x400f443137b07076              # double 3.9082970000000001
	.quad	0x401e47221858bc5a              # double 7.5694660000000002
	.quad	0x4021b87bfe7e1fc1              # double 8.8603210000000008
	.quad	0x4017a6698bb4d489              # double 5.9125120000000004
	.quad	0x3fd81e96c3fc43b3              # double 0.37686700000000001
	.quad	0x4020e4e8533b1077              # double 8.4470849999999995
	.quad	0x3feef4b838c111ae              # double 0.96737300000000004
	.quad	0x3ff3323033a4723b              # double 1.1997530000000001
	.quad	0x3ffc65cd4ed2cbea              # double 1.7748539999999999
	.quad	0x4017edb5d894812c              # double 5.9821390000000001
	.quad	0x40057ba450acc0be              # double 2.6853720000000001
	.quad	0x401fd5b63d3e4ef0              # double 7.9587029999999999
	.quad	0x4021b66c4c5974e6              # double 8.8562949999999994
	.quad	0x40153052934acaff              # double 5.2971899999999996
	.quad	0x40199868fd199bb2              # double 6.3988379999999996
	.quad	0x4015987b139c94f7              # double 5.3989070000000003
	.quad	0x3fe0f2becedd4845              # double 0.52963199999999999
	.quad	0x400e349b62c77575              # double 3.775687
	.quad	0x3ff8a9802c0a4a06              # double 1.541382
	.quad	0x402150433d6c7219              # double 8.6567629999999998
	.quad	0x3fe492253111f0c3              # double 0.64283999999999997
	.quad	0x401ae029ae4f3344              # double 6.718909
	.quad	0x3ff41d590c0ad03e              # double 1.2571650000000001
	.quad	0x401f301d19157abc              # double 7.7969860000000004
	.quad	0x4003063736cdf267              # double 2.3780350000000001
	.quad	0x400bc45c358afc48              # double 3.470879
	.quad	0x400bfff9b56323bc              # double 3.4999880000000001
	.quad	0x401eed2849cb252d              # double 7.7315990000000001
	.quad	0x400ba61d8622c450              # double 3.4561109999999999
	.quad	0x40230fba8826aa8f              # double 9.5307200000000005
	.quad	0x400c255000c9539c              # double 3.5182190000000002
	.quad	0x40208d67125dd096              # double 8.2761770000000006
	.quad	0x3fff98676a7264a1              # double 1.9747079999999999
	.quad	0x40218abfdb4cc250              # double 8.7709949999999992
	.quad	0x40117675ddd2ae8e              # double 4.3656839999999999
	.quad	0x400548a04d12018a              # double 2.6604619999999999
	.quad	0x401d08e8a71de69b              # double 7.2587000000000002
	.quad	0x4022d8de6ddf00ac              # double 9.423572
	.quad	0x3fc5117b5286b591              # double 0.16459599999999999
	.quad	0x3ff18431bde82d7b              # double 1.0947739999999999
	.quad	0x402275a8155d5f57              # double 9.2297980000000006
	.quad	0x40189f69014b599b              # double 6.1556740000000003
	.quad	0x401542ca148ba83f              # double 5.3152239999999997
	.quad	0x401b96922d948dc1              # double 6.8970419999999999
	.quad	0x3ff9c7442c7fbacb              # double 1.6111489999999999
	.quad	0x4007cf5ba2be058a              # double 2.9762490000000001
	.quad	0x3f9bab649d388a8b              # double 0.027021
	.quad	0x401a6b5bb384fd2a              # double 6.6048419999999997
	.quad	0x401ad93037d63023              # double 6.7120980000000001
	.quad	0x40216817b95a2941              # double 8.7033059999999995
	.quad	0x401eda3b9ae0c176              # double 7.7131179999999997
	.quad	0x4004f18c9fb6134d              # double 2.617944
	.quad	0x400aa5e99e94ab1d              # double 3.3310119999999999
	.quad	0x4004368dfbd6a594              # double 2.5266380000000002
	.quad	0x4017799dcb5781c7              # double 5.8687659999999999
	.quad	0x401ea0c49ba5e354              # double 7.657
	.quad	0x4018e369fcf3dc05              # double 6.2220839999999997
	.quad	0x400e1b44e50c5eb3              # double 3.763315
	.quad	0x40158a92e62131a9              # double 5.3853260000000001
	.quad	0x4010ee58a32f4491              # double 4.2327599999999999
	.quad	0x3fcffd1dcd7060bb              # double 0.249912
	.quad	0x4020c28c36da87a0              # double 8.3799759999999992
	.quad	0x401d8505d0fa58f7              # double 7.3799049999999999
	.quad	0x3fe565cb35f3d7d4              # double 0.66867600000000005
	.quad	0x40234b9d3cbc48f1              # double 9.6476839999999999
	.quad	0x400e99b0ab2e1694              # double 3.8250440000000001
	.quad	0x40219d1dcd7060bb              # double 8.8068679999999997
	.quad	0x3ff4d2849cb252ce              # double 1.301396
	.quad	0x3ffc946e4c0df58c              # double 1.786238
	.quad	0x401613886594af4f              # double 5.519075
	.quad	0x4022f058bc59b802              # double 9.4694269999999996
	.quad	0x400f8619da9c9928              # double 3.9404789999999998
	.quad	0x4022274dbdf8f473              # double 9.076765
	.quad	0x401126df3f961805              # double 4.2879610000000001
	.quad	0x402027a2ad3e920c              # double 8.0774129999999999
	.quad	0x401f401eabbcb1cd              # double 7.8126170000000003
	.quad	0x400f6ce032db1e9f              # double 3.9281619999999999
	.quad	0x3ffa369878316a05              # double 1.6383289999999999
	.quad	0x3f947c73eee52589              # double 0.020005999999999999
	.quad	0x40169f6a0dbad3a6              # double 5.655678
	.quad	0x3fe7d3804534bd77              # double 0.74456800000000001
	.quad	0x400601f3a57eaa2a              # double 2.750953
	.quad	0x4017cb8fde2ef4e0              # double 5.9487909999999999
	.quad	0x3fde855970b49e02              # double 0.47688900000000001
	.quad	0x401c4b90214ad363              # double 7.0737920000000001
	.quad	0x3ff6a6cb10342aaa              # double 1.415721
	.quad	0x4006cab9b23dd54e              # double 2.8489870000000002
	.quad	0x3fc80d23d4f15e7d              # double 0.18790100000000001
	.quad	0x4007f7995ee136e7              # double 2.9958979999999999
	.quad	0x4003d300de4c5111              # double 2.4780289999999998
	.quad	0x401be1672324c836              # double 6.9701199999999996
	.quad	0x400c9ebf22c01e69              # double 3.5775130000000002
	.quad	0x401f58661ae70c13              # double 7.8363269999999998
	.quad	0x3ffc71f03d145d85              # double 1.777817
	.quad	0x4018a1172ef0ae53              # double 6.1573149999999996
	.quad	0x401dc5bccaf709b7              # double 7.4431029999999998
	.quad	0x4011419934efcbd5              # double 4.3140609999999997
	.quad	0x40213b3b10774688              # double 8.6156849999999991
	.quad	0x3ff69fc6da448494              # double 1.4140079999999999
	.quad	0x4021ac83a96d4c34              # double 8.8369420000000005
	.quad	0x3fd449dbec2480e9              # double 0.31700800000000001
	.quad	0x401f3ec460ed80a1              # double 7.8112959999999995
	.quad	0x4023e630ec311623              # double 9.9495920000000008
	.quad	0x400a1ca7503b81b6              # double 3.2639909999999999
	.quad	0x4012b4877681669d              # double 4.6762980000000001
	.quad	0x401c47b890d5a5b9              # double 7.0700399999999997
	.quad	0x3fe50f10a99b6f5d              # double 0.65808900000000004
	.quad	0x4010fd91ab8e8ea4              # double 4.2476260000000003
	.quad	0x4021dc02d16b97ff              # double 8.9297090000000008
	.quad	0x401a2ea18372e6a7              # double 6.5455379999999996
	.quad	0x4004b4ef459d9903              # double 2.5883470000000002
	.quad	0x3ff2a5e99e94ab1d              # double 1.1655059999999999
	.quad	0x4011f7c5692b3cc5              # double 4.4919640000000003
	.quad	0x401b64b0e1b4bb5e              # double 6.8483309999999999
	.quad	0x401ebd3a604e1e71              # double 7.6847929999999999
	.quad	0x400eea5a469d7343              # double 3.86443
	.quad	0x4007140895d0b73d              # double 2.884782
	.quad	0x401da9702e6644d8              # double 7.4154669999999995
	.quad	0x4018376d5497310a              # double 6.0541280000000004
	.quad	0x3ff79cd1c7de5083              # double 1.475786
	.quad	0x401d4395810624dd              # double 7.3159999999999998
	.quad	0x4006a45dc8323359              # double 2.830257
	.quad	0x4022d3630a91537a              # double 9.412865
	.quad	0x402320f9b13165d4              # double 9.5644050000000007
	.quad	0x3fd2deb52c9d16fd              # double 0.29484300000000002
	.quad	0x40092871a3b14a90              # double 3.1447479999999999
	.quad	0x3fe47ec13b9f127f              # double 0.64047299999999996
	.quad	0x3f945069a4df47fa              # double 0.019838000000000001
	.quad	0x400858327674d163              # double 3.0430649999999999
	.quad	0x3fbc86df82b1f688              # double 0.111433
	.quad	0x401179df548ecd8e              # double 4.3690160000000002
	.quad	0x4011a8900c521dda              # double 4.414612
	.quad	0x4009198a65492ff5              # double 3.1374710000000001
	.quad	0x40122faa4766c6de              # double 4.5465479999999996
	.quad	0x401201fff79c8430              # double 4.5019530000000003
	.quad	0x40159996312f4cf5              # double 5.3999870000000003
	.quad	0x40106cf28c79f666              # double 4.1063939999999999
	.quad	0x40134f88765ba6f0              # double 4.8276690000000002
	.quad	0x402064b3c3e74afd              # double 8.1966839999999994
	.quad	0x4018a1ed5ae1cde6              # double 6.1581320000000002
	.quad	0x4023f914b167ec78              # double 9.9864859999999993
	.quad	0x4022fc306e5cd4ed              # double 9.4925569999999996
	.quad	0x40127cc92146a1a5              # double 4.621861
	.quad	0x4022d1626b2f2303              # double 9.4089539999999995
	.quad	0x4006cfe931876189              # double 2.8515190000000001
	.quad	0x3fd5328b6d86ec18              # double 0.33121
	.quad	0x4007aa7ac81d3aa3              # double 2.9582419999999998
	.quad	0x4002c01f75104d55              # double 2.3438099999999999
	.quad	0x4021276ddaceee0f              # double 8.5770099999999996
	.quad	0x401b96a593a2df93              # double 6.8971159999999996
	.quad	0x40105acd184c2720              # double 4.088673
	.quad	0x40084dc33721d53d              # double 3.0379700000000001
	.quad	0x3ffae9003eea209b              # double 1.6818850000000001
	.quad	0x3ff5bee5eedcc20d              # double 1.3591059999999999
	.quad	0x400225f202107b78              # double 2.2685279999999999
	.quad	0x4000e435efa615a9              # double 2.1114310000000001
	.quad	0x3ff9e67e846a5d6c              # double 1.618773
	.quad	0x3fff96d0917d6b66              # double 1.9743200000000001
	.quad	0x4021624f440af1cc              # double 8.6920110000000008
	.quad	0x401fcf7985271bce              # double 7.9526120000000002
	.quad	0x4020f8342aa9f7b6              # double 8.4847730000000006
	.quad	0x401cf5b39e279dd4              # double 7.2399430000000002
	.quad	0x3fe6bc536d655e29              # double 0.71048900000000004
	.quad	0x401eb666ec9e236c              # double 7.6781269999999999
	.quad	0x4019beda22f6a50d              # double 6.4363789999999996
	.quad	0x3fdbd76683c297c0              # double 0.43502200000000002
	.quad	0x400eea8198f1d3ed              # double 3.8645049999999999
	.quad	0x4003a6f9b994e1a4              # double 2.456531
	.quad	0x40225d985ad538ac              # double 9.1828029999999998
	.quad	0x40131fbc5de9c023              # double 4.7809920000000004
	.quad	0x40136ad5bee3d5fe              # double 4.8543310000000002
	.quad	0x4023f73c0c1fc8f3              # double 9.9828799999999997
	.quad	0x4011034b0e1b4bb6              # double 4.2532160000000001
	.quad	0x400db96312f4cf4a              # double 3.7155209999999999
	.quad	0x4016a7bd8be7296f              # double 5.6638089999999996
	.quad	0x4022d3dd11be6e65              # double 9.4137959999999996
	.quad	0x40192b777d0f1f58              # double 6.2924480000000003
	.quad	0x3ff95e5e2478854d              # double 1.585539
	.quad	0x401f585dfa871a3b              # double 7.8362959999999999
	.quad	0x3fa5db5525cc4263              # double 0.042688999999999998
	.quad	0x4020cffcb923a29c              # double 8.4062249999999991
	.quad	0x401e3c02f2f98740              # double 7.558605
	.quad	0x401a97b5286b5914              # double 6.6481519999999996
	.quad	0x401de40aaeafab54              # double 7.4726970000000001
	.quad	0x3ffc89774256bca5              # double 1.783561
	.quad	0x401b2254a3c64346              # double 6.7835260000000002
	.quad	0x40215978b3700475              # double 8.6747490000000003
	.quad	0x40035b738e6d15ad              # double 2.419654
	.quad	0x3fd56c82e019b0ab              # double 0.33474799999999999
	.quad	0x4017f232d2bb2357              # double 5.9865219999999999
	.quad	0x40158efc7a398202              # double 5.3896350000000002
	.quad	0x3feba9fbe76c8b44              # double 0.86450000000000004
	.quad	0x401089c1f85d744f              # double 4.1345289999999997
	.quad	0x3ff4ab12d3415b14              # double 1.291766
	.quad	0x40194de0d66f0cfe              # double 6.3260529999999999
	.quad	0x401e42070b8cfbfc              # double 7.5644799999999996
	.quad	0x4009bca42aed1394              # double 3.2171099999999999
	.quad	0x3fd4a5daf07bfe7e              # double 0.32262299999999999
	.quad	0x3ff56baade657b85              # double 1.338786
	.quad	0x4014bbc2fc69728a              # double 5.1833609999999997
	.quad	0x4011a1461b6d43d0              # double 4.4074939999999998
	.quad	0x4019e963992c8c50              # double 6.477919
	.quad	0x3fe5e8123810e886              # double 0.68457900000000005
	.quad	0x4023b71e6cd29132              # double 9.8576540000000001
	.quad	0x3ffb46f8ad256799              # double 1.7048270000000001
	.quad	0x400806b8305d95dd              # double 3.0032809999999999
	.quad	0x4011ca73f748a15a              # double 4.4477080000000004
	.quad	0x40200584901d1915              # double 8.0107769999999991
	.quad	0x3fc5c725c3dee782              # double 0.17014000000000001
	.quad	0x401dfa743a647fdc              # double 7.4945839999999997
	.quad	0x4016e48f96e15875              # double 5.723204
	.quad	0x400482e90364388f              # double 2.5639210000000001
	.quad	0x40205026aa8eb463              # double 8.1565449999999995
	.quad	0x40173e7967caea74              # double 5.8110099999999996
	.quad	0x4012ff4666ec9e23              # double 4.7492919999999996
	.quad	0x3ffbf1bcdbbe0158              # double 1.746518
	.quad	0x3fae5082cf52b90a              # double 0.059207999999999997
	.quad	0x40070a04d12018a4              # double 2.8798919999999999
	.quad	0x40125992c8c50050              # double 4.5874740000000003
	.quad	0x3ff3ccbc05d52c17              # double 1.237484
	.quad	0x400e0ba6266fd652              # double 3.7556880000000001
	.quad	0x401b4480a5accd53              # double 6.816897
	.quad	0x4013eb59ddc1e796              # double 4.9798349999999996
	.quad	0x3fc03d816aceaaf3              # double 0.12687699999999999
	.quad	0x4012121ab4b72c52              # double 4.5176800000000004
	.quad	0x402183912dba4d6e              # double 8.7569669999999995
	.quad	0x3ff40f0f9d2bf551              # double 1.2536769999999999
	.quad	0x401c168be2f7b17d              # double 7.0220180000000001
	.quad	0x40229025e13b18db              # double 9.2815390000000004
	.quad	0x40220f418d6909af              # double 9.0297970000000003
	.quad	0x401554545846e8f3              # double 5.3323530000000003
	.quad	0x3ff0ae8af81626b3              # double 1.042613
	.quad	0x401c83cf2cf95d4f              # double 7.1287200000000004
	.quad	0x400d92e0e30446b7              # double 3.6967180000000002
	.quad	0x3fe25c03361565c3              # double 0.57373200000000002
	.quad	0x401b1168f8e7ddca              # double 6.7670019999999997
	.quad	0x401b263c31df761d              # double 6.7873390000000002
	.quad	0x4021509f40a2877f              # double 8.6574650000000002
	.quad	0x4019d0e23af31b15              # double 6.4539879999999998
	.quad	0x40153238da3c2118              # double 5.2990449999999996
	.quad	0x4008978140dd3fe2              # double 3.0739770000000002
	.quad	0x400e9f5275ee99a6              # double 3.8277939999999999
	.quad	0x40141acfb762d83c              # double 5.0261829999999996
	.quad	0x40114f7be121ee67              # double 4.3276209999999997
	.quad	0x401a27f38c5436b9              # double 6.539015
	.quad	0x4020ae74f2f123c4              # double 8.3407359999999997
	.quad	0x40232d8f4f93bc0a              # double 9.588984
	.quad	0x40096a3f8982cb21              # double 3.176879
	.quad	0x4004da1fd1569f49              # double 2.606506
	.quad	0x40200ccdb7ae5797              # double 8.0250070000000004
	.quad	0x401f59a6f826edab              # double 7.8375510000000003
	.quad	0x4013318f3eccc469              # double 4.7983979999999997
	.quad	0x3fe4d57ff9b56324              # double 0.65106200000000003
	.quad	0x4021a38dc55000c9              # double 8.8194409999999994
	.quad	0x4013d28ae74f2f12              # double 4.9556079999999998
	.quad	0x400f179e9d0e9920              # double 3.886533
	.quad	0x3ff7b0a915379fa9              # double 1.4806299999999999
	.quad	0x3ff30e618ce2d1f2              # double 1.191011
	.quad	0x4021ebc408d8ec96              # double 8.9604800000000004
	.quad	0x3ff41f37329c347f              # double 1.2576210000000001
	.quad	0x401762949a5657fb              # double 5.8462699999999996
	.quad	0x400813bd9cae2110              # double 3.009639
	.quad	0x401d7d81f10667f9              # double 7.372566
	.quad	0x401200c4dec1c1d7              # double 4.5007510000000002
	.quad	0x402177778dd616f8              # double 8.7333339999999993
	.quad	0x400176049ecb31c2              # double 2.182626
	.quad	0x3fda8f8e7ddca4b1              # double 0.41501199999999999
	.quad	0x4004941205bc01a3              # double 2.5722999999999998
	.quad	0x3feb9af7d30ad46f              # double 0.86266699999999996
	.quad	0x4011ca098915bdd7              # double 4.4473019999999996
	.quad	0x40216a085b18548b              # double 8.7070950000000007
	.quad	0x401d8188f42fe825              # double 7.3764989999999999
	.quad	0x4006525b317efe0d              # double 2.7902130000000001
	.quad	0x3ff99ea140570825              # double 1.6012280000000001
	.quad	0x401f2fa4c61d8623              # double 7.7965270000000002
	.quad	0x400568b545c78a6e              # double 2.6761270000000001
	.quad	0x40133133c1ce6c09              # double 4.7980489999999998
	.quad	0x3fef14855da27286              # double 0.97125499999999998
	.quad	0x401fc916ca46e08f              # double 7.9463759999999998
	.quad	0x4021f4295a6c5d20              # double 8.9768779999999992
	.quad	0x40221c0c1fc8f323              # double 9.0547799999999992
	.quad	0x400e59da9c99285b              # double 3.7938740000000002
	.quad	0x40131cacd184c272              # double 4.778003
	.quad	0x3fbe8a2ec28b2a6b              # double 0.119296
	.quad	0x3fd8a797891e2153              # double 0.38522899999999999
	.quad	0x40218cd530489d28              # double 8.7750640000000004
	.quad	0x3fe933fe9fadafd1              # double 0.78759699999999999
	.quad	0x4021b5b5fa22706d              # double 8.8549039999999994
	.quad	0x4008b17507e9d94d              # double 3.086649
	.quad	0x400dd05f28848388              # double 3.7267440000000001
	.quad	0x40188421c044284e              # double 6.129035
	.quad	0x40185bb7739f340d              # double 6.0895669999999997
	.quad	0x401943ec892ab68d              # double 6.3163320000000001
	.quad	0x3fe457d5a9eb2075              # double 0.63572200000000001
	.quad	0x4017bf6d7625204b              # double 5.936941
	.quad	0x401a0c63f141205c              # double 6.5121000000000002
	.quad	0x3ff58f8c64fdb09a              # double 1.3475459999999999
	.quad	0x3ff1ecaab8a5ce5b              # double 1.1202799999999999
	.quad	0x40132a964e8b7e4e              # double 4.7915890000000001
	.quad	0x4016e23c42a66dbd              # double 5.7209329999999996
	.quad	0x4005ae429e0a41a2              # double 2.7100879999999998
	.quad	0x4022ded4e4c942d5              # double 9.4352180000000007
	.quad	0x40106256bca5375d              # double 4.0960340000000004
	.quad	0x401550c3d25247cb              # double 5.3288719999999996
	.quad	0x401116544fe36d22              # double 4.2718059999999998
	.quad	0x4021d3380cb6c7a8              # double 8.9125370000000004
	.quad	0x3ff9874d9c6b0532              # double 1.5955330000000001
	.quad	0x401a77c1bda5119d              # double 6.6169500000000001
	.quad	0x4023ae9f4906034f              # double 9.8410589999999995
	.quad	0x3f7fea8112ba16e8              # double 0.0077920000000000003
	.quad	0x4021dca1272c94b4              # double 8.9309170000000008
	.quad	0x40126317efe0ce0c              # double 4.5967710000000004
	.quad	0x401e7eb24a6a875d              # double 7.6237269999999996
	.quad	0x401fe45fe1112770              # double 7.9730220000000003
	.quad	0x4010c27e0ef99807              # double 4.189934
	.quad	0x40177eb56fb8f57f              # double 5.8737389999999996
	.quad	0x40233e69f05ea24d              # double 9.6219020000000003
	.quad	0x3fee604189374bc7              # double 0.94925000000000004
	.quad	0x3fc03779e9d0e992              # double 0.126693
	.quad	0x3ffd83bb40b34e77              # double 1.8446610000000001
	.quad	0x4002ae1049235f81              # double 2.3349920000000002
	.quad	0x400ce338b47c73ef              # double 3.610948
	.quad	0x3fc440bfe3b03e21              # double 0.15822600000000001
	.quad	0x4015257eed45e918              # double 5.2866169999999997
	.quad	0x402340f648c7192f              # double 9.6268790000000006
	.quad	0x3ff1606a6e32e382              # double 1.086039
	.quad	0x401437bc3c5bd0e1              # double 5.0544289999999998
	.quad	0x40231c9afe1da7b1              # double 9.5558700000000005
	.quad	0x401632314013ec46              # double 5.5490159999999999
	.quad	0x40200593c46d82ba              # double 8.0108929999999994
	.quad	0x402083686a4ca4f4              # double 8.2566559999999995
	.quad	0x40199c1ebc83a96d              # double 6.4024609999999997
	.quad	0x40189e19b90ea9e7              # double 6.1543950000000001
	.quad	0x4017aa29c779a6b5              # double 5.916175
	.quad	0x4004585a4f00ef13              # double 2.5431409999999999
	.quad	0x4011a10c6f7a0b5f              # double 4.4072740000000001
	.quad	0x40198c564f97edc8              # double 6.3870480000000001
	.quad	0x40118292817763e5              # double 4.3775120000000003
	.quad	0x40223df7a4e7ab75              # double 9.1210299999999993
	.quad	0x4019b26e5471715c              # double 6.4242489999999997
	.quad	0x400287ae147ae148              # double 2.3162500000000001
	.quad	0x401635a6c5d206c8              # double 5.5523939999999996
	.quad	0x4022d19a62ed3522              # double 9.4093809999999998
	.quad	0x4016905a2d72ffd2              # double 5.6409690000000001
	.quad	0x401192b063e07a29              # double 4.3932510000000002
	.quad	0x401402f8bdec5f39              # double 5.0029019999999997
	.quad	0x3fe04430b178b370              # double 0.508324
	.quad	0x40223d45e9185cee              # double 9.1196739999999998
	.quad	0x4017fec204f2ae08              # double 5.9987870000000001
	.quad	0x401d9389b52007dd              # double 7.3940799999999998
	.quad	0x402355a426bb55ac              # double 9.6672679999999999
	.quad	0x4020ab43d89ce4a8              # double 8.3345020000000005
	.quad	0x3fd5c86cebbba55d              # double 0.34035799999999999
	.quad	0x401fd6052502eec8              # double 7.9590040000000001
	.quad	0x4011ab3bb83cf2d0              # double 4.4172200000000004
	.quad	0x401372d38476f2a6              # double 4.8621350000000003
	.quad	0x4003d11cf355cd92              # double 2.477106
	.quad	0x40231e58c4bd33d3              # double 9.5592710000000007
	.quad	0x40215b549f94855e              # double 8.6783800000000006
	.quad	0x40127860dcb9a9da              # double 4.6175569999999997
	.quad	0x40229dbf8b9baa15              # double 9.3081019999999999
	.quad	0x40042bd230b9dc2f              # double 2.5213969999999999
	.quad	0x40098dd82fd75e20              # double 3.1942599999999999
	.quad	0x4013ee85b9e8c47a              # double 4.9829319999999999
	.quad	0x400e166f0cfe1544              # double 3.7609539999999999
	.quad	0x3ff6240e9d51b4fe              # double 1.3838029999999999
	.quad	0x401eac70435efa61              # double 7.6683969999999996
	.quad	0x401355d78811b1d9              # double 4.8338299999999998
	.quad	0x4021b8e820e62995              # double 8.8611459999999997
	.quad	0x402107c4e2f37fbf              # double 8.515174
	.quad	0x4002ab9346994185              # double 2.333777
	.quad	0x4015d45a5fc7e6b4              # double 5.457376
	.quad	0x4012641e9af5ba2c              # double 4.5977730000000001
	.quad	0x400cb78cc9a77e5f              # double 3.5896240000000001
	.quad	0x40067496aad1d042              # double 2.8069280000000001
	.quad	0x4023b6dedaec4a41              # double 9.8571690000000007
	.quad	0x400096fc9bc77143              # double 2.0737239999999999
	.quad	0x40221b4c5da6a444              # double 9.0533169999999998
	.quad	0x4009c181e03f7058              # double 3.2194859999999998
	.quad	0x402019183b60285f              # double 8.0490130000000004
	.quad	0x401b79e59f2ba9d2              # double 6.86904
	.quad	0x401461ec4e7253da              # double 5.0956279999999996
	.quad	0x40238c7c0f451761              # double 9.7743839999999995
	.quad	0x401763aeee957471              # double 5.8473470000000001
	.quad	0x401c1cb295e9e1b1              # double 7.0280250000000004
	.quad	0x401fc1e4712e4085              # double 7.9393479999999998
	.quad	0x40073eed45e9185d              # double 2.905726
	.quad	0x40180262cba732df              # double 6.0023299999999997
	.quad	0x401cf95b35b0bbf5              # double 7.243512
	.quad	0x4010a389b52007dd              # double 4.1597049999999998
	.quad	0x401526366d7a56de              # double 5.2873169999999998
	.quad	0x4020cea6a012599f              # double 8.4036150000000003
	.quad	0x4020e0a04d12018a              # double 8.4387229999999995
	.quad	0x40239b6c3760bf5d              # double 9.8035599999999991
	.quad	0x4013cad42c3c9eed              # double 4.9480750000000002
	.quad	0x400a24b018611fd6              # double 3.2679140000000002
	.quad	0x3ff46d99cbee807c              # double 1.2767580000000001
	.quad	0x4014104d98394749              # double 5.0159209999999996
	.quad	0x4013e5000c9539b9              # double 4.9736330000000004
	.quad	0x3fb0db0574b40703              # double 0.065841999999999998
	.quad	0x401ccbb9cf9a06a7              # double 7.1989510000000001
	.quad	0x40208e3369b9d7fe              # double 8.2777360000000009
	.quad	0x4011456eac860568              # double 4.3178049999999999
	.quad	0x401d31bda5119ce0              # double 7.2985749999999996
	.quad	0x3fd515d701d9f4d3              # double 0.32945799999999997
	.quad	0x401443dff3f0fe04              # double 5.0662839999999996
	.quad	0x400c79d55e6bc622              # double 3.5594890000000001
	.quad	0x40201106466b1e5c              # double 8.0332509999999999
	.quad	0x3ffa66d2674080fa              # double 1.6501030000000001
	.quad	0x401e6c857f3061c8              # double 7.6059780000000003
	.quad	0x40223ac16df3f962              # double 9.1147570000000009
	.quad	0x401ec86338b47c74              # double 7.6956910000000001
	.quad	0x4001e0f12c27a637              # double 2.2348349999999999
	.quad	0x4019669e7fb267c7              # double 6.3502140000000002
	.quad	0x40068ff64cf8d717              # double 2.8202940000000001
	.quad	0x4022ee540cc78e9f              # double 9.4654849999999992
	.quad	0x4008e1461b6d43d0              # double 3.1099969999999999
	.quad	0x40206c8387df5cf2              # double 8.2119409999999995
	.quad	0x40183caf2d7f950c              # double 6.0592620000000004
	.quad	0x3ff5801f75104d55              # double 1.34378
	.quad	0x40187349be8ff328              # double 6.1125860000000003
	.quad	0x40224581f10667f9              # double 9.1357569999999999
	.quad	0x401134473cd57364              # double 4.3010529999999996
	.quad	0x401671af7d30ad47              # double 5.611021
	.quad	0x40231a3e5b8561d4              # double 9.5512569999999996
	.quad	0x40183c19c17225b7              # double 6.0586919999999997
	.quad	0x4022dd60e94ee393              # double 9.4323800000000002
	.quad	0x400a61554fbdad75              # double 3.297526
	.quad	0x401313da72a7bd49              # double 4.7693880000000002
	.quad	0x4016eee45c358afc              # double 5.7332929999999998
	.quad	0x3ffc94c447c30d30              # double 1.7863199999999999
	.quad	0x40168945f9df548f              # double 5.6340560000000002
	.quad	0x4012bc88e79aae6d              # double 4.6841160000000004
	.quad	0x4011fe60c38f3669              # double 4.4984159999999997
	.quad	0x3ff0842b734b5137              # double 1.032268
	.quad	0x401598676a7264a1              # double 5.3988319999999996
	.quad	0x4011783a53b8e4b8              # double 4.3674099999999996
	.quad	0x40122cdcca70d1fa              # double 4.5438109999999998
	.quad	0x400185a038194c01              # double 2.1902469999999998
	.quad	0x3fe47f6f4be835df              # double 0.64055600000000001
	.quad	0x402061843c3a42f2              # double 8.1904620000000001
	.quad	0x3ff9b15c63ae2542              # double 1.605801
	.quad	0x40228674d1633483              # double 9.2626100000000005
	.quad	0x401342a5a469d734              # double 4.8150849999999998
	.quad	0x3fc75d67ba237cdd              # double 0.18253800000000001
	.quad	0x401f0b8887229e90              # double 7.7612629999999996
	.quad	0x4017b80d801b4352              # double 5.9297389999999996
	.quad	0x401c92e1693c03bc              # double 7.1434379999999997
	.quad	0x4001f5c4a83b1d0d              # double 2.2450040000000002
	.quad	0x3fd98316a055757d              # double 0.39862599999999998
	.quad	0x3fde935fc3b4f616              # double 0.47774499999999998
	.quad	0x401df75c8d9f9054              # double 7.4915640000000003
	.quad	0x3ff3a219652bd3c3              # double 1.2270749999999999
	.quad	0x4010f6fc9bc77143              # double 4.2411979999999998
	.quad	0x4008c1e0c5a8155d              # double 3.0946669999999998
	.quad	0x4010e27f1b691212              # double 4.2211879999999997
	.quad	0x3ff8ec6583e8576d              # double 1.557714
	.quad	0x4015f175d13d74d6              # double 5.4858010000000004
	.quad	0x400dde94ab1d4f9c              # double 3.7336819999999999
	.quad	0x4014bf640639d5e5              # double 5.1869050000000003
	.quad	0x4022645bf26f1dc5              # double 9.1960139999999999
	.quad	0x3ff1279ee02a77a3              # double 1.072173
	.quad	0x4012c2441fea8113              # double 4.6897130000000002
	.quad	0x40236adcf4623d0c              # double 9.708717
	.quad	0x3ff517e996312f4d              # double 1.318338
	.quad	0x40002c9a77e5eaab              # double 2.021779
	.quad	0x40070b25b317efe1              # double 2.8804430000000001
	.quad	0x40082fcc5b8dc550              # double 3.023339
	.quad	0x3fffe44c7b02d59d              # double 1.9932369999999999
	.quad	0x3ff09e679463cfb3              # double 1.038673
	.quad	0x4021cb08787485e4              # double 8.8965490000000002
	.quad	0x401c513e81450efe              # double 7.0793400000000002
	.quad	0x400d6abe6a337a81              # double 3.6771210000000001
	.quad	0x4022dc8b0079a283              # double 9.4307479999999994
	.quad	0x3ff7ba05143bf727              # double 1.482915
	.quad	0x401bab524399b2c4              # double 6.917306
	.quad	0x4021769c66d373b0              # double 8.731662
	.quad	0x40036918e325d4a6              # double 2.4263170000000001
	.quad	0x4017f7e1b8ed1bf8              # double 5.9920720000000003
	.quad	0x4012a6fb09203a32              # double 4.6630669999999999
	.quad	0x400065c78a6dacac              # double 2.0496970000000001
	.quad	0x40230ac710cb295f              # double 9.5210500000000006
	.quad	0x3ff29606317268d3              # double 1.161627
	.quad	0x3ff40a4d2b2bfdb5              # double 1.252515
	.quad	0x3ffb72a8c9b84556              # double 1.7154929999999999
	.quad	0x401bd361565c2d28              # double 6.9564260000000004
	.quad	0x40230df3d7d3910c              # double 9.5272509999999996
	.quad	0x4012bb00bcbe61d0              # double 4.68262
	.quad	0x3ff8f458cd20afa3              # double 1.559655
	.quad	0x3fbf074a771c970f              # double 0.12120499999999999
	.quad	0x3fd6ca9ef5232d2c              # double 0.35611700000000002
	.quad	0x400fd6ac647778dd              # double 3.9798209999999998
	.quad	0x402366638433d6c7              # double 9.6999779999999997
	.quad	0x3fda0485a0be5109              # double 0.406526
	.quad	0x400d993ff25e56cd              # double 3.6998289999999998
	.quad	0x3fec85b5b70691ea              # double 0.89132199999999995
	.quad	0x400c57a919695d92              # double 3.5428030000000001
	.quad	0x3ff3c5e1c15097c8              # double 1.235811
	.quad	0x40119798d8a979e1              # double 4.3980439999999996
	.quad	0x3ff822b1704ff434              # double 1.50847
	.quad	0x3ffdd6bebe1650a4              # double 1.8649279999999999
	.quad	0x40222798fa376923              # double 9.0773390000000003
	.quad	0x4019f28e4fb97bb7              # double 6.4868709999999998
	.quad	0x402300d045fe1112              # double 9.5015889999999992
	.quad	0x4023901abd1aa822              # double 9.7814540000000001
	.quad	0x401c3d2b2bfdb4cc              # double 7.0597349999999999
	.quad	0x401d969728a61177              # double 7.3970609999999999
	.quad	0x40038b09635610ae              # double 2.4428890000000001
	.quad	0x40067600f345069a              # double 2.8076189999999999
	.quad	0x401041c92ddbdb5e              # double 4.0642440000000004
	.quad	0x4007d88a04d12019              # double 2.9807320000000002
	.quad	0x400e26f3f52fc265              # double 3.7690199999999998
	.quad	0x40126f7e80389f84              # double 4.6088810000000002
	.quad	0x4010ffe718a86d72              # double 4.249905
	.quad	0x401f2f141205bc02              # double 7.7959750000000003
	.quad	0x3fe60e60807357e6              # double 0.68925499999999995
	.quad	0x40223c046412cf10              # double 9.1172210000000007
	.quad	0x4019c634549b62c7              # double 6.4435589999999996
	.quad	0x40134bfbdf090f73              # double 4.8242029999999998
	.quad	0x4023177d30ad46f6              # double 9.5458770000000008
	.quad	0x3feb4f4a558ea7ce              # double 0.85342899999999999
	.quad	0x4013dd9ec7000432              # double 4.9664260000000002
	.quad	0x40016b37867f0aa2              # double 2.177352
	.quad	0x3fed6054690de093              # double 0.91800899999999996
	.quad	0x40004b1dd5d3dc8c              # double 2.0366780000000002
	.quad	0x40180f4cf4a558ea              # double 6.0149419999999996
	.quad	0x401d109b738e6d16              # double 7.2662180000000003
	.quad	0x4022dcdc65c70436              # double 9.4313690000000001
	.quad	0x3f949b1fab96f21f              # double 0.020122999999999999
	.quad	0x40195b5e0f7fcfc4              # double 6.339226
	.quad	0x4013b27179bfdf7f              # double 4.9242610000000004
	.quad	0x4023527589efd86b              # double 9.6610530000000007
	.quad	0x40237b700474d9c7              # double 9.7410890000000005
	.quad	0x4022a330f8c64fdb              # double 9.3187329999999999
	.quad	0x401487c957cd466f              # double 5.1326039999999997
	.quad	0x401006be37de939f              # double 4.0065850000000003
	.quad	0x4011ca2cecc814d7              # double 4.4474369999999999
	.quad	0x401755c5718eb895              # double 5.833761
	.quad	0x4015aa326e115593              # double 5.4162080000000001
	.quad	0x40125083dbc23316              # double 4.5786280000000001
	.quad	0x40203889a0275254              # double 8.1104249999999993
	.quad	0x4023e8abd5dc4007              # double 9.9544359999999993
	.quad	0x400887a743a647fe              # double 3.0662370000000001
	.quad	0x4020d2bf76a2f48c              # double 8.4116169999999996
	.quad	0x401cd31ec0b56755              # double 7.2061719999999996
	.quad	0x3fe6a135daad6020              # double 0.707179
	.quad	0x40123a21ea359360              # double 4.5567700000000002
	.quad	0x4020c6cd4aa10e02              # double 8.3882849999999998
	.quad	0x401d540639d5e4a4              # double 7.3320550000000004
	.quad	0x402270cd423d9232              # double 9.2203160000000004
	.quad	0x4020eebce8533b10              # double 8.4662849999999992
	.quad	0x400553d9ec700043              # double 2.665943
	.quad	0x402168342aa9f7b6              # double 8.7035230000000006
	.quad	0x401fc8bb906466b2              # double 7.9460280000000001
	.quad	0x401db1e14bdfd263              # double 7.4237109999999999
	.quad	0x4011606530058149              # double 4.3441359999999998
	.quad	0x4011dea1c68ec52a              # double 4.4674139999999998
	.quad	0x3ff4d3e5fb71fbc6              # double 1.301733
	.quad	0x4005f7cf5f4e4431              # double 2.7460010000000001
	.quad	0x401b6877ab324852              # double 6.8520190000000003
	.quad	0x401f7fb549f94856              # double 7.8747150000000001
	.quad	0x401dc176577531db              # double 7.4389279999999998
	.quad	0x3ff763a9f383f0bb              # double 1.461832
	.quad	0x4010457d5a9eb207              # double 4.0678609999999997
	.quad	0x402196cf41f212d7              # double 8.7945499999999992
	.quad	0x3fdb31f46ed245b3              # double 0.42492400000000002
	.quad	0x4002c40bfe3b03e2              # double 2.345726
	.quad	0x401a757e670e2c13              # double 6.6147400000000003
	.quad	0x40169f50e3476295              # double 5.6555819999999999
	.quad	0x401d36eac8605682              # double 7.3036300000000001
	.quad	0x400a2c743201040c              # double 3.271706
	.quad	0x3ff1482e019b0ab3              # double 1.080122
	.quad	0x401c20ac7da1ec4e              # double 7.0319079999999996
	.quad	0x40239a63b688bda9              # double 9.8015419999999995
	.quad	0x401bead688377186              # double 6.9793339999999997
	.quad	0x400ef22d0e560419              # double 3.8682500000000002
	.quad	0x40213a68900c521e              # double 8.6140790000000003
	.quad	0x4021e86e7e62dc6e              # double 8.9539679999999997
	.quad	0x3ff6734b51372a39              # double 1.4031480000000001
	.quad	0x3ff035cf2495e17e              # double 1.013137
	.quad	0x40143eb78897e996              # double 5.0612469999999998
	.quad	0x400670cc35ce1826              # double 2.8050769999999998
	.quad	0x4014e7620ee8d10f              # double 5.2259599999999997
	.quad	0x3fac404a72ead927              # double 0.055177999999999998
	.quad	0x401848897e996313              # double 6.070837
	.quad	0x401877fd82773e25              # double 6.117178
	.quad	0x4023bee2003ab863              # double 9.8728180000000005
	.quad	0x3ff9b8348f53c57a              # double 1.607472
	.quad	0x402279a3d2d87f88              # double 9.2375779999999991
	.quad	0x402054eb78897e99              # double 8.1658589999999993
	.quad	0x4008733fc86cebbc              # double 3.0562740000000002
	.quad	0x4019f1c1d6cf850e              # double 6.4860910000000001
	.quad	0x3fe9f0f9d2bf5515              # double 0.810666
	.quad	0x3ffc8d8fd5cb7910              # double 1.7845610000000001
	.quad	0x4007db480a5accd5              # double 2.9820709999999999
	.quad	0x40230d7774aba387              # double 9.5263019999999993
	.quad	0x40231eb93ccd0fe9              # double 9.5600070000000005
	.quad	0x40206019f3c70c99              # double 8.1876979999999993
	.quad	0x40156c62a1b5c7ce              # double 5.3558450000000004
	.quad	0x3fb6fed634549b63              # double 0.089826000000000003
	.quad	0x3fbc23a6ce358299              # double 0.109919
	.quad	0x4022fd15ce9e5e24              # double 9.4943069999999991
	.quad	0x3ff58bb0a2ca9ac3              # double 1.3466039999999999
	.quad	0x401005aa715831f0              # double 4.0055329999999998
	.quad	0x3ff6c5e9185cee18              # double 1.4233180000000001
	.quad	0x4010f683c297bfa5              # double 4.2407370000000002
	.quad	0x401f0106ee30caa3              # double 7.7510029999999998
	.quad	0x3ff9ca44c7b02d5a              # double 1.611882
	.quad	0x40143325918a009f              # double 5.0499479999999997
	.quad	0x3ffb4b8bef8ceb35              # double 1.7059439999999999
	.quad	0x400ba8cbd1244a62              # double 3.4574199999999999
	.quad	0x4015440e5a35d67c              # double 5.3164610000000003
	.quad	0x40179803cd141a69              # double 5.8984519999999998
	.quad	0x400f364840e1719f              # double 3.9015049999999998
	.quad	0x40233746887a8d65              # double 9.6079600000000002
	.quad	0x4003a7bdcf0307f2              # double 2.4569049999999999
	.quad	0x4021d8c88a47ecff              # double 8.9234050000000007
	.quad	0x40133bf26f1dc50d              # double 4.8085420000000001
	.quad	0x402098a99b6f5caf              # double 8.2981689999999997
	.quad	0x401ce27a20578e5c              # double 7.2211689999999997
	.quad	0x3ff8ce3cd9a52264              # double 1.550351
	.quad	0x4020128d64d7f0ed              # double 8.0362349999999996
	.quad	0x40207464dc22ab26              # double 8.2273320000000005
	.quad	0x40207d8e0008637c              # double 8.2452240000000003
	.quad	0x40029aac53b0813d              # double 2.3255240000000001
	.quad	0x4023cc5e6ff7dfa0              # double 9.8991579999999999
	.quad	0x400ea34a87e38eb0              # double 3.8297319999999999
	.quad	0x402217cc39ffd60f              # double 9.0464800000000007
	.quad	0x401a63996fa82e88              # double 6.5972650000000002
	.quad	0x40139702602c9082              # double 4.8974700000000002
	.quad	0x4023a17ce52deca2              # double 9.8154059999999994
	.quad	0x3fa02a3486f049aa              # double 0.031572000000000003
	.quad	0x3fdf17df19d66adb              # double 0.48583199999999999
	.quad	0x3fd72220bc382a13              # double 0.361458
	.quad	0x401db39e279dd3bb              # double 7.425408
	.quad	0x40209b9e060fe47a              # double 8.3039400000000008
	.quad	0x4022d1b413986339              # double 9.4095770000000005
	.quad	0x3fffb0b49e01de27              # double 1.9806410000000001
	.quad	0x401f75e2cdc011d3              # double 7.8651229999999996
	.quad	0x3ff268997c3d6840              # double 1.1505369999999999
	.quad	0x401e2a6defc7a398              # double 7.5414349999999998
	.quad	0x40209a76d97b30f9              # double 8.3016880000000004
	.quad	0x40152553ac4f7ec3              # double 5.2864519999999997
	.quad	0x3fe9a79bbadc0981              # double 0.80171000000000003
	.quad	0x402297f759685122              # double 9.2968089999999997
	.quad	0x400805a708ede54b              # double 3.0027599999999999
	.quad	0x402300f451761459              # double 9.5018639999999994
	.quad	0x401d7fca85caafbc              # double 7.3747959999999999
	.quad	0x400f382cb20fb225              # double 3.9024290000000001
	.quad	0x401969b951c5c572              # double 6.3532460000000004
	.quad	0x40207d4a7f8012e0              # double 8.2447090000000003
	.quad	0x40142ae3a3a8e714              # double 5.0418839999999996
	.quad	0x401c627418d6909b              # double 7.0961460000000001
	.quad	0x40141625a682b628              # double 5.0216279999999998
	.quad	0x40205178f68be2f8              # double 8.1591260000000005
	.quad	0x40183f27bb2fec57              # double 6.0616750000000001
	.quad	0x401153af74cd3177              # double 4.3317240000000004
	.quad	0x400d65a89b951c5c              # double 3.6746379999999998
	.quad	0x401f061d4306e5cd              # double 7.7559709999999997
	.quad	0x4009cb95e5aff2a1              # double 3.2244069999999998
	.quad	0x3fff6b4c7f349386              # double 1.9636960000000001
	.quad	0x4016dacfb762d83c              # double 5.7136829999999996
	.quad	0x40106ee4e26d4802              # double 4.108295
	.quad	0x401a772ffd1dcd70              # double 6.6163939999999997
	.quad	0x400770d0edc3bd5a              # double 2.9300860000000002
	.quad	0x40205148344c37e7              # double 8.1587540000000001
	.quad	0x402316cd29131ec1              # double 9.5445340000000005
	.quad	0x400cf8e086bdf4c3              # double 3.6215220000000001
	.quad	0x401d422c01e68a0d              # double 7.3146209999999998
	.quad	0x40234fc3b4f61672              # double 9.6557899999999997
	.quad	0x402228c521dda05a              # double 9.0796290000000006
	.quad	0x40108be9c886162f              # double 4.1366339999999999
	.quad	0x4011b0dc768dfbd7              # double 4.4227160000000003
	.quad	0x402332a38b8ae31d              # double 9.5989039999999992
	.quad	0x4003f53b4b2fa93b              # double 2.494742
	.quad	0x4008e21294573a79              # double 3.1103869999999998
	.quad	0x400622fc69728a61              # double 2.767083
	.quad	0x40202c0895d0b73d              # double 8.0860029999999998
	.quad	0x4016c1f18c9fb613              # double 5.6893979999999997
	.quad	0x40047b6aa4b9884c              # double 2.5602619999999998
	.quad	0x4009df94855da273              # double 3.2341700000000002
	.quad	0x3fede1dc93ea2d30              # double 0.93382100000000001
	.quad	0x400d1a743a647fdc              # double 3.6379169999999998
	.quad	0x40207001b4352652              # double 8.2187629999999992
	.quad	0x400ed0f733a8a3f9              # double 3.8520340000000002
	.quad	0x4016bcc89b0ee49f              # double 5.6843589999999997
	.quad	0x4021d6fc371da37f              # double 8.9198930000000001
	.quad	0x4018efa69be09bb7              # double 6.2340340000000003
	.quad	0x40062a1e81cb46bb              # double 2.7705660000000001
	.quad	0x40044f2a5a469d73              # double 2.5386549999999999
	.quad	0x4015a9a9da597d4a              # double 5.4156870000000001
	.quad	0x3ff5cb4f1e4b44a2              # double 1.362136
	.quad	0x3fed91d9b1b79d91              # double 0.92405400000000004
	.quad	0x4004742b302f72b4              # double 2.5567229999999999
	.quad	0x40212bcf2cf95d4f              # double 8.5855650000000008
	.quad	0x3ff1d9d0203e63e9              # double 1.115677
	.quad	0x4009a1ac57e23f25              # double 3.2039420000000001
	.quad	0x402128d2a1f8e3ac              # double 8.5797319999999999
	.quad	0x40111c13fd0d0679              # double 4.2774200000000002
	.quad	0x401f4c60cbf2b23a              # double 7.8245880000000003
	.quad	0x4017e563a9f383f1              # double 5.9740130000000002
	.quad	0x402106008e9b38d6              # double 8.5117229999999999
	.quad	0x40172472c0e7bc3c              # double 5.7855939999999997
	.quad	0x401c72513b5bf6a1              # double 7.1116380000000001
	.quad	0x400470acc0bdcad1              # double 2.5550169999999999
	.quad	0x3ffc9b9b66f9335d              # double 1.78799
	.quad	0x3ff6567ba237cdcd              # double 1.3961140000000001
	.quad	0x40131f61ed5ae1ce              # double 4.7806470000000001
	.quad	0x402282e924f227d0              # double 9.2556849999999997
	.quad	0x401206317268d328              # double 4.5060479999999998
	.quad	0x400b880f12c27a63              # double 3.4414349999999998
	.quad	0x3fb15475a31a4bdc              # double 0.067695000000000005
	.quad	0x4013c41a261bf37c              # double 4.9415060000000004
	.quad	0x40038f284167a95d              # double 2.4449010000000002
	.quad	0x4023d66eeb702603              # double 9.9188150000000003
	.quad	0x3fe8709741d084e8              # double 0.76374399999999998
	.quad	0x40175bf11f926c7f              # double 5.8397870000000003
	.quad	0x401caf10ecb74de0              # double 7.1709630000000004
	.quad	0x401d08efbb0e5e68              # double 7.2587270000000004
	.quad	0x40131bedb7281fda              # double 4.7772740000000002
	.quad	0x400073b42cc2d6aa              # double 2.0564960000000001
	.quad	0x4021f0bfe3b03e21              # double 8.9702140000000004
	.quad	0x4018ba02b841248d              # double 6.1816509999999996
	.quad	0x4020d84449dbec25              # double 8.4223960000000009
	.quad	0x400b4a7b4e54f7a9              # double 3.411368
	.quad	0x400cf1a650614163              # double 3.6179929999999998
	.quad	0x40104d45a5fc7e6b              # double 4.0754609999999998
	.quad	0x40039f2fdb8fde2f              # double 2.452728
	.quad	0x401049806f262889              # double 4.0717790000000003
	.quad	0x4020469e1b089a02              # double 8.1379249999999992
	.quad	0x402005f02c4d65e4              # double 8.0115979999999993
	.quad	0x40014ce4649906cd              # double 2.1625450000000002
	.quad	0x3fe459641f644956              # double 0.63591200000000003
	.quad	0x4017c55432873bc9              # double 5.942704
	.quad	0x40131e90ff972474              # double 4.7798499999999997
	.quad	0x4022872a38b8ae32              # double 9.2639940000000003
	.quad	0x4019db734b51372a              # double 6.4643069999999998
	.quad	0x400a681b21c475e6              # double 3.3008329999999999
	.quad	0x3fcec868b9fdbd30              # double 0.24049100000000001
	.quad	0x40208761cbccf28c              # double 8.2644179999999991
	.quad	0x401576234a87e38f              # double 5.3653690000000003
	.quad	0x40178b80a9de8b3b              # double 5.8862329999999998
	.quad	0x4011ea38b8ae31d7              # double 4.4787319999999999
	.quad	0x40130faf42784a94              # double 4.7653169999999996
	.quad	0x40025de050374ff8              # double 2.2958379999999998
	.quad	0x3ff83ab7564302b4              # double 1.514335
	.quad	0x402193ed0f627393              # double 8.7889180000000007
	.quad	0x401151882adc4c9d              # double 4.3296210000000004
	.quad	0x400b5cfbb949624a              # double 3.4204020000000002
	.quad	0x401c8726d04e618d              # double 7.1319840000000001
	.quad	0x401ec67620ee8d11              # double 7.69381
	.quad	0x401eb8c8abd5dc40              # double 7.680453
	.quad	0x3ffe5dfdac68a937              # double 1.8979470000000001
	.quad	0x3ff3d5629d8409e5              # double 1.2395959999999999
	.quad	0x4010ff687b139c95              # double 4.249422
	.quad	0x4010ba51e321a2e8              # double 4.181953
	.quad	0x40077c1d6cf850df              # double 2.935603
	.quad	0x4014c98cc144028e              # double 5.1968259999999997
	.quad	0x4019799524bfd2e9              # double 6.3687329999999998
	.quad	0x400bdcfb3311a544              # double 3.482901
	.quad	0x3ff09a1ec4e7253e              # double 1.0376270000000001
	.quad	0x401232a3486f049b              # double 4.5494510000000004
	.quad	0x4023e4edf6124074              # double 9.9471279999999993
	.quad	0x400f5669ced0b30b              # double 3.9171939999999998
	.quad	0x3ffd26defc7a3982              # double 1.82199
	.quad	0x401ac65d7cb2d906              # double 6.6937160000000002
	.quad	0x4018b555c52e72da              # double 6.1770849999999999
	.quad	0x401caa63f9a49c2c              # double 7.1663969999999999
	.quad	0x400a6fdb09a671ef              # double 3.3046169999999999
	.quad	0x401074c2b51bd61f              # double 4.1140239999999997
	.quad	0x4007882491afc04d              # double 2.9414760000000002
	.quad	0x401a5a20578e5c4f              # double 6.5880140000000003
	.quad	0x40213481b21c475e              # double 8.6025519999999993
	.quad	0x40207f2a38b8ae32              # double 8.2483690000000003
	.quad	0x4023b48de2ac3223              # double 9.8526450000000007
	.quad	0x3fe6f7121ab4b72c              # double 0.71765999999999996
	.quad	0x401e921144cbe1eb              # double 7.6426439999999997
	.quad	0x40153acd5b6805a3              # double 5.3074240000000001
	.quad	0x401c5ef1348b2208              # double 7.0927170000000004
	.quad	0x3ff4dbef49cf56eb              # double 1.303695
	.quad	0x402098eda22f6a51              # double 8.2986880000000003
	.quad	0x3ffd5d1c3ac929aa              # double 1.835232
	.quad	0x4015ce8858ff7597              # double 5.4516920000000004
	.quad	0x3feb1146e4c0df59              # double 0.84585900000000003
	.quad	0x4010f0c9539b8887              # double 4.2351429999999999
	.quad	0x3ff087d4e09784ec              # double 1.0331619999999999
	.quad	0x40198cc70867ad8e              # double 6.3874779999999998
	.quad	0x401fe12599ed7c70              # double 7.9698700000000002
	.quad	0x401c23e7d135115a              # double 7.0350640000000002
	.quad	0x401af5a0be510907              # double 6.7398709999999999
	.quad	0x3fec40a6b93ccd10              # double 0.88289200000000001
	.quad	0x4002ff92f2b66b61              # double 2.3747919999999998
	.quad	0x3fffd8a86d71f362              # double 1.9903949999999999
	.quad	0x4005030b9dc2f406              # double 2.626487
	.quad	0x401fba5a038194c0              # double 7.9319839999999999
	.quad	0x400c55e071c53f3a              # double 3.5419320000000001
	.quad	0x401edbe7afa72218              # double 7.7147509999999996
	.quad	0x401bafe154434e33              # double 6.9217579999999996
	.quad	0x40027b85e80bed74              # double 2.310314
	.quad	0x4010c99a1fd1569f              # double 4.1968769999999997
	.quad	0x4023bdb65ecc3e32              # double 9.8705320000000007
	.quad	0x40053b530ced4e4d              # double 2.6539670000000002
	.quad	0x4023ec26351deefe              # double 9.9612289999999994
	.quad	0x4021bdd377e1b8ed              # double 8.8707539999999998
	.quad	0x4019e6362a5e785b              # double 6.4748159999999997
	.quad	0x4020cbfec13b9f12              # double 8.3984279999999991
	.quad	0x4021cd308bb90646              # double 8.9007609999999993
	.quad	0x3fdd91a75cd0bb6f              # double 0.46201500000000001
	.quad	0x401d4b4c3c18b503              # double 7.3235330000000003
	.quad	0x4016a7d84901d191              # double 5.6639109999999997
	.quad	0x4013e55a3a08398a              # double 4.9739769999999996
	.quad	0x3fe1e555c52e72da              # double 0.55924499999999999
	.quad	0x401732b2bfdb4cc2              # double 5.7995099999999997
	.quad	0x4012fe5e679463d0              # double 4.7484070000000003
	.quad	0x40116f6d7625204b              # double 4.358816
	.quad	0x401ae9cf13cee9dd              # double 6.7283289999999996
	.quad	0x4020898266772d5e              # double 8.268573
	.quad	0x3fc9ef8ceb356da0              # double 0.202623
	.quad	0x40233469f8c21e1d              # double 9.6023709999999997
	.quad	0x400edd462c343b71              # double 3.858044
	.quad	0x4002b7a24894c448              # double 2.3396650000000001
	.quad	0x4014a05a2d72ffd2              # double 5.1565940000000001
	.quad	0x4023b6d84d338f7a              # double 9.8571190000000009
	.quad	0x401128151a437825              # double 4.2891430000000001
	.quad	0x401e305c03361566              # double 7.5472260000000002
	.quad	0x400286cf41f212d7              # double 2.3158249999999998
	.quad	0x4012e7daa4fca42b              # double 4.7264200000000001
	.quad	0x4012dd3910c2c5e3              # double 4.7160380000000002
	.quad	0x401dbfd60e94ee39              # double 7.4373399999999998
	.quad	0x400a91cc96462802              # double 3.3211909999999998
	.quad	0x3ff5be1975f2cb64              # double 1.358911
	.quad	0x3ff9a3db3bfb58d1              # double 1.6025039999999999
	.quad	0x4015518b502ababf              # double 5.3296330000000003
	.quad	0x40142a73b42cc2d7              # double 5.0414570000000003
	.quad	0x4002ba95421c0443              # double 2.3411050000000002
	.quad	0x401a5c2374794ea0              # double 6.5899789999999996
	.quad	0x401d6b4959e62563              # double 7.3547719999999996
	.quad	0x400a88eef1bac2df              # double 3.316862
	.quad	0x3ffa93293d102bc7              # double 1.660928
	.quad	0x40148bd556084a51              # double 5.1365559999999997
	.quad	0x400f2d940789613d              # double 3.8972549999999999
	.quad	0x3fe6ebf01322f273              # double 0.71630099999999997
	.quad	0x400c0141e9af5ba3              # double 3.5006140000000001
	.quad	0x3ffc6edfe75bc44c              # double 1.777069
	.quad	0x401cce963dc486ad              # double 7.2017449999999998
	.quad	0x400fabe9424e5929              # double 3.9589409999999998
	.quad	0x401b1ff92f2b66b6              # double 6.7812239999999999
	.quad	0x3ff49e94ab1d4f9c              # double 1.288716
	.quad	0x400be79bbadc0981              # double 3.4880900000000001
	.quad	0x401b0712e40852b5              # double 6.7569080000000001
	.quad	0x401b65e1c15097c8              # double 6.849494
	.quad	0x3fb15757d5a9eb20              # double 0.067738999999999994
	.quad	0x401eea1db877ab32              # double 7.7286289999999997
	.quad	0x3fc176e6106ab14f              # double 0.13644100000000001
	.quad	0x4012437ac3eb7cbb              # double 4.5658979999999998
	.quad	0x40143a3c21187e7c              # double 5.05687
	.quad	0x3fe237281fd9ba1b              # double 0.56923299999999999
	.quad	0x40174c52e72da123              # double 5.824535
	.quad	0x40005d84901d1915              # double 2.0456629999999998
	.quad	0x3ff58b5350092ccf              # double 1.3465149999999999
	.quad	0x3fce9e5e2478854d              # double 0.239208
	.quad	0x4004dabe27179bfe              # double 2.606808
	.quad	0x40230c6195464dc2              # double 9.5241819999999997
	.quad	0x4002974cd31769a9              # double 2.323877
	.quad	0x4020b2f4adbc664d              # double 8.3495229999999996
	.quad	0x401ea2a2c2374795              # double 7.658824
	.quad	0x400bcb88ca3e7d13              # double 3.4743819999999999
	.quad	0x40205f90b8498809              # double 8.1866509999999995
	.quad	0x3fe801733226c3b9              # double 0.75017699999999998
	.quad	0x401581e71044f1a2              # double 5.3768580000000004
	.quad	0x3ffece453d20f2bf              # double 1.925359
	.quad	0x401f5d83c6c97d8d              # double 7.841323
	.quad	0x40111b1dd5d3dc8c              # double 4.2764810000000004
	.quad	0x401f8260f5e41d4b              # double 7.8773229999999996
	.quad	0x4020f692b3cc4ac7              # double 8.4815880000000003
	.quad	0x401c7c33f85510d4              # double 7.1212920000000004
	.quad	0x401b9fd933e35c5b              # double 6.9061019999999997
	.quad	0x40002d4dc65c7043              # double 2.0221209999999998
	.quad	0x40016473cd573648              # double 2.1740490000000001
	.quad	0x4018c354c122749f              # double 6.190753
	.quad	0x3ff1150fc71d6063              # double 1.067642
	.quad	0x40174898f605ab3b              # double 5.8208960000000003
	.quad	0x400bb74e65bea0ba              # double 3.4645049999999999
	.quad	0x4023b102795703f3              # double 9.8457220000000003
	.quad	0x4013abac2df0d413              # double 4.9176489999999999
	.quad	0x40191065b63d3e4f              # double 6.2660130000000001
	.quad	0x40216629307af20f              # double 8.6995330000000006
	.quad	0x4006186a8fc0d2c4              # double 2.7619220000000002
	.quad	0x3fee8509bf9c62a2              # double 0.95374000000000003
	.quad	0x4022e4c9a77e5eab              # double 9.4468510000000005
	.quad	0x400d2324c8366517              # double 3.6421600000000001
	.quad	0x401c8a57646ae3a4              # double 7.1350990000000003
	.quad	0x4020e4855da27286              # double 8.4463299999999997
	.quad	0x4020499c17225b75              # double 8.1437690000000007
	.quad	0x401859e1b089a027              # double 6.0877749999999997
	.quad	0x4010fe35c5b4aa97              # double 4.2482519999999999
	.quad	0x40220510f51ac9b0              # double 9.0098950000000002
	.quad	0x401964f8f8a4c1ec              # double 6.3486060000000002
	.quad	0x4012212c27a63737              # double 4.5323950000000002
	.quad	0x401f27b5f1bef49d              # double 7.78878
	.quad	0x3ff12c53b0813cac              # double 1.0733220000000001
	.quad	0x4015e4af4f0d844d              # double 5.473325
	.quad	0x4000eb723ee1bd1f              # double 2.1149640000000001
	.quad	0x401c5e72da122fad              # double 7.0922349999999996
	.quad	0x401feed41b75a74c              # double 7.983231
	.quad	0x3ffcffbbd7b2031d              # double 1.812435
	.quad	0x3fd597d06bbdbe3c              # double 0.337391
	.quad	0x4018e763e4abe6a3              # double 6.2259669999999998
	.quad	0x3fc9c903ea704bc2              # double 0.20144699999999999
	.quad	0x4016b8cc575c0768              # double 5.6804670000000002
	.quad	0x4001ae557de0d66f              # double 2.210124
	.quad	0x401c08c2e770bd01              # double 7.0085559999999996
	.quad	0x3feb84ad794a6eb9              # double 0.85994599999999999
	.quad	0x3fc93bafd976ff3b              # double 0.197134
	.quad	0x4023b6833c60029f              # double 9.8564699999999998
	.quad	0x3ff9c61f9f01b867              # double 1.61087
	.quad	0x400cdf5ad96a6a01              # double 3.6090599999999999
	.quad	0x401809e0e736049f              # double 6.0096470000000002
	.quad	0x401544a1272c94b4              # double 5.3170210000000004
	.quad	0x400aff36ac647779              # double 3.3746160000000001
	.quad	0x4006690795f676ea              # double 2.8012839999999999
	.quad	0x40205c195cc857f3              # double 8.179881
	.quad	0x401e01a975afaf86              # double 7.5016230000000004
	.quad	0x40188dd1a21ea359              # double 6.1384949999999998
	.quad	0x40137a4873365882              # double 4.8694170000000003
	.quad	0x4022037824d4cb9f              # double 9.0067760000000003
	.quad	0x40150f9d2bf55150              # double 5.2652479999999997
	.quad	0x40008a1a500d5e8d              # double 2.0674329999999999
	.quad	0x400fb976ff3ade22              # double 3.9655589999999998
	.quad	0x4023fd0bd87b56b8              # double 9.9942309999999991
	.quad	0x40103dfd694ccab4              # double 4.0605370000000001
	.quad	0x40077240fa9c12f1              # double 2.9307880000000002
	.quad	0x401c3aa0cae642c0              # double 7.0572540000000004
	.quad	0x3fc7f822bbecaab9              # double 0.18726000000000001
	.quad	0x4021bb700474d9c7              # double 8.8660890000000006
	.quad	0x401c3b71fbc5de9c              # double 7.058052
	.quad	0x400e4d3d859c8c93              # double 3.7877149999999999
	.quad	0x4017bcd20afa2f06              # double 5.9343950000000003
	.quad	0x4008d5f99c38b04b              # double 3.1044800000000001
	.quad	0x402121fadafd1138              # double 8.5663669999999996
	.quad	0x4020f87fed20296b              # double 8.4853509999999996
	.quad	0x401c47ed84d338f8              # double 7.0702420000000004
	.quad	0x40235ffae3608d09              # double 9.6874610000000007
	.quad	0x40195815e39713ad              # double 6.3360209999999997
	.quad	0x40213e80e0653006              # double 8.6220770000000009
	.quad	0x401c5e2b8c75c4a8              # double 7.0919629999999998
	.quad	0x4019a18eb8950764              # double 6.4077710000000003
	.quad	0x3fe40e38a7e73a36              # double 0.62673599999999996
	.quad	0x4013ba9e2bcf91a3              # double 4.9322439999999999
	.quad	0x401432b55ef1fddf              # double 5.0495200000000002
	.quad	0x401d55104d551d69              # double 7.3330700000000002
	.quad	0x402249d0203e63e9              # double 9.1441660000000002
	.quad	0x3faebdf4c2b51bd6              # double 0.060042999999999999
	.quad	0x3ffa0eca686e7e63              # double 1.628611
	.quad	0x402293a9b0681238              # double 9.2884039999999998
	.quad	0x3ff11794a6eb91b4              # double 1.068257
	.quad	0x3ffbee1049235f81              # double 1.7456210000000001
	.quad	0x4014dd701d9f4d38              # double 5.2162480000000002
	.quad	0x3fcf8655193708ab              # double 0.24628700000000001
	.quad	0x4011e1309c7ffde7              # double 4.4699119999999999
	.quad	0x401afa24894c447c              # double 6.7442799999999998
	.quad	0x3fd060b2c83ec893              # double 0.25590200000000002
	.quad	0x3fb26e115592d98c              # double 0.071992
	.quad	0x401944e054690de1              # double 6.3172620000000004
	.quad	0x3fe1e909aed56b01              # double 0.559697
	.quad	0x40179706d5065732              # double 5.8974869999999999
	.quad	0x402163c59b8023a7              # double 8.6948670000000003
	.quad	0x40196fe47991bc56              # double 6.3592700000000004
	.quad	0x400d516fc9bc7714              # double 3.6647639999999999
	.quad	0x40058e19b90ea9e7              # double 2.694385
	.quad	0x4018c9d12cadddf4              # double 6.1970869999999998
	.quad	0x3fe24d44567125dd              # double 0.571932
	.quad	0x3feb420b3d4ae42a              # double 0.85181200000000001
	.quad	0x401ea44a1f080304              # double 7.6604390000000002
	.quad	0x40086e746cb966be              # double 3.0539329999999998
	.quad	0x4021e370ac3a860e              # double 8.9442190000000004
	.quad	0x4006c94141e9af5c              # double 2.8482690000000002
	.quad	0x4022bd22c881e471              # double 9.3694059999999996
	.quad	0x401e773ffac1d29e              # double 7.6164550000000002
	.quad	0x402302569b17481b              # double 9.5045669999999997
	.quad	0x401057a311e85fd0              # double 4.0855829999999997
	.quad	0x4020b9d495182a99              # double 8.3629499999999997
	.quad	0x401c031ca7d6733f              # double 7.0030390000000002
	.quad	0x4002de7d9988d2a2              # double 2.358638
	.quad	0x3feb6a7ac81d3aa3              # double 0.85674799999999995
	.quad	0x4020e1bd8383ad9f              # double 8.4408989999999999
	.quad	0x40202c2aed139431              # double 8.0862649999999991
	.quad	0x401657fcfc3f811f              # double 5.5859259999999997
	.quad	0x3fdad35653c9abb0              # double 0.41914899999999999
	.quad	0x402242f7b17ce52e              # double 9.1307960000000001
	.quad	0x402166c4a4095f24              # double 8.7007189999999994
	.quad	0x3fdce10060780fdc              # double 0.451233
	.quad	0x4000570ef566490a              # double 2.0425089999999999
	.quad	0x4020c3dfd2630ec3              # double 8.3825669999999999
	.quad	0x40150e5b4245f5ae              # double 5.2640200000000004
	.quad	0x401aaf0068db8bac              # double 6.6708999999999996
	.quad	0x3fca8650e779207d              # double 0.20722399999999999
	.quad	0x3ffa2f640639d5e5              # double 1.6365700000000001
	.quad	0x401644e7253da72a              # double 5.5672879999999996
	.quad	0x3ff3e7b4e54f7a92              # double 1.2440690000000001
	.quad	0x400efd6d7e889c1b              # double 3.8737439999999999
	.quad	0x40199d2bb23571d2              # double 6.4034870000000002
	.quad	0x401cc9f98b71b8aa              # double 7.197241
	.quad	0x4006227c7c5260f6              # double 2.766839
	.quad	0x40179f694467381d              # double 5.9056749999999996
	.quad	0x40045c4651f3e89b              # double 2.5450560000000002
	.quad	0x4022cf4fb549f948              # double 9.4049049999999994
	.quad	0x401e3f31f46ed246              # double 7.5617140000000003
	.quad	0x40222aae4b018612              # double 9.083361
	.quad	0x3fef86876e1deacd              # double 0.98517200000000004
	.quad	0x3ff38023a6ce3583              # double 1.2187840000000001
	.quad	0x3fed386d2ed783e0              # double 0.913138
	.quad	0x3fe1a7136a400fbb              # double 0.55164500000000005
	.quad	0x401b0a8ef77f27fe              # double 6.7603109999999997
	.quad	0x4022f22cecc814d7              # double 9.4729989999999997
	.quad	0x4015a58d5842b735              # double 5.4116720000000003
	.quad	0x4017296c82e019b1              # double 5.7904530000000003
	.quad	0x400ed2ea52ef911d              # double 3.852986
	.quad	0x400157be9856a37b              # double 2.1678440000000001
	.quad	0x4006f3c4f3ba7760              # double 2.8690280000000001
	.quad	0x4013baf8df7a4e7b              # double 4.9325900000000003
	.quad	0x400e32146a1a500d              # double 3.7744529999999998
	.quad	0x40158ed6ba8c5868              # double 5.3894909999999996
	.quad	0x4020452aa5c5f7c6              # double 8.1350909999999992
	.quad	0x3ffec60aa64c2f83              # double 1.9233499999999999
	.quad	0x400437b07075b3e1              # double 2.5271919999999999
	.quad	0x3fde8d4fdf3b645a              # double 0.47737499999999999
	.quad	0x4002001cd5f99c39              # double 2.2500550000000001
	.quad	0x4021f620ccff21b4              # double 8.9807190000000005
	.quad	0x4015174f722e1ac5              # double 5.2727639999999996
	.quad	0x40161dce7cd03537              # double 5.5291079999999999
	.quad	0x3ff916b441bb8c33              # double 1.5680430000000001
	.quad	0x4014482f51266341              # double 5.0704929999999999
	.quad	0x40024c92146a1a50              # double 2.287388
	.quad	0x3ff8b6d549731099              # double 1.544637
	.quad	0x4017019d66adb403              # double 5.7515770000000002
	.quad	0x4004171e29b6b2af              # double 2.511288
	.quad	0x4002952d234eb9a1              # double 2.3228399999999998
	.quad	0x40073bfad2999568              # double 2.9042870000000001
	.quad	0x401f006705c896dd              # double 7.7503929999999998
	.quad	0x401da14bdfd2630f              # double 7.4075160000000002
	.quad	0x4023b60e94ee392e              # double 9.8555799999999998
	.quad	0x401a2436fc158fb4              # double 6.5353659999999998
	.quad	0x4021903ad9f0a1be              # double 8.7816989999999997
	.quad	0x400644484944ed70              # double 2.7833410000000001
	.quad	0x4022669ca9ef5233              # double 9.2004140000000003
	.quad	0x400b5e5d9e40c847              # double 3.4210769999999999
	.quad	0x4003490795f676ea              # double 2.4106589999999999
	.quad	0x40081700474d9c6b              # double 3.011231
	.quad	0x4010e6e3f78bbd38              # double 4.225479
	.quad	0x4016d3c68661ae71              # double 5.7068120000000002
	.quad	0x40232baba7b9170d              # double 9.5852939999999993
	.quad	0x3ff05a176ddaceee              # double 1.021995
	.quad	0x40099074a771c971              # double 3.195535
	.quad	0x401af8fbca1059ea              # double 6.7431479999999997
	.quad	0x400dd709310129cc              # double 3.7299980000000001
	.quad	0x401aa347e8ccdd94              # double 6.6594540000000002
	.quad	0x402356f75d9a0f0a              # double 9.6698559999999993
	.quad	0x4016dc65c70435f0              # double 5.7152320000000003
	.quad	0x401749c7ffde7211              # double 5.8220520000000002
	.quad	0x401d9d4d834091c1              # double 7.4036160000000004
	.quad	0x40177ae9ee45c359              # double 5.8700330000000003
	.quad	0x3fec62d40aaeafab              # double 0.88706399999999996
	.quad	0x400276fb8f57f738              # double 2.3080970000000001
	.quad	0x4023f855fbb517a4              # double 9.9850309999999993
	.quad	0x40231fc5ac471b48              # double 9.5620550000000008
	.quad	0x401d21e68a0d349c              # double 7.2831060000000001
	.quad	0x4022c18dac258d58              # double 9.3780339999999995
	.quad	0x401dd6b26bf8769f              # double 7.4596650000000002
	.quad	0x3ff14b9dc2f405f7              # double 1.0809610000000001
	.quad	0x3ff1c938583621fb              # double 1.111626
	.quad	0x3ff649667b5f1bef              # double 1.3929199999999999
	.quad	0x3fba1437c5692b3d              # double 0.101871
	.quad	0x40232e0b912dba4d              # double 9.5899319999999992
	.quad	0x4022c13dd97f62b7              # double 9.3774250000000005
	.quad	0x4005e7a28bb0a2cb              # double 2.7381030000000002
	.quad	0x400e5f43c7d5ed07              # double 3.796516
	.quad	0x4016d8d434a01abd              # double 5.7117469999999999
	.quad	0x40185c925785f8d3              # double 6.0904020000000001
	.quad	0x401e67a6bd6e8af8              # double 7.6012219999999999
	.quad	0x4020847ef177a701              # double 8.2587810000000008
	.quad	0x4020217d8cf398e9              # double 8.0654109999999992
	.quad	0x4018b2556d19dece              # double 6.1741539999999997
	.quad	0x401a0b4395810625              # double 6.5110000000000001
	.quad	0x4023654f5903a754              # double 9.6978709999999992
	.quad	0x4022e5c8323358f3              # double 9.4487930000000002
	.quad	0x401239f44d445671              # double 4.5565959999999999
	.quad	0x4013091600f34507              # double 4.7588730000000004
	.quad	0x401f17e49b1fab97              # double 7.773333
	.quad	0x4021754ed2cbea4f              # double 8.7291170000000005
	.quad	0x40218b4a87e38eb0              # double 8.7720529999999997
	.quad	0x4015acba732df506              # double 5.4186800000000002
	.quad	0x4020d7f84449dbec              # double 8.4218159999999997
	.quad	0x4016a186db50f40e              # double 5.6577409999999997
	.quad	0x40215ee47dc37a3e              # double 8.6853370000000005
	.quad	0x402069f53825e13b              # double 8.2069489999999998
	.quad	0x3ffb962ae4b01861              # double 1.724162
	.quad	0x40124d0aed99cbef              # double 4.5752370000000004
	.quad	0x4014845d41fa7653              # double 5.1292619999999998
	.quad	0x402086086bdf4c2b              # double 8.2617829999999994
	.quad	0x401fe72e6a76965f              # double 7.9757629999999997
	.quad	0x4016495421c04428              # double 5.5716099999999997
	.quad	0x401eacd9a52263d8              # double 7.6687989999999999
	.quad	0x401e94f54d1e96c4              # double 7.645467
	.quad	0x400b0ad256798959              # double 3.3802840000000001
	.quad	0x401ce005814940bc              # double 7.2187710000000003
	.quad	0x40142e5321e603d5              # double 5.0452389999999996
	.quad	0x40129c2699c7bcc3              # double 4.6524910000000004
	.quad	0x4023a76d97b30f8c              # double 9.8270079999999992
	.quad	0x4011249667b5f1bf              # double 4.28573
	.quad	0x3fe92322af577100              # double 0.78553899999999999
	.quad	0x40198620ab713272              # double 6.3809839999999998
	.quad	0x4023dd3e4ef0281c              # double 9.9321160000000006
	.quad	0x4015a84db9c7368b              # double 5.4143590000000001
	.quad	0x4007d5d13d74d595              # double 2.979403
	.quad	0x40236b3269df97ab              # double 9.7093690000000005
	.quad	0x401e1821294573a8              # double 7.5235640000000003
	.quad	0x400b154eb13dfb0d              # double 3.3854039999999999
	.quad	0x402345cb9a9da598              # double 9.6363190000000003
	.quad	0x4011722706d50657              # double 4.3614769999999998
	.quad	0x4008a5d63886594b              # double 3.080975
	.quad	0x402038fa58f7121b              # double 8.1112850000000005
	.quad	0x401ddec95bff0457              # double 7.4675649999999996
	.quad	0x4019daa9f7b5aea3              # double 6.4635389999999999
	.quad	0x401693b42cc2d6aa              # double 5.6442420000000002
	.quad	0x4001cc857f3061c8              # double 2.2248640000000002
	.quad	0x40115e718a86d71f              # double 4.3422299999999998
	.quad	0x3ffeafd32c625e9a              # double 1.917926
	.quad	0x40101b966be7afa7              # double 4.0269409999999999
	.quad	0x401feb78cc9a77e6              # double 7.9799530000000001
	.quad	0x400e14ec204f2ae0              # double 3.7602159999999998
	.quad	0x400f5844d013a92a              # double 3.9180999999999999
	.quad	0x40027609dcf893fb              # double 2.307636
	.quad	0x401234ff865d7cb3              # double 4.5517560000000001
	.quad	0x40042dcfcc5b8dc5              # double 2.5223689999999999
	.quad	0x3fed341e14bdfd26              # double 0.91261199999999998
	.quad	0x40114ef8487b99d4              # double 4.3271189999999997
	.quad	0x401dac660a201472              # double 7.4183579999999996
	.quad	0x400ec0789613d31c              # double 3.8439800000000002
	.quad	0x3ff0f52c9d16fc9c              # double 1.059857
	.quad	0x4017e49949e8815e              # double 5.9732409999999998
	.quad	0x3fec29bcfd4bf099              # double 0.88009499999999996
	.quad	0x3fc6fc69728a6117              # double 0.17957799999999999
	.quad	0x402053ea704bc276              # double 8.1638979999999997
	.quad	0x3ff44bd44998d046              # double 1.268513
	.quad	0x4021aa63736cdf26              # double 8.8327899999999993
	.quad	0x401a8ef77f27fe4c              # double 6.6396160000000002
	.quad	0x4020cedca07f66e8              # double 8.4040269999999992
	.quad	0x401179ce8d972cd8              # double 4.3689520000000002
	.quad	0x401415d95dd4c76d              # double 5.0213369999999999
	.quad	0x400f915592d98bf8              # double 3.945964
	.quad	0x400ebe132b55ef20              # double 3.8428100000000001
	.quad	0x3ffdc614163779ea              # double 1.860859
	.quad	0x3fa25d8d79d0a676              # double 0.035869999999999999
	.quad	0x4022a9613d31b9b6              # double 9.3308199999999992
	.quad	0x3ffb8cf6be37de94              # double 1.7219150000000001
	.quad	0x401fe656abde3fbc              # double 7.9749400000000001
	.quad	0x401f96adf71eafee              # double 7.8971479999999996
	.quad	0x4022207485e3da30              # double 9.0633890000000008
	.quad	0x3ff7f5946c332f01              # double 1.4974559999999999
	.quad	0x4002a0642396073e              # double 2.3283160000000001
	.quad	0x4010733bd9cae211              # double 4.112533
	.quad	0x402216874c8ffb8b              # double 9.0440009999999997
	.quad	0x40080a00192a7371              # double 3.004883
	.quad	0x40024d3c792d1288              # double 2.2877130000000001
	.quad	0x3ff4b1044f1a1987              # double 1.2932170000000001
	.quad	0x4005c06e9ff0cbb0              # double 2.7189610000000002
	.quad	0x4021160c17657753              # double 8.5430609999999998
	.quad	0x401dbf733a8a3f8a              # double 7.4369630000000004
	.quad	0x40236527a20578e6              # double 9.6975680000000004
	.quad	0x3ff045c896dd26b7              # double 1.017037
	.quad	0x400c67304039abf3              # double 3.5503849999999999
	.quad	0x3fe2a604e1e71045              # double 0.58276600000000001
	.quad	0x40161984e3ffef39              # double 5.524921
	.quad	0x401aee61cffeb075              # double 6.7327950000000003
	.quad	0x401174934267839d              # double 4.3638430000000001
	.quad	0x401c1fbb9496249a              # double 7.0309889999999999
	.quad	0x3fb45814940bbb1f              # double 0.079468999999999998
	.quad	0x4010700e27e0ef9a              # double 4.1094290000000004
	.quad	0x4013249667b5f1bf              # double 4.78573
	.quad	0x401adcb10342aa9f              # double 6.7155189999999996
	.quad	0x402323b9ae0c1765              # double 9.5697759999999991
	.quad	0x4020ca5093964a5a              # double 8.3951460000000004
	.quad	0x4009ae054690de09              # double 3.2099709999999999
	.quad	0x4020bcc100e6afcd              # double 8.3686600000000002
	.quad	0x4020b834d26fa3fd              # double 8.3597780000000004
	.quad	0x401677b395c42203              # double 5.6168959999999997
	.quad	0x401f11205bc01a37              # double 7.7667250000000001
	.quad	0x4017b19f7f8ca81a              # double 5.9234600000000004
	.quad	0x401c74d37c1376d5              # double 7.1140879999999997
	.quad	0x40210f0fe047d3d4              # double 8.5294179999999997
	.quad	0x4009c389f83be660              # double 3.220478
	.quad	0x402174fcc5b8dc55              # double 8.728491
	.quad	0x4011351f3e89a88b              # double 4.3018770000000002
	.quad	0x4021153e2d6238da              # double 8.5414899999999996
	.quad	0x4023883126e978d5              # double 9.766
	.quad	0x40191d1569f49060              # double 6.2784019999999998
	.quad	0x401bd112fd32c626              # double 6.9541740000000001
	.quad	0x4012a205ff1d81f1              # double 4.658226
	.quad	0x3fdc6d00b45ae600              # double 0.44415300000000002
	.quad	0x401046455eaee200              # double 4.0686239999999998
	.quad	0x401adf51efb6dca0              # double 6.7180859999999996
	.quad	0x4006a1626b2f2303              # double 2.8288009999999999
	.quad	0x3ff207a7c9de0503              # double 1.1268689999999999
	.quad	0x3ff79db9841aac54              # double 1.4760070000000001
	.quad	0x3ff764ce8101f31f              # double 1.4621109999999999
	.quad	0x40226260f5e41d4b              # double 9.1921459999999993
	.quad	0x401d00c73abc9470              # double 7.2507599999999996
	.quad	0x4015c8fd9fd36f7e              # double 5.4462799999999998
	.quad	0x401ddffde7210be9              # double 7.4687419999999998
	.quad	0x401f7d6238da3c21              # double 7.8724449999999999
	.quad	0x4022c9ffb480a5ad              # double 9.3945290000000003
	.quad	0x4020b8c111ada76e              # double 8.3608480000000007
	.quad	0x3ff8849667b5f1bf              # double 1.53237
	.quad	0x4007994a6eb91b3f              # double 2.9498489999999999
	.quad	0x40024fe154434e33              # double 2.2890039999999998
	.quad	0x400e34fc610f0e91              # double 3.7758720000000001
	.quad	0x4021d57082491afc              # double 8.9168739999999999
	.quad	0x3ff71a964e8b7e4e              # double 1.443991
	.quad	0x4023fdd462c343b7              # double 9.9957609999999998
	.quad	0x400316b2af145522              # double 2.3860830000000002
	.quad	0x4023d753c579f234              # double 9.9205609999999992
	.quad	0x4004ac669057d178              # double 2.5841799999999999
	.quad	0x3fc3dcbddb9841ab              # double 0.15517400000000001
	.quad	0x4023408effe2a3cf              # double 9.6260910000000006
	.quad	0x4019890795f676ea              # double 6.3838179999999998
	.quad	0x4021ed8a116659d1              # double 8.9639439999999997
	.quad	0x3fe091c087442c80              # double 0.51779200000000003
	.quad	0x401516e221c8a7a4              # double 5.2723469999999999
	.quad	0x40201e492bc2fc69              # double 8.0591519999999992
	.quad	0x3fe1618ce2d1f1d0              # double 0.54315800000000003
	.quad	0x3fe05a836eb4e981              # double 0.51104899999999998
	.quad	0x40093bbc6eb0b7c3              # double 3.1541679999999999
	.quad	0x401d121294573a79              # double 7.2676489999999996
	.quad	0x3feb860dcb9a9da6              # double 0.86011400000000005
	.quad	0x4007f0be9424e593              # double 2.9925510000000002
	.quad	0x401c9985271bcdbc              # double 7.1499220000000001
	.quad	0x4003e57e23f24d90              # double 2.4870570000000001
	.quad	0x3ffea4d3bf2f5558              # double 1.915241
	.quad	0x3ff847c6327ed84d              # double 1.517523
	.quad	0x4023798a222d5172              # double 9.7373820000000002
	.quad	0x4012d3e186983516              # double 4.7069150000000004
	.quad	0x4003b7281fd9ba1b              # double 2.464432
	.quad	0x40190e368f084620              # double 6.2638800000000003
	.quad	0x401de207d4e09785              # double 7.4707330000000001
	.quad	0x401dca919695d91b              # double 7.4478210000000002
	.quad	0x40167558a7610279              # double 5.6145959999999997
	.quad	0x4011c15f02c4d65e              # double 4.4388389999999998
	.quad	0x3fd2af038e29f9cf              # double 0.29193200000000002
	.quad	0x4021133a8a3f8983              # double 8.5375560000000004
	.quad	0x4008fd30ad46f588              # double 3.1236280000000001
	.quad	0x400502c5e2cdc012              # double 2.6263540000000001
	.quad	0x401e92cd39da1661              # double 7.6433609999999996
	.quad	0x40222a9e90795f67              # double 9.0832409999999992
	.quad	0x4021d5a20ddc6195              # double 8.9172519999999995
	.quad	0x4017f0d66f0cfe15              # double 5.9851929999999998
	.quad	0x3fc98fbca1059ea5              # double 0.19969899999999999
	.quad	0x401472bf11f926c8              # double 5.1120570000000001
	.quad	0x40167e7a743a6480              # double 5.6235140000000001
	.quad	0x3fefe501e2584f4c              # double 0.99670499999999995
	.quad	0x4022e9b60ae9680e              # double 9.456467
	.quad	0x401263311a543f1c              # double 4.5968669999999996
	.quad	0x4018701f75104d55              # double 6.1094949999999999
	.quad	0x401015019f3c70ca              # double 4.0205140000000004
	.quad	0x3ffc95a3a08398a6              # double 1.7865329999999999
	.quad	0x4005deb18116ebd5              # double 2.7337370000000001
	.quad	0x40206f40c4156e26              # double 8.2172909999999995
	.quad	0x3fedba08398a6549              # double 0.92895899999999998
	.quad	0x401642174c4cdfad              # double 5.5645420000000003
	.quad	0x4011bebedfa43fe6              # double 4.4362750000000002
	.quad	0x4000417225b749ae              # double 2.0319560000000001
	.quad	0x400cf8bf7f06705d              # double 3.6214590000000002
	.quad	0x3ff150fe8ab4fa48              # double 1.082274
	.quad	0x4010ae1eb4202d9d              # double 4.1700390000000001
	.quad	0x3fe43854046412cf              # double 0.63187599999999999
	.quad	0x40025744f5d35654              # double 2.2926120000000001
	.quad	0x3fbf56c93a711516              # double 0.122418
	.quad	0x40234837b4a2339c              # double 9.6410499999999998
	.quad	0x4017e3f572de43ee              # double 5.9726160000000004
	.quad	0x3ffa803148776816              # double 1.6562969999999999
	.quad	0x40110c9fb6134ce4              # double 4.2623280000000001
	.quad	0x4012aa67620ee8d1              # double 4.6664099999999999
	.quad	0x402106abde3fbbd8              # double 8.5130300000000005
	.quad	0x402380ea7ce0fc2f              # double 9.7517890000000004
	.quad	0x3ff86222d5171e2a              # double 1.5239590000000001
	.quad	0x4023ccd91eeaa6d2              # double 9.9000939999999993
	.quad	0x4001183be6601bca              # double 2.1368330000000002
	.quad	0x3ff1464ba94bbe44              # double 1.0796619999999999
	.quad	0x3ff1c80f98fa3769              # double 1.111343
	.quad	0x40162ef88b977857              # double 5.5458699999999999
	.quad	0x4006a03925bb7b6c              # double 2.8282340000000001
	.quad	0x400ebdd00f776c48              # double 3.8426819999999999
	.quad	0x4020a1ef954eb13e              # double 8.316281
	.quad	0x401f25796bfca85d              # double 7.7865960000000002
	.quad	0x4014bc5a8155d5f5              # double 5.1839389999999996
	.quad	0x401adcbab649d389              # double 6.7155560000000003
	.quad	0x40132c73eee52589              # double 4.7934109999999999
	.quad	0x3ffc6c17ebaf1023              # double 1.7763899999999999
	.quad	0x401904e054690de1              # double 6.2547620000000004
	.quad	0x3fddaa9b499d0204              # double 0.46353800000000001
	.quad	0x4022548a159817b9              # double 9.1651159999999994
	.quad	0x4020dc0aaeafab54              # double 8.4297690000000002
	.quad	0x3ff1cbff47735c18              # double 1.112304
	.quad	0x401e75d80e496edf              # double 7.6150820000000001
	.quad	0x401b262f9ca5bd94              # double 6.7872909999999997
	.quad	0x4023446fbd273d5c              # double 9.6336650000000005
	.quad	0x4021b9e8a2ec28b3              # double 8.8631030000000006
	.quad	0x400b1abfb9bed30f              # double 3.388061
	.quad	0x401dc29cfdd22856              # double 7.4400519999999997
	.quad	0x3ff3e4649906cca3              # double 1.24326
	.quad	0x3fce0b34e7685986              # double 0.23471700000000001
	.quad	0x400c58dde7a743a6              # double 3.5433919999999999
	.quad	0x3fe1bbb83cf2cf96              # double 0.55416500000000002
	.quad	0x4022ffe931876189              # double 9.4998260000000005
	.quad	0x4011ec83ec892ab7              # double 4.4809720000000004
	.quad	0x400f057c0b135979              # double 3.877678
	.quad	0x4011046887a8d64d              # double 4.2543049999999996
	.quad	0x40233e7b1c0010c7              # double 9.622033
	.quad	0x401d5e5bc87db2b3              # double 7.3421469999999998
	.quad	0x4021f3eab367a0f9              # double 8.9763999999999999
	.quad	0x401abb6aa4b9884c              # double 6.6830239999999996
	.quad	0x401db841aac53b08              # double 7.4299379999999999
	.quad	0x3fe15fd694ccab3f              # double 0.54294900000000001
	.quad	0x4016b121ab4b72c5              # double 5.6729799999999999
	.quad	0x401906f1dc50ce4f              # double 6.2567820000000003
	.quad	0x40220a52263d816b              # double 9.0201580000000003
	.quad	0x401a5b69984a0e41              # double 6.58927
	.quad	0x3ff9f524399b2c41              # double 1.622349
	.quad	0x400536b2af145522              # double 2.6517080000000002
	.quad	0x400bd55475a31a4c              # double 3.4791650000000001
	.quad	0x401cba4e379b77c0              # double 7.1819389999999999
	.quad	0x4020b37de939eadd              # double 8.3505699999999994
	.quad	0x401d697204295a6c              # double 7.3529739999999997
	.quad	0x401a1446f9b994e2              # double 6.5198020000000003
	.quad	0x400844a8c154c986              # double 3.033525
	.quad	0x40204de892253112              # double 8.1521650000000001
	.quad	0x4017034bd76ee73e              # double 5.7532189999999996
	.quad	0x401cfe6e221c8a7a              # double 7.2484669999999998
	.quad	0x400398ea7ce0fc2f              # double 2.4496660000000001
	.quad	0x3ff3a28027d88c1e              # double 1.2271730000000001
	.quad	0x3fe2d816aceaaf36              # double 0.58887800000000001
	.quad	0x4023161650a45d42              # double 9.543139
	.quad	0x4023a69835158b82              # double 9.8253799999999991
	.quad	0x3ff749784ec636b1              # double 1.4554370000000001
	.quad	0x3fe29b1b79d909f2              # double 0.58143400000000001
	.quad	0x400002acb85a4f01              # double 2.001306
	.quad	0x3ff7888c60cbf2b2              # double 1.470837
	.quad	0x400dc0cae642bf98              # double 3.7191369999999999
	.quad	0x4014564d3bf2f556              # double 5.0842790000000004
	.quad	0x40226a13c254a3c6              # double 9.2071819999999995
	.quad	0x400fcc6e6d9be4cd              # double 3.9748199999999998
	.quad	0x4014df07bfe7e1fc              # double 5.217803
	.quad	0x3ffb1271bcdbbe01              # double 1.6920029999999999
	.quad	0x4014d1f14983d790              # double 5.2050219999999996
	.quad	0x3ffe573b85e80bed              # double 1.8962969999999999
	.quad	0x4017edcc63f14120              # double 5.9822249999999997
	.quad	0x4021c346bacf7447              # double 8.881399
	.quad	0x401c8cd39da16617              # double 7.1375260000000003
	.quad	0x4011a07f23cc8de3              # double 4.4067350000000003
	.quad	0x401f99691a75cd0c              # double 7.8998150000000003
	.quad	0x401ef7fa1a0cf180              # double 7.742165
	.quad	0x402230c5eb313be2              # double 9.0952599999999997
	.quad	0x401be41b328b6d87              # double 6.9727600000000001
	.quad	0x40125a49c2c1b110              # double 4.5881720000000001
	.quad	0x3ffd4ea077036c9c              # double 1.831696
	.quad	0x400ba7179bfdf7e8              # double 3.456588
	.quad	0x3fdff6f08cc575c0              # double 0.49944699999999997
	.quad	0x401b4fb6dca07f67              # double 6.8278460000000001
	.quad	0x4014cc729f59ccfb              # double 5.1996560000000001
	.quad	0x40228d2f7f498c3b              # double 9.2757529999999999
	.quad	0x40239064883fd502              # double 9.7820169999999997
	.quad	0x400ee8e368f08462              # double 3.863715
	.quad	0x401ed490a350d280              # double 7.7075829999999996
	.quad	0x400c5a2834d26fa4              # double 3.544022
	.quad	0x4019484d76ab5808              # double 6.320608
	.quad	0x4023d1acde19fc2b              # double 9.9095220000000008
	.quad	0x40134095f2452c5a              # double 4.813072
	.quad	0x401cb467be553ac5              # double 7.176177
	.quad	0x400df71327243138              # double 3.7456420000000001
	.quad	0x400ceb2314013ec4              # double 3.6148129999999998
	.quad	0x3fcb62845996744b              # double 0.213944
	.quad	0x401bcb65ecc3e319              # double 6.9486309999999998
	.quad	0x3ff7f182235b4edb              # double 1.496462
	.quad	0x4006291afc04c8bd              # double 2.7700710000000002
	.quad	0x4022062f7b17ce53              # double 9.0120810000000002
	.quad	0x3fde3f1843c3a42f              # double 0.47260099999999999
	.quad	0x40179c714fce746d              # double 5.9027760000000002
	.quad	0x401aea5c1c6088d7              # double 6.7288670000000002
	.quad	0x4022ad701d9f4d38              # double 9.3387460000000004
	.quad	0x40118621fafc8b00              # double 4.3809889999999996
	.quad	0x4017db3d4ae429e1              # double 5.9641010000000003
	.quad	0x3ffb968f8e7ddca5              # double 1.7242580000000001
	.quad	0x401d4764adff822c              # double 7.3197200000000002
	.quad	0x40062df8b1572581              # double 2.7724470000000001
	.quad	0x401a7e108c3f3e03              # double 6.6231099999999996
	.quad	0x3fca9b845564b663              # double 0.207871
	.quad	0x4020f48882f0e0a8              # double 8.4776039999999995
	.quad	0x401b2e49f51697f2              # double 6.795204
	.quad	0x400b517acc4ef88c              # double 3.4147850000000002
	.quad	0x402164258d5842b7              # double 8.6955989999999996
	.quad	0x40005aad601ffb48              # double 2.044276
	.quad	0x401695b70691ea79              # double 5.6462060000000003
	.quad	0x401da6323bbc6eb1              # double 7.4123010000000003
	.quad	0x401c2fdbd2fa0d78              # double 7.0467370000000003
	.quad	0x4013e963dc486ad3              # double 4.9779200000000001
	.quad	0x4006164bec679cc7              # double 2.7608869999999999
	.quad	0x3feb195cc857f306              # double 0.84684599999999999
	.quad	0x4015b61e0c5a8156              # double 5.4278490000000001
	.quad	0x401962a51e321a2e              # double 6.3463329999999996
	.quad	0x402051212513b5bf              # double 8.1584559999999993
	.quad	0x4000102b40f66a55              # double 2.007895
	.quad	0x3ffb380ecfa69be1              # double 1.7011860000000001
	.quad	0x40101de7ea5f84cb              # double 4.0292050000000001
	.quad	0x3ff829bae46cfc83              # double 1.5101880000000001
	.quad	0x40009ff583a53b8e              # double 2.0781049999999999
	.quad	0x4008862f5989df11              # double 3.0655199999999998
	.quad	0x40172a704bc27632              # double 5.7914440000000003
	.quad	0x40225fbaa9b499d0              # double 9.1869709999999998
	.quad	0x40160d6dc1a47a9e              # double 5.5131139999999998
	.quad	0x402358d6f544bb1b              # double 9.673515
	.quad	0x3ff77b70ef566491              # double 1.4676370000000001
	.quad	0x3fd78e15011904b4              # double 0.36804700000000001
	.quad	0x3fee8fc2eba27aea              # double 0.95504900000000004
	.quad	0x400ffb19e731d2e1              # double 3.9976080000000001
	.quad	0x3fed8398a65492ff              # double 0.92231399999999997
	.quad	0x4020d76124074645              # double 8.4206629999999993
	.quad	0x400918cb8e086bdf              # double 3.1371069999999999
	.quad	0x4017b2c343b70ef5              # double 5.9245729999999996
	.quad	0x4005d0b5aa715832              # double 2.726909
	.quad	0x3ffa3f8012dfd695              # double 1.640503
	.quad	0x3feef8e9f6a93f29              # double 0.96788499999999999
	.quad	0x40181aceee0f3cb4              # double 6.0261800000000001
	.quad	0x3ff0ac13b9f127f6              # double 1.042011
	.quad	0x4012a8a761027957              # double 4.664701
	.quad	0x401afb11c6d1e109              # double 6.7451850000000002
	.quad	0x4019615db3397dd0              # double 6.3450839999999999
	.quad	0x4012bf06705c896e              # double 4.6865480000000002
	.quad	0x3ffed171e29b6b2b              # double 1.926134
	.quad	0x3fc48c36da87a073              # double 0.16052900000000001
	.quad	0x4009fc99ae924f22              # double 3.2483399999999998
	.quad	0x401b5f12c27a6373              # double 6.8428449999999996
	.quad	0x4023f547bedb7282              # double 9.979063
	.quad	0x4011bedbf8b9baa1              # double 4.4363859999999997
	.quad	0x3ff9b53a3ec02f30              # double 1.6067450000000001
	.quad	0x3ffd909070fbeb9e              # double 1.8477939999999999
	.quad	0x40026b3e5753a3ec              # double 2.302365
	.quad	0x3ff5e2467be553ac              # double 1.3677429999999999
	.quad	0x401825a8155d5f57              # double 6.0367740000000003
	.quad	0x40197f5558212945              # double 6.3743489999999996
	.quad	0x40168596c82e019b              # double 5.630458
	.quad	0x400da36976bc1f00              # double 3.7047910000000002
	.quad	0x40121c2a454de7ea              # double 4.5275049999999997
	.quad	0x4010b450268900c5              # double 4.1760869999999999
	.quad	0x40212f4080f98fa3              # double 8.5922889999999992
	.quad	0x40127959e6256367              # double 4.6185070000000001
	.quad	0x401adbb4916ca46e              # double 6.714556
	.quad	0x40176280f12c27a6              # double 5.8461949999999998
	.quad	0x40012c2f837b4a23              # double 2.1465749999999999
	.quad	0x4000d3e78e1932d7              # double 2.103469
	.quad	0x400d837de939eadd              # double 3.6892049999999998
	.quad	0x40226b6134ce3de6              # double 9.2097259999999999
	.quad	0x4008e3526527a205              # double 3.1109969999999998
	.quad	0x4000d016ce789e77              # double 2.1016059999999999
	.quad	0x4023759ab6d00b46              # double 9.7296960000000006
	.quad	0x401bb8a50507a6bd              # double 6.9303169999999996
	.quad	0x40236970f7b9e061              # double 9.70594
	.quad	0x401ff0a915379fa9              # double 7.9850199999999995
	.quad	0x40232776e6106ab1              # double 9.5770789999999994
	.quad	0x400831aa821f2991              # double 3.024251
	.quad	0x4020af6a93f290ac              # double 8.3426100000000005
	.quad	0x400df36933a0407d              # double 3.7438530000000001
	.quad	0x3fa80f776c4827b7              # double 0.046993
	.quad	0x3fdc0b3d4ae429e1              # double 0.43818600000000002
	.quad	0x3fd5ced4e4c942d5              # double 0.34074900000000002
	.quad	0x400cc0e38a7e73a3              # double 3.5941839999999998
	.quad	0x3ffc8639d5e4a383              # double 1.78277
	.quad	0x40111e17e34b9453              # double 4.279388
	.quad	0x3ffd45681ecd4aa1              # double 1.829445
	.quad	0x4020fa7ae9ab29e5              # double 8.4892190000000003
	.quad	0x4016c5d462c343b7              # double 5.6931929999999999
	.quad	0x4020372367e414e8              # double 8.1076920000000001
	.quad	0x40073ff25e56cd6c              # double 2.9062239999999999
	.quad	0x3fe1cf483cafb3b7              # double 0.55655299999999996
	.quad	0x401f478290689870              # double 7.8198340000000002
	.quad	0x3fe1ff0aa21a719b              # double 0.56238299999999997
	.quad	0x402299ed9dfdac69              # double 9.3006410000000006
	.quad	0x4022233721d53cde              # double 9.0687800000000003
	.quad	0x4005627525460aa6              # double 2.6730749999999999
	.quad	0x40152ce28ed5f139              # double 5.2938330000000002
	.quad	0x3fc16b3354c12275              # double 0.13608400000000001
	.quad	0x4001a24f6598e10d              # double 2.204253
	.quad	0x3ff0b7329c347e8d              # double 1.044726
	.quad	0x401e08dac258d584              # double 7.5086469999999998
	.quad	0x4005b3ea2d2fe3f3              # double 2.7128489999999998
	.quad	0x4008d7e23f24d8fd              # double 3.1054119999999998
	.quad	0x4011eb2f661f18ca              # double 4.479673
	.quad	0x3ff8c45564b662fe              # double 1.547933
	.quad	0x3fcf57689ca18bd6              # double 0.24485499999999999
	.quad	0x401f6a49c2c1b110              # double 7.8537970000000001
	.quad	0x400b3641f644955b              # double 3.4014929999999999
	.quad	0x4019733a8a3f8983              # double 6.3625280000000002
	.quad	0x3ff80c1333b96af0              # double 1.502948
	.quad	0x401f4ccfaeff5c6c              # double 7.8250109999999999
	.quad	0x401fe1b79d909f1f              # double 7.9704269999999999
	.quad	0x400302bc72e275ab              # double 2.3763359999999998
	.quad	0x400c40346dc5d639              # double 3.5313500000000002
	.quad	0x3ffeee5abc0e38a8              # double 1.933192
	.quad	0x4012e7a7008a697b              # double 4.7262230000000001
	.quad	0x3ff69220ff540896              # double 1.410676
	.quad	0x3ff920ed80a17b0f              # double 1.5705389999999999
	.quad	0x3ffa6897635e742a              # double 1.6505350000000001
	.quad	0x40107cfb3311a544              # double 4.122052
	.quad	0x3fbf8fcd67fd3f5b              # double 0.12328799999999999
	.quad	0x400a6a1272c94b38              # double 3.301793
	.quad	0x3ff8e653868fd19a              # double 1.5562320000000001
	.quad	0x4023a00389f83be6              # double 9.8125269999999993
	.quad	0x401f8b81733226c4              # double 7.8862360000000002
	.quad	0x402244e65bea0ba2              # double 9.1345700000000001
	.quad	0x40091c4b90214ad3              # double 3.1388159999999998
	.quad	0x401d02dcf4623d0c              # double 7.252796
	.quad	0x4011ace6c093d966              # double 4.4188489999999998
	.quad	0x4001b20d9945b6c3              # double 2.2119399999999998
	.quad	0x401b297fa5d28d00              # double 6.7905259999999998
	.quad	0x4020969df97aaac1              # double 8.2941739999999999
	.quad	0x3fd989118c197e56              # double 0.39899099999999998
	.quad	0x4020372b020c49ba              # double 8.1077499999999993
	.quad	0x401dbdd82fd75e20              # double 7.4353949999999998
	.quad	0x4008d1290257c915              # double 3.1021290000000001
	.quad	0x4006cd6b228dc982              # double 2.8503020000000001
	.quad	0x402293c947064ecf              # double 9.2886450000000007
	.quad	0x4008775e2046c765              # double 3.0582850000000001
	.quad	0x4001878854cdb7ae              # double 2.1911779999999998
	.quad	0x400c9b24638c9753              # double 3.5757530000000002
	.quad	0x401393c5bd0e12e8              # double 4.8943089999999998
	.quad	0x40171b020c49ba5e              # double 5.7763749999999998
	.quad	0x4011eb0e1b4bb5e1              # double 4.479546
	.quad	0x4016f277c45cbbc3              # double 5.7367850000000002
	.quad	0x401ac88094e5d5b2              # double 6.6958029999999997
	.quad	0x40003986338b47c7              # double 2.0280879999999999
	.quad	0x401a78d7e02645e5              # double 6.6180110000000001
	.quad	0x3fe1046e8f29d40f              # double 0.53179100000000001
	.quad	0x3ff676577531db44              # double 1.4038919999999999
	.quad	0x401c7495182a9931              # double 7.1138500000000002
	.quad	0x401d04be835dedf2              # double 7.2546330000000001
	.quad	0x4010bb9b66f9335d              # double 4.1832099999999999
	.quad	0x3fdb68fd199bb279              # double 0.42828300000000002
	.quad	0x401b7589efd86a90              # double 6.8647840000000002
	.quad	0x400f81450efdc9c5              # double 3.9381200000000001
	.quad	0x401be325918a009f              # double 6.9718229999999997
	.quad	0x401027a89331a08c              # double 4.038729
	.quad	0x400955bb384fd2a6              # double 3.1668609999999999
	.quad	0x40233746cb966be8              # double 9.6079620000000005
	.quad	0x401dfdadb8348f54              # double 7.4977330000000002
	.quad	0x402059afc04c8bca              # double 8.1751690000000004
	.quad	0x4019862a5e785b5b              # double 6.3810209999999996
	.quad	0x401304fb97bb7308              # double 4.7548659999999998
	.quad	0x4018aa00192a7371              # double 6.1660159999999999
	.quad	0x40206e5668c26139              # double 8.215503
	.quad	0x40106c7b890d5a5c              # double 4.1059400000000004
	.quad	0x3ffff800218def41              # double 1.9980469999999999
	.quad	0x402047e586013661              # double 8.1404230000000002
	.quad	0x401bcb62413db7f1              # double 6.9486169999999996
	.quad	0x4022260a63305101              # double 9.0742980000000006
	.quad	0x40118f4128bf3beb              # double 4.3898970000000004
	.quad	0x4015409bb6aa4b99              # double 5.3130940000000004
	.quad	0x3fcb97f62b6ae7d5              # double 0.21557499999999999
	.quad	0x401db386d2ed783e              # double 7.425319
	.quad	0x401aec03bc4d22c9              # double 6.7304830000000004
	.quad	0x40104d4c33b53932              # double 4.0754859999999997
	.quad	0x40104045fe111277              # double 4.062767
	.quad	0x401c1abda0dfdef8              # double 7.0261139999999997
	.quad	0x3fb467be553ac4f8              # double 0.079708000000000001
	.quad	0x40217bd3e4ef0282              # double 8.7418510000000005
	.quad	0x3ff6af6a50d6b229              # double 1.417826
	.quad	0x4007efede97d06bc              # double 2.9921530000000001
	.quad	0x3fe7ecce5f7403de              # double 0.74765700000000002
	.quad	0x402310ec0f883340              # double 9.5330510000000003
	.quad	0x40204b4e3369b9d8              # double 8.147081
	.quad	0x4013d0fe8ab4fa48              # double 4.9540959999999998
	.quad	0x401deb630a91537a              # double 7.47987
	.quad	0x401fa1272c94b381              # double 7.9073760000000001
	.quad	0x400537e889c1b542              # double 2.6522990000000002
	.quad	0x4011b98f605ab3ab              # double 4.4312110000000002
	.quad	0x400e6d1aeb3dd11c              # double 3.803274
	.quad	0x40173211cb039ef1              # double 5.7988960000000001
	.quad	0x400584295a6c5d20              # double 2.6895319999999998
	.quad	0x401031cd5f99c38b              # double 4.048635
	.quad	0x4022b551f81a5871              # double 9.3541410000000002
	.quad	0x3ff4d9ac79702e66              # double 1.3031429999999999
	.quad	0x4004c10cf5b1c865              # double 2.5942630000000002
	.quad	0x401777f3061c79b3              # double 5.8671379999999997
	.quad	0x400102938de6ddf0              # double 2.126258
	.quad	0x402089fd1569f490              # double 8.2695089999999993
	.quad	0x3fe72b55ef1fddec              # double 0.72404000000000002
	.quad	0x4020e37a5f41aef7              # double 8.444293
	.quad	0x4018070ef566490a              # double 6.0068929999999998
	.quad	0x4021f150fc71d606              # double 8.9713209999999997
	.quad	0x401d8c7ef177a701              # double 7.3872030000000004
	.quad	0x401ba9ef0f16f438              # double 6.9159509999999997
	.quad	0x40127bbb62413db8              # double 4.6208320000000001
	.quad	0x4022890cf5b1c865              # double 9.2676770000000008
	.quad	0x401c7cb9a9da597d              # double 7.1218019999999997
	.quad	0x4023ac4c5974e65c              # double 9.8365200000000001
	.quad	0x40176f02c4d65e46              # double 5.858409
	.quad	0x401afd0d0678c005              # double 6.7471199999999998
	.quad	0x4021c0049667b5f2              # double 8.8750350000000005
	.quad	0x40226673e681a9b9              # double 9.2001030000000004
	.quad	0x40220429bf162ae5              # double 9.0081310000000006
	.quad	0x3fc753a3ec02f2fa              # double 0.18224000000000001
	.quad	0x4007a746cb966be8              # double 2.9566780000000001
	.quad	0x402121ca9ef5232d              # double 8.5659989999999997
	.quad	0x4018e94e5d5b24ea              # double 6.2278380000000002
	.quad	0x4019c38fffbce421              # double 6.4409789999999996
	.quad	0x40184460ed80a17b              # double 6.0667759999999999
	.quad	0x40055cc6c54bcf0b              # double 2.6703009999999998
	.quad	0x400b4cfa69be09bb              # double 3.4125869999999998
	.quad	0x3ffa71769a91105e              # double 1.652701
	.quad	0x3ff58bc382a12f90              # double 1.346622
	.quad	0x3fc403cd141a6938              # double 0.156366
	.quad	0x401cb87f88765ba7              # double 7.1801740000000001
	.quad	0x3fe2103ea704bc27              # double 0.56448299999999996
	.quad	0x400c49f16b11c6d2              # double 3.5361050000000001
	.quad	0x3ffacf28c79f6662              # double 1.675576
	.quad	0x3fdcb9c304ccee5b              # double 0.44883800000000001
	.quad	0x40221742dcf4623d              # double 9.0454319999999999
	.quad	0x40004827b6fe2e6f              # double 2.0352320000000002
	.quad	0x4010139192641b33              # double 4.0191100000000004
	.quad	0x3fe97f737da61e0c              # double 0.79680799999999996
	.quad	0x4000001b43526528              # double 2.0000520000000002
	.quad	0x40157c15097c8084              # double 5.3711739999999999
	.quad	0x4015070b06c43f60              # double 5.2568780000000004
	.quad	0x4020b11dffc5479d              # double 8.3459319999999995
	.quad	0x400b364f97edc7ef              # double 3.401519
	.quad	0x4023282d7b634dad              # double 9.5784719999999996
	.quad	0x40176f5cf2495e18              # double 5.8587530000000001
	.quad	0x4010334acaff6d33              # double 4.05009
	.quad	0x4004cee06d938152              # double 2.6010140000000002
	.quad	0x400a77585be1a826              # double 3.3082739999999999
	.quad	0x3ff0aefc371da37f              # double 1.042721
	.quad	0x401087b2031ceaf2              # double 4.1325149999999997
	.quad	0x40207087ebf22c02              # double 8.2197870000000002
	.quad	0x401a8ee02a77a2cf              # double 6.6395270000000002
	.quad	0x40191d640e9d51b5              # double 6.278702
	.quad	0x401128f041461b6d              # double 4.2899789999999998
	.quad	0x401ceaeee957470f              # double 7.2294270000000003
	.quad	0x40173fa76534373f              # double 5.8121619999999998
	.quad	0x401d0612c6ac215c              # double 7.2559310000000004
	.quad	0x4018ba786c22680a              # double 6.1821000000000002
	.quad	0x400049efd86a8fc1              # double 2.0361020000000001
	.quad	0x401234944ed6fda8              # double 4.5513469999999998
	.quad	0x3f9c4bd33d29563b              # double 0.027633000000000001
	.quad	0x4021b4e0fc2eba28              # double 8.8532790000000006
	.quad	0x402053504c48adef              # double 8.1627220000000005
	.quad	0x40009681ecd4aa11              # double 2.0734900000000001
	.quad	0x401c5dcdf6987831              # double 7.0916059999999996
	.quad	0x401f618c197e5647              # double 7.8452609999999998
	.quad	0x401502e05ccc89b1              # double 5.2528090000000001
	.quad	0x4023ffc2224edf61              # double 9.9995279999999997
	.quad	0x401a5229a5ebb774              # double 6.5802370000000003
	.quad	0x401c12c7325918a0              # double 7.018338
	.quad	0x3ffc0317acc4ef89              # double 1.7507550000000001
	.quad	0x3fea54b05b7cfe58              # double 0.82283799999999996
	.quad	0x4023287f023e9ea1              # double 9.5790939999999995
	.quad	0x400cae67d77fae36              # double 3.585159
	.quad	0x4023f2235b4edb2f              # double 9.9729259999999992
	.quad	0x4014f3d102bc72e2              # double 5.2381019999999996
	.quad	0x4001737542a23c00              # double 2.1813760000000002
	.quad	0x40117be2f7b17ce5              # double 4.3709829999999998
	.quad	0x402099131ec0b567              # double 8.2989739999999994
	.quad	0x40211f51ac9afe1e              # double 8.5611700000000006
	.quad	0x4017dd816aceaaf3              # double 5.9663139999999997
	.quad	0x402194302b40f66a              # double 8.7894299999999994
	.quad	0x4010c375c8d9f905              # double 4.1908789999999998
	.quad	0x4011e846a5d6bebe              # double 4.4768319999999999
	.quad	0x40126a75cd0bb6ed              # double 4.6039649999999996
	.quad	0x400493461309c800              # double 2.5719110000000001
	.quad	0x3ff2b1ceaf251c19              # double 1.1684099999999999
	.quad	0x401ff02b841248d8              # double 7.9845410000000001
	.quad	0x3fd0d5a5b9628cbd              # double 0.26304
	.quad	0x400145fe111276fb              # double 2.159176
	.quad	0x4021dc29bf162ae5              # double 8.9300060000000006
	.quad	0x402356fb4c3c18b5              # double 9.6698859999999999
	.quad	0x401d5753a3ec02f3              # double 7.33528
	.quad	0x40239de785b5b707              # double 9.8084070000000007
	.quad	0x3ff235d031055b8a              # double 1.1381380000000001
	.quad	0x4003d9be4cd74928              # double 2.4813200000000002
	.quad	0x4020774f93bc0a07              # double 8.2330290000000002
	.quad	0x40104ecd07852f7f              # double 4.0769539999999997
	.quad	0x40194a5ce5b4245f              # double 6.3226199999999997
	.quad	0x4020c8eabffcdab2              # double 8.3924160000000008
	.quad	0x4023e0d759ee88df              # double 9.9391429999999996
	.quad	0x3fe467620ee8d10f              # double 0.63761999999999996
	.quad	0x401acf4128bf3beb              # double 6.7023970000000004
	.quad	0x40102ed84d338f7a              # double 4.0457470000000004
	.quad	0x3ffb0f11b60ae968              # double 1.691179
	.quad	0x3feafd30ad46f588              # double 0.84340700000000002
	.quad	0x4013e0ae9680e065              # double 4.9694159999999998
	.quad	0x40217db1422ccb3a              # double 8.7454929999999997
	.quad	0x3fd57785729b280f              # double 0.33542
	.quad	0x40189af640639d5e              # double 6.1513299999999997
	.quad	0x400cc9ac36544fe3              # double 3.5984729999999998
	.quad	0x400e2868b9fdbd30              # double 3.7697310000000002
	.quad	0x4020c9fab96f21f7              # double 8.3944910000000004
	.quad	0x4018b7a95c853c15              # double 6.1793570000000004
	.quad	0x401cc522ea0fd3b3              # double 7.1925160000000004
	.quad	0x400d3a3443d46b27              # double 3.6534200000000001
	.quad	0x40234633482be8bc              # double 9.6371099999999998
	.quad	0x400e753b4b2fa93b              # double 3.807242
	.quad	0x4010c075f6fd21ff              # double 4.1879499999999998
	.quad	0x4009d4434e3369ba              # double 3.2286440000000001
	.quad	0x3ff99d8409e55c10              # double 1.600956
	.quad	0x401bcb17ce52deca              # double 6.9483329999999999
	.quad	0x4016f657fb69984a              # double 5.74057
	.quad	0x40029837b4a2339c              # double 2.324325
	.quad	0x4016634bd76ee73e              # double 5.5969689999999996
	.quad	0x40048d32830a0b1c              # double 2.5689440000000001
	.quad	0x3fb8eabffcdab192              # double 0.097332000000000001
	.quad	0x3ff878bbd3804535              # double 1.5294760000000001
	.quad	0x401d03ac4f7ec354              # double 7.2535869999999996
	.quad	0x4009c1344806290f              # double 3.219338
	.quad	0x401688cef672b884              # double 5.6336019999999998
	.quad	0x400bbc7607c419a0              # double 3.467022
	.quad	0x4013b2278d0cc35d              # double 4.9239790000000001
	.quad	0x401e718bd66277c4              # double 7.6108849999999997
	.quad	0x4009d2a737110e45              # double 3.2278579999999999
	.quad	0x3ffe519ef954eb14              # double 1.894927
	.quad	0x40143e3b8a19c9d6              # double 5.0607740000000003
	.quad	0x401556bb1290257d              # double 5.3346980000000004
	.quad	0x40238e1c58255b03              # double 9.7775599999999993
	.quad	0x401e7ba94bbe4474              # double 7.6207630000000002
	.quad	0x40026fe047d3d428              # double 2.304627
	.quad	0x40223a1cac083127              # double 9.1135000000000002
	.quad	0x402296e99a62ed35              # double 9.2947509999999998
	.quad	0x4004eedb2f661f19              # double 2.6166290000000001
	.quad	0x401831f644955b46              # double 6.0487909999999996
	.quad	0x4021bb845564b663              # double 8.866244
	.quad	0x4003a5657fb69985              # double 2.4557600000000002
	.quad	0x3fe5c33508f648c7              # double 0.68007899999999999
	.quad	0x401533f63c31df76              # double 5.3007439999999999
	.quad	0x400a10867ad8e432              # double 3.2580689999999999
	.quad	0x4019c08d08919ef9              # double 6.4380379999999997
	.quad	0x400baf5ba2be058a              # double 3.4606240000000001
	.quad	0x4015cd27c3936827              # double 5.4503469999999998
	.quad	0x4022e586876e1deb              # double 9.4482920000000003
	.quad	0x402294d338f79852              # double 9.2906739999999992
	.quad	0x40237da6a4441787              # double 9.7454119999999999
	.quad	0x401ae54ef459d990              # double 6.7239339999999999
	.quad	0x4023acc9c90c4dec              # double 9.8374769999999998
	.quad	0x3fff60b1bbcf4e87              # double 1.9611069999999999
	.quad	0x400c03d790752daa              # double 3.5018760000000002
	.quad	0x4005108bb906466b              # double 2.6330789999999999
	.quad	0x401e873abc947065              # double 7.63206
	.quad	0x4021276598e10cf6              # double 8.5769470000000005
	.quad	0x4023eea8da7f3cf7              # double 9.9661319999999999
	.quad	0x3ffb797cc39ffd61              # double 1.71716
	.quad	0x3ff89f4906034f40              # double 1.538888
	.quad	0x4023ce45e4e69f06              # double 9.9028770000000002
	.quad	0x40140a5269595fee              # double 5.0100800000000003
	.quad	0x3ffadd3cbc48f10b              # double 1.6790130000000001
	.quad	0x400e73f961804d98              # double 3.8066279999999999
	.quad	0x400db8cda6e75ff6              # double 3.715236
	.quad	0x4022f9e98dcdb37d              # double 9.4881100000000007
	.quad	0x401c70d844d013a9              # double 7.1101999999999999
	.quad	0x4008700ef1348b22              # double 3.054716
	.quad	0x401ebea5b530ced5              # double 7.686179
	.quad	0x4017878c868b9fdc              # double 5.8823720000000002
	.quad	0x40233b4d48882f0e              # double 9.6158239999999999
	.quad	0x40122083558a7610              # double 4.5317509999999999
	.quad	0x401216f36ef80560              # double 4.5224130000000002
	.quad	0x4022efa58f7121ab              # double 9.4680599999999994
	.quad	0x3ff4311e85fd04a3              # double 1.261992
	.quad	0x4020ac6e8f29d40f              # double 8.3367810000000002
	.quad	0x4011911ba3ca7504              # double 4.3917070000000002
	.quad	0x40009fa7eb6bf445              # double 2.0779570000000001
	.quad	0x401adf993d5347a6              # double 6.7183580000000003
	.quad	0x3fc1868fd199bb28              # double 0.13691900000000001
	.quad	0x4021054b2745bf27              # double 8.5103390000000001
	.quad	0x4016c8259e1f3a58              # double 5.6954560000000001
	.quad	0x40195ef911cf355d              # double 6.3427470000000001
	.quad	0x4021fad6cb535009              # double 8.9899199999999997
	.quad	0x401a02c7b890d5a6              # double 6.5027150000000002
	.quad	0x4015195421c04428              # double 5.2747349999999997
	.quad	0x3ff8d8f92af9a8ce              # double 1.552972
	.quad	0x4000cd823422467c              # double 2.100346
	.quad	0x4015ebec2480e8c9              # double 5.4803930000000003
	.quad	0x4007b45e0b4e11dc              # double 2.9630700000000001
	.quad	0x3fb4ce91c8eabffd              # double 0.081277000000000002
	.quad	0x400c1126634117f8              # double 3.5083739999999999
	.quad	0x4018bf2389720429              # double 6.1866589999999997
	.quad	0x400c4a22b3892ee8              # double 3.5361989999999999
	.quad	0x401971dbca9691a7              # double 6.3611899999999997
	.quad	0x4006e6f8ad256799              # double 2.8627790000000002
	.quad	0x40090ea960b6f9fd              # double 3.1321590000000001
	.quad	0x3ff561b6d43d0397              # double 1.3363560000000001
	.quad	0x3fd5f4b61fe21d97              # double 0.343061
	.quad	0x4023d2a9930be0df              # double 9.9114500000000003
	.quad	0x401f9ba3443d46b2              # double 7.9019899999999996
	.quad	0x3fe258c2a454de7f              # double 0.57333500000000004
	.quad	0x401bcf2fdb8fde2f              # double 6.952331
	.quad	0x402323d5fdcdf698              # double 9.5699919999999991
	.quad	0x4013bac083126e98              # double 4.9323750000000004
	.quad	0x3fc3d5ed06fef7c2              # double 0.15496599999999999
	.quad	0x40125159817b95a3              # double 4.5794430000000004
	.quad	0x4010b848387df5cf              # double 4.1799629999999999
	.quad	0x402053d0e12e83a1              # double 8.1637029999999999
	.quad	0x40042d2cbea4ebdd              # double 2.5220579999999999
	.quad	0x3ffae272862f598a              # double 1.680285
	.quad	0x400ba218def416be              # double 3.4541490000000001
	.quad	0x401cd9ee02a77a2d              # double 7.2128220000000001
	.quad	0x401f74af4f0d844d              # double 7.8639499999999999
	.quad	0x4004dee807bbb624              # double 2.608841
	.quad	0x4019dc2c5e2cdc01              # double 6.4650129999999999
	.quad	0x3ff188cc575c0768              # double 1.095898
	.quad	0x3febc4f7ec3547e0              # double 0.86779399999999995
	.quad	0x4016d34a87e38eb0              # double 5.7063389999999998
	.quad	0x402069b4fe79ee03              # double 8.2064590000000006
	.quad	0x400b65e353f7ced9              # double 3.42475
	.quad	0x4023c75147f13059              # double 9.8892919999999993
	.quad	0x4020a07e5a78f25a              # double 8.3134639999999997
	.quad	0x401c1ae89eba6aca              # double 7.0262779999999996
	.quad	0x3ff2d34df04ddb55              # double 1.176588
	.quad	0x40219a62ed352221              # double 8.8015360000000005
	.quad	0x3fe3a5870da5daf0              # double 0.61395599999999995
	.quad	0x4000758a76102795              # double 2.0573929999999998
	.quad	0x4012910f94c87981              # double 4.641661
	.quad	0x400b844e93e1c9b4              # double 3.439603
	.quad	0x3fee84901d19157b              # double 0.95368200000000003
	.quad	0x400a32cf0f9d2bf5              # double 3.2748089999999999
	.quad	0x401f920d5629d841              # double 7.8926290000000003
	.quad	0x4008bca3a4b5568f              # double 3.0921090000000002
	.quad	0x4021fe6afcce1c58              # double 8.9969099999999997
	.quad	0x3ff475f80991793a              # double 1.2788010000000001
	.quad	0x40212f3929ed3954              # double 8.5922330000000002
	.quad	0x402057c9ff92f2b6              # double 8.1714629999999993
	.quad	0x3ffb6ee84ad794a7              # double 1.714577
	.quad	0x40219fa4c61d8623              # double 8.8118040000000004
	.quad	0x3ff85ef1fddebd90              # double 1.52318
	.quad	0x402353645a1cac08              # double 9.6628749999999996
	.quad	0x40149b4e54f7a919              # double 5.1516659999999996
	.quad	0x400b8ec636b09635              # double 3.4447139999999998
	.quad	0x400856c58eeae9ee              # double 3.0423689999999999
	.quad	0x3fb6ae3a3a8e7147              # double 0.088595999999999994
	.quad	0x3ff32f87ad080b67              # double 1.1991039999999999
	.quad	0x40232e33482be8bc              # double 9.5902349999999998
	.quad	0x400e00dd3fe1975f              # double 3.7504219999999999
	.quad	0x3ff84520d130df9c              # double 1.516877
	.quad	0x400f788fc9363f57              # double 3.9338679999999999
	.quad	0x40208240d90e23af              # double 8.2544009999999997
	.quad	0x40177158b827fa1a              # double 5.86069
	.quad	0x400643914f483cb0              # double 2.7829920000000001
	.quad	0x400382d5171e29b7              # double 2.4388830000000001
	.quad	0x401c3da8bd230b9e              # double 7.0602140000000002
	.quad	0x401c8e01de269164              # double 7.1386789999999998
	.quad	0x401eadadfb506dd7              # double 7.6696090000000003
	.quad	0x40136c347e8ccdd9              # double 4.8556689999999998
	.quad	0x40151cd855970b4a              # double 5.2781690000000001
	.quad	0x4021b277c45cbbc3              # double 8.8485700000000005
	.quad	0x40155348b220791c              # double 5.3313319999999997
	.quad	0x40238317268d3283              # double 9.7560359999999999
	.quad	0x4021fabd5dc40075              # double 8.9897259999999992
	.quad	0x40207d08b32ce896              # double 8.2442069999999994
	.quad	0x401d7986338b47c7              # double 7.3686759999999998
	.quad	0x400f0193b3a68b1a              # double 3.8757700000000002
	.quad	0x400e2555c52e72da              # double 3.76823
	.quad	0x4018783be6601bca              # double 6.1174160000000004
	.quad	0x4017954cdb7ae579              # double 5.8958009999999996
	.quad	0x401483dddb1209ee              # double 5.1287760000000002
	.quad	0x4016f84449dbec25              # double 5.7424480000000004
	.quad	0x401c98fcd67fd3f6              # double 7.1494020000000003
	.quad	0x401c6b6b6e0d23d5              # double 7.1049020000000001
	.quad	0x4001b3d859c8c932              # double 2.212815
	.quad	0x4014aa87e38eb032              # double 5.1665340000000004
	.quad	0x4019213a4f8726d0              # double 6.2824489999999997
	.quad	0x40232c96249a133c              # double 9.5870829999999997
	.quad	0x3ff98f8f8a4c1ebd              # double 1.5975490000000001
	.quad	0x4013c07357e670e3              # double 4.9379400000000002
	.quad	0x40204d4bcf0b6b6e              # double 8.1509689999999999
	.quad	0x3ffe3d556084a516              # double 1.889974
	.quad	0x40065b0142f61ed6              # double 2.7944360000000001
	.quad	0x4005c6601bc98a22              # double 2.7218629999999999
	.quad	0x4023f02de00d1b71              # double 9.9690999999999991
	.quad	0x3fe200a9de8b3b32              # double 0.562581
	.quad	0x40147d3c36113405              # double 5.1223000000000001
	.quad	0x40216f56c93a7115              # double 8.7174589999999998
	.quad	0x401d39c779a6b50b              # double 7.3064249999999999
	.quad	0x401f837585be1a82              # double 7.8783779999999997
	.quad	0x400b93e9a6f826ee              # double 3.4472230000000001
	.quad	0x402356d783dff3f1              # double 9.669613
	.quad	0x4022690e8858ff76              # double 9.2051890000000007
	.quad	0x4022b78bdec5f395              # double 9.3584890000000005
	.quad	0x4014b193708aac97              # double 5.1734140000000002
	.quad	0x401c131c219eb639              # double 7.018662
	.quad	0x401bed2c386d2ed8              # double 6.9816140000000004
	.quad	0x3ff45cc100e6afcd              # double 1.272645
	.quad	0x401112c669057d18              # double 4.2683350000000004
	.quad	0x4009630a915379fb              # double 3.1733600000000002
	.quad	0x4019e03d57796399              # double 6.4689839999999998
	.quad	0x3fd642d05f288484              # double 0.34782800000000003
	.quad	0x401d431b152f3c2e              # double 7.3155330000000003
	.quad	0x400ff5c96030c240              # double 3.9950130000000001
	.quad	0x40237b4d056c508b              # double 9.7408219999999996
	.quad	0x400eca21a719b4dd              # double 3.848697
	.quad	0x401e7b5a20ddc619              # double 7.6204609999999997
	.quad	0x40195edbf8b9baa1              # double 6.3426359999999997
	.quad	0x402109804d983947              # double 8.5185569999999995
	.quad	0x401fc5f6fd21ff2e              # double 7.9433249999999997
	.quad	0x40233e2d6238da3c              # double 9.6214399999999997
	.quad	0x40083716d2aa5c5f              # double 3.0268989999999998
	.quad	0x401c0be22e5de15d              # double 7.0116050000000003
	.quad	0x400a3603925bb7b7              # double 3.2763740000000001
	.quad	0x40010cf6be37de94              # double 2.1313300000000002
	.quad	0x4009dff36ac64778              # double 3.2343510000000002
	.quad	0x3fd6dd65a14488c6              # double 0.357263
	.quad	0x401fc86b59146e4c              # double 7.945722
	.quad	0x4021d07379746024              # double 8.9071309999999996
	.quad	0x40141fc7607c419a              # double 5.031034
	.quad	0x40137d1cc100e6b0              # double 4.8721800000000002
	.quad	0x401f81cbccf28c7a              # double 7.876754
	.quad	0x401a3b0fadf2ecf2              # double 6.557677
	.quad	0x3fee0c67168f8e7e              # double 0.93901400000000002
	.quad	0x3fed7e996312f4cf              # double 0.92170399999999997
	.quad	0x3ff9ff88765ba6f0              # double 1.6248860000000001
	.quad	0x401746a6e32e3822              # double 5.8189960000000003
	.quad	0x3fe3301eabbcb1cd              # double 0.59962400000000005
	.quad	0x3ffaae6c8f755369              # double 1.667584
	.quad	0x40231cc8bc9cd3e1              # double 9.5562190000000004
	.quad	0x4022d86e5cd4ed2d              # double 9.4227170000000004
	.quad	0x40217b0ced4e4c94              # double 8.7403329999999996
	.quad	0x40033f455a7d2418              # double 2.405894
	.quad	0x4015a1fb3fa6defc              # double 5.4081849999999996
	.quad	0x3fff8b97785729b3              # double 1.9715800000000001
	.quad	0x4006c63736cdf267              # double 2.8467850000000001
	.quad	0x4011eecbfb15b574              # double 4.4832000000000001
	.quad	0x400e26149c6f36f0              # double 3.7685940000000002
	.quad	0x3fe9fc0b13597918              # double 0.81201699999999999
	.quad	0x4014eb4d056c508b              # double 5.2297859999999998
	.quad	0x4007b5c422036007              # double 2.9637530000000001
	.quad	0x3ff751c5c5718eb9              # double 1.4574640000000001
	.quad	0x3ffa0fc1df3300de              # double 1.6288469999999999
	.quad	0x4010caab042528ae              # double 4.1979179999999996
	.quad	0x402167c2ca148ba8              # double 8.7026579999999996
	.quad	0x401e771e6cd29132              # double 7.6163270000000001
	.quad	0x401411709310129d              # double 5.0170310000000002
	.quad	0x3ffee1b4bb5e0f80              # double 1.930104
	.quad	0x401259e1b089a027              # double 4.5877749999999997
	.quad	0x3fc51fb3fa6defc8              # double 0.16503000000000001
	.quad	0x4022c1c779a6b50b              # double 9.3784749999999998
	.quad	0x4021cf11d798d8a9              # double 8.9044329999999992
	.quad	0x4023be4f3343fa2b              # double 9.8716980000000003
	.quad	0x3fda3f78bbd38045              # double 0.41012399999999999
	.quad	0x3fecd043e5321e60              # double 0.90042299999999997
	.quad	0x400d9f0dc768dfbd              # double 3.7026629999999998
	.quad	0x40207a715831f03d              # double 8.2391459999999999
	.quad	0x3ff077403dddb121              # double 1.0291140000000001
	.quad	0x3ff901040bfe3b04              # double 1.562748
	.quad	0x3ff2b77079e59f2c              # double 1.1697850000000001
	.quad	0x3ff538e6d15ad107              # double 1.326392
	.quad	0x40141c422036006d              # double 5.027596
	.quad	0x4006e16f86a09891              # double 2.8600759999999998
	.quad	0x3ff45de37585be1b              # double 1.2729220000000001
	.quad	0x400b0a209aaa3ad2              # double 3.3799450000000002
	.quad	0x4014e03a7546d3fa              # double 5.2189730000000001
	.quad	0x400a45247cb70ac4              # double 3.2837610000000002
	.quad	0x3fe60f96e158750c              # double 0.68940299999999999
	.quad	0x4009f3b320535c9e              # double 3.2439939999999998
	.quad	0x400b1d7dbf487fcc              # double 3.3894000000000002
	.quad	0x3ffd13ab430f4949              # double 1.817302
	.quad	0x401bf4df47f993d5              # double 6.9891329999999998
	.quad	0x400ae7ed84d338f8              # double 3.3632460000000002
	.quad	0x400cc3fdd65a1449              # double 3.5956990000000002
	.quad	0x400dd365881a1555              # double 3.728221
	.quad	0x40201f1f14983d79              # double 8.0607839999999999
	.quad	0x401348dd1e53a81e              # double 4.8211560000000002
	.quad	0x3fec5d95dd4c76d1              # double 0.88642399999999999
	.quad	0x40061652bd3c3611              # double 2.7608999999999999
	.quad	0x4023c86d938151a4              # double 9.8914609999999996
	.quad	0x3feffc6759ab6d01              # double 0.99956100000000003
	.quad	0x401a056f32bdc26e              # double 6.5053070000000002
	.quad	0x40177d1782d38477              # double 5.87216
	.quad	0x4001e10a569b1748              # double 2.234883
	.quad	0x400f0343b70ef566              # double 3.8765939999999999
	.quad	0x40229a8155d5f56a              # double 9.3017679999999991
	.quad	0x4008df36262cba73              # double 3.1089899999999999
	.quad	0x3fffccdea033e78e              # double 1.987517
	.quad	0x3fbd0364388ebcc7              # double 0.113333
	.quad	0x3ffd01e57d9dba91              # double 1.8129630000000001
	.quad	0x4010dd3c792d1288              # double 4.2160510000000002
	.quad	0x402099b21c475e63              # double 8.3001869999999993
	.quad	0x400fb335d249e450              # double 3.9625050000000002
	.quad	0x402172ca79357604              # double 8.7242010000000007
	.quad	0x400ff649d388a8b1              # double 3.9952580000000002
	.quad	0x4000469d7342edbb              # double 2.0344799999999998
	.quad	0x40065c9e6687f456              # double 2.7952240000000002
	.quad	0x401e84f93bc0a06f              # double 7.6298570000000003
	.quad	0x401f3e33269df97b              # double 7.8107420000000002
	.quad	0x40237b65cb35f3d8              # double 9.7410110000000003
	.quad	0x40170806f262888b              # double 5.7578389999999997
	.quad	0x4017fab81f969e3d              # double 5.9948430000000004
	.quad	0x40225cbc8c0ce91d              # double 9.1811260000000008
	.quad	0x400b85093964a59c              # double 3.439959
	.quad	0x4001884a515ce9e6              # double 2.1915480000000001
	.quad	0x40177bd7b2031ceb              # double 5.87094
	.quad	0x401d7c74751ce28f              # double 7.3715380000000001
	.quad	0x400435ad96a6a012              # double 2.5262099999999998
	.quad	0x3fe44267839cd812              # double 0.63310599999999995
	.quad	0x40151005c4651f3f              # double 5.2656470000000004
	.quad	0x401ead77318fc505              # double 7.6694000000000004
	.quad	0x4017952da98676a7              # double 5.8956819999999999
	.quad	0x4018aa116659d12d              # double 6.1660820000000003
	.quad	0x40213810c6f7a0b6              # double 8.6095030000000001
	.quad	0x40145f9c1f85d745              # double 5.093369
	.quad	0x4021a54306e5cd4f              # double 8.8227770000000003
	.quad	0x3fe2119ef954eb14              # double 0.56465100000000001
	.quad	0x4012ae675147f130              # double 4.6703159999999997
	.quad	0x4015fba237cdcca7              # double 5.495736
	.quad	0x400ab30a4e379b78              # double 3.3374220000000001
	.quad	0x402382d85dfa871a              # double 9.7555569999999996
	.quad	0x4010aff540895d0b              # double 4.1718339999999996
	.quad	0x40118470eb24a6a8              # double 4.3793369999999996
	.quad	0x3fff9dfc9ff92f2b              # double 1.9760709999999999
	.quad	0x400ef05e1c15097d              # double 3.8673670000000002
	.quad	0x4021e766a5508701              # double 8.9519549999999999
	.quad	0x3ff8aafff36ac647              # double 1.5417479999999999
	.quad	0x4010a5cdd50a88f0              # double 4.161918
	.quad	0x3ff94fd3b29a1ba0              # double 1.5819890000000001
	.quad	0x3ffd3fcc9ea9a3d3              # double 1.828076
	.quad	0x401ba35f80991794              # double 6.9095440000000004
	.quad	0x400cee2435696e59              # double 3.6162800000000002
	.quad	0x4010d0df15a4acf3              # double 4.2039759999999999
	.quad	0x3fd56bf444e0daa1              # double 0.33471400000000001
	.quad	0x40200c669057d178              # double 8.0242199999999997
	.quad	0x40015cb0c026cc1d              # double 2.1702590000000002
	.quad	0x40164341e14bdfd2              # double 5.5656809999999997
	.quad	0x400e62d83c6c97d9              # double 3.7982640000000001
	.quad	0x40015f87f023e9ea              # double 2.171646
	.quad	0x4023e9cde5d18091              # double 9.9566490000000005
	.quad	0x401753821af7d30b              # double 5.8315510000000002
	.quad	0x401ef684cf0739b0              # double 7.7407409999999999
	.quad	0x3fdfa8deb0fadf2f              # double 0.49468200000000001
	.quad	0x40109df00abf76a3              # double 4.154236
	.quad	0x401d1a6937d1fe65              # double 7.275792
	.quad	0x4009f2495e17e34c              # double 3.2433040000000002
	.quad	0x40221ba7b9170d63              # double 9.0540140000000005
	.quad	0x4016298a222d5172              # double 5.5405660000000001
	.quad	0x401aa03686a4ca4f              # double 6.6564579999999998
	.quad	0x3ff812fa0d77b7c8              # double 1.5046330000000001
	.quad	0x4019feb80ecfa69c              # double 6.4987490000000001
	.quad	0x40146acffa7eb6bf              # double 5.1043089999999998
	.quad	0x3fc997dd00f776c5              # double 0.19994700000000001
	.quad	0x40216e876e1deacd              # double 8.7158770000000008
	.quad	0x401881fa76534374              # double 6.126932
	.quad	0x4018f95d91ab8e8f              # double 6.2435210000000003
	.quad	0x3fd8a9b068123811              # double 0.38535700000000001
	.quad	0x4017c1f42bb66730              # double 5.9394080000000002
	.quad	0x4018d4816f0068dc              # double 6.2075250000000004
	.quad	0x3feaf36694898f60              # double 0.84221199999999996
	.quad	0x40090c5a8155d5f5              # double 3.1310319999999998
	.quad	0x400dc2d0e5604189              # double 3.7201249999999999
	.quad	0x3fee5cf0307f23cd              # double 0.94884500000000005
	.quad	0x4023f0826aa8eb46              # double 9.9697449999999996
	.quad	0x3fe3e7c286f8ad25              # double 0.62204099999999996
	.quad	0x3ff78bb906466b1e              # double 1.4716119999999999
	.quad	0x40229044284dfce3              # double 9.2817699999999999
	.quad	0x3ffaf8d823422468              # double 1.6857530000000001
	.quad	0x4012c0fcf80dc337              # double 4.6884649999999999
	.quad	0x4012cc6583e8576d              # double 4.6996060000000002
	.quad	0x3fcd7c914b167ec8              # double 0.23036400000000001
	.quad	0x40185d81adea8976              # double 6.0913149999999998
	.quad	0x40234b506dd69d30              # double 9.6470979999999997
	.quad	0x4018109289dadfb5              # double 6.016184
	.quad	0x3ff991526d8b1dd6              # double 1.597979
	.quad	0x3fe8a6d4801f7510              # double 0.77036499999999997
	.quad	0x400e0e6ea8544780              # double 3.757047
	.quad	0x40150f8594291750              # double 5.2651579999999996
	.quad	0x400a7203a322af57              # double 3.3056709999999998
	.quad	0x3fec4d22c881e471              # double 0.88441599999999998
	.quad	0x3ff472aae297396d              # double 1.277995
	.quad	0x40227a6a012599ed              # double 9.2390899999999991
	.quad	0x40217be0bd44998d              # double 8.741949
	.quad	0x4018f446b69db65f              # double 6.2385510000000002
	.quad	0x400004c8bc9cd3e1              # double 2.0023360000000001
	.quad	0x4022bec311622813              # double 9.3725819999999995
	.quad	0x40238428d434a01b              # double 9.7581240000000004
	.quad	0x3febe3ae2541d8e8              # double 0.87154299999999996
	.quad	0x40118a148ba83f4f              # double 4.3848440000000002
	.quad	0x401a050374ff865d              # double 6.5048959999999996
	.quad	0x400c5f1843c3a42f              # double 3.5464329999999999
	.quad	0x3fe1e19da9c99286              # double 0.55879100000000004
	.quad	0x4022126fe718a86d              # double 9.0360099999999992
	.quad	0x401ffd30f062d40b              # double 7.9972570000000002
	.quad	0x402306160d887ebf              # double 9.5118869999999997
	.quad	0x4012e75a74c09c3d              # double 4.7259310000000001
	.quad	0x3fff4280ae104923              # double 1.9537359999999999
	.quad	0x4016312d3415b142              # double 5.5480239999999998
	.quad	0x40232f00abf76a2f              # double 9.5918019999999994
	.quad	0x401ac327243137b0              # double 6.6905789999999996
	.quad	0x4014321187e7c06e              # double 5.0488949999999999
	.quad	0x4023c35a63f9a49c              # double 9.8815489999999996
	.quad	0x4003bc7abfb9bed3              # double 2.467031
	.quad	0x3ffe33b107746888              # double 1.8876200000000001
	.quad	0x4016585be1a82624              # double 5.5862879999999997
	.quad	0x3fd6dc2b0ea18373              # double 0.35718800000000001
	.quad	0x402084ffa7eb6bf4              # double 8.2597629999999995
	.quad	0x401fc16b11c6d1e1              # double 7.9388849999999999
	.quad	0x402379d1b2e59afa              # double 9.7379280000000001
	.quad	0x4022872c3009b307              # double 9.2640089999999997
	.quad	0x40164ce13f4a98ab              # double 5.5750780000000004
	.quad	0x400e0f3dc054ef46              # double 3.7574420000000002
	.quad	0x4022d8e8427418d7              # double 9.4236470000000007
	.quad	0x4021ed82fd75e204              # double 8.9638899999999992
	.quad	0x40228ea28fe260b3              # double 9.2785840000000004
	.quad	0x400cde6a337a80d0              # double 3.6086010000000002
	.quad	0x402339207d4e0978              # double 9.6115759999999994
	.quad	0x401858023a6ce358              # double 6.0859459999999999
	.quad	0x401d9ae07e5a78f2              # double 7.4012469999999997
	.quad	0x4018b1c79b34a44c              # double 6.1736129999999996
	.quad	0x400a8be0ded288ce              # double 3.3182999999999998
	.quad	0x40159a57eaa2a0a9              # double 5.4007259999999997
	.quad	0x4021fbe5fb71fbc6              # double 8.9919890000000002
	.quad	0x3fd25ba2be0589ad              # double 0.28684300000000001
	.quad	0x40147751ce28ed5f              # double 5.1165229999999999
	.quad	0x401bb917939a7c18              # double 6.9307540000000003
	.quad	0x400f83b688bda943              # double 3.9393129999999998
	.quad	0x401d292ee84ad795              # double 7.2902180000000003
	.quad	0x401f45e84f09528f              # double 7.8182689999999999
	.quad	0x40184afab53d640f              # double 6.0732220000000003
	.quad	0x4000cf1a9fbe76c9              # double 2.1011250000000001
	.quad	0x3fdb7304039abf34              # double 0.42889500000000003
	.quad	0x401f3b6ae7d566cf              # double 7.8080249999999997
	.quad	0x400a4836eb4e9814              # double 3.2852610000000002
	.quad	0x401585e28aa43351              # double 5.3807470000000004
	.quad	0x400a945f9df548ed              # double 3.3224480000000001
	.quad	0x3ff3c5eb313be22e              # double 1.2358199999999999
	.quad	0x40204dee99a62ed3              # double 8.1522109999999994
	.quad	0x3fd68d64d7f0ed3e              # double 0.35238000000000003
	.quad	0x40202241c3efae79              # double 8.0669079999999997
	.quad	0x4020f4914b167ec8              # double 8.4776710000000008
	.quad	0x401e251f3e89a88b              # double 7.5362520000000001
	.quad	0x401162acfb762d84              # double 4.3463630000000002
	.quad	0x4016175147f13059              # double 5.5227709999999997
	.quad	0x4023af3300de4c51              # double 9.8421859999999998
	.quad	0x4012c9e55c0fcb4f              # double 4.6971639999999999
	.quad	0x4015e530489d27c4              # double 5.4738170000000004
	.quad	0x40128ed3d859c8c9              # double 4.6394799999999998
	.quad	0x4020efb45f17bd8c              # double 8.4681730000000001
	.quad	0x401a209b30728e93              # double 6.5318420000000001
	.quad	0x401e2fbd273d5bab              # double 7.5466199999999998
	.quad	0x3ffb7d651b0ccbc0              # double 1.7181139999999999
	.quad	0x4017ea6bd6e8af81              # double 5.9789269999999997
	.quad	0x4021c893faf42785              # double 8.8917540000000006
	.quad	0x4003ed00b45ae600              # double 2.4907240000000002
	.quad	0x3fad054ac29bf163              # double 0.056681000000000002
	.quad	0x4016a8f648c7192f              # double 5.6650020000000003
	.quad	0x4014f59791819d24              # double 5.2398360000000004
	.quad	0x402284a57a786c22              # double 9.2590749999999993
	.quad	0x4014e5f78359bc34              # double 5.224577
	.quad	0x400d199cbee807bc              # double 3.6375060000000001
	.quad	0x3ff77c80841ede12              # double 1.4678960000000001
	.quad	0x3ff340c8472c0e7c              # double 1.2033160000000001
	.quad	0x4009531e3a7daa50              # double 3.1655850000000001
	.quad	0x4012ec23315d701e              # double 4.7306030000000003
	.quad	0x4001490d5a5b9629              # double 2.1606700000000001
	.quad	0x3fda7b8d3f1843c4              # double 0.41379100000000002
	.quad	0x4003fe77d523b363              # double 2.4992519999999998
	.quad	0x4008c5479d4d8341              # double 3.0963280000000002
	.quad	0x40211ab3cc4ac6ce              # double 8.5521530000000006
	.quad	0x3ffbd55a3a08398a              # double 1.7395879999999999
	.quad	0x40134f85510d38ce              # double 4.8276570000000003
	.quad	0x401f52c9d16fc9bc              # double 7.8308479999999996
	.quad	0x4007002f2f987400              # double 2.8750900000000001
	.quad	0x4011fadc4c9c90c5              # double 4.4949810000000001
	.quad	0x4013a836eb4e9814              # double 4.9142720000000004
	.quad	0x3ff10e4a7b4e54f8              # double 1.0659890000000001
	.quad	0x401cc758e219652c              # double 7.1946750000000002
	.quad	0x4016ee1e2de87097              # double 5.7325369999999998
	.quad	0x3fea1f9ce8d972cd              # double 0.81635899999999995
	.quad	0x40237e937d1fe64f              # double 9.7472189999999994
	.quad	0x401a7110e453d20f              # double 6.6104159999999998
	.quad	0x40143382a12f9011              # double 5.0503030000000004
	.quad	0x40067276fb09203a              # double 2.8058909999999999
	.quad	0x400f96e04c059210              # double 3.9486699999999999
	.quad	0x40112f6f8f041462              # double 4.2963240000000003
	.quad	0x3ffb26e221c8a7a4              # double 1.696993
	.quad	0x4021c9a38fbca106              # double 8.8938260000000007
	.quad	0x4014bc7ef177a701              # double 5.1840780000000004
	.quad	0x40123efb2aae2974              # double 4.5615050000000004
	.quad	0x401967e175d13d75              # double 6.3514460000000001
	.quad	0x4021453d4280ae10              # double 8.6352329999999995
	.quad	0x3ffd1fc5cdd50a89              # double 1.820257
	.quad	0x402345ccc89b0ee5              # double 9.6363280000000006
	.quad	0x3fe038088509bf9c              # double 0.50683999999999996
	.quad	0x401bc99e94ab1d50              # double 6.9468940000000003
	.quad	0x4023ff724fa8b4c0              # double 9.9989190000000007
	.quad	0x4016f1c1d6cf850e              # double 5.7360910000000001
	.quad	0x4018f0535c9e6688              # double 6.234693
	.quad	0x4005ae65bea0ba1f              # double 2.7101549999999999
	.quad	0x401975946c332f01              # double 6.3648239999999996
	.quad	0x402201bf162ae4b0              # double 9.0034109999999998
	.quad	0x4012e72c94b380cb              # double 4.7257559999999996
	.quad	0x401d46a337a80cfa              # double 7.3189820000000001
	.quad	0x4011f3d9a95421c0              # double 4.4881349999999998
	.quad	0x4016d60e94ee392e              # double 5.7090399999999999
	.quad	0x40203af31b152f3c              # double 8.1151359999999996
	.quad	0x3febdafd113836a8              # double 0.87048199999999998
	.quad	0x401d5fcefaa4766c              # double 7.3435629999999996
	.quad	0x40210bad3a604e1e              # double 8.5228059999999992
	.quad	0x402200b39192641b              # double 9.0013699999999996
	.quad	0x4009930b5aa71583              # double 3.1967989999999999
	.quad	0x401d523e18698351              # double 7.3303149999999997
	.quad	0x3ff5ef9fcb0c026d              # double 1.3710020000000001
	.quad	0x4003533226c3b928              # double 2.4156230000000001
	.quad	0x401bc79463cfb331              # double 6.9449019999999999
	.quad	0x402387aeff5c6c12              # double 9.7650070000000007
	.quad	0x400c6af5fd47bedb              # double 3.5522269999999998
	.quad	0x401ea1c3efae7925              # double 7.6579740000000002
	.quad	0x4022aa8e71476af9              # double 9.3331180000000007
	.quad	0x40084c5b8dc55001              # double 3.0372840000000001
	.quad	0x401718e8ea39c51e              # double 5.7743260000000003
	.quad	0x3fdbbbe878fabda1              # double 0.43334400000000001
	.quad	0x4023f6bacf7446fa              # double 9.9818940000000005
	.quad	0x4020f3f9830e3cda              # double 8.4765130000000006
	.quad	0x4018845cbbc2b94e              # double 6.1292600000000004
	.quad	0x4021b35e310dbf05              # double 8.8503279999999993
	.quad	0x401e7177ea1c68ec              # double 7.6108089999999997
	.quad	0x3ff120b3d4ae429e              # double 1.070484
	.quad	0x4023cbe1a8262457              # double 9.898206
	.quad	0x4003de425aee6320              # double 2.4835250000000002
	.quad	0x4008ecffa7eb6bf4              # double 3.1157219999999999
	.quad	0x3ffc8fa376922d95              # double 1.7850680000000001
	.quad	0x40017d0b73d188f4              # double 2.1860569999999999
	.quad	0x401577f6b1a2a4db              # double 5.3671519999999999
	.quad	0x40016ac215b9a5a9              # double 2.1771280000000002
	.quad	0x40181aaa3ad18d26              # double 6.0260400000000001
	.quad	0x40156b1c432ca57a              # double 5.3545999999999996
	.quad	0x40070c4ef88b9778              # double 2.8810099999999998
	.quad	0x401fcc4f7ec3547e              # double 7.949522
	.quad	0x3fe20ad688377186              # double 0.56382299999999996
	.quad	0x401a7625e99e94ab              # double 6.6153789999999999
	.quad	0x4017ae5abc0e38a8              # double 5.9202680000000001
	.quad	0x4020e014940bbb1f              # double 8.4376569999999997
	.quad	0x4008690470a808c8              # double 3.0512779999999999
	.quad	0x4021ce96c3fc43b3              # double 8.9034940000000002
	.quad	0x40237596638433d7              # double 9.7296630000000003
	.quad	0x40024581cf7878b8              # double 2.2839390000000002
	.quad	0x40153a0c282c6ef4              # double 5.3066870000000002
	.quad	0x3ffde89b951c5c57              # double 1.869289
	.quad	0x4022901fd9ba1b19              # double 9.2814929999999993
	.quad	0x3ffe31f03d145d85              # double 1.887192
	.quad	0x3fc1af4adbc664d4              # double 0.13816200000000001
	.quad	0x4012c81cb46bacf7              # double 4.6954219999999998
	.quad	0x4015557cd466f502              # double 5.3334840000000003
	.quad	0x40001a8826aa8eb4              # double 2.0129549999999998
	.quad	0x400a79e40c8472c1              # double 3.309517
	.quad	0x4010399029ae4f33              # double 4.0562139999999998
	.quad	0x4011dc60029f16b1              # double 4.4652099999999999
	.quad	0x3ff93fc2224edf61              # double 1.578066
	.quad	0x40203fc7a398201d              # double 8.1245700000000003
	.quad	0x40074a26e5471716              # double 2.9112070000000001
	.quad	0x400f46a1a500d5e9              # double 3.9094880000000001
	.quad	0x4016887e7c06e19c              # double 5.6332950000000004
	.quad	0x4001adbbe0157eed              # double 2.2098309999999999
	.quad	0x3fff5f15a4acf313              # double 1.9607140000000001
	.quad	0x4020c804534bd76f              # double 8.3906580000000002
	.quad	0x401ab9c779a6b50b              # double 6.6814249999999999
	.quad	0x3ff177824d4cb9ed              # double 1.091677
	.quad	0x401c6f0b28522ea1              # double 7.108441
	.quad	0x3fd043c7d5ed06ff              # double 0.254137
	.quad	0x401b722424a276b8              # double 6.8614660000000001
	.quad	0x400f3df7e80389f8              # double 3.9052579999999999
	.quad	0x401dd4845132f87b              # double 7.4575360000000002
	.quad	0x401cfcf398e97072              # double 7.2470230000000004
	.quad	0x401f2a975afaf859              # double 7.7915929999999997
	.quad	0x401cea72ead9274e              # double 7.2289539999999999
	.quad	0x3fd78ef77f27fe4c              # double 0.36810100000000001
	.quad	0x3ff64f10a99b6f5d              # double 1.3943030000000001
	.quad	0x4011d9f77292c493              # double 4.4628579999999998
	.quad	0x4015d7c4199fe436              # double 5.4607089999999996
	.quad	0x40077d4ae429e0a4              # double 2.936178
	.quad	0x3fcc0bed740c4157              # double 0.219114
	.quad	0x401dff0bf1a5ca2a              # double 7.4990690000000004
	.quad	0x40103eecbfb15b57              # double 4.0614499999999998
	.quad	0x3fe242cc2d6a9c56              # double 0.57065399999999999
	.quad	0x401d596c82e019b1              # double 7.3373280000000003
	.quad	0x400c6d117b5286b6              # double 3.5532560000000002
	.quad	0x4020a9450efdc9c5              # double 8.3306050000000003
	.quad	0x4011b145d851654d              # double 4.4231179999999997
	.quad	0x40129704790b8499              # double 4.6474780000000004
	.quad	0x401f90ef566490a3              # double 7.8915379999999997
	.quad	0x4020c540cc78e9f7              # double 8.3852600000000006
	.quad	0x4020faa64c2f837b              # double 8.4895499999999995
	.quad	0x400d33660e51d25b              # double 3.6500970000000001
	.quad	0x4022e53825e13b19              # double 9.4476940000000002
	.quad	0x4002ad43d03968d7              # double 2.3346019999999998
	.quad	0x40028ff1950331e4              # double 2.3202850000000002
	.quad	0x401832a1b5c7cd8a              # double 6.0494450000000004
	.quad	0x4017d8effe2a3cea              # double 5.9618529999999996
	.quad	0x401a780bed740c41              # double 6.6172329999999997
	.quad	0x3fe17deb52c9d170              # double 0.54662100000000002
	.quad	0x40233a1e1d2178f7              # double 9.6135110000000008
	.quad	0x40163b65a9a80496              # double 5.5580049999999996
	.quad	0x4015f4f61672324d              # double 5.4892200000000004
	.quad	0x401903d5bab21816              # double 6.2537450000000003
	.quad	0x3ffb30995aaf78ff              # double 1.699365
	.quad	0x4022402d16b97fe9              # double 9.1253440000000001
	.quad	0x4010ac70867ad8e4              # double 4.1683979999999998
	.quad	0x401fcb1e5c0b9991              # double 7.9483579999999998
	.quad	0x3fff5d894812be49              # double 1.9603360000000001
	.quad	0x401bce2b4959e625              # double 6.9513369999999997
	.quad	0x40189c0ce91c8eac              # double 6.152393
	.quad	0x401ac5a250f84018              # double 6.6930019999999999
	.quad	0x3fd7cc5b8dc55001              # double 0.37184800000000001
	.quad	0x4023442df0d41312              # double 9.6331629999999997
	.quad	0x40159e789e774eec              # double 5.404757
	.quad	0x400ab076c050bd88              # double 3.3361640000000001
	.quad	0x40178505d0fa58f7              # double 5.8799049999999999
	.quad	0x3ff002352eb5f5f1              # double 1.0005390000000001
	.quad	0x400b48b2a6b0d951              # double 3.4104969999999999
	.quad	0x401a36e8f29d40ee              # double 6.553623
	.quad	0x401ccc536d655e29              # double 7.1995370000000003
	.quad	0x400ea374ff865d7d              # double 3.8298130000000001
	.quad	0x40156dd82fd75e20              # double 5.3572699999999998
	.quad	0x400d94a4d2b2bfdb              # double 3.6975799999999999
	.quad	0x400dab0fadf2ecf2              # double 3.708526
	.quad	0x401eef67b1c0010c              # double 7.7337939999999996
	.quad	0x4011aaade657b84e              # double 4.4166790000000002
	.quad	0x4022fc6b05319829              # double 9.4930040000000008
	.quad	0x3fc3e0d66f0cfe15              # double 0.15529899999999999
	.quad	0x4023e84230fcf80e              # double 9.9536300000000004
	.quad	0x40138df00abf76a3              # double 4.888611
	.quad	0x40212bf8769ec2ce              # double 8.5858799999999995
	.quad	0x400c3e542e557de1              # double 3.5304340000000001
	.quad	0x4017737fbefd0071              # double 5.8627919999999998
	.quad	0x401ee3a96d4c33b5              # double 7.7223259999999998
	.quad	0x3fe05bf8b9baa151              # double 0.51122699999999999
	.quad	0x3ff9589df1172ef1              # double 1.5841350000000001
	.quad	0x3fecfc84b5dcc63f              # double 0.90582499999999999
	.quad	0x400a9d5fdcdf6988              # double 3.3268430000000002
	.quad	0x401a9b59ddc1e796              # double 6.6517099999999996
	.quad	0x3fe793bc0a06e9ff              # double 0.73678399999999999
	.quad	0x401c8524bfd2e947              # double 7.1300230000000004
	.quad	0x3ff04c6e6d9be4cd              # double 1.0186599999999999
	.quad	0x40203dfaca361998              # double 8.1210540000000009
	.quad	0x40008322291fb3fa              # double 2.0640299999999998
	.quad	0x4008486c6583e857              # double 3.0353629999999998
	.quad	0x4022146b69db65ed              # double 9.0398820000000004
	.quad	0x400986a337a80cfa              # double 3.190741
	.quad	0x4022d197a24894c4              # double 9.4093599999999995
	.quad	0x401f5631b584b1ab              # double 7.8341739999999999
	.quad	0x401537dd872f33ca              # double 5.3045559999999998
	.quad	0x40048e3715400325              # double 2.5694409999999999
	.quad	0x4018c69835158b82              # double 6.1939399999999996
	.quad	0x4014267e414e7ee9              # double 5.0375909999999999
	.quad	0x402018e2e2b8c75c              # double 8.0486059999999994
	.quad	0x40224d46f587d6f9              # double 9.1509319999999992
	.quad	0x402337e62dc6e2a8              # double 9.6091779999999999
	.quad	0x401537afa7221859              # double 5.3043810000000002
	.quad	0x3ffe3a51a005c465              # double 1.889238
	.quad	0x401302dcf4623d0c              # double 4.752796
	.quad	0x40199e04c0592104              # double 6.4043150000000004
	.quad	0x3fe44a1059ea5721              # double 0.63404099999999997
	.quad	0x3fd4d2e514c22ee4              # double 0.32537199999999999
	.quad	0x3ff3d371971c10d8              # double 1.2391220000000001
	.quad	0x40223b649d388a8b              # double 9.1160019999999999
	.quad	0x400f641355475a32              # double 3.9238650000000002
	.quad	0x4006696787ce95fb              # double 2.8014670000000002
	.quad	0x401b011dffc5479d              # double 6.7510909999999997
	.quad	0x401cca48f96e1587              # double 7.1975439999999997
	.quad	0x4018f9f40a2877ee              # double 6.2440949999999997
	.quad	0x40157d82ba5a0382              # double 5.3725690000000004
	.quad	0x4020279d2bf55150              # double 8.0773709999999994
	.quad	0x3fe89348b220791c              # double 0.76797899999999996
	.quad	0x401059ca18bd6627              # double 4.0876849999999996
	.quad	0x4016f0b5675579af              # double 5.7350669999999999
	.quad	0x4022a0e64b231401              # double 9.3142569999999996
	.quad	0x40168fa00e27e0f0              # double 5.6402590000000004
	.quad	0x3fdfa80cf9e3864d              # double 0.49463200000000002
	.quad	0x401195c0767d34df              # double 4.396242
	.quad	0x401714cfd08d4bad              # double 5.7703239999999996
	.quad	0x400c02c01e68a0d3              # double 3.5013429999999999
	.quad	0x3ff21e0d66f0cfe1              # double 1.1323369999999999
	.quad	0x4018c3986338b47c              # double 6.1910109999999996
	.quad	0x40144e121ee67514              # double 5.0762409999999996
	.quad	0x401cca97e132b55f              # double 7.197845
	.quad	0x4020802cb20fb225              # double 8.2503410000000006
	.quad	0x3ff433a57eaa2a0b              # double 1.2626090000000001
	.quad	0x40105404ea4a8c15              # double 4.0820499999999997
	.quad	0x3ffc759146e4c0df              # double 1.7787029999999999
	.quad	0x3fdb87ad080b673c              # double 0.43015599999999998
	.quad	0x3ff9868ec52a411c              # double 1.595351
	.quad	0x3ff0f0ea18372e6a              # double 1.0588169999999999
	.quad	0x3fdc7b45f17bd8be              # double 0.44502399999999998
	.quad	0x3fe5a46bf01322f2              # double 0.67632099999999995
	.quad	0x40236cd6e47dc37a              # double 9.7125769999999996
	.quad	0x3fcfb4edb2f661f2              # double 0.24770900000000001
	.quad	0x401bca044ae85b9f              # double 6.9472820000000004
	.quad	0x4008948c2e770bd0              # double 3.072533
	.quad	0x401789e16d6dc1a4              # double 5.8846489999999996
	.quad	0x40198b9bed30f063              # double 6.3863370000000002
	.quad	0x3fd8ef8487b99d45              # double 0.38961899999999999
	.quad	0x40225fce746cb967              # double 9.1871220000000005
	.quad	0x401991476af89c5e              # double 6.3918739999999996
	.quad	0x400bfa08398a6549              # double 3.4970859999999999
	.quad	0x40028d8665e02ea9              # double 2.3191039999999998
	.quad	0x401e63aa79bbadc1              # double 7.5973300000000003
	.quad	0x400988ec52a411c3              # double 3.1918570000000002
	.quad	0x401c15bee3d5fdce              # double 7.021236
	.quad	0x3ff318a43bb40b35              # double 1.193516
	.quad	0x3ff747c957cd466f              # double 1.4550259999999999
	.quad	0x3ffd266dbd72bcb6              # double 1.821882
	.quad	0x402041a005c4651f              # double 8.1281739999999996
	.quad	0x4023e09c3ce2089e              # double 9.9386919999999996
	.quad	0x401c47e7c06e19b9              # double 7.0702199999999999
	.quad	0x40051fc7e6b3fea0              # double 2.6405180000000001
	.quad	0x4018258b3f63c31e              # double 6.036664
	.quad	0x401caf10a99b6f5d              # double 7.1709620000000003
	.quad	0x40189531550ca1cf              # double 6.145696
	.quad	0x4023ba35f8099179              # double 9.8636929999999995
	.quad	0x3ff54c4ac6cdaf4b              # double 1.331126
	.quad	0x401b9540895d0b74              # double 6.8957540000000002
	.quad	0x401a1d8adab9f55a              # double 6.5288500000000003
	.quad	0x401ac3dccea28fe2              # double 6.6912719999999997
	.quad	0x401f9dd82fd75e20              # double 7.9041449999999998
	.quad	0x401b3ad688377186              # double 6.8074589999999997
	.quad	0x402263bb1f255f35              # double 9.1947869999999998
	.quad	0x4022d45eb313be23              # double 9.4147850000000001
	.quad	0x4019977b7c7820a3              # double 6.397932
	.quad	0x401109207d4e0978              # double 4.2589129999999997
	.quad	0x3ff3c18c5c9a34ca              # double 1.234753
	.quad	0x3ffdee99a62ed352              # double 1.870752
	.quad	0x4012f61dc93ea2d3              # double 4.740348
	.quad	0x3fe926e75ff609dd              # double 0.785999
	.quad	0x4023914467381d7e              # double 9.7837250000000004
	.quad	0x3fef5db9841aac54              # double 0.98019100000000003
	.quad	0x4020805942917508              # double 8.2506810000000002
	.quad	0x4017183e425aee63              # double 5.7736749999999999
	.quad	0x40200fbf1e8e6080              # double 8.0307549999999992
	.quad	0x3fcb8b69552e2fbe              # double 0.21519199999999999
	.quad	0x402045d590c0ad04              # double 8.1363950000000002
	.quad	0x4011f36933a0407d              # double 4.4877060000000002
	.quad	0x4011be414e7ee914              # double 4.4357959999999999
	.quad	0x400285729b280f13              # double 2.3151600000000001
	.quad	0x40077dabe27179c0              # double 2.9363630000000001
	.quad	0x401dc2c669057d18              # double 7.4402100000000004
	.quad	0x401b91b3f20a73f7              # double 6.8922879999999997
	.quad	0x3ff4f1b25f633ce6              # double 1.3090079999999999
	.quad	0x4020bf3d7d3910c3              # double 8.3735160000000004
	.quad	0x4014570329802c0a              # double 5.0849729999999997
	.quad	0x40187801f75104d5              # double 6.1171949999999997
	.quad	0x40148d141a6937d2              # double 5.137772
	.quad	0x4021a7498c3b0c46              # double 8.8267330000000008
	.quad	0x40103a897635e743              # double 4.0571650000000004
	.quad	0x3ffb4f54d1e96c40              # double 1.7068680000000001
	.quad	0x3ff874b0e1b4bb5e              # double 1.528489
	.quad	0x400901f969e3c969              # double 3.1259640000000002
	.quad	0x401a876e1deacc92              # double 6.6322559999999999
	.quad	0x4013f3cf70153bd1              # double 4.9880959999999996
	.quad	0x4017abde82d7b635              # double 5.9178410000000001
	.quad	0x3ff7d451fc4c1659              # double 1.489336
	.quad	0x401d93b5bf6a0dbb              # double 7.3942480000000002
	.quad	0x3fffea3cea6c1a05              # double 1.9946870000000001
	.quad	0x401d6c8c5004fb12              # double 7.3560040000000004
	.quad	0x401eef0ae536501e              # double 7.7334399999999999
	.quad	0x400274c6e6d9be4d              # double 2.3070200000000001
	.quad	0x401327f498c3b0c4              # double 4.7890189999999997
	.quad	0x400150b39192641b              # double 2.1644049999999999
	.quad	0x401ec670e2c12ad8              # double 7.6937899999999999
	.quad	0x40030a6b0d9513f9              # double 2.3800870000000001
	.quad	0x401c2f765fd8adac              # double 7.0463500000000003
	.quad	0x4016cb6a1e81cb47              # double 5.6986470000000002
	.quad	0x401346bf444e0daa              # double 4.819089
	.quad	0x401e3521dda059a7              # double 7.5518869999999997
	.quad	0x401ecb124d099e0e              # double 7.6983119999999996
	.quad	0x3feb6ffc115df655              # double 0.85741999999999996
	.quad	0x401f614b167ec786              # double 7.8450129999999998
	.quad	0x40215d6f75d9a0f1              # double 8.6824910000000006
	.quad	0x3ff04804102ff8ec              # double 1.017582
	.quad	0x40086f7121ab4b73              # double 3.0544150000000001
	.quad	0x401302e05ccc89b1              # double 4.7528090000000001
	.quad	0x4010ddbf8b9baa15              # double 4.2165509999999999
	.quad	0x40024dcebfec13ba              # double 2.287992
	.quad	0x401c479fa97e132b              # double 7.0699449999999997
	.quad	0x402088f42fe82518              # double 8.2674880000000002
	.quad	0x401b4844d013a92a              # double 6.8205749999999998
	.quad	0x3ff464b5568e820e              # double 1.2745869999999999
	.quad	0x3ff894ab1d4f9c20              # double 1.5362960000000001
	.quad	0x3ff0a550870110a1              # double 1.04036
	.quad	0x4000d22fad6cb535              # double 2.10263
	.quad	0x40107fd651b0ccbc              # double 4.124841
	.quad	0x4010395faa8a82a5              # double 4.0560289999999997
	.quad	0x400bf6f4384ba0e8              # double 3.4955829999999999
	.quad	0x400e3d031055b899              # double 3.7797909999999999
	.quad	0x401755a187a4a490              # double 5.8336240000000004
	.quad	0x4017e8123810e886              # double 5.9766320000000004
	.quad	0x400122b4959e6256              # double 2.1419459999999999
	.quad	0x400178f3eccc4695              # double 2.184059
	.quad	0x401d7db8348f53c5              # double 7.3727729999999996
	.quad	0x3ff789f0e4da09cc              # double 1.471177
	.quad	0x402317605ab3aabd              # double 9.5456570000000002
	.quad	0x401e1459103c8e26              # double 7.5198710000000002
	.quad	0x3fe16e264e48626f              # double 0.54469599999999996
	.quad	0x40152f67f4dbdf8f              # double 5.2962949999999998
	.quad	0x401f2980f55de58e              # double 7.7905309999999997
	.quad	0x400d76c050bd87b5              # double 3.6829839999999998
	.quad	0x3ff860370cdc8755              # double 1.52349
	.quad	0x401a437f38c5436c              # double 6.5659150000000004
	.quad	0x3ff07564302b40f6              # double 1.0286599999999999
	.quad	0x400dd545c78a6dad              # double 3.7291370000000001
	.quad	0x40228e366d7a56de              # double 9.2777589999999996
	.quad	0x401b9201cd5f99c4              # double 6.8925850000000004
	.quad	0x40011be3c105186e              # double 2.1386180000000001
	.quad	0x3ff275696e58a32f              # double 1.1536649999999999
	.quad	0x4021f20f0a5efe93              # double 8.9727709999999998
	.quad	0x4013b2d1aeb3dd12              # double 4.9246280000000002
	.quad	0x3fefaef4e0114d2f              # double 0.99010699999999995
	.quad	0x401582b9d3cbc48f              # double 5.3776619999999999
	.quad	0x3ffcc807357e670e              # double 1.798835
	.quad	0x40156e40852b4d8c              # double 5.3576680000000003
	.quad	0x4011c64302b40f67              # double 4.4436150000000003
	.quad	0x4021d30574b40703              # double 8.9121509999999997
	.quad	0x3fdf07182235b4ee              # double 0.48480800000000002
	.quad	0x3ffc6c471b478423              # double 1.776435
	.quad	0x401440813cab81f9              # double 5.0629929999999996
	.quad	0x3ffdcb6b6e0d23d5              # double 1.862163
	.quad	0x401779fc2a8869c6              # double 5.8691259999999996
	.quad	0x40181ef8055fbb51              # double 6.0302429999999996
	.quad	0x4017622856605ee5              # double 5.8458569999999996
	.quad	0x4019dc11a11233df              # double 6.4649109999999999
	.quad	0x3fe82fbe33acd5b7              # double 0.75582800000000006
	.quad	0x40115711947cfa27              # double 4.3350280000000003
	.quad	0x40068e1e71044f1a              # double 2.819394
	.quad	0x401809d7774aba38              # double 6.0096109999999996
	.quad	0x40146c82e019b0ab              # double 5.1059679999999998
	.quad	0x4015b897204295a7              # double 5.4302640000000002
	.quad	0x401e5b6c7a7c9de0              # double 7.5892809999999997
	.quad	0x401062bcf91a32b1              # double 4.0964239999999998
	.quad	0x3fe042b94d940789              # double 0.50814499999999996
	.quad	0x400fb7681669ced1              # double 3.9645540000000001
	.quad	0x401258298cc14403              # double 4.5860960000000004
	.quad	0x40128c63ae2541d9              # double 4.6370990000000001
	.quad	0x4019996744b2b778              # double 6.3998080000000002
	.quad	0x4021011e215336df              # double 8.5021830000000005
	.quad	0x401025f202107b78              # double 4.0370559999999998
	.quad	0x4002e6fac6045baf              # double 2.3627829999999999
	.quad	0x4017847735c182ed              # double 5.8793610000000003
	.quad	0x4019ffa4c61d8623              # double 6.4996520000000002
	.quad	0x40094fa69be09bb7              # double 3.1638920000000001
	.quad	0x4014d92bc2fc6973              # double 5.2120810000000004
	.quad	0x3fe7118c197e5647              # double 0.72089199999999998
	.quad	0x401a63886594af4f              # double 6.5972
	.quad	0x400f3442c7fbacb4              # double 3.9005179999999999
	.quad	0x4013741d4b6a619e              # double 4.8633930000000003
	.quad	0x400952a737110e45              # double 3.1653579999999999
	.quad	0x401f1a0c282c6ef4              # double 7.7754370000000002
	.quad	0x3ff5897fa5d28d00              # double 1.346069
	.quad	0x40166b1704ff4342              # double 5.6045800000000003
	.quad	0x401a09ac36544fe3              # double 6.5094459999999996
	.quad	0x3fffe5375c8d9f90              # double 1.9934609999999999
	.quad	0x4014c53cddd6e04c              # double 5.192615
	.quad	0x400df3b42cc2d6aa              # double 3.7439960000000001
	.quad	0x401756d6dc1a47aa              # double 5.8348040000000001
	.quad	0x3ff73f705857afea              # double 1.4529879999999999
	.quad	0x4021289f623076c0              # double 8.5793409999999994
	.quad	0x4022015b9a5a89b9              # double 9.0026519999999994
	.quad	0x401c1644955b4678              # double 7.0217460000000003
	.quad	0x400863e186983516              # double 3.0487700000000002
	.quad	0x40218f05425f2021              # double 8.7793369999999999
	.quad	0x4021e2e2da554b8c              # double 8.9431370000000001
	.quad	0x4004ca92e62131a9              # double 2.598913
	.quad	0x3fefa22706d50657              # double 0.98854399999999997
	.quad	0x4010803b81b64e05              # double 4.1252269999999998
	.quad	0x3fa44ae85b9e8c48              # double 0.039634000000000003
	.quad	0x400d713d74d594f2              # double 3.6802929999999998
	.quad	0x401e8b9841aac53b              # double 7.6363229999999999
	.quad	0x40164bf6e3f78bbd              # double 5.5741839999999998
	.quad	0x401669d12cadddf4              # double 5.6033369999999998
	.quad	0x3ff8ad7b634dad32              # double 1.542354
	.quad	0x4020f0eb8950763a              # double 8.4705469999999998
	.quad	0x40028d6777079e5a              # double 2.319045
	.quad	0x401c6fb19e731d2e              # double 7.109076
	.quad	0x4005317939a7c17b              # double 2.6491570000000002
	.quad	0x3fc362d83c6c97d9              # double 0.15145400000000001
	.quad	0x400799f559b3d07d              # double 2.9501750000000002
	.quad	0x4023bd61d4306e5d              # double 9.8698870000000002
	.quad	0x401428344c37e6f7              # double 5.0392619999999999
	.quad	0x401569f559b3d07d              # double 5.3534750000000004
	.quad	0x3fce94ccab3edd8b              # double 0.23891599999999999
	.quad	0x3fe51676640a6b94              # double 0.65899200000000002
	.quad	0x40218e191148fda0              # double 8.7775350000000003
	.quad	0x4007f0c564f97edc              # double 2.9925639999999998
	.quad	0x3fdba9c99285a922              # double 0.43223800000000001
	.quad	0x40016111ada76d98              # double 2.1723970000000001
	.quad	0x401eea958537e2c5              # double 7.7290859999999996
	.quad	0x4003d72ef0ae5365              # double 2.48007
	.quad	0x402034241c3efae8              # double 8.1018380000000008
	.quad	0x4019f31ad2135dab              # double 6.4874070000000001
	.quad	0x400263be6601bc99              # double 2.2987030000000002
	.quad	0x400452fdb8fde2ef              # double 2.5405229999999999
	.quad	0x40236d6323bbc6eb              # double 9.7136469999999999
	.quad	0x401d780b673c4f3c              # double 7.3672310000000003
	.quad	0x4022c945953586cb              # double 9.3931090000000008
	.quad	0x40104f4491298890              # double 4.0774100000000004
	.quad	0x4019be6299524bfd              # double 6.4359229999999998
	.quad	0x3ffcb2b020c49ba6              # double 1.793625
	.quad	0x401ef046412cf0fa              # double 7.7346430000000002
	.quad	0x401f90229a5ebb77              # double 7.8907569999999997
	.quad	0x4000a7c5260f5e42              # double 2.0819190000000001
	.quad	0x40224fded6ba8c58              # double 9.1559969999999992
	.quad	0x401b50f733a8a3f9              # double 6.8290680000000004
	.quad	0x3ff0ce8101f31f47              # double 1.050416
	.quad	0x401d182235b4edb3              # double 7.273568
	.quad	0x4023883382e44b6f              # double 9.7660180000000007
	.quad	0x401f33c9abb01c93              # double 7.8005740000000001
	.quad	0x401d8504c48adeec              # double 7.3799010000000003
	.quad	0x401baf893faf4278              # double 6.9214219999999997
	.quad	0x3feca541d8e86402              # double 0.895173
	.quad	0x40219ae126202539              # double 8.8024989999999992
	.quad	0x40179d5ae1cde5d2              # double 5.9036670000000004
	.quad	0x4000115379fa97e1              # double 2.0084599999999999
	.quad	0x400f50b630a91538              # double 3.9144100000000002
	.quad	0x40200f3cf70153bd              # double 8.0297619999999998
	.quad	0x400c1372a38b8ae3              # double 3.5094959999999999
	.quad	0x40081d14e3bcd35b              # double 3.0142000000000002
	.quad	0x4019b215fcc1871e              # double 6.4239119999999996
	.quad	0x401a48090b417ca2              # double 6.5703469999999999
	.quad	0x401b9dba0a526959              # double 6.9040299999999997
	.quad	0x40230368cef672b9              # double 9.5066590000000008
	.quad	0x400e985e80bed741              # double 3.8243990000000001
	.quad	0x4011acd0fe8ab4fa              # double 4.4187659999999997
	.quad	0x40062a593a2df938              # double 2.7706780000000002
	.quad	0x4015265fd8adab9f              # double 5.2874749999999997
	.quad	0x4016e019b0ab2e17              # double 5.7188480000000004
	.quad	0x4023e57060bb2bbb              # double 9.9481230000000007
	.quad	0x3fc21bc98a222d51              # double 0.14147299999999999
	.quad	0x401207d1fe64f54d              # double 4.5076369999999999
	.quad	0x4021394e7ee9142b              # double 8.6119269999999997
	.quad	0x401e01d041cc532a              # double 7.5017709999999997
	.quad	0x401af9563a9f383f              # double 6.743493
	.quad	0x40188e1fc08fa7a8              # double 6.1387929999999997
	.quad	0x4012f7521144cbe2              # double 4.7415240000000001
	.quad	0x400d03b688bda943              # double 3.6268129999999998
	.quad	0x400ef024f6598e11              # double 3.8672580000000001
	.quad	0x400f2acf312b1b37              # double 3.8959030000000001
	.quad	0x401342834d26fa40              # double 4.8149540000000002
	.quad	0x3ff90221426fe719              # double 1.5630200000000001
	.quad	0x401796e1deacc921              # double 5.8973459999999998
	.quad	0x40212c0053e2d624              # double 8.5859400000000007
	.quad	0x401d313b9f127f5f              # double 7.2980790000000004
	.quad	0x3fff9595feda6613              # double 1.9740200000000001
	.quad	0x401caaea3161a1dc              # double 7.1669090000000004
	.quad	0x401257cc7d1bb491              # double 4.5857409999999996
	.quad	0x400602396073de1e              # double 2.7510859999999999
	.quad	0x401f8b990afe60c4              # double 7.8863260000000004
	.quad	0x40080ddb5525cc42              # double 3.0067659999999998
	.quad	0x40062398a65492ff              # double 2.7673809999999999
	.quad	0x400cadab9f559b3d              # double 3.5848
	.quad	0x4015086ec17ebaf1              # double 5.258235
	.quad	0x4023a20ea5b530cf              # double 9.8165180000000002
	.quad	0x401d374fb549f948              # double 7.3040149999999997
	.quad	0x400b60064a9cdc44              # double 3.4218869999999999
	.quad	0x401d381344806291              # double 7.3047610000000001
	.quad	0x401e478d92fb19e7              # double 7.5698759999999998
	.quad	0x4020b26d698fe692              # double 8.3484909999999992
	.quad	0x401c57564302b40f              # double 7.0852899999999996
	.quad	0x400b21461b6d43d0              # double 3.3912469999999999
	.quad	0x4018a537e2c55c96              # double 6.161346
	.quad	0x401b7eacc92146a2              # double 6.8737060000000003
	.quad	0x4020ac5e0b4e11dc              # double 8.3366550000000003
	.quad	0x40239da554b8bef9              # double 9.8079020000000003
	.quad	0x3ffc2949a5657fb7              # double 1.7600800000000001
	.quad	0x40207ccad57bc7f7              # double 8.2437349999999991
	.quad	0x40109fa76534373f              # double 4.1559119999999998
	.quad	0x401c2d5cb790fb65              # double 7.0442989999999996
	.quad	0x401e11ee2435696e              # double 7.5175099999999997
	.quad	0x4013c9abf3387161              # double 4.9469450000000004
	.quad	0x40238359146e4c0e              # double 9.7565390000000001
	.quad	0x4002d955f78359bc              # double 2.3561209999999999
	.quad	0x4017c3fb7a5f41af              # double 5.941389
	.quad	0x400d497fa5d28d00              # double 3.6608879999999999
	.quad	0x4011084ad794a6ec              # double 4.2580980000000004
	.quad	0x401733a29c779a6b              # double 5.8004249999999997
	.quad	0x400afb7c7820a30e              # double 3.3727960000000001
	.quad	0x40162374ff865d7d              # double 5.5346260000000003
	.quad	0x4022d824b33daf8e              # double 9.4221550000000001
	.quad	0x4008bc126a65cf68              # double 3.0918320000000001
	.quad	0x4022b7bf61aa3f03              # double 9.3588819999999994
	.quad	0x3feea0791c4b9021              # double 0.95708899999999997
	.quad	0x3fec6df3f961804e              # double 0.88842200000000005
	.quad	0x402170f648c7192f              # double 8.7206290000000006
	.quad	0x4009972f76e6106b              # double 3.1988210000000001
	.quad	0x401ec10d38cda6e7              # double 7.6885269999999996
	.quad	0x4004948e4755ffe7              # double 2.5725370000000001
	.quad	0x4012cc3e74afd545              # double 4.6994569999999998
	.quad	0x401025614df8b157              # double 4.0365039999999999
	.quad	0x401824c985f06f69              # double 6.0359249999999998
	.quad	0x4000020685553ef7              # double 2.0009890000000001
	.quad	0x402161845dc83233              # double 8.6904629999999994
	.quad	0x40223f4e4430b179              # double 9.1236440000000005
	.quad	0x40126bad3a604e1e              # double 4.6051529999999996
	.quad	0x40234aaef2c73259              # double 9.6458659999999998
	.quad	0x40057af533f42353              # double 2.685038
	.quad	0x4023c74c09c3ce21              # double 9.8892520000000008
	.quad	0x3ffc8fb762d83c6d              # double 1.7850870000000001
	.quad	0x3fc4dfe75bc44bf5              # double 0.16308300000000001
	.quad	0x402056683c297bfa              # double 8.1687639999999995
	.quad	0x400396aceaaf35e3              # double 2.448572
	.quad	0x402048f32378ab0d              # double 8.1424800000000008
	.quad	0x4000e202d9cf13cf              # double 2.110357
	.quad	0x40135837f7be121f              # double 4.8361510000000001
	.quad	0x400b074afd545415              # double 3.3785609999999999
	.quad	0x4013b5171e29b6b3              # double 4.9268460000000003
	.quad	0x40169d1bb4916ca4              # double 5.6534259999999996
	.quad	0x401ead5bee3d5fdd              # double 7.6692960000000001
	.quad	0x40237b775b813016              # double 9.7411449999999995
	.quad	0x401f868f08461f9f              # double 7.8814049999999999
	.quad	0x401539ad85dfa872              # double 5.3063260000000003
	.quad	0x401d0af4adbc664d              # double 7.2606989999999998
	.quad	0x401688ab92c06184              # double 5.6334669999999996
	.quad	0x4014fa7008a697af              # double 5.2445680000000001
	.quad	0x4014e759ab6d00b4              # double 5.2259279999999997
	.quad	0x4019a8d10f51ac9b              # double 6.41486
	.quad	0x4010abd3804534bd              # double 4.1677989999999996
	.quad	0x4009c8beb5b2d4d4              # double 3.22302
	.quad	0x3ff678c64fdb09a6              # double 1.4044859999999999
	.quad	0x4004fe5082cf52b9              # double 2.624177
	.quad	0x3fe1e9707182235b              # double 0.55974599999999997
	.quad	0x400ded24e160d888              # double 3.740793
	.quad	0x4014caca36199781              # double 5.1980370000000002
	.quad	0x402073dc26dce39b              # double 8.2262889999999995
	.quad	0x3ffae6516db0dd83              # double 1.68123
	.quad	0x4013b29aa1d755bd              # double 4.9244180000000002
	.quad	0x4020dbf961804d98              # double 8.4296369999999996
	.quad	0x401fd27cbf6e3f79              # double 7.9555540000000002
	.quad	0x401e15e353f7ced9              # double 7.5213749999999999
	.quad	0x400cfa7546d3f9e8              # double 3.6222940000000001
	.quad	0x401f860ae9680e06              # double 7.8809009999999997
	.quad	0x3ff95fb1e18efbb1              # double 1.585863
	.quad	0x4020a08509bf9c63              # double 8.3135150000000007
	.quad	0x401186922d948dc1              # double 4.3814169999999999
	.quad	0x401ada41e57d9dbb              # double 6.7131420000000004
	.quad	0x401d0b72c5197a25              # double 7.2611800000000004
	.quad	0x3fec378ee2867275              # double 0.88178199999999995
	.quad	0x40187ec0f88333fd              # double 6.1237830000000004
	.quad	0x3ff3fa00e27e0efa              # double 1.2485360000000001
	.quad	0x3fff0f2170931013              # double 1.9411940000000001
	.quad	0x401657f0ed3d859d              # double 5.5858800000000004
	.quad	0x3ff66703afb7e910              # double 1.40015
	.quad	0x3ff42030c23fab11              # double 1.2578590000000001
	.quad	0x401d1c6a7ef9db23              # double 7.2777500000000002
	.quad	0x4023b352a8438088              # double 9.8502399999999994
	.quad	0x4013fcaa7589efd8              # double 4.9967439999999996
	.quad	0x40135e9707182236              # double 4.8423730000000003
	.quad	0x4011568986fcdee3              # double 4.3345089999999997
	.quad	0x4008ee779207d4e1              # double 3.1164390000000002
	.quad	0x4017911276fb0920              # double 5.8916719999999998
	.quad	0x3fc3be33acd5b680              # double 0.15424199999999999
	.quad	0x4002f2d666a98245              # double 2.368573
	.quad	0x4020a2dc8fb86f48              # double 8.3180890000000005
	.quad	0x402016d9be4cd749              # double 8.0446299999999997
	.quad	0x401014d1e96c3fc4              # double 4.0203319999999998
	.quad	0x401da5c70435efa6              # double 7.4118919999999999
	.quad	0x4020634f1e4b44a2              # double 8.1939630000000001
	.quad	0x3ffcd10f51ac9afe              # double 1.80104
	.quad	0x40211d45a5fc7e6b              # double 8.5571719999999996
	.quad	0x4006dea5f84cad58              # double 2.8587150000000001
	.quad	0x401041847f562175              # double 4.0639820000000002
	.quad	0x3ff2a3305100a394              # double 1.164841
	.quad	0x401c19b951c5c572              # double 7.0251210000000004
	.quad	0x400f0d81adea8976              # double 3.8815949999999999
	.quad	0x40127cb7d41743e9              # double 4.6217949999999997
	.quad	0x401327e4de3b8a1a              # double 4.7889590000000002
	.quad	0x3ff6e7c6b8b69553              # double 1.431586
	.quad	0x401367bd8be7296f              # double 4.8513089999999996
	.quad	0x4021bc40d0aaa7df              # double 8.8676820000000003
	.quad	0x401a82e62131a8ef              # double 6.6278309999999996
	.quad	0x3ff9b7681669ced1              # double 1.6072770000000001
	.quad	0x3fa12c061847f562              # double 0.033538999999999999
	.quad	0x400824a4095f2453              # double 3.0178910000000001
	.quad	0x3ff6041bb8c32a8d              # double 1.3760030000000001
	.quad	0x4020e3d1ed9dfdac              # double 8.4449609999999992
	.quad	0x4023ac0d90e23af3              # double 9.8360409999999998
	.quad	0x3fc849e44fa05144              # double 0.18975500000000001
	.quad	0x400f0563ed0f6274              # double 3.8776320000000002
	.quad	0x40058e9c4545846f              # double 2.6946340000000002
	.quad	0x401a124b33daf8df              # double 6.5178649999999996
	.quad	0x401004199fe43676              # double 4.0040040000000001
	.quad	0x4020cd805e5f30e8              # double 8.40137
	.quad	0x400ac3e39f77292c              # double 3.3456489999999999
	.quad	0x3ff21791819d2392              # double 1.130754
	.quad	0x401861059ea57215              # double 6.0947480000000001
	.quad	0x3ff687b24638c975              # double 1.408129
	.quad	0x40229e6afcce1c58              # double 9.3094099999999997
	.quad	0x4016d81beb18116f              # double 5.7110440000000002
	.quad	0x40191cf893faf428              # double 6.2782920000000004
	.quad	0x40165290eed02cd4              # double 5.5806310000000003
	.quad	0x40206cf0f9d2bf55              # double 8.2127759999999999
	.quad	0x400df239a38fbca1              # double 3.743274
	.quad	0x4003ce957470eb25              # double 2.4758710000000002
	.quad	0x401ac12839042d8c              # double 6.6886299999999999
	.quad	0x40136f36694898f6              # double 4.858606
	.quad	0x40146a908a265f0f              # double 5.1040669999999997
	.quad	0x402028b26394face              # double 8.0794859999999993
	.quad	0x401dd88e368f0846              # double 7.4614799999999999
	.quad	0x4012de5710880d80              # double 4.7171289999999999
	.quad	0x3fec5debd9018e75              # double 0.88646499999999995
	.quad	0x3ff7904d551d68c7              # double 1.4727300000000001
	.quad	0x4005f8a6dacabc51              # double 2.7464119999999999
	.quad	0x4016ae1b4bb5e0f8              # double 5.670026
	.quad	0x40190e297396d091              # double 6.2638299999999996
	.quad	0x4019ba7a85015c21              # double 6.4321080000000004
	.quad	0x3ff3281a9b8cb8e1              # double 1.1972910000000001
	.quad	0x3fd52c343b70ef56              # double 0.33082299999999998
	.quad	0x40130a4f00ef1349              # double 4.7600670000000003
	.quad	0x40114848387df5cf              # double 4.3205879999999999
	.quad	0x4021498090b417ca              # double 8.6435589999999998
	.quad	0x3ffdaaac1094a2ba              # double 1.854168
	.quad	0x401284ad794a6eb9              # double 4.6295679999999999
	.quad	0x4019cb0f6ad70e6f              # double 6.4483009999999998
	.quad	0x402279ac57e23f25              # double 9.2376430000000003
	.quad	0x4020fd2d87f88766              # double 8.4944880000000005
	.quad	0x3feca9f59ccfaeff              # double 0.89574699999999996
	.quad	0x3febc0bbb1f255f3              # double 0.86727699999999996
	.quad	0x40216953586ca8a0              # double 8.7057140000000004
	.quad	0x40066f8ceb356da0              # double 2.804468
	.quad	0x4018c8ceb356da01              # double 6.1961009999999996
	.quad	0x400e3bcb1cc96463              # double 3.7791960000000002
	.quad	0x4013910f94c87981              # double 4.891661
	.quad	0x400a307faa044ae8              # double 3.2736809999999998
	.quad	0x40231af123c42a67              # double 9.5526210000000002
	.quad	0x4013f3797460242d              # double 4.987768
	.quad	0x4015f8316a055758              # double 5.4923760000000001
	.quad	0x4011f2788db0574b              # double 4.4867879999999998
	.quad	0x40127d18d25edd05              # double 4.6221649999999999
	.quad	0x401aaf2f9873ffac              # double 6.6710799999999999
	.quad	0x4020aa05ff1d81f1              # double 8.332077
	.quad	0x4021e94467381d7e              # double 8.9556000000000004
	.quad	0x401d60bd017dae82              # double 7.3444710000000004
	.quad	0x401514d940789614              # double 5.2703600000000002
	.quad	0x3ff8f34b51372a39              # double 1.5593980000000001
	.quad	0x4023953b8e4b87be              # double 9.7914700000000003
	.quad	0x4012ad3c36113405              # double 4.6691750000000001
	.quad	0x3feb425d074213a1              # double 0.85185100000000002
	.quad	0x402337383f0bae8a              # double 9.6078510000000001
	.quad	0x40233b90ea9e6eeb              # double 9.6163399999999992
	.quad	0x3ff24aa9717df19d              # double 1.1432279999999999
	.quad	0x401a89dd7ecbb7fa              # double 6.6346340000000001
	.quad	0x401edd5a187a4a49              # double 7.716164
	.quad	0x4009724af0bf1a5d              # double 3.1808070000000002
	.quad	0x400c05269595feda              # double 3.5025149999999998
	.quad	0x4015c625e99e94ab              # double 5.4435039999999999
	.quad	0x4003a5b7cfe58601              # double 2.4559169999999999
	.quad	0x402029bf9c62a1b6              # double 8.0815400000000004
	.quad	0x401b24a3c64345d0              # double 6.7857810000000001
	.quad	0x401693c36113404f              # double 5.6443000000000003
	.quad	0x3ffd1e56cd6c2efd              # double 1.8199069999999999
	.quad	0x401684e4c942d491              # double 5.6297790000000001
	.quad	0x401ee7bfe7e1fc09              # double 7.726318
	.quad	0x3ff223baba7b9171              # double 1.133723
	.quad	0x3fc71fc4c165907e              # double 0.18065700000000001
	.quad	0x40149051c9f72f77              # double 5.1409370000000001
	.quad	0x401640385c67dfe3              # double 5.5627149999999999
	.quad	0x400e29b1fab96f22              # double 3.770359
	.quad	0x4018df240fa9c12f              # double 6.217911
	.quad	0x3fc0520d130df9be              # double 0.12750400000000001
	.quad	0x4014789f40a2877f              # double 5.1177950000000001
	.quad	0x4015debaf102363b              # double 5.4675099999999999
	.quad	0x4023fa52ce032db2              # double 9.9889130000000002
	.quad	0x401da33f42352eb6              # double 7.409421
	.quad	0x4021696872b020c5              # double 8.7058750000000007
	.quad	0x3fdc40af1cb89d6b              # double 0.44144800000000001
	.quad	0x40088028e4fb97bb              # double 3.0625779999999998
	.quad	0x400fa9057d1782d4              # double 3.9575300000000002
	.quad	0x3ff043f5f91600f3              # double 1.0165919999999999
	.quad	0x4007dfe3b03e20cd              # double 2.984321
	.quad	0x402002c1d29dc726              # double 8.0053850000000004
	.quad	0x401c3a8cdea033e8              # double 7.0571780000000004
	.quad	0x401aa67903211cb0              # double 6.6625709999999998
	.quad	0x4002b64e054690de              # double 2.339016
	.quad	0x4014d111276fb092              # double 5.204167
	.quad	0x401144aa53fc0097              # double 4.317056
	.quad	0x4021e61ac57e23f2              # double 8.9494229999999995
	.quad	0x3ff888dc11e42e12              # double 1.5334129999999999
	.quad	0x400651b3f20a73f7              # double 2.7898939999999999
	.quad	0x3ff9c2dbe7f2c301              # double 1.6100730000000001
	.quad	0x400b4b2d905c0336              # double 3.411708
	.quad	0x3ffd4c9a77e5eaab              # double 1.831202
	.quad	0x400a0a7589efd86b              # double 3.2551070000000002
	.quad	0x3ff1c7182235b4ee              # double 1.1111070000000001
	.quad	0x4006fe45803cd142              # double 2.8741560000000002
	.quad	0x3fe1f9357603925c              # double 0.56167100000000003
	.quad	0x400959ecf6380022              # double 3.1689090000000002
	.quad	0x401cc4ccee5abc0e              # double 7.1921879999999998
	.quad	0x402154163779e9d1              # double 8.6642320000000002
	.quad	0x4013ea4484944ed7              # double 4.978777
	.quad	0x3fcbb4a2339c0ebf              # double 0.21645
	.quad	0x3fcf5ad96a6a0126              # double 0.24496000000000001
	.quad	0x401257542a23bff9              # double 4.5852820000000003
	.quad	0x3ffd0c2d6a9c560c              # double 1.8154729999999999
	.quad	0x40158945f9df548f              # double 5.3840560000000002
	.quad	0x4008d4538ef34d6a              # double 3.103675
	.quad	0x4016cd46f587d6f9              # double 5.7004659999999996
	.quad	0x3fa69ced0b30b5aa              # double 0.044165999999999997
	.quad	0x3ff6aa619da9c993              # double 1.4165970000000001
	.quad	0x40196617c1bda512              # double 6.3497000000000003
	.quad	0x4014aa9435ac8a37              # double 5.1665809999999999
	.quad	0x40172106ab14ec20              # double 5.7822519999999997
	.quad	0x401037d3910c2c5e              # double 4.0545179999999998
	.quad	0x40085f687b139c95              # double 3.046586
	.quad	0x3fc7074a771c970f              # double 0.17990999999999999
	.quad	0x3fec4d7f0ed3d85a              # double 0.88446000000000002
	.quad	0x40192dc1e7967caf              # double 6.2946850000000003
	.quad	0x40212f540895d0b7              # double 8.5924379999999996
	.quad	0x400f8337a80cf9e4              # double 3.9390710000000002
	.quad	0x3feaf2ead9274e23              # double 0.84215300000000004
	.quad	0x4006870b06c43f60              # double 2.8159390000000002
	.quad	0x40204259c065b63d              # double 8.1295909999999996
	.quad	0x3fd03f63c31df762              # double 0.25386900000000001
	.quad	0x3fec6603d577963a              # double 0.88745300000000005
	.quad	0x40142641f644955b              # double 5.0373609999999998
	.quad	0x401c99613d31b9b6              # double 7.1497849999999996
	.quad	0x402231c044284dfd              # double 9.0971700000000002
	.quad	0x401bc1f10667f90e              # double 6.9393960000000003
	.quad	0x40235ced0b30b5aa              # double 9.6814959999999992
	.quad	0x401392d3c792d128              # double 4.8933859999999996
	.quad	0x40085609dcf893fb              # double 3.042011
	.quad	0x40208c0cc78e9f6b              # double 8.2735350000000007
	.quad	0x40211140fecdd0d9              # double 8.5336990000000004
	.quad	0x3ff13824d4cb9ecf              # double 1.0762069999999999
	.quad	0x3ff0b46fdeb52c9d              # double 1.044052
	.quad	0x3ff64b72c5197a25              # double 1.3934200000000001
	.quad	0x402093bb62413db8              # double 8.2885390000000001
	.quad	0x401747aaef2c7326              # double 5.8199880000000004
	.quad	0x401c2bbe878fabda              # double 7.042719
	.quad	0x401f0e62131a8ef7              # double 7.7640459999999995
	.quad	0x40233dd7ecbb7f9d              # double 9.6207879999999992
	.quad	0x402015e2478854ce              # double 8.0427420000000005
	.quad	0x3fd472367e414e7f              # double 0.319471
	.quad	0x40087e5e2478854d              # double 3.0617030000000001
	.quad	0x400083fe5c91d14e              # double 2.0644499999999999
	.quad	0x401c61f8a0902de0              # double 7.095675
	.quad	0x401c47fb69984a0e              # double 7.0702949999999998
	.quad	0x400a2c54bcf0b6b7              # double 3.2716460000000001
	.quad	0x3feb429bf162ae4b              # double 0.851881
	.quad	0x40187f102363b257              # double 6.124085
	.quad	0x3fd660b6f9fcb0c0              # double 0.34965299999999999
	.quad	0x40210ca25529fe00              # double 8.5246759999999995
	.quad	0x40148165d3996fa8              # double 5.1263649999999998
	.quad	0x3ffedb8130164841              # double 1.92859
	.quad	0x4023e77d955714ba              # double 9.9521300000000004
	.quad	0x401d8aee2003ab86              # double 7.3856739999999999
	.quad	0x3ff165d28d002e23              # double 1.087359
	.quad	0x402199d51b4fe79f              # double 8.8004540000000002
	.quad	0x4023ad90c0ad03da              # double 9.8389950000000006
	.quad	0x400c5f51697f1f9b              # double 3.5465420000000001
	.quad	0x3fed9be4cd749279              # double 0.92527999999999999
	.quad	0x401cb6e19b90ea9e              # double 7.1785949999999996
	.quad	0x401254da4ce8101f              # double 4.5828639999999998
	.quad	0x400e3d78811b1d93              # double 3.7800150000000001
	.quad	0x4023fe672fba01ef              # double 9.9968810000000001
	.quad	0x401653d145d85165              # double 5.5818529999999997
	.quad	0x3fd3001d5c31593e              # double 0.29688199999999998
	.quad	0x401f8e4f765fd8ae              # double 7.8889750000000003
	.quad	0x40030c5eb313be23              # double 2.38104
	.quad	0x4000cbb1af3a14cf              # double 2.0994600000000001
	.quad	0x4023439f127f5e85              # double 9.6320730000000001
	.quad	0x40194576cce5f740              # double 6.3178359999999998
	.quad	0x40167c55432873bd              # double 5.6214190000000004
	.quad	0x401857fe4bcad9ae              # double 6.0859310000000004
	.quad	0x4020e5e785b5b707              # double 8.4490320000000008
	.quad	0x402207d1bb4916ca              # double 9.0152719999999995
	.quad	0x401f3b8e4b87bdcf              # double 7.8081599999999999
	.quad	0x40148b4b72c5197a              # double 5.1360299999999999
	.quad	0x401f8a65cf67b1c0              # double 7.885154
	.quad	0x3fe5c4e50c5eb314              # double 0.68028500000000003
	.quad	0x401267d523b3636f              # double 4.6013989999999998
	.quad	0x401576c1e364bec6              # double 5.3659739999999996
	.quad	0x4022a920e1f7d73d              # double 9.3303290000000008
	.quad	0x4004a4d099e0e736              # double 2.580476
	.quad	0x3ffb3e89a88ace25              # double 1.7027680000000001
	.quad	0x3fefbad7d7c2ca15              # double 0.99155800000000005
	.quad	0x401b2b98c7e28241              # double 6.7925750000000003
	.quad	0x401402031ceaf252              # double 5.0019650000000002
	.quad	0x4017d398e9707182              # double 5.9566379999999999
	.quad	0x4023004e3ffef391              # double 9.5005970000000008
	.quad	0x401d900a7c5ac472              # double 7.3906650000000003
	.quad	0x3ff2bc8b0079a283              # double 1.1710309999999999
	.quad	0x400bef8487b99d45              # double 3.4919519999999999
	.quad	0x3feb312f4cf4a559              # double 0.84975400000000001
	.quad	0x4018cbd6e8af8162              # double 6.1990619999999996
	.quad	0x400ffac57e23f24e              # double 3.9974470000000002
	.quad	0x4018bf5ec80c73ac              # double 6.1868850000000002
	.quad	0x3ffc0a63305100a4              # double 1.7525360000000001
	.quad	0x40074e7d566cf41f              # double 2.9133249999999999
	.quad	0x4010c42352eb5f5f              # double 4.191541
	.quad	0x4021e58a32f44913              # double 8.9483200000000007
	.quad	0x400e090d5a5b9629              # double 3.7544200000000001
	.quad	0x40169baf965b20b8              # double 5.652037
	.quad	0x400ff7785729b281              # double 3.995835
	.quad	0x402205471715c63b              # double 9.0103080000000002
	.quad	0x3fdd0e0eb67c2870              # double 0.45398300000000003
	.quad	0x401fabc98a222d51              # double 7.9177609999999996
	.quad	0x400ae9d7ba6698bb              # double 3.3641809999999999
	.quad	0x401f23d3e4ef0282              # double 7.7849880000000002
	.quad	0x4012d7c957cd466f              # double 4.7107289999999997
	.quad	0x40106994e1a3f466              # double 4.1031069999999996
	.quad	0x400acaa21a719b4e              # double 3.3489420000000001
	.quad	0x40137af859429175              # double 4.870088
	.quad	0x4011373e24febd0a              # double 4.3039480000000001
	.quad	0x401998637bd05af7              # double 6.3988170000000002
	.quad	0x3ffb9c864883fd50              # double 1.725714
	.quad	0x4002b36c58eeae9f              # double 2.337609
	.quad	0x4020cc345cfede98              # double 8.3988370000000003
	.quad	0x402276e631f8a090              # double 9.2322249999999997
	.quad	0x40179a86d71f3626              # double 5.9009049999999998
	.quad	0x401d8ed8904f6dfc              # double 7.3894979999999997
	.quad	0x3fb85f17bd8be729              # double 0.095200999999999994
	.quad	0x400d54877681669d              # double 3.666274
	.quad	0x40055efae7924af1              # double 2.6713770000000001
	.quad	0x4012f0678c0053e3              # double 4.7347700000000001
	.quad	0x402388b6f9fcb0c0              # double 9.7670209999999997
	.quad	0x40215aec6bce8534              # double 8.6775850000000005
	.quad	0x4008be7ea5f84cad              # double 3.0930149999999998
	.quad	0x4020d4710cb295ea              # double 8.4149250000000002
	.quad	0x40186801f75104d5              # double 6.1015699999999997
	.quad	0x400e8158750c1b97              # double 3.8131569999999999
	.quad	0x4023fc4113c68662              # double 9.9926840000000006
	.quad	0x3ffd88b32ce89657              # double 1.845874
	.quad	0x402031d5e4a38327              # double 8.0973349999999993
	.quad	0x401db10e02214270              # double 7.4229050000000001
	.quad	0x402001ac79702e66              # double 8.0032689999999995
	.quad	0x4002ea6a012599ed              # double 2.3644599999999998
	.quad	0x40239f776c4827b7              # double 9.811458
	.quad	0x3ffb624edf612407              # double 1.7115009999999999
	.quad	0x4008fe5a78f25a25              # double 3.124196
	.quad	0x4000304ff43419e3              # double 2.02359
	.quad	0x4020d8da5daf07c0              # double 8.4235410000000002
	.quad	0x4021e1e731d2e0e3              # double 8.941217
	.quad	0x401259a06a6e32e4              # double 4.5875260000000004
	.quad	0x4006f3300de4c511              # double 2.868744
	.quad	0x4022db0270f38822              # double 9.4277529999999992
	.quad	0x401ada6fc58ab92c              # double 6.713317
	.quad	0x4023f0ca3e7d1351              # double 9.9702929999999998
	.quad	0x40233ef566490a35              # double 9.6229659999999999
	.quad	0x3ff31fce3150dae4              # double 1.195265
	.quad	0x400d034dad31fcd2              # double 3.6266129999999999
	.quad	0x3ffb30b06c43f5f9              # double 1.699387
	.quad	0x4009dc219eb6390d              # double 3.2324860000000002
	.quad	0x4007494812be48a6              # double 2.9107820000000002
	.quad	0x40159fdf3b645a1d              # double 5.4061250000000003
	.quad	0x4019df21f6cacd18              # double 6.4679029999999997
	.quad	0x4021e53b8e4b87be              # double 8.9477200000000003
	.quad	0x3fc3b62c77574f72              # double 0.153997
	.quad	0x401da7e5a78f25a2              # double 7.4139619999999997
	.quad	0x400e2dea897635e7              # double 3.7724199999999999
	.quad	0x3fccb380cb6c7a7d              # double 0.22422800000000001
	.quad	0x3fb8267839cd8128              # double 0.094337000000000004
	.quad	0x401a7dd9c27e9531              # double 6.6229009999999997
	.quad	0x4022e7540895d0b7              # double 9.4518129999999995
	.quad	0x40132854046412cf              # double 4.7893829999999999
	.quad	0x40176f2f9873ffac              # double 5.8585799999999999
	.quad	0x40081799e518f3ed              # double 3.0115240000000001
	.quad	0x4023653b8e4b87be              # double 9.6977200000000003
	.quad	0x40215332f01754b0              # double 8.6624979999999994
	.quad	0x3fec8c49ba5e353f              # double 0.89212499999999995
	.quad	0x401d2c647778dd61              # double 7.2933519999999996
	.quad	0x401aad8cf398e970              # double 6.6694829999999996
	.quad	0x4016a8a761027957              # double 5.664701
	.quad	0x3ff31df3300de4c5              # double 1.194812
	.quad	0x401a594ab1d4f9c2              # double 6.587199
	.quad	0x40137e8ccdd93c47              # double 4.8735840000000001
	.quad	0x401c1c7368ad6883              # double 7.0277839999999996
	.quad	0x401e9e80389f83be              # double 7.6547859999999996
	.quad	0x3ff083914f483cb0              # double 1.0321210000000001
	.quad	0x4023231593e5fb72              # double 9.568524
	.quad	0x40056cabc5154867              # double 2.6780620000000002
	.quad	0x40134556d19dece5              # double 4.8177139999999996
	.quad	0x4005944806290eed              # double 2.697403
	.quad	0x401efb6e0d23d4f1              # double 7.7455369999999996
	.quad	0x4013b94c01605250              # double 4.9309539999999998
	.quad	0x3fb63b9ae0c17657              # double 0.086846999999999994
	.quad	0x3ff474c5da6a4441              # double 1.2785089999999999
	.quad	0x402168a4c1ebc83b              # double 8.7043820000000007
	.quad	0x401f572862f5989e              # double 7.8351150000000001
	.quad	0x40203df45e0b4e12              # double 8.1210050000000003
	.quad	0x40090c8c5004fb12              # double 3.1311270000000002
	.quad	0x3fd0eafab53d640f              # double 0.26434200000000002
	.quad	0x401e3dd22856605f              # double 7.560372
	.quad	0x3feff1950331e3a8              # double 0.99824000000000001
	.quad	0x401a4020c49ba5e3              # double 6.5626249999999997
	.quad	0x402089511dffc548              # double 8.2681970000000007
	.quad	0x4007da5b9628cbd1              # double 2.9816199999999999
	.quad	0x401ea343b70ef566              # double 7.6594379999999997
	.quad	0x40221ba7daa4fca4              # double 9.0540149999999997
	.quad	0x4023c252263d816b              # double 9.8795330000000003
	.quad	0x3fea2a27f1b69121              # double 0.81764599999999998
	.quad	0x4015b163fdd65a14              # double 5.4232329999999997
	.quad	0x4005476b7ed41b76              # double 2.6598730000000002
	.quad	0x3fc3878316a05575              # double 0.15257299999999999
	.quad	0x4016f4eb56fb8f58              # double 5.739179
	.quad	0x4010b4d4cb9ecf64              # double 4.1765930000000004
	.quad	0x400e30ab2e1693c0              # double 3.7737639999999999
	.quad	0x40071ff8a8f3a9b0              # double 2.8906109999999998
	.quad	0x40206af709b738e7              # double 8.2089160000000003
	.quad	0x401e877d523b3637              # double 7.632314
	.quad	0x400233a68b19a416              # double 2.27522
	.quad	0x40091fd8adab9f56              # double 3.1405500000000002
	.quad	0x400a2aac1094a2ba              # double 3.2708360000000001
	.quad	0x40104d11be6e6538              # double 4.0752629999999996
	.quad	0x4011ac3f811f4f51              # double 4.4182110000000003
	.quad	0x3febcfd2a62aa194              # double 0.86911899999999997
	.quad	0x4010d9791819d239              # double 4.2123759999999999
	.quad	0x3ff48dd93c46d82c              # double 1.2846310000000001
	.quad	0x400b9b1960fa15db              # double 3.4507319999999999
	.quad	0x401959aaa3ad18d2              # double 6.3375649999999997
	.quad	0x400b3d00f776c482              # double 3.4047869999999998
	.quad	0x4013892684cf073a              # double 4.8839360000000003
	.quad	0x4023d47d3d4280ae              # double 9.9150179999999999
	.quad	0x40228241e57d9dbb              # double 9.2544090000000008
	.quad	0x401a493d5347a5b1              # double 6.571523
	.quad	0x400282e126202539              # double 2.3139059999999998
	.quad	0x400d45bb7b6bb129              # double 3.659049
	.quad	0x401f78ffb8b26395              # double 7.868163
	.quad	0x401918151a437825              # double 6.2735180000000001
	.quad	0x40219b419e300150              # double 8.8032350000000008
	.quad	0x40072913a4f8726d              # double 2.895057
	.quad	0x4022f8a159817b96              # double 9.4856060000000006
	.quad	0x40151bab649d388b              # double 5.2770210000000004
	.quad	0x401e31975f2cb641              # double 7.5484289999999996
	.quad	0x4022d99ed7c6fbd2              # double 9.4250399999999992
	.quad	0x402361bef49cf56f              # double 9.6909100000000005
	.quad	0x3fec7f77af64063a              # double 0.89056000000000002
	.quad	0x40053c83a96d4c34              # double 2.6545480000000001
	.quad	0x401559f77292c493              # double 5.3378579999999998
	.quad	0x402186e5eedcc20d              # double 8.7634729999999994
	.quad	0x40179f34d6a161e5              # double 5.905475
	.quad	0x3ff44acc0bdcad15              # double 1.2682610000000001
	.quad	0x40224f7ced916873              # double 9.1552500000000006
	.quad	0x4021646ed245b292              # double 8.6961580000000005
	.quad	0x4016d52934acaff7              # double 5.7081650000000002
	.quad	0x401985e679463cfb              # double 6.3807619999999998
	.quad	0x401f18854cdb7ae5              # double 7.7739459999999995
	.quad	0x401aa77079e59f2c              # double 6.6635150000000003
	.quad	0x4014bd18090b417d              # double 5.1846620000000003
	.quad	0x401aad4bf0995aaf              # double 6.6692349999999996
	.quad	0x40161001d5c31594              # double 5.5156320000000001
	.quad	0x4020f0def416bdb2              # double 8.4704510000000006
	.quad	0x400ed338f7985272              # double 3.8531360000000001
	.quad	0x4001538f7985271c              # double 2.1658010000000001
	.quad	0x4012c0f51ac9afe2              # double 4.6884350000000001
	.quad	0x4020d1f383f0bae9              # double 8.4100610000000007
	.quad	0x402234723aafff37              # double 9.1024340000000006
	.quad	0x3ff0d63cb8173322              # double 1.0523039999999999
	.quad	0x4018c44d87724fa9              # double 6.1917020000000003
	.quad	0x3ffe77db6e503fb3              # double 1.9042619999999999
	.quad	0x3fe704af922962d0              # double 0.71932200000000002
	.quad	0x401e1192ea52ef91              # double 7.5171619999999998
	.quad	0x40211c282c6ef3d4              # double 8.5549940000000006
	.quad	0x40058014727dcbde              # double 2.6875390000000001
	.quad	0x400330dae3e6c4c6              # double 2.3988550000000002
	.quad	0x3fcd8f605ab3aabd              # double 0.230938
	.quad	0x401b764bec679cc7              # double 6.8655239999999997
	.quad	0x401ab248d7e02646              # double 6.6741060000000001
	.quad	0x40147644955b4678              # double 5.1154960000000003
	.quad	0x40036dbf0563ed0f              # double 2.4285869999999998
	.quad	0x4020bec918e325d5              # double 8.3726280000000006
	.quad	0x3ff7571d1d4738a4              # double 1.4587680000000001
	.quad	0x4001ba261bf37b8d              # double 2.2158929999999999
	.quad	0x4017a836a832b991              # double 5.9142710000000003
	.quad	0x40214bfe1975f2cb              # double 8.6484229999999993
	.quad	0x4023752da98676a7              # double 9.7288639999999997
	.quad	0x40231e523704790c              # double 9.5592210000000008
	.quad	0x3fe09d1b2e59af9f              # double 0.51917800000000003
	.quad	0x3ff2b0a5efe93187              # double 1.1681269999999999
	.quad	0x3ff0cef77f27fe4c              # double 1.050529
	.quad	0x4021ff09528f190d              # double 8.9981179999999998
	.quad	0x3ffde46f15619115              # double 1.8682700000000001
	.quad	0x40134ba40d90e23b              # double 4.823868
	.quad	0x40158ec52a411c2a              # double 5.389424
	.quad	0x4006e5072085b185              # double 2.8618299999999999
	.quad	0x401933f39d1b2e5a              # double 6.3007340000000003
	.quad	0x4019952b90a78290              # double 6.3956739999999996
	.quad	0x3fef986db50f40e6              # double 0.98735700000000004
	.quad	0x4014523cc8de2ac3              # double 5.0803099999999999
	.quad	0x3fed5530489d27c4              # double 0.91664900000000004
	.quad	0x40239054ef459d99              # double 9.7818979999999999
	.quad	0x4012099f5dfeb8d8              # double 4.5093969999999999
	.quad	0x4011bd551d68c693              # double 4.434895
	.quad	0x401f88a47ecfe9b8              # double 7.8834400000000002
	.quad	0x3feeb784662bae04              # double 0.95990200000000003
	.quad	0x40050ed1bf7ad4b2              # double 2.6322359999999998
	.quad	0x40114023a6ce3583              # double 4.3126360000000004
	.quad	0x4021b6295208e150              # double 8.8557839999999999
	.quad	0x401aad58c8eef1bb              # double 6.6692840000000002
	.quad	0x401b5cd4ed2cbea5              # double 6.8406560000000001
	.quad	0x40217df69878316a              # double 8.746022
	.quad	0x401378433d6c7219              # double 4.8674439999999999
	.quad	0x400c1d031055b899              # double 3.5141659999999999
	.quad	0x3feccb1ee2435697              # double 0.89979500000000001
	.quad	0x400fe40a6b93ccd1              # double 3.986348
	.quad	0x4020dbb29a1b9f99              # double 8.4290970000000005
	.quad	0x4009da272862f599              # double 3.2315200000000002
	.quad	0x4022d58dde7a743a              # double 9.4170979999999993
	.quad	0x401e108c3f3e0371              # double 7.5161600000000001
	.quad	0x4018fed245b291b8              # double 6.2488489999999999
	.quad	0x401cd2d01c0ca601              # double 7.2058720000000003
	.quad	0x3fbccdea033e78e2              # double 0.11251700000000001
	.quad	0x4012e9e59f2ba9d2              # double 4.728415
	.quad	0x3fd2b4cc25072086              # double 0.29228500000000002
	.quad	0x3faf9bbadc0980b2              # double 0.061734999999999998
	.quad	0x4010d85d744f5d35              # double 4.2112939999999996
	.quad	0x40216f1cda2b5a21              # double 8.7170170000000002
	.quad	0x3fc5f266ba493c8a              # double 0.17146
	.quad	0x4022df3fd933e35c              # double 9.4360339999999993
	.quad	0x4001951bd61f5be6              # double 2.1978070000000001
	.quad	0x40212281fd9ba1b2              # double 8.5673980000000007
	.quad	0x4023fc61309c7ffe              # double 9.9929290000000002
	.quad	0x4021629d8409e55c              # double 8.6926079999999998
	.quad	0x400943a190082060              # double 3.158023
	.quad	0x3ff34302b40f66a5              # double 1.2038599999999999
	.quad	0x401eb7564302b40f              # double 7.6790399999999996
	.quad	0x40144443914f483d              # double 5.0666640000000003
	.quad	0x402165cca70d1fa3              # double 8.6988269999999996
	.quad	0x401cd5ce18266773              # double 7.2087940000000001
	.quad	0x40237cca925fe975              # double 9.7437330000000006
	.quad	0x40223f25c3dee782              # double 9.1233350000000009
	.quad	0x40096892ab68cef6              # double 3.1760609999999998
	.quad	0x3fefdc0db2702a35              # double 0.99561200000000005
	.quad	0x4021ffa786c22681              # double 8.9993250000000007
	.quad	0x3fe2e2d40aaeafab              # double 0.59018899999999996
	.quad	0x3ff2a950fc71d606              # double 1.166337
	.quad	0x3fda9c779a6b50b1              # double 0.4158
	.quad	0x4014ecdab191dde3              # double 5.2313029999999996
	.quad	0x4015f636b0963561              # double 5.490443
	.quad	0x3fe39c64ba94bbe4              # double 0.61284099999999997
	.quad	0x4016772d1aeb3dd1              # double 5.6163829999999999
	.quad	0x3fdb5321e603d578              # double 0.42694900000000002
	.quad	0x3ff50647778dd617              # double 1.314033
	.quad	0x400dc261bf37b8d4              # double 3.719913
	.quad	0x40092ccd530489d2              # double 3.1468759999999998
	.quad	0x402087202107b784              # double 8.2639169999999992
	.quad	0x401baeffe2a3cea7              # double 6.9208980000000002
	.quad	0x40208504c48adeec              # double 8.2598020000000005
	.quad	0x401112a12f901084              # double 4.2681930000000001
	.quad	0x4011703c07ee0b0b              # double 4.359604
	.quad	0x400d8a5accd53049              # double 3.6925560000000002
	.quad	0x40169f3b213e3e29              # double 5.6554989999999998
	.quad	0x40200dc4a83b1d0d              # double 8.0268910000000009
	.quad	0x3ffdb5a964e8b7e5              # double 1.856851
	.quad	0x4000d05b7cfe5860              # double 2.101737
	.quad	0x401757e889c1b542              # double 5.8358480000000004
	.quad	0x401b4425aee631f9              # double 6.8165500000000003
	.quad	0x40175870110a137f              # double 5.8363649999999998
	.quad	0x4017c986338b47c7              # double 5.9468009999999998
	.quad	0x401e9209aaa3ad19              # double 7.6426150000000001
	.quad	0x4019951ce28ed5f1              # double 6.3956179999999998
	.quad	0x3ff3d6744b2b777d              # double 1.239857
	.quad	0x3fb1b10fd7e45804              # double 0.069108000000000003
	.quad	0x3fff07b99d451fc5              # double 1.9393860000000001
	.quad	0x4011b65061416378              # double 4.4280410000000003
	.quad	0x401b43cd573647bb              # double 6.8162130000000003
	.quad	0x401b76deb95e5aff              # double 6.8660839999999999
	.quad	0x400920218def416c              # double 3.1406890000000001
	.quad	0x3ff8182fd75e2047              # double 1.505905
	.quad	0x401f78df7a4e7ab7              # double 7.8680399999999997
	.quad	0x401386848beb5b2d              # double 4.8813649999999997
	.quad	0x401ad333b96af039              # double 6.7062520000000001
	.quad	0x3fed4200c0f01fb8              # double 0.91430699999999998
	.quad	0x401cac5436b8f9b1              # double 7.1682899999999998
	.quad	0x4012542fe82517e7              # double 4.5822139999999996
	.quad	0x3ffc3b6fe2e6ea85              # double 1.7645109999999999
	.quad	0x3fd74f3775b81301              # double 0.36420999999999998
	.quad	0x402291ba5e353f7d              # double 9.2846250000000001
	.quad	0x401cf76cce5f7404              # double 7.2416260000000001
	.quad	0x401f8d32c625e99f              # double 7.8878890000000003
	.quad	0x3ff6c4a515ce9e5e              # double 1.423009
	.quad	0x40176268d32830a1              # double 5.8461030000000003
	.quad	0x4004fbf0563ed0f6              # double 2.6230169999999999
	.quad	0x401bb2031ceaf252              # double 6.9238400000000002
	.quad	0x4022dbc558644524              # double 9.42924
	.quad	0x401809d4d834091c              # double 6.009601
	.quad	0x40094c15d2d01c0d              # double 3.1621510000000002
	.quad	0x3ff024840e1719f8              # double 1.008915
	.quad	0x401c4067cf1c3266              # double 7.0628960000000003
	.quad	0x400cbe89a88ace25              # double 3.5930360000000001
	.quad	0x3ff33c36113404ea              # double 1.2021999999999999
	.quad	0x401ef1351159c497              # double 7.7355539999999995
	.quad	0x3ffe0aa9717df19d              # double 1.8776029999999999
	.quad	0x4003c72c94b380cb              # double 2.4722529999999998
	.quad	0x4016aaf9a8cdea03              # double 5.6669679999999998
	.quad	0x40151ecd4aa10e02              # double 5.2800799999999999
	.quad	0x4013eed0b30b5aa7              # double 4.9832179999999999
	.quad	0x4018249129888f86              # double 6.0357099999999999
	.quad	0x3fcd1c2a02320968              # double 0.22742200000000001
	.quad	0x4021f764adff822c              # double 8.9831900000000004
	.quad	0x40224b328b6d86ec              # double 9.1468699999999998
	.quad	0x400e84901d19157b              # double 3.8147280000000001
	.quad	0x40100a1db877ab32              # double 4.0098789999999997
	.quad	0x3ff550ce4ead0c3d              # double 1.332228
	.quad	0x401d0e27e0ef9980              # double 7.2638239999999996
	.quad	0x40232412ad81adeb              # double 9.5704550000000008
	.quad	0x3ff17397dd00f777              # double 1.0907210000000001
	.quad	0x4023e76cacd184c2              # double 9.9520009999999992
	.quad	0x40115aa7589efd87              # double 4.3385290000000003
	.quad	0x40196e2867275686              # double 6.3575759999999999
	.quad	0x40053be6601bc98a              # double 2.6542479999999999
	.quad	0x4013ecfc829cfdd2              # double 4.9814319999999999
	.quad	0x3fe340e1719f7f8d              # double 0.60167000000000004
	.quad	0x3fe6afad6cb53501              # double 0.70894500000000005
	.quad	0x3ff68aa9717df19d              # double 1.4088529999999999
	.quad	0x3ffe0a6fc58ab92c              # double 1.877548
	.quad	0x3ff942d6a9c560c8              # double 1.5788180000000001
	.quad	0x401b3f2cb641700d              # double 6.8116940000000001
	.quad	0x401c666490a350d3              # double 7.0999930000000004
	.quad	0x4021c85058dde7a7              # double 8.8912379999999995
	.quad	0x40136d5a9eb2074f              # double 4.8567910000000003
	.quad	0x3ff5ffda4052d667              # double 1.3749640000000001
	.quad	0x3febf2f76e6106ab              # double 0.87340899999999999
	.quad	0x4021f35f5f0b2852              # double 8.9753369999999997
	.quad	0x401f8cd35a858794              # double 7.8875250000000001
	.quad	0x401dc68986fcdee3              # double 7.4438839999999997
	.quad	0x401763465625a683              # double 5.8469480000000003
	.quad	0x3fdc33b96af038e3              # double 0.44065700000000002
	.quad	0x4007214488c60cbf              # double 2.8912439999999999
	.quad	0x4010a5ad106ee30d              # double 4.1617930000000003
	.quad	0x401c5e9dd7ecbb80              # double 7.0923990000000003
	.quad	0x402359795b35b0bc              # double 9.674754
	.quad	0x4020c9a21ea35936              # double 8.393815
	.quad	0x402005f5cf2495e1              # double 8.0116409999999991
	.quad	0x40228d52c16df3f9              # double 9.2760219999999993
	.quad	0x400b48323358f2e0              # double 3.4102519999999998
	.quad	0x40199f0739b024f6              # double 6.4053009999999997
	.quad	0x40005d67ba237cdd              # double 2.0456080000000001
	.quad	0x40066af35e310dbf              # double 2.802222
	.quad	0x401508711d798d8b              # double 5.2582440000000004
	.quad	0x40094c892ab68cef              # double 3.1623709999999998
	.quad	0x3fd6299524bfd2e9              # double 0.34628799999999998
	.quad	0x401c39c7ffde7211              # double 7.0564270000000002
	.quad	0x4004a59d12cadddf              # double 2.5808659999999999
	.quad	0x4022dcd5b6805a2d              # double 9.4313179999999992
	.quad	0x3fd03f42352eb5f6              # double 0.253861
	.quad	0x400d94d48882f0e1              # double 3.6976710000000002
	.quad	0x4003493d96638434              # double 2.4107620000000001
	.quad	0x4019fbbadc0980b2              # double 6.4958299999999998
	.quad	0x3fe3835dedf1e083              # double 0.60978600000000005
	.quad	0x3ff54fb00bcbe61d              # double 1.331955
	.quad	0x402266d20296b335              # double 9.2008209999999995
	.quad	0x402099d92b7fe08b              # double 8.3004850000000001
	.quad	0x400daf5ec80c73ac              # double 3.7106300000000001
	.quad	0x400786d0d49949e9              # double 2.9408280000000002
	.quad	0x3ff82b356da0168b              # double 1.5105489999999999
	.quad	0x3ff6f74aba387592              # double 1.4353739999999999
	.quad	0x401357aeddce7cd0              # double 4.8356279999999998
	.quad	0x402221a21ea35936              # double 9.06569
	.quad	0x40029b1f255f351a              # double 2.3257430000000001
	.quad	0x401677b6bb129025              # double 5.6169079999999996
	.quad	0x40139bce4217d285              # double 4.9021540000000003
	.quad	0x401fc8e4755ffe6d              # double 7.9461839999999996
	.quad	0x3ff090a88effe2a4              # double 1.035317
	.quad	0x4010c22f2734f82f              # double 4.1896329999999997
	.quad	0x40170cca70d1fa33              # double 5.7624909999999998
	.quad	0x401cc30b5aa71583              # double 7.1904729999999999
	.quad	0x401bba294141e9af              # double 6.9317979999999997
	.quad	0x4022df9d0a67620f              # double 9.4367450000000001
	.quad	0x4019abf93ff25e57              # double 6.4179430000000002
	.quad	0x4001b2e275ab7dc8              # double 2.2123460000000001
	.quad	0x401d12ad3e920c07              # double 7.2682390000000003
	.quad	0x3fd1374ff865d7cb              # double 0.26900099999999999
	.quad	0x3fed3a3443d46b27              # double 0.91335500000000003
	.quad	0x4011949774256bca              # double 4.3951089999999997
	.quad	0x4007e5fd8adab9f5              # double 2.9872999999999998
	.quad	0x400237f498c3b0c4              # double 2.2773219999999998
	.quad	0x3ff4a07d4e09784f              # double 1.2891820000000001
	.quad	0x401c3de6149c6f37              # double 7.0604480000000001
	.quad	0x3ffa266cb10342ab              # double 1.6343810000000001
	.quad	0x3ff9f21a2e7f6f4c              # double 1.621607
	.quad	0x4009e11fd5885d31              # double 3.2349239999999999
	.quad	0x40222f2b884406c0              # double 9.0921289999999999
	.quad	0x3fe6ed549731098d              # double 0.71647099999999997
	.quad	0x4013fb86f47b677f              # double 4.9956319999999996
	.quad	0x3ff4b810e8858ff7              # double 1.2949379999999999
	.quad	0x401a711a975afaf8              # double 6.6104529999999997
	.quad	0x40053d9a0f0a5eff              # double 2.6550790000000002
	.quad	0x400323c3a42f1ed1              # double 2.3924629999999998
	.quad	0x401d8a7610279570              # double 7.3852159999999998
	.quad	0x4002d78ab0c88a48              # double 2.355245
	.quad	0x4021ae785b5b7069              # double 8.8407619999999998
	.quad	0x4012895cc857f306              # double 4.6341429999999999
	.quad	0x4013cc3ce2089e34              # double 4.9494509999999998
	.quad	0x400caabde3fbbd7b              # double 3.5833699999999999
	.quad	0x400458c4bd33d295              # double 2.5433439999999998
	.quad	0x4022b2ab042528ae              # double 9.3489609999999992
	.quad	0x4014e40d4dc65c70              # double 5.2227069999999998
	.quad	0x3fcede3b8a19c9d6              # double 0.24115700000000001
	.quad	0x4012fe3193f6c26a              # double 4.7482360000000003
	.quad	0x401471b71758e219              # double 5.1110499999999996
	.quad	0x4022be41700cd856              # double 9.3715930000000007
	.quad	0x4020af26d04e618d              # double 8.3420930000000002
	.quad	0x4016eee30caa326e              # double 5.7332879999999999
	.quad	0x4020daf6e82949a5              # double 8.4276649999999993
	.quad	0x40198ca03c4b09ea              # double 6.3873300000000004
	.quad	0x401a01704ff4341a              # double 6.5014050000000001
	.quad	0x400cc7ee0b0af5fd              # double 3.5976219999999999
	.quad	0x4022452eb5f5f0b3              # double 9.1351220000000009
	.quad	0x4021d15336deb95e              # double 8.9088379999999994
	.quad	0x40186439de481f54              # double 6.0978770000000004
	.quad	0x3fe510795f676ea4              # double 0.65826099999999999
	.quad	0x40088d0678c0053e              # double 3.0688599999999999
	.quad	0x401a75c96030c240              # double 6.6150260000000003
	.quad	0x4023c9a0ad8a1166              # double 9.8938039999999994
	.quad	0x401359a5ebb7739f              # double 4.8375469999999998
	.quad	0x3fe6e5ffa3b9ae0c              # double 0.71557599999999999
	.quad	0x4023c0bb0a2ca9ac              # double 9.8764269999999996
	.quad	0x4011f8f9f44d4456              # double 4.4931409999999996
	.quad	0x40118b97785729b3              # double 4.3863200000000004
	.quad	0x400d6bd33d29563b              # double 3.6776490000000002
	.quad	0x401b564d3bf2f556              # double 6.8342790000000004
	.quad	0x4019f9899bf5946c              # double 6.4936889999999998
	.quad	0x40173f5ec80c73ac              # double 5.8118850000000002
	.quad	0x3ffa2d6451b93038              # double 1.636082
	.quad	0x40112435efa615a9              # double 4.2853620000000001
	.quad	0x401d279ee02a77a3              # double 7.2886920000000002
	.quad	0x4014f7075b3e1438              # double 5.2412390000000002
	.quad	0x401c19acffa7eb6c              # double 7.025074
	.quad	0x40144ae642bf9831              # double 5.0731440000000001
	.quad	0x400327c957cd466f              # double 2.3944269999999999
	.quad	0x4023771fff79c843              # double 9.732666
	.quad	0x400d224894c447c3              # double 3.64174
	.quad	0x4015b9f559b3d07d              # double 5.4316000000000004
	.quad	0x4011b4b167ec7864              # double 4.4264580000000002
	.quad	0x4020019e94ab1d50              # double 8.0031630000000007
	.quad	0x4020aa44a6223e18              # double 8.3325549999999993
	.quad	0x3fe283fb3743632c              # double 0.57861099999999999
	.quad	0x3ff30d21bc126a66              # double 1.190706
	.quad	0x40138681ecd4aa11              # double 4.8813550000000001
	.quad	0x401e6dd2ae8e1d65              # double 7.6072490000000003
	.quad	0x4021fa4e379b77c0              # double 8.9888779999999997
	.quad	0x3ff51fe111276fb1              # double 1.3202830000000001
	.quad	0x400ccdaa0cae642c              # double 3.600422
	.quad	0x400847fa1a0cf180              # double 3.035145
	.quad	0x4017f6dacabc5155              # double 5.9910690000000004
	.quad	0x400a961f5be5d9e4              # double 3.323302
	.quad	0x401ca2374794ea07              # double 7.1584139999999996
	.quad	0x4009989b52007dd4              # double 3.1995149999999999
	.quad	0x4020deb80ecfa69c              # double 8.4349980000000002
	.quad	0x40116c460ed80a18              # double 4.3557360000000003
	.quad	0x401d944e93e1c9b4              # double 7.3948309999999999
	.quad	0x4011a55ac03ff690              # double 4.4114789999999999
	.quad	0x3ffd884d76ab5808              # double 1.845777
	.quad	0x400421719f7f8ca8              # double 2.51633
	.quad	0x4007b0e0a84be404              # double 2.9613659999999999
	.quad	0x401eba7d6733ebc0              # double 7.6821190000000001
	.quad	0x4013ff9f44d44567              # double 4.9996309999999999
	.quad	0x401553e07a28bb0a              # double 5.3319109999999998
	.quad	0x400ea9802c0a4a06              # double 3.8327640000000001
	.quad	0x40221e25204af923              # double 9.0588770000000007
	.quad	0x400029bcfd4bf099              # double 2.0203799999999998
	.quad	0x40080817fc7607c4              # double 3.003952
	.quad	0x4006e3a2163fdd66              # double 2.8611490000000002
	.quad	0x3fee8adeebb341e1              # double 0.95445199999999997
	.quad	0x3ff79d052934acb0              # double 1.475835
	.quad	0x3fe8e9ff0cbaf966              # double 0.77856400000000003
	.quad	0x401c824edf612407              # double 7.1272539999999998
	.quad	0x3febbfa0945f9df5              # double 0.86714199999999997
	.quad	0x4013e11c2a023209              # double 4.9698339999999996
	.quad	0x3fd64228997c3d68              # double 0.34778799999999999
	.quad	0x402375109070fbec              # double 9.7286420000000006
	.quad	0x4014f9524bfd2e94              # double 5.2434779999999996
	.quad	0x3fea468ec52a411c              # double 0.82111299999999998
	.quad	0x4017640d4dc65c70              # double 5.8477069999999998
	.quad	0x3fed5c5b4aa9717e              # double 0.91752400000000001
	.quad	0x40205bce2089e343              # double 8.1793069999999997
	.quad	0x4019dced4e4c942d              # double 6.4657489999999997
	.quad	0x400ee7d5ed06fef8              # double 3.8632010000000001
	.quad	0x401e3c154c985f07              # double 7.558675
	.quad	0x401dd7add15f02c5              # double 7.4606240000000001
	.quad	0x4018339cd8127b2d              # double 6.0504030000000002
	.quad	0x402027765fd8adac              # double 8.0770750000000006
	.quad	0x400050331e3a7daa              # double 2.0391599999999999
	.quad	0x4019930121682f94              # double 6.3935589999999998
	.quad	0x400894dc65c70436              # double 3.072686
	.quad	0x401cea8049667b5f              # double 7.2290049999999999
	.quad	0x4019dcb85a4f00ef              # double 6.4655469999999999
	.quad	0x3fe9c940bbb1f256              # double 0.80581700000000001
	.quad	0x400658372e6a7696              # double 2.7930739999999998
	.quad	0x40035e3fbbd7b203              # double 2.4210199999999999
	.quad	0x40192b063e07a28c              # double 6.2920160000000003
	.quad	0x4020d85bc01a36e3              # double 8.4225750000000001
	.quad	0x401939707182235b              # double 6.3060929999999997
	.quad	0x4018c694898f605b              # double 6.1939260000000003
	.quad	0x3fee7f4dbdf8f473              # double 0.95304
	.quad	0x400d1db0142f61ed              # double 3.6394959999999998
	.quad	0x40132f2e8c0485a1              # double 4.7960760000000002
	.quad	0x401d9fe974a3400c              # double 7.4061640000000004
	.quad	0x40123385c67dfe33              # double 4.5503150000000003
	.quad	0x4012914a90470a81              # double 4.6418860000000004
	.quad	0x40142b9a176ddacf              # double 5.0425800000000001
	.quad	0x3ff0436544fe36d2              # double 1.016454
	.quad	0x401b03ad18d25edd              # double 6.75359
	.quad	0x4001838c9752977d              # double 2.1892330000000002
	.quad	0x40239a9691a75cd1              # double 9.8019300000000004
	.quad	0x401bc009b30728e9              # double 6.9375369999999998
	.quad	0x3fe7f861a60d4563              # double 0.74907000000000001
	.quad	0x4011b1ba3ca7503c              # double 4.4235620000000004
	.quad	0x3ff155e9e1b089a0              # double 1.083475
	.quad	0x400d503968d759ef              # double 3.6641720000000002
	.quad	0x4009b7de0d66f0d0              # double 3.2147790000000001
	.quad	0x40033548ecd8dbcf              # double 2.4010180000000001
	.quad	0x402326ff9f87f024              # double 9.5761690000000001
	.quad	0x4007150092ccf6be              # double 2.8852549999999999
	.quad	0x4020f546d3f9e7b8              # double 8.4790559999999999
	.quad	0x4014a7b352a84381              # double 5.1637700000000004
	.quad	0x401596a5d6bebe16              # double 5.3971169999999997
	.quad	0x4021c022dd7a99fa              # double 8.8752659999999999
	.quad	0x401cc7253da72a7c              # double 7.1944780000000002
	.quad	0x402337be9856a37b              # double 9.6088760000000004
	.quad	0x3fcb4f0520d130e0              # double 0.21334900000000001
	.quad	0x400b23bcd35a8588              # double 3.3924500000000002
	.quad	0x40051e49b1fab96f              # double 2.6397889999999999
	.quad	0x3fefc534bd76ee74              # double 0.99282300000000001
	.quad	0x3fe8cebfec13b9f1              # double 0.77523799999999998
	.quad	0x400c2cf4a558ea7d              # double 3.5219510000000001
	.quad	0x4000982dbe7f2c30              # double 2.074306
	.quad	0x400e82036006d0d5              # double 3.8134830000000002
	.quad	0x40201804534bd76f              # double 8.0469080000000002
	.quad	0x3ff6b8183f91e647              # double 1.419945
	.quad	0x40225cc1871e6cd3              # double 9.1811640000000008
	.quad	0x40163679cc74b839              # double 5.5531990000000002
	.quad	0x402074827b6fe2e7              # double 8.2275580000000001
	.quad	0x401c57219220ff54              # double 7.085089
	.quad	0x4005e97a67a52ac7              # double 2.7390029999999999
	.quad	0x401553be6601bc99              # double 5.3317810000000003
	.quad	0x4014873b85e80bed              # double 5.1320629999999996
	.quad	0x4022a110c2c5e2ce              # double 9.3145810000000004
	.quad	0x4023532441fea811              # double 9.6623859999999996
	.quad	0x3ff9ba3b9ae0c176              # double 1.6079669999999999
	.quad	0x401d6b328b6d86ec              # double 7.3546849999999999
	.quad	0x40076d74927913e8              # double 2.928445
	.quad	0x401b19c17225b74a              # double 6.7751520000000003
	.quad	0x3faffa5d28d002e2              # double 0.062456999999999999
	.quad	0x3ff7c45aa2e3c537              # double 1.485438
	.quad	0x4018e16bdb1a6d6a              # double 6.2201380000000004
	.quad	0x4022e9187e7c06e2              # double 9.4552650000000007
	.quad	0x3fffb583a53b8e4c              # double 1.9818150000000001
	.quad	0x3ffecc692f6e8295              # double 1.9249050000000001
	.quad	0x3fcffde7210be942              # double 0.24993599999999999
	.quad	0x402069cfdd228566              # double 8.206664
	.quad	0x4015151bd61f5be6              # double 5.2706140000000001
	.quad	0x40205ef3b213e3e3              # double 8.1854530000000008
	.quad	0x4021f3a8c586876e              # double 8.9758969999999998
	.quad	0x401bdba387592535              # double 6.9644909999999998
	.quad	0x3ff3eff5c6c11a11              # double 1.246084
	.quad	0x401b07460242d05f              # double 6.7571029999999999
	.quad	0x40203681882adc4d              # double 8.1064570000000007
	.quad	0x40238d23b3636f3b              # double 9.7756629999999997
	.quad	0x4020a08d2a1f8e3b              # double 8.3135770000000004
	.quad	0x4008fd1a21ea3593              # double 3.1235849999999998
	.quad	0x3f94f2ae07e5a78f              # double 0.020456999999999999
	.quad	0x3ffc786b15f88fc9              # double 1.779399
	.quad	0x40147a02b841248d              # double 5.1191509999999996
	.quad	0x401e5338b47c73ef              # double 7.581271
	.quad	0x3fff099ae924f228              # double 1.939845
	.quad	0x401111e92923e5b8              # double 4.2674909999999997
	.quad	0x4022e779420b3d4b              # double 9.4520970000000001
	.quad	0x400a675360d02470              # double 3.3004519999999999
	.quad	0x3fe283a96d4c33b5              # double 0.57857199999999998
	.quad	0x40079e7a743a6480              # double 2.9523820000000001
	.quad	0x3ff80ef240fa9c13              # double 1.503649
	.quad	0x40225506fef7c244              # double 9.1660690000000002
	.quad	0x4015bc8b0079a283              # double 5.4341239999999997
	.quad	0x3ffbbda61e0c5a81              # double 1.7338009999999999
	.quad	0x4011b4202d9cf13d              # double 4.4259040000000001
	.quad	0x3ff2f7ac3eb7cbb4              # double 1.185467
	.quad	0x40130c5e2cdc011d              # double 4.7620779999999998
	.quad	0x40235e108c3f3e03              # double 9.6837199999999992
	.quad	0x401931af3a14cec4              # double 6.2985199999999999
	.quad	0x4011243d89ce4a7b              # double 4.2853909999999997
	.quad	0x40194a187a4a48f9              # double 6.3223589999999996
	.quad	0x4022aa71151611ba              # double 9.3328939999999996
	.quad	0x40082106ab14ec20              # double 3.0161259999999999
	.quad	0x400f8e9813879c41              # double 3.944626
	.quad	0x400d30dc768dfbd7              # double 3.6488580000000002
	.quad	0x40156f7ced916873              # double 5.3588750000000003
	.quad	0x401ead577963992d              # double 7.6692790000000004
	.quad	0x3fffe2328f9f44d4              # double 1.9927239999999999
	.quad	0x3ff8e42070b8cfc0              # double 1.5556950000000001
	.quad	0x401cfe38eb0318b9              # double 7.2482639999999998
	.quad	0x401f4d5454152b0a              # double 7.8255169999999996
	.quad	0x40205cab3edd8b61              # double 8.1809940000000001
	.quad	0x400bfa2b5a20ddc6              # double 3.497153
	.quad	0x401f4fcdee34fc61              # double 7.8279339999999999
	.quad	0x40211a615a8deb10              # double 8.5515240000000006
	.quad	0x3ff290f51ac9afe2              # double 1.16039
	.quad	0x401cab417ca2120e              # double 7.1672419999999999
	.quad	0x40205071a3b14a90              # double 8.1571169999999995
	.quad	0x4017112cadddf43c              # double 5.7667719999999996
	.quad	0x3fd8396d0917d6b6              # double 0.37850499999999998
	.quad	0x4013334d6a161e4f              # double 4.8000999999999996
	.quad	0x4018090eed02cd3a              # double 6.0088460000000001
	.quad	0x401900cb6c7a7c9e              # double 6.2507760000000001
	.quad	0x40128b1183b60286              # double 4.6358090000000001
	.quad	0x401cff9df548ecd9              # double 7.2496260000000001
	.quad	0x401b50c8472c0e7c              # double 6.8288890000000002
	.quad	0x4007ab417ca2120e              # double 2.9586209999999999
	.quad	0x4022c3ccaf709b74              # double 9.3824210000000007
	.quad	0x40161ee17a02fb5d              # double 5.530157
	.quad	0x4019d9e59f2ba9d2              # double 6.46279
	.quad	0x4001bd8cf398e970              # double 2.2175539999999998
	.quad	0x4012624894c447c3              # double 4.59598
	.quad	0x401207542a23bff9              # double 4.5071570000000003
	.quad	0x3ffb21f6cacd184c              # double 1.695792
	.quad	0x40043a027525460b              # double 2.5283250000000002
	.quad	0x4014a7eae5bc87db              # double 5.1639819999999999
	.quad	0x402271dba908a266              # double 9.2223790000000001
	.quad	0x400c6dd93c46d82c              # double 3.5536370000000002
	.quad	0x400383193f6c269a              # double 2.4390130000000001
	.quad	0x40215f8e7ddca4b1              # double 8.6866339999999997
	.quad	0x4021619f5dfeb8d8              # double 8.6906689999999998
	.quad	0x40170f04ddb5525d              # double 5.7646670000000002
	.quad	0x4017bfe004b7f5a5              # double 5.9373779999999998
	.quad	0x401edf3493858362              # double 7.7179739999999999
	.quad	0x3fb6c11a11233df3              # double 0.088884000000000005
	.quad	0x3fdf6deb95e5aff3              # double 0.49108400000000002
	.quad	0x401be49adc8fb86f              # double 6.9732469999999998
	.quad	0x401c304c48adeebb              # double 7.0471659999999998
	.quad	0x4018979d909f1f15              # double 6.1480620000000004
	.quad	0x4010ecb85a4f00ef              # double 4.2311719999999999
	.quad	0x3fde941c8216c615              # double 0.47778999999999999
	.quad	0x40137aa582dbe7f3              # double 4.8697720000000002
	.quad	0x3fe77ba237cdcca7              # double 0.73384199999999999
	.quad	0x4011271476af89c6              # double 4.2881640000000001
	.quad	0x401f3e6d58c8eef2              # double 7.8109640000000002
	.quad	0x401007fa5d28d003              # double 4.0077910000000001
	.quad	0x40154df7a4e7ab75              # double 5.3261399999999997
	.quad	0x40234526b723ee1c              # double 9.6350610000000003
	.quad	0x4022ca272862f599              # double 9.3948300000000006
	.quad	0x40137e1975f2cb64              # double 4.8731439999999999
	.quad	0x401fad59d55e6bc6              # double 7.9192879999999999
	.quad	0x40183325918a009f              # double 6.0499479999999997
	.quad	0x3ff1a9131ec0b567              # double 1.1037779999999999
	.quad	0x40238d6a9c560c7c              # double 9.7762039999999998
	.quad	0x40093c6fbd273d5c              # double 3.1545100000000001
	.quad	0x3fdf2dc2b0ea1837              # double 0.48716799999999999
	.quad	0x3fef7503b81b64e0              # double 0.98303399999999996
	.quad	0x3ff1622f6a50d6b2              # double 1.086471
	.quad	0x40025a11233df2aa              # double 2.2939780000000001
	.quad	0x40017246bf01322f              # double 2.1807989999999999
	.quad	0x401f38676a7264a1              # double 7.8050819999999996
	.quad	0x401e1c1a8ac5c140              # double 7.5274450000000002
	.quad	0x3fd0c2c5e2cdc012              # double 0.26188800000000001
	.quad	0x40061e7fb267c6b9              # double 2.7648920000000001
	.quad	0x40139e58e64b2314              # double 4.904636
	.quad	0x401fdb866e43aa7a              # double 7.9643800000000002
	.quad	0x401445e353f7ced9              # double 5.0682499999999999
	.quad	0x3fefd823422467be              # double 0.99513399999999996
	.quad	0x40003887ebf22c02              # double 2.027603
	.quad	0x401bf929aa1d755c              # double 6.9933230000000002
	.quad	0x401a634549b62c77              # double 6.5969439999999997
	.quad	0x4013d5c28f5c28f6              # double 4.9587500000000002
	.quad	0x40239452a411c2a0              # double 9.7896929999999998
	.quad	0x40062942d490e66d              # double 2.7701470000000001
	.quad	0x402319d5a187a4a5              # double 9.5504580000000007
	.quad	0x4011541355475a32              # double 4.3321050000000003
	.quad	0x40087779e9d0e992              # double 3.058338
	.quad	0x4023a5a187a4a490              # double 9.8234980000000007
	.quad	0x401d1cca2db61bb0              # double 7.2781149999999997
	.quad	0x40231b1d0c804103              # double 9.552956
	.quad	0x40105d8d36b4c7f3              # double 4.0913589999999997
	.quad	0x3ff55ecf63800219              # double 1.335647
	.quad	0x3fd50064a9cdc444              # double 0.32814900000000002
	.quad	0x4002a245f5ad96a7              # double 2.3292350000000002
	.quad	0x401b6a6e32e3821b              # double 6.853936
	.quad	0x401e404bc27631b6              # double 7.5627890000000004
	.quad	0x401d394af4f0d845              # double 7.3059500000000002
	.quad	0x401e71101b003687              # double 7.6104130000000003
	.quad	0x3ff6828d434a01ac              # double 1.406873
	.quad	0x3ff46b59146e4c0e              # double 1.276208
	.quad	0x40219ff9d6f112fd              # double 8.8124529999999996
	.quad	0x400f4408d8ec95c0              # double 3.90822
	.quad	0x40208bba55d1c3ad              # double 8.2729060000000008
	.quad	0x4023fb1c219eb639              # double 9.9904489999999999
	.quad	0x4018a9ea57214f05              # double 6.1659329999999999
	.quad	0x40023ead4f5903a7              # double 2.2806039999999999
	.quad	0x40238bcc2938de6e              # double 9.7730420000000002
	.quad	0x4013d247cb70ac3b              # double 4.9553520000000004
	.quad	0x401fd3c07ee0b0af              # double 7.9567889999999996
	.quad	0x40204d104d551d69              # double 8.1505150000000004
	.quad	0x401dc377e1b8ed1c              # double 7.440887
	.quad	0x401d91e7967caea7              # double 7.3924849999999998
	.quad	0x40134a3a08398a65              # double 4.8224869999999997
	.quad	0x400778ca8198f1d4              # double 2.93398
	.quad	0x3ffe07abfb9bed31              # double 1.876873
	.quad	0x4021a344806290ef              # double 8.8188820000000003
	.quad	0x400287839cd8127b              # double 2.3161689999999999
	.quad	0x401ba8b47c73eee5              # double 6.9147509999999999
	.quad	0x40176d64d7f0ed3e              # double 5.8568300000000004
	.quad	0x400047e414e7ee91              # double 2.0351029999999999
	.quad	0x4023f717df19d66b              # double 9.9826040000000002
	.quad	0x401eb61f18c9fb61              # double 7.6778529999999998
	.quad	0x401a98b04ab606b8              # double 6.6491100000000003
	.quad	0x3fe5641f644955b4              # double 0.66847199999999996
	.quad	0x4015c471b4784231              # double 5.44184
	.quad	0x401c59973d9ec700              # double 7.087491
	.quad	0x4020e095af294dd7              # double 8.4386419999999998
	.quad	0x4015ddc8b86b15f9              # double 5.4665860000000004
	.quad	0x402067603925bb7b              # double 8.2019059999999993
	.quad	0x40191bb9496249a1              # double 6.2770739999999998
	.quad	0x3fb9b1209edbf8ba              # double 0.100359
	.quad	0x4021a9ea57214f05              # double 8.8318659999999998
	.quad	0x401e7723ee1bd1ee              # double 7.6163480000000003
	.quad	0x4022398eda22f6a5              # double 9.1124179999999999
	.quad	0x401d7c679cc74b84              # double 7.3714890000000004
	.quad	0x40122ae297396d09              # double 4.5418799999999999
	.quad	0x3ff4da059a73b42d              # double 1.3032280000000001
	.quad	0x401e3e33eff19503              # double 7.5607449999999998
	.quad	0x4000f5af294dd723              # double 2.1199629999999998
	.quad	0x3fec73c4f3ba7760              # double 0.88913200000000003
	.quad	0x3fec5b163baba7b9              # double 0.88611899999999999
	.quad	0x3fed7a00e27e0efa              # double 0.92114300000000005
	.quad	0x4008e26cc1ca3a4b              # double 3.1105589999999999
	.quad	0x4013a6f19934efcc              # double 4.9130310000000001
	.quad	0x4011f9ea57214f05              # double 4.4940579999999999
	.quad	0x4023e1dc50ce4ead              # double 9.9411339999999999
	.quad	0x3ff91b0574b40703              # double 1.569097
	.quad	0x3fd19ce075f6fd22              # double 0.2752
	.quad	0x40194ede54b48d3b              # double 6.3270200000000001
	.quad	0x40139269df97aaac              # double 4.8929819999999999
	.quad	0x4020bba3443d46b2              # double 8.3664799999999993
	.quad	0x400743504c48adef              # double 2.9078680000000001
	.quad	0x4023a6045baf533f              # double 9.8242519999999995
	.quad	0x400b041d4b6a619e              # double 3.3770090000000001
	.quad	0x3ff58d49949e8816              # double 1.346994
	.quad	0x40108e37de939eae              # double 4.1388850000000001
	.quad	0x40179afd5454152b              # double 5.901357
	.quad	0x4022de8b3b320536              # double 9.4346560000000004
	.quad	0x4020e50fa58f7122              # double 8.4473850000000006
	.quad	0x4009d4db59578a2b              # double 3.2289340000000002
	.quad	0x401f5ad42c3c9eed              # double 7.8387000000000002
	.quad	0x40200af78feef5ed              # double 8.0214200000000009
	.quad	0x40187abc947064ed              # double 6.1198600000000001
	.quad	0x402391da37ef5a96              # double 9.7848679999999995
	.quad	0x401a313e81450efe              # double 6.5480900000000002
	.quad	0x4013791fb3fa6df0              # double 4.8682850000000002
	.quad	0x4020438a7e73a366              # double 8.1319160000000004
	.quad	0x3ff512b3cc4ac6ce              # double 1.3170660000000001
	.quad	0x3ff8fd6d7e889c1b              # double 1.5618719999999999
	.quad	0x401ff36cdf266ba5              # double 7.9877200000000003
	.quad	0x4020f4f56eac8605              # double 8.4784349999999993
	.quad	0x401d21d3aa369fcf              # double 7.2830339999999998
	.quad	0x3f98c5436b8f9b13              # double 0.02419
	.quad	0x40032e618ce2d1f2              # double 2.3976470000000001
	.quad	0x3ff0aa5f84cad57c              # double 1.041595
	.quad	0x400b26c43f5f9160              # double 3.393929
	.quad	0x40113b8a19c9d5a2              # double 4.3081440000000004
	.quad	0x401dd0f40e5a35d6              # double 7.4540559999999996
	.quad	0x3ff31248d7e02646              # double 1.191964
	.quad	0x4017eb1897a67a53              # double 5.9795860000000003
	.quad	0x402215d0b73d188f              # double 9.0426079999999995
	.quad	0x401872e019b0ab2e              # double 6.1121829999999999
	.quad	0x4005f3c89f40a287              # double 2.7440349999999998
	.quad	0x401333dff3f0fe04              # double 4.8006589999999996
	.quad	0x40165c347e8ccdd9              # double 5.5900439999999998
	.quad	0x3ff2e7c8d195896a              # double 1.1815880000000001
	.quad	0x40235c7c5260f5e4              # double 9.6806359999999997
	.quad	0x4019cbba98eda22f              # double 6.4489539999999996
	.quad	0x3fd66d43d03968d7              # double 0.35041899999999998
	.quad	0x4021daaa9f7b5aea              # double 8.9270829999999997
	.quad	0x4009486f049a9974              # double 3.1603680000000001
	.quad	0x402083e27179bfdf              # double 8.2575869999999991
	.quad	0x40170b003686a4ca              # double 5.7607429999999997
	.quad	0x4001cf30a4e379b7              # double 2.2261669999999998
	.quad	0x401d9c422036006d              # double 7.402596
	.quad	0x3ff317bd8be7296f              # double 1.1932959999999999
	.quad	0x4013669b9d7fd827              # double 4.8502029999999996
	.quad	0x4007a17f4128bf3c              # double 2.953856
	.quad	0x3ffb788b9778572a              # double 1.7169300000000001
	.quad	0x40233b3e35c5b4ab              # double 9.6157090000000007
	.quad	0x4017425e99e94ab2              # double 5.8148140000000001
	.quad	0x4013f966be7afa72              # double 4.9935559999999999
	.quad	0x402121d388a8b08e              # double 8.5660670000000003
	.quad	0x400442f2f9873ffb              # double 2.5326900000000001
	.quad	0x4000d2c59fb1e18f              # double 2.102916
	.quad	0x3ff33eaa2a0a9585              # double 1.202799
	.quad	0x40183a8112ba16e8              # double 6.0571330000000003
	.quad	0x3ff388c7192ea52f              # double 1.220893
	.quad	0x400152c6ac215b9a              # double 2.1654179999999998
	.quad	0x401aee736049ecb3              # double 6.7328619999999999
	.quad	0x40186548a9bcfd4c              # double 6.0989100000000001
	.quad	0x4012a5bff04577d9              # double 4.6618649999999997
	.quad	0x401986c93a711516              # double 6.3816269999999999
	.quad	0x4023b2033e78e193              # double 9.8476809999999996
	.quad	0x402106994185058e              # double 8.5128880000000002
	.quad	0x401f8a658c4bd33d              # double 7.8851529999999998
	.quad	0x400b97a4e7ab7564              # double 3.4490449999999999
	.quad	0x400b366277c45cbc              # double 3.4015550000000001
	.quad	0x40218051a8694035              # double 8.7506229999999992
	.quad	0x401da10880d801b4              # double 7.4072589999999998
	.quad	0x40000389f83be660              # double 2.001728
	.quad	0x400c3caea747d806              # double 3.52963
	.quad	0x40139b224aada33c              # double 4.9014980000000001
	.quad	0x401c65ac03ff6901              # double 7.0992889999999997
	.quad	0x400772b1b36bd2b7              # double 2.931003
	.quad	0x401390379314445b              # double 4.8908370000000003
	.quad	0x3fd97b0f6ad70e6f              # double 0.39813599999999999
	.quad	0x4015a39cd8127b2d              # double 5.4097780000000002
	.quad	0x3ffe813122b7baed              # double 1.906541
	.quad	0x400200a5269595ff              # double 2.2503150000000001
	.quad	0x40195e581cf7878b              # double 6.3421329999999996
	.quad	0x400c2cbea4ebdd33              # double 3.5218479999999999
	.quad	0x401d31a048e043a2              # double 7.2984629999999999
	.quad	0x3feb603b3e9a6f82              # double 0.85549699999999995
	.quad	0x3ff0cc5fbf83382e              # double 1.0498959999999999
	.quad	0x401462cdc011d367              # double 5.0964879999999999
	.quad	0x401c65e1c15097c8              # double 7.099494
	.quad	0x400e376922d948dc              # double 3.777056
	.quad	0x4023371e4b44a1f1              # double 9.6076530000000008
	.quad	0x4022ac3201040bfe              # double 9.3363189999999996
	.quad	0x3feee9c23b7952d2              # double 0.96603499999999998
	.quad	0x4021839ffd60e94f              # double 8.7570800000000002
	.quad	0x401897214f0520d1              # double 6.1475879999999998
	.quad	0x400a50c0ad03d9a9              # double 3.2894299999999999
	.quad	0x401a7fa0945f9df5              # double 6.6246359999999997
	.quad	0x4010d94141e9af5c              # double 4.2121630000000003
	.quad	0x4006d36d655e28aa              # double 2.8532359999999999
	.quad	0x40040d29131ec0b5              # double 2.5064259999999998
	.quad	0x4022db3636f3b214              # double 9.4281480000000001
	.quad	0x4021f239e6ab9b24              # double 8.9730980000000002
	.quad	0x3ff3d389b52007dd              # double 1.2391449999999999
	.quad	0x402283b0813cab82              # double 9.257206
	.quad	0x4016df6c2699c7bd              # double 5.7181860000000002
	.quad	0x401a79da16616b55              # double 6.6189960000000001
	.quad	0x3ff7a2b5a20ddc62              # double 1.4772240000000001
	.quad	0x3fd2ba30121682f9              # double 0.29261399999999999
	.quad	0x3ff4aa6c1a048e04              # double 1.2916069999999999
	.quad	0x40151171e29b6b2b              # double 5.2670360000000001
	.quad	0x401011c714fce747              # double 4.0173610000000002
	.quad	0x402114944ed6fda8              # double 8.5401939999999996
	.quad	0x40187510d38cda6e              # double 6.1143219999999996
	.quad	0x4002a8ed5f138bce              # double 2.332484
	.quad	0x3ff6baa369fcf3dc              # double 1.420566
	.quad	0x4022e4db59578a2b              # double 9.4469860000000007
	.quad	0x401d06a444178705              # double 7.2564859999999998
	.quad	0x402049e83e425aee              # double 8.1443499999999993
	.quad	0x3fe813c254a3c643              # double 0.75241199999999997
	.quad	0x3fa008637bd05af7              # double 0.031314000000000002
	.quad	0x3ff90a6223e18698              # double 1.565035
	.quad	0x401a18372e6a7696              # double 6.5236479999999997
	.quad	0x3ffcec80c73abc94              # double 1.8077399999999999
	.quad	0x400df9652bd3c361              # double 3.746775
	.quad	0x3ffb071d60631727              # double 1.6892370000000001
	.quad	0x40046117720c8cd6              # double 2.5474079999999999
	.quad	0x4023b7e45803cd14              # double 9.8591639999999998
	.quad	0x3fe6ddc6195464dc              # double 0.71457199999999998
	.quad	0x401f5a94ff0025c0              # double 7.8384590000000003
	.quad	0x401d6b40f66a5508              # double 7.3547399999999996
	.quad	0x40090811b1d92b80              # double 3.1289400000000001
	.quad	0x40122e76c8b43958              # double 4.5453749999999999
	.quad	0x40233378ee286727              # double 9.6005319999999993
	.quad	0x401f494e5d5b24ea              # double 7.8215880000000002
	.quad	0x401dfdf761cbccf3              # double 7.4980140000000004
	.quad	0x3ff50940bbb1f256              # double 1.314759
	.quad	0x401404523f67f4dc              # double 5.0042200000000001
	.quad	0x3ff9267d77fae361              # double 1.5718970000000001
	.quad	0x401dc547e06961c3              # double 7.4426569999999996
	.quad	0x4001f3fd0d0678c0              # double 2.244135
	.quad	0x3ffbb19934efcbd5              # double 1.7308589999999999
	.quad	0x401787b7c7820a31              # double 5.8825370000000001
	.quad	0x4017f159817b95a3              # double 5.9856930000000004
	.quad	0x402039e731d2e0e3              # double 8.113092
	.quad	0x402088259e1f3a58              # double 8.2659120000000001
	.quad	0x3ff480a6b93ccd10              # double 1.281409
	.quad	0x4011488333fc86cf              # double 4.3208130000000002
	.quad	0x3ff52495e17e34b9              # double 1.3214319999999999
	.quad	0x400134024b33daf9              # double 2.1503950000000001
	.quad	0x401bb5cdd50a88f0              # double 6.927543
	.quad	0x4023b2b628459967              # double 9.8490459999999995
	.quad	0x401d4269df97aaac              # double 7.3148569999999999
	.quad	0x400a79f90539fba4              # double 3.3095569999999999
	.quad	0x402323e707e175d1              # double 9.5701219999999995
	.quad	0x401f32b777d0f1f5              # double 7.7995279999999995
	.quad	0x4005d1f601797cc4              # double 2.7275200000000002
	.quad	0x400f8a04d12018a4              # double 3.9423919999999999
	.quad	0x4022211e85fd04a3              # double 9.064686
	.quad	0x4021fae9680e0653              # double 8.990062
	.quad	0x3fee7878b7a1c25d              # double 0.952206
	.quad	0x40098c00da1a9329              # double 3.1933609999999999
	.quad	0x40184fbdf090f734              # double 6.0778730000000003
	.quad	0x4023e78c0053e2d6              # double 9.9522399999999998
	.quad	0x401fefceb78897ea              # double 7.9841870000000004
	.quad	0x3ff62b8a5ce5b424              # double 1.3856299999999999
	.quad	0x400ee31162281345              # double 3.8608730000000002
	.quad	0x3ffc8b87bdcf0308              # double 1.784065
	.quad	0x40152b9389b52008              # double 5.2925550000000001
	.quad	0x3ff81ae3e6c4c597              # double 1.5065649999999999
	.quad	0x4016677574f722e2              # double 5.6010340000000003
	.quad	0x400779df548ecd8e              # double 2.9345080000000001
	.quad	0x3ff72d6451b93038              # double 1.448582
	.quad	0x400402c5e2cdc012              # double 2.5013540000000001
	.quad	0x3fe87eda66128390              # double 0.76548499999999997
	.quad	0x402072ce032db1ea              # double 8.2242280000000001
	.quad	0x400325f84cad57bc              # double 2.3935399999999998
	.quad	0x4021dddca4b124d1              # double 8.9333240000000007
	.quad	0x3f92ee84ad794a6f              # double 0.018488000000000001
	.quad	0x3fe6e202539756c9              # double 0.71508899999999997
	.quad	0x40118fb506dd69d3              # double 4.390339
	.quad	0x3fe2a57c914b167f              # double 0.58270100000000002
	.quad	0x4013586b15f88fc9              # double 4.8363459999999998
	.quad	0x3fb99220ff540896              # double 0.099886000000000002
	.quad	0x4020cac14c660a20              # double 8.3960059999999999
	.quad	0x400966d2674080fa              # double 3.1752060000000002
	.quad	0x401cae2f37fbefd0              # double 7.170102
	.quad	0x3ff8a51e321a2e7f              # double 1.5403119999999999
	.quad	0x40214841ede1198b              # double 8.6411280000000001
	.quad	0x4021d47b24638c97              # double 8.9150019999999994
	.quad	0x4023de25e99e94ab              # double 9.9338829999999997
	.quad	0x4020e2c0e7bc3c5c              # double 8.4428780000000003
	.quad	0x3fca861e92923e5c              # double 0.20721800000000001
	.quad	0x3fc604d983947497              # double 0.17202300000000001
	.quad	0x401a6dfb9389b520              # double 6.607405
	.quad	0x3ff35d56f32bdc27              # double 1.210288
	.quad	0x3ff8f22291fb3fa7              # double 1.559115
	.quad	0x3fef0acc0bdcad15              # double 0.97006800000000004
	.quad	0x3ffc37318fc50481              # double 1.7634749999999999
	.quad	0x4008db62413db7f1              # double 3.1071209999999998
	.quad	0x40052f48c2e770bd              # double 2.648088
	.quad	0x402269351159c497              # double 9.2054829999999992
	.quad	0x3fd51426fe718a87              # double 0.32935500000000001
	.quad	0x4014690abb44e50c              # double 5.1025799999999997
	.quad	0x3fae540cc78e9f6b              # double 0.059235000000000003
	.quad	0x400eb31769a91106              # double 3.8374470000000001
	.quad	0x401887eb28d8665e              # double 6.132733
	.quad	0x40052a38327674d1              # double 2.6456149999999998
	.quad	0x401338a1dfb9389b              # double 4.8053049999999997
	.quad	0x400237be9856a37b              # double 2.2772190000000001
	.quad	0x40212c9a77e5eaab              # double 8.587116
	.quad	0x40063f5e84f09529              # double 2.780942
	.quad	0x4019aae9ab29e4d6              # double 6.4169070000000001
	.quad	0x3fe39ff0cbaf965b              # double 0.61327399999999999
	.quad	0x4017fd1aeb3dd11c              # double 5.9971730000000001
	.quad	0x4017119eb6390c91              # double 5.767207
	.quad	0x402245c70435efa6              # double 9.1362839999999998
	.quad	0x40000f76e6106ab1              # double 2.0075509999999999
	.quad	0x3ffd666ec9e236c1              # double 1.8375079999999999
	.quad	0x400b476fb09203a3              # double 3.4098809999999999
	.quad	0x401b1eebb341e14c              # double 6.7801960000000001
	.quad	0x401bff19934efcbd              # double 6.9991209999999997
	.quad	0x400f7b56323bbc6f              # double 3.9352230000000001
	.quad	0x4022224e59296702              # double 9.0670040000000007
	.quad	0x4021bc36544fe36d              # double 8.8676019999999998
	.quad	0x401ce790752da986              # double 7.2261369999999996
	.quad	0x3ff3c3f2d3c792d1              # double 1.235339
	.quad	0x4020ad08d4bad7d8              # double 8.3379580000000004
	.quad	0x40209294573a7979              # double 8.2862880000000008
	.quad	0x401c9c5004fb1184              # double 7.1526490000000003
	.quad	0x3fe9250507a6bd6f              # double 0.78576900000000005
	.quad	0x4016e9a91105e1c1              # double 5.7281839999999997
	.quad	0x401c9d1526d8b1dd              # double 7.1534009999999997
	.quad	0x40207a31832fcac9              # double 8.2386590000000002
	.quad	0x402219c9f72f76e6              # double 9.0503689999999999
	.quad	0x4016a817fc7607c4              # double 5.6641539999999999
	.quad	0x4022936177ea1c69              # double 9.2878530000000001
	.quad	0x400b4559f6ec5b08              # double 3.4088630000000002
	.quad	0x401a3877ab324852              # double 6.5551440000000003
	.quad	0x401b1204295a6c5d              # double 6.7675939999999999
	.quad	0x40199b0e1b4bb5e1              # double 6.401421
	.quad	0x3ffaa3571d1d4739              # double 1.6648780000000001
	.quad	0x401a859af9ebe9c9              # double 6.6304740000000004
	.quad	0x4010846fdeb52c9d              # double 4.1293329999999999
	.quad	0x400946a1a500d5e9              # double 3.1594880000000001
	.quad	0x40221218bd66277c              # double 9.0353449999999995
	.quad	0x4015e3929ed3953e              # double 5.4722390000000001
	.quad	0x401163f4a98aa865              # double 4.3476129999999999
	.quad	0x402007f0ed3d859d              # double 8.0155100000000008
	.quad	0x401c3a37ef5a964f              # double 7.0568540000000004
	.quad	0x3feb8f648c7192ea              # double 0.86125399999999996
	.quad	0x3ff060b0af5fd47c              # double 1.023606
	.quad	0x4000a936c58eeaea              # double 2.082624
	.quad	0x3fea43b70ef56649              # double 0.820766
	.quad	0x4017350092ccf6be              # double 5.8017599999999998
	.quad	0x4007cb0a6fc58ab9              # double 2.9741409999999999
	.quad	0x400e3ae685db76b4              # double 3.7787600000000001
	.quad	0x401dd548ecd8dbcf              # double 7.4582860000000002
	.quad	0x40193d0bfa0945fa              # double 6.3096160000000001
	.quad	0x40075d8adab9f55a              # double 2.9206750000000001
	.quad	0x40170713f077ccc0              # double 5.7569119999999998
	.quad	0x40106536933a0408              # double 4.0988410000000002
	.quad	0x3fb11361dc93ea2d              # double 0.066701999999999997
	.quad	0x401a41c970f7b9e0              # double 6.5642449999999997
	.quad	0x3ff83682730c6717              # double 1.5133080000000001
	.quad	0x4008e7b02d59d55e              # double 3.1131289999999998
	.quad	0x3fe46fbd273d5bab              # double 0.63863999999999999
	.quad	0x40110d8f92af9a8d              # double 4.2632430000000001
	.quad	0x3ff6f6102795703f              # double 1.435074
	.quad	0x4023d0bb906466b2              # double 9.9076810000000002
	.quad	0x3fed0746455eaee2              # double 0.907138
	.quad	0x400ec8b86b15f890              # double 3.8480080000000001
	.quad	0x4014b9df548ecd8e              # double 5.1815160000000002
	.quad	0x40140906466b1e5c              # double 5.008813
	.quad	0x3ff344944ed6fda8              # double 1.204243
	.quad	0x4021cabe27179bfe              # double 8.8959820000000001
	.quad	0x4015cfa5093964a6              # double 5.4527780000000003
	.quad	0x4018f1715c63ae25              # double 6.2357839999999998
	.quad	0x3ffc011e42e12620              # double 1.750273
	.quad	0x40179d6b228dc982              # double 5.9037290000000002
	.quad	0x4021ec2f1ed17c5f              # double 8.9612970000000001
	.quad	0x4005b47304039abf              # double 2.7131099999999999
	.quad	0x4018081e8a2ec28b              # double 6.0079289999999999
	.quad	0x402249cb46bacf74              # double 9.1441289999999995
	.quad	0x401c5b34a44c7b03              # double 7.0890680000000001
	.quad	0x401d5dbc664d3bf3              # double 7.341539
	.quad	0x40037e8ee6b8305e              # double 2.4367960000000002
	.quad	0x401f4a148ba83f4f              # double 7.8223440000000001
	.quad	0x3fe8164840e1719f              # double 0.75271999999999994
	.quad	0x400bd47496aad1d0              # double 3.4787379999999999
	.quad	0x401fbb45ae5ffa3c              # double 7.9328830000000004
	.quad	0x3feccf850df15a4b              # double 0.90033200000000002
	.quad	0x4013226809d49518              # double 4.7835999999999999
	.quad	0x4012ae7ab7564303              # double 4.6703900000000003
	.quad	0x3feeb54c122749f1              # double 0.95963100000000001
	.quad	0x4012f706d5065732              # double 4.7412369999999999
	.quad	0x401a7294dd72367e              # double 6.6118959999999998
	.quad	0x3fec0051c9f72f77              # double 0.87503900000000001
	.quad	0x4023fa8da7f3cf70              # double 9.9893619999999999
	.quad	0x3fe9e89ca18bd662              # double 0.80964499999999995
	.quad	0x40083abb8800eae2              # double 3.0286780000000002
	.quad	0x3ff52b37867f0aa2              # double 1.323051
	.quad	0x40004b790fb65669              # double 2.0368520000000001
	.quad	0x401d7ba8c586876e              # double 7.3707609999999999
	.quad	0x4013f69b9d7fd827              # double 4.9908279999999996
	.quad	0x401a365ba6efc372              # double 6.5530840000000001
	.quad	0x3fe52224edf61240              # double 0.66041799999999995
	.quad	0x4020e3677f6b1a2a              # double 8.4441489999999995
	.quad	0x40206ab4d8ba40d9              # double 8.2084109999999999
	.quad	0x401d97cbb3c81909              # double 7.3982380000000001
	.quad	0x3fec1ff92f2b66b6              # double 0.87890299999999999
	.quad	0x3ff8a351deefe500              # double 1.539873
	.quad	0x40158e8815e39714              # double 5.3891910000000003
	.quad	0x3ff07b4e54f7a919              # double 1.0301039999999999
	.quad	0x401e0f9e3864cb5c              # double 7.5152520000000003
	.quad	0x4000eb4bf8fcd680              # double 2.1148910000000001
	.quad	0x402111bcdbbe0158              # double 8.5346440000000001
	.quad	0x4016525cc426351e              # double 5.5804320000000001
	.quad	0x401e1c37a3db3bfb              # double 7.5275559999999996
	.quad	0x3fcdf5cf2495e17e              # double 0.23406399999999999
	.quad	0x4014e6dfc5cdd50b              # double 5.2254630000000004
	.quad	0x4020a8ff540895d1              # double 8.3300730000000005
	.quad	0x400bf8be7296f651              # double 3.4964569999999999
	.quad	0x400ab013a92a3055              # double 3.3359749999999999
	.quad	0x4010104c8bc9cd3e              # double 4.015917
	.quad	0x4004f2f555821294              # double 2.6186319999999998
	.quad	0x401a84f5d35653ca              # double 6.6298440000000003
	.quad	0x401ebab0c88a47ed              # double 7.682315
	.quad	0x40154c386d2ed784              # double 5.3244340000000001
	.quad	0x3fd4d3e920c069e8              # double 0.325434
	.quad	0x4015f9e3c968943e              # double 5.4940329999999999
	.quad	0x402218943e100608              # double 9.0480060000000009
	.quad	0x4005f5fb2edfe75c              # double 2.7451080000000001
	.quad	0x401be448cf7caa76              # double 6.9729340000000004
	.quad	0x401b785ad538ac19              # double 6.867534
	.quad	0x4020d7b4a2339c0f              # double 8.4213000000000005
	.quad	0x4023ebeccc469510              # double 9.9607910000000004
	.quad	0x40104f1172ef0ae5              # double 4.0772149999999998
	.quad	0x401dc89a459103c9              # double 7.4459010000000001
	.quad	0x40194c5479d4d834              # double 6.324541
	.quad	0x3ff888787485e3da              # double 1.533318
	.quad	0x400394e3369b9d80              # double 2.4476990000000001
	.quad	0x4021049949e8815e              # double 8.5089819999999996
	.quad	0x402244c1871e6cd3              # double 9.1342890000000008
	.quad	0x400a9eb2074ea8da              # double 3.3274879999999998
	.quad	0x400bc74213a0c6b5              # double 3.4722940000000002
	.quad	0x401bc34938583622              # double 6.940709
	.quad	0x4001bfb71fbc5dea              # double 2.2186110000000001
	.quad	0x400121240746455f              # double 2.1411820000000001
	.quad	0x402141ad2135daad              # double 8.6282739999999993
	.quad	0x402385bb9cf9a06a              # double 9.7611969999999992
	.quad	0x40216487b99d4520              # double 8.6963480000000004
	.quad	0x3fd174d594f26aec              # double 0.272756
	.quad	0x401c4f7f06705c89              # double 7.0776329999999996
	.quad	0x40126c2d6a9c560c              # double 4.6056419999999996
	.quad	0x3ff227d028a1dfb9              # double 1.13472
	.quad	0x3ff35a261bf37b8d              # double 1.2095089999999999
	.quad	0x4012448b220791c5              # double 4.5669370000000002
	.quad	0x3ff5fc968943e100              # double 1.3741669999999999
	.quad	0x400cbd06bbdbe3c1              # double 3.592298
	.quad	0x402089ce4a7b4e55              # double 8.2691520000000001
	.quad	0x402273953dea465a              # double 9.2257479999999994
	.quad	0x401d6c32a8c9b845              # double 7.3556619999999997
	.quad	0x401c87c6327ed84d              # double 7.1325919999999998
	.quad	0x401167fcfc3f811f              # double 4.3515509999999997
	.quad	0x40194e7bc3c5bd0e              # double 6.3266439999999999
	.quad	0x400d6ac322291fb4              # double 3.67713
	.quad	0x402050dfdef8487c              # double 8.1579580000000007
	.quad	0x40233c68661ae70c              # double 9.6179839999999998
	.quad	0x400547631b584b1b              # double 2.6598570000000001
	.quad	0x4015e3c36113404f              # double 5.4724250000000003
	.quad	0x402374cd0fe8ab50              # double 9.7281270000000006
	.quad	0x40197cddd6e04c06              # double 6.3719400000000004
	.quad	0x402212222d5171e3              # double 9.0354170000000007
	.quad	0x4019713a0c6b484d              # double 6.3605729999999996
	.quad	0x4023bba27ae9ab2a              # double 9.8664740000000002
	.quad	0x4021611ff7164c73              # double 8.6896970000000007
	.quad	0x3fe698def416bdb2              # double 0.70616100000000004
	.quad	0x400c3cc2938de6de              # double 3.529668
	.quad	0x402103953dea465a              # double 8.5069979999999994
	.quad	0x3febaead9274e22a              # double 0.86507299999999998
	.quad	0x4021fb8759253544              # double 8.9912670000000005
	.quad	0x4011c67381d7dbf5              # double 4.4438000000000004
	.quad	0x400cda4b5568e821              # double 3.606589
	.quad	0x4021aed58c8eef1c              # double 8.8414730000000005
	.quad	0x3feefaf859429175              # double 0.96813599999999999
	.quad	0x400dd790752da986              # double 3.7302559999999998
	.quad	0x400cf3e4ef0281ba              # double 3.6190889999999998
	.quad	0x400853da72a7bd49              # double 3.0409440000000001
	.quad	0x400629528f190d17              # double 2.7701769999999999
	.quad	0x3fe0bb0c4588a04d              # double 0.52283299999999999
	.quad	0x4023495d4e8fb00c              # double 9.6432900000000003
	.quad	0x40190b317efe0ce1              # double 6.2609310000000002
	.quad	0x40191ef73c0c1fc9              # double 6.28024
	.quad	0x3f9d84d338f79852              # double 0.028826999999999998
	.quad	0x3fe9a9e4d5d80e49              # double 0.80198899999999995
	.quad	0x4000ba81dc0db270              # double 2.0910679999999999
	.quad	0x40080503fb374363              # double 3.0024489999999999
	.quad	0x401a01c9b4139863              # double 6.5017459999999998
	.quad	0x4004a6dbd72bcb60              # double 2.581474
	.quad	0x401f07d41743e964              # double 7.7576450000000001
	.quad	0x4021f17aeddce7cd              # double 8.971641
	.quad	0x3ffdd374bc6a7efa              # double 1.864125
	.quad	0x4010432a0663c750              # double 4.0655900000000003
	.quad	0x3ff5b7dfa00e27e1              # double 1.357391
	.quad	0x4017fc50ce4ead0c              # double 5.9964019999999998
	.quad	0x4010cd6dc1a47a9e              # double 4.2006139999999998
	.quad	0x3fd50e1719f7f8cb              # double 0.32898500000000003
	.quad	0x4022150b955f7836              # double 9.0411040000000007
	.quad	0x40179fa2ad3e920c              # double 5.905894
	.quad	0x40223c8c0ce91c8f              # double 9.1182560000000006
	.quad	0x4023eb93250b5244              # double 9.9601070000000007
	.quad	0x400aa1b866e43aa8              # double 3.3289650000000002
	.quad	0x40139b5393250b52              # double 4.9016859999999998
	.quad	0x401324046412cf10              # double 4.7851730000000003
	.quad	0x3fd5df04ddb5525d              # double 0.34173700000000001
	.quad	0x4020efdd44135547              # double 8.4684849999999994
	.quad	0x3f93033a4723ab00              # double 0.018567
	.quad	0x40232aedbb59ddc2              # double 9.5838450000000002
	.quad	0x401ef436fc158fb4              # double 7.7384909999999998
	.quad	0x3fffd5db3397dd01              # double 1.989711
	.quad	0x3ff425f633ce63a6              # double 1.2592680000000001
	.quad	0x401a2d4067cf1c32              # double 6.5441909999999996
	.quad	0x3ff47739f340d4dc              # double 1.2791079999999999
	.quad	0x40225332ce89656f              # double 9.1624970000000001
	.quad	0x4023938eb0318b93              # double 9.7881979999999995
	.quad	0x400573b8e4b87bdd              # double 2.681505
	.quad	0x402132ab25b317f0              # double 8.5989620000000002
	.quad	0x4001154434e3369c              # double 2.1353840000000002
	.quad	0x3fe13dc26dce39b4              # double 0.53878899999999996
	.quad	0x40193cb7d41743e9              # double 6.3092949999999997
	.quad	0x402109c0a8d21bc1              # double 8.5190479999999997
	.quad	0x400619e59f2ba9d2              # double 2.762645
	.quad	0x4013318a86d71f36              # double 4.7983799999999999
	.quad	0x40063fd71b046845              # double 2.7811720000000002
	.quad	0x4004675a31a4bdba              # double 2.550465
	.quad	0x3fd7307f23cc8de3              # double 0.36233500000000002
	.quad	0x4021f9235f809918              # double 8.9865980000000008
	.quad	0x4008a9539b888723              # double 3.0826790000000002
	.quad	0x4021ea17f4128bf4              # double 8.9572140000000004
	.quad	0x40101372a38b8ae3              # double 4.0189919999999999
	.quad	0x401a75dfa871a3b1              # double 6.6151109999999997
	.quad	0x40140011904b3c3e              # double 5.0000669999999996
	.quad	0x400461acde19fc2b              # double 2.5476930000000002
	.quad	0x400c11cda2b5a20e              # double 3.5086930000000001
	.quad	0x3fe4c5931ca7d673              # double 0.64911799999999997
	.quad	0x40157ab92c061848              # double 5.369847
	.quad	0x3fecbd5fdcdf6988              # double 0.89811700000000005
	.quad	0x402219d909f1f14a              # double 9.0504840000000009
	.quad	0x40162f70153bd167              # double 5.5463259999999996
	.quad	0x3ff0659e1f3a57eb              # double 1.0248090000000001
	.quad	0x4013372a7bd48cb5              # double 4.8038730000000003
	.quad	0x400ebdfa00e27e0f              # double 3.842762
	.quad	0x40239bdccea28fe2              # double 9.8044189999999993
	.quad	0x40201df612407464              # double 8.0585179999999994
	.quad	0x401586f60e0eb67c              # double 5.3817979999999999
	.quad	0x401eee1d2178f68c              # double 7.7325330000000001
	.quad	0x401b7934acaff6d3              # double 6.8683649999999998
	.quad	0x40238b0ee49f5169              # double 9.7715979999999991
	.quad	0x4021e2fa93af74cd              # double 8.9433179999999997
	.quad	0x40168ed288ce703b              # double 5.639475
	.quad	0x4011a3ac929aa1d7              # double 4.4098379999999997
	.quad	0x401f00d5e8d54110              # double 7.7508160000000004
	.quad	0x3fe22fc8b0079a28              # double 0.56833299999999998
	.quad	0x4010219439de481f              # double 4.0327919999999997
	.quad	0x3ffbeb6ae7d566cf              # double 1.7449749999999999
	.quad	0x401a8dc65c70435f              # double 6.638452
	.quad	0x401a639b024f6599              # double 6.5972710000000001
	.quad	0x4021647baa9b499d              # double 8.696256
	.quad	0x4014ee28ed5f138c              # double 5.2325780000000002
	.quad	0x4022f0b97785729b              # double 9.4701649999999997
	.quad	0x4021243efae7924b              # double 8.5707930000000001
	.quad	0x401c8e978d4fdf3b              # double 7.1392499999999997
	.quad	0x4020902cb20fb225              # double 8.2815910000000006
	.quad	0x3ff3166490a350d3              # double 1.1929670000000001
	.quad	0x4009374ff865d7cb              # double 3.1520079999999999
	.quad	0x402152d948dc11e4              # double 8.6618139999999996
	.quad	0x4016037585be1a82              # double 5.5033779999999997
	.quad	0x40035fc5479d4d83              # double 2.4217629999999999
	.quad	0x40222ac6045baf53              # double 9.0835419999999996
	.quad	0x40191fb0d51f81a6              # double 6.2809480000000004
	.quad	0x40212e5f30e7ff58              # double 8.5905699999999996
	.quad	0x3ff5bd31b9b66f93              # double 1.35869
	.quad	0x402197abfb9bed31              # double 8.7962340000000001
	.quad	0x4021ed3dc8b86b16              # double 8.9633620000000001
	.quad	0x4020d445ed4a1ad6              # double 8.4145959999999995
	.quad	0x3ffba2d83c6c97d9              # double 1.727257
	.quad	0x4015e3897204295a              # double 5.4722039999999996
	.quad	0x3fe7359bc33f8551              # double 0.72529399999999999
	.quad	0x3ff9c19e30014f8b              # double 1.6097699999999999
	.quad	0x401784ed2cbea4ec              # double 5.8798110000000001
	.quad	0x3ff17bf1e8e60807              # double 1.09276
	.quad	0x400f59dba908a266              # double 3.918876
	.quad	0x402039a133c1ce6c              # double 8.1125579999999999
	.quad	0x4007f07b784662bb              # double 2.9924230000000001
	.quad	0x4020a82ababead4f              # double 8.3284509999999994
	.quad	0x4013638d60a63305              # double 4.8472189999999999
	.quad	0x3ff35629d8409e56              # double 1.2085360000000001
	.quad	0x40232e34fc610f0f              # double 9.5902480000000007
	.quad	0x3fe32374794ea077              # double 0.598078
	.quad	0x3fd10563ed0f6274              # double 0.26595400000000002
	.quad	0x3fea890d5a5b9629              # double 0.82923000000000002
	.quad	0x402285a8155d5f57              # double 9.2610480000000006
	.quad	0x400d84cd74927914              # double 3.689845
	.quad	0x401cabbe0157eed4              # double 7.1677169999999997
	.quad	0x4019027d45a5fc7e              # double 6.2524309999999996
	.quad	0x401451cd5f99c38b              # double 5.079885
	.quad	0x40123e3a7daa4fca              # double 4.5607699999999998
	.quad	0x401b3f809917939a              # double 6.8120139999999996
	.quad	0x3fe0494d50ebaade              # double 0.50894799999999996
	.quad	0x4004a7c957cd466f              # double 2.5819269999999999
	.quad	0x401a9b549f94855e              # double 6.6516900000000003
	.quad	0x4022c752b90a7829              # double 9.3893029999999999
	.quad	0x40177947cfa26a23              # double 5.8684380000000003
	.quad	0x401408bbd3804535              # double 5.0085290000000002
	.quad	0x401878de6ddf00ac              # double 6.118036
	.quad	0x401f7fc86cebbba5              # double 7.8747879999999996
	.quad	0x4023f7a0945f9df5              # double 9.9836469999999994
	.quad	0x401acf5e84f09529              # double 6.7025090000000001
	.quad	0x401122be8bc169c2              # double 4.2839299999999998
	.quad	0x401fe775fb2edfe7              # double 7.9760359999999996
	.quad	0x400282bcf91a32b1              # double 2.3138369999999999
	.quad	0x4002a513b5bf6a0e              # double 2.3306040000000001
	.quad	0x4018d0d73860999e              # double 6.2039460000000002
	.quad	0x3fcae9c4545846e9              # double 0.210259
	.quad	0x3ff524cd74927914              # double 1.321485
	.quad	0x3ff5e8123810e886              # double 1.3691580000000001
	.quad	0x400fbd273d5bab22              # double 3.9673600000000002
	.quad	0x4021d7eaa2a0a958              # double 8.9217119999999994
	.quad	0x3ff66c0b5675579b              # double 1.401378
	.quad	0x401bce1da7b0b392              # double 6.9512850000000004
	.quad	0x40053831f03d145e              # double 2.6524390000000002
	.quad	0x3ff21556084a515d              # double 1.130209
	.quad	0x400d05f41aef6f8f              # double 3.627907
	.quad	0x40131f79c842fa51              # double 4.7807380000000004
	.quad	0x4023562e2b8c75c5              # double 9.6683210000000006
	.quad	0x401d43cd9a52263e              # double 7.3162140000000004
	.quad	0x40147adb8348f53c              # double 5.1199779999999997
	.quad	0x3ff421b1960fa15e              # double 1.2582260000000001
	.quad	0x400cfac471b47842              # double 3.6224449999999999
	.quad	0x4012b4e4c942d491              # double 4.6766540000000001
	.quad	0x401862df505d0fa6              # double 6.0965550000000004
	.quad	0x401f5ad70e6f2e8c              # double 7.838711
	.quad	0x401e93e3193f6c27              # double 7.6444210000000003
	.quad	0x40147debd9018e75              # double 5.1229699999999996
	.quad	0x40163b71758e2196              # double 5.5580499999999997
	.quad	0x4022fae924f227d0              # double 9.4900599999999997
	.quad	0x401f096d8f4f93bc              # double 7.759207
	.quad	0x40218019d2391d58              # double 8.750197
	.quad	0x401edd2fa0d77b7c              # double 7.7160019999999996
	.quad	0x4016a04577d95571              # double 5.6565149999999997
	.quad	0x401dbfafc8b0079a              # double 7.4371939999999999
	.quad	0x40089c5931ca7d67              # double 3.0763419999999999
	.quad	0x4012672c94b380cb              # double 4.6007559999999996
	.quad	0x401f713879c4113c              # double 7.8605669999999996
	.quad	0x4009f30b5aa71583              # double 3.2436739999999999
	.quad	0x4011f8ca8198f1d4              # double 4.4929600000000001
	.quad	0x40048cb85a4f00ef              # double 2.568711
	.quad	0x3ff60759253543af              # double 1.3767940000000001
	.quad	0x4007445d41fa7653              # double 2.9083809999999999
	.quad	0x4000d0a808c8259e              # double 2.1018829999999999
	.quad	0x3ff6d70a3d70a3d7              # double 1.4275
	.quad	0x40143820a30db6a2              # double 5.0548120000000001
	.quad	0x40180572580c3090              # double 6.0053190000000001
	.quad	0x4012cfb267c6b8b7              # double 4.7028290000000004
	.quad	0x401e355432873bc9              # double 7.5520789999999999
	.quad	0x4008071476af89c6              # double 3.003457
	.quad	0x3ffca21c8a7a41e5              # double 1.7895779999999999
	.quad	0x40027cf70153bd16              # double 2.3110179999999998
	.quad	0x3ff96d31fcd24e16              # double 1.589159
	.quad	0x401da974a3400b89              # double 7.4154840000000002
	.quad	0x4017b05d95dd4c77              # double 5.9222320000000002
	.quad	0x401e580303c07ee1              # double 7.5859490000000002
	.quad	0x40135d206c8711d8              # double 4.8409440000000004
	.quad	0x401f750d6b228dca              # double 7.8643090000000004
	.quad	0x401620064a9cdc44              # double 5.5312739999999998
	.quad	0x401e808d8ec95bff              # double 7.6255399999999999
	.quad	0x3fdcef672b884407              # double 0.45211200000000001
	.quad	0x401b9f23465625a7              # double 6.9054080000000004
	.quad	0x4015296249a133c2              # double 5.2904140000000002
	.quad	0x4015974080f98fa3              # double 5.3977069999999996
	.quad	0x400565ebb7739f34              # double 2.674766
	.quad	0x40079dd6e04c0592              # double 2.95207
	.quad	0x4016f7c1bda5119d              # double 5.7419500000000001
	.quad	0x400585471715c63b              # double 2.6900770000000001
	.quad	0x3fd1e4d1a6506141              # double 0.27959099999999998
	.quad	0x40226624febd09e1              # double 9.1995009999999997
	.quad	0x4008f7585be1a826              # double 3.1207739999999999
	.quad	0x4016bdd1e53a81dc              # double 5.685371
	.quad	0x3ff3728d8665e02f              # double 1.2154670000000001
	.quad	0x401cf99bf5946c33              # double 7.2437589999999998
	.quad	0x401fc727dcbddb98              # double 7.9444879999999997
	.quad	0x400793c89f40a287              # double 2.9471599999999998
	.quad	0x4005deedcc20d563              # double 2.7338520000000002
	.quad	0x402158f2e05ccc8a              # double 8.6737280000000005
	.quad	0x3ff2a5d28d002e23              # double 1.165484
	.quad	0x400c0221426fe719              # double 3.5010400000000002
	.quad	0x4017604a72ead927              # double 5.8440339999999997
	.quad	0x40158b47c73eee52              # double 5.3860159999999997
	.quad	0x4023fc4998d045fe              # double 9.9927489999999999
	.quad	0x40010671ef30a4e3              # double 2.1281469999999998
	.quad	0x40219bac929aa1d7              # double 8.8040509999999994
	.quad	0x40208fd438d1d8a5              # double 8.2809159999999995
	.quad	0x40176592d98bf7f0              # double 5.8491929999999996
	.quad	0x4012b78d92fb19e7              # double 4.6792509999999998
	.quad	0x40213dec3dab5c3a              # double 8.6209430000000005
	.quad	0x4023ebc48f10a99b              # double 9.9604839999999992
	.quad	0x402221a5a89b951c              # double 9.0657169999999993
	.quad	0x3fe99ad85dfa871a              # double 0.80015199999999997
	.quad	0x401381da37ef5a96              # double 4.8768089999999997
	.quad	0x3fd15082cf52b90a              # double 0.27053899999999997
	.quad	0x3fe9ef587d6f9768              # double 0.81046700000000005
	.quad	0x4014f9b13165d399              # double 5.2438399999999996
	.quad	0x40137395810624dd              # double 4.8628749999999998
	.quad	0x401c37d1351159c5              # double 7.0545090000000004
	.quad	0x40020f5019f3c70d              # double 2.2574770000000002
	.quad	0x4020f78140dd3fe2              # double 8.4834080000000007
	.quad	0x3ffc74f0d844d014              # double 1.7785500000000001
	.quad	0x402158a67620ee8d              # double 8.6731449999999999
	.quad	0x401a6f18c9fb6135              # double 6.6084930000000002
	.quad	0x40205adba4d6e47e              # double 8.1774570000000004
	.quad	0x40196774eebf65dc              # double 6.351032
	.quad	0x401a8acffa7eb6bf              # double 6.6355589999999998
	.quad	0x3ffc2d3c792d1288              # double 1.7610440000000001
	.quad	0x4021789e55c0fcb5              # double 8.7355830000000001
	.quad	0x3ffa1043e5321e60              # double 1.6289709999999999
	.quad	0x3ffebc1df3300de5              # double 1.9209270000000001
	.quad	0x40154b96af038e2a              # double 5.323817
	.quad	0x40119c64345cfedf              # double 4.4027260000000004
	.quad	0x401927403dddb121              # double 6.2883310000000003
	.quad	0x402126cfe9b7bf1f              # double 8.5758050000000008
	.quad	0x4006fc72e275ab7e              # double 2.8732660000000001
	.quad	0x4002d7b7c7820a31              # double 2.3553310000000001
	.quad	0x40135e991ff7164c              # double 4.8423809999999996
	.quad	0x401b19db65ecc3e3              # double 6.7752509999999999
	.quad	0x40117667b5f1bef5              # double 4.3656300000000003
	.quad	0x4018faeddce7cd03              # double 6.2450479999999997
	.quad	0x400e1e71044f1a1a              # double 3.7648640000000002
	.quad	0x401e7fc7e6b3fea0              # double 7.6247860000000003
	.quad	0x3ffd4e054690de09              # double 1.831548
	.quad	0x4002d49c6f36ef80              # double 2.3538139999999999
	.quad	0x3ff9f50a02b84125              # double 1.6223240000000001
	.quad	0x3fdbc8b0079a2835              # double 0.43412400000000001
	.quad	0x4021266687f455a8              # double 8.5750010000000003
	.quad	0x401dfbb83cf2cf96              # double 7.4958200000000001
	.quad	0x401fa8f6cefed634              # double 7.9150039999999997
	.quad	0x40236a8c36da87a0              # double 9.7081009999999992
	.quad	0x3ffcbdc486ad2dcb              # double 1.79633
	.quad	0x401902324c836651              # double 6.2521449999999996
	.quad	0x400fdb76b3bb83cf              # double 3.9821599999999999
	.quad	0x401178611fd5885d              # double 4.3675579999999998
	.quad	0x40148e3da2f8bdec              # double 5.1389069999999997
	.quad	0x4013e9df548ecd8e              # double 4.9783910000000002
	.quad	0x40235056605ee569              # double 9.6569090000000006
	.quad	0x40167fee2c98e53f              # double 5.6249320000000003
	.quad	0x40113395810624dd              # double 4.3003749999999998
	.quad	0x40124123810e8859              # double 4.563612
	.quad	0x401ca9c51dabe271              # double 7.1657909999999996
	.quad	0x40169b40f66a5508              # double 5.6516149999999996
	.quad	0x40189cd6c2efd439              # double 6.1531630000000002
	.quad	0x4005f5193708aac9              # double 2.7446769999999998
	.quad	0x4022ab6fc158fb44              # double 9.3348370000000002
	.quad	0x40226bf572de43ee              # double 9.2108570000000007
	.quad	0x400022584f4c6e6e              # double 2.0167700000000002
	.quad	0x4010a35158b827fa              # double 4.1594899999999999
	.quad	0x4012caec8d5c7475              # double 4.6981679999999999
	.quad	0x3ffb10afe60c38f3              # double 1.6915739999999999
	.quad	0x4019a6a6a012599f              # double 6.4127450000000001
	.quad	0x4020cbb2fec56d5d              # double 8.39785
	.quad	0x4002953cddd6e04c              # double 2.32287
	.quad	0x3fe30eb24a6a875d              # double 0.59554399999999996
	.quad	0x40237a6a012599ed              # double 9.7390899999999991
	.quad	0x3ff14dd2f1a9fbe7              # double 1.0814999999999999
	.quad	0x3fe2566f0cfe1544              # double 0.57305099999999998
	.quad	0x4016177d0f1f57b4              # double 5.5229379999999999
	.quad	0x4023fb1162281345              # double 9.9903670000000008
	.quad	0x3fec1c219eb6390d              # double 0.87843400000000005
	.quad	0x400f4ac96cc5fbf8              # double 3.9115169999999999
	.quad	0x402393152f3c2dae              # double 9.7872710000000005
	.quad	0x401c64abe6a337a8              # double 7.098312
	.quad	0x3ff64be9424e5929              # double 1.3935329999999999
	.quad	0x40072a686e7e62dc              # double 2.8957069999999998
	.quad	0x400064020817fc76              # double 2.048832
	.quad	0x4003d1348b220792              # double 2.4771510000000001
	.quad	0x3fe6e0fc2eba27af              # double 0.71496400000000004
	.quad	0x400b8b2314013ec4              # double 3.4429379999999998
	.quad	0x3fd0ba1b1960fa16              # double 0.26135900000000001
	.quad	0x401e9df6555c52e7              # double 7.6542599999999998
	.quad	0x4008c7368ad68837              # double 3.0972719999999998
	.quad	0x3ff5d6d2aa5c5f7c              # double 1.3649469999999999
	.quad	0x401894c5974e65bf              # double 6.1452850000000003
	.quad	0x4016e58793dd97f6              # double 5.7241499999999998
	.quad	0x4012bd2849cb252d              # double 4.6847240000000001
	.quad	0x3fdc43f5f91600f3              # double 0.44164799999999999
	.quad	0x3ffc70b8cfbfc654              # double 1.77752
	.quad	0x3ff1717efe0ce0b9              # double 1.090209
	.quad	0x401ac15c63ae2542              # double 6.6888290000000001
	.quad	0x40173b5393250b52              # double 5.8079359999999998
	.quad	0x401fc51dabe2717a              # double 7.9424960000000002
	.quad	0x4002cd35a858793e              # double 2.3502000000000001
	.quad	0x40126a61e0c5a815              # double 4.6038889999999997
	.quad	0x401a54dc65c70436              # double 6.5828720000000001
	.quad	0x400fe1cffeb074a7              # double 3.9852599999999998
	.quad	0x401ba0d413122b7c              # double 6.9070590000000003
	.quad	0x4000832b990afe61              # double 2.0640480000000001
	.quad	0x3ffe14306e5cd4ed              # double 1.879929
	.quad	0x3ff20ec41dd1a21f              # double 1.1286050000000001
	.quad	0x400eaa1d755bccaf              # double 3.8330639999999998
	.quad	0x4003fcefaa4766c7              # double 2.4985040000000001
	.quad	0x4022b158750c1b97              # double 9.3463779999999996
	.quad	0x3fd544d87724fa8b              # double 0.33232699999999998
	.quad	0x401ea932d6ece13f              # double 7.6652329999999997
	.quad	0x3ff81f78359bc340              # double 1.5076830000000001
	.quad	0x40200d32c625e99f              # double 8.0257780000000007
	.quad	0x4022ce32e3821af8              # double 9.4027320000000003
	.quad	0x400fd29d40ee06d9              # double 3.9778389999999999
	.quad	0x4020882ecaeea63b              # double 8.2659819999999993
	.quad	0x4006aba8c586876e              # double 2.8338179999999999
	.quad	0x4023eef112fd32c6              # double 9.9666829999999997
	.quad	0x401604463065f959              # double 5.5041739999999999
	.quad	0x400a9be3c105186e              # double 3.3261180000000001
	.quad	0x4013f8b1572580c3              # double 4.992864
	.quad	0x401f66f7a0b5ed8d              # double 7.8505539999999998
	.quad	0x401ecdaf4adbc665              # double 7.7008640000000001
	.quad	0x4014d8f8e7ddca4b              # double 5.2118869999999999
	.quad	0x401583269df97aab              # double 5.3780770000000002
	.quad	0x40003003686a4ca5              # double 2.023444
	.quad	0x40239a76fb09203a              # double 9.8016889999999997
	.quad	0x402273d6a593a2e0              # double 9.2262470000000008
	.quad	0x3fd0d40aaeafab54              # double 0.26294200000000001
	.quad	0x400444567125dd09              # double 2.5333679999999998
	.quad	0x3fe371fff79c8430              # double 0.60766600000000004
	.quad	0x402296cc1ca3a4b5              # double 9.2945259999999994
	.quad	0x402168296b3354c1              # double 8.7034409999999998
	.quad	0x4011c3671ac14c66              # double 4.440823
	.quad	0x3fcf899392189bd8              # double 0.24638599999999999
	.quad	0x401faf1172ef0ae5              # double 7.9209649999999998
	.quad	0x400c766e008e9b39              # double 3.5578270000000001
	.quad	0x400e765907d91255              # double 3.8077869999999998
	.quad	0x400d167125dd095b              # double 3.635958
	.quad	0x4009356191148fda              # double 3.151065
	.quad	0x3ffeda9973d9ec70              # double 1.928369
	.quad	0x4015ff5903a7546d              # double 5.4993629999999998
	.quad	0x4023fab55ef1fddf              # double 9.9896650000000004
	.quad	0x4015b2d05f288484              # double 5.4246230000000004
	.quad	0x40221d9e83e425af              # double 9.0578500000000002
	.quad	0x40143cfa69be09bb              # double 5.0595489999999996
	.quad	0x3fed10d7be9856a3              # double 0.90830599999999995
	.quad	0x4001f19f7f8ca81a              # double 2.2429800000000002
	.quad	0x40032b9cb6848beb              # double 2.3962949999999998
	.quad	0x4022c7f21b3aeee9              # double 9.3905189999999993
	.quad	0x40124a83b1d0c804              # double 4.5727679999999999
	.quad	0x400a26e19b90ea9e              # double 3.2689849999999998
	.quad	0x4017725d4a5df224              # double 5.8616840000000003
	.quad	0x401cd1700cd85597              # double 7.204529
	.quad	0x401bad57bc7f77af              # double 6.9192799999999997
	.quad	0x4017b4f11b60ae97              # double 5.9267010000000004
	.quad	0x401facf5f4e4430b              # double 7.9189069999999999
	.quad	0x401bf5e310dbf056              # double 6.9901239999999998
	.quad	0x4019e63f572de43f              # double 6.4748510000000001
	.quad	0x401cd7d9dba908a2              # double 7.2107919999999996
	.quad	0x4021f5ffa3b9ae0c              # double 8.9804659999999998
	.quad	0x4021ded549731099              # double 8.9352210000000003
	.quad	0x400efff4fd6d7e89              # double 3.8749790000000002
	.quad	0x3ff003b1d0c80410              # double 1.000902
	.quad	0x40238aac322291fb              # double 9.7708449999999995
	.quad	0x4005e14ad362e903              # double 2.7350059999999998
	.quad	0x3fd7ff0cbaf965b2              # double 0.374942
	.quad	0x400d09bbf0dc768e              # double 3.629753
	.quad	0x401576e58a32f449              # double 5.3661099999999999
	.quad	0x402200ab2e1693c0              # double 9.0013059999999995
	.quad	0x4020805cee17a030              # double 8.2507090000000005
	.quad	0x4012aee78183f91e              # double 4.6708049999999997
	.quad	0x400acef240fa9c13              # double 3.351048
	.quad	0x3ff6434d26fa3fcd              # double 1.3914310000000001
	.quad	0x400b2d78c436fc16              # double 3.3972030000000002
	.quad	0x4020c759ccfaeff6              # double 8.3893570000000004
	.quad	0x4018c55757d5a9eb              # double 6.1927159999999999
	.quad	0x4020e21d10b1feeb              # double 8.4416279999999997
	.quad	0x3fefc2224edf6124              # double 0.99244799999999999
	.quad	0x4011ff5be5d9e40d              # double 4.4993740000000004
	.quad	0x4023708461f9f01c              # double 9.7197600000000008
	.quad	0x402167d49d7ba66a              # double 8.7027940000000008
	.quad	0x4013a5c1c6088d6d              # double 4.9118719999999998
	.quad	0x4010a711947cfa27              # double 4.1631530000000003
	.quad	0x3fe8a3b7952d234f              # double 0.76998500000000003
	.quad	0x401d7b545c78a6db              # double 7.3704390000000002
	.quad	0x402053dcf0307f24              # double 8.1637950000000003
	.quad	0x4019855f78359bc3              # double 6.3802469999999998
	.quad	0x4017d8e79aae6c8f              # double 5.9618209999999996
	.quad	0x400808beb5b2d4d4              # double 3.00427
	.quad	0x402024651f3e89a9              # double 8.0710840000000008
	.quad	0x3fe565c70435efa6              # double 0.66867399999999999
	.quad	0x40208870110a137f              # double 8.2664799999999996
	.quad	0x4022f4bad7d7c2ca              # double 9.4779879999999999
	.quad	0x400da6351deefe50              # double 3.706156
	.quad	0x3fed4e26d4801f75              # double 0.91578999999999999
	.quad	0x402217a3db3bfb59              # double 9.0461720000000003
	.quad	0x401f2e96c3fc43b3              # double 7.7954970000000001
	.quad	0x3fe12cd39da16617              # double 0.53672200000000003
	.quad	0x40046b71b8aa0019              # double 2.5524629999999999
	.quad	0x40232ed549731099              # double 9.5914710000000003
	.quad	0x400da70e2c12ad82              # double 3.7065700000000001
	.quad	0x4023f99c5a3e39f7              # double 9.9875209999999992
	.quad	0x401eb25c3dee7818              # double 7.6741799999999997
	.quad	0x3fd776a2f48c2e77              # double 0.366616
	.quad	0x4020b305faebc409              # double 8.3496550000000003
	.quad	0x4018c0e736049ecb              # double 6.1883819999999998
	.quad	0x400532b020c49ba6              # double 2.64975
	.quad	0x4011b3d03968d75a              # double 4.4255990000000001
	.quad	0x400b1a7221858bc6              # double 3.3879130000000002
	.quad	0x4007eb1cc9646280              # double 2.9898009999999999
	.quad	0x40141230b9dc2f40              # double 5.0177639999999997
	.quad	0x400e76b54e2b063e              # double 3.807963
	.quad	0x4017e259e1f3a57f              # double 5.9710460000000003
	.quad	0x400fc92bc2fc6973              # double 3.9732280000000002
	.quad	0x4023f667f90d9d77              # double 9.9812619999999991
	.quad	0x40028ebc408d8ec9              # double 2.3196949999999998
	.quad	0x4019c2cd7cf5f4e4              # double 6.4402369999999998
	.quad	0x400b0eb0318b9347              # double 3.3821720000000002
	.quad	0x401d9698bb4d4888              # double 7.3970669999999998
	.quad	0x401e10ebedfa43fe              # double 7.5165249999999997
	.quad	0x3ff7712e40852b4e              # double 1.4651320000000001
	.quad	0x3fd44477ff151e75              # double 0.31667899999999999
	.quad	0x402097b65668c261              # double 8.2963129999999996
	.quad	0x3fc1107746887a8d              # double 0.13331499999999999
	.quad	0x400bb00d5e8d5411              # double 3.460963
	.quad	0x4011f21426fe718b              # double 4.4864050000000004
	.quad	0x400a2ccff21b3aef              # double 3.271881
	.quad	0x4015879b34a44c7b              # double 5.382428
	.quad	0x401a89dc725c3dee              # double 6.6346299999999996
	.quad	0x4011e7d5a9eb2075              # double 4.4764010000000001
	.quad	0x4014129563a9f384              # double 5.0181480000000001
	.quad	0x401ef4e8b7e4de3c              # double 7.7391690000000004
	.quad	0x4020d6492bc2fc69              # double 8.4185269999999992
	.quad	0x3ff0cb599aa60914              # double 1.0496460000000001
	.quad	0x401f5d3c36113405              # double 7.84105
	.quad	0x4002b0fe047d3d43              # double 2.3364220000000002
	.quad	0x40156e4d5d80e497              # double 5.3577170000000001
	.quad	0x400c00485a0be511              # double 3.5001380000000002
	.quad	0x401e262f5989df11              # double 7.5372899999999996
	.quad	0x40191d5f138bcdff              # double 6.278683
	.quad	0x3fed25785f8d2e51              # double 0.91082399999999997
	.quad	0x4017416db0dd82fd              # double 5.8138949999999996
	.quad	0x400aa45cbbc2b94e              # double 3.3302550000000002
	.quad	0x40124f47735c182f              # double 4.5774210000000002
	.quad	0x4012b15fcc1871e7              # double 4.6732170000000002
	.quad	0x40076bb6ed677708              # double 2.9275950000000002
	.quad	0x401b6ac710cb295f              # double 6.8542750000000003
	.quad	0x3ff074128bf3bea9              # double 1.028338
	.quad	0x4020193404ea4a8c              # double 8.0492249999999998
	.quad	0x3ffd879702e6644e              # double 1.8456030000000001
	.quad	0x4023fa94bbe4473d              # double 9.9894160000000002
	.quad	0x400c682385404641              # double 3.5508489999999999
	.quad	0x4010a317acc4ef89              # double 4.1592700000000002
	.quad	0x4023ea8f9f44d445              # double 9.9581269999999992
	.quad	0x40222ec2acb85a4f              # double 9.091329
	.quad	0x4020ea9068986fce              # double 8.4581330000000001
	.quad	0x4023ad6b228dc982              # double 9.8387080000000005
	.quad	0x40121049a9973d9f              # double 4.5159060000000002
	.quad	0x40008b0318b9346a              # double 2.0678770000000002
	.quad	0x401912d55a3a083a              # double 6.2683920000000004
	.quad	0x4022050ce4ead0c4              # double 9.0098640000000003
	.quad	0x401b70b178b37004              # double 6.8600519999999996
	.quad	0x4017c1c4fc1df330              # double 5.939228
	.quad	0x4018290b84988095              # double 6.0400830000000001
	.quad	0x401bf13a0c6b484d              # double 6.9855729999999996
	.quad	0x40166768dfbd6a59              # double 5.6009859999999998
	.quad	0x400b18b1572580c3              # double 3.387057
	.quad	0x40221f687b139c95              # double 9.0613440000000001
	.quad	0x3f9b6e0d23d4f15e              # double 0.026786999999999998
	.quad	0x400b4f284167a95d              # double 3.4136510000000002
	.quad	0x3ffcdeb0fadf2ecf              # double 1.804368
	.quad	0x400931ada76d97b3              # double 3.149257
	.quad	0x4016ed102bc72e27              # double 5.7315069999999997
	.quad	0x4011dda9003eea21              # double 4.4664650000000004
	.quad	0x3ff9a8101f31f46f              # double 1.603531
	.quad	0x402028d8665e02eb              # double 8.0797760000000007
	.quad	0x400928f42fe82518              # double 3.144997
	.quad	0x3fff07bbb62413db              # double 1.9393879999999999
	.quad	0x4020f65a78f25a25              # double 8.4811589999999999
	.quad	0x401964445aa2e3c5              # double 6.3479169999999998
	.quad	0x3ff77c6a7ef9db23              # double 1.467875
	.quad	0x40126fd8adab9f56              # double 4.6092250000000003
	.quad	0x4012e84f09528f19              # double 4.726864
	.quad	0x4015b8348f53c57a              # double 5.429888
	.quad	0x401abcfaacd9e83e              # double 6.6845499999999998
	.quad	0x4008dd66adb402d1              # double 3.1081059999999998
	.quad	0x4023bd76683c297c              # double 9.870044
	.quad	0x4012973c0c1fc8f3              # double 4.6476899999999999
	.quad	0x40181c6f7a0b5ed9              # double 6.0277690000000002
	.quad	0x400f72fcac8e68e4              # double 3.931146
	.quad	0x4006806748e47560              # double 2.812697
	.quad	0x3ffb67bb2fec56d6              # double 1.712825
	.quad	0x4016ce7bc3c5bd0e              # double 5.7016439999999999
	.quad	0x40015dbca9691a76              # double 2.1707700000000001
	.quad	0x401bb7ef9db22d0e              # double 6.9296249999999997
	.quad	0x402225568e820e63              # double 9.0729260000000007
	.quad	0x40217ee807bbb624              # double 8.7478639999999998
	.quad	0x4004f129888f861a              # double 2.6177549999999998
	.quad	0x4021fee503fb3743              # double 8.9978409999999993
	.quad	0x401252a66dbd72bd              # double 4.5807130000000003
	.quad	0x4001ed601ffb480a              # double 2.2409059999999998
	.quad	0x3ff3bbc1acde19fc              # double 1.233339
	.quad	0x4011c780baa582dc              # double 4.4448270000000001
	.quad	0x3fdc2480e8c8abd6              # double 0.43972800000000001
	.quad	0x4006ae0d23d4f15e              # double 2.8349859999999998
	.quad	0x3ffa108a265f0f5a              # double 1.629038
	.quad	0x40053018e757928e              # double 2.648485
	.quad	0x402016b95e5aff2a              # double 8.0443829999999998
	.quad	0x4020ce2478854cdb              # double 8.4026219999999991
	.quad	0x4001d52220bc382a              # double 2.229069
	.quad	0x4018b6a487336588              # double 6.1783619999999999
	.quad	0x400a6d5d80e496ee              # double 3.303401
	.quad	0x400431d57ff9b563              # double 2.5243329999999999
	.quad	0x40183dc4007570c5              # double 6.0603179999999996
	.quad	0x3fefc14a4d2b2bfe              # double 0.99234500000000003
	.quad	0x4012f9231c64ba95              # double 4.7432980000000002
	.quad	0x4017207852f7f499              # double 5.7817090000000002
	.quad	0x402312ce67d77fae              # double 9.5367309999999996
	.quad	0x401242e6644d8772              # double 4.5653319999999997
	.quad	0x3fcca8112ba16e7a              # double 0.22387899999999999
	.quad	0x402220aa00192a73              # double 9.0637969999999992
	.quad	0x400636b228dc981c              # double 2.776707
	.quad	0x40169b8f57f737da              # double 5.6519139999999997
	.quad	0x40067876188b1141              # double 2.8088190000000002
	.quad	0x4021a10385c67dfe              # double 8.8144799999999996
	.quad	0x4020ac52c59fb1e2              # double 8.3365690000000008
	.quad	0x401b69613d31b9b6              # double 6.8529099999999996
	.quad	0x401b255970b49e02              # double 6.7864740000000001
	.quad	0x4019a1212513b5bf              # double 6.4073529999999996
	.quad	0x400bfc0e38a7e73a              # double 3.4980739999999999
	.quad	0x402099f81a5870da              # double 8.3007209999999993
	.quad	0x4022de13f4a98aa8              # double 9.4337459999999992
	.quad	0x4009101b003686a5              # double 3.1328640000000001
	.quad	0x401cb87485e3da30              # double 7.1801320000000004
	.quad	0x4017826d4801f751              # double 5.87737
	.quad	0x40158f4e0114d2f6              # double 5.3899460000000001
	.quad	0x3ff96517e77d523b              # double 1.587181
	.quad	0x400da14727dcbddc              # double 3.7037490000000002
	.quad	0x401d4ed84d338f7a              # double 7.3269970000000004
	.quad	0x3ffc5a35d67ba238              # double 1.772024
	.quad	0x4016af34d6a161e5              # double 5.6711
	.quad	0x3ff1631c64ba94bc              # double 1.086697
	.quad	0x401dcfec99f1ae2e              # double 7.4530510000000003
	.quad	0x4014631a4bdba0a5              # double 5.0967799999999999
	.quad	0x3ff35db65ecc3e32              # double 1.2103790000000001
	.quad	0x3ff20ac083126e98              # double 1.1276250000000001
	.quad	0x3fe227eb6bf444e1              # double 0.56737300000000002
	.quad	0x402262e31d712a0f              # double 9.1931390000000004
	.quad	0x40121c08fa7a8501              # double 4.5273779999999997
	.quad	0x401be3879c4113c7              # double 6.9721970000000004
	.quad	0x4015e77ff151e753              # double 5.4760739999999997
	.quad	0x40036155d5f56a7b              # double 2.4225270000000001
	.quad	0x402097b43d89ce4a              # double 8.2962969999999991
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
