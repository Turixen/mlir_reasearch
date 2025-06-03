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
	.quad	0x4141eaaa0d8d8234              # double 2348372.1058809999
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
	.quad	51                              # 0x33
	.quad	101                             # 0x65
	.quad	141                             # 0x8d
	.quad	186                             # 0xba
	.quad	227                             # 0xe3
	.quad	275                             # 0x113
	.quad	317                             # 0x13d
	.quad	362                             # 0x16a
	.quad	400                             # 0x190
	.quad	444                             # 0x1bc
	.quad	488                             # 0x1e8
	.quad	528                             # 0x210
	.quad	576                             # 0x240
	.quad	616                             # 0x268
	.quad	655                             # 0x28f
	.quad	700                             # 0x2bc
	.quad	738                             # 0x2e2
	.quad	784                             # 0x310
	.quad	834                             # 0x342
	.quad	878                             # 0x36e
	.quad	914                             # 0x392
	.quad	963                             # 0x3c3
	.quad	1007                            # 0x3ef
	.quad	1048                            # 0x418
	.quad	1088                            # 0x440
	.quad	1131                            # 0x46b
	.quad	1182                            # 0x49e
	.quad	1226                            # 0x4ca
	.quad	1269                            # 0x4f5
	.quad	1311                            # 0x51f
	.quad	1358                            # 0x54e
	.quad	1403                            # 0x57b
	.quad	1442                            # 0x5a2
	.quad	1491                            # 0x5d3
	.quad	1533                            # 0x5fd
	.quad	1575                            # 0x627
	.quad	1619                            # 0x653
	.quad	1665                            # 0x681
	.quad	1717                            # 0x6b5
	.quad	1764                            # 0x6e4
	.quad	1801                            # 0x709
	.quad	1846                            # 0x736
	.quad	1891                            # 0x763
	.quad	1934                            # 0x78e
	.quad	1970                            # 0x7b2
	.quad	2015                            # 0x7df
	.quad	2058                            # 0x80a
	.quad	2106                            # 0x83a
	.quad	2154                            # 0x86a
	.quad	2203                            # 0x89b
	.quad	2247                            # 0x8c7
	.quad	2288                            # 0x8f0
	.quad	2332                            # 0x91c
	.quad	2380                            # 0x94c
	.quad	2420                            # 0x974
	.quad	2467                            # 0x9a3
	.quad	2513                            # 0x9d1
	.quad	2565                            # 0xa05
	.quad	2607                            # 0xa2f
	.quad	2652                            # 0xa5c
	.quad	2696                            # 0xa88
	.quad	2745                            # 0xab9
	.quad	2796                            # 0xaec
	.quad	2842                            # 0xb1a
	.quad	2883                            # 0xb43
	.quad	2935                            # 0xb77
	.quad	2982                            # 0xba6
	.quad	3031                            # 0xbd7
	.quad	3077                            # 0xc05
	.quad	3129                            # 0xc39
	.quad	3172                            # 0xc64
	.quad	3231                            # 0xc9f
	.quad	3277                            # 0xccd
	.quad	3325                            # 0xcfd
	.quad	3379                            # 0xd33
	.quad	3427                            # 0xd63
	.quad	3466                            # 0xd8a
	.quad	3509                            # 0xdb5
	.quad	3547                            # 0xddb
	.quad	3595                            # 0xe0b
	.quad	3628                            # 0xe2c
	.quad	3670                            # 0xe56
	.quad	3716                            # 0xe84
	.quad	3760                            # 0xeb0
	.quad	3806                            # 0xede
	.quad	3856                            # 0xf10
	.quad	3891                            # 0xf33
	.quad	3942                            # 0xf66
	.quad	3992                            # 0xf98
	.quad	4029                            # 0xfbd
	.quad	4075                            # 0xfeb
	.quad	4133                            # 0x1025
	.quad	4174                            # 0x104e
	.quad	4227                            # 0x1083
	.quad	4271                            # 0x10af
	.quad	4316                            # 0x10dc
	.quad	4362                            # 0x110a
	.quad	4410                            # 0x113a
	.quad	4449                            # 0x1161
	.quad	4499                            # 0x1193
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4499xindex,@object # @__constant_4499xindex
	.p2align	6, 0x0
.L__constant_4499xindex:
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
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
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	14                              # 0xe
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
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
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
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
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
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
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
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	36                              # 0x24
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
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
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
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
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
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
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
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
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
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
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
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_4499xindex, 35992

	.type	.L__constant_4499xf64,@object   # @__constant_4499xf64
	.p2align	6, 0x0
.L__constant_4499xf64:
	.quad	0x402382131a8ef77f              # double 9.7540519999999997
	.quad	0x401dccdfaca36199              # double 7.4500719999999996
	.quad	0x40171a85caafbc1b              # double 5.7759010000000002
	.quad	0x40150700474d9c6b              # double 5.256837
	.quad	0x4009df5e84f09529              # double 3.234067
	.quad	0x4019679bbadc0981              # double 6.3511800000000003
	.quad	0x3ff72a3cea6c1a05              # double 1.4478120000000001
	.quad	0x40187317268d3283              # double 6.112393
	.quad	0x402021a11233df2b              # double 8.0656820000000007
	.quad	0x4010f522ea0fd3b3              # double 4.2393910000000004
	.quad	0x4003a6937d1fe64f              # double 2.4563359999999999
	.quad	0x3ff625bc87db2b34              # double 1.3842129999999999
	.quad	0x40195bf0995aaf79              # double 6.339785
	.quad	0x3ffb97a355043e53              # double 1.724521
	.quad	0x4008b7f9d6f112fd              # double 3.0898319999999999
	.quad	0x3ff0b8fabda0dfdf              # double 1.045161
	.quad	0x40221e277c45cbbc              # double 9.0588949999999996
	.quad	0x40167897635e742a              # double 5.6177650000000003
	.quad	0x4016c538ac18f81f              # double 5.6925990000000004
	.quad	0x4016f3150dae3e6c              # double 5.7373849999999997
	.quad	0x401dcf0c77dd872f              # double 7.4521959999999998
	.quad	0x3fd7bfe3b03e20cd              # double 0.371087
	.quad	0x3fec7687b139c94f              # double 0.88946899999999995
	.quad	0x40226031ceaf251c              # double 9.1878799999999998
	.quad	0x402247beb9e492bc              # double 9.1401269999999996
	.quad	0x40191a26e5471716              # double 6.2755390000000002
	.quad	0x40054ecd8dbcec85              # double 2.663478
	.quad	0x401b3baba7b9170d              # double 6.8082719999999997
	.quad	0x4016a5807fed2029              # double 5.6616229999999996
	.quad	0x40208645c358afc4              # double 8.2622509999999991
	.quad	0x400742da554b8bf0              # double 2.9076430000000002
	.quad	0x3fec8e2c12ad81ae              # double 0.89235500000000001
	.quad	0x4000776683c297c0              # double 2.0583010000000002
	.quad	0x3ffbe3150dae3e6c              # double 1.7429399999999999
	.quad	0x401520ffda4052d6              # double 5.2822259999999996
	.quad	0x4011fbfa4c61d862              # double 4.4960719999999998
	.quad	0x3ff75844d013a92a              # double 1.45905
	.quad	0x40227540aaeafab5              # double 9.2290089999999996
	.quad	0x401c7c4da9003eea              # double 7.1213899999999999
	.quad	0x402395f47f993d53              # double 9.7928809999999995
	.quad	0x4018cdf0d413122b              # double 6.2011139999999996
	.quad	0x3ff0f99806f26289              # double 1.0609360000000001
	.quad	0x402072d46f587d70              # double 8.2242770000000007
	.quad	0x4021979314445aa3              # double 8.7960440000000002
	.quad	0x40154dc37a3db3c0              # double 5.3259410000000003
	.quad	0x40221324638c9753              # double 9.0373870000000007
	.quad	0x400a32452c59fb1e              # double 3.274546
	.quad	0x3fe24d39da16616b              # double 0.57192699999999996
	.quad	0x401ffc5c13fd0d06              # double 7.9964449999999996
	.quad	0x4011fb5fa22706d5              # double 4.495482
	.quad	0x40212b7f5a5332ad              # double 8.584956
	.quad	0x401ee72fba01eeee              # double 7.7257680000000004
	.quad	0x400ffba12b5e529c              # double 3.9978660000000001
	.quad	0x401129fd7a13c255              # double 4.2910060000000003
	.quad	0x3fec64d1a6506141              # double 0.88730699999999996
	.quad	0x401803ac0c62e4d2              # double 6.0035860000000003
	.quad	0x4006bded6ba8c587              # double 2.8427380000000002
	.quad	0x401cc4db9c7368ad              # double 7.1922439999999996
	.quad	0x401a2ababead4f59              # double 6.541728
	.quad	0x400b0909289dadfb              # double 3.3794119999999999
	.quad	0x4020e648626f60e1              # double 8.4497710000000001
	.quad	0x3ff1c35ce1826677              # double 1.110196
	.quad	0x4022a9991361dc94              # double 9.3312460000000001
	.quad	0x40156c15097c8084              # double 5.3555489999999999
	.quad	0x40078534373f316e              # double 2.9400409999999999
	.quad	0x40221f229e90795f              # double 9.0608109999999993
	.quad	0x40098d9be4cd7492              # double 3.1941449999999998
	.quad	0x4022b0e219652bd4              # double 9.3454750000000004
	.quad	0x402141986b9c304d              # double 8.6281160000000003
	.quad	0x4018753fc0096feb              # double 6.1145009999999997
	.quad	0x4021c8752da98677              # double 8.8915190000000006
	.quad	0x4018787ad080b674              # double 6.1176560000000002
	.quad	0x400d8165907d9125              # double 3.6881819999999998
	.quad	0x402138198f1d3ed5              # double 8.6095699999999997
	.quad	0x3fe0093964a59c06              # double 0.50112599999999996
	.quad	0x4023976598e10cf6              # double 9.7956970000000005
	.quad	0x401ee44241c3efae              # double 7.7229089999999996
	.quad	0x400a3fe004b7f5a5              # double 3.2811889999999999
	.quad	0x401868ecd8dbcec8              # double 6.1024659999999997
	.quad	0x40231e35c5b4aa97              # double 9.5590039999999998
	.quad	0x4022289c5e6ff7e0              # double 9.0793180000000007
	.quad	0x402192615a8deb10              # double 8.7858990000000006
	.quad	0x4022c72ecf206424              # double 9.3890290000000007
	.quad	0x40208cd87724fa8b              # double 8.2750889999999995
	.quad	0x401bf81e8a2ec28b              # double 6.9923039999999999
	.quad	0x4007870da5daf07c              # double 2.940944
	.quad	0x402132b6ae7d566d              # double 8.5990500000000001
	.quad	0x4003f74e65bea0ba              # double 2.4957549999999999
	.quad	0x40135fe3f359ff50              # double 4.8436430000000001
	.quad	0x3ff81fb6134ce3de              # double 1.5077419999999999
	.quad	0x3ffb810624dd2f1b              # double 1.7190000000000001
	.quad	0x401116f694467382              # double 4.2724250000000001
	.quad	0x400b7bca9691a75d              # double 3.4354450000000001
	.quad	0x4019c01a36e2eb1c              # double 6.4375999999999998
	.quad	0x4015e9a5ebb7739f              # double 5.4781719999999998
	.quad	0x3fea69ee45c358b0              # double 0.82543100000000003
	.quad	0x4020084ff43419e3              # double 8.016235
	.quad	0x400be9e7fb267c6c              # double 3.4892120000000002
	.quad	0x3fdae6d15ad106ee              # double 0.42033799999999999
	.quad	0x401b4de19fc2a887              # double 6.8260560000000003
	.quad	0x3ff0031162281345              # double 1.0007490000000001
	.quad	0x3ff3c713f077ccc0              # double 1.236103
	.quad	0x3ff906801711947d              # double 1.564087
	.quad	0x401cb831f03d145e              # double 7.1798780000000004
	.quad	0x40232bd4280ae105              # double 9.5856030000000007
	.quad	0x4020002a3486f04a              # double 8.0003220000000006
	.quad	0x401f5b90ea9e6eeb              # double 7.8394199999999996
	.quad	0x40000b7e4de3b8a2              # double 2.0056120000000002
	.quad	0x4022e0427418d691              # double 9.4380070000000007
	.quad	0x401482480e8c8abd              # double 5.1272279999999997
	.quad	0x402377470eb24a6b              # double 9.7329640000000008
	.quad	0x3ffd0d141a6937d2              # double 1.815693
	.quad	0x3ffbf6bf444e0daa              # double 1.747741
	.quad	0x4021f99392189bd8              # double 8.9874539999999996
	.quad	0x401d368f08461f9f              # double 7.30328
	.quad	0x400340e0eb67c287              # double 2.406679
	.quad	0x4021384a72ead927              # double 8.6099429999999995
	.quad	0x3fffaf86a098915c              # double 1.980353
	.quad	0x4001e2396073de1e              # double 2.2354609999999999
	.quad	0x4016b594af4f0d84              # double 5.6773249999999997
	.quad	0x400fe3b1d0c80410              # double 3.9861789999999999
	.quad	0x3ffa58afc47e49b2              # double 1.646652
	.quad	0x400b72ba16e7a312              # double 3.431019
	.quad	0x4019665c70435efa              # double 6.3499619999999997
	.quad	0x40235e12c6ac215c              # double 9.6837370000000007
	.quad	0x40134c03bc4d22c9              # double 4.8242330000000004
	.quad	0x401ccbf6e3f78bbd              # double 7.1991839999999998
	.quad	0x40116c5ac471b478              # double 4.3558149999999998
	.quad	0x4023151e108c3f3e              # double 9.541245
	.quad	0x40219a4463065f96              # double 8.8013030000000008
	.quad	0x402125b91f70de8f              # double 8.5736779999999992
	.quad	0x402220cae642bf98              # double 9.0640479999999997
	.quad	0x401f9dc11e42e126              # double 7.9040569999999999
	.quad	0x40233b9ffd60e94f              # double 9.6164550000000001
	.quad	0x401697ec3547e069              # double 5.6483619999999997
	.quad	0x3ff128bc169c23b8              # double 1.0724450000000001
	.quad	0x401aaf99c38b04ab              # double 6.6714849999999997
	.quad	0x401f983621fafc8b              # double 7.8986439999999999
	.quad	0x3ff7b634dad31fcd              # double 1.481984
	.quad	0x401e20abb44e50c6              # double 7.5319050000000001
	.quad	0x3fdb0f6273929ed4              # double 0.42281400000000002
	.quad	0x4020935610adcd2d              # double 8.2877659999999995
	.quad	0x400cc0fcb4f1e4b4              # double 3.5942319999999999
	.quad	0x4005877a2cecc815              # double 2.6911510000000001
	.quad	0x401ff681ecd4aa11              # double 7.9907300000000001
	.quad	0x3fd03dc486ad2dcb              # double 0.25377
	.quad	0x401ea1f9acffa7eb              # double 7.6581789999999996
	.quad	0x40117240b780346e              # double 4.3615750000000002
	.quad	0x401e07bb73083559              # double 7.5075510000000003
	.quad	0x3ff34c5c9a34ca0c              # double 1.206143
	.quad	0x402158ef34d6a162              # double 8.6737000000000002
	.quad	0x3ffd3121ab4b72c5              # double 1.824495
	.quad	0x4020bcf28c79f666              # double 8.3690379999999998
	.quad	0x3ffede6bc621b7e1              # double 1.9293020000000001
	.quad	0x401778348f53c57a              # double 5.867388
	.quad	0x4017b6aad1d041cc              # double 5.9283859999999997
	.quad	0x400cf1dabe27179c              # double 3.618093
	.quad	0x4023b432ebe596c8              # double 9.8519509999999996
	.quad	0x4011f3e89a88ace2              # double 4.4881919999999997
	.quad	0x3f893250b524399b              # double 0.012303
	.quad	0x400d18fbca1059ea              # double 3.6371989999999998
	.quad	0x402295b2702a3487              # double 9.2923770000000001
	.quad	0x40153fa22706d506              # double 5.3121419999999997
	.quad	0x4016d29e90795f67              # double 5.7056829999999996
	.quad	0x4016dd4b6a619daa              # double 5.7161080000000002
	.quad	0x4008f4ec204f2ae0              # double 3.1195909999999998
	.quad	0x4018a743632c1f43              # double 6.1633430000000002
	.quad	0x4016c1183b60285f              # double 5.6885690000000002
	.quad	0x4011aed3d859c8c9              # double 4.4207299999999998
	.quad	0x402081cef240fa9c              # double 8.2535319999999998
	.quad	0x401071e57d9dba91              # double 4.1112270000000004
	.quad	0x400076df3f961805              # double 2.0580430000000001
	.quad	0x401516fc158fb43e              # double 5.2724460000000004
	.quad	0x4007b72d5e071c54              # double 2.964442
	.quad	0x4007dda4052d666b              # double 2.9832230000000002
	.quad	0x400f4b3d4ae429e1              # double 3.9117380000000002
	.quad	0x401d5e86c6583e85              # double 7.3423109999999996
	.quad	0x400905c0b9991362              # double 3.1278090000000001
	.quad	0x40190cdf69878317              # double 6.2625710000000003
	.quad	0x3ff14432ca57a787              # double 1.0791500000000001
	.quad	0x401a8167ec7863bf              # double 6.6263730000000001
	.quad	0x40065da836eb4e98              # double 2.795731
	.quad	0x401d10b45ae5ffa4              # double 7.2663130000000002
	.quad	0x3fecd1a21ea35936              # double 0.90059
	.quad	0x402209774256bca5              # double 9.0184879999999996
	.quad	0x401b56922d948dc1              # double 6.8345419999999999
	.quad	0x4020b68858ff7597              # double 8.3565090000000009
	.quad	0x4019c9ff0cbaf966              # double 6.4472620000000003
	.quad	0x401f584a9478c869              # double 7.8362220000000002
	.quad	0x401871b823c85c25              # double 6.1110540000000002
	.quad	0x400b8323bbc6eb0b              # double 3.4390329999999998
	.quad	0x401103397dd00f77              # double 4.2531489999999996
	.quad	0x40166523b3636f3b              # double 5.5987689999999999
	.quad	0x401322aa5c5f7c67              # double 4.7838529999999997
	.quad	0x4011c352eb5f5f0b              # double 4.4407459999999999
	.quad	0x4022d5c0b9991362              # double 9.4174860000000002
	.quad	0x401f4116659d12cb              # double 7.8135620000000001
	.quad	0x3ffe238327674d16              # double 1.88367
	.quad	0x4012e42352eb5f5f              # double 4.722791
	.quad	0x3fdf4fa8b4bf8fcd              # double 0.48923699999999998
	.quad	0x40081c714fce746d              # double 3.0138880000000001
	.quad	0x400143947496aad2              # double 2.1579980000000001
	.quad	0x40219a732df505d1              # double 8.80166
	.quad	0x401cdce0b912dba5              # double 7.2157010000000001
	.quad	0x3ffa1c087442c7fc              # double 1.6318440000000001
	.quad	0x3fe17c99ae924f22              # double 0.54645999999999995
	.quad	0x3ffadc15097c8084              # double 1.678731
	.quad	0x4010e93b7d84901d              # double 4.2277659999999999
	.quad	0x4013985ad538ac19              # double 4.898784
	.quad	0x402353530ced4e4d              # double 9.6627430000000007
	.quad	0x4011caba7b9170d6              # double 4.4479769999999998
	.quad	0x40150da059a73b43              # double 5.2633070000000002
	.quad	0x401f227e5215768a              # double 7.7836850000000002
	.quad	0x3fe9df84cad57bc8              # double 0.808535
	.quad	0x3fe1475a31a4bdba              # double 0.53996
	.quad	0x401f8e996312f4cf              # double 7.8892569999999997
	.quad	0x4007bc8eabffcdab              # double 2.967069
	.quad	0x400d65dd095af295              # double 3.6747380000000001
	.quad	0x4006a4c059210386              # double 2.8304450000000001
	.quad	0x3ff522d83c6c97d9              # double 1.321007
	.quad	0x40184bf401c4fc1e              # double 6.074173
	.quad	0x3ffacbb3c81908e6              # double 1.6747320000000001
	.quad	0x3ffd4aea747d805e              # double 1.8307899999999999
	.quad	0x3ffc53ea2d2fe3f3              # double 1.7704869999999999
	.quad	0x3ff3313165d39970              # double 1.1995100000000001
	.quad	0x4021ebe5109070fc              # double 8.9607320000000001
	.quad	0x401531593e5fb720              # double 5.2981920000000002
	.quad	0x4020cd3f39d1b2e6              # double 8.4008730000000007
	.quad	0x401d846aa087ca64              # double 7.3793129999999998
	.quad	0x3ffbf345069a4df4              # double 1.7468919999999999
	.quad	0x4023aa64a16a4873              # double 9.8327989999999996
	.quad	0x40134b62413db7f1              # double 4.8236169999999996
	.quad	0x4022699cbee807bc              # double 9.2062740000000005
	.quad	0x3ff268262456f75e              # double 1.1504270000000001
	.quad	0x401da1dda059a73b              # double 7.4080719999999998
	.quad	0x401b2796bfca85cb              # double 6.7886610000000003
	.quad	0x401333964a59c066              # double 4.8003780000000003
	.quad	0x40079816aceaaf36              # double 2.9492620000000001
	.quad	0x4006fb951c5c5719              # double 2.872843
	.quad	0x401c8797460242d0              # double 7.1324129999999997
	.quad	0x4019cfdcdf698783              # double 6.4529909999999999
	.quad	0x3ffce012599ed7c7              # double 1.804705
	.quad	0x3fe79c065b63d3e5              # double 0.73779600000000001
	.quad	0x401aabea0ba1f4b2              # double 6.6678850000000001
	.quad	0x402074eaf251c194              # double 8.2283550000000005
	.quad	0x4022bd53ef6b5d46              # double 9.3697809999999997
	.quad	0x4010a5e13b18dac2              # double 4.1619919999999997
	.quad	0x4022b5a98676a726              # double 9.3548089999999995
	.quad	0x3ff93afd976ff3ae              # double 1.576902
	.quad	0x3ff11310129cbab6              # double 1.0671539999999999
	.quad	0x40177f6f08cc575c              # double 5.874447
	.quad	0x40146fe0ce0b912e              # double 5.1092560000000002
	.quad	0x401e84c48adeebb3              # double 7.6296559999999997
	.quad	0x401a292ff4ba51a0              # double 6.540222
	.quad	0x400a2df1e0828c37              # double 3.2724340000000001
	.quad	0x3fddba8826aa8eb4              # double 0.46450999999999998
	.quad	0x4013afd00713f078              # double 4.9216920000000002
	.quad	0x4004689b951c5c57              # double 2.551078
	.quad	0x40227489f40a2878              # double 9.2276150000000001
	.quad	0x4023801882adc4ca              # double 9.7501870000000004
	.quad	0x401ef99806f26289              # double 7.7437440000000004
	.quad	0x4019e4f82f512663              # double 6.4736029999999998
	.quad	0x4020c7e23f24d8fd              # double 8.3903979999999994
	.quad	0x401229b4dcebfec1              # double 4.5407289999999998
	.quad	0x3ff049310129cbab              # double 1.0178689999999999
	.quad	0x4022343a647fdc59              # double 9.1020079999999997
	.quad	0x4002f354c122749f              # double 2.368814
	.quad	0x3ffdfdd76683c298              # double 1.8744730000000001
	.quad	0x4021363736cdf267              # double 8.6058900000000005
	.quad	0x40164bc1acde19fc              # double 5.5739809999999999
	.quad	0x401be959a30984e4              # double 6.977881
	.quad	0x3fd46c7a7c9de050              # double 0.31912099999999999
	.quad	0x401492d77318fc50              # double 5.1433999999999997
	.quad	0x400a7839cd8127b3              # double 3.3087040000000001
	.quad	0x3ff5fc7e6b3fe9fb              # double 1.374144
	.quad	0x402356b9c304ccee              # double 9.6693859999999994
	.quad	0x3ff5c258d5842b73              # double 1.3599479999999999
	.quad	0x400d8f6598e10cf6              # double 3.6950180000000001
	.quad	0x3fd6ef0f16f4384c              # double 0.35834100000000002
	.quad	0x400c7db1209edbf9              # double 3.5613730000000001
	.quad	0x402395ba2be0589b              # double 9.7924360000000003
	.quad	0x401c39ea57214f05              # double 7.0565579999999999
	.quad	0x3ff3b0aa21a719b5              # double 1.230631
	.quad	0x4003e3ea704bc276              # double 2.4862869999999999
	.quad	0x4018979f666234a8              # double 6.1480689999999996
	.quad	0x401d8e15ca6ca03c              # double 7.3887549999999997
	.quad	0x40030f8726d04e62              # double 2.3825820000000002
	.quad	0x3fef036a832b990b              # double 0.969167
	.quad	0x401e392af9a8cdea              # double 7.555828
	.quad	0x4020cae147ae147b              # double 8.3962500000000002
	.quad	0x400411d3ed527e52              # double 2.508705
	.quad	0x3fe6b764f11b60af              # double 0.70988700000000005
	.quad	0x4019136da87a072d              # double 6.2689729999999999
	.quad	0x4023973ba775fb2f              # double 9.7953770000000002
	.quad	0x4017dafa7221858c              # double 5.9638460000000002
	.quad	0x401e7178f68be2f8              # double 7.6108130000000002
	.quad	0x401698259e1f3a58              # double 5.6485810000000001
	.quad	0x401a8a5269595fee              # double 6.6350800000000003
	.quad	0x3fec54c122749f0e              # double 0.88534599999999997
	.quad	0x40153416bdb1a6d7              # double 5.3008680000000004
	.quad	0x3fab5f3d7d3910c3              # double 0.053461000000000002
	.quad	0x4016289c1b54195d              # double 5.5396580000000002
	.quad	0x400c8b76709fa54c              # double 3.5680969999999999
	.quad	0x3fe62778140dd3fe              # double 0.69231799999999999
	.quad	0x4019247dc37a3db4              # double 6.2856360000000002
	.quad	0x3ffca75ff609dcf9              # double 1.7908630000000001
	.quad	0x3ff5b955f78359bc              # double 1.357748
	.quad	0x401a8426fe718a87              # double 6.6290550000000001
	.quad	0x4015f9fc6da44849              # double 5.4941269999999998
	.quad	0x401aacf67b1c0011              # double 6.6689090000000002
	.quad	0x401d1996fa82e87d              # double 7.2749899999999998
	.quad	0x4015c25bb7b6bb13              # double 5.4398030000000004
	.quad	0x3fea4434e3369b9d              # double 0.82082599999999994
	.quad	0x3ff15e364bec679d              # double 1.085501
	.quad	0x401d2ccb3a2595bc              # double 7.2937440000000002
	.quad	0x401649cc319c5a3e              # double 5.5720679999999998
	.quad	0x40200ac258d5842b              # double 8.0210139999999992
	.quad	0x4016789b0ee49f51              # double 5.6177789999999996
	.quad	0x401eb5629d8409e5              # double 7.6771339999999996
	.quad	0x3fdeb9a9da597d4a              # double 0.48008200000000001
	.quad	0x4007c5add9c27e95              # double 2.9715229999999999
	.quad	0x40139fec13b9f128              # double 4.906174
	.quad	0x3ff8faf533f42353              # double 1.561269
	.quad	0x4007790c0ad03d9b              # double 2.9341050000000002
	.quad	0x4011c914b167ec78              # double 4.4463679999999997
	.quad	0x400d546dc5d63886              # double 3.6662249999999998
	.quad	0x40127cd7cf5f4e44              # double 4.6219169999999998
	.quad	0x401c60f5e41d4b6a              # double 7.0946879999999997
	.quad	0x4007e1ab4b72c519              # double 2.9851899999999998
	.quad	0x4022ffb0d51f81a6              # double 9.4993960000000008
	.quad	0x40161ce0b912dba5              # double 5.5282010000000001
	.quad	0x401b24877681669d              # double 6.7856730000000001
	.quad	0x401eff37329c347f              # double 7.7492340000000003
	.quad	0x4012605ab3aabcd8              # double 4.5940960000000004
	.quad	0x4008c4c271fff79d              # double 3.0960740000000002
	.quad	0x40157e27e0ef9980              # double 5.3731989999999996
	.quad	0x3ff57da9435ac8a3              # double 1.3431789999999999
	.quad	0x40232e6d373affb0              # double 9.5906769999999995
	.quad	0x400573f748a15981              # double 2.6816239999999998
	.quad	0x400de6c97d8cf399              # double 3.737689
	.quad	0x3ffc0ad794a6eb92              # double 1.7526470000000001
	.quad	0x401807446f9b994e              # double 6.0070969999999999
	.quad	0x4020175afaf85943              # double 8.0456160000000008
	.quad	0x4013f1ec918e325d              # double 4.9862539999999997
	.quad	0x40184c2f837b4a23              # double 6.0743999999999998
	.quad	0x400f1753a3ec02f3              # double 3.88639
	.quad	0x4013f480e8c8abd6              # double 4.9887730000000001
	.quad	0x401846f3b213e3e3              # double 6.0692890000000004
	.quad	0x401f5e55c0fcb4f2              # double 7.8421240000000001
	.quad	0x401c595feda66128              # double 7.0872799999999998
	.quad	0x4022c829068986fd              # double 9.3909380000000002
	.quad	0x3fc0049ecb31c21a              # double 0.125141
	.quad	0x3fec4efed634549b              # double 0.88464299999999996
	.quad	0x4017e2ca148ba83f              # double 5.9714739999999997
	.quad	0x401cb818c5c9a34d              # double 7.1797820000000003
	.quad	0x402352263d816acf              # double 9.6604480000000005
	.quad	0x3febcbd1244a6224              # double 0.86863000000000001
	.quad	0x402361c90c4dec1c              # double 9.6909869999999997
	.quad	0x400749a2c669057d              # double 2.910955
	.quad	0x4016b60b2c83ec89              # double 5.6777769999999999
	.quad	0x40032fa05143bf72              # double 2.3982549999999998
	.quad	0x40123d6f97679032              # double 4.5599959999999999
	.quad	0x40223b2441fea811              # double 9.1155109999999997
	.quad	0x4021cbb55ac03ff7              # double 8.8978680000000008
	.quad	0x3ff11d441355475a              # double 1.069645
	.quad	0x400601af7d30ad47              # double 2.750823
	.quad	0x40181c5b8dc55001              # double 6.0276930000000002
	.quad	0x4022bc99d0203e64              # double 9.3683610000000001
	.quad	0x401dafd694ccab3f              # double 7.4217170000000001
	.quad	0x400181d19157abb9              # double 2.1883880000000002
	.quad	0x401582ecf2064239              # double 5.3778569999999997
	.quad	0x4013983ad9f0a1be              # double 4.8986619999999998
	.quad	0x401d9b3743632c1f              # double 7.4015779999999998
	.quad	0x401bc42d05f28848              # double 6.9415779999999998
	.quad	0x40138b6284599674              # double 4.8861179999999997
	.quad	0x400bc08205ff1d82              # double 3.468998
	.quad	0x400b8edd48451330              # double 3.4447580000000002
	.quad	0x4015e18266772d5e              # double 5.470224
	.quad	0x4018745aa2e3c537              # double 6.1136270000000001
	.quad	0x401217eae5bc87db              # double 4.5233569999999999
	.quad	0x401dc29c347e8cce              # double 7.4400490000000001
	.quad	0x4014d2c061847f56              # double 5.2058119999999999
	.quad	0x400fd2ae07e5a78f              # double 3.9778709999999999
	.quad	0x3ff95757d5a9eb20              # double 1.5838239999999999
	.quad	0x401445f4a1272c95              # double 5.0683160000000003
	.quad	0x401875109070fbec              # double 6.1143210000000003
	.quad	0x401615193708aac9              # double 5.5206039999999996
	.quad	0x401f777f6b1a2a4e              # double 7.8666970000000003
	.quad	0x400a3dd095af294e              # double 3.2801830000000001
	.quad	0x40189d6dc1a47a9e              # double 6.1537389999999998
	.quad	0x400b1f24d8fd5cb8              # double 3.3902070000000002
	.quad	0x4019ed21ff2e48e9              # double 6.4815750000000003
	.quad	0x401f4fed634549b6              # double 7.8280539999999998
	.quad	0x401f2157689ca18c              # double 7.7825600000000001
	.quad	0x4020eb8c111ada77              # double 8.4600530000000003
	.quad	0x4021021144cbe1eb              # double 8.5040379999999995
	.quad	0x3fc2712e40852b4e              # double 0.14407900000000001
	.quad	0x3fdc3da72a7bd48d              # double 0.44126300000000002
	.quad	0x400e56e82949a565              # double 3.7924349999999998
	.quad	0x4017506573215fcc              # double 5.8285119999999999
	.quad	0x40220e90795f676f              # double 9.0284460000000006
	.quad	0x4020a5e9e1b089a0              # double 8.3240499999999997
	.quad	0x3fe47ea5f84cad58              # double 0.64046000000000003
	.quad	0x4020d09c5e6ff7e0              # double 8.4074430000000007
	.quad	0x40203ff79c842fa5              # double 8.1249359999999999
	.quad	0x4021ffb352a84381              # double 8.9994150000000008
	.quad	0x4002e59f2ba9d1f6              # double 2.36212
	.quad	0x4021264f97edc7ef              # double 8.5748259999999998
	.quad	0x4019b73fb7a5f41b              # double 6.4289540000000001
	.quad	0x400e8182ecaeea64              # double 3.8132380000000001
	.quad	0x3fed1c36976bc1f0              # double 0.909694
	.quad	0x401663486f049a99              # double 5.5969559999999996
	.quad	0x4004969c23b7952d              # double 2.5735399999999999
	.quad	0x401a19ccfaeff5c7              # double 6.5251960000000002
	.quad	0x4010fa8d64d7f0ed              # double 4.2446799999999998
	.quad	0x400c49ad42c3c9ef              # double 3.5359750000000001
	.quad	0x4020347b890d5a5c              # double 8.1025050000000007
	.quad	0x3ff55816aceaaf36              # double 1.334006
	.quad	0x3fe2cdd2f1a9fbe7              # double 0.58762499999999995
	.quad	0x402117739f340d4e              # double 8.5458040000000004
	.quad	0x40212d6dc1a47a9e              # double 8.5887279999999997
	.quad	0x402277d47bedb728              # double 9.2340429999999997
	.quad	0x3ff5c4cf0739b025              # double 1.360549
	.quad	0x4021e2fab53d640f              # double 8.9433190000000007
	.quad	0x400db32830a0b1bc              # double 3.7124790000000001
	.quad	0x400a78316a055758              # double 3.3086880000000001
	.quad	0x401b330df9bdc6a0              # double 6.7998580000000004
	.quad	0x3fc0626f60e0eb68              # double 0.12800400000000001
	.quad	0x40130c69b5a63f9a              # double 4.7621219999999997
	.quad	0x40227683c297bfa5              # double 9.2314740000000004
	.quad	0x401dd39ffd60e94f              # double 7.4566650000000001
	.quad	0x40188b94d9407896              # double 6.1363099999999999
	.quad	0x3ffb548ecd8dbced              # double 1.7081440000000001
	.quad	0x3fa76a93f290abb4              # double 0.045734999999999998
	.quad	0x402357c6b8b69553              # double 9.6714380000000002
	.quad	0x401b12e62131a8ef              # double 6.7684559999999996
	.quad	0x401b8177ea1c68ec              # double 6.8764339999999997
	.quad	0x401293fe1975f2cb              # double 4.6445239999999997
	.quad	0x401182339c0ebee0              # double 4.3771500000000003
	.quad	0x402388bac710cb29              # double 9.7670499999999993
	.quad	0x4022c3d2b6f19935              # double 9.3824670000000001
	.quad	0x4012b3db7f173754              # double 4.6756419999999999
	.quad	0x400859f2ba9d1f60              # double 3.04392
	.quad	0x40222cd61b2a27f2              # double 9.0875710000000005
	.quad	0x401d94df8b157258              # double 7.3953839999999999
	.quad	0x4020373e0370cdc8              # double 8.1078949999999992
	.quad	0x4000a79cc74b838c              # double 2.081842
	.quad	0x4018498aeb80ecfa              # double 6.0718189999999996
	.quad	0x401ee97fa5d28d00              # double 7.7280259999999998
	.quad	0x401baf8012dfd695              # double 6.9213870000000002
	.quad	0x40000cbc05d52c17              # double 2.0062180000000001
	.quad	0x4020ddde9c0229a6              # double 8.4333390000000001
	.quad	0x401ab96a26e54717              # double 6.6810689999999999
	.quad	0x40208630014f8b59              # double 8.2620850000000008
	.quad	0x401c4ebbfd71b047              # double 7.0768890000000004
	.quad	0x40208aa12f901084              # double 8.2707610000000002
	.quad	0x4014777ee4e26d48              # double 5.116695
	.quad	0x3fff1b291b823c86              # double 1.9441310000000001
	.quad	0x3fe959b5e95b78cd              # double 0.79220100000000004
	.quad	0x3fe9d2e514c22ee4              # double 0.80699399999999998
	.quad	0x401644b61fe21d97              # double 5.5671010000000001
	.quad	0x4017d7891e215337              # double 5.9604840000000001
	.quad	0x40175b2bba98eda2              # double 5.8390339999999998
	.quad	0x40147becedd48451              # double 5.1210209999999998
	.quad	0x3fec12a737110e45              # double 0.87727699999999997
	.quad	0x40177a237cdcca71              # double 5.8692760000000002
	.quad	0x4014671d1d4738a4              # double 5.1006970000000003
	.quad	0x401a4a5332acfb76              # double 6.5725829999999998
	.quad	0x400ac60b2c83ec89              # double 3.3467009999999999
	.quad	0x3ff752231832fcad              # double 1.4575530000000001
	.quad	0x40142b6ae7d566cf              # double 5.0423999999999998
	.quad	0x3ff7a059a73b42cc              # double 1.476648
	.quad	0x4022908d2a1f8e3b              # double 9.2823270000000004
	.quad	0x4011c633482be8bc              # double 4.4435549999999999
	.quad	0x4010e7ef177a7009              # double 4.2264980000000003
	.quad	0x40204b0574b40703              # double 8.1465259999999997
	.quad	0x401b2cdfaca36199              # double 6.7938219999999996
	.quad	0x400079e6ab9b23dd              # double 2.0595219999999999
	.quad	0x402147d1bb4916ca              # double 8.6402719999999995
	.quad	0x401b11d0c8041030              # double 6.767398
	.quad	0x400843f359ff4fd7              # double 3.0331790000000001
	.quad	0x3feca278d0cc35ce              # double 0.89483299999999999
	.quad	0x401a49f8c21e1d21              # double 6.5722379999999996
	.quad	0x40039b97353b4b30              # double 2.4509720000000002
	.quad	0x401b9e15ca6ca03c              # double 6.9043799999999997
	.quad	0x402105c03361565c              # double 8.5112319999999996
	.quad	0x401b77518b0d0edc              # double 6.8665219999999998
	.quad	0x40077813879c4114              # double 2.9336310000000001
	.quad	0x3fed2795703f2d3c              # double 0.91108199999999994
	.quad	0x3fe65d82fd75e204              # double 0.69891499999999995
	.quad	0x3ff4a01de2691644              # double 1.289091
	.quad	0x4015cebe1650a45d              # double 5.4518969999999998
	.quad	0x40146a2ec28b2a6b              # double 5.103694
	.quad	0x40209f9fa97e132b              # double 8.3117649999999994
	.quad	0x3fe48691ea78af3e              # double 0.64142699999999997
	.quad	0x3ffa4f3fd933e35c              # double 1.6443479999999999
	.quad	0x400c440d0aaa7ded              # double 3.5332279999999998
	.quad	0x4009944c37e6f71a              # double 3.1974109999999998
	.quad	0x4022321d10b1feeb              # double 9.0978779999999997
	.quad	0x3fd2d4306e5cd4ed              # double 0.29420099999999999
	.quad	0x4016cc169c23b795              # double 5.6993049999999998
	.quad	0x4013a54046412cf1              # double 4.911378
	.quad	0x40083e1c9b413986              # double 3.0303279999999999
	.quad	0x40151a237cdcca71              # double 5.2755260000000002
	.quad	0x4021bfb6fe2e6ea8              # double 8.8744429999999994
	.quad	0x402224827b6fe2e7              # double 9.0713080000000001
	.quad	0x3fe2dbfceb78897f              # double 0.58935400000000004
	.quad	0x400fc7c30d306a2b              # double 3.97254
	.quad	0x40230947064ece9a              # double 9.5181199999999997
	.quad	0x4000509635610add              # double 2.0393490000000001
	.quad	0x3ff88c9ea9a3d2d8              # double 1.5343309999999999
	.quad	0x3fe75fbb517a4617              # double 0.73043599999999997
	.quad	0x4020d47368ad6883              # double 8.4149429999999992
	.quad	0x40149777079e59f3              # double 5.1479150000000002
	.quad	0x40175b77c02afddb              # double 5.8393240000000004
	.quad	0x400e8f98fa376923              # double 3.8201160000000001
	.quad	0x401e2f7dfa00e27e              # double 7.5463789999999999
	.quad	0x402335f69878316a              # double 9.605397
	.quad	0x40081a543f1c7582              # double 3.0128560000000002
	.quad	0x40102eb56fb8f57f              # double 4.0456139999999996
	.quad	0x40132c9d9d3458cd              # double 4.7935699999999999
	.quad	0x40229898d477bbf9              # double 9.2980409999999996
	.quad	0x40157a80064a9cdc              # double 5.3696289999999998
	.quad	0x3ffcfec13b9f127f              # double 1.8121959999999999
	.quad	0x40236963fdd65a14              # double 9.7058409999999994
	.quad	0x3fe8e6eeb702602d              # double 0.77819000000000005
	.quad	0x400edf61aa3f034b              # double 3.859073
	.quad	0x3fc6c1ca3a4b5569              # double 0.177789
	.quad	0x3ff0889e34330d74              # double 1.0333540000000001
	.quad	0x401aa63e8dda48b6              # double 6.6623479999999997
	.quad	0x40207dc2d2780779              # double 8.2456270000000007
	.quad	0x400e3b24638c9753              # double 3.7788780000000002
	.quad	0x400193ef6b5d462c              # double 2.1972339999999999
	.quad	0x4022a1791819d239              # double 9.3153769999999998
	.quad	0x401b1a0b5ed8d36b              # double 6.7754339999999997
	.quad	0x3fe34330d738609a              # double 0.60195200000000004
	.quad	0x4009d096bb98c7e3              # double 3.2268500000000002
	.quad	0x400457939a7c17a9              # double 2.5427620000000002
	.quad	0x4000255219a847b2              # double 2.0182229999999999
	.quad	0x4006c5082cf52b91              # double 2.8462070000000002
	.quad	0x3fd5a159817b95a3              # double 0.33797300000000002
	.quad	0x4022b3220791c4b9              # double 9.349869
	.quad	0x401e65eb313be22e              # double 7.5995299999999997
	.quad	0x401b36887a8d64d8              # double 6.8032550000000001
	.quad	0x4020abc9abb01c93              # double 8.3355230000000002
	.quad	0x4017756b00ffda40              # double 5.8646659999999997
	.quad	0x3ff14ad14a0a0f4d              # double 1.0807659999999999
	.quad	0x40212ed0d49949e9              # double 8.5914370000000009
	.quad	0x3ff0291c8eabffce              # double 1.0100370000000001
	.quad	0x401f84f82f512663              # double 7.8798529999999997
	.quad	0x401c2355cd91eeaa              # double 7.0345069999999996
	.quad	0x3ff9749491f2dc2b              # double 1.590962
	.quad	0x4022bb9a38fbca10              # double 9.3664109999999994
	.quad	0x4003d080303c07ee              # double 2.476807
	.quad	0x400aea0c282c6ef4              # double 3.3642810000000001
	.quad	0x3ff8262ed352220c              # double 1.5093220000000001
	.quad	0x401056f2a5a469d7              # double 4.0849099999999998
	.quad	0x3fc96ff3ade225fa              # double 0.19872899999999999
	.quad	0x40144ba01eeed890              # double 5.0738529999999997
	.quad	0x40037edd8b60f1b2              # double 2.4369459999999998
	.quad	0x3fefb1feeb2d0a24              # double 0.99047799999999996
	.quad	0x40156282c6ef3d3a              # double 5.3462019999999999
	.quad	0x40234c4e0daa0cae              # double 9.6490329999999993
	.quad	0x400d9c5154866a12              # double 3.701327
	.quad	0x4005377079e59f2c              # double 2.6520700000000001
	.quad	0x40073064ece9a2c6              # double 2.8986299999999998
	.quad	0x401a73c7d5ed06ff              # double 6.613067
	.quad	0x4020e7470eb24a6b              # double 8.4517140000000008
	.quad	0x401ca97c3d68405b              # double 7.1655129999999998
	.quad	0x40030c1ca3a4b557              # double 2.3809140000000002
	.quad	0x400c488df37329c3              # double 3.5354269999999999
	.quad	0x4021071455219a84              # double 8.5138269999999991
	.quad	0x401e60a5accd5305              # double 7.5943820000000004
	.quad	0x40106276b7ed41b7              # double 4.0961559999999997
	.quad	0x3fec66a11ec918e3              # double 0.88752799999999998
	.quad	0x3ff730813cab81f9              # double 1.4493419999999999
	.quad	0x4020557afea3df6e              # double 8.1669540000000005
	.quad	0x402130f7121ab4b7              # double 8.5956349999999997
	.quad	0x3fd39ca5bd944aa5              # double 0.30643599999999999
	.quad	0x401a48b04ab606b8              # double 6.5709850000000003
	.quad	0x4013043914f483cb              # double 4.754124
	.quad	0x3fe2f57d5a9eb207              # double 0.59246699999999997
	.quad	0x401967f6f4be835e              # double 6.3515280000000001
	.quad	0x40192b8f57f737da              # double 6.2925389999999997
	.quad	0x401b5ae6c8f75537              # double 6.8387710000000004
	.quad	0x4011d07dd4413554              # double 4.4536049999999996
	.quad	0x400b9851654d61b3              # double 3.4493740000000002
	.quad	0x402174ef0281ba80              # double 8.7283860000000004
	.quad	0x3fa6f3f52fc2656b              # double 0.044830000000000002
	.quad	0x3fd1d666a98244e9              # double 0.27871099999999999
	.quad	0x400718b71b8aa002              # double 2.8870680000000002
	.quad	0x40085286b59146e5              # double 3.0402960000000001
	.quad	0x4021daeba27ae9ab              # double 8.9275789999999997
	.quad	0x3ff396f0068db8bb              # double 1.22435
	.quad	0x400f5df8f4730404              # double 3.9208850000000002
	.quad	0x401b7afc04c8bc9d              # double 6.8701020000000002
	.quad	0x3fe6f85729b280f1              # double 0.71781499999999998
	.quad	0x40046218def416be              # double 2.5478990000000001
	.quad	0x3ffd8280ae104923              # double 1.8443609999999999
	.quad	0x4007020ee8d10f52              # double 2.8760050000000001
	.quad	0x3fe6ca66559f6ec6              # double 0.71220700000000003
	.quad	0x3ff5d577963992c9              # double 1.3646160000000001
	.quad	0x40173c8b43958106              # double 5.8091249999999999
	.quad	0x4012599f5dfeb8d8              # double 4.5875219999999999
	.quad	0x401194de3b8a19ca              # double 4.3953790000000001
	.quad	0x40238cdd50a88f00              # double 9.7751260000000002
	.quad	0x401087b0f6ad70e7              # double 4.132511
	.quad	0x4022533bb83cf2d0              # double 9.1625650000000007
	.quad	0x40148e3cd9a52264              # double 5.1389040000000001
	.quad	0x401285f91600f345              # double 4.630833
	.quad	0x40163b2cc70867ae              # double 5.5577880000000004
	.quad	0x401a516b11c6d1e1              # double 6.57951
	.quad	0x4017043914f483cb              # double 5.754124
	.quad	0x3fd5745bf26f1dc5              # double 0.335227
	.quad	0x4014dc061847f562              # double 5.2148669999999999
	.quad	0x4016ca8c9b845565              # double 5.6978020000000003
	.quad	0x400b8b4528283d36              # double 3.443003
	.quad	0x400d211c2a023209              # double 3.6411669999999998
	.quad	0x4002793dd97f62b7              # double 2.3092000000000001
	.quad	0x40047f4666ec9e23              # double 2.5621459999999998
	.quad	0x4013434e3369b9d8              # double 4.815728
	.quad	0x40215553ac4f7ec3              # double 8.6666539999999994
	.quad	0x3fdb2b1b36bd2b6f              # double 0.42450599999999999
	.quad	0x3ff51b4784230fd0              # double 1.3191600000000001
	.quad	0x3fc41e81cb46bacf              # double 0.15718099999999999
	.quad	0x40157fbeb9e492bc              # double 5.3747509999999998
	.quad	0x4023e8d7be9856a3              # double 9.9547709999999991
	.quad	0x40055acc4ef88b97              # double 2.6693349999999998
	.quad	0x3ffbcff972474539              # double 1.738275
	.quad	0x40034a50507a6bd7              # double 2.411286
	.quad	0x401c496dd26b723f              # double 7.0717080000000001
	.quad	0x4016fb59578a2a91              # double 5.7454580000000002
	.quad	0x4011deba27ae9ab3              # double 4.4675070000000003
	.quad	0x40166bf61aa3f035              # double 5.6054310000000003
	.quad	0x4021c1f14983d790              # double 8.8787939999999992
	.quad	0x3fe8651f3e89a88b              # double 0.76234400000000002
	.quad	0x401fa86833c6002a              # double 7.9144600000000001
	.quad	0x400b9c0f45176146              # double 3.4512010000000002
	.quad	0x4016ca2595bbbe88              # double 5.6974090000000004
	.quad	0x400ed7afea3df6dc              # double 3.8553160000000002
	.quad	0x40107ab6d00b45ae              # double 4.1198379999999997
	.quad	0x40210a2834d26fa4              # double 8.519838
	.quad	0x401e94152b0a6fc6              # double 7.6446120000000004
	.quad	0x3ff105c4651f3e8a              # double 1.0639080000000001
	.quad	0x4019efb86f47b678              # double 6.484102
	.quad	0x4013736113404ea5              # double 4.8626750000000003
	.quad	0x401a2d1b71758e22              # double 6.5440500000000004
	.quad	0x402017f4128bf3bf              # double 8.0467840000000006
	.quad	0x3ff9775104d551d7              # double 1.5916300000000001
	.quad	0x401d325b749adc90              # double 7.2991770000000002
	.quad	0x40153efdc9c4da90              # double 5.311515
	.quad	0x401f6371da37ef5b              # double 7.8471140000000003
	.quad	0x4016858c4bd33d29              # double 5.6304179999999997
	.quad	0x40228b215fcc1872              # double 9.2717390000000002
	.quad	0x3ff62773e24febd1              # double 1.3846320000000001
	.quad	0x4013ad35a858793e              # double 4.9191500000000001
	.quad	0x3ff3707075b3e143              # double 1.2149509999999999
	.quad	0x3fe0c25f202107b8              # double 0.52372700000000005
	.quad	0x402030ea7ce0fc2f              # double 8.0955390000000005
	.quad	0x4010288d2a1f8e3b              # double 4.0396010000000002
	.quad	0x401bd3704790b84a              # double 6.9564830000000004
	.quad	0x4015428522ea0fd4              # double 5.3149610000000003
	.quad	0x402323463497b741              # double 9.5688949999999994
	.quad	0x401cf7d805e5f30e              # double 7.2420349999999996
	.quad	0x401882b90a782907              # double 6.1276590000000004
	.quad	0x40198b59578a2a91              # double 6.3860830000000002
	.quad	0x4013efe4ffc9795b              # double 4.9842719999999998
	.quad	0x40027e050374ff86              # double 2.3115329999999998
	.quad	0x400933059641f645              # double 3.1499130000000002
	.quad	0x40041be76c8b4396              # double 2.5136250000000002
	.quad	0x401540fc2eba27af              # double 5.3134620000000004
	.quad	0x40166f14983d7907              # double 5.6084769999999997
	.quad	0x40234834f3fd933e              # double 9.6410289999999996
	.quad	0x4019edc65c70435f              # double 6.482202
	.quad	0x40235309203a322b              # double 9.662179
	.quad	0x3ff89b66f9335d25              # double 1.5379400000000001
	.quad	0x3febb43526527a20              # double 0.86574799999999996
	.quad	0x4015b36049ecb31c              # double 5.4251719999999999
	.quad	0x3ff1c558644523f6              # double 1.1106799999999999
	.quad	0x3fcae94ee392e1ef              # double 0.21024499999999999
	.quad	0x400203c105186db5              # double 2.251833
	.quad	0x4012a3a797891e21              # double 4.6598189999999997
	.quad	0x40038b97785729b3              # double 2.4431600000000002
	.quad	0x400f321c475e6363              # double 3.8994680000000002
	.quad	0x4013a1d3671ac14c              # double 4.9080329999999996
	.quad	0x4009875818c5c9a3              # double 3.1910859999999999
	.quad	0x4004af6273929ed4              # double 2.5856370000000002
	.quad	0x401d7c154c985f07              # double 7.371175
	.quad	0x3fed10257c914b16              # double 0.90822099999999995
	.quad	0x4022e1af1886df83              # double 9.4407890000000005
	.quad	0x4014b5929670196e              # double 5.1773170000000004
	.quad	0x402070bbb1f255f3              # double 8.2201819999999994
	.quad	0x40198cb1cc964628              # double 6.387397
	.quad	0x400d72f2b66b6178              # double 3.681127
	.quad	0x4021c99f7f8ca81a              # double 8.8937950000000008
	.quad	0x40194db48909289e              # double 6.3258840000000003
	.quad	0x40138cf80dc33722              # double 4.8876650000000001
	.quad	0x40133518f3eccc47              # double 4.8018530000000004
	.quad	0x4012d90ea9e6eeb7              # double 4.71197
	.quad	0x3ff34a8e2e2b8c76              # double 1.2057020000000001
	.quad	0x4006dccaf709b739              # double 2.857809
	.quad	0x3fe4c4bb1af3a14d              # double 0.64901500000000001
	.quad	0x4003ea643cc07aaf              # double 2.489449
	.quad	0x40229f138bcdfefc              # double 9.310696
	.quad	0x3ff7962e09fe8683              # double 1.4741649999999999
	.quad	0x4011d92ea52ef912              # double 4.4620920000000002
	.quad	0x401ec8ed1bf7ad4b              # double 7.6962169999999998
	.quad	0x401323a797891e21              # double 4.7848189999999997
	.quad	0x400e24f765fd8adb              # double 3.7680500000000001
	.quad	0x402043a9b0681238              # double 8.1321539999999999
	.quad	0x4008500f776c4828              # double 3.0390920000000001
	.quad	0x4018d82730c67169              # double 6.211087
	.quad	0x4016b357e670e2c1              # double 5.6751399999999999
	.quad	0x401afba5e353f7cf              # double 6.7457500000000001
	.quad	0x401ab1b152f3c2db              # double 6.6735280000000001
	.quad	0x400ca3fc43b2dd37              # double 3.5800709999999998
	.quad	0x400dbf4b1ee24357              # double 3.7184050000000002
	.quad	0x4021785be1a82624              # double 8.7350759999999993
	.quad	0x40129fb97bb73083              # double 4.6559809999999997
	.quad	0x3fffc2a77a2cecc8              # double 1.985023
	.quad	0x4022af329c347e8d              # double 9.3421830000000003
	.quad	0x401645d3dc8b86b1              # double 5.5681909999999997
	.quad	0x3fc077ab324851a8              # double 0.12865199999999999
	.quad	0x40067eda66128390              # double 2.8119399999999999
	.quad	0x4010436976bc1f00              # double 4.0658320000000003
	.quad	0x3fdd64ba94bbe447              # double 0.45927299999999999
	.quad	0x4015ed577963992d              # double 5.4817790000000004
	.quad	0x3ffc34e7685985ad              # double 1.7629159999999999
	.quad	0x4012acd6c2efd439              # double 4.6687880000000002
	.quad	0x401efb1c864883fd              # double 7.7452259999999997
	.quad	0x401e85ffa3b9ae0c              # double 7.6308579999999999
	.quad	0x4012b66559f6ec5b              # double 4.678121
	.quad	0x401b264345cfede9              # double 6.7873659999999996
	.quad	0x401fc00f345069a5              # double 7.9375580000000001
	.quad	0x3ff28448cf7caa76              # double 1.1572960000000001
	.quad	0x3ff7f062d40aaeb0              # double 1.4961880000000001
	.quad	0x4020a9d7dbf487fd              # double 8.3317250000000005
	.quad	0x3fb54fdf3b645a1d              # double 0.083250000000000005
	.quad	0x4020bc88e79aae6d              # double 8.3682320000000008
	.quad	0x4023940b13597918              # double 9.7891469999999998
	.quad	0x3ff236ea4228997c              # double 1.1384069999999999
	.quad	0x40211e5c0b999136              # double 8.5592959999999998
	.quad	0x400b78b0d0edc3bd              # double 3.4339309999999998
	.quad	0x402191fea8112ba1              # double 8.7851459999999992
	.quad	0x400c634c1a8ac5c1              # double 3.5484849999999999
	.quad	0x3fec03be6601bc99              # double 0.87545700000000004
	.quad	0x4023bdd1e53a81dc              # double 9.8707419999999999
	.quad	0x40224a888b545c79              # double 9.1455730000000006
	.quad	0x3fc835935fc3b4f6              # double 0.189135
	.quad	0x4023074d7add15f0              # double 9.5142629999999997
	.quad	0x3ff68d898b2e9ccb              # double 1.4095549999999999
	.quad	0x40088fb65668c261              # double 3.0701719999999999
	.quad	0x401bac33b5393251              # double 6.9181660000000003
	.quad	0x4013d45e9185cee1              # double 4.9573919999999996
	.quad	0x400edc981beb1811              # double 3.8577119999999998
	.quad	0x4016ebea91d9b1b8              # double 5.7303870000000003
	.quad	0x4023afef177a7009              # double 9.8436210000000006
	.quad	0x3ff1a38da3c21188              # double 1.10243
	.quad	0x4023c26f3f52fc26              # double 9.8797549999999994
	.quad	0x400db804d9839475              # double 3.7148530000000002
	.quad	0x4011066559f6ec5b              # double 4.256246
	.quad	0x4019c4d2f5dbb9d0              # double 6.4422110000000004
	.quad	0x401aa61c79b34a45              # double 6.6622180000000002
	.quad	0x3fe43c7f77af6406              # double 0.63238499999999997
	.quad	0x3ff338769ec2ce46              # double 1.2012849999999999
	.quad	0x4011d406c00da1a9              # double 4.4570569999999998
	.quad	0x400979eadd590c0b              # double 3.1845300000000001
	.quad	0x40223111276fb092              # double 9.095834
	.quad	0x4021d56d7e889c1b              # double 8.9168509999999994
	.quad	0x40184a6b93ccd0ff              # double 6.0726760000000004
	.quad	0x4006364d7f0ed3d8              # double 2.7765149999999998
	.quad	0x401386ae7d566cf4              # double 4.8815249999999999
	.quad	0x400c2871a3b14a90              # double 3.5197479999999999
	.quad	0x40145969a0ad8a11              # double 5.0873169999999996
	.quad	0x40220ce0fc2eba28              # double 9.0251540000000006
	.quad	0x40223c8e25c810a5              # double 9.1182719999999993
	.quad	0x4020fa6a875d56f3              # double 8.4890939999999997
	.quad	0x3ff0f02b40f66a55              # double 1.058635
	.quad	0x3ff960b3d4ae429e              # double 1.586109
	.quad	0x400ebc2a02320968              # double 3.8418770000000002
	.quad	0x40207c927913e814              # double 8.2433049999999994
	.quad	0x401e55b24e9c4546              # double 7.5836880000000004
	.quad	0x40014b6848beb5b3              # double 2.1618200000000001
	.quad	0x3ff3e111276fb092              # double 1.242448
	.quad	0x40237aa38b8ae31d              # double 9.7395289999999992
	.quad	0x3fe5495bff04577e              # double 0.66520500000000005
	.quad	0x401a323d4f15e7c9              # double 6.5490620000000002
	.quad	0x4011ae5b4245f5ae              # double 4.4202700000000004
	.quad	0x401f56df82b1f688              # double 7.8348370000000002
	.quad	0x401d1d42c3c9eecc              # double 7.278575
	.quad	0x40123ed9dfdac68b              # double 4.5613780000000004
	.quad	0x3fdbb7fe08aefb2b              # double 0.43310500000000002
	.quad	0x4016779207d4e098              # double 5.6167680000000004
	.quad	0x4002760d0247021d              # double 2.307642
	.quad	0x402032bb23571d1d              # double 8.0990839999999995
	.quad	0x401904c271fff79d              # double 6.2546480000000004
	.quad	0x4011141c3efae792              # double 4.2696389999999997
	.quad	0x4006d4855da27286              # double 2.8537699999999999
	.quad	0x4016069b17481b22              # double 5.5064510000000002
	.quad	0x4012f9e0a41a261c              # double 4.744021
	.quad	0x401159d94d0dcfcc              # double 4.3377429999999997
	.quad	0x4022414445aa2e3c              # double 9.1274739999999994
	.quad	0x40119aff6d330942              # double 4.4013650000000002
	.quad	0x40180a99fa11a976              # double 6.0103530000000003
	.quad	0x4019b2d59d55e6bc              # double 6.4246429999999997
	.quad	0x401e736e2eb1c433              # double 7.6127250000000001
	.quad	0x401c5014727dcbde              # double 7.0782030000000002
	.quad	0x401197fcfc3f811f              # double 4.3984259999999997
	.quad	0x4019966fd651b0cd              # double 6.3969110000000002
	.quad	0x4016aac03ff69015              # double 5.6667490000000003
	.quad	0x40230b40f66a5508              # double 9.5219799999999992
	.quad	0x400625069a4df480              # double 2.7680790000000002
	.quad	0x40107c33721d53ce              # double 4.1212900000000001
	.quad	0x4013627dcbddb984              # double 4.8461829999999999
	.quad	0x3ff0ed4801f75105              # double 1.05793
	.quad	0x3ff8e602c9081c2e              # double 1.556155
	.quad	0x40195e8c8abd5dc4              # double 6.342333
	.quad	0x4023814e3bcd35a8              # double 9.7525499999999993
	.quad	0x401bff7ad4b2745c              # double 6.999492
	.quad	0x4022cebd4cfd08d5              # double 9.4037880000000004
	.quad	0x4011d5d9a0f0a5f0              # double 4.4588380000000001
	.quad	0x4008f9ebe9c88616              # double 3.1220319999999999
	.quad	0x401645757d5a9eb2              # double 5.567831
	.quad	0x40135941c8216c61              # double 4.8371649999999997
	.quad	0x40116504816f0069              # double 4.3486500000000001
	.quad	0x4010fb4d056c508b              # double 4.2454109999999998
	.quad	0x401f3ec311622813              # double 7.8112909999999997
	.quad	0x401b65ee568a5050              # double 6.8495419999999996
	.quad	0x402317e0ac7da1ec              # double 9.5466359999999994
	.quad	0x4013386876e1dead              # double 4.8050860000000002
	.quad	0x40194cfe9b7bf1e9              # double 6.3251900000000001
	.quad	0x400ed9170d62bf12              # double 3.856001
	.quad	0x4021c6d612c6ac21              # double 8.8883519999999994
	.quad	0x401ac12f09d8c6d6              # double 6.6886559999999999
	.quad	0x3ffb8a9de8b3b320              # double 1.7213419999999999
	.quad	0x3ff0f1c970f7b9e0              # double 1.0590299999999999
	.quad	0x4006b5ac03ff6901              # double 2.8387069999999999
	.quad	0x40003fb04ee7c4a0              # double 2.0310980000000001
	.quad	0x401c70b1feeb2d0a              # double 7.1100539999999999
	.quad	0x402097646ae3a3a9              # double 8.2956880000000002
	.quad	0x4022dc957cd466f5              # double 9.4308279999999999
	.quad	0x400edaf5ba2be059              # double 3.8569140000000002
	.quad	0x40018ed6fda836eb              # double 2.1947459999999999
	.quad	0x40084549b62c7757              # double 3.0338319999999999
	.quad	0x4017312b5e529bae              # double 5.7980169999999998
	.quad	0x40220a47cb70ac3b              # double 9.0200790000000008
	.quad	0x4023ef3365881a15              # double 9.9671889999999994
	.quad	0x400b2b9e492bc2fc              # double 3.3962979999999998
	.quad	0x401423aeee957471              # double 5.0348470000000001
	.quad	0x4006aba16e7a311f              # double 2.8338040000000002
	.quad	0x3fdacf4623d0bfa1              # double 0.41890100000000002
	.quad	0x4005dd712a0ec743              # double 2.7331259999999999
	.quad	0x40181ca1059ea572              # double 6.0279579999999999
	.quad	0x4021cb0af5fd47bf              # double 8.8965680000000003
	.quad	0x40034c7e28240b78              # double 2.41235
	.quad	0x4010787160956c0d              # double 4.1176199999999996
	.quad	0x4017a25247cb70ac              # double 5.9085169999999998
	.quad	0x401b152977c88e7a              # double 6.7706660000000003
	.quad	0x3fff98dbcec84f90              # double 1.9748190000000001
	.quad	0x40134d423d9231c6              # double 4.8254479999999997
	.quad	0x400a230e3cd9a522              # double 3.2671169999999998
	.quad	0x3ffdd35653c9abb0              # double 1.864096
	.quad	0x4001213ec460ed81              # double 2.1412330000000002
	.quad	0x40024de7ea5f84cb              # double 2.2880400000000001
	.quad	0x4004982235b4edb3              # double 2.574284
	.quad	0x400935147f130596              # double 3.1509179999999999
	.quad	0x4012f935b91f70df              # double 4.7433690000000004
	.quad	0x400907db2b346131              # double 3.1288360000000002
	.quad	0x40221c0485a0be51              # double 9.0547219999999999
	.quad	0x402154e7253da72a              # double 8.6658259999999991
	.quad	0x4014dbbfd71b0468              # double 5.2145989999999998
	.quad	0x40129672fba01eef              # double 4.6469230000000001
	.quad	0x402185e15ca6ca04              # double 8.7614850000000004
	.quad	0x4021fe2888b545c8              # double 8.9964030000000008
	.quad	0x3ff2fbaecd07852f              # double 1.1864459999999999
	.quad	0x3fc5e2cdc011d367              # double 0.170984
	.quad	0x4012522a6f3f52fc              # double 4.5802399999999999
	.quad	0x401d3268d32830a1              # double 7.2992280000000003
	.quad	0x401ea02645e4e69f              # double 7.6563959999999999
	.quad	0x3fec97b95a294142              # double 0.89352100000000001
	.quad	0x3ff33de5082cf52c              # double 1.2026110000000001
	.quad	0x3ff56009f623076c              # double 1.335947
	.quad	0x40174364bec679cc              # double 5.8158139999999996
	.quad	0x401584e7ab756430              # double 5.3797899999999998
	.quad	0x4022d5bc23315d70              # double 9.4174509999999998
	.quad	0x4020215379fa97e1              # double 8.0650899999999996
	.quad	0x400c44f5d35653ca              # double 3.5336720000000001
	.quad	0x40113692b3cc4ac7              # double 4.3032940000000002
	.quad	0x400997318fc50481              # double 3.1988249999999998
	.quad	0x3ffb853c148344c3              # double 1.7200279999999999
	.quad	0x401eae73e681a9b9              # double 7.6703640000000001
	.quad	0x400eb274e22a2c23              # double 3.8371369999999998
	.quad	0x4012a341e14bdfd2              # double 4.6594309999999997
	.quad	0x4004bb8e4b87bdcf              # double 2.59158
	.quad	0x401fa1f46ed245b3              # double 7.9081590000000003
	.quad	0x3ff6c026cc1ca3a5              # double 1.4219120000000001
	.quad	0x3ffc3d6a593a2df9              # double 1.764994
	.quad	0x400e1926c7eae5bd              # double 3.7622810000000002
	.quad	0x400bb2bc2fc69729              # double 3.4622730000000002
	.quad	0x40025455a7d24181              # double 2.2911790000000001
	.quad	0x40167403dddb120a              # double 5.6132960000000001
	.quad	0x40126e4c942d490e              # double 4.6077139999999996
	.quad	0x401475568e820e63              # double 5.1145880000000004
	.quad	0x40039ffde7210be9              # double 2.4531209999999999
	.quad	0x401d36188b11409a              # double 7.3028279999999999
	.quad	0x4015e7ef5a964e8b              # double 5.4764989999999996
	.quad	0x4021e990d173fb7a              # double 8.9561829999999993
	.quad	0x400b62a8869c66d3              # double 3.4231729999999998
	.quad	0x401e727bb2fec56d              # double 7.6117999999999996
	.quad	0x3ff33bf61aa3f035              # double 1.2021390000000001
	.quad	0x4004111dffc5479d              # double 2.5083579999999999
	.quad	0x401aa3e3e29307af              # double 6.6600489999999999
	.quad	0x401d3ba301216830              # double 7.3082390000000004
	.quad	0x3ff877ed41b75a75              # double 1.5292790000000001
	.quad	0x401f8f3387160957              # double 7.8898450000000002
	.quad	0x40214c41355475a3              # double 8.6489349999999998
	.quad	0x40205c1e57d9dba9              # double 8.1799189999999999
	.quad	0x4001e013660e51d2              # double 2.2344119999999998
	.quad	0x401659d99029ae4f              # double 5.5877439999999998
	.quad	0x401f1b2e1693c03c              # double 7.7765430000000002
	.quad	0x4020f4b838c111ae              # double 8.4779680000000006
	.quad	0x3ffc89df1172ef0b              # double 1.78366
	.quad	0x401be29888f861a6              # double 6.971285
	.quad	0x4017ad349be8ff32              # double 5.9191459999999996
	.quad	0x3fe775232d2bb235              # double 0.73304899999999995
	.quad	0x401480c8472c0e7c              # double 5.1257640000000002
	.quad	0x401bc1ad6451b930              # double 6.9391379999999998
	.quad	0x401efdffc5479d4e              # double 7.7480460000000004
	.quad	0x4022d5ddb1209edc              # double 9.417707
	.quad	0x40232e514c22ee42              # double 9.5904640000000008
	.quad	0x4017a93250b5243a              # double 5.9152310000000003
	.quad	0x4023a3d2fa0d77b8              # double 9.8199690000000003
	.quad	0x4022868837718655              # double 9.2627579999999998
	.quad	0x400e06a012599ed8              # double 3.7532350000000001
	.quad	0x40195754b05b7cfe              # double 6.3352839999999997
	.quad	0x3ffe4b97785729b3              # double 1.8934550000000001
	.quad	0x4019fd21bc126a66              # double 6.4971990000000002
	.quad	0x40191d76683c297c              # double 6.278772
	.quad	0x40057ef9db22d0e5              # double 2.6869999999999998
	.quad	0x400d9cf355cd91ef              # double 3.7016360000000001
	.quad	0x401d24189374bc6a              # double 7.2852499999999996
	.quad	0x401927e2c55c9603              # double 6.288951
	.quad	0x400a1bfbdf090f73              # double 3.2636639999999999
	.quad	0x4006f93708aac96d              # double 2.8716870000000001
	.quad	0x401b0572de43ed96              # double 6.7553210000000004
	.quad	0x3ffd680f12c27a63              # double 1.8379049999999999
	.quad	0x4008a513b5bf6a0e              # double 3.0806040000000001
	.quad	0x40200db0bbf50e34              # double 8.0267389999999991
	.quad	0x400dda493c89f40a              # double 3.7315849999999999
	.quad	0x4019db313be22e5e              # double 6.4640550000000001
	.quad	0x40228a2f8bdec5f4              # double 9.2698940000000007
	.quad	0x4015833482be8bc1              # double 5.3781299999999996
	.quad	0x4001bef8487b99d4              # double 2.2182469999999999
	.quad	0x401c13764f11b60b              # double 7.0190060000000001
	.quad	0x401ff1b43526527a              # double 7.9860389999999999
	.quad	0x40190697aeddce7d              # double 6.2564380000000002
	.quad	0x3fe016312f4cf4a5              # double 0.50270899999999996
	.quad	0x4002acbf2b239a39              # double 2.334349
	.quad	0x3ff4493532e7b3d9              # double 1.267873
	.quad	0x3ff78c059210385c              # double 1.4716849999999999
	.quad	0x402286ab9b23dd55              # double 9.2630280000000003
	.quad	0x401e25c78a6dacac              # double 7.5368940000000002
	.quad	0x3ffe9817b95a2941              # double 1.9121319999999999
	.quad	0x401bad26fa3fcc9f              # double 6.9190940000000003
	.quad	0x400162bcf91a32b1              # double 2.1732119999999999
	.quad	0x400b180a17b0f6ad              # double 3.3867379999999998
	.quad	0x400a9cd5f99c38b0              # double 3.3265799999999999
	.quad	0x4023ae8a0d349be9              # double 9.840897
	.quad	0x4021aeeeb702602d              # double 8.8416650000000008
	.quad	0x4012723e9ea14057              # double 4.611567
	.quad	0x3fceecfa69be09bb              # double 0.24160699999999999
	.quad	0x3ff408f42fe82518              # double 1.252186
	.quad	0x401dcac8a3726070              # double 7.4480310000000003
	.quad	0x4020713f6c2699c8              # double 8.2211870000000005
	.quad	0x3ff4fd0bfa0945fa              # double 1.311779
	.quad	0x40149a6698bb4d49              # double 5.1507820000000004
	.quad	0x4010aaab47410731              # double 4.1666689999999997
	.quad	0x401fd11947cfa26a              # double 7.9541979999999999
	.quad	0x401919b30728e92d              # double 6.2750969999999997
	.quad	0x400695ba2be0589b              # double 2.8231090000000001
	.quad	0x4023b93ee5eedcc2              # double 9.8618079999999999
	.quad	0x3fee7ad080b673c5              # double 0.95249200000000001
	.quad	0x40073f3a57eaa2a1              # double 2.9058730000000002
	.quad	0x40140e0ef99806f2              # double 5.0137289999999997
	.quad	0x3fdf90a350d2806b              # double 0.493203
	.quad	0x3ffa199aa60913a5              # double 1.631251
	.quad	0x4021f08765ba6efc              # double 8.9697829999999996
	.quad	0x4011da9e2bcf91a3              # double 4.4634939999999999
	.quad	0x3ff03c71d6063172              # double 1.0147569999999999
	.quad	0x4009176ab5807fed              # double 3.1364339999999999
	.quad	0x3fec3295e9e1b08a              # double 0.88117500000000004
	.quad	0x400872b020c49ba6              # double 3.056
	.quad	0x401076bf444e0daa              # double 4.115964
	.quad	0x400705f84cad57bc              # double 2.8779149999999998
	.quad	0x401a7de7ea5f84cb              # double 6.6229550000000001
	.quad	0x401332c7fbacb429              # double 4.7995910000000004
	.quad	0x3fe42686e7e62dc7              # double 0.62970300000000001
	.quad	0x40172d130df9bdc7              # double 5.7940180000000003
	.quad	0x4006d578a2a90cd4              # double 2.8542339999999999
	.quad	0x401570bfe3b03e21              # double 5.3601070000000002
	.quad	0x3ffeebacf7446f9c              # double 1.9325380000000001
	.quad	0x401dc86ec17ebaf1              # double 7.445735
	.quad	0x4011795e5aff2a17              # double 4.3685239999999999
	.quad	0x3fc933764f11b60b              # double 0.196883
	.quad	0x401d47b7c7820a31              # double 7.3200370000000001
	.quad	0x3ff89f9acffa7eb7              # double 1.5389660000000001
	.quad	0x40127d2c386d2ed8              # double 4.6222390000000004
	.quad	0x3fef2de43ed959a3              # double 0.97435199999999999
	.quad	0x4014ed1ed9dfdac7              # double 5.2315630000000004
	.quad	0x4020ed742dcf4624              # double 8.4637770000000003
	.quad	0x400a44944ed6fda8              # double 3.2834859999999999
	.quad	0x402271613d31b9b6              # double 9.2214449999999992
	.quad	0x4002d18d25edd053              # double 2.3523200000000002
	.quad	0x401bc6af038e29fa              # double 6.9440270000000002
	.quad	0x4023b22ab25b317f              # double 9.847982
	.quad	0x40163d7d7c2ca149              # double 5.5600490000000002
	.quad	0x400093636f3b213e              # double 2.0719669999999999
	.quad	0x40082c6ac215b9a6              # double 3.0216880000000002
	.quad	0x40057d30ad46f588              # double 2.6861280000000001
	.quad	0x401c4e46cfc829d0              # double 7.0764420000000001
	.quad	0x4012e07570c564f9              # double 4.7191979999999996
	.quad	0x4021733461309c80              # double 8.725009
	.quad	0x4012d545846e8f2a              # double 4.7082730000000002
	.quad	0x400447dbb16c1e36              # double 2.5350869999999999
	.quad	0x401c3ad9ad85dfa8              # double 7.0574709999999996
	.quad	0x3fee093d96638434              # double 0.93862800000000001
	.quad	0x4017e0ecb74ddf87              # double 5.9696530000000001
	.quad	0x3fe328c79f666235              # double 0.59872800000000004
	.quad	0x40216904b3c3e74b              # double 8.705114
	.quad	0x3fba0fd3b29a1ba0              # double 0.10180400000000001
	.quad	0x40102b163baba7b9              # double 4.0420769999999999
	.quad	0x3ffc6ca25529fe00              # double 1.7765219999999999
	.quad	0x401691183b60285f              # double 5.6416940000000002
	.quad	0x40140b068123810f              # double 5.0107670000000004
	.quad	0x40092ae5bc87db2b              # double 3.1459459999999999
	.quad	0x4020677f27fe4bcb              # double 8.2021420000000003
	.quad	0x402241e6256366d8              # double 9.1287090000000006
	.quad	0x40129f86e3b46fdf              # double 4.6557880000000003
	.quad	0x4023084f09528f19              # double 9.5162279999999999
	.quad	0x4020478487b99d45              # double 8.1396829999999998
	.quad	0x402161e492bc2fc7              # double 8.6911970000000007
	.quad	0x401ec209aaa3ad19              # double 7.6894900000000001
	.quad	0x4005c94d50ebaade              # double 2.7232919999999998
	.quad	0x4010a69595feda66              # double 4.1626799999999999
	.quad	0x3ff800c8472c0e7c              # double 1.5001910000000001
	.quad	0x401bab2074ea8da8              # double 6.917116
	.quad	0x4022f1018e757929              # double 9.4707150000000002
	.quad	0x401f6df37329c348              # double 7.857374
	.quad	0x401a78487b99d452              # double 6.617464
	.quad	0x400089973d9ec700              # double 2.067183
	.quad	0x40003cfede97d06c              # double 2.0297830000000001
	.quad	0x400d2e30caa326e1              # double 3.647554
	.quad	0x4021b8c9d9d3458d              # double 8.8609150000000003
	.quad	0x3fd2f2e48e8a71de              # double 0.29607499999999998
	.quad	0x402098b0af5fd47c              # double 8.2982230000000001
	.quad	0x3f7d3458cd20afa3              # double 0.0071300000000000001
	.quad	0x3ff5a43cc07aaef3              # double 1.352597
	.quad	0x3ff05c64ba94bbe4              # double 1.0225569999999999
	.quad	0x3fc78e8ea39c51db              # double 0.18403800000000001
	.quad	0x40186918a009f623              # double 6.102633
	.quad	0x3ffea96d4c33b539              # double 1.916364
	.quad	0x400d477ff151e753              # double 3.6599119999999998
	.quad	0x3fe26f6d7625204b              # double 0.576102
	.quad	0x3ff6906573215fcc              # double 1.410253
	.quad	0x401642834d26fa40              # double 5.5649540000000002
	.quad	0x400801b8ed1bf7ad              # double 3.0008409999999999
	.quad	0x4014e6b97fe8ee6c              # double 5.2253170000000004
	.quad	0x4001fbbb62413db8              # double 2.247916
	.quad	0x40188312b1b36bd3              # double 6.1280010000000003
	.quad	0x401f2f09528f190d              # double 7.7959339999999999
	.quad	0x40236c794ea07703              # double 9.7118629999999992
	.quad	0x401ca502ababead5              # double 7.161143
	.quad	0x4015bba98eda22f7              # double 5.4332640000000003
	.quad	0x401a4797891e2153              # double 6.5699139999999998
	.quad	0x401fc80b242070b9              # double 7.9453550000000001
	.quad	0x3ffd5aae6c8f7553              # double 1.8346389999999999
	.quad	0x4021ad694ccab3ee              # double 8.8386940000000003
	.quad	0x40199e9ea1405708              # double 6.4049019999999999
	.quad	0x4015134330d73861              # double 5.2688110000000004
	.quad	0x3fdbdb2b3461309c              # double 0.43525199999999997
	.quad	0x401b2c358afc47e5              # double 6.7931730000000003
	.quad	0x4013a03254e6e222              # double 4.9064420000000002
	.quad	0x4012a26fe718a86d              # double 4.6586299999999996
	.quad	0x401e0605ab3aabcd              # double 7.5058809999999995
	.quad	0x3ff2489b0ee49f51              # double 1.1427259999999999
	.quad	0x4016c6f2a5a469d7              # double 5.6942849999999998
	.quad	0x401ecb7952d234ec              # double 7.6987050000000004
	.quad	0x4010e672324c8366              # double 4.2250449999999997
	.quad	0x4010766772d5e072              # double 4.1156290000000002
	.quad	0x3fcff37b8d3f1844              # double 0.24961800000000001
	.quad	0x40147bcdfefbf402              # double 5.1209030000000002
	.quad	0x4016ced783dff3f1              # double 5.701994
	.quad	0x40213f2cf95d4e90              # double 8.6233900000000006
	.quad	0x4018769e7fb267c7              # double 6.1158390000000002
	.quad	0x400b0aed99cbee80              # double 3.3803359999999998
	.quad	0x400cde5eaab04253              # double 3.6085790000000002
	.quad	0x3ffe7d0f1f57b41c              # double 1.905532
	.quad	0x3ff6472b020c49ba              # double 1.3923749999999999
	.quad	0x3ff96d6fda836eb5              # double 1.589218
	.quad	0x40101c75c4a83b1d              # double 4.027793
	.quad	0x4021ba7f1b691212              # double 8.8642509999999994
	.quad	0x4020df83dff3f0fe              # double 8.436553
	.quad	0x402001bda5119ce0              # double 8.0033999999999992
	.quad	0x4022c331c219eb64              # double 9.3812390000000007
	.quad	0x40001bb0e5e67946              # double 2.0135209999999999
	.quad	0x40228d61b2a27f1b              # double 9.2761359999999993
	.quad	0x3fee30d306a2b170              # double 0.94345999999999997
	.quad	0x40154c044284dfce              # double 5.3242349999999998
	.quad	0x401b276ddaceee0f              # double 6.7885049999999998
	.quad	0x3ffbe4c404a72eae              # double 1.7433510000000001
	.quad	0x4002468e3ef28416              # double 2.2844509999999998
	.quad	0x3ffeca5375c8d9f9              # double 1.924396
	.quad	0x400429bbf0dc768e              # double 2.520378
	.quad	0x401316d2674080fa              # double 4.7722870000000004
	.quad	0x40080c7192ea52f0              # double 3.0060760000000002
	.quad	0x4019ad82ba5a0382              # double 6.4194440000000004
	.quad	0x3fca6ab14ec204f3              # double 0.20638100000000001
	.quad	0x401adc165907d912              # double 6.7149289999999997
	.quad	0x401dfd8ec95bff04              # double 7.4976149999999997
	.quad	0x40143aa433508f65              # double 5.0572670000000004
	.quad	0x3ff81dffc5479d4e              # double 1.5073240000000001
	.quad	0x3feefe77d523b363              # double 0.96856299999999995
	.quad	0x40217edb50f40e5a              # double 8.7477669999999996
	.quad	0x401ca1c75818c5ca              # double 7.1579870000000003
	.quad	0x401b89b9d7fd8277              # double 6.8844979999999998
	.quad	0x401c27cfe5860136              # double 7.0388789999999997
	.quad	0x40218a4a276b7ed4              # double 8.7700969999999998
	.quad	0x4008f65cb35f3d7d              # double 3.1202939999999999
	.quad	0x40190f97aaac1095              # double 6.2652270000000003
	.quad	0x401243bddfc9ff93              # double 4.566154
	.quad	0x40203dc4007570c5              # double 8.1206359999999993
	.quad	0x3ff3d31a8ef77f28              # double 1.239039
	.quad	0x40212934267839ce              # double 8.5804760000000009
	.quad	0x4011eb7f9d6f1130              # double 4.4799790000000002
	.quad	0x4007c3476295208e              # double 2.970351
	.quad	0x4018c192641b328b              # double 6.1890349999999996
	.quad	0x40167fa8b4bf8fcd              # double 5.6246669999999996
	.quad	0x401e030164840e17              # double 7.5029349999999999
	.quad	0x40202b7cfe586013              # double 8.0849379999999993
	.quad	0x40115a6fc58ab92c              # double 4.338317
	.quad	0x4004d5011904b3c4              # double 2.604006
	.quad	0x3fd01feeb2d0a244              # double 0.25194899999999998
	.quad	0x40157f69878316a0              # double 5.3744259999999997
	.quad	0x40201774cd31769b              # double 8.0458130000000008
	.quad	0x400867c200c0f020              # double 3.0506630000000001
	.quad	0x4023aa87c200c0f0              # double 9.8330669999999998
	.quad	0x4023c8f3a9b06812              # double 9.8924839999999996
	.quad	0x4021cf5968512232              # double 8.9049790000000009
	.quad	0x401aa2a023209678              # double 6.6588139999999996
	.quad	0x4020ff03f2d3c793              # double 8.4980770000000003
	.quad	0x3fd86a0dbad3a605              # double 0.38147300000000001
	.quad	0x3ff570d1fa333765              # double 1.340044
	.quad	0x402027a56de3326a              # double 8.0774340000000002
	.quad	0x3ff9c1248d7e0264              # double 1.6096539999999999
	.quad	0x4009e3fc43b2dd37              # double 3.2363209999999998
	.quad	0x4002cdeebb341e15              # double 2.3505530000000001
	.quad	0x401c055bccaf709b              # double 7.0052329999999996
	.quad	0x400be0f345069a4e              # double 3.484839
	.quad	0x401d67eaa2a0a958              # double 7.3514809999999997
	.quad	0x402020192a737111              # double 8.0626920000000002
	.quad	0x3fe0bf316e371540              # double 0.523339
	.quad	0x4005f70ac3a860dd              # double 2.7456260000000001
	.quad	0x401954e0114d2f5e              # double 6.3328860000000002
	.quad	0x401980edc3bd5992              # double 6.3759069999999998
	.quad	0x4012087379746024              # double 4.5082529999999998
	.quad	0x4020fba16e7a311f              # double 8.4914660000000008
	.quad	0x40127d70e6f2e8c0              # double 4.6225009999999997
	.quad	0x40225045996744b3              # double 9.1567810000000005
	.quad	0x4020dad1f1cfbb95              # double 8.4273830000000007
	.quad	0x4022f72452c59fb2              # double 9.4826990000000002
	.quad	0x40178a4a05dd8f93              # double 5.8850480000000003
	.quad	0x400f3df761cbccf3              # double 3.9052570000000002
	.quad	0x4007206a6e32e382              # double 2.890828
	.quad	0x4013d275ab7dc7ac              # double 4.955527
	.quad	0x40211e38c9752978              # double 8.5590270000000004
	.quad	0x402383d9cae21102              # double 9.7575210000000006
	.quad	0x401e816a055757d6              # double 7.6263810000000003
	.quad	0x3ff9d9652bd3c361              # double 1.615575
	.quad	0x402005d67ba237ce              # double 8.0114020000000004
	.quad	0x400b63076c050bd8              # double 3.4233539999999998
	.quad	0x402365b4677b395c              # double 9.6986419999999995
	.quad	0x40033a42f1ed17c6              # double 2.403448
	.quad	0x40137bac710cb296              # double 4.8707750000000001
	.quad	0x4008affda4052d66              # double 3.0859329999999998
	.quad	0x401953bb40b34e77              # double 6.3317690000000004
	.quad	0x401d0e19fc2a886a              # double 7.2637710000000002
	.quad	0x400dcebdd334c5da              # double 3.7259479999999998
	.quad	0x401a0dd2ae8e1d65              # double 6.5134990000000004
	.quad	0x40215ec3fc43b2dd              # double 8.6850889999999996
	.quad	0x4011747304039abf              # double 4.3637199999999998
	.quad	0x4016bc044284dfce              # double 5.6836099999999998
	.quad	0x40216d4e8fb00bcc              # double 8.7134900000000001
	.quad	0x40206f26f1dc50ce              # double 8.2170939999999995
	.quad	0x400f49856a37ac3f              # double 3.9108990000000001
	.quad	0x40058342aa9f7b5b              # double 2.689092
	.quad	0x40070fba01eeed89              # double 2.882679
	.quad	0x400eefcc5b8dc550              # double 3.867089
	.quad	0x401b9c99285a921d              # double 6.9029280000000002
	.quad	0x3ff130d1fa333765              # double 1.074419
	.quad	0x401aa5d031055b8a              # double 6.6619270000000004
	.quad	0x3ffbfa732df505d1              # double 1.748645
	.quad	0x3ff13f6e3f78bbd4              # double 1.0779860000000001
	.quad	0x3ffbc3e74afd5454              # double 1.735328
	.quad	0x401f4a6e32e3821b              # double 7.822686
	.quad	0x400ec4bba12b5e53              # double 3.8460610000000002
	.quad	0x400402c5e2cdc012              # double 2.5013540000000001
	.quad	0x3fd36dacabc51548              # double 0.30356899999999998
	.quad	0x401e7a79bbadc098              # double 7.6196049999999999
	.quad	0x4006ca84be40420f              # double 2.8488859999999998
	.quad	0x400341da7b0b3919              # double 2.4071549999999999
	.quad	0x4021fbb9f127f5e8              # double 8.9916529999999995
	.quad	0x4001dcf70153bd16              # double 2.2328929999999998
	.quad	0x401c2e5b4245f5ae              # double 7.0452700000000004
	.quad	0x4015e9a88ace24bc              # double 5.4781820000000003
	.quad	0x400224295a6c5d20              # double 2.2676569999999998
	.quad	0x4007993c46d82ba6              # double 2.9498220000000002
	.quad	0x4000184d338f7985              # double 2.0118659999999999
	.quad	0x400a2af3e468cac5              # double 3.2709730000000001
	.quad	0x4021fd02eec7c958              # double 8.9941630000000004
	.quad	0x40235fd2a62aa194              # double 9.6871539999999995
	.quad	0x40014e34fc610f0f              # double 2.1631870000000002
	.quad	0x400b6e90bc7b45f1              # double 3.4289869999999998
	.quad	0x4016b4b4d056c509              # double 5.6764710000000003
	.quad	0x400f08d8665e02eb              # double 3.8793190000000002
	.quad	0x3fbd203a322af577              # double 0.113773
	.quad	0x4020e185058dde7a              # double 8.4404679999999992
	.quad	0x40103bc7b45f17be              # double 4.0583790000000004
	.quad	0x4014f44a6223e187              # double 5.2385650000000004
	.quad	0x4016b03254e6e222              # double 5.6720670000000002
	.quad	0x4016fe41919ac797              # double 5.748297
	.quad	0x4023c5ff1d81f106              # double 9.8867119999999993
	.quad	0x4016d5f138bcdff0              # double 5.7089280000000002
	.quad	0x40199435696e58a3              # double 6.3947349999999998
	.quad	0x3fedbd1676640a6c              # double 0.92933200000000004
	.quad	0x3fe3207f66e86c66              # double 0.59771700000000005
	.quad	0x400108893b7d8490              # double 2.1291679999999999
	.quad	0x401b4c9320d9945b              # double 6.8247799999999996
	.quad	0x3fc5f316e3715400              # double 0.17148099999999999
	.quad	0x3fdbb24638c97529              # double 0.43275599999999997
	.quad	0x401b360d887ebf23              # double 6.8027860000000002
	.quad	0x401e6329c347e8cd              # double 7.5968390000000001
	.quad	0x4021cec226809d49              # double 8.9038249999999994
	.quad	0x4013ada554b8bef9              # double 4.9195760000000002
	.quad	0x400b47991bc55864              # double 3.4099599999999999
	.quad	0x400e0c9e236c15d3              # double 3.7561610000000001
	.quad	0x400f258b3f63c31e              # double 3.893332
	.quad	0x401d0619da9c9928              # double 7.2559579999999997
	.quad	0x4000dbd61f5be5da              # double 2.107342
	.quad	0x4017e1d4b6a619db              # double 5.9705380000000003
	.quad	0x401fa56d5cfaacda              # double 7.9115500000000001
	.quad	0x4016e85b9e8c47a1              # double 5.7269119999999996
	.quad	0x40029e00d1b71759              # double 2.3271500000000001
	.quad	0x401e58c2e770bd01              # double 7.5866809999999995
	.quad	0x401cacb89d6adf72              # double 7.1686730000000001
	.quad	0x40015f16b11c6d1e              # double 2.17143
	.quad	0x40226c7eae5bc87e              # double 9.2119040000000005
	.quad	0x401baada33bd9cae              # double 6.9168479999999999
	.quad	0x402076cc1ca3a4b5              # double 8.2320259999999994
	.quad	0x3fe44473cd573648              # double 0.63335600000000003
	.quad	0x401179bb2788db05              # double 4.3688779999999996
	.quad	0x4013b86013660e52              # double 4.9300540000000002
	.quad	0x401a2115df6555c5              # double 6.5323099999999998
	.quad	0x4000bde69ad42c3d              # double 2.0927250000000002
	.quad	0x4023aa20ff540896              # double 9.8322830000000003
	.quad	0x401e5752da98676a              # double 7.5852769999999996
	.quad	0x3ff9916b97fe8ee7              # double 1.5980030000000001
	.quad	0x3ff6bd145d851655              # double 1.421162
	.quad	0x40179769a91105e2              # double 5.8978640000000002
	.quad	0x401915e679463cfb              # double 6.2713869999999998
	.quad	0x4021834b0e1b4bb6              # double 8.7564320000000002
	.quad	0x401658ef77f27fe5              # double 5.5868510000000002
	.quad	0x402050ad46f587d7              # double 8.157572
	.quad	0x4011ea38327674d1              # double 4.4787299999999997
	.quad	0x3fc0fae7924af0bf              # double 0.132657
	.quad	0x4023c3d4f15e7c8d              # double 9.8824839999999998
	.quad	0x3ffd03b927d45a60              # double 1.813409
	.quad	0x4000c8826aa8eb46              # double 2.0979049999999999
	.quad	0x400b924d099e0e73              # double 3.4464359999999998
	.quad	0x4023a46fbd273d5c              # double 9.8211650000000005
	.quad	0x3ffe57939a7c17a9              # double 1.8963810000000001
	.quad	0x40152000431bde83              # double 5.2812510000000001
	.quad	0x40217da122fad6cb              # double 8.7453699999999994
	.quad	0x401bbbfceb78897f              # double 6.9335820000000004
	.quad	0x3fd3fd7a13c254a4              # double 0.31234600000000001
	.quad	0x3fe10327674d1633              # double 0.53163499999999997
	.quad	0x401c9451b93037d6              # double 7.1448429999999998
	.quad	0x401752007dd44135              # double 5.8300799999999997
	.quad	0x402374f1800a7c5b              # double 9.7284050000000004
	.quad	0x400933e5fb71fbc6              # double 3.1503410000000001
	.quad	0x3fe24a6ca03c4b0a              # double 0.57158500000000001
	.quad	0x401e84ad794a6eb9              # double 7.6295679999999999
	.quad	0x3fe2aae4b0186120              # double 0.58336100000000002
	.quad	0x401c348a159817b9              # double 7.0513079999999997
	.quad	0x401b8b242070b8d0              # double 6.8858800000000002
	.quad	0x3ff40e2b063e07a3              # double 1.2534590000000001
	.quad	0x4023a4efed63454a              # double 9.8221430000000005
	.quad	0x3ff4ebe0589acbc9              # double 1.3075870000000001
	.quad	0x3ff421ac57e23f25              # double 1.258221
	.quad	0x4016a231832fcac9              # double 5.6583920000000001
	.quad	0x3fe47168f8e7ddca              # double 0.63884399999999997
	.quad	0x400e9f8e3ac0c62e              # double 3.8279079999999999
	.quad	0x401f7ce63a5c1c61              # double 7.8719720000000004
	.quad	0x400b0400fba8826b              # double 3.3769550000000002
	.quad	0x401134db59578a2b              # double 4.3016180000000004
	.quad	0x4005cba6266fd652              # double 2.7244380000000001
	.quad	0x40110292817763e5              # double 4.2525120000000003
	.quad	0x4012ad1f601797cc              # double 4.6690649999999998
	.quad	0x3ff428b08dd1e53b              # double 1.2599340000000001
	.quad	0x4012d8ae31d712a1              # double 4.7116020000000001
	.quad	0x40220ca05dd8f92b              # double 9.024661
	.quad	0x3ff114face67d780              # double 1.0676220000000001
	.quad	0x3ff93763e4abe6a3              # double 1.576023
	.quad	0x3ff44364388ebcc7              # double 1.2664530000000001
	.quad	0x40233827b6fe2e6f              # double 9.6096780000000006
	.quad	0x3ffbc4ea4a8c154d              # double 1.7355750000000001
	.quad	0x400501d10b1feeb3              # double 2.6258870000000001
	.quad	0x40152e4f765fd8ae              # double 5.2952250000000003
	.quad	0x401835ca6ca03c4b              # double 6.05253
	.quad	0x401f971fff79c843              # double 7.897583
	.quad	0x402236a012599ed8              # double 9.1066900000000004
	.quad	0x4013bc18f81e8a2f              # double 4.9336890000000002
	.quad	0x400b24b90214ad36              # double 3.3929309999999999
	.quad	0x3ff15ee78183f91e              # double 1.0856699999999999
	.quad	0x400cb03e20ccff22              # double 3.5860560000000001
	.quad	0x3fdffef39085f4a1              # double 0.49993599999999999
	.quad	0x40198e557de0d66f              # double 6.388998
	.quad	0x3ff0c395810624dd              # double 1.04775
	.quad	0x4013153868fd199c              # double 4.7707230000000003
	.quad	0x401fb22036006d0d              # double 7.9239509999999997
	.quad	0x402393ed0f627393              # double 9.7889180000000006
	.quad	0x4008aedf61240746              # double 3.0853869999999999
	.quad	0x3ffd228aa433508f              # double 1.8209329999999999
	.quad	0x4014bce91c8eac00              # double 5.1844830000000002
	.quad	0x3ff3500e6afcce1c              # double 1.2070449999999999
	.quad	0x3ff51eb2074ea8da              # double 1.3199939999999999
	.quad	0x40103a137f38c543              # double 4.0567149999999996
	.quad	0x40179ad5bee3d5fe              # double 5.9012060000000002
	.quad	0x4021fc6455eaee20              # double 8.992953
	.quad	0x400549da597d49d8              # double 2.6610610000000001
	.quad	0x40226e1c58255b03              # double 9.2150599999999994
	.quad	0x400f627d88c1db01              # double 3.9230909999999999
	.quad	0x4018d7ab324851a8              # double 6.2106139999999996
	.quad	0x3fd8c896dd26b724              # double 0.387243
	.quad	0x4008b8de6ddf00ac              # double 3.090268
	.quad	0x40201695d91ab8e9              # double 8.0441120000000002
	.quad	0x40234f4ddf86e3b4              # double 9.6548909999999992
	.quad	0x40225e58a32f4491              # double 9.1842699999999997
	.quad	0x40146db1209edbf9              # double 5.1071210000000002
	.quad	0x3ff17143393ab431              # double 1.090152
	.quad	0x40212a15336deb96              # double 8.5821930000000002
	.quad	0x400b79713ad5bee4              # double 3.4342980000000001
	.quad	0x4001749e8815e397              # double 2.181943
	.quad	0x400332a5a469d734              # double 2.3997299999999999
	.quad	0x40040ff0025bfad3              # double 2.5077820000000002
	.quad	0x4009f41b75a74c0a              # double 3.2441930000000001
	.quad	0x401a54f5903a7547              # double 6.5829680000000002
	.quad	0x401e81fbc5de9c02              # double 7.6269369999999999
	.quad	0x400f65ae5ffa3b9b              # double 3.9246490000000001
	.quad	0x400f0512231832fd              # double 3.8774760000000001
	.quad	0x4022102eec7c957d              # double 9.0316080000000003
	.quad	0x4021d3f85510d38d              # double 8.9140040000000003
	.quad	0x401a90763a190082              # double 6.641076
	.quad	0x4022b841248d7e02              # double 9.3598719999999993
	.quad	0x4014be9f6a93f291              # double 5.1861550000000003
	.quad	0x402372c9d16fc9bc              # double 9.7241959999999991
	.quad	0x401e193f6c2699c8              # double 7.5246560000000002
	.quad	0x402373b70ef56649              # double 9.7260059999999999
	.quad	0x4007f3647baa9b4a              # double 2.9938440000000002
	.quad	0x401e21a048e043a2              # double 7.5328379999999999
	.quad	0x4002075c4a83b1d1              # double 2.2535940000000001
	.quad	0x40112db61bb05faf              # double 4.2946400000000002
	.quad	0x4020d54562e09fe8              # double 8.4165449999999993
	.quad	0x3feac957cd466f50              # double 0.83707799999999999
	.quad	0x40107ccb7d41743f              # double 4.1218700000000004
	.quad	0x400e7b1f255f351a              # double 3.8101180000000001
	.quad	0x4011f65e89225311              # double 4.4905949999999999
	.quad	0x4012f5b0bbf50e34              # double 4.7399319999999996
	.quad	0x4008bfb9bed30f06              # double 3.0936159999999999
	.quad	0x401a1ac258d5842b              # double 6.5261319999999996
	.quad	0x3fd8fd8adab9f55a              # double 0.39047500000000002
	.quad	0x4022e2d96a6a0126              # double 9.4430650000000007
	.quad	0x401bdf3882278d0d              # double 6.9679890000000002
	.quad	0x3fc06c2acb85a4f0              # double 0.128301
	.quad	0x40206412cf0f9d2c              # double 8.195456
	.quad	0x4023bd9ec7000432              # double 9.8703520000000005
	.quad	0x402395f3519bd406              # double 9.7928719999999991
	.quad	0x3ff7dcffeb074a77              # double 1.491455
	.quad	0x401b5563a9f383f1              # double 6.8333880000000002
	.quad	0x40130102ff8ec0f9              # double 4.7509880000000004
	.quad	0x3ff2740b34e7685a              # double 1.1533310000000001
	.quad	0x4000a664d3bf2f55              # double 2.0812469999999998
	.quad	0x401228c5004fb118              # double 4.5398139999999998
	.quad	0x4016cb691212513b              # double 5.6986429999999997
	.quad	0x3feff460242d05f3              # double 0.99858100000000005
	.quad	0x400f3424e5929670              # double 3.900461
	.quad	0x4020ffdcdf698783              # double 8.4997319999999998
	.quad	0x40194efbb0e5e679              # double 6.3271319999999998
	.quad	0x401df9f3c70c996b              # double 7.4940939999999995
	.quad	0x4022760285ec3dab              # double 9.2304879999999994
	.quad	0x400bc9df97aaac11              # double 3.4735710000000002
	.quad	0x401a24fca42aed14              # double 6.5361200000000004
	.quad	0x401f05accd53048a              # double 7.7555420000000002
	.quad	0x401c5bbf50e34763              # double 7.0895970000000004
	.quad	0x4018c49d7ba6698c              # double 6.1920070000000003
	.quad	0x4011e2c9d16fc9bc              # double 4.4714729999999996
	.quad	0x40238aea3161a1dc              # double 9.7713180000000008
	.quad	0x4022d7a0d77b7c78              # double 9.4211489999999997
	.quad	0x401391dbca9691a7              # double 4.8924399999999997
	.quad	0x4017515b1422ccb4              # double 5.8294490000000003
	.quad	0x402250110a137f39              # double 9.1563800000000004
	.quad	0x40213716b11c6d1e              # double 8.6075949999999999
	.quad	0x4003f4d594f26aec              # double 2.494548
	.quad	0x3ff5cc6e6d9be4cd              # double 1.3624099999999999
	.quad	0x40189e66cb10342b              # double 6.1546890000000003
	.quad	0x40135af9ebe9c886              # double 4.8388439999999999
	.quad	0x4004e4bba12b5e53              # double 2.6116860000000002
	.quad	0x4020bd3aa369fcf4              # double 8.3695880000000002
	.quad	0x400112135daad602              # double 2.133826
	.quad	0x401c6f53c579f234              # double 7.1087179999999996
	.quad	0x40231f27136a4010              # double 9.5608450000000005
	.quad	0x40169e06d938151a              # double 5.6543229999999998
	.quad	0x4007ef7b9e060fe4              # double 2.9919349999999998
	.quad	0x402139ffb480a5ad              # double 8.6132790000000004
	.quad	0x3ffde92b3cc4ac6d              # double 1.869426
	.quad	0x3fff43ad9f0a1be3              # double 1.9540230000000001
	.quad	0x401c03af74cd3177              # double 7.0035990000000004
	.quad	0x4012868db8bac711              # double 4.6314000000000002
	.quad	0x401177caa7589efe              # double 4.3669840000000004
	.quad	0x401f182e87d2c7b9              # double 7.7736150000000003
	.quad	0x4018906705c896dd              # double 6.1410179999999999
	.quad	0x4016ba78af3e468d              # double 5.6821010000000003
	.quad	0x4020d85a921ccd96              # double 8.4225659999999998
	.quad	0x401dc5104d551d69              # double 7.4424450000000002
	.quad	0x401d7c33721d53ce              # double 7.3712900000000001
	.quad	0x401f482b62845996              # double 7.8204779999999996
	.quad	0x4019a57a355043e5              # double 6.4115989999999998
	.quad	0x40237d1dcd7060bb              # double 9.7443679999999996
	.quad	0x401f6c0a8d21bc12              # double 7.8555089999999996
	.quad	0x400f98b3f63c31df              # double 3.9495619999999998
	.quad	0x401aeb81b64e0547              # double 6.7299870000000004
	.quad	0x4000d45b6c3760bf              # double 2.1036899999999998
	.quad	0x40081df6db940fed              # double 3.0146310000000001
	.quad	0x4000e2962cfd8f0c              # double 2.1106379999999998
	.quad	0x3ff372b990afe60c              # double 1.215509
	.quad	0x40221968b5cbff47              # double 9.0496269999999992
	.quad	0x40222dba4d6e47dc              # double 9.0893119999999996
	.quad	0x401c665d3996fa83              # double 7.0999650000000001
	.quad	0x4016aeefe4ffc979              # double 5.6708369999999997
	.quad	0x40156c25d074213a              # double 5.355613
	.quad	0x40014c6045baf534              # double 2.162293
	.quad	0x40167fb4c3c18b50              # double 5.6247129999999999
	.quad	0x402218e0008637bd              # double 9.048584
	.quad	0x3fd7985f06f69446              # double 0.36867499999999997
	.quad	0x401867a355043e53              # double 6.1012089999999999
	.quad	0x3ff82e6ea8544780              # double 1.511336
	.quad	0x3ffdde37585be1a8              # double 1.866752
	.quad	0x400d3c9a34ca0c28              # double 3.6545909999999999
	.quad	0x400abf40a2877ee5              # double 3.3433850000000001
	.quad	0x401a8e154434e337              # double 6.6387530000000003
	.quad	0x3fcbf0d413122b7c              # double 0.21828700000000001
	.quad	0x40090a159817b95a              # double 3.1299239999999999
	.quad	0x4012b3aeab7995ee              # double 4.6754709999999999
	.quad	0x401980ef99806f26              # double 6.3759139999999999
	.quad	0x3ffbf50d2806af47              # double 1.7473270000000001
	.quad	0x4015983b60285ec4              # double 5.3986640000000001
	.quad	0x401b0a0ba1f4b1ee              # double 6.7598099999999999
	.quad	0x400c42a23bff8a8f              # double 3.5325359999999999
	.quad	0x400812acfb762d84              # double 3.0091190000000001
	.quad	0x40015e1c15097c81              # double 2.1709520000000002
	.quad	0x4010739c51dabe27              # double 4.1129009999999999
	.quad	0x3ffd5594f26aec07              # double 1.833394
	.quad	0x400331947cfa26a2              # double 2.3992089999999999
	.quad	0x400a914e3bcd35a8              # double 3.3209499999999998
	.quad	0x3ffafe6601bc98a2              # double 1.687109
	.quad	0x400c027e9531550d              # double 3.5012180000000002
	.quad	0x401fcdc8323358f3              # double 7.9509590000000001
	.quad	0x3ff569d51b4fe79f              # double 1.338338
	.quad	0x4012c47e49b1fab9              # double 4.6918879999999996
	.quad	0x40214bc5154866a1              # double 8.6479879999999998
	.quad	0x401f7d045fe11127              # double 7.8720869999999996
	.quad	0x40200ebd9018e758              # double 8.0287900000000008
	.quad	0x402022ed1394317b              # double 8.0682150000000004
	.quad	0x400580578e5c4eb5              # double 2.6876669999999998
	.quad	0x401c9da661283904              # double 7.1539549999999998
	.quad	0x3fd2cc0379314446              # double 0.29370200000000002
	.quad	0x40177e46cfc829d0              # double 5.8733170000000001
	.quad	0x4000f9cb6848beb6              # double 2.1219700000000001
	.quad	0x40132626f60e0eb6              # double 4.7872579999999996
	.quad	0x40071de9c0229a5f              # double 2.8896060000000001
	.quad	0x40173e29b6b2af14              # double 5.8107059999999997
	.quad	0x401ff72de43ed95a              # double 7.9913860000000003
	.quad	0x3ff83cb923a29c78              # double 1.5148250000000001
	.quad	0x401af2bbecaab8a6              # double 6.7370450000000002
	.quad	0x4016187724fa8b4c              # double 5.523892
	.quad	0x3ffb37d955714b9d              # double 1.7011350000000001
	.quad	0x401553f42352eb5f              # double 5.3319859999999997
	.quad	0x3fffde13b18dac26              # double 1.9917180000000001
	.quad	0x4017b034f3fd933e              # double 5.9220769999999998
	.quad	0x40219f09fa54c554              # double 8.8106229999999996
	.quad	0x3fe25ff3f0fe047d              # double 0.57421299999999997
	.quad	0x4014cb76709fa54c              # double 5.1986939999999997
	.quad	0x4011ce920c069e80              # double 4.4517290000000003
	.quad	0x3fdca0cae642bf98              # double 0.44731399999999999
	.quad	0x401009cb252ce033              # double 4.0095640000000001
	.quad	0x4014d2699c7bcc29              # double 5.2054809999999998
	.quad	0x400165f0f5a1016d              # double 2.174776
	.quad	0x40227a90470a808d              # double 9.2393820000000009
	.quad	0x4013441c8216c615              # double 4.8165149999999999
	.quad	0x402278b178b37004              # double 9.2357289999999991
	.quad	0x401e5863beec397a              # double 7.5863180000000003
	.quad	0x401414cb5bb384fd              # double 5.0203069999999999
	.quad	0x400775f3d7d3910c              # double 2.9325939999999999
	.quad	0x3ff04d2f5dbb9cfa              # double 1.0188440000000001
	.quad	0x4020be4628027d89              # double 8.3716290000000004
	.quad	0x4011b9f77292c493              # double 4.4316079999999998
	.quad	0x4018313b18dac259              # double 6.0480770000000001
	.quad	0x4022db0c4588a04d              # double 9.4278279999999998
	.quad	0x3ff09173fb7a5f42              # double 1.0355110000000001
	.quad	0x4001c94bbe4473cd              # double 2.2232889999999998
	.quad	0x4004c5ed4a1ad645              # double 2.596644
	.quad	0x4022a1a8ef77f280              # double 9.3157420000000002
	.quad	0x4014526916440f24              # double 5.0804790000000004
	.quad	0x40194c41dd1a21ea              # double 6.3244699999999998
	.quad	0x4006043ed959a30a              # double 2.7520730000000002
	.quad	0x401988d759ee88df              # double 6.3836339999999998
	.quad	0x40226bdd11be6e65              # double 9.2106709999999996
	.quad	0x401b0a159817b95a              # double 6.7598479999999999
	.quad	0x40048a4b9884c6a4              # double 2.5675270000000001
	.quad	0x402188e2c12ad81b              # double 8.7673550000000002
	.quad	0x3ffceb7564302b41              # double 1.807485
	.quad	0x401d20de093532e8              # double 7.2820970000000003
	.quad	0x40177dde7a743a64              # double 5.8729189999999996
	.quad	0x4021f31098d477bc              # double 8.974736
	.quad	0x4006378359bc33f8              # double 2.7771059999999999
	.quad	0x40032c093d966384              # double 2.3965019999999999
	.quad	0x4005c41d4b6a619e              # double 2.7207590000000001
	.quad	0x401e6b502ababead              # double 7.6047979999999997
	.quad	0x40071950b955f783              # double 2.8873609999999998
	.quad	0x4019b198aeb80ed0              # double 6.4234340000000003
	.quad	0x3fff86aa087ca644              # double 1.970377
	.quad	0x4013050268900c52              # double 4.7548919999999999
	.quad	0x40038f9335d249e4              # double 2.4451049999999999
	.quad	0x3ffadbb8c32a8c9c              # double 1.6786430000000001
	.quad	0x401ddc2480e8c8ac              # double 7.4649830000000001
	.quad	0x401a2602c9081c2e              # double 6.5371199999999998
	.quad	0x401874bf8fcd67fd              # double 6.1140119999999998
	.quad	0x3fed214ad362e903              # double 0.91031399999999996
	.quad	0x40166cc9ea9a3d2e              # double 5.6062390000000004
	.quad	0x4022baff08893b7e              # double 9.3652270000000009
	.quad	0x401f032e7b3d8e00              # double 7.753107
	.quad	0x40172a25529fe005              # double 5.7911580000000002
	.quad	0x4015b7d9988d2a20              # double 5.4295410000000004
	.quad	0x3fedaf7d30ad46f6              # double 0.92767200000000005
	.quad	0x4022e7a6bd6e8af8              # double 9.4524439999999998
	.quad	0x400dd95d4e8fb00c              # double 3.7311350000000001
	.quad	0x4022c7df5cf2495e              # double 9.3903759999999998
	.quad	0x4015f2f9873ffac2              # double 5.4872800000000002
	.quad	0x40013ea897635e74              # double 2.1555949999999999
	.quad	0x3ff5e12a51e321a3              # double 1.367472
	.quad	0x40066054ef459d99              # double 2.797037
	.quad	0x40239b88ca3e7d13              # double 9.8037779999999994
	.quad	0x4008a79463cfb331              # double 3.081826
	.quad	0x40032f32bdc26dce              # double 2.3980459999999999
	.quad	0x3ff58c37e6f71a7e              # double 1.346733
	.quad	0x401cad9ba1b19610              # double 7.1695390000000003
	.quad	0x3ff9806d0d49949f              # double 1.5938540000000001
	.quad	0x3fba63c74fb549f9              # double 0.103085
	.quad	0x3fd79f44d4456712              # double 0.36909599999999998
	.quad	0x3fd2095af294dd72              # double 0.28182099999999999
	.quad	0x4020018fe69270b0              # double 8.0030509999999992
	.quad	0x3ff5d892684cf074              # double 1.3653740000000001
	.quad	0x400ddaeb3dd11be7              # double 3.731894
	.quad	0x3ff486c97d8cf399              # double 1.282907
	.quad	0x40234fc1bda5119d              # double 9.6557750000000002
	.quad	0x4014b88a04d12019              # double 5.1802140000000003
	.quad	0x3ff37035bd512ec7              # double 1.2148950000000001
	.quad	0x4021c118c197e564              # double 8.8771419999999992
	.quad	0x4000c66ba493c89f              # double 2.0968849999999999
	.quad	0x3fe87efe0ce0b913              # double 0.76550200000000002
	.quad	0x400aef440af1cb8a              # double 3.3668290000000001
	.quad	0x4011253586ca89fc              # double 4.2863369999999996
	.quad	0x4011c5e0b4e11dbd              # double 4.4432400000000003
	.quad	0x4021428049667b5f              # double 8.6298849999999998
	.quad	0x402220d349be8ff3              # double 9.0641119999999997
	.quad	0x3fed4e054690de09              # double 0.91577399999999998
	.quad	0x4009e6e32e3821af              # double 3.2377379999999998
	.quad	0x4013adda8bd230ba              # double 4.9197790000000001
	.quad	0x40225360ae9680e0              # double 9.1628469999999993
	.quad	0x40231739d1b2e59b              # double 9.545363
	.quad	0x4011ad81adea8976              # double 4.4194399999999998
	.quad	0x3fe01fc8f32378ab              # double 0.50387999999999999
	.quad	0x40200c9f2fdb8fde              # double 8.0246519999999997
	.quad	0x3ffb0b4395810625              # double 1.69025
	.quad	0x3fedca6ca03c4b0a              # double 0.93096000000000001
	.quad	0x3fe3c37c5692b3cc              # double 0.61761299999999997
	.quad	0x401cdf78bbd38045              # double 7.2182339999999998
	.quad	0x3fe8785f8d2e514c              # double 0.76469399999999998
	.quad	0x400aa0d4dc65c704              # double 3.3285309999999999
	.quad	0x4002c279dd3bafd9              # double 2.3449589999999998
	.quad	0x401142391d57ff9b              # double 4.3146709999999997
	.quad	0x3fd3e77d523b3637              # double 0.311004
	.quad	0x3fe8685122318330              # double 0.76273400000000002
	.quad	0x4019f9cbee807bbb              # double 6.4939419999999997
	.quad	0x3fef6861e92923e6              # double 0.98149200000000003
	.quad	0x40218fc2656abde4              # double 8.78078
	.quad	0x3ff62daec4a4095f              # double 1.386153
	.quad	0x4021caf48c2e770c              # double 8.8963970000000003
	.quad	0x4020ec881e4712e4              # double 8.4619759999999999
	.quad	0x400873ffac1d29dc              # double 3.0566399999999998
	.quad	0x401e65935fc3b4f6              # double 7.5991949999999999
	.quad	0x4013a11f926c7eae              # double 4.9073469999999997
	.quad	0x401c3a72a7bd48cb              # double 7.0570779999999997
	.quad	0x402345612c6ac216              # double 9.6355070000000005
	.quad	0x3ff8d1cb039ef0f1              # double 1.5512189999999999
	.quad	0x4012dbdba0a52696              # double 4.7147050000000004
	.quad	0x3ff89cf56eac8605              # double 1.5383199999999999
	.quad	0x40179abe6a337a81              # double 5.9011170000000002
	.quad	0x401d1884c6a3bde0              # double 7.2739440000000002
	.quad	0x4015e20afa2f05a7              # double 5.470745
	.quad	0x402016872b020c4a              # double 8.0440000000000005
	.quad	0x3fd34d50ebaade65              # double 0.30159399999999997
	.quad	0x3ff3a1dda059a73b              # double 1.2270179999999999
	.quad	0x3ffb08feac42e98a              # double 1.6896960000000001
	.quad	0x4023e7296f6512a9              # double 9.9514879999999994
	.quad	0x3ff4d8655193708b              # double 1.3028310000000001
	.quad	0x3ffc0f27bb2fec57              # double 1.7537
	.quad	0x4022e3ac0c62e4d2              # double 9.4446720000000006
	.quad	0x401d24a1ad6451b9              # double 7.2857729999999998
	.quad	0x400606f049a9973e              # double 2.7533880000000002
	.quad	0x40178d9988d2a1f9              # double 5.8882810000000001
	.quad	0x402136d30f062d41              # double 8.6070790000000006
	.quad	0x40054ad601ffb481              # double 2.6615410000000002
	.quad	0x4018371b8aa00193              # double 6.0538160000000003
	.quad	0x4018839756c93a71              # double 6.1285069999999999
	.quad	0x40200cbff47735c2              # double 8.0249020000000009
	.quad	0x401883f67f4dbdf9              # double 6.12887
	.quad	0x40125a6698bb4d49              # double 4.5882820000000004
	.quad	0x4010ad256798958e              # double 4.1690880000000003
	.quad	0x3fcb21bc126a65cf              # double 0.21196699999999999
	.quad	0x40236b83f0bae89f              # double 9.7099910000000004
	.quad	0x4008bbbadc0980b2              # double 3.0916649999999999
	.quad	0x40149246bf01322f              # double 5.1428479999999999
	.quad	0x401799bc33f85511              # double 5.9001320000000002
	.quad	0x400e966277c45cbc              # double 3.8234300000000001
	.quad	0x401c02396073de1e              # double 7.0021719999999998
	.quad	0x400d0561d4306e5d              # double 3.6276280000000001
	.quad	0x3fd651b4fe79ee03              # double 0.34873700000000002
	.quad	0x4023bbb256ffc116              # double 9.8665950000000002
	.quad	0x402004ac6cdaf4ae              # double 8.0091280000000005
	.quad	0x401156a93f290abb              # double 4.3346299999999998
	.quad	0x401363b03e20ccff              # double 4.8473519999999999
	.quad	0x4021dc6e4c0df58c              # double 8.9305289999999999
	.quad	0x40042f6273929ed4              # double 2.5231370000000002
	.quad	0x40237cd940789614              # double 9.7438450000000003
	.quad	0x4012cb64e054690e              # double 4.6986270000000001
	.quad	0x400d17fbefd00714              # double 3.636711
	.quad	0x40136020817fc760              # double 4.8438739999999996
	.quad	0x4017c29670196d8f              # double 5.9400269999999997
	.quad	0x3ffbcf70153bd167              # double 1.7381439999999999
	.quad	0x40117bb9cf9a06a7              # double 4.3708260000000001
	.quad	0x400b8b2e1693c03c              # double 3.4429590000000001
	.quad	0x3ff56bc5154866a1              # double 1.338811
	.quad	0x40213d916872b021              # double 8.6202500000000004
	.quad	0x400ba90de093532e              # double 3.4575459999999998
	.quad	0x402072eee957470f              # double 8.2244790000000005
	.quad	0x401fc02de00d1b71              # double 7.9376749999999995
	.quad	0x401e26a9c560c7c1              # double 7.537757
	.quad	0x3fd12773e24febd1              # double 0.26803300000000002
	.quad	0x401d3f0068db8bac              # double 7.3115249999999996
	.quad	0x400dae3e6c4c5975              # double 3.71008
	.quad	0x3ff1b41e14bdfd26              # double 1.106474
	.quad	0x402221246bf01323              # double 9.0647310000000001
	.quad	0x40206d64302b40f6              # double 8.2136549999999993
	.quad	0x401e6ca8198f1d3f              # double 7.6061100000000001
	.quad	0x401032f37fbefd00              # double 4.0497569999999996
	.quad	0x4021c5f2239e6aba              # double 8.8866130000000005
	.quad	0x4012ffb506dd69d3              # double 4.749714
	.quad	0x401ed4bdba0a5269              # double 7.7077549999999996
	.quad	0x400202f2734f82f5              # double 2.251439
	.quad	0x3ffe2ccc46950fc7              # double 1.885937
	.quad	0x4020e911276fb092              # double 8.455209
	.quad	0x4011c3f9e7b80a9e              # double 4.4413830000000001
	.quad	0x40111534bd76ee74              # double 4.2707090000000001
	.quad	0x40201914b167ec78              # double 8.0489859999999993
	.quad	0x3fb8a5efe9318762              # double 0.096282000000000006
	.quad	0x40221c044284dfce              # double 9.0547199999999997
	.quad	0x401a40a5accd5305              # double 6.5631320000000004
	.quad	0x40124e1198aeb80f              # double 4.5762390000000002
	.quad	0x401bd16872b020c5              # double 6.9545000000000003
	.quad	0x4022e93879c4113c              # double 9.4555089999999992
	.quad	0x4011b2b6f19934f0              # double 4.4245260000000002
	.quad	0x401ced434a01abd2              # double 7.2317020000000003
	.quad	0x401192eba27ae9ab              # double 4.3934769999999999
	.quad	0x40009ff822bbecab              # double 2.0781100000000001
	.quad	0x3fe8d66adb402d17              # double 0.77617400000000003
	.quad	0x40166d256798958e              # double 5.6065880000000003
	.quad	0x3ffd0d23d4f15e7d              # double 1.8157080000000001
	.quad	0x3f775c0767d34df0              # double 0.0057029999999999997
	.quad	0x3ff6a25e99e94ab2              # double 1.414641
	.quad	0x3f8b677f6b1a2a4e              # double 0.013381000000000001
	.quad	0x3ff996659d12cade              # double 1.599218
	.quad	0x4020d72d7f950b95              # double 8.4202689999999993
	.quad	0x3ffc4f733a8a3f8a              # double 1.7693970000000001
	.quad	0x4020e6675147f130              # double 8.4500069999999994
	.quad	0x40224e878fabda0e              # double 9.153378
	.quad	0x40001f14983d7907              # double 2.0151759999999999
	.quad	0x400cb47f993d5348              # double 3.5881340000000002
	.quad	0x3fd910e8858ff759              # double 0.39165699999999998
	.quad	0x3fa70a5efe931876              # double 0.045000999999999999
	.quad	0x400b1fe6d58c8eef              # double 3.390577
	.quad	0x40014189bd8383ae              # double 2.1570010000000002
	.quad	0x40192640a6b93ccd              # double 6.2873559999999999
	.quad	0x4011e5f41aef6f8f              # double 4.474564
	.quad	0x401df0b34e768598              # double 7.4850589999999996
	.quad	0x3fe659d7774aba38              # double 0.69846699999999995
	.quad	0x40043f080303c07f              # double 2.5307770000000001
	.quad	0x401f685c24c404a7              # double 7.8519139999999998
	.quad	0x4023a73929ed3954              # double 9.8266080000000002
	.quad	0x40092050bd87b56c              # double 3.1407790000000002
	.quad	0x400e6b862b27cbf7              # double 3.802502
	.quad	0x3ff068c26138fffc              # double 1.025576
	.quad	0x4014ff865d7cb2d9              # double 5.249536
	.quad	0x401424c660a20147              # double 5.0359129999999999
	.quad	0x4018d62e90364389              # double 6.2091620000000001
	.quad	0x402313da0dfdef85              # double 9.5387730000000008
	.quad	0x40205d6eefa1e3eb              # double 8.1824870000000001
	.quad	0x4018b3c105186db5              # double 6.1755409999999999
	.quad	0x4023ad6eefa1e3eb              # double 9.838737
	.quad	0x3ffc53c792d1287c              # double 1.770454
	.quad	0x3fc7075b3e1437c5              # double 0.17991199999999999
	.quad	0x40005f2c3009b307              # double 2.0464709999999999
	.quad	0x4003cc3547e06962              # double 2.4747110000000001
	.quad	0x400972db1e9f2778              # double 3.181082
	.quad	0x4023f2f4f0d844d0              # double 9.9745249999999999
	.quad	0x3ff287b352a84381              # double 1.1581300000000001
	.quad	0x40213499285a921d              # double 8.6027310000000003
	.quad	0x401a74727dcbddba              # double 6.6137180000000004
	.quad	0x3fdee8c47a17f413              # double 0.48295700000000003
	.quad	0x400b91bac2df0d41              # double 3.4461569999999999
	.quad	0x40207db813016484              # double 8.2455449999999999
	.quad	0x4021e94855da2728              # double 8.9556299999999993
	.quad	0x40216c92ddbdb5d9              # double 8.7120580000000007
	.quad	0x401336dd69d30271              # double 4.803579
	.quad	0x4012d5831f03d146              # double 4.7085080000000001
	.quad	0x4000a28bb0a2ca9b              # double 2.0793680000000001
	.quad	0x4023fc712e40852b              # double 9.9930509999999994
	.quad	0x401a3366d7a56de3              # double 6.5501969999999998
	.quad	0x401fab36bd2b6f1a              # double 7.9172010000000004
	.quad	0x4022030984e3ffef              # double 9.0059319999999996
	.quad	0x40231f455a7d2418              # double 9.5610759999999999
	.quad	0x4013d3d188f42fe8              # double 4.9568539999999999
	.quad	0x4001fdaceee0f3cb              # double 2.2488649999999999
	.quad	0x4011c90752da9867              # double 4.4463169999999996
	.quad	0x4010b30e7ff583a5              # double 4.1748599999999998
	.quad	0x4023068900c521de              # double 9.5127640000000007
	.quad	0x401a7640a6b93ccd              # double 6.6154809999999999
	.quad	0x401e899bf5946c33              # double 7.6343839999999998
	.quad	0x400ebbc3c5bd0e13              # double 3.841682
	.quad	0x3ff6dfb3fa6defc8              # double 1.4296150000000001
	.quad	0x401f9b702602c908              # double 7.9017949999999999
	.quad	0x40108a393ee5eedd              # double 4.1349840000000002
	.quad	0x40057b71fbc5de9c              # double 2.685276
	.quad	0x4013cc2938de6ddf              # double 4.949376
	.quad	0x3fe932f87ad080b6              # double 0.78747199999999995
	.quad	0x4021cd614df8b157              # double 8.9011329999999997
	.quad	0x4013126634117f84              # double 4.7679679999999998
	.quad	0x400fd1a650614163              # double 3.9773679999999998
	.quad	0x401f3d9e40c8472c              # double 7.8101739999999999
	.quad	0x4009c9f623076c05              # double 3.223614
	.quad	0x401b567903211cb0              # double 6.8344459999999998
	.quad	0x3fac289118c197e5              # double 0.054996999999999997
	.quad	0x40232ea35935fc3b              # double 9.5910899999999994
	.quad	0x4011dd940789613d              # double 4.4663849999999998
	.quad	0x402237aa25d8d79d              # double 9.1087199999999999
	.quad	0x401b88cb8e086bdf              # double 6.8835889999999997
	.quad	0x4023d4d91eeaa6d2              # double 9.9157189999999993
	.quad	0x40163f2d3c792d13              # double 5.5616960000000004
	.quad	0x4020e6a1e81cb46c              # double 8.4504540000000005
	.quad	0x40202a56ffc115df              # double 8.0826949999999993
	.quad	0x4008390214ad362f              # double 3.0278360000000002
	.quad	0x401cb87485e3da30              # double 7.1801320000000004
	.quad	0x40122ae74f2f123c              # double 4.5418979999999998
	.quad	0x3ff2a161e4f765fe              # double 1.1644000000000001
	.quad	0x3ffc700de4c51117              # double 1.7773570000000001
	.quad	0x4018446887a8d64d              # double 6.0668049999999996
	.quad	0x3fd1109070fbeb9e              # double 0.26663599999999998
	.quad	0x3feb78af3e468cac              # double 0.85848199999999996
	.quad	0x40190b94d9407896              # double 6.2613099999999999
	.quad	0x4021263cb8173322              # double 8.5746819999999992
	.quad	0x40223ce8d972cd7d              # double 9.1189640000000001
	.quad	0x4018fbbe878fabda              # double 6.245844
	.quad	0x3fede323bbc6eb0b              # double 0.93397699999999995
	.quad	0x401983fb3743632c              # double 6.3788879999999999
	.quad	0x4012418def416bdb              # double 4.5640179999999999
	.quad	0x401a0ebbba55d1c4              # double 6.5143880000000003
	.quad	0x3ff4ba81dc0db270              # double 1.295534
	.quad	0x400b2134ce3de615              # double 3.3912140000000002
	.quad	0x401a4c7eae5bc87e              # double 6.5747020000000003
	.quad	0x401731b1960fa15e              # double 5.7985290000000003
	.quad	0x4020a10a7829068a              # double 8.3145330000000008
	.quad	0x4003ede43ed959a3              # double 2.491158
	.quad	0x402145f7e80389f8              # double 8.6366569999999996
	.quad	0x4001d43bf727136a              # double 2.2286299999999999
	.quad	0x401cba109d0635a4              # double 7.1817039999999999
	.quad	0x401714be40420f6f              # double 5.770257
	.quad	0x4016b8fb43d89ce5              # double 5.6806460000000003
	.quad	0x401a53b8a19c9d5a              # double 6.5817589999999999
	.quad	0x401e93daf8df7a4e              # double 7.6443899999999996
	.quad	0x400d8af81626b2f2              # double 3.6928559999999999
	.quad	0x401e3f0025bfad2a              # double 7.5615240000000004
	.quad	0x402246a0dbad3a60              # double 9.1379459999999995
	.quad	0x40053018e757928e              # double 2.648485
	.quad	0x401940dae3e6c4c6              # double 6.3133350000000004
	.quad	0x3fef2a7589efd86b              # double 0.97393300000000004
	.quad	0x40177faca3619978              # double 5.874682
	.quad	0x4009a74d1633482c              # double 3.20669
	.quad	0x400e363d3e4ef028              # double 3.776484
	.quad	0x4017a60913a4f872              # double 5.9121439999999996
	.quad	0x400510678c0053e3              # double 2.6330100000000001
	.quad	0x4019f2656abde3fc              # double 6.4867150000000002
	.quad	0x401375814940bbb2              # double 4.864751
	.quad	0x401bd8194c016052              # double 6.9610339999999997
	.quad	0x3fd247e06961c369              # double 0.28563699999999997
	.quad	0x401abaf038e29f9d              # double 6.6825570000000001
	.quad	0x402151b738e6d15b              # double 8.6596010000000003
	.quad	0x40103039ef0f16f4              # double 4.0470959999999998
	.quad	0x401fa7acc4ef88b9              # double 7.9137449999999995
	.quad	0x4020cd462c343b71              # double 8.4009260000000001
	.quad	0x401560a73f748a16              # double 5.3443880000000004
	.quad	0x3ff0b440af1cb89d              # double 1.0440069999999999
	.quad	0x40154d4a5df2239e              # double 5.3254789999999996
	.quad	0x401bd5785f8d2e51              # double 6.9584669999999997
	.quad	0x3fffbebf22c01e69              # double 1.9840690000000001
	.quad	0x401ec7a41e57d9dc              # double 7.6949620000000003
	.quad	0x4013f380cb6c7a7d              # double 4.9877960000000003
	.quad	0x40212e49906cca2e              # double 8.5904050000000005
	.quad	0x401f64430b178b37              # double 7.8479119999999999
	.quad	0x3fec5100a393ee5f              # double 0.88488800000000001
	.quad	0x3fed3311a543f1c7              # double 0.91248399999999996
	.quad	0x4022a1f2fdb8fde3              # double 9.3163070000000001
	.quad	0x3ff426b723ee1bd2              # double 1.259452
	.quad	0x3ffeb0a2ca9ac365              # double 1.9181239999999999
	.quad	0x3fac2efd438d1d8a              # double 0.055045999999999998
	.quad	0x4012c384ba0e8427              # double 4.6909359999999998
	.quad	0x40104e77d523b363              # double 4.0766289999999996
	.quad	0x401b7247021d10b2              # double 6.861599
	.quad	0x4015b2f33ca31e7e              # double 5.4247560000000004
	.quad	0x3fddc4dec1c1d6d0              # double 0.46514100000000003
	.quad	0x4023851c7de5082d              # double 9.759983
	.quad	0x3feb3d33d29563aa              # double 0.85122100000000001
	.quad	0x4014c1e92923e5b8              # double 5.1893659999999997
	.quad	0x4017c3ad5bee3d60              # double 5.9410910000000001
	.quad	0x40115f27fe4bcada              # double 4.3429260000000003
	.quad	0x4013c9b456b441bc              # double 4.9469770000000004
	.quad	0x4012d54866a11ec9              # double 4.7082839999999999
	.quad	0x3fa7b0b39192641b              # double 0.046269999999999999
	.quad	0x3fef054cdb7ae579              # double 0.96939699999999995
	.quad	0x4020f23af31b152f              # double 8.4731059999999996
	.quad	0x40178497fa5d28d0              # double 5.879486
	.quad	0x4022d10fd7e45804              # double 9.4083240000000003
	.quad	0x400af89efd86a8fc              # double 3.371397
	.quad	0x401d15e13b18dac2              # double 7.2713669999999997
	.quad	0x401c670691ea78af              # double 7.1006109999999998
	.quad	0x400d3c2e33eff195              # double 3.654385
	.quad	0x3fe042c1b10fd7e4              # double 0.50814899999999996
	.quad	0x4021ef1e0828c36e              # double 8.9670260000000006
	.quad	0x401a5a57214f0521              # double 6.5882230000000002
	.quad	0x3fe8caf922962cfe              # double 0.77477700000000005
	.quad	0x4008bbf26f1dc50d              # double 3.091771
	.quad	0x40212e71044f1a1a              # double 8.5907060000000008
	.quad	0x401d44545846e8f3              # double 7.3167280000000003
	.quad	0x400add577963992d              # double 3.3580770000000002
	.quad	0x400c0ab81f969e3d              # double 3.5052340000000002
	.quad	0x4018bc74751ce28f              # double 6.1840380000000001
	.quad	0x40203a88ace24bba              # double 8.1143239999999999
	.quad	0x3fedc113c68661ae              # double 0.92981899999999995
	.quad	0x401e13c968943e10              # double 7.519323
	.quad	0x40083fd5885d3133              # double 3.0311689999999998
	.quad	0x401a8b22d0e56042              # double 6.6358750000000004
	.quad	0x400237aa25d8d79d              # double 2.27718
	.quad	0x401b017c1bda511a              # double 6.7514500000000002
	.quad	0x4012cbd1676640a7              # double 4.6990410000000002
	.quad	0x401efbf93ff25e57              # double 7.7460680000000001
	.quad	0x40153d7fd82773e2              # double 5.3100579999999997
	.quad	0x401f31172ef0ae53              # double 7.7979399999999996
	.quad	0x3ffd0ebdd334c5da              # double 1.8160989999999999
	.quad	0x3ff2733ca31e7d9a              # double 1.1531340000000001
	.quad	0x401ece23f24d8fd6              # double 7.7013090000000002
	.quad	0x401b739c0ebedfa4              # double 6.8628999999999998
	.quad	0x4023cdb3bfb58d15              # double 9.9017619999999997
	.quad	0x40141d5b6805a2d7              # double 5.0286689999999998
	.quad	0x401a9af42784a948              # double 6.6513220000000004
	.quad	0x4020f20791c4b902              # double 8.4727139999999999
	.quad	0x401e6bf61aa3f035              # double 7.6054310000000002
	.quad	0x4000957ff9b56324              # double 2.0729980000000001
	.quad	0x4012d2cc70867ad9              # double 4.7058580000000001
	.quad	0x400ebf6fd21ff2e5              # double 3.8434750000000002
	.quad	0x4023766c093d9664              # double 9.7312930000000008
	.quad	0x4022d9fe64f54d1f              # double 9.4257690000000007
	.quad	0x401d645953586ca9              # double 7.3479970000000003
	.quad	0x401baed41b75a74c              # double 6.920731
	.quad	0x3ff784039abf3387              # double 1.46973
	.quad	0x3ffa6b0d9513f8db              # double 1.6511359999999999
	.quad	0x4022a61e71044f1a              # double 9.3244509999999998
	.quad	0x4016e99a1fd1569f              # double 5.7281269999999997
	.quad	0x401511a32b12d341              # double 5.2672239999999997
	.quad	0x3fc48aefb2aae297              # double 0.16048999999999999
	.quad	0x4023ddc93ea2d2fe              # double 9.9331759999999996
	.quad	0x401bb59641f64495              # double 6.9273309999999997
	.quad	0x4019c1de26916441              # double 6.439324
	.quad	0x4023572fdb8fde2f              # double 9.670287
	.quad	0x4020cb704790b84a              # double 8.3973410000000008
	.quad	0x40194eb13dfb0d52              # double 6.326848
	.quad	0x4011101ffb480a5b              # double 4.2657470000000002
	.quad	0x402183b4f6167232              # double 8.7572399999999995
	.quad	0x40170fae7924af0c              # double 5.765314
	.quad	0x3fd786fcdee34fc6              # double 0.367614
	.quad	0x3fc244e93e1c9b41              # double 0.14272799999999999
	.quad	0x3fdf99f1ae2da555              # double 0.49377100000000002
	.quad	0x4013a15bdd76683c              # double 4.9075769999999999
	.quad	0x40177fdb09a671ef              # double 5.8748589999999998
	.quad	0x3ff3c332f01754b0              # double 1.2351559999999999
	.quad	0x400d199780baa583              # double 3.6374960000000001
	.quad	0x3fead017dae81883              # double 0.83790200000000004
	.quad	0x40063a47a9e2bcf9              # double 2.778457
	.quad	0x3ff5e16b54e2b064              # double 1.367534
	.quad	0x400c750ca1cef241              # double 3.557153
	.quad	0x401a0893faf42785              # double 6.5083770000000003
	.quad	0x401fb2834d26fa40              # double 7.9243290000000002
	.quad	0x402350e6afcce1c6              # double 9.6580100000000009
	.quad	0x3febf6c2699c7bcc              # double 0.87387199999999998
	.quad	0x401cf16a48733659              # double 7.2357570000000004
	.quad	0x4022297d8cf398e9              # double 9.0810359999999992
	.quad	0x3fd168b5cbff4773              # double 0.27201599999999998
	.quad	0x401687585be1a826              # double 5.6321729999999999
	.quad	0x3fedaed1394317ad              # double 0.92759000000000003
	.quad	0x4014eddc6195464e              # double 5.2322860000000002
	.quad	0x3fe756adf71eafee              # double 0.72933099999999995
	.quad	0x40049abead4f5904              # double 2.5755590000000002
	.quad	0x4023b448cf7caa76              # double 9.8521180000000008
	.quad	0x40106b445ed4a1ad              # double 4.1047529999999997
	.quad	0x4000d5a20ddc6195              # double 2.1043129999999999
	.quad	0x4016ba5fc7e6b3ff              # double 5.6820060000000003
	.quad	0x3ffc5f81a5870da6              # double 1.773317
	.quad	0x402098bb6ed67770              # double 8.2983049999999992
	.quad	0x400176006d0d4995              # double 2.1826180000000002
	.quad	0x4023a4449dbec248              # double 9.8208359999999998
	.quad	0x3fe9a4f8726d04e6              # double 0.80138799999999999
	.quad	0x400975b9a5a89b95              # double 3.182483
	.quad	0x3fe3fb84db9c7369              # double 0.62445300000000004
	.quad	0x4013fe410b630a91              # double 4.9982949999999997
	.quad	0x4012cc8bc9cd3e0c              # double 4.6997520000000002
	.quad	0x400b5899392189be              # double 3.4182610000000002
	.quad	0x3fe639b8887229e9              # double 0.694546
	.quad	0x40235fe175d13d75              # double 9.6872670000000002
	.quad	0x401738b827fa1a0d              # double 5.8053900000000001
	.quad	0x3fc2b441bb8c32a9              # double 0.14612600000000001
	.quad	0x402259207d4e0978              # double 9.1740759999999994
	.quad	0x3fe529de8b3b3205              # double 0.66136099999999998
	.quad	0x3ff05d606317268d              # double 1.022797
	.quad	0x401c22fd75e2046c              # double 7.0341699999999996
	.quad	0x402069dd3bafd977              # double 8.206766
	.quad	0x4021938f14db5958              # double 8.7882010000000008
	.quad	0x4010bc2f837b4a23              # double 4.1837749999999998
	.quad	0x401e194ea077036d              # double 7.5247140000000003
	.quad	0x3fe9b52007dd4413              # double 0.80335999999999996
	.quad	0x4020fdd97f62b6ae              # double 8.4957999999999991
	.quad	0x4010a1322f2734f8              # double 4.1574179999999998
	.quad	0x400817d41743e964              # double 3.0116350000000001
	.quad	0x4021e5041cc532a5              # double 8.9472970000000007
	.quad	0x3ff390247021d10b              # double 1.222691
	.quad	0x40049f0ed3d859c9              # double 2.5776650000000001
	.quad	0x400cd25d4a5df224              # double 3.6027170000000002
	.quad	0x3ff526b3fe9fadb0              # double 1.321949
	.quad	0x401361a8ac5c13fd              # double 4.84537
	.quad	0x4007c6df82b1f688              # double 2.9721060000000001
	.quad	0x401019131ec0b567              # double 4.0244869999999997
	.quad	0x40215a376922d949              # double 8.6762040000000002
	.quad	0x40238c64ba94bbe4              # double 9.7742059999999995
	.quad	0x401fc785f8d2e515              # double 7.9448470000000002
	.quad	0x4021a590c0ad03da              # double 8.8233700000000006
	.quad	0x4023ccd78c436fc1              # double 9.9000819999999993
	.quad	0x400dcc892ab68cef              # double 3.7248709999999998
	.quad	0x3ff237c243dccea3              # double 1.1386130000000001
	.quad	0x40050e8533b10774              # double 2.6320899999999998
	.quad	0x4003a4e160d887ec              # double 2.455508
	.quad	0x402261d3aa369fcf              # double 9.1910679999999996
	.quad	0x4023bdf761cbccf3              # double 9.8710280000000008
	.quad	0x3fc29ed3953dea46              # double 0.14547199999999999
	.quad	0x401e6bb59ddc1e79              # double 7.6051849999999996
	.quad	0x40012112ba16e7a3              # double 2.141149
	.quad	0x401b74ece9a2c669              # double 6.864185
	.quad	0x40138107faa044af              # double 4.8760070000000004
	.quad	0x401809f83be6601c              # double 6.0097360000000002
	.quad	0x401968afc47e49b2              # double 6.352233
	.quad	0x401e277ccc037931              # double 7.5385619999999997
	.quad	0x3f3df3300de4c511              # double 4.57E-4
	.quad	0x3fd1fdac68a936c6              # double 0.28110800000000002
	.quad	0x3ff9e76640a6b93d              # double 1.618994
	.quad	0x4002034330d73861              # double 2.2515930000000002
	.quad	0x40098955b4677b39              # double 3.1920579999999998
	.quad	0x3ff40a9478c868ba              # double 1.252583
	.quad	0x401457839cd8127b              # double 5.0854629999999998
	.quad	0x4005a48e8a71de6a              # double 2.7053500000000001
	.quad	0x402163c46d82ba5a              # double 8.694858
	.quad	0x400d70efdc9c4da9              # double 3.680145
	.quad	0x401ff7bdcf0307f2              # double 7.9919349999999998
	.quad	0x3ff99e7b80a9de8b              # double 1.6011919999999999
	.quad	0x4003872c94b380cb              # double 2.4410029999999998
	.quad	0x4021a5af294dd723              # double 8.8236019999999993
	.quad	0x40039c33f85510d4              # double 2.4512710000000002
	.quad	0x401d1cde5d18090b              # double 7.2781919999999998
	.quad	0x402116f47b677f6b              # double 8.5448339999999998
	.quad	0x40134bb4d48882f1              # double 4.8239320000000001
	.quad	0x400603854046412d              # double 2.751719
	.quad	0x3ff29a86940357a3              # double 1.1627259999999999
	.quad	0x3fe12a10e0221427              # double 0.536385
	.quad	0x40132aecd07852f8              # double 4.791919
	.quad	0x400f63c31df761cc              # double 3.9237120000000001
	.quad	0x4015a86162f166e0              # double 5.414434
	.quad	0x3fe6cc144028e4fc              # double 0.71241200000000005
	.quad	0x4022cb71da37ef5b              # double 9.3973530000000007
	.quad	0x3fe0c9107faa044b              # double 0.52454400000000001
	.quad	0x4017604b3c3e74b0              # double 5.8440370000000001
	.quad	0x4016293037d63023              # double 5.5402230000000001
	.quad	0x4018e6a76965f527              # double 6.2252479999999997
	.quad	0x3fc4cea28fe260b3              # double 0.16255600000000001
	.quad	0x400640cc78e9f6a9              # double 2.7816399999999999
	.quad	0x400605564b662fe0              # double 2.7526060000000001
	.quad	0x4023ff4afd545415              # double 9.9986189999999997
	.quad	0x4017e677b395c422              # double 5.975066
	.quad	0x4016024e160d887f              # double 5.5022510000000002
	.quad	0x4013299ed7c6fbd2              # double 4.7906449999999996
	.quad	0x401ed4ef88b97785              # double 7.7079449999999996
	.quad	0x4021cc75c4a83b1d              # double 8.8993359999999999
	.quad	0x3ffef368ad688377              # double 1.934426
	.quad	0x3ff21d14e3bcd35b              # double 1.1321000000000001
	.quad	0x3fc81450efdc9c4e              # double 0.18812000000000001
	.quad	0x400c002ea960b6fa              # double 3.500089
	.quad	0x4022bed6dc1a47aa              # double 9.3727330000000002
	.quad	0x40226ee1deacc921              # double 9.2165669999999995
	.quad	0x400c3008205ff1d8              # double 3.5234529999999999
	.quad	0x3ffccddd6e04c059              # double 1.80026
	.quad	0x400753e468cac4b5              # double 2.9159630000000001
	.quad	0x401f5dddf43c7d5f              # double 7.8416670000000001
	.quad	0x4015808bb906466b              # double 5.3755329999999999
	.quad	0x3fdae81450efdc9c              # double 0.42041499999999998
	.quad	0x4022549491f2dc2b              # double 9.1651959999999999
	.quad	0x3fe2950fc71d6063              # double 0.58069599999999999
	.quad	0x400fc3aa79bbadc1              # double 3.9705400000000002
	.quad	0x400ccaf038e29f9d              # double 3.599091
	.quad	0x3fe879a6b50b0f28              # double 0.76485000000000003
	.quad	0x4020bdd8b60f1b26              # double 8.3707940000000001
	.quad	0x401c76d2674080fa              # double 7.1160370000000004
	.quad	0x3fe84be61cffeb07              # double 0.75926499999999997
	.quad	0x401161b152f3c2db              # double 4.3454030000000001
	.quad	0x40217acffa7eb6bf              # double 8.7398679999999995
	.quad	0x40224cea8da7f3cf              # double 9.1502269999999992
	.quad	0x4011db3700474d9c              # double 4.4640769999999996
	.quad	0x4010f4067cf1c326              # double 4.2383059999999997
	.quad	0x3ff0354e2b063e08              # double 1.0130140000000001
	.quad	0x4010265bea0ba1f5              # double 4.0374600000000003
	.quad	0x4022b9cb252ce033              # double 9.3628780000000002
	.quad	0x4020c0f041461b6d              # double 8.3768329999999995
	.quad	0x3fe9340f66a55087              # double 0.787605
	.quad	0x4022cee6d9be4cd7              # double 9.4041049999999994
	.quad	0x401d859f6ec5b079              # double 7.3804910000000001
	.quad	0x3fe947de5082cf53              # double 0.79002300000000003
	.quad	0x3ffd986876e1dead              # double 1.849709
	.quad	0x40035c64345cfedf              # double 2.4201130000000002
	.quad	0x40213eb441bb8c33              # double 8.6224690000000006
	.quad	0x400b0d6883771865              # double 3.3815469999999999
	.quad	0x4022d3868fd199bb              # double 9.4131359999999997
	.quad	0x40188b82c2bd7f52              # double 6.1362410000000001
	.quad	0x40026da98676a726              # double 2.3035459999999999
	.quad	0x400a5f8a8f3a9b07              # double 3.2966510000000002
	.quad	0x40201a65cf67b1c0              # double 8.051558
	.quad	0x3fdd1b9f98b71b8b              # double 0.45481100000000002
	.quad	0x400a50385c67dfe3              # double 3.2891699999999999
	.quad	0x400c1e98dcdb37ca              # double 3.5149400000000002
	.quad	0x401a4c148344c37e              # double 6.5742969999999996
	.quad	0x3ff1253543aeab7a              # double 1.0715840000000001
	.quad	0x4022fed1bf7ad4b2              # double 9.4976939999999992
	.quad	0x40232f6b3bb83cf3              # double 9.5926150000000003
	.quad	0x3ff2e11233df2a9d              # double 1.1799489999999999
	.quad	0x401828a9bcfd4bf1              # double 6.0397100000000004
	.quad	0x401873a4b5568e82              # double 6.112933
	.quad	0x4021d56323bbc6eb              # double 8.9167719999999999
	.quad	0x4020bc9a5657fb6a              # double 8.3683650000000007
	.quad	0x401667de939eadd6              # double 5.6014350000000004
	.quad	0x4015a2c5e2cdc012              # double 5.4089580000000002
	.quad	0x401be68a0d349be9              # double 6.975136
	.quad	0x4022c57a99fa11a9              # double 9.3857009999999991
	.quad	0x3ffcfcd35a858794              # double 1.811725
	.quad	0x40102c59b8023a6d              # double 4.0433110000000001
	.quad	0x40205692f6e8294a              # double 8.1690900000000006
	.quad	0x401c46ab14ec204f              # double 7.0690119999999999
	.quad	0x40222d02eec7c958              # double 9.0879130000000004
	.quad	0x4018d2c4d65e4606              # double 6.2058289999999996
	.quad	0x40071e40420f6f09              # double 2.8897710000000001
	.quad	0x402257fb267c6b8b              # double 9.1718379999999993
	.quad	0x4022d117507e9d95              # double 9.4083810000000003
	.quad	0x401c1ff79c842fa5              # double 7.031218
	.quad	0x4015fa40d90e23af              # double 5.4943879999999998
	.quad	0x400f8107314ca926              # double 3.938002
	.quad	0x40202d3da72a7bd5              # double 8.0883610000000008
	.quad	0x4012af672b884407              # double 4.6712920000000002
	.quad	0x3fe4ce13f4a98aa8              # double 0.65015599999999996
	.quad	0x40222d69d30270f4              # double 9.0886980000000008
	.quad	0x401151b866e43aa8              # double 4.3298050000000003
	.quad	0x400e06540cc78e9f              # double 3.7530899999999998
	.quad	0x3ffca8d759ee88df              # double 1.791221
	.quad	0x40063709310129cc              # double 2.7768730000000001
	.quad	0x40224749adc8fb87              # double 9.1392340000000001
	.quad	0x40080452c59fb1e2              # double 3.0021110000000002
	.quad	0x401de204af922963              # double 7.4707210000000002
	.quad	0x40206f727136a401              # double 8.21767
	.quad	0x4021ce01bc98a223              # double 8.9023570000000003
	.quad	0x4021219157abb880              # double 8.5655619999999999
	.quad	0x3fdecae642bf9831              # double 0.48113400000000001
	.quad	0x4016ce4fb97bb731              # double 5.7014760000000004
	.quad	0x4023b31550ca1cef              # double 9.8497719999999997
	.quad	0x3fe052d87f88765c              # double 0.51011300000000004
	.quad	0x402292e33eff1950              # double 9.2868899999999996
	.quad	0x3fc58759253543af              # double 0.16819300000000001
	.quad	0x4009cd4e4c942d49              # double 3.225247
	.quad	0x401b2bf4cb1897a6              # double 6.7929259999999996
	.quad	0x3ffe1eca25529fe0              # double 1.882517
	.quad	0x40196a0a0f4d7add              # double 6.3535539999999999
	.quad	0x402124d551d68c69              # double 8.5719399999999997
	.quad	0x40163872f33ca31e              # double 5.5551259999999996
	.quad	0x3fe64463065f9592              # double 0.69584800000000002
	.quad	0x401fb44bf4cb1898              # double 7.9260710000000003
	.quad	0x402330ace24bba13              # double 9.5950690000000005
	.quad	0x4008c94e5d5b24ea              # double 3.0982940000000001
	.quad	0x4020eaae4b018612              # double 8.458361
	.quad	0x40212b3a2595bbbf              # double 8.5844280000000008
	.quad	0x3ffa33aabcd78c43              # double 1.6376139999999999
	.quad	0x4021bc5aa2e3c537              # double 8.8678790000000003
	.quad	0x401d2c22ab25b318              # double 7.2931010000000001
	.quad	0x40010b1f687b139d              # double 2.1304310000000002
	.quad	0x4005f78f68be2f7b              # double 2.745879
	.quad	0x3fe4cb599aa60914              # double 0.64982300000000004
	.quad	0x3fe826ce358298cc              # double 0.75473699999999999
	.quad	0x4011df2239e6ab9b              # double 4.4679039999999999
	.quad	0x400b0723aafff36b              # double 3.3784860000000001
	.quad	0x3fefc3201040bfe4              # double 0.99256900000000003
	.quad	0x40234c5718eb8950              # double 9.6491019999999992
	.quad	0x3ff0e7e52157689d              # double 1.0566150000000001
	.quad	0x4007667168f8e7de              # double 2.9250210000000001
	.quad	0x40131a6ca03c4b0a              # double 4.7758050000000001
	.quad	0x40235d6eefa1e3eb              # double 9.682487
	.quad	0x4022518f605ab3ab              # double 9.1592970000000005
	.quad	0x40100e175d13d74d              # double 4.0137609999999997
	.quad	0x401986338b47c73f              # double 6.3810560000000001
	.quad	0x400c710880d801b4              # double 3.5551919999999999
	.quad	0x401392b27cbf6e3f              # double 4.8932589999999996
	.quad	0x3fe3a8fc0d2c386d              # double 0.61437799999999998
	.quad	0x4014614a90470a81              # double 5.0950110000000004
	.quad	0x401d2964a59c065b              # double 7.2904229999999997
	.quad	0x4014ceedcc20d563              # double 5.2020790000000003
	.quad	0x4005cc332f01754b              # double 2.724707
	.quad	0x4018bc28b2a6b0d9              # double 6.1837489999999997
	.quad	0x401bae76c8b43958              # double 6.9203749999999999
	.quad	0x40196d9ad85dfa87              # double 6.3570359999999999
	.quad	0x40237f0b06c43f60              # double 9.7481310000000008
	.quad	0x401760afa2f05a71              # double 5.8444200000000004
	.quad	0x401ab5a187a4a490              # double 6.6773740000000004
	.quad	0x40107749adc8fb87              # double 4.116492
	.quad	0x401bbb85e80bed74              # double 6.933128
	.quad	0x3fc89d9d3458cd21              # double 0.19231000000000001
	.quad	0x400673397dd00f77              # double 2.8062619999999998
	.quad	0x400c3667b5f1bef5              # double 3.5265650000000002
	.quad	0x3ff293cff64cf8d7              # double 1.161087
	.quad	0x401c6840181e03f7              # double 7.101807
	.quad	0x401b0ee5abc0e38a              # double 6.7645479999999996
	.quad	0x401dc40e1719f7f9              # double 7.4414600000000002
	.quad	0x401a00b39192641b              # double 6.5006849999999998
	.quad	0x3fa4eb78897e9963              # double 0.040858999999999999
	.quad	0x401ff0ded288ce70              # double 7.9852249999999998
	.quad	0x401fb8d36b4c7f35              # double 7.9304940000000003
	.quad	0x4012bc22ee41919b              # double 4.6837270000000002
	.quad	0x40135e7f6f4be836              # double 4.8422830000000001
	.quad	0x401663f42352eb5f              # double 5.5976109999999997
	.quad	0x3fe23ba98eda22f7              # double 0.56978300000000004
	.quad	0x402380624dd2f1aa              # double 9.75075
	.quad	0x401fdc62a1b5c7ce              # double 7.9652200000000004
	.quad	0x3ffca131a8ef77f2              # double 1.7893539999999999
	.quad	0x4004cb11c6d1e109              # double 2.5991550000000001
	.quad	0x4009e1d29dc725c4              # double 3.2352650000000001
	.quad	0x40198b3397dd00f7              # double 6.3859389999999996
	.quad	0x400f4f28c79f6662              # double 3.9136519999999999
	.quad	0x4003610f0e90bc7b              # double 2.4223919999999999
	.quad	0x401dd7d49d7ba66a              # double 7.4607720000000004
	.quad	0x401eaa038194c016              # double 7.666029
	.quad	0x3fdfb8950763a190              # double 0.495641
	.quad	0x40000f87ad080b67              # double 2.0075829999999999
	.quad	0x4013dccff21b3aef              # double 4.9656370000000001
	.quad	0x40015db09a671ef3              # double 2.170747
	.quad	0x4006957d5a9eb207              # double 2.8229929999999999
	.quad	0x3fee74f722e1ac58              # double 0.95177800000000001
	.quad	0x400d363dc486ad2e              # double 3.6514850000000001
	.quad	0x401f31e321a2e7f7              # double 7.798718
	.quad	0x401a39fe86833c60              # double 6.556635
	.quad	0x400270b178b37004              # double 2.3050259999999998
	.quad	0x40209bb98c7e2824              # double 8.3041499999999999
	.quad	0x401b8d0f1f57b41c              # double 6.887753
	.quad	0x3fe2c5132f87ad08              # double 0.586557
	.quad	0x4010339c51dabe27              # double 4.0504009999999999
	.quad	0x40223a834d26fa40              # double 9.1142830000000003
	.quad	0x4016a56605ee568a              # double 5.6615219999999997
	.quad	0x401fe4c8366516db              # double 7.9734199999999999
	.quad	0x40001401c4fc1df3              # double 2.0097689999999999
	.quad	0x3fff78194c016052              # double 1.9668209999999999
	.quad	0x401adcfe9b7bf1e9              # double 6.7158150000000001
	.quad	0x400472c8c5004fb1              # double 2.556047
	.quad	0x40228afd113836a8              # double 9.2714619999999996
	.quad	0x4022372c5197a249              # double 9.1077600000000007
	.quad	0x3fb2c8e68e3ef284              # double 0.073377999999999999
	.quad	0x4021f8c1333b96af              # double 8.985849
	.quad	0x4011cf9767903212              # double 4.4527260000000002
	.quad	0x400a3c7f77af6406              # double 3.2795399999999999
	.quad	0x401e898a65492ff5              # double 7.6343170000000002
	.quad	0x4021470f5a1016ce              # double 8.6387889999999992
	.quad	0x40174b46bacf7447              # double 5.823512
	.quad	0x401b02fd75e2046c              # double 6.7529199999999996
	.quad	0x400ac6687f455a7d              # double 3.3468789999999999
	.quad	0x40225bd3c3611340              # double 9.1793499999999994
	.quad	0x4019473eab367a10              # double 6.3195750000000004
	.quad	0x40059762d83c6c98              # double 2.6989190000000001
	.quad	0x4021392be48a58b4              # double 8.611663
	.quad	0x400fe173b85e80bf              # double 3.9850840000000001
	.quad	0x4022924894c447c3              # double 9.2857099999999999
	.quad	0x400c7435ac8a3726              # double 3.556743
	.quad	0x401953c3a42f1ed1              # double 6.3318009999999996
	.quad	0x40076dc5d6388659              # double 2.9285999999999999
	.quad	0x401556f262888b54              # double 5.3349089999999997
	.quad	0x3fd8916872b020c5              # double 0.38387500000000002
	.quad	0x4004fb15b573eab3              # double 2.6225999999999998
	.quad	0x3fe7b395c4220360              # double 0.74067199999999999
	.quad	0x4020c44b2b777d0f              # double 8.3833859999999998
	.quad	0x400a2de54b48d3ae              # double 3.2724099999999998
	.quad	0x3fce2962cfd8f0c7              # double 0.23563799999999999
	.quad	0x3ff4db163baba7b9              # double 1.303488
	.quad	0x4016d79b77c02afe              # double 5.7105540000000001
	.quad	0x40135a5df2239e6b              # double 4.8382490000000002
	.quad	0x4008b3f6c2699c7c              # double 3.0878730000000001
	.quad	0x400ee69f05ea24cc              # double 3.8626079999999998
	.quad	0x401f315054ac29bf              # double 7.7981579999999999
	.quad	0x401b6ea5f84cad58              # double 6.8580550000000002
	.quad	0x40132d7d7c2ca149              # double 4.7944240000000002
	.quad	0x400b14a2339c0ebf              # double 3.3850750000000001
	.quad	0x3ff68e496ededaec              # double 1.4097379999999999
	.quad	0x401ab998d045fe11              # double 6.6812469999999999
	.quad	0x3fcf24851a869403              # double 0.24330199999999999
	.quad	0x40005e33269df97b              # double 2.0459960000000001
	.quad	0x40077e01de269164              # double 2.9365269999999999
	.quad	0x4016b4bec679cc75              # double 5.6765090000000002
	.quad	0x4012bbf50e347629              # double 4.6835519999999997
	.quad	0x4014ef038e29f9cf              # double 5.2334120000000004
	.quad	0x401925393250b524              # double 6.2863509999999998
	.quad	0x401e5f04ddb5525d              # double 7.5927920000000002
	.quad	0x3fe36fac6045baf5              # double 0.60738199999999998
	.quad	0x401f31fafc8b007a              # double 7.7988090000000003
	.quad	0x4018a823c85c24c4              # double 6.164199
	.quad	0x4022f197e5647347              # double 9.4718619999999997
	.quad	0x401e70ae9680e065              # double 7.6100409999999998
	.quad	0x3ff090cf5b1c8649              # double 1.0353540000000001
	.quad	0x4020eea161e4f766              # double 8.466075
	.quad	0x3fdd96d4c33b5393              # double 0.46233099999999999
	.quad	0x401f8c24c404a72f              # double 7.8868590000000002
	.quad	0x401aba88ace24bba              # double 6.6821619999999999
	.quad	0x4002285ec3dab5c4              # double 2.2697120000000002
	.quad	0x40152a7d24180d3d              # double 5.291493
	.quad	0x401c96a93f290abb              # double 7.1471299999999998
	.quad	0x40202a16e7a311e8              # double 8.0822059999999993
	.quad	0x401b19029ae4f334              # double 6.7744239999999998
	.quad	0x3ff23572de43ed96              # double 1.1380490000000001
	.quad	0x40193aeafab53d64              # double 6.3075369999999999
	.quad	0x401fe0203e63e8de              # double 7.9688730000000003
	.quad	0x40203a56ffc115df              # double 8.1139449999999993
	.quad	0x4022e6be9c886163              # double 9.4506730000000001
	.quad	0x4020d277e5eaab04              # double 8.4110709999999997
	.quad	0x3fe95fe75bc44bf5              # double 0.79295700000000002
	.quad	0x4011ac5c9a34ca0c              # double 4.4183219999999999
	.quad	0x3ffa9d074213a0c7              # double 1.6633370000000001
	.quad	0x3ff727b1c0010c6f              # double 1.4471909999999999
	.quad	0x4013abf11f926c7f              # double 4.9179120000000003
	.quad	0x400818a6dacabc51              # double 3.0120369999999999
	.quad	0x40128d028a1dfb94              # double 4.6377050000000004
	.quad	0x3ffb838f36694899              # double 1.719619
	.quad	0x40032bd556084a51              # double 2.3964029999999998
	.quad	0x40002c2efd438d1e              # double 2.0215740000000002
	.quad	0x400666698bb4d489              # double 2.8000060000000002
	.quad	0x4023af26d04e618d              # double 9.8420930000000002
	.quad	0x3ff50c1333b96af0              # double 1.315448
	.quad	0x40056d8d36b4c7f3              # double 2.6784919999999999
	.quad	0x401570c996b7670a              # double 5.360144
	.quad	0x402326a5f84cad58              # double 9.5754850000000004
	.quad	0x401ef968943e1006              # double 7.743563
	.quad	0x4022eb951c5c5719              # double 9.4601220000000001
	.quad	0x40009f212d773190              # double 2.0777000000000001
	.quad	0x40006eef1bac2df1              # double 2.0541670000000001
	.quad	0x401302e3821af7d3              # double 4.752821
	.quad	0x40220bd816aceaaf              # double 9.0231329999999996
	.quad	0x40126a543f1c7582              # double 4.6038370000000004
	.quad	0x3fd3c664d3bf2f55              # double 0.30898399999999998
	.quad	0x4020635dedf1e083              # double 8.1940760000000008
	.quad	0x4021db899392189c              # double 8.9287840000000002
	.quad	0x4014f3d145d85165              # double 5.2381029999999997
	.quad	0x401a241fea8112ba              # double 6.5352779999999999
	.quad	0x400ee57646ae3a3b              # double 3.8620420000000002
	.quad	0x402246f62f9ca5be              # double 9.1385970000000007
	.quad	0x401177481b21c476              # double 4.3664860000000001
	.quad	0x402266dcc20d562a              # double 9.2009030000000003
	.quad	0x4023173d5bab2181              # double 9.5453899999999993
	.quad	0x400965ebb7739f34              # double 3.174766
	.quad	0x40172bb5e0f7fcfc              # double 5.7926859999999998
	.quad	0x402336df82b1f688              # double 9.6071740000000005
	.quad	0x402005080b673c4f              # double 8.0098269999999996
	.quad	0x40192378ab0c88a4              # double 6.2846399999999996
	.quad	0x401b08be7296f651              # double 6.7585389999999999
	.quad	0x4013368661ae70c1              # double 4.8032469999999998
	.quad	0x401e0433d6c72192              # double 7.5041039999999999
	.quad	0x4021b9bef49cf56f              # double 8.8627850000000006
	.quad	0x3ff95dc6195464dc              # double 1.585394
	.quad	0x40157bed740c4157              # double 5.3710230000000001
	.quad	0x40216814727dcbde              # double 8.7032810000000005
	.quad	0x4018535bd512ec6c              # double 6.0814050000000002
	.quad	0x4023193db7f17375              # double 9.5492989999999995
	.quad	0x400a261e0c5a8156              # double 3.2686120000000001
	.quad	0x3ffe67a0f9096bba              # double 1.9003000000000001
	.quad	0x402280941c8216c6              # double 9.2511299999999999
	.quad	0x401bb5cd4ed2cbea              # double 6.9275409999999997
	.quad	0x3fd1e29307af20ea              # double 0.27945399999999998
	.quad	0x3fccc34c1a8ac5c1              # double 0.22470999999999999
	.quad	0x400c66b723ee1bd2              # double 3.550154
	.quad	0x401673ef6b5d462c              # double 5.6132179999999998
	.quad	0x4014e285a921ccd9              # double 5.2212129999999997
	.quad	0x401a01344806290f              # double 6.5011760000000001
	.quad	0x4020d831ad2135db              # double 8.4222540000000006
	.quad	0x40216b777d0f1f58              # double 8.7098960000000005
	.quad	0x40229d7f51efb6dd              # double 9.3076120000000007
	.quad	0x4023f1ede1198aec              # double 9.9725180000000008
	.quad	0x4019780c308feac4              # double 6.3672339999999998
	.quad	0x4022ab124d099e0e              # double 9.3341239999999992
	.quad	0x400f272756861e93              # double 3.8941180000000002
	.quad	0x4004673abc947065              # double 2.550405
	.quad	0x402166c11a11233e              # double 8.7006920000000001
	.quad	0x3ffd6d4d4024b33e              # double 1.8391850000000001
	.quad	0x40040ce67d77fae3              # double 2.5062989999999998
	.quad	0x401a8ddfc9ff92f3              # double 6.6385490000000003
	.quad	0x3fe84998d045fe11              # double 0.75898399999999999
	.quad	0x40180035371971c1              # double 6.000203
	.quad	0x400395f02c4d65e4              # double 2.4482119999999998
	.quad	0x3fe45230b9dc2f40              # double 0.63503299999999996
	.quad	0x3fb59a52263d816b              # double 0.084386000000000003
	.quad	0x40163d2f1a9fbe77              # double 5.5597500000000002
	.quad	0x4002bf05ea24cc68              # double 2.3432729999999999
	.quad	0x4022ac92ff4ba51a              # double 9.337059
	.quad	0x3fe9458255b035bd              # double 0.78973499999999996
	.quad	0x4011ba936c58eeaf              # double 4.4322030000000003
	.quad	0x4022eb6d86ec17ec              # double 9.4598200000000005
	.quad	0x4006091fb3fa6df0              # double 2.7544550000000001
	.quad	0x3ff1743632c1f42c              # double 1.0908720000000001
	.quad	0x402371b0468448cf              # double 9.7220479999999991
	.quad	0x3f8ab29e4d5d80e5              # double 0.013036000000000001
	.quad	0x3ff9d27b2cc70868              # double 1.6138870000000001
	.quad	0x40116955f78359bc              # double 4.3528669999999998
	.quad	0x4020a1958969a0ae              # double 8.3155940000000008
	.quad	0x40127523f67f4dbe              # double 4.614395
	.quad	0x401f6d24180d3cff              # double 7.8565829999999996
	.quad	0x400527685985ad54              # double 2.6442420000000002
	.quad	0x401745479d4d8341              # double 5.8176560000000004
	.quad	0x40103528ae74f2f1              # double 4.0519129999999999
	.quad	0x40226e106ab14ec2              # double 9.214969
	.quad	0x40190189bd8383ae              # double 6.2515020000000003
	.quad	0x3ff9c7496aad1d04              # double 1.611154
	.quad	0x4022e3c8e25c810a              # double 9.4448919999999994
	.quad	0x3fffb9d7fd82773e              # double 1.982872
	.quad	0x4013b93d102bc72e              # double 4.9308969999999999
	.quad	0x4023395a294141ea              # double 9.6120160000000006
	.quad	0x400e869be09bb6aa              # double 3.8157269999999999
	.quad	0x401a09bb6aa4b988              # double 6.5095039999999997
	.quad	0x401ac6f32bdc26dd              # double 6.6942870000000001
	.quad	0x4003e94e5d5b24ea              # double 2.4889190000000001
	.quad	0x4017ce353f7ced91              # double 5.9513749999999996
	.quad	0x401d6dd5d3dc8b87              # double 7.3572610000000003
	.quad	0x3fd0d8f0c77dd873              # double 0.263241
	.quad	0x40226434a01abd1b              # double 9.1957140000000006
	.quad	0x4018f756861e9292              # double 6.2415409999999998
	.quad	0x4003abb341e14be0              # double 2.4588380000000001
	.quad	0x3fffa98244e93e1d              # double 1.9788840000000001
	.quad	0x40073be09bb6aa4c              # double 2.9042370000000002
	.quad	0x4009fbb6aa4b9885              # double 3.2479070000000001
	.quad	0x401d4f56eac86057              # double 7.3274800000000004
	.quad	0x401af573eab367a1              # double 6.7397
	.quad	0x401b7e56473471f8              # double 6.8733760000000004
	.quad	0x40006768dfbd6a59              # double 2.0504929999999999
	.quad	0x401f01ac57e23f25              # double 7.7516340000000001
	.quad	0x4008f0f5a1016ce8              # double 3.1176560000000002
	.quad	0x40134445aa2e3c53              # double 4.8166719999999996
	.quad	0x3fb9d66adb402d17              # double 0.100928
	.quad	0x40225edfa43fe5c9              # double 9.1852999999999998
	.quad	0x3feff2239e6ab9b2              # double 0.99830799999999997
	.quad	0x40193d08919ef955              # double 6.3096030000000001
	.quad	0x4016e8b2e9ccb7d4              # double 5.7272449999999999
	.quad	0x4020f5fd04a2fcf0              # double 8.4804460000000006
	.quad	0x401f578e5c4eb570              # double 7.8355040000000002
	.quad	0x40159e5e679463d0              # double 5.4046570000000003
	.quad	0x3fbafab53d640e9d              # double 0.105388
	.quad	0x40016ece13f4a98b              # double 2.1791040000000002
	.quad	0x40224d13f8db4891              # double 9.1505430000000008
	.quad	0x4014c3fcc9ea9a3d              # double 5.1913939999999998
	.quad	0x4009aaa21a719b4e              # double 3.2083170000000001
	.quad	0x401978887229e908              # double 6.3677080000000004
	.quad	0x4006ffac1d29dc72              # double 2.8748399999999998
	.quad	0x4014e1efb6dca07f              # double 5.2206409999999996
	.quad	0x4018a1abd1aa821f              # double 6.1578819999999999
	.quad	0x3ffa92f3c2dadb83              # double 1.6608769999999999
	.quad	0x4021f3dfd2630ec3              # double 8.9763169999999999
	.quad	0x4007b4f7a919695e              # double 2.9633630000000002
	.quad	0x4018b05ee568a505              # double 6.172237
	.quad	0x400a8027525460aa              # double 3.3125749999999998
	.quad	0x3fe38364388ebcc7              # double 0.60978900000000003
	.quad	0x40220c504816f007              # double 9.0240500000000008
	.quad	0x40200bca31e7d999              # double 8.0230270000000008
	.quad	0x40137c7fbacb4289              # double 4.8715809999999999
	.quad	0x401a941ede1198af              # double 6.6446490000000002
	.quad	0x4003498a222d5172              # double 2.4109080000000001
	.quad	0x40004cd74927913f              # double 2.0375200000000002
	.quad	0x3fe7d7f737da61e1              # double 0.74511300000000003
	.quad	0x401230ba1f4b1ee2              # double 4.5475849999999998
	.quad	0x4004d56fb8f57f73              # double 2.6042169999999998
	.quad	0x401fd202539756c9              # double 7.9550869999999997
	.quad	0x3ff0372f76e6106b              # double 1.0134730000000001
	.quad	0x4020a1a9da597d4a              # double 8.3157490000000003
	.quad	0x3ffdc97204295a6c              # double 1.8616809999999999
	.quad	0x4019dcd6c2efd439              # double 6.4656630000000002
	.quad	0x4013954b8bef8ceb              # double 4.8957959999999998
	.quad	0x400ce15fcc1871e7              # double 3.6100460000000001
	.quad	0x40218b48909289db              # double 8.7720380000000002
	.quad	0x40219b6694898f60              # double 8.8035169999999994
	.quad	0x3f7c1b54195cc858              # double 0.006862
	.quad	0x3fe82c6045baf534              # double 0.755417
	.quad	0x401924e592967019              # double 6.2860319999999996
	.quad	0x4008ba3d2d87f887              # double 3.0909369999999998
	.quad	0x3ff2f179bfdf7e80              # double 1.183954
	.quad	0x4006ce2541d8e864              # double 2.850657
	.quad	0x4000163ed0f62739              # double 2.0108619999999999
	.quad	0x401c8f88b9778573              # double 7.1401700000000003
	.quad	0x4011d0a244630660              # double 4.4537440000000004
	.quad	0x3ff4cd0678c0053e              # double 1.300055
	.quad	0x402215996744b2b7              # double 9.0421859999999992
	.quad	0x3fe8a1d53cddd6e0              # double 0.76975499999999996
	.quad	0x4007be7967caea74              # double 2.9680049999999998
	.quad	0x401fbb21c475e636              # double 7.9327459999999999
	.quad	0x401a9ac710cb295f              # double 6.6511500000000003
	.quad	0x4016f11fd5885d31              # double 5.7354729999999998
	.quad	0x4012fdd7a99fa11b              # double 4.7478930000000004
	.quad	0x4006335c182ecaef              # double 2.7750780000000002
	.quad	0x40232ca44c7b02d6              # double 9.5871910000000007
	.quad	0x400fb5e529bae46d              # double 3.963816
	.quad	0x401dcc8abd5dc400              # double 7.4497479999999996
	.quad	0x3fe170de8f6cefed              # double 0.54502799999999996
	.quad	0x401cb11ba3ca7504              # double 7.1729570000000002
	.quad	0x4011385553ef6b5d              # double 4.3050129999999998
	.quad	0x3ff09693c03bc4d2              # double 1.036762
	.quad	0x4018ed72ffd1dcd7              # double 6.231884
	.quad	0x4020f784a9478c87              # double 8.4834340000000008
	.quad	0x3fd48dcdb37c99af              # double 0.32115500000000002
	.quad	0x4010c003ab862b28              # double 4.1875140000000002
	.quad	0x401e725f633ce63a              # double 7.6116919999999997
	.quad	0x3ffd46705c896dd2              # double 1.8296969999999999
	.quad	0x4020068ee6b8305e              # double 8.0128090000000007
	.quad	0x4022faa23bff8a8f              # double 9.4895189999999995
	.quad	0x3ff986a6e32e3822              # double 1.5953740000000001
	.quad	0x40204a795703f2d4              # double 8.1454570000000003
	.quad	0x4015706961c36977              # double 5.3597770000000002
	.quad	0x3fe678ee28672757              # double 0.70226200000000005
	.quad	0x401c465e02ea960b              # double 7.0687179999999996
	.quad	0x3ff44e0eb67c2870              # double 1.2690570000000001
	.quad	0x401498db8bac710d              # double 5.1492750000000003
	.quad	0x401a66d9be4cd749              # double 6.6004399999999999
	.quad	0x4022de24febd09e1              # double 9.4338759999999997
	.quad	0x401244241c3efae8              # double 4.5665440000000004
	.quad	0x401a296030c23fab              # double 6.5404059999999999
	.quad	0x4002cb5cbff47736              # double 2.3492980000000001
	.quad	0x400fc536d655e28b              # double 3.9712960000000002
	.quad	0x40233535653c9abb              # double 9.6039229999999999
	.quad	0x4023999934efcbd5              # double 9.7999969999999994
	.quad	0x4013d2b7fe08aefb              # double 4.9557799999999999
	.quad	0x4021cbb03e20ccff              # double 8.8978289999999998
	.quad	0x40165810a569b175              # double 5.5860010000000004
	.quad	0x3fe098b934699418              # double 0.51864299999999997
	.quad	0x401f5202107b7846              # double 7.8300859999999997
	.quad	0x3ff60d0edc3bd599              # double 1.378188
	.quad	0x400ceb8ae31d712a              # double 3.615011
	.quad	0x40239e586013660e              # double 9.8092679999999994
	.quad	0x4010c59253543aeb              # double 4.1929410000000003
	.quad	0x400f5ddebd9018e7              # double 3.9208349999999998
	.quad	0x400bcbbfd71b0468              # double 3.4744869999999999
	.quad	0x40069e603d577964              # double 2.8273320000000002
	.quad	0x4012a23d9231c64c              # double 4.6584380000000003
	.quad	0x3fe2e8ad68837718              # double 0.59090299999999996
	.quad	0x3ff9f0d306a2b170              # double 1.6212949999999999
	.quad	0x400029d7ba6698bb              # double 2.0204309999999999
	.quad	0x40229ff0cbaf965b              # double 9.3123839999999998
	.quad	0x40143242d05f2885              # double 5.0490830000000004
	.quad	0x400f830b9dc2f406              # double 3.938987
	.quad	0x4009488509bf9c63              # double 3.1604100000000002
	.quad	0x40219a0ad8a11666              # double 8.8008640000000007
	.quad	0x401b308893b7d849              # double 6.797396
	.quad	0x400b59a0f0a5efe9              # double 3.4187639999999999
	.quad	0x40185df58c08b75f              # double 6.0917570000000003
	.quad	0x4012204a72ead927              # double 4.5315339999999997
	.quad	0x3fb3d2d87f88765c              # double 0.077436000000000005
	.quad	0x401fad0e991ff716              # double 7.9190009999999997
	.quad	0x3fe5f46ed245b292              # double 0.68608800000000003
	.quad	0x401191a2a4db163c              # double 4.3922220000000003
	.quad	0x4002a06a6e32e382              # double 2.328328
	.quad	0x400007ee0b0af5fd              # double 2.0038719999999999
	.quad	0x4021e3e22e5de15d              # double 8.9450850000000006
	.quad	0x3fc39c0ebedfa440              # double 0.1532
	.quad	0x4009dde6149c6f37              # double 3.233349
	.quad	0x40230ef9b994e1a4              # double 9.529249
	.quad	0x3ffa37b4a2339c0f              # double 1.6386000000000001
	.quad	0x40231d1c3ac929aa              # double 9.5568559999999998
	.quad	0x3ff00be0ded288ce              # double 1.0028999999999999
	.quad	0x3ff1409b30728e93              # double 1.078273
	.quad	0x3fdf15ad106ee30d              # double 0.48569800000000002
	.quad	0x3ff3302c4d65e460              # double 1.1992609999999999
	.quad	0x40154d1244a6223e              # double 5.3252649999999999
	.quad	0x401604ee7c49fd7a              # double 5.5048159999999999
	.quad	0x4018fb3f63c31df7              # double 6.2453589999999997
	.quad	0x400cac12ad81adeb              # double 3.5840200000000002
	.quad	0x3ffcb1897a67a52b              # double 1.793344
	.quad	0x4012e538ef34d6a1              # double 4.7238499999999997
	.quad	0x3ff0c20e6299524c              # double 1.047377
	.quad	0x400852ad81adea89              # double 3.0403699999999998
	.quad	0x401ab8a43bb40b35              # double 6.6803140000000001
	.quad	0x4010f4d551d68c69              # double 4.2390949999999998
	.quad	0x4013593ccd0fe8ab              # double 4.8371459999999997
	.quad	0x4009afb7e90ff972              # double 3.2107999999999999
	.quad	0x3fe1b1d0c8041030              # double 0.552956
	.quad	0x4022acc25072085b              # double 9.3374199999999998
	.quad	0x401db45e4e69f05f              # double 7.4261410000000003
	.quad	0x401c96f9fcb0c027              # double 7.1474380000000002
	.quad	0x401316fb09203a32              # double 4.7724419999999999
	.quad	0x40045f0b28522ea1              # double 2.546408
	.quad	0x40044bdb1a6d6990              # double 2.537039
	.quad	0x4021930c026cc1ca              # double 8.7872009999999996
	.quad	0x3fd4d8c2a454de7f              # double 0.32573000000000002
	.quad	0x401d678316a05575              # double 7.3510859999999996
	.quad	0x4023b5823422467c              # double 9.8545090000000001
	.quad	0x3fe176f8f041461b              # double 0.54577299999999995
	.quad	0x3ff0e5f5275ee99a              # double 1.0561419999999999
	.quad	0x3fea43e3193f6c27              # double 0.82078700000000004
	.quad	0x40151ec8d5c74752              # double 5.2800630000000002
	.quad	0x4014789f83be6602              # double 5.1177960000000002
	.quad	0x401737faa044ae86              # double 5.8046670000000002
	.quad	0x3ff029c23b7952d2              # double 1.010195
	.quad	0x400b6ff21b3aeee9              # double 3.4296609999999998
	.quad	0x4023cfdfc19c1722              # double 9.9060039999999994
	.quad	0x400bdc0fcb4f1e4b              # double 3.4824519999999999
	.quad	0x40125a9e2bcf91a3              # double 4.5884939999999999
	.quad	0x3fe0da426bb55ac0              # double 0.52664299999999997
	.quad	0x3ff108feac42e98a              # double 1.0646960000000001
	.quad	0x3fcd3cab81f969e4              # double 0.22841400000000001
	.quad	0x40235f80346dc5d6              # double 9.6865249999999996
	.quad	0x40052660a2014728              # double 2.6437390000000001
	.quad	0x4023ac8626f60e0f              # double 9.8369610000000005
	.quad	0x4016a2ffd1dcd706              # double 5.659179
	.quad	0x4017ff17bd8be729              # double 5.9991139999999996
	.quad	0x401c4292817763e5              # double 7.0650120000000003
	.quad	0x40209442e9899bf6              # double 8.2895730000000007
	.quad	0x401be27c39368273              # double 6.971177
	.quad	0x3fca92ab68cef673              # double 0.20760100000000001
	.quad	0x4022a428f5c28f5c              # double 9.3206249999999997
	.quad	0x400151dd5d3dc8b8              # double 2.1649729999999998
	.quad	0x40226ccb3a2595bc              # double 9.2124880000000004
	.quad	0x4023f37baecd0785              # double 9.9755529999999996
	.quad	0x4016b7d77fae3609              # double 5.6795330000000002
	.quad	0x4021de976bc1effa              # double 8.9347490000000001
	.quad	0x40165d3953dea466              # double 5.5910390000000003
	.quad	0x40127bac710cb296              # double 4.6207750000000001
	.quad	0x402363024f6598e1              # double 9.6933769999999999
	.quad	0x40218d729b280f13              # double 8.7762650000000004
	.quad	0x4012a6c050bd87b5              # double 4.6628429999999996
	.quad	0x4023cfcefaa4766c              # double 9.9058759999999992
	.quad	0x400b30cc35ce1826              # double 3.3988269999999998
	.quad	0x401a17cf1c3265ae              # double 6.5232510000000001
	.quad	0x4014b00431bde82d              # double 5.1718909999999996
	.quad	0x401d8af5fd47bedb              # double 7.3857039999999996
	.quad	0x4018f721d53cddd7              # double 6.2413400000000001
	.quad	0x402107609dcf8940              # double 8.5144090000000006
	.quad	0x4017796bb98c7e28              # double 5.8685749999999999
	.quad	0x401944aba3875925              # double 6.3170609999999998
	.quad	0x40149dffc5479d4e              # double 5.1542960000000004
	.quad	0x40210ea65cf67b1c              # double 8.5286129999999999
	.quad	0x3fb5bc126a65cf68              # double 0.084901000000000004
	.quad	0x4022174d7add15f0              # double 9.0455129999999997
	.quad	0x401b7877ee4e26d5              # double 6.8676450000000004
	.quad	0x4019a05e5f30e7ff              # double 6.4066099999999997
	.quad	0x3ffaee1deacc9214              # double 1.6831339999999999
	.quad	0x401d04c8bc9cd3e1              # double 7.2546720000000002
	.quad	0x4008ee9bbf0dc769              # double 3.1165080000000001
	.quad	0x4006651761459536              # double 2.7993610000000002
	.quad	0x40101f86a098915c              # double 4.0307870000000001
	.quad	0x40218a97396d0918              # double 8.7706850000000003
	.quad	0x3fe95ed06fef7c24              # double 0.79282399999999997
	.quad	0x40112e38a7e73a36              # double 4.2951379999999997
	.quad	0x40215f5f0b28522f              # double 8.6862720000000007
	.quad	0x401a0bc5154866a1              # double 6.5114939999999999
	.quad	0x40219d5e8d5410f9              # double 8.8073619999999995
	.quad	0x4005f23c42a66dbd              # double 2.7432789999999998
	.quad	0x40155ca5375c8da0              # double 5.3404740000000004
	.quad	0x4011254ef459d990              # double 4.2864339999999999
	.quad	0x40120918e325d4a6              # double 4.5088840000000001
	.quad	0x401d760807357e67              # double 7.365265
	.quad	0x402052fbc1acde1a              # double 8.162077
	.quad	0x4005ec7325918a01              # double 2.7404540000000002
	.quad	0x40025d8be7296f65              # double 2.295677
	.quad	0x4022920ba1f4b1ee              # double 9.2852449999999997
	.quad	0x401af804d9839475              # double 6.7422060000000004
	.quad	0x402226113404ea4b              # double 9.0743500000000008
	.quad	0x3ff48eb13dfb0d52              # double 1.284837
	.quad	0x40023d2391d57ffa              # double 2.2798530000000001
	.quad	0x401aa92fb19e731d              # double 6.6652209999999998
	.quad	0x3ff6511be6e65387              # double 1.3948020000000001
	.quad	0x401e7d03d9a95422              # double 7.6220850000000002
	.quad	0x4022af672b884407              # double 9.3425840000000004
	.quad	0x4000562d83c6c97e              # double 2.0420790000000002
	.quad	0x4008d06f69446738              # double 3.1017749999999999
	.quad	0x401a75ea67e846a6              # double 6.6151520000000001
	.quad	0x4014e803cd141a69              # double 5.2265769999999998
	.quad	0x4010adb09a671ef3              # double 4.169619
	.quad	0x4001e21c8a7a41e5              # double 2.2354059999999998
	.quad	0x40206196b76709fa              # double 8.1906029999999994
	.quad	0x402338548a9bcfd5              # double 9.6100200000000004
	.quad	0x402087fd3f5b5fa2              # double 8.2656039999999997
	.quad	0x40134a89fc6da448              # double 4.8227919999999997
	.quad	0x401770d887ebf22c              # double 5.860201
	.quad	0x4005a17a02fb5d03              # double 2.703846
	.quad	0x3ff7f7739f340d4e              # double 1.497913
	.quad	0x401a3a055757d5aa              # double 6.5566610000000001
	.quad	0x3fdccde19fc2a887              # double 0.45006600000000002
	.quad	0x4020d19d0203e63f              # double 8.4094010000000008
	.quad	0x40049ffcdab191de              # double 2.578119
	.quad	0x402379c6b0531983              # double 9.7378440000000008
	.quad	0x4001f6b76709fa55              # double 2.2454670000000001
	.quad	0x4005cefdc9c4da90              # double 2.72607
	.quad	0x4020568b7e4de3b9              # double 8.1690330000000007
	.quad	0x3ffaebcd78c436fc              # double 1.682569
	.quad	0x400158950763a190              # double 2.168253
	.quad	0x3ffc900f776c4828              # double 1.7851710000000001
	.quad	0x3fc63a322af57710              # double 0.173651
	.quad	0x401401c219eb6391              # double 5.0017170000000002
	.quad	0x4004075ddd2ae8e2              # double 2.5035970000000001
	.quad	0x4012a88377186552              # double 4.6645640000000004
	.quad	0x40235bbeec39799e              # double 9.6791909999999994
	.quad	0x40215781e8a2ec29              # double 8.6709130000000005
	.quad	0x3fe86d916872b021              # double 0.76337500000000003
	.quad	0x401f10af5fd47bee              # double 7.7662940000000003
	.quad	0x40178be3c105186e              # double 5.8866110000000003
	.quad	0x4015986f8ad2567a              # double 5.3988630000000004
	.quad	0x4021a250507a6bd7              # double 8.8170190000000002
	.quad	0x4008d1e29b6b2af1              # double 3.1024829999999999
	.quad	0x40035fb3fa6defc8              # double 2.4217300000000002
	.quad	0x40211159c4977425              # double 8.5338879999999993
	.quad	0x3fe18789613d31ba              # double 0.54779500000000003
	.quad	0x3ff07691212513b6              # double 1.0289470000000001
	.quad	0x4014ab45f17bd8be              # double 5.1672589999999996
	.quad	0x401bc5475a31a4be              # double 6.9426550000000002
	.quad	0x3f9652bd3c361134              # double 0.0218
	.quad	0x4022ba085b18548b              # double 9.3633450000000006
	.quad	0x4015709d495182aa              # double 5.3599750000000004
	.quad	0x400b7755bccaf70a              # double 3.4332690000000001
	.quad	0x3ffe8624dd2f1aa0              # double 1.9077500000000001
	.quad	0x400b4fa2f05a708f              # double 3.4138850000000001
	.quad	0x3fdd3f7ced916873              # double 0.45700000000000002
	.quad	0x4021beb28d8665e0              # double 8.8724559999999997
	.quad	0x3ff8058255b035bd              # double 1.5013449999999999
	.quad	0x3ff01052934acaff              # double 1.0039849999999999
	.quad	0x4021b5ea24cc6823              # double 8.855302
	.quad	0x3ff14307f23cc8de              # double 1.078865
	.quad	0x4012c35a858793de              # double 4.6907750000000004
	.quad	0x401604a59c065b64              # double 5.5045380000000002
	.quad	0x401bd9988d2a1f8e              # double 6.9624959999999998
	.quad	0x3ff279cd8127b2cc              # double 1.1547369999999999
	.quad	0x4020c2b862b27cbf              # double 8.3803129999999992
	.quad	0x401b6c371da37ef6              # double 6.8556790000000003
	.quad	0x3fe72e89eba6aca8              # double 0.72443100000000005
	.quad	0x40180f090f733a8a              # double 6.0146829999999998
	.quad	0x4022d0b28522ea10              # double 9.4076120000000003
	.quad	0x401705b39e279dd4              # double 5.7555680000000002
	.quad	0x3ff737329c347e8d              # double 1.450976
	.quad	0x401b1448cf7caa76              # double 6.7698090000000004
	.quad	0x401cb5dfeb8d8234              # double 7.1776119999999999
	.quad	0x40228afec56d5cfb              # double 9.2714750000000006
	.quad	0x4001542aa9f7b5af              # double 2.1660970000000002
	.quad	0x4019401b43526528              # double 6.3126040000000003
	.quad	0x4014509fe86833c6              # double 5.078735
	.quad	0x3ffea7967caea748              # double 1.915915
	.quad	0x4007e0a63305100a              # double 2.9846919999999999
	.quad	0x4018fb27cbf6e3f8              # double 6.2452690000000004
	.quad	0x401802135daad602              # double 6.002027
	.quad	0x3fe9be35c5b4aa97              # double 0.80446899999999999
	.quad	0x4023e9f70de8f6cf              # double 9.956963
	.quad	0x3ff8c789613d31ba              # double 1.5487150000000001
	.quad	0x4022e5883ba3443d              # double 9.4483049999999995
	.quad	0x4023977ab324851b              # double 9.7958580000000008
	.quad	0x401072a5614df8b1              # double 4.1119589999999997
	.quad	0x4005975d9a0f0a5f              # double 2.698909
	.quad	0x3ff2ecf7446f9b99              # double 1.1828529999999999
	.quad	0x401f9abc0e38a7e7              # double 7.9011079999999997
	.quad	0x40184b14ec204f2b              # double 6.0733220000000001
	.quad	0x40237d7774aba387              # double 9.7450519999999993
	.quad	0x401acab92c061848              # double 6.697972
	.quad	0x4012efee2c98e53f              # double 4.7343070000000003
	.quad	0x4012242528ae74f3              # double 4.5352980000000001
	.quad	0x401ef2b12d3415b1              # double 7.7370039999999997
	.quad	0x400c7ec56d5cfaad              # double 3.5619000000000001
	.quad	0x40208fa85015c209              # double 8.2805809999999997
	.quad	0x3fea3d25247cb70b              # double 0.81996400000000003
	.quad	0x400185f394b7b289              # double 2.1904059999999999
	.quad	0x401067c06e19b90f              # double 4.1013200000000003
	.quad	0x402107bd05af6c6a              # double 8.5151140000000005
	.quad	0x401ea7c1bda5119d              # double 7.6638250000000001
	.quad	0x3fe1962281344806              # double 0.54957699999999998
	.quad	0x3ff5cab1d4f9c1f8              # double 1.3619859999999999
	.quad	0x4016615d2d01c0ca              # double 5.5950819999999997
	.quad	0x402168d1526d8b1e              # double 8.7047220000000003
	.quad	0x3ffeeb55ef1fddec              # double 1.932455
	.quad	0x400c0087ca643cc0              # double 3.5002589999999998
	.quad	0x4018ace18266772d              # double 6.1688289999999997
	.quad	0x40163dea897635e7              # double 5.5604649999999998
	.quad	0x401d7bf1a5ca2984              # double 7.3710389999999997
	.quad	0x40017474107314cb              # double 2.1818620000000002
	.quad	0x401d3b3d4ae429e1              # double 7.3078510000000003
	.quad	0x3fd91e2de8709742              # double 0.39246700000000001
	.quad	0x401afe0f3cb3e575              # double 6.7481049999999998
	.quad	0x40153dd26b723ee2              # double 5.3103730000000002
	.quad	0x3ff5078c868b9fdc              # double 1.314343
	.quad	0x40195c74b838c112              # double 6.3402890000000003
	.quad	0x4023342a8869c66d              # double 9.6018869999999996
	.quad	0x4012a55ef1fddebe              # double 4.6614950000000004
	.quad	0x401f713b18dac259              # double 7.8605770000000001
	.quad	0x3ffe3d816aceaaf3              # double 1.8900159999999999
	.quad	0x40227c87db2b3461              # double 9.2432239999999997
	.quad	0x4014f7d3910c2c5e              # double 5.2420179999999998
	.quad	0x4011a023a6ce3583              # double 4.4063860000000004
	.quad	0x402136eb91b3f20a              # double 8.6072659999999992
	.quad	0x401371ee675147f1              # double 4.8612609999999998
	.quad	0x4022581882adc4ca              # double 9.1720620000000004
	.quad	0x4020d202d9cf13cf              # double 8.4101780000000002
	.quad	0x4015e5072085b185              # double 5.4736599999999997
	.quad	0x4012a33df2a9d628              # double 4.6594160000000002
	.quad	0x3fe1a6f1dc50ce4f              # double 0.55162900000000004
	.quad	0x40196a415f45e0b5              # double 6.3537650000000001
	.quad	0x401b93b645a1cac1              # double 6.8942500000000004
	.quad	0x3fe3924f227d028a              # double 0.61160999999999999
	.quad	0x401ed4aec8d5c747              # double 7.7076979999999997
	.quad	0x401f927ed84d338f              # double 7.8930619999999995
	.quad	0x401b145132f87ad1              # double 6.7698410000000004
	.quad	0x4022ce687f455a7d              # double 9.4031409999999997
	.quad	0x4020440d90e23af3              # double 8.1329159999999998
	.quad	0x3f8bfceb78897e99              # double 0.013665999999999999
	.quad	0x401465e2046c764b              # double 5.0994950000000001
	.quad	0x401352d3c792d128              # double 4.8308859999999996
	.quad	0x401099aa1d755bcd              # double 4.1500630000000003
	.quad	0x4010bc7d5ed06fef              # double 4.1840719999999996
	.quad	0x4019f4f2f123c42a              # double 6.4892079999999996
	.quad	0x401cb8811b1d92b8              # double 7.18018
	.quad	0x3ff51cd8127b2cc7              # double 1.319542
	.quad	0x401b0dc22ab25b31              # double 6.7634359999999996
	.quad	0x40061373affb04ee              # double 2.7594979999999998
	.quad	0x40128ecf20642396              # double 4.639462
	.quad	0x4013c0d2806af46b              # double 4.9383030000000003
	.quad	0x3fe4bde6149c6f37              # double 0.64818100000000001
	.quad	0x40120c7cd898b2ea              # double 4.5121950000000002
	.quad	0x4000377318fc5048              # double 2.027075
	.quad	0x4022863e29307af2              # double 9.2621929999999999
	.quad	0x401cfa5b0ff10ecb              # double 7.2444879999999996
	.quad	0x3ff0b2452c59fb1e              # double 1.043523
	.quad	0x40009fd8adab9f56              # double 2.0780500000000002
	.quad	0x40127c12f09d8c6d              # double 4.6211659999999997
	.quad	0x401c98826aa8eb46              # double 7.1489349999999998
	.quad	0x3feb84ddb5525cc4              # double 0.85996899999999998
	.quad	0x401fc26d04e618ce              # double 7.9398689999999998
	.quad	0x401e952da98676a7              # double 7.6456819999999998
	.quad	0x4020150b524399b3              # double 8.0411020000000004
	.quad	0x401023b2dd377e1c              # double 4.0348620000000004
	.quad	0x3ff354a90470a809              # double 1.208169
	.quad	0x400ad1ba3ca7503c              # double 3.3524060000000002
	.quad	0x40018bf3bea91d9b              # double 2.193336
	.quad	0x40087c182ecaeea6              # double 3.0605929999999999
	.quad	0x400c4bd6e8af8162              # double 3.5370309999999998
	.quad	0x401863f91e646f15              # double 6.0976299999999997
	.quad	0x3ff278c868b9fdbd              # double 1.154488
	.quad	0x401e17008a697aee              # double 7.5224630000000001
	.quad	0x4019e31832fcac8e              # double 6.4717719999999996
	.quad	0x3ff94c9107faa045              # double 1.5811930000000001
	.quad	0x3ff516d5cfaacd9f              # double 1.3180750000000001
	.quad	0x4018829ae4f33440              # double 6.1275440000000003
	.quad	0x401328f2e05ccc8a              # double 4.7899890000000003
	.quad	0x3ff57eea209aaa3b              # double 1.343485
	.quad	0x40182943e1006078              # double 6.0402979999999999
	.quad	0x4003a2f512663411              # double 2.4545689999999998
	.quad	0x40202630446b69db              # double 8.0745869999999993
	.quad	0x40151e4b018611fd              # double 5.2795829999999997
	.quad	0x4021ae03b3e9a6f8              # double 8.8398719999999997
	.quad	0x401ea1e85fd04a30              # double 7.6581130000000002
	.quad	0x3ff4d1a005c4651f              # double 1.3011779999999999
	.quad	0x3feed6f544bb1af4              # double 0.96374000000000004
	.quad	0x400a1b6805a2d730              # double 3.263382
	.quad	0x401d6354c122749f              # double 7.347003
	.quad	0x4012b3d9ec700043              # double 4.6756359999999999
	.quad	0x401f1555c52e72da              # double 7.7708349999999999
	.quad	0x400768b5cbff4773              # double 2.9261279999999998
	.quad	0x40204a584f4c6e6e              # double 8.1452050000000007
	.quad	0x4007f210385c67e0              # double 2.9931950000000001
	.quad	0x401bfcb039ef0f17              # double 6.996766
	.quad	0x3faff77af640639d              # double 0.062434999999999997
	.quad	0x400280ea5b530ced              # double 2.3129469999999999
	.quad	0x401790813cab81f9              # double 5.8911179999999996
	.quad	0x400d1aad601ffb48              # double 3.638026
	.quad	0x3fdf22ee41919ac8              # double 0.48650700000000002
	.quad	0x4011474afd545415              # double 4.3196219999999999
	.quad	0x4022e3ab21815a08              # double 9.4446650000000005
	.quad	0x400019ac79702e66              # double 2.0125359999999999
	.quad	0x40166728e92d55a4              # double 5.6007420000000003
	.quad	0x4006dfd1dcd7060c              # double 2.8592870000000001
	.quad	0x3fd6aeff5c6c11a1              # double 0.354431
	.quad	0x3fd2bbecaab8a5ce              # double 0.29271999999999998
	.quad	0x401b3ebb341e14be              # double 6.811261
	.quad	0x3ff25b63d3e4ef03              # double 1.1473120000000001
	.quad	0x400a0362a5e785b6              # double 3.2516530000000001
	.quad	0x3feda5f84cad57bc              # double 0.92650999999999994
	.quad	0x400e8b6c7a7c9de0              # double 3.8180779999999999
	.quad	0x401737c914b167ec              # double 5.8044779999999996
	.quad	0x40129f7ec3547e07              # double 4.6557570000000004
	.quad	0x4017b0e453d20f2c              # double 5.9227460000000001
	.quad	0x4021cdc5931ca7d6              # double 8.9018979999999992
	.quad	0x40138076c050bd88              # double 4.8754530000000003
	.quad	0x4007db749adc8fb8              # double 2.9821559999999998
	.quad	0x4003ae58a32f4491              # double 2.4601299999999999
	.quad	0x40148c5fbf83382e              # double 5.1370839999999998
	.quad	0x4022aa2291fb3fa7              # double 9.3322950000000002
	.quad	0x4017582f944241c4              # double 5.8361190000000001
	.quad	0x40086af35e310dbf              # double 3.052222
	.quad	0x40202321a2e7f6f5              # double 8.0686160000000005
	.quad	0x401934256bca5376              # double 6.3009240000000002
	.quad	0x4010b17acc4ef88c              # double 4.1733200000000004
	.quad	0x40144fecdd0d8cb0              # double 5.0780519999999996
	.quad	0x40077302f72b4528              # double 2.9311579999999999
	.quad	0x400692c1f42bb667              # double 2.8216589999999999
	.quad	0x3fc6e89eba6aca79              # double 0.17897399999999999
	.quad	0x400cdc6759ab6d01              # double 3.6076190000000001
	.quad	0x400af1cda2b5a20e              # double 3.3680680000000001
	.quad	0x4020cffd82773e25              # double 8.406231
	.quad	0x402062c40d0aaa7e              # double 8.1929020000000001
	.quad	0x40191a2e7f6f4be8              # double 6.2755679999999998
	.quad	0x4021f7fd3f5b5fa2              # double 8.9843539999999997
	.quad	0x401e0d4a1ad6451c              # double 7.5129780000000004
	.quad	0x401e34f3fd933e36              # double 7.5517120000000002
	.quad	0x40127e8a71de69ad              # double 4.6235749999999998
	.quad	0x40218fd8cf398e97              # double 8.780951
	.quad	0x3ff4b5b2d4d4024b              # double 1.29436
	.quad	0x4020d6d3d859c8c9              # double 8.4195849999999997
	.quad	0x4021a8edc3bd5992              # double 8.8299389999999995
	.quad	0x3fe777ec3547e069              # double 0.73338899999999996
	.quad	0x40230e0f5e41d4b7              # double 9.5274610000000006
	.quad	0x40230d714b9cb685              # double 9.5262550000000008
	.quad	0x401468f1d3ed527e              # double 5.1024849999999997
	.quad	0x401e26e696a26e54              # double 7.5379889999999996
	.quad	0x40080d477bbf93ff              # double 3.0064839999999999
	.quad	0x401a66045baf533f              # double 6.5996259999999998
	.quad	0x401c8f9f44d44567              # double 7.1402559999999999
	.quad	0x3fe0938fffbce421              # double 0.51801299999999995
	.quad	0x401e5d3c792d1288              # double 7.5910510000000002
	.quad	0x4012cf46aa087ca6              # double 4.7024179999999998
	.quad	0x4023b6e5abc0e38a              # double 9.8572209999999991
	.quad	0x40108487b99d4520              # double 4.1294240000000002
	.quad	0x3ff17b3b7521144d              # double 1.0925860000000001
	.quad	0x402007b99d451fc5              # double 8.0150880000000004
	.quad	0x401c648c7192ea53              # double 7.0981920000000001
	.quad	0x402020a71de69ad4              # double 8.0637749999999996
	.quad	0x4019f9ac79702e66              # double 6.4938219999999998
	.quad	0x4014440e9d51b4fe              # double 5.0664619999999996
	.quad	0x40053f5c6c11a112              # double 2.6559379999999999
	.quad	0x3ff25ac68a936c59              # double 1.147162
	.quad	0x40113c28b2a6b0d9              # double 4.3087489999999997
	.quad	0x3fd531b584b1ab08              # double 0.33115899999999998
	.quad	0x400519b8887229e9              # double 2.637559
	.quad	0x4018b24bba12b5e5              # double 6.1741169999999999
	.quad	0x4013a6be7afa7222              # double 4.9128360000000004
	.quad	0x401ba3b107746888              # double 6.9098550000000003
	.quad	0x401fe996744b2b77              # double 7.9781129999999995
	.quad	0x4019c4bec679cc75              # double 6.4421340000000002
	.quad	0x4004467be553ac4f              # double 2.5344159999999998
	.quad	0x4016274c8ffb8b26              # double 5.5383779999999998
	.quad	0x40205ef99806f263              # double 8.1854980000000008
	.quad	0x402127ecbb7f9d6f              # double 8.5779779999999999
	.quad	0x40138041cc532a49              # double 4.8752509999999996
	.quad	0x4010b7b02d59d55e              # double 4.1793829999999996
	.quad	0x3ffccae642bf9831              # double 1.799536
	.quad	0x401d0e3f359ff4fd              # double 7.2639129999999996
	.quad	0x3fea79a8cdea033e              # double 0.82735099999999995
	.quad	0x3fd80b45ae5ffa3c              # double 0.37568800000000002
	.quad	0x4019f3b2dd377e1c              # double 6.4879870000000004
	.quad	0x4021089246bf0132              # double 8.5167409999999997
	.quad	0x401aba647fdc5932              # double 6.6820240000000002
	.quad	0x4019e58dde7a743a              # double 6.4741739999999997
	.quad	0x40087dd8f92af9a9              # double 3.0614490000000001
	.quad	0x40239b524399b2c4              # double 9.8033619999999999
	.quad	0x401fa50c5eb313be              # double 7.9111799999999999
	.quad	0x4005b79e9d0e9920              # double 2.714658
	.quad	0x4023d3da5119ce07              # double 9.9137749999999993
	.quad	0x40145f72b4528284              # double 5.0932110000000002
	.quad	0x401436d612c6ac21              # double 5.0535509999999997
	.quad	0x401533458cd20afa              # double 5.3000699999999998
	.quad	0x4013ff7596851223              # double 4.9994719999999999
	.quad	0x40057dedf1e0828c              # double 2.6864889999999999
	.quad	0x40132aed1394317b              # double 4.7919200000000002
	.quad	0x40215b28522ea0fd              # double 8.6780419999999996
	.quad	0x40200209246bf013              # double 8.0039759999999998
	.quad	0x4007d4a771c970f8              # double 2.9788350000000001
	.quad	0x4020ce86c6583e85              # double 8.4033719999999992
	.quad	0x4006a5529fe004b8              # double 2.830724
	.quad	0x3fda97e996312f4d              # double 0.415522
	.quad	0x3fd3e047d3d4280b              # double 0.31056400000000001
	.quad	0x401174e5d5b24e9c              # double 4.3641579999999998
	.quad	0x402378f217093101              # double 9.7362219999999997
	.quad	0x4013a6a1e81cb46c              # double 4.9127270000000003
	.quad	0x4000885caafbc1ad              # double 2.0665830000000001
	.quad	0x4003f4bad7d7c2ca              # double 2.494497
	.quad	0x400971c2a0232096              # double 3.1805469999999998
	.quad	0x4021971d3ed527e5              # double 8.7951449999999998
	.quad	0x3ffb1cbff47735c2              # double 1.6945190000000001
	.quad	0x4020324b33daf8df              # double 8.0982299999999992
	.quad	0x4022d1c4da9003ef              # double 9.4097050000000006
	.quad	0x401093a797891e21              # double 4.1441939999999997
	.quad	0x40206e86e7e62dc7              # double 8.2158730000000002
	.quad	0x40107c71d6063172              # double 4.1215279999999996
	.quad	0x40239a50b524399b              # double 9.8013969999999996
	.quad	0x4008c194c0160525              # double 3.094522
	.quad	0x3ffce90eed02cd3a              # double 1.806899
	.quad	0x4011fc7c5260f5e4              # double 4.4965679999999999
	.quad	0x401dda5375c8d9f9              # double 7.463209
	.quad	0x4021eb2a497fa5d3              # double 8.9593070000000008
	.quad	0x40233a031ceaf252              # double 9.6133050000000004
	.quad	0x3ffaef3c2dadb835              # double 1.6834070000000001
	.quad	0x401f4955714b9cb7              # double 7.8216150000000004
	.quad	0x40235ddc4007570c              # double 9.6833209999999994
	.quad	0x3ff6412cf0f9d2bf              # double 1.3909119999999999
	.quad	0x401a4799e518f3ed              # double 6.5699230000000002
	.quad	0x401149d9d3458cd2              # double 4.32212
	.quad	0x40030275ab7dc7ac              # double 2.376201
	.quad	0x3ffed64f97edc7ef              # double 1.927322
	.quad	0x400338dd616f86a1              # double 2.4027660000000002
	.quad	0x401b1e23f24d8fd6              # double 6.7794340000000002
	.quad	0x4016c1758e219653              # double 5.6889250000000002
	.quad	0x3ffdb39b024f6599              # double 1.856349
	.quad	0x40059cd466f5019f              # double 2.7015769999999999
	.quad	0x3fef4230fcf80dc3              # double 0.97682999999999997
	.quad	0x4002cdc8fb86f47b              # double 2.3504809999999998
	.quad	0x40092413db7f1737              # double 3.1426159999999999
	.quad	0x4006bde5082cf52c              # double 2.8427220000000002
	.quad	0x4015fa1ec4e7253e              # double 5.4942580000000003
	.quad	0x4017ea137f38c543              # double 5.9785899999999996
	.quad	0x4010eac57e23f24e              # double 4.2292690000000004
	.quad	0x4012db75ea67e847              # double 4.7143170000000003
	.quad	0x4015036a832b990b              # double 5.253336
	.quad	0x40098ffeb074a772              # double 3.1953100000000001
	.quad	0x3ff3e57d9dba908a              # double 1.243528
	.quad	0x402107190d173fb8              # double 8.5138630000000006
	.quad	0x3fe5cf8b588e368f              # double 0.681585
	.quad	0x401e1c69f8c21e1d              # double 7.5277479999999998
	.quad	0x40100f4b61fe21d9              # double 4.0149359999999996
	.quad	0x40195fe32a0663c7              # double 6.3436399999999997
	.quad	0x4011212599ed7c70              # double 4.2823700000000002
	.quad	0x4023901c4fc1df33              # double 9.7814659999999999
	.quad	0x4020a0cac4b4d057              # double 8.3140470000000004
	.quad	0x401229780baa582e              # double 4.5404970000000002
	.quad	0x4019bf6124074645              # double 6.4368939999999997
	.quad	0x4007b841248d7e02              # double 2.9649679999999998
	.quad	0x401c8abd1aa821f3              # double 7.1354870000000004
	.quad	0x4007ab8a5ce5b424              # double 2.9587599999999998
	.quad	0x40226bcfd4bf0996              # double 9.2105700000000006
	.quad	0x3ffea99fa11a975b              # double 1.916412
	.quad	0x4018a3a4723aafff              # double 6.1598069999999998
	.quad	0x401d39f4d37c1377              # double 7.3065980000000001
	.quad	0x4021602fb5d03105              # double 8.6878639999999994
	.quad	0x400ee85f4a1272c9              # double 3.8634629999999999
	.quad	0x401b4dde7a743a64              # double 6.8260439999999996
	.quad	0x400093c3e74afd54              # double 2.0721509999999999
	.quad	0x400321b6d43d0397              # double 2.3914620000000002
	.quad	0x40191de8f6cefed6              # double 6.2792089999999998
	.quad	0x4006825c810a569b              # double 2.813653
	.quad	0x4012b7e1fc08fa7b              # double 4.6795730000000004
	.quad	0x40162ba83f4eca68              # double 5.5426339999999996
	.quad	0x401383ec02f2f987              # double 4.8788299999999998
	.quad	0x3fcadd26b723ee1c              # double 0.209874
	.quad	0x400545fd8adab9f5              # double 2.6591749999999998
	.quad	0x3fd8f98b71b8aa00              # double 0.39023099999999999
	.quad	0x4013e6ba493c89f4              # double 4.97532
	.quad	0x400d18a86d71f362              # double 3.6370399999999998
	.quad	0x4005acda6e75ff61              # double 2.7094010000000002
	.quad	0x4001d625a682b628              # double 2.2295639999999999
	.quad	0x4009badc0980b242              # double 3.21624
	.quad	0x4006960a63305101              # double 2.8232620000000002
	.quad	0x401ed89ca18bd662              # double 7.7115349999999996
	.quad	0x40107e6a337a80d0              # double 4.1234520000000003
	.quad	0x40108e6b8305d95e              # double 4.1390820000000001
	.quad	0x402211adea897636              # double 9.0345300000000002
	.quad	0x40120836eb4e9814              # double 4.5080220000000004
	.quad	0x4011a3a9f383f0bb              # double 4.4098280000000001
	.quad	0x401c253868fd199c              # double 7.0363480000000003
	.quad	0x400449c1b54195cd              # double 2.5360140000000002
	.quad	0x4001666b1e5c0b9a              # double 2.1750090000000002
	.quad	0x4020f72085b18549              # double 8.4826700000000006
	.quad	0x402313c27631b585              # double 9.5385930000000005
	.quad	0x3fe960bd44998d04              # double 0.79305899999999995
	.quad	0x3fcba1f4b1ee2435              # double 0.21587999999999999
	.quad	0x402141947cfa26a2              # double 8.6280859999999997
	.quad	0x4019533df2a9d628              # double 6.3312910000000002
	.quad	0x4012114013ec460f              # double 4.5168460000000001
	.quad	0x4001b79af1886df8              # double 2.2146509999999999
	.quad	0x4009eedbb59ddc1e              # double 3.2416299999999998
	.quad	0x401c3b97bb730835              # double 7.0581959999999997
	.quad	0x3fe139b23dd54da5              # double 0.53829300000000002
	.quad	0x40227f06d5065732              # double 9.2480989999999998
	.quad	0x40238e0d4562e0a0              # double 9.7774450000000002
	.quad	0x4000b4f26aec0725              # double 2.0883530000000001
	.quad	0x40053682f944241c              # double 2.6516169999999999
	.quad	0x40163b3fe9fadafd              # double 5.5578609999999999
	.quad	0x40233948ba83f4ed              # double 9.6118830000000006
	.quad	0x401ced959a30984e              # double 7.2320159999999998
	.quad	0x3fcbb906466b1e5c              # double 0.216584
	.quad	0x4018a63497b7414a              # double 6.1623099999999997
	.quad	0x401f3e40852b4d8c              # double 7.8107930000000003
	.quad	0x40054bac710cb296              # double 2.66195
	.quad	0x40208b7a3db3bfb6              # double 8.2724170000000008
	.quad	0x4023195e5aff2a17              # double 9.5495479999999997
	.quad	0x3fe84d78c436fc16              # double 0.75945700000000005
	.quad	0x4004da85015c2092              # double 2.6066989999999999
	.quad	0x4020232d0a244630              # double 8.0687029999999993
	.quad	0x40144ce13f4a98ab              # double 5.0750780000000004
	.quad	0x3fe989c7ffde7211              # double 0.79806900000000003
	.quad	0x40162fadafd11383              # double 5.5465609999999996
	.quad	0x3ffc40474d9c6b05              # double 1.765693
	.quad	0x3fd563cb81733227              # double 0.33421600000000001
	.quad	0x402185436b8f9b13              # double 8.7602799999999998
	.quad	0x40236e20ab713272              # double 9.7150929999999995
	.quad	0x4019b841ede1198b              # double 6.4299390000000001
	.quad	0x401bebbd7b2031cf              # double 6.9802150000000003
	.quad	0x4014f97dd00f776c              # double 5.2436439999999997
	.quad	0x401e0376d5497311              # double 7.5033830000000003
	.quad	0x4020431209edbf8c              # double 8.1309970000000006
	.quad	0x401f8b5525cc4263              # double 7.8860669999999997
	.quad	0x3ffa2225fa658c4c              # double 1.633337
	.quad	0x40226149a5657fb7              # double 9.1900150000000007
	.quad	0x4015d35d249e44fa              # double 5.45641
	.quad	0x4020317204295a6c              # double 8.0965729999999993
	.quad	0x402292f37fbefd00              # double 9.2870139999999992
	.quad	0x4004ef7a919695d9              # double 2.616933
	.quad	0x40234e41b328b6d8              # double 9.6528449999999992
	.quad	0x4022c5d9e40c8473              # double 9.3864280000000004
	.quad	0x3fcb6f4be835dedf              # double 0.214334
	.quad	0x3ff11bf8b9baa151              # double 1.069329
	.quad	0x3fdf3f6c2699c7bd              # double 0.48824600000000001
	.quad	0x4020b05db76b3bb8              # double 8.3444649999999996
	.quad	0x40218602a77a2ced              # double 8.7617390000000004
	.quad	0x4009c82be8bc169c              # double 3.2227399999999999
	.quad	0x4006e55eaee2003b              # double 2.8619970000000001
	.quad	0x3ff7b1950331e3a8              # double 1.480855
	.quad	0x3fe6e9856a37ac3f              # double 0.71600600000000003
	.quad	0x4015d095af294dd7              # double 5.4536959999999999
	.quad	0x400574ab1d4f9c20              # double 2.6819670000000002
	.quad	0x40203d89ce4a7b4e              # double 8.1201919999999994
	.quad	0x3fec4408d8ec95c0              # double 0.88330500000000001
	.quad	0x4006afeb4a66559f              # double 2.8358979999999998
	.quad	0x4018f53c148344c3              # double 6.2394869999999996
	.quad	0x401b37e5a78f25a2              # double 6.8045869999999997
	.quad	0x400122c6ef3d3a1d              # double 2.1419809999999999
	.quad	0x4019f42d8c2a454e              # double 6.4884550000000001
	.quad	0x401848feef5ec80c              # double 6.0712849999999996
	.quad	0x3ffafa615a8deb10              # double 1.6861280000000001
	.quad	0x3ff97bf83382e44b              # double 1.5927659999999999
	.quad	0x3faf1c10d7be9857              # double 0.060761000000000003
	.quad	0x4016beabffcdab19              # double 5.6862029999999999
	.quad	0x3ff5bb8b26394fad              # double 1.358287
	.quad	0x3fee582dbe7f2c30              # double 0.948264
	.quad	0x40008e1b4bb5e0f8              # double 2.069388
	.quad	0x40209fea1c68ec53              # double 8.3123330000000006
	.quad	0x400ca6d2674080fa              # double 3.5814560000000002
	.quad	0x40052aef2c732592              # double 2.6459640000000002
	.quad	0x40091c8f32378ab1              # double 3.1389450000000001
	.quad	0x400eccec41dd1a22              # double 3.85006
	.quad	0x4010de774eebf65e              # double 4.2172520000000002
	.quad	0x400fbac258d5842b              # double 3.9661909999999998
	.quad	0x3fdae30caa326e11              # double 0.42010799999999998
	.quad	0x401399f666234a88              # double 4.9003540000000001
	.quad	0x4022a815c209246c              # double 9.3282910000000001
	.quad	0x401709a240314877              # double 5.7594079999999996
	.quad	0x40228952f3c2dadc              # double 9.2682110000000008
	.quad	0x3fd97c99ae924f22              # double 0.39822999999999997
	.quad	0x4007c73de1e2de87              # double 2.972286
	.quad	0x401405b9a5a89b95              # double 5.0055909999999999
	.quad	0x4001d0e0221426fe              # double 2.2269899999999998
	.quad	0x401e40acc0bdcad1              # double 7.5631589999999997
	.quad	0x40234138de6ddf01              # double 9.6273870000000005
	.quad	0x400b5613d31b9b67              # double 3.41703
	.quad	0x4015e1a5ca29845e              # double 5.4703590000000002
	.quad	0x40202480e8c8abd6              # double 8.0712960000000002
	.quad	0x3fe8c81908e581cf              # double 0.77442599999999995
	.quad	0x3ff08c5b8dc55001              # double 1.034267
	.quad	0x401efef88b977857              # double 7.7489949999999998
	.quad	0x4011795d91ab8e8f              # double 4.3685210000000003
	.quad	0x3ff53f4fd6d7e88a              # double 1.3279570000000001
	.quad	0x4021a0ac18f81e8a              # double 8.8138129999999997
	.quad	0x3ffd38a2a90cd424              # double 1.826327
	.quad	0x400f56b2af145522              # double 3.9173330000000002
	.quad	0x401f599bb2788db0              # double 7.8375079999999997
	.quad	0x3fa8653005814941              # double 0.047647000000000002
	.quad	0x40226ac2374794ea              # double 9.2085129999999999
	.quad	0x3ff9bd2e94680171              # double 1.608687
	.quad	0x400bb281fd9ba1b2              # double 3.4621620000000002
	.quad	0x4002cf9d2bf55150              # double 2.3513739999999999
	.quad	0x3ffe6a62aa19439e              # double 1.900973
	.quad	0x40100c6822ff0889              # double 4.0121159999999998
	.quad	0x401f848e8a71de6a              # double 7.8794500000000003
	.quad	0x401f65d851654d62              # double 7.8494580000000003
	.quad	0x3fe70d801b435265              # double 0.72039799999999998
	.quad	0x40211c7a5b0ff10f              # double 8.5556210000000004
	.quad	0x40228bec892ab68d              # double 9.2732890000000001
	.quad	0x4016eb0318b9346a              # double 5.7295040000000004
	.quad	0x3ffed5d4e8fb00bd              # double 1.9272050000000001
	.quad	0x4022821815a07b35              # double 9.2540899999999997
	.quad	0x401d1fb43d89ce4a              # double 7.2809609999999996
	.quad	0x4022155475a31a4c              # double 9.0416600000000002
	.quad	0x3fc0158750c1b973              # double 0.12565699999999999
	.quad	0x402009563a9f383f              # double 8.0182359999999999
	.quad	0x400866ec9e236c16              # double 3.0502560000000001
	.quad	0x401dcc810a569b17              # double 7.4497109999999997
	.quad	0x400fe81c2e33eff2              # double 3.9883350000000002
	.quad	0x400a5d1b2e59af9f              # double 3.2954620000000001
	.quad	0x400e0868b9fdbd30              # double 3.7541060000000002
	.quad	0x3fdf4a7f8012dfd7              # double 0.48892200000000002
	.quad	0x401211bda5119ce0              # double 4.5173249999999996
	.quad	0x400590bd017dae82              # double 2.6956730000000002
	.quad	0x4023c5b39e279dd4              # double 9.8861360000000004
	.quad	0x4020fdd095af294e              # double 8.4957320000000003
	.quad	0x40226558a7610279              # double 9.1979419999999994
	.quad	0x40134de5d18090b4              # double 4.8260719999999999
	.quad	0x4021179207d4e098              # double 8.5460360000000009
	.quad	0x4000d3d6c7219221              # double 2.103437
	.quad	0x3fda6cb5350092cd              # double 0.412885
	.quad	0x40132d4fdf3b645a              # double 4.7942499999999999
	.quad	0x401f9158fb43d89d              # double 7.891941
	.quad	0x401a940bbb1f255f              # double 6.6445759999999998
	.quad	0x400ab0ecb74ddf87              # double 3.336389
	.quad	0x40024f9a06a6e32e              # double 2.2888679999999999
	.quad	0x4002c3fa2ad3e921              # double 2.3456920000000001
	.quad	0x4016b66b6177ea1c              # double 5.6781439999999996
	.quad	0x401aca91105e1c15              # double 6.697819
	.quad	0x401a50346dc5d639              # double 6.5783250000000004
	.quad	0x4017ce4606748e47              # double 5.9514389999999997
	.quad	0x3fe7625204af9229              # double 0.73075199999999996
	.quad	0x401c4dc1e7967caf              # double 7.0759350000000003
	.quad	0x401d59d12cadddf4              # double 7.3377119999999998
	.quad	0x3fe633b320535c9e              # double 0.69381099999999996
	.quad	0x401c9bfb15b573eb              # double 7.1523250000000003
	.quad	0x401763a71151611c              # double 5.8473170000000003
	.quad	0x40141b28954a7f80              # double 5.0265219999999999
	.quad	0x4014a96c82e019b1              # double 5.1654530000000003
	.quad	0x4021fe317268d328              # double 8.9964709999999997
	.quad	0x4023af13059641f6              # double 9.8419419999999995
	.quad	0x401dc1d4738a3b58              # double 7.4392870000000002
	.quad	0x40089b9d7fd82774              # double 3.0759840000000001
	.quad	0x40140cabc5154867              # double 5.0123740000000003
	.quad	0x4016782ecaeea63b              # double 5.6173659999999996
	.quad	0x400d2d86ec17ebaf              # double 3.64723
	.quad	0x3fc4b9991361dc94              # double 0.161914
	.quad	0x40156bfca85caafc              # double 5.3554560000000002
	.quad	0x401a3891e215336e              # double 6.5552440000000001
	.quad	0x4015c00fba8826ab              # double 5.4375600000000004
	.quad	0x400d7a005c4651f4              # double 3.684571
	.quad	0x40120afe60c38f36              # double 4.5107359999999996
	.quad	0x40220168f8e7ddca              # double 9.0027539999999995
	.quad	0x3ffd2376922d948e              # double 1.8211580000000001
	.quad	0x4010f395c4220360              # double 4.237876
	.quad	0x4020c7eef5ec80c7              # double 8.3904949999999996
	.quad	0x400fd170d62bf120              # double 3.9772660000000002
	.quad	0x402159e731d2e0e3              # double 8.675592
	.quad	0x3fec3f50e3476295              # double 0.88272899999999999
	.quad	0x4019eda4ce8101f3              # double 6.4820739999999999
	.quad	0x401bf97cc39ffd61              # double 6.9936400000000001
	.quad	0x4017921ab4b72c52              # double 5.8926800000000004
	.quad	0x4000ec5a8155d5f5              # double 2.1154069999999998
	.quad	0x401166659d12cade              # double 4.3499970000000001
	.quad	0x402044a2120e1f7d              # double 8.1340489999999992
	.quad	0x401fcca25529fe00              # double 7.9498379999999997
	.quad	0x400da6234a87e38f              # double 3.7061220000000001
	.quad	0x401b0ac9f2fdb8fe              # double 6.7605360000000001
	.quad	0x4010ee974a3400b9              # double 4.2329990000000004
	.quad	0x4016269db65ecc3e              # double 5.5377109999999998
	.quad	0x401433165d3996fb              # double 5.0498900000000004
	.quad	0x400e471b47842310              # double 3.7847200000000001
	.quad	0x4019993ccd0fe8ab              # double 6.3996459999999997
	.quad	0x4021dbd5bab21816              # double 8.9293650000000007
	.quad	0x400ea94d50ebaade              # double 3.8326669999999998
	.quad	0x401f7524399b2c41              # double 7.8643960000000001
	.quad	0x40061193708aac97              # double 2.7585820000000001
	.quad	0x401dfed6777079e6              # double 7.4988650000000003
	.quad	0x40119a044ae85b9f              # double 4.4004070000000004
	.quad	0x400e680064a9cdc4              # double 3.8007819999999999
	.quad	0x40025151611ba3ca              # double 2.2897059999999998
	.quad	0x4023321fafc8b008              # double 9.5978980000000007
	.quad	0x4019c5b4aa9717df              # double 6.4430719999999999
	.quad	0x40073e6eeb702603              # double 2.9054850000000001
	.quad	0x4016a37d63022dd8              # double 5.6596580000000003
	.quad	0x40213d5c31593e60              # double 8.6198440000000005
	.quad	0x3ff23b0d51f81a58              # double 1.1394169999999999
	.quad	0x401d91a11233df2b              # double 7.3922160000000003
	.quad	0x3fd285729b280f13              # double 0.28939500000000001
	.quad	0x4004c08d08919ef9              # double 2.5940189999999999
	.quad	0x40167fc0096feb4a              # double 5.6247559999999996
	.quad	0x4012a4b9cb6848bf              # double 4.6608650000000003
	.quad	0x3ff68c868b9fdbd3              # double 1.409308
	.quad	0x3ff31084e831ad21              # double 1.191533
	.quad	0x400d94bad7d7c2ca              # double 3.697622
	.quad	0x4002e3b927d45a60              # double 2.3611930000000001
	.quad	0x4013b33c1ce6c094              # double 4.9250340000000001
	.quad	0x401786b15f88fc93              # double 5.8815359999999997
	.quad	0x400fd2a1f8e3ac0c              # double 3.9778479999999998
	.quad	0x3fe4209aaa3ad18d              # double 0.62897999999999998
	.quad	0x4022a76837f7be12              # double 9.3269669999999998
	.quad	0x402049dbec2480e9              # double 8.1442560000000004
	.quad	0x401d3f0e4da09cc3              # double 7.3115779999999999
	.quad	0x4010df722e1ac57e              # double 4.2182089999999999
	.quad	0x401485054ac29bf1              # double 5.1299029999999997
	.quad	0x3fe32b7fe08aefb3              # double 0.59906000000000004
	.quad	0x3ff4ffc115df6556              # double 1.3124400000000001
	.quad	0x40109e4a38327675              # double 4.1545800000000002
	.quad	0x3ffc4b966be7afa7              # double 1.768454
	.quad	0x4014524f6598e10d              # double 5.080381
	.quad	0x401c0949a5657fb7              # double 7.0090700000000004
	.quad	0x400a87e06961c369              # double 3.3163459999999998
	.quad	0x4005d710880d801b              # double 2.7300119999999999
	.quad	0x40233b688bda9436              # double 9.6160320000000006
	.quad	0x3fe56c00da1a9329              # double 0.66943399999999997
	.quad	0x4023fcfe36d22425              # double 9.9941270000000006
	.quad	0x4023246c332f0175              # double 9.5711379999999994
	.quad	0x40195619da9c9928              # double 6.3340829999999997
	.quad	0x401817525460aa65              # double 6.0227750000000002
	.quad	0x3fd996030c23fab1              # double 0.399781
	.quad	0x40146034b0e1b4bb              # double 5.0939509999999997
	.quad	0x401628344c37e6f7              # double 5.5392619999999999
	.quad	0x40218e9f4906034f              # double 8.7785589999999996
	.quad	0x40119f37329c347f              # double 4.4054840000000004
	.quad	0x3fed9fe86833c600              # double 0.92576999999999998
	.quad	0x3fefad080b673c4f              # double 0.98987199999999997
	.quad	0x4020a5df43c7d5ed              # double 8.323969
	.quad	0x4016f25d074213a1              # double 5.7366830000000002
	.quad	0x4014239de481f538              # double 5.0347819999999999
	.quad	0x40135a1c68ec52a4              # double 4.8379989999999999
	.quad	0x401a2f1dc50ce4eb              # double 6.5460120000000002
	.quad	0x401ebb862b27cbf7              # double 7.683129
	.quad	0x401bf323fee2c98e              # double 6.9874419999999997
	.quad	0x4013dcaf709b738e              # double 4.9655129999999996
	.quad	0x4015bdb1209edbf9              # double 5.4352460000000002
	.quad	0x401d642f61ed5ae2              # double 7.3478370000000002
	.quad	0x4021a14face67d78              # double 8.815061
	.quad	0x40232c68ec52a412              # double 9.5867380000000004
	.quad	0x4009a95b78cc9a78              # double 3.207694
	.quad	0x401e2917939a7c18              # double 7.5401290000000003
	.quad	0x4013050c1b97353b              # double 4.7549289999999997
	.quad	0x400cd58298cc1440              # double 3.6042529999999999
	.quad	0x3ff7444bf4cb1898              # double 1.4541740000000001
	.quad	0x4020024031487768              # double 8.0043959999999998
	.quad	0x4021fbe76c8b4396              # double 8.9920000000000009
	.quad	0x400ceb702602c908              # double 3.61496
	.quad	0x401f245fe1112770              # double 7.7855220000000003
	.quad	0x4023f335f3d7d391              # double 9.9750209999999999
	.quad	0x3ff8f8c436fc1590              # double 1.5607340000000001
	.quad	0x3fee8ac7da1ec4e7              # double 0.95444099999999998
	.quad	0x401d56a444178705              # double 7.3346109999999998
	.quad	0x4016d3e5753a3ec0              # double 5.7069299999999998
	.quad	0x400d1bdcf0307f24              # double 3.6386050000000001
	.quad	0x40106fce3150dae4              # double 4.1091850000000001
	.quad	0x3fec984e3ffef391              # double 0.89359200000000005
	.quad	0x402385dbfceb7889              # double 9.7614439999999991
	.quad	0x40180ed4a1ad6452              # double 6.0144830000000002
	.quad	0x3fccffda4052d667              # double 0.22655800000000001
	.quad	0x3ff775cd0bb6ed67              # double 1.4662599999999999
	.quad	0x40133b0ab2e1693c              # double 4.807658
	.quad	0x3ff738b3700474da              # double 1.451343
	.quad	0x400fb193708aac97              # double 3.9617070000000001
	.quad	0x4002c20578e5c4eb              # double 2.3447369999999998
	.quad	0x400f05729b280f13              # double 3.8776600000000001
	.quad	0x3fd8a2b9d3cbc48f              # double 0.384932
	.quad	0x4019ed352220bc38              # double 6.4816479999999999
	.quad	0x401e9385c67dfe33              # double 7.6440650000000003
	.quad	0x402278d73860999e              # double 9.2360170000000004
	.quad	0x4018109fa54c5543              # double 6.0162339999999999
	.quad	0x4022a9eff9f87f02              # double 9.3319089999999996
	.quad	0x401e1a87a072d1af              # double 7.5259080000000002
	.quad	0x3ffcd31ca7d6733f              # double 1.8015410000000001
	.quad	0x3ff2ed4b2745bf27              # double 1.182933
	.quad	0x40122364bec679cc              # double 4.5345639999999996
	.quad	0x3f6e75360d024702              # double 0.003718
	.quad	0x40237ca2b9d3cbc5              # double 9.7434290000000007
	.quad	0x4008026a22b3892f              # double 3.001179
	.quad	0x3ffd8d2b2bfdb4cc              # double 1.846965
	.quad	0x4011282c2bd7f51f              # double 4.289231
	.quad	0x402252c929aa1d75              # double 9.1616909999999994
	.quad	0x3fe7cb05b7cfe586              # double 0.743533
	.quad	0x4003bf5c6c11a112              # double 2.4684379999999999
	.quad	0x4015e5885d31337f              # double 5.4741530000000003
	.quad	0x4023f1068986fcdf              # double 9.9707530000000001
	.quad	0x402238856e696a27              # double 9.1103930000000002
	.quad	0x3fe8cbf8fcd67fd4              # double 0.774899
	.quad	0x3ff9c9ea9a3d2d88              # double 1.611796
	.quad	0x401d6b71b8aa0019              # double 7.3549259999999999
	.quad	0x401580afa2f05a71              # double 5.3756700000000004
	.quad	0x4019572ead9274e2              # double 6.3351389999999999
	.quad	0x40060d7b634dad32              # double 2.756583
	.quad	0x3ff8b9c4113c6866              # double 1.545353
	.quad	0x4017ba61e0c5a815              # double 5.9320139999999997
	.quad	0x4021adfa22706d50              # double 8.8397989999999993
	.quad	0x4010f143393ab431              # double 4.235608
	.quad	0x40142df1e0828c37              # double 5.0448680000000001
	.quad	0x401e2fe974a3400c              # double 7.5467890000000004
	.quad	0x400cbea9a3d2d880              # double 3.5930970000000002
	.quad	0x400fd67125dd095b              # double 3.979708
	.quad	0x40061a5093964a5a              # double 2.7628490000000001
	.quad	0x401c6805a2d72ffd              # double 7.1015839999999999
	.quad	0x4011e09fe86833c6              # double 4.46936
	.quad	0x3fe427b0b3919264              # double 0.62984499999999999
	.quad	0x402355f3519bd406              # double 9.6678719999999991
	.quad	0x4021a6b1c432ca58              # double 8.8255750000000006
	.quad	0x3ffaf1cc96462802              # double 1.6840329999999999
	.quad	0x4005c4189374bc6a              # double 2.7207499999999998
	.quad	0x40183651f3e89a89              # double 6.0530470000000003
	.quad	0x4022cc17ca2120e2              # double 9.3986190000000001
	.quad	0x401416223e186983              # double 5.0216149999999997
	.quad	0x401c2b474107314d              # double 7.0422640000000003
	.quad	0x402151e5e2478855              # double 8.6599570000000003
	.quad	0x40169b9c304ccee6              # double 5.6519630000000003
	.quad	0x40092267839cd812              # double 3.1417989999999998
	.quad	0x402240815e39713b              # double 9.1259870000000003
	.quad	0x40180c19c17225b7              # double 6.0118169999999997
	.quad	0x3fe5dbc01a36e2eb              # double 0.68307499999999999
	.quad	0x40130e50c5eb313c              # double 4.7639800000000001
	.quad	0x400a7db877ab3248              # double 3.3113869999999999
	.quad	0x402162398201cd60              # double 8.6918450000000007
	.quad	0x40069b76b3bb83cf              # double 2.8259099999999999
	.quad	0x3ff3847f562174c5              # double 1.219848
	.quad	0x401abaa5c5f7c676              # double 6.6822730000000004
	.quad	0x4023aa41a261bf38              # double 9.8325320000000004
	.quad	0x4010f2ccb3a2595c              # double 4.2371090000000002
	.quad	0x40024896dd26b724              # double 2.285444
	.quad	0x4023f087229e9079              # double 9.9697809999999993
	.quad	0x4019ae4473cd5736              # double 6.4201829999999998
	.quad	0x400fa6601bc98a22              # double 3.9562379999999999
	.quad	0x4015283f4eca686e              # double 5.2893039999999996
	.quad	0x3ff838305d95dd4c              # double 1.5137179999999999
	.quad	0x40042d3cff64cf8d              # double 2.5220889999999998
	.quad	0x401f12be8bc169c2              # double 7.7683049999999998
	.quad	0x400d0c7c957cd467              # double 3.631097
	.quad	0x401059ff4fd6d7e9              # double 4.0878880000000004
	.quad	0x3fe055b035bd512f              # double 0.51046000000000002
	.quad	0x3ffe3fcfc3f811f5              # double 1.890579
	.quad	0x40103d9e40c8472c              # double 4.0601739999999999
	.quad	0x3fe9273b42cc2d6b              # double 0.78603900000000004
	.quad	0x400a7b677f6b1a2a              # double 3.3102559999999999
	.quad	0x401761c9f72f76e6              # double 5.8454969999999999
	.quad	0x4015815ca6ca03c5              # double 5.3763300000000003
	.quad	0x3fe8b9f559b3d07d              # double 0.77270000000000005
	.quad	0x40228591eeaa6d26              # double 9.2608789999999992
	.quad	0x4021400a7c5ac472              # double 8.6250800000000005
	.quad	0x3fe879c62a1b5c7d              # double 0.76486500000000002
	.quad	0x40199c896dd26b72              # double 6.4028679999999998
	.quad	0x3fce9adc8fb86f48              # double 0.23910100000000001
	.quad	0x3fcb15e7c8d19589              # double 0.21160599999999999
	.quad	0x40199caa326e1156              # double 6.4029930000000004
	.quad	0x4018a67ec7863bef              # double 6.1625930000000002
	.quad	0x3ff3151a437824d5              # double 1.192652
	.quad	0x4012533b5393250b              # double 4.5812809999999997
	.quad	0x401c93e3193f6c27              # double 7.1444210000000004
	.quad	0x3fffe63d816aceab              # double 1.993711
	.quad	0x4011e2aa5c5f7c67              # double 4.4713529999999997
	.quad	0x3ff466eeb702602d              # double 1.2751300000000001
	.quad	0x3ff566e32e3821af              # double 1.3376189999999999
	.quad	0x40175c7ffde7210c              # double 5.8403320000000001
	.quad	0x401238012dfd694d              # double 4.5546920000000002
	.quad	0x3fe35a3c21187e7c              # double 0.604765
	.quad	0x4015ee718a86d71f              # double 5.4828549999999998
	.quad	0x4013b11dbca9691a              # double 4.9229649999999996
	.quad	0x3ff967c5ac471b48              # double 1.5878350000000001
	.quad	0x3ff7c804102ff8ec              # double 1.486332
	.quad	0x3fc44af0bf1a5ca3              # double 0.15853700000000001
	.quad	0x4021223c42a66dbd              # double 8.5668659999999992
	.quad	0x3ff0504e618ce2d2              # double 1.019606
	.quad	0x4021d64712e40853              # double 8.9185110000000005
	.quad	0x400514dad31fcd25              # double 2.6351830000000001
	.quad	0x400b7b530ced4e4d              # double 3.4352170000000002
	.quad	0x402376e8d10f51ad              # double 9.7322450000000007
	.quad	0x4007cf5fd47bedb7              # double 2.9762569999999999
	.quad	0x4011a2c9081c2e34              # double 4.4089700000000001
	.quad	0x4006786d2ed783e0              # double 2.808802
	.quad	0x40213f7878b7a1c2              # double 8.6239659999999994
	.quad	0x4013ce02ea960b70              # double 4.9511830000000003
	.quad	0x4000e4ac6cdaf4ae              # double 2.1116570000000001
	.quad	0x401662a66dbd72bd              # double 5.5963380000000003
	.quad	0x4011cc4ac6cdaf4b              # double 4.4495040000000001
	.quad	0x40114b1fab96f21f              # double 4.3233629999999996
	.quad	0x4017b394b7b28955              # double 5.9253720000000003
	.quad	0x400f06e6d9be4cd7              # double 3.8783699999999999
	.quad	0x402282b7fe08aefb              # double 9.2553099999999997
	.quad	0x40175d5454152b0a              # double 5.8411419999999996
	.quad	0x401fb9f666234a88              # double 7.931604
	.quad	0x4009783f91e646f1              # double 3.1837149999999999
	.quad	0x40221e1b8ed1bf7b              # double 9.0588040000000003
	.quad	0x3fd0b6672fba01ef              # double 0.261133
	.quad	0x4011acde19fc2a88              # double 4.4188159999999996
	.quad	0x400ffb2a27f1b691              # double 3.9976389999999999
	.quad	0x400ea3400b88ca3e              # double 3.8297119999999998
	.quad	0x4006f2ef0ae53650              # double 2.8686199999999999
	.quad	0x401b9792d1287c20              # double 6.898021
	.quad	0x40208827b6fe2e6f              # double 8.2659280000000006
	.quad	0x4002670d1fa33376              # double 2.3003179999999999
	.quad	0x4007ff676ea4228a              # double 2.9997090000000002
	.quad	0x401ae52fc2656abe              # double 6.7238150000000001
	.quad	0x40217c4f5d35653d              # double 8.7427930000000007
	.quad	0x402132046c764ae0              # double 8.5976900000000001
	.quad	0x3fbfd20f2becedd5              # double 0.12429900000000001
	.quad	0x401be76bc1eff9f8              # double 6.9759969999999996
	.quad	0x401788cfbfc6540d              # double 5.8836050000000002
	.quad	0x402344873365881a              # double 9.6338439999999999
	.quad	0x4012b8a3b57c4e2f              # double 4.6803119999999998
	.quad	0x40197df9bdc69f8c              # double 6.3730229999999999
	.quad	0x3ff36931876188b1              # double 1.213182
	.quad	0x401a155432873bc9              # double 6.520829
	.quad	0x3ffd77f498c3b0c4              # double 1.8417859999999999
	.quad	0x401b228bb0a2ca9b              # double 6.7837360000000002
	.quad	0x401218f9b13165d4              # double 4.5243900000000004
	.quad	0x4019f89656eefa1e              # double 6.4927609999999998
	.quad	0x401fec408d8ec95c              # double 7.980715
	.quad	0x4001e53005814941              # double 2.2369080000000001
	.quad	0x3ff390b630a91538              # double 1.2228300000000001
	.quad	0x401f0c28b2a6b0d9              # double 7.7618739999999997
	.quad	0x40094d87724fa8b5              # double 3.1628560000000001
	.quad	0x3fed4bf2b239a390              # double 0.91552100000000003
	.quad	0x4004792fb19e731d              # double 2.5591729999999999
	.quad	0x3ff155193708aac9              # double 1.0832759999999999
	.quad	0x401e5d9620685554              # double 7.5913930000000001
	.quad	0x3fe217e34b945309              # double 0.56541600000000003
	.quad	0x4020e7cc9ea9a3d3              # double 8.4527330000000003
	.quad	0x402268c8259e1f3a              # double 9.2046519999999994
	.quad	0x40179df9bdc69f8c              # double 5.9042729999999999
	.quad	0x3fe989c5e6ff7dfa              # double 0.798068
	.quad	0x40223ad362e90364              # double 9.1148939999999996
	.quad	0x401403c64345cfee              # double 5.0036860000000001
	.quad	0x40202d5821294574              # double 8.0885630000000006
	.quad	0x401a0865d7cb2d90              # double 6.5082009999999997
	.quad	0x3ffc4b524399b2c4              # double 1.768389
	.quad	0x400733e920c069e8              # double 2.900347
	.quad	0x3fbe0008637bd05b              # double 0.117188
	.quad	0x3ff33da9435ac8a3              # double 1.2025539999999999
	.quad	0x3fe424399b2c40d1              # double 0.62942200000000004
	.quad	0x40207ee73e681a9c              # double 8.2478580000000007
	.quad	0x401ab2480e8c8abd              # double 6.6741029999999997
	.quad	0x4000eeb8950763a2              # double 2.1165630000000002
	.quad	0x400bc5f633ce63a6              # double 3.4716610000000001
	.quad	0x401c08ba83f4eca7              # double 7.0085240000000004
	.quad	0x401301426fe718a8              # double 4.7512299999999996
	.quad	0x40235a0d349be8ff              # double 9.6758819999999996
	.quad	0x40132f5e41d4b6a6              # double 4.7962579999999999
	.quad	0x4010976a2f48c2e7              # double 4.1478659999999996
	.quad	0x401f3d7c6fbd273d              # double 7.8100449999999996
	.quad	0x4020c265cf67b1c0              # double 8.379683
	.quad	0x401bee414e7ee914              # double 6.9826709999999999
	.quad	0x400bb59ccfaeff5c              # double 3.4636779999999998
	.quad	0x3fe8e3864cb5bb38              # double 0.77777399999999997
	.quad	0x400720232096787d              # double 2.890692
	.quad	0x3fda4db9c7368ad7              # double 0.41099400000000003
	.quad	0x4004237b4a2339c1              # double 2.517325
	.quad	0x3ff982a9930be0df              # double 1.5944
	.quad	0x4002399780baa583              # double 2.2781210000000001
	.quad	0x400d1b899392189c              # double 3.6384460000000001
	.quad	0x400bfd1a21ea3593              # double 3.4985849999999998
	.quad	0x3fe58956c0d6f545              # double 0.67301500000000003
	.quad	0x3fe43a647fdc5932              # double 0.63212800000000002
	.quad	0x402279633482be8c              # double 9.2370850000000004
	.quad	0x4022c7ef9db22d0e              # double 9.3904999999999994
	.quad	0x402220305d95dd4c              # double 9.0628689999999991
	.quad	0x400e0d2ed783dff4              # double 3.756437
	.quad	0x401c3bdba0a52696              # double 7.0584550000000004
	.quad	0x4000b1f36262cba7              # double 2.0868899999999999
	.quad	0x4012c6034f3fd934              # double 4.6933720000000001
	.quad	0x400c1295e9e1b08a              # double 3.5090750000000002
	.quad	0x3ffead4a1ad6451c              # double 1.9173070000000001
	.quad	0x4006f6d0917d6b66              # double 2.8705150000000001
	.quad	0x401a6c0e7bc3c5bd              # double 6.605524
	.quad	0x401252ba5a038195              # double 4.5807890000000002
	.quad	0x401eb530489d27c4              # double 7.6769420000000004
	.quad	0x40164c970f7b9e06              # double 5.5747949999999999
	.quad	0x4010ee94ee392e1f              # double 4.23299
	.quad	0x4021a54ac29bf163              # double 8.8228360000000006
	.quad	0x401bfcbbc2b94d94              # double 6.99681
	.quad	0x4011ed249e44fa05              # double 4.4815849999999999
	.quad	0x400d42cc2d6a9c56              # double 3.657616
	.quad	0x401f16798958d9b6              # double 7.7719480000000001
	.quad	0x4020f15054ac29bf              # double 8.4713159999999998
	.quad	0x4021d3d5347a5b10              # double 8.9137360000000001
	.quad	0x401094a771c970f8              # double 4.1451700000000002
	.quad	0x401bae6c4c5974e6              # double 6.9203349999999997
	.quad	0x3fff80b34e768598              # double 1.9689209999999999
	.quad	0x401d68e219652bd4              # double 7.3524250000000002
	.quad	0x40018f640639d5e5              # double 2.1950150000000002
	.quad	0x40206f1e8e608073              # double 8.2170299999999994
	.quad	0x402212187a4a48f9              # double 9.0353429999999992
	.quad	0x3ffcccc037931444              # double 1.7999879999999999
	.quad	0x3ffe7ade225fa659              # double 1.9049970000000001
	.quad	0x3ff6547064ece9a3              # double 1.395615
	.quad	0x4001e41700cd8559              # double 2.2363719999999998
	.quad	0x3fcad3f1843c3a43              # double 0.209593
	.quad	0x400d6cbd987c6328              # double 3.678096
	.quad	0x4016e7fd3f5b5fa2              # double 5.7265519999999999
	.quad	0x400b9ad5bee3d5fe              # double 3.4506030000000001
	.quad	0x401f57daa4fca42b              # double 7.835795
	.quad	0x3fff60d887ebf22c              # double 1.961144
	.quad	0x4003674107314ca9              # double 2.4254169999999999
	.quad	0x400498183f91e647              # double 2.574265
	.quad	0x402357aaef2c7326              # double 9.6712260000000008
	.quad	0x3fcdfb480a5accd5              # double 0.23423099999999999
	.quad	0x4004578ab0c88a48              # double 2.542745
	.quad	0x40028641b328b6d8              # double 2.3155549999999998
	.quad	0x4023dd1d041cc533              # double 9.9318620000000006
	.quad	0x3ff969db65ecc3e3              # double 1.588344
	.quad	0x3feb91dbca9691a7              # double 0.86155499999999996
	.quad	0x40211e82730c6717              # double 8.5595890000000008
	.quad	0x4021ba9bcfd4bf0a              # double 8.8644700000000007
	.quad	0x401101697f1f9ad0              # double 4.251379
	.quad	0x3ffd4811b1d92b80              # double 1.830095
	.quad	0x4005df1f9acffa7f              # double 2.7339470000000001
	.quad	0x3fc9968512231833              # double 0.199906
	.quad	0x4006df0e4da09cc3              # double 2.858914
	.quad	0x40122bd2b6f19935              # double 4.5427960000000001
	.quad	0x4020f9dabe27179c              # double 8.487997
	.quad	0x401be885d31337eb              # double 6.9770729999999999
	.quad	0x401410c4dec1c1d7              # double 5.0163760000000002
	.quad	0x4001ae1f7d73c925              # double 2.2100209999999998
	.quad	0x3fc2daf4adbc664d              # double 0.14730699999999999
	.quad	0x4015e2fb5d031056              # double 5.4716620000000002
	.quad	0x4013cbf444e0daa1              # double 4.9491740000000002
	.quad	0x40209ee6fb4c3c19              # double 8.3103560000000005
	.quad	0x40174f49491f2dc3              # double 5.8274280000000003
	.quad	0x401bb8e4b87bdcf0              # double 6.9305599999999998
	.quad	0x3fd8434e3369b9d8              # double 0.379108
	.quad	0x40011b994e1a3f46              # double 2.1384759999999998
	.quad	0x3ffc2eff5c6c11a1              # double 1.761474
	.quad	0x401a3c8eef1bac2e              # double 6.5591390000000001
	.quad	0x400696cf850df15a              # double 2.8236379999999999
	.quad	0x400ad2157689ca19              # double 3.3525800000000001
	.quad	0x401b50b28522ea10              # double 6.8288060000000002
	.quad	0x4010a341e14bdfd2              # double 4.1594309999999997
	.quad	0x4020ddb63d3e4ef0              # double 8.4330309999999997
	.quad	0x400efec02f2f9874              # double 3.87439
	.quad	0x40034b6ae7d566cf              # double 2.4118249999999999
	.quad	0x4023a140789613d3              # double 9.8149449999999998
	.quad	0x402112eb3dd11be7              # double 8.5369510000000002
	.quad	0x401d4fe43675ddd3              # double 7.3280190000000003
	.quad	0x400d582c2bd7f51f              # double 3.668053
	.quad	0x402308ce4ead0c3d              # double 9.5171989999999997
	.quad	0x3fd20ea5b530ced5              # double 0.28214400000000001
	.quad	0x3fe1da187a4a48f9              # double 0.55787299999999995
	.quad	0x401d4e2f7b17ce53              # double 7.3263530000000001
	.quad	0x3fde138fffbce421              # double 0.46994399999999997
	.quad	0x401d98882f0e0a85              # double 7.3989570000000002
	.quad	0x401289ae924f227d              # double 4.634455
	.quad	0x401ea847f562174c              # double 7.6643369999999997
	.quad	0x4016fe66cb10342b              # double 5.7484390000000003
	.quad	0x402269800a7c5ac4              # double 9.2060549999999992
	.quad	0x40142a8c154c985f              # double 5.04155
	.quad	0x40091145d851654d              # double 3.1334339999999998
	.quad	0x3ff1de33269df97b              # double 1.1167480000000001
	.quad	0x4011e20a30db6a1f              # double 4.4707420000000004
	.quad	0x40153bef06b37868              # double 5.3085290000000001
	.quad	0x40238178f68be2f8              # double 9.7528760000000005
	.quad	0x401cd1148fd9fd37              # double 7.20418
	.quad	0x400f41eeed8904f7              # double 3.9071940000000001
	.quad	0x40135bd05af6c69b              # double 4.8396619999999997
	.quad	0x3ff167d028a1dfb9              # double 1.087845
	.quad	0x4018567dbb16c1e3              # double 6.0844639999999997
	.quad	0x402016a2b1704ff4              # double 8.0442099999999996
	.quad	0x400d7648c7192ea5              # double 3.6827559999999999
	.quad	0x4020d1335d249e45              # double 8.408595
	.quad	0x401b55e6362a5e78              # double 6.8338859999999997
	.quad	0x402126f3b213e3e3              # double 8.5760780000000008
	.quad	0x401ca3a8e71476b0              # double 7.1598240000000004
	.quad	0x3ffcde71044f1a1a              # double 1.8043070000000001
	.quad	0x401fb4766c6de764              # double 7.9262329999999999
	.quad	0x3ffb64d099e0e736              # double 1.712113
	.quad	0x400febbfd71b0468              # double 3.9901119999999999
	.quad	0x40157162f166e009              # double 5.3607290000000001
	.quad	0x3fe9e3a190082060              # double 0.809037
	.quad	0x3fe8e644d87724fb              # double 0.77810900000000005
	.quad	0x4004194c01605250              # double 2.5123519999999999
	.quad	0x4017f3519bd4067d              # double 5.987616
	.quad	0x400ecf75536933a0              # double 3.8512979999999999
	.quad	0x4011a2d27807789a              # double 4.4090059999999998
	.quad	0x3ffe8751ce28ed5f              # double 1.908037
	.quad	0x4000c27525460aa6              # double 2.0949499999999999
	.quad	0x4021fecd8dbcec85              # double 8.997662
	.quad	0x3fd167be553ac4f8              # double 0.271957
	.quad	0x402153a3a8e71477              # double 8.6633580000000006
	.quad	0x400e8d6909aed56b              # double 3.819048
	.quad	0x3fe4633acd5b6806              # double 0.63711300000000004
	.quad	0x401e8a5482385404              # double 7.6350879999999997
	.quad	0x4021d3ae2541d8e8              # double 8.9134379999999993
	.quad	0x40066f3a9b068124              # double 2.8043110000000002
	.quad	0x40130e2b063e07a3              # double 4.7638360000000004
	.quad	0x4021726bd6e8af81              # double 8.7234789999999993
	.quad	0x3ff75aa92e62131b              # double 1.4596340000000001
	.quad	0x400cf79a6b50b0f2              # double 3.6208999999999998
	.quad	0x3fe72f709b738e6d              # double 0.72454099999999999
	.quad	0x3fffbfd0d0678c00              # double 1.9843299999999999
	.quad	0x3ff57f077ccc0379              # double 1.343513
	.quad	0x40220f2239e6ab9b              # double 9.0295579999999998
	.quad	0x40086a0902de00d2              # double 3.0517750000000001
	.quad	0x3fedd186db50f40e              # double 0.93182699999999996
	.quad	0x40182e9fadafd114              # double 6.0455310000000004
	.quad	0x4009a1c79b34a44c              # double 3.2039939999999998
	.quad	0x4010fac8605681ed              # double 4.2449050000000002
	.quad	0x40149e85fd04a2fd              # double 5.1548080000000001
	.quad	0x4015da5a469d7343              # double 5.4632350000000001
	.quad	0x40234b1d92b7fe09              # double 9.6467100000000005
	.quad	0x40202049ecb31c22              # double 8.0630640000000007
	.quad	0x401e159578a2a90d              # double 7.5210780000000001
	.quad	0x3fe092f6e82949a5              # double 0.51793999999999996
	.quad	0x401d2fdef8487b9a              # double 7.2967490000000002
	.quad	0x40226254a3c64346              # double 9.1920520000000003
	.quad	0x3fff5550ca1cef24              # double 1.958329
	.quad	0x401ca611ba3ca750              # double 7.1621769999999998
	.quad	0x401b806b7aa25d8d              # double 6.8754099999999996
	.quad	0x40238073ffac1d2a              # double 9.7508850000000002
	.quad	0x3fe40f3a9b068124              # double 0.62685900000000006
	.quad	0x3fd09691a75cd0bb              # double 0.25918999999999998
	.quad	0x3fe071cb89d6adf7              # double 0.51389099999999999
	.quad	0x402229fff79c8430              # double 9.0820310000000006
	.quad	0x4015534117f8444a              # double 5.3313030000000001
	.quad	0x3ff101a47a9e2bd0              # double 1.0629010000000001
	.quad	0x3fe800a5accd5305              # double 0.75007900000000005
	.quad	0x4022ee3de6149c6f              # double 9.4653159999999996
	.quad	0x3fffd320d9945b6c              # double 1.989045
	.quad	0x40003f43419e3001              # double 2.0308899999999999
	.quad	0x401e64cb5bb384fd              # double 7.5984319999999998
	.quad	0x400c759e6256366d              # double 3.5574309999999998
	.quad	0x401c49bbf0dc768e              # double 7.072006
	.quad	0x4022408ede54b48d              # double 9.1260899999999996
	.quad	0x40054029f16b11c7              # double 2.6563300000000001
	.quad	0x4020781d3aa369fd              # double 8.2345980000000001
	.quad	0x40026c197e564734              # double 2.3027829999999998
	.quad	0x401c033b5393250b              # double 7.0031559999999997
	.quad	0x3fec9c2e33eff195              # double 0.894065
	.quad	0x401b9c77574f722e              # double 6.9027989999999999
	.quad	0x40227c929aa1d756              # double 9.2433060000000005
	.quad	0x4023464755ffe6d6              # double 9.6372630000000008
	.quad	0x4022d04b3c3e74b0              # double 9.4068240000000003
	.quad	0x3ff9310a99b6f5cb              # double 1.574473
	.quad	0x4021012e83a109d0              # double 8.5023079999999993
	.quad	0x3ffc48323358f2e0              # double 1.7676259999999999
	.quad	0x401d5a90470a808d              # double 7.3384410000000004
	.quad	0x401083443d46b26c              # double 4.12819
	.quad	0x4023eb60d0247022              # double 9.9597230000000003
	.quad	0x401389de8b3b3205              # double 4.8846379999999998
	.quad	0x4020f030a0b1bbcf              # double 8.4691209999999995
	.quad	0x401f42b4528283d3              # double 7.8151409999999996
	.quad	0x400c6c144028e4fc              # double 3.5527730000000002
	.quad	0x3fd593ccd0fe8ab5              # double 0.337146
	.quad	0x401027789a459104              # double 4.0385460000000002
	.quad	0x400533c148344c38              # double 2.650271
	.quad	0x3fc24fe36d22424a              # double 0.143063
	.quad	0x4021995f2452c5a0              # double 8.7995540000000005
	.quad	0x401a94e1a3f4666f              # double 6.6453920000000002
	.quad	0x4017bba9d1f60179              # double 5.9332649999999996
	.quad	0x4021d846e8f29d41              # double 8.9224160000000001
	.quad	0x400cddc50ce4ead1              # double 3.6082860000000001
	.quad	0x4011e74299d883ba              # double 4.4758399999999998
	.quad	0x402211b4784230fd              # double 9.0345800000000001
	.quad	0x4015d930be0ded29              # double 5.4621000000000004
	.quad	0x401828b652370479              # double 6.039758
	.quad	0x40206b28f9f44d44              # double 8.2092969999999994
	.quad	0x40129f240fa9c12f              # double 4.655411
	.quad	0x3faa59e1f3a57eaa              # double 0.051466999999999999
	.quad	0x401ec842b734b513              # double 7.6955669999999996
	.quad	0x4019608ede54b48d              # double 6.3442949999999998
	.quad	0x4022c4898f605ab4              # double 9.3838620000000005
	.quad	0x401348f53c579f23              # double 4.8212479999999998
	.quad	0x4015a98d477bbf94              # double 5.415578
	.quad	0x4012d835dedf1e08              # double 4.7111429999999999
	.quad	0x40222cf2ae07e5a8              # double 9.0877890000000008
	.quad	0x401c10114d2f5dbc              # double 7.0156910000000003
	.quad	0x40198932d6ece13f              # double 6.3839829999999997
	.quad	0x3ff409906cca2db6              # double 1.252335
	.quad	0x401246fc58ab92c0              # double 4.5693219999999997
	.quad	0x3ff1fddca4b124d1              # double 1.1244780000000001
	.quad	0x3ff782ba5a038195              # double 1.4694160000000001
	.quad	0x4021f41615ebfa8f              # double 8.9767309999999991
	.quad	0x4023a5d18090b418              # double 9.8238640000000003
	.quad	0x3ff9389a459103c9              # double 1.576319
	.quad	0x3fee9357603925bb              # double 0.95548599999999995
	.quad	0x401cd8882f0e0a85              # double 7.2114570000000002
	.quad	0x3fdc4f8726d04e62              # double 0.44235400000000002
	.quad	0x401b2d02cd39da16              # double 6.7939559999999997
	.quad	0x3fe361bd1ed9dfdb              # double 0.60568100000000002
	.quad	0x401a35dedf1e0829              # double 6.5526080000000002
	.quad	0x401a89c779a6b50b              # double 6.6345499999999999
	.quad	0x40235e86c6583e85              # double 9.6846219999999991
	.quad	0x401eee093532e7b4              # double 7.7324570000000001
	.quad	0x401c7bacf7446f9c              # double 7.1207770000000004
	.quad	0x400de642bf9830e4              # double 3.7374320000000001
	.quad	0x4020eac0c62e4d1a              # double 8.4585019999999993
	.quad	0x4021d685553ef6b6              # double 8.9189860000000003
	.quad	0x40224116659d12cb              # double 9.1271240000000002
	.quad	0x40162b242070b8d0              # double 5.5421300000000002
	.quad	0x401646cb10342aaa              # double 5.569134
	.quad	0x401bae32a0663c75              # double 6.920115
	.quad	0x3ffa4ffc9795b35b              # double 1.644528
	.quad	0x401d16ea854477ff              # double 7.2723789999999999
	.quad	0x3ff0a12a51e321a3              # double 1.039347
	.quad	0x40045ca3a4b5568f              # double 2.5452340000000002
	.quad	0x3ffd1ae3e6c4c597              # double 1.8190649999999999
	.quad	0x3fe8d245b291b824              # double 0.77566800000000002
	.quad	0x40003b3d07c84b5e              # double 2.0289250000000001
	.quad	0x400acf8f8a4c1ebd              # double 3.3513480000000002
	.quad	0x40161ebb7739f341              # double 5.5300120000000001
	.quad	0x40234d12231832fd              # double 9.6505290000000005
	.quad	0x4001112d3415b142              # double 2.1333869999999999
	.quad	0x4015a0d0aaa7ded7              # double 5.4070460000000002
	.quad	0x4017a405b39e279e              # double 5.9101780000000002
	.quad	0x401c852b0a6fc58b              # double 7.1300470000000002
	.quad	0x4016442784a9478d              # double 5.5665570000000004
	.quad	0x40227b24a6a875d5              # double 9.2405139999999992
	.quad	0x401bc509bf9c62a2              # double 6.9424200000000003
	.quad	0x4017d06dd69d3027              # double 5.9535439999999999
	.quad	0x3fc1903a7546d3fa              # double 0.137214
	.quad	0x400b42f405f6ba06              # double 3.4076919999999999
	.quad	0x401fbe9c886162f1              # double 7.9361439999999996
	.quad	0x3ff4b14ca925fe97              # double 1.2932859999999999
	.quad	0x401fb063e07a28bb              # double 7.9222559999999999
	.quad	0x3fe1d53ef6b5d463              # double 0.55728100000000003
	.quad	0x3fe53254e6e221c9              # double 0.66239400000000004
	.quad	0x3ff847d6f9767903              # double 1.517539
	.quad	0x40217d985ad538ac              # double 8.7453029999999998
	.quad	0x401a9f3300de4c51              # double 6.6554679999999999
	.quad	0x40147e8427418d69              # double 5.123551
	.quad	0x4023f8997c3d6840              # double 9.9855459999999993
	.quad	0x4021ea5c810a569b              # double 8.9577369999999998
	.quad	0x400dd463cfb3311a              # double 3.7287059999999999
	.quad	0x4022c1c38b04ab60              # double 9.3784449999999993
	.quad	0x3fe9cea8da7f3cf7              # double 0.806477
	.quad	0x3fe3a2f6a50d6b23              # double 0.61364300000000005
	.quad	0x40094acd9e83e426              # double 3.1615250000000001
	.quad	0x3fd4b645a1cac083              # double 0.323625
	.quad	0x40038d58c8eef1bb              # double 2.4440170000000001
	.quad	0x3fef012be48a58b4              # double 0.968893
	.quad	0x4023a0bef8ceb357              # double 9.8139570000000002
	.quad	0x4010ee6f2e8c0486              # double 4.2328460000000003
	.quad	0x4005fe8709741d08              # double 2.7492809999999999
	.quad	0x4022c13cee9dd7ed              # double 9.3774180000000004
	.quad	0x4012e3365881a155              # double 4.7218869999999997
	.quad	0x4020b2e5de15ca6d              # double 8.3494100000000007
	.quad	0x40226c2ca148ba84              # double 9.211278
	.quad	0x3ff1248d7e02645e              # double 1.0714239999999999
	.quad	0x401b7e6601bc98a2              # double 6.8734359999999999
	.quad	0x4020fbaf533f4235              # double 8.4915719999999997
	.quad	0x3fe6e052502eec7d              # double 0.71488300000000005
	.quad	0x3fcc8b4395810625              # double 0.223
	.quad	0x40179085b18548aa              # double 5.8911350000000002
	.quad	0x3ff3306705c896dd              # double 1.199317
	.quad	0x401c7d3e0bd44999              # double 7.1223070000000002
	.quad	0x4011e86db50f40e6              # double 4.4769810000000003
	.quad	0x4014c3126e978d50              # double 5.1905000000000001
	.quad	0x3fdf1df3300de4c5              # double 0.486203
	.quad	0x40167b51bd61f5be              # double 5.6204289999999997
	.quad	0x4013f76cce5f7404              # double 4.9916260000000001
	.quad	0x400b96a50d6b228e              # double 3.4485570000000001
	.quad	0x400edc1df3300de5              # double 3.8574790000000001
	.quad	0x4010a68f8e7ddca5              # double 4.1626570000000003
	.quad	0x4010bf82f5126634              # double 4.1870229999999999
	.quad	0x40181f88765ba6f0              # double 6.0307940000000002
	.quad	0x3febc061847f5621              # double 0.86723399999999995
	.quad	0x4014a2edbb59ddc2              # double 5.1591100000000001
	.quad	0x3ff2a68d32830a0b              # double 1.165662
	.quad	0x4020b5c0fcb4f1e5              # double 8.3549880000000005
	.quad	0x400c0de43ed959a3              # double 3.506783
	.quad	0x4018826aec0724b7              # double 6.1273609999999996
	.quad	0x401a7784a9478c87              # double 6.6167170000000004
	.quad	0x401d65d91ab8e8ea              # double 7.3494609999999998
	.quad	0x402203524399b2c4              # double 9.0064869999999999
	.quad	0x401f6d2bb23571d2              # double 7.8566120000000002
	.quad	0x4000df23cc8de2ac              # double 2.1089549999999999
	.quad	0x4017944e93e1c9b4              # double 5.8948309999999999
	.quad	0x400968b220791c4c              # double 3.1761210000000002
	.quad	0x401970663c74fb55              # double 6.3597650000000003
	.quad	0x4011985b5b70691f              # double 4.3987860000000003
	.quad	0x4003db0574b40703              # double 2.4819439999999999
	.quad	0x40226e5de15ca6ca              # double 9.21556
	.quad	0x40112c03361565c3              # double 4.2929810000000002
	.quad	0x401ff1b71758e219              # double 7.9860499999999996
	.quad	0x400f2dcc20d5629e              # double 3.8973620000000002
	.quad	0x3fba49c2c1b10fd8              # double 0.102688
	.quad	0x3ffbe160d887ebf2              # double 1.742524
	.quad	0x4005ef1886df82b2              # double 2.741746
	.quad	0x4006211ec918e326              # double 2.7661720000000001
	.quad	0x3fc8a22b3892ee85              # double 0.19244900000000001
	.quad	0x401a35b89939218a              # double 6.5524620000000002
	.quad	0x401a42ba9d1f6018              # double 6.5651650000000004
	.quad	0x401fd3eb7cbb3c82              # double 7.9569530000000004
	.quad	0x40231eb26bf8769f              # double 9.5599550000000004
	.quad	0x401dab588e368f08              # double 7.4173299999999997
	.quad	0x4016c8e5c4eb56fc              # double 5.6961890000000004
	.quad	0x4022ad59d55e6bc6              # double 9.3385759999999998
	.quad	0x40127f455a7d2418              # double 4.624288
	.quad	0x3ff548f53c579f23              # double 1.3303119999999999
	.quad	0x40159b630a91537a              # double 5.401745
	.quad	0x4015572ffd1dcd70              # double 5.3351439999999997
	.quad	0x400d7a26a22b3893              # double 3.684644
	.quad	0x4023717dd00f776c              # double 9.7216629999999994
	.quad	0x3ffeae6b8305d95e              # double 1.917583
	.quad	0x3fe2a467be553ac5              # double 0.582569
	.quad	0x40200f3eab367a10              # double 8.0297750000000008
	.quad	0x40222d1e321a2e7f              # double 9.0881209999999992
	.quad	0x401d031876188b11              # double 7.2530229999999998
	.quad	0x401ff3b645a1cac1              # double 7.9880000000000004
	.quad	0x40183a17b0f6ad71              # double 6.0567310000000001
	.quad	0x4003592ea52ef912              # double 2.4185460000000001
	.quad	0x401726c58eeae9ee              # double 5.7878629999999998
	.quad	0x40008c1d29dc725c              # double 2.0684149999999999
	.quad	0x4020997481b21c47              # double 8.2997169999999993
	.quad	0x3ff4aac215b9a5a9              # double 1.2916890000000001
	.quad	0x401cf682f944241c              # double 7.2407339999999998
	.quad	0x400927f1b6912125              # double 3.144504
	.quad	0x4011a481f53825e1              # double 4.4106519999999998
	.quad	0x40035f8a0902de01              # double 2.4216500000000001
	.quad	0x400ad2999567dbb1              # double 3.3528319999999998
	.quad	0x40155bacb4289119              # double 5.3395260000000002
	.quad	0x4023b318dac258d6              # double 9.8497990000000009
	.quad	0x401377d06bbdbe3c              # double 4.8670059999999999
	.quad	0x4015c776c4827b70              # double 5.4447890000000001
	.quad	0x40173f75536933a0              # double 5.8119709999999998
	.quad	0x40239dfe974a3401              # double 9.8085830000000004
	.quad	0x400bc5f394b7b289              # double 3.4716559999999999
	.quad	0x4021bcece9a2c669              # double 8.868995
	.quad	0x3ff38b2d905c0336              # double 1.221479
	.quad	0x400a926394face68              # double 3.3214790000000001
	.quad	0x4023abec679cc74c              # double 9.8357880000000008
	.quad	0x400dc8ccdd93c46e              # double 3.7230470000000002
	.quad	0x3fffd53586ca89fc              # double 1.9895529999999999
	.quad	0x401927d0f1f57b42              # double 6.2888830000000002
	.quad	0x402161f2778140dd              # double 8.6913029999999996
	.quad	0x4017c5e6ff7dfa01              # double 5.9432640000000001
	.quad	0x40226e81a9b8cb8e              # double 9.2158329999999999
	.quad	0x3fecb6805a2d7300              # double 0.89727800000000002
	.quad	0x401f5727136a4010              # double 7.8351100000000002
	.quad	0x3fdee90bc7b45f18              # double 0.48297400000000001
	.quad	0x401ec5c358afc47e              # double 7.6931279999999997
	.quad	0x401ef0c8472c0e7c              # double 7.7351390000000002
	.quad	0x401ad93532e7b3d9              # double 6.7121170000000001
	.quad	0x40136db37c99ae92              # double 4.8571299999999997
	.quad	0x402088fba8826aa9              # double 8.2675450000000001
	.quad	0x40220fdcdf698783              # double 9.0309819999999998
	.quad	0x401c7c154c985f07              # double 7.121175
	.quad	0x4022aff1737542a2              # double 9.3436389999999996
	.quad	0x4020ed13b5bf6a0e              # double 8.4630410000000005
	.quad	0x4011b4b72c5197a2              # double 4.4264799999999997
	.quad	0x40238d460aa64c30              # double 9.7759250000000009
	.quad	0x4010868448cf7caa              # double 4.1313639999999996
	.quad	0x40088630ec311623              # double 3.0655230000000002
	.quad	0x4014d589acbc8c0d              # double 5.2085330000000001
	.quad	0x402080d38cda6e76              # double 8.251614
	.quad	0x4018a04c48adeebb              # double 6.1565409999999998
	.quad	0x40171880d801b435              # double 5.7739289999999999
	.quad	0x400e3ab8e8ea39c5              # double 3.7786729999999999
	.quad	0x4019c66a55087011              # double 6.443765
	.quad	0x3ff88ff64cf8d717              # double 1.535147
	.quad	0x3ffbe5ebb7739f34              # double 1.743633
	.quad	0x3fc6ce3de6149c6f              # double 0.17816899999999999
	.quad	0x401b78c2a454de7f              # double 6.8679300000000003
	.quad	0x401e21c8eabffcdb              # double 7.5329930000000002
	.quad	0x40215f9e3864cb5c              # double 8.6867540000000005
	.quad	0x4012e74213a0c6b5              # double 4.7258380000000004
	.quad	0x40015dc6195464dc              # double 2.1707879999999999
	.quad	0x4001b011904b3c3e              # double 2.2109709999999998
	.quad	0x401751351159c497              # double 5.8293039999999996
	.quad	0x3ff6774eebf65dc0              # double 1.404128
	.quad	0x402246f3d3a1d324              # double 9.138579
	.quad	0x4018fd6d7e889c1b              # double 6.2474879999999997
	.quad	0x4001b454152b0a70              # double 2.2130510000000001
	.quad	0x3fbc7d5ed06fef7c              # double 0.111288
	.quad	0x402340ec0f883340              # double 9.6268010000000003
	.quad	0x3fc92d7f950b955f              # double 0.19670099999999999
	.quad	0x4023473d9ec70004              # double 9.6391419999999996
	.quad	0x4005439d5e4a3832              # double 2.6580149999999998
	.quad	0x401bc784a9478c87              # double 6.9448420000000004
	.quad	0x3ff55e050374ff86              # double 1.3354539999999999
	.quad	0x401838a6117720c9              # double 6.0553210000000002
	.quad	0x3fd17a355043e532              # double 0.27308399999999999
	.quad	0x4017bd18090b417d              # double 5.9346620000000003
	.quad	0x40106a3400b88ca4              # double 4.1037140000000001
	.quad	0x3fb0a67620ee8d11              # double 0.065040000000000001
	.quad	0x3fdc3c46d82ba5a0              # double 0.44117899999999999
	.quad	0x401d9fb2edfe75bc              # double 7.4059559999999998
	.quad	0x401dc70c564f97ee              # double 7.4443830000000002
	.quad	0x3ff52d83c6c97d8d              # double 1.323612
	.quad	0x401518e3ef284168              # double 5.2743070000000003
	.quad	0x401ff22d5171e29b              # double 7.9865009999999996
	.quad	0x40225d69d30270f4              # double 9.1824480000000008
	.quad	0x402250deb0fadf2f              # double 9.1579490000000003
	.quad	0x40170e18ac9f2fdc              # double 5.7637660000000004
	.quad	0x3fe525072085b185              # double 0.66076999999999997
	.quad	0x4019f137f38c5437              # double 6.4855650000000002
	.quad	0x3ff8fb85e80bed74              # double 1.561407
	.quad	0x3fe31deefe4ffc98              # double 0.59740400000000005
	.quad	0x401f3586876e1deb              # double 7.8022710000000001
	.quad	0x402182fa0d77b7c8              # double 8.7558140000000009
	.quad	0x401d1756c93a7115              # double 7.2727919999999999
	.quad	0x4020ef6837f7be12              # double 8.4675919999999998
	.quad	0x401ffa57214f0521              # double 7.9944730000000001
	.quad	0x4022d04ff43419e3              # double 9.4068599999999999
	.quad	0x3ff88a697aeddce8              # double 1.533792
	.quad	0x400dd38476f2a5a4              # double 3.7282799999999998
	.quad	0x401b3c7f34938583              # double 6.8090789999999997
	.quad	0x401bfe963dc486ad              # double 6.9986199999999998
	.quad	0x4011bc7fbacb4289              # double 4.4340809999999999
	.quad	0x40019c8fb86f47b6              # double 2.2014459999999998
	.quad	0x40237f5e84f09529              # double 9.7487680000000001
	.quad	0x3ff5337110e453d2              # double 1.325059
	.quad	0x3ff378eb0318b934              # double 1.2170209999999999
	.quad	0x3fe467903211cb04              # double 0.63764200000000004
	.quad	0x4022940852b4d8ba              # double 9.2891259999999996
	.quad	0x40233960b6f9fcb1              # double 9.6120660000000004
	.quad	0x401fa72085b18549              # double 7.9132100000000002
	.quad	0x4006fb8fde2ef4e0              # double 2.872833
	.quad	0x4022ce770bd017db              # double 9.4032520000000001
	.quad	0x400d11348b220792              # double 3.6334010000000001
	.quad	0x402250dae3e6c4c6              # double 9.1579200000000007
	.quad	0x40015821294573a8              # double 2.1680320000000002
	.quad	0x401eee4e26d4801f              # double 7.7327199999999995
	.quad	0x4022282fb5d03105              # double 9.0784889999999994
	.quad	0x4022b4d855970b4a              # double 9.3532130000000002
	.quad	0x40222775b8130165              # double 9.0770700000000009
	.quad	0x4018c0ba6266fd65              # double 6.1882109999999999
	.quad	0x4006065e89225311              # double 2.7531099999999999
	.quad	0x3fee0c3b0c4588a0              # double 0.93899299999999996
	.quad	0x3ffbcde3b8a19c9d              # double 1.7377659999999999
	.quad	0x40221aa1f8e3ac0c              # double 9.0520169999999993
	.quad	0x401684b7f5a5332b              # double 5.6296080000000002
	.quad	0x40101a32f4491299              # double 4.0255850000000004
	.quad	0x402335b291b823c8              # double 9.6048779999999993
	.quad	0x401afdcb1465e892              # double 6.7478449999999999
	.quad	0x3ff5767c286f8ad2              # double 1.3414269999999999
	.quad	0x4012720791c4b902              # double 4.6113569999999999
	.quad	0x4012f4fd6d7e889c              # double 4.7392479999999999
	.quad	0x401d0e9c886162f1              # double 7.2642689999999996
	.quad	0x40190ecaab8a5ce6              # double 6.2644450000000003
	.quad	0x401ca5109070fbec              # double 7.1611960000000003
	.quad	0x401b9e503fb37436              # double 6.9046029999999998
	.quad	0x3ff6f6ff3ade2260              # double 1.4353020000000001
	.quad	0x3ff0a3d70a3d70a4              # double 1.04
	.quad	0x4011ea01abd1aa82              # double 4.4785219999999999
	.quad	0x4020d229a5ebb774              # double 8.4104740000000006
	.quad	0x4002b76577531db4              # double 2.3395489999999999
	.quad	0x40203ed22424a277              # double 8.1226970000000005
	.quad	0x400a7dde37585be2              # double 3.3114590000000002
	.quad	0x401359e40c8472c1              # double 4.8377840000000001
	.quad	0x3ff424e379b77c03              # double 1.2590060000000001
	.quad	0x401f6568a50507a7              # double 7.8490320000000002
	.quad	0x401ea9d909f1f14a              # double 7.6658670000000004
	.quad	0x4011d20d5629d841              # double 4.4551290000000003
	.quad	0x4014b38b8ae31d71              # double 5.1753369999999999
	.quad	0x3ff07182235b4edb              # double 1.027712
	.quad	0x4018e3fd0d0678c0              # double 6.222645
	.quad	0x400b0ff10ecb74de              # double 3.382784
	.quad	0x401a7ec204f2ae08              # double 6.6237870000000001
	.quad	0x40123d5992428d43              # double 4.5599119999999997
	.quad	0x401a017f4128bf3c              # double 6.5014620000000001
	.quad	0x40160d905c033615              # double 5.5132459999999996
	.quad	0x401a863e8dda48b6              # double 6.6310979999999997
	.quad	0x4013ba821f2990f3              # double 4.932137
	.quad	0x4011a19b90ea9e6f              # double 4.4078200000000001
	.quad	0x4017f054690de093              # double 5.9846969999999997
	.quad	0x401caea39c51dabe              # double 7.1705459999999999
	.quad	0x4002a4af922962d0              # double 2.3304130000000001
	.quad	0x402360c7c0f45176              # double 9.6890239999999999
	.quad	0x400b2cf8d716d2aa              # double 3.3969589999999998
	.quad	0x3fc860b2c83ec893              # double 0.19045100000000001
	.quad	0x401cd793dd97f62b              # double 7.2105249999999996
	.quad	0x3ff407f66e86c658              # double 1.2519439999999999
	.quad	0x401a918a009f6230              # double 6.6421279999999996
	.quad	0x4001bdccea28fe26              # double 2.217676
	.quad	0x4022c9a6d698fe69              # double 9.3938509999999997
	.quad	0x402029ea78af3e47              # double 8.0818670000000008
	.quad	0x401789e98dcdb37d              # double 5.8846800000000004
	.quad	0x3fe9ab1d4f9c1f86              # double 0.80213800000000002
	.quad	0x400625c5f7c6759b              # double 2.7684440000000001
	.quad	0x3fd385553ef6b5d4              # double 0.30501299999999998
	.quad	0x3fd794e5d5b24e9c              # double 0.36846299999999998
	.quad	0x4014b5e353f7ced9              # double 5.1776249999999999
	.quad	0x3fea854ef459d990              # double 0.82877299999999998
	.quad	0x40190d1f601797cc              # double 6.2628149999999998
	.quad	0x4012f6887a8d64d8              # double 4.7407550000000001
	.quad	0x3ffc011a11233df3              # double 1.7502690000000001
	.quad	0x4023de6cf41f212d              # double 9.9344249999999991
	.quad	0x4003ce39b456b442              # double 2.4756960000000001
	.quad	0x400694a66559f6ec              # double 2.8225829999999998
	.quad	0x400c398f1d3ed528              # double 3.528105
	.quad	0x4010b10129cbab65              # double 4.1728560000000003
	.quad	0x40218ae59af9ebea              # double 8.7712830000000004
	.quad	0x40023b480a5accd5              # double 2.2789459999999999
	.quad	0x3ff1c4a4095f2453              # double 1.1105080000000001
	.quad	0x400b0b630a91537a              # double 3.38056
	.quad	0x40200be7d135115a              # double 8.0232530000000004
	.quad	0x4012280e06530058              # double 4.5391159999999999
	.quad	0x3feefcdab191dde3              # double 0.96836599999999994
	.quad	0x4016a6394face67d              # double 5.6623279999999996
	.quad	0x4019081f10667f91              # double 6.2579310000000001
	.quad	0x401c39a847b24639              # double 7.0563060000000002
	.quad	0x4020230c026cc1ca              # double 8.0684509999999996
	.quad	0x4014ed0f6273929f              # double 5.2315040000000002
	.quad	0x40122b34e7685986              # double 4.5421940000000003
	.quad	0x402357bd48cb4aed              # double 9.6713660000000007
	.quad	0x3fe1ad72ffd1dcd7              # double 0.552423
	.quad	0x4016eba450acc0be              # double 5.7301190000000002
	.quad	0x40200c4c5974e65c              # double 8.0240200000000001
	.quad	0x4022f0a244630660              # double 9.4699880000000007
	.quad	0x40104368ad688377              # double 4.0658289999999999
	.quad	0x40203d004fb1183b              # double 8.1191429999999993
	.quad	0x4011d1e68a0d349c              # double 4.4549810000000001
	.quad	0x3ffd4fb00bcbe61d              # double 1.831955
	.quad	0x401808f041461b6d              # double 6.0087289999999998
	.quad	0x3fc8f33ca31e7d9a              # double 0.19492300000000001
	.quad	0x4022a6e1deacc921              # double 9.3259419999999995
	.quad	0x402242e31d712a0f              # double 9.1306390000000004
	.quad	0x3fff0aa00192a737              # double 1.940094
	.quad	0x4021f525edd05293              # double 8.9788049999999995
	.quad	0x400d8999567dbb17              # double 3.6921870000000001
	.quad	0x3ff3170d62bf11f9              # double 1.193128
	.quad	0x4022e044f1a1986c              # double 9.4380260000000006
	.quad	0x401e6a0902de00d2              # double 7.6035500000000003
	.quad	0x400fd5c6c11a1123              # double 3.9793829999999999
	.quad	0x401bb06c00da1a93              # double 6.9222869999999999
	.quad	0x400292cd7cf5f4e4              # double 2.3216809999999999
	.quad	0x3ff940b673c4f3ba              # double 1.5782989999999999
	.quad	0x4021f10624dd2f1b              # double 8.9707500000000007
	.quad	0x401b120c069e7fb2              # double 6.7676239999999996
	.quad	0x3fea30db6a1e81cb              # double 0.81846399999999997
	.quad	0x3ffc351ce28ed5f1              # double 1.762967
	.quad	0x401e1a294141e9af              # double 7.5255479999999996
	.quad	0x3ffbc814d72799a2              # double 1.736348
	.quad	0x400897e6f71a7e31              # double 3.0741710000000002
	.quad	0x3f7068986fcdee35              # double 0.004006
	.quad	0x4006e2fdfc19c172              # double 2.8608359999999999
	.quad	0x400d1f78359bc340              # double 3.6403660000000002
	.quad	0x40080d5e071c53f4              # double 3.0065270000000002
	.quad	0x40038a2a90cd423e              # double 2.4424640000000002
	.quad	0x3fca24cc6822ff09              # double 0.20424800000000001
	.quad	0x4001e467381d7dbf              # double 2.2365249999999999
	.quad	0x3fa56d19dece5711              # double 0.041848000000000003
	.quad	0x4022d94af4f0d845              # double 9.4244000000000003
	.quad	0x4018062413db7f17              # double 6.0059969999999998
	.quad	0x4021f4c61d8622c4              # double 8.9780739999999994
	.quad	0x4023e912dba4d6e4              # double 9.9552219999999991
	.quad	0x40208b32f01754b0              # double 8.2718729999999994
	.quad	0x4001889656eefa1e              # double 2.1916929999999999
	.quad	0x4004ec2938de6ddf              # double 2.615313
	.quad	0x3fe936694898f606              # double 0.78789200000000004
	.quad	0x3ffdede33269df98              # double 1.8705780000000001
	.quad	0x3fcdb18548a9bcfd              # double 0.23197999999999999
	.quad	0x4007d9de481f5382              # double 2.9813809999999998
	.quad	0x401325aaf78feef6              # double 4.7867850000000001
	.quad	0x4005bb0e5e679464              # double 2.7163360000000001
	.quad	0x40183c9d5a187a4a              # double 6.0591939999999997
	.quad	0x40227781626b2f23              # double 9.233409
	.quad	0x401fa76bc1eff9f8              # double 7.9134969999999995
	.quad	0x401333647baa9b4a              # double 4.8001880000000003
	.quad	0x4020ee4da09cc31a              # double 8.4654360000000004
	.quad	0x3fe4cf398e970718              # double 0.65029599999999999
	.quad	0x4000dea57214f052              # double 2.108714
	.quad	0x4018679cc74b838c              # double 6.1011839999999999
	.quad	0x3ff29f36262cba73              # double 1.16387
	.quad	0x3fd574927913e814              # double 0.33523999999999998
	.quad	0x400df5da272862f6              # double 3.7450450000000002
	.quad	0x3fcb7f737da61e0c              # double 0.21482699999999999
	.quad	0x4021ba5ca29845dd              # double 8.8639880000000009
	.quad	0x3fe7b343fa2ad3e9              # double 0.74063299999999999
	.quad	0x401e3ce2089e3433              # double 7.5594559999999999
	.quad	0x40237bcc07aaef2c              # double 9.7417909999999992
	.quad	0x4011cbe40420f6f1              # double 4.4491120000000004
	.quad	0x4003af112fd32c62              # double 2.4604819999999998
	.quad	0x401e22fb19e731d3              # double 7.5341610000000001
	.quad	0x40231e2bcf91a32b              # double 9.5589279999999998
	.quad	0x401788333fc86cec              # double 5.8830080000000002
	.quad	0x40218c8238540464              # double 8.7744309999999998
	.quad	0x3ff3a7418d6909af              # double 1.228334
	.quad	0x4022abc408d8ec96              # double 9.3354800000000004
	.quad	0x400b8c0379314446              # double 3.4433660000000001
	.quad	0x402030ef566490a3              # double 8.0955759999999994
	.quad	0x401e980841ede11a              # double 7.6484690000000004
	.quad	0x3fe981c92ddbdb5e              # double 0.79709300000000005
	.quad	0x3fc67d34df04ddb5              # double 0.17569599999999999
	.quad	0x401f7d83c6c97d8d              # double 7.872573
	.quad	0x40209fddca4b124d              # double 8.3122389999999999
	.quad	0x40207e3800218def              # double 8.2465209999999995
	.quad	0x401a168ec52a411c              # double 6.5220289999999999
	.quad	0x3fd6237cdcca70d2              # double 0.345916
	.quad	0x401318e68e3ef284              # double 4.7743169999999999
	.quad	0x401e9d18090b417d              # double 7.6534120000000003
	.quad	0x400f78793dd97f63              # double 3.9338250000000001
	.quad	0x400e389e774eebf6              # double 3.7776459999999998
	.quad	0x4023f1d9f4d37c13              # double 9.9723659999999991
	.quad	0x40200f43e963dc48              # double 8.0298149999999993
	.quad	0x401cc0e7bc3c5bd1              # double 7.1883840000000001
	.quad	0x400d429e0a41a262              # double 3.6575280000000001
	.quad	0x401b579314445aa3              # double 6.8355220000000001
	.quad	0x3fd7786c226809d5              # double 0.36672500000000002
	.quad	0x4022749491f2dc2b              # double 9.2276959999999999
	.quad	0x400bf345069a4df4              # double 3.4937839999999998
	.quad	0x4017a708aac96cc6              # double 5.913119
	.quad	0x3fe05c22ab25b318              # double 0.51124700000000001
	.quad	0x401fc18266772d5e              # double 7.938974
	.quad	0x3fe67060bb2bba99              # double 0.70121800000000001
	.quad	0x40116144028e4fb9              # double 4.3449859999999996
	.quad	0x40167fdda8bd230c              # double 5.6248690000000003
	.quad	0x3fdc8787485e3da3              # double 0.445772
	.quad	0x400f3b7a5f41aef7              # double 3.904042
	.quad	0x401fb834091c0874              # double 7.9298859999999998
	.quad	0x400d805681ecd4aa              # double 3.687665
	.quad	0x3ff8ed20296b3355              # double 1.5578920000000001
	.quad	0x3fcfe1b8ed1bf7ad              # double 0.24907599999999999
	.quad	0x400231afc04c8bca              # double 2.2742610000000001
	.quad	0x3ff1e76a7264a16a              # double 1.1189979999999999
	.quad	0x4017b68dfbd6a594              # double 5.9282760000000003
	.quad	0x40233e42e1262025              # double 9.6216039999999996
	.quad	0x3fcec061847f5621              # double 0.24024599999999999
	.quad	0x3ff4ebb1290257c9              # double 1.307542
	.quad	0x3fed98e53eb399f6              # double 0.92491400000000001
	.quad	0x40156d8409e55c10              # double 5.3569490000000002
	.quad	0x400eb305100a393f              # double 3.837412
	.quad	0x3fe21437c5692b3d              # double 0.56496800000000003
	.quad	0x401e67c80841ede1              # double 7.6013489999999999
	.quad	0x3ff17a46173b85e8              # double 1.092352
	.quad	0x401d11098d477bc0              # double 7.2666380000000004
	.quad	0x401497f0ed3d859d              # double 5.1483800000000004
	.quad	0x400cbf077ccc0379              # double 3.5932759999999999
	.quad	0x40090c061847f562              # double 3.130871
	.quad	0x401e349dbec2480f              # double 7.5513830000000004
	.quad	0x4005ca6d26740810              # double 2.7238410000000002
	.quad	0x3ffde7d1351159c5              # double 1.8690960000000001
	.quad	0x3ff39acde19fc2a9              # double 1.2252940000000001
	.quad	0x3ff5ea0ba1f4b1ee              # double 1.36964
	.quad	0x401dec2224edf612              # double 7.4805989999999998
	.quad	0x4018e536933a0408              # double 6.2238410000000002
	.quad	0x402103311a543f1c              # double 8.5062339999999991
	.quad	0x40158482be8bc16a              # double 5.3794050000000002
	.quad	0x4022df0ed3d859c9              # double 9.4356600000000003
	.quad	0x4012fdd4845132f8              # double 4.7478809999999996
	.quad	0x4021f09dcf893faf              # double 8.9699539999999995
	.quad	0x4022379f01b866e4              # double 9.1086349999999995
	.quad	0x401bf2ea0fd3b29a              # double 6.9872209999999999
	.quad	0x4020c45fbf83382e              # double 8.3835429999999995
	.quad	0x4023b500f776c482              # double 9.8535229999999991
	.quad	0x40146d04e618ce2d              # double 5.1064639999999999
	.quad	0x401e759d12cadddf              # double 7.6148569999999997
	.quad	0x40184e73e681a9b9              # double 6.0766140000000002
	.quad	0x3ff046876e1deacd              # double 1.0172190000000001
	.quad	0x4012a0fcf80dc337              # double 4.6572149999999999
	.quad	0x3fe1489b0ee49f51              # double 0.54011299999999995
	.quad	0x3fff4057082491b0              # double 1.9532080000000001
	.quad	0x401413bc4d22c882              # double 5.0192730000000001
	.quad	0x402217314ca925ff              # double 9.0452980000000007
	.quad	0x401a563fdd65a145              # double 6.5842280000000004
	.quad	0x40203a493c89f40a              # double 8.1138399999999997
	.quad	0x4023d36c3760bf5d              # double 9.9129349999999991
	.quad	0x40204dd8f92af9a9              # double 8.1520460000000003
	.quad	0x402069e0c5a8155d              # double 8.2067929999999993
	.quad	0x3fc857082491afc0              # double 0.19015599999999999
	.quad	0x4009a58c4bd33d29              # double 3.2058339999999999
	.quad	0x400eac1333b96af0              # double 3.8340209999999999
	.quad	0x40147a671ef30a4e              # double 5.1195339999999998
	.quad	0x4010c481f53825e1              # double 4.1919019999999998
	.quad	0x40086c97d8cf398f              # double 3.0530240000000002
	.quad	0x3ffff71eafee6fb5              # double 1.9978320000000001
	.quad	0x4022f1ccd9620685              # double 9.4722659999999994
	.quad	0x402279f05ea24cc7              # double 9.2381620000000009
	.quad	0x40172b25f633ce64              # double 5.7921370000000003
	.quad	0x401950e94ee392e2              # double 6.3290150000000001
	.quad	0x400249cf56eac860              # double 2.2860399999999998
	.quad	0x3fda040bfe3b03e2              # double 0.406497
	.quad	0x40134a847b24638d              # double 4.8227710000000004
	.quad	0x3ff628e71476af8a              # double 1.3849860000000001
	.quad	0x40238425f202107b              # double 9.7581019999999991
	.quad	0x3fe8b94face67d78              # double 0.772621
	.quad	0x401db65a57646ae4              # double 7.4280790000000003
	.quad	0x4016d8ba40d90e24              # double 5.7116480000000003
	.quad	0x40230a0d5629d841              # double 9.5196330000000006
	.quad	0x40121f6cefed6345              # double 4.5306889999999997
	.quad	0x400c69563a9f383f              # double 3.551434
	.quad	0x3feb6edcc20d562a              # double 0.85728300000000002
	.quad	0x401a3e66cb10342b              # double 6.5609390000000003
	.quad	0x402031c970f7b9e0              # double 8.0972399999999993
	.quad	0x40119bcb5fe542e5              # double 4.4021429999999997
	.quad	0x400af5703f2d3c79              # double 3.3698429999999999
	.quad	0x3ff745532617c1be              # double 1.4544250000000001
	.quad	0x3fd5be0589acbc8c              # double 0.339723
	.quad	0x40108e3a3a8e7147              # double 4.1388939999999996
	.quad	0x401f6600f345069a              # double 7.8496129999999997
	.quad	0x4022e7585be1a826              # double 9.4518459999999997
	.quad	0x4011a2a305532618              # double 4.4088250000000002
	.quad	0x3fea8e757928e0ca              # double 0.82989000000000002
	.quad	0x401bfe297396d091              # double 6.9982049999999996
	.quad	0x3ffa4995aaf78fef              # double 1.642965
	.quad	0x4015278705425f20              # double 5.2886009999999999
	.quad	0x4021e636b0963561              # double 8.9496359999999999
	.quad	0x40167c79f666234b              # double 5.6215590000000004
	.quad	0x3feae29f9ce8d973              # double 0.84016400000000002
	.quad	0x401d6433508f648c              # double 7.3478519999999996
	.quad	0x40233e672fba01ef              # double 9.6218810000000001
	.quad	0x4020fd4306e5cd4f              # double 8.4946520000000003
	.quad	0x401ac3be22e5de16              # double 6.6911550000000002
	.quad	0x40238774aba38759              # double 9.7645619999999997
	.quad	0x4022a31897a67a53              # double 9.3185470000000006
	.quad	0x4006cda87a072d1b              # double 2.850419
	.quad	0x3ff2ea78af3e468d              # double 1.1822440000000001
	.quad	0x4012e3eb399f5dff              # double 4.7225770000000002
	.quad	0x3feef9a8cdea033e              # double 0.96797599999999995
	.quad	0x4014cc02afdda8bd              # double 5.1992289999999999
	.quad	0x4007b66e86c6583f              # double 2.9640780000000002
	.quad	0x4007a0e9d51b4fe8              # double 2.9535710000000002
	.quad	0x40234a821f2990f3              # double 9.6455239999999999
	.quad	0x4023eb4aa9717df2              # double 9.9595540000000007
	.quad	0x4023b6f672b88440              # double 9.8573489999999992
	.quad	0x3fe8b4f82f512663              # double 0.77209099999999997
	.quad	0x4021c73b645a1cac              # double 8.8891249999999999
	.quad	0x40205c3fa2ad3e92              # double 8.1801729999999999
	.quad	0x401f61d3ed527e52              # double 7.8455349999999999
	.quad	0x3fc35ee136e71cda              # double 0.151333
	.quad	0x400394185058dde8              # double 2.4473120000000002
	.quad	0x400d3543aeab7996              # double 3.651008
	.quad	0x4012bd77318fc505              # double 4.6850250000000004
	.quad	0x401c8125dd095af3              # double 7.1261210000000004
	.quad	0x40167743a647fdc6              # double 5.6164690000000004
	.quad	0x40123a26a22b3893              # double 4.5567880000000001
	.quad	0x3fe28ba83f4eca68              # double 0.57954799999999995
	.quad	0x4021565c91d14e3c              # double 8.6686750000000003
	.quad	0x3fa5e481f53825e1              # double 0.042758999999999998
	.quad	0x4022d8fd5cb790fb              # double 9.4238079999999992
	.quad	0x4001d6a487336588              # double 2.229806
	.quad	0x400a6637bd05af6c              # double 3.2999109999999998
	.quad	0x401a1371da37ef5b              # double 6.5189890000000004
	.quad	0x4010929888f861a6              # double 4.14316
	.quad	0x4009993ab430f495              # double 3.1998190000000002
	.quad	0x4006e58793dd97f6              # double 2.8620749999999999
	.quad	0x4016c655e28aa433              # double 5.6936869999999997
	.quad	0x4017a0795f676ea4              # double 5.9067129999999999
	.quad	0x3ffa526c7eae5bc8              # double 1.6451229999999999
	.quad	0x401c24b0e1b4bb5e              # double 7.0358309999999999
	.quad	0x40054adddf43c7d6              # double 2.661556
	.quad	0x40220c50acc0bdcb              # double 9.0240530000000003
	.quad	0x3ff90f4c6e6d9be5              # double 1.566235
	.quad	0x4018c13be22e5de1              # double 6.1887049999999997
	.quad	0x4003d3059641f645              # double 2.4780380000000002
	.quad	0x400b4a6d26740810              # double 3.4113410000000002
	.quad	0x4004d2684cf0739b              # double 2.602738
	.quad	0x401fc1476af89c5e              # double 7.9387489999999996
	.quad	0x400ee2a6f3f52fc2              # double 3.8606699999999998
	.quad	0x4004e575c0767d35              # double 2.6120410000000001
	.quad	0x400a9daad601ffb5              # double 3.3269860000000002
	.quad	0x4009ad4fdf3b645a              # double 3.209625
	.quad	0x401dbcda2b5a20de              # double 7.4344260000000002
	.quad	0x3fafaa68f4b61fe2              # double 0.061846999999999999
	.quad	0x3ff345143bf72713              # double 1.2043649999999999
	.quad	0x401bb3a14cec41dd              # double 6.9254199999999999
	.quad	0x3fe391cd1c7de508              # double 0.61154799999999998
	.quad	0x4018964e8b7e4de4              # double 6.1467840000000002
	.quad	0x400884463065f959              # double 3.064587
	.quad	0x3febe698bb4d4888              # double 0.87189899999999998
	.quad	0x4023e61d2178f68c              # double 9.9494410000000002
	.quad	0x4017a9eb2074ea8e              # double 5.9159360000000003
	.quad	0x4021a4cdfaca361a              # double 8.8218840000000007
	.quad	0x4012d239e6ab9b24              # double 4.7052990000000001
	.quad	0x40167bc169c23b79              # double 5.6208549999999997
	.quad	0x40133f9bdc69f8c2              # double 4.8121179999999999
	.quad	0x3ff2600d1b71758e              # double 1.14845
	.quad	0x3fe73eb5b2d4d402              # double 0.72640499999999997
	.quad	0x4007528a6117720d              # double 2.9153030000000002
	.quad	0x3fe8e9dd7ecbb7fa              # double 0.77854800000000002
	.quad	0x4007779d909f1f15              # double 2.9334060000000002
	.quad	0x3ffd0ae74f2f123c              # double 1.8151619999999999
	.quad	0x401c84b662fdfc1a              # double 7.1296020000000002
	.quad	0x4023fb07075b3e14              # double 9.9902879999999996
	.quad	0x4015ceee52589268              # double 5.4520809999999997
	.quad	0x401e64562e09fe87              # double 7.5979850000000004
	.quad	0x4011b3897204295a              # double 4.4253289999999996
	.quad	0x3fd511d3671ac14c              # double 0.32921299999999998
	.quad	0x401f9f0995aaf790              # double 7.9053100000000001
	.quad	0x400b0f19934efcbd              # double 3.3823729999999999
	.quad	0x4009302ababead4f              # double 3.1485189999999998
	.quad	0x4021acf70153bd16              # double 8.8378219999999992
	.quad	0x4021bdb317efe0ce              # double 8.8705069999999999
	.quad	0x401b1b1c0010c6f8              # double 6.7764740000000003
	.quad	0x400a457f3061c79b              # double 3.2839339999999999
	.quad	0x400cb986338b47c7              # double 3.5905879999999999
	.quad	0x400396390c9107fb              # double 2.4483510000000002
	.quad	0x4001c53005814941              # double 2.2212830000000001
	.quad	0x401a4ba27ae9ab2a              # double 6.5738620000000001
	.quad	0x3fc80ea5b530ced5              # double 0.187947
	.quad	0x401fc586ca89fc6e              # double 7.9428970000000003
	.quad	0x3ff3b39d1b2e59b0              # double 1.2313510000000001
	.quad	0x40018556d19dece5              # double 2.1901069999999998
	.quad	0x4023409b951c5c57              # double 9.6261869999999998
	.quad	0x3ff495e6bc621b7e              # double 1.286597
	.quad	0x3ffe7d4ae429e0a4              # double 1.905589
	.quad	0x40173dc50ce4ead1              # double 5.8103220000000002
	.quad	0x401bdc5c5718eb89              # double 6.9651959999999997
	.quad	0x3ff4698eda22f6a5              # double 1.275771
	.quad	0x400354fce746cb96              # double 2.4164979999999998
	.quad	0x400026b59146e4c1              # double 2.0189010000000001
	.quad	0x3f70d8cb07d0aeda              # double 0.0041130000000000003
	.quad	0x3ff5cdd616f86a0a              # double 1.3627530000000001
	.quad	0x4013fda98676a726              # double 4.9977169999999997
	.quad	0x4013a6a400fba882              # double 4.9127349999999996
	.quad	0x4002c8e25c810a57              # double 2.3480880000000002
	.quad	0x401a4999dcb5781c              # double 6.5718759999999996
	.quad	0x4006b29dc725c3df              # double 2.837215
	.quad	0x401e14af922962d0              # double 7.5202010000000001
	.quad	0x4010a3a42f1ed17c              # double 4.1598059999999997
	.quad	0x3f776683c297bfa5              # double 0.0057130000000000002
	.quad	0x4011f81b21c475e6              # double 4.4922909999999998
	.quad	0x401125b63d3e4ef0              # double 4.2868279999999999
	.quad	0x40231f5b81301648              # double 9.5612449999999995
	.quad	0x401b67d45a5fc7e7              # double 6.8513960000000003
	.quad	0x4012d737110e453d              # double 4.7101709999999999
	.quad	0x40151ec0b567557a              # double 5.2800320000000003
	.quad	0x402000d972cd7cf6              # double 8.0016590000000001
	.quad	0x40236a291fb3fa6e              # double 9.7073450000000001
	.quad	0x3ff4173d9ec70004              # double 1.255674
	.quad	0x4003463cfb3311a5              # double 2.4092959999999999
	.quad	0x3fd95c13fd0d0679              # double 0.39624500000000001
	.quad	0x400664b44a1f0803              # double 2.799172
	.quad	0x40006a411c2a0232              # double 2.051882
	.quad	0x402109b60ae9680e              # double 8.518967
	.quad	0x4004c523704790b8              # double 2.5962589999999999
	.quad	0x3fc819008205ff1e              # double 0.18826300000000001
	.quad	0x4022080b88ca3e7d              # double 9.0157129999999999
	.quad	0x401a2269595feda6              # double 6.5336049999999997
	.quad	0x40006c1a8ac5c140              # double 2.0527850000000001
	.quad	0x401b0c165907d912              # double 6.7618039999999997
	.quad	0x4008f20fb224aada              # double 3.1181939999999999
	.quad	0x40105fe69270b06c              # double 4.0936529999999998
	.quad	0x4021ebd7d3910c2c              # double 8.9606309999999993
	.quad	0x4009e4e50c5eb314              # double 3.2367650000000001
	.quad	0x40224dda48b65237              # double 9.152056
	.quad	0x4021ffb6fe2e6ea8              # double 8.9994429999999994
	.quad	0x400192fec56d5cfb              # double 2.1967750000000001
	.quad	0x4006dc0a06e9ff0d              # double 2.8574410000000001
	.quad	0x3fb52ee84ad794a7              # double 0.082747000000000001
	.quad	0x40223f51ac9afe1e              # double 9.1236700000000006
	.quad	0x4023bd4fdf3b645a              # double 9.8697499999999998
	.quad	0x401544189374bc6a              # double 5.3164999999999996
	.quad	0x40110bf6a0dbad3a              # double 4.2616829999999997
	.quad	0x4022d936e71cda2b              # double 9.4242469999999993
	.quad	0x400aab14ec204f2b              # double 3.3335360000000001
	.quad	0x400a3994e1a3f466              # double 3.2781159999999998
	.quad	0x401a20e23af31b15              # double 6.5321129999999998
	.quad	0x401d676cce5f7404              # double 7.3510010000000001
	.quad	0x4014bff1950331e4              # double 5.1874450000000003
	.quad	0x3ffce7c8d195896a              # double 1.8065880000000001
	.quad	0x3fe5a8f190d173fb              # double 0.67687299999999995
	.quad	0x4022b85dfa871a3b              # double 9.3600919999999998
	.quad	0x4016b0d77b7c7821              # double 5.6726970000000003
	.quad	0x400665247cb70ac4              # double 2.7993860000000002
	.quad	0x3fd66e6d9be4cd75              # double 0.35049000000000002
	.quad	0x3ffeffcdab191dde              # double 1.937452
	.quad	0x3fe77db2b346130a              # double 0.73409400000000002
	.quad	0x3fc304790b849881              # double 0.14857400000000001
	.quad	0x400a1d4a5df2239e              # double 3.2643019999999998
	.quad	0x3ffd9e96c3fc43b3              # double 1.851218
	.quad	0x3ffee0ea5b530ced              # double 1.9299109999999999
	.quad	0x401e2976bc1effa0              # double 7.5404920000000004
	.quad	0x4021336fe2e6ea85              # double 8.6004629999999995
	.quad	0x4005c89118c197e5              # double 2.7229329999999998
	.quad	0x402226b873797460              # double 9.0756259999999997
	.quad	0x40085b77c02afddb              # double 3.0446620000000002
	.quad	0x400d34fe79ee02a7              # double 3.6508759999999998
	.quad	0x4023e8ea5b530ced              # double 9.9549129999999994
	.quad	0x40214b11e85fd04a              # double 8.6466209999999997
	.quad	0x40118268900c521e              # double 4.3773520000000001
	.quad	0x3ffd2c2bd7f51efb              # double 1.8232839999999999
	.quad	0x401ebb7d41743e96              # double 7.6830949999999998
	.quad	0x401c9c0ebedfa440              # double 7.1524000000000001
	.quad	0x4016ef394b7b2895              # double 5.7336169999999997
	.quad	0x40003677f6b1a2a5              # double 2.0265960000000001
	.quad	0x401a7332acfb762e              # double 6.6124980000000004
	.quad	0x401f8a9c12f09d8c              # double 7.8853609999999996
	.quad	0x4008e817763e4abe              # double 3.1133259999999998
	.quad	0x40206cb48d3ae686              # double 8.2123150000000003
	.quad	0x400a89680e065300              # double 3.3170929999999998
	.quad	0x401245d8d79d0a67              # double 4.5682099999999997
	.quad	0x401a22478854cdb8              # double 6.5334760000000003
	.quad	0x4022084d12018a44              # double 9.0162130000000004
	.quad	0x3fe9e45a1cac0831              # double 0.80912499999999998
	.quad	0x401c9cd35a858794              # double 7.1531500000000001
	.quad	0x3fbc8e25c810a56a              # double 0.111544
	.quad	0x4021067d34df04de              # double 8.5126740000000005
	.quad	0x40143a3a08398a65              # double 5.0568619999999997
	.quad	0x4013449906cca2db              # double 4.8169899999999997
	.quad	0x4010af062d40aaeb              # double 4.170922
	.quad	0x3fd343c7d5ed06ff              # double 0.301012
	.quad	0x401ea2cfd8f0c77e              # double 7.6589960000000001
	.quad	0x401d5d61b2a27f1b              # double 7.3411929999999996
	.quad	0x401d168e3ef28416              # double 7.2720269999999996
	.quad	0x3feb1e492bc2fc69              # double 0.84744699999999995
	.quad	0x401960870110a138              # double 6.344265
	.quad	0x40165b6134ce3de6              # double 5.5892379999999999
	.quad	0x4003a13f4a98aa86              # double 2.4537339999999999
	.quad	0x3fe7dda6a4441787              # double 0.745807
	.quad	0x4022ccc61d8622c4              # double 9.3999489999999994
	.quad	0x401d83c5bd0e12e8              # double 7.3786839999999997
	.quad	0x40122aa326e11559              # double 4.5416379999999998
	.quad	0x4020cce1c58255b0              # double 8.4001599999999996
	.quad	0x400d5dece5710881              # double 3.6708620000000001
	.quad	0x400c954003254e6e              # double 3.5728759999999999
	.quad	0x401af558ea7ce0fc              # double 6.7395969999999998
	.quad	0x400acf587d6f9768              # double 3.3512430000000002
	.quad	0x400459d3458cd20b              # double 2.54386
	.quad	0x4002c7bcc2938de7              # double 2.3475280000000001
	.quad	0x400406516db0dd83              # double 2.503085
	.quad	0x3fff555821294574              # double 1.9583360000000001
	.quad	0x3fec6b97fe8ee6b8              # double 0.88813399999999998
	.quad	0x401c83b107746888              # double 7.1286050000000003
	.quad	0x3ffec89a02752546              # double 1.923975
	.quad	0x3fcfe7ea5f84cad5              # double 0.24926499999999999
	.quad	0x4021629c779a6b51              # double 8.6926000000000005
	.quad	0x401895fbb517a461              # double 6.1464679999999996
	.quad	0x400bf41c8216c615              # double 3.4941949999999999
	.quad	0x40239b57a355043e              # double 9.8034029999999994
	.quad	0x3fb2222d5171e29b              # double 0.070833999999999994
	.quad	0x4009293ea2d2fe3f              # double 3.1451389999999999
	.quad	0x400194488c60cbf3              # double 2.1974040000000001
	.quad	0x4011ffa5d28d002e              # double 4.4996559999999999
	.quad	0x3fd18709741d084f              # double 0.27386700000000003
	.quad	0x40212f49adc8fb87              # double 8.5923590000000001
	.quad	0x4022cbaafff36ac6              # double 9.3977889999999995
	.quad	0x400470752da98677              # double 2.5549110000000002
	.quad	0x3fe25cebfec13b9f              # double 0.57384299999999999
	.quad	0x400c2bd2b6f19935              # double 3.521398
	.quad	0x4016c577963992c9              # double 5.6928390000000002
	.quad	0x40109244e93e1c9b              # double 4.1428409999999998
	.quad	0x4020a4b838c111ae              # double 8.3217180000000006
	.quad	0x3ff25d0fa58f7122              # double 1.1477200000000001
	.quad	0x401e75907d912557              # double 7.6148090000000001
	.quad	0x402246dd48451330              # double 9.1384070000000008
	.quad	0x400807ec7863beec              # double 3.0038689999999999
	.quad	0x401e3223e1869835              # double 7.5489649999999999
	.quad	0x40207e58a32f4491              # double 8.2467699999999997
	.quad	0x401d555193708aad              # double 7.3333190000000004
	.quad	0x4022d5c9e6687f45              # double 9.4175559999999993
	.quad	0x40029e846a5d6bec              # double 2.3274010000000001
	.quad	0x400050df15a4acf3              # double 2.039488
	.quad	0x400b188f42fe8251              # double 3.3869919999999998
	.quad	0x4017e359bc33f855              # double 5.9720219999999999
	.quad	0x3fea41dd1a21ea36              # double 0.82054000000000005
	.quad	0x4023d7be9856a37b              # double 9.9213760000000004
	.quad	0x40113138fffbce42              # double 4.2980689999999999
	.quad	0x402191652bd3c361              # double 8.7839749999999999
	.quad	0x4003d54e2b063e08              # double 2.4791530000000002
	.quad	0x40222275ee99a62f              # double 9.0673060000000003
	.quad	0x40012c59fb1e18f0              # double 2.1466560000000001
	.quad	0x40232154a7f8012e              # double 9.565099
	.quad	0x4018a8a86d71f362              # double 6.1647049999999997
	.quad	0x4014f304ccee5abc              # double 5.237323
	.quad	0x401b8f4c2b51bd62              # double 6.889939
	.quad	0x401e991b823c85c2              # double 7.6495189999999997
	.quad	0x4018de43ed959a31              # double 6.2170560000000004
	.quad	0x4005eb790fb65669              # double 2.7399770000000001
	.quad	0x400429b30728e92d              # double 2.5203609999999999
	.quad	0x4002a469d7342edc              # double 2.3302800000000001
	.quad	0x4016a2977c88e79b              # double 5.6587810000000003
	.quad	0x3fc072324c836651              # double 0.12848499999999999
	.quad	0x4011159d55e6bc62              # double 4.2711079999999999
	.quad	0x4019fef49cf56ead              # double 6.4989800000000004
	.quad	0x401076d3b6cbd988              # double 4.1160420000000002
	.quad	0x3ffd8bae89eba6ad              # double 1.8466020000000001
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
