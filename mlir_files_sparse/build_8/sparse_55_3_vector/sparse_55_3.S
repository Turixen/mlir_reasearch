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
	.quad	0x4141ce06da2d490e              # double 2333709.7045069998
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
	.quad	4499                            # 0x1193
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	4499                            # 0x1193
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
	lui	a7, %hi(.L__constant_4499xindex)
	addi	a7, a7, %lo(.L__constant_4499xindex)
	lui	t0, %hi(.L__constant_4499xf64)
	addi	t0, t0, %lo(.L__constant_4499xf64)
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
	.quad	62                              # 0x3e
	.quad	98                              # 0x62
	.quad	133                             # 0x85
	.quad	192                             # 0xc0
	.quad	227                             # 0xe3
	.quad	272                             # 0x110
	.quad	336                             # 0x150
	.quad	375                             # 0x177
	.quad	420                             # 0x1a4
	.quad	479                             # 0x1df
	.quad	515                             # 0x203
	.quad	553                             # 0x229
	.quad	617                             # 0x269
	.quad	651                             # 0x28b
	.quad	687                             # 0x2af
	.quad	751                             # 0x2ef
	.quad	791                             # 0x317
	.quad	830                             # 0x33e
	.quad	889                             # 0x379
	.quad	926                             # 0x39e
	.quad	970                             # 0x3ca
	.quad	1029                            # 0x405
	.quad	1069                            # 0x42d
	.quad	1096                            # 0x448
	.quad	1155                            # 0x483
	.quad	1195                            # 0x4ab
	.quad	1230                            # 0x4ce
	.quad	1288                            # 0x508
	.quad	1320                            # 0x528
	.quad	1351                            # 0x547
	.quad	1413                            # 0x585
	.quad	1448                            # 0x5a8
	.quad	1487                            # 0x5cf
	.quad	1544                            # 0x608
	.quad	1581                            # 0x62d
	.quad	1620                            # 0x654
	.quad	1681                            # 0x691
	.quad	1722                            # 0x6ba
	.quad	1756                            # 0x6dc
	.quad	1817                            # 0x719
	.quad	1861                            # 0x745
	.quad	1901                            # 0x76d
	.quad	1966                            # 0x7ae
	.quad	2004                            # 0x7d4
	.quad	2042                            # 0x7fa
	.quad	2107                            # 0x83b
	.quad	2150                            # 0x866
	.quad	2186                            # 0x88a
	.quad	2241                            # 0x8c1
	.quad	2281                            # 0x8e9
	.quad	2324                            # 0x914
	.quad	2384                            # 0x950
	.quad	2421                            # 0x975
	.quad	2459                            # 0x99b
	.quad	2519                            # 0x9d7
	.quad	2547                            # 0x9f3
	.quad	2580                            # 0xa14
	.quad	2644                            # 0xa54
	.quad	2688                            # 0xa80
	.quad	2724                            # 0xaa4
	.quad	2781                            # 0xadd
	.quad	2814                            # 0xafe
	.quad	2850                            # 0xb22
	.quad	2906                            # 0xb5a
	.quad	2941                            # 0xb7d
	.quad	2975                            # 0xb9f
	.quad	3038                            # 0xbde
	.quad	3079                            # 0xc07
	.quad	3116                            # 0xc2c
	.quad	3172                            # 0xc64
	.quad	3208                            # 0xc88
	.quad	3249                            # 0xcb1
	.quad	3309                            # 0xced
	.quad	3346                            # 0xd12
	.quad	3386                            # 0xd3a
	.quad	3441                            # 0xd71
	.quad	3473                            # 0xd91
	.quad	3513                            # 0xdb9
	.quad	3573                            # 0xdf5
	.quad	3616                            # 0xe20
	.quad	3655                            # 0xe47
	.quad	3712                            # 0xe80
	.quad	3749                            # 0xea5
	.quad	3787                            # 0xecb
	.quad	3851                            # 0xf0b
	.quad	3891                            # 0xf33
	.quad	3929                            # 0xf59
	.quad	3987                            # 0xf93
	.quad	4020                            # 0xfb4
	.quad	4051                            # 0xfd3
	.quad	4109                            # 0x100d
	.quad	4152                            # 0x1038
	.quad	4192                            # 0x1060
	.quad	4252                            # 0x109c
	.quad	4283                            # 0x10bb
	.quad	4319                            # 0x10df
	.quad	4374                            # 0x1116
	.quad	4407                            # 0x1137
	.quad	4441                            # 0x1159
	.quad	4499                            # 0x1193
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4499xindex,@object # @__constant_4499xindex
	.p2align	6, 0x0
.L__constant_4499xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
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
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
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
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
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
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
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
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
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
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
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
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
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
	.quad	28                              # 0x1c
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
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
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
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
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
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
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
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
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
	.quad	47                              # 0x2f
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
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
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
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
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
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
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
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
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
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_4499xindex, 35992

	.type	.L__constant_4499xf64,@object   # @__constant_4499xf64
	.p2align	6, 0x0
.L__constant_4499xf64:
	.quad	0x3ff23b8d3f1843c4              # double 1.1395390000000001
	.quad	0x3ff1aee631f8a090              # double 1.1052
	.quad	0x401ef40d0aaa7ded              # double 7.7383309999999996
	.quad	0x4023153d4280ae10              # double 9.5414829999999995
	.quad	0x4021358c6d612c6b              # double 8.6045870000000004
	.quad	0x401b2877ee4e26d5              # double 6.7895200000000004
	.quad	0x4021148238540464              # double 8.5400559999999998
	.quad	0x4022901b43526528              # double 9.2814580000000006
	.quad	0x401c13254e6e221d              # double 7.0186970000000004
	.quad	0x400fc1a2e7f6f4bf              # double 3.9695490000000002
	.quad	0x3fee2070b8cfbfc6              # double 0.94145999999999996
	.quad	0x40166d4b6a619daa              # double 5.6067330000000002
	.quad	0x401cdcffeb074a77              # double 7.2158199999999999
	.quad	0x40159a63305100a4              # double 5.4007690000000004
	.quad	0x40207d9f0a1be2b5              # double 8.2453540000000007
	.quad	0x4005dbee3d5fdcdf              # double 2.7323879999999998
	.quad	0x4018c45d851654d6              # double 6.1917629999999999
	.quad	0x4022943675ddd2af              # double 9.2894780000000008
	.quad	0x4022da24edf61240              # double 9.4260629999999991
	.quad	0x4021bf08cc575c07              # double 8.8731139999999993
	.quad	0x40038c67168f8e7e              # double 2.4435560000000001
	.quad	0x4020181f31f46ed2              # double 8.0471129999999995
	.quad	0x4018e3b2dd377e1c              # double 6.2223620000000004
	.quad	0x40057eba6aca7935              # double 2.6868789999999998
	.quad	0x3ffdfa5a038194c0              # double 1.873621
	.quad	0x3fc790539fba450b              # double 0.18409200000000001
	.quad	0x4012658ab92c0618              # double 4.5991619999999998
	.quad	0x400921e9af5ba2be              # double 3.141559
	.quad	0x40204720c8cd63cc              # double 8.1389220000000008
	.quad	0x401a05604189374c              # double 6.5052500000000002
	.quad	0x401f6106ab14ec20              # double 7.8447519999999997
	.quad	0x40045b71fbc5de9c              # double 2.544651
	.quad	0x401ecc996b7670a0              # double 7.6998040000000003
	.quad	0x402221f85d744f5d              # double 9.0663479999999996
	.quad	0x4022dbb7739f340d              # double 9.4291339999999994
	.quad	0x4023daae297396d1              # double 9.9271100000000007
	.quad	0x400923cd9a52263e              # double 3.1424820000000002
	.quad	0x401a14aa53fc0097              # double 6.520181
	.quad	0x40227df5275ee99a              # double 9.2460109999999993
	.quad	0x401016ba8c586877              # double 4.0221960000000001
	.quad	0x3fce36544fe36d22              # double 0.23603299999999999
	.quad	0x401a2c56d5cfaace              # double 6.5433000000000003
	.quad	0x4023e5ff3f0fe048              # double 9.9492130000000003
	.quad	0x4023500b88ca3e7d              # double 9.6563379999999998
	.quad	0x400be94a2b9d3cbc              # double 3.4889109999999999
	.quad	0x3ff74ded288ce704              # double 1.4565250000000001
	.quad	0x4016445996744b2b              # double 5.5667479999999996
	.quad	0x3fef958b827fa1a1              # double 0.98700500000000002
	.quad	0x4009e50acc0bdcad              # double 3.236837
	.quad	0x401b43f8982cb210              # double 6.8163780000000003
	.quad	0x402013463497b741              # double 8.0376449999999995
	.quad	0x3ff9a0cae642bf98              # double 1.601756
	.quad	0x401e6b3aabcd78c4              # double 7.6047159999999998
	.quad	0x401b5f13059641f6              # double 6.8428459999999998
	.quad	0x3fe3ae7b3d8e0008              # double 0.61504899999999996
	.quad	0x401212674080f990              # double 4.5179720000000003
	.quad	0x4022e554b8bef8cf              # double 9.4479120000000005
	.quad	0x4005c4cbe1eb4203              # double 2.7210920000000001
	.quad	0x4013b47a9e2bcf92              # double 4.9262490000000003
	.quad	0x40025a719b4dcec0              # double 2.294162
	.quad	0x400e2284dfce3151              # double 3.7668550000000001
	.quad	0x400e7fcb923a29c7              # double 3.8123999999999998
	.quad	0x4011ba02fb5d0310              # double 4.4316519999999997
	.quad	0x40172dbf487fcb92              # double 5.7946749999999998
	.quad	0x3ffb6f60e0eb67c3              # double 1.7146920000000001
	.quad	0x40137d6cb5350093              # double 4.8724850000000002
	.quad	0x401822656abde3fc              # double 6.0335900000000002
	.quad	0x4007c95f2452c5a0              # double 2.9733260000000001
	.quad	0x4001e703afb7e910              # double 2.2378
	.quad	0x40229f1f9acffa7f              # double 9.3107880000000005
	.quad	0x401e468a0d349be9              # double 7.568886
	.quad	0x400545fe111276fb              # double 2.659176
	.quad	0x4010b14a90470a81              # double 4.1731360000000004
	.quad	0x401870a0b1bbcf4f              # double 6.1099880000000004
	.quad	0x3ffc02c1b10fd7e4              # double 1.7506729999999999
	.quad	0x3fe2e3cb81733227              # double 0.59030700000000003
	.quad	0x3fe99680e0653006              # double 0.79962200000000005
	.quad	0x401b1c36113404ea              # double 6.7775499999999997
	.quad	0x3ff33d4e09784ec6              # double 1.202467
	.quad	0x401dd795f676ea42              # double 7.4605329999999999
	.quad	0x401b9f5558212945              # double 6.9055989999999996
	.quad	0x3ff854da4ce8101f              # double 1.520716
	.quad	0x3fe19b280f12c27a              # double 0.55018999999999996
	.quad	0x401cfbd6a593a2e0              # double 7.2459360000000004
	.quad	0x3ffa05154866a11f              # double 1.626241
	.quad	0x400ee4f6598e10cf              # double 3.8617979999999998
	.quad	0x3ff920dfdef8487c              # double 1.5705260000000001
	.quad	0x3ff7c753e707e176              # double 1.486164
	.quad	0x3f949ba5e353f7cf              # double 0.020125000000000001
	.quad	0x40201a3aafff36ac              # double 8.0512289999999993
	.quad	0x4020e257eaa2a0a9              # double 8.4420769999999994
	.quad	0x401743a8e71476b0              # double 5.8160740000000004
	.quad	0x40204264c2f837b5              # double 8.1296750000000007
	.quad	0x3ff68430b178b370              # double 1.407273
	.quad	0x402225fd694ccab4              # double 9.0741990000000001
	.quad	0x4021b8539fba450b              # double 8.8600130000000004
	.quad	0x40168b6f5caf2d80              # double 5.6361670000000004
	.quad	0x40239318116ebd4d              # double 9.787293
	.quad	0x4018d7724fa8b4c0              # double 6.2103970000000004
	.quad	0x3fc61f31f46ed246              # double 0.17282700000000001
	.quad	0x40151f9c62a1b5c8              # double 5.2808700000000002
	.quad	0x4002aea5b530ced5              # double 2.335277
	.quad	0x401a46bdf4c2b51c              # double 6.5690840000000001
	.quad	0x3f754c985f06f694              # double 0.0051999999999999998
	.quad	0x4023634373f316e3              # double 9.6938739999999992
	.quad	0x40154f1561911490              # double 5.3272300000000001
	.quad	0x401f67a9e2bcf91a              # double 7.8512339999999998
	.quad	0x3ff6d035371971c1              # double 1.425832
	.quad	0x3feb75ee99a62ed3              # double 0.85814599999999996
	.quad	0x40132aee631f8a09              # double 4.791925
	.quad	0x40123c0d2c386d2f              # double 4.5586440000000001
	.quad	0x3fb9e30014f8b589              # double 0.10112
	.quad	0x401430ebedfa43fe              # double 5.0477749999999997
	.quad	0x40212e54f7a91969              # double 8.5904919999999994
	.quad	0x4000fad9f0a1be2b              # double 2.1224859999999999
	.quad	0x40202dc182ecaeea              # double 8.0893669999999993
	.quad	0x401479fb1e18efbb              # double 5.119122
	.quad	0x401be5536933a040              # double 6.9739509999999996
	.quad	0x4022d3c8e25c810a              # double 9.4136419999999994
	.quad	0x401cef36ef8055fc              # double 7.2336080000000003
	.quad	0x4002d811f4f50a03              # double 2.3555030000000001
	.quad	0x3fb48eef1bac2df1              # double 0.080306000000000002
	.quad	0x40078013ec460ed8              # double 2.937538
	.quad	0x3fd700218def416c              # double 0.35938300000000001
	.quad	0x40237e11dbca9692              # double 9.7462300000000006
	.quad	0x401bd4e1a3f4666f              # double 6.9578920000000002
	.quad	0x4016d52ef911cf35              # double 5.7081869999999997
	.quad	0x4012d2e7b3d8e001              # double 4.7059620000000004
	.quad	0x401370d306a2b170              # double 4.8601799999999997
	.quad	0x401fb03dddb1209f              # double 7.9221110000000001
	.quad	0x401f0e618ce2d1f2              # double 7.7640440000000002
	.quad	0x400e01d5c31593e6              # double 3.750896
	.quad	0x401c5b5fe542e558              # double 7.0892330000000001
	.quad	0x4021bdbe1a826245              # double 8.8705909999999992
	.quad	0x401335375c8d9f90              # double 4.8019689999999997
	.quad	0x401e75675579af19              # double 7.6146520000000004
	.quad	0x40039d3804534bd7              # double 2.4517669999999998
	.quad	0x401b76950fc71d60              # double 6.8658029999999997
	.quad	0x40174eeed8904f6e              # double 5.827083
	.quad	0x3ffa632f44912989              # double 1.6492150000000001
	.quad	0x402285989df1172f              # double 9.2609300000000001
	.quad	0x400645e3da2f8bdf              # double 2.7841260000000001
	.quad	0x401512f37fbefd00              # double 5.2685069999999996
	.quad	0x3fed6fb4c3c18b50              # double 0.91988599999999998
	.quad	0x4015ce17e34b9453              # double 5.451263
	.quad	0x40006f7d30ad46f6              # double 2.0544380000000002
	.quad	0x401050f9d2bf5515              # double 4.079078
	.quad	0x3ff3a11cb039ef0f              # double 1.226834
	.quad	0x4009c661ae70c133              # double 3.2218659999999999
	.quad	0x4023860653005815              # double 9.7617670000000007
	.quad	0x40200f5275ee99a6              # double 8.0299259999999997
	.quad	0x400b4da1a93293d1              # double 3.412906
	.quad	0x3fbe672fba01eeee              # double 0.11876200000000001
	.quad	0x4000257eaa2a0a96              # double 2.0183080000000002
	.quad	0x4004e4bfd2e94680              # double 2.611694
	.quad	0x3fcbefbf401c4fc2              # double 0.218254
	.quad	0x401943c536d655e3              # double 6.3161820000000004
	.quad	0x3ffa3a237cdcca71              # double 1.639194
	.quad	0x3fe43bfd71b04684              # double 0.63232299999999997
	.quad	0x3fca3a3a8e71476b              # double 0.204902
	.quad	0x40231b2d2bb23572              # double 9.5530790000000003
	.quad	0x400efcf4623d0bfa              # double 3.873513
	.quad	0x40226516db0dd830              # double 9.1974400000000003
	.quad	0x4021fd0c5eb313be              # double 8.9942349999999998
	.quad	0x40178e7f6f4be836              # double 5.8891580000000001
	.quad	0x3fefb31c219eb639              # double 0.99061399999999999
	.quad	0x402085af4adbc665              # double 8.2611030000000003
	.quad	0x401891e4b44a1f08              # double 6.142474
	.quad	0x401433ea704bc276              # double 5.0506989999999998
	.quad	0x4022eca1272c94b4              # double 9.4621670000000008
	.quad	0x400fdb1d0c804103              # double 3.981989
	.quad	0x3ffb45f4a1272c95              # double 1.7045790000000001
	.quad	0x4020ede2046c764b              # double 8.4646150000000002
	.quad	0x4006b7af640639d6              # double 2.83969
	.quad	0x4007482278d0cc36              # double 2.9102220000000001
	.quad	0x4019474213a0c6b5              # double 6.3195880000000004
	.quad	0x401ed4d7f0ed3d86              # double 7.7078550000000003
	.quad	0x3fef18cc144028e5              # double 0.971777
	.quad	0x4022818116ebd4d0              # double 9.2529380000000003
	.quad	0x40083fb15b573eab              # double 3.0310999999999999
	.quad	0x400e7fdc5931ca7d              # double 3.8124319999999998
	.quad	0x40143f19934efcbd              # double 5.0616209999999997
	.quad	0x40235372e6a76966              # double 9.6629860000000001
	.quad	0x4019142070b8cfc0              # double 6.2696550000000002
	.quad	0x40196e8dda48b652              # double 6.3579629999999998
	.quad	0x4012a550870110a1              # double 4.6614399999999998
	.quad	0x4015ca88ace24bba              # double 5.4477869999999999
	.quad	0x400c060242d05f29              # double 3.5029340000000002
	.quad	0x3feb67fd3f5b5fa2              # double 0.85644399999999998
	.quad	0x3ff45f17bd8be729              # double 1.2732159999999999
	.quad	0x4009bd0203e63e8e              # double 3.2172890000000001
	.quad	0x3ffefd35eb7457c1              # double 1.9368190000000001
	.quad	0x402106d4e4c942d5              # double 8.5133430000000008
	.quad	0x40091301eabbcb1d              # double 3.1342810000000001
	.quad	0x400377dc7abfb9bf              # double 2.4335260000000001
	.quad	0x4014e19695d91ab9              # double 5.2203010000000001
	.quad	0x4023fcdd50a88f00              # double 9.9938760000000002
	.quad	0x401c1faeff5c6c12              # double 7.0309410000000003
	.quad	0x4021647bcc2938de              # double 8.6962569999999992
	.quad	0x400bc43ed959a30a              # double 3.4708230000000002
	.quad	0x401211a4bdba0a52              # double 4.5172299999999996
	.quad	0x4016cdb9c7368ad7              # double 5.7009040000000004
	.quad	0x40074e8e1d6494d5              # double 2.913357
	.quad	0x401590da5daf07c0              # double 5.3914580000000001
	.quad	0x4018a08f648c7193              # double 6.1567970000000001
	.quad	0x4023206e9ff0cbb0              # double 9.5633440000000007
	.quad	0x4015951e75360d02              # double 5.3956239999999998
	.quad	0x40105a3b9ae0c176              # double 4.0881179999999997
	.quad	0x40228a1ec4e7253e              # double 9.2697660000000006
	.quad	0x40210e4ffc9795b3              # double 8.5279539999999994
	.quad	0x4018c8be2f7b17ce              # double 6.1960379999999997
	.quad	0x3fd8493c89f40a28              # double 0.37946999999999997
	.quad	0x4011d622c4502689              # double 4.459117
	.quad	0x402266525892684d              # double 9.1998470000000001
	.quad	0x401657210be9424e              # double 5.5850869999999997
	.quad	0x40106f4f0d844d01              # double 4.1086999999999998
	.quad	0x402388127b2cc708              # double 9.7657659999999992
	.quad	0x400827325918a00a              # double 3.019139
	.quad	0x4021a4d35a858794              # double 8.8219250000000002
	.quad	0x4021e028c36da87a              # double 8.937811
	.quad	0x401ef59685122318              # double 7.7398319999999998
	.quad	0x401314a44c7b02d6              # double 4.7701580000000003
	.quad	0x4020b15097c80842              # double 8.3463180000000001
	.quad	0x400ecbb7f9d6f113              # double 3.849472
	.quad	0x401da1ec918e325d              # double 7.4081289999999997
	.quad	0x40214570c564f97f              # double 8.6356260000000002
	.quad	0x3fc8d01c0ca600b0              # double 0.193851
	.quad	0x40167a2a90cd423e              # double 5.6193030000000004
	.quad	0x4007b92641b328b7              # double 2.9654050000000001
	.quad	0x401d103c4b09e98e              # double 7.2658550000000002
	.quad	0x3fabb6ed6777079e              # double 0.054129999999999998
	.quad	0x400322163fdd65a1              # double 2.3916439999999999
	.quad	0x4011866cb10342ab              # double 4.3812740000000003
	.quad	0x40177a1c25d07421              # double 5.8692479999999998
	.quad	0x3ff9a113404ea4a9              # double 1.6018250000000001
	.quad	0x40116182235b4edb              # double 4.3452229999999998
	.quad	0x40152ca70d1fa333              # double 5.2936059999999996
	.quad	0x400f2c154c985f07              # double 3.896525
	.quad	0x40101c2ce4649907              # double 4.0275150000000002
	.quad	0x4002894ff0025bfb              # double 2.3170470000000001
	.quad	0x40165156191148fe              # double 5.5794300000000003
	.quad	0x40148bd66277c45d              # double 5.1365600000000002
	.quad	0x401f95464dc22ab2              # double 7.8957759999999997
	.quad	0x401e8918e325d4a6              # double 7.6338840000000001
	.quad	0x4014d4b61fe21d97              # double 5.2077260000000001
	.quad	0x40011b4677b395c4              # double 2.1383179999999999
	.quad	0x40191ebf65dbfceb              # double 6.2800269999999996
	.quad	0x3ffe47cd898b2e9d              # double 1.89253
	.quad	0x40160f8a8f3a9b07              # double 5.5151770000000004
	.quad	0x402354026cc1ca3a              # double 9.6640809999999995
	.quad	0x402191c7ffde7211              # double 8.7847290000000005
	.quad	0x4014f1f212d77319              # double 5.236275
	.quad	0x3ff3a584f4c6e6da              # double 1.2279100000000001
	.quad	0x401bd5bccaf709b7              # double 6.9587279999999998
	.quad	0x402173649d388a8b              # double 8.7253769999999999
	.quad	0x4012731876188b11              # double 4.6123979999999998
	.quad	0x4023c0a58b3f63c3              # double 9.8762629999999997
	.quad	0x401aa53b8e4b87be              # double 6.6613600000000002
	.quad	0x4013a8769ec2ce46              # double 4.9145149999999997
	.quad	0x40104c219eb6390d              # double 4.0743470000000004
	.quad	0x40205126a65cf67b              # double 8.1584979999999998
	.quad	0x402271ae0c176577              # double 9.2220309999999994
	.quad	0x401fd17bd8be7297              # double 7.954574
	.quad	0x3fe7c1b97353b4b3              # double 0.742398
	.quad	0x40153cf0307f23cd              # double 5.3095100000000004
	.quad	0x401caf822bbecaac              # double 7.1713950000000004
	.quad	0x401faf0f9d2bf551              # double 7.9209579999999997
	.quad	0x4014a30f062d40ab              # double 5.1592370000000001
	.quad	0x3ffd64fb97bb7308              # double 1.837154
	.quad	0x40031cdf69878317              # double 2.3890980000000002
	.quad	0x4022de76ea422899              # double 9.4345009999999991
	.quad	0x400b6d80a17b0f6b              # double 3.4284680000000001
	.quad	0x3feccb87bdcf0308              # double 0.89984500000000001
	.quad	0x40169b356da0168b              # double 5.6515709999999997
	.quad	0x400869107faa044b              # double 3.051301
	.quad	0x4000abfdb4cc2507              # double 2.0839799999999999
	.quad	0x3ffa281a9b8cb8e1              # double 1.6347910000000001
	.quad	0x3fefbca7503b81b6              # double 0.99177899999999997
	.quad	0x4015d8e79aae6c8f              # double 5.4618209999999996
	.quad	0x4022fbbecaab8a5d              # double 9.4916900000000001
	.quad	0x402365e310dbf056              # double 9.6989979999999996
	.quad	0x401a222e5de15ca7              # double 6.5333800000000002
	.quad	0x4017f4373f316e37              # double 5.9884919999999999
	.quad	0x4016e6bc1eff9f88              # double 5.7253270000000001
	.quad	0x4016fe6687f455a8              # double 5.7484380000000002
	.quad	0x40145034f3fd933e              # double 5.0783269999999998
	.quad	0x4021c09b52007dd4              # double 8.8761849999999995
	.quad	0x3ff3ea550870110a              # double 1.24471
	.quad	0x4017871c10d7be98              # double 5.8819429999999997
	.quad	0x40231679ee02a77a              # double 9.5438989999999997
	.quad	0x3fbbb42cc2d6a9c5              # double 0.10821799999999999
	.quad	0x402055a708ede54b              # double 8.1672899999999995
	.quad	0x4020dfdd00f776c5              # double 8.4372330000000009
	.quad	0x40211a428d434a02              # double 8.5512890000000006
	.quad	0x402210ec95bff045              # double 9.0330549999999992
	.quad	0x4007349cf56eac86              # double 2.90069
	.quad	0x3fb6c55c96030c24              # double 0.088949
	.quad	0x3ffa31bac2df0d41              # double 1.637141
	.quad	0x3fd6443914f483cb              # double 0.347914
	.quad	0x4012dcfaacd9e83e              # double 4.7157999999999998
	.quad	0x4016ddd1a21ea359              # double 5.7166199999999998
	.quad	0x3fe9cbd1244a6224              # double 0.80613000000000001
	.quad	0x3ff783c7d5ed06ff              # double 1.469673
	.quad	0x40028746455eaee2              # double 2.316052
	.quad	0x401ba55e6bc621b8              # double 6.9114930000000001
	.quad	0x401f277963992c8c              # double 7.7885489999999997
	.quad	0x4009a0642396073e              # double 3.2033160000000001
	.quad	0x4021ca2af5771002              # double 8.8948590000000003
	.quad	0x4004c4028e4fb97c              # double 2.5957080000000001
	.quad	0x4014ae3608d0891a              # double 5.1701280000000001
	.quad	0x40202449fd7a13c2              # double 8.0708769999999994
	.quad	0x401c27e73a365cb3              # double 7.0389679999999997
	.quad	0x40208f3c925785f9              # double 8.2797590000000003
	.quad	0x3fedb18fc504816f              # double 0.927925
	.quad	0x4022de8e1d6494d5              # double 9.4346779999999998
	.quad	0x4008a3e7d135115a              # double 3.0800320000000001
	.quad	0x40146476af89c5e7              # double 5.098109
	.quad	0x4010f446f9b994e2              # double 4.2385520000000003
	.quad	0x3fe9d058dde7a744              # double 0.80668300000000003
	.quad	0x401fa87f455a7d24              # double 7.9145479999999999
	.quad	0x4021109fa54c5543              # double 8.5324679999999997
	.quad	0x40203705ea24cc68              # double 8.1074669999999998
	.quad	0x3ff15610adcd2d45              # double 1.083512
	.quad	0x400e213fd0d0678c              # double 3.766235
	.quad	0x401fc29dc725c3df              # double 7.940055
	.quad	0x400fa840e1719f80              # double 3.9571550000000002
	.quad	0x4023567d77fae361              # double 9.6689260000000007
	.quad	0x4022ea6527a20579              # double 9.4578030000000001
	.quad	0x40102b96af038e2a              # double 4.042567
	.quad	0x401c231876188b11              # double 7.0342729999999998
	.quad	0x401cc4a2b9d3cbc5              # double 7.1920270000000004
	.quad	0x401a3f98fa376923              # double 6.5621070000000001
	.quad	0x4023f9f31f46ed24              # double 9.9881829999999993
	.quad	0x4017c81d3aa369fd              # double 5.945424
	.quad	0x401680b28522ea10              # double 5.6256810000000002
	.quad	0x3fefab92c061847f              # double 0.98969399999999996
	.quad	0x400d895208e15012              # double 3.6920510000000002
	.quad	0x3fe0fca42aed1394              # double 0.53083999999999998
	.quad	0x4018931ceaf251c2              # double 6.1436650000000004
	.quad	0x400b742fe82517e7              # double 3.4317319999999998
	.quad	0x40151a747d805e5f              # double 5.2758349999999998
	.quad	0x400a13b7d84901d2              # double 3.2596280000000002
	.quad	0x3fecd2d234eb9a17              # double 0.90073499999999995
	.quad	0x40158a91105e1c15              # double 5.385319
	.quad	0x40129361565c2d28              # double 4.6439260000000004
	.quad	0x4004a9f40a2877ee              # double 2.5829849999999999
	.quad	0x400752c6ac215b9a              # double 2.9154179999999998
	.quad	0x40216c55eaee2004              # double 8.7115930000000005
	.quad	0x4013c1b79d909f1f              # double 4.9391769999999999
	.quad	0x40104f36ef8055fc              # double 4.0773580000000003
	.quad	0x4021b36a400fba88              # double 8.8504199999999997
	.quad	0x3fef87442c7fbacb              # double 0.98526199999999997
	.quad	0x400ffcbe61cffeb0              # double 3.9984099999999998
	.quad	0x40213c60242d05f3              # double 8.6179210000000008
	.quad	0x402212b21815a07b              # double 9.0365149999999996
	.quad	0x4008a4523f67f4dc              # double 3.0802350000000001
	.quad	0x40136851654d61b3              # double 4.8518730000000003
	.quad	0x400e6f837b4a233a              # double 3.8044500000000001
	.quad	0x40238a467be553ac              # double 9.7700689999999994
	.quad	0x401b6c814d72799a              # double 6.8559619999999999
	.quad	0x401d6ebedfa43fe6              # double 7.3581500000000002
	.quad	0x40217f926c7eae5c              # double 8.7491640000000003
	.quad	0x401a8c9e6687f456              # double 6.6373230000000003
	.quad	0x4016724b33daf8df              # double 5.6116149999999996
	.quad	0x401632fd32c625ea              # double 5.5497940000000003
	.quad	0x4000cbde3fbbd7b2              # double 2.099545
	.quad	0x401d9bc48f10a99b              # double 7.4021169999999996
	.quad	0x402073545c78a6db              # double 8.2252530000000004
	.quad	0x4018637bd05af6c7              # double 6.0971520000000003
	.quad	0x40217606748e4756              # double 8.730518
	.quad	0x4012b77ccc037931              # double 4.6791869999999998
	.quad	0x3fffa5929670196e              # double 1.9779230000000001
	.quad	0x3fe5c5996744b2b7              # double 0.68037099999999995
	.quad	0x401bd40789613d32              # double 6.9570600000000002
	.quad	0x3ff94dd93c46d82c              # double 1.5815060000000001
	.quad	0x40235c6fdeb52c9d              # double 9.6805409999999998
	.quad	0x4010711f926c7eae              # double 4.1104719999999997
	.quad	0x401422f76e6106ab              # double 5.0341469999999999
	.quad	0x4018f2e90364388f              # double 6.2372170000000002
	.quad	0x401d35dedf1e0829              # double 7.3026080000000002
	.quad	0x4021e559f6ec5b08              # double 8.9479520000000008
	.quad	0x4020bf5e6362a5e8              # double 8.3737670000000008
	.quad	0x4002c63065f9591d              # double 2.3467720000000001
	.quad	0x3fcadcc20d5629d8              # double 0.20986199999999999
	.quad	0x4021a791a32b12d3              # double 8.8272829999999995
	.quad	0x3fbd4b48d3ae685e              # double 0.11443
	.quad	0x4015258f2e05ccc9              # double 5.2866790000000004
	.quad	0x40177fc86cebbba5              # double 5.8747879999999997
	.quad	0x400791ae2da554b9              # double 2.9461330000000001
	.quad	0x4019208f648c7193              # double 6.2817970000000001
	.quad	0x40219e390c9107fb              # double 8.8090290000000007
	.quad	0x4022ae52157689ca              # double 9.3404699999999998
	.quad	0x402397c6b8b69553              # double 9.7964380000000002
	.quad	0x400e9892684cf074              # double 3.8244980000000002
	.quad	0x40113961804d9839              # double 4.3060359999999998
	.quad	0x40175c4eb56fb8f5              # double 5.8401439999999996
	.quad	0x3febf1ef30a4e37a              # double 0.87328300000000003
	.quad	0x3ff1ea5a469d7343              # double 1.119715
	.quad	0x3fda4a44c7b02d5a              # double 0.41078300000000001
	.quad	0x401bb4cd31769a91              # double 6.9265639999999999
	.quad	0x401b25043e5321e6              # double 6.786149
	.quad	0x4004561672324c83              # double 2.5420349999999998
	.quad	0x4017da86d71f3626              # double 5.9634049999999998
	.quad	0x3fef9f6cacd184c2              # double 0.98821099999999995
	.quad	0x4021e4d6e47dc37a              # double 8.9469519999999996
	.quad	0x3fc1e3193f6c269a              # double 0.13974300000000001
	.quad	0x400e0eb80ecfa69c              # double 3.7571870000000001
	.quad	0x3ff0ec82e019b0ab              # double 1.057742
	.quad	0x40079ad6451b9303              # double 2.9506039999999998
	.quad	0x401287342edbb59e              # double 4.6320350000000001
	.quad	0x3ff0cf776c4827b7              # double 1.050651
	.quad	0x3fac87980f55de59              # double 0.055722000000000001
	.quad	0x3ff97470eb24a6a8              # double 1.5909279999999999
	.quad	0x4019faa4fca42aed              # double 6.4947699999999999
	.quad	0x401b9199fe43675e              # double 6.8921890000000001
	.quad	0x3ff7fca643cc07ab              # double 1.499182
	.quad	0x401591c64ba94bbe              # double 5.3923579999999998
	.quad	0x3fc3f9378ee28672              # double 0.15604299999999999
	.quad	0x401570ce4ead0c3d              # double 5.3601619999999999
	.quad	0x401aa2f01754b05b              # double 6.6591189999999996
	.quad	0x4000677dd872f33d              # double 2.0505330000000002
	.quad	0x4012e4c7f3493858              # double 4.7234189999999998
	.quad	0x401a35fa22706d50              # double 6.5527119999999996
	.quad	0x3fa3a2595bbbe879              # double 0.038348
	.quad	0x4015b1b328b6d86f              # double 5.4235350000000002
	.quad	0x401962f0e0a84be4              # double 6.346622
	.quad	0x4011c886162f166e              # double 4.445824
	.quad	0x401db5c9e6687f45              # double 7.4275279999999997
	.quad	0x3fe1015c209246bf              # double 0.531416
	.quad	0x4018ed03d9a95422              # double 6.2314600000000002
	.quad	0x4000135653c9abb0              # double 2.009442
	.quad	0x4018666d7a56de33              # double 6.1000269999999999
	.quad	0x40232734b51372a4              # double 9.5765740000000008
	.quad	0x402048b1572580c3              # double 8.1419779999999999
	.quad	0x4014c3db3bfb58d1              # double 5.1912659999999997
	.quad	0x400f87a95c853c15              # double 3.9412410000000002
	.quad	0x3ffb04a515ce9e5e              # double 1.688634
	.quad	0x401289de481f5382              # double 4.6346369999999997
	.quad	0x401d0d1d041cc533              # double 7.2628060000000003
	.quad	0x3fffd8bc59b8023a              # double 1.9904139999999999
	.quad	0x400cef08cc575c07              # double 3.6167159999999998
	.quad	0x3ff094b599aa6091              # double 1.0363059999999999
	.quad	0x4020dabb8800eae2              # double 8.4272120000000008
	.quad	0x40185669057d1783              # double 6.0843850000000002
	.quad	0x40206dff1d81f106              # double 8.2148369999999993
	.quad	0x3fdd985271bcdbbe              # double 0.462422
	.quad	0x401f6ed4a1ad6452              # double 7.8582330000000002
	.quad	0x400cb729b280f12c              # double 3.5894349999999999
	.quad	0x4023156e47dc37a4              # double 9.5418570000000002
	.quad	0x4022a4ad14a0a0f5              # double 9.3216330000000003
	.quad	0x4019ce0a84be4042              # double 6.4512119999999999
	.quad	0x401c4ea67e846a5d              # double 7.0768069999999996
	.quad	0x3fdb1bc558644524              # double 0.42357
	.quad	0x40232178705425f2              # double 9.565372
	.quad	0x400f27afa7221859              # double 3.8943780000000001
	.quad	0x4014631fcd24e161              # double 5.0968010000000001
	.quad	0x4010553d20f2becf              # double 4.0832410000000001
	.quad	0x401bf0e3cd9a5226              # double 6.9852439999999998
	.quad	0x4001654823854046              # double 2.1744539999999999
	.quad	0x3febc9a34ca0c283              # double 0.86836400000000002
	.quad	0x3fe7f7a7008a697b              # double 0.74898100000000001
	.quad	0x3ff823400b88ca3e              # double 1.5086059999999999
	.quad	0x401ba15c63ae2542              # double 6.9075790000000001
	.quad	0x400761f3a57eaa2a              # double 2.922828
	.quad	0x4022bc2c7fbacb43              # double 9.3675270000000008
	.quad	0x3ff96c460ed80a18              # double 1.5889340000000001
	.quad	0x3ffcaf566490a351              # double 1.792807
	.quad	0x401625bf26f1dc51              # double 5.5368620000000002
	.quad	0x4019ab68cef672b9              # double 6.4173920000000004
	.quad	0x3fdef50e34762952              # double 0.483707
	.quad	0x4000c23854046413              # double 2.0948340000000001
	.quad	0x4021e621101b0037              # double 8.9494710000000008
	.quad	0x3fb884d76ab58080              # double 0.095777000000000001
	.quad	0x3ffa28ef77f27fe5              # double 1.6349940000000001
	.quad	0x402143d7b2031ceb              # double 8.6325050000000001
	.quad	0x4020c64de3b8a19d              # double 8.3873130000000007
	.quad	0x4019d393ee5eedcc              # double 6.4566189999999999
	.quad	0x3fd965c70435efa6              # double 0.396837
	.quad	0x401b092c49342678              # double 6.7589579999999998
	.quad	0x401043a2df9378ee              # double 4.0660509999999999
	.quad	0x3ff5f43632c1f42c              # double 1.3721220000000001
	.quad	0x3fd36c61522a6f3f              # double 0.30348999999999998
	.quad	0x4020f7ebd09e12a5              # double 8.4842209999999998
	.quad	0x401c564dc22ab25b              # double 7.0842809999999998
	.quad	0x401771c8eabffcdb              # double 5.8611180000000003
	.quad	0x4013c6950fc71d60              # double 4.9439279999999997
	.quad	0x4020cf7681669ced              # double 8.4052009999999999
	.quad	0x402163a3443d46b2              # double 8.6946049999999993
	.quad	0x4012013ec460ed81              # double 4.5012160000000003
	.quad	0x400b54b9cb6848bf              # double 3.4163700000000001
	.quad	0x40114a2c2374794f              # double 4.3224340000000003
	.quad	0x4013592a30553261              # double 4.8370749999999996
	.quad	0x40081e2ef4e0114d              # double 3.0147379999999999
	.quad	0x400c93abc947064f              # double 3.5721050000000001
	.quad	0x4009e94ff0025bfb              # double 3.2389220000000001
	.quad	0x402133ca5375c8da              # double 8.601153
	.quad	0x3f85d462c343b70f              # double 0.010659
	.quad	0x4022e275ab7dc7ac              # double 9.442304
	.quad	0x400ca8c0485a0be5              # double 3.582398
	.quad	0x400e77318fc50481              # double 3.8081999999999998
	.quad	0x4010aa1b5c7cd899              # double 4.1661200000000003
	.quad	0x40013da059a73b43              # double 2.1550910000000001
	.quad	0x401ed785b5b70692              # double 7.7104710000000001
	.quad	0x400a5df19d66adb4              # double 3.295871
	.quad	0x402180b545c78a6e              # double 8.7513830000000006
	.quad	0x3ffc4d6a161e4f76              # double 1.7688999999999999
	.quad	0x400bc3e07a28bb0a              # double 3.4706429999999999
	.quad	0x401be03c07ee0b0b              # double 6.968979
	.quad	0x402350c026cc1ca4              # double 9.6577160000000006
	.quad	0x40230fc5cdd50a89              # double 9.5308060000000001
	.quad	0x40046db163baba7c              # double 2.5535610000000002
	.quad	0x401e3f251c193b3a              # double 7.5616649999999996
	.quad	0x4017d77d955714ba              # double 5.9604400000000002
	.quad	0x40069ad31fcd24e1              # double 2.8255979999999998
	.quad	0x401712ababead4f6              # double 5.7682330000000004
	.quad	0x40219aa9f7b5aea3              # double 8.8020779999999998
	.quad	0x4010d3764f11b60b              # double 4.2065060000000001
	.quad	0x3ffb717ce52deca2              # double 1.7152069999999999
	.quad	0x4019d9f01b866e44              # double 6.4628300000000003
	.quad	0x4021f9a34ca0c283              # double 8.9875740000000004
	.quad	0x402092f9873ffac2              # double 8.2870600000000003
	.quad	0x3fe3b1d0c8041030              # double 0.615456
	.quad	0x3feb1b1fab96f21f              # double 0.84706099999999995
	.quad	0x400191a75cd0bb6f              # double 2.1961200000000001
	.quad	0x4023f989bd8383ae              # double 9.9873790000000007
	.quad	0x401ba6583e8576cd              # double 6.9124460000000001
	.quad	0x400cc6a444178705              # double 3.5969929999999999
	.quad	0x4019b920c069e7fb              # double 6.4307889999999999
	.quad	0x4005e5bd0e12e83a              # double 2.737177
	.quad	0x4018aa2c669057d1              # double 6.1661849999999996
	.quad	0x3fee42c3c9eecbfb              # double 0.94564999999999999
	.quad	0x4020ca860dcb9a9e              # double 8.3955540000000006
	.quad	0x40119485e3da2f8c              # double 4.3950420000000001
	.quad	0x3fd466234a87e38f              # double 0.31873400000000002
	.quad	0x4021583ab862b27d              # double 8.6723230000000004
	.quad	0x4020f317268d3283              # double 8.4747859999999999
	.quad	0x4023693ea2d2fe3f              # double 9.7055559999999996
	.quad	0x401dfa4e379b77c0              # double 7.4944389999999999
	.quad	0x3fee3e963dc486ad              # double 0.94513999999999998
	.quad	0x3ff4d085f4a1272d              # double 1.3009090000000001
	.quad	0x400f8f5a964e8b7e              # double 3.9449969999999999
	.quad	0x40139d577963992d              # double 4.9036540000000004
	.quad	0x4023d515ce9e5e24              # double 9.9161819999999991
	.quad	0x401f9714b9cb6849              # double 7.8975400000000002
	.quad	0x3ff2667839cd8128              # double 1.1500170000000001
	.quad	0x4006832db1e9f278              # double 2.8140520000000002
	.quad	0x4020c615ebfa8f7e              # double 8.3868860000000005
	.quad	0x401904e3ffef3908              # double 6.2547759999999997
	.quad	0x4021d8fbeb9e492c              # double 8.9237970000000004
	.quad	0x401f93a3ec02f2fa              # double 7.8941800000000004
	.quad	0x3ffa8a9de8b3b320              # double 1.6588419999999999
	.quad	0x40139a4441787054              # double 4.9006509999999999
	.quad	0x401da869c66d373b              # double 7.414466
	.quad	0x40230673c4f3ba77              # double 9.5126019999999993
	.quad	0x4020056b228dc982              # double 8.0105830000000005
	.quad	0x40172279dd3bafd9              # double 5.7836679999999996
	.quad	0x401d760ed80a17b1              # double 7.365291
	.quad	0x401d6e297396d091              # double 7.3575799999999996
	.quad	0x4000cabffcdab192              # double 2.0989990000000001
	.quad	0x40131506dd69d302              # double 4.7705339999999996
	.quad	0x402179c1b54195cd              # double 8.7378060000000009
	.quad	0x40160929ed3953df              # double 5.5089490000000003
	.quad	0x3ff4b87ad080b674              # double 1.2950390000000001
	.quad	0x40046016052502ef              # double 2.5469170000000001
	.quad	0x4010a53ac4f7ec35              # double 4.1613569999999998
	.quad	0x401347e45803cd14              # double 4.8202069999999999
	.quad	0x4012a735c182ecaf              # double 4.6632910000000001
	.quad	0x3fd574213a0c6b48              # double 0.33521299999999998
	.quad	0x401b408e9b38d60a              # double 6.8130439999999997
	.quad	0x400e3bde82d7b635              # double 3.7792330000000001
	.quad	0x401579ea14057082              # double 5.3690569999999997
	.quad	0x3fca8aac96cc5fc0              # double 0.20735700000000001
	.quad	0x401e0ba9d1f60179              # double 7.5113899999999995
	.quad	0x4021a7264a16a487              # double 8.8264639999999996
	.quad	0x4018d6b6177ea1c7              # double 6.2096790000000004
	.quad	0x4008be5f30e7ff58              # double 3.0929549999999999
	.quad	0x4022039192641b33              # double 9.0069700000000008
	.quad	0x3ffb2f5019f3c70d              # double 1.6990510000000001
	.quad	0x401ca68f08461f9f              # double 7.162655
	.quad	0x3fcb9af9ebe9c886              # double 0.215667
	.quad	0x401eab5bf6a0dbad              # double 7.6673429999999997
	.quad	0x40199a9435ac8a37              # double 6.4009559999999999
	.quad	0x3ffa6a6c1a048e04              # double 1.6509819999999999
	.quad	0x401d19da16616b55              # double 7.2752460000000001
	.quad	0x4022f9c75818c5ca              # double 9.4878490000000006
	.quad	0x401f7f8ad2567989              # double 7.8745529999999996
	.quad	0x3feb63476295208e              # double 0.85586899999999999
	.quad	0x400362478854cdb8              # double 2.4229880000000001
	.quad	0x3feaae2da554b8bf              # double 0.833762
	.quad	0x401d3f0995aaf790              # double 7.3115600000000001
	.quad	0x3ff945260f5e41d5              # double 1.5793820000000001
	.quad	0x4021106b7aa25d8d              # double 8.5320699999999992
	.quad	0x401f338c111ada77              # double 7.8003390000000001
	.quad	0x400af3ef6b5d462c              # double 3.3691089999999999
	.quad	0x400469667b5f1bef              # double 2.5514649999999999
	.quad	0x402042babead4f59              # double 8.130331
	.quad	0x4001da60d4562e0a              # double 2.23163
	.quad	0x40203bf401c4fc1e              # double 8.1170960000000001
	.quad	0x40119b87bdcf0308              # double 4.401885
	.quad	0x3ffccdb7ae5796c0              # double 1.800224
	.quad	0x4020899a847b2464              # double 8.2687570000000008
	.quad	0x401f150e779207d5              # double 7.7705630000000001
	.quad	0x4022ce90bc7b45f1              # double 9.4034479999999991
	.quad	0x3fe63ce63a5c1c61              # double 0.69493400000000005
	.quad	0x401b08e0008637bd              # double 6.758667
	.quad	0x3ff3c373f316e371              # double 1.2352179999999999
	.quad	0x3fea462a1b5c7cd9              # double 0.82106500000000004
	.quad	0x401e43586ca89fc7              # double 7.5657670000000001
	.quad	0x401f8a5093964a5a              # double 7.8850730000000002
	.quad	0x401bf9b6b2af1455              # double 6.9938609999999999
	.quad	0x3feb5c52e72da123              # double 0.85502
	.quad	0x4020a2c8a3726070              # double 8.3179370000000006
	.quad	0x4016c6b1e5c0b999              # double 5.6940379999999999
	.quad	0x3feb0a9de8b3b320              # double 0.84504599999999996
	.quad	0x400f47cd03537197              # double 3.910059
	.quad	0x4007d5842b734b51              # double 2.9792559999999999
	.quad	0x4012b060780fdc16              # double 4.6722429999999999
	.quad	0x400693bc903ea705              # double 2.8221370000000001
	.quad	0x401de259e1f3a57f              # double 7.4710460000000003
	.quad	0x3ff0e497fa5d28d0              # double 1.055809
	.quad	0x4021c9b38d60a633              # double 8.893948
	.quad	0x3ff2503c8e25c811              # double 1.1445890000000001
	.quad	0x3ff35aef6f8f0414              # double 1.2097009999999999
	.quad	0x40200041cc532a49              # double 8.0005019999999991
	.quad	0x40027c86cebbba56              # double 2.3108040000000001
	.quad	0x3fa6b11c6d1e108c              # double 0.044319999999999998
	.quad	0x3ff874e0114d2f5e              # double 1.5285340000000001
	.quad	0x3fe5c3a42f1ed17c              # double 0.68013199999999996
	.quad	0x3fe14488c60cbf2b              # double 0.53961599999999998
	.quad	0x400e897e132b55ef              # double 3.8171349999999999
	.quad	0x3ff1a3d5fdcdf698              # double 1.1024989999999999
	.quad	0x402178c1b97353b5              # double 8.7358530000000005
	.quad	0x3ffd75c8d9f9053a              # double 1.841256
	.quad	0x401636b9c304ccee              # double 5.5534429999999997
	.quad	0x40041d1351159c49              # double 2.5141969999999998
	.quad	0x401a916f0068db8c              # double 6.6420250000000003
	.quad	0x4011ee310dbf0564              # double 4.4826090000000001
	.quad	0x4006fd041cc532a5              # double 2.8735430000000002
	.quad	0x4023165add9c27e9              # double 9.5436619999999994
	.quad	0x400702f837b4a234              # double 2.8764500000000002
	.quad	0x4004944fe36d2242              # double 2.5724179999999999
	.quad	0x400cb1904b3c3e75              # double 3.5867010000000001
	.quad	0x4023506ee30caa32              # double 9.6570959999999992
	.quad	0x40115878fabda0e0              # double 4.3363990000000001
	.quad	0x40057a71151611ba              # double 2.6847859999999999
	.quad	0x401ae0e453d20f2c              # double 6.7196210000000001
	.quad	0x4011abde3fbbd7b2              # double 4.41784
	.quad	0x4022f687d2c7b891              # double 9.4815050000000002
	.quad	0x401e3640e9d51b50              # double 7.5529820000000001
	.quad	0x4002ea897635e743              # double 2.3645200000000002
	.quad	0x40139caf709b738e              # double 4.9030129999999996
	.quad	0x3fe72eee957470eb              # double 0.72447899999999998
	.quad	0x3fe3e3ffef39085f              # double 0.62158199999999997
	.quad	0x401ea9dcb5781c71              # double 7.6658809999999997
	.quad	0x400a3113836a832c              # double 3.2739630000000002
	.quad	0x401b5a1f080303c0              # double 6.8380089999999996
	.quad	0x4022ca05bc01a36e              # double 9.3945749999999997
	.quad	0x4017451fc4c16590              # double 5.8175039999999996
	.quad	0x4010e9f0e4da09cc              # double 4.2284579999999998
	.quad	0x3fd203ff69014b5a              # double 0.28149400000000002
	.quad	0x40135f63800218df              # double 4.843153
	.quad	0x4021815810624dd3              # double 8.7526250000000001
	.quad	0x400fd0cbaf965b21              # double 3.9769510000000001
	.quad	0x401c33c89f40a287              # double 7.0505699999999996
	.quad	0x401b7313be22e5de              # double 6.8623799999999999
	.quad	0x401ea722e1ac57e2              # double 7.6632189999999998
	.quad	0x400c7c44bf4cb189              # double 3.5606779999999998
	.quad	0x3f81da37ef5a964f              # double 0.0087170000000000007
	.quad	0x3ff3b3311a543f1c              # double 1.2312479999999999
	.quad	0x4023252849cb252d              # double 9.5725730000000002
	.quad	0x3ff057214f0520d1              # double 1.021272
	.quad	0x3fde19b0ab2e1694              # double 0.47031800000000001
	.quad	0x40096155d5f56a7b              # double 3.1725270000000001
	.quad	0x40203323358f2e06              # double 8.0998780000000004
	.quad	0x4018ee4c942d490e              # double 6.2327139999999996
	.quad	0x400464fc1df3300e              # double 2.549309
	.quad	0x3ffc6087ca643cc0              # double 1.7735669999999999
	.quad	0x3ffe3c621b7e0ac8              # double 1.889742
	.quad	0x4001ac7325918a01              # double 2.2092040000000002
	.quad	0x40219f1a3b14a904              # double 8.8107469999999992
	.quad	0x40194be5109070fc              # double 6.3241160000000001
	.quad	0x401c987c6327ed85              # double 7.1489120000000002
	.quad	0x401417e02645e4e7              # double 5.0233160000000003
	.quad	0x4013b29b280f12c2              # double 4.9244199999999996
	.quad	0x40178925fe974a34              # double 5.883934
	.quad	0x40237c14a4d2b2c0              # double 9.7423450000000002
	.quad	0x3fdb6d4801f75105              # double 0.42854500000000001
	.quad	0x400494b72c5197a2              # double 2.5726149999999999
	.quad	0x3fc69b1fab96f21f              # double 0.17660899999999999
	.quad	0x40147b1dd5d3dc8c              # double 5.1202310000000004
	.quad	0x40139eb18116ebd5              # double 4.9049740000000002
	.quad	0x40210ab1b36bd2b7              # double 8.5208870000000001
	.quad	0x3ffbe9d0e991ff71              # double 1.7445839999999999
	.quad	0x4021c4c575c0767d              # double 8.8843189999999996
	.quad	0x4021d287a072d1af              # double 8.9111910000000005
	.quad	0x3fec9eb851eb851f              # double 0.89437500000000003
	.quad	0x40101bb16c1e364c              # double 4.0270440000000001
	.quad	0x4021565d7cb2d906              # double 8.6686820000000004
	.quad	0x401b2131a8ef77f2              # double 6.7824159999999996
	.quad	0x401f38d5410f94c8              # double 7.8055009999999995
	.quad	0x401e10232096787d              # double 7.515759
	.quad	0x40002110a137f38c              # double 2.0161449999999999
	.quad	0x4021df8e9f6a93f3              # double 8.9366350000000008
	.quad	0x400c70ebaade657c              # double 3.5551370000000002
	.quad	0x40213017fc7607c4              # double 8.5939329999999998
	.quad	0x4021e154a7f8012e              # double 8.940099
	.quad	0x401d5c169c23b795              # double 7.3399299999999998
	.quad	0x402240b3700474da              # double 9.1263690000000004
	.quad	0x4001cafcce1c5825              # double 2.2241149999999998
	.quad	0x4023d737110e453d              # double 9.9203419999999997
	.quad	0x4009dc536d655e29              # double 3.2325810000000001
	.quad	0x4013218e757928e1              # double 4.7827700000000002
	.quad	0x400d8978d4fdf3b6              # double 3.6921249999999999
	.quad	0x4013846fdeb52c9d              # double 4.8793329999999999
	.quad	0x4017adc1e7967caf              # double 5.9196850000000003
	.quad	0x4007741743e963dc              # double 2.9316849999999999
	.quad	0x401a42f5989df117              # double 6.5653899999999998
	.quad	0x4021bf1455219a84              # double 8.8732019999999991
	.quad	0x40229c0980b24207              # double 9.3047599999999999
	.quad	0x40174d523b3636f4              # double 5.8255090000000003
	.quad	0x3faec0724b76f6d7              # double 0.060061999999999997
	.quad	0x401e02c3009b3073              # double 7.5026970000000003
	.quad	0x400de2b40f66a551              # double 3.7356950000000002
	.quad	0x4011eecdd0d8cb08              # double 4.4832070000000002
	.quad	0x4014599d883ba344              # double 5.0875149999999998
	.quad	0x3feff625204af923              # double 0.99879700000000004
	.quad	0x40044e9c4545846f              # double 2.5383840000000002
	.quad	0x401f4ad3a604e1e7              # double 7.8230729999999999
	.quad	0x40027fe21d96e9bc              # double 2.312443
	.quad	0x3fe3100e6afcce1c              # double 0.59570999999999996
	.quad	0x401e9fe32a0663c7              # double 7.6561399999999997
	.quad	0x4022042c3c9eecc0              # double 9.0081500000000005
	.quad	0x3fd3caa7589efd87              # double 0.30924400000000002
	.quad	0x4017ef0f16f4384c              # double 5.9834560000000003
	.quad	0x3f9cc964628027d9              # double 0.028112000000000002
	.quad	0x40091041461b6d44              # double 3.1329370000000001
	.quad	0x3fd5a46173b85e81              # double 0.33815800000000001
	.quad	0x400f5c68ec52a412              # double 3.9201220000000001
	.quad	0x401562d666a98245              # double 5.3465210000000001
	.quad	0x3ff196473471f794              # double 1.099189
	.quad	0x40117a50507a6bd7              # double 4.3694470000000001
	.quad	0x3ff1267a52ac753e              # double 1.0718939999999999
	.quad	0x4005cb723ee1bd1f              # double 2.7243390000000001
	.quad	0x3ffa0fa48301a7a0              # double 1.628819
	.quad	0x3ff38e7cd0353719              # double 1.2222869999999999
	.quad	0x401aa7720c8cd63d              # double 6.6635210000000002
	.quad	0x40152cdbbe0157ef              # double 5.2938070000000002
	.quad	0x400cdc0010c6f7a1              # double 3.6074220000000001
	.quad	0x401ba9c1f85d744f              # double 6.9157789999999997
	.quad	0x4002a2491afc04c9              # double 2.3292410000000001
	.quad	0x4014e0e8c8abd5dc              # double 5.2196379999999998
	.quad	0x40067475a31a4bdc              # double 2.8068650000000002
	.quad	0x40232f47d805e5f3              # double 9.5923449999999998
	.quad	0x401091101b003687              # double 4.1416630000000003
	.quad	0x40227907d912556d              # double 9.2363879999999998
	.quad	0x40139a1fd1569f49              # double 4.900512
	.quad	0x401c948adeebb342              # double 7.1450610000000001
	.quad	0x3ff8bba450acc0be              # double 1.545811
	.quad	0x4011f826edaa92e6              # double 4.4923359999999999
	.quad	0x401b73122b7baecd              # double 6.862374
	.quad	0x40175efae7924af1              # double 5.8427540000000002
	.quad	0x4021f6581cf7878b              # double 8.9811409999999992
	.quad	0x4021de5abc0e38a8              # double 8.9342860000000002
	.quad	0x4021400a393ee5ef              # double 8.6250780000000002
	.quad	0x4022305bc01a36e3              # double 9.0944500000000001
	.quad	0x400730d9513f8db5              # double 2.8988520000000002
	.quad	0x4017178c0053e2d6              # double 5.7729949999999999
	.quad	0x400d384fd2a62aa2              # double 3.6524960000000002
	.quad	0x4009740fecdd0d8d              # double 3.1816710000000001
	.quad	0x4013beeed8904f6e              # double 4.936458
	.quad	0x3ff06c12ad81adeb              # double 1.0263850000000001
	.quad	0x4023f123a29c779a              # double 9.9709749999999993
	.quad	0x3ff2f0cfe154434e              # double 1.183792
	.quad	0x3feee78c0053e2d6              # double 0.96576499999999998
	.quad	0x40127079e59f2baa              # double 4.6098400000000002
	.quad	0x4022235f80991794              # double 9.0690880000000007
	.quad	0x3ff8a836eb4e9814              # double 1.5410680000000001
	.quad	0x4007c4b09e98dcdb              # double 2.9710399999999999
	.quad	0x40228137b07075b4              # double 9.2523780000000002
	.quad	0x401dcec17ebaf102              # double 7.4519099999999998
	.quad	0x401b887b56b87379              # double 6.8832829999999996
	.quad	0x400b3446f9b994e2              # double 3.4005260000000002
	.quad	0x40167dde37585be2              # double 5.6229180000000003
	.quad	0x4003ffc08fa7a850              # double 2.499879
	.quad	0x401f366516db0dd8              # double 7.8031199999999998
	.quad	0x40114a8a3f8982cb              # double 4.3227929999999999
	.quad	0x3fe16e5471715c64              # double 0.54471800000000004
	.quad	0x401d70bfe3b03e21              # double 7.3601070000000002
	.quad	0x3ffda160d887ebf2              # double 1.851899
	.quad	0x400ee8c8abd5dc40              # double 3.863664
	.quad	0x40061eed45e9185d              # double 2.765101
	.quad	0x402047be33acd5b7              # double 8.1401230000000009
	.quad	0x400051fff79c8430              # double 2.0400390000000002
	.quad	0x4022aab884406c01              # double 9.3334390000000003
	.quad	0x40079bca9691a75d              # double 2.9510700000000001
	.quad	0x3ff6f0196d8f4f94              # double 1.4336180000000001
	.quad	0x4005e2ad3e920c07              # double 2.7356820000000002
	.quad	0x40039f1cfbb94962              # double 2.4526919999999999
	.quad	0x401c53369b9d7fd8              # double 7.0812629999999999
	.quad	0x4021a9b738e6d15b              # double 8.8314760000000003
	.quad	0x4021b6770bd017db              # double 8.8563770000000002
	.quad	0x3fdcba732df505d1              # double 0.44888
	.quad	0x401d20e347629521              # double 7.2821170000000004
	.quad	0x4018e97d06bbdbe4              # double 6.2280160000000002
	.quad	0x3fc3f1172ef0ae53              # double 0.15579499999999999
	.quad	0x4016a70cdc8754f3              # double 5.6631349999999996
	.quad	0x400a5294dd72367e              # double 3.2903229999999999
	.quad	0x401f9ae3608d0892              # double 7.9012580000000003
	.quad	0x40206ad5e071c53f              # double 8.2086629999999996
	.quad	0x4017c649906cca2e              # double 5.9436400000000003
	.quad	0x4022a060dcb9a9da              # double 9.3132389999999994
	.quad	0x400af3a71151611c              # double 3.3689710000000002
	.quad	0x4015dc8e68e3ef28              # double 5.4653869999999998
	.quad	0x401d302e6644d877              # double 7.2970519999999999
	.quad	0x4012b5614df8b157              # double 4.6771289999999999
	.quad	0x4023d48a7a41e57e              # double 9.9151190000000007
	.quad	0x401178fa376922d9              # double 4.3681419999999997
	.quad	0x401c09b456b441bc              # double 7.0094770000000004
	.quad	0x4016cf77af64063a              # double 5.7026050000000001
	.quad	0x400a42eba27ae9ab              # double 3.2826759999999999
	.quad	0x401cd6351deefe50              # double 7.209187
	.quad	0x402377b224aada34              # double 9.7337810000000004
	.quad	0x40197b352a843809              # double 6.3703200000000004
	.quad	0x4018b478854cdb7b              # double 6.1762410000000001
	.quad	0x400fcb35f3d7d391              # double 3.974224
	.quad	0x40088c0379314446              # double 3.0683660000000001
	.quad	0x4020d25f41aef6f9              # double 8.4108830000000001
	.quad	0x3ff6fc6327ed84d3              # double 1.436618
	.quad	0x40143c39799e518f              # double 5.0588129999999998
	.quad	0x4021afb56b873797              # double 8.8431809999999995
	.quad	0x400441db0142f61f              # double 2.5321560000000001
	.quad	0x4016478feef5ec81              # double 5.5698850000000002
	.quad	0x401e5d1e108c3f3e              # double 7.590935
	.quad	0x4004ece24bba12b6              # double 2.615666
	.quad	0x401e612fd32c625f              # double 7.5949090000000003
	.quad	0x40070746455eaee2              # double 2.878552
	.quad	0x400b230db6a1e81d              # double 3.3921160000000001
	.quad	0x4018051159c49774              # double 6.0049489999999999
	.quad	0x400279c1f85d744f              # double 2.3094519999999998
	.quad	0x4021da14488c60cc              # double 8.925936
	.quad	0x3fe61a9da597d49d              # double 0.69074899999999995
	.quad	0x401298a116659d13              # double 4.6490520000000002
	.quad	0x401d583d35eb7458              # double 7.3361710000000002
	.quad	0x401c60e347629521              # double 7.0946170000000004
	.quad	0x400f13f8db489093              # double 3.8847520000000002
	.quad	0x4011283947496aad              # double 4.2892809999999999
	.quad	0x4014a7368ad68837              # double 5.1632939999999996
	.quad	0x3fdb09203a322af5              # double 0.42243199999999997
	.quad	0x4017292fb19e731d              # double 5.7902209999999998
	.quad	0x3ffe1f94855da273              # double 1.8827100000000001
	.quad	0x400fba122fad6cb5              # double 3.9658549999999999
	.quad	0x4021a91233df2a9d              # double 8.8302169999999993
	.quad	0x4021095e17e34b94              # double 8.5182959999999994
	.quad	0x4023fc840e1719f8              # double 9.993195
	.quad	0x4019d5e785b5b707              # double 6.4588910000000004
	.quad	0x3ff0c31593e5fb72              # double 1.047628
	.quad	0x40033f961804d984              # double 2.4060480000000002
	.quad	0x3fcc378ab0c88a48              # double 0.220445
	.quad	0x401b7355043e5322              # double 6.8626290000000001
	.quad	0x40202d2135daad60              # double 8.0881439999999998
	.quad	0x40036f76e6106ab1              # double 2.4294259999999999
	.quad	0x4012863f572de43f              # double 4.6311010000000001
	.quad	0x402140090b417ca2              # double 8.6250689999999999
	.quad	0x3fffea0ba1f4b1ee              # double 1.99464
	.quad	0x40223c01a36e2eb2              # double 9.1172000000000004
	.quad	0x401b2709b738e6d1              # double 6.7881229999999997
	.quad	0x3ff7d9285a921cce              # double 1.4905170000000001
	.quad	0x401a9fc2656abde4              # double 6.656015
	.quad	0x401fe910c2c5e2ce              # double 7.9776030000000002
	.quad	0x40170e84ad794a6f              # double 5.7641780000000002
	.quad	0x401111d10b1feeb3              # double 4.2673990000000002
	.quad	0x4021895421c04428              # double 8.7682199999999995
	.quad	0x40222b24c8366517              # double 9.0842650000000003
	.quad	0x4016694680171194              # double 5.6028079999999996
	.quad	0x402375fc19c17226              # double 9.7304390000000005
	.quad	0x3fe2d43aeab7995f              # double 0.58840700000000001
	.quad	0x400be554b8bef8cf              # double 3.4869780000000001
	.quad	0x401a95625a682b63              # double 6.6458830000000004
	.quad	0x3fea19806f262889              # double 0.81561300000000003
	.quad	0x400f218ac9f2fdb9              # double 3.891378
	.quad	0x4017996d8f4f93bc              # double 5.899832
	.quad	0x401e7da0dfdef848              # double 7.6226839999999995
	.quad	0x40134660a2014728              # double 4.8187280000000001
	.quad	0x400349d51b4fe79f              # double 2.4110510000000001
	.quad	0x401c683f91e646f1              # double 7.1018049999999997
	.quad	0x40092ff4ba51a006              # double 3.1484160000000001
	.quad	0x4000b9b77c02afde              # double 2.0906820000000002
	.quad	0x3feba2424a276b7f              # double 0.86355700000000002
	.quad	0x400103150dae3e6c              # double 2.1265049999999999
	.quad	0x4023f67c286f8ad2              # double 9.9814159999999994
	.quad	0x40211b4e3369b9d8              # double 8.553331
	.quad	0x4012b7db2b346131              # double 4.6795470000000003
	.quad	0x3fcb16440f238972              # double 0.211617
	.quad	0x401ff43a2163fdd6              # double 7.9885029999999997
	.quad	0x40134c7000431bdf              # double 4.8246460000000004
	.quad	0x3ff5d87a4a48f96e              # double 1.365351
	.quad	0x40160365cb35f3d8              # double 5.5033180000000002
	.quad	0x3ff67f359ff4fd6d              # double 1.4060569999999999
	.quad	0x3fe11e57d9dba909              # double 0.53495400000000004
	.quad	0x4001989374bc6a7f              # double 2.1995
	.quad	0x4023faca9ac36545              # double 9.989827
	.quad	0x3fda444178705426              # double 0.410416
	.quad	0x3ffccf1f57b41bfc              # double 1.800567
	.quad	0x40149fbacb428912              # double 5.1559860000000004
	.quad	0x401e89e7fb267c6c              # double 7.6346740000000004
	.quad	0x40164bdcf0307f24              # double 5.5740850000000002
	.quad	0x401d6e9b7bf1e8e6              # double 7.358015
	.quad	0x40217dd7ecbb7f9d              # double 8.7457879999999992
	.quad	0x3fdd6c764adff823              # double 0.45974500000000001
	.quad	0x400001986b9c304d              # double 2.0007790000000001
	.quad	0x400e0262cba732df              # double 3.7511649999999999
	.quad	0x401d870867ad8e43              # double 7.3818679999999999
	.quad	0x3ffb0d92fb19e732              # double 1.690814
	.quad	0x3ff6f3b85e80bed7              # double 1.4345019999999999
	.quad	0x40213cf67b1c0011              # double 8.6190680000000004
	.quad	0x4012e82c2bd7f51f              # double 4.726731
	.quad	0x401844a44c7b02d6              # double 6.0670330000000003
	.quad	0x40212b8c9752977d              # double 8.5850570000000008
	.quad	0x401652a023209678              # double 5.5806889999999996
	.quad	0x401700abb44e50c6              # double 5.7506550000000001
	.quad	0x3ffe03be6601bc99              # double 1.8759140000000001
	.quad	0x4023954ae429e0a4              # double 9.7915869999999998
	.quad	0x3fecf6534373f317              # double 0.90506900000000001
	.quad	0x3fb7397dd00f776c              # double 0.090720999999999996
	.quad	0x40198068986fcdee              # double 6.3753989999999998
	.quad	0x4006ba860dcb9a9e              # double 2.8410760000000002
	.quad	0x3fff0f2f123c42a6              # double 1.9412069999999999
	.quad	0x401d4d1a65061416              # double 7.3252959999999998
	.quad	0x40107c55000c953a              # double 4.1214180000000002
	.quad	0x4016cd5410f94c88              # double 5.7005160000000004
	.quad	0x3ffcc4449dbec248              # double 1.797917
	.quad	0x40164e2b063e07a3              # double 5.5763360000000004
	.quad	0x4021534bf8fcd680              # double 8.6626890000000003
	.quad	0x3fff7d41743e963e              # double 1.9680800000000001
	.quad	0x40105e4f765fd8ae              # double 4.0921000000000003
	.quad	0x401539d495182a99              # double 5.3064749999999998
	.quad	0x3ff1724fa8b4bf90              # double 1.090408
	.quad	0x402343517a46173c              # double 9.6314810000000008
	.quad	0x401188b11409a240              # double 4.3834879999999998
	.quad	0x40206c9f94855da2              # double 8.2121549999999992
	.quad	0x400591feeb2d0a24              # double 2.6962869999999999
	.quad	0x3fb5d54da4ce8102              # double 0.085286
	.quad	0x4019062dc6e2a800              # double 6.2560339999999997
	.quad	0x400ba43f5f91600f              # double 3.4551989999999999
	.quad	0x4015beac8605681f              # double 5.4362050000000002
	.quad	0x4008e23315d701da              # double 3.110449
	.quad	0x400e9821294573a8              # double 3.8242820000000002
	.quad	0x401ff2deca2552a0              # double 7.9871780000000001
	.quad	0x4006d05e1c15097d              # double 2.8517420000000002
	.quad	0x4013c4ed6fda836f              # double 4.9423120000000003
	.quad	0x3fe3d425f202107b              # double 0.61964699999999995
	.quad	0x3fc3ac14c660a201              # double 0.15368899999999999
	.quad	0x401c163ed0f62739              # double 7.0217239999999999
	.quad	0x402313b7952d234f              # double 9.5385100000000004
	.quad	0x3ff3b3fa6defc7a4              # double 1.2314400000000001
	.quad	0x40204b76b3bb83cf              # double 8.1473899999999997
	.quad	0x4021dce8b7e4de3c              # double 8.9314630000000008
	.quad	0x4020ca424a276b7f              # double 8.3950370000000003
	.quad	0x4001be68a0d349bf              # double 2.2179730000000002
	.quad	0x40191f2ba9d1f601              # double 6.2804399999999996
	.quad	0x401aacc70867ad8e              # double 6.6687279999999998
	.quad	0x4020ef7121ab4b73              # double 8.4676600000000004
	.quad	0x40085c779a6b50b1              # double 3.04515
	.quad	0x3ffd7559b3d07c85              # double 1.8411500000000001
	.quad	0x4002d4bd76ee73e7              # double 2.3538770000000002
	.quad	0x401dd86c6583e857              # double 7.4613509999999996
	.quad	0x3fe51f7f8ca8198f              # double 0.66009499999999999
	.quad	0x4011c9cbee807bbb              # double 4.4470669999999997
	.quad	0x400da1144cbe1eb4              # double 3.7036519999999999
	.quad	0x401ed7a743a647fe              # double 7.7105990000000002
	.quad	0x4017efc7607c419a              # double 5.984159
	.quad	0x401c23d20f2becee              # double 7.0349810000000002
	.quad	0x4000f82a9930be0e              # double 2.121175
	.quad	0x4003a999567dbb17              # double 2.4578120000000001
	.quad	0x4019dae924f227d0              # double 6.4637799999999999
	.quad	0x4023715336deb95e              # double 9.7213379999999994
	.quad	0x40202288051c9f73              # double 8.0674440000000001
	.quad	0x4022c4a72ead9275              # double 9.3840880000000002
	.quad	0x40227d9817b95a29              # double 9.2453009999999995
	.quad	0x3fcd81733226c3b9              # double 0.230513
	.quad	0x401db30c23fab10c              # double 7.4248510000000003
	.quad	0x40229c46d82ba5a0              # double 9.3052279999999996
	.quad	0x3fe338f7985271bd              # double 0.60070400000000002
	.quad	0x3fd5ecdd0d8cb07d              # double 0.342582
	.quad	0x400a2431bde82d7b              # double 3.2676729999999998
	.quad	0x3ffabf290abb44e5              # double 1.67167
	.quad	0x3ffebeee52589268              # double 1.9216139999999999
	.quad	0x400e1ee88df3732a              # double 3.7650920000000001
	.quad	0x40141fadafd11383              # double 5.0309359999999996
	.quad	0x3ffafe20ccff21b4              # double 1.6870430000000001
	.quad	0x4022c57b84db9c73              # double 9.3857079999999992
	.quad	0x3ffbb57928e0c9da              # double 1.731805
	.quad	0x4023e2dfd694ccab              # double 9.9431139999999995
	.quad	0x3ffaf94a6eb91b3f              # double 1.685862
	.quad	0x4012b0196d8f4f94              # double 4.6719720000000002
	.quad	0x4016fbea4ebdd335              # double 5.7460110000000002
	.quad	0x401fc41a6937d1fe              # double 7.9415069999999996
	.quad	0x401ba530489d27c4              # double 6.9113170000000004
	.quad	0x400508ec52a411c3              # double 2.6293570000000002
	.quad	0x3ff2c2070b8cfbfc              # double 1.1723699999999999
	.quad	0x3ff8c8b32ce89657              # double 1.548999
	.quad	0x4019ca1272c94b38              # double 6.447336
	.quad	0x40065bc3c5bd0e13              # double 2.794807
	.quad	0x4020d330b5aa7158              # double 8.4124809999999997
	.quad	0x4022e7d73c925786              # double 9.452814
	.quad	0x401d0d362e903644              # double 7.2629020000000004
	.quad	0x401d396744b2b778              # double 7.3060580000000002
	.quad	0x401ea05425f20210              # double 7.6565709999999996
	.quad	0x401a28ed1bf7ad4b              # double 6.5399669999999999
	.quad	0x3ff18d1633482be9              # double 1.0969450000000001
	.quad	0x401aacc1ca3a4b55              # double 6.6687079999999996
	.quad	0x3ffa1c90c4dec1c2              # double 1.631974
	.quad	0x40156894c447c30d              # double 5.3521299999999998
	.quad	0x401b6d017dae8188              # double 6.8564509999999999
	.quad	0x4023921ea35935fc              # double 9.7853899999999995
	.quad	0x40001a775fb2edfe              # double 2.0129229999999998
	.quad	0x4021b310fd7e4580              # double 8.8497389999999996
	.quad	0x4023d202fb5d0310              # double 9.9101789999999994
	.quad	0x400db36ac647778e              # double 3.7126060000000001
	.quad	0x4012b830e3cd9a52              # double 4.6798739999999999
	.quad	0x401c604d98394749              # double 7.0940459999999996
	.quad	0x40184bfb15b573eb              # double 6.0742000000000003
	.quad	0x40226a16e7a311e8              # double 9.2072059999999993
	.quad	0x4010af91600f3450              # double 4.1714529999999996
	.quad	0x400287d34df04ddb              # double 2.3163209999999999
	.quad	0x401dd7c0f4517614              # double 7.4606969999999997
	.quad	0x401407fd3f5b5fa2              # double 5.0078019999999999
	.quad	0x40155adab9f559b4              # double 5.3387250000000002
	.quad	0x4011e7403dddb121              # double 4.4758310000000003
	.quad	0x40047b691212513b              # double 2.5602589999999998
	.quad	0x401032fbe33acd5b              # double 4.0497889999999996
	.quad	0x4000a7e62dc6e2a8              # double 2.081982
	.quad	0x3feaca276b7ed41b              # double 0.83717699999999995
	.quad	0x40135adcd2d44dcb              # double 4.8387330000000004
	.quad	0x40053dd5d3dc8b87              # double 2.6551930000000001
	.quad	0x3fded4aa10e02214              # double 0.48172999999999999
	.quad	0x3fd905ab3aabcd79              # double 0.39097100000000001
	.quad	0x401bee9531550ca2              # double 6.9829910000000002
	.quad	0x4023c443d46b26c0              # double 9.8833300000000008
	.quad	0x401f9e90795f676f              # double 7.9048480000000003
	.quad	0x4010ed77fae3608d              # double 4.231903
	.quad	0x4021ea50f840181e              # double 8.957649
	.quad	0x401583bd1676640a              # double 5.3786509999999996
	.quad	0x3ff0df45e0b4e11e              # double 1.0545100000000001
	.quad	0x402157121ab4b72c              # double 8.6700599999999994
	.quad	0x4002cf75536933a0              # double 2.3512979999999999
	.quad	0x3ff1d0870110a138              # double 1.11341
	.quad	0x40238e44fa05143c              # double 9.77787
	.quad	0x401ea91afc04c8bd              # double 7.6651420000000003
	.quad	0x401e1c98e53eb39a              # double 7.527927
	.quad	0x4004750dae3e6c4c              # double 2.5571549999999998
	.quad	0x40126715c63ae254              # double 4.6006689999999999
	.quad	0x401d794b7b28954a              # double 7.3684519999999996
	.quad	0x4023f2f2f9873ffb              # double 9.9745100000000004
	.quad	0x3fee3cbe61cffeb0              # double 0.94491499999999995
	.quad	0x40116fc47e49b1fb              # double 4.3591480000000002
	.quad	0x401c16df3f961805              # double 7.0223360000000001
	.quad	0x401ef3f5f91600f3              # double 7.7382429999999997
	.quad	0x400bc8a47ecfe9b8              # double 3.4729700000000001
	.quad	0x401cf463497b7415              # double 7.2386600000000003
	.quad	0x401d8f1f9acffa7f              # double 7.3897690000000003
	.quad	0x4023749eecbfb15b              # double 9.7277749999999993
	.quad	0x401b408e9b38d60a              # double 6.8130439999999997
	.quad	0x3fe236a400fba882              # double 0.56916999999999995
	.quad	0x4014611ec918e326              # double 5.0948440000000002
	.quad	0x400ee3afb7e90ff9              # double 3.8611749999999998
	.quad	0x3ff08b955f78359c              # double 1.0340780000000001
	.quad	0x40176a087ca643cc              # double 5.853548
	.quad	0x4022f51eb851eb85              # double 9.4787499999999997
	.quad	0x3ffd8cc9a77e5eab              # double 1.8468720000000001
	.quad	0x400813b3a68b19a4              # double 3.00962
	.quad	0x401982b1f687b13a              # double 6.3776320000000002
	.quad	0x3fd543d46b26bf87              # double 0.33226499999999998
	.quad	0x40213173b85e80bf              # double 8.5965860000000003
	.quad	0x4018e9231c64ba95              # double 6.2276730000000002
	.quad	0x400577de939eadd6              # double 2.6835300000000002
	.quad	0x3fff215a8deb0fae              # double 1.945643
	.quad	0x4013c874c8ffb8b2              # double 4.9457579999999997
	.quad	0x40225347e8ccdd94              # double 9.1626580000000004
	.quad	0x401af560c7c0f451              # double 6.7396269999999996
	.quad	0x3fa6eaa6d2674081              # double 0.044759
	.quad	0x400c71172ef0ae53              # double 3.5552199999999998
	.quad	0x40205fc6fbd273d6              # double 8.1870650000000005
	.quad	0x3ff2e671ef30a4e3              # double 1.1812609999999999
	.quad	0x4014de1e2de87097              # double 5.2169119999999998
	.quad	0x4020c8068db8bac7              # double 8.3906749999999999
	.quad	0x3fce71e6cd29131f              # double 0.23785100000000001
	.quad	0x4013ac36544fe36d              # double 4.9181759999999999
	.quad	0x40195eb2074ea8da              # double 6.3424759999999996
	.quad	0x3f255d5f56a7ac82              # double 1.63E-4
	.quad	0x40222b18548a9bd0              # double 9.0841700000000003
	.quad	0x401909780baa582e              # double 6.2592470000000002
	.quad	0x40047761cbccf28c              # double 2.5582919999999998
	.quad	0x40215c6088d6d3b7              # double 8.6804240000000004
	.quad	0x4023771c75818c5d              # double 9.7326390000000007
	.quad	0x401c90d90e23af32              # double 7.1414530000000003
	.quad	0x3ff8596e9bbf0dc7              # double 1.5218339999999999
	.quad	0x402260795f676ea4              # double 9.1884259999999997
	.quad	0x3ff0b9096bb98c7e              # double 1.045175
	.quad	0x400506277c45cbbc              # double 2.6280049999999999
	.quad	0x4023338cfbfc6541              # double 9.6006850000000003
	.quad	0x4018505814940bbb              # double 6.0784609999999999
	.quad	0x3ff178887229e908              # double 1.0919270000000001
	.quad	0x40013d76ee73e682              # double 2.1550120000000001
	.quad	0x40224735e310dbf0              # double 9.1390829999999994
	.quad	0x4023aea3161a1db8              # double 9.8410879999999991
	.quad	0x4022f79830e3cd9a              # double 9.4835829999999994
	.quad	0x3fd28a86d71f3626              # double 0.28970499999999999
	.quad	0x4020c696e58a32f4              # double 8.3878699999999994
	.quad	0x4021685857afea3e              # double 8.7037990000000001
	.quad	0x3ff9115ad106ee31              # double 1.566737
	.quad	0x40206145308bb906              # double 8.1899809999999995
	.quad	0x4010ea29c779a6b5              # double 4.228675
	.quad	0x402253f077ccc038              # double 9.1639440000000007
	.quad	0x4017be0221426fe7              # double 5.9355549999999999
	.quad	0x401e802fb5d03105              # double 7.6251819999999996
	.quad	0x4021d00474d9c6b0              # double 8.9062839999999994
	.quad	0x400c894141e9af5c              # double 3.5670190000000002
	.quad	0x401e422036006d0d              # double 7.5645759999999997
	.quad	0x4018221ee675147f              # double 6.0333209999999999
	.quad	0x401abc2f405f6ba0              # double 6.6837739999999997
	.quad	0x400a9b9628cbd124              # double 3.3259699999999999
	.quad	0x40108b1704ff4342              # double 4.1358300000000003
	.quad	0x4023dafbc1acde1a              # double 9.927702
	.quad	0x400c17c3d68405b4              # double 3.5116040000000002
	.quad	0x400238d5842b734b              # double 2.2777509999999999
	.quad	0x401709d451fc4c16              # double 5.7595989999999997
	.quad	0x40153429e0a41a26              # double 5.3009409999999999
	.quad	0x40200f2d7f950b95              # double 8.0296439999999993
	.quad	0x401f46be37de939f              # double 7.8190850000000002
	.quad	0x402170aa00192a73              # double 8.7200469999999992
	.quad	0x40160c710cb295ea              # double 5.5121500000000001
	.quad	0x3fe0d814940bbb1f              # double 0.52637699999999998
	.quad	0x4015b2830a0b1bbd              # double 5.424328
	.quad	0x40163a797891e215              # double 5.5571039999999998
	.quad	0x401f08b04ab606b8              # double 7.7584850000000002
	.quad	0x401d3433508f648c              # double 7.3009769999999996
	.quad	0x4023d5fbb517a461              # double 9.9179359999999991
	.quad	0x40040c8f75536934              # double 2.5061330000000002
	.quad	0x4014919f7f8ca81a              # double 5.1422100000000004
	.quad	0x3ff3feec39799e52              # double 1.2497370000000001
	.quad	0x40150ee8d10f51ad              # double 5.2645600000000004
	.quad	0x4023d8ecd8dbcec8              # double 9.9236819999999994
	.quad	0x40146de15ca6ca04              # double 5.1073050000000002
	.quad	0x4001da6698bb4d49              # double 2.2316410000000002
	.quad	0x400b90995aaf78ff              # double 3.445605
	.quad	0x4005532df505d0fa              # double 2.6656149999999998
	.quad	0x4013a18dac258d58              # double 4.9077669999999998
	.quad	0x401a851d68c692f7              # double 6.6299950000000001
	.quad	0x3ffff0446b69db66              # double 1.996159
	.quad	0x401b5ffde7210be9              # double 6.8437419999999998
	.quad	0x401efa5a469d7343              # double 7.744485
	.quad	0x3fe2528f190d1740              # double 0.57257800000000003
	.quad	0x40158b135979181a              # double 5.3858160000000002
	.quad	0x4019f5c5f7c6759b              # double 6.4900130000000003
	.quad	0x4020d68a936c58ef              # double 8.4190260000000006
	.quad	0x4012caac53b0813d              # double 4.6979230000000003
	.quad	0x4016aad4b2745bf2              # double 5.6668269999999996
	.quad	0x3ff15654d61b2a28              # double 1.083577
	.quad	0x40214e8c0485a0be              # double 8.6534119999999994
	.quad	0x40147a6eb91b3f21              # double 5.1195630000000003
	.quad	0x4023b3107746887b              # double 9.8497350000000007
	.quad	0x402139845dc83233              # double 8.6123379999999994
	.quad	0x40087f84449dbec2              # double 3.0622639999999999
	.quad	0x401f83f42352eb5f              # double 7.8788609999999996
	.quad	0x3ffb162e09fe8683              # double 1.6929149999999999
	.quad	0x401e9ff4fd6d7e89              # double 7.6562080000000003
	.quad	0x401018b827fa1a0d              # double 4.0241400000000001
	.quad	0x4012b4c271fff79d              # double 4.6765230000000004
	.quad	0x4022ab26e115592e              # double 9.3342810000000007
	.quad	0x4023b3fe5c91d14e              # double 9.8515499999999996
	.quad	0x40202b98e9707182              # double 8.0851509999999998
	.quad	0x400e62467be553ac              # double 3.7979859999999999
	.quad	0x4020bc0c8472c0e8              # double 8.3672830000000005
	.quad	0x3f8bb2fec56d5cfb              # double 0.013525000000000001
	.quad	0x40139c9c4da9003f              # double 4.9029400000000001
	.quad	0x402346601bc98a22              # double 9.6374519999999997
	.quad	0x4023d7ab324851a8              # double 9.9212279999999992
	.quad	0x40207314ca925fe9              # double 8.2247679999999992
	.quad	0x400bbc8323358f2e              # double 3.467047
	.quad	0x3ff7310129cbab65              # double 1.4494640000000001
	.quad	0x401cdb2fa93af74d              # double 7.2140490000000002
	.quad	0x401239014b599aa6              # double 4.555669
	.quad	0x4023744d013a92a3              # double 9.7271499999999999
	.quad	0x40140952d234eb9a              # double 5.0091049999999999
	.quad	0x401c0c28b2a6b0d9              # double 7.0118739999999997
	.quad	0x400b468448cf7caa              # double 3.4094319999999998
	.quad	0x3fea215b9a5a89b9              # double 0.81657199999999996
	.quad	0x3fd6bcd78c436fc1              # double 0.35527599999999998
	.quad	0x40002b7ed41b75a7              # double 2.0212379999999999
	.quad	0x3fe6c6e8f29d40ee              # double 0.711781
	.quad	0x3ff0a91c8eabffce              # double 1.0412870000000001
	.quad	0x4023f1c2a0232096              # double 9.9721879999999992
	.quad	0x3fe900c0f01fb82c              # double 0.78134199999999998
	.quad	0x401cd15e7c8d1959              # double 7.2044620000000004
	.quad	0x4023f1f72f76e610              # double 9.9725889999999993
	.quad	0x4012ac62e4d1a650              # double 4.6683459999999997
	.quad	0x401cda958537e2c5              # double 7.2134609999999997
	.quad	0x3fef2d2fe3f359ff              # double 0.97426599999999996
	.quad	0x3fd0e514c22ee419              # double 0.26398199999999999
	.quad	0x400a7d35eb7457c1              # double 3.3111380000000001
	.quad	0x4022de49b1fab96f              # double 9.4341559999999997
	.quad	0x400e1260f5e41d4b              # double 3.7589739999999998
	.quad	0x3fe3aed352220bc4              # double 0.61509100000000005
	.quad	0x3fee721b3aeee957              # double 0.95142899999999997
	.quad	0x3fb438d1d8a54824              # double 0.078992000000000007
	.quad	0x40138e0eb67c2870              # double 4.8887280000000004
	.quad	0x4021dfc4199fe436              # double 8.9370429999999992
	.quad	0x3ffa75f4e4430b18              # double 1.6537980000000001
	.quad	0x400feab7995ee137              # double 3.989608
	.quad	0x3fd4ca7d6733ebc0              # double 0.32485900000000001
	.quad	0x400da26916440f24              # double 3.7043020000000002
	.quad	0x4001459d99029ae5              # double 2.158992
	.quad	0x400b9cf9a06a6e33              # double 3.451648
	.quad	0x3fe4db8dc55000c9              # double 0.65180099999999996
	.quad	0x3fd3c38b04ab606b              # double 0.30880999999999997
	.quad	0x401c9d27807789a4              # double 7.1534709999999997
	.quad	0x40196670196d8f50              # double 6.3500370000000004
	.quad	0x4021e66ab9b23dd5              # double 8.9500329999999995
	.quad	0x3ffd8cfe154434e3              # double 1.846922
	.quad	0x4000149949e8815e              # double 2.0100579999999999
	.quad	0x401a256c508b32cf              # double 6.5365460000000004
	.quad	0x401d2b0ccbc05d53              # double 7.2920410000000002
	.quad	0x400cd4e3369b9d80              # double 3.6039490000000001
	.quad	0x40112aad601ffb48              # double 4.291677
	.quad	0x4011d43a647fdc59              # double 4.4572539999999998
	.quad	0x3fe7a921ccd96207              # double 0.73939600000000005
	.quad	0x3fdd12a94ff0025c              # double 0.454264
	.quad	0x3ffb982a9930be0e              # double 1.72465
	.quad	0x4020676a0dbad3a6              # double 8.201981
	.quad	0x4017c11dffc5479d              # double 5.9385909999999997
	.quad	0x4022479b994e1a3f              # double 9.1398589999999995
	.quad	0x402141b1b79d909f              # double 8.6283089999999998
	.quad	0x4023a9878316a055              # double 9.8311119999999991
	.quad	0x3fea26394face67d              # double 0.81716599999999995
	.quad	0x401f4518f3eccc47              # double 7.8174780000000003
	.quad	0x401f2bfd2e946801              # double 7.7929579999999996
	.quad	0x4017c5f99c38b04b              # double 5.9433350000000003
	.quad	0x40206604189374bc              # double 8.1992499999999992
	.quad	0x402125b7281fd9ba              # double 8.5736629999999998
	.quad	0x4012706af46aa088              # double 4.6097830000000002
	.quad	0x400e9126634117f8              # double 3.8208739999999999
	.quad	0x4017fb3b7521144d              # double 5.9953440000000002
	.quad	0x4020b6bce8533b10              # double 8.3569099999999992
	.quad	0x40172b480a5accd5              # double 5.7922669999999998
	.quad	0x3ff5d844d013a92a              # double 1.3653
	.quad	0x3ff109fb6134ce3e              # double 1.064937
	.quad	0x400c2a8c154c985f              # double 3.520775
	.quad	0x402333e20ccff21b              # double 9.6013339999999995
	.quad	0x4019444a1f080304              # double 6.3166890000000002
	.quad	0x400517ac3eb7cbb4              # double 2.6365590000000001
	.quad	0x4021578a0902de01              # double 8.6709750000000003
	.quad	0x3fd97281fd9ba1b2              # double 0.39761400000000002
	.quad	0x401ccf29d40ee06e              # double 7.2023080000000004
	.quad	0x4022be67b5f1bef5              # double 9.3718850000000006
	.quad	0x40205be3c105186e              # double 8.1794720000000005
	.quad	0x3ff0cc5974e65bea              # double 1.04989
	.quad	0x40223c72c0e7bc3c              # double 9.1180629999999993
	.quad	0x400ba44b6e935b92              # double 3.455222
	.quad	0x40212f1fbc5de9c0              # double 8.5920389999999998
	.quad	0x3ff1b94c87980f56              # double 1.107739
	.quad	0x3ffe73dd11be6e65              # double 1.903287
	.quad	0x40220f3fb7a5f41b              # double 9.0297830000000001
	.quad	0x4009cacf312b1b37              # double 3.2240280000000001
	.quad	0x4020eeadf71eafee              # double 8.4661709999999992
	.quad	0x401a6905c0336156              # double 6.6025609999999997
	.quad	0x4021f88e368f0846              # double 8.9854599999999998
	.quad	0x4015acff21b3aeef              # double 5.4189420000000004
	.quad	0x402114b85a4f00ef              # double 8.5404689999999999
	.quad	0x40082e779207d4e1              # double 3.0226890000000002
	.quad	0x401a837154003255              # double 6.6283620000000001
	.quad	0x3fc2af922962cfd9              # double 0.145983
	.quad	0x400191fcd24e160e              # double 2.1962830000000002
	.quad	0x401549142b302f73              # double 5.3213660000000003
	.quad	0x3fcf963992c8c500              # double 0.24677199999999999
	.quad	0x3f813165d3996fa8              # double 0.0083949999999999996
	.quad	0x3fd9833c60029f17              # double 0.39863500000000002
	.quad	0x401b35b70691ea79              # double 6.8024560000000003
	.quad	0x4014d4e054690de1              # double 5.2078870000000004
	.quad	0x401c758d5842b735              # double 7.1147970000000003
	.quad	0x3ffe8dd3fe1975f3              # double 1.909626
	.quad	0x400c794d0dcfcc5c              # double 3.5592290000000002
	.quad	0x401d56d117b5286b              # double 7.3347819999999997
	.quad	0x4014dddc6195464e              # double 5.2166610000000002
	.quad	0x4022fc05f6ba0621              # double 9.4922330000000005
	.quad	0x4018ba45d41fa765              # double 6.1819069999999998
	.quad	0x3fe2b56da0168b5d              # double 0.58464700000000003
	.quad	0x4022cdc853c14834              # double 9.4019189999999994
	.quad	0x40029b80a9de8b3b              # double 2.3259289999999999
	.quad	0x401cd4e5d5b24e9c              # double 7.2079079999999998
	.quad	0x40114a10e0221427              # double 4.32233
	.quad	0x4011debcc6c54bcf              # double 4.467517
	.quad	0x4020d76ddaceee0f              # double 8.4207599999999996
	.quad	0x40164baade657b85              # double 5.5738940000000001
	.quad	0x4015332ebe596c83              # double 5.2999830000000001
	.quad	0x400300807357e671              # double 2.3752450000000001
	.quad	0x400869906cca2db6              # double 3.051545
	.quad	0x40010e631f8a0903              # double 2.1320250000000001
	.quad	0x4017d16ebd4cfd09              # double 5.9545240000000002
	.quad	0x4022f8fe69270b07              # double 9.4863160000000004
	.quad	0x3ff689c7ffde7211              # double 1.4086380000000001
	.quad	0x4023897c5ef62f9d              # double 9.7685270000000006
	.quad	0x401aeea704bc2763              # double 6.7330589999999999
	.quad	0x3ff83ef06b37867f              # double 1.515366
	.quad	0x4014c3c4f3ba7760              # double 5.1911810000000003
	.quad	0x40235ca686e7e62e              # double 9.6809580000000004
	.quad	0x401b7da33bd9cae2              # double 6.8726929999999999
	.quad	0x401a107fed20296b              # double 6.5161129999999998
	.quad	0x4015a7243137b070              # double 5.4132239999999996
	.quad	0x4021556a161e4f76              # double 8.6668249999999993
	.quad	0x400a1d651b0ccbc0              # double 3.2643529999999998
	.quad	0x4001311cf355cd92              # double 2.148981
	.quad	0x4007b244a6223e18              # double 2.9620449999999998
	.quad	0x3fe43dee78183f92              # double 0.63256000000000001
	.quad	0x3fed5debd9018e75              # double 0.91771499999999995
	.quad	0x40220228dc981beb              # double 9.0042179999999998
	.quad	0x400245c9a34ca0c3              # double 2.2840760000000002
	.quad	0x401683201040bfe4              # double 5.6280520000000003
	.quad	0x4019f25204af9229              # double 6.4866409999999997
	.quad	0x402147ecbb7f9d6f              # double 8.6404779999999999
	.quad	0x4011d138fffbce42              # double 4.4543189999999999
	.quad	0x3fd600a7c5ac471b              # double 0.34378999999999998
	.quad	0x401d37c6fbd273d6              # double 7.3044700000000002
	.quad	0x400ba7b9170d62bf              # double 3.456896
	.quad	0x4005c0cb6c7a7c9e              # double 2.7191380000000001
	.quad	0x40216488c60cbf2b              # double 8.6963559999999998
	.quad	0x400bc02107b78466              # double 3.4688129999999999
	.quad	0x40048ae9ee45c359              # double 2.5678290000000001
	.quad	0x401dea07b352a844              # double 7.4785450000000004
	.quad	0x401923419e300150              # double 6.2844300000000004
	.quad	0x3fea5c3dee781840              # double 0.82376000000000005
	.quad	0x4009130b5aa71583              # double 3.1342989999999999
	.quad	0x400c67a41e57d9dc              # double 3.5506060000000002
	.quad	0x3fb0940bbb1f255f              # double 0.064758999999999997
	.quad	0x4010b55582129457              # double 4.1770839999999998
	.quad	0x3fd892817763e4ac              # double 0.38394200000000001
	.quad	0x4014214b599aa609              # double 5.0325139999999999
	.quad	0x4016778897e99631              # double 5.6167319999999998
	.quad	0x401bd8e4fb97bb73              # double 6.961811
	.quad	0x4023166ff7dfa00e              # double 9.5438229999999997
	.quad	0x402142116659d12d              # double 8.6290390000000006
	.quad	0x40200aa044ae85ba              # double 8.0207540000000002
	.quad	0x40215ec1c1d6cf85              # double 8.6850719999999999
	.quad	0x40132cebbba55d1c              # double 4.7938679999999998
	.quad	0x3fa1008205ff1d82              # double 0.033207
	.quad	0x4014f9d30270f388              # double 5.2439689999999999
	.quad	0x40231ffdc5931ca8              # double 9.5624830000000002
	.quad	0x400bfd1244a6223e              # double 3.49857
	.quad	0x4022a9a52263d817              # double 9.3313380000000006
	.quad	0x4011ae50c5eb313c              # double 4.4202300000000001
	.quad	0x401e79cbab649d39              # double 7.6189410000000004
	.quad	0x401674bc27631b58              # double 5.6139989999999997
	.quad	0x40231d4bcf0b6b6e              # double 9.5572189999999999
	.quad	0x3ff93125dd095af3              # double 1.5744990000000001
	.quad	0x401af7396d0917d7              # double 6.7414300000000003
	.quad	0x40142b29a1b9f98b              # double 5.0421509999999996
	.quad	0x400b7ef39085f4a1              # double 3.4369879999999999
	.quad	0x401ea0ad03d9a954              # double 7.6569099999999999
	.quad	0x4023860999dcb578              # double 9.7617919999999998
	.quad	0x40211fd2e9468017              # double 8.5621559999999999
	.quad	0x401167b0b3919264              # double 4.3512599999999999
	.quad	0x4022922b1704ff43              # double 9.2854849999999995
	.quad	0x3fcd6b6e0d23d4f1              # double 0.22984099999999999
	.quad	0x3ff661815a07b353              # double 1.3988050000000001
	.quad	0x402075a07b352a84              # double 8.2297399999999996
	.quad	0x401c0dc37a3db3c0              # double 7.0134410000000003
	.quad	0x4020905814940bbb              # double 8.2819219999999998
	.quad	0x3fe13fc6540cc78f              # double 0.53903500000000004
	.quad	0x3fe2a8826aa8eb46              # double 0.58306999999999998
	.quad	0x4007a06317268d33              # double 2.9533140000000002
	.quad	0x4016a5ec80c73abd              # double 5.6620350000000004
	.quad	0x400945aab4741073              # double 3.159017
	.quad	0x4019e2d87f88765c              # double 6.4715290000000003
	.quad	0x40200aaa19439de5              # double 8.0208290000000009
	.quad	0x401157bd05af6c6a              # double 4.3356820000000003
	.quad	0x400fa84944ed6fdb              # double 3.9571710000000002
	.quad	0x3fc220f6f08cc576              # double 0.14163100000000001
	.quad	0x401de8405b39e27a              # double 7.4768080000000001
	.quad	0x4012cfcefaa4766c              # double 4.7029379999999996
	.quad	0x3fff9454152b0a70              # double 1.9737130000000001
	.quad	0x3ff2c373f316e371              # double 1.1727179999999999
	.quad	0x3ff5bd9018e75793              # double 1.3587800000000001
	.quad	0x4020791fd5885d31              # double 8.2365709999999996
	.quad	0x4017d1294573a798              # double 5.9542590000000004
	.quad	0x400ea5b078d92fb2              # double 3.8309030000000002
	.quad	0x4014d51f81a5870e              # double 5.2081280000000003
	.quad	0x4009db1b79d909f2              # double 3.231986
	.quad	0x3f7f3c70c996b767              # double 0.007626
	.quad	0x401b37143393ab43              # double 6.8037879999999999
	.quad	0x402278a73f748a16              # double 9.2356510000000007
	.quad	0x4015d9f83be6601c              # double 5.4628610000000002
	.quad	0x4013c2be0589acbd              # double 4.9401780000000004
	.quad	0x4002f4a44c7b02d6              # double 2.3694540000000002
	.quad	0x40232eeb0b7c3505              # double 9.5916370000000004
	.quad	0x400d30f6273929ed              # double 3.6489069999999999
	.quad	0x401240ac3a860dcc              # double 4.5631570000000004
	.quad	0x40079ac258d5842b              # double 2.9505659999999998
	.quad	0x400075ebfa8f7db7              # double 2.057579
	.quad	0x4001424894c447c3              # double 2.157365
	.quad	0x3fff854046412cf1              # double 1.970032
	.quad	0x4022e4a2fcefaa47              # double 9.4465559999999992
	.quad	0x3ff514c447c30d30              # double 1.3175699999999999
	.quad	0x4009dcf4623d0bfa              # double 3.232888
	.quad	0x4021e28f7db6e504              # double 8.942501
	.quad	0x40237bf9a49c2c1b              # double 9.7421389999999998
	.quad	0x402362ca9ac36545              # double 9.692952
	.quad	0x401a1d42c3c9eecc              # double 6.528575
	.quad	0x4018bcf206423960              # double 6.1845169999999996
	.quad	0x402338438088509c              # double 9.60989
	.quad	0x40154243dccea290              # double 5.3147120000000001
	.quad	0x4001e5d4a5df223a              # double 2.237222
	.quad	0x4021dc97b7414a4d              # double 8.9308449999999997
	.quad	0x4003bbc0a06e9ff1              # double 2.4666760000000001
	.quad	0x4021e751ce28ed5f              # double 8.9517959999999999
	.quad	0x40206582ba5a0382              # double 8.1982630000000007
	.quad	0x40017a8f7db6e504              # double 2.184844
	.quad	0x4011e18dac258d58              # double 4.4702669999999998
	.quad	0x400a13996fa82e88              # double 3.2595700000000001
	.quad	0x4020f54845132f88              # double 8.4790670000000006
	.quad	0x40214d970b49e01e              # double 8.6515430000000002
	.quad	0x401dae1bd1ed9dfe              # double 7.4200280000000003
	.quad	0x4006be7296f6512b              # double 2.8429920000000002
	.quad	0x401296605ee568a5              # double 4.646852
	.quad	0x401b3d0d0678c005              # double 6.8096199999999998
	.quad	0x402375c13fd0d068              # double 9.7299900000000008
	.quad	0x401965c70435efa6              # double 6.3493919999999999
	.quad	0x4000d586ca89fc6e              # double 2.1042610000000002
	.quad	0x40226414c660a201              # double 9.1954709999999995
	.quad	0x4020106df82b1f68              # double 8.0320889999999991
	.quad	0x3ffde58e64b23140              # double 1.868544
	.quad	0x3fc62163fdd65a14              # double 0.17289399999999999
	.quad	0x4022df0eb24a6a87              # double 9.4356589999999993
	.quad	0x40220f57b41bfbdf              # double 9.0299659999999999
	.quad	0x4019f2f1a9fbe76d              # double 6.4872500000000004
	.quad	0x40211685553ef6b6              # double 8.5439860000000003
	.quad	0x3fd611b1d92b7fe1              # double 0.34483000000000003
	.quad	0x401092ba9d1f6018              # double 4.1432900000000004
	.quad	0x3fab68cef672b884              # double 0.053533999999999998
	.quad	0x40157fee6fb4c3c2              # double 5.3749330000000004
	.quad	0x401d4093532e7b3e              # double 7.3130620000000004
	.quad	0x40200fb224aada34              # double 8.0306560000000004
	.quad	0x400a1c4a83b1d0c8              # double 3.263814
	.quad	0x3ff92f3f52fc2657              # double 1.5740350000000001
	.quad	0x4000c9107faa044b              # double 2.098176
	.quad	0x3fb440181e03f706              # double 0.079103000000000006
	.quad	0x40117cfa69be09bb              # double 4.3720489999999996
	.quad	0x4002deef5ec80c74              # double 2.3588550000000001
	.quad	0x40215b3aeee95747              # double 8.6781839999999999
	.quad	0x401c04562e09fe87              # double 7.0042350000000004
	.quad	0x4006c753e707e176              # double 2.8473280000000001
	.quad	0x40126980f55de58e              # double 4.6030309999999997
	.quad	0x40176d7ba6698bb5              # double 5.8569170000000002
	.quad	0x40138e1b4bb5e0f8              # double 4.888776
	.quad	0x3ff583f4eca686e8              # double 1.344716
	.quad	0x4012e492ff4ba51a              # double 4.723217
	.quad	0x3ffcbae9ab29e4d6              # double 1.795633
	.quad	0x402070a5269595ff              # double 8.2200100000000003
	.quad	0x4015299e94ab1d50              # double 5.2906440000000003
	.quad	0x401ab2ef4e0114d3              # double 6.674741
	.quad	0x40127c15d2d01c0d              # double 4.6211770000000003
	.quad	0x401c753e707e175d              # double 7.1144959999999999
	.quad	0x4023891c8eabffce              # double 9.7677960000000006
	.quad	0x4022b6a209aaa3ad              # double 9.3567049999999998
	.quad	0x3ff9852a411c2a02              # double 1.595011
	.quad	0x4016002de00d1b71              # double 5.5001749999999996
	.quad	0x401f82a80064a9ce              # double 7.8775940000000002
	.quad	0x3ffbd625a682b628              # double 1.7397819999999999
	.quad	0x4003481d3aa369fd              # double 2.410212
	.quad	0x3fe66223e1869835              # double 0.69947999999999999
	.quad	0x3fcc16bdb1a6d699              # double 0.219444
	.quad	0x3ffdc5b8dc55000d              # double 1.8607720000000001
	.quad	0x4020c064020817fc              # double 8.3757629999999991
	.quad	0x40097e414e7ee914              # double 3.1866479999999999
	.quad	0x400b26c8711d798e              # double 3.3939370000000002
	.quad	0x4016c30728e92d56              # double 5.6904570000000003
	.quad	0x3ff44d801b435265              # double 1.268921
	.quad	0x3ffcfeb18116ebd5              # double 1.812181
	.quad	0x4023ae234a87e38f              # double 9.8401130000000005
	.quad	0x40208a6e5471715c              # double 8.2703729999999993
	.quad	0x40177fc86cebbba5              # double 5.8747879999999997
	.quad	0x40091e19fc2a886a              # double 3.1396980000000001
	.quad	0x401bb1600f34506a              # double 6.9232180000000003
	.quad	0x3fed7a41e57d9dbb              # double 0.92117400000000005
	.quad	0x3ff58a30db6a1e82              # double 1.346238
	.quad	0x40081563a9f383f1              # double 3.0104440000000001
	.quad	0x401befa658c4bd34              # double 6.9840330000000002
	.quad	0x3fe3dc4007570c56              # double 0.62063599999999997
	.quad	0x4021e3cee9dd7ecc              # double 8.9449380000000004
	.quad	0x40213f0d1fa33376              # double 8.6231469999999995
	.quad	0x401717a02fb5d031              # double 5.773072
	.quad	0x40163551d68c692f              # double 5.5520699999999996
	.quad	0x4016a3c4f3ba7760              # double 5.6599310000000003
	.quad	0x4000b4fdf3b645a2              # double 2.0883750000000001
	.quad	0x402116df61240746              # double 8.5446729999999995
	.quad	0x401cada87a072d1b              # double 7.1695880000000001
	.quad	0x4020d0661ae70c13              # double 8.4070289999999996
	.quad	0x40183dc443914f48              # double 6.0603189999999998
	.quad	0x4014ee89656eefa2              # double 5.2329460000000001
	.quad	0x3fe0955d5f56a7ad              # double 0.51823300000000005
	.quad	0x4023559c6b053198              # double 9.6672089999999997
	.quad	0x400bc2f512663411              # double 3.4701939999999998
	.quad	0x400d745308bb9064              # double 3.6817989999999998
	.quad	0x3fe856473471f794              # double 0.76053199999999998
	.quad	0x4008506ab14ec205              # double 3.039266
	.quad	0x3fddef73c0c1fc8f              # double 0.46773999999999999
	.quad	0x401faf91a32b12d3              # double 7.9214539999999997
	.quad	0x3ffa505e1c15097d              # double 1.6446210000000001
	.quad	0x401c7f7e3d1cc101              # double 7.1245050000000001
	.quad	0x4017a264a16a4873              # double 5.9085869999999998
	.quad	0x4017616a055757d6              # double 5.8451310000000003
	.quad	0x401ca66a55087011              # double 7.162515
	.quad	0x402317079e59f2bb              # double 9.5449800000000006
	.quad	0x3ffd7b517a46173c              # double 1.8426070000000001
	.quad	0x401c29eadd590c0b              # double 7.0409350000000002
	.quad	0x401daa6b93ccd0ff              # double 7.4164260000000004
	.quad	0x401db723aafff36b              # double 7.4288470000000002
	.quad	0x4012e11e85fd04a3              # double 4.719843
	.quad	0x4020408ace24bba1              # double 8.1260589999999997
	.quad	0x4021c3356da0168b              # double 8.8812669999999994
	.quad	0x4022f6e807bbb624              # double 9.4822389999999998
	.quad	0x40130305532617c2              # double 4.7529500000000002
	.quad	0x400d38a116659d13              # double 3.6526510000000001
	.quad	0x3fe9757d5a9eb207              # double 0.79559199999999997
	.quad	0x40211956e264e486              # double 8.5494909999999997
	.quad	0x400c7f811f4f50a0              # double 3.5622579999999999
	.quad	0x401e39c0229a5ebb              # double 7.5563969999999995
	.quad	0x3ff65e5d18090b41              # double 1.3980379999999999
	.quad	0x401256c764adff82              # double 4.5847449999999998
	.quad	0x4005dbe9856a37ac              # double 2.7323789999999999
	.quad	0x402284db163baba8              # double 9.2594840000000004
	.quad	0x400e6d1aeb3dd11c              # double 3.803274
	.quad	0x3ff2c55970b49e02              # double 1.173181
	.quad	0x400923ef284167a9              # double 3.1425459999999998
	.quad	0x3fceb93469941850              # double 0.24002699999999999
	.quad	0x401c8a16616b54e3              # double 7.1348510000000003
	.quad	0x40069bcba3012168              # double 2.8260719999999999
	.quad	0x4013ef72f76e6107              # double 4.9838370000000003
	.quad	0x4008abc5154866a1              # double 3.0838719999999999
	.quad	0x400f8d7625204af9              # double 3.9440729999999999
	.quad	0x400edd3cbc48f10b              # double 3.8580260000000002
	.quad	0x4023e1c15097c808              # double 9.9409279999999995
	.quad	0x40218b3a8a3f8983              # double 8.7719310000000004
	.quad	0x4016582c2bd7f51f              # double 5.586106
	.quad	0x4019b4894c447c31              # double 6.4263050000000002
	.quad	0x3fe2af20ea5b530d              # double 0.58387800000000001
	.quad	0x400496d655e28aa4              # double 2.5736509999999999
	.quad	0x40149f5558212945              # double 5.1555989999999996
	.quad	0x401c650f840181e0              # double 7.0986919999999998
	.quad	0x40120e0221426fe7              # double 4.5136799999999999
	.quad	0x3fe004a9478c868c              # double 0.50056900000000004
	.quad	0x40236c1a048e043a              # double 9.7111359999999998
	.quad	0x3ffdd30be0ded289              # double 1.864025
	.quad	0x400cbad4b2745bf2              # double 3.5912259999999998
	.quad	0x4018ecd9e83e425b              # double 6.2313000000000001
	.quad	0x3fe21b56323bbc6f              # double 0.56583700000000003
	.quad	0x400a7996fa82e87d              # double 3.3093699999999999
	.quad	0x3fd4270f3882278d              # double 0.314884
	.quad	0x4016cecc814d727a              # double 5.7019520000000004
	.quad	0x400d504ee7c49fd8              # double 3.6642130000000002
	.quad	0x401c2e0a41a261bf              # double 7.0449609999999998
	.quad	0x4011c1c4b90214ad              # double 4.4392269999999998
	.quad	0x3ffe48db0574b407              # double 1.892787
	.quad	0x3fe58b49e01de269              # double 0.67325299999999999
	.quad	0x3fa6a465a57646ae              # double 0.044222999999999998
	.quad	0x3ffde757928e0c9e              # double 1.8689800000000001
	.quad	0x401e222467be553b              # double 7.5333420000000002
	.quad	0x4022646583e8576d              # double 9.1960870000000003
	.quad	0x3fece473471f7942              # double 0.902887
	.quad	0x3fb5b59578a2a90d              # double 0.084802000000000002
	.quad	0x401c08726d04e619              # double 7.0082490000000002
	.quad	0x4006868f4b61fe22              # double 2.8157030000000001
	.quad	0x400606ba493c89f4              # double 2.753285
	.quad	0x401ceba0e8427419              # double 7.2301060000000001
	.quad	0x401065b91f70de8f              # double 4.0993389999999996
	.quad	0x40081b77c02afddb              # double 3.0134120000000002
	.quad	0x4010432441fea811              # double 4.0655679999999998
	.quad	0x4012d078d92fb19e              # double 4.7035859999999996
	.quad	0x4012eda5119ce076              # double 4.732075
	.quad	0x3fa4f20642396074              # double 0.040909000000000001
	.quad	0x4004c5d41fa76534              # double 2.5965959999999999
	.quad	0x40236bec2480e8c9              # double 9.7107860000000005
	.quad	0x401010d413122b7c              # double 4.0164340000000003
	.quad	0x3fae95b78cc9a77e              # double 0.059735999999999997
	.quad	0x401536698bb4d489              # double 5.3031370000000004
	.quad	0x40228222f6a50d6b              # double 9.2541729999999998
	.quad	0x401e75eaee2003ac              # double 7.6151540000000004
	.quad	0x40121c2efd438d1e              # double 4.5275230000000004
	.quad	0x3ffd818611fd5886              # double 1.844122
	.quad	0x4014c817b95a2941              # double 5.1954029999999998
	.quad	0x4020e8665e02ea96              # double 8.4539059999999999
	.quad	0x4013653eb399f5e0              # double 4.8488720000000001
	.quad	0x400092c3009b3073              # double 2.0716610000000002
	.quad	0x3ff5765cb35f3d7d              # double 1.341397
	.quad	0x40032bd87b56b873              # double 2.3964089999999998
	.quad	0x4002f57928e0c9da              # double 2.3698600000000001
	.quad	0x4023900b673c4f3c              # double 9.7813370000000006
	.quad	0x400f53e0370cdc87              # double 3.9159549999999999
	.quad	0x3ff6b1b79d909f1f              # double 1.418388
	.quad	0x40203e6559f6ec5b              # double 8.1218669999999999
	.quad	0x401f45553ef6b5d4              # double 7.8177079999999997
	.quad	0x3fd4aa0cae642bfa              # double 0.32287900000000003
	.quad	0x3ff76159817b95a3              # double 1.4612670000000001
	.quad	0x4013691d9b1b79d9              # double 4.852652
	.quad	0x400de27f1b691212              # double 3.7355939999999999
	.quad	0x40168b152f3c2dae              # double 5.6358230000000002
	.quad	0x40205337a80cf9e4              # double 8.1625340000000008
	.quad	0x4015699a62ed3522              # double 5.3531279999999999
	.quad	0x40203c85a0be5109              # double 8.118207
	.quad	0x3fff15d91ab8e8ea              # double 1.9428339999999999
	.quad	0x400d75e28aa43351              # double 3.6825610000000002
	.quad	0x4006162b6ae7d567              # double 2.7608250000000001
	.quad	0x401465fe111276fb              # double 5.099602
	.quad	0x40217db0574b4070              # double 8.7454859999999996
	.quad	0x3fe7dfaa8a82a561              # double 0.74605299999999997
	.quad	0x3fb4b72c5197a249              # double 0.080920000000000006
	.quad	0x401c2e2a80064a9d              # double 7.0450840000000001
	.quad	0x401e3f2452c59fb2              # double 7.5616620000000001
	.quad	0x3fd086bdf4c2b51c              # double 0.25822400000000001
	.quad	0x3fd0fa2f05a708ee              # double 0.26527000000000001
	.quad	0x401d6422036006d1              # double 7.3477860000000002
	.quad	0x401dcf972474538f              # double 7.452725
	.quad	0x4001799c38b04ab6              # double 2.18438
	.quad	0x4022d879c4113c68              # double 9.4228039999999992
	.quad	0x3ff03d5ed06fef7c              # double 1.014983
	.quad	0x4020d26e5471715c              # double 8.4109979999999993
	.quad	0x3fc3dcad14a0a0f5              # double 0.155172
	.quad	0x4018eeec7c957cd4              # double 6.2333239999999996
	.quad	0x40201ba8e71476b0              # double 8.0540230000000008
	.quad	0x400744d22c881e47              # double 2.908604
	.quad	0x3fd659e1f3a57eaa              # double 0.34923599999999999
	.quad	0x40098eed02cd39da              # double 3.194788
	.quad	0x400f23810e8858ff              # double 3.8923359999999998
	.quad	0x3ffbcc70867ad8e4              # double 1.737412
	.quad	0x40151fe0ce0b912e              # double 5.2811310000000002
	.quad	0x401476cc5fbf8338              # double 5.1160139999999998
	.quad	0x40208f8e1932d6ed              # double 8.2803810000000002
	.quad	0x40016abc5154866a              # double 2.177117
	.quad	0x400b76f9fcb0c027              # double 3.4330940000000001
	.quad	0x3fe6efe4ffc9795b              # double 0.71678399999999998
	.quad	0x401e57e73a365cb3              # double 7.5858429999999996
	.quad	0x401f406b7aa25d8d              # double 7.8129099999999995
	.quad	0x4023f810a569b175              # double 9.9845020000000008
	.quad	0x40212a43137b0707              # double 8.5825429999999994
	.quad	0x3fe4275cd0bb6ed6              # double 0.62980499999999995
	.quad	0x3ff2b83dff3f0fe0              # double 1.1699809999999999
	.quad	0x4018c44fa05143bf              # double 6.1917099999999996
	.quad	0x3ffe04241c3efae8              # double 1.8760110000000001
	.quad	0x4016f2c3c9eecbfb              # double 5.7370749999999999
	.quad	0x401d6d423d9231c6              # double 7.3566979999999997
	.quad	0x3fc18feef5ec80c7              # double 0.13720499999999999
	.quad	0x401d97f2c3009b30              # double 7.3983869999999996
	.quad	0x400cabcf0b6b6e0d              # double 3.5838909999999999
	.quad	0x401e7a9435ac8a37              # double 7.6197059999999998
	.quad	0x3ffc3dc8b86b15f9              # double 1.7650840000000001
	.quad	0x4017515ce9e5e248              # double 5.8294560000000004
	.quad	0x4022a96e9bbf0dc7              # double 9.3309219999999993
	.quad	0x401b7e596c82e01a              # double 6.8733880000000003
	.quad	0x401d7e26916440f2              # double 7.3731939999999998
	.quad	0x401800c77dd872f3              # double 6.0007609999999998
	.quad	0x401170be9424e593              # double 4.3601020000000004
	.quad	0x3ff12428d434a01b              # double 1.0713280000000001
	.quad	0x40104a398201cd60              # double 4.0724850000000004
	.quad	0x3ff6f5d78811b1d9              # double 1.43502
	.quad	0x3ffaf0b06c43f5f9              # double 1.683762
	.quad	0x40045c74751ce28f              # double 2.5451440000000001
	.quad	0x4015ecf4a558ea7d              # double 5.4814020000000001
	.quad	0x40033a0c6b484d77              # double 2.4033440000000001
	.quad	0x40087ccfaeff5c6c              # double 3.060943
	.quad	0x401afbe27179bfdf              # double 6.7459809999999996
	.quad	0x400b75fc3b4f6167              # double 3.4326099999999999
	.quad	0x4007e9784ec636b1              # double 2.9889990000000002
	.quad	0x3ff74bc59b8023a7              # double 1.455999
	.quad	0x40120117b5286b59              # double 4.5010669999999999
	.quad	0x400909f383f0bae9              # double 3.1298590000000002
	.quad	0x3ffaebbfd71b0468              # double 1.6825559999999999
	.quad	0x3ffd8cc46950fc72              # double 1.846867
	.quad	0x3ff55198aeb80ed0              # double 1.3324210000000001
	.quad	0x4016bfefbf401c50              # double 5.6874380000000002
	.quad	0x40086db0dd82fd76              # double 3.0535600000000001
	.quad	0x40229860dcb9a9da              # double 9.2976139999999994
	.quad	0x4004d7dd00f776c5              # double 2.6054020000000002
	.quad	0x4015a30c23fab10c              # double 5.4092260000000003
	.quad	0x40118ea897635e74              # double 4.3893149999999999
	.quad	0x40172e9ee45c358b              # double 5.795528
	.quad	0x3fd6b302f72b4528              # double 0.35467599999999999
	.quad	0x401deaa0cae642c0              # double 7.4791290000000004
	.quad	0x40229618ce2d1f1d              # double 9.293158
	.quad	0x4012f1248d7e0264              # double 4.7354909999999997
	.quad	0x3ff40d8127b2cc71              # double 1.2532970000000001
	.quad	0x4021a89070fbeb9e              # double 8.8292269999999995
	.quad	0x3fe174f50a02b841              # double 0.54552699999999998
	.quad	0x3ff2f213e3e29308              # double 1.1841010000000001
	.quad	0x401d8070329802c1              # double 7.3754280000000003
	.quad	0x3fedc8a9bcfd4bf1              # double 0.93074500000000004
	.quad	0x4003845e4e69f05f              # double 2.4396330000000002
	.quad	0x3ffe9f77292c4934              # double 1.913932
	.quad	0x3ff95db65ecc3e32              # double 1.5853790000000001
	.quad	0x3fe622cecc814d72              # double 0.69174899999999995
	.quad	0x4018b275ab7dc7ac              # double 6.174277
	.quad	0x4010695421c04428              # double 4.1028599999999997
	.quad	0x3fe5bf077ccc0379              # double 0.67956899999999998
	.quad	0x4020999a1fd1569f              # double 8.3000039999999995
	.quad	0x401775a14488c60d              # double 5.8648730000000002
	.quad	0x400161ca3a4b5569              # double 2.172749
	.quad	0x4008ab40f66a5508              # double 3.0836199999999998
	.quad	0x40066fa8b4bf8fcd              # double 2.8045209999999998
	.quad	0x4016c8f42fe82518              # double 5.6962440000000001
	.quad	0x3ff5b3a8a3f8982d              # double 1.3563620000000001
	.quad	0x401cc8eabffcdab2              # double 7.1962080000000004
	.quad	0x401402ea960b6fa0              # double 5.0028480000000002
	.quad	0x4019d72324c83665              # double 6.4600949999999999
	.quad	0x402354c8366516db              # double 9.6655899999999999
	.quad	0x401513e3193f6c27              # double 5.2694210000000004
	.quad	0x40140216c61522a7              # double 5.00204
	.quad	0x4001b65f5275ee9a              # double 2.2140490000000002
	.quad	0x402208c75c4a83b2              # double 9.0171460000000003
	.quad	0x40085caea747d806              # double 3.045255
	.quad	0x400548db8bac710d              # double 2.6605750000000001
	.quad	0x3ff4b549f94855da              # double 1.29426
	.quad	0x401c4438088509c0              # double 7.0666200000000003
	.quad	0x40044ba732df505d              # double 2.53694
	.quad	0x40119e04c0592104              # double 4.4043150000000004
	.quad	0x401357963992c8c5              # double 4.835534
	.quad	0x3fe45bbe0157eed4              # double 0.63619899999999996
	.quad	0x4012d2d55a3a083a              # double 4.7058920000000004
	.quad	0x3fd3f5e41d4b6a62              # double 0.31188300000000002
	.quad	0x4007e06530058149              # double 2.9845679999999999
	.quad	0x401916b053198288              # double 6.272157
	.quad	0x400778d0cc35ce18              # double 2.9339919999999999
	.quad	0x401e492923e5b856              # double 7.5714459999999999
	.quad	0x401eb9a38fbca106              # double 7.6812880000000003
	.quad	0x40069b9d7fd82774              # double 2.8259840000000001
	.quad	0x400ebef954eb13e0              # double 3.8432490000000001
	.quad	0x4011e7d0aed99cbf              # double 4.4763820000000001
	.quad	0x3fe93823c85c24c4              # double 0.78810299999999999
	.quad	0x401bd1569f490603              # double 6.9544319999999997
	.quad	0x3ffcbe28240b7803              # double 1.7964249999999999
	.quad	0x400d501e2584f4c7              # double 3.66412
	.quad	0x4016044bf4cb1898              # double 5.5041960000000003
	.quad	0x4003b23e5b8561d4              # double 2.4620329999999999
	.quad	0x400b0f7fcfc3f812              # double 3.382568
	.quad	0x400e45d4a5df223a              # double 3.784097
	.quad	0x40098f7c243dccea              # double 3.1950609999999999
	.quad	0x400f00c0f01fb82c              # double 3.8753679999999999
	.quad	0x40148a3486f049aa              # double 5.1349660000000004
	.quad	0x3ff91eecbfb15b57              # double 1.5700499999999999
	.quad	0x4011f7e73a365cb3              # double 4.4920929999999997
	.quad	0x4023b79bfdf7e804              # double 9.8586120000000008
	.quad	0x4020fc02f2f98740              # double 8.49221
	.quad	0x3ff1c74107314ca9              # double 1.111146
	.quad	0x401bbc426351def0              # double 6.9338470000000001
	.quad	0x401e80008637bd06              # double 7.6250020000000003
	.quad	0x3fecbd5347a5b0ff              # double 0.89811099999999999
	.quad	0x4015b699c7bcc294              # double 5.4283210000000004
	.quad	0x4021cc113c68661b              # double 8.8985690000000002
	.quad	0x401257bd05af6c6a              # double 4.5856820000000003
	.quad	0x4019f53cddd6e04c              # double 6.48949
	.quad	0x3ff29e53a81dc0db              # double 1.163654
	.quad	0x401c2e9ab29e4d5e              # double 7.0455120000000004
	.quad	0x4015e1b1d92b7fe1              # double 5.4704050000000004
	.quad	0x4021d9650a45d420              # double 8.9245990000000006
	.quad	0x4002fe215336deb9              # double 2.3740869999999998
	.quad	0x4017e3215fcc1872              # double 5.9718070000000001
	.quad	0x402036c2699c7bcc              # double 8.1069519999999997
	.quad	0x401402018a43bb41              # double 5.0019590000000003
	.quad	0x401d9ed1bf7ad4b2              # double 7.4050969999999996
	.quad	0x400b6a18372e6a77              # double 3.4268040000000002
	.quad	0x401be8cb4aec8d5c              # double 6.9773379999999996
	.quad	0x40130ee34fc610f1              # double 4.7645390000000001
	.quad	0x402223c6a7ef9db2              # double 9.0698749999999997
	.quad	0x4018af87f023e9ea              # double 6.1714169999999999
	.quad	0x4019fde82d7b634e              # double 6.4979560000000003
	.quad	0x4023b4209246bf01              # double 9.8518109999999996
	.quad	0x402317e154434e33              # double 9.5466409999999992
	.quad	0x402195b0142f61ed              # double 8.7923589999999994
	.quad	0x4015f737110e453d              # double 5.4914209999999999
	.quad	0x3fc07546d3f9e7b8              # double 0.128579
	.quad	0x401b6fc9363f572e              # double 6.8591660000000001
	.quad	0x4023c8abd5dc4007              # double 9.8919359999999993
	.quad	0x401dc1c193b3a68b              # double 7.4392149999999999
	.quad	0x400514e2b063e07a              # double 2.6351979999999999
	.quad	0x4011d56c0d6f544c              # double 4.4584200000000003
	.quad	0x400c3e1e2de87097              # double 3.5303309999999999
	.quad	0x4019120d130df9be              # double 6.2676280000000002
	.quad	0x40207ab1d4f9c1f8              # double 8.2396379999999994
	.quad	0x4012fad7d7c2ca15              # double 4.7449640000000004
	.quad	0x40117de657b84dba              # double 4.3729490000000002
	.quad	0x4021144e93e1c9b4              # double 8.5396619999999998
	.quad	0x4023d262cba732df              # double 9.9109099999999994
	.quad	0x3fe0d86ca89fc6da              # double 0.52641899999999997
	.quad	0x3ff868ee6b8305d9              # double 1.5256179999999999
	.quad	0x400abf340d4dc65c              # double 3.3433609999999998
	.quad	0x3ff1b8c21e1d2179              # double 1.107607
	.quad	0x3febcb641700cd85              # double 0.86857799999999996
	.quad	0x4021f4bbe4473cd5              # double 8.9779959999999992
	.quad	0x4022947bedb72820              # double 9.2900080000000003
	.quad	0x3f9eb9e492bc2fc7              # double 0.030006000000000001
	.quad	0x401b4e8a2ec28b2a              # double 6.8266989999999996
	.quad	0x401a89b3d07c84b6              # double 6.6344750000000001
	.quad	0x40223260b2c83ec9              # double 9.0983940000000008
	.quad	0x401ea696a26e5471              # double 7.6626839999999996
	.quad	0x401d7eff9f87f024              # double 7.3740220000000001
	.quad	0x400a9b0e5e679464              # double 3.3257110000000001
	.quad	0x40057a33bd9cae21              # double 2.684669
	.quad	0x3fe8d712a0ec7432              # double 0.776254
	.quad	0x40069e0b4e11dbcb              # double 2.8271700000000002
	.quad	0x40151f5caf2d7f95              # double 5.280627
	.quad	0x3ffae81fd9ba1b19              # double 1.6816709999999999
	.quad	0x40084759ab6d00b4              # double 3.0348389999999998
	.quad	0x401dc3cab81f969e              # double 7.4412029999999998
	.quad	0x3ffa9d755bccaf71              # double 1.6634420000000001
	.quad	0x3fed25fc7e6b3fea              # double 0.910887
	.quad	0x401b47564302b40f              # double 6.8196649999999996
	.quad	0x400f0f2064239607              # double 3.8823859999999999
	.quad	0x400c1ad42c3c9eed              # double 3.5131000000000001
	.quad	0x400db7c99ae924f2              # double 3.7147399999999999
	.quad	0x3fd52f9873ffac1d              # double 0.33102999999999999
	.quad	0x3ff863b256ffc116              # double 1.52434
	.quad	0x40159ddce7cd0353              # double 5.4041629999999996
	.quad	0x3fd0935fc3b4f616              # double 0.25899499999999998
	.quad	0x40195759ab6d00b4              # double 6.3353029999999997
	.quad	0x401dbf31b152f3c3              # double 7.4367130000000001
	.quad	0x40112f06b37867f1              # double 4.2959240000000003
	.quad	0x402263fa0945f9df              # double 9.1952669999999994
	.quad	0x3fe9567ba237cdcd              # double 0.79180700000000004
	.quad	0x401eadc26dce39b4              # double 7.6696869999999997
	.quad	0x401fc852f7f498c4              # double 7.9456290000000003
	.quad	0x40084730c67168f9              # double 3.034761
	.quad	0x401b05421c044285              # double 6.7551350000000001
	.quad	0x401b508b75ea67e8              # double 6.8286569999999998
	.quad	0x402038adcd2d44dd              # double 8.1107010000000006
	.quad	0x4021e7623076c051              # double 8.9519210000000005
	.quad	0x40237de6ddf00abf              # double 9.7459019999999991
	.quad	0x401c4ac8e68e3ef3              # double 7.0730320000000004
	.quad	0x4010361672324c83              # double 4.0528199999999996
	.quad	0x4011c00a393ee5ef              # double 4.4375390000000001
	.quad	0x3ff8f4091c087443              # double 1.559579
	.quad	0x40169e2ef4e0114d              # double 5.6544759999999998
	.quad	0x40189e2a80064a9d              # double 6.1544590000000001
	.quad	0x40233f944241c3f0              # double 9.6241780000000006
	.quad	0x402038398a654930              # double 8.1098140000000001
	.quad	0x401fd21dda059a74              # double 7.9551920000000003
	.quad	0x400e33c4f3ba7760              # double 3.7752780000000001
	.quad	0x40036cb31c219eb6              # double 2.4280759999999999
	.quad	0x4021cab66b6177ea              # double 8.8959229999999998
	.quad	0x401051455219a848              # double 4.0793660000000003
	.quad	0x401dd1d6494d50ec              # double 7.4549190000000003
	.quad	0x4023b3691212513b              # double 9.8504109999999993
	.quad	0x401f3ea78af3e469              # double 7.8111860000000001
	.quad	0x4007cceee0f3cb3e              # double 2.9750649999999998
	.quad	0x401682ba9d1f6018              # double 5.6276650000000004
	.quad	0x400f147d805e5f31              # double 3.885005
	.quad	0x4010e28240b78034              # double 4.2211999999999996
	.quad	0x4021ee0bd44998d0              # double 8.9649339999999995
	.quad	0x40134fe32a0663c7              # double 4.8280149999999997
	.quad	0x3fb9afc04c8bc9cd              # double 0.100338
	.quad	0x401b00c9539b8887              # double 6.7507679999999999
	.quad	0x40224a7b0b391926              # double 9.1454699999999995
	.quad	0x400ec6f36ef80560              # double 3.8471440000000001
	.quad	0x3ff236d97b30f8c6              # double 1.1383909999999999
	.quad	0x3ff0c4816f0068dc              # double 1.0479750000000001
	.quad	0x401f8ec28b2a6b0e              # double 7.8894140000000004
	.quad	0x3ff84407cc7d1bb5              # double 1.5166090000000001
	.quad	0x4001cf533f42352f              # double 2.2262330000000001
	.quad	0x4019a6933a0407cc              # double 6.4126709999999996
	.quad	0x401de1d96e9bbf0e              # double 7.4705560000000002
	.quad	0x401c8d5dc4007571              # double 7.1380530000000002
	.quad	0x3ff4b6640a6b93cd              # double 1.294529
	.quad	0x40056c0c62e4d1a6              # double 2.6777579999999999
	.quad	0x401cab5e95b78cca              # double 7.1673530000000003
	.quad	0x400705058dde7a74              # double 2.8774519999999999
	.quad	0x4019d4bdba0a5269              # double 6.4577549999999997
	.quad	0x401730d6f544bb1b              # double 5.797695
	.quad	0x401edd1bb4916ca4              # double 7.7159259999999996
	.quad	0x401b36e5cd4ed2cc              # double 6.8036110000000001
	.quad	0x400a80a30db6a1e8              # double 3.312811
	.quad	0x3ff952839042d8c3              # double 1.5826450000000001
	.quad	0x40066ca46e08f217              # double 2.803048
	.quad	0x3ff2cb4bf8fcd680              # double 1.174633
	.quad	0x401a3904f6dfc5ce              # double 6.5556830000000001
	.quad	0x401da51efb6dca08              # double 7.411251
	.quad	0x3ffb40f451761459              # double 1.7033579999999999
	.quad	0x4016ae7924af0bf2              # double 5.6703840000000003
	.quad	0x3fddd5842b734b51              # double 0.46615699999999999
	.quad	0x401d993ea2d2fe3f              # double 7.3996529999999998
	.quad	0x402383254e6e221d              # double 9.7561440000000008
	.quad	0x4012e32617c1bda5              # double 4.7218249999999999
	.quad	0x40132dfdef8487ba              # double 4.7949140000000003
	.quad	0x401b45b813016484              # double 6.818085
	.quad	0x4019f60913a4f872              # double 6.4902689999999996
	.quad	0x4020f15e39713ad6              # double 8.4714220000000005
	.quad	0x401a1d10b1feeb2d              # double 6.528384
	.quad	0x40234135daad6020              # double 9.627364
	.quad	0x4018b681ecd4aa11              # double 6.1782300000000001
	.quad	0x401ae866e43aa79c              # double 6.7269550000000002
	.quad	0x40221b6501e2584f              # double 9.0535049999999995
	.quad	0x4016c4bcad9ad85e              # double 5.692126
	.quad	0x4001b6e264e48627              # double 2.214299
	.quad	0x4017280e496ededb              # double 5.7891170000000001
	.quad	0x40187c2ca148ba84              # double 6.121264
	.quad	0x3ff18130164840e1              # double 1.0940399999999999
	.quad	0x4015303e63e8dda5              # double 5.2971130000000004
	.quad	0x401fecfaeff5c6c1              # double 7.9814259999999999
	.quad	0x400c21aa3f034b0e              # double 3.516438
	.quad	0x3fd5a875d56f32be              # double 0.33840700000000001
	.quad	0x401e444e0daa0cae              # double 7.5667039999999997
	.quad	0x3ff2808b75ea67e8              # double 1.1563829999999999
	.quad	0x400565d0fa58f712              # double 2.674715
	.quad	0x400862e6644d8772              # double 3.0482909999999999
	.quad	0x401cebbfd71b0468              # double 7.2302239999999998
	.quad	0x40232eae5bc87db3              # double 9.5911740000000005
	.quad	0x40120c36113404ea              # double 4.5119249999999997
	.quad	0x4000b2b66b6177ea              # double 2.087262
	.quad	0x401981b93037d630              # double 6.3766829999999999
	.quad	0x3fe0c2374794ea07              # double 0.52370799999999995
	.quad	0x400a0ea747d805e6              # double 3.257155
	.quad	0x3fe494057082491b              # double 0.643069
	.quad	0x401eb422467be554              # double 7.6759120000000003
	.quad	0x3fef0a71de69ad43              # double 0.97002500000000002
	.quad	0x4014f5fdcdf69878              # double 5.2402259999999998
	.quad	0x401d62474538ef35              # double 7.3459750000000001
	.quad	0x3ff2b980f55de58e              # double 1.1702889999999999
	.quad	0x400ce9fcf3dc054f              # double 3.614252
	.quad	0x3ffa005c4651f3e9              # double 1.6250880000000001
	.quad	0x4019ae642bf9830e              # double 6.4203039999999998
	.quad	0x4021c6cfc829cfdd              # double 8.8883039999999998
	.quad	0x4022bb107746887b              # double 9.3653600000000007
	.quad	0x4013309e12a51e32              # double 4.7974779999999999
	.quad	0x4012059f2ba9d1f6              # double 4.50549
	.quad	0x401a1869c66d373b              # double 6.523841
	.quad	0x4011bc5a8155d5f5              # double 4.4339389999999996
	.quad	0x3fa469728a611772              # double 0.039867
	.quad	0x401d04e65bea0ba2              # double 7.254785
	.quad	0x4017d2ba9d1f6018              # double 5.9557900000000004
	.quad	0x401546052502eec8              # double 5.3183790000000002
	.quad	0x3fdaa8c586876e1e              # double 0.416551
	.quad	0x40031b83cf2cf95d              # double 2.3884349999999999
	.quad	0x3ff82a3ad18d25ee              # double 1.51031
	.quad	0x3ffde24aada33bda              # double 1.867747
	.quad	0x4005f10a137f38c5              # double 2.7426949999999999
	.quad	0x401ba94317acc4f0              # double 6.9152950000000004
	.quad	0x4020c335d249e450              # double 8.3812700000000007
	.quad	0x400e38aeb80ecfa7              # double 3.7776770000000002
	.quad	0x400f6e1f7d73c925              # double 3.9287709999999998
	.quad	0x4000af96e158750c              # double 2.085737
	.quad	0x4016f3e29307af21              # double 5.7381690000000001
	.quad	0x401b39af5ba2be06              # double 6.8063330000000004
	.quad	0x401d80218def416c              # double 7.3751280000000001
	.quad	0x40217e2bf11f926c              # double 8.7464289999999991
	.quad	0x401d00724b76f6d7              # double 7.2504359999999997
	.quad	0x3ff0e1815a07b353              # double 1.0550550000000001
	.quad	0x401f40bd44998d04              # double 7.8132219999999997
	.quad	0x4014fe7f2c3009b3              # double 5.248532
	.quad	0x401e6b50b0f27bb3              # double 7.6048
	.quad	0x3ff8bf62b6ae7d56              # double 1.5467249999999999
	.quad	0x3fd2ebbba55d1c3b              # double 0.29563800000000001
	.quad	0x401fa2253111f0c3              # double 7.9083449999999997
	.quad	0x4003bcdc443914f5              # double 2.4672170000000002
	.quad	0x401527913e81450f              # double 5.28864
	.quad	0x4010f5c5718eb895              # double 4.240011
	.quad	0x401dc67c6b8b6955              # double 7.4438339999999998
	.quad	0x4010ebf727136a40              # double 4.2304349999999999
	.quad	0x4006d4eebf65dbfd              # double 2.853971
	.quad	0x3ff175e74299d884              # double 1.0912850000000001
	.quad	0x40005e7c06e19b91              # double 2.046135
	.quad	0x402067e75bc44bf5              # double 8.2029370000000004
	.quad	0x401aa30a0b1bbcf5              # double 6.6592180000000001
	.quad	0x3ff8cfb3311a543f              # double 1.550708
	.quad	0x401b0d2674080f99              # double 6.762842
	.quad	0x4020c034091c0874              # double 8.3753969999999995
	.quad	0x3fdf50ce4ead0c3d              # double 0.48930699999999999
	.quad	0x401a8835dedf1e08              # double 6.6330179999999999
	.quad	0x400299d55e6bc622              # double 2.3251140000000001
	.quad	0x40112df69878316a              # double 4.294886
	.quad	0x3ff69cc319c5a3e4              # double 1.4132720000000001
	.quad	0x4022dbe7296f6513              # double 9.4294980000000006
	.quad	0x4003e9741d084e83              # double 2.488991
	.quad	0x402115bcec84f8f9              # double 8.5424570000000006
	.quad	0x3ff940a4a05dd8f9              # double 1.578282
	.quad	0x400a0b7995ee136e              # double 3.2556029999999998
	.quad	0x401f3dfa871a3b15              # double 7.8105260000000003
	.quad	0x401783369b9d7fd8              # double 5.8781379999999999
	.quad	0x401252c55c96030c              # double 4.5808309999999999
	.quad	0x402163cc4ac6cdaf              # double 8.6949179999999995
	.quad	0x4011c2917507e9d9              # double 4.4400079999999997
	.quad	0x4002b3a2595bbbe8              # double 2.3377119999999998
	.quad	0x3fe5cf483cafb3b7              # double 0.68155299999999996
	.quad	0x401848a697aeddce              # double 6.0709479999999996
	.quad	0x4013076f2a5a469d              # double 4.7572599999999996
	.quad	0x40082d035371971c              # double 3.021979
	.quad	0x40126ddbdb5d8948              # double 4.6072839999999999
	.quad	0x3fffb19b4dcebfec              # double 1.980861
	.quad	0x401222cadddf43c8              # double 4.5339770000000001
	.quad	0x4007dcda2b5a20de              # double 2.9828380000000001
	.quad	0x4021f8448cf7caa7              # double 8.9848979999999994
	.quad	0x400efc5931ca7d67              # double 3.8732169999999999
	.quad	0x4022b0427418d691              # double 9.3442570000000007
	.quad	0x401eaded288ce704              # double 7.6698500000000003
	.quad	0x40121ddb9841aac5              # double 4.5291579999999998
	.quad	0x3ffaef123c42a66e              # double 1.6833670000000001
	.quad	0x40187af251c193b4              # double 6.1200650000000003
	.quad	0x4021d354c122749f              # double 8.9127559999999999
	.quad	0x3fdc5204af922963              # double 0.44250600000000001
	.quad	0x40098c79f666234b              # double 3.1935920000000002
	.quad	0x40017b3aeee95747              # double 2.185171
	.quad	0x40185d82ba5a0382              # double 6.0913190000000004
	.quad	0x40135340d4dc65c7              # double 4.831302
	.quad	0x3fb0816f0068db8c              # double 0.064475000000000005
	.quad	0x3fe87b9e060fe47a              # double 0.76509000000000005
	.quad	0x3ff9d63cb8173322              # double 1.6148039999999999
	.quad	0x4011b0ea5b530ced              # double 4.4227689999999997
	.quad	0x401c33e89a88ace2              # double 7.0506919999999997
	.quad	0x4004705ea24cc682              # double 2.5548679999999999
	.quad	0x4018976a2f48c2e7              # double 6.1478659999999996
	.quad	0x40144fbfc6540cc8              # double 5.0778800000000004
	.quad	0x40126009b30728e9              # double 4.5937869999999998
	.quad	0x4023ad3d859c8c93              # double 9.8383599999999997
	.quad	0x3fbefd75e2046c76              # double 0.121055
	.quad	0x3fe24938583621fb              # double 0.571438
	.quad	0x40053393ab430f49              # double 2.6501839999999999
	.quad	0x40146e60c38f3669              # double 5.1077909999999997
	.quad	0x401c8eda22f6a50d              # double 7.1395039999999996
	.quad	0x3fe5dd441355475a              # double 0.68325999999999998
	.quad	0x402026cacd184c27              # double 8.0757659999999998
	.quad	0x3fec34b2fa93af75              # double 0.88143300000000002
	.quad	0x40205dc486ad2dcb              # double 8.1831399999999999
	.quad	0x4018cd64d7f0ed3e              # double 6.2005800000000004
	.quad	0x401fc82385404641              # double 7.9454479999999998
	.quad	0x401b7a2c2374794f              # double 6.8693090000000003
	.quad	0x4020201cf7878b7a              # double 8.0627209999999998
	.quad	0x4022a4ab81f969e4              # double 9.3216210000000003
	.quad	0x40151fa6defc7a3a              # double 5.2809100000000004
	.quad	0x4008cf6b5d462c34              # double 3.1012789999999999
	.quad	0x4020116b97fe8ee7              # double 8.0340240000000005
	.quad	0x401c8fd5454152b1              # double 7.1404620000000003
	.quad	0x4011d7fb267c6b8b              # double 4.4609189999999996
	.quad	0x4020386162f166e0              # double 8.1101179999999999
	.quad	0x4023108094e5d5b2              # double 9.5322309999999995
	.quad	0x400ede4abe6a337b              # double 3.8585410000000002
	.quad	0x401b597891e21533              # double 6.8373739999999996
	.quad	0x3ffa66634117f844              # double 1.6499969999999999
	.quad	0x400d41fb82c2bd7f              # double 3.6572179999999999
	.quad	0x400a889b0ee49f51              # double 3.3167019999999998
	.quad	0x40135f1b69121251              # double 4.8428779999999998
	.quad	0x40231fd1569f4906              # double 9.562144
	.quad	0x3fe87b0b39192642              # double 0.76502000000000003
	.quad	0x401264b2745bf26f              # double 4.5983369999999999
	.quad	0x400d0bccf28c79f6              # double 3.6307619999999998
	.quad	0x40222d7a99fa11a9              # double 9.0888259999999992
	.quad	0x40200366f9335d25              # double 8.0066450000000007
	.quad	0x4001bc9ff92f2b67              # double 2.2171020000000001
	.quad	0x400c8b47c73eee52              # double 3.5680079999999998
	.quad	0x3ff7468ec52a411c              # double 1.454726
	.quad	0x40164d909f1f1498              # double 5.5757469999999998
	.quad	0x40140e09784ec637              # double 5.0137080000000003
	.quad	0x401f51704ff4341a              # double 7.8295300000000001
	.quad	0x3fda193b3a68b19a              # double 0.40778999999999999
	.quad	0x40203b6fc158fb44              # double 8.1160870000000002
	.quad	0x40124e0b0af5fd48              # double 4.5762140000000002
	.quad	0x4003da00e27e0efa              # double 2.4814470000000002
	.quad	0x4016d087ca643cc0              # double 5.7036429999999996
	.quad	0x4009ecd5b6805a2d              # double 3.2406419999999998
	.quad	0x3fd0736049ecb31c              # double 0.25704199999999999
	.quad	0x401f40c564f97edc              # double 7.8132529999999996
	.quad	0x3fe36c0f88333fc8              # double 0.60694099999999995
	.quad	0x401312074ea8da7f              # double 4.7676059999999998
	.quad	0x3ff14eb78897e996              # double 1.081718
	.quad	0x401daec39799e519              # double 7.420668
	.quad	0x40223b24c8366517              # double 9.1155150000000003
	.quad	0x401de399b2c40d0b              # double 7.4722660000000003
	.quad	0x3fedb838c111ada7              # double 0.92873799999999995
	.quad	0x400da501e2584f4c              # double 3.7055699999999998
	.quad	0x40200816052502ef              # double 8.0157930000000004
	.quad	0x402027db8fde2ef5              # double 8.0778470000000002
	.quad	0x4011cfd2e9468017              # double 4.4529529999999999
	.quad	0x4013822749f0e4da              # double 4.877103
	.quad	0x4023bbe920c069e8              # double 9.867013
	.quad	0x3ff973a0407cc7d2              # double 1.5907290000000001
	.quad	0x3fe0505af6c69b5a              # double 0.50980899999999996
	.quad	0x3ffbd5fcc1871e6d              # double 1.739743
	.quad	0x400623a2163fdd66              # double 2.7673990000000002
	.quad	0x40157f694467381d              # double 5.3744249999999996
	.quad	0x4022de427c7c5261              # double 9.434101
	.quad	0x3fe7d73647baa9b5              # double 0.74502100000000004
	.quad	0x4023b37bd05af6c7              # double 9.8505540000000006
	.quad	0x4021d7954eb13dfb              # double 8.9210609999999999
	.quad	0x4022b51c3ac929aa              # double 9.3537309999999998
	.quad	0x401314577d955715              # double 4.7698650000000002
	.quad	0x4009a3f034b0e1b5              # double 3.2050480000000001
	.quad	0x401b93b256ffc116              # double 6.8942350000000001
	.quad	0x3fea37e90ff97247              # double 0.81932499999999997
	.quad	0x401983fd933e35c6              # double 6.3788970000000003
	.quad	0x400fa031ceaf251c              # double 3.95322
	.quad	0x4022687df5cf2496              # double 9.2040860000000002
	.quad	0x400543ff69014b5a              # double 2.6582020000000002
	.quad	0x402262a79bbadc0a              # double 9.1926850000000009
	.quad	0x401f9ef0f16f4385              # double 7.9052160000000002
	.quad	0x4011a4edb2f661f2              # double 4.4110630000000004
	.quad	0x401b0c84b5dcc63f              # double 6.7622249999999999
	.quad	0x3ff2e2541d8e8640              # double 1.180256
	.quad	0x40210f0b28522ea1              # double 8.529382
	.quad	0x4009ff6b1a2a4db1              # double 3.2497159999999998
	.quad	0x400cbc9abb01c92e              # double 3.5920920000000001
	.quad	0x4011cc9539b88872              # double 4.4497879999999999
	.quad	0x401b662bf11f926c              # double 6.8497769999999996
	.quad	0x3ffd8a0c282c6ef4              # double 1.846203
	.quad	0x400e126634117f84              # double 3.7589839999999999
	.quad	0x4014fcd6c2efd439              # double 5.2469130000000002
	.quad	0x400d512ec6bce853              # double 3.6646399999999999
	.quad	0x4023f59f90539fba              # double 9.9797329999999995
	.quad	0x401ce9d7342edbb6              # double 7.2283600000000003
	.quad	0x40123e1eb4202d9d              # double 4.5606640000000001
	.quad	0x401ad6deb95e5aff              # double 6.7098339999999999
	.quad	0x3fe412ee84ad794a              # double 0.62731099999999995
	.quad	0x40098209246bf013              # double 3.1884939999999999
	.quad	0x401c19070fbeb9e5              # double 7.0244410000000004
	.quad	0x3fe2999bb2788db0              # double 0.58125099999999996
	.quad	0x401cc582dbe7f2c3              # double 7.192882
	.quad	0x4010357f3061c79b              # double 4.0522429999999998
	.quad	0x3ffbf05532617c1c              # double 1.746175
	.quad	0x40109a6506141637              # double 4.1507759999999996
	.quad	0x4007a7f455a7d242              # double 2.9570090000000002
	.quad	0x401e76d5cfaacd9f              # double 7.6160500000000004
	.quad	0x40126ece5710880e              # double 4.6082090000000004
	.quad	0x40073da059a73b43              # double 2.9050910000000001
	.quad	0x3fee72474538ef35              # double 0.95145000000000002
	.quad	0x4009ecc0bdcad14a              # double 3.240602
	.quad	0x40196219220ff541              # double 6.3457990000000004
	.quad	0x4021403126e978d5              # double 8.625375
	.quad	0x40215bf63c31df76              # double 8.6796129999999998
	.quad	0x400609930be0ded3              # double 2.7546750000000002
	.quad	0x401731737542a23c              # double 5.798292
	.quad	0x4003dcec84f8f8a5              # double 2.4828730000000001
	.quad	0x3ff020c7c0f45176              # double 1.008003
	.quad	0x4009eb87bdcf0308              # double 3.240005
	.quad	0x4011b7e5a78f25a2              # double 4.4295869999999997
	.quad	0x4011440aaeafab54              # double 4.3164470000000001
	.quad	0x400ebba1b1960fa1              # double 3.8416169999999998
	.quad	0x3fd7f3bea91d9b1b              # double 0.37425199999999997
	.quad	0x402397620ee8d10f              # double 9.7956699999999994
	.quad	0x401569fb6134ce3e              # double 5.3534980000000001
	.quad	0x4023c026aa8eb463              # double 9.8752949999999994
	.quad	0x400069cfdd228566              # double 2.051666
	.quad	0x401d7c3dab5c39bd              # double 7.3713290000000002
	.quad	0x40112199bb2788db              # double 4.282813
	.quad	0x40177bcb1cc96463              # double 5.8708920000000004
	.quad	0x4014b1e0828c36db              # double 5.1737080000000004
	.quad	0x401417bfe7e1fc09              # double 5.023193
	.quad	0x40236b5b0bbf50e3              # double 9.7096789999999995
	.quad	0x40215e618ce2d1f2              # double 8.6843380000000003
	.quad	0x3fff957470eb24a7              # double 1.9739880000000001
	.quad	0x4003dc0ca600b029              # double 2.4824459999999999
	.quad	0x4016bd9513f8db49              # double 5.6851390000000004
	.quad	0x400f07fd3f5b5fa2              # double 3.8789009999999999
	.quad	0x3f986bdf4c2b51bd              # double 0.023848999999999999
	.quad	0x4023739a9da597d5              # double 9.7257890000000006
	.quad	0x3fda9a62ed352221              # double 0.41567300000000001
	.quad	0x400d8247021d10b2              # double 3.688612
	.quad	0x4007c5fe111276fb              # double 2.971676
	.quad	0x400b3a34ca0c282c              # double 3.4034209999999998
	.quad	0x40014c73abc94706              # double 2.1623299999999999
	.quad	0x400ba5f5275ee99a              # double 3.4560339999999998
	.quad	0x401d4a5a89b951c6              # double 7.3226110000000002
	.quad	0x4021f721d53cddd7              # double 8.9826800000000002
	.quad	0x400928f190d173fb              # double 3.1449919999999998
	.quad	0x400002e44b6e935c              # double 2.0014120000000002
	.quad	0x4020e0d9d7774aba              # double 8.4391619999999996
	.quad	0x3ff50374ff865d7d              # double 1.3133440000000001
	.quad	0x3ffa22328f9f44d4              # double 1.6333489999999999
	.quad	0x3fe61465e8922531              # double 0.68998999999999999
	.quad	0x4011139a38fbca10              # double 4.2691429999999997
	.quad	0x3feeefdeb52c9d17              # double 0.966781
	.quad	0x3fb89f94855da273              # double 0.096185000000000007
	.quad	0x40197059641f6449              # double 6.3597159999999997
	.quad	0x40029c3d68405b3a              # double 2.3262890000000001
	.quad	0x4001adb1e9f27781              # double 2.2098119999999999
	.quad	0x4016f3cd573647bb              # double 5.7380880000000003
	.quad	0x400e25dd8f92af9b              # double 3.7684890000000002
	.quad	0x401cec9752977c89              # double 7.2310460000000001
	.quad	0x3fe57644955b4678              # double 0.67068700000000003
	.quad	0x401ec8f25a250f84              # double 7.696237
	.quad	0x401a1a38b8ae31d7              # double 6.5256069999999999
	.quad	0x401bf232d2bb2357              # double 6.9865219999999999
	.quad	0x400739fba450acc1              # double 2.9033120000000001
	.quad	0x401f9e0ded288ce7              # double 7.9043499999999999
	.quad	0x402218cc78e9f6a9              # double 9.0484349999999996
	.quad	0x40066798958d9b5f              # double 2.8005840000000002
	.quad	0x40106e7ddca4b125              # double 4.1079020000000002
	.quad	0x401db5796bfca85d              # double 7.4272210000000003
	.quad	0x40188d8904f6dfc6              # double 6.1382180000000002
	.quad	0x4021053e2d6238da              # double 8.5102399999999996
	.quad	0x4009509203a322af              # double 3.1643409999999998
	.quad	0x401fd8f4b61fe21e              # double 7.9618710000000004
	.quad	0x3ffcecdaf4adbc66              # double 1.8078259999999999
	.quad	0x4003ca7610279570              # double 2.4738579999999999
	.quad	0x402336e9ff0cbaf9              # double 9.6072539999999992
	.quad	0x3febcb6e935b91f7              # double 0.86858299999999999
	.quad	0x401c87fed20296b3              # double 7.1328079999999998
	.quad	0x40038d2a1f8e3ac1              # double 2.4439280000000001
	.quad	0x4017eba7fc32ebe6              # double 5.9801330000000004
	.quad	0x4022ef746887a8d6              # double 9.4676849999999995
	.quad	0x4005d87b56b87379              # double 2.7307039999999998
	.quad	0x3feda7e308787486              # double 0.92674400000000001
	.quad	0x400dee4a7b4e54f8              # double 3.7413530000000002
	.quad	0x4016d470a808c826              # double 5.7074610000000003
	.quad	0x401574007570c565              # double 5.363283
	.quad	0x4012ef0d844d013b              # double 4.7334500000000004
	.quad	0x3fff76390c9107fb              # double 1.9663630000000001
	.quad	0x4011e2eb5f5f0b28              # double 4.4716009999999997
	.quad	0x401e6c0d6f544bb2              # double 7.6055200000000003
	.quad	0x3fd698e10cf5b1c8              # double 0.35308099999999998
	.quad	0x401506fda836eb4f              # double 5.2568270000000004
	.quad	0x400db5970b49e01e              # double 3.7136670000000001
	.quad	0x4022bf5b5fa22707              # double 9.3737440000000002
	.quad	0x4017674d9c6b0532              # double 5.8508820000000004
	.quad	0x4021a311a543f1c7              # double 8.8184939999999994
	.quad	0x401825208e150119              # double 6.036257
	.quad	0x3ff6dcd4ed2cbea5              # double 1.428914
	.quad	0x3ffac6e8f29d40ee              # double 1.673562
	.quad	0x400fed530489d27c              # double 3.9908809999999999
	.quad	0x3ffb94488c60cbf3              # double 1.7237020000000001
	.quad	0x4000bdabe27179c0              # double 2.0926130000000001
	.quad	0x401c056a7ac81d3b              # double 7.0052890000000003
	.quad	0x40234cb2314013ec              # double 9.6497969999999995
	.quad	0x401cbc7ffde7210c              # double 7.1840820000000001
	.quad	0x40090f7caa7589f0              # double 3.1325620000000001
	.quad	0x401ded98bf7f0670              # double 7.4820279999999997
	.quad	0x4017d34b51372a39              # double 5.9563420000000002
	.quad	0x401ffd60a6330510              # double 7.997439
	.quad	0x40132e52157689ca              # double 4.7952349999999999
	.quad	0x4023ee8d759ee88e              # double 9.9659230000000001
	.quad	0x3ff8825f202107b8              # double 1.5318290000000001
	.quad	0x4013a1c92ddbdb5e              # double 4.9079940000000004
	.quad	0x4004e63cfb3311a5              # double 2.6124209999999999
	.quad	0x401703165d3996fb              # double 5.7530150000000004
	.quad	0x400a8c55432873bd              # double 3.3185220000000002
	.quad	0x401bca098915bdd7              # double 6.9473019999999996
	.quad	0x4010ef8b1572580c              # double 4.2339289999999998
	.quad	0x40036ff0025bfad3              # double 2.4296570000000002
	.quad	0x4018a75c8d9f9054              # double 6.1634390000000003
	.quad	0x3fe6a4a8c154c986              # double 0.70760000000000001
	.quad	0x401122990f301eac              # double 4.2837870000000002
	.quad	0x3fff8d7f0ed3d85a              # double 1.972045
	.quad	0x4014354a7f8012e0              # double 5.0520420000000001
	.quad	0x3fe755a3a08398a6              # double 0.72920399999999996
	.quad	0x4021a22fad6cb535              # double 8.81677
	.quad	0x3ffa89c3ce2089e3              # double 1.6586339999999999
	.quad	0x401046d1e108c3f4              # double 4.0691600000000001
	.quad	0x4021334fa48301a8              # double 8.6002170000000007
	.quad	0x3ff35af294dd7236              # double 1.2097039999999999
	.quad	0x40067ecd4aa10e02              # double 2.8119149999999999
	.quad	0x4010f48f96e15875              # double 4.238829
	.quad	0x3fc0008e9b38d60a              # double 0.12501699999999999
	.quad	0x4023599ae924f228              # double 9.6750100000000003
	.quad	0x40226fc69728a611              # double 9.2183119999999992
	.quad	0x4018cf47735c182f              # double 6.2024210000000002
	.quad	0x402389b1960fa15e              # double 9.7689330000000005
	.quad	0x401ffcd8dbcec850              # double 7.9969210000000004
	.quad	0x40189c46950fc71d              # double 6.1526129999999997
	.quad	0x3f940bbb1f255f35              # double 0.019576
	.quad	0x3fe22856605ee569              # double 0.56742400000000004
	.quad	0x40177256bca5375d              # double 5.8616590000000004
	.quad	0x4011a5c03361565c              # double 4.4118659999999998
	.quad	0x3fed1fe21d96e9bc              # double 0.910142
	.quad	0x401b173083558a76              # double 6.7726459999999999
	.quad	0x401afcf67b1c0011              # double 6.7470340000000002
	.quad	0x4000256abde3fbbd              # double 2.0182699999999998
	.quad	0x4022ef1f9acffa7f              # double 9.4670380000000005
	.quad	0x4009a9a77e5eaab0              # double 3.2078389999999999
	.quad	0x40231bc87db2b346              # double 9.5542639999999999
	.quad	0x4016c0945f9df549              # double 5.6880660000000001
	.quad	0x400fe2fcefaa4767              # double 3.9858340000000001
	.quad	0x40200186fcdee350              # double 8.0029830000000004
	.quad	0x40067ff8a8f3a9b0              # double 2.8124859999999998
	.quad	0x40045c84b5dcc63f              # double 2.545175
	.quad	0x400e6051c9f72f77              # double 3.797031
	.quad	0x3ffe72ef0ae53650              # double 1.90306
	.quad	0x3fd735daad601ffb              # double 0.36266199999999998
	.quad	0x400b1f2a9d627bf6              # double 3.390218
	.quad	0x400629fc6da44849              # double 2.7705009999999999
	.quad	0x400ee0713f077ccc              # double 3.859591
	.quad	0x4016e415f45e0b4e              # double 5.7227399999999999
	.quad	0x401386ca03c4b09f              # double 4.8816300000000004
	.quad	0x4013e4d1e96c3fc4              # double 4.9734569999999998
	.quad	0x4019ca7fc32ebe59              # double 6.4477529999999996
	.quad	0x4020ec0c4156e265              # double 8.4610310000000002
	.quad	0x4019adf2ecf20642              # double 6.4198719999999998
	.quad	0x4022088feac42e99              # double 9.0167230000000007
	.quad	0x4023676c4827b6fe              # double 9.7019979999999997
	.quad	0x4021d2786c22680a              # double 8.9110750000000003
	.quad	0x4004333fc86cebbc              # double 2.5250240000000002
	.quad	0x401ee37b07075b3e              # double 7.7221489999999999
	.quad	0x3fb0fb3311a543f2              # double 0.066333000000000003
	.quad	0x4018b61522a6f3f5              # double 6.1778149999999998
	.quad	0x40151d22424a276b              # double 5.2784509999999996
	.quad	0x40109372606fac60              # double 4.1439909999999998
	.quad	0x4022c449fd7a13c2              # double 9.3833769999999994
	.quad	0x3fe509b30728e92d              # double 0.65743399999999996
	.quad	0x3fd320f6f08cc576              # double 0.29888700000000001
	.quad	0x4023262d83c6c97e              # double 9.5745660000000008
	.quad	0x4020a3a732df505d              # double 8.3196349999999999
	.quad	0x4004d93708aac96d              # double 2.6060620000000001
	.quad	0x402037b19e731d2e              # double 8.1087769999999999
	.quad	0x40026f2064239607              # double 2.3042609999999999
	.quad	0x4023bbf1a5ca2984              # double 9.8670779999999993
	.quad	0x401076b69db65ecc              # double 4.1159309999999998
	.quad	0x401cfe6f71a7e308              # double 7.2484719999999996
	.quad	0x3ffff5568e820e63              # double 1.9973970000000001
	.quad	0x40237f2cb641700d              # double 9.7483880000000002
	.quad	0x401ab3365881a155              # double 6.6750119999999997
	.quad	0x400ff6d0917d6b66              # double 3.9955150000000001
	.quad	0x4000b09070fbeb9e              # double 2.0862129999999999
	.quad	0x401e3e82949a5658              # double 7.561045
	.quad	0x40205dcbff47735c              # double 8.1831969999999998
	.quad	0x4012d40fecdd0d8d              # double 4.7070920000000003
	.quad	0x400cdfceb78897ea              # double 3.6092810000000002
	.quad	0x4015a20ccff21b3b              # double 5.4082520000000001
	.quad	0x402361be2b4959e6              # double 9.6909039999999997
	.quad	0x401b188a8b08dd1e              # double 6.7739659999999997
	.quad	0x400c0a5e785b5b70              # double 3.5050629999999998
	.quad	0x40153b4b2fa93af7              # double 5.3079039999999997
	.quad	0x401da1e53a81dc0e              # double 7.4081010000000003
	.quad	0x400bae6c093d9664              # double 3.4601670000000002
	.quad	0x401fa80e496ededb              # double 7.914117
	.quad	0x400af2bd3c361134              # double 3.368525
	.quad	0x400d8ee5abc0e38a              # double 3.6947739999999998
	.quad	0x4019bad14a0a0f4d              # double 6.4324389999999996
	.quad	0x40054c53b0813cac              # double 2.6622690000000002
	.quad	0x40186edc7ef177a7              # double 6.108263
	.quad	0x40225f5968512232              # double 9.1862290000000009
	.quad	0x3ff730068db8bac7              # double 1.449225
	.quad	0x3ffeda554b8bef8d              # double 1.928304
	.quad	0x40215ba647fdc593              # double 8.6790029999999998
	.quad	0x4015598915bdd767              # double 5.3374370000000004
	.quad	0x3ff6da22f6a50d6b              # double 1.428256
	.quad	0x4011f8815e39713b              # double 4.4926810000000001
	.quad	0x4011449667b5f1bf              # double 4.31698
	.quad	0x401e923e9ea14057              # double 7.6428169999999999
	.quad	0x4015f3343fa2ad3f              # double 5.4875040000000004
	.quad	0x3fe5c217d2849cb2              # double 0.67994299999999996
	.quad	0x4022b47368ad6883              # double 9.3524429999999992
	.quad	0x402364b1ab0856e7              # double 9.6966680000000007
	.quad	0x401f11fa76534374              # double 7.767557
	.quad	0x40223c8344c37e6f              # double 9.1181889999999992
	.quad	0x4014ec37e6f71a7e              # double 5.2306819999999998
	.quad	0x401350eb24a6a876              # double 4.8290220000000001
	.quad	0x4020b2719b4dcec0              # double 8.3485230000000001
	.quad	0x40237c204f2ae07e              # double 9.7424339999999994
	.quad	0x400958bc59b8023a              # double 3.1683279999999998
	.quad	0x4018b3201040bfe4              # double 6.1749270000000003
	.quad	0x401de454de7ea5f8              # double 7.4729799999999997
	.quad	0x3fae04189374bc6a              # double 0.058624999999999997
	.quad	0x3fcf6a400fba8827              # double 0.24543000000000001
	.quad	0x4018734e3369b9d8              # double 6.112603
	.quad	0x401af5bb7b6bb129              # double 6.739973
	.quad	0x40028ad688377186              # double 2.3177919999999999
	.quad	0x401041593e5fb720              # double 4.0638170000000002
	.quad	0x401651059ea57215              # double 5.5791230000000001
	.quad	0x4023dd51f81a5871              # double 9.9322660000000002
	.quad	0x4022f0b8cfbfc654              # double 9.4701599999999999
	.quad	0x401e7bdf090f733b              # double 7.6209680000000004
	.quad	0x4021472fba01eeee              # double 8.6390360000000008
	.quad	0x400e1e6a337a80d0              # double 3.7648510000000002
	.quad	0x4021169bbf0dc769              # double 8.5441570000000002
	.quad	0x4019eac68a936c59              # double 6.4792730000000001
	.quad	0x400c064ba94bbe44              # double 3.5030739999999998
	.quad	0x40238f985271bcdc              # double 9.7804590000000004
	.quad	0x40198986fcdee350              # double 6.3843040000000002
	.quad	0x4011185942917508              # double 4.2737780000000001
	.quad	0x4019fa059a73b42d              # double 6.4941620000000002
	.quad	0x401ffd7cf5f4e443              # double 7.9975469999999999
	.quad	0x40008f8ceb356da0              # double 2.070093
	.quad	0x40150232096787cf              # double 5.2521440000000004
	.quad	0x40137aad601ffb48              # double 4.869802
	.quad	0x401ecc5a3e39f773              # double 7.6995630000000003
	.quad	0x4003673de1e2de87              # double 2.425411
	.quad	0x40146d5992428d43              # double 5.1067869999999997
	.quad	0x400e46bd6e8af816              # double 3.7845409999999999
	.quad	0x3ffeb47a5b0ff10f              # double 1.919062
	.quad	0x400a5932d6ece13f              # double 3.2935539999999999
	.quad	0x4020d0ba1f4b1ee2              # double 8.4076699999999995
	.quad	0x401151711947cfa2              # double 4.3295329999999996
	.quad	0x400f9a5870da5daf              # double 3.950364
	.quad	0x401ac6ad70e6f2e9              # double 6.6940210000000002
	.quad	0x401a38b6d86ec17f              # double 6.5553850000000002
	.quad	0x3fe29fe64f54d1e9              # double 0.58201899999999995
	.quad	0x3fe042d27807789a              # double 0.50815699999999997
	.quad	0x401f26f694467382              # double 7.7880500000000001
	.quad	0x3ff05b402d16b980              # double 1.022278
	.quad	0x401a96fef7c243dd              # double 6.6474570000000002
	.quad	0x400d925cc426351e              # double 3.696466
	.quad	0x40143954eb13dfb1              # double 5.0559880000000001
	.quad	0x402289d755bccaf7              # double 9.2692209999999999
	.quad	0x3ffd6032db1e9f27              # double 1.8359859999999999
	.quad	0x4020ff48a159817c              # double 8.4986010000000007
	.quad	0x4023221f080303c0              # double 9.5666429999999991
	.quad	0x4010231b9b66f933              # double 4.0342849999999997
	.quad	0x401def8594291750              # double 7.4839079999999996
	.quad	0x401c51ede1198aec              # double 7.0800090000000004
	.quad	0x401a8bd33d29563b              # double 6.6365480000000003
	.quad	0x3ff086b26bf8769f              # double 1.0328850000000001
	.quad	0x402315cd91eeaa6d              # double 9.5425839999999997
	.quad	0x40185535c9e6687f              # double 6.0832129999999998
	.quad	0x3ff8f07af20ea5b5              # double 1.558711
	.quad	0x400c5c842fa50939              # double 3.5451739999999998
	.quad	0x4022f9c10d7be985              # double 9.4878009999999992
	.quad	0x40120b3c3e74afd5              # double 4.5109719999999998
	.quad	0x4014dd78c436fc16              # double 5.2162810000000004
	.quad	0x3fed3e5321e603d5              # double 0.91385799999999995
	.quad	0x4008ee10cf5b1c86              # double 3.1162429999999999
	.quad	0x40123e80bed740c4              # double 4.5610379999999999
	.quad	0x402007d00713f078              # double 8.0152590000000004
	.quad	0x3ff672495e17e34c              # double 1.4029020000000001
	.quad	0x401205a9eb2074eb              # double 4.5055310000000004
	.quad	0x400d00fd3b29a1ba              # double 3.625483
	.quad	0x401f07ae5796bfcb              # double 7.7575010000000004
	.quad	0x4012d7f66e86c658              # double 4.7109009999999998
	.quad	0x400ec29e0a41a262              # double 3.8450280000000001
	.quad	0x4023da1bc126a65d              # double 9.925993
	.quad	0x401c8e96c3fc43b3              # double 7.1392470000000001
	.quad	0x401d6cfbb949624a              # double 7.3564290000000003
	.quad	0x4019a4a01abd1aa8              # double 6.4107669999999999
	.quad	0x3fffd3f39d1b2e5a              # double 1.9892460000000001
	.quad	0x4003ecf63800218e              # double 2.490704
	.quad	0x3feb98eda22f6a51              # double 0.86241800000000002
	.quad	0x401fb40639d5e4a4              # double 7.9258050000000004
	.quad	0x4014aa2c2374794f              # double 5.1661840000000003
	.quad	0x3ffbfd6d7e889c1b              # double 1.7493719999999999
	.quad	0x400418f7121ab4b7              # double 2.5121899999999999
	.quad	0x401c46feb4a6655a              # double 7.069331
	.quad	0x4022f52977c88e7a              # double 9.4788320000000006
	.quad	0x400ef2007dd44135              # double 3.8681649999999999
	.quad	0x3fd149a133c1ce6c              # double 0.270119
	.quad	0x401b139abf338716              # double 6.769145
	.quad	0x40220ec3b927d45a              # double 9.0288369999999993
	.quad	0x4011bc4fc1df3301              # double 4.4338980000000001
	.quad	0x40199bec679cc74c              # double 6.4022690000000004
	.quad	0x401cbb213e3e2930              # double 7.1827439999999996
	.quad	0x4022c2bb44e50c5f              # double 9.3803350000000005
	.quad	0x3ff368262456f75e              # double 1.2129270000000001
	.quad	0x4003cf3dc054ef46              # double 2.4761920000000002
	.quad	0x40074d9ad85dfa87              # double 2.912893
	.quad	0x402097ac6045baf5              # double 8.2962369999999996
	.quad	0x3ff04e5929670197              # double 1.019128
	.quad	0x40218b4df04ddb55              # double 8.7720789999999997
	.quad	0x401969dc2f405f6c              # double 6.3533790000000003
	.quad	0x40232ef0281ba7fc              # double 9.5916759999999996
	.quad	0x401da0dae3e6c4c6              # double 7.4070850000000004
	.quad	0x3fffbb9389b52008              # double 1.983295
	.quad	0x4010d98dcdb37c9a              # double 4.2124550000000003
	.quad	0x40123c8bc9cd3e0c              # double 4.5591270000000002
	.quad	0x40209b23571d1d47              # double 8.3030039999999996
	.quad	0x3fadb1422ccb3a26              # double 0.057993000000000003
	.quad	0x401d2b97fe8ee6b8              # double 7.2925719999999998
	.quad	0x4022f921ccd96207              # double 9.4865860000000008
	.quad	0x4020c1832fcac8e7              # double 8.3779540000000008
	.quad	0x401bf34e7685985b              # double 6.9876040000000001
	.quad	0x400213cee9dd7ecc              # double 2.2596720000000001
	.quad	0x401bd8f861a60d45              # double 6.9618849999999997
	.quad	0x3fe4249c2c1b10fd              # double 0.62946899999999995
	.quad	0x4008c6e3b46fdeb5              # double 3.0971139999999999
	.quad	0x3fcc3aafff36ac64              # double 0.22054099999999999
	.quad	0x401f6336deb95e5b              # double 7.846889
	.quad	0x40150348f53c579f              # double 5.2532079999999999
	.quad	0x400c0034f3fd933e              # double 3.5001009999999999
	.quad	0x401c5ba5e353f7cf              # double 7.0895000000000001
	.quad	0x401d801b003686a5              # double 7.3751030000000002
	.quad	0x3ff7d66490a350d3              # double 1.4898420000000001
	.quad	0x40006c4b4d056c51              # double 2.0528780000000002
	.quad	0x3ff9d3804534bd77              # double 1.614136
	.quad	0x402120305d95dd4c              # double 8.5628689999999991
	.quad	0x4022308aefb2aae3              # double 9.0948100000000007
	.quad	0x4015a342edbb59de              # double 5.4094350000000002
	.quad	0x401baf559b3d07c8              # double 6.9212249999999997
	.quad	0x40207b37c99ae925              # double 8.2406600000000001
	.quad	0x4018eb866e43aa7a              # double 6.2300050000000002
	.quad	0x40197ffc5479d4d8              # double 6.3749859999999998
	.quad	0x3ff58903ea704bc2              # double 1.3459509999999999
	.quad	0x400d40485a0be511              # double 3.6563880000000002
	.quad	0x40169ea2d2fe3f36              # double 5.6549180000000003
	.quad	0x3fefe4e69f05ea25              # double 0.99669200000000002
	.quad	0x40187806290eed03              # double 6.1172110000000002
	.quad	0x400b73b5bf6a0dbb              # double 3.4314990000000001
	.quad	0x3fd8df090f733a8a              # double 0.38861299999999999
	.quad	0x3fe17f5a5332acfb              # double 0.54679599999999995
	.quad	0x401d2689ca18bd66              # double 7.2876349999999999
	.quad	0x3fdfddf86e3b46fe              # double 0.497923
	.quad	0x4021b6eefa1e3eaf              # double 8.8572919999999993
	.quad	0x40126dd69d30270f              # double 4.6072639999999998
	.quad	0x3fe64d9c6b053198              # double 0.69697399999999998
	.quad	0x401207219220ff54              # double 4.506964
	.quad	0x3fe3bd70a3d70a3d              # double 0.61687499999999995
	.quad	0x402091ee45c358b0              # double 8.2850210000000004
	.quad	0x4014dfe111276fb1              # double 5.2186320000000004
	.quad	0x40230d5b035bd513              # double 9.5260850000000001
	.quad	0x4022607852f7f499              # double 9.1884180000000004
	.quad	0x3feb1e90795f676f              # double 0.84748100000000004
	.quad	0x4021543b927d45a6              # double 8.664517
	.quad	0x40104d373affb04f              # double 4.0754060000000001
	.quad	0x4007022ff08893b8              # double 2.8760680000000001
	.quad	0x401cee6ff7dfa00e              # double 7.2328489999999999
	.quad	0x401361f75104d552              # double 4.8456700000000001
	.quad	0x4018cde1e2de8709              # double 6.2010569999999996
	.quad	0x3ff960c7c0f45176              # double 1.586128
	.quad	0x401c9f533f42352f              # double 7.1555910000000003
	.quad	0x4014a925bb7b6bb1              # double 5.1651829999999999
	.quad	0x4014f7b7c7820a31              # double 5.2419120000000001
	.quad	0x400d40a41a261bf3              # double 3.6565629999999998
	.quad	0x3fd30a84be40420f              # double 0.29751699999999998
	.quad	0x3ff54316a055757d              # double 1.3288789999999999
	.quad	0x40084a4766c6de76              # double 3.0362689999999999
	.quad	0x401641975f2cb641              # double 5.5640539999999996
	.quad	0x401ab9de05037500              # double 6.6815110000000004
	.quad	0x401ade518f3eccc4              # double 6.7171079999999996
	.quad	0x4021d1d51b4fe79f              # double 8.9098290000000002
	.quad	0x402373cb81733227              # double 9.7261620000000004
	.quad	0x401f55bb7b6bb129              # double 7.8337229999999999
	.quad	0x40133109070fbeba              # double 4.7978860000000001
	.quad	0x4019a82517e77d52              # double 6.4142039999999998
	.quad	0x4020221405708249              # double 8.0665589999999998
	.quad	0x401f0eed8904f6e0              # double 7.7645780000000002
	.quad	0x400a406748e47560              # double 3.281447
	.quad	0x402341c66d373b00              # double 9.6284670000000006
	.quad	0x400e87cfa26a22b4              # double 3.8163140000000002
	.quad	0x4013b4a5df2239e7              # double 4.9264140000000003
	.quad	0x40228a34eb9a176e              # double 9.2699350000000003
	.quad	0x3ff9dce39b456b44              # double 1.616428
	.quad	0x40157a84be40420f              # double 5.3696469999999996
	.quad	0x3ff954a3c64345d0              # double 1.583164
	.quad	0x400d7da9c99285a9              # double 3.6863589999999999
	.quad	0x4017f3198288051d              # double 5.9874020000000003
	.quad	0x401600ba6266fd65              # double 5.5007109999999999
	.quad	0x40084333fc86cebc              # double 3.0328140000000001
	.quad	0x40238570e6f2e8c0              # double 9.7606269999999994
	.quad	0x4022cdba6efc371e              # double 9.4018130000000006
	.quad	0x4011a467381d7dbf              # double 4.4105499999999997
	.quad	0x400f45b749adc8fc              # double 3.9090410000000002
	.quad	0x3ff039e492bc2fc7              # double 1.0141340000000001
	.quad	0x401871a5ca29845e              # double 6.1109840000000002
	.quad	0x401550945f9df549              # double 5.3286910000000001
	.quad	0x4020dc61d8622c45              # double 8.430434
	.quad	0x3fd007e5a78f25a2              # double 0.25048199999999998
	.quad	0x4003a4649906cca3              # double 2.4552700000000001
	.quad	0x4021e033c60029f1              # double 8.9378949999999993
	.quad	0x3fd8eee0f3cb3e57              # double 0.38957999999999998
	.quad	0x40038a009f623077              # double 2.4423840000000001
	.quad	0x4000f5b0bbf50e34              # double 2.1199659999999998
	.quad	0x401c7ed3953dea46              # double 7.1238539999999997
	.quad	0x4016d4f50a02b841              # double 5.7079659999999999
	.quad	0x4023782e6644d877              # double 9.7347289999999997
	.quad	0x400d7e1d2178f68c              # double 3.6865790000000001
	.quad	0x40072d972cd7cf5f              # double 2.8972609999999999
	.quad	0x40065f0dc768dfbd              # double 2.7964129999999998
	.quad	0x4013904f2ae07e5a              # double 4.8909269999999996
	.quad	0x40233de8709741d1              # double 9.6209140000000008
	.quad	0x400f3da61e0c5a81              # double 3.9051019999999999
	.quad	0x4007e04102ff8ec1              # double 2.984499
	.quad	0x400e3ae4f3343fa3              # double 3.7787570000000001
	.quad	0x401b500abf76a2f5              # double 6.8281660000000004
	.quad	0x4010e7b45f17bd8c              # double 4.2262740000000001
	.quad	0x4022718655193709              # double 9.2217280000000006
	.quad	0x40122fbbd7b2031d              # double 4.5466150000000001
	.quad	0x40128b4a66559f6f              # double 4.6360260000000002
	.quad	0x3ffb1cb1465e8922              # double 1.6945049999999999
	.quad	0x402186f976790321              # double 8.7636219999999998
	.quad	0x400d5b2e59af9ebf              # double 3.6695220000000002
	.quad	0x401778c64fdb09a6              # double 5.8679439999999996
	.quad	0x4015f569b17481b2              # double 5.4896609999999999
	.quad	0x400ef59c49774257              # double 3.8699270000000001
	.quad	0x402195c2f405f6ba              # double 8.792503
	.quad	0x401af4dc22ab25b3              # double 6.7391209999999999
	.quad	0x4023633b10774688              # double 9.6938099999999991
	.quad	0x40100317efe0ce0c              # double 4.0030210000000004
	.quad	0x3fd8272862f5989e              # double 0.37739
	.quad	0x4015d2d8c2a454de              # double 5.4559049999999996
	.quad	0x400bc8b9fdbd2fa1              # double 3.4730110000000001
	.quad	0x3fd49c304ccee5ac              # double 0.32203300000000001
	.quad	0x4021e67d77fae361              # double 8.9501760000000008
	.quad	0x40133bab21815a08              # double 4.8082700000000003
	.quad	0x40013d627bf61aa4              # double 2.154973
	.quad	0x400d10a5efe93187              # double 3.6331289999999998
	.quad	0x3fd9de481f53825e              # double 0.404192
	.quad	0x401cf259e1f3a57f              # double 7.2366710000000003
	.quad	0x40227cb1ab0856e7              # double 9.2435430000000007
	.quad	0x3fbdc1d6cf850df1              # double 0.116239
	.quad	0x40215c46b69db65f              # double 8.6802270000000004
	.quad	0x4006d72a38b8ae32              # double 2.8550610000000001
	.quad	0x40149d31fcd24e16              # double 5.153511
	.quad	0x4020a3edb7281fda              # double 8.3201730000000005
	.quad	0x4016e71f36262cba              # double 5.7257049999999996
	.quad	0x400a47e73a365cb3              # double 3.2851089999999998
	.quad	0x40195a5d28d002e2              # double 6.3382459999999998
	.quad	0x4020c12ddbdb5d89              # double 8.3773029999999995
	.quad	0x3fe478183f91e647              # double 0.63966000000000001
	.quad	0x3f7eabbcb1cc9646              # double 0.0074879999999999999
	.quad	0x401e5ef954eb13e0              # double 7.5927480000000003
	.quad	0x3ffbfbadc0980b24              # double 1.748945
	.quad	0x4017304c48adeebb              # double 5.7971659999999998
	.quad	0x401724b124d099e1              # double 5.7858320000000001
	.quad	0x402127c0b1359792              # double 8.5776420000000009
	.quad	0x402120c5c9a34ca1              # double 8.5640090000000004
	.quad	0x3fe2b6ac647778dd              # double 0.58479899999999996
	.quad	0x3fe028ed5f138bce              # double 0.504996
	.quad	0x4009368837718655              # double 3.151627
	.quad	0x401bcc13b9f127f6              # double 6.9492940000000001
	.quad	0x4011bcf52b90a783              # double 4.4345290000000004
	.quad	0x4021cca9478c868c              # double 8.8997290000000006
	.quad	0x401195b4edb2f662              # double 4.3961980000000001
	.quad	0x402074bc05d52c17              # double 8.2279970000000002
	.quad	0x401122602c9081c3              # double 4.2835700000000001
	.quad	0x402170c4156e264e              # double 8.7202459999999995
	.quad	0x401f3856a37ac3eb              # double 7.8050179999999995
	.quad	0x401430ebedfa43fe              # double 5.0477749999999997
	.quad	0x401f0ef672b88440              # double 7.7646119999999996
	.quad	0x40239705a708ede5              # double 9.7949649999999994
	.quad	0x4019e5f138bcdff0              # double 6.4745530000000002
	.quad	0x4020b397fe8ee6b8              # double 8.3507689999999997
	.quad	0x40201f9ebe9c8861              # double 8.0617579999999993
	.quad	0x401d1c304ccee5ac              # double 7.2775280000000002
	.quad	0x400418c75c4a83b2              # double 2.5120990000000001
	.quad	0x40231ab9f559b3d0              # double 9.5521999999999991
	.quad	0x40002c61522a6f3f              # double 2.0216699999999999
	.quad	0x400454927913e814              # double 2.5412949999999999
	.quad	0x4018473e681a9b8d              # double 6.0695740000000002
	.quad	0x400b252f7f498c3b              # double 3.393157
	.quad	0x401c1b34e7685986              # double 7.0265690000000003
	.quad	0x401d34a6eb91b3f2              # double 7.301418
	.quad	0x4020ddd41fa76534              # double 8.4332589999999996
	.quad	0x401bbe2d6238da3c              # double 6.9357199999999999
	.quad	0x40200d03d9a95422              # double 8.0254200000000004
	.quad	0x40216bc87db2b346              # double 8.7105139999999999
	.quad	0x402018433d6c7219              # double 8.0473879999999998
	.quad	0x400a10fadf2ecf20              # double 3.2582909999999998
	.quad	0x3fe5f566490a350d              # double 0.68620599999999998
	.quad	0x4012c961c36976bc              # double 4.6966619999999999
	.quad	0x401fe5f6ba0620ab              # double 7.9745739999999996
	.quad	0x40143e0ded288ce7              # double 5.0606
	.quad	0x400e57fd82773e25              # double 3.792964
	.quad	0x40211397fe8ee6b8              # double 8.5382689999999997
	.quad	0x3fd6d3b29a1b9f99              # double 0.35667100000000002
	.quad	0x401a1ac3eb7cbb3d              # double 6.5261380000000004
	.quad	0x401ba6a26e547171              # double 6.9127289999999997
	.quad	0x401273810e8858ff              # double 4.6127969999999996
	.quad	0x3fe037d1fe64f54d              # double 0.50681399999999999
	.quad	0x4014e345cfede97d              # double 5.221946
	.quad	0x40140f1a9fbe76c9              # double 5.0147500000000003
	.quad	0x4006d3f290abb44e              # double 2.8534899999999999
	.quad	0x4002d8854cdb7ae5              # double 2.3557229999999998
	.quad	0x4023c348b220791c              # double 9.8814139999999994
	.quad	0x401ab8f8e7ddca4b              # double 6.6806369999999999
	.quad	0x3fe6991dde37585c              # double 0.70619100000000001
	.quad	0x3ff205b291b823c8              # double 1.1263909999999999
	.quad	0x40113e5d9e40c847              # double 4.3109039999999998
	.quad	0x40222e8c47a17f41              # double 9.0909139999999997
	.quad	0x4020e5942917507f              # double 8.4483960000000007
	.quad	0x4001109bf9c62a1b              # double 2.1331099999999998
	.quad	0x400aa0431bde82d8              # double 3.3282530000000001
	.quad	0x3fffd9ccfaeff5c7              # double 1.9906740000000001
	.quad	0x40019c8c9320d994              # double 2.2014399999999998
	.quad	0x3fd5be4cd7492791              # double 0.33973999999999999
	.quad	0x4020600474d9c6b0              # double 8.1875339999999994
	.quad	0x401254766c6de764              # double 4.5824829999999999
	.quad	0x4020fdfefbf401c5              # double 8.496086
	.quad	0x400c541aef6f8f04              # double 3.541067
	.quad	0x3ff9bfb04ee7c4a0              # double 1.609299
	.quad	0x402369dbec2480e9              # double 9.7067560000000003
	.quad	0x40135230b9dc2f40              # double 4.8302639999999997
	.quad	0x401c28ac18f81e8a              # double 7.0397189999999998
	.quad	0x401da8e3ac0c62e5              # double 7.4149310000000002
	.quad	0x4015ab66b6177ea2              # double 5.4173840000000002
	.quad	0x3fe2d1159c497742              # double 0.58802299999999996
	.quad	0x402055f78359bc34              # double 8.167904
	.quad	0x40207d8969a0ad8a              # double 8.2451889999999999
	.quad	0x401e4a454de7ea60              # double 7.5725300000000004
	.quad	0x401bff9f87f023ea              # double 6.9996320000000001
	.quad	0x402136d86ec17ebb              # double 8.6071200000000001
	.quad	0x400aae3821af7d31              # double 3.3350680000000001
	.quad	0x3fb52ce032db1e9f              # double 0.082715999999999998
	.quad	0x401fc2cba732df50              # double 7.9402299999999997
	.quad	0x4014bafc04c8bc9d              # double 5.1826020000000002
	.quad	0x401805b035bd512f              # double 6.0055550000000002
	.quad	0x4005f9f559b3d07d              # double 2.7470500000000002
	.quad	0x401b9da2b5a20ddc              # double 6.9039409999999997
	.quad	0x401ef2eb5f5f0b28              # double 7.7372259999999997
	.quad	0x3ffe49491f2dc2b1              # double 1.892892
	.quad	0x40233a62456f75da              # double 9.6140310000000007
	.quad	0x4013d8e71476af8a              # double 4.9618190000000002
	.quad	0x3fee048e043a2164              # double 0.938056
	.quad	0x4015b425f202107b              # double 5.4259259999999996
	.quad	0x4013e517a46173b8              # double 4.9737229999999997
	.quad	0x3fe2291105e1c151              # double 0.56751300000000005
	.quad	0x40201f2e275ab7dc              # double 8.0608989999999991
	.quad	0x4003119695d91ab9              # double 2.383588
	.quad	0x4011db5cbff47736              # double 4.4642210000000002
	.quad	0x40114095af294dd7              # double 4.3130709999999999
	.quad	0x40104ddc1e7967cb              # double 4.0760350000000001
	.quad	0x40025fc32ebe596d              # double 2.2967590000000002
	.quad	0x401b84178705425f              # double 6.8789959999999999
	.quad	0x4020382c6ef3d3a2              # double 8.1097140000000003
	.quad	0x4014ed230b9dc2f4              # double 5.231579
	.quad	0x40156c4e7253da73              # double 5.3557680000000003
	.quad	0x3ffb1a2c669057d1              # double 1.6938899999999999
	.quad	0x3ff51a8cdea033e8              # double 1.3189820000000001
	.quad	0x4022296fc9bc7714              # double 9.0809309999999996
	.quad	0x402337162ae4b018              # double 9.6075909999999993
	.quad	0x4002be29307af20f              # double 2.3428520000000002
	.quad	0x40208c3a647fdc59              # double 8.2738829999999997
	.quad	0x401338ec95bff045              # double 4.8055899999999996
	.quad	0x3ffe33ce63a5c1c6              # double 1.887648
	.quad	0x401ce21b7e0ac7da              # double 7.2208079999999999
	.quad	0x400607253da72a7c              # double 2.7534890000000001
	.quad	0x400e99ef0f16f438              # double 3.8251629999999999
	.quad	0x400a314ec204f2ae              # double 3.274076
	.quad	0x4012174afd545415              # double 4.5227469999999999
	.quad	0x40113c28f5c28f5c              # double 4.3087499999999999
	.quad	0x40088af89c5e6ff8              # double 3.0678570000000001
	.quad	0x4003172c5197a249              # double 2.3863150000000002
	.quad	0x40086770bd017daf              # double 3.0505080000000002
	.quad	0x3ffb9b089a027525              # double 1.7253499999999999
	.quad	0x4006e949a5657fb7              # double 2.8639100000000002
	.quad	0x4009f69b9d7fd827              # double 3.2454139999999998
	.quad	0x4021e8a9de8b3b32              # double 8.954421
	.quad	0x401ed0e8427418d7              # double 7.7040110000000003
	.quad	0x4003cb8a5ce5b424              # double 2.4743849999999998
	.quad	0x3ffcf484d76ab580              # double 1.8096969999999999
	.quad	0x401e772d5e071c54              # double 7.616384
	.quad	0x400b1c0767d34df0              # double 3.3886859999999999
	.quad	0x401fc0789613d31c              # double 7.9379600000000003
	.quad	0x4005f3532e7b3d8e              # double 2.743811
	.quad	0x4023cff1b6912125              # double 9.9061409999999998
	.quad	0x401aac1e364bec68              # double 6.6680840000000003
	.quad	0x3fe7316c1e364bec              # double 0.72478299999999996
	.quad	0x40216aefb2aae297              # double 8.7088599999999996
	.quad	0x40136d9513f8db49              # double 4.8570140000000004
	.quad	0x3fe5de02ea960b70              # double 0.68335100000000004
	.quad	0x3fff54b6a619da9d              # double 1.9581820000000001
	.quad	0x3fe0d88c1db0142f              # double 0.52643399999999996
	.quad	0x40138b994e1a3f46              # double 4.8863269999999996
	.quad	0x4021b55fbb517a46              # double 8.8542459999999998
	.quad	0x401eb13db7f17375              # double 7.6730869999999997
	.quad	0x4013588fc9363f57              # double 4.8364859999999998
	.quad	0x3fd545f5ad96a6a0              # double 0.332395
	.quad	0x401f3ab4fa48301a              # double 7.8073309999999996
	.quad	0x40224f4927913e81              # double 9.1548549999999995
	.quad	0x400ffcf70153bd16              # double 3.9985179999999998
	.quad	0x401c8b990afe60c4              # double 7.1363260000000004
	.quad	0x4022451394317acc              # double 9.1349149999999994
	.quad	0x400d1ab3aabcd78c              # double 3.6380379999999999
	.quad	0x3fe02c3c9eecbfb1              # double 0.50539999999999996
	.quad	0x3ffae9e90795f677              # double 1.682107
	.quad	0x402068fffbce4218              # double 8.2050780000000003
	.quad	0x3fce47e49b1fab97              # double 0.236569
	.quad	0x401b58a3f8982cb2              # double 6.8365629999999999
	.quad	0x401089207d4e0978              # double 4.1339129999999997
	.quad	0x40229f1cda2b5a21              # double 9.3107670000000002
	.quad	0x3fefd143bf727137              # double 0.99429500000000003
	.quad	0x400b5f6ba0620ab7              # double 3.421592
	.quad	0x40118d4d834091c1              # double 4.3879910000000004
	.quad	0x401024bd76ee73e7              # double 4.0358790000000004
	.quad	0x4023cdc4a83b1d0d              # double 9.9018910000000008
	.quad	0x400f92fba01eeed9              # double 3.9467690000000002
	.quad	0x40173edb2f661f19              # double 5.8113830000000002
	.quad	0x40098d98bf7f0670              # double 3.1941389999999998
	.quad	0x3ff449310129cbab              # double 1.2678689999999999
	.quad	0x400164523f67f4dc              # double 2.1739850000000001
	.quad	0x3ff813f39d1b2e5a              # double 1.5048710000000001
	.quad	0x3fe280baa582dbe8              # double 0.57821400000000001
	.quad	0x401f65cfaacd9e84              # double 7.8494250000000001
	.quad	0x401cea5119ce075f              # double 7.2288249999999996
	.quad	0x401dda25529fe005              # double 7.4630330000000002
	.quad	0x40083fb71fbc5dea              # double 3.0311110000000001
	.quad	0x401e77f562174c4d              # double 7.6171470000000001
	.quad	0x3ff6a273929ed395              # double 1.4146609999999999
	.quad	0x401a0cf63800218e              # double 6.5126580000000001
	.quad	0x402100af5fd47bee              # double 8.5013380000000005
	.quad	0x40030858793dd97f              # double 2.3790749999999998
	.quad	0x3fcebe7296f6512b              # double 0.24018700000000001
	.quad	0x4005317507e9d94d              # double 2.649149
	.quad	0x4020c75f0b28522f              # double 8.3893970000000007
	.quad	0x400321b1960fa15e              # double 2.3914520000000001
	.quad	0x400d5389b52007dd              # double 3.6657899999999999
	.quad	0x40006b9d3cbc48f1              # double 2.052546
	.quad	0x40138250b524399b              # double 4.8772609999999998
	.quad	0x3fed288ace24bba1              # double 0.91119899999999998
	.quad	0x3ffed17c5ef62f9d              # double 1.9261440000000001
	.quad	0x4001b906cca2db62              # double 2.2153450000000001
	.quad	0x4021741df3300de5              # double 8.7267910000000004
	.quad	0x40152fd5cb790fb6              # double 5.2967139999999997
	.quad	0x401d188377186552              # double 7.2739390000000004
	.quad	0x4008584f4c6e6d9c              # double 3.04312
	.quad	0x40023c243dccea29              # double 2.279366
	.quad	0x401c24723aafff37              # double 7.0355920000000003
	.quad	0x40174badc0980b24              # double 5.8239049999999999
	.quad	0x40162bb73083558a              # double 5.5426909999999996
	.quad	0x4002c3810e8858ff              # double 2.3454609999999998
	.quad	0x3fff565907d91255              # double 1.9585809999999999
	.quad	0x4012e412cf0f9d2c              # double 4.722728
	.quad	0x4020cff3f0fe047d              # double 8.4061579999999996
	.quad	0x40128774256bca53              # double 4.6322789999999996
	.quad	0x4022a2d59d55e6bc              # double 9.3180359999999993
	.quad	0x400d997c3d68405b              # double 3.6999439999999999
	.quad	0x4015a899bf5946c3              # double 5.4146489999999998
	.quad	0x4011b435ac8a3726              # double 4.425986
	.quad	0x3feb6831ad2135db              # double 0.85646900000000004
	.quad	0x40213d1e75360d02              # double 8.6193729999999995
	.quad	0x401b29df1172ef0b              # double 6.7908900000000001
	.quad	0x401d170ac3a860dd              # double 7.2725020000000002
	.quad	0x4012c7143393ab43              # double 4.6944129999999999
	.quad	0x4021560e0eb67c28              # double 8.6680759999999992
	.quad	0x4023030941c8216c              # double 9.5059299999999993
	.quad	0x3ffbdc9d5a187a4a              # double 1.7413609999999999
	.quad	0x3f961cffeb074a77              # double 0.021595
	.quad	0x3fb602645e4e69f0              # double 0.085973999999999994
	.quad	0x401c1217d2849cb2              # double 7.0176689999999997
	.quad	0x400688637bd05af7              # double 2.8165960000000001
	.quad	0x401695929670196e              # double 5.6460670000000004
	.quad	0x3fdb780346dc5d64              # double 0.42920000000000003
	.quad	0x4010afd0d0678c00              # double 4.1716949999999997
	.quad	0x401078a19c9d5a18              # double 4.1178039999999996
	.quad	0x400363254e6e221d              # double 2.4234110000000002
	.quad	0x4018f60ae9680e06              # double 6.2402759999999997
	.quad	0x4022d29cbab649d4              # double 9.4113520000000008
	.quad	0x400f39d909f1f14a              # double 3.9032460000000002
	.quad	0x3fcdfcc1871e6cd3              # double 0.23427600000000001
	.quad	0x40169f6124074645              # double 5.6556439999999997
	.quad	0x401ae1e5c0b99913              # double 6.7206029999999997
	.quad	0x4003c76965f5275f              # double 2.472369
	.quad	0x4021d5c4a83b1d0d              # double 8.9175160000000009
	.quad	0x401d5c3e74afd545              # double 7.3400819999999998
	.quad	0x400e598aeb80ecfa              # double 3.7937219999999998
	.quad	0x3fdc1c58255b035c              # double 0.43923000000000001
	.quad	0x401e25cd0bb6ed67              # double 7.5369149999999995
	.quad	0x4021ba374794ea07              # double 8.8637029999999992
	.quad	0x40231a541d8e8640              # double 9.5514229999999997
	.quad	0x401a60f3cb3e5754              # double 6.5946800000000003
	.quad	0x401ffabc5154866a              # double 7.9948589999999999
	.quad	0x3fd9dfc19c17225b              # double 0.40428199999999997
	.quad	0x4010c46950fc71d6              # double 4.191808
	.quad	0x402039d8409e55c1              # double 8.112978
	.quad	0x401ea4aec8d5c747              # double 7.6608229999999997
	.quad	0x4016e63baba7b917              # double 5.724837
	.quad	0x3ff43c7820a30db7              # double 1.2647630000000001
	.quad	0x4020ee054690de09              # double 8.4648839999999996
	.quad	0x400b08216c61522a              # double 3.3789699999999998
	.quad	0x4021525f633ce63a              # double 8.6608839999999994
	.quad	0x3fe7a5bd944aa540              # double 0.73898200000000003
	.quad	0x40211d7a13c254a4              # double 8.5575720000000004
	.quad	0x40126187e7c06e1a              # double 4.5952450000000002
	.quad	0x4016700fba8826ab              # double 5.6094350000000004
	.quad	0x40231f67d34df04e              # double 9.5613390000000003
	.quad	0x3ff44407cc7d1bb5              # double 1.2666090000000001
	.quad	0x4015e06f69446738              # double 5.4691749999999999
	.quad	0x4022cb8023a6ce36              # double 9.3974620000000009
	.quad	0x40135107314ca926              # double 4.829129
	.quad	0x3fe53d1ed9dfdac7              # double 0.66371100000000005
	.quad	0x40093d6f97679032              # double 3.154998
	.quad	0x3fe023a6ce358299              # double 0.50435200000000002
	.quad	0x4019caba7b9170d6              # double 6.4479769999999998
	.quad	0x4022e50870110a13              # double 9.4473299999999991
	.quad	0x401304e5d5b24e9c              # double 4.7547829999999998
	.quad	0x4002f52d234eb9a1              # double 2.3697149999999998
	.quad	0x40153a737110e454              # double 5.3070810000000002
	.quad	0x3fd474107314ca92              # double 0.31958399999999998
	.quad	0x3ff292f5dbb9cf9a              # double 1.160879
	.quad	0x4007ee4a7b4e54f8              # double 2.9913530000000002
	.quad	0x4006e7f5e84f0953              # double 2.8632620000000002
	.quad	0x401da6a098915bdd              # double 7.4127219999999996
	.quad	0x40119c4b90214ad3              # double 4.4026319999999997
	.quad	0x4022fd5b6805a2d7              # double 9.4948379999999996
	.quad	0x4022cb6deb95e5b0              # double 9.3973230000000001
	.quad	0x400355bbbe878fac              # double 2.4168620000000001
	.quad	0x40046cbea4ebdd33              # double 2.5530979999999999
	.quad	0x3fe571c75818c5ca              # double 0.67013900000000004
	.quad	0x4017d5e99e94ab1d              # double 5.9588989999999997
	.quad	0x4001071c53f39d1b              # double 2.1284719999999999
	.quad	0x40182102795703f3              # double 6.0322360000000002
	.quad	0x401d0aa10e022142              # double 7.2603799999999996
	.quad	0x4009b504c48adeec              # double 3.2133880000000001
	.quad	0x401a6ec3dab5c39c              # double 6.6081690000000002
	.quad	0x3ff58aefb2aae297              # double 1.34642
	.quad	0x4019754a3c64345d              # double 6.364541
	.quad	0x401b0b2d905c0336              # double 6.7609159999999999
	.quad	0x400c8135daad6020              # double 3.563091
	.quad	0x3fffa76d97b30f8c              # double 1.9783759999999999
	.quad	0x4000abc59b8023a7              # double 2.0838730000000001
	.quad	0x400ac57eaa2a0a96              # double 3.3464330000000002
	.quad	0x3fe551eb851eb852              # double 0.66625000000000001
	.quad	0x401fafc0d2c386d3              # double 7.921634
	.quad	0x40189e9d0e991ff7              # double 6.1548959999999999
	.quad	0x3fe8fd8f0c77dd87              # double 0.78095199999999998
	.quad	0x3fd876e6106ab14f              # double 0.38225700000000001
	.quad	0x400163afb7e90ff9              # double 2.1736749999999998
	.quad	0x4022a17c80841ede              # double 9.3154029999999999
	.quad	0x3fed83f4eca686e8              # double 0.92235800000000001
	.quad	0x401c6c2eba27ae9b              # double 7.1056470000000003
	.quad	0x40222fd2630ec311              # double 9.0934019999999993
	.quad	0x40202d8cb07d0aee              # double 8.0889640000000007
	.quad	0x4019907d4e09784f              # double 6.3911030000000002
	.quad	0x401f675f2cb64170              # double 7.850949
	.quad	0x3ffac816f0068db9              # double 1.6738500000000001
	.quad	0x400be36fc158fb44              # double 3.4860530000000001
	.quad	0x4015dd57bc7f77af              # double 5.4661549999999997
	.quad	0x4014f2aa9f7b5aea              # double 5.2369789999999998
	.quad	0x4023106d938151a4              # double 9.5320859999999996
	.quad	0x40077de481f53826              # double 2.9364710000000001
	.quad	0x4022bb4ce3de614a              # double 9.3658210000000004
	.quad	0x40103c8c9320d994              # double 4.0591299999999997
	.quad	0x4008adc7ef177a70              # double 3.084854
	.quad	0x4017662e90364389              # double 5.8497870000000001
	.quad	0x4000332b55ef1fde              # double 2.024985
	.quad	0x4017daeafab53d64              # double 5.9637869999999999
	.quad	0x4003abffcdab191e              # double 2.4589840000000001
	.quad	0x4021d06ee30caa32              # double 8.9070959999999992
	.quad	0x400a3cb1465e8922              # double 3.2796349999999999
	.quad	0x400ba8ef77f27fe5              # double 3.4574880000000001
	.quad	0x40224a541d8e8640              # double 9.1451729999999997
	.quad	0x4019389c1b54195d              # double 6.3052830000000002
	.quad	0x40222086df82b1f7              # double 9.0635290000000008
	.quad	0x40010aad1d041cc5              # double 2.1302129999999999
	.quad	0x4020c8b955f7835a              # double 8.3920390000000005
	.quad	0x40213e6601bc98a2              # double 8.6218719999999998
	.quad	0x3ff1d3f4a98aa865              # double 1.114247
	.quad	0x4010434b945308bc              # double 4.0657180000000004
	.quad	0x401b5ae7924af0bf              # double 6.8387739999999999
	.quad	0x401df964e8b7e4de              # double 7.4935489999999998
	.quad	0x4007309e98dcdb38              # double 2.8987400000000001
	.quad	0x4018c715c63ae254              # double 6.1944189999999999
	.quad	0x401a56a832b990b0              # double 6.5846260000000001
	.quad	0x400736e04c059210              # double 2.9017949999999999
	.quad	0x400e983ad9f0a1be              # double 3.8243309999999999
	.quad	0x40210d9e40c8472c              # double 8.5265979999999998
	.quad	0x401c1cdbbe0157ef              # double 7.0281820000000002
	.quad	0x4005457d9dba908a              # double 2.6589309999999999
	.quad	0x40213cf97edc7ef1              # double 8.6190909999999992
	.quad	0x3ff33ccc03793144              # double 1.2023429999999999
	.quad	0x4015b20afa2f05a7              # double 5.42387
	.quad	0x4019e0f01fb82c2c              # double 6.4696660000000001
	.quad	0x3ffe5b035bd512ec              # double 1.8972199999999999
	.quad	0x401e70bdcad14a0a              # double 7.6100989999999999
	.quad	0x3fe6ee7a311e85fd              # double 0.716611
	.quad	0x400a773c925785f9              # double 3.3082210000000001
	.quad	0x401768765ba6efc3              # double 5.8520139999999996
	.quad	0x401d8d4f9c1f85d7              # double 7.3879989999999998
	.quad	0x40040253111f0c35              # double 2.5011350000000001
	.quad	0x401bd2f3c2dadb83              # double 6.9560079999999997
	.quad	0x4005f37f38c5436c              # double 2.7438950000000002
	.quad	0x401b37fd82773e25              # double 6.804678
	.quad	0x4012336f3b213e3e              # double 4.5502289999999999
	.quad	0x4016250374ff865d              # double 5.5361459999999996
	.quad	0x3ff6a7fd3f5b5fa2              # double 1.416013
	.quad	0x401ca50331e3a7db              # double 7.1611450000000003
	.quad	0x4018e420b3d4ae43              # double 6.2227810000000003
	.quad	0x4020c60c17657753              # double 8.3868109999999998
	.quad	0x4021d29cbab649d4              # double 8.9113520000000008
	.quad	0x4010df49cf56eac8              # double 4.2180549999999997
	.quad	0x401c060e0eb67c28              # double 7.0059129999999996
	.quad	0x3fe5e38a7e73a366              # double 0.68402600000000002
	.quad	0x4021e53e0bd44999              # double 8.9477390000000003
	.quad	0x400541187e7c06e2              # double 2.6567850000000002
	.quad	0x400303022dd7a9a0              # double 2.3764690000000002
	.quad	0x40228c7d805e5f31              # double 9.2743950000000002
	.quad	0x40135255b035bd51              # double 4.8304049999999998
	.quad	0x3fe368d32830a0b2              # double 0.60654600000000003
	.quad	0x3ff630de8f6cefed              # double 1.3869309999999999
	.quad	0x4023b03dff3f0fe0              # double 9.8442229999999995
	.quad	0x401fa8e432441feb              # double 7.9149330000000004
	.quad	0x401b440e5a35d67c              # double 6.8164610000000003
	.quad	0x3fe9bb4f61672325              # double 0.80411500000000002
	.quad	0x4018a911cf355cd9              # double 6.1651069999999999
	.quad	0x3fc8f53c579f2346              # double 0.19498399999999999
	.quad	0x401a4e935b91f70e              # double 6.5767340000000001
	.quad	0x401ecf45e0b4e11e              # double 7.7024150000000002
	.quad	0x400baeebf65dbfcf              # double 3.4604110000000001
	.quad	0x3fdc0bf5d78811b2              # double 0.43823000000000001
	.quad	0x3fc5f4cb1897a67a              # double 0.17153299999999999
	.quad	0x40068de093532e7b              # double 2.8192759999999999
	.quad	0x400e988fc9363f57              # double 3.8244929999999999
	.quad	0x40125bbb62413db8              # double 4.5895820000000001
	.quad	0x4012540bfe3b03e2              # double 4.582077
	.quad	0x40096d63cb817332              # double 3.1784129999999999
	.quad	0x4017ae004b7f5a53              # double 5.9199229999999998
	.quad	0x401a07de0d66f0d0              # double 6.5076830000000001
	.quad	0x401a6aa53fc00970              # double 6.6041460000000001
	.quad	0x4020ec4e93e1c9b4              # double 8.4615369999999998
	.quad	0x40228bdfd2630ec3              # double 9.2731919999999999
	.quad	0x400449289dadfb50              # double 2.5357219999999998
	.quad	0x4019eadb402d16b9              # double 6.4793519999999996
	.quad	0x4022b3fa2ad3e921              # double 9.3515180000000004
	.quad	0x401de470eb24a6a8              # double 7.4730869999999995
	.quad	0x4019eb8bac710cb3              # double 6.4800250000000004
	.quad	0x3fe50f4b61fe21d9              # double 0.65811699999999995
	.quad	0x401c86256366d7a5              # double 7.1310019999999996
	.quad	0x401170b630a91538              # double 4.3600700000000003
	.quad	0x401b2d9f4d37c137              # double 6.7945529999999996
	.quad	0x3fe6a263d816aceb              # double 0.70732300000000004
	.quad	0x3fdbf444e0daa0cb              # double 0.43678400000000001
	.quad	0x40145601797cc3a0              # double 5.08399
	.quad	0x401da2fcac8e68e4              # double 7.4091670000000001
	.quad	0x402050420f6f08cc              # double 8.1567539999999993
	.quad	0x4002679357603926              # double 2.3005740000000001
	.quad	0x40230a6202539757              # double 9.5202790000000003
	.quad	0x40112caf2d7f950c              # double 4.2936370000000004
	.quad	0x401ba82a5614df8b              # double 6.9142239999999999
	.quad	0x400b8bc48f10a99b              # double 3.4432459999999998
	.quad	0x401bd03eea209aaa              # double 6.9533649999999998
	.quad	0x4013e2c5e2cdc012              # double 4.9714580000000002
	.quad	0x4014d91c4b90214b              # double 5.2120220000000002
	.quad	0x402222b367a0f909              # double 9.0677749999999993
	.quad	0x3ffa93d859c8c932              # double 1.661095
	.quad	0x4015aec4a4095f24              # double 5.4206719999999997
	.quad	0x3fee2400fba8826b              # double 0.94189500000000004
	.quad	0x4006eb8f9b13165d              # double 2.8650199999999999
	.quad	0x3ff270bae89eba6b              # double 1.152522
	.quad	0x4017fcfbb949624a              # double 5.9970540000000003
	.quad	0x4012e5703f2d3c79              # double 4.7240609999999998
	.quad	0x3fe76559f6ec5b08              # double 0.73112200000000005
	.quad	0x3ffc5791819d2392              # double 1.771379
	.quad	0x40199795703f2d3c              # double 6.3980309999999996
	.quad	0x4017d4cc25072086              # double 5.9578100000000003
	.quad	0x4019436a832b990b              # double 6.315836
	.quad	0x4010204af922962d              # double 4.031536
	.quad	0x40106025bfad2999              # double 4.0938939999999997
	.quad	0x4015aefcbd556085              # double 5.4208860000000003
	.quad	0x3ffb206b7aa25d8d              # double 1.6954149999999999
	.quad	0x40145a40d90e23af              # double 5.0881379999999998
	.quad	0x3ff365fa658c4bd3              # double 1.2123969999999999
	.quad	0x401e3195cc857f30              # double 7.5484229999999997
	.quad	0x40219906ee30caa3              # double 8.7988809999999997
	.quad	0x4017cb9d7fd82774              # double 5.9488430000000001
	.quad	0x4018c060fe47991c              # double 6.1878700000000002
	.quad	0x401a3627bf61aa3f              # double 6.552886
	.quad	0x40095f7be121ee67              # double 3.1716229999999999
	.quad	0x401038e432441feb              # double 4.0555580000000004
	.quad	0x40141a9973d9ec70              # double 5.025976
	.quad	0x40047083558a7610              # double 2.5549379999999999
	.quad	0x4019e8a0d349be90              # double 6.477176
	.quad	0x4006a02e2328f9f4              # double 2.8282129999999999
	.quad	0x3ff7e99a62ed3522              # double 1.494532
	.quad	0x40229e071c53f39d              # double 9.3086479999999998
	.quad	0x401a029a1b9f98b7              # double 6.5025409999999999
	.quad	0x3ff0deb7457c0b13              # double 1.0543739999999999
	.quad	0x40108746887a8d65              # double 4.1321050000000001
	.quad	0x4020b8ba83f4eca7              # double 8.3607980000000008
	.quad	0x40042b242070b8d0              # double 2.5210650000000001
	.quad	0x3f71e53a81dc0db2              # double 0.0043689999999999996
	.quad	0x402023bd3804534c              # double 8.0698030000000002
	.quad	0x40176e4c942d490e              # double 5.8577139999999996
	.quad	0x40125b9170d62bf1              # double 4.5894219999999999
	.quad	0x4006a65300581494              # double 2.831213
	.quad	0x401e2f850df15a4b              # double 7.5464060000000001
	.quad	0x401058ed1bf7ad4b              # double 4.0868419999999999
	.quad	0x4010e9cd8127b2cc              # double 4.2283229999999996
	.quad	0x3ff852817763e4ac              # double 1.520143
	.quad	0x40115acf312b1b37              # double 4.3386810000000002
	.quad	0x40019a9435ac8a37              # double 2.2004779999999999
	.quad	0x3fe3dc422036006d              # double 0.62063699999999999
	.quad	0x40203b11409a2403              # double 8.1153659999999999
	.quad	0x401d2c7607c419a0              # double 7.2934190000000001
	.quad	0x401f64f50a02b841              # double 7.8485909999999998
	.quad	0x400190867ad8e432              # double 2.1955689999999999
	.quad	0x4005a4f09528f191              # double 2.7055370000000001
	.quad	0x401346dc5d638866              # double 4.8192000000000004
	.quad	0x401bd909289dadfb              # double 6.9619489999999997
	.quad	0x4023798bf7f06706              # double 9.7373960000000004
	.quad	0x3fd917d2849cb253              # double 0.39207900000000001
	.quad	0x401935532617c1be              # double 6.3020750000000003
	.quad	0x401acb8d82342246              # double 6.6987819999999996
	.quad	0x400292de43ed959a              # double 2.3217129999999999
	.quad	0x4013385dfa871a3b              # double 4.8050459999999999
	.quad	0x40080fe9b7bf1e8e              # double 3.0077699999999998
	.quad	0x40152897204295a7              # double 5.2896390000000002
	.quad	0x3fc7694467381d7e              # double 0.18290000000000001
	.quad	0x401957b1c0010c6f              # double 6.3356389999999996
	.quad	0x3fee667f90d9d777              # double 0.95001199999999997
	.quad	0x3fef090d5a5b9629              # double 0.96985500000000002
	.quad	0x4020dd80e496edee              # double 8.4326240000000006
	.quad	0x4023923f67f4dbe0              # double 9.7856400000000008
	.quad	0x401d0eae5bc87db3              # double 7.2643370000000003
	.quad	0x401ddf5275ee99a6              # double 7.4680879999999998
	.quad	0x401edb3dd11be6e6              # double 7.7141029999999997
	.quad	0x4014599fa11a975b              # double 5.087523
	.quad	0x4008cf893faf4278              # double 3.1013359999999999
	.quad	0x40202c0db2702a35              # double 8.0860420000000008
	.quad	0x400e05321e603d57              # double 3.7525369999999998
	.quad	0x4004637824d4cb9f              # double 2.5485690000000001
	.quad	0x40182d1351159c49              # double 6.0440189999999996
	.quad	0x40223d7cd466f502              # double 9.1200930000000007
	.quad	0x4021e7c115df6556              # double 8.9526450000000004
	.quad	0x40216110c2c5e2ce              # double 8.6895810000000004
	.quad	0x401437525460aa65              # double 5.0540250000000002
	.quad	0x40218e6490a350d3              # double 8.7781110000000009
	.quad	0x400551f70de8f6cf              # double 2.665022
	.quad	0x4021ce195464dc23              # double 8.9025370000000006
	.quad	0x4014269057d1782d              # double 5.0376599999999998
	.quad	0x402228e325d4a5df              # double 9.0798579999999998
	.quad	0x401de022dd7a99fa              # double 7.4688829999999999
	.quad	0x400334ee392e1ef7              # double 2.4008449999999999
	.quad	0x401d8da0168b5cc0              # double 7.388306
	.quad	0x40219aa433508f65              # double 8.8020340000000008
	.quad	0x4020f9487768166a              # double 8.4868810000000003
	.quad	0x401397995ee136e7              # double 4.8980459999999999
	.quad	0x40197b02d59d55e7              # double 6.3701280000000002
	.quad	0x4008169d30270f39              # double 3.0110420000000002
	.quad	0x401baf038e29f9cf              # double 6.9209120000000004
	.quad	0x401c742784a9478d              # double 7.1134320000000004
	.quad	0x4014f647778dd617              # double 5.240507
	.quad	0x3fe3dbcec84f8f8a              # double 0.62058199999999997
	.quad	0x3ff0346887a8d64d              # double 1.0127949999999999
	.quad	0x3fee92a94ff0025c              # double 0.955403
	.quad	0x40225f5536933a04              # double 9.1861969999999999
	.quad	0x400b921682f94424              # double 3.446332
	.quad	0x400c7a76534373f3              # double 3.559796
	.quad	0x3ff480096feb4a66              # double 1.2812589999999999
	.quad	0x3fd845cfede97d07              # double 0.37926100000000001
	.quad	0x40058e6fb4c3c18b              # double 2.6945489999999999
	.quad	0x4003a7357e670e2c              # double 2.456645
	.quad	0x401cf38e6d15ad10              # double 7.2378479999999996
	.quad	0x3ff393a0c6b484d7              # double 1.2235419999999999
	.quad	0x4018ed29131ec0b5              # double 6.2316019999999996
	.quad	0x40139e368f084620              # double 4.9045050000000003
	.quad	0x3ff6781d7dbf4880              # double 1.404325
	.quad	0x401747acc4ef88b9              # double 5.8199949999999996
	.quad	0x40218040181e03f7              # double 8.750489
	.quad	0x402086542e557de1              # double 8.2623610000000003
	.quad	0x401b87d5ed06fef8              # double 6.8826520000000002
	.quad	0x4021b23cea6c1a05              # double 8.8481210000000008
	.quad	0x4014d137f38c5437              # double 5.2043150000000002
	.quad	0x3fccac29bf162ae5              # double 0.22400400000000001
	.quad	0x400906cb966be7b0              # double 3.1283180000000002
	.quad	0x4012ed98bf7f0670              # double 4.7320279999999997
	.quad	0x3ff58c4588a04d12              # double 1.346746
	.quad	0x400022f405f6ba06              # double 2.0170669999999999
	.quad	0x402140c0ad03d9a9              # double 8.6264699999999994
	.quad	0x400f3e9b7bf1e8e6              # double 3.90557
	.quad	0x401f7f50e3476295              # double 7.8743319999999998
	.quad	0x40148c63f141205c              # double 5.1371000000000002
	.quad	0x3fef81de26916441              # double 0.984603
	.quad	0x4010f77c45cbbc2c              # double 4.2416850000000004
	.quad	0x401b589374bc6a7f              # double 6.8365
	.quad	0x400d6fee6fb4c3c2              # double 3.6796540000000002
	.quad	0x3ff4e2d72ffd1dcd              # double 1.3053809999999999
	.quad	0x3ff4340d4dc65c70              # double 1.2627079999999999
	.quad	0x40187a7ce0fc2eba              # double 6.1196169999999999
	.quad	0x401eb4b51372a38c              # double 7.6764720000000004
	.quad	0x4001db66f9335d25              # double 2.2321300000000002
	.quad	0x401149a38fbca106              # double 4.3219130000000003
	.quad	0x3ff81cd1c7de5083              # double 1.507036
	.quad	0x4004084b5dcc63f1              # double 2.5040499999999999
	.quad	0x40238934ce3de615              # double 9.7679810000000006
	.quad	0x3ffbb838c111ada7              # double 1.7324759999999999
	.quad	0x3ff8345cfede97d0              # double 1.5127839999999999
	.quad	0x40220df3519bd406              # double 9.0272469999999991
	.quad	0x401598be2f7b17ce              # double 5.3991629999999997
	.quad	0x3ff35693c03bc4d2              # double 1.208637
	.quad	0x400f8ffb8b263950              # double 3.9453040000000001
	.quad	0x4013ee5d18090b41              # double 4.9827769999999996
	.quad	0x4022786940357a35              # double 9.2351779999999994
	.quad	0x3fee144cbe1eb420              # double 0.93997799999999998
	.quad	0x401d88dfbd6a593a              # double 7.3836659999999998
	.quad	0x3ffde467be553ac5              # double 1.868263
	.quad	0x400320d23d4f15e8              # double 2.3910260000000001
	.quad	0x4018300000000000              # double 6.046875
	.quad	0x400e68b97785729b              # double 3.8011349999999999
	.quad	0x401f61ca3a4b5569              # double 7.845498
	.quad	0x3feb1dbec2480e8d              # double 0.84738100000000005
	.quad	0x3fd8e29b6b2af145              # double 0.38883099999999998
	.quad	0x3fd988bda9435ac9              # double 0.39897100000000002
	.quad	0x40226fbd48cb4aed              # double 9.2182410000000008
	.quad	0x401b6778140dd3fe              # double 6.8510439999999999
	.quad	0x4019796b76709fa5              # double 6.3685739999999997
	.quad	0x4021ff0e0a84be40              # double 8.9981539999999995
	.quad	0x40013f44d4456712              # double 2.1558929999999998
	.quad	0x402359eabbcb1cc9              # double 9.6756189999999993
	.quad	0x4011ae44fa05143c              # double 4.420185
	.quad	0x3ffc67a52ac753e7              # double 1.775304
	.quad	0x40055ecb31c219eb              # double 2.6712859999999998
	.quad	0x40233076188b1141              # double 9.5946510000000007
	.quad	0x4021ea1cac083127              # double 8.9572500000000002
	.quad	0x3ff9e86b59146e4c              # double 1.619243
	.quad	0x401d5ae685db76b4              # double 7.3387700000000002
	.quad	0x4022b9cf56eac860              # double 9.3629099999999994
	.quad	0x3ff70f47304039ac              # double 1.44123
	.quad	0x4006e873bc903ea7              # double 2.863502
	.quad	0x4018ef4e0114d2f6              # double 6.2336960000000001
	.quad	0x400e11b60ae9680e              # double 3.758648
	.quad	0x40109d15f02c4d66              # double 4.1534040000000001
	.quad	0x40097e9d0e991ff7              # double 3.186823
	.quad	0x401edc5f394b7b29              # double 7.7152070000000003
	.quad	0x4023c0112ba16e7a              # double 9.8751309999999997
	.quad	0x4022458cd20afa2f              # double 9.13584
	.quad	0x402010409e55c0fd              # double 8.0317430000000005
	.quad	0x4011a2dc2b0ea183              # double 4.4090429999999996
	.quad	0x401bcd3d4280ae10              # double 6.9504289999999997
	.quad	0x4004e17a89331a09              # double 2.6100970000000001
	.quad	0x3fe7c8cd63cb8173              # double 0.74326199999999998
	.quad	0x3ff61c55000c953a              # double 1.3819170000000001
	.quad	0x3ff887f023e9ea14              # double 1.533188
	.quad	0x401a6c28f5c28f5c              # double 6.6056249999999999
	.quad	0x40186eb5f5f0b285              # double 6.1081159999999999
	.quad	0x401f57a3db3bfb59              # double 7.8355860000000001
	.quad	0x40225e80bed740c4              # double 9.1845759999999998
	.quad	0x4023ab671ac14c66              # double 9.8347709999999999
	.quad	0x400cba072d1aeb3e              # double 3.5908340000000001
	.quad	0x3fca79f666234a88              # double 0.206847
	.quad	0x4014e87a4a48f96e              # double 5.2270289999999999
	.quad	0x40058a9478c868ba              # double 2.692666
	.quad	0x40038637bd05af6c              # double 2.4405359999999998
	.quad	0x3ffb27503b81b64e              # double 1.697098
	.quad	0x4021957e670e2c13              # double 8.7919800000000006
	.quad	0x4010cbda9435ac8a              # double 4.1990759999999998
	.quad	0x40051d92b7fe08af              # double 2.63944
	.quad	0x40226911ada76d98              # double 9.2052130000000005
	.quad	0x40131a6b0d9513f9              # double 4.7757990000000001
	.quad	0x400825c13fd0d068              # double 3.0184350000000002
	.quad	0x401389af5ba2be06              # double 4.8844580000000004
	.quad	0x40214d3b8e4b87be              # double 8.6508450000000003
	.quad	0x4018c65bea0ba1f5              # double 6.1937100000000003
	.quad	0x4016dfe4bcad9ad8              # double 5.7186459999999997
	.quad	0x402235dbfceb7889              # double 9.1051939999999991
	.quad	0x4023f78db4890929              # double 9.9835030000000006
	.quad	0x401745f5275ee99a              # double 5.8183179999999997
	.quad	0x4022b3d2fa0d77b8              # double 9.3512190000000003
	.quad	0x4019f841aac53b08              # double 6.4924379999999999
	.quad	0x4013fdb163baba7c              # double 4.9977470000000004
	.quad	0x40157a704bc27632              # double 5.3695690000000003
	.quad	0x40210f81a5870da6              # double 8.5302860000000003
	.quad	0x4005074299d883ba              # double 2.6285449999999999
	.quad	0x40012fd5454152b1              # double 2.1483560000000002
	.quad	0x3fea800eae18ac9f              # double 0.82813199999999998
	.quad	0x3ff58c6f7a0b5ed9              # double 1.346786
	.quad	0x4022c11600f34507              # double 9.3771210000000007
	.quad	0x4012b387df5cf249              # double 4.6753229999999997
	.quad	0x3ffb56d6dc1a47aa              # double 1.708701
	.quad	0x4020ec92ddbdb5d9              # double 8.4620580000000007
	.quad	0x4023b651b0ccbc06              # double 9.8560920000000003
	.quad	0x401eb6be37de939f              # double 7.6784600000000002
	.quad	0x400979e518f3eccc              # double 3.1845189999999999
	.quad	0x4012eb72c5197a25              # double 4.7299300000000004
	.quad	0x40231676ea422899              # double 9.5438759999999991
	.quad	0x4015728283d35eb7              # double 5.3618259999999998
	.quad	0x40238940bbb1f256              # double 9.7680720000000001
	.quad	0x4003c244e93e1c9b              # double 2.4698579999999999
	.quad	0x401210053e2d6239              # double 4.5156450000000001
	.quad	0x40133a67e846a5d7              # double 4.8070370000000002
	.quad	0x401782d2bb23571d              # double 5.8777569999999999
	.quad	0x400fdc5d63886595              # double 3.9826000000000001
	.quad	0x40159c881e4712e4              # double 5.402863
	.quad	0x3ff3c195cc857f30              # double 1.2347619999999999
	.quad	0x40224f59253543af              # double 9.1549770000000006
	.quad	0x40183840181e03f7              # double 6.054932
	.quad	0x4006c1b089a02752              # double 2.8445749999999999
	.quad	0x3ff9289a88ace24c              # double 1.5724130000000001
	.quad	0x3ff5ee78183f91e6              # double 1.3707199999999999
	.quad	0x40074902de00d1b7              # double 2.91065
	.quad	0x400ff57c4e2f37fc              # double 3.994866
	.quad	0x40169f88333fc86d              # double 5.6557930000000001
	.quad	0x4012f42aed139431              # double 4.7384449999999996
	.quad	0x401668b6d86ec17f              # double 5.6022600000000002
	.quad	0x40228eb09635610b              # double 9.2786910000000002
	.quad	0x40204bc621b7e0ac              # double 8.1479959999999991
	.quad	0x3fff387ad080b674              # double 1.9512890000000001
	.quad	0x40046db0dd82fd76              # double 2.5535600000000001
	.quad	0x401c09841aac53b1              # double 7.0092930000000004
	.quad	0x400b41a9b8cb8e08              # double 3.4070619999999998
	.quad	0x3ffc999bb2788db0              # double 1.7875019999999999
	.quad	0x4006f64f97edc7ef              # double 2.870269
	.quad	0x4021384e618ce2d2              # double 8.6099730000000001
	.quad	0x402281d3aa369fcf              # double 9.2535679999999996
	.quad	0x400ae5ac471b4784              # double 3.3621449999999999
	.quad	0x400b78fcd67fd3f6              # double 3.4340760000000001
	.quad	0x3fee141a6937d1fe              # double 0.93995399999999996
	.quad	0x40171e1c15097c81              # double 5.7794040000000004
	.quad	0x401c060a63305101              # double 7.0058990000000003
	.quad	0x4011de7a311e85fd              # double 4.467263
	.quad	0x40002832b990afe6              # double 2.019628
	.quad	0x402347969e3c9689              # double 9.6398209999999995
	.quad	0x400fae453d20f2bf              # double 3.9600930000000001
	.quad	0x3fe3569f4906034f              # double 0.60432399999999997
	.quad	0x4022239d5e4a3832              # double 9.0695599999999992
	.quad	0x3ff27dfa00e27e0f              # double 1.155756
	.quad	0x40154d655e28aa43              # double 5.3255819999999998
	.quad	0x3fe0b7ed41b75a75              # double 0.52245200000000003
	.quad	0x3ff68812be48a58b              # double 1.4082209999999999
	.quad	0x3fc29fd7a13c254a              # double 0.14550299999999999
	.quad	0x3fdc4934267839ce              # double 0.44196800000000003
	.quad	0x400aebfa0945f9df              # double 3.3652229999999999
	.quad	0x4007ad173fb7a5f4              # double 2.959517
	.quad	0x40022310dbf0563f              # double 2.2671220000000001
	.quad	0x40055763e4abe6a3              # double 2.6676709999999999
	.quad	0x401165104d551d69              # double 4.3486950000000002
	.quad	0x40195ef88b977857              # double 6.3427449999999999
	.quad	0x4022bccdd93c46d8              # double 9.3687579999999996
	.quad	0x400258383ad9f0a2              # double 2.2930760000000001
	.quad	0x4022c2dbe7f2c301              # double 9.3805840000000006
	.quad	0x401e65a250f84018              # double 7.5992519999999998
	.quad	0x4011c4e7ab756430              # double 4.4422899999999998
	.quad	0x4009453b8e4b87be              # double 3.1588050000000001
	.quad	0x4019bf6f8f041462              # double 6.4369490000000003
	.quad	0x402001b584b1ab08              # double 8.0033379999999994
	.quad	0x3fea106034f3fd93              # double 0.81449899999999997
	.quad	0x4003cbae89eba6ad              # double 2.4744540000000002
	.quad	0x400e770d62bf11f9              # double 3.8081309999999999
	.quad	0x3fdf2ff4ba51a006              # double 0.48730200000000001
	.quad	0x40228a7e9531550d              # double 9.2704970000000007
	.quad	0x4022c8fabda0dfdf              # double 9.392538
	.quad	0x3ffa99cbee807bbb              # double 1.6625479999999999
	.quad	0x40029ddf43c7d5ed              # double 2.327086
	.quad	0x400c620a30db6a1f              # double 3.5478710000000002
	.quad	0x4023f8d0cc35ce18              # double 9.9859679999999997
	.quad	0x401a7a5ca29845dd              # double 6.6194940000000004
	.quad	0x40214423b7952d23              # double 8.6330849999999995
	.quad	0x3ffc5438d1d8a548              # double 1.770562
	.quad	0x400f9c896dd26b72              # double 3.9514339999999999
	.quad	0x4013119fc2a8869c              # double 4.7672109999999996
	.quad	0x4023a3ea0ba1f4b2              # double 9.8201450000000001
	.quad	0x4010031f8a0902de              # double 4.00305
	.quad	0x40193f572de43ed9              # double 6.3118559999999997
	.quad	0x401c45e9e1b089a0              # double 7.0682749999999999
	.quad	0x4011afb9bed30f06              # double 4.4216069999999998
	.quad	0x401b155de58e64b2              # double 6.7708659999999998
	.quad	0x3ff3badf2ecf2064              # double 1.233123
	.quad	0x401510dc768dfbd7              # double 5.2664660000000003
	.quad	0x40076a393ee5eedd              # double 2.9268670000000001
	.quad	0x3ff9c9dbec2480e9              # double 1.611782
	.quad	0x4022eea5b530ced5              # double 9.4661080000000001
	.quad	0x401aa8e5c4eb56fc              # double 6.6649390000000004
	.quad	0x4003d7739f340d4e              # double 2.4802010000000001
	.quad	0x401f8bead4f5903a              # double 7.8866379999999996
	.quad	0x401423d25247cb71              # double 5.0349820000000003
	.quad	0x400798d25edd0529              # double 2.9496199999999999
	.quad	0x40195b955f78359c              # double 6.3394370000000002
	.quad	0x400c8b50b0f27bb3              # double 3.568025
	.quad	0x4009531ca7d6733f              # double 3.1655820000000001
	.quad	0x401a226b2f23033a              # double 6.5336119999999998
	.quad	0x4021243e10060781              # double 8.570786
	.quad	0x4018e63d3e4ef028              # double 6.2248429999999999
	.quad	0x4020a92ee84ad795              # double 8.3304360000000006
	.quad	0x402031fbc5de9c02              # double 8.0976239999999997
	.quad	0x3fd0aa9f7b5aea31              # double 0.26041399999999998
	.quad	0x40237b076c050bd8              # double 9.7402909999999991
	.quad	0x3ff1515df6555c53              # double 1.082365
	.quad	0x401931a5ca29845e              # double 6.2984840000000002
	.quad	0x401ede3eaf6837f8              # double 7.7170360000000002
	.quad	0x4013fa1c68ec52a4              # double 4.9942489999999999
	.quad	0x3fd9dcfcc5b8dc55              # double 0.404113
	.quad	0x4011a9930be0ded3              # double 4.4156000000000004
	.quad	0x40139beb18116ebd              # double 4.9022639999999997
	.quad	0x4021e1b34a44c7b0              # double 8.9408209999999997
	.quad	0x4008e5e4606748e4              # double 3.1122519999999998
	.quad	0x4013089b951c5c57              # double 4.7584059999999999
	.quad	0x401aaaffb04ee7c5              # double 6.6669910000000003
	.quad	0x401b24178705425f              # double 6.7852459999999999
	.quad	0x3ffaa0ac7da1ec4e              # double 1.6642269999999999
	.quad	0x4012094ab1d4f9c2              # double 4.509074
	.quad	0x4020c7e82517e77d              # double 8.3904429999999994
	.quad	0x40195b152f3c2dae              # double 6.3389480000000002
	.quad	0x401783baba7b9171              # double 5.8786420000000001
	.quad	0x40220bad7d7c2ca1              # double 9.0228079999999995
	.quad	0x401a677dd872f33d              # double 6.6010660000000003
	.quad	0x4020ae6ba493c89f              # double 8.3406649999999996
	.quad	0x40157d102bc72e27              # double 5.3721319999999997
	.quad	0x400eeb324851a869              # double 3.8648419999999999
	.quad	0x400009d8409e55c1              # double 2.004807
	.quad	0x402071c9d5a187a5              # double 8.2222430000000006
	.quad	0x3fd1a8155d5f56a8              # double 0.27588400000000002
	.quad	0x400d78e64b231401              # double 3.6840329999999999
	.quad	0x3ff3dc0fcb4f1e4b              # double 1.2412259999999999
	.quad	0x40189f2fdb8fde2f              # double 6.155456
	.quad	0x401cbdf2ecf20642              # double 7.1854969999999998
	.quad	0x4021451e321a2e7f              # double 8.6349959999999992
	.quad	0x4019b68ec52a411c              # double 6.4282789999999999
	.quad	0x402324b295e9e1b1              # double 9.5716750000000008
	.quad	0x40181221858bc59c              # double 6.0177060000000004
	.quad	0x3fb9425f202107b8              # double 0.098669000000000007
	.quad	0x400460053e2d6239              # double 2.5468850000000001
	.quad	0x4020218a009f6230              # double 8.0655059999999992
	.quad	0x401a15903a7546d4              # double 6.521058
	.quad	0x3fee1db0142f61ed              # double 0.94112399999999996
	.quad	0x400fb0292817763e              # double 3.9610159999999999
	.quad	0x3f7ee136e71cda2b              # double 0.0075389999999999997
	.quad	0x40204a35d67ba238              # double 8.1449420000000003
	.quad	0x4013bc0d6f544bb2              # double 4.9336450000000003
	.quad	0x4022619bf5946c33              # double 9.1906429999999997
	.quad	0x401c92730c671690              # double 7.1430170000000004
	.quad	0x401c21a3f4666eca              # double 7.0328520000000001
	.quad	0x4005ab54e2b063e0              # double 2.7086579999999998
	.quad	0x4021cdbbe0157eed              # double 8.9018239999999995
	.quad	0x4008a254a3c64346              # double 3.0792630000000001
	.quad	0x40168577531db446              # double 5.6303380000000001
	.quad	0x400a4f3fd933e35c              # double 3.2886959999999998
	.quad	0x3ff547b45f17bd8c              # double 1.330006
	.quad	0x40062a6d26740810              # double 2.7707160000000002
	.quad	0x3fe73239a38fbca1              # double 0.724881
	.quad	0x4014cfc4c165907e              # double 5.2028990000000004
	.quad	0x401567be553ac4f8              # double 5.3513120000000001
	.quad	0x401ac913e81450f0              # double 6.6963650000000001
	.quad	0x40116a087ca643cc              # double 4.353548
	.quad	0x4012148344c37e6f              # double 4.5200319999999996
	.quad	0x401c22fad6cb5350              # double 7.03416
	.quad	0x401d77de5082cf53              # double 7.3670590000000002
	.quad	0x402042ff6d330942              # double 8.1308550000000004
	.quad	0x3fe143efae7924af              # double 0.53954299999999999
	.quad	0x4010eebbfd71b047              # double 4.2331390000000004
	.quad	0x400cbb98c7e28241              # double 3.5916000000000001
	.quad	0x402155b9e8c47a18              # double 8.6674340000000001
	.quad	0x401aafcdab191dde              # double 6.6716829999999998
	.quad	0x3ff0a1869835158c              # double 1.0394350000000001
	.quad	0x4009a7dfe32a0664              # double 3.2069700000000001
	.quad	0x3fca653868fd199c              # double 0.20621400000000001
	.quad	0x4016e97cc39ffd61              # double 5.7280150000000001
	.quad	0x4004b20ea5b530cf              # double 2.5869420000000001
	.quad	0x401c5c243dccea29              # double 7.089982
	.quad	0x40207e362a5e785b              # double 8.2465069999999994
	.quad	0x401e75015c209247              # double 7.6142630000000002
	.quad	0x40083d188f42fe82              # double 3.0298319999999999
	.quad	0x4022145a5fc7e6b4              # double 9.039752
	.quad	0x401d0fec99f1ae2e              # double 7.2655510000000003
	.quad	0x401b0f444e0daa0d              # double 6.7649090000000003
	.quad	0x401b10aed99cbee8              # double 6.766292
	.quad	0x3fdd6ae7d566cf42              # double 0.45965
	.quad	0x400380b912dba4d7              # double 2.437853
	.quad	0x40083b4edb2f661f              # double 3.028959
	.quad	0x40190512231832fd              # double 6.2549520000000003
	.quad	0x401928b4bf8fcd68              # double 6.289752
	.quad	0x400c4916ca46e08f              # double 3.5356879999999999
	.quad	0x401e7a3ca7503b82              # double 7.6193720000000003
	.quad	0x40115fde7210be94              # double 4.3436219999999999
	.quad	0x40016390c9107faa              # double 2.173616
	.quad	0x401007c5ac471b48              # double 4.0075900000000004
	.quad	0x401204f5d35653ca              # double 4.5048440000000003
	.quad	0x3ff59f14983d7907              # double 1.3513379999999999
	.quad	0x401c724d4cb9ecf6              # double 7.1116229999999998
	.quad	0x40028ac18f81e8a3              # double 2.317752
	.quad	0x4019f98fa376922e              # double 6.4937120000000004
	.quad	0x40236826edaa92e6              # double 9.7034219999999998
	.quad	0x401c847a17f4128c              # double 7.129372
	.quad	0x401a476f2a5a469d              # double 6.5697599999999996
	.quad	0x3fd3c23fab10ba62              # double 0.30873099999999998
	.quad	0x3ff2fdef8487b99d              # double 1.1869959999999999
	.quad	0x3ff7951a437824d5              # double 1.473902
	.quad	0x4021260bb2bba98f              # double 8.5743080000000003
	.quad	0x4019e5cfaacd9e84              # double 6.4744250000000001
	.quad	0x4021b565a14488c6              # double 8.8542909999999999
	.quad	0x40018747d805e5f3              # double 2.191055
	.quad	0x4020b191bc558644              # double 8.3468149999999994
	.quad	0x3fe8a556d19dece5              # double 0.77018299999999995
	.quad	0x3f97b56b87379746              # double 0.023153
	.quad	0x40216c51fc4c1659              # double 8.7115629999999999
	.quad	0x4021c013cab81f97              # double 8.8751510000000007
	.quad	0x40189b0f27bb2fec              # double 6.1514249999999997
	.quad	0x401912e83a109d06              # double 6.2684639999999998
	.quad	0x40054b88ca3e7d13              # double 2.6618819999999999
	.quad	0x3fb9cb35f3d7d391              # double 0.100757
	.quad	0x4021b70bf1a5ca2a              # double 8.8575130000000009
	.quad	0x3ffded080b673c4f              # double 1.8703689999999999
	.quad	0x400c15ad96a6a012              # double 3.5105849999999998
	.quad	0x3fd77af20ea5b531              # double 0.36687900000000001
	.quad	0x4019efe047d3d428              # double 6.484254
	.quad	0x401e51c9f72f76e6              # double 7.5798719999999999
	.quad	0x401c0839cd8127b3              # double 7.0080330000000002
	.quad	0x4017a3422467be55              # double 5.9094319999999998
	.quad	0x3ffddd14e3bcd35b              # double 1.8664750000000001
	.quad	0x4021de9f6a93f291              # double 8.9348100000000006
	.quad	0x400f73de1e2de871              # double 3.9315760000000002
	.quad	0x40237ebedfa43fe6              # double 9.7475500000000004
	.quad	0x4023a9aaa3ad18d2              # double 9.8313799999999993
	.quad	0x4001c38da3c21188              # double 2.220485
	.quad	0x4019d59ff4fd6d7f              # double 6.4586180000000004
	.quad	0x4016d8e10cf5b1c8              # double 5.7117959999999997
	.quad	0x3fe9de2478854cdb              # double 0.80836699999999995
	.quad	0x401d33dbc23315d7              # double 7.300643
	.quad	0x4006cc27a63736ce              # double 2.849685
	.quad	0x4016bd57ff9b5632              # double 5.6849059999999998
	.quad	0x401b1d4845132f88              # double 6.7785960000000003
	.quad	0x401d561bb05faebc              # double 7.3340899999999998
	.quad	0x401544f3775b8130              # double 5.3173349999999999
	.quad	0x4023f2c471b47842              # double 9.9741549999999997
	.quad	0x400fc58bc59b8024              # double 3.9714580000000002
	.quad	0x4023d63b03e20cd0              # double 9.9184190000000001
	.quad	0x40113b606b7aa25e              # double 4.3079850000000004
	.quad	0x4014380e8c8abd5e              # double 5.0547430000000002
	.quad	0x4010e3269df97aab              # double 4.2218270000000002
	.quad	0x400cd6bfca85cab0              # double 3.6048580000000001
	.quad	0x4021f98c3b0c4589              # double 8.9873980000000007
	.quad	0x3fa2dc8fb86f47b6              # double 0.036838999999999997
	.quad	0x401f265cf67b1c00              # double 7.7874639999999999
	.quad	0x4013a1ac57e23f25              # double 4.9078840000000001
	.quad	0x4018902e6644d877              # double 6.1408019999999999
	.quad	0x40085078d92fb19e              # double 3.0392929999999998
	.quad	0x4020f5d249e44fa0              # double 8.4801199999999994
	.quad	0x3ff1a3f4666ec9e2              # double 1.102528
	.quad	0x40223c152b0a6fc6              # double 9.1173490000000008
	.quad	0x40225a4873365882              # double 9.1763340000000007
	.quad	0x402092077036c9c1              # double 8.2852130000000006
	.quad	0x40051b927d45a5fc              # double 2.6384629999999998
	.quad	0x3fab992c8c5004fb              # double 0.053903
	.quad	0x3ff07161a1db877b              # double 1.0276810000000001
	.quad	0x401f6e2d6238da3c              # double 7.8575949999999999
	.quad	0x40073cae21101b00              # double 2.9046289999999999
	.quad	0x401216e75ff609dd              # double 4.522367
	.quad	0x3febc5bd0e12e83a              # double 0.86788799999999999
	.quad	0x3fe91351159c4977              # double 0.78360799999999997
	.quad	0x4023a90ea9e6eeb7              # double 9.8301899999999999
	.quad	0x401aba0cae642bfa              # double 6.6816890000000004
	.quad	0x4020c20a958537e3              # double 8.3789870000000004
	.quad	0x401b84e65bea0ba2              # double 6.879785
	.quad	0x4022fea012599ed8              # double 9.4973150000000003
	.quad	0x4021e3c98a222d51              # double 8.9448969999999992
	.quad	0x40156f1950331e3a              # double 5.3584949999999996
	.quad	0x3fea7ad080b673c5              # double 0.82749200000000001
	.quad	0x401053dd97f62b6b              # double 4.0819000000000001
	.quad	0x4016ca554b8bef8d              # double 5.6975910000000001
	.quad	0x4023f5fdcdf69878              # double 9.9804519999999996
	.quad	0x3ff87b85e80bed74              # double 1.530157
	.quad	0x4010951ce28ed5f1              # double 4.1456179999999998
	.quad	0x401a397c80841ede              # double 6.5561389999999999
	.quad	0x400985ce5b4245f6              # double 3.1903350000000001
	.quad	0x401ffed4a1ad6452              # double 7.9988580000000002
	.quad	0x40234ca1059ea572              # double 9.6496659999999999
	.quad	0x40222e0221426fe7              # double 9.0898599999999998
	.quad	0x3fe2f1a7e3087875              # double 0.59199900000000005
	.quad	0x401ff582dbe7f2c3              # double 7.9897569999999999
	.quad	0x4022fce703afb7e9              # double 9.4939499999999998
	.quad	0x3ff75ff3f0fe047d              # double 1.4609259999999999
	.quad	0x4021d6b67c286f8b              # double 8.9193610000000003
	.quad	0x4014d3ac929aa1d7              # double 5.2067129999999997
	.quad	0x4017da272862f599              # double 5.9630400000000003
	.quad	0x401cbd0d49949e88              # double 7.1846209999999999
	.quad	0x3ff0071a3b14a904              # double 1.0017339999999999
	.quad	0x40239cde3b8a19ca              # double 9.8063830000000003
	.quad	0x401c9533b1077469              # double 7.1457050000000004
	.quad	0x40198ef34d6a161e              # double 6.3895999999999997
	.quad	0x4008f8537e2c55c9              # double 3.1212529999999998
	.quad	0x4018467c286f8ad2              # double 6.0688329999999997
	.quad	0x400a97cf5f4e4431              # double 3.3241260000000001
	.quad	0x402291c58255b036              # double 9.2847100000000005
	.quad	0x401ead5a5b9628cc              # double 7.6692900000000002
	.quad	0x4013ac8cd63cb817              # double 4.9185059999999998
	.quad	0x4007a1fc08fa7a85              # double 2.954094
	.quad	0x401067e175d13d75              # double 4.1014460000000001
	.quad	0x402285c91d14e3bd              # double 9.2613000000000003
	.quad	0x400e551e75360d02              # double 3.7915619999999999
	.quad	0x40125d028a1dfb94              # double 4.5908300000000004
	.quad	0x4000a0c308feac43              # double 2.078497
	.quad	0x4023504189374bc7              # double 9.6567500000000006
	.quad	0x3fe6ac2bd7f51efb              # double 0.70851699999999995
	.quad	0x4018b536933a0408              # double 6.1769660000000002
	.quad	0x40108f05a708ede5              # double 4.1396699999999997
	.quad	0x400392a9d627bf62              # double 2.4466130000000001
	.quad	0x40233ed740c4156e              # double 9.6227359999999997
	.quad	0x401c815d701d9f4d              # double 7.1263329999999998
	.quad	0x3ff3e4d3bf2f5558              # double 1.243366
	.quad	0x400faf837b4a233a              # double 3.9607000000000001
	.quad	0x40217272ead9274e              # double 8.7235329999999998
	.quad	0x402189b8023a6ce3              # double 8.7689819999999994
	.quad	0x400e4af1cb89d6ae              # double 3.786594
	.quad	0x4023818b71b8aa00              # double 9.7530169999999998
	.quad	0x3f8c9eecbfb15b57              # double 0.013975
	.quad	0x4009cca793576039              # double 3.2249289999999999
	.quad	0x40186d14a0a0f4d8              # double 6.1065240000000003
	.quad	0x3faa04d12018a43c              # double 0.050818000000000002
	.quad	0x40230b4528283d36              # double 9.5220120000000001
	.quad	0x3ff3ebe48a58b3f6              # double 1.2450909999999999
	.quad	0x4022af00abf76a2f              # double 9.3418019999999995
	.quad	0x401c7b228dc981bf              # double 7.1202490000000003
	.quad	0x401afbdf8f473040              # double 6.7459699999999998
	.quad	0x4022c3a9d1f60179              # double 9.3821549999999991
	.quad	0x4018dbd017dae819              # double 6.2146610000000004
	.quad	0x4018e945b6c3760c              # double 6.227805
	.quad	0x4012b845132f87ad              # double 4.679951
	.quad	0x401814866a11ec92              # double 6.0200440000000004
	.quad	0x3fe0c898f605ab3b              # double 0.52448700000000004
	.quad	0x3ffc2a161e4f7660              # double 1.760275
	.quad	0x40109355043e5322              # double 4.1438790000000001
	.quad	0x3fe029de8b3b3205              # double 0.50511099999999998
	.quad	0x40237bf37b8d3f18              # double 9.7420919999999995
	.quad	0x4023114445aa2e3c              # double 9.5337239999999994
	.quad	0x4012a2bba98eda23              # double 4.658919
	.quad	0x400d47863beec398              # double 3.6599240000000002
	.quad	0x4022bf7e3d1cc101              # double 9.3740100000000001
	.quad	0x401ba0d73860999e              # double 6.9070710000000002
	.quad	0x4004b4b05b7cfe58              # double 2.5882269999999998
	.quad	0x401214fe79ee02a7              # double 4.5205019999999996
	.quad	0x3fc2c54bcf0b6b6e              # double 0.146646
	.quad	0x3ff37b0e5e679464              # double 1.217543
	.quad	0x3fe5f1151611ba3d              # double 0.68567900000000004
	.quad	0x4022d0ad03d9a954              # double 9.4075699999999997
	.quad	0x40204178f68be2f8              # double 8.1278760000000005
	.quad	0x401c17f455a7d242              # double 7.0233930000000004
	.quad	0x402207b6fe2e6ea8              # double 9.0150679999999994
	.quad	0x40225c679cc74b84              # double 9.1804780000000008
	.quad	0x40204d0b0f27bb30              # double 8.1504750000000001
	.quad	0x400350520d130dfa              # double 2.4142190000000001
	.quad	0x40195d8904f6dfc6              # double 6.3413430000000002
	.quad	0x4003d7739f340d4e              # double 2.4802010000000001
	.quad	0x40204766c6de7642              # double 8.1394559999999991
	.quad	0x401432df9378ee28              # double 5.0496809999999996
	.quad	0x4020775f6fd21ff3              # double 8.2331500000000002
	.quad	0x401d82c6ef3d3a1d              # double 7.3777119999999998
	.quad	0x40159759ab6d00b4              # double 5.3978029999999997
	.quad	0x4012f8d8a979e16d              # double 4.7430139999999996
	.quad	0x4018848a58b3f63c              # double 6.1294339999999998
	.quad	0x4010f185cee17a03              # double 4.235862
	.quad	0x400282cd39da1661              # double 2.3138679999999998
	.quad	0x400a0bca5375c8da              # double 3.255757
	.quad	0x3ff5f0e5e679463d              # double 1.371313
	.quad	0x401ca01cd5f99c39              # double 7.1563600000000003
	.quad	0x401aaff8ec0f8833              # double 6.6718479999999998
	.quad	0x40189c49fd7a13c2              # double 6.1526259999999997
	.quad	0x40067097c80841ee              # double 2.8049770000000001
	.quad	0x401cdedb7281fd9c              # double 7.2176340000000003
	.quad	0x3fb9c5f7c6759ab7              # double 0.100677
	.quad	0x40168738a3b57c4e              # double 5.6320519999999998
	.quad	0x40064f8c64fdb09a              # double 2.7888419999999998
	.quad	0x4020bf995ee136e7              # double 8.3742169999999998
	.quad	0x3feb94f8b588e369              # double 0.86193500000000001
	.quad	0x4015da465a57646b              # double 5.4631590000000001
	.quad	0x401a968a936c58ef              # double 6.6470130000000003
	.quad	0x4006a05d52c16df4              # double 2.828303
	.quad	0x402198301a79feca              # double 8.7972420000000007
	.quad	0x3ffe290364388ebd              # double 1.885013
	.quad	0x4001e1e03f705858              # double 2.2352910000000001
	.quad	0x4017c895d0b73d19              # double 5.9458840000000004
	.quad	0x3ffd53543aeab799              # double 1.8328439999999999
	.quad	0x4017a64e054690de              # double 5.912407
	.quad	0x4004b5f138bcdff0              # double 2.5888390000000001
	.quad	0x401693a4f8726d05              # double 5.6441840000000001
	.quad	0x3ff40c8abd5dc400              # double 1.2530619999999999
	.quad	0x401834113c68661b              # double 6.0508470000000001
	.quad	0x4019df87ad080b67              # double 6.4682909999999998
	.quad	0x4023aa8997c3d684              # double 9.8330809999999999
	.quad	0x4023a8de4c51116b              # double 9.8298210000000008
	.quad	0x40169a5375c8d9f9              # double 5.650709
	.quad	0x4021faec4a4095f2              # double 8.9900839999999995
	.quad	0x400a3c99ae924f22              # double 3.2795899999999998
	.quad	0x4020257b634dad32              # double 8.073207
	.quad	0x401223a57eaa2a0b              # double 4.5348110000000004
	.quad	0x4023cd6e04c05921              # double 9.9012299999999999
	.quad	0x3ff710bd87b56b87              # double 1.441587
	.quad	0x400b5ba01eeed890              # double 3.4197389999999999
	.quad	0x401c9110a137f38c              # double 7.1416649999999997
	.quad	0x40135c8a7a41e57e              # double 4.8403720000000003
	.quad	0x400a7867f0aa21a7              # double 3.308792
	.quad	0x401dff6a50d6b229              # double 7.4994290000000001
	.quad	0x40125af5ba2be059              # double 4.5888280000000004
	.quad	0x401e02cf52b90a78              # double 7.5027439999999998
	.quad	0x3fedfd933e35c5b5              # double 0.93720400000000004
	.quad	0x401b455b4677b396              # double 6.8177310000000002
	.quad	0x3ff6a503fb374363              # double 1.415287
	.quad	0x4009105d95dd4c77              # double 3.1329910000000001
	.quad	0x4020bcea4a8c154d              # double 8.3689750000000007
	.quad	0x40047e81450efdca              # double 2.5617700000000001
	.quad	0x3fa46d3f9e7b80aa              # double 0.039896000000000001
	.quad	0x401afc04c8bc9cd4              # double 6.7461120000000001
	.quad	0x3ff3b5c182ecaeea              # double 1.2318739999999999
	.quad	0x4009e13e3e29307b              # double 3.234982
	.quad	0x4022bf9e3864cb5c              # double 9.3742540000000005
	.quad	0x3fdbdf3300de4c51              # double 0.435498
	.quad	0x400b1c4a83b1d0c8              # double 3.388814
	.quad	0x401aea95c853c148              # double 6.7290869999999998
	.quad	0x40235727bb2fec57              # double 9.6702250000000002
	.quad	0x4013509289dadfb5              # double 4.828684
	.quad	0x4017491600f34507              # double 5.8213730000000004
	.quad	0x40174c61522a6f3f              # double 5.8245899999999997
	.quad	0x40219e7620ee8d11              # double 8.8094950000000001
	.quad	0x4005d6da0168b5cc              # double 2.729908
	.quad	0x3fe748ba83f4eca7              # double 0.72762800000000005
	.quad	0x401e9d612c6ac216              # double 7.6536910000000002
	.quad	0x4023aa20ddc61954              # double 9.8322819999999993
	.quad	0x40032c63f141205c              # double 2.3966750000000001
	.quad	0x401a893c89f40a28              # double 6.6340199999999996
	.quad	0x3ffff5d56f32bdc2              # double 1.9975179999999999
	.quad	0x4016cfe260b2c83f              # double 5.7030120000000002
	.quad	0x40063845dc832336              # double 2.7774770000000002
	.quad	0x4009c1cd5f99c38b              # double 3.21963
	.quad	0x400cde20ccff21b4              # double 3.6084610000000001
	.quad	0x4020ea333764f11b              # double 8.4574219999999993
	.quad	0x400d7167ec7863bf              # double 3.680374
	.quad	0x40206915379fa97e              # double 8.2052399999999999
	.quad	0x40187215fcc1871e              # double 6.1114119999999996
	.quad	0x401cd0ac3a860dcc              # double 7.2037820000000004
	.quad	0x3fdd1b93037d6302              # double 0.45480799999999999
	.quad	0x3fc721682f944242              # double 0.18070700000000001
	.quad	0x402255aaf78feef6              # double 9.1673200000000001
	.quad	0x3fc1682f944241c4              # double 0.135992
	.quad	0x4021dad9ad85dfa8              # double 8.9274419999999992
	.quad	0x401173d790752daa              # double 4.3631270000000004
	.quad	0x401f4c2b51bd61f6              # double 7.8243840000000002
	.quad	0x40204088d6d3b6cc              # double 8.1260440000000002
	.quad	0x4005493c03bc4d23              # double 2.6607590000000001
	.quad	0x40201025bfad2999              # double 8.0315379999999994
	.quad	0x40149c4b4d056c51              # double 5.1526310000000004
	.quad	0x4010df0068db8bac              # double 4.2177749999999996
	.quad	0x400117481b21c476              # double 2.136368
	.quad	0x401d06b65a9a8049              # double 7.2565549999999996
	.quad	0x3fe2d08d4bad7d7c              # double 0.58795799999999998
	.quad	0x3ff105c896dd26b7              # double 1.063912
	.quad	0x4021b2d9274e22a3              # double 8.8493130000000004
	.quad	0x401c81c9b4139863              # double 7.1267459999999998
	.quad	0x4003f3f85510d38d              # double 2.4941260000000001
	.quad	0x3ff9efa0d77b7c78              # double 1.621003
	.quad	0x400a018372e6a769              # double 3.2507389999999998
	.quad	0x3ffdc3419e300150              # double 1.8601700000000001
	.quad	0x40038ef0ae536502              # double 2.4447950000000001
	.quad	0x3ff61c5a3e39f773              # double 1.3819220000000001
	.quad	0x40234e0157eed45f              # double 9.6523540000000007
	.quad	0x40230d31b9b66f93              # double 9.5257699999999996
	.quad	0x4022e4755ffe6d59              # double 9.4462080000000003
	.quad	0x401fdbd3c3611340              # double 7.9646749999999997
	.quad	0x4020200d801b4352              # double 8.0626029999999993
	.quad	0x401cd7e8ccdd93c4              # double 7.2108489999999996
	.quad	0x4011bfe6d58c8eef              # double 4.4374039999999999
	.quad	0x3ff6cf91a32b12d3              # double 1.4256759999999999
	.quad	0x3fff9c31593e5fb7              # double 1.975633
	.quad	0x40205b443d46b26c              # double 8.178255
	.quad	0x40082b7e4de3b8a2              # double 3.0212370000000002
	.quad	0x40164d3f9e7b80aa              # double 5.5754380000000001
	.quad	0x402103d1aa821f2a              # double 8.5074590000000008
	.quad	0x401a923d4f15e7c9              # double 6.6428120000000002
	.quad	0x3fe6e0ded288ce70              # double 0.71494999999999997
	.quad	0x4022c181e03f7058              # double 9.3779439999999993
	.quad	0x40118d8622c45027              # double 4.3882070000000004
	.quad	0x40122fbe76c8b439              # double 4.5466249999999997
	.quad	0x401e0ad5bee3d5fe              # double 7.5105810000000002
	.quad	0x4004390f301eabbd              # double 2.5278610000000001
	.quad	0x3fda68943e100608              # double 0.41263300000000003
	.quad	0x3fe470a3d70a3d71              # double 0.63875000000000004
	.quad	0x3fff37c99ae924f2              # double 1.95112
	.quad	0x400749e774eebf66              # double 2.9110860000000001
	.quad	0x4014988e79aae6c9              # double 5.148981
	.quad	0x4023082eec7c957d              # double 9.5159830000000003
	.quad	0x40021d199bb2788e              # double 2.2642090000000001
	.quad	0x40233276965f5276              # double 9.5985610000000001
	.quad	0x400bd6848beb5b2d              # double 3.4797449999999999
	.quad	0x3ff7e35c5b4aa971              # double 1.4930079999999999
	.quad	0x3feab990afe60c39              # double 0.83515200000000001
	.quad	0x4008671476af89c6              # double 3.050332
	.quad	0x400dfd15f02c4d66              # double 3.748577
	.quad	0x401e606ab14ec205              # double 7.594157
	.quad	0x3ffb1ea67e846a5d              # double 1.6949829999999999
	.quad	0x40205c9363f572de              # double 8.1808119999999995
	.quad	0x4011a528283d35eb              # double 4.4112859999999996
	.quad	0x3ffc17646ae3a3a9              # double 1.755711
	.quad	0x401f7eeed8904f6e              # double 7.873958
	.quad	0x401dc00c521dda06              # double 7.4375470000000004
	.quad	0x40104f316e371540              # double 4.077337
	.quad	0x4010cf04577d9557              # double 4.2021649999999999
	.quad	0x401fd363f572de44              # double 7.9564360000000001
	.quad	0x401b5dc3bd599243              # double 6.8415670000000004
	.quad	0x4016976ff3ade226              # double 5.647888
	.quad	0x4011735efa615a8e              # double 4.3626670000000001
	.quad	0x400d1e6bc621b7e1              # double 3.6398540000000001
	.quad	0x40208b862b27cbf7              # double 8.2725080000000002
	.quad	0x401831b2e59af9ec              # double 6.0485340000000001
	.quad	0x40002e0653005815              # double 2.0224730000000002
	.quad	0x401455b530ced4e5              # double 5.0836990000000002
	.quad	0x4023f03dff3f0fe0              # double 9.9692229999999995
	.quad	0x3fedd905c0336156              # double 0.93274199999999996
	.quad	0x401bdedfe75bc44c              # double 6.967651
	.quad	0x40172153bd167664              # double 5.782546
	.quad	0x3fda2a94ff0025c0              # double 0.40884900000000002
	.quad	0x3fd8f37329c347e9              # double 0.38985900000000001
	.quad	0x401d8b0e1b4bb5e1              # double 7.385796
	.quad	0x40216e3a3a8e7147              # double 8.7152879999999993
	.quad	0x401988e71476af8a              # double 6.3836940000000002
	.quad	0x3fb0e9c4545846e9              # double 0.066067000000000001
	.quad	0x402041c7de5082cf              # double 8.1284779999999994
	.quad	0x3ff55a5332acfb76              # double 1.334552
	.quad	0x4010043675ddd2af              # double 4.0041140000000004
	.quad	0x40186873ffac1d2a              # double 6.1020050000000001
	.quad	0x3fd6692b3cc4ac6d              # double 0.35016900000000001
	.quad	0x3fda062d40aaeafb              # double 0.40662700000000002
	.quad	0x401387fe8ee6b830              # double 4.8828069999999997
	.quad	0x4012d25d4a5df224              # double 4.7054340000000003
	.quad	0x401ce3f4666ec9e2              # double 7.2226119999999998
	.quad	0x3ff4d3e920c069e8              # double 1.301736
	.quad	0x4021797dd00f776c              # double 8.7372879999999994
	.quad	0x400c385d744f5d35              # double 3.5275219999999998
	.quad	0x401ce58644523f68              # double 7.224145
	.quad	0x40121358afc47e4a              # double 4.5188930000000003
	.quad	0x402057a333764f12              # double 8.1711670000000005
	.quad	0x4016af03d145d851              # double 5.6709129999999996
	.quad	0x40125ae2da554b8c              # double 4.5887560000000001
	.quad	0x4013c10e02214270              # double 4.9385300000000001
	.quad	0x401b589374bc6a7f              # double 6.8365
	.quad	0x4023af4cd31769a9              # double 9.8423829999999998
	.quad	0x400588909289dae0              # double 2.6916820000000001
	.quad	0x3ff7c813cab81f97              # double 1.4863470000000001
	.quad	0x4022ac069e7fb268              # double 9.3359880000000003
	.quad	0x3fcfc5692b3cc4ac              # double 0.24821199999999999
	.quad	0x400c919ef954eb14              # double 3.5711040000000001
	.quad	0x4023834f82f51266              # double 9.7564659999999996
	.quad	0x4019ac82e019b0ab              # double 6.4184679999999998
	.quad	0x4020951e53a81dc1              # double 8.2912470000000003
	.quad	0x40134e08f2170931              # double 4.826206
	.quad	0x40225991dde37586              # double 9.1749410000000005
	.quad	0x4017ad27c3936827              # double 5.9190969999999998
	.quad	0x401221fd9ba1b196              # double 4.5331939999999999
	.quad	0x4020df7e3d1cc101              # double 8.4365100000000002
	.quad	0x401e7ae9ee45c359              # double 7.6200330000000002
	.quad	0x40236a75ab7dc7ac              # double 9.707929
	.quad	0x40177c77143393ab              # double 5.8715479999999998
	.quad	0x402214115df6555c              # double 9.0391949999999994
	.quad	0x40017fb0d51f81a6              # double 2.1873490000000002
	.quad	0x401fc8bd230b9dc3              # double 7.946034
	.quad	0x3fe10b47c73eee52              # double 0.53262699999999996
	.quad	0x40123acd184c2720              # double 4.557423
	.quad	0x4023a9fd1569f490              # double 9.8320089999999993
	.quad	0x40151958537e2c56              # double 5.2747510000000002
	.quad	0x3ff12e9ff0cbaf96              # double 1.0738829999999999
	.quad	0x401b1d39da16616b              # double 6.7785409999999997
	.quad	0x40162365881a1555              # double 5.534567
	.quad	0x40212e93c03bc4d2              # double 8.5909709999999997
	.quad	0x401678950763a190              # double 5.617756
	.quad	0x40158d1dcd7060bb              # double 5.3878089999999998
	.quad	0x400dd2f555821294              # double 3.7280069999999998
	.quad	0x40211ea28fe260b3              # double 8.5598340000000004
	.quad	0x401f628e4fb97bb7              # double 7.8462459999999998
	.quad	0x3fefcb923a29c77a              # double 0.99360000000000004
	.quad	0x401d3e2d6238da3c              # double 7.3107199999999999
	.quad	0x3ff07b506dd69d30              # double 1.030106
	.quad	0x401fe1626b2f2303              # double 7.9701019999999997
	.quad	0x3ff51669ced0b30b              # double 1.3179719999999999
	.quad	0x40112b242070b8d0              # double 4.2921300000000002
	.quad	0x40237860fe47991c              # double 9.7351150000000004
	.quad	0x4012d1148fd9fd37              # double 4.70418
	.quad	0x4003e13c254a3c64              # double 2.4849779999999999
	.quad	0x4022aca3400b88ca              # double 9.3371829999999996
	.quad	0x40124f13cee9dd7f              # double 4.5772240000000002
	.quad	0x40172bedb7281fda              # double 5.7928990000000002
	.quad	0x3ff5778140dd3fe2              # double 1.3416760000000001
	.quad	0x3ffabd76ee73e682              # double 1.6712560000000001
	.quad	0x401dfe48e8a71de7              # double 7.4983250000000003
	.quad	0x3ff1fad2999567dc              # double 1.1237360000000001
	.quad	0x4002aa350d2806af              # double 2.3331089999999999
	.quad	0x401cca30db6a1e82              # double 7.1974520000000002
	.quad	0x40107aa087ca643d              # double 4.1197530000000002
	.quad	0x3ff29907d912556d              # double 1.162361
	.quad	0x401981c25d074214              # double 6.3767180000000003
	.quad	0x401d8a39c51dabe2              # double 7.3849859999999996
	.quad	0x3feb2e21101b0037              # double 0.84938100000000005
	.quad	0x4023f1a240314877              # double 9.9719409999999992
	.quad	0x3fde01de26916441              # double 0.468864
	.quad	0x401abed8d36b4c7f              # double 6.6863739999999998
	.quad	0x3ff65550ca1cef24              # double 1.395829
	.quad	0x40164711947cfa27              # double 5.5694030000000003
	.quad	0x3ff52f3d3a1d3240              # double 1.324033
	.quad	0x4014c0cb295e9e1b              # double 5.188275
	.quad	0x4019b6f1dc50ce4f              # double 6.4286570000000003
	.quad	0x40207f518b0d0edc              # double 8.2486689999999995
	.quad	0x401853bc4d22c882              # double 6.0817730000000001
	.quad	0x4000393250b5243a              # double 2.0279280000000002
	.quad	0x40233938151a4378              # double 9.6117559999999997
	.quad	0x3fe8436976bc1f00              # double 0.75822900000000004
	.quad	0x40172994185058de              # double 5.7906040000000001
	.quad	0x40200c36fc158fb4              # double 8.0238569999999995
	.quad	0x4016380064a9cdc4              # double 5.5546889999999998
	.quad	0x4015d12a0ec74320              # double 5.4542619999999999
	.quad	0x3fc512c27a63736d              # double 0.164635
	.quad	0x40223e28240b7803              # double 9.1213999999999995
	.quad	0x402072f6a50d6b23              # double 8.2245380000000008
	.quad	0x3ffca2962cfd8f0c              # double 1.7896939999999999
	.quad	0x3ff7046f9b994e1a              # double 1.4385829999999999
	.quad	0x3ffecd423d9231c6              # double 1.9251119999999999
	.quad	0x3ffb6ef1bac2df0d              # double 1.7145859999999999
	.quad	0x4007c5a78f25a251              # double 2.971511
	.quad	0x401a83397dd00f77              # double 6.6281489999999996
	.quad	0x40200b64bec679cc              # double 8.0222529999999991
	.quad	0x4013565e02ea960b              # double 4.8343429999999996
	.quad	0x3ff58bb2bba98eda              # double 1.346606
	.quad	0x4001dc054ef459da              # double 2.2324320000000002
	.quad	0x401e063497b7414a              # double 7.5060599999999997
	.quad	0x40138cee9dd7ecbb              # double 4.8876289999999996
	.quad	0x4020caa326e11559              # double 8.3957759999999997
	.quad	0x4019c22c01e68a0d              # double 6.4396209999999998
	.quad	0x4015c54de7ea5f85              # double 5.4426800000000002
	.quad	0x3fe1e603d577963a              # double 0.55932800000000005
	.quad	0x4023978183f91e64              # double 9.7959099999999992
	.quad	0x400f79a8cdea033e              # double 3.9344039999999998
	.quad	0x4010941e9af5ba2c              # double 4.1446480000000001
	.quad	0x3fff482278d0cc36              # double 1.955111
	.quad	0x40178e10060780fe              # double 5.8887330000000002
	.quad	0x4009d28c79f66623              # double 3.2278069999999999
	.quad	0x3ff3d86013660e52              # double 1.240326
	.quad	0x400f8121ee675148              # double 3.938053
	.quad	0x3fc81144cbe1eb42              # double 0.188027
	.quad	0x4006d73a797891e2              # double 2.855092
	.quad	0x40113a311e85fd05              # double 4.3068280000000003
	.quad	0x4023489f1f14983d              # double 9.6418389999999991
	.quad	0x402386bbfd71b047              # double 9.7631530000000008
	.quad	0x401f6c62a1b5c7ce              # double 7.8558450000000004
	.quad	0x40156bd987c6327f              # double 5.3553220000000001
	.quad	0x40193ab8e8ea39c5              # double 6.3073459999999999
	.quad	0x3fefd11be6e65387              # double 0.99427600000000004
	.quad	0x401604806290eed0              # double 5.5043959999999998
	.quad	0x40144c297bfa4c62              # double 5.0743770000000001
	.quad	0x4007cbc947064ecf              # double 2.9745050000000002
	.quad	0x4023cac01e68a0d3              # double 9.8959969999999994
	.quad	0x4001263065f9591d              # double 2.1436470000000001
	.quad	0x401abcd141a6937d              # double 6.6843919999999999
	.quad	0x3fc00c7c0f451761              # double 0.12538099999999999
	.quad	0x3ffb617d2849cb25              # double 1.711301
	.quad	0x3ff09ebb7739f341              # double 1.038753
	.quad	0x401bf7ed41b75a75              # double 6.9921160000000002
	.quad	0x402321e44fa05144              # double 9.5661950000000004
	.quad	0x3ffb587e7c06e19c              # double 1.7091050000000001
	.quad	0x3ffac78d92fb19e7              # double 1.673719
	.quad	0x4014cc2374794ea0              # double 5.1993539999999996
	.quad	0x400d5d41743e963e              # double 3.6705350000000001
	.quad	0x3ff27c1eff9f87f0              # double 1.155303
	.quad	0x3ff2ed19dece5711              # double 1.1828860000000001
	.quad	0x40055c182ecaeea6              # double 2.6699679999999999
	.quad	0x401d449949e8815e              # double 7.3169909999999998
	.quad	0x3f9e65bea0ba1f4b              # double 0.029685
	.quad	0x4008b81a5870da5e              # double 3.0898940000000001
	.quad	0x40185acb4289118c              # double 6.0886659999999999
	.quad	0x4012e7789a459104              # double 4.7260460000000002
	.quad	0x401151e57d9dba91              # double 4.3299770000000004
	.quad	0x400fb03d145d8516              # double 3.9610539999999999
	.quad	0x3fe0735c182ecaef              # double 0.51408200000000004
	.quad	0x4016ba2df9378ee3              # double 5.6818160000000004
	.quad	0x401af787485e3da3              # double 6.741727
	.quad	0x401f759b8023a6ce              # double 7.8648509999999998
	.quad	0x3fe2106ee30caa32              # double 0.56450599999999995
	.quad	0x401f29bf5946c333              # double 7.790769
	.quad	0x400bfeafee6fb4c4              # double 3.4993590000000001
	.quad	0x401615f138bcdff0              # double 5.5214280000000002
	.quad	0x4006f866e43aa79c              # double 2.8712900000000001
	.quad	0x40116ffda4052d66              # double 4.3593659999999996
	.quad	0x4022c4254a3c6434              # double 9.3830969999999993
	.quad	0x3ff26b356da0168b              # double 1.1511739999999999
	.quad	0x3ffda10e02214270              # double 1.85182
	.quad	0x3fd83a19008205ff              # double 0.37854599999999999
	.quad	0x40201e1a1db877ab              # double 8.0587929999999997
	.quad	0x402326789e774eec              # double 9.575139
	.quad	0x4012d95f676ea423              # double 4.7122780000000004
	.quad	0x3fecb945308bb906              # double 0.89761599999999997
	.quad	0x3fd410c6f7a0b5ee              # double 0.31352400000000002
	.quad	0x400384c37e6f71a8              # double 2.4398260000000001
	.quad	0x400184f765fd8adb              # double 2.1899250000000001
	.quad	0x401a038e6d15ad10              # double 6.5034729999999996
	.quad	0x3ff2e7ae9ab29e4d              # double 1.1815629999999999
	.quad	0x3fe8a491afc04c8c              # double 0.77008900000000002
	.quad	0x4018b62456f75d9a              # double 6.1778729999999999
	.quad	0x4023bfe75bc44bf5              # double 9.8748120000000003
	.quad	0x400863a190082060              # double 3.048648
	.quad	0x401521dffc5479d5              # double 5.2830810000000001
	.quad	0x401415aab4741073              # double 5.0211589999999999
	.quad	0x3fda614df8b15726              # double 0.41218900000000003
	.quad	0x40214c35ac8a3726              # double 8.648847
	.quad	0x3ffc889e34330d74              # double 1.7833540000000001
	.quad	0x401c0193708aac97              # double 7.0015390000000002
	.quad	0x401b1b7c7820a30e              # double 6.7768420000000003
	.quad	0x40150897204295a7              # double 5.2583890000000002
	.quad	0x3fea8b0292817764              # double 0.82946900000000001
	.quad	0x400affaa044ae85c              # double 3.3748360000000002
	.quad	0x401f8e21d96e9bbf              # double 7.8888009999999999
	.quad	0x401bc99567dbb16c              # double 6.9468589999999999
	.quad	0x400b8dd3fe1975f3              # double 3.4442520000000001
	.quad	0x40237d5432873bc9              # double 9.7447829999999999
	.quad	0x4016b1b60ae9680e              # double 5.673546
	.quad	0x401aa670e2c12ad8              # double 6.6625399999999999
	.quad	0x401e1aac1094a2ba              # double 7.5260470000000002
	.quad	0x40202f1b0468448d              # double 8.0920030000000001
	.quad	0x401c6cdb7ae5796c              # double 7.106306
	.quad	0x4021c9cc74b838c1              # double 8.8941379999999999
	.quad	0x4022dee957470eb2              # double 9.4353739999999995
	.quad	0x400e4c29bf162ae5              # double 3.7871890000000001
	.quad	0x4017dd9cf13cee9e              # double 5.9664190000000001
	.quad	0x3fbf645a1cac0831              # double 0.122625
	.quad	0x400af7cbb3c81909              # double 3.370994
	.quad	0x4000541b75a74c0a              # double 2.0410680000000001
	.quad	0x400a76473471f794              # double 3.3077529999999999
	.quad	0x40237f46cb966be8              # double 9.7485870000000005
	.quad	0x40037ba775fb2ee0              # double 2.435378
	.quad	0x3fe63d5bab21815a              # double 0.69499
	.quad	0x402024e91c8eac00              # double 8.0720910000000003
	.quad	0x401a0eb0b7c3504c              # double 6.5143459999999997
	.quad	0x4015314bdfd2630f              # double 5.2981410000000002
	.quad	0x401dbcce1c58255b              # double 7.43438
	.quad	0x40142c625e99e94b              # double 5.0433440000000003
	.quad	0x3fe6e5cf67b1c001              # double 0.71555299999999999
	.quad	0x3fd501f31f46ed24              # double 0.32824399999999998
	.quad	0x401a67d5ed06fef8              # double 6.6014020000000002
	.quad	0x40128b8561d4306e              # double 4.6362509999999997
	.quad	0x3ffd4f1a1986b9c3              # double 1.831812
	.quad	0x400371aeb3dd11be              # double 2.4305089999999998
	.quad	0x40233ca9ac365450              # double 9.6184820000000002
	.quad	0x3fc52fdb8fde2ef5              # double 0.165523
	.quad	0x400fd98b71b8aa00              # double 3.981223
	.quad	0x3fe9b0a2ca9ac365              # double 0.80281199999999997
	.quad	0x400c3270b06c43f6              # double 3.524629
	.quad	0x4011d20791c4b902              # double 4.4551069999999999
	.quad	0x4013d7f0ed3d859d              # double 4.9608800000000004
	.quad	0x40229e8c692f6e83              # double 9.3096650000000007
	.quad	0x400155a3a08398a6              # double 2.1668159999999999
	.quad	0x4020de27bf61aa3f              # double 8.433897
	.quad	0x3fd6123810e88590              # double 0.344862
	.quad	0x400211f9acffa7eb              # double 2.2587769999999998
	.quad	0x3fca8db8bac710cb              # double 0.20745
	.quad	0x401d18c32a8c9b84              # double 7.2741819999999997
	.quad	0x4011f54866a11ec9              # double 4.4895339999999999
	.quad	0x3ff1ac00da1a9329              # double 1.1044929999999999
	.quad	0x3fe221e603d57796              # double 0.56663799999999998
	.quad	0x400c004a72ead927              # double 3.5001419999999999
	.quad	0x4022a726f1dc50ce              # double 9.3264689999999995
	.quad	0x4013cc8b43958106              # double 4.9497499999999999
	.quad	0x4013cd96a6a0125a              # double 4.9507700000000003
	.quad	0x3ff29c8754f3775c              # double 1.1632150000000001
	.quad	0x4008bf562174c4ce              # double 3.093426
	.quad	0x40133441355475a3              # double 4.8010299999999999
	.quad	0x4015bb66b6177ea2              # double 5.4330090000000002
	.quad	0x401b342396073de2              # double 6.8009170000000001
	.quad	0x3fedc289118c197e              # double 0.92999699999999996
	.quad	0x40102dc8fb86f47b              # double 4.0447119999999996
	.quad	0x40124a37ac3eb7cc              # double 4.5724780000000003
	.quad	0x40134bb9cf9a06a7              # double 4.8239510000000001
	.quad	0x401063b60285ec3e              # double 4.0973740000000003
	.quad	0x40153b30b5aa7158              # double 5.3078029999999998
	.quad	0x3ffc1a91105e1c15              # double 1.756486
	.quad	0x401aafbc1acde1a0              # double 6.6716160000000002
	.quad	0x3ff6353d640e9d52              # double 1.3879980000000001
	.quad	0x40212edb940fecdd              # double 8.5915189999999999
	.quad	0x401d9418d6909aed              # double 7.3946259999999997
	.quad	0x4005959ab6d00b46              # double 2.6980490000000001
	.quad	0x3ff3c99285a921cd              # double 1.236712
	.quad	0x40066770bd017daf              # double 2.8005080000000002
	.quad	0x3ff09a1cac083127              # double 1.037625
	.quad	0x401a69463cfb3312              # double 6.6028070000000003
	.quad	0x400c398aeb80ecfa              # double 3.5280969999999998
	.quad	0x4023349667b5f1bf              # double 9.60271
	.quad	0x401747f0ed3d859d              # double 5.8202550000000004
	.quad	0x401dc95a6c5d206d              # double 7.4466340000000004
	.quad	0x4003ac2efd438d1e              # double 2.4590740000000002
	.quad	0x4023ce5f9591cd1c              # double 9.9030729999999991
	.quad	0x402065590c0ad03e              # double 8.1979450000000007
	.quad	0x4012c7154003254e              # double 4.6944169999999996
	.quad	0x400df7cdcca70d20              # double 3.7459980000000002
	.quad	0x3feb6518f3eccc47              # double 0.85609100000000005
	.quad	0x400fbbfd71b04684              # double 3.9667919999999999
	.quad	0x401f3adcd2d44dcb              # double 7.8074830000000003
	.quad	0x3ffefd84901d1915              # double 1.9368939999999999
	.quad	0x3ffa18d9b5e95b79              # double 1.631067
	.quad	0x401e565492ff4ba5              # double 7.5843069999999999
	.quad	0x40228442e9899bf6              # double 9.2583230000000007
	.quad	0x40220ab2e1693c04              # double 9.0208960000000004
	.quad	0x3ff2a22e5de15ca7              # double 1.164595
	.quad	0x3ff6271de69ad42c              # double 1.3845499999999999
	.quad	0x40036c3dab5c39bd              # double 2.4278520000000001
	.quad	0x40073159c4977425              # double 2.8990969999999998
	.quad	0x401e7069e7fb267c              # double 7.6097789999999996
	.quad	0x3fba81cb46bacf74              # double 0.103543
	.quad	0x401dfa0d77b7c782              # double 7.494192
	.quad	0x4018db5807fed203              # double 6.2142030000000004
	.quad	0x401b3fa7221858bc              # double 6.8121609999999997
	.quad	0x40019aa369fcf3dc              # double 2.200507
	.quad	0x40033ef62f9ca5be              # double 2.4057430000000002
	.quad	0x40096b178b370047              # double 3.1772909999999999
	.quad	0x4022e2c343b70ef5              # double 9.4428959999999992
	.quad	0x4021de1437c5692b              # double 8.9337479999999996
	.quad	0x40177b5d894812be              # double 5.8704739999999997
	.quad	0x400e2f47304039ac              # double 3.773085
	.quad	0x40111c58eeae9ee4              # double 4.2776829999999997
	.quad	0x4011dfc71d606317              # double 4.4685329999999999
	.quad	0x401f1b7fe08aefb3              # double 7.7768550000000002
	.quad	0x40114c2a8869c66d              # double 4.3243809999999998
	.quad	0x40155924af0bf1a6              # double 5.3370540000000002
	.quad	0x40230cbec679cc75              # double 9.5248930000000004
	.quad	0x401c69f94855da27              # double 7.1034899999999999
	.quad	0x4018770ac3a860dd              # double 6.1162520000000002
	.quad	0x3ff9646f15619115              # double 1.5870200000000001
	.quad	0x3ffc954a7f8012e0              # double 1.786448
	.quad	0x40211cf5f4e4430b              # double 8.5565639999999998
	.quad	0x40157616b54e2b06              # double 5.3653209999999998
	.quad	0x4001bd6733ebbfd7              # double 2.217482
	.quad	0x401a20c6b484d76b              # double 6.5320080000000003
	.quad	0x40111641f644955b              # double 4.2717359999999998
	.quad	0x400ac93d96638434              # double 3.3482620000000001
	.quad	0x3ff13a1d323fee2d              # double 1.0766880000000001
	.quad	0x3fd3f61ed5ae1cde              # double 0.31189699999999998
	.quad	0x400551843c3a42f2              # double 2.664803
	.quad	0x401cbd83c6c97d8d              # double 7.185073
	.quad	0x4016f4102ff8ec10              # double 5.7383430000000004
	.quad	0x401f664302b40f67              # double 7.8498650000000003
	.quad	0x401816e5471715c6              # double 6.0223589999999998
	.quad	0x4001d4a6eb91b3f2              # double 2.228834
	.quad	0x40213c73471f7942              # double 8.6180669999999999
	.quad	0x3fe4a9e0a41a261c              # double 0.64573700000000001
	.quad	0x401cb77d955714ba              # double 7.1791900000000002
	.quad	0x400465bf26f1dc51              # double 2.5496810000000001
	.quad	0x4022f8157eed45e9              # double 9.4845389999999998
	.quad	0x401c63009b30728f              # double 7.0966820000000004
	.quad	0x40020c7b02d59d56              # double 2.256094
	.quad	0x400e6f765fd8adac              # double 3.8044250000000002
	.quad	0x40162a3e7d135116              # double 5.5412540000000003
	.quad	0x3fe7a5247cb70ac4              # double 0.73890900000000004
	.quad	0x4007e9068986fcdf              # double 2.988782
	.quad	0x4009310fd7e45804              # double 3.1489560000000001
	.quad	0x3fe781344806290f              # double 0.73452200000000001
	.quad	0x3fef59f6ec5b078e              # double 0.97973200000000005
	.quad	0x4023ea6506141637              # double 9.9578019999999991
	.quad	0x3ffe21b3aeee9574              # double 1.8832279999999999
	.quad	0x4019c744f5d35654              # double 6.4445990000000002
	.quad	0x401bedb163baba7c              # double 6.9821220000000004
	.quad	0x3ff76edbb59ddc1e              # double 1.4645649999999999
	.quad	0x400acd6e47dc37a4              # double 3.3503080000000001
	.quad	0x3ffe1e56cd6c2efd              # double 1.8824069999999999
	.quad	0x4013926527a20579              # double 4.8929640000000001
	.quad	0x4023617f84449dbf              # double 9.6904260000000004
	.quad	0x401058cd63cb8173              # double 4.0867209999999998
	.quad	0x40179e2541d8e864              # double 5.904439
	.quad	0x40236b178b370047              # double 9.7091639999999994
	.quad	0x401f32b3892ee84b              # double 7.7995130000000001
	.quad	0x3ffc81754b05b7d0              # double 1.781606
	.quad	0x4023dca600b02928              # double 9.9309539999999998
	.quad	0x3ff381743e963dc5              # double 1.2191050000000001
	.quad	0x3ffa4a137f38c543              # double 1.6430849999999999
	.quad	0x4014a9e279dd3bb0              # double 5.1659030000000001
	.quad	0x4021a117b5286b59              # double 8.8146339999999999
	.quad	0x3ff2a9930be0ded3              # double 1.1664000000000001
	.quad	0x3fd1868b9fdbd2fa              # double 0.273837
	.quad	0x40225ea8da7f3cf7              # double 9.184882
	.quad	0x4021788df37329c3              # double 8.7354579999999995
	.quad	0x401660e1b4bb5e0f              # double 5.5946109999999996
	.quad	0x401202dfd694ccab              # double 4.5028069999999998
	.quad	0x3ff990a45d41fa76              # double 1.5978129999999999
	.quad	0x3fae7d1351159c49              # double 0.059547999999999997
	.quad	0x4018e215336deb96              # double 6.2207840000000001
	.quad	0x40120635a426bb56              # double 4.5060640000000003
	.quad	0x4018e59103c8e25d              # double 6.2241860000000004
	.quad	0x401b5b6bb1290258              # double 6.8392780000000002
	.quad	0x401427e1fc08fa7b              # double 5.0389480000000004
	.quad	0x401e23b7521144cc              # double 7.5348790000000001
	.quad	0x40213f59ab6d00b4              # double 8.6237309999999993
	.quad	0x4009c1eabbcb1cc9              # double 3.2196859999999998
	.quad	0x4002fe1f3a57eaa3              # double 2.3740830000000002
	.quad	0x40192bcdfefbf402              # double 6.2927780000000002
	.quad	0x4023204e831ad213              # double 9.5630989999999993
	.quad	0x3ff7e43ed959a30a              # double 1.4932240000000001
	.quad	0x3feb339e279dd3bb              # double 0.850051
	.quad	0x400feef0281ba7fc              # double 3.9916689999999999
	.quad	0x401abfce746cb967              # double 6.6873110000000002
	.quad	0x4022abb5e0f7fcfc              # double 9.3353719999999995
	.quad	0x4010e6f2e8c0485a              # double 4.225536
	.quad	0x4021389a24031487              # double 8.6105509999999992
	.quad	0x4020b0bed740c415              # double 8.3452059999999992
	.quad	0x402254768dfbd6a6              # double 9.1649670000000008
	.quad	0x3fdf58e219652bd4              # double 0.48980000000000001
	.quad	0x40217f4906034f40              # double 8.7486040000000003
	.quad	0x4020ff9f23465626              # double 8.4992610000000006
	.quad	0x401fe3ff69014b5a              # double 7.9726540000000004
	.quad	0x401d1eb074a771c9              # double 7.2799699999999996
	.quad	0x3ff73fc5479d4d83              # double 1.4530689999999999
	.quad	0x401879d5e4a38327              # double 6.1189799999999996
	.quad	0x400b565ecc3e3194              # double 3.417173
	.quad	0x40116bf1e8e60807              # double 4.3554149999999998
	.quad	0x401552ae07e5a78f              # double 5.3307419999999999
	.quad	0x401f6ffe6d58c8ef              # double 7.859369
	.quad	0x401d5e0828c36da8              # double 7.3418279999999995
	.quad	0x401681e8a2ec28b3              # double 5.6268640000000003
	.quad	0x402096432441fea8              # double 8.2934809999999999
	.quad	0x3ffc16b65a9a8049              # double 1.7555449999999999
	.quad	0x4016f9c6b0531983              # double 5.7439220000000004
	.quad	0x4018ba4a48f96e16              # double 6.1819240000000004
	.quad	0x400e2b76f6d76252              # double 3.771223
	.quad	0x4017a3cd9a52263e              # double 5.9099640000000004
	.quad	0x400f1499d0203e64              # double 3.885059
	.quad	0x3fe8c384ba0e8427              # double 0.77386699999999997
	.quad	0x401328a265f0f5a1              # double 4.789682
	.quad	0x4018ba5e353f7cee              # double 6.1820000000000004
	.quad	0x4014b5e353f7ced9              # double 5.1776249999999999
	.quad	0x3ff61aee631f8a09              # double 1.381575
	.quad	0x4020a526fa3fcc9f              # double 8.3225630000000006
	.quad	0x401c6cf9a06a6e33              # double 7.1064210000000001
	.quad	0x400d7c74751ce28f              # double 3.6857690000000001
	.quad	0x4017053c148344c3              # double 5.7551119999999996
	.quad	0x400353d9ec700043              # double 2.415943
	.quad	0x3fe930d0edc3bd5a              # double 0.78720900000000005
	.quad	0x4020ea21ea359360              # double 8.4572900000000004
	.quad	0x4018d3c68661ae71              # double 6.2068120000000002
	.quad	0x40055a975afaf859              # double 2.6692339999999999
	.quad	0x401329392189bd84              # double 4.7902570000000004
	.quad	0x40214d1c193b3a69              # double 8.6506050000000005
	.quad	0x400fee6b8305d95e              # double 3.9914160000000001
	.quad	0x4023d17939a7c17b              # double 9.9091280000000008
	.quad	0x401650e6299524c0              # double 5.5790030000000002
	.quad	0x4013984230fcf80e              # double 4.8986900000000002
	.quad	0x4005ef694467381d              # double 2.7418999999999998
	.quad	0x4014c230fcf80dc3              # double 5.1896399999999998
	.quad	0x400e7e26916440f2              # double 3.8115969999999999
	.quad	0x401fe859c8c9320e              # double 7.9769050000000004
	.quad	0x3fc9082491afc04d              # double 0.19556100000000001
	.quad	0x40227072085b1855              # double 9.2196200000000008
	.quad	0x3ffa1c7abfb9bed3              # double 1.631953
	.quad	0x4005d84988094e5d              # double 2.7306089999999998
	.quad	0x401c40053e2d6239              # double 7.0625200000000001
	.quad	0x3fb3265add9c27e9              # double 0.074803999999999995
	.quad	0x4022ca4d6e47dc38              # double 9.3951220000000006
	.quad	0x40228676c8b43958              # double 9.2626249999999998
	.quad	0x401d1db2702a3487              # double 7.2790010000000001
	.quad	0x40085d4280ae1049              # double 3.0455369999999999
	.quad	0x40105e136e71cda3              # double 4.0918710000000003
	.quad	0x4021b0767d34df05              # double 8.8446540000000002
	.quad	0x400dda059a73b42d              # double 3.7314560000000001
	.quad	0x4019ec81d3aa36a0              # double 6.4809640000000002
	.quad	0x4010349f94855da2              # double 4.0513899999999996
	.quad	0x402019a1b9f98b72              # double 8.0500620000000005
	.quad	0x401f72c386d2ed78              # double 7.8620739999999997
	.quad	0x4012253d640e9d52              # double 4.5363670000000003
	.quad	0x401e6fcefaa4766c              # double 7.6091879999999996
	.quad	0x3fffef72b4528284              # double 1.995959
	.quad	0x401fe8e8ea39c51e              # double 7.9774510000000003
	.quad	0x3ff2be5753a3ec03              # double 1.17147
	.quad	0x4003b93ccd0fe8ab              # double 2.4654479999999999
	.quad	0x40150550ca1cef24              # double 5.2551909999999999
	.quad	0x400a6ee49f51697f              # double 3.3041469999999999
	.quad	0x4014e26e978d4fdf              # double 5.2211249999999998
	.quad	0x400d660ed80a17b1              # double 3.674833
	.quad	0x400712788db0574b              # double 2.8840189999999999
	.quad	0x3fd20ad8a116659d              # double 0.281912
	.quad	0x3fea350d2806af47              # double 0.81897600000000004
	.quad	0x3ff949a240314877              # double 1.5804769999999999
	.quad	0x400336512a94ff00              # double 2.4015219999999999
	.quad	0x400700d77b7c7821              # double 2.8754110000000002
	.quad	0x402320e71476af8a              # double 9.5642630000000004
	.quad	0x4014c0a569b17482              # double 5.1881310000000003
	.quad	0x4018c284dfce3151              # double 6.1899600000000001
	.quad	0x3ff57abead4f5904              # double 1.3424670000000001
	.quad	0x40135653c9abb01d              # double 4.8343040000000004
	.quad	0x4023e22856605ee5              # double 9.9417139999999992
	.quad	0x4011417268d32831              # double 4.3139130000000003
	.quad	0x4017075d56f32bdc              # double 5.7571919999999999
	.quad	0x3ffd6132b55ef1fe              # double 1.83623
	.quad	0x400284ad794a6eb9              # double 2.314784
	.quad	0x401c5b18116ebd4d              # double 7.088959
	.quad	0x400f5c2656abde40              # double 3.9199950000000001
	.quad	0x402133bb62413db8              # double 8.6010390000000001
	.quad	0x4008380346dc5d64              # double 3.0273500000000002
	.quad	0x3fc863c74fb549f9              # double 0.19054499999999999
	.quad	0x40145a2e3c536d65              # double 5.0880669999999997
	.quad	0x400dd11947cfa26a              # double 3.7270989999999999
	.quad	0x400f32c40d0aaa7e              # double 3.899788
	.quad	0x3fecac8605681ecd              # double 0.89605999999999997
	.quad	0x40231f8594291750              # double 9.5615659999999991
	.quad	0x40211ea6c1a048e0              # double 8.5598659999999995
	.quad	0x401348cc144028e5              # double 4.821091
	.quad	0x40032e95faa8a82a              # double 2.3977469999999999
	.quad	0x400092b4528283d3              # double 2.0716329999999998
	.quad	0x401e2604e1e71045              # double 7.537128
	.quad	0x401fc1233df2a9d6              # double 7.9386109999999999
	.quad	0x40208400fba8826b              # double 8.2578200000000006
	.quad	0x401eaff6d330941d              # double 7.6718400000000004
	.quad	0x401c3a1b5c7cd899              # double 7.0567450000000003
	.quad	0x40169ed8904f6dfc              # double 5.6551229999999997
	.quad	0x400170ecb74ddf87              # double 2.180139
	.quad	0x401fc2c9081c2e34              # double 7.9402200000000001
	.quad	0x4016569df97aaac1              # double 5.584587
	.quad	0x401ad9c90c4dec1c              # double 6.7126809999999999
	.quad	0x401b231f03d145d8              # double 6.7842979999999997
	.quad	0x401f45d28d002e23              # double 7.8181859999999998
	.quad	0x400494b51372a38c              # double 2.5726110000000002
	.quad	0x4009b19f7f8ca81a              # double 3.2117300000000002
	.quad	0x4017bd8a979e16d7              # double 5.9350990000000001
	.quad	0x400d03d35eb7457c              # double 3.626868
	.quad	0x40144fb82c2bd7f5              # double 5.0778509999999999
	.quad	0x4010f1d9b1b79d91              # double 4.2361820000000003
	.quad	0x401fd477bbf93ff2              # double 7.9574879999999997
	.quad	0x40112e4c942d490e              # double 4.2952139999999996
	.quad	0x400be59210385c68              # double 3.4870950000000001
	.quad	0x40183655e28aa433              # double 6.0530619999999997
	.quad	0x4013d53b8e4b87be              # double 4.9582350000000002
	.quad	0x402103ec892ab68d              # double 8.5076640000000001
	.quad	0x3ffffa3b9ae0c176              # double 1.9985919999999999
	.quad	0x401e75b5fa22706d              # double 7.6149519999999997
	.quad	0x40212d7eed45e918              # double 8.5888589999999994
	.quad	0x3fccbddb9841aac5              # double 0.22454399999999999
	.quad	0x400389070fbeb9e5              # double 2.4419080000000002
	.quad	0x4009e21af7d30ad4              # double 3.2354029999999998
	.quad	0x40190d05f2884838              # double 6.2627179999999996
	.quad	0x400f7ab53d640e9d              # double 3.9349159999999999
	.quad	0x4000060242d05f29              # double 2.0029340000000002
	.quad	0x3feb8b06c43f5f91              # double 0.86072099999999996
	.quad	0x4015645ed4a1ad64              # double 5.3480179999999997
	.quad	0x401de1d68c692f6f              # double 7.4705450000000004
	.quad	0x402380b545c78a6e              # double 9.7513830000000006
	.quad	0x400e715ce9e5e248              # double 3.8053530000000002
	.quad	0x4000f8359bc33f85              # double 2.1211959999999999
	.quad	0x401da53a3ec02f30              # double 7.4113550000000004
	.quad	0x4020c5ac68a936c6              # double 8.3860810000000008
	.quad	0x401d4d3f9e7b80aa              # double 7.3254380000000001
	.quad	0x40147e54b48d3ae7              # double 5.1233700000000004
	.quad	0x40197a92e62131a9              # double 6.3697010000000001
	.quad	0x401078d2e514c22f              # double 4.1179920000000001
	.quad	0x4023f411a11233df              # double 9.9766969999999997
	.quad	0x4020f22e1ac57e24              # double 8.473008
	.quad	0x3fe562f7b17ce52e              # double 0.66833100000000001
	.quad	0x401addc65c70435f              # double 6.716577
	.quad	0x40183ef7c243dccf              # double 6.0614920000000003
	.quad	0x4013eace24bba12b              # double 4.9793019999999997
	.quad	0x402312aa9f7b5aea              # double 9.5364579999999997
	.quad	0x400edcc5b8dc5500              # double 3.857799
	.quad	0x3fda00192a737111              # double 0.40625600000000001
	.quad	0x3fcc2e87d2c7b891              # double 0.22017
	.quad	0x3fba71044f1a1987              # double 0.103287
	.quad	0x400f28bda9435ac9              # double 3.8948930000000002
	.quad	0x402359fd1569f490              # double 9.6757589999999993
	.quad	0x4016cf9bdc69f8c2              # double 5.7027429999999999
	.quad	0x400c83f8982cb210              # double 3.5644390000000001
	.quad	0x4013e0181e03f706              # double 4.9688420000000004
	.quad	0x40029f20a73f748a              # double 2.327699
	.quad	0x4003bec02f2f9874              # double 2.46814
	.quad	0x401f25faa8a82a56              # double 7.7870889999999999
	.quad	0x402123cbc48f10aa              # double 8.5699140000000007
	.quad	0x3fd13ca7503b81b6              # double 0.26932699999999998
	.quad	0x401e92541d8e8640              # double 7.6428989999999999
	.quad	0x3ffac389f83be660              # double 1.672739
	.quad	0x3fffb54c122749f1              # double 1.981762
	.quad	0x40183e13b18dac26              # double 6.0606220000000004
	.quad	0x40137c0f01fb82c3              # double 4.8711510000000002
	.quad	0x401ac7620ee8d10f              # double 6.6947099999999997
	.quad	0x3fae25e99e94ab1d              # double 0.058882999999999998
	.quad	0x4004813b9f127f5f              # double 2.5631020000000002
	.quad	0x4023bf8c436fc159              # double 9.874117
	.quad	0x4011cf8b1572580c              # double 4.4526789999999998
	.quad	0x3ffbe135daad6020              # double 1.742483
	.quad	0x402032b1d4f9c1f8              # double 8.0990129999999994
	.quad	0x40194d2a1f8e3ac1              # double 6.3253560000000002
	.quad	0x4019e54ef459d990              # double 6.4739339999999999
	.quad	0x4014eda98676a726              # double 5.2320919999999997
	.quad	0x3ffca5247cb70ac4              # double 1.7903180000000001
	.quad	0x4000cdd93c46d82c              # double 2.1005120000000002
	.quad	0x40148bce4217d285              # double 5.1365290000000003
	.quad	0x4021170ae536501e              # double 8.5450049999999997
	.quad	0x4022cdcb1465e892              # double 9.4019399999999997
	.quad	0x3ff3622a2c237479              # double 1.2114659999999999
	.quad	0x400ae9656eefa1e4              # double 3.363963
	.quad	0x401e607789a45910              # double 7.5942059999999998
	.quad	0x4006ba49c2c1b110              # double 2.8409610000000001
	.quad	0x4016dbe22e5de15d              # double 5.7147300000000003
	.quad	0x40231d523b3636f4              # double 9.5572680000000005
	.quad	0x401877cd898b2e9d              # double 6.1169950000000002
	.quad	0x401a2a7ef9db22d1              # double 6.5415000000000001
	.quad	0x40164272862f598a              # double 5.5648900000000001
	.quad	0x3ffbe9d30270f388              # double 1.744586
	.quad	0x401d21a0cf1800a8              # double 7.2828400000000002
	.quad	0x3ff94c51116a8b8f              # double 1.581132
	.quad	0x401283ad5bee3d60              # double 4.6285910000000001
	.quad	0x3ff35fa22706d506              # double 1.2108479999999999
	.quad	0x40104d61b2a27f1b              # double 4.0755679999999996
	.quad	0x401006b7ed41b75a              # double 4.0065609999999996
	.quad	0x3ffc9359791819d2              # double 1.785974
	.quad	0x3ff5ad7a56de3327              # double 1.3548530000000001
	.quad	0x401753686a4ca4f4              # double 5.8314529999999998
	.quad	0x401fe5421c044285              # double 7.9738850000000001
	.quad	0x40201d477bbf93ff              # double 8.0571859999999997
	.quad	0x3fe45f17bd8be729              # double 0.63660799999999995
	.quad	0x400dc4ff43419e30              # double 3.72119
	.quad	0x3ff1316f4384ba0f              # double 1.0745690000000001
	.quad	0x401fd6338b47c73f              # double 7.959181
	.quad	0x40131b702602c908              # double 4.7767949999999999
	.quad	0x4016910dbf0563ed              # double 5.6416539999999999
	.quad	0x4017d4c122749f0e              # double 5.9577679999999997
	.quad	0x401bbb5b2d4d4025              # double 6.9329650000000003
	.quad	0x401c39e16d6dc1a4              # double 7.0565239999999996
	.quad	0x401131fb3fa6defc              # double 4.2988099999999996
	.quad	0x401ce60a2014727e              # double 7.2246480000000002
	.quad	0x400d22fc69728a61              # double 3.642083
	.quad	0x400245d63886594b              # double 2.2841
	.quad	0x3fe5a7503b81b64e              # double 0.676674
	.quad	0x3fe808094e5d5b25              # double 0.75098100000000001
	.quad	0x400b74ed2cbea4ec              # double 3.4320930000000001
	.quad	0x3fe472ef0ae53650              # double 0.63902999999999999
	.quad	0x401fd92817763e4b              # double 7.9620670000000002
	.quad	0x4023b5410f94c87a              # double 9.8540120000000009
	.quad	0x40125d8b1dd5d3dd              # double 4.5913510000000004
	.quad	0x401841476af89c5e              # double 6.0637489999999996
	.quad	0x4013a6c3b927d45a              # double 4.9128559999999997
	.quad	0x400c3b0e5e679464              # double 3.5288360000000001
	.quad	0x4022f577963992c9              # double 9.4794280000000004
	.quad	0x40152e2c98e53eb4              # double 5.2950920000000004
	.quad	0x4010e79463cfb331              # double 4.2261519999999999
	.quad	0x4013b8bdec5f394b              # double 4.9304119999999996
	.quad	0x4011550ebaade658              # double 4.3330640000000002
	.quad	0x401b290f301eabbd              # double 6.7900970000000003
	.quad	0x400b1c0b13597918              # double 3.388693
	.quad	0x401963b107746888              # double 6.3473550000000003
	.quad	0x4016a91eeaa6d267              # double 5.6651569999999998
	.quad	0x400577f51efb6dca              # double 2.683573
	.quad	0x40206d703f2d3c79              # double 8.2137469999999997
	.quad	0x401b136049ecb31c              # double 6.7689219999999999
	.quad	0x40006d5bee3d5fdd              # double 2.0533980000000001
	.quad	0x401a0308787485e4              # double 6.5029620000000001
	.quad	0x3ffc1113836a832c              # double 1.7541690000000001
	.quad	0x40140a9b8cb8e087              # double 5.0103590000000002
	.quad	0x402322b6ae7d566d              # double 9.5678
	.quad	0x3ff4338e6d15ad10              # double 1.2625869999999999
	.quad	0x4010d39f77292c49              # double 4.2066629999999998
	.quad	0x4020c82c2bd7f51f              # double 8.390962
	.quad	0x40125e40c8472c0e              # double 4.5920439999999996
	.quad	0x3fdaeb851eb851ec              # double 0.42062500000000003
	.quad	0x4017cd5c74751ce3              # double 5.9505480000000004
	.quad	0x402263fee2c98e54              # double 9.1953040000000001
	.quad	0x4023eb139c94f69d              # double 9.9591340000000005
	.quad	0x4020030c4588a04d              # double 8.0059529999999999
	.quad	0x400a6da1a93293d1              # double 3.303531
	.quad	0x400899192641b329              # double 3.0747550000000001
	.quad	0x4006eab9b23dd54e              # double 2.8646120000000002
	.quad	0x4017aacc92146a1a              # double 5.9167959999999997
	.quad	0x40226c1d4b6a619e              # double 9.2111610000000006
	.quad	0x3ffc414940bbb1f2              # double 1.7659389999999999
	.quad	0x4018faf5771001d6              # double 6.2450770000000002
	.quad	0x402370398a654930              # double 9.7191890000000001
	.quad	0x40194efbf401c4fc              # double 6.3271329999999999
	.quad	0x4013e95d4e8fb00c              # double 4.9778950000000002
	.quad	0x4021cbaafff36ac6              # double 8.8977889999999995
	.quad	0x3fffc064a9cdc444              # double 1.9844710000000001
	.quad	0x3fecc204f2ae07e6              # double 0.89868400000000004
	.quad	0x3ff2c80a5accd530              # double 1.1738379999999999
	.quad	0x40225c53f39d1b2e              # double 9.1803279999999994
	.quad	0x401e4612c6ac215c              # double 7.5684310000000004
	.quad	0x402010d2c386d2ed              # double 8.0328579999999992
	.quad	0x400f0f765fd8adac              # double 3.8825500000000002
	.quad	0x401c06c7a7c9de05              # double 7.006621
	.quad	0x4019364b2314013f              # double 6.3030210000000002
	.quad	0x4018a87a8d64d7f1              # double 6.1645300000000001
	.quad	0x400840c6b484d76b              # double 3.0316290000000001
	.quad	0x400d9b0bbf50e347              # double 3.7007059999999998
	.quad	0x4007c71a3b14a904              # double 2.9722179999999998
	.quad	0x401b0f25e56cd6c3              # double 6.7647930000000001
	.quad	0x4011bdab5c39bcba              # double 4.4352239999999998
	.quad	0x3ff4061522a6f3f5              # double 1.251485
	.quad	0x4017b14c22ee4192              # double 5.9231420000000004
	.quad	0x401a33a71151611c              # double 6.5504420000000003
	.quad	0x401ebc2c5e2cdc01              # double 7.6837629999999998
	.quad	0x402112f2b66b6178              # double 8.5370080000000002
	.quad	0x4018332ce89656ef              # double 6.049976
	.quad	0x4010c9c27e953155              # double 4.197031
	.quad	0x3fec7d5454152b0a              # double 0.89029899999999995
	.quad	0x402180a244630660              # double 8.7512380000000007
	.quad	0x4016dcdee34fc611              # double 5.7156940000000001
	.quad	0x40208ddebd9018e7              # double 8.2770899999999994
	.quad	0x3fff38ab0c88a47f              # double 1.951335
	.quad	0x401a21e4f765fd8b              # double 6.5331000000000001
	.quad	0x4022d7572de43ed9              # double 9.4205869999999993
	.quad	0x3ffe09e6687f455a              # double 1.8774169999999999
	.quad	0x400e45f9591cd1c8              # double 3.7841670000000001
	.quad	0x40213c725c3dee78              # double 8.6180599999999998
	.quad	0x4015a6e503fb3743              # double 5.4129829999999997
	.quad	0x40201ca3c64345d0              # double 8.0559370000000001
	.quad	0x3fde345069a4df48              # double 0.471943
	.quad	0x40080f42784a9479              # double 3.0074510000000001
	.quad	0x4021389070fbeb9e              # double 8.6104769999999995
	.quad	0x4020fa0642396074              # double 8.4883290000000002
	.quad	0x4006244c7b02d59d              # double 2.7677239999999999
	.quad	0x402378305d95dd4c              # double 9.7347439999999991
	.quad	0x401e274a3400b88d              # double 7.5383690000000003
	.quad	0x4011c299d883ba34              # double 4.4400399999999998
	.quad	0x402247f36ac64778              # double 9.1405290000000007
	.quad	0x40159b862b27cbf7              # double 5.4018790000000001
	.quad	0x400d83f811f4f50a              # double 3.689438
	.quad	0x3ff8f56eac860568              # double 1.55992
	.quad	0x4016da2db61bb060              # double 5.7130650000000003
	.quad	0x3ff475b4edb2f662              # double 1.278737
	.quad	0x4008fc6a7ef9db23              # double 3.1232500000000001
	.quad	0x3fe34ce3de6149c7              # double 0.60313600000000001
	.quad	0x3fe2cfe9b7bf1e8e              # double 0.58787999999999996
	.quad	0x401332b27cbf6e3f              # double 4.7995089999999996
	.quad	0x402123700474d9c7              # double 8.5692140000000006
	.quad	0x4020ae2fdfc19c17              # double 8.3402089999999998
	.quad	0x40231918e325d4a6              # double 9.5490180000000002
	.quad	0x3fff40f238972043              # double 1.9533560000000001
	.quad	0x401ecc4ac6cdaf4b              # double 7.6995040000000001
	.quad	0x401bd0795f676ea4              # double 6.9535879999999999
	.quad	0x401ee7fe8ee6b830              # double 7.7265569999999997
	.quad	0x4022a807570c5650              # double 9.3281810000000007
	.quad	0x400bf563a9f383f1              # double 3.4948190000000001
	.quad	0x4019dd898b2e9ccb              # double 6.4663449999999996
	.quad	0x3fdd2e1262025397              # double 0.45593699999999998
	.quad	0x401038049667b5f2              # double 4.0547050000000002
	.quad	0x4006535b91f70de9              # double 2.790702
	.quad	0x400d7a15db3397dd              # double 3.684612
	.quad	0x40179d68405b39e2              # double 5.9037179999999996
	.quad	0x4011380303c07ee1              # double 4.3046990000000003
	.quad	0x4021224dd2f1a9fc              # double 8.5670000000000001
	.quad	0x3fd0462c343b70ef              # double 0.25428299999999998
	.quad	0x40180b8e086bdf4c              # double 6.0112839999999998
	.quad	0x400f6cdb7ae5796c              # double 3.928153
	.quad	0x401cf66234a87e39              # double 7.2406090000000001
	.quad	0x40216245d41fa765              # double 8.6919389999999996
	.quad	0x401a7ec892ab68cf              # double 6.623812
	.quad	0x3fb409a240314877              # double 0.078271999999999994
	.quad	0x400afab324851a87              # double 3.3724120000000002
	.quad	0x400ecc508b32ce89              # double 3.8497629999999998
	.quad	0x4021d577b7c7820a              # double 8.9169289999999997
	.quad	0x401bda0cae642bfa              # double 6.9629390000000004
	.quad	0x401bf20b8066c2ad              # double 6.9863720000000002
	.quad	0x401c4efe93187619              # double 7.0771430000000004
	.quad	0x40146d373affb04f              # double 5.1066560000000001
	.quad	0x3ffc8f27bb2fec57              # double 1.78495
	.size	.L__constant_4499xf64, 35992

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
