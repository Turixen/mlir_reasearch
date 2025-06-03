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
	.quad	0x412f5cceb839cd81              # double 1027687.359816
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
	.quad	1999                            # 0x7cf
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	1999                            # 0x7cf
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
	lui	a7, %hi(.L__constant_1999xindex)
	addi	a7, a7, %lo(.L__constant_1999xindex)
	lui	t0, %hi(.L__constant_1999xf64)
	addi	t0, t0, %lo(.L__constant_1999xf64)
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
	lui	a7, %hi(.L__constant_1999xindex_0)
	addi	a7, a7, %lo(.L__constant_1999xindex_0)
	lui	t0, %hi(.L__constant_1999xf64_0)
	addi	t0, t0, %lo(.L__constant_1999xf64_0)
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
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1999xindex_0,@object # @__constant_1999xindex_0
	.p2align	6, 0x0
.L__constant_1999xindex_0:
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
	.size	.L__constant_1999xindex_0, 15992

	.type	.L__constant_1999xf64_0,@object # @__constant_1999xf64_0
	.p2align	6, 0x0
.L__constant_1999xf64_0:
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
	.size	.L__constant_1999xf64_0, 15992

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	105                             # 0x69
	.quad	113                             # 0x71
	.quad	123                             # 0x7b
	.quad	164                             # 0xa4
	.quad	180                             # 0xb4
	.quad	194                             # 0xc2
	.quad	233                             # 0xe9
	.quad	243                             # 0xf3
	.quad	249                             # 0xf9
	.quad	289                             # 0x121
	.quad	294                             # 0x126
	.quad	307                             # 0x133
	.quad	347                             # 0x15b
	.quad	359                             # 0x167
	.quad	365                             # 0x16d
	.quad	405                             # 0x195
	.quad	413                             # 0x19d
	.quad	423                             # 0x1a7
	.quad	460                             # 0x1cc
	.quad	472                             # 0x1d8
	.quad	476                             # 0x1dc
	.quad	516                             # 0x204
	.quad	521                             # 0x209
	.quad	529                             # 0x211
	.quad	574                             # 0x23e
	.quad	587                             # 0x24b
	.quad	596                             # 0x254
	.quad	637                             # 0x27d
	.quad	647                             # 0x287
	.quad	659                             # 0x293
	.quad	701                             # 0x2bd
	.quad	711                             # 0x2c7
	.quad	719                             # 0x2cf
	.quad	757                             # 0x2f5
	.quad	770                             # 0x302
	.quad	781                             # 0x30d
	.quad	818                             # 0x332
	.quad	827                             # 0x33b
	.quad	837                             # 0x345
	.quad	877                             # 0x36d
	.quad	887                             # 0x377
	.quad	899                             # 0x383
	.quad	940                             # 0x3ac
	.quad	953                             # 0x3b9
	.quad	961                             # 0x3c1
	.quad	997                             # 0x3e5
	.quad	1004                            # 0x3ec
	.quad	1013                            # 0x3f5
	.quad	1055                            # 0x41f
	.quad	1066                            # 0x42a
	.quad	1082                            # 0x43a
	.quad	1122                            # 0x462
	.quad	1135                            # 0x46f
	.quad	1141                            # 0x475
	.quad	1179                            # 0x49b
	.quad	1194                            # 0x4aa
	.quad	1203                            # 0x4b3
	.quad	1242                            # 0x4da
	.quad	1252                            # 0x4e4
	.quad	1260                            # 0x4ec
	.quad	1297                            # 0x511
	.quad	1310                            # 0x51e
	.quad	1316                            # 0x524
	.quad	1354                            # 0x54a
	.quad	1365                            # 0x555
	.quad	1373                            # 0x55d
	.quad	1410                            # 0x582
	.quad	1420                            # 0x58c
	.quad	1426                            # 0x592
	.quad	1465                            # 0x5b9
	.quad	1476                            # 0x5c4
	.quad	1489                            # 0x5d1
	.quad	1533                            # 0x5fd
	.quad	1546                            # 0x60a
	.quad	1559                            # 0x617
	.quad	1599                            # 0x63f
	.quad	1610                            # 0x64a
	.quad	1625                            # 0x659
	.quad	1663                            # 0x67f
	.quad	1671                            # 0x687
	.quad	1684                            # 0x694
	.quad	1720                            # 0x6b8
	.quad	1731                            # 0x6c3
	.quad	1737                            # 0x6c9
	.quad	1775                            # 0x6ef
	.quad	1784                            # 0x6f8
	.quad	1794                            # 0x702
	.quad	1832                            # 0x728
	.quad	1838                            # 0x72e
	.quad	1848                            # 0x738
	.quad	1884                            # 0x75c
	.quad	1892                            # 0x764
	.quad	1903                            # 0x76f
	.quad	1941                            # 0x795
	.quad	1952                            # 0x7a0
	.quad	1962                            # 0x7aa
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
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
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	73                              # 0x49
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
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
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
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	88                              # 0x58
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	62                              # 0x3e
	.quad	91                              # 0x5b
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
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	38                              # 0x26
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	46                              # 0x2e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
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
	.quad	71                              # 0x47
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
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	55                              # 0x37
	.quad	71                              # 0x47
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	75                              # 0x4b
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
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
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	0                               # 0x0
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
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
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
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
	.quad	37                              # 0x25
	.quad	39                              # 0x27
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
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	9                               # 0x9
	.quad	30                              # 0x1e
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	2                               # 0x2
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	0                               # 0x0
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
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	26                              # 0x1a
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
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
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	76                              # 0x4c
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
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	70                              # 0x46
	.quad	86                              # 0x56
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
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	35                              # 0x23
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	30                              # 0x1e
	.quad	43                              # 0x2b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	39                              # 0x27
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	15                              # 0xf
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
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
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	59                              # 0x3b
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	47                              # 0x2f
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
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
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	12                              # 0xc
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	62                              # 0x3e
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
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
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
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
	.quad	67                              # 0x43
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
	.quad	99                              # 0x63
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	18                              # 0x12
	.quad	45                              # 0x2d
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
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
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	50                              # 0x32
	.quad	95                              # 0x5f
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	54                              # 0x36
	.quad	67                              # 0x43
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	40                              # 0x28
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x3fbaf9db22d0e560              # double 0.105375
	.quad	0x401d1c6088d6d3b7              # double 7.2777120000000002
	.quad	0x4014759817b95a29              # double 5.1148379999999998
	.quad	0x4022caaf5771001d              # double 9.3958689999999993
	.quad	0x40232d9578a2a90d              # double 9.5890310000000003
	.quad	0x3fec9522a6f3f530              # double 0.89320500000000003
	.quad	0x4011d8fe69270b07              # double 4.4619080000000002
	.quad	0x3ff9534699418506              # double 1.5828310000000001
	.quad	0x3fe71de26916440f              # double 0.72239799999999998
	.quad	0x3fd2807789a45910              # double 0.28909099999999999
	.quad	0x4018e17c1bda511a              # double 6.2202000000000002
	.quad	0x3fd6473cd573647c              # double 0.34809800000000002
	.quad	0x402291ecd4aa10e0              # double 9.2850099999999998
	.quad	0x40066b00ffda4053              # double 2.8022480000000001
	.quad	0x401fa4ff43419e30              # double 7.91113
	.quad	0x401b5cb9ecf63800              # double 6.8405529999999999
	.quad	0x4019447496aad1d0              # double 6.3168509999999998
	.quad	0x400abfe3b03e20cd              # double 3.343696
	.quad	0x402302f640639d5e              # double 9.5057849999999995
	.quad	0x3fefb71971c10d7c              # double 0.991101
	.quad	0x401f41c193b3a68b              # double 7.8142149999999999
	.quad	0x400a9dcf0307f23d              # double 3.3270550000000001
	.quad	0x4000d15bdd76683c              # double 2.1022259999999999
	.quad	0x400b4e43aa79bbae              # double 3.4132150000000001
	.quad	0x40161806f262888b              # double 5.5234639999999997
	.quad	0x40207a365cb35f3d              # double 8.2386959999999991
	.quad	0x4022e0257c914b16              # double 9.4377859999999991
	.quad	0x3ff6e543f1c75819              # double 1.4309730000000001
	.quad	0x40237151c5c5718f              # double 9.7213270000000004
	.quad	0x3ffc9af294dd7236              # double 1.7878289999999999
	.quad	0x40071d5454152b0a              # double 2.8893209999999998
	.quad	0x40112fa1e3eaf683              # double 4.2965159999999996
	.quad	0x3ff1c883fd502257              # double 1.1114539999999999
	.quad	0x401947963992c8c5              # double 6.319909
	.quad	0x4023cb1db445ed4a              # double 9.8967109999999998
	.quad	0x401aca600b029281              # double 6.6976319999999996
	.quad	0x401a452ce032db1f              # double 6.5675540000000003
	.quad	0x4012d8d4bad7d7c3              # double 4.7117490000000002
	.quad	0x400dec9afe1da7b1              # double 3.7405300000000001
	.quad	0x401fc221c8a7a41e              # double 7.9395819999999997
	.quad	0x4017d93037d63023              # double 5.9620980000000001
	.quad	0x40120768dfbd6a59              # double 4.5072359999999998
	.quad	0x3fc6f041461b6d44              # double 0.17920700000000001
	.quad	0x4022ef77f27fe4bd              # double 9.4677120000000005
	.quad	0x401c024febd09e13              # double 7.0022580000000003
	.quad	0x401a2f2ae07e5a79              # double 6.546062
	.quad	0x40030da554b8bef9              # double 2.3816630000000001
	.quad	0x401461fa76534374              # double 5.095682
	.quad	0x4010d080303c07ee              # double 4.203614
	.quad	0x4019384a9478c869              # double 6.3049720000000002
	.quad	0x400b344e50c5eb31              # double 3.4005399999999999
	.quad	0x400c0d2d44dca8e3              # double 3.5064340000000001
	.quad	0x4021cdeaab042529              # double 8.9021810000000006
	.quad	0x401dcc69f8c21e1d              # double 7.4496229999999999
	.quad	0x4022afde0d66f0d0              # double 9.3434910000000002
	.quad	0x3ff853aa369fcf3e              # double 1.5204260000000001
	.quad	0x400ac7e8ccdd93c4              # double 3.3476119999999998
	.quad	0x3ffd62f37fbefd00              # double 1.8366579999999999
	.quad	0x4020db6cdf266ba5              # double 8.4285650000000008
	.quad	0x401b6bbbe878fabe              # double 6.8552090000000003
	.quad	0x3ffb8152b0a6fc59              # double 1.7190730000000001
	.quad	0x3ff14b167ec7863c              # double 1.080832
	.quad	0x4021953e2d6238da              # double 8.7914899999999996
	.quad	0x3fd0ee0b0af5fd48              # double 0.26452900000000001
	.quad	0x4018ab6fe2e6ea85              # double 6.1674189999999998
	.quad	0x401e4f66e86c6584              # double 7.5775410000000001
	.quad	0x4012be963dc486ad              # double 4.6861199999999998
	.quad	0x401dbef240fa9c13              # double 7.4364710000000001
	.quad	0x401f13ade225fa66              # double 7.7692180000000004
	.quad	0x402072c98e53eb3a              # double 8.2241940000000007
	.quad	0x400fb98b71b8aa00              # double 3.965598
	.quad	0x3ff44dbf0563ed0f              # double 1.2689809999999999
	.quad	0x401859da597d49d8              # double 6.0877470000000002
	.quad	0x400af52c9d16fc9c              # double 3.3697140000000001
	.quad	0x400c4d65e4606749              # double 3.537792
	.quad	0x3fe6a9e90795f677              # double 0.70824100000000001
	.quad	0x401c0a0e8427418d              # double 7.0098209999999996
	.quad	0x4011a25204af9229              # double 4.4085159999999997
	.quad	0x4021c06d50657321              # double 8.8758339999999993
	.quad	0x402137f77af64064              # double 8.6093100000000006
	.quad	0x401e0f1a5ca29846              # double 7.5147490000000001
	.quad	0x4002365d3996fa83              # double 2.276545
	.quad	0x401e6af2d7f950b9              # double 7.6044419999999997
	.quad	0x3ff7df18c9fb6135              # double 1.491967
	.quad	0x40156f2cf95d4e90              # double 5.3585700000000003
	.quad	0x4012a5baf533f423              # double 4.6618459999999997
	.quad	0x40174ccc03793144              # double 5.8249969999999998
	.quad	0x3fe6e94680171194              # double 0.71597599999999995
	.quad	0x401b1a63736cdf26              # double 6.7757699999999996
	.quad	0x3ffa135fc3b4f616              # double 1.6297299999999999
	.quad	0x401fa2ee41919ac8              # double 7.9091120000000003
	.quad	0x401be1908e581cf8              # double 6.9702780000000004
	.quad	0x4019eac42e9899bf              # double 6.4792639999999997
	.quad	0x3fc5821af7d30ad4              # double 0.16803299999999999
	.quad	0x4014511be6e65387              # double 5.0792080000000004
	.quad	0x4003d4f5903a7547              # double 2.4789840000000001
	.quad	0x3fe634b945308bb9              # double 0.693936
	.quad	0x4018a2e5de15ca6d              # double 6.1590800000000003
	.quad	0x402201e646f15619              # double 9.0037099999999999
	.quad	0x4013bb6f9fcb0c02              # double 4.9330429999999996
	.quad	0x3ff89ff92f2b66b6              # double 1.539056
	.quad	0x4023c35b91f70de9              # double 9.881558
	.quad	0x4021fce3de6149c7              # double 8.9939260000000001
	.quad	0x3ff50583621fafc9              # double 1.3138460000000001
	.quad	0x4020a318548a9bd0              # double 8.3185450000000003
	.quad	0x402338398a654930              # double 9.6098140000000001
	.quad	0x40111bcdbbe0157f              # double 4.2771520000000001
	.quad	0x3ffbe1d6494d50ec              # double 1.7426360000000001
	.quad	0x400b20f5e41d4b6a              # double 3.3910939999999998
	.quad	0x4020888db0574b40              # double 8.2667059999999992
	.quad	0x401de231c64ba94c              # double 7.4708930000000002
	.quad	0x401f3847f562174c              # double 7.8049619999999997
	.quad	0x401a395d91ab8e8f              # double 6.5560210000000003
	.quad	0x401595c896dd26b7              # double 5.3962729999999999
	.quad	0x401c7b0f27bb2fec              # double 7.1201749999999997
	.quad	0x4006b00474d9c6b0              # double 2.8359459999999999
	.quad	0x4023ada122fad6cb              # double 9.8391199999999994
	.quad	0x3ff2d0d8cb07d0af              # double 1.175988
	.quad	0x400e8083126e978d              # double 3.8127499999999999
	.quad	0x401911d81f106680              # double 6.2674260000000004
	.quad	0x40071fcc9ea9a3d3              # double 2.8905270000000001
	.quad	0x4003b760bf5d7881              # double 2.46454
	.quad	0x4019fbd017dae819              # double 6.4959110000000004
	.quad	0x4008ad783dff3f10              # double 3.0847020000000001
	.quad	0x400bcf9e3864cb5c              # double 3.4763760000000001
	.quad	0x400a72031ceaf252              # double 3.3056700000000001
	.quad	0x4001c16052502eec              # double 2.2194219999999998
	.quad	0x4011cd9274e22a2c              # double 4.4507539999999999
	.quad	0x4013ee52157689ca              # double 4.9827349999999999
	.quad	0x4020148eef1bac2e              # double 8.0401530000000001
	.quad	0x401767f66e86c658              # double 5.8515259999999998
	.quad	0x400880242d05f288              # double 3.0625689999999999
	.quad	0x401f258255b035bd              # double 7.7866299999999997
	.quad	0x4002aebfec13b9f1              # double 2.3353269999999999
	.quad	0x3ff3651f3e89a88b              # double 1.212188
	.quad	0x401b94c059210386              # double 6.8952650000000002
	.quad	0x4020e94e3bcd35a8              # double 8.4556749999999994
	.quad	0x40122e4cd7492791              # double 4.5452149999999998
	.quad	0x400948259e1f3a58              # double 3.160228
	.quad	0x401e1c7d5ed06fef              # double 7.5278219999999995
	.quad	0x3fe91bac2df0d413              # double 0.78462799999999999
	.quad	0x4017f023e9ea1405              # double 5.9845119999999996
	.quad	0x4021f6e6d9be4cd7              # double 8.9822299999999995
	.quad	0x3fe99a027525460b              # double 0.80005000000000004
	.quad	0x4022c58dbcec84f9              # double 9.385847
	.quad	0x400e0d79d0a67621              # double 3.75658
	.quad	0x401e78f9f44d4456              # double 7.6181409999999996
	.quad	0x4022ef0e2c12ad82              # double 9.4669050000000006
	.quad	0x4018de757928e0ca              # double 6.2172450000000001
	.quad	0x4018e929ed3953df              # double 6.2276990000000003
	.quad	0x3ffdeccb3a2595bc              # double 1.8703110000000001
	.quad	0x4011873abc947065              # double 4.3820600000000001
	.quad	0x400a62a454de7ea6              # double 3.298165
	.quad	0x40113e542e557de1              # double 4.3108680000000001
	.quad	0x4011459210385c68              # double 4.3179400000000001
	.quad	0x3ffdb10880d801b4              # double 1.855721
	.quad	0x4012ad5bab21815a              # double 4.669295
	.quad	0x4002aed352220bc4              # double 2.3353640000000002
	.quad	0x40164df761cbccf3              # double 5.5761390000000004
	.quad	0x40196b6fe2e6ea85              # double 6.3549189999999998
	.quad	0x4023e86e7e62dc6e              # double 9.9539679999999997
	.quad	0x40032533b1077469              # double 2.3931650000000002
	.quad	0x3fea5ad106ee30cb              # double 0.82358600000000004
	.quad	0x4017c08787485e3e              # double 5.9380170000000003
	.quad	0x40236815e39713ad              # double 9.7032919999999993
	.quad	0x3ff1c3914f483cb0              # double 1.1102460000000001
	.quad	0x4007a0ce0b912dba              # double 2.9535179999999999
	.quad	0x4002a71715c63ae2              # double 2.3315869999999999
	.quad	0x4015065cf67b1c00              # double 5.2562139999999999
	.quad	0x4019eb5fa22706d5              # double 6.479857
	.quad	0x40219be7d135115a              # double 8.8045030000000004
	.quad	0x40141554fbdad752              # double 5.0208320000000004
	.quad	0x400a77c99ae924f2              # double 3.3084899999999999
	.quad	0x3fe7004d98394749              # double 0.71878699999999995
	.quad	0x40128c1eff9f87f0              # double 4.6368369999999999
	.quad	0x3ff6555821294574              # double 1.3958360000000001
	.quad	0x400e207789a45910              # double 3.7658529999999999
	.quad	0x402152e09fe86834              # double 8.6618700000000004
	.quad	0x4021e011b1d92b80              # double 8.9376350000000002
	.quad	0x401e9b0856e696a2              # double 7.6513989999999996
	.quad	0x400d8327ed84d339              # double 3.689041
	.quad	0x401b2974e65bea0c              # double 6.7904850000000003
	.quad	0x3fe944fe36d22425              # double 0.78967200000000004
	.quad	0x4013f66d7a56de33              # double 4.9906519999999999
	.quad	0x402223a7daa4fca4              # double 9.0696399999999997
	.quad	0x3fe75dd6e04c0592              # double 0.73020499999999999
	.quad	0x401f47ccc0379314              # double 7.8201169999999998
	.quad	0x4004cfc58ab92c06              # double 2.601451
	.quad	0x40056c9afe1da7b1              # double 2.6780300000000001
	.quad	0x401fbf2f55582129              # double 7.9367039999999997
	.quad	0x3fd919e30014f8b6              # double 0.39220500000000003
	.quad	0x4015e9fe43675ddd              # double 5.4785089999999999
	.quad	0x4020cbfca85caafc              # double 8.3984120000000004
	.quad	0x40158e54f7a91969              # double 5.3889959999999997
	.quad	0x401da71b8aa00193              # double 7.4131910000000003
	.quad	0x4005d691a75cd0bb              # double 2.7297699999999998
	.quad	0x40154e1c58255b03              # double 5.3262799999999997
	.quad	0x40034e5796bfca86              # double 2.4132530000000001
	.quad	0x4016f76577531db4              # double 5.7415979999999998
	.quad	0x401d48a761027957              # double 7.320951
	.quad	0x401be6e08f217093              # double 6.9754659999999999
	.quad	0x40133d898b2e9ccb              # double 4.8100949999999996
	.quad	0x40165829cfdd2285              # double 5.5860969999999996
	.quad	0x3fc2a558ea7ce0fc              # double 0.14567099999999999
	.quad	0x40080d9f0a1be2b5              # double 3.0066510000000002
	.quad	0x401c886f049a9974              # double 7.1332360000000001
	.quad	0x401fa5061416377a              # double 7.9111560000000001
	.quad	0x402204a6223e186a              # double 9.0090800000000009
	.quad	0x400e3a9fbe76c8b4              # double 3.7786249999999999
	.quad	0x400f2c61d8622c45              # double 3.896671
	.quad	0x40136317268d3283              # double 4.846768
	.quad	0x4011380303c07ee1              # double 4.3046990000000003
	.quad	0x3fe81335d249e450              # double 0.75234500000000004
	.quad	0x40099f7f06705c89              # double 3.2028789999999998
	.quad	0x40228f09310129cc              # double 9.2793670000000005
	.quad	0x3ff8f525460aa64c              # double 1.55985
	.quad	0x40219797aaac1095              # double 8.7960790000000006
	.quad	0x3fec2977c88e79ab              # double 0.88006200000000001
	.quad	0x40230bac929aa1d7              # double 9.5228009999999994
	.quad	0x4017e4cdb7ae5797              # double 5.9734410000000002
	.quad	0x40051e80bed740c4              # double 2.639894
	.quad	0x401a6a93293d102c              # double 6.6040770000000002
	.quad	0x40219a0b3d4ae42a              # double 8.8008670000000002
	.quad	0x4023c8a3d70a3d71              # double 9.8918750000000006
	.quad	0x40226f1ed17c5ef6              # double 9.2170319999999997
	.quad	0x3ff6bdf3b645a1cb              # double 1.4213750000000001
	.quad	0x3fc62c98e53eb39a              # double 0.173236
	.quad	0x4009e748e4755ffe              # double 3.2379319999999998
	.quad	0x40190dac68a936c6              # double 6.2633530000000004
	.quad	0x3ffcbb267c6b8b69              # double 1.7956909999999999
	.quad	0x40177c343b70ef56              # double 5.8712929999999997
	.quad	0x40222006290eed03              # double 9.0625470000000004
	.quad	0x3fec7f5a5332acfb              # double 0.89054599999999995
	.quad	0x4004d6073de1e2df              # double 2.6045060000000002
	.quad	0x3fe64ed4e4c942d5              # double 0.69712300000000005
	.quad	0x400e092ccf6be37e              # double 3.75448
	.quad	0x401c383ba3443d47              # double 7.0549150000000003
	.quad	0x400af0ee49f51698              # double 3.367642
	.quad	0x4000e75cd0bb6ed6              # double 2.1129699999999998
	.quad	0x4017cbe8ff327aa7              # double 5.9491310000000004
	.quad	0x40103edaa92e6213              # double 4.0613809999999999
	.quad	0x3ff0f7ea1c68ec53              # double 1.0605260000000001
	.quad	0x4002ae3a3a8e7147              # double 2.3350719999999998
	.quad	0x3ffb1b30728e92d5              # double 1.6941379999999999
	.quad	0x401887f88765ba6f              # double 6.132784
	.quad	0x401b6fb19e731d2e              # double 6.859076
	.quad	0x401ff19bd4067cf2              # double 7.9859460000000002
	.quad	0x401854e3369b9d80              # double 6.0828980000000001
	.quad	0x40172c42e9899bf6              # double 5.7932240000000004
	.quad	0x402296ad2dcb1466              # double 9.2942900000000002
	.quad	0x4012b327ed84d339              # double 4.674957
	.quad	0x3fb81de26916440f              # double 0.094205999999999998
	.quad	0x401c4388a8b08dd2              # double 7.0659510000000001
	.quad	0x3ff4aaa9f7b5aea3              # double 1.291666
	.quad	0x3fecdbad3a604e1e              # double 0.90181599999999995
	.quad	0x401a35974e65bea1              # double 6.5523350000000002
	.quad	0x40205811904b3c3e              # double 8.1720089999999992
	.quad	0x400cfb7281fd9ba2              # double 3.6227770000000001
	.quad	0x4021e0b8ae31d713              # double 8.9389090000000007
	.quad	0x401bf8d36b4c7f35              # double 6.9929940000000004
	.quad	0x401b2647778dd617              # double 6.787382
	.quad	0x401b18982cb20fb2              # double 6.7740179999999999
	.quad	0x3fe521c044284dfd              # double 0.66037000000000001
	.quad	0x40200e06fac6045c              # double 8.0273970000000005
	.quad	0x4020fc9e44fa0514              # double 8.4933949999999995
	.quad	0x4019267c286f8ad2              # double 6.2875829999999997
	.quad	0x40101d028a1dfb94              # double 4.0283300000000004
	.quad	0x40235b9ef0f16f44              # double 9.6789470000000008
	.quad	0x4009b6ad70e6f2e9              # double 3.2141980000000001
	.quad	0x3ff7c3f705857aff              # double 1.4853430000000001
	.quad	0x401b5a23bff8a8f4              # double 6.8380270000000003
	.quad	0x3ffda53005814941              # double 1.8528290000000001
	.quad	0x4018fdcb1465e892              # double 6.2478449999999999
	.quad	0x401a76c8711d798e              # double 6.6159990000000004
	.quad	0x400c20b1bbcf4e87              # double 3.5159639999999999
	.quad	0x3ffba9bae46cfc83              # double 1.7289380000000001
	.quad	0x400dd17a46173b86              # double 3.727284
	.quad	0x4013a632c1f42bb6              # double 4.9123029999999996
	.quad	0x402066e9bbf0dc77              # double 8.2010020000000008
	.quad	0x4007d6188b11409a              # double 2.9795389999999999
	.quad	0x400f977c88e79aae              # double 3.9489679999999998
	.quad	0x4022de876e1deacd              # double 9.4346270000000007
	.quad	0x3fe0698fe69270b0              # double 0.51288599999999995
	.quad	0x400d76aad1d041cc              # double 3.6829429999999999
	.quad	0x40023bfe7e1fc090              # double 2.2792940000000002
	.quad	0x401d8072085b1855              # double 7.3754350000000004
	.quad	0x3ffc2e7a311e85fd              # double 1.761347
	.quad	0x4010490fb65668c2              # double 4.0713489999999997
	.quad	0x401d64f440af1cb9              # double 7.3485880000000003
	.quad	0x40218a424a276b7f              # double 8.7700370000000003
	.quad	0x401b97c80841ede1              # double 6.8982239999999999
	.quad	0x401058b7e4de3b8a              # double 4.0866389999999999
	.quad	0x4016c7b2cc70867b              # double 5.6950180000000001
	.quad	0x401622ababead4f6              # double 5.5338580000000004
	.quad	0x4008a33d6c721922              # double 3.079707
	.quad	0x4001b9c17225b74a              # double 2.2157010000000001
	.quad	0x40234e008e9b38d6              # double 9.6523479999999999
	.quad	0x3fec22962cfd8f0c              # double 0.87922199999999994
	.quad	0x3ff5c4a2fcefaa47              # double 1.3605069999999999
	.quad	0x40238cf67b1c0011              # double 9.7753180000000003
	.quad	0x3ff0e0b3d4ae429e              # double 1.054859
	.quad	0x3ffefc07ee0b0af6              # double 1.936531
	.quad	0x401e94a3400b88ca              # double 7.6451539999999998
	.quad	0x4020dd1633482be9              # double 8.4318100000000005
	.quad	0x4023caae6c8f7553              # double 9.8958619999999992
	.quad	0x3ffc786d2ed783e0              # double 1.779401
	.quad	0x4007c2dc6e2a8006              # double 2.9701469999999999
	.quad	0x4023d71455219a84              # double 9.9200769999999991
	.quad	0x400465ae5ffa3b9b              # double 2.5496490000000001
	.quad	0x400c850268900c52              # double 3.5649459999999999
	.quad	0x4010226f60e0eb68              # double 4.0336280000000002
	.quad	0x401bc5b3e1437c57              # double 6.9430690000000004
	.quad	0x401399af9ebe9c88              # double 4.9000839999999997
	.quad	0x4019b2be0589acbd              # double 6.4245530000000004
	.quad	0x40084b5c39bcba30              # double 3.036797
	.quad	0x40222fc829cfdd23              # double 9.0933240000000009
	.quad	0x4021c3463497b741              # double 8.8813949999999995
	.quad	0x4002eba16e7a311f              # double 2.3650540000000002
	.quad	0x4022e21fafc8b008              # double 9.4416480000000007
	.quad	0x4017628dc981beb2              # double 5.8462440000000004
	.quad	0x401b91b3aeee9574              # double 6.8922869999999996
	.quad	0x402182350d2806af              # double 8.7543109999999995
	.quad	0x3fe196e9bbf0dc77              # double 0.54967200000000005
	.quad	0x40098f78feef5ec8              # double 3.195055
	.quad	0x4006f32b55ef1fde              # double 2.868735
	.quad	0x400af9f90539fba4              # double 3.3720569999999999
	.quad	0x4001da0e8427418d              # double 2.2314729999999998
	.quad	0x40238ac1d29dc726              # double 9.7710100000000004
	.quad	0x4001e275ab7dc7ac              # double 2.235576
	.quad	0x4012539b024f6599              # double 4.5816460000000001
	.quad	0x402128c436fc1590              # double 8.5796220000000005
	.quad	0x3ff035f5f0b28523              # double 1.013174
	.quad	0x40225a06a6e32e38              # double 9.1758319999999997
	.quad	0x400be34e3369b9d8              # double 3.485989
	.quad	0x4022c991dde37586              # double 9.3936910000000005
	.quad	0x3ff4c2bf9830e3ce              # double 1.2975460000000001
	.quad	0x4022b7bedb7281fe              # double 9.3588780000000007
	.quad	0x40164481f53825e1              # double 5.5669019999999998
	.quad	0x40239d512ec6bce8              # double 9.8072599999999994
	.quad	0x3fe2e3886594af4f              # double 0.59027499999999999
	.quad	0x4012a4306e5cd4ed              # double 4.6603409999999998
	.quad	0x40213b5f5f0b2852              # double 8.6159619999999997
	.quad	0x4005bf39d1b2e59b              # double 2.718372
	.quad	0x3ff10e13f4a98aa8              # double 1.0659369999999999
	.quad	0x401076afcce1c582              # double 4.1159049999999997
	.quad	0x401dfe7ea5f84cad              # double 7.4985299999999996
	.quad	0x3ff7f16b11c6d1e1              # double 1.49644
	.quad	0x4013f19dece57109              # double 4.9859540000000004
	.quad	0x4023abae685db76b              # double 9.8353149999999995
	.quad	0x4013fcc63f141206              # double 4.9968500000000002
	.quad	0x4023163c105186db              # double 9.5434269999999994
	.quad	0x4021e700ef1348b2              # double 8.9511789999999998
	.quad	0x40221ccfd08d4bad              # double 9.0562729999999991
	.quad	0x401cd6c5d206c871              # double 7.2097389999999999
	.quad	0x4002edd9c27e9531              # double 2.3661379999999999
	.quad	0x402291a2834d26fa              # double 9.2844429999999996
	.quad	0x401ddf00abf76a2f              # double 7.4677759999999997
	.quad	0x4021ff570c564f98              # double 8.9987110000000001
	.quad	0x4003db0574b40703              # double 2.4819439999999999
	.quad	0x3fd6a1016ce789e7              # double 0.35357699999999997
	.quad	0x4013599780baa583              # double 4.8374920000000001
	.quad	0x40227e60a2014728              # double 9.2468310000000002
	.quad	0x401fa95feda66128              # double 7.9154049999999998
	.quad	0x4012fb0142f61ed6              # double 4.7451220000000003
	.quad	0x3fe8044ae85b9e8c              # double 0.75052399999999996
	.quad	0x40221f24d8fd5cb8              # double 9.0608280000000008
	.quad	0x40074a1c68ec52a4              # double 2.911187
	.quad	0x3ffff079e59f2baa              # double 1.99621
	.quad	0x400a1398e9707182              # double 3.2595689999999999
	.quad	0x4022d54b2745bf27              # double 9.416589
	.quad	0x40191c2eba27ae9b              # double 6.2775220000000003
	.quad	0x3fff588c1db0142f              # double 1.9591179999999999
	.quad	0x3fbdd377e1b8ed1c              # double 0.116508
	.quad	0x40151be878fabda1              # double 5.2772540000000001
	.quad	0x3ffc153bd1676641              # double 1.7551840000000001
	.quad	0x4022fb4117f8444a              # double 9.4907310000000003
	.quad	0x401ebbd66277c45d              # double 7.6834350000000002
	.quad	0x3ffa23033a4723ab              # double 1.633548
	.quad	0x400418854cdb7ae5              # double 2.5119729999999998
	.quad	0x40147cde5d18090b              # double 5.1219419999999998
	.quad	0x401aceda66128390              # double 6.7020049999999998
	.quad	0x4010dcf91a32b12d              # double 4.2157939999999998
	.quad	0x400b59008205ff1e              # double 3.4184580000000002
	.quad	0x4016634b945308bc              # double 5.5969680000000004
	.quad	0x401185f5275ee99a              # double 4.3808179999999997
	.quad	0x3ffde55e28aa4335              # double 1.868498
	.quad	0x401ac5b4edb2f662              # double 6.6930730000000001
	.quad	0x3ff8ac7a7c9de050              # double 1.542109
	.quad	0x400763c64345cfee              # double 2.923718
	.quad	0x401615204af92296              # double 5.5206309999999998
	.quad	0x401881f601797cc4              # double 6.1269150000000003
	.quad	0x3ff4873eee525892              # double 1.2830189999999999
	.quad	0x40107a8650e77920              # double 4.1196529999999996
	.quad	0x40038bfc2224edf6              # double 2.443352
	.quad	0x4011c8372e6a7696              # double 4.4455229999999997
	.quad	0x401bc06cca2db61c              # double 6.9379150000000003
	.quad	0x4006df993d5347a6              # double 2.8591790000000001
	.quad	0x4012e8c3b0c4588a              # double 4.727309
	.quad	0x401ead5992428d43              # double 7.6692869999999997
	.quad	0x401419274e22a2c2              # double 5.0245639999999998
	.quad	0x40004ce13f4a98ab              # double 2.0375390000000002
	.quad	0x4021ffddca4b124d              # double 8.9997389999999999
	.quad	0x401c2582dbe7f2c3              # double 7.036632
	.quad	0x401ce2d01c0ca601              # double 7.2214970000000003
	.quad	0x4023baaed1394318              # double 9.8646150000000005
	.quad	0x3ff50f28c79f6662              # double 1.316201
	.quad	0x400043aeab7995ee              # double 2.033048
	.quad	0x402298563ed0f627              # double 9.2975329999999996
	.quad	0x40046cd31769a911              # double 2.553137
	.quad	0x3facba51a005c465              # double 0.056108999999999999
	.quad	0x4000afd438d1d8a5              # double 2.0858539999999999
	.quad	0x3fc942784a9478c8              # double 0.19734099999999999
	.quad	0x401d07878b7a1c26              # double 7.2573530000000002
	.quad	0x4015880b242070b9              # double 5.3828550000000002
	.quad	0x3ff91d40ee06d938              # double 1.569642
	.quad	0x401153fbbd7b2032              # double 4.3320150000000002
	.quad	0x3fe536d22424a277              # double 0.66294200000000003
	.quad	0x401d234699418506              # double 7.2844490000000004
	.quad	0x401f0ca1059ea572              # double 7.7623329999999999
	.quad	0x401cea6ce358298d              # double 7.2289310000000002
	.quad	0x4022642e557de0d6              # double 9.1956659999999992
	.quad	0x3fdc886df82b1f68              # double 0.44582699999999997
	.quad	0x4003a11c2a023209              # double 2.4536669999999998
	.quad	0x4020c046a5d6bebe              # double 8.3755389999999998
	.quad	0x40104f19934efcbd              # double 4.0772459999999997
	.quad	0x401b77136a400fbb              # double 6.8662850000000004
	.quad	0x401108051c9f72f7              # double 4.2578319999999996
	.quad	0x4017cc2a02320968              # double 5.9493790000000004
	.quad	0x4023526dce39b457              # double 9.6609940000000005
	.quad	0x4013c5ca6ca03c4b              # double 4.943155
	.quad	0x4021ba4095f2452c              # double 8.8637739999999993
	.quad	0x3f5f70de8f6cefed              # double 0.0019189999999999999
	.quad	0x40006e29f9ce8d97              # double 2.0537909999999999
	.quad	0x40084e0e30446b6a              # double 3.0381130000000001
	.quad	0x401e8da554b8bef9              # double 7.6383260000000001
	.quad	0x40221160956c0d6f              # double 9.0339399999999994
	.quad	0x4016857d1782d384              # double 5.6303599999999996
	.quad	0x3ff4782d38476f2a              # double 1.2793399999999999
	.quad	0x3fe45c5d63886595              # double 0.63627500000000003
	.quad	0x4023997c1bda511a              # double 9.7997750000000003
	.quad	0x40122d7d7c2ca149              # double 4.5444240000000002
	.quad	0x401fd4e3369b9d80              # double 7.9578980000000001
	.quad	0x3fe64c2d6a9c560c              # double 0.69679899999999995
	.quad	0x4023ca3d2d87f887              # double 9.8949979999999992
	.quad	0x40139a3f8982cb21              # double 4.900633
	.quad	0x4016195dd4c76d11              # double 5.5247719999999996
	.quad	0x400525bea0ba1f4b              # double 2.6434299999999999
	.quad	0x400854d1e96c3fc4              # double 3.0414159999999999
	.quad	0x40050a593a2df938              # double 2.6300530000000002
	.quad	0x402055a5daf07bfe              # double 8.1672809999999991
	.quad	0x3ff49a0dfdef8488              # double 1.2876110000000001
	.quad	0x3ff1074751ce28ed              # double 1.0642769999999999
	.quad	0x4021f65ecc3e3194              # double 8.981192
	.quad	0x40169faf42784a94              # double 5.6559419999999996
	.quad	0x3ffb2e924f227d03              # double 1.6988700000000001
	.quad	0x401e45d7cb2d905c              # double 7.568206
	.quad	0x4002e4bba12b5e53              # double 2.3616860000000002
	.quad	0x400335818c5c9a35              # double 2.4011260000000001
	.quad	0x401eb8d5842b734b              # double 7.6805019999999997
	.quad	0x3ffb46b9c304ccee              # double 1.7047669999999999
	.quad	0x401c018c9fb6134d              # double 7.0015130000000001
	.quad	0x400c29374bc6a7f0              # double 3.5201250000000002
	.quad	0x40211a9307af20ea              # double 8.5519029999999994
	.quad	0x401b11049235f80a              # double 6.7666190000000004
	.quad	0x4004a33a4723ab00              # double 2.579701
	.quad	0x3ff175393250b524              # double 1.091119
	.quad	0x40207c154c985f07              # double 8.2423500000000001
	.quad	0x401d484a515ce9e6              # double 7.3205960000000001
	.quad	0x402185e02ea960b7              # double 8.761476
	.quad	0x4013314ad362e903              # double 4.7981369999999997
	.quad	0x4023d90257c914b1              # double 9.9238459999999992
	.quad	0x40214edfc5cdd50b              # double 8.6540510000000008
	.quad	0x40179814d72799a2              # double 5.898517
	.quad	0x3ffba7e308787486              # double 1.728488
	.quad	0x3fccda87a072d1af              # double 0.22541900000000001
	.quad	0x3ffcacf312b1b36c              # double 1.792224
	.quad	0x40145e6afcce1c58              # double 5.0922049999999999
	.quad	0x401c144955b4677b              # double 7.0198109999999998
	.quad	0x4019c09203a322af              # double 6.4380569999999997
	.quad	0x4023a262aa19439e              # double 9.8171590000000002
	.quad	0x401e3df548ecd8dc              # double 7.5605060000000002
	.quad	0x3ff65ee45c358afc              # double 1.3981669999999999
	.quad	0x4007f5b1c8648840              # double 2.9949680000000001
	.quad	0x401e401d19157abc              # double 7.5626110000000004
	.quad	0x402010a1be2b495a              # double 8.0324840000000002
	.quad	0x4015b439de481f54              # double 5.4260020000000004
	.quad	0x4009b1e9f2778141              # double 3.2118720000000001
	.quad	0x4009d340d4dc65c7              # double 3.228151
	.quad	0x401e535c182ecaef              # double 7.5814060000000003
	.quad	0x4002c5fe974a3401              # double 2.3466770000000001
	.quad	0x400b24dc22ab25b3              # double 3.392998
	.quad	0x4019e91b823c85c2              # double 6.4776439999999997
	.quad	0x40163b0bbf50e347              # double 5.5576619999999997
	.quad	0x401eae8815e39714              # double 7.6704410000000003
	.quad	0x4013cad8a116659d              # double 4.9480919999999999
	.quad	0x40198f3ade225fa6              # double 6.3898729999999997
	.quad	0x401a5a2f8bdec5f4              # double 6.5880720000000004
	.quad	0x400388d21bc126a6              # double 2.4418069999999998
	.quad	0x3fd81e42e1262025              # double 0.37684699999999999
	.quad	0x3fe099c17225b74a              # double 0.51876900000000004
	.quad	0x400a2431bde82d7b              # double 3.2676729999999998
	.quad	0x401aba31e7d9988d              # double 6.6818309999999999
	.quad	0x401adf63800218df              # double 6.718153
	.quad	0x400f626bb55ac040              # double 3.923057
	.quad	0x401f924a276b7ed4              # double 7.8928609999999999
	.quad	0x3ff8d68b5cbff477              # double 1.552379
	.quad	0x4023dbe5753a3ec0              # double 9.9294849999999996
	.quad	0x402085f1bef49cf5              # double 8.2616099999999992
	.quad	0x3fe7b79fa97e132b              # double 0.74116499999999996
	.quad	0x40219abcb5fe542e              # double 8.8022209999999994
	.quad	0x401e36eeb702602d              # double 7.5536450000000003
	.quad	0x402329a2a4db163c              # double 9.5813190000000005
	.quad	0x3ff3d38ac18f81e9              # double 1.2391460000000001
	.quad	0x4016d65c70435efa              # double 5.7093369999999997
	.quad	0x3ff6192a737110e4              # double 1.3811439999999999
	.quad	0x40144d0aed99cbef              # double 5.0752370000000004
	.quad	0x4015117d6b65a9a8              # double 5.26708
	.quad	0x4009f54e2b063e08              # double 3.2447780000000002
	.quad	0x40149e8d10f51aca              # double 5.1548350000000003
	.quad	0x40168c083126e979              # double 5.6367500000000001
	.quad	0x3fe05831f03d145e              # double 0.51076600000000005
	.quad	0x4023f56dc1a47a9e              # double 9.9793529999999997
	.quad	0x4015b948dc11e42e              # double 5.4309419999999999
	.quad	0x3fb98b1dd5d3dc8c              # double 0.099779000000000006
	.quad	0x401cbf01fb82c2bd              # double 7.1865309999999996
	.quad	0x3ff5b9fec99f1ae3              # double 1.357909
	.quad	0x401163ad5bee3d60              # double 4.3473410000000001
	.quad	0x4003322fad6cb535              # double 2.399505
	.quad	0x4001c3c6c97d8cf4              # double 2.2205940000000002
	.quad	0x3fb9e94ab1d4f9c2              # double 0.101216
	.quad	0x400335d9a0f0a5f0              # double 2.401294
	.quad	0x401c299d0203e63f              # double 7.0406380000000004
	.quad	0x401967c7820a30db              # double 6.3513469999999996
	.quad	0x40009bb83cf2cf96              # double 2.0760350000000001
	.quad	0x3ffea16a48733659              # double 1.9144080000000001
	.quad	0x40222d57bc7f77af              # double 9.0885599999999993
	.quad	0x4012db97353b4b30              # double 4.7144440000000003
	.quad	0x40132f9ca5bd944b              # double 4.7964960000000003
	.quad	0x401bd996b76709fa              # double 6.9624889999999997
	.quad	0x3ff5597d49d7ba67              # double 1.3343480000000001
	.quad	0x401ecf4e0114d2f6              # double 7.7024460000000001
	.quad	0x3ff8ce53eb399f5e              # double 1.550373
	.quad	0x401929e9d0e991ff              # double 6.2909309999999996
	.quad	0x4020f40aaeafab54              # double 8.4766440000000002
	.quad	0x400b885fd04a2fcf              # double 3.441589
	.quad	0x40223b0a2ca9ac36              # double 9.1153119999999994
	.quad	0x40123bcd78c436fc              # double 4.5584009999999999
	.quad	0x400e9e26916440f2              # double 3.8272219999999999
	.quad	0x4003ba8bd230b9dc              # double 2.4660869999999999
	.quad	0x4023df3cb3e5753a              # double 9.9360099999999996
	.quad	0x4020c8e410b630a9              # double 8.3923649999999999
	.quad	0x3fe1f51697f1f9ad              # double 0.561168
	.quad	0x4015e0257c914b16              # double 5.4688929999999996
	.quad	0x4023e1c7de5082cf              # double 9.9409779999999994
	.quad	0x3fff4647778dd617              # double 1.954658
	.quad	0x40219345069a4df4              # double 8.7876359999999991
	.quad	0x401c94755ffe6d59              # double 7.1449790000000002
	.quad	0x40233eb26bf8769f              # double 9.6224550000000004
	.quad	0x40004a5a469d7343              # double 2.036305
	.quad	0x401e1974a3400b89              # double 7.5248590000000001
	.quad	0x3ffab0fcf80dc337              # double 1.66821
	.quad	0x40066bd09e12a51e              # double 2.8026439999999999
	.quad	0x3fea4ec204f2ae08              # double 0.82211400000000001
	.quad	0x401d895f676ea423              # double 7.3841530000000004
	.quad	0x3ffc3a1d323fee2d              # double 1.7641880000000001
	.quad	0x3ff9dfbc5de9c023              # double 1.6171230000000001
	.quad	0x400670c5eb313be2              # double 2.8050649999999999
	.quad	0x4022fd42a23bff8b              # double 9.4946490000000007
	.quad	0x402061672324c836              # double 8.1902399999999993
	.quad	0x401d87f77af64064              # double 7.3827800000000003
	.quad	0x3fffb139c94f69cb              # double 1.9807680000000001
	.quad	0x40136fd82773e250              # double 4.8592230000000001
	.quad	0x401f73cafb3b7521              # double 7.8630789999999999
	.quad	0x40029e7b80a9de8b              # double 2.3273839999999999
	.quad	0x401db17efe0ce0b9              # double 7.4233359999999999
	.quad	0x4017bba6266fd652              # double 5.9332510000000003
	.quad	0x401f0f12c27a6373              # double 7.7647199999999996
	.quad	0x3ffc2d77318fc505              # double 1.7611000000000001
	.quad	0x3ff57ec7863beec4              # double 1.3434520000000001
	.quad	0x4023a45f9df548ed              # double 9.8210420000000002
	.quad	0x400a1db877ab3248              # double 3.2645119999999999
	.quad	0x3fe3ccc25072085b              # double 0.61874499999999999
	.quad	0x400a9204af922963              # double 3.3212980000000001
	.quad	0x3fceda87a072d1af              # double 0.24104400000000001
	.quad	0x4018e897e996312f              # double 6.2271419999999997
	.quad	0x4002206c00da1a93              # double 2.2658309999999999
	.quad	0x4016f7c30d306a2b              # double 5.7419549999999999
	.quad	0x3fe161f3a57eaa2a              # double 0.543207
	.quad	0x40000a8112ba16e8              # double 2.0051290000000002
	.quad	0x401716683c297bfa              # double 5.7718819999999997
	.quad	0x40127b777d0f1f58              # double 4.6205730000000003
	.quad	0x40198a0e8427418d              # double 6.3848209999999996
	.quad	0x402167c957cd466f              # double 8.7027079999999994
	.quad	0x4010b1b328b6d86f              # double 4.1735350000000002
	.quad	0x400f29c90c4dec1c              # double 3.8954029999999999
	.quad	0x4017eeb6390c9108              # double 5.983117
	.quad	0x400348f190d173fb              # double 2.4106169999999998
	.quad	0x401f725247cb70ac              # double 7.8616419999999998
	.quad	0x400ba7c73eee5259              # double 3.4569230000000002
	.quad	0x402342328f9f44d4              # double 9.6292919999999995
	.quad	0x401ed4be40420f6f              # double 7.7077569999999999
	.quad	0x401d9e3608d0891a              # double 7.4045030000000001
	.quad	0x40224da16616b54e              # double 9.1516219999999997
	.quad	0x400cdeadd590c0ad              # double 3.60873
	.quad	0x4017e92d1287c201              # double 5.9777110000000002
	.quad	0x4006cb367a0f9097              # double 2.8492250000000001
	.quad	0x401691b71758e219              # double 5.6422999999999996
	.quad	0x3f9134ce3de6149c              # double 0.016802999999999998
	.quad	0x401354aec8d5c747              # double 4.8326979999999997
	.quad	0x4021ed9f6ec5b079              # double 8.9641070000000003
	.quad	0x4022d3b44e50c5eb              # double 9.4134849999999996
	.quad	0x4010bdfc9ff92f2b              # double 4.1855339999999996
	.quad	0x40101fe1975f2cb6              # double 4.0311339999999998
	.quad	0x4019b8a0902de00d              # double 6.4302999999999999
	.quad	0x401395ef62f9ca5c              # double 4.8964210000000001
	.quad	0x40227a63d816aceb              # double 9.2390430000000006
	.quad	0x401f4c7219220ff5              # double 7.8246539999999997
	.quad	0x3fe499652bd3c361              # double 0.64372499999999999
	.quad	0x400a24a6a875d56f              # double 3.2678959999999999
	.quad	0x4021e304ee7c49fd              # double 8.9433969999999992
	.quad	0x401029096bb98c7e              # double 4.0400749999999999
	.quad	0x3ff6caf1cb89d6ae              # double 1.424547
	.quad	0x4013f8d716d2aa5c              # double 4.9930079999999997
	.quad	0x4022b9869835158c              # double 9.3623550000000008
	.quad	0x4001d9c6b0531983              # double 2.2313360000000002
	.quad	0x40236e3821af7d31              # double 9.7152720000000005
	.quad	0x401433eb399f5dff              # double 5.0507020000000002
	.quad	0x40211043e5321e60              # double 8.5317679999999996
	.quad	0x400740fcb4f1e4b4              # double 2.9067319999999999
	.quad	0x400c3ee02a77a2cf              # double 3.5307010000000001
	.quad	0x3ffd15df6555c52e              # double 1.8178399999999999
	.quad	0x401df5510d38cda7              # double 7.489567
	.quad	0x4020a7192ea52ef9              # double 8.3263639999999999
	.quad	0x4022e6e2a80064aa              # double 9.4509480000000003
	.quad	0x402051bd1ed9dfdb              # double 8.1596460000000004
	.quad	0x4010de1a3f4666ed              # double 4.2168970000000003
	.quad	0x40037187e7c06e1a              # double 2.4304350000000001
	.quad	0x4001bdf761cbccf3              # double 2.2177570000000002
	.quad	0x402396ee957470eb              # double 9.7947889999999997
	.quad	0x401ee199bb2788db              # double 7.7203129999999999
	.quad	0x400283bd5992428d              # double 2.3143259999999999
	.quad	0x402197df3b645a1d              # double 8.7966250000000006
	.quad	0x3ffec73bc903ea70              # double 1.9236409999999999
	.quad	0x4023dd48882f0e0b              # double 9.9321940000000008
	.quad	0x401a043f5f91600f              # double 6.5041479999999998
	.quad	0x401c3b923a29c77a              # double 7.0581750000000003
	.quad	0x401681de69ad42c4              # double 5.6268250000000002
	.quad	0x3fc352c16df3f962              # double 0.15096300000000001
	.quad	0x4021173f316e3715              # double 8.5454039999999996
	.quad	0x3fd2f5b5fa22706d              # double 0.29624699999999998
	.quad	0x400f170d62bf11f9              # double 3.8862559999999999
	.quad	0x4018d2799a1fd157              # double 6.2055420000000003
	.quad	0x40231507852f7f4a              # double 9.5410730000000008
	.quad	0x4006bdd2ae8e1d65              # double 2.8426870000000002
	.quad	0x401d4b18dac258d6              # double 7.3233370000000004
	.quad	0x401043dee78183f9              # double 4.0662799999999999
	.quad	0x4022bdba908a265f              # double 9.3705639999999998
	.quad	0x401b14ae429e0a42              # double 6.7701960000000003
	.quad	0x40222f4f93bc0a07              # double 9.0924040000000002
	.quad	0x402363dff3f0fe04              # double 9.6950679999999991
	.quad	0x4019b3f1c75818c6              # double 6.4257270000000002
	.quad	0x3ff013122b7baecd              # double 1.004656
	.quad	0x4014849b1fab96f2              # double 5.1294979999999999
	.quad	0x3feb2f81626b2f23              # double 0.849549
	.quad	0x3fdad14e3bcd35a8              # double 0.41902499999999998
	.quad	0x3ff7607e5a78f25a              # double 1.461058
	.quad	0x401c4723ee1bd1ee              # double 7.0694730000000003
	.quad	0x401a4c77574f722e              # double 6.5746739999999999
	.quad	0x4013b74ddf86e3b4              # double 4.9290079999999996
	.quad	0x400b43686a4ca4f4              # double 3.4079139999999999
	.quad	0x3fc2f6dfc5cdd50b              # double 0.14815900000000001
	.quad	0x401b355e28aa4335              # double 6.802117
	.quad	0x4022d6b851eb851f              # double 9.4193750000000004
	.quad	0x4023d19d0203e63f              # double 9.9094010000000007
	.quad	0x4020d9cbab649d39              # double 8.4253820000000008
	.quad	0x3ff7e831ad2135db              # double 1.4941880000000001
	.quad	0x3ff6bbf727136a40              # double 1.42089
	.quad	0x40128744b2b777d1              # double 4.632098
	.quad	0x3fee8dbad3a604e2              # double 0.95480100000000001
	.quad	0x401464ac6cdaf4ae              # double 5.0983140000000002
	.quad	0x40184ae536501e26              # double 6.0731400000000004
	.quad	0x400e2deca25529fe              # double 3.772424
	.quad	0x401a40a9de8b3b32              # double 6.563148
	.quad	0x4003a2fc69728a61              # double 2.454583
	.quad	0x40210e8e1d6494d5              # double 8.5284279999999999
	.quad	0x3fc856b441bb8c33              # double 0.19014600000000001
	.quad	0x401a3b6e935b91f7              # double 6.558039
	.quad	0x400e6ecf20642396              # double 3.804106
	.quad	0x3fe9998aeb80ecfa              # double 0.79999299999999995
	.quad	0x3fffea6e32e3821b              # double 1.994734
	.quad	0x4019c5e99e94ab1d              # double 6.4432739999999997
	.quad	0x401efca36199780c              # double 7.7467170000000003
	.quad	0x3fe2befd00713f07              # double 0.58581399999999995
	.quad	0x401697afa7221859              # double 5.6481310000000002
	.quad	0x3ffaff562174c4ce              # double 1.687338
	.quad	0x40118b7c3504c48b              # double 4.3862160000000001
	.quad	0x401dc02ababead4f              # double 7.4376629999999997
	.quad	0x3fd3a67e846a5d6c              # double 0.307037
	.quad	0x4018a6aceaaf35e3              # double 6.1627689999999999
	.quad	0x400b8308feac42ea              # double 3.4389820000000002
	.quad	0x3fffba05143bf727              # double 1.982915
	.quad	0x40028933a0407cc8              # double 2.3169930000000001
	.quad	0x4015f4cc25072086              # double 5.4890600000000003
	.quad	0x401bae27e0ef9980              # double 6.9200739999999996
	.quad	0x401300d73860999e              # double 4.7508210000000002
	.quad	0x401b8b6c7a7c9de0              # double 6.8861559999999997
	.quad	0x401c474cd31769a9              # double 7.0696289999999999
	.quad	0x4003bc8c0ce91c8f              # double 2.4670640000000001
	.quad	0x40107be1eb4202da              # double 4.1209790000000002
	.quad	0x3ff823f78bbd3804              # double 1.5087809999999999
	.quad	0x401eb083dbc23316              # double 7.6723780000000001
	.quad	0x3ffaecc4ef88b978              # double 1.6828050000000001
	.quad	0x40203835bd512ec7              # double 8.1097850000000005
	.quad	0x4022c231e7d9988d              # double 9.3792869999999997
	.quad	0x402337b3743632c2              # double 9.6087910000000001
	.quad	0x4011db32ce89656f              # double 4.4640610000000001
	.quad	0x401b764302b40f67              # double 6.8654900000000003
	.quad	0x40196396d0917d6b              # double 6.3472549999999996
	.quad	0x3ff892e62131a8ef              # double 1.5358639999999999
	.quad	0x401fa6872b020c4a              # double 7.9126250000000002
	.quad	0x40094219eb6390c9              # double 3.157276
	.quad	0x40206a13e3e29308              # double 8.2071830000000006
	.quad	0x4018503e63e8dda5              # double 6.0783630000000004
	.quad	0x40219576ee73e682              # double 8.7919230000000006
	.quad	0x401e7496aad1d042              # double 7.6138560000000002
	.quad	0x4020069f6a93f291              # double 8.0129350000000006
	.quad	0x3ff50a59c065b63d              # double 1.3150269999999999
	.quad	0x4010c0c1fc8f3238              # double 4.1882400000000004
	.quad	0x3ff16b463497b741              # double 1.0886899999999999
	.quad	0x3fe173061c79b34a              # double 0.54529099999999997
	.quad	0x40107c9d9d3458cd              # double 4.1216949999999999
	.quad	0x400394a44c7b02d6              # double 2.4475790000000002
	.quad	0x401641f03d145d85              # double 5.5643929999999999
	.quad	0x40101d373affb04f              # double 4.0285310000000001
	.quad	0x4010448e043a2164              # double 4.066948
	.quad	0x4010fedfe75bc44c              # double 4.248901
	.quad	0x4018ac4e2f37fbf0              # double 6.1682670000000002
	.quad	0x40084538ef34d6a1              # double 3.0337999999999998
	.quad	0x40236105186db50f              # double 9.6894919999999995
	.quad	0x3fe7a1511dffc548              # double 0.73844200000000004
	.quad	0x401b50121682f944              # double 6.8281939999999999
	.quad	0x4020eb929ed3953e              # double 8.4601030000000002
	.quad	0x40116b08dd1e53a8              # double 4.3545259999999999
	.quad	0x3feef00abf76a2f5              # double 0.96680200000000005
	.quad	0x3ff16e631f8a0903              # double 1.08945
	.quad	0x4011eb7a1c25d074              # double 4.4799579999999999
	.quad	0x3ff145bc01a36e2f              # double 1.0795250000000001
	.quad	0x40110a960b6f9fcb              # double 4.260338
	.quad	0x4013ee4cd7492791              # double 4.9827149999999998
	.quad	0x401ed5e0f7fcfc40              # double 7.7088660000000004
	.quad	0x40209457e23f24d9              # double 8.289733
	.quad	0x401105796bfca85d              # double 4.2553460000000003
	.quad	0x401762c55c96030c              # double 5.8464559999999999
	.quad	0x4017f3be22e5de16              # double 5.9880300000000002
	.quad	0x4021bb0e5e679464              # double 8.8653440000000003
	.quad	0x3ff6f73d188f42ff              # double 1.4353610000000001
	.quad	0x401730b0f27bb2ff              # double 5.7975500000000002
	.quad	0x40138a0620ab7132              # double 4.8847889999999996
	.quad	0x3ff86f5126634118              # double 1.527177
	.quad	0x4020e14ab1d4f9c2              # double 8.4400230000000001
	.quad	0x3feaf61ed5ae1cde              # double 0.84254399999999996
	.quad	0x4014d9e59f2ba9d2              # double 5.21279
	.quad	0x4011f4d983947497              # double 4.4891110000000003
	.quad	0x402180578e5c4eb5              # double 8.7506679999999992
	.quad	0x4019f0e0a84be404              # double 6.4852319999999999
	.quad	0x4001c288051c9f73              # double 2.219986
	.quad	0x4022127610279570              # double 9.0360569999999996
	.quad	0x4017a2b7fe08aefb              # double 5.9089049999999999
	.quad	0x4009740dd3fe1976              # double 3.181667
	.quad	0x401e5399f5dfeb8e              # double 7.5816420000000004
	.quad	0x3fca2be8bc169c24              # double 0.20446500000000001
	.quad	0x3fd05271bcdbbe01              # double 0.25503199999999998
	.quad	0x401bf08aefb2aae3              # double 6.9849050000000004
	.quad	0x401be9cd8127b2cc              # double 6.9783229999999996
	.quad	0x4021fb1b36bd2b6f              # double 8.9904419999999998
	.quad	0x3ffc46b7aa25d8d8              # double 1.7672650000000001
	.quad	0x400bfe1650a45d42              # double 3.499066
	.quad	0x401207d7c2ca148c              # double 4.5076590000000003
	.quad	0x401f580e496ededb              # double 7.835992
	.quad	0x40149355043e5322              # double 5.1438790000000001
	.quad	0x40216f7bbf93ff26              # double 8.7177410000000002
	.quad	0x4010ce425aee6320              # double 4.2014250000000004
	.quad	0x400428e368f08462              # double 2.519965
	.quad	0x4020d6bc408d8ec9              # double 8.4194049999999994
	.quad	0x3ff4dc5b4aa9717e              # double 1.303798
	.quad	0x401cd8605681ecd5              # double 7.2113050000000003
	.quad	0x4020616c3fc43b2e              # double 8.1902790000000003
	.quad	0x401ebc49774256bd              # double 7.6838740000000003
	.quad	0x40230c738a3b57c5              # double 9.5243190000000002
	.quad	0x3ffcfb8c32a8c9b8              # double 1.8114129999999999
	.quad	0x401f8733ebbfd71b              # double 7.8820339999999999
	.quad	0x401448d8665e02eb              # double 5.0711380000000004
	.quad	0x400f985d744f5d35              # double 3.9493969999999998
	.quad	0x3ffec32fcac8e68e              # double 1.9226529999999999
	.quad	0x402154a1ad6451b9              # double 8.6652959999999997
	.quad	0x3fbca01abd1aa822              # double 0.111818
	.quad	0x401df225b749adc9              # double 7.486472
	.quad	0x400e230d306a2b17              # double 3.767115
	.quad	0x400cf5f80991793a              # double 3.6201020000000002
	.quad	0x401dcb2aae297397              # double 7.4484050000000002
	.quad	0x4005924fa8b4bf90              # double 2.6964410000000001
	.quad	0x40015b5d894812be              # double 2.1696119999999999
	.quad	0x40198446b69db65f              # double 6.3791760000000002
	.quad	0x4015d5e95b78cc9a              # double 5.4588979999999996
	.quad	0x401f805143bf7271              # double 7.8753099999999998
	.quad	0x401651ab0856e697              # double 5.5797540000000003
	.quad	0x401d431d712a0ec7              # double 7.3155419999999998
	.quad	0x4014647fdc5931ca              # double 5.0981439999999996
	.quad	0x401d8305100a393f              # double 7.3779490000000001
	.quad	0x4016773a797891e2              # double 5.6164339999999999
	.quad	0x400289d16fc9bc77              # double 2.317294
	.quad	0x4007868d32830a0b              # double 2.940699
	.quad	0x401f3d627bf61aa4              # double 7.8099460000000001
	.quad	0x402132428d434a02              # double 8.5981640000000006
	.quad	0x4014cd0aed99cbef              # double 5.2002370000000004
	.quad	0x4007475818c5c9a3              # double 2.9098359999999999
	.quad	0x40219d0f40e5a35d              # double 8.8067569999999993
	.quad	0x40234204295a6c5d              # double 9.6289379999999997
	.quad	0x401c896851223183              # double 7.1341869999999998
	.quad	0x3fe362b27cbf6e3f              # double 0.60579799999999995
	.quad	0x401a3ed20296b335              # double 6.5613479999999997
	.quad	0x4019370867ad8e43              # double 6.3037429999999999
	.quad	0x401772c40d0aaa7e              # double 5.8620760000000001
	.quad	0x3fd93c21187e7c07              # double 0.39429500000000001
	.quad	0x4001fcdfefbf401c              # double 2.2484739999999999
	.quad	0x401d7bfb15b573eb              # double 7.3710750000000003
	.quad	0x40120aa433508f65              # double 4.5103920000000004
	.quad	0x4014c5b24e9c4546              # double 5.1930630000000004
	.quad	0x400801272c94b381              # double 3.0005630000000001
	.quad	0x402053b4d48882f1              # double 8.1634890000000002
	.quad	0x400637d30ad46f58              # double 2.7772579999999998
	.quad	0x4007f19a415f45e1              # double 2.9929700000000001
	.quad	0x400c9cc6c54bcf0b              # double 3.5765509999999998
	.quad	0x40095694467381d8              # double 3.1672750000000001
	.quad	0x400ab2e1ef73c0c2              # double 3.337345
	.quad	0x3feec95e17e34b94              # double 0.96208099999999996
	.quad	0x4003e7bfe7e1fc09              # double 2.488159
	.quad	0x4023d372606fac60              # double 9.9129819999999995
	.quad	0x3fd8acb85a4f00ef              # double 0.385542
	.quad	0x401fe318b9346994              # double 7.9717739999999999
	.quad	0x401f1731098d477c              # double 7.7726480000000002
	.quad	0x401bebae89eba6ad              # double 6.9801580000000003
	.quad	0x3fcdb56323bbc6eb              # double 0.232098
	.quad	0x400bb3269df97aab              # double 3.4624760000000001
	.quad	0x40215a91105e1c15              # double 8.6768879999999999
	.quad	0x40156df1172ef0ae              # double 5.3573649999999997
	.quad	0x40200ba68b19a416              # double 8.0227550000000001
	.quad	0x40194471b4784231              # double 6.31684
	.quad	0x4013608637bd05af              # double 4.8442619999999996
	.quad	0x401b29357603925c              # double 6.7902430000000003
	.quad	0x4015f6b1e5c0b999              # double 5.4909129999999999
	.quad	0x4020d13b9f127f5f              # double 8.4086580000000009
	.quad	0x401e266b1e5c0b9a              # double 7.5375180000000004
	.quad	0x4011cd2e94680171              # double 4.4503729999999999
	.quad	0x3ff77e5321e603d5              # double 1.4683409999999999
	.quad	0x3ff6d314445aa2e4              # double 1.4265330000000001
	.quad	0x4011d35d249e44fa              # double 4.45641
	.quad	0x3fe2c50ce4ead0c4              # double 0.58655400000000002
	.quad	0x402332ca57a786c2              # double 9.5991999999999997
	.quad	0x3fdb34f82f512663              # double 0.42510799999999999
	.quad	0x401f475536933a04              # double 7.819661
	.quad	0x4021b564b662fdfc              # double 8.8542839999999998
	.quad	0x401df50ce4ead0c4              # double 7.4893070000000002
	.quad	0x3febc753e707e176              # double 0.86808200000000002
	.quad	0x3fe9baafff36ac64              # double 0.80403899999999994
	.quad	0x4021585e5f30e7ff              # double 8.6725949999999994
	.quad	0x40196eb074a771c9              # double 6.3580949999999996
	.quad	0x3ff5d51b4fe79ee0              # double 1.364528
	.quad	0x401490c8cd63cb81              # double 5.1413909999999996
	.quad	0x4010892d98bf7f06              # double 4.1339629999999996
	.quad	0x4016aed8d36b4c7f              # double 5.6707489999999998
	.quad	0x3ff11351159c4977              # double 1.0672159999999999
	.quad	0x4013afca85caafbc              # double 4.9216709999999999
	.quad	0x3ffdf00abf76a2f5              # double 1.8711040000000001
	.quad	0x401dc134ce3de615              # double 7.4386780000000003
	.quad	0x402307db09a671ef              # double 9.5153429999999996
	.quad	0x4002842e12620254              # double 2.3145410000000002
	.quad	0x400ac514c22ee419              # double 3.346231
	.quad	0x4019c86d2ed783e0              # double 6.445729
	.quad	0x40224f99c38b04ab              # double 9.1554699999999993
	.quad	0x401b3e7210be9425              # double 6.8109820000000001
	.quad	0x40137ca46e08f217              # double 4.871721
	.quad	0x40205d2eb5f5f0b3              # double 8.1819970000000009
	.quad	0x4023707852f7f499              # double 9.7196680000000004
	.quad	0x4008a512231832fd              # double 3.0806010000000001
	.quad	0x4010c985271bcdbc              # double 4.1967970000000001
	.quad	0x3fd822036006d0d5              # double 0.37707600000000002
	.quad	0x400df3311a543f1c              # double 3.7437459999999998
	.quad	0x401bf35b0bbf50e3              # double 6.9876519999999998
	.quad	0x3ff5dcef240fa9c1              # double 1.366439
	.quad	0x401ef439de481f54              # double 7.7385020000000004
	.quad	0x4021a144028e4fb9              # double 8.8149719999999991
	.quad	0x40184e5abc0e38a8              # double 6.0765180000000001
	.quad	0x401d41e4b44a1f08              # double 7.3143489999999999
	.quad	0x40222f3215fcc187              # double 9.0921789999999998
	.quad	0x40043e69270b06c4              # double 2.5304739999999999
	.quad	0x4007dbe9856a37ac              # double 2.9823789999999999
	.quad	0x401b368b9fdbd2fa              # double 6.803267
	.quad	0x3f85f5f0b28522ea              # double 0.010723
	.quad	0x401144ddb5525cc4              # double 4.3172519999999999
	.quad	0x400843854046412d              # double 3.032969
	.quad	0x4001c2aa9f7b5aea              # double 2.2200519999999999
	.quad	0x40217dfdcdf69878              # double 8.7460769999999997
	.quad	0x401583721d53cddd              # double 5.3783649999999996
	.quad	0x401e9aefb2aae297              # double 7.6513049999999998
	.quad	0x4022cf125dd095af              # double 9.4044369999999997
	.quad	0x4005ab11c6d1e109              # double 2.7085300000000001
	.quad	0x401e35a8155d5f57              # double 7.5523990000000003
	.quad	0x40064105186db50f              # double 2.7817479999999999
	.quad	0x400e6069e7fb267c              # double 3.7970769999999998
	.quad	0x40124fc9ff92f2b6              # double 4.5779189999999996
	.quad	0x3ffe9d26b723ee1c              # double 1.913367
	.quad	0x4003ed20afa2f05a              # double 2.4907849999999998
	.quad	0x4000adefc7a39820              # double 2.0849299999999999
	.quad	0x40150d1ed9dfdac7              # double 5.2628130000000004
	.quad	0x400212513b5bf6a1              # double 2.2589440000000001
	.quad	0x400f077681669ced              # double 3.878644
	.quad	0x3fe172c3009b3073              # double 0.54525900000000005
	.quad	0x401a3df58c08b75f              # double 6.5605070000000003
	.quad	0x3ffa7ee4e26d4802              # double 1.65598
	.quad	0x3feed68e820e6299              # double 0.96369099999999996
	.quad	0x40233929aa1d755c              # double 9.6116460000000003
	.quad	0x401c204c8bc9cd3e              # double 7.031542
	.quad	0x4013484a0e410b63              # double 4.820595
	.quad	0x3fde8a5ce5b4245f              # double 0.47719499999999998
	.quad	0x3ffae9888f861a61              # double 1.682015
	.quad	0x401ee05b39e279dd              # double 7.7190979999999997
	.quad	0x4003fe39713ad5bf              # double 2.499133
	.quad	0x40006f61672324c8              # double 2.0543849999999999
	.quad	0x3ff8fe49b1fab96f              # double 1.562082
	.quad	0x401f6daec4a4095f              # double 7.8571119999999998
	.quad	0x401c8c28b2a6b0d9              # double 7.1368739999999997
	.quad	0x400bb85f06f69446              # double 3.4650249999999998
	.quad	0x40195036c9c0a8d2              # double 6.3283339999999999
	.quad	0x401335fe974a3401              # double 4.8027290000000002
	.quad	0x40099061c79b34a4              # double 3.1954989999999999
	.quad	0x401144f227d028a2              # double 4.3173300000000001
	.quad	0x40149b59578a2a91              # double 5.1517080000000002
	.quad	0x400bfa93293d102c              # double 3.4973510000000001
	.quad	0x4020d35eb7457c0b              # double 8.4128319999999999
	.quad	0x40236ad234eb9a17              # double 9.7086349999999992
	.quad	0x3fc0f7b17ce52ded              # double 0.13255900000000001
	.quad	0x402161d8409e55c1              # double 8.691103
	.quad	0x3fe7d0f6273929ed              # double 0.74425799999999998
	.quad	0x400d5691a75cd0bb              # double 3.6672699999999998
	.quad	0x402130d477bbf940              # double 8.5953710000000001
	.quad	0x400b194face67d78              # double 3.387359
	.quad	0x400f2e2eb1c432ca              # double 3.8975499999999998
	.quad	0x3fc731a08bfc2225              # double 0.181202
	.quad	0x40077cf0b6b6e0d2              # double 2.9360059999999999
	.quad	0x40146f57b41bfbdf              # double 5.108733
	.quad	0x4020fcf3343fa2ad              # double 8.4940429999999996
	.quad	0x400872c40d0aaa7e              # double 3.056038
	.quad	0x401df64020817fc7              # double 7.4904789999999996
	.quad	0x4012248ba83f4eca              # double 4.5356889999999996
	.quad	0x402376ff9f87f024              # double 9.7324190000000001
	.quad	0x40136fed20296b33              # double 4.8593029999999997
	.quad	0x40099d9018e75793              # double 3.2019350000000002
	.quad	0x401eba333764f11b              # double 7.6818359999999996
	.quad	0x400b9794a6eb91b4              # double 3.449014
	.quad	0x4017b686a4ca4f44              # double 5.928248
	.quad	0x400fa9fcf3dc054f              # double 3.958002
	.quad	0x4002d894812be48a              # double 2.3557519999999998
	.quad	0x40181a57214f0521              # double 6.0257230000000002
	.quad	0x4010b3e920c069e8              # double 4.175694
	.quad	0x3fefbba12b5e529c              # double 0.99165400000000003
	.quad	0x4010c9817b95a294              # double 4.1967829999999999
	.quad	0x4023b73cf70153bd              # double 9.8578869999999998
	.quad	0x3fce9ab29e4d5d81              # double 0.239096
	.quad	0x40173b71b8aa0019              # double 5.8080509999999999
	.quad	0x3ff82554b8bef8cf              # double 1.5091140000000001
	.quad	0x40144aeab7995ee1              # double 5.0731609999999998
	.quad	0x40062e12e83a109d              # double 2.772497
	.quad	0x401cdabf33871609              # double 7.2136199999999997
	.quad	0x3ff94996b76709fa              # double 1.5804659999999999
	.quad	0x400e5ee807bbb624              # double 3.796341
	.quad	0x3fd089a88ace24bc              # double 0.25840200000000002
	.quad	0x3feecb2745bf26f2              # double 0.96229900000000002
	.quad	0x4011c54c122749f1              # double 4.4426730000000001
	.quad	0x4011bb6bf444e0db              # double 4.4330290000000003
	.quad	0x400389fcf3dc054f              # double 2.442377
	.quad	0x40211ccfaeff5c6c              # double 8.5562719999999998
	.quad	0x401e4bda5119ce07              # double 7.5740749999999996
	.quad	0x40177de26916440f              # double 5.8729339999999999
	.quad	0x40006b54e2b063e0              # double 2.0524079999999998
	.quad	0x3ff5a2d6238da3c2              # double 1.352255
	.quad	0x402169a8cdea033e              # double 8.7063659999999992
	.quad	0x401edd5f138bcdff              # double 7.716183
	.quad	0x40231d35653c9abb              # double 9.5570479999999999
	.quad	0x3ff3ee2c98e53eb4              # double 1.2456480000000001
	.quad	0x401eacae642bf983              # double 7.6686339999999999
	.quad	0x401fb3f0bae89eba              # double 7.9257229999999996
	.quad	0x3ff28958d9b5e95b              # double 1.1585319999999999
	.quad	0x402308d10f51ac9b              # double 9.51722
	.quad	0x401a45daad601ffb              # double 6.5682169999999998
	.quad	0x40202b111f0c34c2              # double 8.0841150000000006
	.quad	0x4000976d5497310a              # double 2.0739390000000002
	.quad	0x400548cdea033e79              # double 2.6605490000000001
	.quad	0x3fe41f90539fba45              # double 0.628853
	.quad	0x4020da0c6b484d77              # double 8.4258760000000006
	.quad	0x400824ba94bbe447              # double 3.0179339999999999
	.quad	0x400c5cfb3311a544              # double 3.545401
	.quad	0x4016be6c4c5974e6              # double 5.6859599999999997
	.quad	0x401b2b677f6b1a2a              # double 6.7923869999999997
	.quad	0x4021c55bccaf709b              # double 8.8854659999999992
	.quad	0x401029ef5232d2bb              # double 4.0409519999999999
	.quad	0x4012a6317268d328              # double 4.6622979999999998
	.quad	0x4011e5df6555c52e              # double 4.4744849999999996
	.quad	0x4005882f944241c4              # double 2.691497
	.quad	0x4019c21101b00368              # double 6.4395179999999996
	.quad	0x40204b0bbf50e347              # double 8.1465739999999993
	.quad	0x400958409e55c0fd              # double 3.1680920000000001
	.quad	0x3fa546f587d6f976              # double 0.041556999999999997
	.quad	0x3ff17c69728a6117              # double 1.0928739999999999
	.quad	0x401a4996744b2b77              # double 6.5718629999999996
	.quad	0x401bc64388ebcc6c              # double 6.9436169999999997
	.quad	0x400fa8e581cf7879              # double 3.9574690000000001
	.quad	0x4004ea8c9b845565              # double 2.6145260000000001
	.quad	0x40060787485e3da3              # double 2.753676
	.quad	0x4017d4d983947497              # double 5.9578610000000003
	.quad	0x401f1875d56f32be              # double 7.7738870000000002
	.quad	0x40066d44dca8e2e3              # double 2.8033540000000001
	.quad	0x3ff1ca137f38c543              # double 1.1118349999999999
	.quad	0x40157bd6a593a2e0              # double 5.3709360000000004
	.quad	0x4020b2f61ed5ae1d              # double 8.3495340000000002
	.quad	0x40084b5781c714fd              # double 3.036788
	.quad	0x40060b1f687b139d              # double 2.7554310000000002
	.quad	0x402238ed3d859c8d              # double 9.1111850000000008
	.quad	0x401c82dc2b0ea183              # double 7.1277929999999996
	.quad	0x40182504c48adeec              # double 6.0361510000000003
	.quad	0x400d7126e978d4fe              # double 3.68025
	.quad	0x401683193f6c269a              # double 5.6280260000000002
	.quad	0x40085bbc6eb0b7c3              # double 3.0447929999999999
	.quad	0x401bddb2b346130a              # double 6.9665020000000002
	.quad	0x4007ba7221858bc6              # double 2.9660380000000002
	.quad	0x40092bd2b6f19935              # double 3.146398
	.quad	0x40236ebc621b7e0b              # double 9.7162810000000003
	.quad	0x402230c9d9d3458d              # double 9.0952900000000003
	.quad	0x4022f551d68c692f              # double 9.4791399999999992
	.quad	0x40074e8c0485a0be              # double 2.9133529999999999
	.quad	0x40211eb95e5aff2a              # double 8.5600079999999998
	.quad	0x402297633ce63a5c              # double 9.2956789999999998
	.quad	0x401229ff92f2b66b              # double 4.5410139999999997
	.quad	0x3ff5ee2867275686              # double 1.370644
	.quad	0x40211748c2e770bd              # double 8.545477
	.quad	0x40192d1bf7ad4b27              # double 6.2940519999999998
	.quad	0x400be9320d9945b7              # double 3.4888650000000001
	.quad	0x400257b28954a7f8              # double 2.292821
	.quad	0x40119da3c21187e8              # double 4.4039450000000002
	.quad	0x4020fec0724b76f7              # double 8.4975620000000003
	.quad	0x400f8cca2db61bb0              # double 3.9437449999999998
	.quad	0x40217fc6327ed84d              # double 8.7495589999999996
	.quad	0x400788ae74f2f124              # double 2.9417390000000001
	.quad	0x400a91fddebd9019              # double 3.321285
	.quad	0x3ff35e82d7b634db              # double 1.210574
	.quad	0x3ff52a7ef9db22d1              # double 1.322875
	.quad	0x40212dfc3b4f6167              # double 8.5898149999999998
	.quad	0x3fe32ce24bba12b6              # double 0.59922900000000001
	.quad	0x3fee8abd5dc40075              # double 0.95443599999999995
	.quad	0x3ff402c0a4a05dd9              # double 1.250672
	.quad	0x3fee475a31a4bdba              # double 0.94621
	.quad	0x400535d701d9f4d3              # double 2.6512889999999998
	.quad	0x4023dbd987c6327f              # double 9.9293940000000002
	.quad	0x4023de9f05ea24cc              # double 9.9348069999999992
	.quad	0x3fd9be37de939eae              # double 0.40223500000000001
	.quad	0x4019812be48a58b4              # double 6.376144
	.quad	0x401d0bcdfefbf402              # double 7.2615280000000002
	.quad	0x3ff5cea4a8c154ca              # double 1.3629500000000001
	.quad	0x3ffaa503fb374363              # double 1.665287
	.quad	0x4015f2de00d1b717              # double 5.4871749999999997
	.quad	0x3ff1bb784662bae0              # double 1.1082689999999999
	.quad	0x401064e1e71044f2              # double 4.0985180000000003
	.quad	0x400c346a1a500d5f              # double 3.5255930000000002
	.quad	0x3ffc881f53825e14              # double 1.7832330000000001
	.quad	0x401f5ab96f21f6cb              # double 7.8385980000000001
	.quad	0x4023b9bdc69f8c22              # double 9.8627760000000002
	.quad	0x40153f5f0b28522f              # double 5.3118860000000003
	.quad	0x4020dcf4623d0bfa              # double 8.4315519999999999
	.quad	0x3ffdd635610adcd3              # double 1.864797
	.quad	0x40227c1e57d9dba9              # double 9.2424189999999999
	.quad	0x40161d03968d759f              # double 5.5283340000000001
	.quad	0x402188e864020818              # double 8.767398
	.quad	0x401aa82491afc04d              # double 6.6642020000000004
	.quad	0x4014f121ee675148              # double 5.2354810000000001
	.quad	0x4023508d08919ef9              # double 9.6573259999999994
	.quad	0x3feb1908e581cf78              # double 0.84680599999999995
	.quad	0x401af8487b99d452              # double 6.742464
	.quad	0x40227c3675ddd2af              # double 9.2426030000000008
	.quad	0x40236d6d3b6cbd98              # double 9.7137239999999991
	.quad	0x4018b182a9930be1              # double 6.1733500000000001
	.quad	0x401b6146e4c0df59              # double 6.8449970000000002
	.quad	0x401af5be1a826245              # double 6.7399829999999996
	.quad	0x400fb9991361dc94              # double 3.965624
	.quad	0x401d25b39e279dd4              # double 7.2868180000000002
	.quad	0x400a28d08919ef95              # double 3.2699289999999999
	.quad	0x401eb45cfede97d0              # double 7.6761359999999996
	.quad	0x40173f1800a7c5ac              # double 5.8116149999999998
	.quad	0x400b94384ba0e842              # double 3.4473729999999998
	.quad	0x40197b65ecc3e319              # double 6.3705059999999998
	.quad	0x4017177ea1c68ec5              # double 5.7729439999999999
	.quad	0x401ad5b63d3e4ef0              # double 6.7087029999999999
	.quad	0x401f26238da3c212              # double 7.7872450000000004
	.quad	0x40118013660e51d2              # double 4.3750739999999997
	.quad	0x3fec8f345069a4df              # double 0.89248099999999997
	.quad	0x401b9545c78a6dad              # double 6.8957740000000003
	.quad	0x40206e86e7e62dc7              # double 8.2158730000000002
	.quad	0x3ffa81fc8f32378b              # double 1.6567350000000001
	.quad	0x4014db8ed1bf7ad5              # double 5.2144120000000003
	.quad	0x40002b2bfdb4cc25              # double 2.02108
	.quad	0x4019f56323bbc6eb              # double 6.489636
	.quad	0x40072aa8650e7792              # double 2.895829
	.quad	0x4006ad26fa3fcc9f              # double 2.8345470000000001
	.quad	0x40214a5c1c6088d7              # double 8.6452340000000003
	.quad	0x40237799c38b04ab              # double 9.7335949999999993
	.quad	0x40238d83a53b8e4c              # double 9.7763950000000008
	.quad	0x3ffec6ad2dcb1466              # double 1.923505
	.quad	0x3ffa5569f4906035              # double 1.645853
	.quad	0x4023902a12f90108              # double 9.7815709999999995
	.quad	0x40167f5b5fa22707              # double 5.6243720000000001
	.quad	0x3ffc421d10b1feeb              # double 1.766141
	.quad	0x401daf1ed17c5ef6              # double 7.4210159999999998
	.quad	0x401d4628027d88c2              # double 7.3185120000000001
	.quad	0x402332ca148ba83f              # double 9.5991979999999994
	.quad	0x3ff6fe48a58b3f64              # double 1.4370810000000001
	.quad	0x3feb94163779e9d1              # double 0.86182700000000001
	.quad	0x3ffb71715c63ae25              # double 1.7151959999999999
	.quad	0x401f90010c6f7a0b              # double 7.8906289999999996
	.quad	0x4001a116ebd4cfd1              # double 2.2036570000000002
	.quad	0x40152c77574f722e              # double 5.2934239999999999
	.quad	0x4008888509bf9c63              # double 3.0666600000000002
	.quad	0x3fdfbff04577d955              # double 0.49608999999999998
	.quad	0x401ed0ffda4052d6              # double 7.7041009999999996
	.quad	0x401d02ff8ec0f883              # double 7.2529279999999998
	.quad	0x401b5f06b37867f1              # double 6.8427990000000003
	.quad	0x4020b055b8993922              # double 8.3444040000000008
	.quad	0x3ffef9f23465625a              # double 1.9360219999999999
	.quad	0x400d05ffa3b9ae0c              # double 3.627929
	.quad	0x4010ac115df6555c              # double 4.1680349999999997
	.quad	0x4019f67ad8e43244              # double 6.4907029999999999
	.quad	0x4015800a393ee5ef              # double 5.3750390000000001
	.quad	0x3fe759c6b0531983              # double 0.72970900000000005
	.quad	0x3fe3e175d13d74d6              # double 0.62127200000000005
	.quad	0x3feb88bb906466b2              # double 0.86044100000000001
	.quad	0x40019ef416bdb1a7              # double 2.2026140000000001
	.quad	0x401e47b45f17bd8c              # double 7.5700240000000001
	.quad	0x401151eabbcb1cc9              # double 4.3299969999999997
	.quad	0x40210c00fba8826b              # double 8.5234450000000006
	.quad	0x401eac5ac471b478              # double 7.6683149999999997
	.quad	0x40209deb0fadf2ed              # double 8.3084340000000001
	.quad	0x3fde2938de6ddf01              # double 0.47126600000000002
	.quad	0x4016884a9478c869              # double 5.6330970000000002
	.quad	0x40098d72ffd1dcd7              # double 3.194067
	.quad	0x40196d7d3910c2c6              # double 6.3569230000000001
	.quad	0x3fc4178f68be2f7b              # double 0.156969
	.quad	0x3ffa8a36199780bb              # double 1.6587430000000001
	.quad	0x4020095a4acf312b              # double 8.0182669999999998
	.quad	0x40208d714b9cb685              # double 8.2762550000000008
	.quad	0x400a5bf162ae4b02              # double 3.2948940000000002
	.quad	0x4013ab48d3ae685e              # double 4.9172700000000003
	.quad	0x4010a95c42203600              # double 4.1653909999999996
	.quad	0x4022256fda836eb5              # double 9.0731190000000002
	.quad	0x40029b256ffc115e              # double 2.325755
	.quad	0x4020ebfd0d0678c0              # double 8.460915
	.quad	0x401c70d51f81a587              # double 7.110188
	.quad	0x4017c0b0f27bb2ff              # double 5.9381750000000002
	.quad	0x402070c9b845564b              # double 8.2202889999999993
	.quad	0x40156063e07a28bb              # double 5.344131
	.quad	0x401f0e63a5c1c609              # double 7.7640520000000003
	.quad	0x400f20ccff21b3af              # double 3.891016
	.quad	0x4016c692f6e8294a              # double 5.6939200000000003
	.quad	0x3ffb16f75d9a0f0a              # double 1.6931069999999999
	.quad	0x3ff562ef4e0114d3              # double 1.336654
	.quad	0x401096e82949a565              # double 4.1473699999999996
	.quad	0x4002d7c6759ab6d0              # double 2.355359
	.quad	0x3fdd6b1e5c0b9991              # double 0.45966299999999999
	.quad	0x3fc0a38327674d16              # double 0.12998999999999999
	.quad	0x3ffc7b07075b3e14              # double 1.780036
	.quad	0x4020e164e8b7e4de              # double 8.4402229999999996
	.quad	0x40092176ddaceee1              # double 3.14134
	.quad	0x401c24abe6a337a8              # double 7.035812
	.quad	0x401d40e8c8abd5dc              # double 7.3133879999999998
	.quad	0x402222e85b9e8c48              # double 9.0681790000000007
	.quad	0x400fe93e1c9b413a              # double 3.9888880000000002
	.quad	0x401a86113404ea4b              # double 6.6309250000000004
	.quad	0x4005b556084a515d              # double 2.713543
	.quad	0x40186b1a2a4db164              # double 6.1045920000000002
	.quad	0x4021912b5e529bae              # double 8.7835339999999995
	.quad	0x40099dffc5479d4e              # double 3.2021480000000002
	.quad	0x402207623076c051              # double 9.0144210000000005
	.quad	0x400648f32378ab0d              # double 2.7856200000000002
	.quad	0x4020ea04f2ae07e6              # double 8.4570690000000006
	.quad	0x402200e5e679463d              # double 9.001754
	.quad	0x4021bac647778dd6              # double 8.8647939999999998
	.quad	0x4022f3df6db940ff              # double 9.4763140000000003
	.quad	0x3fefa49c2c1b10fd              # double 0.98884399999999994
	.quad	0x3ffe39c1f85d744f              # double 1.8891009999999999
	.quad	0x3ff1cb75ea67e847              # double 1.1121730000000001
	.quad	0x3ff563f8982cb210              # double 1.3369070000000001
	.quad	0x40060a8112ba16e8              # double 2.7551290000000002
	.quad	0x4015aef240fa9c13              # double 5.4208460000000001
	.quad	0x401309207d4e0978              # double 4.7589129999999997
	.quad	0x4018d6950fc71d60              # double 6.2095529999999997
	.quad	0x40037221858bc59c              # double 2.4307280000000002
	.quad	0x401e83f5f91600f3              # double 7.6288679999999997
	.quad	0x4020ea786c22680a              # double 8.4579500000000003
	.quad	0x3ffaf6bc1eff9f88              # double 1.685238
	.quad	0x4022ee3b03e20cd0              # double 9.4652940000000001
	.quad	0x401372b734b51373              # double 4.8620270000000003
	.quad	0x4001eac96cc5fbf8              # double 2.2396419999999999
	.quad	0x4020645dc8323359              # double 8.1960280000000001
	.quad	0x40212c080f98fa37              # double 8.5859989999999993
	.quad	0x3ffb15347a5b0ff1              # double 1.692677
	.quad	0x402146feb4a6655a              # double 8.6386620000000001
	.quad	0x4010ba5269595fee              # double 4.1819550000000003
	.quad	0x4021c9d25aab4741              # double 8.894183
	.quad	0x4013940895d0b73d              # double 4.8945639999999999
	.quad	0x400dabbfd71b0468              # double 3.7088619999999999
	.quad	0x401a3a3ec02f2f98              # double 6.5568799999999996
	.quad	0x4023fd6c93a71151              # double 9.9949689999999993
	.quad	0x401f6fd438d1d8a5              # double 7.8592079999999997
	.quad	0x4006d8bc59b8023a              # double 2.8558279999999998
	.quad	0x402061de26916441              # double 8.1911480000000001
	.quad	0x4010c14983d79075              # double 4.1887569999999998
	.quad	0x401123b96af038e3              # double 4.2848870000000003
	.quad	0x4003dd34df04ddb5              # double 2.4830109999999999
	.quad	0x400b85bf26f1dc51              # double 3.4403060000000001
	.quad	0x40114a960b6f9fcb              # double 4.322838
	.quad	0x40125f7403dddb12              # double 4.593216
	.quad	0x40146684cf0739b0              # double 5.1001159999999999
	.quad	0x40193ac57e23f24e              # double 6.3073940000000004
	.quad	0x401465a5fc7e6b40              # double 5.0992660000000001
	.quad	0x40180a697aeddce8              # double 6.0101680000000002
	.quad	0x400bdfddebd9018e              # double 3.4843099999999998
	.quad	0x401439ec2ce46499              # double 5.056565
	.quad	0x40121b5bf6a0dbad              # double 4.5267179999999998
	.quad	0x402239754b05b7d0              # double 9.1122230000000002
	.quad	0x3ffeb3abc947064f              # double 1.918865
	.quad	0x401f21f7d73c9258              # double 7.7831720000000004
	.quad	0x4023fdb8bac710cb              # double 9.9955499999999997
	.quad	0x400f6c8d5c74751d              # double 3.9280040000000001
	.quad	0x3ff663571d1d4739              # double 1.3992530000000001
	.quad	0x4012febedfa43fe6              # double 4.7487750000000002
	.quad	0x3ffc836c9c0a8d22              # double 1.7820860000000001
	.quad	0x401bba5f84cad57c              # double 6.9320050000000002
	.quad	0x4022cdc853c14834              # double 9.4019189999999994
	.quad	0x400bfbdb5d894813              # double 3.4979770000000001
	.quad	0x401b691b3f20a73f              # double 6.8526429999999996
	.quad	0x40164396073de1e3              # double 5.5660020000000001
	.quad	0x4023734070329803              # double 9.7251010000000004
	.quad	0x40152d6e47dc37a4              # double 5.2943660000000001
	.quad	0x4023c3504c48adef              # double 9.8814720000000004
	.quad	0x40211283d35eb745              # double 8.5361619999999991
	.quad	0x4019ba6506141637              # double 6.4320259999999996
	.quad	0x400254f7a919695e              # double 2.2914880000000002
	.quad	0x401443e1437c5693              # double 5.0662890000000003
	.quad	0x3ff4079e59f2ba9d              # double 1.25186
	.quad	0x400324bfd2e94680              # double 2.392944
	.quad	0x3ff1c80d801b4352              # double 1.1113409999999999
	.quad	0x401604a6eb91b3f2              # double 5.504543
	.quad	0x401fa81e03f70585              # double 7.9141769999999995
	.quad	0x3fef63eaf6837f7c              # double 0.98094700000000001
	.quad	0x4020c158fb43d89d              # double 8.3776320000000002
	.quad	0x3fe89ac36544fe37              # double 0.76889200000000002
	.quad	0x4022897fa5d28d00              # double 9.2685519999999997
	.quad	0x401279dbec2480e9              # double 4.6190030000000002
	.quad	0x3fd36d2ed783dff4              # double 0.303539
	.quad	0x400555a858793dd9              # double 2.6668249999999998
	.quad	0x401dbe59f2ba9d1f              # double 7.4358899999999997
	.quad	0x401a0a9ac36544fe              # double 6.5103559999999998
	.quad	0x401fdeebb341e14c              # double 7.9676960000000001
	.quad	0x4017d89fc6da4485              # double 5.9615470000000004
	.quad	0x4020f64ead0c3d25              # double 8.4810689999999997
	.quad	0x3ffb8e0008637bd0              # double 1.7221679999999999
	.quad	0x40083d909f1f1498              # double 3.0300609999999999
	.quad	0x402068079a2834d2              # double 8.2031829999999992
	.quad	0x4021fda07b352a84              # double 8.9953649999999996
	.quad	0x3feb00f345069a4e              # double 0.843866
	.quad	0x3fe86991ff7164c7              # double 0.76288699999999998
	.quad	0x401147503b81b64e              # double 4.319642
	.quad	0x40227e90ff972474              # double 9.2471999999999994
	.quad	0x3fd15d1c3ac929aa              # double 0.27130799999999999
	.quad	0x4016bf47304039ac              # double 5.686795
	.quad	0x400cde2bcf91a32b              # double 3.608482
	.quad	0x401f04fb549f9485              # double 7.7548649999999996
	.quad	0x3fbf65dbfceb7889              # double 0.12264799999999999
	.quad	0x400d9be878fabda1              # double 3.7011270000000001
	.quad	0x4004cdb2702a3487              # double 2.600438
	.quad	0x4007a26aa8eb4635              # double 2.9543050000000002
	.quad	0x4021b8f81e8a2ec3              # double 8.8612680000000008
	.quad	0x400566612839042e              # double 2.6749900000000002
	.quad	0x400fb9513f8db489              # double 3.965487
	.quad	0x4023224723aafff3              # double 9.5669489999999992
	.quad	0x4012671001d5c316              # double 4.6006470000000004
	.quad	0x3ff736933a0407cc              # double 1.4508239999999999
	.quad	0x401349b77c02afde              # double 4.8219890000000003
	.quad	0x4004de4c51116a8c              # double 2.6085440000000002
	.quad	0x4022ac3dee781840              # double 9.3364100000000007
	.quad	0x3ff507192ea52ef9              # double 1.314233
	.quad	0x401fe4dca8e2e2b9              # double 7.9734980000000001
	.quad	0x400a424894c447c3              # double 3.282365
	.quad	0x40079ef06b37867f              # double 2.952607
	.quad	0x4018571cda2b5a21              # double 6.0850710000000001
	.quad	0x401a8dccea28fe26              # double 6.638477
	.quad	0x401a424d4cb9ecf6              # double 6.5647479999999998
	.quad	0x4006b3f8db489093              # double 2.8378770000000002
	.quad	0x402149c714fce747              # double 8.6440970000000004
	.quad	0x40064a8650e77920              # double 2.7863889999999998
	.quad	0x40047a4723aafff3              # double 2.5597059999999998
	.quad	0x401ec1e57d9dba91              # double 7.6893520000000004
	.quad	0x4018981f53825e14              # double 6.1485570000000003
	.quad	0x4006768d759ee88e              # double 2.807887
	.quad	0x40229e3c74fb54a0              # double 9.3090550000000007
	.quad	0x3fb8cdc8754f3776              # double 0.096890000000000003
	.quad	0x401a33a797891e21              # double 6.5504439999999997
	.quad	0x401c621858bc59b8              # double 7.095796
	.quad	0x400e37c1376d5497              # double 3.7772239999999999
	.quad	0x4019b7f455a7d242              # double 6.4296430000000004
	.quad	0x4020bfa355043e53              # double 8.3742929999999998
	.quad	0x40211c197e564734              # double 8.5548819999999992
	.quad	0x401799fe43675ddd              # double 5.9003839999999999
	.quad	0x401a7fe08aefb2ab              # double 6.6248800000000001
	.quad	0x40022c6583e8576d              # double 2.2716780000000001
	.quad	0x40131f50a02b8412              # double 4.7805809999999997
	.quad	0x4019f033a4723ab0              # double 6.484572
	.quad	0x400ff2b90a782907              # double 3.9935170000000002
	.quad	0x3ffd04f8f8a4c1ec              # double 1.813714
	.quad	0x400d6dfbd6a593a3              # double 3.6787030000000001
	.quad	0x401a2a88effe2a3d              # double 6.5415380000000001
	.quad	0x401fef53c579f234              # double 7.9837179999999996
	.quad	0x401ad92ff4ba51a0              # double 6.712097
	.quad	0x402390e4755ffe6d              # double 9.7829929999999993
	.quad	0x401233f2d3c792d1              # double 4.5507309999999999
	.quad	0x3f97cd466f5019f4              # double 0.023244000000000001
	.quad	0x3fd4f3eccc469510              # double 0.32738800000000001
	.quad	0x401b2ff79c842fa5              # double 6.796843
	.quad	0x4015b33d6c721922              # double 5.4250389999999999
	.quad	0x4021712f09d8c6d6              # double 8.7210619999999999
	.quad	0x400dc2a1b5c7cd8a              # double 3.7200350000000002
	.quad	0x400adbf162ae4b02              # double 3.3573940000000002
	.quad	0x401a65e6ff7dfa01              # double 6.5995140000000001
	.quad	0x4020617e77d523b3              # double 8.1904179999999993
	.quad	0x401b7a81dc0db270              # double 6.8696359999999999
	.quad	0x4006cbebe1650a46              # double 2.8495710000000001
	.quad	0x3ff64ee49f51697f              # double 1.394261
	.quad	0x40120e3f359ff4fd              # double 4.5139129999999996
	.quad	0x401de5a6c5d206c8              # double 7.4742689999999996
	.quad	0x400c1d9a0f0a5eff              # double 3.5144540000000002
	.quad	0x3fc0de33269df97b              # double 0.13178100000000001
	.quad	0x4017bdd97f62b6ae              # double 5.9353999999999996
	.quad	0x400779bfdf7e8039              # double 2.9344480000000002
	.quad	0x4006a81e4712e408              # double 2.8320889999999999
	.quad	0x4009c5436b8f9b13              # double 3.22132
	.quad	0x3ffc651c193b3a69              # double 1.7746850000000001
	.quad	0x401bebc33f85510d              # double 6.9802369999999998
	.quad	0x40182cb252ce032e              # double 6.0436490000000003
	.quad	0x4011c9d8409e55c1              # double 4.447114
	.quad	0x3ff2bb01c92ddbdb              # double 1.1706559999999999
	.quad	0x401abeee957470eb              # double 6.6864569999999999
	.quad	0x40026730c67168f9              # double 2.300386
	.quad	0x4001c3621fafc8b0              # double 2.220402
	.quad	0x400f2a8a82a5614e              # double 3.895772
	.quad	0x400242cd39da1661              # double 2.2826179999999998
	.quad	0x401164e1e71044f2              # double 4.3485180000000003
	.quad	0x401520d2806af46b              # double 5.2820530000000003
	.quad	0x40144fbb517a4617              # double 5.0778629999999998
	.quad	0x4017a008e9b38d61              # double 5.9062840000000003
	.quad	0x3fc7c4c9c90c4dec              # double 0.185693
	.quad	0x40121e4d5d80e497              # double 4.5295920000000001
	.quad	0x4016ff97edc7ef17              # double 5.7496029999999996
	.quad	0x40201ef0ae536502              # double 8.0604300000000002
	.quad	0x400b642e9899bf59              # double 3.4239169999999999
	.quad	0x401a816ca46e08f2              # double 6.6263909999999999
	.quad	0x3ff9425f202107b8              # double 1.5787040000000001
	.quad	0x3fe8eb8b69552e30              # double 0.77875300000000003
	.quad	0x401bf33acd5b6806              # double 6.9875290000000003
	.quad	0x4023ee07a28bb0a3              # double 9.9649020000000003
	.quad	0x4002cb2e9ccb7d41              # double 2.3492099999999998
	.quad	0x3fd2b04ee7c49fd8              # double 0.29201100000000002
	.quad	0x40128752977c88e8              # double 4.6321510000000004
	.quad	0x400c5a21ea359360              # double 3.5440100000000001
	.quad	0x401905c9a34ca0c3              # double 6.2556520000000004
	.quad	0x40151f901083dbc2              # double 5.2808229999999998
	.quad	0x4010ff359ff4fd6d              # double 4.2492279999999996
	.quad	0x4023ffd82773e250              # double 9.9996960000000001
	.quad	0x40202277a2cecc81              # double 8.0673189999999995
	.quad	0x3fe902539756c93a              # double 0.78153399999999995
	.quad	0x4017e8826aa8eb46              # double 5.9770599999999998
	.quad	0x40139a8f7db6e504              # double 4.900938
	.quad	0x401f741aac53b081              # double 7.8633829999999997
	.quad	0x3ff473eff1950332              # double 1.278305
	.quad	0x4016f1183b60285f              # double 5.7354440000000002
	.quad	0x400a3fba450acc0c              # double 3.2811170000000001
	.quad	0x4012ac16df3f9618              # double 4.668056
	.quad	0x40228aa1f8e3ac0c              # double 9.2707669999999993
	.quad	0x401e10a808c8259e              # double 7.5162659999999999
	.quad	0x400c5532e7b3d8e0              # double 3.541601
	.quad	0x3ff72cc4ef88b978              # double 1.4484300000000001
	.quad	0x4023255b4677b396              # double 9.5729620000000004
	.quad	0x401fdb1b36bd2b6f              # double 7.9639709999999999
	.quad	0x4014e18ce2d1f1d0              # double 5.2202640000000002
	.quad	0x40217088b545c78a              # double 8.7197929999999992
	.quad	0x401b71aa821f2991              # double 6.861002
	.quad	0x401adcb81733226c              # double 6.7155459999999998
	.quad	0x40102a9fbe76c8b4              # double 4.0416249999999998
	.quad	0x401602f87ad080b6              # double 5.5029009999999996
	.quad	0x3fb4202d9cf13cef              # double 0.078616000000000005
	.quad	0x3ff1a455eaee2004              # double 1.1026210000000001
	.quad	0x40146dc054ef459e              # double 5.1071790000000004
	.quad	0x40020bcad9ad85e0              # double 2.2557580000000002
	.quad	0x401a97fd82773e25              # double 6.648428
	.quad	0x401d5f42352eb5f6              # double 7.3430260000000001
	.quad	0x4020114ab1d4f9c2              # double 8.0337730000000001
	.quad	0x401813c3e74afd54              # double 6.0193019999999997
	.quad	0x40218ec7219220ff              # double 8.7788629999999994
	.quad	0x40191f166e008e9b              # double 6.2803589999999998
	.quad	0x40010b723ee1bd1f              # double 2.1305890000000001
	.quad	0x401486c3b927d45a              # double 5.1316059999999997
	.quad	0x4020162435696e59              # double 8.0432450000000006
	.quad	0x401971a975afaf86              # double 6.3609980000000004
	.quad	0x3fc5ac3eb7cbb3c8              # double 0.169319
	.quad	0x4022119e731d2e0e              # double 9.0344119999999997
	.quad	0x401aa5410f94c87a              # double 6.6613810000000004
	.quad	0x4006f4bdfd2630ec              # double 2.8695029999999999
	.quad	0x3fc69310129cbab6              # double 0.17636299999999999
	.quad	0x401f714bdfd2630f              # double 7.8606410000000002
	.quad	0x3ff2fdec5f394b7b              # double 1.186993
	.quad	0x401041d2e0e30447              # double 4.0642810000000003
	.quad	0x400ec774eebf65dc              # double 3.847391
	.quad	0x40146e820e629952              # double 5.1079179999999997
	.quad	0x401db30446b69db6              # double 7.4248209999999997
	.quad	0x4002bbe76c8b4396              # double 2.3417500000000002
	.quad	0x40214dfaca361998              # double 8.6523040000000009
	.quad	0x4018e5907d912557              # double 6.2241840000000002
	.quad	0x40203ae0c1765775              # double 8.1149959999999997
	.quad	0x401ed1001d5c3159              # double 7.7041019999999997
	.quad	0x4017efbc5de9c023              # double 5.9841170000000004
	.quad	0x3ff8bfc5479d4d83              # double 1.5468189999999999
	.quad	0x40110554b8bef8cf              # double 4.2552060000000003
	.quad	0x40105142f61ed5ae              # double 4.0793569999999999
	.quad	0x401710f1f57b41c0              # double 5.7665480000000002
	.quad	0x3fe3f9df548ecd8e              # double 0.62425200000000003
	.quad	0x4016190d5a5b9629              # double 5.5244650000000002
	.quad	0x400f5ea67e846a5d              # double 3.9212159999999998
	.quad	0x402243fc2224edf6              # double 9.1327829999999999
	.quad	0x40126887a8d64d7f              # double 4.6020799999999999
	.quad	0x401c9932d6ece13f              # double 7.1496079999999997
	.quad	0x40050cc46950fc72              # double 2.6312340000000001
	.quad	0x400e915ad106ee31              # double 3.8209740000000001
	.quad	0x40228b39e279dd3c              # double 9.2719260000000005
	.quad	0x40128e5eedcc20d5              # double 4.6390339999999997
	.quad	0x40195be33acd5b68              # double 6.339734
	.quad	0x4009ffc19c17225b              # double 3.2498809999999998
	.quad	0x3fd1547e06961c37              # double 0.27078200000000002
	.quad	0x401872074ea8da7f              # double 6.1113559999999998
	.quad	0x3ffefbaecd07852f              # double 1.9364459999999999
	.quad	0x3ff0b52da98676a7              # double 1.044233
	.quad	0x401812f7b17ce52e              # double 6.0185230000000001
	.quad	0x3fa7418d6909aed5              # double 0.045421999999999997
	.quad	0x3ff397d06bbdbe3c              # double 1.224564
	.quad	0x4021d496cc5fbf83              # double 8.9152129999999996
	.quad	0x400b81b7e0ac7da2              # double 3.438339
	.quad	0x401967214f0520d1              # double 6.3507129999999998
	.quad	0x4020b8196d8f4f94              # double 8.3595690000000004
	.quad	0x40189adddf43c7d6              # double 6.1512370000000001
	.quad	0x400caae3a3a8e714              # double 3.5834419999999998
	.quad	0x4005d39a7c17a893              # double 2.7283219999999999
	.quad	0x4006c9f94855da27              # double 2.8486199999999999
	.quad	0x4015e90abb44e50c              # double 5.4775799999999997
	.quad	0x4020bf3f748a1598              # double 8.3735309999999998
	.quad	0x4007f82b1f687b14              # double 2.9961760000000002
	.quad	0x4017a0470a808c82              # double 5.9065209999999997
	.quad	0x4009fe835dedf1e1              # double 3.2492740000000002
	.quad	0x3ffd2d3f9e7b80aa              # double 1.823547
	.quad	0x4021a490a350d280              # double 8.8214159999999993
	.quad	0x40057850df15a4ad              # double 2.683748
	.quad	0x4011f0f7fcfc3f81              # double 4.4853209999999999
	.quad	0x40220d1eb851eb85              # double 9.0256249999999998
	.quad	0x40009c486ad2dcb1              # double 2.0763099999999999
	.quad	0x4020e0f3eccc4695              # double 8.4393609999999999
	.quad	0x4015233333333333              # double 5.2843749999999998
	.quad	0x3fe614ec204f2ae0              # double 0.69005399999999995
	.quad	0x401ced916872b021              # double 7.2320000000000002
	.quad	0x40236b65881a1555              # double 9.709759
	.quad	0x3ff030d51f81a587              # double 1.011922
	.quad	0x40209f98b71b8aa0              # double 8.311712
	.quad	0x401c43f4eca686e8              # double 7.0663640000000001
	.quad	0x4010dd6777079e5a              # double 4.216215
	.quad	0x401fc65a14488c61              # double 7.9437030000000001
	.quad	0x3ff556d19dece571              # double 1.333696
	.quad	0x4020766772d5e072              # double 8.2312580000000004
	.quad	0x401c9d24180d3cff              # double 7.1534579999999997
	.quad	0x40119e64f54d1e97              # double 4.4046820000000002
	.quad	0x3ff4608398a65493              # double 1.273563
	.quad	0x401e112d3415b142              # double 7.5167739999999998
	.quad	0x4003161ed5ae1cde              # double 2.3858009999999998
	.quad	0x401d764bec679cc7              # double 7.3655239999999997
	.quad	0x40134cb9ecf63800              # double 4.8249279999999999
	.quad	0x3ffaf631b584b1ab              # double 1.685106
	.quad	0x3ffc807357e670e3              # double 1.7813600000000001
	.quad	0x40203433b5393251              # double 8.1019570000000005
	.quad	0x401b9fa615a8deb1              # double 6.905907
	.quad	0x40067cbb3c81908e              # double 2.8109039999999998
	.quad	0x3ffde01cd5f99c39              # double 1.8672150000000001
	.quad	0x4009df9c62a1b5c8              # double 3.2341850000000001
	.quad	0x401592cf0f9d2bf5              # double 5.3933679999999997
	.quad	0x3ff8c8f10a99b6f6              # double 1.549058
	.quad	0x40017b5aea3161a2              # double 2.1852320000000001
	.quad	0x401335553ef6b5d4              # double 4.8020829999999997
	.quad	0x400482df0d413123              # double 2.5639020000000001
	.quad	0x40221817763e4abe              # double 9.0470539999999993
	.quad	0x40218d579af1886e              # double 8.7760590000000001
	.quad	0x401d507182235b4f              # double 7.3285580000000001
	.quad	0x401082e40852b4d9              # double 4.1278230000000002
	.quad	0x4000da3c21187e7c              # double 2.10656
	.quad	0x4021fa3076c050be              # double 8.9886510000000008
	.quad	0x4021e373affb04ee              # double 8.9442419999999991
	.quad	0x4006da31a4bdba0a              # double 2.8565399999999999
	.quad	0x40079ca643cc07ab              # double 2.951489
	.quad	0x400f8a36199780bb              # double 3.9424860000000002
	.quad	0x3fd4afe60c38f367              # double 0.32323600000000002
	.quad	0x400ac710cb295e9e              # double 3.3472
	.quad	0x401b59f2ba9d1f60              # double 6.8378399999999999
	.quad	0x401ebc5154866a12              # double 7.6839040000000001
	.quad	0x401d67b80a9de8b4              # double 7.3512880000000003
	.quad	0x3fe90d413122b7bb              # double 0.78286800000000001
	.quad	0x40232669ced0b30b              # double 9.5750259999999993
	.quad	0x3ff4b9f340d4dc66              # double 1.295398
	.quad	0x40208cb09e98dcdb              # double 8.2747849999999996
	.quad	0x402206d0d49949e9              # double 9.0133120000000009
	.quad	0x4020a1e83e425aee              # double 8.3162249999999993
	.quad	0x3ff95c3dee781840              # double 1.5850200000000001
	.quad	0x400d4159817b95a3              # double 3.6569090000000002
	.quad	0x401b00b1feeb2d0a              # double 6.7506789999999999
	.quad	0x3ff9c8f648c7192f              # double 1.6115630000000001
	.quad	0x40033903211cb03a              # double 2.402838
	.quad	0x3ff48d844d013a93              # double 1.2845500000000001
	.quad	0x4007b000c9539b89              # double 2.9609390000000002
	.quad	0x4009082e87d2c7b9              # double 3.1289950000000002
	.quad	0x40028dfdef8487ba              # double 2.3193320000000002
	.quad	0x400a08e4fb97bb73              # double 3.254343
	.quad	0x400cb4e2b063e07a              # double 3.5883229999999999
	.quad	0x401a1b56b8737974              # double 6.5266979999999997
	.quad	0x4020d8b588e368f1              # double 8.4232600000000009
	.quad	0x40137495e17e34b9              # double 4.8638529999999998
	.quad	0x3ff4bb55ac03ff69              # double 1.295736
	.quad	0x3fd485e3da2f8bdf              # double 0.32067200000000001
	.quad	0x40236af2b66b6178              # double 9.7088830000000001
	.quad	0x3fe03f0dc768dfbd              # double 0.50769699999999995
	.quad	0x401e78626f60e0eb              # double 7.6175629999999996
	.quad	0x401d6bde82d7b635              # double 7.3553410000000001
	.quad	0x3fe86f177a7008a7              # double 0.76356100000000005
	.quad	0x4008d59791819d24              # double 3.1042930000000002
	.quad	0x400b832ebe596c83              # double 3.4390540000000001
	.quad	0x40239118a009f623              # double 9.7833909999999999
	.quad	0x3fe43b40b34e7686              # double 0.63223300000000004
	.quad	0x40155f7b17ce52df              # double 5.3432430000000002
	.quad	0x3fe7cbaf965b20b8              # double 0.743614
	.quad	0x401a6c6eb0b7c350              # double 6.6058909999999997
	.quad	0x402305347a5b0ff1              # double 9.5101659999999998
	.quad	0x401a1501e2584f4c              # double 6.5205149999999996
	.quad	0x400265061416377a              # double 2.299328
	.quad	0x4022ab7457c0b136              # double 9.3348720000000007
	.quad	0x40223e703afb7e91              # double 9.12195
	.quad	0x400fd005814940bc              # double 3.9765730000000001
	.quad	0x3fede030c23fab11              # double 0.93361700000000003
	.quad	0x3ff2e14f0520d131              # double 1.180007
	.quad	0x400f7e4b44a1f080              # double 3.9366669999999999
	.quad	0x4022901c2e33eff2              # double 9.2814650000000007
	.quad	0x401f047e49b1fab9              # double 7.7543879999999996
	.quad	0x401ca31f03d145d8              # double 7.1592979999999997
	.quad	0x40165470a808c826              # double 5.5824610000000003
	.quad	0x4015e0168b5cbff4              # double 5.4688359999999996
	.quad	0x400abd5bab21815a              # double 3.34246
	.quad	0x3fd437ef5a964e8b              # double 0.31591399999999997
	.quad	0x3ff30b545c78a6db              # double 1.190266
	.quad	0x3fa5ef8487b99d45              # double 0.042842999999999999
	.quad	0x40163b302f72b453              # double 5.5578010000000004
	.quad	0x401bc02107b78466              # double 6.9376259999999998
	.quad	0x400f1e76427c7c52              # double 3.8898739999999998
	.quad	0x401704f11b60ae97              # double 5.7548260000000004
	.quad	0x40139bbf0dc768e0              # double 4.9020960000000002
	.quad	0x3fe9bcf70153bd16              # double 0.80431699999999995
	.quad	0x3fedb5653c9abb02              # double 0.92839300000000002
	.quad	0x4020694bdfd2630f              # double 8.2056570000000004
	.quad	0x4023f6876e1deacd              # double 9.9815020000000007
	.quad	0x400f76ca46e08f21              # double 3.9330029999999998
	.quad	0x3ff96d8f4f93bc0a              # double 1.589248
	.quad	0x4009cc9d16fc9bc7              # double 3.2249089999999998
	.quad	0x3ff30af2d7f950b9              # double 1.1901729999999999
	.quad	0x4001e0a8d21bc127              # double 2.2346970000000002
	.quad	0x4012b225fa658c4c              # double 4.6739730000000002
	.quad	0x40148ee88df3732a              # double 5.1395590000000002
	.quad	0x4003d71327243138              # double 2.4800170000000001
	.quad	0x400b4baf102363b2              # double 3.4119549999999998
	.quad	0x3fdeb90ea9e6eeb7              # double 0.480045
	.quad	0x40214bdd97f62b6b              # double 8.6481750000000002
	.quad	0x401ea1ee675147f1              # double 7.6581359999999998
	.quad	0x40174daa0cae642c              # double 5.825844
	.quad	0x4022b07d0aed99cc              # double 9.3447040000000001
	.quad	0x402050d9945b6c37              # double 8.1579099999999993
	.quad	0x4013de04c0592104              # double 4.9668150000000004
	.quad	0x401cc18ce2d1f1d0              # double 7.1890140000000002
	.quad	0x4013d3fe9fadafd1              # double 4.9570259999999999
	.quad	0x400d35dedf1e0829              # double 3.6513040000000001
	.quad	0x40214490a350d280              # double 8.6339159999999993
	.quad	0x40238d5c31593e60              # double 9.7760940000000005
	.quad	0x4013eb9628cbd124              # double 4.9800649999999997
	.quad	0x40163acd184c2720              # double 5.557423
	.quad	0x4023058793dd97f6              # double 9.5107999999999997
	.quad	0x400872e1693c03bc              # double 3.0560939999999999
	.quad	0x4023574f93bc0a07              # double 9.6705290000000001
	.quad	0x401086451b93037d              # double 4.1311229999999997
	.quad	0x4012bb877ab32485              # double 4.6831339999999999
	.quad	0x401feec679cc74b8              # double 7.9831789999999998
	.quad	0x400fcd06fef7c244              # double 3.9751110000000001
	.quad	0x400f71d4f9c1f85d              # double 3.9305819999999998
	.quad	0x400191dabe27179c              # double 2.196218
	.quad	0x3fff242070b8cfc0              # double 1.9463200000000001
	.quad	0x40185dcd2d44dca9              # double 6.0916030000000001
	.quad	0x40205c5c78a6dacb              # double 8.1803930000000005
	.quad	0x400850329802c0a5              # double 3.0391590000000002
	.quad	0x40127915379fa97e              # double 4.6182449999999999
	.quad	0x4014f740c4156e26              # double 5.2414579999999997
	.quad	0x3fb46583e8576cce              # double 0.079673999999999994
	.quad	0x40118e78e1932d6f              # double 4.3891330000000002
	.quad	0x4020ab6d86ec17ec              # double 8.3348200000000005
	.quad	0x402346937d1fe64f              # double 9.6378439999999994
	.quad	0x401f6329802c0a4a              # double 7.846838
	.quad	0x3ffd9fb6134ce3de              # double 1.8514919999999999
	.quad	0x3fe4c74fb549f948              # double 0.64932999999999996
	.quad	0x401776b9c304ccee              # double 5.8659429999999997
	.quad	0x4000a5e3da2f8bdf              # double 2.0810010000000001
	.quad	0x4013614983d79075              # double 4.8450069999999998
	.quad	0x4022f088f861a60d              # double 9.4697949999999995
	.quad	0x40226392c061847f              # double 9.1944789999999994
	.quad	0x401dbe8b3b320536              # double 7.4360780000000002
	.quad	0x4014edf7e80389f8              # double 5.2323909999999998
	.quad	0x3f98d5410f94c87a              # double 0.024251000000000002
	.quad	0x40146afb3b752114              # double 5.1044739999999997
	.quad	0x401bcfffbce4217d              # double 6.9531239999999999
	.quad	0x4021b16c3fc43b2e              # double 8.8465290000000003
	.quad	0x4020f12dfd694ccb              # double 8.4710540000000005
	.quad	0x4011990f301eabbd              # double 4.3994720000000003
	.quad	0x3fe311e85fd04a30              # double 0.59593600000000002
	.quad	0x3ff783efae7924af              # double 1.469711
	.quad	0x4003d8811b1d92b8              # double 2.480715
	.quad	0x4007b5cd0bb6ed67              # double 2.9637699999999998
	.quad	0x401848c5436b8f9b              # double 6.0710649999999999
	.quad	0x4011451deefe4ffd              # double 4.3174970000000004
	.quad	0x4005f054ac29bf16              # double 2.7423489999999999
	.quad	0x400189613d31b9b6              # double 2.1920799999999998
	.quad	0x40086d948dc11e43              # double 3.0535060000000001
	.quad	0x3ff9e1187e7c06e2              # double 1.6174550000000001
	.quad	0x3feaec7863beec39              # double 0.84136599999999995
	.quad	0x3fe6c89b0ee49f51              # double 0.71198799999999995
	.quad	0x3fcb36d655e28aa4              # double 0.21261099999999999
	.quad	0x3ffee17e34b94531              # double 1.9300520000000001
	.quad	0x401a51d14e3bcd36              # double 6.5799000000000003
	.quad	0x3ff75feeb2d0a244              # double 1.4609209999999999
	.quad	0x4023f9fafc8b007a              # double 9.9882430000000006
	.quad	0x401f54534bd76ee7              # double 7.8323489999999997
	.quad	0x401a47aa68f4b620              # double 6.5699860000000001
	.quad	0x40239324e9c45458              # double 9.7873909999999995
	.quad	0x3ff4e5accd53048a              # double 1.306073
	.quad	0x3fe5f850df15a4ad              # double 0.68656200000000001
	.quad	0x3fce9a4df47f993d              # double 0.23908399999999999
	.quad	0x3ff24fd8f0c77dd8              # double 1.1444939999999999
	.quad	0x40227ec6bce8533b              # double 9.2476099999999999
	.quad	0x402243945308bb90              # double 9.1319909999999993
	.quad	0x40217b72e6a76966              # double 8.7411110000000001
	.quad	0x401489691a75cd0c              # double 5.1341900000000003
	.quad	0x40047d5bab21815a              # double 2.56121
	.quad	0x402140b5cbff4773              # double 8.6263869999999994
	.quad	0x40223e5082cf52b9              # double 9.1217079999999999
	.quad	0x3ff708e8a71de69b              # double 1.439675
	.quad	0x3fd6f5515054ac2a              # double 0.35872300000000001
	.quad	0x3ffe6a3f034b0e1b              # double 1.9009389999999999
	.quad	0x401ee6f049a9973e              # double 7.7255260000000003
	.quad	0x401163b688bda943              # double 4.3473759999999997
	.quad	0x4020c7e1975f2cb6              # double 8.3903929999999995
	.quad	0x3fb6fd86a8fc0d2c              # double 0.089805999999999997
	.quad	0x4010618e325d4a5e              # double 4.095269
	.quad	0x400ae0bb2bba98ee              # double 3.3597320000000002
	.quad	0x40200fb02d59d55e              # double 8.0306409999999993
	.quad	0x40223c98a222d517              # double 9.1183519999999998
	.quad	0x401be16a48733659              # double 6.9701320000000004
	.quad	0x4004be603d577964              # double 2.5929570000000002
	.quad	0x3ff769424e592967              # double 1.463198
	.quad	0x40214e4a9cdc4439              # double 8.6529129999999999
	.quad	0x4020d65f9591cd1c              # double 8.4186979999999991
	.quad	0x401a014df8b15726              # double 6.5012740000000004
	.quad	0x401183a322af5771              # double 4.378552
	.quad	0x400f19ef0f16f438              # double 3.8876629999999999
	.quad	0x402197befd00713f              # double 8.7963789999999999
	.quad	0x3ffec68448cf7caa              # double 1.9234659999999999
	.quad	0x4023ee5668c26139              # double 9.965503
	.quad	0x4022abcb3e5753a4              # double 9.3355350000000001
	.quad	0x3fd7521dda059a74              # double 0.36438700000000002
	.quad	0x401eea16a4873366              # double 7.7286020000000004
	.quad	0x4002f464dc22ab26              # double 2.3693330000000001
	.quad	0x401038bda9435ac9              # double 4.0554110000000003
	.quad	0x401a6cbc48f10a9a              # double 6.6061870000000003
	.quad	0x4009adcb1465e892              # double 3.2098599999999999
	.quad	0x4020c2fc69728a61              # double 8.3808319999999998
	.quad	0x40157a23bff8a8f4              # double 5.3692770000000003
	.quad	0x400db2c061847f56              # double 3.7122809999999999
	.quad	0x4023fc0d6f544bb2              # double 9.9922900000000006
	.quad	0x3ff0956e264e4862              # double 1.0364819999999999
	.quad	0x40223797891e2153              # double 9.1085779999999996
	.quad	0x3ff063a190082060              # double 1.024324
	.quad	0x400666c5d206c871              # double 2.8001819999999999
	.quad	0x4003ad8ec95bff04              # double 2.4597449999999998
	.quad	0x3ff3791e646f1562              # double 1.2170700000000001
	.quad	0x401cfa6d698fe692              # double 7.2445579999999996
	.quad	0x3ff320b3d4ae429e              # double 1.195484
	.quad	0x401914ba94bbe447              # double 6.2702429999999998
	.quad	0x3fe118915bdd7668              # double 0.53424899999999997
	.quad	0x4010e0142f61ed5b              # double 4.2188270000000001
	.quad	0x4016c4534bd76ee7              # double 5.6917239999999998
	.quad	0x402121b2e59af9ec              # double 8.5658180000000001
	.quad	0x4012b6fbd273d5bb              # double 4.6786950000000003
	.quad	0x40201d55a3a08399              # double 8.0572940000000006
	.quad	0x401ef1ff2e48e8a7              # double 7.7363249999999998
	.quad	0x4003692ddbdb5d89              # double 2.4263569999999999
	.quad	0x40126bbba55d1c3b              # double 4.6052080000000002
	.quad	0x40198eefa1e3eaf7              # double 6.3895860000000004
	.quad	0x401a593b3a68b19a              # double 6.5871399999999998
	.quad	0x40111a2f48c2e771              # double 4.2755710000000002
	.quad	0x40232298cc144029              # double 9.5675720000000001
	.quad	0x401c6d2999567dbb              # double 7.1066039999999999
	.quad	0x40217fbf1e8e6080              # double 8.7495049999999992
	.quad	0x40230ed8d36b4c7f              # double 9.5289979999999996
	.quad	0x40221c558644523f              # double 9.0553399999999993
	.quad	0x40208f314ca925ff              # double 8.2796730000000007
	.quad	0x400ed688bda9435b              # double 3.8547530000000001
	.quad	0x4007725892684cf0              # double 2.9308329999999998
	.quad	0x4011edb3bfb58d15              # double 4.4821309999999999
	.quad	0x4020f7fae3608d09              # double 8.4843360000000008
	.quad	0x4003a4c37e6f71a8              # double 2.4554510000000001
	.quad	0x401699b1b79d909f              # double 5.6500919999999999
	.quad	0x401dcf47304039ac              # double 7.45242
	.quad	0x401adddce7cd0353              # double 6.7166629999999996
	.quad	0x401776b50b0f27bb              # double 5.8659249999999998
	.quad	0x40149cde5d18090b              # double 5.1531919999999998
	.quad	0x3ffd7f0025bfad2a              # double 1.8435060000000001
	.quad	0x400138a5ce5b4246              # double 2.15266
	.quad	0x40203ac7b890d5a6              # double 8.1148050000000005
	.quad	0x3ff34cb07d0aed9a              # double 1.206223
	.quad	0x400d8c692f6e8295              # double 3.6935600000000002
	.quad	0x401395cd0bb6ed67              # double 4.8962899999999996
	.quad	0x4019e044284dfce3              # double 6.4690099999999999
	.quad	0x4015f1bcdbbe0158              # double 5.4860720000000001
	.quad	0x4011358ea7ce0fc3              # double 4.3023020000000001
	.quad	0x4004141aef6f8f04              # double 2.509817
	.quad	0x4007ded41b75a74c              # double 2.983803
	.quad	0x40209a2ccb3a2596              # double 8.3011230000000005
	.quad	0x4009d44f5d35653d              # double 3.2286670000000002
	.quad	0x40206273929ed395              # double 8.1922879999999996
	.quad	0x3ff32c679cc74b84              # double 1.1983410000000001
	.quad	0x40020bdec5f394b8              # double 2.2557960000000001
	.quad	0x3fe0312d3415b142              # double 0.50600299999999998
	.quad	0x3fe2b81733226c3c              # double 0.58497200000000005
	.quad	0x401970c9d9d3458d              # double 6.3601450000000002
	.quad	0x3fffe43dccea28fe              # double 1.993223
	.quad	0x400055ed06fef7c2              # double 2.0419559999999999
	.quad	0x4017ec88a47ecfea              # double 5.9809900000000003
	.quad	0x401d59cae21101b0              # double 7.337688
	.quad	0x40198c04c8bc9cd4              # double 6.3867370000000001
	.quad	0x3fdc23854046412d              # double 0.439668
	.quad	0x4000d7b5aea3161a              # double 2.1053269999999999
	.quad	0x401c7f440af1cb8a              # double 7.1242830000000001
	.quad	0x401c86b228dc981c              # double 7.1315390000000001
	.quad	0x4020e1d3671ac14c              # double 8.4410659999999992
	.quad	0x4015b7cdcca70d20              # double 5.4294960000000003
	.quad	0x40221362e9036439              # double 9.0378640000000008
	.quad	0x400329331a08bfc2              # double 2.3951169999999999
	.quad	0x4021d95810624dd3              # double 8.9245000000000001
	.quad	0x3ff66a00192a7371              # double 1.400879
	.quad	0x40178b15f88fc936              # double 5.8858259999999998
	.quad	0x40128fd5454152b1              # double 4.6404620000000003
	.quad	0x4003b64f97edc7ef              # double 2.464019
	.quad	0x3febf192ea52ef91              # double 0.87323899999999999
	.quad	0x402330c521dda05a              # double 9.5952540000000006
	.quad	0x400daefa1e3eaf68              # double 3.7104379999999999
	.quad	0x4003b0b30b5aa716              # double 2.4612790000000002
	.quad	0x401865b6805a2d73              # double 6.099329
	.quad	0x3ff6c5d0fa58f712              # double 1.423295
	.quad	0x3ffe4d2806af46aa              # double 1.893837
	.quad	0x401aaeaf6837f7be              # double 6.6705909999999999
	.quad	0x4023cabf5515054b              # double 9.8959910000000004
	.quad	0x400025ed4a1ad645              # double 2.018519
	.quad	0x3fb5fdbd2fa0d77b              # double 0.085902999999999993
	.quad	0x4023e080303c07ee              # double 9.9384779999999999
	.quad	0x401804d0dcfcc5b9              # double 6.0047030000000001
	.quad	0x4022f252ac753e70              # double 9.4732869999999991
	.quad	0x3ff525b9628cbd12              # double 1.3217099999999999
	.quad	0x400c137f38c5436c              # double 3.5095200000000002
	.quad	0x3fec7548ecd8dbcf              # double 0.88931700000000002
	.quad	0x40106c4156e264e5              # double 4.1057180000000004
	.quad	0x40209024b33daf8e              # double 8.2815300000000001
	.quad	0x4011098f605ab3ab              # double 4.2593360000000002
	.quad	0x401b5558ea7ce0fc              # double 6.8333469999999998
	.quad	0x4018b35371971c11              # double 6.1751230000000001
	.quad	0x4012dba732df505d              # double 4.7145049999999999
	.quad	0x40235e0a63305101              # double 9.6836730000000006
	.quad	0x400b1b877ab32485              # double 3.388442
	.quad	0x4004e9d0635a426c              # double 2.6141670000000001
	.quad	0x3ff75506573215fd              # double 1.4582580000000001
	.quad	0x4010d3d3a1d323ff              # double 4.2068620000000001
	.quad	0x4004f249e44fa051              # double 2.6183049999999999
	.quad	0x4008afbdad7518b1              # double 3.0858110000000001
	.quad	0x400cb763e4abe6a3              # double 3.5895459999999999
	.quad	0x4023e905186db50f              # double 9.9551169999999995
	.quad	0x3ff61d0203e63e8e              # double 1.382082
	.quad	0x40030c78e9f6a93f              # double 2.3810899999999999
	.quad	0x4021a766c6de7642              # double 8.8269559999999991
	.quad	0x4005ec63f141205c              # double 2.7404250000000001
	.quad	0x40192552e2fbe33b              # double 6.2864490000000002
	.quad	0x40133be6e6538690              # double 4.8084980000000002
	.quad	0x40226feb074a771d              # double 9.2185900000000007
	.quad	0x40184fb97bb73083              # double 6.0778559999999997
	.quad	0x400c29da597d49d8              # double 3.5204360000000001
	.quad	0x4021ca517e77d524              # double 8.8951530000000005
	.quad	0x3ff88ee7c49fd7a1              # double 1.5348889999999999
	.quad	0x4020be8ab4fa4830              # double 8.3721519999999998
	.quad	0x3fef6f75d9a0f0a6              # double 0.98235600000000001
	.quad	0x3ff127ae9ab29e4d              # double 1.0721879999999999
	.quad	0x400c3359791819d2              # double 3.5250729999999999
	.quad	0x400d6308feac42ea              # double 3.6733570000000002
	.quad	0x401e59c23b7952d2              # double 7.5876549999999998
	.quad	0x401a3f7d73c92578              # double 6.5620019999999997
	.quad	0x401598a009f62307              # double 5.3990479999999996
	.quad	0x4019d649906cca2e              # double 6.4592650000000003
	.quad	0x402362f4adbc664d              # double 9.6932729999999995
	.quad	0x40214fd32c625e9a              # double 8.6559080000000002
	.quad	0x401e7174c4cdfaca              # double 7.6107969999999998
	.quad	0x4012945e9185cee1              # double 4.6448919999999996
	.quad	0x3fc398201cd5f99c              # double 0.15307999999999999
	.quad	0x40064da76d97b310              # double 2.7879170000000002
	.quad	0x401b8db7281fd9ba              # double 6.8883939999999999
	.quad	0x401332dadb8348f5              # double 4.7996629999999998
	.quad	0x40115ed80a17b0f7              # double 4.3426210000000003
	.quad	0x40156a0c282c6ef4              # double 5.3535620000000002
	.quad	0x4014126f1dc50ce5              # double 5.0180020000000001
	.quad	0x40050fe047d3d428              # double 2.632752
	.quad	0x4023bd7342edbb5a              # double 9.8700200000000002
	.quad	0x401ae0df15a4acf3              # double 6.7196009999999999
	.quad	0x4023c592fb19e732              # double 9.8858870000000003
	.quad	0x3ff65d0a67620ee9              # double 1.397715
	.quad	0x40004c3c9eecbfb1              # double 2.0372249999999998
	.quad	0x4005b669ced0b30b              # double 2.7140689999999998
	.quad	0x401749314445aa2e              # double 5.8214769999999998
	.quad	0x401129e6687f455a              # double 4.2909179999999996
	.quad	0x400389374bc6a7f0              # double 2.4420000000000002
	.quad	0x3fc941743e963dc5              # double 0.19731000000000001
	.quad	0x40040887229e9079              # double 2.5041639999999998
	.quad	0x40229e54d61b2a28              # double 9.309241
	.quad	0x400313af74cd3177              # double 2.3846120000000002
	.quad	0x4005ab3edd8b60f2              # double 2.7086160000000001
	.quad	0x400838476f2a5a47              # double 3.0274800000000002
	.quad	0x4022a5a2b5a20ddc              # double 9.3235069999999993
	.quad	0x40008b6e935b91f7              # double 2.068082
	.quad	0x40167b28522ea0fd              # double 5.6202709999999998
	.quad	0x401c859bc33f8551              # double 7.130477
	.quad	0x401b69b38d60a633              # double 6.853224
	.quad	0x40182b545c78a6db              # double 6.0423140000000002
	.quad	0x401f37e56473471f              # double 7.8045859999999995
	.quad	0x4020ef7121ab4b73              # double 8.4676600000000004
	.quad	0x4015f4b61fe21d97              # double 5.4889760000000001
	.quad	0x4007b1ac14c660a2              # double 2.961754
	.quad	0x401d1e889c1b5419              # double 7.2798179999999997
	.quad	0x401295f9df548ece              # double 4.6464610000000004
	.quad	0x4020c34acaff6d33              # double 8.3814299999999999
	.quad	0x4014562c77574f72              # double 5.0841539999999998
	.quad	0x401e24473cd57364              # double 7.5354279999999996
	.quad	0x40114efd438d1d8a              # double 4.3271379999999997
	.quad	0x4022d95b78cc9a78              # double 9.4245260000000001
	.quad	0x3fd4355043e5321e              # double 0.31575399999999998
	.quad	0x401db59253543aeb              # double 7.4273160000000003
	.quad	0x3ff51248d7e02646              # double 1.316964
	.quad	0x3fe4ab990afe60c4              # double 0.64594700000000005
	.quad	0x400094b1ee243569              # double 2.0726049999999998
	.quad	0x402097c957cd466f              # double 8.2964579999999994
	.quad	0x3ff1353b4b2fa93b              # double 1.075496
	.quad	0x402374ce8101f31f              # double 9.7281379999999995
	.quad	0x40235aa6f3f52fc2              # double 9.6770549999999993
	.quad	0x4000eea960b6f9fd              # double 2.1165340000000001
	.quad	0x401097efe0ce0b91              # double 4.1483759999999998
	.quad	0x3fd3ed0f6273929f              # double 0.31134400000000001
	.quad	0x4009c81d3aa369fd              # double 3.222712
	.quad	0x400ec7a743a647fe              # double 3.8474870000000001
	.quad	0x40135970f7b9e061              # double 4.837345
	.quad	0x4012effcdab191de              # double 4.7343630000000001
	.quad	0x400b9f3d7d3910c3              # double 3.4527540000000001
	.quad	0x40172b0856e696a2              # double 5.7920239999999996
	.quad	0x3fd3976ff3ade226              # double 0.306118
	.quad	0x4013710dbf0563ed              # double 4.8604039999999999
	.quad	0x401124cb5bb384fd              # double 4.2859319999999999
	.quad	0x3fe54e67d77fae36              # double 0.665821
	.quad	0x4016477963992c8c              # double 5.5697989999999997
	.quad	0x3ff561dc93ea2d30              # double 1.336392
	.quad	0x400b5742dcf4623d              # double 3.417608
	.quad	0x4010dcbd987c6328              # double 4.2155670000000001
	.quad	0x400754801f75104d              # double 2.9162599999999999
	.quad	0x401f0d0a67620ee9              # double 7.7627350000000001
	.quad	0x40109fa0d77b7c78              # double 4.1558869999999999
	.quad	0x3fff992641b328b7              # double 1.97489
	.quad	0x401ef38c111ada77              # double 7.7378390000000001
	.quad	0x3ffa6a077036c9c1              # double 1.6508860000000001
	.quad	0x400284ece9a2c669              # double 2.314905
	.quad	0x400db7281fd9ba1b              # double 3.714432
	.quad	0x400ff04577d95571              # double 3.9923199999999999
	.quad	0x3fdf4da9003eea21              # double 0.48911500000000002
	.quad	0x3ffdb9c51dabe271              # double 1.8578539999999999
	.quad	0x401f75729b280f13              # double 7.8646950000000002
	.quad	0x400c9ec3dab5c39c              # double 3.5775220000000001
	.quad	0x401ebad2135daad6              # double 7.682442
	.quad	0x402368d10f51ac9b              # double 9.70472
	.quad	0x40203b85a4f00ef1              # double 8.1162539999999996
	.quad	0x4022cf61cbccf28c              # double 9.4050429999999991
	.quad	0x400fc753e707e176              # double 3.9723280000000001
	.quad	0x40233e694898f606              # double 9.6218970000000006
	.quad	0x40006a9930be0ded              # double 2.0520499999999999
	.quad	0x400878066c2acb86              # double 3.0586060000000002
	.quad	0x4022c44178705426              # double 9.3833120000000001
	.quad	0x40109feb8d823422              # double 4.1561719999999998
	.quad	0x4012b7d63022dd7b              # double 4.6795280000000004
	.quad	0x3fbb80dc33721d54              # double 0.107435
	.quad	0x3ff1c5b8dc55000d              # double 1.1107720000000001
	.quad	0x400aeb7d41743e96              # double 3.3649849999999999
	.quad	0x402314169c23b795              # double 9.5392349999999996
	.quad	0x4014cf2a9d627bf6              # double 5.2023109999999999
	.quad	0x40121f0cfe154435              # double 4.5303230000000001
	.quad	0x401600e8427418d7              # double 5.5008860000000004
	.quad	0x4023f1cef240fa9c              # double 9.9722819999999998
	.quad	0x4021f591ab8e8ea4              # double 8.9796270000000006
	.quad	0x400ce09d495182aa              # double 3.6096750000000002
	.quad	0x401da98b2e9ccb7d              # double 7.4155699999999998
	.quad	0x401b7f077ccc0379              # double 6.8740519999999998
	.quad	0x4015eb6284599674              # double 5.4798679999999997
	.quad	0x4019385be1a82624              # double 6.3050379999999997
	.quad	0x3fe593ee5eedcc21              # double 0.67430800000000002
	.quad	0x400b39fa11a975b0              # double 3.4033090000000001
	.quad	0x400f37fbefd00714              # double 3.902336
	.quad	0x401a636d655e28aa              # double 6.5970969999999998
	.quad	0x3fca28a1dfb9389b              # double 0.20436499999999999
	.quad	0x4022d03b60285ec4              # double 9.4067030000000002
	.quad	0x401b2ac4f7ec3548              # double 6.7917670000000001
	.quad	0x401778854cdb7ae5              # double 5.8676959999999996
	.quad	0x400e307c84b5dcc6              # double 3.7736749999999999
	.quad	0x3ff5ed080b673c4f              # double 1.3703689999999999
	.quad	0x40232eb8b69552e3              # double 9.591253
	.quad	0x4020fdf43c7d5ed0              # double 8.4960039999999992
	.quad	0x40232784662bae04              # double 9.5771820000000005
	.quad	0x40175b81f969e3c9              # double 5.8393629999999996
	.quad	0x4021648b65237048              # double 8.6963760000000008
	.quad	0x40213b79d909f1f1              # double 8.6161639999999995
	.quad	0x401908a6dacabc51              # double 6.2584489999999997
	.quad	0x401c060d0247021d              # double 7.0059089999999999
	.quad	0x3fff3a83f4eca687              # double 1.951786
	.quad	0x4010a3d9ec700043              # double 4.1600109999999999
	.quad	0x3feca0232096787d              # double 0.89454800000000001
	.quad	0x4011b8c2e770bd01              # double 4.4304309999999996
	.quad	0x40186db2702a3487              # double 6.1071260000000001
	.quad	0x400550c67168f8e8              # double 2.6644410000000001
	.quad	0x40100f1c3265adda              # double 4.0147560000000002
	.quad	0x4023de99e94ab1d5              # double 9.934768
	.quad	0x401b10baa582dbe8              # double 6.766337
	.quad	0x401411eeaa6d2674              # double 5.017512
	.quad	0x40143362e9036439              # double 5.0501820000000004
	.quad	0x3ffeb69878316a05              # double 1.9195789999999999
	.quad	0x401942977c88e79b              # double 6.3150310000000003
	.quad	0x4021c435ac8a3726              # double 8.883222
	.quad	0x4020dca9ef5232d3              # double 8.4309840000000005
	.quad	0x3fd7ff822bbecaac              # double 0.37497000000000003
	.quad	0x400b01b7e0ac7da2              # double 3.375839
	.quad	0x4018640314877681              # double 6.0976679999999996
	.quad	0x4023e2a9d627bf62              # double 9.9427020000000006
	.quad	0x3ff0475b3e1437c5              # double 1.0174209999999999
	.quad	0x4017355eaee2003b              # double 5.8021190000000002
	.quad	0x401ffc1f42bb6673              # double 7.996213
	.quad	0x3fa916659d12cade              # double 0.048999000000000001
	.quad	0x4010a9085f4a1273              # double 4.1650710000000002
	.quad	0x400aff04577d9557              # double 3.37452
	.quad	0x4021c4a07f66e86c              # double 8.8840369999999992
	.quad	0x3ff97c7820a30db7              # double 1.5928880000000001
	.quad	0x3ff211351159c497              # double 1.1292009999999999
	.quad	0x4017bb445ed4a1ad              # double 5.9328779999999997
	.quad	0x3ff30e5a35d67ba2              # double 1.191004
	.quad	0x3fd465dbfceb7889              # double 0.31871699999999997
	.quad	0x40110302b40f66a5              # double 4.2529399999999997
	.quad	0x4013d85a0be51090              # double 4.9612809999999996
	.quad	0x401754c0df58c08b              # double 5.8327669999999996
	.quad	0x3ffa96fda836eb4f              # double 1.6618630000000001
	.quad	0x400b0fff36ac6477              # double 3.3828109999999998
	.quad	0x401f62d8c2a454de              # double 7.8465299999999996
	.quad	0x4011211cb039ef0f              # double 4.2823359999999999
	.quad	0x4015db10ba6266fd              # double 5.4639309999999996
	.quad	0x401e587724fa8b4c              # double 7.586392
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
