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
	.quad	0x414881e43bbb4917              # double 3212232.4666530001
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
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
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

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	66                              # 0x42
	.quad	91                              # 0x5b
	.quad	152                             # 0x98
	.quad	174                             # 0xae
	.quad	237                             # 0xed
	.quad	264                             # 0x108
	.quad	326                             # 0x146
	.quad	348                             # 0x15c
	.quad	410                             # 0x19a
	.quad	439                             # 0x1b7
	.quad	505                             # 0x1f9
	.quad	536                             # 0x218
	.quad	597                             # 0x255
	.quad	617                             # 0x269
	.quad	681                             # 0x2a9
	.quad	706                             # 0x2c2
	.quad	767                             # 0x2ff
	.quad	786                             # 0x312
	.quad	846                             # 0x34e
	.quad	875                             # 0x36b
	.quad	936                             # 0x3a8
	.quad	959                             # 0x3bf
	.quad	1021                            # 0x3fd
	.quad	1045                            # 0x415
	.quad	1108                            # 0x454
	.quad	1132                            # 0x46c
	.quad	1198                            # 0x4ae
	.quad	1224                            # 0x4c8
	.quad	1285                            # 0x505
	.quad	1322                            # 0x52a
	.quad	1382                            # 0x566
	.quad	1413                            # 0x585
	.quad	1480                            # 0x5c8
	.quad	1511                            # 0x5e7
	.quad	1575                            # 0x627
	.quad	1605                            # 0x645
	.quad	1672                            # 0x688
	.quad	1699                            # 0x6a3
	.quad	1764                            # 0x6e4
	.quad	1802                            # 0x70a
	.quad	1861                            # 0x745
	.quad	1892                            # 0x764
	.quad	1954                            # 0x7a2
	.quad	1987                            # 0x7c3
	.quad	2049                            # 0x801
	.quad	2069                            # 0x815
	.quad	2129                            # 0x851
	.quad	2158                            # 0x86e
	.quad	2227                            # 0x8b3
	.quad	2255                            # 0x8cf
	.quad	2321                            # 0x911
	.quad	2345                            # 0x929
	.quad	2409                            # 0x969
	.quad	2436                            # 0x984
	.quad	2501                            # 0x9c5
	.quad	2526                            # 0x9de
	.quad	2597                            # 0xa25
	.quad	2613                            # 0xa35
	.quad	2676                            # 0xa74
	.quad	2697                            # 0xa89
	.quad	2756                            # 0xac4
	.quad	2779                            # 0xadb
	.quad	2840                            # 0xb18
	.quad	2867                            # 0xb33
	.quad	2932                            # 0xb74
	.quad	2955                            # 0xb8b
	.quad	3015                            # 0xbc7
	.quad	3048                            # 0xbe8
	.quad	3107                            # 0xc23
	.quad	3136                            # 0xc40
	.quad	3197                            # 0xc7d
	.quad	3229                            # 0xc9d
	.quad	3299                            # 0xce3
	.quad	3320                            # 0xcf8
	.quad	3389                            # 0xd3d
	.quad	3418                            # 0xd5a
	.quad	3478                            # 0xd96
	.quad	3506                            # 0xdb2
	.quad	3572                            # 0xdf4
	.quad	3594                            # 0xe0a
	.quad	3662                            # 0xe4e
	.quad	3696                            # 0xe70
	.quad	3761                            # 0xeb1
	.quad	3784                            # 0xec8
	.quad	3847                            # 0xf07
	.quad	3871                            # 0xf1f
	.quad	3937                            # 0xf61
	.quad	3966                            # 0xf7e
	.quad	4029                            # 0xfbd
	.quad	4060                            # 0xfdc
	.quad	4125                            # 0x101d
	.quad	4153                            # 0x1039
	.quad	4224                            # 0x1080
	.quad	4249                            # 0x1099
	.quad	4315                            # 0x10db
	.quad	4341                            # 0x10f5
	.quad	4400                            # 0x1130
	.quad	4419                            # 0x1143
	.quad	4477                            # 0x117d
	.quad	4499                            # 0x1193
	.size	.L__constant_101xindex, 808

	.type	.L__constant_4499xindex,@object # @__constant_4499xindex
	.p2align	6, 0x0
.L__constant_4499xindex:
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
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	73                              # 0x49
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	36                              # 0x24
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	75                              # 0x4b
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
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
	.quad	21                              # 0x15
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
	.quad	41                              # 0x29
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
	.quad	71                              # 0x47
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	39                              # 0x27
	.quad	40                              # 0x28
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
	.quad	89                              # 0x59
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
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	65                              # 0x41
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
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
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
	.quad	33                              # 0x21
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
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	83                              # 0x53
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
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
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
	.quad	44                              # 0x2c
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
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
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	43                              # 0x2b
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
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
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
	.quad	69                              # 0x45
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	59                              # 0x3b
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
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
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
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
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	13                              # 0xd
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
	.quad	55                              # 0x37
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
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
	.quad	51                              # 0x33
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
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
	.quad	57                              # 0x39
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	38                              # 0x26
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
	.quad	52                              # 0x34
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
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
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	67                              # 0x43
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
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	39                              # 0x27
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
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	31                              # 0x1f
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
	.quad	53                              # 0x35
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
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	17                              # 0x11
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
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
	.quad	75                              # 0x4b
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	67                              # 0x43
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
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
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
	.quad	15                              # 0xf
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
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
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	39                              # 0x27
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
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
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
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
	.quad	47                              # 0x2f
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	96                              # 0x60
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
	.quad	19                              # 0x13
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
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
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
	.quad	47                              # 0x2f
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	37                              # 0x25
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
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
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	79                              # 0x4f
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
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
	.quad	16                              # 0x10
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
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	54                              # 0x36
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
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
	.quad	57                              # 0x39
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
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
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
	.quad	29                              # 0x1d
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	25                              # 0x19
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
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
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
	.quad	16                              # 0x10
	.quad	18                              # 0x12
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
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	44                              # 0x2c
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
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.size	.L__constant_4499xindex, 35992

	.type	.L__constant_4499xf64,@object   # @__constant_4499xf64
	.p2align	6, 0x0
.L__constant_4499xf64:
	.quad	0x401a4dad7518b0d1              # double 6.5758570000000001
	.quad	0x402000088509bf9c              # double 8.0000649999999993
	.quad	0x40171bbd3804534c              # double 5.7770890000000001
	.quad	0x4014d1a719b4dcec              # double 5.204739
	.quad	0x401afb035bd512ec              # double 6.7451299999999996
	.quad	0x4022d52806af46aa              # double 9.4163209999999999
	.quad	0x4020479335d249e4              # double 8.1397949999999994
	.quad	0x401775946c332f01              # double 5.8648239999999996
	.quad	0x4018dfa1e3eaf683              # double 6.2183909999999996
	.quad	0x4019eab042528ae7              # double 6.4791879999999997
	.quad	0x4019874ff865d7cb              # double 6.3821409999999998
	.quad	0x401dc76427c7c526              # double 7.4447179999999999
	.quad	0x402225ac471b4784              # double 9.0735799999999997
	.quad	0x40196a6b93ccd0ff              # double 6.3539260000000004
	.quad	0x401370e3cd9a5226              # double 4.8602439999999998
	.quad	0x401ed0225742dcf4              # double 7.7032559999999997
	.quad	0x401f9eec7c957cd4              # double 7.9051989999999996
	.quad	0x40135395810624dd              # double 4.8316249999999998
	.quad	0x3ff2d82fd75e2047              # double 1.17778
	.quad	0x40173cf7caa7589f              # double 5.809539
	.quad	0x400800bed740c415              # double 3.0003639999999998
	.quad	0x401102fa5093964a              # double 4.2529079999999997
	.quad	0x4002993250b5243a              # double 2.3248030000000002
	.quad	0x4001f64e054690de              # double 2.245266
	.quad	0x401bf930be0ded29              # double 6.9933500000000004
	.quad	0x402353daf8df7a4e              # double 9.6637799999999991
	.quad	0x400593fe1975f2cb              # double 2.6972619999999998
	.quad	0x40016584f4c6e6da              # double 2.1745700000000001
	.quad	0x3fde29bae46cfc83              # double 0.47129700000000002
	.quad	0x401abf533f42352f              # double 6.6868410000000003
	.quad	0x401ed8b588e368f1              # double 7.7116300000000004
	.quad	0x3fed662131a8ef78              # double 0.91871700000000001
	.quad	0x4004419c17225b75              # double 2.5320360000000002
	.quad	0x4021fc93ea2d2fe4              # double 8.993316
	.quad	0x3ff6a9888f861a61              # double 1.41639
	.quad	0x401323ab430f4949              # double 4.7848329999999999
	.quad	0x4021cce4430b178b              # double 8.9001789999999996
	.quad	0x400c4adab9f559b4              # double 3.5365500000000001
	.quad	0x4020b7d88c1db014              # double 8.3590739999999996
	.quad	0x4018c7008a697aee              # double 6.1943380000000001
	.quad	0x401908c586876e1e              # double 6.2585660000000001
	.quad	0x401522467be553ac              # double 5.2834719999999997
	.quad	0x3ff35b4edb2f661f              # double 1.209792
	.quad	0x401d171715c63ae2              # double 7.2725489999999997
	.quad	0x4022bc2ca148ba84              # double 9.367528
	.quad	0x400a7d3910c2c5e3              # double 3.3111440000000001
	.quad	0x40027cbccf28c79f              # double 2.3109069999999998
	.quad	0x400c7fae3608d089              # double 3.562344
	.quad	0x401f7b0fadf2ecf2              # double 7.870177
	.quad	0x4019579bbadc0981              # double 6.3355550000000003
	.quad	0x3ff4c20d5629d841              # double 1.2973760000000001
	.quad	0x401e4d0678c0053e              # double 7.5752199999999998
	.quad	0x40205ef3d3a1d324              # double 8.185454
	.quad	0x4007b9c304ccee5b              # double 2.9657040000000001
	.quad	0x4020727fc32ebe59              # double 8.2236309999999992
	.quad	0x3ff91c8323358f2e              # double 1.569461
	.quad	0x402052f1ed17c5ef              # double 8.1620019999999993
	.quad	0x400ab437c5692b3d              # double 3.3379970000000001
	.quad	0x401fba27ae9ab29e              # double 7.9317919999999997
	.quad	0x4013a8db8bac710d              # double 4.9149000000000003
	.quad	0x3febef86a098915c              # double 0.87298900000000001
	.quad	0x3fe4837f7be121ee              # double 0.64105199999999996
	.quad	0x402044bd33d29564              # double 8.1342560000000005
	.quad	0x3ff8b645a1cac083              # double 1.5445
	.quad	0x401e8e95faa8a82a              # double 7.6392439999999997
	.quad	0x3ffbba1b1960fa16              # double 1.732936
	.quad	0x4003425a682b6284              # double 2.4073989999999998
	.quad	0x3fd24d1a65061416              # double 0.28595599999999999
	.quad	0x4001dbacb4289119              # double 2.2322630000000001
	.quad	0x40177e785b5b7069              # double 5.8735059999999999
	.quad	0x4012e16872b020c5              # double 4.7201250000000003
	.quad	0x40160d7f51efb6dd              # double 5.5131810000000003
	.quad	0x3fa8f01fb82c2bd8              # double 0.048707
	.quad	0x400f78b1dd5d3dc9              # double 3.9339330000000001
	.quad	0x3fdd612c6ac215ba              # double 0.45905600000000002
	.quad	0x4015d6861e92923e              # double 5.4594959999999997
	.quad	0x4010c09203a322af              # double 4.1880569999999997
	.quad	0x400a73b5393250b5              # double 3.3064979999999999
	.quad	0x4011bb5a20ddc619              # double 4.4329609999999997
	.quad	0x400095caf2d7f951              # double 2.0731410000000001
	.quad	0x3ff95a8049667b5f              # double 1.584595
	.quad	0x3ffc5d96e9bbf0dc              # double 1.7728489999999999
	.quad	0x4022c9d627bf61aa              # double 9.3942119999999996
	.quad	0x402175334c5da6a4              # double 8.7289069999999995
	.quad	0x3fd918a86d71f362              # double 0.39212999999999998
	.quad	0x40013bf6a0dbad3a              # double 2.1542789999999998
	.quad	0x4020460daa0cae64              # double 8.1368229999999996
	.quad	0x400f2651f3e89a89              # double 3.8937110000000001
	.quad	0x401ee692b3cc4ac7              # double 7.7251690000000001
	.quad	0x4013217e77d523b3              # double 4.7827089999999997
	.quad	0x401e0cf850df15a5              # double 7.5126660000000002
	.quad	0x3ff9e806af46aa08              # double 1.6191469999999999
	.quad	0x401ff3e3e29307af              # double 7.9881739999999998
	.quad	0x401dbb5d894812be              # double 7.4329739999999997
	.quad	0x3ff31fb506dd69d3              # double 1.195241
	.quad	0x40207f5968512232              # double 8.2487290000000009
	.quad	0x402334395810624e              # double 9.6020000000000003
	.quad	0x4021385dd8f92afa              # double 8.6100910000000006
	.quad	0x4012aeac42e9899c              # double 4.670579
	.quad	0x3ff8e1b3aeee9574              # double 1.5551029999999999
	.quad	0x40105db37c99ae92              # double 4.0915049999999997
	.quad	0x40145579f2346562              # double 5.0834729999999997
	.quad	0x401e99a06a6e32e4              # double 7.6500260000000004
	.quad	0x400bee820e629952              # double 3.4914589999999999
	.quad	0x401c707e5a78f25a              # double 7.1098569999999999
	.quad	0x400a08e3ef284168              # double 3.2543410000000002
	.quad	0x400416a400fba882              # double 2.5110549999999998
	.quad	0x3fde1ab0856e696a              # double 0.47037899999999999
	.quad	0x401ccb14a90470a8              # double 7.198321
	.quad	0x3ffd46c8711d798e              # double 1.8297810000000001
	.quad	0x402144126a65cf68              # double 8.6329530000000005
	.quad	0x40121979e16d6dc2              # double 4.5248790000000003
	.quad	0x40155fa76534373f              # double 5.3434119999999998
	.quad	0x40196aab8a5ce5b4              # double 6.3541699999999999
	.quad	0x4016b3686a4ca4f4              # double 5.6752029999999998
	.quad	0x40172de939eadd59              # double 5.794835
	.quad	0x3ff1a2bbecaab8a6              # double 1.10223
	.quad	0x40231940789613d3              # double 9.5493199999999998
	.quad	0x402280bfe3b03e21              # double 9.2514640000000004
	.quad	0x3fd476683c297bfa              # double 0.31972699999999998
	.quad	0x3ff6030b178b3700              # double 1.3757429999999999
	.quad	0x4015bd530489d27c              # double 5.4348869999999998
	.quad	0x401c43b46fdeb52d              # double 7.0661180000000003
	.quad	0x401b90667f90d9d7              # double 6.8910159999999996
	.quad	0x400ebbeb9e492bc3              # double 3.841758
	.quad	0x4020e9a8cdea033e              # double 8.4563659999999992
	.quad	0x4017c716d2aa5c5f              # double 5.9444229999999996
	.quad	0x400477a1c25d0742              # double 2.558414
	.quad	0x4013382a9930be0e              # double 4.8048500000000001
	.quad	0x401404b87bdcf030              # double 5.0046099999999996
	.quad	0x3ff9bc6fbd273d5c              # double 1.6085050000000001
	.quad	0x3fed83f2d3c792d1              # double 0.92235699999999998
	.quad	0x4016496fa82e87d3              # double 5.5717150000000002
	.quad	0x4000e177ea1c68ec              # double 2.1100919999999999
	.quad	0x400baf05a708ede5              # double 3.4604599999999999
	.quad	0x4020d50bb6ed6777              # double 8.4161049999999999
	.quad	0x40135ad8e4324420              # double 4.8387180000000001
	.quad	0x402231c3ce2089e3              # double 9.0971969999999995
	.quad	0x3ff0dc69f8c21e1d              # double 1.053812
	.quad	0x40219634117f8445              # double 8.7933660000000007
	.quad	0x40070a4ebdd334c6              # double 2.8800330000000001
	.quad	0x401cea14488c60cc              # double 7.228593
	.quad	0x4016407b784662bb              # double 5.5629710000000001
	.quad	0x400b529c347e8cce              # double 3.4153370000000001
	.quad	0x4000dc6b8b69552e              # double 2.1076269999999999
	.quad	0x3fe99af5ba2be059              # double 0.80016600000000004
	.quad	0x40143118c197e564              # double 5.0479459999999996
	.quad	0x400ba3cb81733227              # double 3.4549780000000001
	.quad	0x401f677a2cecc815              # double 7.8510520000000001
	.quad	0x401232856605ee57              # double 4.5493370000000004
	.quad	0x401d656eefa1e3eb              # double 7.349056
	.quad	0x401ca7ff583a53b9              # double 7.1640600000000001
	.quad	0x3fc93f42352eb5f6              # double 0.197243
	.quad	0x400fa6f2e8c0485a              # double 3.956518
	.quad	0x3fda9f5dfeb8d823              # double 0.41597699999999999
	.quad	0x3fe409aed56b0100              # double 0.62618200000000002
	.quad	0x401c5f8c64fdb09a              # double 7.0933089999999996
	.quad	0x3ff81ce8d972cd7d              # double 1.507058
	.quad	0x400b3abb8800eae2              # double 3.4036780000000002
	.quad	0x3fe473797460242d              # double 0.639096
	.quad	0x4022bc256bca5376              # double 9.3674730000000004
	.quad	0x401250c4dec1c1d7              # double 4.5788760000000002
	.quad	0x401a9725c3dee782              # double 6.6476050000000004
	.quad	0x4004dae7924af0bf              # double 2.606887
	.quad	0x40238491f2dc2b0f              # double 9.7589260000000006
	.quad	0x4013ca1a0cf1800a              # double 4.9473649999999996
	.quad	0x401dd6a8fc0d2c38              # double 7.4596289999999996
	.quad	0x40195c9107faa045              # double 6.3403970000000003
	.quad	0x3ff8c9a34ca0c283              # double 1.549228
	.quad	0x401d4f36ef8055fc              # double 7.3273580000000003
	.quad	0x40114ca5bd944aa5              # double 4.3248509999999998
	.quad	0x4000920535c9e668              # double 2.0712989999999998
	.quad	0x401d13d0bfa09460              # double 7.2693510000000003
	.quad	0x4022f475818c5c9a              # double 9.4774589999999996
	.quad	0x3fefa65492ff4ba5              # double 0.98905399999999998
	.quad	0x400768900c521dda              # double 2.926056
	.quad	0x3fba586013660e52              # double 0.102911
	.quad	0x401d336da87a072d              # double 7.3002229999999999
	.quad	0x3fe850fa58f7121b              # double 0.75988500000000003
	.quad	0x40224dc5931ca7d6              # double 9.1518979999999992
	.quad	0x4009e58dde7a743a              # double 3.2370869999999998
	.quad	0x401cd1b4bb5e0f80              # double 7.2047910000000002
	.quad	0x4010164ece9a2c67              # double 4.0217850000000004
	.quad	0x3ffc45ad538ac190              # double 1.7670110000000001
	.quad	0x3ff523fbbd7b2032              # double 1.321285
	.quad	0x4014ffb549f94856              # double 5.2497150000000001
	.quad	0x402015f9df548ece              # double 8.0429220000000008
	.quad	0x3ffd855000c9539c              # double 1.8450470000000001
	.quad	0x402030bed740c415              # double 8.0952059999999992
	.quad	0x400f26d373affb05              # double 3.893958
	.quad	0x4013ef2170931013              # double 4.9835260000000003
	.quad	0x40112dcca70d1fa3              # double 4.2947259999999998
	.quad	0x3ffee20791c4b902              # double 1.930183
	.quad	0x40162561d4306e5d              # double 5.5365060000000001
	.quad	0x4016d72c0e7bc3c6              # double 5.7101290000000002
	.quad	0x3fe163c74fb549f9              # double 0.54342999999999997
	.quad	0x401a1d2630ec3116              # double 6.5284659999999999
	.quad	0x4021ee2541d8e864              # double 8.9651279999999999
	.quad	0x3fb070b8cfbfc654              # double 0.064219999999999999
	.quad	0x401586a550870111              # double 5.3814900000000003
	.quad	0x3ffda9c347e8ccde              # double 1.8539460000000001
	.quad	0x4017758c4bd33d29              # double 5.8647929999999997
	.quad	0x400d8b97fe8ee6b8              # double 3.6931609999999999
	.quad	0x40157ae7d566cf42              # double 5.370025
	.quad	0x402279d2178f68be              # double 9.2379309999999997
	.quad	0x401f4d93c46d82ba              # double 7.8257589999999997
	.quad	0x40181681a9b8cb8e              # double 6.021979
	.quad	0x401aedadfb506dd7              # double 6.7321090000000003
	.quad	0x401737457c0b1359              # double 5.8039759999999996
	.quad	0x40130f8f041461b7              # double 4.7651940000000002
	.quad	0x4015db5d031055b9              # double 5.4642220000000004
	.quad	0x401cf6916440f239              # double 7.2407890000000004
	.quad	0x400b97e0ac7da1ec              # double 3.4491589999999999
	.quad	0x4001cf7caa7589f0              # double 2.2263120000000001
	.quad	0x4013d21a719b4dcf              # double 4.9551790000000002
	.quad	0x4001dd69d30270f4              # double 2.2331120000000002
	.quad	0x400be15fcc1871e7              # double 3.4850460000000001
	.quad	0x400fddab5c39bcba              # double 3.9832369999999999
	.quad	0x3fe43bd3804534bd              # double 0.63230299999999995
	.quad	0x3ffa34a558ea7ce1              # double 1.637853
	.quad	0x3fbc4449dbec2481              # double 0.110417
	.quad	0x402097bca1059ea5              # double 8.2963609999999992
	.quad	0x3feb91b1d92b7fe1              # double 0.86153500000000005
	.quad	0x40232d94f26aec07              # double 9.5890269999999997
	.quad	0x401dc5bd944aa540              # double 7.4431060000000002
	.quad	0x3ffcc2b1f687b13a              # double 1.797533
	.quad	0x4016f5ad96a6a012              # double 5.7399199999999997
	.quad	0x4002b4fa48301a7a              # double 2.338368
	.quad	0x400fc9df97aaac11              # double 3.9735710000000002
	.quad	0x40175f301eabbcb2              # double 5.8429570000000002
	.quad	0x400c79c27e953155              # double 3.559453
	.quad	0x3fe137cbb3c81909              # double 0.53806100000000001
	.quad	0x4020ef51efb6dca0              # double 8.4674219999999991
	.quad	0x40103e18266772d6              # double 4.0606390000000001
	.quad	0x4003c5974e65bea1              # double 2.4714800000000001
	.quad	0x4022a60d66f0cfe1              # double 9.3243209999999994
	.quad	0x3ff99f505d0fa58f              # double 1.6013949999999999
	.quad	0x3ff90f840181e03f              # double 1.5662879999999999
	.quad	0x40088a5efe931876              # double 3.067564
	.quad	0x3fdbccea28fe260b              # double 0.43438199999999999
	.quad	0x401fbbe6a337a80d              # double 7.933497
	.quad	0x3fb6940357a35504              # double 0.088195999999999997
	.quad	0x40037972474538ef              # double 2.4342999999999999
	.quad	0x400bc6bf8769ec2d              # double 3.472045
	.quad	0x3ff433b213e3e293              # double 1.262621
	.quad	0x4008a784a9478c87              # double 3.0817960000000002
	.quad	0x4013d1fe64f54d1f              # double 4.9550720000000004
	.quad	0x4023748d1958969a              # double 9.7276389999999999
	.quad	0x3fec335f3d7d3911              # double 0.88127100000000003
	.quad	0x3ff60b33daf8df7a              # double 1.3777349999999999
	.quad	0x4021bdd4a5df223a              # double 8.8707630000000002
	.quad	0x3ff29fddebd9018e              # double 1.1640299999999999
	.quad	0x400a31ae2da554b9              # double 3.2742580000000001
	.quad	0x401d7c829cfdd228              # double 7.3715919999999997
	.quad	0x3fafb506dd69d302              # double 0.061927999999999997
	.quad	0x401bdf3d3a1d3240              # double 6.9680070000000001
	.quad	0x4001699ae924f228              # double 2.1765650000000001
	.quad	0x401f9496aad1d042              # double 7.8951060000000002
	.quad	0x40212929cbab649d              # double 8.5803969999999996
	.quad	0x40234b48d3ae685e              # double 9.6470400000000005
	.quad	0x402049f9acffa7eb              # double 8.1444829999999993
	.quad	0x40135bc6a7ef9db2              # double 4.8396249999999998
	.quad	0x401dc9eb6390c910              # double 7.4471869999999996
	.quad	0x4013a69ec2ce464a              # double 4.9127150000000004
	.quad	0x3ffbefa82e87d2c8              # double 1.7460100000000001
	.quad	0x3ff3700cd855970b              # double 1.2148559999999999
	.quad	0x3ffc664c2f837b4a              # double 1.774975
	.quad	0x4015cc10d7be9857              # double 5.4492830000000003
	.quad	0x400af2ac753e707e              # double 3.368493
	.quad	0x40223b2c40d0aaa8              # double 9.1155720000000002
	.quad	0x401bb47a5b0ff10f              # double 6.9262480000000002
	.quad	0x3fec5f69878316a0              # double 0.88664699999999996
	.quad	0x401dead794a6eb92              # double 7.4793380000000003
	.quad	0x3fd35ee568a50508              # double 0.30266700000000002
	.quad	0x3fe33b7d84901d19              # double 0.60101199999999999
	.quad	0x401a417e34b94531              # double 6.5639580000000004
	.quad	0x4003582cb20fb225              # double 2.4180540000000001
	.quad	0x3ffbe9185cee17a0              # double 1.744408
	.quad	0x3fe8a9f383f0bae9              # double 0.77074600000000004
	.quad	0x40134d1676640a6c              # double 4.8252810000000004
	.quad	0x3f822af5771001d6              # double 0.0088710000000000004
	.quad	0x401595e5f30e7ff6              # double 5.3963850000000004
	.quad	0x4001aa3ad18d25ee              # double 2.2081200000000001
	.quad	0x4014ef70de8f6cf0              # double 5.2338290000000001
	.quad	0x400a600192a73711              # double 3.296878
	.quad	0x4010d18266772d5e              # double 4.204599
	.quad	0x4000b961804d9839              # double 2.0905179999999999
	.quad	0x40234157cd466f50              # double 9.6276229999999998
	.quad	0x4012e5054ac29bf1              # double 4.7236529999999997
	.quad	0x4016255ac03ff690              # double 5.5364789999999999
	.quad	0x4023432ebe596c83              # double 9.6312160000000002
	.quad	0x4020680bed740c41              # double 8.2032159999999994
	.quad	0x3ff55bc01a36e2eb              # double 1.3349
	.quad	0x4020e7820a30db6a              # double 8.4521639999999998
	.quad	0x4019ad13d74d594f              # double 6.4190209999999999
	.quad	0x4003c76e1deacc92              # double 2.472378
	.quad	0x40212037f7be121f              # double 8.5629270000000002
	.quad	0x4016b6950fc71d60              # double 5.6783029999999997
	.quad	0x40227712e40852b5              # double 9.2325660000000003
	.quad	0x401fc143393ab431              # double 7.938733
	.quad	0x40238c2df0d41312              # double 9.7737879999999997
	.quad	0x40215fa355043e53              # double 8.6867929999999998
	.quad	0x400b0da661283904              # double 3.3816649999999999
	.quad	0x4009fb6aa4b9884c              # double 3.2477619999999998
	.quad	0x402234944ed6fda8              # double 9.1026939999999996
	.quad	0x4017bd9dba908a26              # double 5.9351719999999997
	.quad	0x4005ffb506dd69d3              # double 2.749857
	.quad	0x4021e9e90795f677              # double 8.9568560000000002
	.quad	0x3ff0dc182ecaeea6              # double 1.0537339999999999
	.quad	0x40163f11f926c7eb              # double 5.5615920000000001
	.quad	0x4010293bc0a06ea0              # double 4.0402670000000001
	.quad	0x3ff1da048e043a21              # double 1.1157269999999999
	.quad	0x400f1fb82c2bd7f5              # double 3.8904879999999999
	.quad	0x400bf5c52e72da12              # double 3.4950049999999999
	.quad	0x3fccf483cafb3b75              # double 0.226212
	.quad	0x4012eea4ebdd334c              # double 4.7330509999999997
	.quad	0x4006675360d02470              # double 2.8004519999999999
	.quad	0x40068316a055757d              # double 2.8140079999999998
	.quad	0x400744c942d490e6              # double 2.9085869999999998
	.quad	0x401e6e5f7403dddb              # double 7.6077859999999999
	.quad	0x4007c0b135979182              # double 2.9690880000000002
	.quad	0x4011e0fa15db3398              # double 4.4697040000000001
	.quad	0x3ff77749adc8fb87              # double 1.466623
	.quad	0x4022c6c7000431be              # double 9.3882370000000002
	.quad	0x40216d347a5b0ff1              # double 8.7132909999999999
	.quad	0x400bd873ffac1d2a              # double 3.4806900000000001
	.quad	0x3fe66baf102363b2              # double 0.70064499999999996
	.quad	0x401dd56eefa1e3eb              # double 7.458431
	.quad	0x4008160ae9680e06              # double 3.0107629999999999
	.quad	0x4016446c764adff8              # double 5.5668199999999999
	.quad	0x401d14b599aa6091              # double 7.2702239999999998
	.quad	0x400f64388ebcc6c5              # double 3.9239359999999999
	.quad	0x4018faa92e62131b              # double 6.2447860000000004
	.quad	0x3fdd2f7f498c3b0c              # double 0.45602399999999998
	.quad	0x3fd9a6bd6e8af816              # double 0.40080199999999999
	.quad	0x3fec556b00ffda40              # double 0.88542699999999996
	.quad	0x3ff25e071c53f39d              # double 1.147956
	.quad	0x401a0c0f45176146              # double 6.5117770000000004
	.quad	0x3ff3c19e30014f8b              # double 1.2347699999999999
	.quad	0x3fd3fc4c165907d9              # double 0.312274
	.quad	0x401fcd377e1b8ed2              # double 7.9504070000000002
	.quad	0x402397f5e84f0953              # double 9.7967980000000007
	.quad	0x402306262cba732e              # double 9.5120100000000001
	.quad	0x402261a176ddacef              # double 9.1906850000000002
	.quad	0x4019afc1df3300de              # double 6.4216379999999997
	.quad	0x40228f0b28522ea1              # double 9.279382
	.quad	0x40204b7585be1a82              # double 8.1473809999999993
	.quad	0x40156d22424a276b              # double 5.3565759999999996
	.quad	0x4006f063e07a28bb              # double 2.867378
	.quad	0x4020623fee2c98e5              # double 8.1918939999999996
	.quad	0x401d669be09bb6aa              # double 7.3502039999999997
	.quad	0x4009cd698fe69271              # double 3.2252990000000001
	.quad	0x401f4431bde82d7b              # double 7.8165959999999996
	.quad	0x402336e9bbf0dc77              # double 9.6072520000000007
	.quad	0x40153738e6d15ad1              # double 5.303928
	.quad	0x401ec32ce89656ef              # double 7.690601
	.quad	0x401893efae7924af              # double 6.144469
	.quad	0x40110e453d20f2bf              # double 4.2639360000000002
	.quad	0x402300f861a60d45              # double 9.5018949999999993
	.quad	0x400a4e64b2314014              # double 3.288278
	.quad	0x4011af62b6ae7d56              # double 4.4212749999999996
	.quad	0x400df07d912556d2              # double 3.7424270000000002
	.quad	0x401c10d5e8d54110              # double 7.0164410000000004
	.quad	0x401e2f78feef5ec8              # double 7.5463599999999999
	.quad	0x4023065907d91255              # double 9.5123979999999992
	.quad	0x4019958d1526d8b2              # double 6.3960460000000001
	.quad	0x401e6d19157abb88              # double 7.6065409999999999
	.quad	0x401aecdc011d3672              # double 6.7313080000000003
	.quad	0x3fd0172ef0ae5365              # double 0.251415
	.quad	0x3fed7cf5f4e4430b              # double 0.92150399999999999
	.quad	0x400eaf694467381d              # double 3.8356499999999998
	.quad	0x3fd77304039abf34              # double 0.36639500000000003
	.quad	0x3fee99bf5946c333              # double 0.95626800000000001
	.quad	0x3fd6e8d5410f94c8              # double 0.35796099999999997
	.quad	0x40036357a355043e              # double 2.4235069999999999
	.quad	0x4021ee75ddd2ae8e              # double 8.9657429999999998
	.quad	0x401834573a797892              # double 6.0511140000000001
	.quad	0x3fe0aecaeea63b69              # double 0.52133700000000005
	.quad	0x4022c39628cbd124              # double 9.3820049999999994
	.quad	0x401148323358f2e0              # double 4.3205039999999997
	.quad	0x400268aefb2aae29              # double 2.3011149999999998
	.quad	0x40161a2ad3e920c0              # double 5.5255539999999996
	.quad	0x401c8d6494d50ebb              # double 7.1380790000000003
	.quad	0x400b5bcc2938de6e              # double 3.4198230000000001
	.quad	0x4012cb4c7f349386              # double 4.6985340000000004
	.quad	0x401af0cdc8754f37              # double 6.7351599999999996
	.quad	0x3fff04189374bc6a              # double 1.9384999999999999
	.quad	0x3faef826edaa92e6              # double 0.060486999999999999
	.quad	0x4016125aee631f8a              # double 5.517925
	.quad	0x40177d1dcd7060bb              # double 5.8721839999999998
	.quad	0x40131e43675ddd2b              # double 4.7795540000000001
	.quad	0x4022e7ee0b0af5fd              # double 9.4529879999999995
	.quad	0x4004945069a4df48              # double 2.572419
	.quad	0x400128a1dfb9389b              # double 2.1448399999999999
	.quad	0x402188bd66277c46              # double 8.7670700000000004
	.quad	0x3ff95b573eab367a              # double 1.5848
	.quad	0x4011f87db2b34613              # double 4.492667
	.quad	0x4023203254e6e222              # double 9.5628840000000004
	.quad	0x401d3ac29bf162ae              # double 7.3073829999999997
	.quad	0x401af0f062d40aaf              # double 6.7352920000000003
	.quad	0x3ff89918a009f623              # double 1.537377
	.quad	0x4012f03e63e8dda5              # double 4.7346130000000004
	.quad	0x40122470a808c826              # double 4.5355860000000003
	.quad	0x40055913e81450f0              # double 2.6684950000000001
	.quad	0x401bc0c176577532              # double 6.9382380000000001
	.quad	0x40222acd184c2720              # double 9.083596
	.quad	0x4022665dbfceb789              # double 9.1999340000000007
	.quad	0x4018651b4fe79ee0              # double 6.0987369999999999
	.quad	0x4018cdc11e42e126              # double 6.2009319999999999
	.quad	0x4009759a30984e40              # double 3.182423
	.quad	0x4003986338b47c74              # double 2.449408
	.quad	0x4010051b4fe79ee0              # double 4.0049869999999999
	.quad	0x40179cafb3b75211              # double 5.9030139999999998
	.quad	0x4021aaba9d1f6018              # double 8.8334550000000007
	.quad	0x3ff45e071c53f39d              # double 1.272956
	.quad	0x401ccfc9ff92f2b6              # double 7.2029189999999996
	.quad	0x4001e895d0b73d19              # double 2.2385670000000002
	.quad	0x400858655193708b              # double 3.0431620000000001
	.quad	0x4022f25a89b951c6              # double 9.4733470000000004
	.quad	0x4022eaa172abef07              # double 9.4582630000000005
	.quad	0x4023c7121ab4b72c              # double 9.8888099999999994
	.quad	0x40100d783dff3f10              # double 4.0131540000000001
	.quad	0x402339337eb28d86              # double 9.6117209999999993
	.quad	0x401b58f0c77dd873              # double 6.836856
	.quad	0x401b6fadf2ecf206              # double 6.8590619999999998
	.quad	0x402331af1886df83              # double 9.5970390000000005
	.quad	0x3ffa0f0c77dd872f              # double 1.628674
	.quad	0x40230d8b1dd5d3dd              # double 9.5264520000000008
	.quad	0x4017d4988094e5d6              # double 5.9576130000000003
	.quad	0x40218288051c9f73              # double 8.7549440000000001
	.quad	0x40215c11c2a02321              # double 8.6798230000000007
	.quad	0x4023cbde6149c6f3              # double 9.8981809999999992
	.quad	0x4020636eb4e98138              # double 8.1942039999999992
	.quad	0x3fe4fd1782d38477              # double 0.65589500000000001
	.quad	0x4017e3fd0d0678c0              # double 5.972645
	.quad	0x4023a2df2ecf2064              # double 9.8181089999999997
	.quad	0x400f724a6a875d57              # double 3.930806
	.quad	0x40124710880d801b              # double 4.5693989999999998
	.quad	0x401a39c560c7c0f4              # double 6.5564169999999997
	.quad	0x400b828240b78034              # double 3.4387249999999998
	.quad	0x401eb35935fc3b4f              # double 7.6751449999999996
	.quad	0x4014dc393682730c              # double 5.2150619999999996
	.quad	0x40092977c88e79ab              # double 3.145248
	.quad	0x3ff44a38327674d1              # double 1.2681199999999999
	.quad	0x4021e44bb1af3a15              # double 8.9458900000000003
	.quad	0x3fe7b547e06961c3              # double 0.74087899999999995
	.quad	0x4022d1d9f4d37c13              # double 9.4098659999999991
	.quad	0x400bdccc03793144              # double 3.4828109999999999
	.quad	0x4004598e10cf5b1d              # double 2.5437280000000002
	.quad	0x40124be1a8262457              # double 4.574103
	.quad	0x40199bea0ba1f4b2              # double 6.4022600000000001
	.quad	0x3ff5f2e7b3d8e001              # double 1.3718030000000001
	.quad	0x402335e2ac322292              # double 9.605245
	.quad	0x402370b8cfbfc654              # double 9.7201599999999999
	.quad	0x3fbecfb762d83c6d              # double 0.12035700000000001
	.quad	0x401f10c1333b96af              # double 7.7663619999999999
	.quad	0x4010b82491afc04d              # double 4.1798270000000004
	.quad	0x4015c19d66adb403              # double 5.4390770000000002
	.quad	0x401c59de481f5382              # double 7.0877619999999997
	.quad	0x4016dbfad2999568              # double 5.7148240000000001
	.quad	0x401d3c2699c7bcc3              # double 7.3087410000000004
	.quad	0x40165424e5929670              # double 5.5821719999999999
	.quad	0x400148a82a5614e0              # double 2.1604770000000002
	.quad	0x4015d4c447c30d30              # double 5.4577799999999996
	.quad	0x401d8203a322af57              # double 7.3769669999999996
	.quad	0x401c7e5796bfca86              # double 7.1233810000000002
	.quad	0x3fe69e2584f4c6e7              # double 0.70680500000000002
	.quad	0x40147324c8366517              # double 5.1124450000000001
	.quad	0x401c12856605ee57              # double 7.0180870000000004
	.quad	0x400601b97353b4b3              # double 2.750842
	.quad	0x40026fb7e90ff972              # double 2.3045499999999999
	.quad	0x3fc0520d130df9be              # double 0.12750400000000001
	.quad	0x3ffcbecfe9b7bf1f              # double 1.7965850000000001
	.quad	0x40135a854477ff15              # double 4.8383989999999999
	.quad	0x401cedb22d0e5604              # double 7.2321249999999999
	.quad	0x3fea770bd017dae8              # double 0.82703199999999999
	.quad	0x40074bf01322f273              # double 2.9120789999999999
	.quad	0x4001f99567dbb16c              # double 2.2468669999999999
	.quad	0x40218773e24febd1              # double 8.7645560000000007
	.quad	0x401c1625204af923              # double 7.0216260000000004
	.quad	0x4019b44b2b777d0f              # double 6.4260679999999999
	.quad	0x401d46a5d6bebe16              # double 7.3189919999999997
	.quad	0x401066abde3fbbd8              # double 4.1002650000000003
	.quad	0x402105a48b652370              # double 8.5110209999999995
	.quad	0x400b2939eadd590c              # double 3.39513
	.quad	0x4023c10f0e90bc7b              # double 9.8770679999999995
	.quad	0x3ff983c8e25c810a              # double 1.5946739999999999
	.quad	0x3ff6051fc4c16590              # double 1.3762509999999999
	.quad	0x40109e7296f6512b              # double 4.1547340000000004
	.quad	0x4022da704bc27632              # double 9.4266380000000005
	.quad	0x40203539756c93a7              # double 8.1039539999999999
	.quad	0x3ff2ecc70867ad8e              # double 1.1828069999999999
	.quad	0x401fcc99ae924f22              # double 7.9498049999999996
	.quad	0x402016df3f961805              # double 8.0446720000000003
	.quad	0x401c87442c7fbacb              # double 7.1320959999999998
	.quad	0x3fe9f127f5e84f09              # double 0.81068799999999996
	.quad	0x4007ec5974e65bea              # double 2.990405
	.quad	0x4015f37c99ae924f              # double 5.4877799999999999
	.quad	0x401ab31ca7d6733f              # double 6.6749140000000002
	.quad	0x400883e186983516              # double 3.0643950000000002
	.quad	0x4023d155d5f56a7b              # double 9.9088580000000003
	.quad	0x4023f32441fea811              # double 9.9748859999999996
	.quad	0x4012191c8eabffce              # double 4.5245230000000003
	.quad	0x401b1f75d9a0f0a6              # double 6.7807230000000001
	.quad	0x401deda6e75ff60a              # double 7.4820820000000001
	.quad	0x3ff8e56eefa1e3eb              # double 1.556014
	.quad	0x40187d16b97fe8ee              # double 6.1221569999999996
	.quad	0x402157f9b56323bc              # double 8.6718270000000003
	.quad	0x401f165c2d278078              # double 7.7718360000000004
	.quad	0x3fed7192ea52ef91              # double 0.92011399999999999
	.quad	0x40150cefed63454a              # double 5.2626340000000003
	.quad	0x4016d7219220ff54              # double 5.710089
	.quad	0x402325bcec84f8f9              # double 9.5737070000000006
	.quad	0x401cd9e060fe4799              # double 7.2127699999999999
	.quad	0x3fddc15d2d01c0ca              # double 0.46492699999999998
	.quad	0x4010842528ae74f3              # double 4.1290480000000001
	.quad	0x400d67b24638c975              # double 3.6756329999999999
	.quad	0x3ff4214ad362e903              # double 1.2581279999999999
	.quad	0x40199c1acde19fc3              # double 6.4024460000000003
	.quad	0x401a83d35eb7457c              # double 6.628736
	.quad	0x402225fb9389b520              # double 9.0741849999999999
	.quad	0x400c91c4b90214ad              # double 3.5711759999999999
	.quad	0x4002527b2cc70868              # double 2.2902740000000001
	.quad	0x40203ae3e6c4c597              # double 8.1150199999999995
	.quad	0x3ff1f00ef1348b22              # double 1.121108
	.quad	0x401e01c432ca57a8              # double 7.5017250000000004
	.quad	0x4002ff36ac647779              # double 2.3746160000000001
	.quad	0x40129a6612839043              # double 4.6507800000000001
	.quad	0x40125546d3f9e7b8              # double 4.583278
	.quad	0x401260474d9c6b05              # double 4.5940219999999998
	.quad	0x401c4f1348b22079              # double 7.0772219999999999
	.quad	0x401f31800a7c5ac4              # double 7.7983399999999996
	.quad	0x4012256798958d9b              # double 4.5365279999999997
	.quad	0x4000224aada33bda              # double 2.0167440000000001
	.quad	0x401269c1f85d744f              # double 4.6032789999999997
	.quad	0x40204217f4128bf4              # double 8.1290890000000004
	.quad	0x3fdabf1a5ca29846              # double 0.41791400000000001
	.quad	0x3ff3feab367a0f91              # double 1.2496750000000001
	.quad	0x4017fa5b530ced4e              # double 5.9944889999999997
	.quad	0x401883e1437c5693              # double 6.1287890000000003
	.quad	0x3ff6f92f2b66b617              # double 1.4358359999999999
	.quad	0x40175ea91d9b1b7a              # double 5.8424420000000001
	.quad	0x40161e66cb10342b              # double 5.5296890000000003
	.quad	0x4022029fbe76c8b4              # double 9.0051249999999996
	.quad	0x40219723cc8de2ac              # double 8.7951949999999996
	.quad	0x40148b0a2ca9ac36              # double 5.1357809999999997
	.quad	0x401b9f8769ec2ce4              # double 6.9057899999999997
	.quad	0x400033b18dac258d              # double 2.0252409999999998
	.quad	0x40048169c23b7953              # double 2.5631900000000001
	.quad	0x40218da2b5a20ddc              # double 8.7766319999999993
	.quad	0x3fe931ec0b567558              # double 0.78734400000000004
	.quad	0x3ffbbe553ac4f7ec              # double 1.733968
	.quad	0x401b7cd184c27200              # double 6.871893
	.quad	0x401e8178f68be2f8              # double 7.6264380000000002
	.quad	0x400437d2849cb253              # double 2.5272570000000001
	.quad	0x400ecbfc2224edf6              # double 3.849602
	.quad	0x40202d29563a9f38              # double 8.0882059999999996
	.quad	0x3ff439ffd60e94ee              # double 1.26416
	.quad	0x40119b90214ad363              # double 4.4019170000000001
	.quad	0x40127b267c6b8b69              # double 4.6202639999999997
	.quad	0x40181a2cecc814d7              # double 6.0255619999999999
	.quad	0x3ff1331d2e0e3044              # double 1.0749789999999999
	.quad	0x4018fe63a5c1c609              # double 6.2484270000000004
	.quad	0x4006b04039abf338              # double 2.8360599999999998
	.quad	0x3ffd9b78cc9a77e6              # double 1.850457
	.quad	0x40103f66a5508701              # double 4.0619149999999999
	.quad	0x401790a63305100a              # double 5.8912589999999998
	.quad	0x401e802a3486f04a              # double 7.6251610000000003
	.quad	0x400811737542a23c              # double 3.008521
	.quad	0x40098f405f6ba062              # double 3.194947
	.quad	0x3ff7eb4a66559f6f              # double 1.4949440000000001
	.quad	0x401f7ab1d4f9c1f8              # double 7.8698189999999996
	.quad	0x4013a7021d10b1ff              # double 4.9130940000000001
	.quad	0x401403211cb039ef              # double 5.0030559999999999
	.quad	0x401f798a65492ff5              # double 7.8686920000000002
	.quad	0x3fbb54b05b7cfe58              # double 0.10676099999999999
	.quad	0x40078196d8f4f93c              # double 2.9382760000000001
	.quad	0x40191ecb74ddf86e              # double 6.2800729999999998
	.quad	0x3ff6edbc664d3bf3              # double 1.433041
	.quad	0x402397fd60e94ee4              # double 9.7968550000000007
	.quad	0x3fe8a6c3b927d45a              # double 0.77035699999999996
	.quad	0x401c0c3ac929aa1d              # double 7.0119429999999996
	.quad	0x4009d83be6601bca              # double 3.2305830000000002
	.quad	0x4018ebe1a8262457              # double 6.230353
	.quad	0x4012434a01abd1ab              # double 4.5657120000000004
	.quad	0x4020f436fc158fb4              # double 8.4769819999999995
	.quad	0x401b67b24638c975              # double 6.8512659999999999
	.quad	0x3fdc6bb55ac03ff7              # double 0.44407400000000002
	.quad	0x40216daa715831f0              # double 8.7141909999999996
	.quad	0x401241b3f20a73f7              # double 4.5641629999999997
	.quad	0x3fde357603925bb8              # double 0.47201300000000002
	.quad	0x40220b9cd8127b2d              # double 9.0226810000000004
	.quad	0x3ff48650e779207d              # double 1.2827919999999999
	.quad	0x402077922962cfd9              # double 8.2335370000000001
	.quad	0x401f4e5d5b24e9c4              # double 7.8265279999999997
	.quad	0x40221ed4a1ad6452              # double 9.0602160000000005
	.quad	0x40210e25a682b628              # double 8.5276309999999995
	.quad	0x401c9e264e48626f              # double 7.1544429999999997
	.quad	0x3fef55eaee2003ac              # double 0.97923800000000005
	.quad	0x3fcfb60ae9680e06              # double 0.24774299999999999
	.quad	0x4023655bee3d5fdd              # double 9.6979670000000002
	.quad	0x3fce68db8bac710d              # double 0.23757500000000001
	.quad	0x40232ab990afe60c              # double 9.5834469999999996
	.quad	0x4019543fa2ad3e92              # double 6.332274
	.quad	0x40094fbf401c4fc2              # double 3.1639390000000001
	.quad	0x4018bb2c40d0aaa8              # double 6.1827860000000001
	.quad	0x401fffdc1615ebfb              # double 7.9998630000000003
	.quad	0x3fd61d53cddd6e05              # double 0.34554000000000001
	.quad	0x4023357add15f02c              # double 9.6044529999999994
	.quad	0x40224bd4ae429e0a              # double 9.1481069999999995
	.quad	0x401604aa53fc0097              # double 5.504556
	.quad	0x3fcd8e325d4a5df2              # double 0.230902
	.quad	0x401ac7496aad1d04              # double 6.6946159999999999
	.quad	0x3fd1116228134480              # double 0.26668599999999998
	.quad	0x400f257082491afc              # double 3.893281
	.quad	0x40070e736049ecb3              # double 2.882056
	.quad	0x3fefedc1a47a9e2c              # double 0.99777300000000002
	.quad	0x40220bf5b5fa2270              # double 9.0233589999999992
	.quad	0x4017d79af1886df8              # double 5.9605519999999999
	.quad	0x3ff196fb8f57f738              # double 1.099361
	.quad	0x3fee98aa8650e779              # double 0.95613599999999999
	.quad	0x4019ee06961c3697              # double 6.4824469999999996
	.quad	0x40142c6a3bddfca0              # double 5.043374
	.quad	0x401029e279dd3bb0              # double 4.0409030000000001
	.quad	0x4022da378ab0c88a              # double 9.4262049999999995
	.quad	0x4007843bb40b34e7              # double 2.9395669999999998
	.quad	0x401288d5842b734b              # double 4.6336269999999997
	.quad	0x3feeb43b70ef5665              # double 0.95950100000000004
	.quad	0x40215483ec892ab7              # double 8.6650690000000008
	.quad	0x40128b65ecc3e319              # double 4.6361309999999998
	.quad	0x4023c36f5caf2d80              # double 9.8817090000000007
	.quad	0x4021da37cdcca70d              # double 8.9262069999999998
	.quad	0x4020a5a14488c60d              # double 8.3234960000000004
	.quad	0x40018e3369b9d7fe              # double 2.1944340000000002
	.quad	0x4020d00431bde82d              # double 8.4062819999999991
	.quad	0x40178b1ee2435697              # double 5.8858600000000001
	.quad	0x3fe49700cd855971              # double 0.64343300000000003
	.quad	0x4004e32c1f42bb66              # double 2.6109239999999998
	.quad	0x401152b0a6fc58ac              # double 4.3307520000000004
	.quad	0x402249e518f3eccc              # double 9.1443259999999995
	.quad	0x401907d06bbdbe3c              # double 6.2576309999999999
	.quad	0x401616aec0724b77              # double 5.522151
	.quad	0x400ae3632c1f42bb              # double 3.3610289999999998
	.quad	0x4015742070b8cfc0              # double 5.3634050000000002
	.quad	0x4018698915bdd767              # double 6.1030620000000004
	.quad	0x40177ba6efc371da              # double 5.8707539999999998
	.quad	0x401808969a0ad8a1              # double 6.0083869999999999
	.quad	0x401b3842b734b513              # double 6.8049419999999996
	.quad	0x4022b7a355043e53              # double 9.3586679999999997
	.quad	0x3ff22faf85942917              # double 1.1366419999999999
	.quad	0x4014d17939a7c17b              # double 5.2045640000000004
	.quad	0x4009871d60631727              # double 3.1909740000000002
	.quad	0x40229eb67c286f8b              # double 9.3099860000000003
	.quad	0x401e9e26d4801f75              # double 7.6544449999999999
	.quad	0x4005f0c6f7a0b5ee              # double 2.7425670000000002
	.quad	0x4011c477ff151e75              # double 4.4418639999999998
	.quad	0x4000cbb55ac03ff7              # double 2.0994670000000002
	.quad	0x401cc43fa2ad3e92              # double 7.191649
	.quad	0x401afe69270b06c4              # double 6.7484479999999998
	.quad	0x401f3a72a7bd48cb              # double 7.8070779999999997
	.quad	0x4011621c8a7a41e5              # double 4.3458119999999996
	.quad	0x401ece308787485e              # double 7.7013569999999998
	.quad	0x400742e1ac57e23f              # double 2.9076569999999999
	.quad	0x3ff54947064ece9a              # double 1.33039
	.quad	0x4022df5ab7dc7ac0              # double 9.4362390000000004
	.quad	0x401c25610adcd2d4              # double 7.0365029999999997
	.quad	0x40104cd67fd3f5b6              # double 4.075037
	.quad	0x4013a8d32830a0b2              # double 4.9148680000000002
	.quad	0x401770fc71d60631              # double 5.8603379999999996
	.quad	0x400add790752da98              # double 3.3581409999999998
	.quad	0x40057a1db877ab32              # double 2.6846269999999999
	.quad	0x401435f30e7ff584              # double 5.0526850000000003
	.quad	0x4014dd013a92a305              # double 5.2158249999999997
	.quad	0x4011c56a7ac81d3b              # double 4.4427890000000003
	.quad	0x4007820578e5c4eb              # double 2.9384869999999998
	.quad	0x40060edf61240746              # double 2.7572619999999999
	.quad	0x4009c958537e2c56              # double 3.2233130000000001
	.quad	0x3fd4c53f39d1b2e6              # double 0.32453900000000002
	.quad	0x3ff1db48909289db              # double 1.116036
	.quad	0x4011c4b2fa93af75              # double 4.4420890000000002
	.quad	0x400374306e5cd4ed              # double 2.4317329999999999
	.quad	0x4012929f9ce8d973              # double 4.6431870000000002
	.quad	0x3ff3f394b7b28955              # double 1.2469680000000001
	.quad	0x40084c1fc8f32379              # double 3.0371700000000001
	.quad	0x3ff3513f8db48909              # double 1.207336
	.quad	0x40212b734b51372a              # double 8.5848639999999996
	.quad	0x402274692f6e8295              # double 9.2273650000000007
	.quad	0x401a140181e03f70              # double 6.5195369999999997
	.quad	0x401ea01322f27350              # double 7.6563230000000004
	.quad	0x4017cf8a4c1ebc84              # double 5.9526760000000003
	.quad	0x4006afc158fb43d9              # double 2.8358180000000002
	.quad	0x400f9eb6390c9108              # double 3.952496
	.quad	0x3fe8707182235b4f              # double 0.76372600000000002
	.quad	0x401f9923a29c779a              # double 7.8995499999999996
	.quad	0x3fe140f66a550870              # double 0.53917999999999999
	.quad	0x40206e1cde5d1809              # double 8.2150639999999999
	.quad	0x3fecdadb8348f53c              # double 0.90171599999999996
	.quad	0x4001aac42e9899bf              # double 2.2083819999999998
	.quad	0x401beccc03793144              # double 6.9812469999999998
	.quad	0x400f5daf07bfe7e2              # double 3.920744
	.quad	0x4008c70329802c0a              # double 3.0971739999999999
	.quad	0x4023381c92ddbdb6              # double 9.6095930000000003
	.quad	0x4016a9670196d8f5              # double 5.665432
	.quad	0x40191b3743632c1f              # double 6.2765779999999998
	.quad	0x401ea0d4562e09ff              # double 7.6570600000000004
	.quad	0x4010924d099e0e73              # double 4.1428719999999997
	.quad	0x3ff32b2bfdb4cc25              # double 1.19804
	.quad	0x4003295c853c1483              # double 2.3951959999999999
	.quad	0x401567c45cbbc2b9              # double 5.3513349999999997
	.quad	0x40095bad3a604e1e              # double 3.1697639999999998
	.quad	0x400c9398e9707182              # double 3.5720689999999999
	.quad	0x400afb64e054690e              # double 3.3727510000000001
	.quad	0x40143c39ffd60e95              # double 5.0588150000000001
	.quad	0x4020863f141205bc              # double 8.2621999999999999
	.quad	0x402359c79b34a44c              # double 9.6753509999999991
	.quad	0x3fc598288051c9f7              # double 0.16870599999999999
	.quad	0x400d4006d0d4994a              # double 3.656263
	.quad	0x3ffbce3ac0c62e4d              # double 1.737849
	.quad	0x400feb4289118c19              # double 3.9898729999999998
	.quad	0x401e84db9c7368ad              # double 7.6297439999999996
	.quad	0x3fc91cb89d6adf72              # double 0.196189
	.quad	0x40132fd5885d3133              # double 4.7967129999999996
	.quad	0x4017ce8640208180              # double 5.9516840000000002
	.quad	0x401002c7325918a0              # double 4.002713
	.quad	0x4009ea8c9b845565              # double 3.2395260000000001
	.quad	0x40112c7c0f451761              # double 4.2934419999999998
	.quad	0x402314f1c3265ade              # double 9.5409070000000007
	.quad	0x4011cbb7f9d6f113              # double 4.448944
	.quad	0x40171af4f0d844d0              # double 5.7763249999999999
	.quad	0x3fd83b3e9a6f826f              # double 0.37861600000000001
	.quad	0x40215ad1287c200c              # double 8.6773769999999998
	.quad	0x40208ff5e84f0953              # double 8.2811730000000008
	.quad	0x40200c028e4fb97c              # double 8.0234570000000005
	.quad	0x40222b05faebc409              # double 9.0840300000000003
	.quad	0x40185d0c3d25247d              # double 6.0908670000000003
	.quad	0x40193e9531550ca2              # double 6.3111160000000002
	.quad	0x4010d23cc8de2ac3              # double 4.2053099999999999
	.quad	0x401fbba01eeed890              # double 7.9332279999999997
	.quad	0x401291c5c5718eb9              # double 4.6423560000000004
	.quad	0x40024fa8b4bf8fcd              # double 2.2888959999999998
	.quad	0x401c96b2af145522              # double 7.1471660000000004
	.quad	0x4001a15a8deb0fae              # double 2.203786
	.quad	0x3fe786f049a9973e              # double 0.73522200000000004
	.quad	0x3ff9b0fcf80dc337              # double 1.60571
	.quad	0x4020cec8f7553693              # double 8.4038769999999996
	.quad	0x400a5785729b280f              # double 3.292735
	.quad	0x40204b8cda6e75ff              # double 8.1475589999999993
	.quad	0x40168d288ce703b0              # double 5.6378500000000003
	.quad	0x3ff07644955b4678              # double 1.0288740000000001
	.quad	0x401198f8e7ddca4b              # double 4.3993869999999999
	.quad	0x4001d6c4827b6fe3              # double 2.229867
	.quad	0x402183b0c4588a05              # double 8.7572080000000003
	.quad	0x401ad223e1869835              # double 6.7052149999999999
	.quad	0x40226afd5454152b              # double 9.2089639999999999
	.quad	0x401a6b65668c2614              # double 6.6048790000000004
	.quad	0x4004b7bf1e8e6080              # double 2.5897199999999998
	.quad	0x4020ccfa8b4bf8fd              # double 8.4003490000000003
	.quad	0x3ffe1b8aa00192a7              # double 1.881724
	.quad	0x3ff3e949a5657fb7              # double 1.2444550000000001
	.quad	0x3fef97ce52deca25              # double 0.98728099999999996
	.quad	0x3fd256b873797460              # double 0.28654299999999999
	.quad	0x3ff38e3de6149c6f              # double 1.222227
	.quad	0x4004ba426bb55ac0              # double 2.5909469999999999
	.quad	0x3ff8e9878316a055              # double 1.5570139999999999
	.quad	0x4023191d798d8a98              # double 9.5490530000000006
	.quad	0x401224b9cb6848bf              # double 4.5358650000000003
	.quad	0x40219982a9930be1              # double 8.7998250000000002
	.quad	0x401852ed783dff3f              # double 6.0809839999999999
	.quad	0x40222ad9cf13ceea              # double 9.0836930000000002
	.quad	0x3fe1eb7aa25d8d7a              # double 0.55999500000000002
	.quad	0x3ffb08b545c78a6e              # double 1.6896260000000001
	.quad	0x4019f1101b003687              # double 6.4854130000000003
	.quad	0x400b2f4be835dedf              # double 3.3980939999999999
	.quad	0x401a5d42c3c9eecc              # double 6.591075
	.quad	0x4018dea033e78e19              # double 6.2174079999999998
	.quad	0x401fc0229a5ebb77              # double 7.9376319999999997
	.quad	0x3ff88012dfd694cd              # double 1.5312680000000001
	.quad	0x4021e3178b370047              # double 8.9435389999999995
	.quad	0x40142e0c17657753              # double 5.0449679999999999
	.quad	0x3fe957518b0d0edc              # double 0.79190899999999997
	.quad	0x402360247021d10b              # double 9.6877779999999997
	.quad	0x3ff46ca89fc6da45              # double 1.2765280000000001
	.quad	0x40074b313be22e5e              # double 2.9117150000000001
	.quad	0x4011e2cba732df50              # double 4.4714799999999997
	.quad	0x40115805e5f30e80              # double 4.33596
	.quad	0x4016ee4d1a650614              # double 5.7327159999999999
	.quad	0x401edea897635e74              # double 7.7174399999999999
	.quad	0x4022705be1a82624              # double 9.2194509999999993
	.quad	0x4021083cafb3b752              # double 8.5160879999999999
	.quad	0x4020d260f5e41d4b              # double 8.4108959999999993
	.quad	0x40213a702a3486f0              # double 8.6141369999999995
	.quad	0x401fa8b934699418              # double 7.9147689999999997
	.quad	0x3fcad362e9036439              # double 0.20957600000000001
	.quad	0x4022877c88e79aae              # double 9.2646219999999992
	.quad	0x401b3efd00713f07              # double 6.8115119999999996
	.quad	0x401cd2467be553ac              # double 7.2053469999999997
	.quad	0x402111ec7000431c              # double 8.5350070000000002
	.quad	0x401ebdacabc51548              # double 7.6852289999999996
	.quad	0x400e058e64b23140              # double 3.752713
	.quad	0x400c7c52e72da123              # double 3.560705
	.quad	0x4018ae0a41a261bf              # double 6.1699609999999998
	.quad	0x401a0ac215b9a5a9              # double 6.5105060000000003
	.quad	0x40120a4f00ef1349              # double 4.5100670000000003
	.quad	0x401afefc371da37f              # double 6.749009
	.quad	0x401a73f85510d38d              # double 6.6132520000000001
	.quad	0x401c19bed30f062d              # double 7.0251419999999998
	.quad	0x40218501e2584f4c              # double 8.7597799999999992
	.quad	0x3fbe2456f75d9a0f              # double 0.117742
	.quad	0x4019ecdc8754f377              # double 6.4813099999999997
	.quad	0x401c919439de481f              # double 7.1421669999999997
	.quad	0x4019c09a24031487              # double 6.4380879999999996
	.quad	0x4017b5c1c6088d6d              # double 5.9274969999999998
	.quad	0x4022bc99285a921d              # double 9.3683560000000003
	.quad	0x4023f0df37329c34              # double 9.9704529999999991
	.quad	0x3ff485a5fc7e6b40              # double 1.282629
	.quad	0x3fda044f1a1986ba              # double 0.40651300000000001
	.quad	0x4022016aceaaf35e              # double 9.0027679999999997
	.quad	0x401a59131ec0b567              # double 6.5869869999999997
	.quad	0x3ff510374ff865d8              # double 1.316459
	.quad	0x3fc2bef8ceb356da              # double 0.146453
	.quad	0x40189a858793dd98              # double 6.1509
	.quad	0x40011785f8d2e515              # double 2.1364860000000001
	.quad	0x401438d60a633051              # double 5.055504
	.quad	0x4011ef15e7c8d196              # double 4.4834820000000004
	.quad	0x400773d640e9d51b              # double 2.9315609999999999
	.quad	0x4013ba9a3d2d87f9              # double 4.9322290000000004
	.quad	0x40173cef240fa9c1              # double 5.8095059999999998
	.quad	0x3ff9dd451fc4c166              # double 1.6165210000000001
	.quad	0x4005db4b2fa93af7              # double 2.7320769999999999
	.quad	0x40130ac647778dd6              # double 4.7605219999999999
	.quad	0x401e77dfe32a0664              # double 7.6170650000000002
	.quad	0x3ff8107a6bd6e8b0              # double 1.5040230000000001
	.quad	0x4005176683c297c0              # double 2.6364260000000002
	.quad	0x401bcd2b6f19934f              # double 6.950361
	.quad	0x401c0c8c0ce91c8f              # double 7.0122530000000003
	.quad	0x401a6bc6a7ef9db2              # double 6.6052499999999998
	.quad	0x40231d0d0678c005              # double 9.5567399999999995
	.quad	0x4001860bb2bba98f              # double 2.1904520000000001
	.quad	0x3ff2529888f861a6              # double 1.145165
	.quad	0x4013a52ac753e708              # double 4.9112960000000001
	.quad	0x4005f9a30984e400              # double 2.746893
	.quad	0x40218b1c0010c6f8              # double 8.7716980000000007
	.quad	0x3fe8724fa8b4bf90              # double 0.76395400000000002
	.quad	0x4016f54046412cf1              # double 5.739503
	.quad	0x3fc797785729b281              # double 0.18431
	.quad	0x40149eca25529fe0              # double 5.155068
	.quad	0x401a27eb28d8665e              # double 6.538983
	.quad	0x3f312ba16e7a311f              # double 2.6200000000000003E-4
	.quad	0x401e4162ae4b0186              # double 7.5638529999999999
	.quad	0x401b5203a322af57              # double 6.8300919999999996
	.quad	0x4022f84a2fcefaa4              # double 9.4849409999999991
	.quad	0x3ff751bd61f5be5e              # double 1.4574560000000001
	.quad	0x4023607df5cf2496              # double 9.6884610000000002
	.quad	0x401e2496ededaec5              # double 7.5357320000000003
	.quad	0x4011bc42a66dbd73              # double 4.4338480000000002
	.quad	0x4015051e75360d02              # double 5.2549989999999998
	.quad	0x400660663c74fb55              # double 2.7970700000000002
	.quad	0x401b6038e29f9ce9              # double 6.8439670000000001
	.quad	0x40177dfeb8d82342              # double 5.8730419999999999
	.quad	0x4008d23571d1d474              # double 3.1026410000000002
	.quad	0x4014974794ea0770              # double 5.1477339999999998
	.quad	0x3ff5b77f27fe4bcb              # double 1.357299
	.quad	0x40235a83d35eb745              # double 9.6767869999999991
	.quad	0x400f54c33b539325              # double 3.916388
	.quad	0x40110919ef954eb1              # double 4.2588879999999998
	.quad	0x4022f11819d2391d              # double 9.4708869999999993
	.quad	0x40126471f79420b4              # double 4.5980910000000002
	.quad	0x401cd7e0ac7da1ec              # double 7.2108179999999997
	.quad	0x3fd0d60e94ee392e              # double 0.26306499999999999
	.quad	0x4012f0aed99cbee8              # double 4.735042
	.quad	0x400721a5870da5db              # double 2.891429
	.quad	0x3fdaa2163fdd65a1              # double 0.41614299999999999
	.quad	0x3ffc7c2656abde40              # double 1.7803100000000001
	.quad	0x40221986db50f40e              # double 9.0498569999999994
	.quad	0x40220f1dc50ce4eb              # double 9.0295240000000003
	.quad	0x4022efeaa2a0a958              # double 9.4685869999999994
	.quad	0x4004ebd4cfd08d4c              # double 2.6151520000000001
	.quad	0x3fe87416bdb1a6d7              # double 0.76417100000000004
	.quad	0x40090e2f37fbefd0              # double 3.131926
	.quad	0x4001f206c8711d7a              # double 2.2431770000000002
	.quad	0x3fed206c8711d799              # double 0.91020800000000002
	.quad	0x401e328027d88c1e              # double 7.5493170000000003
	.quad	0x402319feeb2d0a24              # double 9.5507729999999995
	.quad	0x3f707852f7f498c4              # double 0.0040210000000000003
	.quad	0x3ff21afaf8594291              # double 1.1315869999999999
	.quad	0x400e37ed41b75a75              # double 3.7773080000000001
	.quad	0x40239ba83f4eca68              # double 9.8040179999999992
	.quad	0x400b099e94ab1d50              # double 3.3796970000000002
	.quad	0x4011d09edbf8b9bb              # double 4.4537310000000003
	.quad	0x4015a2ba5a038195              # double 5.4089140000000002
	.quad	0x401c2cd7cf5f4e44              # double 7.0437919999999998
	.quad	0x402303c6a7ef9db2              # double 9.5073749999999997
	.quad	0x3ffc2b8e8ea39c52              # double 1.760634
	.quad	0x40179aeea63b688c              # double 5.9013010000000001
	.quad	0x4013024c8366516e              # double 4.7522450000000003
	.quad	0x40238b265add9c28              # double 9.7717770000000001
	.quad	0x4019b9795b35b0bc              # double 6.431127
	.quad	0x401094934267839d              # double 4.1450930000000001
	.quad	0x40233202107b7846              # double 9.5976719999999993
	.quad	0x4022d88893b7d849              # double 9.4229169999999999
	.quad	0x4022ae23af31b153              # double 9.3401160000000001
	.quad	0x4001ecf312b1b36c              # double 2.2406980000000001
	.quad	0x400753a0407cc7d2              # double 2.9158330000000001
	.quad	0x400e926527a20579              # double 3.821482
	.quad	0x4007b61ed5ae1cde              # double 2.9639259999999998
	.quad	0x40098c4c5974e65c              # double 3.193505
	.quad	0x3fe2e85985ad538b              # double 0.59086300000000003
	.quad	0x4016ad698fe69271              # double 5.6693480000000003
	.quad	0x4013502a3486f04a              # double 4.8282860000000003
	.quad	0x401acc026cc1ca3a              # double 6.6992279999999997
	.quad	0x401704bf8fcd67fd              # double 5.7546369999999998
	.quad	0x4014c09741d084e8              # double 5.1880769999999998
	.quad	0x4012b6b65a9a8049              # double 4.6784299999999996
	.quad	0x40053c8d1958969a              # double 2.654566
	.quad	0x3fef6cbfb15b573f              # double 0.98202500000000003
	.quad	0x4021657add15f02c              # double 8.6982029999999994
	.quad	0x400e012513b5bf6a              # double 3.750559
	.quad	0x3ffa43d577963993              # double 1.641561
	.quad	0x4023de49b1fab96f              # double 9.9341559999999997
	.quad	0x402045000c9539b9              # double 8.1347660000000008
	.quad	0x401420880d801b43              # double 5.0317689999999997
	.quad	0x402097079e59f2bb              # double 8.2949800000000007
	.quad	0x400d61d96e9bbf0e              # double 3.6727780000000001
	.quad	0x4021738bcdfefbf4              # double 8.7256759999999999
	.quad	0x40222ff3061c79b3              # double 9.0936509999999995
	.quad	0x40213cbd1244a622              # double 8.6186299999999996
	.quad	0x3feaef6b5d462c34              # double 0.84172599999999997
	.quad	0x402103393ab430f5              # double 8.5062960000000007
	.quad	0x3fd95feda6612839              # double 0.39648
	.quad	0x401f7336deb95e5b              # double 7.862514
	.quad	0x4022028fc0d2c387              # double 9.0050030000000003
	.quad	0x400c81a2e7f6f4bf              # double 3.5632990000000002
	.quad	0x40147d056c508b33              # double 5.1220910000000002
	.quad	0x40015c3b4f616723              # double 2.1700349999999999
	.quad	0x4005c71d60631727              # double 2.7222240000000002
	.quad	0x400ac5d63886594b              # double 3.3466
	.quad	0x401bf0b955f7835a              # double 6.9850820000000002
	.quad	0x401ac1fd9ba1b196              # double 6.6894439999999999
	.quad	0x4021cd41743e963e              # double 8.9008900000000004
	.quad	0x400db25edd052935              # double 3.7120950000000001
	.quad	0x4006667e846a5d6c              # double 2.800046
	.quad	0x400310ca1cef2410              # double 2.3831980000000001
	.quad	0x4019fd288ce703b0              # double 6.4972250000000003
	.quad	0x4021597268d32831              # double 8.6747010000000007
	.quad	0x4008d733a8a3f898              # double 3.1050789999999999
	.quad	0x400c758a76102795              # double 3.5573929999999998
	.quad	0x4011dcaafbc1acde              # double 4.4654959999999999
	.quad	0x401838943e100608              # double 6.0552530000000004
	.quad	0x40234468cac4b4d0              # double 9.6336119999999994
	.quad	0x40228051a8694035              # double 9.2506229999999992
	.quad	0x4003d0f16f4384ba              # double 2.477023
	.quad	0x40208a3a8e71476b              # double 8.2699780000000001
	.quad	0x40202e874c8ffb8b              # double 8.0908759999999997
	.quad	0x40209258f7121ab5              # double 8.2858350000000005
	.quad	0x4015371b8aa00193              # double 5.3038160000000003
	.quad	0x401473e100607810              # double 5.1131630000000001
	.quad	0x3fd074f722e1ac58              # double 0.25713900000000001
	.quad	0x40209039042d8c2a              # double 8.2816849999999995
	.quad	0x4015c070329802c1              # double 5.4379280000000003
	.quad	0x40002ad14a0a0f4d              # double 2.0209069999999998
	.quad	0x4010019b90ea9e6f              # double 4.0015700000000001
	.quad	0x40200a6b723ee1bd              # double 8.0203509999999998
	.quad	0x3fb0dda48b652370              # double 0.065881999999999996
	.quad	0x401c0b649d388a8b              # double 7.011126
	.quad	0x3fedf0867ad8e432              # double 0.93561099999999997
	.quad	0x4023627bb2fec56d              # double 9.6923499999999993
	.quad	0x40200a036006d0d5              # double 8.0195570000000007
	.quad	0x4000b965b20b8067              # double 2.0905260000000001
	.quad	0x40058f40e5a35d68              # double 2.6949480000000001
	.quad	0x401058583621fafd              # double 4.0862740000000004
	.quad	0x3fd8b0b7c3504c49              # double 0.38578600000000002
	.quad	0x40206ca276b7ed42              # double 8.2121770000000005
	.quad	0x40113fb69984a0e4              # double 4.3122199999999999
	.quad	0x40134997c3d68406              # double 4.8218680000000003
	.quad	0x4007b2ab68cef673              # double 2.9622410000000001
	.quad	0x4002d4f61672324d              # double 2.3539850000000002
	.quad	0x3fe04e69f05ea24d              # double 0.50957200000000002
	.quad	0x401601eafee6fb4c              # double 5.5018729999999998
	.quad	0x400c2d39da16616b              # double 3.5220829999999999
	.quad	0x4021affc32ebe597              # double 8.8437210000000004
	.quad	0x40010e568a50507a              # double 2.1320009999999998
	.quad	0x3ff5c83fd5022574              # double 1.361389
	.quad	0x3ff7434e3369b9d8              # double 1.453932
	.quad	0x401fa15054ac29bf              # double 7.9075329999999999
	.quad	0x401636d938151a43              # double 5.5535629999999996
	.quad	0x4012bc319c5a3e3a              # double 4.683783
	.quad	0x4014a681669ced0b              # double 5.1626029999999998
	.quad	0x402140d9513f8db5              # double 8.6266580000000008
	.quad	0x40198955f78359bc              # double 6.3841169999999998
	.quad	0x401d0f1561911490              # double 7.2647300000000001
	.quad	0x401d5426bb55ac04              # double 7.332179
	.quad	0x40224aa51e321a2e              # double 9.1457909999999991
	.quad	0x3fe71b5a63f9a49c              # double 0.72208899999999998
	.quad	0x3ffcad117b5286b6              # double 1.7922530000000001
	.quad	0x4020eafc04c8bc9d              # double 8.4589540000000003
	.quad	0x4002d31ec0b56755              # double 2.3530859999999998
	.quad	0x40204f666234a87e              # double 8.1550779999999996
	.quad	0x400efbc01a36e2eb              # double 3.872925
	.quad	0x3f94046412cf0f9d              # double 0.019547999999999999
	.quad	0x40001cb5781c7150              # double 2.0140180000000001
	.quad	0x40226300ffda4053              # double 9.1933670000000003
	.quad	0x401a31c75818c5ca              # double 6.5486120000000003
	.quad	0x40175ead0c3d2524              # double 5.8424569999999996
	.quad	0x3ffccf7a919695d9              # double 1.800654
	.quad	0x4010c713f077ccc0              # double 4.1944119999999998
	.quad	0x4009eb8f9b13165d              # double 3.2400199999999999
	.quad	0x3fff790d9d7774ac              # double 1.9670540000000001
	.quad	0x4006fe0828c36da8              # double 2.8740389999999998
	.quad	0x4012114488c60cbf              # double 4.5168629999999999
	.quad	0x40003b0e5e679464              # double 2.0288360000000001
	.quad	0x40036a53fc0096ff              # double 2.4269180000000001
	.quad	0x3fb3dcf0307f23cd              # double 0.077590000000000006
	.quad	0x4013953e707e175d              # double 4.8957459999999999
	.quad	0x401d881beb18116f              # double 7.3829190000000002
	.quad	0x401470ced4e4c943              # double 5.1101640000000002
	.quad	0x4022084a2fcefaa4              # double 9.0161909999999991
	.quad	0x401f0f559b3d07c8              # double 7.7649749999999997
	.quad	0x40171f893faf4278              # double 5.7807969999999997
	.quad	0x401f4a92e62131a9              # double 7.822826
	.quad	0x3fef3fbbd7b2031d              # double 0.97653
	.quad	0x4021c036006d0d4a              # double 8.8754120000000007
	.quad	0x40187cc35ce18266              # double 6.1218389999999996
	.quad	0x40127f562174c4ce              # double 4.624352
	.quad	0x3ff9883771865519              # double 1.595756
	.quad	0x3ff15ed6ba8c5868              # double 1.0856539999999999
	.quad	0x401b4f3e468cac4b              # double 6.8273859999999997
	.quad	0x4023422ab25b317f              # double 9.629232
	.quad	0x3fcd039ef0f16f44              # double 0.22667300000000001
	.quad	0x4002d7521144cbe2              # double 2.355137
	.quad	0x3fd07774aba38759              # double 0.25729099999999999
	.quad	0x401b0014f8b588e3              # double 6.7500799999999996
	.quad	0x401f118f3eccc469              # double 7.7671479999999997
	.quad	0x40100a8fc0d2c387              # double 4.0103140000000002
	.quad	0x3ff470196d8f4f94              # double 1.2773680000000001
	.quad	0x402154ed2cbea4ec              # double 8.6658720000000002
	.quad	0x4022032d2bb23572              # double 9.0062040000000003
	.quad	0x3ff88676a7264a17              # double 1.5328280000000001
	.quad	0x40224adba4d6e47e              # double 9.1462070000000004
	.quad	0x4021e5532617c1be              # double 8.9479000000000006
	.quad	0x4020cf214f0520d1              # double 8.4045509999999997
	.quad	0x402280a137f38c54              # double 9.2512299999999996
	.quad	0x3ffab779e9d0e992              # double 1.669794
	.quad	0x3fe4e2e6ea854478              # double 0.652698
	.quad	0x4021cc6b484d76ab              # double 8.8992559999999994
	.quad	0x40190bc382a12f90              # double 6.2614879999999999
	.quad	0x40053677f6b1a2a5              # double 2.6515960000000001
	.quad	0x3fe292c493426784              # double 0.58041600000000004
	.quad	0x3ffd97bc7f77af64              # double 1.849545
	.quad	0x40165fc2a8869c67              # double 5.5935160000000002
	.quad	0x3ffd864cb5bb3850              # double 1.845288
	.quad	0x4023a314ca925fe9              # double 9.8185179999999991
	.quad	0x3fa0b1dd5d3dc8b8              # double 0.032606999999999997
	.quad	0x400abdb5525cc426              # double 3.3426309999999999
	.quad	0x3feb4e24bba12b5e              # double 0.85328899999999996
	.quad	0x40163af42784a948              # double 5.5575720000000004
	.quad	0x4021117cc39ffd61              # double 8.5341550000000002
	.quad	0x400c2dcdb37c99af              # double 3.5223650000000002
	.quad	0x4023807e38eb0319              # double 9.7509630000000004
	.quad	0x3fd19df1172ef0ae              # double 0.27526499999999998
	.quad	0x400f850ce4ead0c4              # double 3.9399660000000001
	.quad	0x401f0dd7ecbb7f9d              # double 7.7635189999999996
	.quad	0x40232aae8e1d6495              # double 9.5833630000000002
	.quad	0x401aac52e72da123              # double 6.668285
	.quad	0x4021a191dde37586              # double 8.8155660000000005
	.quad	0x401f1d106ee30caa              # double 7.7783829999999998
	.quad	0x3fe09461b6d43d04              # double 0.51811300000000005
	.quad	0x400a2059a73b42cc              # double 3.2657959999999999
	.quad	0x40206f76c4827b70              # double 8.2177030000000002
	.quad	0x401967d4e09784ec              # double 6.3513979999999997
	.quad	0x3fdce831ad2135db              # double 0.45167200000000002
	.quad	0x401f5037d63022dd              # double 7.8283379999999995
	.quad	0x4006570ac3a860dd              # double 2.7925010000000001
	.quad	0x401a52bc72e275ab              # double 6.5807969999999996
	.quad	0x3ff7d0060780fdc1              # double 1.4882869999999999
	.quad	0x40145130164840e1              # double 5.0792849999999996
	.quad	0x4021bdd4a5df223a              # double 8.8707630000000002
	.quad	0x401aacdaf4adbc66              # double 6.6688039999999997
	.quad	0x4023a44827b6fe2e              # double 9.8208629999999992
	.quad	0x401a8e79ee02a77a              # double 6.6391369999999998
	.quad	0x402376d7a56de332              # double 9.7321139999999993
	.quad	0x3fd5f340d4dc65c7              # double 0.342972
	.quad	0x40094f78feef5ec8              # double 3.163805
	.quad	0x401300d887ebf22c              # double 4.750826
	.quad	0x3fefe0370cdc8755              # double 0.99612
	.quad	0x3fff2c764adff823              # double 1.9483550000000001
	.quad	0x40148d08919ef955              # double 5.1377280000000001
	.quad	0x40211e81450efdca              # double 8.5595800000000004
	.quad	0x402180e3ac0c62e5              # double 8.7517370000000003
	.quad	0x402204f41f212d77              # double 9.0096749999999997
	.quad	0x3fdacca2db61bb06              # double 0.41874
	.quad	0x4012157bc7f77af6              # double 4.5209799999999998
	.quad	0x4022792c6ac215ba              # double 9.2366670000000006
	.quad	0x401fea26a22b3893              # double 7.978663
	.quad	0x4015591ff7164c73              # double 5.3370360000000003
	.quad	0x400c445baf533f42              # double 3.5333779999999999
	.quad	0x3fb3bb2fec56d5d0              # double 0.077075000000000004
	.quad	0x3fe9028a1dfb938a              # double 0.78156000000000003
	.quad	0x4021027a63736cdf              # double 8.5048399999999997
	.quad	0x402311c714fce747              # double 9.5347220000000003
	.quad	0x4023c67caea747d8              # double 9.8876699999999999
	.quad	0x3fefab606b7aa25e              # double 0.98967000000000005
	.quad	0x401ab66cb10342ab              # double 6.6781490000000003
	.quad	0x401c81ce6c093d96              # double 7.1267639999999997
	.quad	0x401f09070fbeb9e5              # double 7.7588160000000003
	.quad	0x3fa907746887a8d6              # double 0.048884999999999998
	.quad	0x4023c9fb6134ce3e              # double 9.8944960000000002
	.quad	0x401526b4c7f34938              # double 5.2877989999999997
	.quad	0x402031f16b11c6d2              # double 8.0975450000000002
	.quad	0x4022d0cae642bf98              # double 9.4077979999999996
	.quad	0x4023460ded288ce7              # double 9.6368249999999999
	.quad	0x3fe5ce8fb00bcbe6              # double 0.68146499999999999
	.quad	0x4012561522a6f3f5              # double 4.5840649999999998
	.quad	0x401551c219eb6391              # double 5.3298420000000002
	.quad	0x40076651f3e89a89              # double 2.9249610000000001
	.quad	0x400228bb906466b2              # double 2.269889
	.quad	0x3fdc5ea24cc68230              # double 0.443276
	.quad	0x402332fad6cb5350              # double 9.5995699999999999
	.quad	0x40211cba30121683              # double 8.556108
	.quad	0x3ffd944998d045fe              # double 1.848703
	.quad	0x400370cc35ce1826              # double 2.4300769999999998
	.quad	0x401d0b41bfbdf091              # double 7.260993
	.quad	0x40193e7d1351159c              # double 6.3110239999999997
	.quad	0x3fd42a843808850a              # double 0.31509500000000001
	.quad	0x400fe327674d1633              # double 3.9859149999999999
	.quad	0x4013f094a2b9d3cc              # double 4.9849420000000002
	.quad	0x40110789613d31ba              # double 4.2573600000000003
	.quad	0x401614ee392e1ef7              # double 5.5204399999999998
	.quad	0x400ded72799a1fd1              # double 3.7409409999999998
	.quad	0x40211f90b8498809              # double 8.5616509999999995
	.quad	0x4019f1d2178f68be              # double 6.4861529999999998
	.quad	0x4020a27008a697af              # double 8.3172610000000002
	.quad	0x40201bd2fa0d77b8              # double 8.0543440000000004
	.quad	0x3feeeab9b23dd54e              # double 0.96615300000000004
	.quad	0x40010f1348b22079              # double 2.132361
	.quad	0x3ffe282e87d2c7b9              # double 1.8848100000000001
	.quad	0x4011063d816aceab              # double 4.256094
	.quad	0x400bab588e368f08              # double 3.4586649999999999
	.quad	0x3feca854477ff152              # double 0.89554800000000001
	.quad	0x400c7a30984e3fff              # double 3.559663
	.quad	0x3ffdede657b84dba              # double 1.870581
	.quad	0x40234a93f290abb4              # double 9.6456599999999994
	.quad	0x40187968d759ee89              # double 6.1185640000000001
	.quad	0x400659999999999a              # double 2.7937500000000002
	.quad	0x4020f0d49949e881              # double 8.4703719999999993
	.quad	0x3ff6074213a0c6b5              # double 1.3767720000000001
	.quad	0x401cc3e24febd09e              # double 7.1912929999999999
	.quad	0x401c34a7f8012dfd              # double 7.0514219999999996
	.quad	0x400a8feef5ec80c7              # double 3.3202799999999999
	.quad	0x401723bc903ea705              # double 5.7848990000000002
	.quad	0x40210970d62bf120              # double 8.5184390000000008
	.quad	0x40223bb6aa4b9885              # double 9.1166280000000004
	.quad	0x4012146994185059              # double 4.5199340000000001
	.quad	0x40159c5c13fd0d06              # double 5.4026949999999996
	.quad	0x401adfa0945f9df5              # double 6.7183859999999997
	.quad	0x401f574299d883ba              # double 7.8352149999999998
	.quad	0x3fd81450efdc9c4e              # double 0.37624000000000002
	.quad	0x401b9f605ab3aabd              # double 6.9056410000000001
	.quad	0x4012604189374bc7              # double 4.5940000000000003
	.quad	0x4022bf25a250f840              # double 9.3733339999999998
	.quad	0x3fd7d9dfdac68a93              # double 0.37267299999999998
	.quad	0x40230f63a1900820              # double 9.5300569999999993
	.quad	0x401882c94b380cb7              # double 6.1277210000000002
	.quad	0x40132223e1869835              # double 4.7833399999999999
	.quad	0x40174732df505d10              # double 5.8195300000000003
	.quad	0x3ffa0112ba16e7a3              # double 1.625262
	.quad	0x401617785729b281              # double 5.5229200000000001
	.quad	0x3ffe3dddb1209edc              # double 1.890104
	.quad	0x3ff593a604e1e710              # double 1.3485469999999999
	.quad	0x402224d8127b2cc7              # double 9.0719609999999999
	.quad	0x3fe2295a6c5d206d              # double 0.56754800000000005
	.quad	0x400544ea4a8c154d              # double 2.6586500000000002
	.quad	0x401c89806f262889              # double 7.1342790000000003
	.quad	0x4023cb9a176ddacf              # double 9.8976600000000001
	.quad	0x4010c2189bd8383b              # double 4.1895470000000001
	.quad	0x400b53b4b2fa93af              # double 3.4158719999999998
	.quad	0x4012a53e2d6238da              # double 4.6613699999999998
	.quad	0x3f9eb356da0168b6              # double 0.029981000000000001
	.quad	0x3fd68f605ab3aabd              # double 0.35250100000000001
	.quad	0x400735cbff47735c              # double 2.901268
	.quad	0x40215397dd00f777              # double 8.6632680000000004
	.quad	0x40143ff92f2b66b6              # double 5.0624739999999999
	.quad	0x4007fc1615ebfa8f              # double 2.9980889999999998
	.quad	0x402041fbe76c8b44              # double 8.1288750000000007
	.quad	0x4020f445aa2e3c53              # double 8.4770939999999992
	.quad	0x3fd8fa658c4bd33d              # double 0.39028299999999999
	.quad	0x4010dacb4289118c              # double 4.2136659999999999
	.quad	0x400aeaf038e29f9d              # double 3.364716
	.quad	0x4019a6ce789e774f              # double 6.4128970000000001
	.quad	0x4011b6e653868fd2              # double 4.4286130000000004
	.quad	0x4013073d5bab2181              # double 4.7570699999999997
	.quad	0x40202be835dedf1e              # double 8.0857559999999999
	.quad	0x3fcafd2a62aa1944              # double 0.21085100000000001
	.quad	0x3fc7c89f40a2877f              # double 0.18581
	.quad	0x402248c62e4d1a65              # double 9.142137
	.quad	0x40172fb00bcbe61d              # double 5.79657
	.quad	0x401f980fdc1615ec              # double 7.898498
	.quad	0x40101681ecd4aa11              # double 4.0219800000000001
	.quad	0x4023573a14cec41e              # double 9.6703650000000003
	.quad	0x40189ebc408d8ec9              # double 6.1550149999999997
	.quad	0x401fe5baf533f423              # double 7.9743459999999997
	.quad	0x4007a9491f2dc2b1              # double 2.957659
	.quad	0x402232ceee0f3cb4              # double 9.0992350000000001
	.quad	0x401bbda7f3cf7015              # double 6.9352109999999998
	.quad	0x4014254003254e6e              # double 5.0363769999999999
	.quad	0x3f78fd5cb790fb65              # double 0.0061009999999999997
	.quad	0x4007840a6b93ccd1              # double 2.939473
	.quad	0x4000ee158750c1b9              # double 2.1162519999999998
	.quad	0x3ff9d52e2fbe33ad              # double 1.614546
	.quad	0x401beb5568e820e6              # double 6.9798179999999999
	.quad	0x3ff7a0902de00d1b              # double 1.4766999999999999
	.quad	0x401707d6b65a9a80              # double 5.7576549999999997
	.quad	0x4012b6db50f40e5a              # double 4.6785709999999998
	.quad	0x40234b3ce63a5c1c              # double 9.6469489999999993
	.quad	0x4012399bf5946c33              # double 4.5562589999999998
	.quad	0x4022550a67620ee9              # double 9.1660950000000003
	.quad	0x4019cc03361565c3              # double 6.4492310000000002
	.quad	0x3fc65929670196d9              # double 0.174596
	.quad	0x401fc643cc07aaef              # double 7.9436179999999998
	.quad	0x4007a6138fffbce4              # double 2.9560919999999999
	.quad	0x4020dd39fba450ad              # double 8.4320830000000004
	.quad	0x400a99439de481f5              # double 3.3248359999999999
	.quad	0x401ede9ab29e4d5e              # double 7.7173870000000004
	.quad	0x40128ec5b078d930              # double 4.6394260000000003
	.quad	0x4023c53f39d1b2e6              # double 9.8852480000000007
	.quad	0x3fed03d35eb7457c              # double 0.90671699999999999
	.quad	0x4015f3a5c1c6088d              # double 5.4879369999999996
	.quad	0x40113be553ac4f7f              # double 4.3084920000000002
	.quad	0x401535714b9cb685              # double 5.3021900000000004
	.quad	0x4020dabc72e275ab              # double 8.4272189999999991
	.quad	0x4017e413db7f1737              # double 5.9727319999999997
	.quad	0x4022e8e7bc3c5bd1              # double 9.4548930000000002
	.quad	0x40141fb7a5f41aef              # double 5.0309739999999996
	.quad	0x3fed86317268d328              # double 0.92263099999999998
	.quad	0x401639de05037500              # double 5.5565110000000004
	.quad	0x401bc48e8a71de6a              # double 6.9419500000000003
	.quad	0x4008cdfaca361998              # double 3.1005760000000002
	.quad	0x4010f39ffd60e94f              # double 4.2379150000000001
	.quad	0x3fac05f6ba0620ab              # double 0.054732999999999997
	.quad	0x40232a68d32830a1              # double 9.5828310000000005
	.quad	0x3ff0d8dbcec84f90              # double 1.0529440000000001
	.quad	0x4015c7f23cc8de2b              # double 5.4452600000000002
	.quad	0x40227d50ca1cef24              # double 9.2447569999999998
	.quad	0x3fe04d8127b2cc71              # double 0.50946100000000005
	.quad	0x400494bd76ee73e7              # double 2.5726270000000002
	.quad	0x401a456eefa1e3eb              # double 6.567806
	.quad	0x3fff91cf355cd91f              # double 1.973098
	.quad	0x40200cc76d117b53              # double 8.0249590000000008
	.quad	0x3fb401711947cfa2              # double 0.078146999999999994
	.quad	0x4018651611ba3ca7              # double 6.0987169999999997
	.quad	0x4015b27136a400fc              # double 5.4242600000000003
	.quad	0x400e1d81f10667f9              # double 3.764408
	.quad	0x400af8fbca1059ea              # double 3.3715739999999998
	.quad	0x3ff871cc96462802              # double 1.5277829999999999
	.quad	0x4023407d4e09784f              # double 9.6259560000000004
	.quad	0x40196d188f42fe82              # double 6.3565389999999997
	.quad	0x4012303dddb1209f              # double 4.5471110000000001
	.quad	0x40059b688bda9436              # double 2.7008830000000001
	.quad	0x4000d1c2a0232096              # double 2.1024219999999998
	.quad	0x401e56e9ff0cbaf9              # double 7.5848769999999996
	.quad	0x4017d5dc4007570c              # double 5.9588479999999997
	.quad	0x401f586e3b46fdeb              # double 7.8363579999999997
	.quad	0x4015282278d0cc36              # double 5.2891940000000002
	.quad	0x3ff5fd790752da98              # double 1.3743829999999999
	.quad	0x40214b8d82342246              # double 8.6475639999999991
	.quad	0x3fe1ce1c58255b03              # double 0.55640999999999996
	.quad	0x4021491fd5885d31              # double 8.6428209999999996
	.quad	0x40027f3300de4c51              # double 2.312109
	.quad	0x3fe92a172abef06b              # double 0.78638799999999998
	.quad	0x4011b950763a1901              # double 4.4309710000000004
	.quad	0x3ffaf6fd21ff2e49              # double 1.6853
	.quad	0x3fdadd0d8cb07d0b              # double 0.419742
	.quad	0x3fed40bdcad14a0a              # double 0.91415299999999999
	.quad	0x400586c54bcf0b6b              # double 2.6908059999999998
	.quad	0x40235be9424e5929              # double 9.6795139999999992
	.quad	0x401783b927d45a60              # double 5.8786360000000002
	.quad	0x3fbd7928e0c9d9d3              # double 0.11513
	.quad	0x400e93a604e1e710              # double 3.8220939999999999
	.quad	0x3ff4ba85015c2092              # double 1.2955369999999999
	.quad	0x3ff3c9c7ffde7211              # double 1.2367630000000001
	.quad	0x4007477b395c4220              # double 2.9099029999999999
	.quad	0x401cb37f38c5436c              # double 7.1752900000000004
	.quad	0x400df0d306a2b170              # double 3.7425899999999999
	.quad	0x3fb851fc4c165908              # double 0.095001000000000002
	.quad	0x40236276965f5276              # double 9.6923110000000001
	.quad	0x3ff29f23465625a7              # double 1.1638520000000001
	.quad	0x3fa14f26aec0724b              # double 0.033806999999999997
	.quad	0x40225888f861a60d              # double 9.1729199999999995
	.quad	0x3ff0d67ec7863bef              # double 1.0523670000000001
	.quad	0x4022002b40f66a55              # double 9.0003299999999999
	.quad	0x400601b64e054691              # double 2.7508360000000001
	.quad	0x40178e071c53f39d              # double 5.8886989999999999
	.quad	0x4001af3d3a1d3240              # double 2.210566
	.quad	0x400570984e3ffef4              # double 2.6799780000000002
	.quad	0x3fda97bb73083559              # double 0.41551100000000002
	.quad	0x401b3ae2da554b8c              # double 6.8075060000000001
	.quad	0x4022fadd9c27e953              # double 9.4899719999999998
	.quad	0x3ffad0fb65668c26              # double 1.676021
	.quad	0x400a236199780baa              # double 3.2672759999999998
	.quad	0x4021cea550870111              # double 8.9036050000000007
	.quad	0x3ff5cbe835dedf1e              # double 1.362282
	.quad	0x4015fdf1e0828c37              # double 5.4979930000000001
	.quad	0x4009b5a07b352a84              # double 3.2136849999999999
	.quad	0x400dae11dbca9692              # double 3.7099950000000002
	.quad	0x402113c31df761cc              # double 8.5385980000000003
	.quad	0x40021b1960fa15db              # double 2.2632319999999999
	.quad	0x401f981882adc4ca              # double 7.8985310000000002
	.quad	0x4001981f10667f91              # double 2.1992780000000001
	.quad	0x40236b7e6f71a7e3              # double 9.7099489999999999
	.quad	0x3fd06de33269df98              # double 0.25670700000000002
	.quad	0x4008bbd0e12e83a1              # double 3.091707
	.quad	0x4018b532a497fa5d              # double 6.1769509999999999
	.quad	0x400425e3da2f8bdf              # double 2.5185010000000001
	.quad	0x401d215a4acf312b              # double 7.2825709999999999
	.quad	0x3ffc3dba0a526959              # double 1.7650699999999999
	.quad	0x40225c7f562174c5              # double 9.1806590000000003
	.quad	0x3faf67b1c0010c6f              # double 0.061337999999999997
	.quad	0x401a4ed2cbea4ebe              # double 6.5769760000000002
	.quad	0x3fe71c0a8d21bc12              # double 0.72217299999999995
	.quad	0x40149fd86a8fc0d3              # double 5.1560990000000002
	.quad	0x40204224463065f9              # double 8.1291829999999994
	.quad	0x402157e62dc6e2a8              # double 8.671678
	.quad	0x4013ef0cbaf965b2              # double 4.983447
	.quad	0x4017846c332f0175              # double 5.8793189999999997
	.quad	0x401cb50ce4ead0c4              # double 7.1768070000000002
	.quad	0x3fdbe66cb10342ab              # double 0.43593900000000002
	.quad	0x4020eafe60c38f36              # double 8.4589719999999993
	.quad	0x40119aa21a719b4e              # double 4.4010090000000002
	.quad	0x3fb29a91105e1c15              # double 0.072670999999999999
	.quad	0x3ffa417b95a29414              # double 1.640987
	.quad	0x3fccb54e2b063e08              # double 0.22428300000000001
	.quad	0x3ffd94877681669d              # double 1.848762
	.quad	0x400006106ab14ec2              # double 2.002961
	.quad	0x3fbd9b4dcebfec14              # double 0.115651
	.quad	0x3ff067913e81450f              # double 1.025285
	.quad	0x40124aa087ca643d              # double 4.5728780000000002
	.quad	0x400293e1437c5693              # double 2.3222070000000001
	.quad	0x3fca2291fb3fa6df              # double 0.20418
	.quad	0x4023d719f7f8ca82              # double 9.9201200000000007
	.quad	0x4021f2808c8259e2              # double 8.9736370000000001
	.quad	0x4000b969e3c96894              # double 2.0905339999999999
	.quad	0x3ff1c3cc07aaef2c              # double 1.1103019999999999
	.quad	0x40227f9c1f85d745              # double 9.2492380000000001
	.quad	0x401c9deacc92146a              # double 7.1542159999999999
	.quad	0x400e77603925bb7b              # double 3.8082889999999998
	.quad	0x4022a669057d1783              # double 9.3250200000000003
	.quad	0x40229653868fd19a              # double 9.2936060000000005
	.quad	0x40121a4acf312b1b              # double 4.5256759999999998
	.quad	0x402112ed56b00ffe              # double 8.5369670000000006
	.quad	0x3fecaefd438d1d8a              # double 0.89636099999999996
	.quad	0x400a3c6da4484945              # double 3.279506
	.quad	0x40239ba7b9170d63              # double 9.8040140000000004
	.quad	0x4017962fdfc19c17              # double 5.8966669999999999
	.quad	0x400fd7446f9b994e              # double 3.980111
	.quad	0x3ffd8a18bd66277c              # double 1.8462149999999999
	.quad	0x40143de0d66f0cfe              # double 5.0604279999999999
	.quad	0x401a3f0563ed0f62              # double 6.5615439999999996
	.quad	0x400c64c404a72eae              # double 3.5492020000000002
	.quad	0x4023b16440f23897              # double 9.8464679999999997
	.quad	0x401e29d7342edbb6              # double 7.5408600000000003
	.quad	0x40165578e5c4eb57              # double 5.583469
	.quad	0x3fbe20ddc6195465              # double 0.117689
	.quad	0x3fdfd14e3bcd35a8              # double 0.49714999999999998
	.quad	0x4000b94b7b28954a              # double 2.0904759999999998
	.quad	0x4022d2ceee0f3cb4              # double 9.4117350000000001
	.quad	0x401577446f9b994e              # double 5.3664719999999999
	.quad	0x40151abda0dfdef8              # double 5.2761139999999997
	.quad	0x3fe3d78a2a90cd42              # double 0.62006099999999997
	.quad	0x3fd91e1d2178f68c              # double 0.39246300000000001
	.quad	0x40134787485e3da3              # double 4.819852
	.quad	0x401d6b089a027525              # double 7.3545249999999998
	.quad	0x4022a2550870110a              # double 9.3170549999999999
	.quad	0x401b8bf401c4fc1e              # double 6.886673
	.quad	0x400c451c9f72f76e              # double 3.5337459999999998
	.quad	0x401ff58d1526d8b2              # double 7.9897960000000001
	.quad	0x40187fa9c12f09d9              # double 6.1246710000000002
	.quad	0x3ff695885d31337f              # double 1.4115070000000001
	.quad	0x3ffddc0767d34df0              # double 1.8662179999999999
	.quad	0x4013ad3cbc48f10b              # double 4.9191770000000004
	.quad	0x401224ba94bbe447              # double 4.5358679999999998
	.quad	0x4022f02cd39da166              # double 9.4690919999999998
	.quad	0x40216e8a50507a6c              # double 8.7158990000000002
	.quad	0x400a300ffda4052d              # double 3.2734679999999998
	.quad	0x401f251f3e89a88b              # double 7.7862520000000001
	.quad	0x401d2273d5bab218              # double 7.2836449999999999
	.quad	0x3fee98bd66277c46              # double 0.95614500000000002
	.quad	0x4009df10667f90da              # double 3.2339180000000001
	.quad	0x401b939192641b33              # double 6.8941100000000004
	.quad	0x4016da697aeddce8              # double 5.7132930000000002
	.quad	0x400d3a98eda22f6a              # double 3.6536119999999999
	.quad	0x3ff0b3e9a6f826ee              # double 1.0439240000000001
	.quad	0x3ffee04d12018a44              # double 1.9297610000000001
	.quad	0x401b6fd113836a83              # double 6.8591959999999998
	.quad	0x3fa2048e043a2164              # double 0.035191
	.quad	0x40156f5558212945              # double 5.3587239999999996
	.quad	0x3fff50c804102ff9              # double 1.957222
	.quad	0x3fe6e8a936c58eeb              # double 0.71590100000000001
	.quad	0x40120cf91a32b12d              # double 4.5126689999999998
	.quad	0x401a6602c9081c2e              # double 6.5996199999999998
	.quad	0x401a27fc7607c41a              # double 6.5390490000000003
	.quad	0x4009c81d3aa369fd              # double 3.222712
	.quad	0x3fc788a04d12018a              # double 0.18385699999999999
	.quad	0x401da023a6ce3583              # double 7.4063860000000004
	.quad	0x4020c09efd86a8fc              # double 8.3762129999999999
	.quad	0x4013078feef5ec81              # double 4.7573850000000002
	.quad	0x401c4c0010c6f7a1              # double 7.0742190000000003
	.quad	0x401fe5d56f32bdc2              # double 7.9744469999999996
	.quad	0x400ecc26138fffbd              # double 3.849682
	.quad	0x4018fa6fc58ab92c              # double 6.244567
	.quad	0x400bd46d3f9e7b81              # double 3.4787240000000001
	.quad	0x4008ebeb5b2d4d40              # double 3.1151949999999999
	.quad	0x401afe7c49fd7a14              # double 6.7485210000000002
	.quad	0x401cbcc144028e50              # double 7.1843310000000002
	.quad	0x4010efb6dca07f67              # double 4.2340960000000001
	.quad	0x40161702602c9082              # double 5.5224700000000002
	.quad	0x3ffc60be51090710              # double 1.7736190000000001
	.quad	0x4010f558ea7ce0fc              # double 4.2395969999999998
	.quad	0x4017e122749f0e4e              # double 5.9698580000000003
	.quad	0x400c9b2f661f18ca              # double 3.575774
	.quad	0x4000bfa6defc7a3a              # double 2.0935800000000002
	.quad	0x401e536deb95e5b0              # double 7.581474
	.quad	0x3ff050129cbab64a              # double 1.019549
	.quad	0x4014bade657b84dc              # double 5.1824890000000003
	.quad	0x40097a9a8049667b              # double 3.1848649999999998
	.quad	0x3fe238b47c73eee5              # double 0.56942199999999998
	.quad	0x4014e6327ed84d34              # double 5.2248020000000004
	.quad	0x400cd20fb224aada              # double 3.6025689999999999
	.quad	0x4013b774aba38759              # double 4.9291559999999999
	.quad	0x3fc174aba3875925              # double 0.13637299999999999
	.quad	0x40096476f2a5a46a              # double 3.1740550000000001
	.quad	0x401a336c58eeae9f              # double 6.5502180000000001
	.quad	0x400b729131ec0b56              # double 3.4309409999999998
	.quad	0x3fe6ef3f52fc2657              # double 0.71670500000000004
	.quad	0x4021cd44567125dd              # double 8.9009119999999999
	.quad	0x401c266277c45cbc              # double 7.0374850000000002
	.quad	0x3fef8a7829068987              # double 0.985653
	.quad	0x4008aad9274e22a3              # double 3.0834220000000001
	.quad	0x400f384e3ffef391              # double 3.9024930000000002
	.quad	0x3fef79f87f023e9f              # double 0.98363900000000004
	.quad	0x40116a32b12d3416              # double 4.3537090000000003
	.quad	0x401280d5629d840a              # double 4.6258140000000001
	.quad	0x3fee9da9c99285a9              # double 0.95674599999999999
	.quad	0x401d66a3bddfca00              # double 7.3502340000000004
	.quad	0x401cb9e44fa05144              # double 7.1815350000000002
	.quad	0x4000ef8c64fdb09a              # double 2.1169669999999998
	.quad	0x40081905c0336156              # double 3.0122179999999998
	.quad	0x401985d13d74d595              # double 6.380681
	.quad	0x401bbd972cd7cf5f              # double 6.9351469999999997
	.quad	0x40039bd5992428d4              # double 2.4510909999999999
	.quad	0x401f9a1cac083127              # double 7.9005
	.quad	0x401da419e30014f9              # double 7.4102550000000003
	.quad	0x4018cfb224aada34              # double 6.2028280000000002
	.quad	0x401b6bc05d52c16e              # double 6.855226
	.quad	0x4012799f5dfeb8d8              # double 4.6187719999999999
	.quad	0x4023d6fb4c3c18b5              # double 9.9198859999999999
	.quad	0x3fdee6362a5e785b              # double 0.48280099999999998
	.quad	0x3fe7e8a2ec28b2a7              # double 0.74714800000000003
	.quad	0x400f6b042528ae75              # double 3.927254
	.quad	0x400a5c8b0079a283              # double 3.2951869999999999
	.quad	0x4018010adcd2d44e              # double 6.0010180000000002
	.quad	0x401888b934699418              # double 6.1335189999999997
	.quad	0x4010568fd199bb28              # double 4.0845330000000004
	.quad	0x401920a1be2b495a              # double 6.2818670000000001
	.quad	0x400b158d9b5e95b8              # double 3.3855240000000002
	.quad	0x3fd197d06bbdbe3c              # double 0.274891
	.quad	0x3fe0e41f644955b4              # double 0.52784699999999996
	.quad	0x401e9697f1f9ad00              # double 7.6470640000000003
	.quad	0x4020d41c8216c615              # double 8.4142799999999998
	.quad	0x3fc4f8b588e368f1              # double 0.16384000000000001
	.quad	0x40007ba3ca7503b8              # double 2.060371
	.quad	0x3fc3d8d79d0a6762              # double 0.155055
	.quad	0x3ffad53586ca89fc              # double 1.6770529999999999
	.quad	0x401b1f487fcb923a              # double 6.7805499999999999
	.quad	0x4015a271fff79c84              # double 5.4086379999999998
	.quad	0x401a1c5f7c6759ab              # double 6.5277079999999996
	.quad	0x401a5009f623076c              # double 6.578163
	.quad	0x3fff4db48909289e              # double 1.9564710000000001
	.quad	0x4004b741d084e832              # double 2.5894810000000001
	.quad	0x4022ca239e6ab9b2              # double 9.3948029999999996
	.quad	0x3feb1626b2f23034              # double 0.84645400000000003
	.quad	0x40023aa79bbadc0a              # double 2.2786400000000002
	.quad	0x400f144998d045fe              # double 3.884906
	.quad	0x4017ca2e3c536d65              # double 5.9474419999999997
	.quad	0x402252c1f42bb667              # double 9.1616359999999997
	.quad	0x401addf505d0fa59              # double 6.716755
	.quad	0x400c77225b749add              # double 3.5581710000000002
	.quad	0x401da5f41aef6f8f              # double 7.412064
	.quad	0x4011757f3061c79b              # double 4.3647429999999998
	.quad	0x3ff36b441bb8c32b              # double 1.2136880000000001
	.quad	0x4014e0678c0053e3              # double 5.2191450000000001
	.quad	0x3fca90795f676ea4              # double 0.207534
	.quad	0x401c9d8e0008637c              # double 7.1538620000000002
	.quad	0x401cda16616b54e3              # double 7.2129760000000003
	.quad	0x4023ef1348b22079              # double 9.9669439999999998
	.quad	0x400c249129888f86              # double 3.517855
	.quad	0x401d1621fafc8b00              # double 7.2716139999999996
	.quad	0x4022d7c88e79aae7              # double 9.4214520000000003
	.quad	0x4011ee7bc3c5bd0e              # double 4.4828939999999999
	.quad	0x401c053cddd6e04c              # double 7.005115
	.quad	0x401e9b3461309c80              # double 7.651567
	.quad	0x400fcafbc1acde1a              # double 3.974113
	.quad	0x3ff4efc9bc771434              # double 1.3085420000000001
	.quad	0x4017f59b8023a6ce              # double 5.9898509999999998
	.quad	0x40091f3bea91d9b2              # double 3.1402510000000001
	.quad	0x4006379b77c02afe              # double 2.7771520000000001
	.quad	0x400ee557de0d66f1              # double 3.8619840000000001
	.quad	0x40129a459103c8e2              # double 4.6506559999999997
	.quad	0x3ff9bbc903ea704c              # double 1.6083460000000001
	.quad	0x401eeccf6be37de9              # double 7.7312599999999997
	.quad	0x4020ff99806f2629              # double 8.4992180000000008
	.quad	0x401ca3e39f77292c              # double 7.1600479999999997
	.quad	0x401ea18548a9bcfd              # double 7.6577349999999997
	.quad	0x3ff2556c0d6f544c              # double 1.1458550000000001
	.quad	0x4011a8c26138fffc              # double 4.4148040000000002
	.quad	0x40139b5d462c343b              # double 4.9017229999999996
	.quad	0x4019d0d9d7774aba              # double 6.4539559999999998
	.quad	0x4010ce53eb399f5e              # double 4.201492
	.quad	0x4022aacb20fb224b              # double 9.3335810000000006
	.quad	0x401d1beb9e492bc3              # double 7.277266
	.quad	0x401fe5c28f5c28f6              # double 7.9743750000000002
	.quad	0x401ceada33bd9cae              # double 7.2293479999999999
	.quad	0x3fe839991361dc94              # double 0.757031
	.quad	0x401069b38d60a633              # double 4.103224
	.quad	0x4011c737110e453d              # double 4.4445459999999999
	.quad	0x400ea8cdea033e79              # double 3.8324240000000001
	.quad	0x4021fac669057d18              # double 8.9897950000000009
	.quad	0x4005ff26f1dc50ce              # double 2.7495859999999999
	.quad	0x4010c04ddb5525cc              # double 4.1877969999999998
	.quad	0x4016a9e83e425aee              # double 5.6659249999999997
	.quad	0x4018b9e774eebf66              # double 6.1815470000000001
	.quad	0x401622b0ea18372e              # double 5.5338779999999996
	.quad	0x401eecce5f7403de              # double 7.7312560000000001
	.quad	0x3f785f06f6944674              # double 0.0059500000000000004
	.quad	0x3ffa852934acaff7              # double 1.65751
	.quad	0x3fc70ebaade657b8              # double 0.18013699999999999
	.quad	0x400045b63d3e4ef0              # double 2.0340389999999999
	.quad	0x40153dd377e1b8ed              # double 5.3103769999999999
	.quad	0x3ffb3162ae4b0186              # double 1.699557
	.quad	0x4023dfe06961c369              # double 9.9372589999999991
	.quad	0x400cfe9185cee17a              # double 3.624301
	.quad	0x4022da68d32830a1              # double 9.4265810000000005
	.quad	0x40001af74cd3176a              # double 2.0131670000000002
	.quad	0x4021d25c810a569b              # double 8.9108619999999998
	.quad	0x402242f42784a948              # double 9.1307690000000008
	.quad	0x401ce5d4a5df223a              # double 7.2244440000000001
	.quad	0x4014b0c4dec1c1d7              # double 5.1726260000000002
	.quad	0x40229a322af57710              # double 9.301164
	.quad	0x401d18909289dae0              # double 7.2739890000000003
	.quad	0x401fb100a393ee5f              # double 7.922854
	.quad	0x3fe74f1800a7c5ac              # double 0.72840499999999997
	.quad	0x3fb088d6d3b6cbda              # double 0.064588000000000007
	.quad	0x3fb8f7fcfc3f811f              # double 0.097533999999999996
	.quad	0x401526e5cd4ed2cc              # double 5.2879860000000001
	.quad	0x4011d6d4801f7510              # double 4.4597949999999997
	.quad	0x40167becaab8a5ce              # double 5.6210199999999997
	.quad	0x4014f2b6f19934f0              # double 5.2370260000000002
	.quad	0x4013fde26916440f              # double 4.9979339999999999
	.quad	0x402300a936c58eeb              # double 9.5012910000000001
	.quad	0x401542ac322291fb              # double 5.3151099999999998
	.quad	0x400a2ef911cf355d              # double 3.2729360000000001
	.quad	0x401149b38d60a633              # double 4.321974
	.quad	0x4023deb50b0f27bb              # double 9.9349749999999996
	.quad	0x401d8da48b652370              # double 7.3883229999999998
	.quad	0x4019f019b0ab2e17              # double 6.4844730000000004
	.quad	0x3fde31bde82d7b63              # double 0.47178599999999998
	.quad	0x4012f18d6909aed5              # double 4.7358909999999996
	.quad	0x3ff25d9b1b79d90a              # double 1.147853
	.quad	0x40007cfbb949624a              # double 2.0610270000000002
	.quad	0x400a95f3d7d3910c              # double 3.3232189999999999
	.quad	0x402138b04ab606b8              # double 8.6107200000000006
	.quad	0x401f1911cf355cd9              # double 7.7744819999999998
	.quad	0x4009afb19e731d2e              # double 3.210788
	.quad	0x401e373860999dcb              # double 7.5539259999999996
	.quad	0x40073f9e7b80a9df              # double 2.9060640000000002
	.quad	0x4023c04662bae03b              # double 9.8755369999999995
	.quad	0x3fc9dbfceb78897f              # double 0.20202600000000001
	.quad	0x3ffff16c1e364bec              # double 1.9964409999999999
	.quad	0x401ede44fa05143c              # double 7.71706
	.quad	0x3fe50535c9e6687f              # double 0.65688599999999997
	.quad	0x400bcdc0980b2420              # double 3.4754649999999998
	.quad	0x4021142a66dbd72c              # double 8.5393860000000003
	.quad	0x4022c2c1094a2b9d              # double 9.3803789999999995
	.quad	0x401cf905c0336156              # double 7.2431859999999997
	.quad	0x40163a72a7bd48cb              # double 5.5570779999999997
	.quad	0x401bbb3d4ae429e1              # double 6.9328510000000003
	.quad	0x3feb439799e518f4              # double 0.852001
	.quad	0x3fe70d6f544bb1af              # double 0.72038999999999997
	.quad	0x401b7ecc814d727a              # double 6.8738270000000004
	.quad	0x401c11da37ef5a96              # double 7.0174339999999997
	.quad	0x3fda83b1d0c80410              # double 0.41428799999999999
	.quad	0x40022d97b30f8c65              # double 2.272262
	.quad	0x400df0d49949e881              # double 3.7425929999999998
	.quad	0x4013b81b64e05469              # double 4.929792
	.quad	0x4009e30d306a2b17              # double 3.235865
	.quad	0x4009c088509bf9c6              # double 3.2190099999999999
	.quad	0x400c06149c6f36f0              # double 3.5029690000000002
	.quad	0x402086add590c0ad              # double 8.263045
	.quad	0x4004ea4e379b77c0              # double 2.6144069999999999
	.quad	0x4023e7d4e09784ec              # double 9.9527959999999993
	.quad	0x4019d7253da72a7c              # double 6.4601030000000002
	.quad	0x40049e75bc44bf4d              # double 2.5773730000000001
	.quad	0x40218dd7cb2d905c              # double 8.7770369999999999
	.quad	0x40231783382e44b7              # double 9.5459230000000001
	.quad	0x4020fe6b3fe9fadb              # double 8.496912
	.quad	0x3ff5964b662fdfc2              # double 1.3491930000000001
	.quad	0x400d9d790752da98              # double 3.7018909999999998
	.quad	0x400ddeb6bf444e0e              # double 3.7337470000000001
	.quad	0x4010a8f7121ab4b7              # double 4.1650049999999998
	.quad	0x3fffebe8bc169c24              # double 1.9950950000000001
	.quad	0x402239f212d77319              # double 9.113175
	.quad	0x3fe5af09d8c6d613              # double 0.67761700000000002
	.quad	0x4021da8522ea0fd4              # double 8.9267970000000005
	.quad	0x401f81d755bccaf7              # double 7.8767979999999999
	.quad	0x401913471f79420b              # double 6.2688259999999998
	.quad	0x4013970ef566490a              # double 4.8975179999999998
	.quad	0x3fe4512a94ff0026              # double 0.63490800000000003
	.quad	0x400d40ed80a17b0f              # double 3.6567029999999998
	.quad	0x40239ba6698bb4d5              # double 9.8040040000000008
	.quad	0x401606b54e2b063e              # double 5.506551
	.quad	0x401d30ce4ead0c3d              # double 7.2976619999999999
	.quad	0x400e4f14db59578a              # double 3.7886139999999999
	.quad	0x3ff1250507a6bd6f              # double 1.0715380000000001
	.quad	0x4022637f38c5436c              # double 9.1943300000000007
	.quad	0x401e5b3bb83cf2d0              # double 7.5890950000000004
	.quad	0x3ff8512ec6bce853              # double 1.5198199999999999
	.quad	0x4023691b823c85c2              # double 9.7052879999999995
	.quad	0x4009da0dfdef8488              # double 3.2314720000000001
	.quad	0x4021143b70ef5665              # double 8.5395160000000008
	.quad	0x401ea57ff9b56324              # double 7.6616210000000002
	.quad	0x402038e94ee392e2              # double 8.1111550000000001
	.quad	0x40221f27dcbddb98              # double 9.0608509999999995
	.quad	0x40224cc857f3061c              # double 9.1499659999999991
	.quad	0x3fbf43fa2ad3e921              # double 0.122131
	.quad	0x401b4ef73c0c1fc9              # double 6.827115
	.quad	0x401ae8aeb80ecfa7              # double 6.7272290000000003
	.quad	0x401c86c332f01755              # double 7.1316040000000003
	.quad	0x400a4117f84449dc              # double 3.281784
	.quad	0x4012cd10b1feeb2d              # double 4.700259
	.quad	0x402148b7a1c25d07              # double 8.6420259999999995
	.quad	0x401ff1600f34506a              # double 7.9857180000000003
	.quad	0x4011bd1b2e59af9f              # double 4.4346740000000002
	.quad	0x4003f476295208e1              # double 2.4943659999999999
	.quad	0x4001e72d1aeb3dd1              # double 2.237879
	.quad	0x400eedcb1465e892              # double 3.8661099999999999
	.quad	0x4021c4a31e7d9989              # double 8.8840570000000003
	.quad	0x3ff316a161e4f766              # double 1.193025
	.quad	0x4020cc56b441bb8c              # double 8.3990989999999996
	.quad	0x4000cf6dfc5cdd51              # double 2.1012840000000002
	.quad	0x40194108c3f3e037              # double 6.31351
	.quad	0x400e524fa8b4bf90              # double 3.7901910000000001
	.quad	0x3fba18372e6a7696              # double 0.10193199999999999
	.quad	0x401060221426fe72              # double 4.0938800000000004
	.quad	0x4014c29c347e8cce              # double 5.1900490000000001
	.quad	0x400ff797cc39ffd6              # double 3.995895
	.quad	0x4011b4178705425f              # double 4.4258709999999999
	.quad	0x3fd78ed1bf7ad4b2              # double 0.36809199999999997
	.quad	0x4023f3e40420f6f1              # double 9.9763490000000007
	.quad	0x401e742aa9f7b5af              # double 7.6134440000000003
	.quad	0x400a3c2fc69728a6              # double 3.279388
	.quad	0x402199eadd590c0b              # double 8.8006200000000003
	.quad	0x4008152fc2656abe              # double 3.010345
	.quad	0x401f2a98aa8650e7              # double 7.7915979999999995
	.quad	0x3fe1886162f166e0              # double 0.547898
	.quad	0x3fe8422036006d0d              # double 0.75807199999999997
	.quad	0x3ffff0520d130dfa              # double 1.9961720000000001
	.quad	0x40135e108c3f3e03              # double 4.8418599999999996
	.quad	0x400910ca1cef2410              # double 3.1331980000000001
	.quad	0x4007b1e6cd29131f              # double 2.9618660000000001
	.quad	0x4015a05ccc89b0ee              # double 5.4066039999999997
	.quad	0x40208051a8694035              # double 8.2506229999999992
	.quad	0x3fe6824b33daf8df              # double 0.70340499999999995
	.quad	0x401774983d790753              # double 5.8638620000000001
	.quad	0x4011a4a48f96e158              # double 4.4107839999999996
	.quad	0x3ffba2413db7f173              # double 1.7271129999999999
	.quad	0x401e742917507e9e              # double 7.6134380000000004
	.quad	0x3fff30e0a84be404              # double 1.949433
	.quad	0x4009e8b32ce89657              # double 3.238623
	.quad	0x3ff43c6a7ef9db23              # double 1.26475
	.quad	0x401abc88a47ecfea              # double 6.6841150000000003
	.quad	0x4023d49795b35b0c              # double 9.9152190000000004
	.quad	0x401628cf398e9707              # double 5.5398529999999999
	.quad	0x40045016ce789e77              # double 2.5391059999999999
	.quad	0x401ee931ca7d6734              # double 7.7277290000000001
	.quad	0x402005ae1cde5d18              # double 8.0110939999999999
	.quad	0x401b4d323fee2c99              # double 6.8253870000000001
	.quad	0x3fe3029ae4f33440              # double 0.59406800000000004
	.quad	0x40196b1a6d698fe7              # double 6.3545930000000004
	.quad	0x4020177d523b3637              # double 8.0458780000000001
	.quad	0x3fe5a4052d666a98              # double 0.67627199999999998
	.quad	0x401d58665e02ea96              # double 7.336328
	.quad	0x401d6be7f2c3009b              # double 7.3553769999999998
	.quad	0x4020e1db0142f61f              # double 8.4411240000000003
	.quad	0x401355371971c10d              # double 4.8332179999999996
	.quad	0x40239da8bd230b9e              # double 9.8079280000000004
	.quad	0x401bd2b4d8ba40d9              # double 6.955768
	.quad	0x4015733f42352eb6              # double 5.362546
	.quad	0x4020d97edc7ef178              # double 8.4247960000000006
	.quad	0x3fff217a02fb5d03              # double 1.945673
	.quad	0x40203b3ebbfd71b0              # double 8.1157129999999995
	.quad	0x400446aca7935760              # double 2.5345089999999999
	.quad	0x400045ae5ffa3b9b              # double 2.0340240000000001
	.quad	0x401ef029f16b11c7              # double 7.7345350000000001
	.quad	0x4019208787485e3e              # double 6.2817670000000003
	.quad	0x401e9f1172ef0ae5              # double 7.6553399999999998
	.quad	0x40180e83a109d063              # double 6.0141739999999997
	.quad	0x4010c2dd7a99fa12              # double 4.1902980000000003
	.quad	0x4015d99780baa583              # double 5.4624920000000001
	.quad	0x401e33986338b47c              # double 7.5503859999999996
	.quad	0x400da0da1a93293d              # double 3.703541
	.quad	0x4017a2aa9f7b5aea              # double 5.9088539999999998
	.quad	0x401f78b1572580c3              # double 7.8678639999999999
	.quad	0x3ff5987e7c06e19c              # double 1.3497300000000001
	.quad	0x3ff9a052502eec7d              # double 1.6016410000000001
	.quad	0x401621a2a4db163c              # double 5.5328470000000003
	.quad	0x3fcfe85fd04a2fcf              # double 0.249279
	.quad	0x4001bbacb4289119              # double 2.2166380000000001
	.quad	0x400ab9b66f9335d2              # double 3.3406799999999999
	.quad	0x4016e9691a75cd0c              # double 5.7279400000000003
	.quad	0x401db1fddebd9019              # double 7.4238200000000001
	.quad	0x3fc4007570c564f9              # double 0.15626399999999999
	.quad	0x3fe50986fcdee350              # double 0.65741300000000003
	.quad	0x40217c63065f9592              # double 8.7429430000000004
	.quad	0x40212da7d24180d4              # double 8.5891710000000003
	.quad	0x4001d4916ca46e09              # double 2.228793
	.quad	0x3ffc74e874c8ffb9              # double 1.7785420000000001
	.quad	0x401d6ec28b2a6b0e              # double 7.3581640000000004
	.quad	0x3ffefa57eaa2a0a9              # double 1.9361189999999999
	.quad	0x400a11d25aab4741              # double 3.258702
	.quad	0x402170a9de8b3b32              # double 8.720046
	.quad	0x40023710880d801b              # double 2.2768869999999999
	.quad	0x401cae4c51116a8c              # double 7.1702130000000004
	.quad	0x401db46d3f9e7b81              # double 7.4261980000000003
	.quad	0x400dbed30f062d41              # double 3.7181760000000001
	.quad	0x402194a3400b88ca              # double 8.7903079999999996
	.quad	0x402194c5974e65bf              # double 8.7905700000000007
	.quad	0x3fed44cbe1eb4203              # double 0.91464800000000002
	.quad	0x401a3b5c7cd898b3              # double 6.5579700000000001
	.quad	0x40200ec311622813              # double 8.0288319999999995
	.quad	0x4013e48238540464              # double 4.9731529999999999
	.quad	0x4021b796e158750c              # double 8.8585729999999998
	.quad	0x401de50a45d41fa7              # double 7.4736719999999996
	.quad	0x3fcb039ef0f16f44              # double 0.21104800000000001
	.quad	0x401a43dddb1209ee              # double 6.5662760000000002
	.quad	0x4023ff71001d5c31              # double 9.9989089999999993
	.quad	0x4003ba57eaa2a0a9              # double 2.4659879999999998
	.quad	0x401df88c60cbf2b2              # double 7.4927229999999998
	.quad	0x401cf4fce746cb96              # double 7.2392459999999996
	.quad	0x400cce0c17657753              # double 3.6006089999999999
	.quad	0x4020603dddb1209f              # double 8.1879720000000002
	.quad	0x3fead7a13c254a3c              # double 0.83882199999999995
	.quad	0x4004bc90c4dec1c2              # double 2.5920730000000001
	.quad	0x4009b5a8deb0fadf              # double 3.2137009999999999
	.quad	0x400657f51efb6dca              # double 2.792948
	.quad	0x400aa6db50f40e5a              # double 3.3314729999999999
	.quad	0x402273923a29c77a              # double 9.2257250000000006
	.quad	0x401e397d49d7ba67              # double 7.5561420000000003
	.quad	0x40230778140dd3fe              # double 9.5145879999999998
	.quad	0x40124b8066c2acb8              # double 4.5737319999999997
	.quad	0x401428919ef954eb              # double 5.0396179999999999
	.quad	0x401d491e215336df              # double 7.3214040000000002
	.quad	0x40050093532e7b3e              # double 2.6252810000000002
	.quad	0x401d4a161e4f7660              # double 7.3223500000000001
	.quad	0x40031f10ecb74de0              # double 2.3901690000000002
	.quad	0x4003d3f290abb44e              # double 2.4784899999999999
	.quad	0x4010c13d31b9b670              # double 4.1887100000000004
	.quad	0x40103e12e83a109d              # double 4.060619
	.quad	0x401202239e6ab9b2              # double 4.5020889999999998
	.quad	0x40202cb2b777d0f2              # double 8.0873010000000001
	.quad	0x400692c94b380cb7              # double 2.8216730000000001
	.quad	0x40042b242070b8d0              # double 2.5210650000000001
	.quad	0x4013a1bb4916ca47              # double 4.9079410000000001
	.quad	0x4023a9c23b7952d2              # double 9.8315599999999996
	.quad	0x40198980b242070c              # double 6.3842800000000004
	.quad	0x4023b9713ad5bee4              # double 9.8621920000000002
	.quad	0x40213b3b96af038e              # double 8.6156889999999997
	.quad	0x4019a79af1886df8              # double 6.4136769999999999
	.quad	0x40190cce5f7403de              # double 6.2625060000000001
	.quad	0x401eb0b5675579af              # double 7.6725669999999999
	.quad	0x400cc240b780346e              # double 3.5948500000000001
	.quad	0x400996da87a072d2              # double 3.1986590000000001
	.quad	0x4013601eabbcb1cd              # double 4.8438670000000004
	.quad	0x4013342f1ed17c5f              # double 4.800961
	.quad	0x40085aeee957470f              # double 3.0444010000000001
	.quad	0x401afda4052d666b              # double 6.7476960000000004
	.quad	0x40130c8bc9cd3e0c              # double 4.7622520000000002
	.quad	0x4021b90b1feeb2d1              # double 8.8614130000000007
	.quad	0x4019fb7564302b41              # double 6.495565
	.quad	0x4013bf3387160957              # double 4.9367200000000002
	.quad	0x3fdf3800218def41              # double 0.48779299999999998
	.quad	0x40235fc49fd7a13c              # double 9.6870469999999997
	.quad	0x4023e1804d983947              # double 9.9404319999999994
	.quad	0x401f07c45cbbc2b9              # double 7.7575849999999997
	.quad	0x3ffaf163baba7b91              # double 1.6839329999999999
	.quad	0x3ff629ee45c358b0              # double 1.3852370000000001
	.quad	0x401cb245b291b824              # double 7.1740940000000002
	.quad	0x401e4b1290257c91              # double 7.5733129999999997
	.quad	0x401fd434e3369b9d              # double 7.9572329999999995
	.quad	0x3ff3de8815e39714              # double 1.2418290000000001
	.quad	0x400bd44028e4fb98              # double 3.4786380000000001
	.quad	0x4006642c7fbacb43              # double 2.7989130000000002
	.quad	0x40214c3526527a20              # double 8.6488429999999994
	.quad	0x3ff09e2478854cdb              # double 1.0386089999999999
	.quad	0x402387ca643cc07b              # double 9.7652160000000005
	.quad	0x4023e00d3cff64d0              # double 9.9376010000000008
	.quad	0x402098d51f81a587              # double 8.2985009999999999
	.quad	0x3ff92820e6299525              # double 1.5722970000000001
	.quad	0x3fe8d35a858793de              # double 0.77580000000000005
	.quad	0x3fe6da294141e9af              # double 0.71413099999999996
	.quad	0x40229364388ebcc7              # double 9.2878740000000004
	.quad	0x40206fe1da7b0b39              # double 8.2185199999999998
	.quad	0x3ffc6db2f661f18d              # double 1.7767820000000001
	.quad	0x40177f39d1b2e59b              # double 5.874244
	.quad	0x3fba3c536d655e29              # double 0.102483
	.quad	0x401c5cc814d7279a              # double 7.0906070000000003
	.quad	0x401a5bd48cb4aec9              # double 6.5896780000000001
	.quad	0x4023e9bfdf7e8039              # double 9.9565420000000006
	.quad	0x3febb953dea465a5              # double 0.86637299999999995
	.quad	0x400397b7c7820a31              # double 2.4490810000000001
	.quad	0x3fd6cbc8c0ce91c9              # double 0.356188
	.quad	0x3feb2e9ee45c358b              # double 0.849441
	.quad	0x4007d0ccbc05d52c              # double 2.976953
	.quad	0x401a77f1f9acffa8              # double 6.6171340000000001
	.quad	0x4020026eb91b3f21              # double 8.0047510000000006
	.quad	0x400c5ead4f5903a7              # double 3.5462289999999999
	.quad	0x3fff2e18ac9f2fdc              # double 1.9487540000000001
	.quad	0x401758869c66d374              # double 5.8364510000000003
	.quad	0x401fe01a36e2eb1c              # double 7.9688499999999998
	.quad	0x4006ab81733226c4              # double 2.8337430000000001
	.quad	0x3fc637b4a2339c0f              # double 0.17357500000000001
	.quad	0x40027620ee8d10f5              # double 2.30768
	.quad	0x4003ccf41f212d77              # double 2.4750749999999999
	.quad	0x40224c10f94c8798              # double 9.1485669999999998
	.quad	0x4000af7db6e503fb              # double 2.0856889999999999
	.quad	0x401bc628027d88c2              # double 6.9435120000000001
	.quad	0x3ff41a31a4bdba0a              # double 1.2563949999999999
	.quad	0x3fff2199780baa58              # double 1.945703
	.quad	0x40147498c3b0c459              # double 5.1138640000000004
	.quad	0x401dfd940789613d              # double 7.4976349999999998
	.quad	0x4019a52ce032db1f              # double 6.4113040000000003
	.quad	0x4020be99a62ed352              # double 8.3722659999999998
	.quad	0x401be126634117f8              # double 6.9698729999999998
	.quad	0x4017fbb83cf2cf96              # double 5.9958200000000001
	.quad	0x401e84024b33daf9              # double 7.6289150000000001
	.quad	0x40183f041461b6d4              # double 6.0615389999999998
	.quad	0x400cc5cee17a02fb              # double 3.5965859999999998
	.quad	0x401173e0370cdc87              # double 4.3631599999999997
	.quad	0x400f63e39f77292c              # double 3.9237739999999999
	.quad	0x401572f05a708ede              # double 5.3622449999999997
	.quad	0x4021035bf6a0dbad              # double 8.5065609999999996
	.quad	0x4021ac373f316e37              # double 8.8363589999999999
	.quad	0x4023e46ed245b292              # double 9.9461580000000005
	.quad	0x4011b2a77a2cecc8              # double 4.4244669999999999
	.quad	0x401a4f99c38b04ab              # double 6.5777349999999997
	.quad	0x401fc17225b749ae              # double 7.9389120000000002
	.quad	0x400c64e3ffef3908              # double 3.5492629999999998
	.quad	0x400f914fce746cb9              # double 3.9459529999999998
	.quad	0x40003d0203e63e8e              # double 2.0297890000000001
	.quad	0x3fd9e9899bf5946c              # double 0.40487899999999999
	.quad	0x3fe561b4bb5e0f80              # double 0.66817700000000002
	.quad	0x4013756abde3fbbd              # double 4.8646649999999996
	.quad	0x40224cbd33d29564              # double 9.1498810000000005
	.quad	0x4013d3382e44b6e9              # double 4.9562689999999998
	.quad	0x3ffb9a2403148777              # double 1.7251320000000001
	.quad	0x402021276fb09204              # double 8.0647540000000006
	.quad	0x401cd02cd39da166              # double 7.2032959999999999
	.quad	0x40168c91d14e3bcd              # double 5.6372749999999998
	.quad	0x4017703925bb7b6c              # double 5.8595930000000003
	.quad	0x4019495f676ea423              # double 6.3216530000000004
	.quad	0x400c3b0e5e679464              # double 3.5288360000000001
	.quad	0x4019bcec84f8f8a5              # double 6.4344960000000002
	.quad	0x4023f634dad31fcd              # double 9.9808719999999997
	.quad	0x40203c00da1a9329              # double 8.1171939999999996
	.quad	0x401d85421c044285              # double 7.3801350000000001
	.quad	0x400540303c07ee0b              # double 2.656342
	.quad	0x401fa7fcb923a29c              # double 7.9140499999999996
	.quad	0x4021ef4a558ea7ce              # double 8.9673639999999999
	.quad	0x402270d51f81a587              # double 9.2203759999999999
	.quad	0x401c1305532617c2              # double 7.0185750000000002
	.quad	0x3fdcdb1e9f277814              # double 0.450874
	.quad	0x4010e5147f130596              # double 4.2237109999999998
	.quad	0x40053e9185cee17a              # double 2.655551
	.quad	0x4007646bf01322f2              # double 2.9240339999999998
	.quad	0x401e8ca9ef5232d3              # double 7.6373670000000002
	.quad	0x4021e0e757928e0d              # double 8.9392650000000007
	.quad	0x401a614c22ee4192              # double 6.5950170000000004
	.quad	0x401d90856e696a27              # double 7.3911340000000001
	.quad	0x4014a0f3882278d1              # double 5.1571790000000002
	.quad	0x4012a841aac53b08              # double 4.6643129999999999
	.quad	0x400ccab7995ee137              # double 3.598983
	.quad	0x40164e4755ffe6d6              # double 5.5764440000000004
	.quad	0x4022b7811f4f50a0              # double 9.3584069999999997
	.quad	0x401faec8d5c74752              # double 7.9206880000000002
	.quad	0x3ffbcd1d8a548238              # double 1.7375769999999999
	.quad	0x4008204b7f5a5333              # double 3.0157690000000001
	.quad	0x40216b1704ff4342              # double 8.7091600000000007
	.quad	0x3ff4785e80bed741              # double 1.2793870000000001
	.quad	0x401b24aada33bd9d              # double 6.7858080000000003
	.quad	0x4023d19fe43675de              # double 9.9094230000000003
	.quad	0x40072068db8bac71              # double 2.890825
	.quad	0x40149dbfceb78898              # double 5.1540520000000001
	.quad	0x4008b54866a11ec9              # double 3.088517
	.quad	0x4020d81d9f4d37c1              # double 8.4221009999999996
	.quad	0x4000b1e75360d024              # double 2.0868669999999998
	.quad	0x4002acd5b6805a2d              # double 2.3343919999999998
	.quad	0x401cbdaf4adbc665              # double 7.1852390000000002
	.quad	0x402178cac4b4d057              # double 8.7359220000000004
	.quad	0x40236f7121ab4b73              # double 9.7176600000000004
	.quad	0x4023dee008e9b38d              # double 9.9353029999999993
	.quad	0x4004051fc4c16590              # double 2.5025019999999998
	.quad	0x400bd212513b5bf7              # double 3.4775740000000002
	.quad	0x400fcc100e6afcce              # double 3.97464
	.quad	0x401142314013ec46              # double 4.3146409999999999
	.quad	0x400c89845dc83233              # double 3.5671469999999998
	.quad	0x4010414bdfd2630f              # double 4.0637660000000002
	.quad	0x401f9ac1094a2b9d              # double 7.9011269999999997
	.quad	0x4013c5197a24894c              # double 4.9424799999999998
	.quad	0x40163f42fe82517e              # double 5.5617789999999996
	.quad	0x4015880c308feac4              # double 5.3828589999999998
	.quad	0x3ff2283b1d0c8041              # double 1.134822
	.quad	0x401badb50f40e5a3              # double 6.9196359999999997
	.quad	0x401a9c4c9c90c4df              # double 6.6526360000000002
	.quad	0x401eb7fc32ebe597              # double 7.6796730000000001
	.quad	0x4016e493c89f40a3              # double 5.7232200000000004
	.quad	0x3fea0caa326e1156              # double 0.81404600000000005
	.quad	0x40050084a515ce9e              # double 2.6252529999999998
	.quad	0x4011d4a8c154c986              # double 4.4576750000000001
	.quad	0x400f0ef8055fbb51              # double 3.8823089999999998
	.quad	0x400612d3c792d128              # double 2.7591929999999998
	.quad	0x401b1b75ea67e847              # double 6.7768170000000003
	.quad	0x400adbb9496249a1              # double 3.3572869999999999
	.quad	0x401a9328b6d86ec1              # double 6.6437099999999996
	.quad	0x402107c9bc771434              # double 8.5152110000000007
	.quad	0x402057a4a48f96e1              # double 8.1711779999999994
	.quad	0x401bb148fd9fd36f              # double 6.9231299999999996
	.quad	0x4015d37542a23c00              # double 5.4565020000000004
	.quad	0x401487a46173b85f              # double 5.1324630000000004
	.quad	0x3ffb5192641b328b              # double 1.7074149999999999
	.quad	0x3ff99fe21d96e9bc              # double 1.601534
	.quad	0x401492d1287c200c              # double 5.1433759999999999
	.quad	0x400ce1c92ddbdb5e              # double 3.6102470000000002
	.quad	0x4023511a975afaf8              # double 9.6584059999999993
	.quad	0x4016fbb98c7e2824              # double 5.745825
	.quad	0x4013dc0096feb4a6              # double 4.9648459999999996
	.quad	0x401396e371540032              # double 4.8973519999999997
	.quad	0x40215cb5fe542e55              # double 8.6810759999999991
	.quad	0x4022e0759253543b              # double 9.4383970000000001
	.quad	0x401fb5208e150119              # double 7.9268819999999999
	.quad	0x40180b399f5dfeb9              # double 6.0109620000000001
	.quad	0x3ff26494d50ebaae              # double 1.149556
	.quad	0x40214b0c026cc1ca              # double 8.6465759999999996
	.quad	0x400c87631b584b1b              # double 3.5661070000000001
	.quad	0x3fff7c02afdda8bd              # double 1.967776
	.quad	0x40193b4202d9cf14              # double 6.3078690000000002
	.quad	0x3fd61815a07b352b              # double 0.34522000000000003
	.quad	0x40236469728a6117              # double 9.6961169999999992
	.quad	0x40205675147f1306              # double 8.1688620000000007
	.quad	0x401ba3d9231c64bb              # double 6.9100080000000004
	.quad	0x4022b2a2e3c536d6              # double 9.3488989999999994
	.quad	0x40145e0b4e11dbcb              # double 5.0918400000000004
	.quad	0x401e7a0cf1800a7c              # double 7.6191899999999997
	.quad	0x3ffa0a5482385404              # double 1.6275219999999999
	.quad	0x4021c28c9b845565              # double 8.8799790000000005
	.quad	0x4019319e731d2e0e              # double 6.2984559999999998
	.quad	0x401e52bf9830e3ce              # double 7.5808090000000004
	.quad	0x3fcad9513f8db489              # double 0.209757
	.quad	0x3fe9366d7a56de33              # double 0.78789399999999998
	.quad	0x3ffb2601bc98a223              # double 1.696779
	.quad	0x40176bf9830e3cda              # double 5.8554440000000003
	.quad	0x3fef3c81908e581d              # double 0.976136
	.quad	0x3fface991ff7164c              # double 1.6754389999999999
	.quad	0x401a00e496ededaf              # double 6.5008720000000002
	.quad	0x4007520fb224aada              # double 2.9150689999999999
	.quad	0x402340ac9f2fdb90              # double 9.6263170000000002
	.quad	0x3ff6921ff2e48e8a              # double 1.4106749999999999
	.quad	0x4010b3d96638433d              # double 4.1756339999999996
	.quad	0x40214ca38327674d              # double 8.6496849999999998
	.quad	0x4020c47ae147ae14              # double 8.3837499999999991
	.quad	0x40185057082491b0              # double 6.0784570000000002
	.quad	0x400e975b81301648              # double 3.8239049999999999
	.quad	0x40214facc4ef88b9              # double 8.6556149999999992
	.quad	0x401001bc126a65cf              # double 4.0016939999999996
	.quad	0x400e3a7546d3f9e8              # double 3.7785440000000001
	.quad	0x401535e02ea960b7              # double 5.302613
	.quad	0x4014bd4cfd08d4bb              # double 5.1848640000000001
	.quad	0x40237a0f9096bb99              # double 9.7384000000000003
	.quad	0x40055801b4352652              # double 2.6679719999999998
	.quad	0x40127da7f3cf7015              # double 4.6227109999999998
	.quad	0x4006f6a9c560c7c1              # double 2.870441
	.quad	0x4015a2174c4cdfad              # double 5.4082920000000003
	.quad	0x3fe2b8088509bf9c              # double 0.58496499999999996
	.quad	0x40166e71044f1a1a              # double 5.6078530000000004
	.quad	0x401d93586ca89fc7              # double 7.3938920000000001
	.quad	0x4017787bdcf0307f              # double 5.8676599999999999
	.quad	0x4023fd4f3775b813              # double 9.9947449999999999
	.quad	0x40134c1376d54973              # double 4.8242929999999999
	.quad	0x3fdf93c89f40a287              # double 0.49339499999999997
	.quad	0x401bd6961c36976c              # double 6.9595570000000002
	.quad	0x4011b7d8cf398e97              # double 4.429538
	.quad	0x40207fb19e731d2e              # double 8.2494019999999999
	.quad	0x4018b3f8db489093              # double 6.1757540000000004
	.quad	0x400374245f5ad96a              # double 2.4317099999999998
	.quad	0x4012306466b1e5c1              # double 4.5472580000000002
	.quad	0x3ffef43201040bfe              # double 1.9346179999999999
	.quad	0x3f77bfa4c61d8623              # double 0.0057980000000000002
	.quad	0x40217f11b60ae968              # double 8.7481819999999999
	.quad	0x401c238194c01605              # double 7.0346739999999999
	.quad	0x40237ede1198aeb8              # double 9.7477879999999998
	.quad	0x3ff4dfd694ccab3f              # double 1.304648
	.quad	0x400a309b738e6d16              # double 3.2737340000000001
	.quad	0x40195942d490e66d              # double 6.3371690000000003
	.quad	0x3ff175d56f32bdc2              # double 1.0912679999999999
	.quad	0x3ff7d8b60f1b25f6              # double 1.490408
	.quad	0x4008c2656abde3fc              # double 3.0949200000000001
	.quad	0x401575186db50f41              # double 5.3643510000000001
	.quad	0x400f09f51697f1fa              # double 3.8798620000000001
	.quad	0x400da5681ecd4aa1              # double 3.705765
	.quad	0x4006899b6f5caf2d              # double 2.8171909999999998
	.quad	0x4020f15bbbe878fb              # double 8.4714030000000005
	.quad	0x402239248d7e0264              # double 9.1116069999999993
	.quad	0x3fef1b8aa00192a7              # double 0.97211199999999997
	.quad	0x4004b17c5ef62f9d              # double 2.5866630000000002
	.quad	0x4014abec679cc74c              # double 5.1678940000000004
	.quad	0x3fe4940fecdd0d8d              # double 0.64307400000000003
	.quad	0x4012044c7b02d59d              # double 4.5041979999999997
	.quad	0x401406feb4a6655a              # double 5.006831
	.quad	0x400d7f1e0828c36e              # double 3.6870690000000002
	.quad	0x4012c015c209246c              # double 4.6875830000000001
	.quad	0x401d6bef06b37868              # double 7.355404
	.quad	0x4013ab2af145521a              # double 4.9171560000000003
	.quad	0x401cf51bd61f5be6              # double 7.2393640000000001
	.quad	0x4001014727dcbddc              # double 2.1256240000000002
	.quad	0x4006afa15db3397e              # double 2.8357570000000001
	.quad	0x4002b4cf4a558ea8              # double 2.3382860000000001
	.quad	0x402306117720c8cd              # double 9.5118519999999993
	.quad	0x401d906c8711d799              # double 7.3910390000000001
	.quad	0x40204d3415b1422d              # double 8.1507880000000004
	.quad	0x4019130270f38822              # double 6.2685639999999996
	.quad	0x4012fc621b7e0ac8              # double 4.7464680000000001
	.quad	0x3fc3513f8db48909              # double 0.150917
	.quad	0x4009433721d53cde              # double 3.1578200000000001
	.quad	0x4005b5dbb9cf9a07              # double 2.7137980000000002
	.quad	0x401742b239a38fbd              # double 5.8151330000000003
	.quad	0x4023e0f96e158751              # double 9.9394030000000004
	.quad	0x401779a847b24639              # double 5.8688060000000002
	.quad	0x401aeeefe4ffc979              # double 6.7333369999999997
	.quad	0x4009283d35eb7458              # double 3.1446480000000001
	.quad	0x3fe7b0489d27c393              # double 0.74026899999999995
	.quad	0x400dbffb480a5acd              # double 3.7187410000000001
	.quad	0x400b020791c4b902              # double 3.375991
	.quad	0x4011b40af1cb89d7              # double 4.4258230000000003
	.quad	0x3ff8dca29845dc83              # double 1.553866
	.quad	0x4007860f5e41d4b7              # double 2.9404590000000002
	.quad	0x401ec1bcdbbe0158              # double 7.689197
	.quad	0x3ffce42d05f28848              # double 1.805707
	.quad	0x4013c0ca1cef2410              # double 4.9382710000000003
	.quad	0x402342b862b27cbf              # double 9.6303129999999992
	.quad	0x40040011d3671ac1              # double 2.5000339999999999
	.quad	0x401677fe4bcad9ae              # double 5.6171810000000004
	.quad	0x40095f63c31df762              # double 3.1715770000000001
	.quad	0x4018cfd7a13c254a              # double 6.2029709999999998
	.quad	0x40002be5109070fc              # double 2.021433
	.quad	0x402224894c447c31              # double 9.0713600000000003
	.quad	0x400ac595bbbe8790              # double 3.3464770000000001
	.quad	0x4015b14ad362e903              # double 5.4231369999999997
	.quad	0x401318f10a99b6f6              # double 4.7743570000000002
	.quad	0x40174008205ff1d8              # double 5.8125309999999999
	.quad	0x4023b7d04a2fcefb              # double 9.8590110000000006
	.quad	0x4021a860bb2bba99              # double 8.8288630000000001
	.quad	0x3fd813ad5bee3d60              # double 0.37620100000000001
	.quad	0x401f513122b7baed              # double 7.8292890000000001
	.quad	0x4002b8e3ac0c62e5              # double 2.3402780000000001
	.quad	0x3fe85e13b18dac26              # double 0.76148400000000005
	.quad	0x40062d184c271fff              # double 2.7720189999999998
	.quad	0x401aeb3fe9fadafd              # double 6.7297359999999999
	.quad	0x400bd4202d9cf13d              # double 3.478577
	.quad	0x401e3e04c0592104              # double 7.5605650000000004
	.quad	0x4020d6256366d7a5              # double 8.4182539999999992
	.quad	0x40182fa93af74cd3              # double 6.0465439999999999
	.quad	0x401fcb46fdeb52ca              # double 7.9485130000000002
	.quad	0x3fdba16616b54e2b              # double 0.431726
	.quad	0x402074c144028e50              # double 8.2280370000000005
	.quad	0x40108d62bf11f927              # double 4.1380720000000002
	.quad	0x402244b6c7a7c9de              # double 9.134207
	.quad	0x40152f202107b784              # double 5.2960209999999996
	.quad	0x400587ae9ab29e4d              # double 2.6912509999999998
	.quad	0x401701a60d4562e1              # double 5.7516100000000003
	.quad	0x402006cb5350092d              # double 8.0132700000000003
	.quad	0x4013d9b068123811              # double 4.9625870000000001
	.quad	0x4009dd89ce4a7b4e              # double 3.2331729999999999
	.quad	0x3fdb2ed783dff3f1              # double 0.424734
	.quad	0x3fcf03ea704bc276              # double 0.24230699999999999
	.quad	0x400545faebc408d9              # double 2.65917
	.quad	0x400a1c6e2a80064b              # double 3.2638820000000002
	.quad	0x40204dadfb506dd7              # double 8.1517180000000007
	.quad	0x40173ebaade657b8              # double 5.8112589999999997
	.quad	0x402125260f5e41d5              # double 8.5725560000000005
	.quad	0x4018a43f5f91600f              # double 6.1603979999999998
	.quad	0x400d5799e518f3ed              # double 3.6677740000000001
	.quad	0x4012dd28d002e233              # double 4.7159760000000004
	.quad	0x4023d081c2e33eff              # double 9.9072399999999998
	.quad	0x4006657d1782d384              # double 2.7995549999999998
	.quad	0x401c76256366d7a5              # double 7.1153769999999996
	.quad	0x4014b7f27fe4bcae              # double 5.1796360000000004
	.quad	0x40202dabe27179c0              # double 8.0892020000000002
	.quad	0x4021db3fe9fadafd              # double 8.9282219999999999
	.quad	0x402266940357a355              # double 9.200348
	.quad	0x4002535d249e44fa              # double 2.290705
	.quad	0x40149474107314cb              # double 5.1449740000000004
	.quad	0x4022218611fd5886              # double 9.0654760000000003
	.quad	0x4016162131a8ef78              # double 5.521611
	.quad	0x4021c1b30728e92d              # double 8.8783189999999994
	.quad	0x4023fb02b40f66a5              # double 9.9902549999999994
	.quad	0x401c457ff9b56324              # double 7.0678710000000002
	.quad	0x4009b807fed20297              # double 3.2148590000000001
	.quad	0x4010104534bd76ee              # double 4.0158889999999996
	.quad	0x401b0083dbc23316              # double 6.7505030000000001
	.quad	0x40155bc44bf4cb19              # double 5.3396160000000004
	.quad	0x401774fca42aed14              # double 5.8642450000000004
	.quad	0x4006b46c332f0175              # double 2.8380969999999999
	.quad	0x3ff6e22c45026890              # double 1.430218
	.quad	0x400b0e63a5c1c609              # double 3.3820260000000002
	.quad	0x3ff685425f202108              # double 1.4075340000000001
	.quad	0x401502f901083dbc              # double 5.2529029999999999
	.quad	0x3ff811ff7164c72a              # double 1.504394
	.quad	0x4021ef05857afea4              # double 8.9668390000000002
	.quad	0x3fe7828a1dfb938a              # double 0.73468500000000003
	.quad	0x400bddaad601ffb5              # double 3.4832360000000002
	.quad	0x4020713879c4113c              # double 8.2211339999999992
	.quad	0x401ae00abf76a2f5              # double 6.7187910000000004
	.quad	0x400eaae6c8f75537              # double 3.8334480000000002
	.quad	0x3ff29ecf63800219              # double 1.163772
	.quad	0x4020ef2239e6ab9b              # double 8.4670579999999998
	.quad	0x3ff5b15831f03d14              # double 1.3557969999999999
	.quad	0x40203a055757d5aa              # double 8.1133220000000001
	.quad	0x40227694ccab3ede              # double 9.2316040000000008
	.quad	0x400c0d2dcb1465e9              # double 3.5064350000000002
	.quad	0x40130775fb2edfe7              # double 4.7572859999999997
	.quad	0x401ca1a1554fbdad              # double 7.1578419999999996
	.quad	0x4021664c729f59cd              # double 8.699802
	.quad	0x4002f1c2a0232096              # double 2.3680469999999998
	.quad	0x40222e7f2c3009b3              # double 9.090814
	.quad	0x4012cab7dc7abfba              # double 4.6979670000000002
	.quad	0x40083e75360d0247              # double 3.030497
	.quad	0x4022d89613d31b9b              # double 9.4230199999999992
	.quad	0x3fcfdebd9018e758              # double 0.24898500000000001
	.quad	0x401f6d1ed9dfdac7              # double 7.8565630000000004
	.quad	0x4023229d627bf61b              # double 9.5676070000000006
	.quad	0x401f296e158750c2              # double 7.7904590000000002
	.quad	0x3ff3d1a86940357a              # double 1.238686
	.quad	0x400a3148fd9fd36f              # double 3.2740649999999998
	.quad	0x400c74b838c111ae              # double 3.5569920000000002
	.quad	0x3ff9294898f605ab              # double 1.5725789999999999
	.quad	0x4014a9eecbfb15b5              # double 5.1659499999999996
	.quad	0x40220420f6f08cc5              # double 9.0080639999999992
	.quad	0x4009fbb9496249a1              # double 3.2479119999999999
	.quad	0x3fefdd72367e414e              # double 0.99578199999999994
	.quad	0x4020df9096bb98c8              # double 8.4366500000000002
	.quad	0x3fc4deb95e5aff2a              # double 0.163047
	.quad	0x3ffc87724fa8b4c0              # double 1.7830680000000001
	.quad	0x4012c584b1ab0857              # double 4.6928890000000001
	.quad	0x4019e6177ea1c68f              # double 6.4746990000000002
	.quad	0x401ff0739b024f66              # double 7.9848160000000004
	.quad	0x3ff2d09e12a51e32              # double 1.175932
	.quad	0x401a19a38fbca106              # double 6.5250380000000003
	.quad	0x401df3519bd4067d              # double 7.487616
	.quad	0x402197e974a3400c              # double 8.7967030000000008
	.quad	0x4018144fe36d2242              # double 6.0198359999999997
	.quad	0x3ffad74c4cdfaca3              # double 1.6775629999999999
	.quad	0x401ffa426bb55ac0              # double 7.9943939999999998
	.quad	0x402161cae21101b0              # double 8.691001
	.quad	0x3fe652c16df3f962              # double 0.69760200000000006
	.quad	0x3fcc436fc158fb44              # double 0.220808
	.quad	0x4019ba77e5eaab04              # double 6.4320979999999999
	.quad	0x400247fc32ebe597              # double 2.2851490000000001
	.quad	0x401c801711947cfa              # double 7.1250879999999999
	.quad	0x40230f3fd933e35c              # double 9.5297839999999993
	.quad	0x400f18f4f93bc0a0              # double 3.8871859999999998
	.quad	0x40086f6b5d462c34              # double 3.0544039999999999
	.quad	0x3ffe1d53cddd6e05              # double 1.8821600000000001
	.quad	0x3ff900b88ca3e7d1              # double 1.562676
	.quad	0x401b737154003255              # double 6.8627370000000001
	.quad	0x40176857f3061c7a              # double 5.8518980000000003
	.quad	0x402240b71b8aa002              # double 9.1263970000000008
	.quad	0x400a55b3e1437c57              # double 3.2918470000000002
	.quad	0x40235e29307af20f              # double 9.6839080000000006
	.quad	0x401b4ee286727568              # double 6.8270359999999997
	.quad	0x3ffee45b291b823d              # double 1.9307510000000001
	.quad	0x40194ced0b30b5aa              # double 6.3251229999999996
	.quad	0x401c392428d434a0              # double 7.0558019999999999
	.quad	0x402341cb46bacf74              # double 9.6285039999999995
	.quad	0x401a978d0cc35ce2              # double 6.6479990000000004
	.quad	0x4011ddea897635e7              # double 4.4667149999999998
	.quad	0x40200eeac8605682              # double 8.0291350000000001
	.quad	0x3fec6e2003ab862b              # double 0.88844299999999998
	.quad	0x40236014b599aa61              # double 9.6876580000000007
	.quad	0x400b0ab4fa48301a              # double 3.3802279999999998
	.quad	0x400d052b4d8ba40e              # double 3.6275240000000002
	.quad	0x3ff26d549731098d              # double 1.1516919999999999
	.quad	0x4015e459103c8e26              # double 5.4729960000000002
	.quad	0x401deb4245f5ad97              # double 7.4797450000000003
	.quad	0x400d1d0635a426bb              # double 3.6391719999999999
	.quad	0x401dc31fcd24e161              # double 7.4405510000000001
	.quad	0x401341ff2e48e8a7              # double 4.8144499999999999
	.quad	0x4007aa7ce0fc2eba              # double 2.9582459999999999
	.quad	0x3ff418a222d5171e              # double 1.256014
	.quad	0x3fec4e6c093d9664              # double 0.88457300000000005
	.quad	0x400c7fd3f5b5fa22              # double 3.5624159999999998
	.quad	0x401a4b3dd11be6e6              # double 6.5734779999999997
	.quad	0x4009ea27f1b69121              # double 3.2393339999999999
	.quad	0x401f4f75d9a0f0a6              # double 7.8275980000000001
	.quad	0x3ffc13a3ec02f2fa              # double 1.7547950000000001
	.quad	0x40146c74b838c112              # double 5.1059140000000003
	.quad	0x3ffb2f3a14cec41e              # double 1.69903
	.quad	0x402381b584b1ab08              # double 9.7533379999999993
	.quad	0x401a365a57646ae4              # double 6.5530790000000003
	.quad	0x4022367b5f1bef4a              # double 9.1064100000000003
	.quad	0x4015a9cc74b838c1              # double 5.4158189999999999
	.quad	0x400be338b47c73ef              # double 3.485948
	.quad	0x401c484230fcf80e              # double 7.0705650000000002
	.quad	0x40054c2938de6ddf              # double 2.662188
	.quad	0x401f991e215336df              # double 7.8995290000000002
	.quad	0x4018892a30553261              # double 6.1339499999999996
	.quad	0x40000dcfcc5b8dc5              # double 2.0067439999999999
	.quad	0x401da2b5e529bae4              # double 7.4088969999999996
	.quad	0x40235a428d434a02              # double 9.6762890000000006
	.quad	0x401f8695d91ab8e9              # double 7.881431
	.quad	0x4010de78e1932d6f              # double 4.2172580000000002
	.quad	0x3ff8055eaee2003b              # double 1.5013110000000001
	.quad	0x4018f046c764ae00              # double 6.2346450000000004
	.quad	0x4012a682b6284599              # double 4.6626079999999996
	.quad	0x401d4ce0b912dba5              # double 7.3250760000000001
	.quad	0x402350c9b845564b              # double 9.6577889999999992
	.quad	0x3fd4946801711948              # double 0.32155800000000001
	.quad	0x40155bf0995aaf79              # double 5.339785
	.quad	0x401c291fb3fa6df0              # double 7.0401600000000002
	.quad	0x3feb1f7f8ca8198f              # double 0.84759499999999999
	.quad	0x3ff324302b40f66a              # double 1.1963349999999999
	.quad	0x4020366ab9b23dd5              # double 8.1062829999999995
	.quad	0x3fe5539b8887229f              # double 0.66645600000000005
	.quad	0x401a1bbbe878fabe              # double 6.5270840000000003
	.quad	0x3fc074751ce28ed6              # double 0.128554
	.quad	0x4013a630a91537a0              # double 4.9122950000000003
	.quad	0x401e1a9de8b3b320              # double 7.5259929999999997
	.quad	0x400ffab4b72c5198              # double 3.9974150000000002
	.quad	0x3feea9e2bcf91a33              # double 0.95823800000000003
	.quad	0x4022f289fc6da448              # double 9.4737089999999994
	.quad	0x401ae1fc4c165908              # double 6.7206890000000001
	.quad	0x3ff8a7d566cf41f2              # double 1.540975
	.quad	0x3fe9b58298cc1440              # double 0.80340699999999998
	.quad	0x401f24690de09353              # double 7.7855569999999998
	.quad	0x4013019c17225b75              # double 4.7515720000000004
	.quad	0x40200299b6f5caf3              # double 8.0050790000000003
	.quad	0x3ff58bccf28c79f6              # double 1.3466309999999999
	.quad	0x400f2a6ca03c4b0a              # double 3.895715
	.quad	0x3ff8de16d6dc1a48              # double 1.5542210000000001
	.quad	0x4017655b89939219              # double 5.8489820000000003
	.quad	0x3feca3f24d8fd5cb              # double 0.89501299999999995
	.quad	0x40100ac3a860dcba              # double 4.0105120000000003
	.quad	0x402068a65492ff4c              # double 8.2043940000000006
	.quad	0x40102e0b0af5fd48              # double 4.0449640000000002
	.quad	0x400183f67f4dbdf9              # double 2.189435
	.quad	0x4006ff2a172abef0              # double 2.8745919999999998
	.quad	0x402353734b51372a              # double 9.6629889999999996
	.quad	0x400d7f3493858362              # double 3.6871119999999999
	.quad	0x401759bcba301217              # double 5.8376340000000004
	.quad	0x3fd06299524bfd2f              # double 0.25601800000000002
	.quad	0x401b447b24638c97              # double 6.8168759999999997
	.quad	0x4021d097e996312f              # double 8.9074089999999995
	.quad	0x4019309aaa3ad18d              # double 6.2974649999999999
	.quad	0x3ff0a45f5ad96a6a              # double 1.04013
	.quad	0x3fef9ada76d97b31              # double 0.987653
	.quad	0x4012f6d0d49949e9              # double 4.7410310000000004
	.quad	0x4014e1ca3a4b5569              # double 5.2204980000000001
	.quad	0x40165eeed8904f6e              # double 5.592708
	.quad	0x3fe8f1800a7c5ac4              # double 0.77947999999999995
	.quad	0x40050cc0bdcad14a              # double 2.631227
	.quad	0x4014eda98676a726              # double 5.2320919999999997
	.quad	0x4006a4ebdd334c5e              # double 2.8305280000000002
	.quad	0x4014ab2af145521a              # double 5.1671560000000003
	.quad	0x402274794ea07703              # double 9.2274879999999992
	.quad	0x400fec6822ff0889              # double 3.9904329999999999
	.quad	0x3fe65f19d66adb40              # double 0.69910899999999998
	.quad	0x40083b6805a2d730              # double 3.029007
	.quad	0x400143d03968d75a              # double 2.158112
	.quad	0x401e61055b899392              # double 7.5947469999999999
	.quad	0x40006ce032db1e9f              # double 2.0531619999999999
	.quad	0x4008129888f861a6              # double 3.00908
	.quad	0x401736a161e4f766              # double 5.80335
	.quad	0x4015ebf2f5558213              # double 5.4804190000000004
	.quad	0x4012ec8f32378ab1              # double 4.7310150000000002
	.quad	0x3fe10e3476295209              # double 0.53298400000000001
	.quad	0x3ff561c25d074214              # double 1.3363670000000001
	.quad	0x4004c8f9f44d4456              # double 2.5981329999999998
	.quad	0x401e537718655193              # double 7.5815089999999996
	.quad	0x40230fecbb7f9d6f              # double 9.5311029999999998
	.quad	0x4020325e99e94ab2              # double 8.0983780000000003
	.quad	0x401a247f562174c5              # double 6.5356420000000002
	.quad	0x4014c34549b62c77              # double 5.1906939999999997
	.quad	0x401506c093d96638              # double 5.2565939999999998
	.quad	0x3fe69d0a67620ee9              # double 0.70667000000000002
	.quad	0x402078b7e4de3b8a              # double 8.2357779999999998
	.quad	0x400a7ccfaeff5c6c              # double 3.310943
	.quad	0x401bdc88e79aae6d              # double 6.9653660000000004
	.quad	0x401efb3e5753a3ec              # double 7.745355
	.quad	0x401f85e95b78cc9a              # double 7.8807729999999996
	.quad	0x4021d009f623076c              # double 8.9063259999999999
	.quad	0x400430856e696a27              # double 2.523692
	.quad	0x4006e1da7b0b3919              # double 2.8602799999999999
	.quad	0x401edf16f4384ba1              # double 7.717861
	.quad	0x40101fbce4217d28              # double 4.0309939999999997
	.quad	0x40094be8bc169c24              # double 3.1620650000000001
	.quad	0x40198afff36ac647              # double 6.3857419999999996
	.quad	0x3ff293e4ef0281ba              # double 1.1611069999999999
	.quad	0x40218e0b0af5fd48              # double 8.7774280000000005
	.quad	0x4009aa1f8e3ac0c6              # double 3.2080679999999999
	.quad	0x3ffd7bc3c5bd0e13              # double 1.842716
	.quad	0x4016b4488c60cbf3              # double 5.6760580000000003
	.quad	0x40201039abf33871              # double 8.0316899999999993
	.quad	0x401dbb46bacf7447              # double 7.432887
	.quad	0x401a5d17c5ef62fa              # double 6.5909110000000002
	.quad	0x401a486162f166e0              # double 6.570684
	.quad	0x4021a4cd530489d2              # double 8.8218789999999991
	.quad	0x4016ade19fc2a887              # double 5.6698060000000003
	.quad	0x4023a81a9b8cb8e1              # double 9.8283280000000008
	.quad	0x3fe3d9dfdac68a93              # double 0.62034599999999995
	.quad	0x3ff0acedd4845133              # double 1.042219
	.quad	0x401c9aa044ae85ba              # double 7.1510020000000001
	.quad	0x4012a03b81b64e05              # double 4.6564769999999998
	.quad	0x40213856605ee569              # double 8.6100340000000006
	.quad	0x4023f948ba83f4ed              # double 9.9868830000000006
	.quad	0x4020bdb317efe0ce              # double 8.3705069999999999
	.quad	0x3fff6a821f2990f3              # double 1.963503
	.quad	0x40211892684cf074              # double 8.5479920000000007
	.quad	0x40046e09784ec637              # double 2.5537290000000001
	.quad	0x3ff20e4fb97bb731              # double 1.1284940000000001
	.quad	0x3fc771327243137b              # double 0.183142
	.quad	0x401dedd72367e415              # double 7.4822660000000001
	.quad	0x3fa225fa658c4bd3              # double 0.035445999999999998
	.quad	0x401061ca7d6733ec              # double 4.0954990000000002
	.quad	0x3fbe8ad688377186              # double 0.119306
	.quad	0x4006a050bd87b56c              # double 2.8282790000000002
	.quad	0x4022f4a85caafbc2              # double 9.4778470000000006
	.quad	0x40153e4430b178b3              # double 5.3108069999999996
	.quad	0x3fdc9fdbd2fa0d78              # double 0.44725700000000002
	.quad	0x4021afa41e57d9dc              # double 8.8430490000000006
	.quad	0x4014197460242d06              # double 5.024858
	.quad	0x3fd279fec99f1ae3              # double 0.28869600000000001
	.quad	0x4022e8b84988094e              # double 9.4545309999999994
	.quad	0x401e3342aa9f7b5b              # double 7.550059
	.quad	0x3febf1348b220792              # double 0.87319400000000003
	.quad	0x401badcc63f14120              # double 6.9197249999999997
	.quad	0x4011b9a415f45e0b              # double 4.4312899999999997
	.quad	0x4021ad0fc71d6063              # double 8.8380109999999998
	.quad	0x400808a7a41e57da              # double 3.0042260000000001
	.quad	0x4010d7e62dc6e2a8              # double 4.210839
	.quad	0x4023336694898f60              # double 9.6003919999999994
	.quad	0x4017fea9a3d2d880              # double 5.9986940000000004
	.quad	0x3fe01a8cdea033e8              # double 0.50324100000000005
	.quad	0x4021149ecb31c21a              # double 8.5402740000000001
	.quad	0x400f2500d5e8d541              # double 3.893068
	.quad	0x3ff83497b7414a4d              # double 1.51284
	.quad	0x40199c881e4712e4              # double 6.402863
	.quad	0x3f8d8f92af9a8cdf              # double 0.014434000000000001
	.quad	0x4023274751ce28ed              # double 9.5767159999999993
	.quad	0x400673fc86cebbba              # double 2.8066339999999999
	.quad	0x4019d76b3bb83cf3              # double 6.4603700000000002
	.quad	0x4020cd425f202108              # double 8.4008970000000005
	.quad	0x40217ca36199780c              # double 8.7434340000000005
	.quad	0x3ff3514d2f5dbb9d              # double 1.207349
	.quad	0x401c883621fafc8b              # double 7.133019
	.quad	0x4001f859c8c9320e              # double 2.2462650000000002
	.quad	0x3fdaf8ca8198f1d4              # double 0.421435
	.quad	0x40199307af20ea5b              # double 6.3935839999999997
	.quad	0x40162f4b1ee24357              # double 5.5461850000000004
	.quad	0x400743361565c2d2              # double 2.9078179999999998
	.quad	0x401cb26c7eae5bc8              # double 7.1742419999999996
	.quad	0x3fff609784ec636b              # double 1.961082
	.quad	0x4005ee30caa326e1              # double 2.741304
	.quad	0x4020fc1a048e043a              # double 8.4923859999999998
	.quad	0x40207ae5de15ca6d              # double 8.2400350000000007
	.quad	0x400345a9a8049668              # double 2.4090150000000001
	.quad	0x4015a3cee9dd7ecc              # double 5.4099690000000002
	.quad	0x4023ddd8b60f1b26              # double 9.9332940000000001
	.quad	0x3ffa035696e58a33              # double 1.625815
	.quad	0x401269d883ba3444              # double 4.6033650000000002
	.quad	0x40177ec9e236c15d              # double 5.8738169999999998
	.quad	0x40151ba12b5e529c              # double 5.2769820000000003
	.quad	0x3ff60389f83be660              # double 1.375864
	.quad	0x400c48626f60e0eb              # double 3.5353439999999998
	.quad	0x40211ff8012dfd69              # double 8.5624389999999995
	.quad	0x401b534b945308bc              # double 6.8313430000000004
	.quad	0x4023972b4528283d              # double 9.7952519999999996
	.quad	0x400df503b81b64e0              # double 3.7446359999999999
	.quad	0x40100d955714b9cb              # double 4.0132649999999996
	.quad	0x3fe882d16b97fe8f              # double 0.76596900000000001
	.quad	0x40088ac8605681ed              # double 3.0677650000000001
	.quad	0x4018b29e0a41a262              # double 6.1744310000000002
	.quad	0x3ffe5fb506dd69d3              # double 1.898366
	.quad	0x4005aa57a786c227              # double 2.7081750000000002
	.quad	0x3fd5275ab7dc7ac0              # double 0.33052700000000002
	.quad	0x400429203a322af5              # double 2.5200809999999998
	.quad	0x400472aa5c5f7c67              # double 2.5559889999999998
	.quad	0x401ca3cb81733227              # double 7.1599560000000002
	.quad	0x400740f2becedd48              # double 2.9067129999999999
	.quad	0x4011e38bcdfefbf4              # double 4.472213
	.quad	0x3ffb33b42cc2d6aa              # double 1.7001230000000001
	.quad	0x40206ce7685985ad              # double 8.2127029999999994
	.quad	0x401264da09cc319c              # double 4.5984879999999997
	.quad	0x401bfa619da9c993              # double 6.9945130000000004
	.quad	0x3fe6a031ceaf251c              # double 0.70705499999999999
	.quad	0x4014b1a1554fbdad              # double 5.1734669999999996
	.quad	0x402192617c1bda51              # double 8.7858999999999998
	.quad	0x401be605ab3aabcd              # double 6.9746309999999996
	.quad	0x4000289dadfb506e              # double 2.0198320000000001
	.quad	0x3fc008b75ea67e84              # double 0.12526599999999999
	.quad	0x3ffc9f1e0828c36e              # double 1.7888470000000001
	.quad	0x4021cf52b90a7829              # double 8.904928
	.quad	0x4001bbff04577d95              # double 2.2167949999999998
	.quad	0x40067039ef0f16f4              # double 2.8047979999999999
	.quad	0x4023c3c07ee0b0af              # double 9.8823279999999993
	.quad	0x4020659cf13cee9e              # double 8.1984630000000003
	.quad	0x4000d0af5fd47bee              # double 2.1018970000000001
	.quad	0x401b9f0fe047d3d4              # double 6.9053339999999999
	.quad	0x401794a01abd1aa8              # double 5.8951419999999999
	.quad	0x401d2ba3ca7503b8              # double 7.2926169999999999
	.quad	0x40218bd4280ae105              # double 8.7731030000000008
	.quad	0x4023ab7f9d6f1130              # double 9.8349580000000003
	.quad	0x401c7090f733a8a4              # double 7.109928
	.quad	0x400508c5004fb118              # double 2.6292819999999999
	.quad	0x4017cdcd2d44dca9              # double 5.9509780000000001
	.quad	0x3fe9b45069a4df48              # double 0.803261
	.quad	0x3fe8f687b139c94f              # double 0.78009399999999995
	.quad	0x3fded57ff9b56324              # double 0.48178100000000001
	.quad	0x400f2e2eb1c432ca              # double 3.8975499999999998
	.quad	0x4022137f9d6f1130              # double 9.0380830000000003
	.quad	0x401e3d2dcb1465e9              # double 7.5597450000000003
	.quad	0x4022df9aae6c8f75              # double 9.4367269999999994
	.quad	0x401c7bd512ec6bcf              # double 7.1209300000000004
	.quad	0x3ff5c916ca46e08f              # double 1.361594
	.quad	0x3ffcef9b994e1a3f              # double 1.8084979999999999
	.quad	0x401cab70ac3a860e              # double 7.1674220000000002
	.quad	0x401f51919ac79703              # double 7.829657
	.quad	0x401a99578a2a90cd              # double 6.6497479999999998
	.quad	0x4018ff67f4dbdf8f              # double 6.2494199999999998
	.quad	0x401cff8a0902de01              # double 7.2495500000000002
	.quad	0x3fb6c2efd438d1d9              # double 0.088912000000000005
	.quad	0x40150696e58a32f4              # double 5.2564349999999997
	.quad	0x3ff1abbecaab8a5d              # double 1.10443
	.quad	0x4001367ec7863bef              # double 2.1516090000000001
	.quad	0x401d697460242d06              # double 7.352983
	.quad	0x4021dc9f94855da2              # double 8.9309049999999992
	.quad	0x400888576cce5f74              # double 3.066573
	.quad	0x4010c5c182ecaeea              # double 4.1931209999999997
	.quad	0x401a870de8f6ceff              # double 6.6318890000000001
	.quad	0x4010b63d3e4ef028              # double 4.1779679999999999
	.quad	0x4020d89f623076c0              # double 8.4230909999999994
	.quad	0x4008ef23033a4724              # double 3.1167660000000001
	.quad	0x4023b3fee2c98e54              # double 9.8515540000000001
	.quad	0x40217516b97fe8ee              # double 8.7286889999999993
	.quad	0x40227389f83be660              # double 9.2256619999999998
	.quad	0x401b87e1fc08fa7b              # double 6.8826980000000004
	.quad	0x4004e02f2f987400              # double 2.6094650000000001
	.quad	0x4016e3affb04ee7c              # double 5.7223509999999997
	.quad	0x3ff01774256bca53              # double 1.0057259999999999
	.quad	0x401ffb95e5aff2a1              # double 7.9956889999999996
	.quad	0x4008b7521144cbe2              # double 3.089512
	.quad	0x40024ba40d90e23b              # double 2.286934
	.quad	0x400dea0663c74fb5              # double 3.7392699999999999
	.quad	0x4014056a37ac3eb8              # double 5.0052880000000002
	.quad	0x3fb674e22a2c2374              # double 0.087720999999999993
	.quad	0x4002b47a5b0ff10f              # double 2.3381240000000001
	.quad	0x401570724b76f6d7              # double 5.3598109999999997
	.quad	0x4020b68533b10774              # double 8.3564849999999992
	.quad	0x402088fffbce4218              # double 8.2675780000000003
	.quad	0x4008f011904b3c3e              # double 3.1172209999999998
	.quad	0x401d91b64e054691              # double 7.3922970000000001
	.quad	0x3ff679a176ddacef              # double 1.404695
	.quad	0x4016d04816f0068e              # double 5.7034000000000002
	.quad	0x4021578d92fb19e7              # double 8.6710019999999997
	.quad	0x402004c4ef88b978              # double 8.0093150000000009
	.quad	0x4021fba27ae9ab2a              # double 8.9914740000000002
	.quad	0x3ffe29ff0cbaf966              # double 1.8852530000000001
	.quad	0x401a3c026cc1ca3a              # double 6.5586029999999997
	.quad	0x3fc0d73860999dcb              # double 0.13156799999999999
	.quad	0x402015204af92296              # double 8.0412619999999997
	.quad	0x40216fc957cd466f              # double 8.7183329999999994
	.quad	0x4003e3d35eb7457c              # double 2.486243
	.quad	0x4020ea85015c2092              # double 8.4580459999999995
	.quad	0x3fc78dbcec84f8f9              # double 0.18401300000000001
	.quad	0x401f60a88effe2a4              # double 7.8443930000000002
	.quad	0x3fef2135daad6020              # double 0.972804
	.quad	0x3ffa47b02d59d55e              # double 1.6425019999999999
	.quad	0x4018248e043a2164              # double 6.035698
	.quad	0x4022b8e0eb67c287              # double 9.361091
	.quad	0x400b8112ba16e7a3              # double 3.438024
	.quad	0x40197f969e3c9689              # double 6.3745979999999998
	.quad	0x401bcc6b05319829              # double 6.9496270000000004
	.quad	0x3ff96027525460aa              # double 1.5859749999999999
	.quad	0x4014baa92e62131b              # double 5.1822860000000004
	.quad	0x4022254f7a919696              # double 9.0728720000000003
	.quad	0x40182aab47410731              # double 6.0416689999999997
	.quad	0x40068e04c0592104              # double 2.8193450000000002
	.quad	0x401425308bb90646              # double 5.0363179999999996
	.quad	0x40074baf965b20b8              # double 2.911956
	.quad	0x400a9ca07f66e86c              # double 3.3264779999999998
	.quad	0x4003b8c3b0c4588a              # double 2.465217
	.quad	0x401256ddaceee0f4              # double 4.5848300000000002
	.quad	0x3ffb7bb73083558a              # double 1.7177039999999999
	.quad	0x3fed936a400fba88              # double 0.92424499999999998
	.quad	0x401d2f34d6a161e5              # double 7.2961
	.quad	0x3ffeb0c564f97edc              # double 1.9181569999999999
	.quad	0x3fb781626b2f2303              # double 0.091817999999999997
	.quad	0x402279600f34506a              # double 9.2370610000000006
	.quad	0x4020e2d2fe3f35a0              # double 8.4430160000000001
	.quad	0x401398f57f737da6              # double 4.8993739999999999
	.quad	0x4020dc94b380cb6c              # double 8.4308219999999991
	.quad	0x3ff5dab6d00b45ae              # double 1.3658969999999999
	.quad	0x40214c755ffe6d59              # double 8.6493330000000004
	.quad	0x4016c61ed5ae1cde              # double 5.6934769999999997
	.quad	0x400a5c64345cfedf              # double 3.2951130000000002
	.quad	0x401b1a8eb463497b              # double 6.7759349999999996
	.quad	0x3fe5fa26a22b3893              # double 0.68678600000000001
	.quad	0x40228c9f51697f20              # double 9.2746530000000007
	.quad	0x402042a737110e45              # double 8.1301819999999996
	.quad	0x401d463065f9591d              # double 7.3185440000000002
	.quad	0x400dbb91f70de8f7              # double 3.7165870000000001
	.quad	0x3fd05e02ea960b70              # double 0.25573800000000002
	.quad	0x4016d9628cbd1245              # double 5.7122900000000003
	.quad	0x40177b61fe21d96f              # double 5.8704910000000003
	.quad	0x401f78b04ab606b8              # double 7.8678600000000002
	.quad	0x40008dc8754f3776              # double 2.0692300000000001
	.quad	0x40096156e264e486              # double 3.1725289999999999
	.quad	0x3fedc1376d549731              # double 0.929836
	.quad	0x4023f4723aafff37              # double 9.9774340000000005
	.quad	0x4013d2e514c22ee4              # double 4.9559519999999999
	.quad	0x3ff45701d9f4d37c              # double 1.271242
	.quad	0x4021e72b4528283d              # double 8.9515019999999996
	.quad	0x3ffd99ae924f227d              # double 1.85002
	.quad	0x401aa0b5ed8d36b5              # double 6.6569440000000002
	.quad	0x400b670a808c825a              # double 3.4253130000000001
	.quad	0x4018d7bf1e8e6080              # double 6.2106899999999996
	.quad	0x3ffa6add590c0ad0              # double 1.6510899999999999
	.quad	0x400391d9b1b79d91              # double 2.4462160000000002
	.quad	0x3fbafbe33acd5b68              # double 0.105406
	.quad	0x40204c794ea07703              # double 8.1493629999999992
	.quad	0x4022cd102bc72e27              # double 9.4005139999999993
	.quad	0x4019a70c1333b96b              # double 6.4131320000000001
	.quad	0x3ff8762f9ca5bd94              # double 1.5288539999999999
	.quad	0x401cc9ef954eb13e              # double 7.197203
	.quad	0x40209690364388ec              # double 8.2940690000000003
	.quad	0x4014eacb85a4f00f              # double 5.2292920000000001
	.quad	0x401016b0d9513f8e              # double 4.0221590000000003
	.quad	0x400db8ed1bf7ad4b              # double 3.7152959999999999
	.quad	0x3fe61db65ecc3e32              # double 0.69112700000000005
	.quad	0x4023c989bd8383ae              # double 9.8936290000000007
	.quad	0x3fd59e3c968943e1              # double 0.337783
	.quad	0x402124a643cc07ab              # double 8.5715810000000001
	.quad	0x400f98c64fdb09a6              # double 3.9495969999999998
	.quad	0x401b0584f4c6e6da              # double 6.7553900000000002
	.quad	0x4019fdf3300de4c5              # double 6.4979979999999999
	.quad	0x4020b076188b1141              # double 8.3446510000000007
	.quad	0x3ff6f30a4e379b78              # double 1.4343360000000001
	.quad	0x3ffb05a4f00ef135              # double 1.6888780000000001
	.quad	0x3ffe6ededaec4a41              # double 1.9020680000000001
	.quad	0x3ffa95bab21815a0              # double 1.6615549999999999
	.quad	0x4023eb43d89ce4a8              # double 9.9595020000000005
	.quad	0x400a3d5a9eb2074f              # double 3.2799580000000002
	.quad	0x401dd8feac42e98a              # double 7.4619090000000003
	.quad	0x3fe63f0bae89eba7              # double 0.69519600000000004
	.quad	0x4020d8f840181e04              # double 8.423769
	.quad	0x401246feb4a6655a              # double 4.569331
	.quad	0x40056c892ab68cef              # double 2.6779959999999998
	.quad	0x4019cb0d51f81a58              # double 6.4482929999999996
	.quad	0x40225299524bfd2f              # double 9.1613260000000007
	.quad	0x4007400b88ca3e7d              # double 2.906272
	.quad	0x401f5dfc5cdd50a9              # double 7.8417830000000003
	.quad	0x401f237718655193              # double 7.7846339999999996
	.quad	0x402374b039ef0f17              # double 9.727907
	.quad	0x401b202645e4e69f              # double 6.781396
	.quad	0x40102a411c2a0232              # double 4.041264
	.quad	0x3fd364d3bf2f5558              # double 0.30302899999999999
	.quad	0x401c43a797891e21              # double 7.0660689999999997
	.quad	0x4023875579af1887              # double 9.7643240000000002
	.quad	0x3ffaba41e57d9dbb              # double 1.6704730000000001
	.quad	0x4009d3250b52439a              # double 3.2280980000000001
	.quad	0x401464b9cb6848bf              # double 5.0983650000000003
	.quad	0x3fc29b7bf1e8e608              # double 0.14537
	.quad	0x40062afcce1c5825              # double 2.7709899999999998
	.quad	0x3fc5f0dc768dfbd7              # double 0.17141300000000001
	.quad	0x4020cd061416377a              # double 8.4004370000000002
	.quad	0x40021994e1a3f466              # double 2.2624909999999998
	.quad	0x4023389fc6da4485              # double 9.6105940000000007
	.quad	0x400da68f4b61fe22              # double 3.7063280000000001
	.quad	0x401360a63305100a              # double 4.8443839999999998
	.quad	0x3fc3952d234eb9a1              # double 0.15298999999999999
	.quad	0x4018c92684cf073a              # double 6.1964360000000003
	.quad	0x4010e869c66d373b              # double 4.226966
	.quad	0x401bdd5992428d43              # double 6.9661619999999997
	.quad	0x3ff0af0e0a84be40              # double 1.0427379999999999
	.quad	0x40205e931876188b              # double 8.1847159999999999
	.quad	0x40131014f8b588e3              # double 4.7657049999999996
	.quad	0x40218acc92146a1a              # double 8.7710919999999994
	.quad	0x4000fd9ba1b19610              # double 2.1238320000000002
	.quad	0x40211ec311622813              # double 8.5600819999999995
	.quad	0x4020498fa376922e              # double 8.1436740000000007
	.quad	0x3fd9b59ddc1e7968              # double 0.40171000000000001
	.quad	0x401416a550870111              # double 5.0221150000000003
	.quad	0x4001643ed959a30a              # double 2.1739480000000002
	.quad	0x4010648a58b3f63c              # double 4.0981839999999998
	.quad	0x4017db9f98b71b8b              # double 5.9644760000000003
	.quad	0x4020254fdf3b645a              # double 8.0728749999999998
	.quad	0x400b8e3cd9a52264              # double 3.4444520000000001
	.quad	0x40203b01eabbcb1d              # double 8.1152490000000004
	.quad	0x401d2fa0d77b7c78              # double 7.2965119999999999
	.quad	0x3ffb573fb7a5f41b              # double 1.708801
	.quad	0x40189af42784a948              # double 6.1513220000000004
	.quad	0x401a74d50ebaade6              # double 6.6140939999999997
	.quad	0x401b1fce3150dae4              # double 6.7810600000000001
	.quad	0x3feda67c6b8b6955              # double 0.92657299999999998
	.quad	0x400f15e84f09528f              # double 3.885697
	.quad	0x401b8a2e3c536d65              # double 6.8849419999999997
	.quad	0x4020c423315d701e              # double 8.3830810000000007
	.quad	0x400c7ac79702e664              # double 3.5599509999999999
	.quad	0x400486b26bf8769f              # double 2.5657700000000001
	.quad	0x4017d465625a682b              # double 5.9574179999999997
	.quad	0x401ca92ea52ef912              # double 7.1652170000000002
	.quad	0x4023b54bf0995aaf              # double 9.8540949999999991
	.quad	0x400e400da1a93294              # double 3.7812760000000001
	.quad	0x402306687f455a7d              # double 9.5125159999999997
	.quad	0x400f5cc426351def              # double 3.920296
	.quad	0x40132ab7564302b4              # double 4.7917149999999999
	.quad	0x4020ab649d388a8b              # double 8.3347519999999999
	.quad	0x4021bae59af9ebea              # double 8.8650330000000004
	.quad	0x4019b8090b417ca2              # double 6.4297219999999999
	.quad	0x401056c58eeae9ee              # double 4.0847379999999998
	.quad	0x401ebf0f5a1016ce              # double 7.6865819999999996
	.quad	0x4009bc27631b584b              # double 3.216872
	.quad	0x402158cbd1244a62              # double 8.6734299999999998
	.quad	0x4021fdcb1465e892              # double 8.9956899999999997
	.quad	0x402223f141205bc0              # double 9.0701999999999998
	.quad	0x4011a56cd6c2efd4              # double 4.4115479999999998
	.quad	0x4012d262888b545c              # double 4.7054539999999996
	.quad	0x3ff5a49e44fa0514              # double 1.3526899999999999
	.quad	0x3fe0343b70ef5665              # double 0.50637600000000005
	.quad	0x401686c43f5f9160              # double 5.6316079999999999
	.quad	0x400a453f39d1b2e6              # double 3.2838120000000002
	.quad	0x400dcd5d80e496ee              # double 3.725276
	.quad	0x4023b5532617c1be              # double 9.8541500000000006
	.quad	0x40141016052502ef              # double 5.0157090000000002
	.quad	0x4023be4f97edc7ef              # double 9.8717009999999998
	.quad	0x3ff60fc0d2c386d3              # double 1.378846
	.quad	0x4021fbf2b239a390              # double 8.9920860000000005
	.quad	0x401a9eb13dfb0d52              # double 6.654973
	.quad	0x4013f88effe2a3cf              # double 4.9927330000000003
	.quad	0x4023c4794ea07703              # double 9.8837379999999992
	.quad	0x4019550acc0bdcad              # double 6.3330489999999999
	.quad	0x3ff45019f3c70c99              # double 1.2695559999999999
	.quad	0x401da091c087442c              # double 7.4068059999999996
	.quad	0x3ff8e5cf67b1c001              # double 1.556106
	.quad	0x4022a8010c6f7a0b              # double 9.3281329999999993
	.quad	0x4021aa5918a009f6              # double 8.8327109999999998
	.quad	0x4020fcaa326e1156              # double 8.4934860000000008
	.quad	0x401418ace24bba13              # double 5.0240970000000003
	.quad	0x40236d7c914b167f              # double 9.7138410000000003
	.quad	0x3fd8fd199bb2788e              # double 0.39044800000000002
	.quad	0x40128514c22ee419              # double 4.6299619999999999
	.quad	0x400ed6e58a32f449              # double 3.85493
	.quad	0x40205663e8dda48b              # double 8.1687309999999993
	.quad	0x3ff02efe4ffc9796              # double 1.0114730000000001
	.quad	0x401592314013ec46              # double 5.3927659999999999
	.quad	0x40205163baba7b91              # double 8.1589639999999992
	.quad	0x3ffa5f2452c59fb2              # double 1.648228
	.quad	0x3f999392189bd838              # double 0.024976999999999999
	.quad	0x40229ba2df9378ee              # double 9.3039769999999997
	.quad	0x40110417ca2120e2              # double 4.253997
	.quad	0x3ff51a7c17a89332              # double 1.3189660000000001
	.quad	0x3fe85e2cdc011d36              # double 0.76149599999999995
	.quad	0x400fbb5f1bef49cf              # double 3.9664899999999998
	.quad	0x4013fa797891e215              # double 4.9946039999999998
	.quad	0x4023d21ff2e48e8a              # double 9.9103999999999992
	.quad	0x3fe4f746887a8d65              # double 0.65518500000000002
	.quad	0x4013a79b34a44c7b              # double 4.913678
	.quad	0x4017b873bc903ea7              # double 5.930129
	.quad	0x4018480e06530058              # double 6.0703659999999999
	.quad	0x40208b0270f38822              # double 8.2715029999999992
	.quad	0x40155eda66128390              # double 5.3426299999999998
	.quad	0x40191b9bed30f063              # double 6.2769620000000002
	.quad	0x400ffb8561d4306e              # double 3.9978129999999998
	.quad	0x400f74d26fa3fcca              # double 3.932042
	.quad	0x4013fd909f1f1498              # double 4.9976219999999998
	.quad	0x4001da921ccd9620              # double 2.2317239999999998
	.quad	0x3fbf685985ad538b              # double 0.122686
	.quad	0x40064f57f737da62              # double 2.7887420000000001
	.quad	0x3ffa9b77c02afddb              # double 1.6629560000000001
	.quad	0x40205731098d477c              # double 8.1702960000000004
	.quad	0x4013a57c4e2f37fc              # double 4.9116070000000001
	.quad	0x4001935c9e6687f4              # double 2.1969539999999999
	.quad	0x4022f03c07ee0b0b              # double 9.469208
	.quad	0x40217ec7863beec4              # double 8.7476160000000007
	.quad	0x4015de2f37fbefd0              # double 5.466977
	.quad	0x401a1843c3a42f1f              # double 6.5236960000000002
	.quad	0x401c33ee1bd1ed9e              # double 7.050713
	.quad	0x40232b4a2339c0ec              # double 9.5845500000000001
	.quad	0x3f1c0ca600b02928              # double 1.07E-4
	.quad	0x3ffc0e7ddca4b125              # double 1.753538
	.quad	0x3ffe51f0c34c1a8b              # double 1.8950050000000001
	.quad	0x40213b35d249e450              # double 8.6156450000000007
	.quad	0x401c35fc7e6b3fea              # double 7.052721
	.quad	0x40165f6f08cc575c              # double 5.593197
	.quad	0x4001438fbca1059f              # double 2.1579890000000002
	.quad	0x4015020c49ba5e35              # double 5.2519999999999998
	.quad	0x401dd6c43f5f9160              # double 7.4597329999999999
	.quad	0x4013826b2f23033a              # double 4.8773619999999998
	.quad	0x4008b3eccc469510              # double 3.0878540000000001
	.quad	0x3ffb31359791819d              # double 1.699514
	.quad	0x402260c0ce91c8eb              # double 9.1889710000000004
	.quad	0x4013d92a737110e4              # double 4.9620759999999997
	.quad	0x4019ba3f8982cb21              # double 6.431883
	.quad	0x3feb15df6555c52e              # double 0.84641999999999995
	.quad	0x40091a5119ce075f              # double 3.1378499999999998
	.quad	0x3fe52d5171e29b6b              # double 0.66178199999999998
	.quad	0x40159cb5350092cd              # double 5.403035
	.quad	0x3fedf5f91600f345              # double 0.936276
	.quad	0x40017bbcf4e874c9              # double 2.185419
	.quad	0x401116e221c8a7a4              # double 4.2723469999999999
	.quad	0x3ff3a95faa8a82a5              # double 1.2288509999999999
	.quad	0x4008bb73083558a7              # double 3.0915279999999998
	.quad	0x400a762281344806              # double 3.3076829999999999
	.quad	0x4020d15cc857f306              # double 8.4089109999999998
	.quad	0x401a29be4cd74928              # double 6.5407650000000004
	.quad	0x400f9b54195cc858              # double 3.950844
	.quad	0x400d0e2f37fbefd0              # double 3.631926
	.quad	0x401b9961c36976bc              # double 6.8997869999999999
	.quad	0x401a2dc5931ca7d6              # double 6.5446989999999996
	.quad	0x4012f929aa1d755c              # double 4.7433230000000002
	.quad	0x3f8e96c3fc43b2dd              # double 0.014936
	.quad	0x3fd4dad7518b0d0f              # double 0.32585700000000001
	.quad	0x400f3361dc93ea2d              # double 3.9000889999999999
	.quad	0x40075f58c08b75ea              # double 2.9215559999999998
	.quad	0x400dbc5931ca7d67              # double 3.7169669999999999
	.quad	0x3fdb68e820e62995              # double 0.42827799999999999
	.quad	0x4003275d56f32bdc              # double 2.3942209999999999
	.quad	0x401277bbf93ff25e              # double 4.6169279999999997
	.quad	0x4015cdce39b456b4              # double 5.4509819999999998
	.quad	0x3fecd4a7f8012dfd              # double 0.90095899999999995
	.quad	0x402365410f94c87a              # double 9.6977620000000009
	.quad	0x40226e7dfe32a066              # double 9.2158049999999996
	.quad	0x401d8df97aaac109              # double 7.3886469999999997
	.quad	0x4021e45aa2e3c537              # double 8.9460040000000003
	.quad	0x3fc23da2f8bdec5f              # double 0.14250599999999999
	.quad	0x401e1f26aec0724b              # double 7.5304209999999995
	.quad	0x4016b6b26bf8769f              # double 5.6784150000000002
	.quad	0x401798ae74f2f124              # double 5.8991030000000002
	.quad	0x3fd2d8ba40d90e24              # double 0.29447800000000002
	.quad	0x40193795b35b0bbf              # double 6.3042819999999997
	.quad	0x3ff2d9d55e6bc622              # double 1.1781820000000001
	.quad	0x4022b9e9af5ba2be              # double 9.363111
	.quad	0x3ff887735c182ecb              # double 1.533069
	.quad	0x401a972b4528283d              # double 6.6476259999999998
	.quad	0x400978055fbb517a              # double 3.1836039999999999
	.quad	0x4014730caa326e11              # double 5.1123529999999997
	.quad	0x4020ec35ce182667              # double 8.4613479999999992
	.quad	0x401b97dbf487fcb9              # double 6.8982999999999999
	.quad	0x401d33bea91d9b1b              # double 7.3005319999999996
	.quad	0x4022e6f5a964e8b8              # double 9.4510930000000001
	.quad	0x40117c5479d4d834              # double 4.371416
	.quad	0x40106a8c586876e2              # double 4.1040510000000001
	.quad	0x401cd37b4a2339c1              # double 7.2065250000000001
	.quad	0x40015df3300de4c5              # double 2.170874
	.quad	0x40029cd2d44dca8e              # double 2.3265739999999999
	.quad	0x401c8a9478c868ba              # double 7.135332
	.quad	0x3ffb09a240314877              # double 1.6898519999999999
	.quad	0x4017f9baa1511e00              # double 5.9938760000000002
	.quad	0x4008de9e1b089a02              # double 3.1086999999999998
	.quad	0x3fff7928e0c9d9d3              # double 1.9670799999999999
	.quad	0x40076d31fcd24e16              # double 2.928318
	.quad	0x401adebc83a96d4c              # double 6.7175159999999998
	.quad	0x4023553dea465a57              # double 9.6664879999999993
	.quad	0x3fea79f01b866e44              # double 0.82738500000000003
	.quad	0x4012054c985f06f7              # double 4.5051750000000004
	.quad	0x40144d1c7de5082d              # double 5.075304
	.quad	0x40221fdd00f776c5              # double 9.0622330000000009
	.quad	0x4009b0caa326e115              # double 3.2113239999999998
	.quad	0x3ff6451761459536              # double 1.3918680000000001
	.quad	0x3fef229845dc8323              # double 0.97297299999999997
	.quad	0x400bfa2f8bdec5f4              # double 3.4971610000000002
	.quad	0x3ff3b090f733a8a4              # double 1.230607
	.quad	0x4002c4a9cdc44391              # double 2.3460269999999999
	.quad	0x401593fc43b2dd37              # double 5.3945169999999996
	.quad	0x40129d551d68c693              # double 4.653645
	.quad	0x401e5f6c69b5a640              # double 7.5931870000000004
	.quad	0x401beb2fa93af74d              # double 6.9796740000000002
	.quad	0x401145e41d4b6a62              # double 4.3182530000000003
	.quad	0x401ab62ae4b01861              # double 6.6778979999999999
	.quad	0x4006c229a5ebb774              # double 2.8448060000000002
	.quad	0x40217b083558a761              # double 8.740297
	.quad	0x4016a7ef5a964e8b              # double 5.6639989999999996
	.quad	0x4007391600f34507              # double 2.9028740000000002
	.quad	0x401a55b9a5a89b95              # double 6.5837159999999999
	.quad	0x4021f1e4d5d80e49              # double 8.9724489999999992
	.quad	0x401825f78359bc34              # double 6.037077
	.quad	0x3fb34f3fd933e35c              # double 0.075427999999999995
	.quad	0x3fe80232096787cf              # double 0.75026800000000005
	.quad	0x40216b9b024f6599              # double 8.7101670000000002
	.quad	0x4020c91b3f20a73f              # double 8.3927859999999992
	.quad	0x40234e2c98e53eb4              # double 9.6526840000000007
	.quad	0x4000f905c0336156              # double 2.1215929999999998
	.quad	0x4001bd206c8711d8              # double 2.2173470000000002
	.quad	0x401f417763e4abe7              # double 7.8139320000000003
	.quad	0x402219b089a02752              # double 9.0501749999999994
	.quad	0x4020faf72b452828              # double 8.4901669999999996
	.quad	0x4007558e219652bd              # double 2.9167749999999999
	.quad	0x4002aaa5c5f7c676              # double 2.3333240000000002
	.quad	0x40208bb1f255f352              # double 8.2728420000000007
	.quad	0x40058e62131a8ef7              # double 2.6945229999999998
	.quad	0x40157f52fc2656ac              # double 5.3743400000000001
	.quad	0x4020406290eed02d              # double 8.1257520000000003
	.quad	0x4021703eea209aaa              # double 8.7192299999999996
	.quad	0x4011ba3e7d135116              # double 4.4318790000000003
	.quad	0x40074dc65c70435f              # double 2.912976
	.quad	0x4015848882f0e0a8              # double 5.3794269999999997
	.quad	0x401d412620253975              # double 7.3136219999999996
	.quad	0x3fdf7f993d5347a6              # double 0.49216300000000002
	.quad	0x401f9fb7a5f41aef              # double 7.9059739999999996
	.quad	0x4012a87a8d64d7f1              # double 4.6645300000000001
	.quad	0x4015ee3150dae3e7              # double 5.4826100000000002
	.quad	0x400a21c92ddbdb5e              # double 3.2664970000000002
	.quad	0x401aff034b0e1b4c              # double 6.7490360000000003
	.quad	0x4001a93faf42784b              # double 2.2076410000000002
	.quad	0x40114014f8b588e3              # double 4.3125799999999996
	.quad	0x3ffedf687b139c95              # double 1.929543
	.quad	0x4021938cb8e086be              # double 8.7881830000000001
	.quad	0x3ff323ed0f627393              # double 1.1962710000000001
	.quad	0x4023e7cc1871e6cd              # double 9.9527289999999997
	.quad	0x402362bb6672fba0              # double 9.6928359999999998
	.quad	0x401c8a76d97b30f9              # double 7.1352190000000002
	.quad	0x402254f4a558ea7d              # double 9.1659290000000002
	.quad	0x400496b65a9a8049              # double 2.5735899999999998
	.quad	0x402276030c23fab1              # double 9.2304919999999999
	.quad	0x4023c68709741d08              # double 9.8877489999999994
	.quad	0x40146e3eaf6837f8              # double 5.1076610000000002
	.quad	0x3ff088adeebb341e              # double 1.033369
	.quad	0x40238a07b352a844              # double 9.7695900000000008
	.quad	0x3ff462d5171e29b7              # double 1.2741290000000001
	.quad	0x401bd588a04d1202              # double 6.9585290000000004
	.quad	0x400b33c46d82ba5a              # double 3.400277
	.quad	0x4020d2a6b0d95140              # double 8.4114280000000008
	.quad	0x4016549e44fa0514              # double 5.5826349999999998
	.quad	0x4020162046c764ae              # double 8.043215
	.quad	0x4023437f38c5436c              # double 9.6318300000000007
	.quad	0x401f552c16df3f96              # double 7.8331759999999999
	.quad	0x401c582b62845996              # double 7.0861029999999996
	.quad	0x40200c3c3a42f1ed              # double 8.0238969999999998
	.quad	0x401e46ee73e681aa              # double 7.5692690000000002
	.quad	0x40194e9c886162f1              # double 6.3267689999999996
	.quad	0x402019c38b04ab60              # double 8.0503199999999993
	.quad	0x4016efae7924af0c              # double 5.734064
	.quad	0x401bcb4c7f349386              # double 6.9485340000000004
	.quad	0x4007e85db76b3bb8              # double 2.9884599999999999
	.quad	0x40159633482be8bc              # double 5.3966799999999999
	.quad	0x40204eebf65dbfcf              # double 8.1541440000000005
	.quad	0x401955d91ab8e8ea              # double 6.3338359999999998
	.quad	0x40124617c1bda512              # double 4.5684500000000003
	.quad	0x400d808aefb2aae3              # double 3.6877650000000002
	.quad	0x4022ae6c6de76428              # double 9.3406710000000003
	.quad	0x400028b5cbff4773              # double 2.0198779999999998
	.quad	0x3fef4d099e0e7360              # double 0.97815399999999996
	.quad	0x402033422467be55              # double 8.1001139999999996
	.quad	0x4005feae5bc87db3              # double 2.7493560000000001
	.quad	0x402142875d56f32c              # double 8.6299390000000002
	.quad	0x4022300713f077cd              # double 9.0938040000000004
	.quad	0x3fea949a5657fb6a              # double 0.83064000000000004
	.quad	0x4010d393682730c6              # double 4.2066169999999996
	.quad	0x4021fa6e115592da              # double 8.9891210000000008
	.quad	0x401370fe47991bc5              # double 4.8603449999999997
	.quad	0x4000e6950fc71d60              # double 2.1125889999999998
	.quad	0x4022b45cdd50a88f              # double 9.352271
	.quad	0x401d029a1b9f98b7              # double 7.2525409999999999
	.quad	0x40018b14ec204f2b              # double 2.1929110000000001
	.quad	0x40071b5525cc4263              # double 2.8883459999999999
	.quad	0x4021cb85c67dfe33              # double 8.8975050000000007
	.quad	0x40214811f4f50a03              # double 8.6407620000000005
	.quad	0x401139068986fcdf              # double 4.3056890000000001
	.quad	0x400e4fa82e87d2c8              # double 3.7888950000000001
	.quad	0x4013c5696e58a32f              # double 4.9427849999999998
	.quad	0x401a89e1f3a57eaa              # double 6.6346509999999999
	.quad	0x40086266fd651b0d              # double 3.0480480000000001
	.quad	0x400c9e57d9dba909              # double 3.5773160000000002
	.quad	0x4016a6822ff08894              # double 5.6626060000000003
	.quad	0x4020395ee136e71d              # double 8.1120520000000003
	.quad	0x40094d72ffd1dcd7              # double 3.162817
	.quad	0x402035f15a4acf31              # double 8.1053569999999997
	.quad	0x3ff3f2f01754b05b              # double 1.2468109999999999
	.quad	0x400d94f9c1f85d74              # double 3.6977419999999999
	.quad	0x400ba759253543af              # double 3.4567130000000001
	.quad	0x40166ea2d2fe3f36              # double 5.6080430000000003
	.quad	0x401553cab81f969e              # double 5.3318279999999998
	.quad	0x4014473ffac1d29e              # double 5.0695800000000002
	.quad	0x40237da836eb4e98              # double 9.7454239999999998
	.quad	0x40215ec5f394b7b3              # double 8.6851040000000008
	.quad	0x401b97e9d94d0dd0              # double 6.8983530000000002
	.quad	0x3ffd97ce52deca25              # double 1.8495619999999999
	.quad	0x4014a4b7f5a5332b              # double 5.1608580000000002
	.quad	0x3fe259018e757929              # double 0.57336500000000001
	.quad	0x401d59a459103c8e              # double 7.3375409999999999
	.quad	0x401334d76ab58080              # double 4.8016030000000001
	.quad	0x401ad9a1b9f98b72              # double 6.7125310000000002
	.quad	0x3ff27ee0b0af5fd4              # double 1.1559759999999999
	.quad	0x4022b321815a07b3              # double 9.3498649999999994
	.quad	0x401df58c8eef1bac              # double 7.4897939999999998
	.quad	0x4020a16fa82e87d3              # double 8.3153050000000004
	.quad	0x400c6d90e23af31b              # double 3.553499
	.quad	0x402031244a6223e2              # double 8.0959800000000008
	.quad	0x4018f4c404a72eae              # double 6.2390290000000004
	.quad	0x402375fd8adab9f5              # double 9.7304499999999993
	.quad	0x4021ef78140dd3fe              # double 8.9677129999999998
	.quad	0x3ff8b7a4e7ab7564              # double 1.544835
	.quad	0x3ff1f1f687b139c9              # double 1.1215729999999999
	.quad	0x40030a0e410b630b              # double 2.3799100000000002
	.quad	0x3fa36b2af145521a              # double 0.037927000000000002
	.quad	0x40125f2becedd484              # double 4.5929409999999997
	.quad	0x40164bb1af3a14cf              # double 5.5739200000000002
	.quad	0x40122fbc5de9c023              # double 4.5466170000000004
	.quad	0x401acdba908a265f              # double 6.7009069999999999
	.quad	0x3ff4682517e77d52              # double 1.2754259999999999
	.quad	0x402027fc115df655              # double 8.0780949999999994
	.quad	0x40146be9856a37ac              # double 5.1053829999999998
	.quad	0x4009f5946c332f01              # double 3.2449119999999998
	.quad	0x4022f3cf91a32b13              # double 9.4761930000000003
	.quad	0x401270b417ca2121              # double 4.6100620000000001
	.quad	0x3fe12bfdb4cc2507              # double 0.53661999999999999
	.quad	0x40087b7e90ff9724              # double 3.0602999999999998
	.quad	0x3fcc45f5ad96a6a0              # double 0.220885
	.quad	0x401eb250f840181e              # double 7.674137
	.quad	0x401f7ba8c586876e              # double 7.8707609999999999
	.quad	0x4006f52d234eb9a1              # double 2.8697149999999998
	.quad	0x40216ee75ff609dd              # double 8.7166090000000001
	.quad	0x4005ae8101f31f47              # double 2.710207
	.quad	0x3fde9e060fe47992              # double 0.47839500000000001
	.quad	0x401341cb46bacf74              # double 4.8142519999999998
	.quad	0x4008a05143bf7271              # double 3.0782799999999999
	.quad	0x4018d5b63d3e4ef0              # double 6.2087029999999999
	.quad	0x4021d8dac258d584              # double 8.9235439999999996
	.quad	0x4018328f190d1740              # double 6.0493740000000003
	.quad	0x401e023810e88590              # double 7.502167
	.quad	0x3ff528869c66d374              # double 1.3223940000000001
	.quad	0x4021a3e0157eed46              # double 8.8200690000000002
	.quad	0x4022aaac322291fb              # double 9.3333449999999996
	.quad	0x401c555219a847b2              # double 7.0833209999999998
	.quad	0x40186cd9a52263d8              # double 6.1062989999999999
	.quad	0x401151f75104d552              # double 4.3300450000000001
	.quad	0x401b037542a23c00              # double 6.7533770000000004
	.quad	0x402217aa8a82a561              # double 9.0462229999999995
	.quad	0x3ff09917939a7c18              # double 1.0373760000000001
	.quad	0x3ffcb0dd82fd75e2              # double 1.79318
	.quad	0x4023bbe681a9b8cc              # double 9.8669930000000007
	.quad	0x3ff9ad01c0ca600b              # double 1.604738
	.quad	0x40202f6188b1140a              # double 8.0925410000000007
	.quad	0x3fe016a26e547171              # double 0.50276299999999996
	.quad	0x40215354195cc858              # double 8.6627510000000001
	.quad	0x3feaf91819d2391d              # double 0.84290699999999996
	.quad	0x401c4a8deb0fadf3              # double 7.0728070000000001
	.quad	0x401b0dff3f0fe048              # double 6.7636690000000002
	.quad	0x3fe9243dccea28fe              # double 0.78567399999999998
	.quad	0x400c62aed1394318              # double 3.5481850000000001
	.quad	0x40148f4cf4a558ea              # double 5.1399419999999996
	.quad	0x3fcee618ce2d1f1d              # double 0.241397
	.quad	0x40112a8f3a9b0681              # double 4.2915619999999999
	.quad	0x40104af1886df82b              # double 4.0731869999999999
	.quad	0x3fdb8958d9b5e95b              # double 0.43025799999999997
	.quad	0x4022052bb23571d2              # double 9.0100990000000003
	.quad	0x3feb8841ede1198b              # double 0.86038300000000001
	.quad	0x400ea82cf52b90a8              # double 3.8321170000000002
	.quad	0x4019ae785b5b7069              # double 6.4203809999999999
	.quad	0x4017005a2d72ffd2              # double 5.7503440000000001
	.quad	0x400f50da5daf07c0              # double 3.914479
	.quad	0x3fd856c508b32ce9              # double 0.38029600000000002
	.quad	0x401abd7a56de3327              # double 6.6850370000000003
	.quad	0x401f9d7342edbb5a              # double 7.9037600000000001
	.quad	0x4020da7a20578e5c              # double 8.4267129999999994
	.quad	0x3ff703b70ef56649              # double 1.438407
	.quad	0x400b19ec7000431c              # double 3.3876580000000001
	.quad	0x401e84d9c6b0531a              # double 7.6297370000000004
	.quad	0x400ced3d859c8c93              # double 3.6158399999999999
	.quad	0x401c363d816aceab              # double 7.052969
	.quad	0x400533affb04ee7c              # double 2.6502379999999999
	.quad	0x40122e54f7a91969              # double 4.5452459999999997
	.quad	0x3ff5a7967caea748              # double 1.353415
	.quad	0x3fefe978d4fdf3b6              # double 0.99724999999999997
	.quad	0x4020dca8198f1d3f              # double 8.4309700000000003
	.quad	0x4002ee9ccb7d4174              # double 2.3665099999999999
	.quad	0x3ff5ab7ed41b75a7              # double 1.3543689999999999
	.quad	0x4000d9420b3d4ae4              # double 2.1060829999999999
	.quad	0x3fb567125dd095af              # double 0.083603999999999998
	.quad	0x401acd3d859c8c93              # double 6.7004299999999999
	.quad	0x3fe107d2c7b890d6              # double 0.53220500000000004
	.quad	0x402275b940fecdd1              # double 9.2299290000000003
	.quad	0x401c537718655193              # double 7.0815089999999996
	.quad	0x3fe18e6f2e8c0486              # double 0.54863700000000004
	.quad	0x4021f1142b302f73              # double 8.9708570000000005
	.quad	0x400808f08461f9f0              # double 3.004365
	.quad	0x4007fafc04c8bc9d              # double 2.9975510000000001
	.quad	0x400e1cb252ce032e              # double 3.7640120000000001
	.quad	0x40205a45d41fa765              # double 8.1763139999999996
	.quad	0x4017f4f3fd933e36              # double 5.9892120000000002
	.quad	0x40199a2595bbbe88              # double 6.4005340000000004
	.quad	0x3fece605ee568a50              # double 0.90307899999999997
	.quad	0x40210b892ee84ad8              # double 8.5225310000000007
	.quad	0x401b5916440f2389              # double 6.8369989999999996
	.quad	0x4013a5ae1cde5d18              # double 4.911797
	.quad	0x40201fbe553ac4f8              # double 8.0619990000000001
	.quad	0x40088f965b20b806              # double 3.0701109999999998
	.quad	0x4022bb2702a3486f              # double 9.3655319999999999
	.quad	0x4005063305100a39              # double 2.6280269999999999
	.quad	0x40206a6dce39b457              # double 8.2078690000000005
	.quad	0x4020eee5471715c6              # double 8.4665929999999996
	.quad	0x3ff666b3fe9fadb0              # double 1.400074
	.quad	0x4000f4b51372a38c              # double 2.1194860000000002
	.quad	0x4018efd60e94ee39              # double 6.2342149999999998
	.quad	0x400277b395c42203              # double 2.3084479999999998
	.quad	0x4021a5d67ba237ce              # double 8.8239020000000004
	.quad	0x401a31f36262cba7              # double 6.5487799999999998
	.quad	0x4001a278d0cc35ce              # double 2.204332
	.quad	0x400e85260f5e41d5              # double 3.8150140000000001
	.quad	0x40239bf8b9baa151              # double 9.8046319999999997
	.quad	0x4023fa7fe4bcad9b              # double 9.9892570000000002
	.quad	0x4023a0ba83f4eca7              # double 9.8139230000000008
	.quad	0x3fee05271bcdbbe0              # double 0.93812899999999999
	.quad	0x401ce5fe111276fb              # double 7.224602
	.quad	0x4003689118c197e5              # double 2.4260579999999998
	.quad	0x3ff631ab0856e697              # double 1.3871260000000001
	.quad	0x400bdb63d3e4ef03              # double 3.4821240000000002
	.quad	0x4018c2d4d4024b34              # double 6.1902650000000001
	.quad	0x4014b9e2bcf91a33              # double 5.1815290000000003
	.quad	0x3fe3115df6555c53              # double 0.59587000000000001
	.quad	0x401b60d9513f8db5              # double 6.8445790000000004
	.quad	0x40077856a37ac3eb              # double 2.9337589999999998
	.quad	0x4013f80a17b0f6ad              # double 4.9922259999999996
	.quad	0x40069456b441bb8c              # double 2.8224309999999999
	.quad	0x4009f376d5497311              # double 3.2438790000000002
	.quad	0x40180357e670e2c1              # double 6.0032649999999999
	.quad	0x401df5bd944aa540              # double 7.4899810000000002
	.quad	0x3fe70813cab81f97              # double 0.71973600000000004
	.quad	0x40001a51a005c465              # double 2.0128509999999999
	.quad	0x401040225742dcf4              # double 4.0626309999999997
	.quad	0x40140a7b4e54f7a9              # double 5.0102359999999999
	.quad	0x40161eec39799e52              # double 5.5301980000000004
	.quad	0x401c8a7eb6bf444e              # double 7.135249
	.quad	0x400ecfc2656abde4              # double 3.851445
	.quad	0x401bbef911cf355d              # double 6.9364970000000001
	.quad	0x3ffa4a46e08f2171              # double 1.6431340000000001
	.quad	0x40160ad7518b0d0f              # double 5.5105870000000001
	.quad	0x400c4754f3775b81              # double 3.5348299999999999
	.quad	0x401076a1e81cb46c              # double 4.1158520000000003
	.quad	0x400a59389b52007e              # double 3.2935650000000001
	.quad	0x401d652e72da1230              # double 7.3488100000000003
	.quad	0x4002abd7f51efb6e              # double 2.3339080000000001
	.quad	0x401e2e3b46fdeb53              # double 7.5451480000000001
	.quad	0x4012a9be8ff327aa              # double 4.6657659999999996
	.quad	0x40223a1294573a79              # double 9.1134229999999992
	.quad	0x3fe3eb441bb8c32b              # double 0.62246900000000005
	.quad	0x40184f23465625a7              # double 6.0772830000000004
	.quad	0x401a677ccc037931              # double 6.6010619999999998
	.quad	0x4015b728e92d55a4              # double 5.4288670000000003
	.quad	0x40099c5692b3cc4b              # double 3.2013370000000001
	.quad	0x401a93059641f645              # double 6.6435760000000004
	.quad	0x401347210be9424e              # double 4.8194619999999997
	.quad	0x4014ef893faf4278              # double 5.2339219999999997
	.quad	0x3fe7a1f2990f301f              # double 0.73851900000000004
	.quad	0x401abe46cfc829d0              # double 6.6858170000000001
	.quad	0x4021cb9a7c17a893              # double 8.8976629999999997
	.quad	0x401a660d0247021d              # double 6.5996589999999999
	.quad	0x4007a68e3ef28416              # double 2.9563259999999998
	.quad	0x40081d912556d19e              # double 3.014437
	.quad	0x401bb5e071c53f3a              # double 6.9276140000000002
	.quad	0x4014aa786c22680a              # double 5.1664750000000002
	.quad	0x4014a1c10d7be985              # double 5.1579629999999996
	.quad	0x40207d6e696a26e5              # double 8.2449829999999995
	.quad	0x4014ff8d2e514c23              # double 5.2495620000000001
	.quad	0x400552a7bd48cb4b              # double 2.665359
	.quad	0x4000e9c886162f16              # double 2.1141519999999998
	.quad	0x4008d7a80cf9e386              # double 3.1053009999999999
	.quad	0x3fc44ece9a2c6690              # double 0.15865499999999999
	.quad	0x3ff01d8a54823854              # double 1.007212
	.quad	0x4020c8b9baa1511e              # double 8.392042
	.quad	0x40238018e757928e              # double 9.7501899999999999
	.quad	0x402059103c8e25c8              # double 8.1739519999999999
	.quad	0x4023f85cee17a030              # double 9.9850840000000005
	.quad	0x40188e18266772d6              # double 6.1387640000000001
	.quad	0x401a7b05faebc409              # double 6.6201400000000001
	.quad	0x400572d01c0ca601              # double 2.6810610000000001
	.quad	0x402240127b2cc708              # double 9.1251409999999993
	.quad	0x40078858793dd97f              # double 2.9415749999999998
	.quad	0x40094ff43419e300              # double 3.16404
	.quad	0x3ffd925bb7b6bb13              # double 1.8482320000000001
	.quad	0x401aa543aeab7996              # double 6.6613910000000001
	.quad	0x400ea08fa7a85016              # double 3.8283990000000001
	.quad	0x4023f82b40f66a55              # double 9.9847049999999999
	.quad	0x402133fd0d0678c0              # double 8.60154
	.quad	0x40131573a797891e              # double 4.7709489999999999
	.quad	0x401fcdee34fc610f              # double 7.9511039999999999
	.quad	0x400502f2f9873ffb              # double 2.6264400000000001
	.quad	0x401713a57eaa2a0b              # double 5.7691860000000004
	.quad	0x4014e98244e93e1d              # double 5.2280360000000003
	.quad	0x401688e53eb399f6              # double 5.6336870000000001
	.quad	0x400e8f3e468cac4b              # double 3.8199429999999999
	.quad	0x40227d99029ae4f3              # double 9.2453079999999996
	.quad	0x401babafd976ff3b              # double 6.9176630000000001
	.quad	0x400165dd095af295              # double 2.1747380000000001
	.quad	0x4010fd04e618ce2d              # double 4.2470889999999999
	.quad	0x401d949ecb31c21a              # double 7.3951370000000001
	.quad	0x4009687229e90796              # double 3.175999
	.quad	0x3fefc83ec892ab69              # double 0.99319400000000002
	.quad	0x4012875ddd2ae8e2              # double 4.6321940000000001
	.quad	0x40054bcbe61cffeb              # double 2.66201
	.quad	0x3fec72606fac6046              # double 0.88896200000000003
	.quad	0x400c119a415f45e1              # double 3.5085950000000001
	.quad	0x402397a54c554328              # double 9.7961829999999991
	.quad	0x40188b4b2fa93af7              # double 6.1360289999999997
	.quad	0x402303519bd4067d              # double 9.506482
	.quad	0x401046512a94ff00              # double 4.0686689999999999
	.quad	0x3fd3dda48b652370              # double 0.31040299999999998
	.quad	0x4020a97d49d7ba67              # double 8.3310340000000007
	.quad	0x40001c3b4f616723              # double 2.0137849999999999
	.quad	0x3fe174c6e6d9be4d              # double 0.54550500000000002
	.quad	0x401571a005c4651f              # double 5.3609619999999998
	.quad	0x401ace3eaf6837f8              # double 6.7014110000000002
	.quad	0x401a1a0ba1f4b1ee              # double 6.5254349999999999
	.quad	0x400a50678c0053e3              # double 3.2892600000000001
	.quad	0x40228c7abfb9bed3              # double 9.2743739999999999
	.quad	0x401298882f0e0a85              # double 4.6489570000000002
	.quad	0x4021de2e09fe8683              # double 8.9339449999999996
	.quad	0x40008f1a9fbe76c9              # double 2.0698750000000001
	.quad	0x401d879ee02a77a3              # double 7.3824420000000002
	.quad	0x4020e836a832b991              # double 8.4535420000000006
	.quad	0x4020ebc254a3c643              # double 8.4604669999999995
	.quad	0x40114d4d834091c1              # double 4.3254910000000004
	.quad	0x3ff0aa51e321a2e8              # double 1.041582
	.quad	0x40086bab649d388b              # double 3.0525730000000002
	.quad	0x401ee70867ad8e43              # double 7.7256179999999998
	.quad	0x401e19de481f5382              # double 7.5252619999999997
	.quad	0x3ffa2596c82e019b              # double 1.634177
	.quad	0x401ba43e5321e604              # double 6.9103940000000001
	.quad	0x4021892f901083dc              # double 8.7679410000000004
	.quad	0x4000a48d7e02645e              # double 2.0803479999999999
	.quad	0x40170d76ab5807ff              # double 5.7631480000000002
	.quad	0x401d2f06f6944674              # double 7.2959250000000004
	.quad	0x4023bd06bbdbe3c1              # double 9.8691919999999999
	.quad	0x3fff83ce2089e343              # double 1.969679
	.quad	0x3ff65220ff540896              # double 1.395051
	.quad	0x40111e1b089a0275              # double 4.2793999999999999
	.quad	0x4023a83d145d8516              # double 9.8285909999999994
	.quad	0x3fedc33721d53cde              # double 0.93008000000000002
	.quad	0x3fd6a43bb40b34e7              # double 0.35377399999999998
	.quad	0x3fd25e4a38327675              # double 0.28700500000000001
	.quad	0x3ff8346aa087ca64              # double 1.5127969999999999
	.quad	0x40134c2a454de7ea              # double 4.8243799999999997
	.quad	0x402335cb9a9da598              # double 9.6050690000000003
	.quad	0x401e442cc2d6a9c5              # double 7.5665769999999996
	.quad	0x401aa786c226809d              # double 6.6635999999999997
	.quad	0x401e5255b035bd51              # double 7.5804049999999998
	.quad	0x40199788db0574b4              # double 6.397983
	.quad	0x4006d242070b8cfc              # double 2.852665
	.quad	0x401ed685985ad539              # double 7.7094940000000002
	.quad	0x40224e0a63305101              # double 9.1524230000000006
	.quad	0x4022fd5ffe6d58c9              # double 9.4948730000000001
	.quad	0x402374f440af1cb9              # double 9.7284260000000006
	.quad	0x3ff1f00abf76a2f5              # double 1.1211040000000001
	.quad	0x400f72d2bb23571d              # double 3.9310659999999999
	.quad	0x3ff154306e5cd4ed              # double 1.083054
	.quad	0x4021ecf6598e10cf              # double 8.9628169999999994
	.quad	0x40182422036006d1              # double 6.0352860000000002
	.quad	0x4022468ec52a411c              # double 9.1378079999999997
	.quad	0x4013088f861a60d4              # double 4.7583599999999997
	.quad	0x402179fa333764f1              # double 8.7382369999999998
	.quad	0x4002967f4dbdf8f4              # double 2.3234849999999998
	.quad	0x4013e0f301eabbcb              # double 4.9696769999999999
	.quad	0x40145f52fc2656ac              # double 5.0930900000000001
	.quad	0x400f4c575c0767d3              # double 3.9122759999999999
	.quad	0x402264b2fa93af75              # double 9.1966780000000004
	.quad	0x40220623f24d8fd6              # double 9.0119930000000004
	.quad	0x3fbbb9ae0c176577              # double 0.108302
	.quad	0x402113dba0a52696              # double 8.5387850000000007
	.quad	0x400873aa369fcf3e              # double 3.0564770000000001
	.quad	0x3fff1040bfe3b03e              # double 1.941468
	.quad	0x401baa5e785b5b70              # double 6.9163759999999996
	.quad	0x400f7146e4c0df59              # double 3.9303110000000001
	.quad	0x4010b798958d9b5f              # double 4.1792930000000004
	.quad	0x4009a5b317efe0ce              # double 3.205908
	.quad	0x3ff220e1f7d73c92              # double 1.1330279999999999
	.quad	0x4018eead9274e22a              # double 6.2330839999999998
	.quad	0x4018fa19439de482              # double 6.244237
	.quad	0x3fd249949e8815e4              # double 0.28574100000000002
	.quad	0x400580d66f0cfe15              # double 2.6879089999999999
	.quad	0x3fe932a497fa5d29              # double 0.78743200000000002
	.quad	0x401ea9d55e6bc622              # double 7.6658530000000003
	.quad	0x401072b6f19934f0              # double 4.1120260000000002
	.quad	0x3fedd6bca5375c8e              # double 0.93246300000000004
	.quad	0x40206b2ca57a786c              # double 8.2093249999999997
	.quad	0x40230533f42352eb              # double 9.5101619999999993
	.quad	0x40162dba4d6e47dc              # double 5.5446559999999998
	.quad	0x4013d172abef06b3              # double 4.9545389999999996
	.quad	0x40100310129cbab6              # double 4.0029909999999997
	.quad	0x401f4e87d2c7b891              # double 7.8266900000000001
	.quad	0x4020110ba6266fd6              # double 8.0332919999999994
	.quad	0x4010ec77574f722e              # double 4.2309239999999999
	.quad	0x400d9d041cc532a5              # double 3.7016680000000002
	.quad	0x4010579420b3d4ae              # double 4.0855259999999998
	.quad	0x4017013f8db48909              # double 5.7512189999999999
	.quad	0x401e0929ed3953df              # double 7.5089490000000003
	.quad	0x3ffb58eb8950763a              # double 1.709209
	.quad	0x3feec25072085b18              # double 0.96121999999999996
	.quad	0x4023ec4eb56fb8f5              # double 9.9615379999999991
	.quad	0x400f422ff08893b8              # double 3.9073180000000001
	.quad	0x3ff479b23dd54da5              # double 1.279711
	.quad	0x3ffd285db76b3bb8              # double 1.8223549999999999
	.quad	0x40111de5082cf52c              # double 4.2791940000000004
	.quad	0x3ff6cd594f26aec0              # double 1.4251339999999999
	.quad	0x4001e7253da72a7c              # double 2.2378640000000001
	.quad	0x401465d894812be5              # double 5.0994590000000004
	.quad	0x4014f5c853c14834              # double 5.2400219999999997
	.quad	0x4011bfb6134ce3de              # double 4.4372179999999997
	.quad	0x4000f46b26bf876a              # double 2.119345
	.quad	0x3fede82517e77d52              # double 0.93458799999999997
	.quad	0x3fe6f1971c10d7bf              # double 0.71699100000000004
	.quad	0x402229c17225b74a              # double 9.0815540000000006
	.quad	0x40209719d66adb40              # double 8.2951189999999997
	.quad	0x4019f2fec56d5cfb              # double 6.4873000000000003
	.quad	0x400eb4adbc664d3c              # double 3.838222
	.quad	0x3fadd56f32bdc26e              # double 0.058269000000000001
	.quad	0x4018719d2391d580              # double 6.110951
	.quad	0x401c0564302b40f6              # double 7.0052649999999996
	.quad	0x40066fd21ff2e48f              # double 2.8046000000000002
	.quad	0x4013962c343b70ef              # double 4.8966529999999997
	.quad	0x3fd8224aada33bda              # double 0.37709300000000001
	.quad	0x4012c148fd9fd36f              # double 4.6887549999999996
	.quad	0x4002211f4f50a02c              # double 2.2661730000000002
	.quad	0x401a85c52e72da12              # double 6.6306349999999998
	.quad	0x401100e453d20f2c              # double 4.2508710000000001
	.quad	0x3fe9d604189374bc              # double 0.80737499999999995
	.quad	0x402293163baba7b9              # double 9.2872789999999998
	.quad	0x3ff54e8427418d69              # double 1.331669
	.quad	0x40119abffcdab192              # double 4.4011230000000001
	.quad	0x40236e51b0ccbc06              # double 9.7154670000000003
	.quad	0x4021acb252ce032e              # double 8.8372980000000005
	.quad	0x40142b9f559b3d08              # double 5.0426000000000002
	.quad	0x401423cddd6e04c0              # double 5.0349649999999997
	.quad	0x400765efe9318762              # double 2.9247740000000002
	.quad	0x3ff9c947064ece9a              # double 1.61164
	.quad	0x402071cde5d18091              # double 8.2222740000000005
	.quad	0x3ff69758e219652c              # double 1.41195
	.quad	0x4012cd3e0bd44999              # double 4.7004320000000002
	.quad	0x400e99f2ba9d1f60              # double 3.82517
	.quad	0x4007a5a708ede54b              # double 2.9558849999999999
	.quad	0x4007f577963992c9              # double 2.9948570000000001
	.quad	0x400fd0196d8f4f94              # double 3.9766110000000001
	.quad	0x402183b8e4b87bdd              # double 8.7572700000000001
	.quad	0x40142502ababead5              # double 5.036143
	.quad	0x4022794bbe4473cd              # double 9.2369059999999994
	.quad	0x400b43e74afd5454              # double 3.408156
	.quad	0x3ff4bbeb9e492bc3              # double 1.295879
	.quad	0x3ff99fbd6a593a2e              # double 1.601499
	.quad	0x4016b7000431bde8              # double 5.6787109999999998
	.quad	0x401d0e20ccff21b4              # double 7.2637970000000003
	.quad	0x4013945bf26f1dc5              # double 4.894882
	.quad	0x3fd244aa53fc0097              # double 0.285441
	.quad	0x401d3f1dc50ce4eb              # double 7.3116370000000002
	.quad	0x40170fda4052d667              # double 5.7654810000000003
	.quad	0x402133358f2e05cd              # double 8.6000180000000004
	.quad	0x401085f9df548ece              # double 4.1308360000000004
	.quad	0x401c606c8711d799              # double 7.0941640000000001
	.quad	0x400aaf41f212d773              # double 3.335575
	.quad	0x3fa90795f676ea42              # double 0.048885999999999999
	.quad	0x401003fcc9ea9a3d              # double 4.0038939999999998
	.quad	0x4020bb5fe542e558              # double 8.3659660000000002
	.quad	0x3fd8cc9a77e5eaab              # double 0.387488
	.quad	0x401fa2fad6cb5350              # double 7.90916
	.quad	0x40236d42a23bff8b              # double 9.7133990000000007
	.quad	0x3fe709070fbeb9e5              # double 0.71985200000000005
	.quad	0x4011456e696a26e5              # double 4.3178039999999998
	.quad	0x400d03c968943e10              # double 3.626849
	.quad	0x401f7615ebfa8f7e              # double 7.8653180000000003
	.quad	0x400d938ef34d6a16              # double 3.6970499999999999
	.quad	0x40233e67f90d9d77              # double 9.6218869999999991
	.quad	0x3ff713868fd199bb              # double 1.442267
	.quad	0x401f117225b749ae              # double 7.7670370000000002
	.quad	0x4020628c79f66623              # double 8.1924779999999995
	.quad	0x4023d6d84d338f7a              # double 9.9196190000000009
	.quad	0x4012a58ea7ce0fc3              # double 4.6616770000000001
	.quad	0x4019612599ed7c70              # double 6.3448700000000002
	.quad	0x3ff43b107746887b              # double 1.2644200000000001
	.quad	0x4020f42ca148ba84              # double 8.476903
	.quad	0x401ad85b18548a9c              # double 6.7112850000000002
	.quad	0x4008452deca2552a              # double 3.033779
	.quad	0x401c6da6e75ff60a              # double 7.1070820000000001
	.quad	0x401a1b7bf1e8e608              # double 6.52684
	.quad	0x3ff95973d9ec7000              # double 1.5843389999999999
	.quad	0x4004ee18266772d6              # double 2.6162570000000001
	.quad	0x401e3d4024b33db0              # double 7.5598150000000004
	.quad	0x401f66102795703f              # double 7.8496709999999998
	.quad	0x401a241a261bf37c              # double 6.5352560000000004
	.quad	0x40225564302b40f6              # double 9.1667799999999993
	.quad	0x40120728e92d55a4              # double 4.5069920000000003
	.quad	0x4000a3065f9591cd              # double 2.079602
	.quad	0x4000f7c5ef62f9ca              # double 2.1209829999999998
	.quad	0x400e24662bae03b4              # double 3.767773
	.quad	0x40222c23d9231c65              # double 9.0862110000000005
	.quad	0x401cd0b0af5fd47c              # double 7.2037990000000001
	.quad	0x400cf01322f27350              # double 3.6172240000000002
	.quad	0x3fe7b21e603d5779              # double 0.74049299999999996
	.quad	0x4018f347e8ccdd94              # double 6.2375790000000002
	.quad	0x3ffe67c7c5260f5e              # double 1.9003369999999999
	.quad	0x3ff5e9ea14057082              # double 1.3696079999999999
	.quad	0x3fff62ed352220bc              # double 1.961652
	.quad	0x3fff78dc55000c95              # double 1.9670069999999999
	.quad	0x401942f901083dbc              # double 6.3154029999999999
	.quad	0x401e155000c9539c              # double 7.5208130000000004
	.quad	0x400be4ca4f440af2              # double 3.4867140000000001
	.quad	0x400367e5a78f25a2              # double 2.4257309999999999
	.quad	0x400769917939a7c1              # double 2.9265469999999998
	.quad	0x3ffbde3eaf6837f8              # double 1.7417590000000001
	.quad	0x40200926c7eae5bd              # double 8.0178740000000008
	.quad	0x4012fd230b9dc2f4              # double 4.747204
	.quad	0x4022170ae536501e              # double 9.0450049999999997
	.quad	0x4016291c4b90214b              # double 5.5401470000000002
	.quad	0x4021b74f0d844d01              # double 8.8580249999999996
	.quad	0x400cd51ce28ed5f1              # double 3.6040589999999999
	.quad	0x4014d4f8726d04e6              # double 5.2079789999999999
	.quad	0x401a33ade225fa66              # double 6.5504680000000004
	.quad	0x3ffbecc3e3193f6c              # double 1.745304
	.quad	0x4004e820e6299525              # double 2.6133440000000001
	.quad	0x401be67c286f8ad2              # double 6.9750829999999997
	.quad	0x401bf1c79b34a44c              # double 6.9861129999999996
	.quad	0x3ff63c69728a6117              # double 1.3897489999999999
	.quad	0x40137f5cf2495e18              # double 4.8743780000000001
	.quad	0x400965bb7b6bb129              # double 3.174674
	.quad	0x4013611c6d1e108c              # double 4.8448349999999998
	.quad	0x401e31ed9dfdac69              # double 7.5487580000000003
	.quad	0x4015d6aec0724b77              # double 5.459651
	.quad	0x40035540895d0b74              # double 2.4166270000000001
	.quad	0x3ff3dc432ca57a78              # double 1.2412749999999999
	.quad	0x402039884c6a3bde              # double 8.112368
	.quad	0x3ff39413122b7baf              # double 1.223651
	.quad	0x4010a62aa19439de              # double 4.1622719999999997
	.quad	0x4022fed6dc1a47aa              # double 9.4977330000000002
	.quad	0x3ffb004534bd76ee              # double 1.6875659999999999
	.quad	0x4023a463ae2541d9              # double 9.8210730000000001
	.quad	0x40226ee73e681a9c              # double 9.2166080000000007
	.quad	0x400d96a50d6b228e              # double 3.6985570000000001
	.quad	0x40214d12a94ff002              # double 8.6505329999999994
	.quad	0x401fcbcf91a32b13              # double 7.9490340000000001
	.quad	0x401cb6c226809d49              # double 7.1784749999999997
	.quad	0x4017d46cb966be7b              # double 5.957446
	.quad	0x3fd386b9c304ccee              # double 0.30509799999999998
	.quad	0x3ffae338b47c73ef              # double 1.680474
	.quad	0x3ff4fc2656abde40              # double 1.3115600000000001
	.quad	0x401180ff97247454              # double 4.3759750000000004
	.quad	0x4010628027d88c1e              # double 4.0961920000000003
	.quad	0x4019b7dcbddb9842              # double 6.4295530000000003
	.quad	0x3ffda73f748a1598              # double 1.853332
	.quad	0x4019ff47735c182f              # double 6.4992960000000002
	.quad	0x3ff5374cd31769a9              # double 1.326001
	.quad	0x401ad4ca0c282c6f              # double 6.707802
	.quad	0x40220869835158b8              # double 9.0164299999999997
	.quad	0x402116145953586d              # double 8.5431240000000006
	.quad	0x3ffe4806290eed03              # double 1.892584
	.quad	0x401ac7dfa00e27e1              # double 6.6951890000000001
	.quad	0x40116da3c21187e8              # double 4.3570700000000002
	.quad	0x3ff28a17b0f6ad71              # double 1.158714
	.quad	0x3fdc73797460242d              # double 0.444548
	.quad	0x3fd018fc504816f0              # double 0.251525
	.quad	0x400e7de5082cf52c              # double 3.8114720000000002
	.quad	0x3ffcdb4edb2f661f              # double 1.803542
	.quad	0x3fff395d4e8fb00c              # double 1.951505
	.quad	0x40202ec39799e519              # double 8.0913360000000001
	.quad	0x4013aa6c1a048e04              # double 4.9164279999999998
	.quad	0x401a53422467be55              # double 6.5813069999999998
	.quad	0x4021e1014b599aa6              # double 8.9394629999999999
	.quad	0x40212b2db1e9f278              # double 8.5843330000000009
	.quad	0x401d2bd5992428d4              # double 7.2928069999999998
	.quad	0x4019e79aae6c8f75              # double 6.4761759999999997
	.quad	0x402007785729b281              # double 8.0145900000000001
	.quad	0x402225b8348f53c5              # double 9.0736709999999992
	.quad	0x3ff4f7e80389f83c              # double 1.310524
	.quad	0x40181e0c5a8155d6              # double 6.029344
	.quad	0x4023c29de8b3b320              # double 9.8801109999999994
	.quad	0x3fb277a2cecc814d              # double 0.072137999999999994
	.quad	0x401876a0dbad3a60              # double 6.1158479999999997
	.quad	0x3ffcc476f2a5a46a              # double 1.797965
	.quad	0x4018bac471b47842              # double 6.1823899999999998
	.quad	0x40099d3c36113405              # double 3.201775
	.quad	0x401374a7f8012dfd              # double 4.8639219999999996
	.quad	0x3ff975147f130596              # double 1.5910839999999999
	.quad	0x4016ad7e889c1b54              # double 5.6694279999999999
	.quad	0x4013bfc47e49b1fb              # double 4.9372730000000002
	.quad	0x40095a93af74cd31              # double 3.1692269999999998
	.quad	0x401f05308bb90646              # double 7.7550679999999996
	.quad	0x401823126e978d50              # double 6.0342500000000001
	.quad	0x4020b4868b9fdbd3              # double 8.352589
	.quad	0x4003c1ff2e48e8a7              # double 2.4697249999999999
	.quad	0x3fd301c0ca600b03              # double 0.29698200000000002
	.quad	0x4023b23aafff36ac              # double 9.8481039999999993
	.quad	0x401ec865d7cb2d90              # double 7.6957009999999997
	.quad	0x3ff5c7b352a84381              # double 1.3612550000000001
	.quad	0x401bfcaa326e1156              # double 6.9967430000000004
	.quad	0x400cb29d40ee06d9              # double 3.5872139999999999
	.quad	0x40169ea24cc68230              # double 5.6549160000000001
	.quad	0x400e14c4cdfaca36              # double 3.760141
	.quad	0x3ffc96c2efd438d2              # double 1.786807
	.quad	0x400cc73797460243              # double 3.5972740000000001
	.quad	0x400b73ed527e5215              # double 3.4316049999999998
	.quad	0x401d1165907d9125              # double 7.2669889999999997
	.quad	0x401084755ffe6d59              # double 4.1293540000000002
	.quad	0x4020618201cd5f9a              # double 8.1904450000000004
	.quad	0x40113a87e38eb032              # double 4.3071590000000004
	.quad	0x4020c071e6cd2913              # double 8.3758689999999998
	.quad	0x4023e5d80e496edf              # double 9.9489140000000002
	.quad	0x4017145e9185cee1              # double 5.7698919999999996
	.quad	0x3feae162f166e009              # double 0.84001300000000001
	.quad	0x3fd93fbbd7b2031d              # double 0.394515
	.quad	0x401684d4cb9ecf64              # double 5.6297180000000004
	.quad	0x4022feba8c586877              # double 9.4975170000000002
	.quad	0x401f243d03968d76              # double 7.7853890000000003
	.quad	0x40238fff583a53b9              # double 9.7812450000000001
	.quad	0x4000625a682b6284              # double 2.0480239999999998
	.quad	0x400558327674d163              # double 2.6680649999999999
	.quad	0x40109266fd651b0d              # double 4.1429710000000002
	.quad	0x40183213a0c6b485              # double 6.0489030000000001
	.quad	0x3fd3d0bb6ed67770              # double 0.30961499999999997
	.quad	0x4004e9320d9945b7              # double 2.6138650000000001
	.quad	0x40094e6ea8544780              # double 3.163297
	.quad	0x402187b8f57f737e              # double 8.7650830000000006
	.quad	0x4002baf294dd7236              # double 2.3412829999999998
	.quad	0x3ff1118a009f6230              # double 1.0667819999999999
	.quad	0x3fdfdf43c7d5ed07              # double 0.498002
	.quad	0x4020b4c1871e6cd3              # double 8.3530390000000008
	.quad	0x4000e80c73abc947              # double 2.113305
	.quad	0x4014a0a244630660              # double 5.1568690000000004
	.quad	0x3ff2963779e9d0ea              # double 1.1616740000000001
	.quad	0x401109d6f112fd33              # double 4.2596090000000002
	.quad	0x4008f24e160d887f              # double 3.1183130000000001
	.quad	0x401f725edd052935              # double 7.8616900000000002
	.quad	0x3ffb43e20ccff21b              # double 1.7040729999999999
	.quad	0x3fea56e696a26e54              # double 0.82310799999999995
	.quad	0x3fc735daad601ffb              # double 0.18133099999999999
	.quad	0x401cc4877681669d              # double 7.1919230000000001
	.quad	0x4022db4a01abd1ab              # double 9.4282990000000008
	.quad	0x402076785b5b7069              # double 8.2313869999999998
	.quad	0x401b13ad18d25edd              # double 6.769215
	.quad	0x40204c55eaee2004              # double 8.1490930000000005
	.quad	0x40137a85caafbc1b              # double 4.8696510000000002
	.quad	0x4010b7008a697aee              # double 4.1787130000000001
	.quad	0x3fd9f7be121ee675              # double 0.405746
	.quad	0x3fe886a2b1704ff4              # double 0.76643499999999997
	.quad	0x4015f4f11b60ae97              # double 5.4892010000000004
	.quad	0x4020268d759ee88e              # double 8.0752980000000001
	.quad	0x40227820817fc760              # double 9.2346229999999991
	.quad	0x40072c2bd7f51efb              # double 2.8965679999999998
	.quad	0x4013f5dfeb8d8234              # double 4.9901119999999999
	.quad	0x40010d2cbea4ebdd              # double 2.1314329999999999
	.quad	0x4023543b0c4588a0              # double 9.6645129999999995
	.quad	0x3ffe7823c85c24c4              # double 1.904331
	.quad	0x401ee77ab324851b              # double 7.7260540000000004
	.quad	0x3fe1fc4199fe4367              # double 0.56204299999999996
	.quad	0x40229c4523f67f4e              # double 9.3052150000000005
	.quad	0x4008956c93a71151              # double 3.0729609999999998
	.quad	0x401ef07d0aed99cc              # double 7.7348520000000001
	.quad	0x4001da7c17a89332              # double 2.2316820000000002
	.quad	0x40154bba55d1c3ad              # double 5.3239530000000004
	.quad	0x40126971c10d7bea              # double 4.6029730000000004
	.quad	0x4019ec03361565c3              # double 6.4804810000000002
	.quad	0x3fd8ee136e71cda3              # double 0.38953100000000002
	.quad	0x40105e757928e0ca              # double 4.0922450000000001
	.quad	0x3ffceb9b23dd54da              # double 1.8075209999999999
	.quad	0x4023d9f90539fba4              # double 9.9257279999999994
	.quad	0x4020e0051c9f72f7              # double 8.4375389999999992
	.quad	0x3ff703b81b64e054              # double 1.4384079999999999
	.quad	0x402094b2745bf26f              # double 8.2904239999999998
	.quad	0x4014869595feda66              # double 5.1314299999999999
	.quad	0x3fce342aa9f7b5af              # double 0.23596700000000001
	.quad	0x401340e496ededaf              # double 4.8133720000000002
	.quad	0x3fe6c76d117b5287              # double 0.71184400000000003
	.quad	0x40209862d40aaeb0              # double 8.2976290000000006
	.quad	0x401bc85dfa871a3b              # double 6.9456709999999999
	.quad	0x4011a2b4528283d3              # double 4.4088909999999997
	.quad	0x40080773e24febd1              # double 3.0036390000000002
	.quad	0x4014637c5692b3cc              # double 5.0971539999999997
	.quad	0x40062513b5bf6a0e              # double 2.7681040000000001
	.quad	0x4014b1d19157abb9              # double 5.1736510000000004
	.quad	0x3fe32294141e9af6              # double 0.59797100000000003
	.quad	0x4014c0b417ca2121              # double 5.1881870000000001
	.quad	0x4022f15ca6ca03c5              # double 9.4714100000000005
	.quad	0x400faff21b3aeee9              # double 3.9609109999999998
	.quad	0x4021fb17efe0ce0c              # double 8.9904170000000007
	.quad	0x4009a86f8ad2567a              # double 3.2072440000000002
	.quad	0x401d209d0635a427              # double 7.2818490000000002
	.quad	0x3ffbaccb3a2595bc              # double 1.7296860000000001
	.quad	0x400762e1ac57e23f              # double 2.9232819999999999
	.quad	0x40206057082491b0              # double 8.1881640000000004
	.quad	0x40112388ebcc6c55              # double 4.2847020000000002
	.quad	0x40002fff36ac6477              # double 2.0234359999999998
	.quad	0x402274cfd08d4bad              # double 9.2281479999999991
	.quad	0x401673c6c97d8cf4              # double 5.6130630000000004
	.quad	0x401f2161a1db877b              # double 7.7825990000000002
	.quad	0x400d84a16a487336              # double 3.6897609999999998
	.quad	0x401b5a8c586876e2              # double 6.8384260000000001
	.quad	0x4013af22c01e68a1              # double 4.9210310000000002
	.quad	0x400c8b502ababead              # double 3.5680239999999999
	.quad	0x4016c7dbb16c1e36              # double 5.6951739999999997
	.quad	0x400d20fecdd0d8cb              # double 3.641111
	.quad	0x4022dfd651b0ccbc              # double 9.4371819999999999
	.quad	0x401eb68837718655              # double 7.6782539999999999
	.quad	0x40169c9a34ca0c28              # double 5.6529319999999998
	.quad	0x4020569df97aaac1              # double 8.1691739999999999
	.quad	0x4016e0a2ca9ac365              # double 5.7193709999999998
	.quad	0x3ffd960d887ebf23              # double 1.8491340000000001
	.quad	0x4013ba9435ac8a37              # double 4.9322059999999999
	.quad	0x40213b1422ccb3a2              # double 8.6153879999999994
	.quad	0x401645011904b3c4              # double 5.5673870000000001
	.quad	0x3ffb3c5bd0e12e84              # double 1.7022360000000001
	.quad	0x400b04ea4a8c154d              # double 3.3774000000000002
	.quad	0x401ae753a3ec02f3              # double 6.725905
	.quad	0x3f9ef459d99029ae              # double 0.030228999999999999
	.quad	0x4003177531db445f              # double 2.3864540000000001
	.quad	0x4021b31d0c804103              # double 8.849831
	.quad	0x4011554c985f06f7              # double 4.3333000000000004
	.quad	0x4002124d8fd5cb79              # double 2.258937
	.quad	0x3ffd51c193b3a68b              # double 1.83246
	.quad	0x400ca45803cd141a              # double 3.5802459999999998
	.quad	0x4023b5a4484944ed              # double 9.8547689999999992
	.quad	0x40192aca79357604              # double 6.2917880000000004
	.quad	0x401bf9392189bd84              # double 6.9933820000000004
	.quad	0x401831711947cfa2              # double 6.0482829999999996
	.quad	0x40123f35e310dbf0              # double 4.5617289999999997
	.quad	0x4021456e696a26e5              # double 8.6356079999999995
	.quad	0x40215693c03bc4d2              # double 8.6690959999999997
	.quad	0x401254b2b777d0f2              # double 4.582713
	.quad	0x40079fad2999567e              # double 2.9529670000000001
	.quad	0x401f38f92af9a8ce              # double 7.8056380000000001
	.quad	0x4020aafd32c625ea              # double 8.3339630000000007
	.quad	0x40129864020817fc              # double 4.6488189999999996
	.quad	0x4021aacb641700ce              # double 8.8335830000000009
	.quad	0x401651212513b5bf              # double 5.5792279999999996
	.quad	0x40211aad601ffb48              # double 8.5521039999999999
	.quad	0x4023b05143bf7271              # double 9.8443699999999996
	.quad	0x4021c2cb4289118c              # double 8.8804569999999998
	.quad	0x3ff1482be8bc169c              # double 1.08012
	.quad	0x3fd98b3f63c31df7              # double 0.39912399999999998
	.quad	0x40168782d38476f3              # double 5.6323350000000003
	.quad	0x401737542a23bff9              # double 5.8040320000000003
	.quad	0x400077f62b6ae7d5              # double 2.0585749999999998
	.quad	0x40161dc8b86b15f9              # double 5.5290860000000004
	.quad	0x40218a0c282c6ef4              # double 8.7696240000000003
	.quad	0x401b8c17a89331a1              # double 6.8868090000000004
	.quad	0x4023da326e115593              # double 9.9261660000000002
	.quad	0x401605cd0bb6ed67              # double 5.5056649999999996
	.quad	0x40223fb80a9de8b4              # double 9.1244510000000005
	.quad	0x40220b3b10774688              # double 9.0219349999999991
	.quad	0x4023446c764adff8              # double 9.6336399999999997
	.quad	0x40067df2239e6aba              # double 2.8114970000000001
	.quad	0x402075d1c3ac929b              # double 8.2301160000000007
	.quad	0x400f1877ab324852              # double 3.8869470000000002
	.quad	0x402380e29f9ce8d9              # double 9.7517289999999992
	.quad	0x402321d883ba3444              # double 9.5661050000000003
	.quad	0x401c625072085b18              # double 7.0960099999999997
	.quad	0x40203d4152b0a6fc              # double 8.1196389999999993
	.quad	0x4022d057afea3df7              # double 9.4069190000000002
	.quad	0x40231dc3bd599243              # double 9.5581340000000007
	.quad	0x40164e06d938151a              # double 5.5761979999999998
	.quad	0x4023db2b12d3415b              # double 9.9280629999999998
	.quad	0x40205d5d3dc8b86b              # double 8.1823519999999998
	.quad	0x402380433d6c7219              # double 9.7505129999999997
	.quad	0x400379c842fa5094              # double 2.4344640000000002
	.quad	0x402336c093d96638              # double 9.6069379999999995
	.quad	0x40048eb1c432ca58              # double 2.5696750000000002
	.quad	0x4007f723ee1bd1ee              # double 2.9956740000000002
	.quad	0x400a8093d9663843              # double 3.3127819999999999
	.quad	0x400ffeeed8904f6e              # double 3.999479
	.quad	0x40202defc7a39820              # double 8.0897199999999998
	.quad	0x3ffbd640e9d51b50              # double 1.739808
	.quad	0x400e7a858793dd98              # double 3.809825
	.quad	0x400012ce032db1ea              # double 2.009182
	.quad	0x4020907b56b87379              # double 8.2821909999999992
	.quad	0x40017126e978d4fe              # double 2.18025
	.quad	0x4019cd00b45ae600              # double 6.4501980000000003
	.quad	0x402377ea5f84cad5              # double 9.7342099999999991
	.quad	0x40059b6f5caf2d80              # double 2.7008960000000002
	.quad	0x402065ca4b124d0a              # double 8.1988090000000007
	.quad	0x3fe8444e0daa0cae              # double 0.75833799999999996
	.quad	0x401eee4f765fd8ae              # double 7.7327250000000003
	.quad	0x4006d8c08b75ea68              # double 2.855836
	.quad	0x3ffa0bec679cc74c              # double 1.6279110000000001
	.quad	0x3ff4875f6fd21ff3              # double 1.28305
	.quad	0x401aeb966be7afa7              # double 6.7300659999999999
	.quad	0x4011d3c81908e582              # double 4.4568180000000002
	.quad	0x401db867ad8e4324              # double 7.4300829999999998
	.quad	0x4022ea2af5771002              # double 9.4573590000000003
	.quad	0x4017f10385c67dfe              # double 5.9853649999999998
	.quad	0x4023310795f676ea              # double 9.5957609999999995
	.quad	0x3ffc0302b40f66a5              # double 1.7507349999999999
	.quad	0x40190dfaca361998              # double 6.2636520000000004
	.quad	0x401ea3a08398a655              # double 7.6597920000000003
	.quad	0x3ff2ce0daa0cae64              # double 1.175306
	.quad	0x4013430b5aa71583              # double 4.8154729999999999
	.quad	0x40193b1feeb2d0a2              # double 6.3077389999999998
	.quad	0x40158c964628027e              # double 5.3872920000000004
	.quad	0x400756aad1d041cc              # double 2.9173179999999999
	.quad	0x40193e5bc87db2b3              # double 6.3108969999999998
	.quad	0x401c542b302f72b4              # double 7.0821959999999997
	.quad	0x4021f4471b478423              # double 8.9771049999999999
	.quad	0x401a5a1b1960fa16              # double 6.5879940000000001
	.quad	0x401dedf3300de4c5              # double 7.4823729999999999
	.quad	0x4014cbe1a8262457              # double 5.199103
	.quad	0x40042467381d7dbf              # double 2.5177749999999999
	.quad	0x402277952d234eba              # double 9.2335600000000007
	.quad	0x3ff5daf3a14cec42              # double 1.365955
	.quad	0x3fd0810e8858ff76              # double 0.25787700000000002
	.quad	0x4011117763e4abe7              # double 4.2670570000000003
	.quad	0x3fe8de41d4b6a61a              # double 0.77713100000000002
	.quad	0x400bf4d1e96c3fc4              # double 3.4945409999999999
	.quad	0x401357daa4fca42b              # double 4.8357950000000001
	.quad	0x401552ef911cf356              # double 5.3309920000000002
	.quad	0x400185a469d7342f              # double 2.1902550000000001
	.quad	0x401ea0d6f544bb1b              # double 7.65707
	.quad	0x401fe886594af4f1              # double 7.9770750000000001
	.quad	0x401c02acfb762d84              # double 7.0026130000000002
	.quad	0x4020d230121682f9              # double 8.4105229999999995
	.quad	0x400e583cf2cf95d5              # double 3.793085
	.quad	0x3feb1552e2fbe33b              # double 0.84635300000000002
	.quad	0x4018c4df47f993d5              # double 6.1922579999999998
	.quad	0x3fd847d3d4280ae1              # double 0.379384
	.quad	0x3ff0df59ccfaeff6              # double 1.054529
	.quad	0x4015ad145d851655              # double 5.4190230000000001
	.quad	0x40161c6c54bcf0b7              # double 5.5277570000000003
	.quad	0x4017376ab5807fed              # double 5.8041179999999999
	.quad	0x402317de0d66f0d0              # double 9.5466160000000002
	.quad	0x401bcc64345cfedf              # double 6.9496010000000004
	.quad	0x3ff9cccff21b3aef              # double 1.612503
	.quad	0x3ffca89a88ace24c              # double 1.7911630000000001
	.quad	0x400108155d5f56a8              # double 2.1289470000000001
	.quad	0x4015dd99029ae4f3              # double 5.4664039999999998
	.quad	0x3fe9b8e086bdf4c3              # double 0.80381800000000003
	.quad	0x3ff071476af89c5e              # double 1.0276559999999999
	.quad	0x400e2665e02ea961              # double 3.7687490000000001
	.quad	0x4012ef8f4730403a              # double 4.7339450000000003
	.quad	0x400114c1a8ac5c14              # double 2.135135
	.quad	0x402384725c3dee78              # double 9.7586849999999998
	.quad	0x4013b06ee30caa32              # double 4.9222979999999996
	.quad	0x40041b44e50c5eb3              # double 2.513315
	.quad	0x402052f555821294              # double 8.1620279999999993
	.quad	0x4020517353b4b2fb              # double 8.1590830000000008
	.quad	0x4002d9496249a134              # double 2.3560970000000001
	.quad	0x4021b54a1ad6451c              # double 8.8540810000000007
	.quad	0x4020c6b1c432ca58              # double 8.3880750000000006
	.quad	0x401f9212d77318fc              # double 7.8926499999999997
	.quad	0x400ff3165d3996fb              # double 3.9936950000000002
	.quad	0x40048f56eac86057              # double 2.5699900000000002
	.quad	0x3fe9c647778dd617              # double 0.805454
	.quad	0x3fd1e679463cfb33              # double 0.279692
	.quad	0x40065b256ffc115e              # double 2.794505
	.quad	0x3f9ec28b2a6b0d95              # double 0.030039
	.quad	0x40101725c3dee782              # double 4.0226050000000004
	.quad	0x401799f7f8ca8199              # double 5.90036
	.quad	0x4020ab606b7aa25e              # double 8.3347200000000008
	.quad	0x401537b634dad320              # double 5.3044060000000002
	.quad	0x4004308e581cf788              # double 2.5237090000000002
	.quad	0x401c92a66dbd72bd              # double 7.1432130000000003
	.quad	0x3ffda7a52ac753e7              # double 1.853429
	.quad	0x401afb0813cab820              # double 6.7451480000000004
	.quad	0x402157bedb7281fe              # double 8.6713780000000007
	.quad	0x4017a6e1deacc921              # double 5.9129709999999998
	.quad	0x4022de40852b4d8c              # double 9.4340860000000006
	.quad	0x4002ad783dff3f10              # double 2.3347020000000001
	.quad	0x3ff27947496aad1d              # double 1.154609
	.quad	0x4012fb9389b52008              # double 4.7456800000000001
	.quad	0x3fe8bf162ae4b018              # double 0.77332599999999996
	.quad	0x401ff6a7264a16a5              # double 7.9908720000000004
	.quad	0x400555579af1886e              # double 2.666671
	.quad	0x3fe927e52157689d              # double 0.78612000000000004
	.quad	0x3ff30ca600b02928              # double 1.190588
	.quad	0x4021b3aba7b9170d              # double 8.8509189999999993
	.quad	0x401900ff540895d1              # double 6.2509740000000003
	.quad	0x3fcea83b1d0c8041              # double 0.239509
	.quad	0x4010e8fd5cb790fb              # double 4.2275289999999996
	.quad	0x401b62502eec7c95              # double 6.8460089999999996
	.quad	0x3fbf893faf42784b              # double 0.12318800000000001
	.quad	0x40043c7ef177a701              # double 2.5295390000000002
	.quad	0x401bf9abf3387161              # double 6.9938200000000004
	.quad	0x402263bc4d22c882              # double 9.1947960000000002
	.quad	0x401c47204295a6c6              # double 7.0694590000000002
	.quad	0x3fe4e31b584b1ab1              # double 0.65272300000000005
	.quad	0x401fab9c304ccee6              # double 7.9175880000000003
	.quad	0x4022415831f03d14              # double 9.1276259999999993
	.quad	0x3ff05eedcc20d563              # double 1.0231760000000001
	.quad	0x402179cc532a4980              # double 8.7378870000000006
	.quad	0x4022a61b4bb5e0f8              # double 9.324427
	.quad	0x400f5cf3dc054ef4              # double 3.9203869999999998
	.quad	0x40236a8522ea0fd4              # double 9.7080470000000005
	.quad	0x3ff31692b3cc4ac7              # double 1.193011
	.quad	0x401e40157eed45e9              # double 7.5625819999999999
	.quad	0x402009a93293d103              # double 8.0188690000000005
	.quad	0x40138c6eb0b7c350              # double 4.8871409999999997
	.quad	0x401fa4cb9ecf6380              # double 7.910933
	.quad	0x4016dd57bc7f77af              # double 5.7161549999999997
	.quad	0x4010b3affb04ee7c              # double 4.1754759999999997
	.quad	0x4023b90ea9e6eeb7              # double 9.8614399999999999
	.quad	0x401f6408d8ec95c0              # double 7.8476900000000001
	.quad	0x4023b383ad9f0a1c              # double 9.8506140000000002
	.quad	0x4009736deb95e5b0              # double 3.181362
	.quad	0x4021943b2dd377e2              # double 8.7895140000000005
	.quad	0x401a05ba2be0589b              # double 6.5055930000000002
	.quad	0x4009283dbc23315d              # double 3.1446489999999998
	.quad	0x3fc11f81a5870da6              # double 0.133774
	.quad	0x401a3bccaf709b74              # double 6.5583980000000004
	.quad	0x3ff3e54e6e221c8a              # double 1.2434829999999999
	.quad	0x401b2727dcbddb98              # double 6.7882379999999998
	.quad	0x400622784a9478c8              # double 2.7668309999999998
	.quad	0x4020bb3d07c84b5e              # double 8.3657000000000004
	.quad	0x401f6dc011d3671b              # double 7.8571780000000002
	.quad	0x40128fdf3b645a1d              # double 4.6405000000000003
	.quad	0x4013d8644523f67f              # double 4.9613199999999997
	.quad	0x40143c154c985f07              # double 5.058675
	.quad	0x3ff1f8316a055758              # double 1.123094
	.quad	0x4019de9424e59296              # double 6.4673619999999996
	.quad	0x3ffecae429e0a41a              # double 1.924534
	.quad	0x3fe54e2b063e07a3              # double 0.66579200000000005
	.quad	0x4009d8854cdb7ae5              # double 3.2307229999999998
	.quad	0x3fe086338b47c73f              # double 0.51638200000000001
	.quad	0x3fef4fede97d06bc              # double 0.97850700000000001
	.quad	0x401cdea209aaa3ad              # double 7.2174149999999999
	.quad	0x40196a936c58eeaf              # double 6.3540780000000003
	.quad	0x401e9b649d388a8b              # double 7.6517509999999999
	.quad	0x40018d41b75a74c1              # double 2.1939730000000002
	.quad	0x4008c6bf01322f27              # double 3.0970439999999999
	.quad	0x401bfe4de3b8a19d              # double 6.9983440000000003
	.quad	0x3fed868b9fdbd2fa              # double 0.92267399999999999
	.quad	0x401cca7264a16a48              # double 7.1977019999999996
	.quad	0x401b67d30ad46f58              # double 6.8513909999999996
	.quad	0x4011c9285a921cce              # double 4.4464430000000004
	.quad	0x4021964755ffe6d6              # double 8.7935130000000008
	.quad	0x3fcbe8d5410f94c8              # double 0.21804299999999999
	.quad	0x400ce8a3f8982cb2              # double 3.613594
	.quad	0x4006404d98394749              # double 2.7813979999999998
	.quad	0x4022cbfc0096feb5              # double 9.3984070000000006
	.quad	0x40211fc06e19b90f              # double 8.5620150000000006
	.quad	0x40122ae21101b003              # double 4.5418779999999996
	.quad	0x402181ff4fd6d7e9              # double 8.7539010000000008
	.quad	0x40104016ce789e77              # double 4.0625869999999997
	.quad	0x3ff03e1da7b0b392              # double 1.0151650000000001
	.quad	0x400a6817763e4abe              # double 3.3008259999999998
	.quad	0x3ffba7a0f9096bba              # double 1.7284250000000001
	.quad	0x4008de4b44a1f080              # double 3.1085419999999999
	.quad	0x401f0432441fea81              # double 7.7540979999999999
	.quad	0x3fd064ece9a2c669              # double 0.25616
	.quad	0x40191eee52589268              # double 6.2802059999999997
	.quad	0x3fed5056c508b32d              # double 0.91605700000000001
	.quad	0x400934d72799a1fd              # double 3.150801
	.quad	0x3ffd036b8f9b1316              # double 1.8133349999999999
	.quad	0x40142d466f5019f4              # double 5.0442140000000002
	.quad	0x4005d40b34e7685a              # double 2.7285370000000002
	.quad	0x400605aff2a172ac              # double 2.752777
	.quad	0x401bf00abf76a2f5              # double 6.9844160000000004
	.quad	0x40222bb341e14be0              # double 9.0853520000000003
	.quad	0x40119a3a8e71476b              # double 4.400614
	.quad	0x401a90d2806af46b              # double 6.6414280000000003
	.quad	0x4022fd5fbb517a46              # double 9.4948709999999998
	.quad	0x401b0b367a0f9097              # double 6.7609500000000002
	.quad	0x401c242c7fbacb43              # double 7.0353260000000004
	.quad	0x401df8405b39e27a              # double 7.4924330000000001
	.quad	0x402365b2702a3487              # double 9.6986270000000001
	.quad	0x401f819ef954eb14              # double 7.8765830000000001
	.quad	0x400c0e957470eb25              # double 3.5071210000000002
	.quad	0x4010c578a2a90cd4              # double 4.1928429999999999
	.quad	0x402326fcbd556085              # double 9.5761470000000006
	.quad	0x40140177ea1c68ec              # double 5.0014339999999997
	.quad	0x4021eff950b955f8              # double 8.9686990000000009
	.quad	0x4013b294141e9af6              # double 4.9243930000000002
	.quad	0x3ffa9704ff43419e              # double 1.66187
	.quad	0x40204151e75360d0              # double 8.1275779999999997
	.quad	0x40014a4c1ebc83a9              # double 2.1612779999999998
	.quad	0x401e7e6362a5e786              # double 7.6234260000000003
	.quad	0x401cb273929ed395              # double 7.1742689999999998
	.quad	0x40200e34dad31fcd              # double 8.0277469999999997
	.quad	0x4015bb42cc2d6a9c              # double 5.4328719999999997
	.quad	0x401547d73c925786              # double 5.320157
	.quad	0x4021fca8198f1d3f              # double 8.9934700000000003
	.quad	0x401d50b7c3504c49              # double 7.3288260000000003
	.quad	0x3f8701d9f4d37c13              # double 0.011233999999999999
	.quad	0x402329357603925c              # double 9.5804860000000005
	.quad	0x3ff3141fa7653437              # double 1.1924129999999999
	.quad	0x401a426bb55ac040              # double 6.564864
	.quad	0x401d811dffc5479d              # double 7.3760909999999997
	.quad	0x401c85dc4007570c              # double 7.1307229999999997
	.quad	0x40229281ba7fc32f              # double 9.2861460000000005
	.quad	0x3ff3bbf1e8e60807              # double 1.233385
	.quad	0x401107a5f41aef70              # double 4.2574690000000004
	.quad	0x400051d92b7fe08b              # double 2.039965
	.quad	0x402388029f16b11c              # double 9.7656449999999992
	.quad	0x400f47d45a5fc7e7              # double 3.9100730000000001
	.quad	0x401aebdd76683c29              # double 6.7303369999999996
	.quad	0x400a1d2391d57ffa              # double 3.2642280000000001
	.quad	0x4021e711947cfa27              # double 8.9513060000000007
	.quad	0x401f9fc371da37ef              # double 7.9060189999999996
	.quad	0x400db82fd75e2047              # double 3.7149350000000001
	.quad	0x40194fc610f0e90c              # double 6.3279040000000002
	.quad	0x400b4ab4fa48301a              # double 3.4114779999999998
	.quad	0x3fc39bbadc0980b2              # double 0.15318999999999999
	.quad	0x4019694317acc4f0              # double 6.3527950000000004
	.quad	0x40228b4bf8fcd680              # double 9.2720640000000003
	.quad	0x401d7229a5ebb774              # double 7.3614870000000003
	.quad	0x3fe3abcd78c436fc              # double 0.61472199999999999
	.quad	0x401658b9baa1511e              # double 5.586646
	.quad	0x3fcc3f0bae89eba7              # double 0.22067400000000001
	.quad	0x4023440a6b93ccd1              # double 9.632892
	.quad	0x3fb8280ae1049236              # double 0.094361
	.quad	0x402304bea4ebdd33              # double 9.5092669999999994
	.quad	0x3fe84a515ce9e5e2              # double 0.75907199999999997
	.quad	0x40201a64c2f837b5              # double 8.0515500000000007
	.quad	0x40209127f5e84f09              # double 8.2835079999999994
	.quad	0x3ff619ddc1e7967d              # double 1.3813150000000001
	.quad	0x4010edc50ce4ead1              # double 4.2321970000000002
	.quad	0x40112908e581cf78              # double 4.2900729999999996
	.quad	0x40180ede54b48d3b              # double 6.0145200000000001
	.quad	0x4019dbd273d5bab2              # double 6.4646699999999999
	.quad	0x401f117481b21c47              # double 7.7670459999999996
	.quad	0x3ff85b003686a4ca              # double 1.5222169999999999
	.quad	0x40120f1172ef0ae5              # double 4.5147149999999998
	.quad	0x4011dc9539b88872              # double 4.4654129999999999
	.quad	0x3fd48d6d3b6cbd98              # double 0.32113199999999997
	.quad	0x4016d296b3354c12              # double 5.7056529999999999
	.quad	0x4012390ea9e6eeb7              # double 4.55572
	.quad	0x3ff6336cdf266ba5              # double 1.3875550000000001
	.quad	0x4021b9a0ad8a1166              # double 8.8625539999999994
	.quad	0x3fbf442c7fbacb43              # double 0.12213400000000001
	.quad	0x4018cacd184c2720              # double 6.198048
	.quad	0x400ff70f7b9e0610              # double 3.995635
	.quad	0x4003c2656abde3fc              # double 2.4699200000000001
	.quad	0x402399dc50ce4ead              # double 9.8005089999999999
	.quad	0x401344b167ec7864              # double 4.8170830000000002
	.quad	0x4017aa265f0f5a10              # double 5.9161619999999999
	.quad	0x3fc507852f7f498c              # double 0.16429199999999999
	.quad	0x3ff470df9bdc69f9              # double 1.2775570000000001
	.quad	0x3fd1d3c792d1287c              # double 0.27855099999999999
	.quad	0x4000bad42c3c9eed              # double 2.0912250000000001
	.quad	0x401f55ca29845dc8              # double 7.8337789999999998
	.quad	0x401b1922d948dc12              # double 6.7745470000000001
	.quad	0x401e504f6dfc5cdd              # double 7.5784279999999997
	.quad	0x4019e70435efa616              # double 6.4756020000000003
	.quad	0x401e7ee6b8305d96              # double 7.6239270000000001
	.quad	0x400af82c2bd7f51f              # double 3.371178
	.quad	0x4019ccafb3b75211              # double 6.4498889999999998
	.quad	0x3feb0b84988094e6              # double 0.84515600000000002
	.quad	0x4022114488c60cbf              # double 9.0337259999999997
	.quad	0x3fe5df4c2b51bd62              # double 0.683508
	.quad	0x3fa5968512231833              # double 0.042164
	.quad	0x3fe1ac6cdaf4adbc              # double 0.55229799999999996
	.quad	0x4022123b14a90471              # double 9.0356070000000006
	.quad	0x401dd925bb7b6bb1              # double 7.4620579999999999
	.quad	0x400b8e2eb1c432ca              # double 3.4444249999999998
	.quad	0x401de7329c347e8d              # double 7.4757790000000002
	.quad	0x401e1d8c6d612c6b              # double 7.5288560000000002
	.quad	0x40190daad601ffb5              # double 6.2633470000000004
	.quad	0x401c73e9a6f826ee              # double 7.1131960000000003
	.quad	0x402222ee631f8a09              # double 9.068225
	.quad	0x4023fcd5f99c38b0              # double 9.9938199999999995
	.quad	0x40194f8ceb356da0              # double 6.3276859999999999
	.quad	0x401a41083dbc2331              # double 6.5635079999999997
	.quad	0x400274b61fe21d97              # double 2.306988
	.quad	0x4018b6b2af145522              # double 6.1784160000000004
	.quad	0x40207a6eb91b3f21              # double 8.2391260000000006
	.quad	0x40049008a697aede              # double 2.5703290000000001
	.quad	0x4021f0e0c9d9d346              # double 8.9704650000000008
	.quad	0x402165e8b3b32053              # double 8.6990409999999994
	.quad	0x400e2c804102ff8f              # double 3.7717290000000001
	.quad	0x3ffcd14f483cafb4              # double 1.8011010000000001
	.quad	0x3ff07c8d1958969a              # double 1.030408
	.quad	0x401d2dd3fe1975f3              # double 7.2947540000000002
	.quad	0x401bc79cc74b838c              # double 6.9449339999999999
	.quad	0x40186e5b4245f5ae              # double 6.1077700000000004
	.quad	0x3ffc3e90ff972474              # double 1.7652749999999999
	.quad	0x40224cb90214ad36              # double 9.1498489999999997
	.quad	0x400ab07e9d94d0dd              # double 3.336179
	.quad	0x400c0f3c2dadb835              # double 3.5074390000000002
	.quad	0x4011f0407cc7d1bb              # double 4.4846209999999997
	.quad	0x3ff169cdc443914f              # double 1.0883309999999999
	.quad	0x401f8ea960b6f9fd              # double 7.8893180000000002
	.quad	0x4000ccc25072085b              # double 2.09998
	.quad	0x3fe4df3b645a1cac              # double 0.65225
	.quad	0x3fc7640e9d51b4fe              # double 0.18274099999999999
	.quad	0x3ff1856e696a26e5              # double 1.0950759999999999
	.quad	0x401e590f301eabbd              # double 7.5869720000000002
	.quad	0x4013e3eccc469510              # double 4.9725830000000002
	.quad	0x3ffad37d1fe64f55              # double 1.676633
	.quad	0x3fd304c059210386              # double 0.29716500000000001
	.quad	0x4020f7ac6045baf5              # double 8.4837369999999996
	.quad	0x40094b13dfb0d520              # double 3.1616590000000002
	.quad	0x40236d18090b417d              # double 9.7130740000000006
	.quad	0x3ffd46af46aa087d              # double 1.8297570000000001
	.quad	0x4022d0c5c9a34ca1              # double 9.4077590000000004
	.quad	0x401c9054ac29bf16              # double 7.1409479999999999
	.quad	0x400121bfbdf090f7              # double 2.1414789999999999
	.quad	0x40157de82d7b634e              # double 5.3729560000000003
	.quad	0x40122beb9e492bc3              # double 4.542891
	.quad	0x40177e23af31b153              # double 5.873183
	.quad	0x401327c1376d5497              # double 4.7888229999999998
	.quad	0x401ca878fabda0e0              # double 7.1645240000000001
	.quad	0x3fe346e6d9be4cd7              # double 0.60240499999999997
	.quad	0x3fb1357603925bb8              # double 0.067222000000000004
	.quad	0x3fc2ad14a0a0f4d8              # double 0.14590700000000001
	.quad	0x3ff4dca7d6733ebc              # double 1.303871
	.quad	0x40225b413986338b              # double 9.1782319999999995
	.quad	0x402393cd9a52263e              # double 9.7886780000000009
	.quad	0x4023e94cec41dd1a              # double 9.9556649999999998
	.quad	0x4010fa29c779a6b5              # double 4.2443
	.quad	0x40041c1376d54973              # double 2.513709
	.quad	0x3fe4a09246bf0132              # double 0.64460099999999998
	.quad	0x400b75f3d7d3910c              # double 3.4325939999999999
	.quad	0x4020b1e5e2478855              # double 8.3474570000000003
	.quad	0x4000d59ccfaeff5c              # double 2.1043029999999998
	.quad	0x401ec3d7d3910c2c              # double 7.6912529999999997
	.quad	0x4003b91e646f1562              # double 2.4653900000000002
	.quad	0x40116858ff759685              # double 4.3519019999999999
	.quad	0x4012abd7f51efb6e              # double 4.6678160000000002
	.quad	0x3f87204295a6c5d2              # double 0.011292
	.quad	0x3ff6940cc78e9f6b              # double 1.4111450000000001
	.quad	0x401007cc7d1bb491              # double 4.0076159999999996
	.quad	0x40004f7b9e060fe4              # double 2.0388099999999998
	.quad	0x4023aac57e23f24e              # double 9.8335380000000008
	.quad	0x40205e72fba01eef              # double 8.1844710000000003
	.quad	0x40217b77c02afddb              # double 8.7411480000000008
	.quad	0x4012f1016ce789e7              # double 4.7353569999999996
	.quad	0x400c25ce5b4245f6              # double 3.5184600000000001
	.quad	0x4009105857afea3e              # double 3.132981
	.quad	0x401c87192ea52ef9              # double 7.1319319999999999
	.quad	0x3ffc4902de00d1b7              # double 1.767825
	.quad	0x401f1083126e978d              # double 7.7661249999999997
	.quad	0x400f4234a87e38eb              # double 3.907327
	.quad	0x400f6d7be9856a38              # double 3.9284590000000001
	.quad	0x3ffd8eebf65dbfcf              # double 1.8473930000000001
	.quad	0x400e91e321a2e7f7              # double 3.821234
	.quad	0x4001d327243137b0              # double 2.2281019999999998
	.quad	0x401c2c981beb1811              # double 7.0435489999999996
	.quad	0x40181ab81f969e3d              # double 6.0260930000000004
	.quad	0x40105488c60cbf2b              # double 4.0825529999999999
	.quad	0x40020d78c436fc16              # double 2.2565780000000002
	.quad	0x40007acc4ef88b97              # double 2.0599599999999998
	.quad	0x4011434eb9a176de              # double 4.3157300000000003
	.quad	0x402214f765fd8adb              # double 9.0409500000000005
	.quad	0x4006664020817fc7              # double 2.7999269999999998
	.quad	0x401b7c0f01fb82c3              # double 6.8711510000000002
	.quad	0x40180f284167a95d              # double 6.0148020000000004
	.quad	0x4009b69ec2ce464a              # double 3.2141700000000002
	.quad	0x40205e79aae6c8f7              # double 8.1845219999999994
	.quad	0x3ffd2787ce95faa9              # double 1.8221510000000001
	.quad	0x401f826bf8769ec3              # double 7.8773650000000001
	.quad	0x40201b545c78a6db              # double 8.0533780000000004
	.quad	0x3ffaed0b30b5aa71              # double 1.6828719999999999
	.quad	0x400b42e4d1a65061              # double 3.4076629999999999
	.quad	0x4011c3ed0f627393              # double 4.4413340000000003
	.quad	0x4005d20f2becedd5              # double 2.7275680000000002
	.quad	0x40233f9a2834d270              # double 9.6242230000000006
	.quad	0x40048940bbb1f256              # double 2.567018
	.quad	0x401947c3d68405b4              # double 6.3200830000000003
	.quad	0x4010219c17225b75              # double 4.0328220000000004
	.quad	0x4017e325918a009f              # double 5.9718229999999997
	.quad	0x4021d35f5f0b2852              # double 8.9128369999999997
	.quad	0x4003d6c93a711516              # double 2.479876
	.quad	0x3ff6a9a2c669057d              # double 1.416415
	.quad	0x40165969e3c96894              # double 5.5873179999999998
	.quad	0x400d5e97d06bbdbe              # double 3.6711879999999999
	.quad	0x3fe39971c10d7bea              # double 0.61248100000000005
	.quad	0x40120a16e7a311e8              # double 4.5098529999999997
	.quad	0x3ff0aaf6837f7be1              # double 1.041739
	.quad	0x4006c1804d983947              # double 2.8444829999999999
	.quad	0x3ff37c4e2f37fbf0              # double 1.217848
	.quad	0x40138a8b8f14db59              # double 4.8852979999999997
	.quad	0x401dd974e65bea0c              # double 7.4623600000000003
	.quad	0x4023b67f2c3009b3              # double 9.8564389999999999
	.quad	0x3ff115f138bcdff0              # double 1.0678570000000001
	.quad	0x4010a9613d31b9b6              # double 4.1654099999999996
	.quad	0x4012cabbcb1cc964              # double 4.6979819999999997
	.quad	0x4018cbbe0157eed4              # double 6.1989669999999997
	.quad	0x401e48beb5b2d4d4              # double 7.57104
	.quad	0x400836238da3c212              # double 3.0264350000000002
	.quad	0x40125ad3e920c06a              # double 4.5886990000000001
	.quad	0x3ffb7e90ff972474              # double 1.7183999999999999
	.quad	0x4010841f644955b4              # double 4.1290259999999996
	.quad	0x401245a5332acfb7              # double 4.5680129999999997
	.quad	0x401a7b167ec7863c              # double 6.6202030000000001
	.quad	0x3ff24c0379314446              # double 1.1435580000000001
	.quad	0x3ff5285b9e8c47a1              # double 1.3223529999999999
	.quad	0x4017a38de6ddf00b              # double 5.9097210000000002
	.quad	0x400d3327aa68f4b6              # double 3.6499779999999999
	.quad	0x401e08433d6c7219              # double 7.5080689999999998
	.quad	0x4010f723aafff36b              # double 4.2413470000000002
	.quad	0x400fe917507e9d95              # double 3.9888140000000001
	.quad	0x3ff6ed6238da3c21              # double 1.432955
	.quad	0x3fe15a5332acfb76              # double 0.54227599999999998
	.quad	0x400463c6c97d8cf4              # double 2.5487190000000002
	.quad	0x3fc785942917507f              # double 0.18376400000000001
	.quad	0x3fd7932d6ece13f5              # double 0.36835800000000002
	.quad	0x4020d45a1cac0831              # double 8.4147499999999997
	.quad	0x401da531550ca1cf              # double 7.411321
	.quad	0x401ee30c23fab10c              # double 7.7217260000000003
	.quad	0x402201b9d7fd8277              # double 9.0033709999999996
	.quad	0x3fc58055fbb517a4              # double 0.16797899999999999
	.quad	0x401404ea8da7f3cf              # double 5.0048009999999996
	.quad	0x401030142f61ed5b              # double 4.0469520000000001
	.quad	0x40114f83382e44b7              # double 4.3276490000000001
	.quad	0x400cae70c1333b97              # double 3.5851760000000001
	.quad	0x3ff08be61cffeb07              # double 1.0341549999999999
	.quad	0x4003c1a36e2eb1c4              # double 2.4695499999999999
	.quad	0x3ff15aae6c8f7553              # double 1.0846389999999999
	.quad	0x40213ee84ad794a7              # double 8.6228660000000001
	.quad	0x3fe9ce63a5c1c609              # double 0.80644400000000005
	.quad	0x40158d50ebaade65              # double 5.3880039999999996
	.quad	0x401ebb6390c91080              # double 7.6829970000000003
	.quad	0x3f90bbb1f255f352              # double 0.016341000000000001
	.quad	0x4022d424c404a72f              # double 9.4143430000000005
	.quad	0x400eda0b5ed8d36b              # double 3.8564669999999999
	.quad	0x401486ab5807fed2              # double 5.131513
	.quad	0x401d9ef4e0114d2f              # double 7.4052309999999997
	.quad	0x4015eb0a6fc58ab9              # double 5.4795319999999998
	.quad	0x3fcb44aa53fc0097              # double 0.213033
	.quad	0x3fecb38f7985271c              # double 0.89691900000000002
	.quad	0x4013141c8216c615              # double 4.7696399999999999
	.quad	0x40226b352a843809              # double 9.2093900000000009
	.quad	0x401e0069e7fb267c              # double 7.5004039999999996
	.quad	0x40140f444e0daa0d              # double 5.0149090000000003
	.quad	0x400809afe1da7b0b              # double 3.0047299999999999
	.quad	0x4020a221c8a7a41e              # double 8.3166639999999994
	.quad	0x3ff7e9eb2074ea8e              # double 1.4946090000000001
	.quad	0x400fa4e2f37fbefd              # double 3.955511
	.quad	0x40161495182a9931              # double 5.5201000000000002
	.quad	0x4008a7c73eee5259              # double 3.0819230000000002
	.quad	0x3fcbeee525892685              # double 0.21822800000000001
	.quad	0x4022f887a8d64d7f              # double 9.4854099999999998
	.quad	0x401238f190d173fb              # double 4.5556089999999996
	.quad	0x40129e789e774eec              # double 4.654757
	.quad	0x401b9e878fabda0e              # double 6.904814
	.quad	0x400defff36ac6477              # double 3.7421859999999998
	.quad	0x401f6cd9a52263d8              # double 7.8562989999999999
	.quad	0x3ff2af9fcb0c026d              # double 1.1678770000000001
	.quad	0x40204705ea24cc68              # double 8.1387169999999998
	.quad	0x401d4ba12b5e529c              # double 7.3238570000000003
	.quad	0x40110e047d3d4281              # double 4.2636890000000003
	.quad	0x40203c96aad1d042              # double 8.1183370000000004
	.quad	0x3fbe9c560c7c0f45              # double 0.119573
	.quad	0x401c32fe82517e78              # double 7.0497990000000001
	.quad	0x401120157eed45e9              # double 4.2813319999999999
	.quad	0x3feba917507e9d95              # double 0.86439100000000002
	.quad	0x3fe2e0242d05f288              # double 0.58986099999999997
	.quad	0x4013f58750c1b973              # double 4.9897739999999997
	.quad	0x402225feb8d82342              # double 9.0742089999999997
	.quad	0x4018fef7c243dccf              # double 6.2489920000000003
	.quad	0x4009468b19a415f4              # double 3.1594449999999998
	.quad	0x4021b1abb01c92de              # double 8.8470130000000005
	.quad	0x401e35d894812be5              # double 7.5525840000000004
	.quad	0x401d60f5a1016ce8              # double 7.3446870000000004
	.quad	0x3fdcdda48b652370              # double 0.45102799999999998
	.quad	0x401806d9be4cd749              # double 6.0066899999999999
	.quad	0x40136f1455219a84              # double 4.8584759999999996
	.quad	0x401df3d3a1d323ff              # double 7.4881120000000001
	.quad	0x4020c3f1e8e60807              # double 8.3827049999999996
	.quad	0x4007f2cd7cf5f4e4              # double 2.9935559999999999
	.quad	0x400ec13986338b48              # double 3.8443480000000001
	.quad	0x40147a7b0b391926              # double 5.1196099999999998
	.quad	0x40119152b0a6fc59              # double 4.3919170000000003
	.quad	0x40154fa7221858bc              # double 5.3277859999999997
	.quad	0x4003a5015c209247              # double 2.4555690000000001
	.quad	0x40199d872f33ca32              # double 6.4038360000000001
	.quad	0x401e77521144cbe2              # double 7.6165240000000001
	.quad	0x400f7a61e0c5a815              # double 3.9347569999999998
	.quad	0x4011076188b1140a              # double 4.2572080000000003
	.quad	0x3ff74998d045fe11              # double 1.455468
	.quad	0x4020ac2070b8cfc0              # double 8.3361850000000004
	.quad	0x40225d6eac860568              # double 9.1824849999999997
	.quad	0x3ff59e59f2ba9d1f              # double 1.3511599999999999
	.quad	0x401df89dadfb506e              # double 7.4927890000000001
	.quad	0x40120b7d84901d19              # double 4.5112209999999999
	.quad	0x401c52877ee4e26d              # double 7.0805949999999998
	.quad	0x400d835610adcd2d              # double 3.6891289999999999
	.quad	0x3ff3ebc0e38a7e74              # double 1.2450570000000001
	.quad	0x3ffa558644523f68              # double 1.64588
	.quad	0x4022d5803cd141a7              # double 9.4169940000000007
	.quad	0x3fe4ce160d887ebf              # double 0.65015699999999998
	.quad	0x3ff8488a47ecfe9b              # double 1.5177099999999999
	.quad	0x401f4efdc9c4da90              # double 7.82714
	.quad	0x4021b36f7e3d1cc1              # double 8.85046
	.quad	0x3ffc06a2b1704ff4              # double 1.75162
	.quad	0x402241d3aa369fcf              # double 9.1285679999999996
	.quad	0x40200f7ee4e26d48              # double 8.030265
	.quad	0x4016f4406c00da1b              # double 5.7385270000000004
	.quad	0x402267c4199fe436              # double 9.2026679999999992
	.quad	0x4020fe3c31df761d              # double 8.4965530000000005
	.quad	0x40233285caafbc1b              # double 9.5986770000000003
	.quad	0x401790b242070b8d              # double 5.891305
	.quad	0x3fc1fe004b7f5a53              # double 0.14056399999999999
	.quad	0x400211ac9afe1da8              # double 2.2586300000000001
	.quad	0x401e1cebfec13b9f              # double 7.5282439999999999
	.quad	0x3ff842cb20fb224b              # double 1.5163070000000001
	.quad	0x3ff8219eb6390c91              # double 1.508208
	.quad	0x401c089ce4a7b4e5              # double 7.0084109999999997
	.quad	0x3fdab3bb83cf2cf9              # double 0.41721999999999998
	.quad	0x3ff9f2bcb5fe542e              # double 1.6217619999999999
	.quad	0x40069556084a515d              # double 2.822918
	.quad	0x4011aa0a0f4d7add              # double 4.4160539999999999
	.quad	0x401122fe82517e78              # double 4.2841740000000001
	.quad	0x400e292c49342678              # double 3.7701039999999999
	.quad	0x400f1c0d2c386d2f              # double 3.8886970000000001
	.quad	0x3ff302396073de1e              # double 1.188043
	.quad	0x40169179bfdf7e80              # double 5.6420659999999998
	.quad	0x4021725ca29845dd              # double 8.7233630000000009
	.quad	0x4016b0739b024f66              # double 5.6723160000000004
	.quad	0x40090da0168b5cc0              # double 3.131653
	.quad	0x40239b7baecd0785              # double 9.8036779999999996
	.quad	0x401aa008205ff1d8              # double 6.6562809999999999
	.quad	0x400d8e87d2c7b891              # double 3.6945950000000001
	.quad	0x4010999aa60913a5              # double 4.150004
	.quad	0x40120c8fb86f47b6              # double 4.5122669999999996
	.quad	0x4014ea3443d46b27              # double 5.2287150000000002
	.quad	0x4022e1d909f1f14a              # double 9.4411090000000009
	.quad	0x401ff68900c521de              # double 7.9907570000000003
	.quad	0x401b792146a1a501              # double 6.8682910000000001
	.quad	0x4021bdfe974a3401              # double 8.8710830000000005
	.quad	0x401862fe82517e78              # double 6.0966740000000001
	.quad	0x400f93bafd976ff4              # double 3.9471340000000001
	.quad	0x40035aeb3dd11be7              # double 2.419394
	.quad	0x4004e541d8e86402              # double 2.611942
	.quad	0x402131dc0db2702a              # double 8.5973819999999996
	.quad	0x4009aef34d6a161e              # double 3.2104249999999999
	.quad	0x401d6635e74299d9              # double 7.3498150000000004
	.quad	0x40117e7b80a9de8b              # double 4.3735179999999998
	.quad	0x40057623076c050c              # double 2.6826840000000001
	.quad	0x401b77cf5f4e4431              # double 6.8670020000000003
	.quad	0x4015b9253543aeab              # double 5.4308059999999996
	.quad	0x4000738de6ddf00b              # double 2.0564230000000001
	.quad	0x401f77ca643cc07b              # double 7.8669830000000002
	.quad	0x401b7e56cd6c2efd              # double 6.8733779999999998
	.quad	0x4020c368cef672b9              # double 8.3816590000000009
	.quad	0x402101a6b50b0f28              # double 8.5032250000000005
	.quad	0x4021a2d77318fc50              # double 8.8180499999999995
	.quad	0x40192dfe75bc44bf              # double 6.2949159999999997
	.quad	0x4013ed1aeb3dd11c              # double 4.9815480000000001
	.quad	0x40096e325d4a5df2              # double 3.1788069999999999
	.quad	0x4023a38c32a8c9b8              # double 9.8194289999999995
	.quad	0x40016698bb4d4888              # double 2.1750959999999999
	.quad	0x40203603f705857b              # double 8.105499
	.quad	0x4015a4e1e71044f2              # double 5.4110180000000003
	.quad	0x40184ed0b30b5aa7              # double 6.0769679999999999
	.quad	0x3fe2fafa7221858c              # double 0.59313700000000003
	.quad	0x400e9f44d4456712              # double 3.8277679999999998
	.quad	0x40207c89f40a2878              # double 8.2432400000000001
	.quad	0x3ffbd03ea704bc27              # double 1.7383409999999999
	.quad	0x40062e09784ec637              # double 2.7724790000000001
	.quad	0x401945942917507f              # double 6.3179480000000003
	.quad	0x4020b9e1f3a57eaa              # double 8.3630519999999997
	.quad	0x40225e4473cd5736              # double 9.1841159999999995
	.quad	0x4019ed6ba8c58687              # double 6.4818559999999996
	.quad	0x4022c8f0e90bc7b4              # double 9.3924629999999993
	.quad	0x3fef30c88a47ecff              # double 0.97470500000000004
	.quad	0x3ff7a5ca29845dc8              # double 1.477976
	.quad	0x3fff0db2702a3487              # double 1.940844
	.quad	0x40137f8012dfd695              # double 4.8745120000000002
	.quad	0x402399973d9ec700              # double 9.799982
	.quad	0x3fe72c12ad81adeb              # double 0.72413000000000005
	.quad	0x4004186013660e52              # double 2.5119020000000001
	.quad	0x400f7fab96f21f6d              # double 3.9373390000000001
	.quad	0x401e896c3fc43b2e              # double 7.6342020000000002
	.quad	0x402314b945308bb9              # double 9.5404759999999999
	.quad	0x4020a33a0407cc7d              # double 8.3188019999999998
	.quad	0x4022d99aa60913a5              # double 9.425008
	.quad	0x40201c48f10a99b7              # double 8.0552440000000001
	.quad	0x4009298cc144028e              # double 3.1452879999999999
	.quad	0x401fd5a89b951c5c              # double 7.9586509999999997
	.quad	0x4003ad3e920c069e              # double 2.4595919999999998
	.quad	0x4021a712e40852b5              # double 8.8263160000000003
	.quad	0x401f46195464dc23              # double 7.8184560000000002
	.quad	0x4002baabcd78c437              # double 2.341148
	.quad	0x40115205ff1d81f1              # double 4.330101
	.quad	0x4010ef7e3d1cc101              # double 4.2338800000000001
	.quad	0x401921e3a7daa4fd              # double 6.2830950000000003
	.quad	0x401899667b5f1bef              # double 6.1498049999999997
	.quad	0x3fd4513f8db48909              # double 0.31745899999999999
	.quad	0x40048691ea78af3e              # double 2.5657079999999999
	.quad	0x400042fad6cb5350              # double 2.032705
	.quad	0x40222182235b4edb              # double 9.0654459999999997
	.quad	0x400797268d32830a              # double 2.948804
	.quad	0x40207163baba7b91              # double 8.2214639999999992
	.quad	0x4020c3914f483cb0              # double 8.3819680000000005
	.quad	0x400475350092ccf7              # double 2.5572300000000001
	.quad	0x40129db6e503fb37              # double 4.6540179999999998
	.quad	0x40056c1871e6cd29              # double 2.677781
	.quad	0x4018cb4a2339c0ec              # double 6.1985250000000001
	.quad	0x3fe7b18548a9bcfd              # double 0.74041999999999997
	.quad	0x4019608c3f3e0371              # double 6.3442850000000002
	.quad	0x4022fb83f0bae89f              # double 9.4912410000000004
	.quad	0x401156351deefe50              # double 4.334187
	.quad	0x401e54545846e8f3              # double 7.5823530000000003
	.quad	0x40091940789613d3              # double 3.13733
	.quad	0x3ff4a1ab4b72c519              # double 1.2894699999999999
	.quad	0x402204426351def0              # double 9.0083190000000002
	.quad	0x4000f92b7fe08af0              # double 2.1216650000000001
	.quad	0x3fc9ae4f3343fa2b              # double 0.200632
	.quad	0x400cdbd1676640a7              # double 3.6073330000000001
	.quad	0x400e5bfb58d1526e              # double 3.7949130000000002
	.quad	0x4010b0b9991361dd              # double 4.1725830000000004
	.quad	0x4015596b3354c122              # double 5.3373229999999996
	.quad	0x4002109bf9c62a1b              # double 2.2581099999999998
	.quad	0x3ffa3c829cfdd228              # double 1.6397729999999999
	.quad	0x3ff8d106ee30caa3              # double 1.551032
	.quad	0x401eefc1df3300de              # double 7.7341379999999997
	.quad	0x3ff0facb4289118c              # double 1.061229
	.quad	0x40208ef1fddebd90              # double 8.2791899999999998
	.quad	0x4022e56eac860568              # double 9.4481099999999997
	.quad	0x400ba6362a5e785b              # double 3.4561579999999998
	.quad	0x4000f6bd2b6f1993              # double 2.1204779999999999
	.quad	0x40210f03d145d851              # double 8.5293259999999993
	.quad	0x3fe1083558a76102              # double 0.53225199999999995
	.quad	0x4020020c6b484d77              # double 8.0040010000000006
	.quad	0x40146ae21101b003              # double 5.1043779999999996
	.quad	0x3fed8b1572580c31              # double 0.92322800000000005
	.quad	0x3fc307075b3e1438              # double 0.14865200000000001
	.quad	0x401eb612c6ac215c              # double 7.6778060000000004
	.quad	0x401d9123c42a66dc              # double 7.3917380000000001
	.quad	0x3fd9a92e62131a8f              # double 0.400951
	.quad	0x40062ecd07852f7f              # double 2.7728519999999999
	.quad	0x4023d6bf22c01e69              # double 9.9194270000000006
	.quad	0x40043464dc22ab26              # double 2.5255830000000001
	.quad	0x3fdd49b62c77574f              # double 0.45762399999999998
	.quad	0x40036a26e5471716              # double 2.4268320000000001
	.quad	0x401323a7546d3f9e              # double 4.7848179999999996
	.quad	0x3ff84520d130df9c              # double 1.516877
	.quad	0x4006672756861e93              # double 2.8003680000000002
	.quad	0x401dfd3e920c069e              # double 7.4973089999999996
	.quad	0x402350d08919ef95              # double 9.6578409999999994
	.quad	0x4016f4028e4fb97c              # double 5.7382910000000003
	.quad	0x400a78ac9f2fdb90              # double 3.3089230000000001
	.quad	0x401885b78cc9a77e              # double 6.1305829999999997
	.quad	0x4013718c9fb6134d              # double 4.8608880000000001
	.quad	0x402295ba0a526959              # double 9.2924349999999993
	.quad	0x401b15d5b24e9c45              # double 6.7713229999999998
	.quad	0x3fc038da3c21187e              # double 0.12673499999999999
	.quad	0x4021c3f2b239a390              # double 8.8827110000000005
	.quad	0x3ff0762845996745              # double 1.0288470000000001
	.quad	0x4002eaa9f7b5aea3              # double 2.364582
	.quad	0x3fd4668c26139000              # double 0.31875900000000001
	.quad	0x4021be16b54e2b06              # double 8.8712669999999996
	.quad	0x3ffc1b1209edbf8c              # double 1.7566090000000001
	.quad	0x3ffca97aeddce7cd              # double 1.791377
	.quad	0x401e4e4e69f05ea2              # double 7.5764709999999997
	.quad	0x3ff71f6ec5b078d9              # double 1.445174
	.quad	0x401771487768166a              # double 5.8606280000000002
	.quad	0x4021bc78a6dacabc              # double 8.8681079999999994
	.quad	0x3fdd785b5b70691f              # double 0.46047100000000002
	.quad	0x4000beae5bc87db3              # double 2.0931060000000001
	.quad	0x4022a64f54d1e96c              # double 9.3248239999999995
	.quad	0x401931dc93ea2d30              # double 6.2986930000000001
	.quad	0x40162e75360d0247              # double 5.545369
	.quad	0x3fe296659d12cade              # double 0.58085900000000001
	.quad	0x401bbbe121ee6751              # double 6.9334759999999998
	.quad	0x3fe372da122fad6d              # double 0.60777000000000003
	.quad	0x401b0a8c9b845565              # double 6.7603020000000003
	.quad	0x3fe67a7a85015c21              # double 0.70245100000000005
	.quad	0x401f3044ae85b9e9              # double 7.7971370000000002
	.quad	0x3feeb0b5aa715832              # double 0.95907100000000001
	.quad	0x40212c02f2f98740              # double 8.58596
	.quad	0x40002ac6cdaf4adc              # double 2.0208870000000001
	.quad	0x3ff3c225742dcf46              # double 1.234899
	.quad	0x3ff8bf2d3c792d13              # double 1.5466740000000001
	.quad	0x401cc10f51ac9afe              # double 7.1885349999999999
	.quad	0x3ff0410e8858ff76              # double 1.0158830000000001
	.quad	0x4010431337eb28d8              # double 4.0655029999999996
	.quad	0x4020975019f3c70d              # double 8.2955330000000007
	.quad	0x401f7dd616f86a0a              # double 7.8728870000000004
	.quad	0x4023a1c53f39d1b3              # double 9.8159580000000001
	.quad	0x401205a78f25a251              # double 4.505522
	.quad	0x40230807fed20297              # double 9.5156860000000005
	.quad	0x400b321ff2e48e8a              # double 3.3994749999999998
	.quad	0x40231db20b8066c3              # double 9.5579990000000005
	.quad	0x3fe27e62dc6e2a80              # double 0.577928
	.quad	0x401df32c625e99e9              # double 7.4874739999999997
	.quad	0x3fe76e04c0592104              # double 0.73218000000000005
	.quad	0x4022fc6e08f21709              # double 9.4930269999999996
	.quad	0x3fe01f79420b3d4b              # double 0.50384200000000001
	.quad	0x3fda97204295a6c6              # double 0.41547400000000001
	.quad	0x4016f14ad362e903              # double 5.7356369999999997
	.quad	0x401d66fe2e6ea854              # double 7.3505789999999998
	.quad	0x401177cbb3c81909              # double 4.3669880000000001
	.quad	0x3fed1dfdac68a937              # double 0.90991100000000003
	.quad	0x4000e581cf7878b8              # double 2.1120640000000002
	.quad	0x401bdc28f5c28f5c              # double 6.9649999999999999
	.quad	0x40219a558ea7ce10              # double 8.8014340000000004
	.quad	0x401f410cb295e9e2              # double 7.8135250000000003
	.quad	0x401487bb73083559              # double 5.1325510000000003
	.quad	0x401ea9752977c88e              # double 7.6654859999999996
	.quad	0x401481c64ba94bbe              # double 5.1267329999999998
	.quad	0x400c90c2c5e2cdc0              # double 3.570684
	.quad	0x40218c9081c2e33f              # double 8.77454
	.quad	0x4005844ae85b9e8c              # double 2.6895959999999999
	.quad	0x4009e5015c209247              # double 3.2368190000000001
	.quad	0x4021d796e158750c              # double 8.9210729999999998
	.quad	0x4018bc81d3aa36a0              # double 6.1840890000000002
	.quad	0x401d68919ef954eb              # double 7.3521179999999999
	.quad	0x401fdd10b1feeb2d              # double 7.9658839999999999
	.quad	0x401115e5aff2a173              # double 4.2713840000000003
	.quad	0x4022868cac4b4d05              # double 9.2627919999999992
	.quad	0x3ff87ec679cc74b8              # double 1.530951
	.quad	0x401bad2135daad60              # double 6.9190719999999999
	.quad	0x40146842b734b513              # double 5.1018169999999996
	.quad	0x4019413c68661ae7              # double 6.313707
	.quad	0x400d45e1c15097c8              # double 3.659122
	.quad	0x3ffefc504816f007              # double 1.9366000000000001
	.quad	0x3ff1167a95c853c1              # double 1.0679879999999999
	.quad	0x402266f47b677f6b              # double 9.2010839999999998
	.quad	0x401e6fe4bcad9ad8              # double 7.6092709999999996
	.quad	0x400ac99e0e73604a              # double 3.348446
	.quad	0x401fd288ce703afb              # double 7.9555999999999995
	.quad	0x3f7a88ace24bba13              # double 0.0064780000000000003
	.quad	0x4022c417ebaf1023              # double 9.3829949999999993
	.quad	0x4009aecbfb15b574              # double 3.21035
	.quad	0x400d7be33acd5b68              # double 3.685492
	.quad	0x4010c6a593a2df93              # double 4.1939909999999996
	.quad	0x401c6070fbeb9e49              # double 7.0941809999999998
	.quad	0x401d9ea1c68ec52a              # double 7.4049139999999998
	.quad	0x40009440af1cb89d              # double 2.0723889999999998
	.quad	0x4021f71a5ca29846              # double 8.9826230000000002
	.quad	0x4010b42352eb5f5f              # double 4.175916
	.quad	0x401c091cd1c7de51              # double 7.0088990000000004
	.quad	0x3ff0ef09d8c6d613              # double 1.058359
	.quad	0x4010244028e4fb98              # double 4.0354010000000002
	.quad	0x3fb215ca6ca03c4b              # double 0.070644999999999999
	.quad	0x401c6ad538ac18f8              # double 7.1043289999999999
	.quad	0x400095f45e0b4e12              # double 2.0732200000000001
	.quad	0x4001a682b6284599              # double 2.2063039999999998
	.quad	0x4014203361565c2d              # double 5.0314459999999999
	.quad	0x400871e29b6b2af1              # double 3.0556079999999999
	.quad	0x401f8e4ffc9795b3              # double 7.8889769999999996
	.quad	0x40144e7d9988d2a2              # double 5.076651
	.quad	0x4020de2b4959e625              # double 8.4339239999999993
	.quad	0x40194532e7b3d8e0              # double 6.317577
	.quad	0x401df07b784662bb              # double 7.4848460000000001
	.quad	0x40204e770bd017db              # double 8.1532520000000002
	.quad	0x3ffcc29cfdd22856              # double 1.7975129999999999
	.quad	0x40226c4bf4cb1898              # double 9.2115170000000006
	.quad	0x3ff4e40639d5e4a4              # double 1.3056700000000001
	.quad	0x402240387df5cf25              # double 9.1254310000000007
	.quad	0x40016fbf401c4fc2              # double 2.1795640000000001
	.quad	0x3ff41e26916440f2              # double 1.257361
	.quad	0x40009d1ed9dfdac7              # double 2.0767190000000002
	.quad	0x400db5a8deb0fadf              # double 3.7137009999999999
	.quad	0x4021c1c864883fd5              # double 8.878482
	.quad	0x4017d3aeab7995ee              # double 5.9567209999999999
	.quad	0x4011343cc07aaef3              # double 4.3010130000000002
	.quad	0x4021d8151a437825              # double 8.9220360000000003
	.quad	0x400bb4024b33daf9              # double 3.4628950000000001
	.quad	0x3fe11a7e30878748              # double 0.53448399999999996
	.quad	0x401b50cb6c7a7c9e              # double 6.8289010000000001
	.quad	0x3ffb431df761cbcd              # double 1.703886
	.quad	0x4007a8826aa8eb46              # double 2.9572799999999999
	.quad	0x4010f5a07b352a84              # double 4.2398699999999998
	.quad	0x40223681a9b8cb8e              # double 9.1064579999999999
	.quad	0x400d5ea140570825              # double 3.6712060000000002
	.quad	0x401de380cb6c7a7d              # double 7.4721710000000003
	.quad	0x4008d6f21f6cacd2              # double 3.1049540000000002
	.quad	0x3ff44bbb1f255f35              # double 1.268489
	.quad	0x40160f294dd72368              # double 5.5148060000000001
	.quad	0x401f5ef9db22d0e5              # double 7.8427499999999996
	.quad	0x4020c012dfd694cd              # double 8.3751440000000006
	.quad	0x4011460a63305101              # double 4.3183990000000003
	.quad	0x3fcbf1e8e6080735              # double 0.21831999999999999
	.quad	0x401f534938583622              # double 7.831334
	.quad	0x4001abe1eb4202da              # double 2.2089270000000001
	.quad	0x40112e496ededaec              # double 4.2952019999999997
	.quad	0x4014fe581cf7878b              # double 5.2483829999999996
	.quad	0x4018a25460aa64c3              # double 6.158525
	.quad	0x400c23e29307af21              # double 3.517522
	.quad	0x400b1b549f94855e              # double 3.3883450000000002
	.quad	0x3fed05c24c404a73              # double 0.90695300000000001
	.quad	0x3ffa2684cf0739b0              # double 1.634404
	.quad	0x401ab0578e5c4eb5              # double 6.6722089999999996
	.quad	0x3ffe7fcb923a29c7              # double 1.9061999999999999
	.quad	0x3fed81754b05b7d0              # double 0.92205300000000001
	.quad	0x400021ee675147f1              # double 2.0165679999999999
	.quad	0x3fe189c3ce2089e3              # double 0.54806699999999997
	.quad	0x401fe562e09fe868              # double 7.9740099999999998
	.quad	0x4020b2d03d9a9542              # double 8.3492449999999998
	.quad	0x401a0f9acffa7eb7              # double 6.5152390000000002
	.quad	0x401fbdb2702a3487              # double 7.935251
	.quad	0x3f90385c67dfe32a              # double 0.01584
	.quad	0x40158d288ce703b0              # double 5.3878500000000003
	.quad	0x401b0dae3e6c4c59              # double 6.7633599999999996
	.quad	0x402293419e300150              # double 9.2876100000000008
	.quad	0x401a3c17a89331a1              # double 6.5586840000000004
	.quad	0x400d4d3ae685db77              # double 3.6627100000000001
	.quad	0x3fe251b71758e219              # double 0.57247499999999996
	.quad	0x4018f55757d5a9eb              # double 6.2395909999999999
	.quad	0x4017db6ae7d566cf              # double 5.9642749999999998
	.quad	0x402123ff04577d95              # double 8.5703049999999994
	.quad	0x402235e02ea960b7              # double 9.105226
	.quad	0x40083911cf355cd9              # double 3.0278659999999999
	.quad	0x40223991148fd9fd              # double 9.1124349999999996
	.quad	0x3fd6668c26139000              # double 0.35000900000000001
	.quad	0x401e77253da72a7c              # double 7.6163530000000002
	.quad	0x4022f93f077ccc03              # double 9.4868089999999991
	.quad	0x400f0e9707182236              # double 3.8821240000000001
	.quad	0x3fd2ca3a4b5568e8              # double 0.29359299999999999
	.quad	0x3ffccae21101b003              # double 1.7995319999999999
	.quad	0x40003e89a88ace25              # double 2.0305360000000001
	.quad	0x401148288051c9f7              # double 4.3204669999999998
	.quad	0x401002ffd1dcd706              # double 4.002929
	.quad	0x3ff16ee2003ab863              # double 1.0895710000000001
	.quad	0x401a5a6c1a048e04              # double 6.5883029999999998
	.quad	0x400ff2923e5b8562              # double 3.9934430000000001
	.quad	0x402206455eaee200              # double 9.0122479999999995
	.quad	0x40196b9ae0c17657              # double 6.3550829999999996
	.quad	0x4015019934efcbd5              # double 5.2515609999999997
	.quad	0x4001abaf102363b2              # double 2.2088299999999998
	.quad	0x401f29dc725c3dee              # double 7.7908799999999996
	.quad	0x40005eb399f5dfec              # double 2.0462410000000002
	.quad	0x4016e84c271fff7a              # double 5.7268530000000002
	.quad	0x401628882f0e0a85              # double 5.5395820000000002
	.quad	0x401e36ca89fc6da4              # double 7.5535069999999997
	.quad	0x401903f7ced91687              # double 6.2538749999999999
	.quad	0x401c620c069e7fb2              # double 7.0957489999999996
	.quad	0x4021bdffa3b9ae0c              # double 8.8710909999999998
	.quad	0x4022d564b662fdfc              # double 9.4167839999999998
	.quad	0x401f860fa15db339              # double 7.8809189999999995
	.quad	0x40087ee02a77a2cf              # double 3.0619510000000001
	.quad	0x3ffe38b9baa1511e              # double 1.888849
	.quad	0x402001ce4a7b4e55              # double 8.0035270000000001
	.quad	0x401c98472c0e7bc4              # double 7.1487090000000002
	.quad	0x4001d0d6b228dc98              # double 2.226972
	.quad	0x3ff74d8ec95bff04              # double 1.4564349999999999
	.quad	0x401b7d206c8711d8              # double 6.8721940000000004
	.quad	0x3fed5bc664d3bf2f              # double 0.91745299999999996
	.quad	0x40215444e0daa0cb              # double 8.6645880000000002
	.quad	0x40031f583a53b8e5              # double 2.3903050000000001
	.quad	0x40177c2d2780778a              # double 5.8712660000000003
	.quad	0x4016d40b34e7685a              # double 5.7070740000000004
	.quad	0x400399b6f5caf2d8              # double 2.450056
	.quad	0x4016ff3a57eaa2a1              # double 5.7492460000000003
	.quad	0x401b6dfa43fe5c92              # double 6.8574000000000002
	.quad	0x4023935cbff47736              # double 9.7878170000000004
	.quad	0x400522a8869c66d3              # double 2.6419229999999998
	.quad	0x40139d2bb23571d2              # double 4.9034870000000002
	.quad	0x400a4b9991361dc9              # double 3.2869139999999999
	.quad	0x4016634df04ddb55              # double 5.5969769999999999
	.quad	0x401358cf7caa758a              # double 4.8367290000000001
	.quad	0x4004e86bdf4c2b52              # double 2.6134870000000001
	.quad	0x40220dc4eb56fb8f              # double 9.0268929999999994
	.quad	0x400e7b634dad31fd              # double 3.8102480000000001
	.quad	0x3fe5d97b30f8c650              # double 0.68279800000000002
	.quad	0x401f75675579af19              # double 7.8646520000000004
	.quad	0x3fe2b57a355043e5              # double 0.58465299999999998
	.quad	0x4017461cffeb074a              # double 5.8184699999999996
	.quad	0x40133746cb966be8              # double 4.8039810000000003
	.quad	0x40180837f7be121f              # double 6.0080260000000001
	.quad	0x40121dcb1465e892              # double 4.5290949999999999
	.quad	0x401b57c5692b3cc5              # double 6.8357140000000003
	.quad	0x3fd8c6da4484944f              # double 0.38713700000000001
	.quad	0x401e0cd39da16617              # double 7.5125260000000002
	.quad	0x3fc8f51ac9afe1da              # double 0.19497999999999999
	.quad	0x402057d566cf41f2              # double 8.1715499999999999
	.quad	0x4014339713ad5bee              # double 5.0503809999999998
	.quad	0x4022e666ec9e236c              # double 9.4500039999999998
	.quad	0x40208a52ac753e70              # double 8.2701619999999991
	.quad	0x40183eaee2003ab8              # double 6.0612139999999997
	.quad	0x3ff81c4007570c56              # double 1.5068969999999999
	.quad	0x40228653c9abb01d              # double 9.2623580000000008
	.quad	0x3fc6ff1950331e3a              # double 0.17965999999999999
	.quad	0x4015849385836220              # double 5.3794690000000003
	.quad	0x4015958f7121ab4b              # double 5.3960549999999996
	.quad	0x400eb6494d50ebab              # double 3.8390070000000001
	.quad	0x402007d6b65a9a80              # double 8.0153099999999995
	.quad	0x401015b18548a9bd              # double 4.021185
	.quad	0x400aafa58f7121ab              # double 3.3357649999999999
	.quad	0x3ffde10be9424e59              # double 1.867443
	.quad	0x40161433d6c72192              # double 5.5197289999999999
	.quad	0x40154314013ec461              # double 5.3155060000000001
	.quad	0x3ff15d9b1b79d90a              # double 1.085353
	.quad	0x402201a1b9f98b72              # double 9.0031870000000005
	.quad	0x400ff4bd76ee73e7              # double 3.9945020000000002
	.quad	0x401ca11f926c7eae              # double 7.1573469999999997
	.quad	0x3fea6a1405708249              # double 0.82544899999999999
	.quad	0x4023152da98676a7              # double 9.5413639999999997
	.quad	0x3ff5e1682f944242              # double 1.3675310000000001
	.quad	0x3fdc75818c5c9a35              # double 0.44467200000000001
	.quad	0x4021400c308feac4              # double 8.6250929999999996
	.quad	0x4023f0583621fafd              # double 9.9694230000000008
	.quad	0x40012ec4a4095f24              # double 2.1478359999999999
	.quad	0x3ff1f56861e92924              # double 1.122414
	.quad	0x401643ba775fb2ee              # double 5.566141
	.quad	0x40223c8216c61523              # double 9.1181800000000006
	.quad	0x4018067903211cb0              # double 6.0063209999999998
	.quad	0x4021eaf5771001d6              # double 8.9589040000000004
	.quad	0x4015a4c51116a8b9              # double 5.4109080000000001
	.quad	0x4006ceb9a176ddad              # double 2.85094
	.quad	0x3fe4180b242070b9              # double 0.62793500000000002
	.quad	0x400527a398201cd6              # double 2.644355
	.size	.L__constant_4499xf64, 35992

	.section	".note.GNU-stack","",@progbits
