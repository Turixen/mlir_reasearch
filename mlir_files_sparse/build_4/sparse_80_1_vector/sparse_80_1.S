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
	.quad	0x412fae08f6f8f041              # double 1038084.482368
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
	.quad	25                              # 0x19
	.quad	51                              # 0x33
	.quad	74                              # 0x4a
	.quad	90                              # 0x5a
	.quad	107                             # 0x6b
	.quad	133                             # 0x85
	.quad	155                             # 0x9b
	.quad	173                             # 0xad
	.quad	191                             # 0xbf
	.quad	215                             # 0xd7
	.quad	245                             # 0xf5
	.quad	262                             # 0x106
	.quad	275                             # 0x113
	.quad	297                             # 0x129
	.quad	317                             # 0x13d
	.quad	337                             # 0x151
	.quad	355                             # 0x163
	.quad	370                             # 0x172
	.quad	382                             # 0x17e
	.quad	405                             # 0x195
	.quad	426                             # 0x1aa
	.quad	445                             # 0x1bd
	.quad	459                             # 0x1cb
	.quad	488                             # 0x1e8
	.quad	507                             # 0x1fb
	.quad	528                             # 0x210
	.quad	548                             # 0x224
	.quad	566                             # 0x236
	.quad	586                             # 0x24a
	.quad	603                             # 0x25b
	.quad	619                             # 0x26b
	.quad	639                             # 0x27f
	.quad	666                             # 0x29a
	.quad	688                             # 0x2b0
	.quad	703                             # 0x2bf
	.quad	724                             # 0x2d4
	.quad	743                             # 0x2e7
	.quad	760                             # 0x2f8
	.quad	777                             # 0x309
	.quad	800                             # 0x320
	.quad	821                             # 0x335
	.quad	836                             # 0x344
	.quad	853                             # 0x355
	.quad	874                             # 0x36a
	.quad	891                             # 0x37b
	.quad	915                             # 0x393
	.quad	935                             # 0x3a7
	.quad	955                             # 0x3bb
	.quad	971                             # 0x3cb
	.quad	1000                            # 0x3e8
	.quad	1022                            # 0x3fe
	.quad	1044                            # 0x414
	.quad	1060                            # 0x424
	.quad	1081                            # 0x439
	.quad	1093                            # 0x445
	.quad	1118                            # 0x45e
	.quad	1143                            # 0x477
	.quad	1159                            # 0x487
	.quad	1181                            # 0x49d
	.quad	1199                            # 0x4af
	.quad	1219                            # 0x4c3
	.quad	1240                            # 0x4d8
	.quad	1260                            # 0x4ec
	.quad	1282                            # 0x502
	.quad	1306                            # 0x51a
	.quad	1331                            # 0x533
	.quad	1357                            # 0x54d
	.quad	1377                            # 0x561
	.quad	1396                            # 0x574
	.quad	1413                            # 0x585
	.quad	1432                            # 0x598
	.quad	1447                            # 0x5a7
	.quad	1466                            # 0x5ba
	.quad	1485                            # 0x5cd
	.quad	1512                            # 0x5e8
	.quad	1531                            # 0x5fb
	.quad	1540                            # 0x604
	.quad	1561                            # 0x619
	.quad	1578                            # 0x62a
	.quad	1596                            # 0x63c
	.quad	1608                            # 0x648
	.quad	1625                            # 0x659
	.quad	1648                            # 0x670
	.quad	1668                            # 0x684
	.quad	1694                            # 0x69e
	.quad	1717                            # 0x6b5
	.quad	1731                            # 0x6c3
	.quad	1752                            # 0x6d8
	.quad	1767                            # 0x6e7
	.quad	1787                            # 0x6fb
	.quad	1805                            # 0x70d
	.quad	1828                            # 0x724
	.quad	1848                            # 0x738
	.quad	1871                            # 0x74f
	.quad	1896                            # 0x768
	.quad	1912                            # 0x778
	.quad	1932                            # 0x78c
	.quad	1953                            # 0x7a1
	.quad	1979                            # 0x7bb
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	27                              # 0x1b
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	33                              # 0x21
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	1                               # 0x1
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	97                              # 0x61
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	40                              # 0x28
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	3                               # 0x3
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.size	.L__constant_1999xindex, 15992

	.type	.L__constant_1999xf64,@object   # @__constant_1999xf64
	.p2align	6, 0x0
.L__constant_1999xf64:
	.quad	0x4007458eeae9ee46              # double 2.9089640000000001
	.quad	0x3fefbd017dae8188              # double 0.99182199999999998
	.quad	0x401f48eef1bac2df              # double 7.8212239999999999
	.quad	0x401c1ba5a038194c              # double 7.026999
	.quad	0x401177bd48cb4aed              # double 4.3669330000000004
	.quad	0x40158c9752977c89              # double 5.3872960000000001
	.quad	0x400aa81cb46bacf7              # double 3.3320859999999999
	.quad	0x4014cc0a8d21bc12              # double 5.1992589999999996
	.quad	0x4000391b3f20a73f              # double 2.0278839999999998
	.quad	0x3fe0d082cf52b90a              # double 0.52545299999999995
	.quad	0x3fe58ac9f2fdb8fe              # double 0.67319200000000001
	.quad	0x401a97720c8cd63d              # double 6.6478960000000002
	.quad	0x4022f82a77a2cecd              # double 9.4846990000000008
	.quad	0x400ae746455eaee2              # double 3.362927
	.quad	0x40133127f5e84f09              # double 4.7980039999999997
	.quad	0x400062d6a9c560c8              # double 2.0482610000000001
	.quad	0x3fed5edaec4a4096              # double 0.91782900000000001
	.quad	0x4018d11b1d92b7fe              # double 6.204205
	.quad	0x401da0589acbc8c1              # double 7.4065880000000002
	.quad	0x4013ae679463cfb3              # double 4.9203169999999998
	.quad	0x402088bf3bea91da              # double 8.2670840000000005
	.quad	0x402051df3300de4c              # double 8.1599059999999994
	.quad	0x40057336deb95e5b              # double 2.681257
	.quad	0x400c602ea960b6fa              # double 3.546964
	.quad	0x40203b9b024f6599              # double 8.1164170000000002
	.quad	0x3fec3dd334c5da6a              # double 0.88254699999999997
	.quad	0x401700fecdd0d8cb              # double 5.750972
	.quad	0x40139549f94855da              # double 4.8957899999999999
	.quad	0x40177be8bc169c24              # double 5.8710050000000003
	.quad	0x4017bf5caf2d7f95              # double 5.936877
	.quad	0x3ffe4c61d8622c45              # double 1.893648
	.quad	0x40217b4a66559f6f              # double 8.7408020000000004
	.quad	0x4021586876e1dead              # double 8.6726720000000004
	.quad	0x4007f7f950b955f8              # double 2.9960810000000002
	.quad	0x4022f0aa433508f6              # double 9.4700489999999995
	.quad	0x401fea1e3eaf6838              # double 7.978631
	.quad	0x40121a7e73a365cb              # double 4.5258729999999998
	.quad	0x400b9b50f40e5a36              # double 3.4508380000000001
	.quad	0x40203d974e65bea1              # double 8.1202950000000005
	.quad	0x4022fc1f85d744f6              # double 9.4924280000000003
	.quad	0x400d5b7c7820a30e              # double 3.6696710000000001
	.quad	0x40221456d5cfaace              # double 9.0397250000000007
	.quad	0x4020d577531db446              # double 8.4169260000000001
	.quad	0x400db82a9930be0e              # double 3.714925
	.quad	0x4021d6db2f661f19              # double 8.9196410000000004
	.quad	0x401bf55432873bc9              # double 6.989579
	.quad	0x40184ed634549b63              # double 6.0769890000000002
	.quad	0x401ba177ea1c68ec              # double 6.9076839999999997
	.quad	0x400eb1a1986b9c30              # double 3.8367339999999999
	.quad	0x4023199d0203e63f              # double 9.5500260000000007
	.quad	0x401159e518f3eccc              # double 4.3377879999999998
	.quad	0x3ffc990c0ad03d9b              # double 1.7873650000000001
	.quad	0x401b932a8c9b8455              # double 6.8937169999999997
	.quad	0x40135d21ff2e48e9              # double 4.8409500000000003
	.quad	0x4013cd04a2fcefaa              # double 4.9502129999999998
	.quad	0x40211d464dc22ab2              # double 8.5571769999999994
	.quad	0x4015cb220791c4b9              # double 5.448372
	.quad	0x3ff8eb484d76ab58              # double 1.557442
	.quad	0x40101caeea63b689              # double 4.0280110000000002
	.quad	0x4017e90d173fb7a6              # double 5.977589
	.quad	0x4017344e50c5eb31              # double 5.8010799999999998
	.quad	0x400f5d6f112fd32c              # double 3.9206219999999998
	.quad	0x400b19a62ed35222              # double 3.387524
	.quad	0x3fee463497b7414a              # double 0.94606999999999997
	.quad	0x3fe82b25b317efe1              # double 0.75526700000000002
	.quad	0x40220d1c3ac929aa              # double 9.0256059999999998
	.quad	0x3fff78cb8e086bdf              # double 1.9669909999999999
	.quad	0x401a9fd32c625e9a              # double 6.6560790000000001
	.quad	0x3fa264e48626f60e              # double 0.035926
	.quad	0x4015746c332f0175              # double 5.3636939999999997
	.quad	0x40159eba6aca7935              # double 5.4050079999999996
	.quad	0x3fe830ced4e4c943              # double 0.75595800000000002
	.quad	0x4018666a98244e94              # double 6.1000160000000001
	.quad	0x401e79f05ea24cc7              # double 7.6190810000000004
	.quad	0x4013ed67ba237cdd              # double 4.9818410000000002
	.quad	0x4012e6fc9bc77143              # double 4.7255729999999998
	.quad	0x401fefe4bcad9ad8              # double 7.9842709999999996
	.quad	0x4015a923e5b8561d              # double 5.4151759999999998
	.quad	0x401465df6555c52e              # double 5.0994849999999996
	.quad	0x400611e8e6080735              # double 2.7587449999999998
	.quad	0x4014f7faa044ae86              # double 5.2421670000000002
	.quad	0x4016b8fb86f47b67              # double 5.6806469999999996
	.quad	0x40007c0fcb4f1e4b              # double 2.0605769999999999
	.quad	0x40208d19157abb88              # double 8.275582
	.quad	0x4020f74fb549f948              # double 8.4830299999999994
	.quad	0x40239574b407032a              # double 9.7919060000000009
	.quad	0x3fe9de8d5410f94d              # double 0.80841700000000005
	.quad	0x401ba808c8259e1f              # double 6.9140959999999998
	.quad	0x401d80b1feeb2d0a              # double 7.3756789999999999
	.quad	0x40161de3fbbd7b20              # double 5.5291899999999998
	.quad	0x4015da43bb40b34e              # double 5.4631489999999996
	.quad	0x400877e77d523b36              # double 3.0585469999999999
	.quad	0x4020d5f28848387e              # double 8.4178660000000001
	.quad	0x401497264a16a487              # double 5.1476069999999998
	.quad	0x400c11593e5fb720              # double 3.5084710000000001
	.quad	0x4016c5c0767d34df              # double 5.693117
	.quad	0x4021428a1dfb938a              # double 8.6299600000000005
	.quad	0x400b2c64fdb09a67              # double 3.3966769999999999
	.quad	0x4000f496aad1d042              # double 2.1194280000000001
	.quad	0x40217f83be6601bd              # double 8.7490520000000007
	.quad	0x4002b3e1c9b41398              # double 2.3378329999999998
	.quad	0x40028df612407464              # double 2.3193169999999999
	.quad	0x401b6e84f09528f2              # double 6.8579290000000004
	.quad	0x4008e690de093533              # double 3.112581
	.quad	0x400c939e279dd3bb              # double 3.572079
	.quad	0x401a7202107b7846              # double 6.6113359999999997
	.quad	0x3ff198bb4d48882f              # double 1.099788
	.quad	0x402220ea7ce0fc2f              # double 9.0642890000000005
	.quad	0x4001d3e681a9b8cc              # double 2.2284670000000002
	.quad	0x401732e7f6f4be83              # double 5.7997129999999997
	.quad	0x4005e12f09d8c6d6              # double 2.734953
	.quad	0x4013ef2495e17e35              # double 4.9835380000000002
	.quad	0x401225b5b70691ea              # double 4.5368259999999996
	.quad	0x40212ab0ea18372e              # double 8.5833809999999993
	.quad	0x401b109fe86833c6              # double 6.766235
	.quad	0x3ff540abf76a2f49              # double 1.3282890000000001
	.quad	0x4015be6eeb702603              # double 5.4359700000000002
	.quad	0x3fe52502eec7c958              # double 0.66076800000000002
	.quad	0x4022495db3397dd0              # double 9.1432929999999999
	.quad	0x401b92170931012a              # double 6.8926660000000002
	.quad	0x3ff1c090b417ca21              # double 1.109513
	.quad	0x401df1df3300de4c              # double 7.4862029999999997
	.quad	0x401d44a7f8012dfd              # double 7.3170469999999996
	.quad	0x3ff5a31a4bdba0a5              # double 1.35232
	.quad	0x40214728848387df              # double 8.6389809999999994
	.quad	0x4017c64e48626f61              # double 5.9436580000000001
	.quad	0x400b5dc0db2702a3              # double 3.4207779999999999
	.quad	0x4021d7c5ac471b48              # double 8.9214300000000009
	.quad	0x3fe869a4df47f994              # double 0.76289600000000001
	.quad	0x4019f3996fa82e88              # double 6.4878900000000002
	.quad	0x4021d54280ae1049              # double 8.9165229999999998
	.quad	0x401714f4c6e6d9be              # double 5.7704649999999997
	.quad	0x402202107b784663              # double 9.0040320000000005
	.quad	0x40200ed58c8eef1c              # double 8.0289730000000005
	.quad	0x3ff51709310129cc              # double 1.3181240000000001
	.quad	0x4020806013660e52              # double 8.2507330000000003
	.quad	0x40233571d1d4738a              # double 9.6043839999999996
	.quad	0x400dc72a7bd48cb5              # double 3.7222490000000001
	.quad	0x3ff971f79420b3d5              # double 1.5903240000000001
	.quad	0x40225abd5dc40075              # double 9.1772259999999992
	.quad	0x401fb9be8ff327aa              # double 7.9313909999999996
	.quad	0x4012bea2d2fe3f36              # double 4.6861680000000003
	.quad	0x4002c0d887ebf22c              # double 2.344163
	.quad	0x3fc4b723ee1bd1ee              # double 0.16183900000000001
	.quad	0x401640f238972043              # double 5.5634240000000004
	.quad	0x4023b4a4d2b2bfdb              # double 9.8528199999999994
	.quad	0x40089651b0ccbc06              # double 3.0733980000000001
	.quad	0x3fe37f7be121ee67              # double 0.60931199999999996
	.quad	0x3ffe56323bbc6eb1              # double 1.8960440000000001
	.quad	0x4004b30f8c64fdb1              # double 2.5874320000000002
	.quad	0x3fdc79207d4e0978              # double 0.44489299999999998
	.quad	0x40004f48c2e770bd              # double 2.038713
	.quad	0x3faa441fea8112ba              # double 0.051300999999999999
	.quad	0x402281656eefa1e4              # double 9.2527270000000001
	.quad	0x40165e0ded288ce7              # double 5.59185
	.quad	0x3fef921682f94424              # double 0.98658299999999998
	.quad	0x40146f9a8cdea034              # double 5.1089880000000001
	.quad	0x401b9fcdee34fc61              # double 6.9060589999999999
	.quad	0x4015aaa64c2f837b              # double 5.4166499999999997
	.quad	0x401ff077036c9c0b              # double 7.9848290000000003
	.quad	0x402209fb3fa6defc              # double 9.0194949999999991
	.quad	0x3ffdce8a71de69ad              # double 1.8629249999999999
	.quad	0x400344f765fd8adb              # double 2.4086750000000001
	.quad	0x401d112cadddf43c              # double 7.2667719999999996
	.quad	0x40122387160956c1              # double 4.5346950000000001
	.quad	0x40238ad7d7c2ca15              # double 9.7711780000000008
	.quad	0x400305269595feda              # double 2.3775149999999998
	.quad	0x4019bf3eccc46951              # double 6.436763
	.quad	0x3ffa51d68c692f6f              # double 1.6449800000000001
	.quad	0x402167f8012dfd69              # double 8.7030639999999995
	.quad	0x401ef2c98e53eb3a              # double 7.7370970000000003
	.quad	0x3fc92fb19e731d2e              # double 0.196768
	.quad	0x4023886e3b46fdeb              # double 9.7664659999999994
	.quad	0x401d4e215336deb9              # double 7.3262989999999997
	.quad	0x4004bf00abf76a2f              # double 2.5932629999999999
	.quad	0x40052c5b8dc55001              # double 2.6466590000000001
	.quad	0x4005cbf0995aaf79              # double 2.72458
	.quad	0x400d48405b39e27a              # double 3.6602790000000001
	.quad	0x3fcbb139c94f69cb              # double 0.21634600000000001
	.quad	0x402309bfbdf090f7              # double 9.5190409999999996
	.quad	0x3fef1fb6134ce3de              # double 0.97262099999999996
	.quad	0x4021af5ddd2ae8e2              # double 8.8425130000000003
	.quad	0x3fddef5a964e8b7e              # double 0.46773399999999998
	.quad	0x400709bcfd4bf099              # double 2.8797549999999998
	.quad	0x400ba4113c68661b              # double 3.455111
	.quad	0x401fed8cf398e970              # double 7.9819829999999996
	.quad	0x401488da7f3cf701              # double 5.1336459999999997
	.quad	0x401cdf2495e17e35              # double 7.2179130000000002
	.quad	0x4014f734f82f5126              # double 5.2414129999999997
	.quad	0x3ff80bd87b56b873              # double 1.5028919999999999
	.quad	0x401a0004fb1183b6              # double 6.500019
	.quad	0x401fdaa5c5f7c676              # double 7.9635230000000004
	.quad	0x3fbe9c560c7c0f45              # double 0.119573
	.quad	0x40202bbecaab8a5d              # double 8.0854400000000002
	.quad	0x3f9d46f587d6f976              # double 0.028590999999999998
	.quad	0x40028f1d3ed527e5              # double 2.3198799999999999
	.quad	0x4010366f9335d24a              # double 4.0531600000000001
	.quad	0x4022fa2ad3e920c0              # double 9.4886079999999992
	.quad	0x3ff858c7e28240b8              # double 1.5216750000000001
	.quad	0x3ffaca7503b81b65              # double 1.674428
	.quad	0x4011b4f15e7c8d19              # double 4.4267019999999997
	.quad	0x3fcf840181e03f70              # double 0.24621599999999999
	.quad	0x4006d2bf5515054b              # double 2.8529040000000001
	.quad	0x400c858b3f63c31e              # double 3.565207
	.quad	0x401638b1dd5d3dc9              # double 5.5553660000000002
	.quad	0x40134d701d9f4d38              # double 4.8256230000000002
	.quad	0x401dd45b6c3760bf              # double 7.4573799999999997
	.quad	0x3ff5a0ec74320104              # double 1.351788
	.quad	0x400d5f08893b7d85              # double 3.6714030000000002
	.quad	0x400e7b7bf1e8e608              # double 3.810295
	.quad	0x3ffbbfc43b2dd378              # double 1.734318
	.quad	0x3ffdec881e4712e4              # double 1.870247
	.quad	0x400e0940bbb1f256              # double 3.754518
	.quad	0x401f8b3bb83cf2d0              # double 7.8859700000000004
	.quad	0x4021c5c52e72da12              # double 8.8862699999999997
	.quad	0x3ff0a68e3ef28416              # double 1.0406629999999999
	.quad	0x4015828522ea0fd4              # double 5.3774610000000003
	.quad	0x402155e43ed959a3              # double 8.6677569999999999
	.quad	0x402264a2339c0ebf              # double 9.1965500000000002
	.quad	0x3fc6aa3ad18d25ee              # double 0.17707000000000001
	.quad	0x401e59ce075f6fd2              # double 7.5876999999999999
	.quad	0x4023d9c92ddbdb5e              # double 9.9253630000000008
	.quad	0x401f9e5eedcc20d5              # double 7.9046589999999996
	.quad	0x400e293e1c9b413a              # double 3.7701380000000002
	.quad	0x40134bddb9841aac              # double 4.8240879999999997
	.quad	0x402067e9fadafd11              # double 8.2029569999999996
	.quad	0x3ffb0f0d844d013b              # double 1.6911750000000001
	.quad	0x401831d92b7fe08b              # double 6.0486800000000001
	.quad	0x401132f72b452828              # double 4.2997709999999998
	.quad	0x40034433d6c72192              # double 2.4083019999999999
	.quad	0x401474bbe4473cd5              # double 5.1139979999999996
	.quad	0x402223b9496249a1              # double 9.0697729999999996
	.quad	0x4021ba6e32e3821b              # double 8.8641220000000001
	.quad	0x3fefde69ad42c3ca              # double 0.99590000000000001
	.quad	0x4023af15a4acf313              # double 9.8419620000000005
	.quad	0x401a008919ef954f              # double 6.5005230000000003
	.quad	0x4010775f6fd21ff3              # double 4.1165750000000001
	.quad	0x401217b3d8e00086              # double 4.5231469999999998
	.quad	0x3fe93269df97aaac              # double 0.78740399999999999
	.quad	0x40219da9c99285a9              # double 8.8079359999999998
	.quad	0x400d91b8aa00192a              # double 3.6961529999999998
	.quad	0x4022abfb9bed30f0              # double 9.3359039999999993
	.quad	0x3fd759a73b42cc2d              # double 0.36484699999999998
	.quad	0x3fe60d66f0cfe154              # double 0.68913599999999997
	.quad	0x4010b2584f4c6e6e              # double 4.1741650000000003
	.quad	0x402254b790fb6567              # double 9.1654630000000008
	.quad	0x4007daf9ebe9c886              # double 2.981922
	.quad	0x40093c4e2f37fbf0              # double 3.1544460000000001
	.quad	0x4023eef1fddebd90              # double 9.9666899999999998
	.quad	0x4023ef13cee9dd7f              # double 9.9669480000000003
	.quad	0x402187a355043e53              # double 8.7649179999999998
	.quad	0x401dba68b19a415f              # double 7.4320399999999998
	.quad	0x3fb936b4c7f34938              # double 0.098490999999999995
	.quad	0x4011a0f6273929ed              # double 4.4071889999999998
	.quad	0x4011d893faf42785              # double 4.4615020000000003
	.quad	0x4012abb6aa4b9885              # double 4.6676890000000002
	.quad	0x4016e59f2ba9d1f6              # double 5.72424
	.quad	0x40130b6c7a7c9de0              # double 4.7611559999999997
	.quad	0x3fb619008205ff1e              # double 0.086319000000000006
	.quad	0x3fe4d73860999dcb              # double 0.65127199999999996
	.quad	0x4014777dd872f33d              # double 5.1166910000000003
	.quad	0x4001eb7a1c25d074              # double 2.2399789999999999
	.quad	0x4018cbccf28c79f6              # double 6.1990239999999996
	.quad	0x401186d506573216              # double 4.381672
	.quad	0x40143dc7abfb9bed              # double 5.0603319999999998
	.quad	0x4009d041cc532a49              # double 3.2266879999999998
	.quad	0x4022824b124d099e              # double 9.2544789999999999
	.quad	0x3ff5f3bea91d9b1b              # double 1.3720079999999999
	.quad	0x4003261e92923e5c              # double 2.3936130000000002
	.quad	0x401958205ff1d81f              # double 6.3360609999999999
	.quad	0x4013f2324c836651              # double 4.9865199999999996
	.quad	0x40238cb252ce032e              # double 9.7747980000000005
	.quad	0x4020cd4c33b53932              # double 8.4009719999999994
	.quad	0x3ff2713f077ccc03              # double 1.1526479999999999
	.quad	0x401af37329c347e9              # double 6.7377440000000002
	.quad	0x400789a34ca0c283              # double 2.9422060000000001
	.quad	0x4018cb0c4588a04d              # double 6.1982889999999999
	.quad	0x400092da98676a72              # double 2.0717059999999998
	.quad	0x400ce1847f562175              # double 3.6101160000000001
	.quad	0x4016e2aa5c5f7c67              # double 5.7213529999999997
	.quad	0x4015494f26aec072              # double 5.3215909999999997
	.quad	0x401f579fa97e132b              # double 7.8355699999999997
	.quad	0x40229339192641b3              # double 9.2875449999999997
	.quad	0x3ffbd6f976790321              # double 1.739984
	.quad	0x3fff040181e03f70              # double 1.9384779999999999
	.quad	0x401c9f090f733a8a              # double 7.1553079999999998
	.quad	0x401e812ec6bce853              # double 7.6261549999999997
	.quad	0x401d72934acaff6d              # double 7.3618899999999998
	.quad	0x401df94ff0025bfb              # double 7.4934690000000001
	.quad	0x4002a6d82ba5a038              # double 2.331467
	.quad	0x40031a87a072d1af              # double 2.3879540000000001
	.quad	0x4021330079a2834d              # double 8.5996129999999997
	.quad	0x4014988d6d3b6cbe              # double 5.1489770000000004
	.quad	0x40190768dfbd6a59              # double 6.2572359999999998
	.quad	0x401406e19b90ea9e              # double 5.0067199999999996
	.quad	0x40139dfe32a0663c              # double 4.9042899999999996
	.quad	0x4009e1322f2734f8              # double 3.2349589999999999
	.quad	0x3ffbbe80389f83be              # double 1.7340089999999999
	.quad	0x4011fcbf6e3f78bc              # double 4.4968240000000002
	.quad	0x4017a5be5d9e40c8              # double 5.9118589999999998
	.quad	0x3fece78e1932d6ed              # double 0.90326600000000001
	.quad	0x400f18e29f9ce8d9              # double 3.8871509999999998
	.quad	0x3fed6f566490a351              # double 0.91984100000000002
	.quad	0x401c490de093532e              # double 7.0713419999999996
	.quad	0x401435119ce075f7              # double 5.051825
	.quad	0x4022b017dae81883              # double 9.3439320000000006
	.quad	0x401d2052502eec7d              # double 7.2815640000000004
	.quad	0x401dde41919ac797              # double 7.467047
	.quad	0x4017f58fb43d89ce              # double 5.9898059999999997
	.quad	0x40229ac6cdaf4adc              # double 9.3022980000000003
	.quad	0x3fd7ac647778dd61              # double 0.36989699999999998
	.quad	0x3fc84b6e935b91f7              # double 0.189802
	.quad	0x3fe0e42e12620254              # double 0.52785400000000005
	.quad	0x4023658c6d612c6b              # double 9.6983370000000004
	.quad	0x4018cd58c8eef1bb              # double 6.2005340000000002
	.quad	0x401a75e56cd6c2f0              # double 6.6151330000000002
	.quad	0x401b225918a009f6              # double 6.7835429999999999
	.quad	0x40202fa6bd6e8af8              # double 8.0930689999999998
	.quad	0x4018a57abb8800eb              # double 6.1616010000000001
	.quad	0x4022f36cbd987c63              # double 9.4754389999999997
	.quad	0x40202b27ed84d339              # double 8.0842890000000001
	.quad	0x40227cbf0995aaf8              # double 9.2436450000000007
	.quad	0x401031f5be5d9e41              # double 4.0487890000000002
	.quad	0x4012da85caafbc1b              # double 4.7134010000000002
	.quad	0x401b1f91a32b12d3              # double 6.7808289999999998
	.quad	0x4022c2222d5171e3              # double 9.3791670000000006
	.quad	0x3fe4dcdf69878317              # double 0.65196200000000004
	.quad	0x401c31cc100e6afd              # double 7.0486300000000002
	.quad	0x401d9a6a875d56f3              # double 7.4007969999999998
	.quad	0x401b649ecb31c21a              # double 6.8482620000000001
	.quad	0x401fd4f3343fa2ad              # double 7.9579589999999997
	.quad	0x400fc5271bcdbbe0              # double 3.971266
	.quad	0x3fe6355ac03ff690              # double 0.69401299999999999
	.quad	0x40230cd8127b2cc7              # double 9.5250859999999999
	.quad	0x3fefaa6d26740810              # double 0.98955400000000004
	.quad	0x40138365881a1555              # double 4.878317
	.quad	0x401c2db402d16b98              # double 7.044632
	.quad	0x401c40114d2f5dbc              # double 7.0625660000000003
	.quad	0x3fec276d97b30f8c              # double 0.87981299999999995
	.quad	0x40212521ff2e48e9              # double 8.5725250000000006
	.quad	0x400ac0724b76f6d7              # double 3.3439679999999998
	.quad	0x401e819e30014f8b              # double 7.6265799999999996
	.quad	0x402307cc7d1bb491              # double 9.5152319999999992
	.quad	0x401c9bccaf709b74              # double 7.1521480000000004
	.quad	0x40239532c625e99f              # double 9.7914030000000007
	.quad	0x4007e008e9b38d61              # double 2.9843920000000002
	.quad	0x40071ffb480a5acd              # double 2.8906160000000001
	.quad	0x40158944ed6fda83              # double 5.3840519999999996
	.quad	0x401229dcf893faf4              # double 4.5408819999999999
	.quad	0x3fda7aeddce7cd03              # double 0.41375299999999998
	.quad	0x4011003925bb7b6c              # double 4.2502180000000003
	.quad	0x400b989efd86a8fc              # double 3.449522
	.quad	0x400e47f0aa21a71a              # double 3.7851270000000001
	.quad	0x4008a231832fcac9              # double 3.079196
	.quad	0x400bdb62413db7f1              # double 3.4821209999999998
	.quad	0x401dc1e2de870974              # double 7.4393419999999999
	.quad	0x3fd08d60a6330510              # double 0.258629
	.quad	0x400390fd7e45803d              # double 2.4457960000000001
	.quad	0x400e7d0d0678c005              # double 3.8110599999999999
	.quad	0x400245375c8d9f90              # double 2.2837969999999999
	.quad	0x401f48ed1bf7ad4b              # double 7.8212169999999998
	.quad	0x401f47ca2120e1f8              # double 7.8201070000000001
	.quad	0x3fece920c069e7fb              # double 0.90345799999999998
	.quad	0x40061422ccb3a259              # double 2.7598319999999998
	.quad	0x401136777079e59f              # double 4.3031899999999998
	.quad	0x40084e52deca2553              # double 3.0382440000000002
	.quad	0x3ff091ab8e8ea39c              # double 1.0355639999999999
	.quad	0x40100cd898b2e9cd              # double 4.0125450000000003
	.quad	0x3ff67bc1acde19fc              # double 1.405214
	.quad	0x400c5008205ff1d8              # double 3.5390779999999999
	.quad	0x402236c15d2d01c1              # double 9.1069440000000004
	.quad	0x3ff5f02b40f66a55              # double 1.371135
	.quad	0x3ff24f0c77dd872f              # double 1.144299
	.quad	0x40014e04c0592104              # double 2.1630950000000002
	.quad	0x4003083fd5022574              # double 2.3790279999999999
	.quad	0x40188fe004b7f5a5              # double 6.1405029999999998
	.quad	0x400d180b242070b9              # double 3.6367400000000001
	.quad	0x4010764388ebcc6c              # double 4.1154919999999997
	.quad	0x401e519652bd3c36              # double 7.5796749999999999
	.quad	0x4021cecacd184c27              # double 8.9038909999999998
	.quad	0x400602bf11f926c8              # double 2.751341
	.quad	0x4002543fa2ad3e92              # double 2.291137
	.quad	0x401130d801b43526              # double 4.2976989999999997
	.quad	0x400ba6c5d206c871              # double 3.4564319999999999
	.quad	0x3ff2dbea0ba1f4b2              # double 1.17869
	.quad	0x4017cdc0980b2420              # double 5.9509299999999996
	.quad	0x400e3d9f4d37c137              # double 3.7800889999999998
	.quad	0x4020e57689ca18bd              # double 8.4481699999999993
	.quad	0x4022a7f23cc8de2b              # double 9.3280200000000004
	.quad	0x401e70fbeb9e492c              # double 7.6103360000000002
	.quad	0x3fdf41ede1198aec              # double 0.48839900000000003
	.quad	0x401d2314ca925fe9              # double 7.2842589999999996
	.quad	0x40145b1c432ca57a              # double 5.0889749999999996
	.quad	0x40230f9420b3d4ae              # double 9.5304269999999995
	.quad	0x4009a97e996312f5              # double 3.2077610000000001
	.quad	0x4020d38c5436b8fa              # double 8.4131800000000005
	.quad	0x4004c4fa05143bf7              # double 2.5961799999999999
	.quad	0x4022acdcebfec13c              # double 9.3376230000000006
	.quad	0x401440ed80a17b0f              # double 5.0634059999999996
	.quad	0x401dcac8a3726070              # double 7.4480310000000003
	.quad	0x40152073de1e2de8              # double 5.2816919999999996
	.quad	0x3fdbf88b9778572a              # double 0.43704500000000002
	.quad	0x4018cb039ef0f16f              # double 6.1982559999999998
	.quad	0x3ff4d0b30b5aa716              # double 1.3009520000000001
	.quad	0x3fbe685db76b3bb8              # double 0.11878
	.quad	0x401c2008637bd05b              # double 7.031282
	.quad	0x401eabef06b37868              # double 7.667904
	.quad	0x40105767d34df04e              # double 4.0853570000000001
	.quad	0x401969d627bf61aa              # double 6.3533559999999998
	.quad	0x401077d6733ebbfd              # double 4.1170289999999996
	.quad	0x400b72e62131a8ef              # double 3.4311029999999998
	.quad	0x4023e9ef73c0c1fd              # double 9.9569050000000007
	.quad	0x4000a8848387df5d              # double 2.082284
	.quad	0x4013d466b1e5c0ba              # double 4.9574230000000004
	.quad	0x4020d17ca2120e1f              # double 8.4091539999999991
	.quad	0x4013775e2046c765              # double 4.8665700000000003
	.quad	0x4015fe5f7403dddb              # double 5.4984109999999999
	.quad	0x3fde409e55c0fcb5              # double 0.472694
	.quad	0x3fedfac3eb7cbb3d              # double 0.93686100000000005
	.quad	0x4015005dd8f92afa              # double 5.2503580000000003
	.quad	0x4009ea276b7ed41b              # double 3.2393329999999998
	.quad	0x400fdbdbe3c10518              # double 3.9823529999999998
	.quad	0x40205fee6fb4c3c2              # double 8.1873660000000008
	.quad	0x40060de2ac322292              # double 2.75678
	.quad	0x400e1382e44b6e93              # double 3.7595269999999998
	.quad	0x4003936262cba733              # double 2.4469650000000001
	.quad	0x40221d0a24463066              # double 9.056718
	.quad	0x3ff8b441bb8c32a9              # double 1.544008
	.quad	0x3fd1dedaec4a4096              # double 0.279227
	.quad	0x3feba8283d35eb74              # double 0.86427699999999996
	.quad	0x40062968943e1006              # double 2.770219
	.quad	0x4010eeb8950763a2              # double 4.2331260000000004
	.quad	0x40038980b242070c              # double 2.4421400000000002
	.quad	0x3ff0b2abef06b378              # double 1.0436209999999999
	.quad	0x3ff2d3ef6b5d462c              # double 1.176742
	.quad	0x4020c45f17bd8be7              # double 8.3835379999999997
	.quad	0x402167b45f17bd8c              # double 8.7025480000000001
	.quad	0x401a5d5a9eb2074f              # double 6.5911660000000003
	.quad	0x3fef37824d4cb9ed              # double 0.975526
	.quad	0x401881d4b6a619db              # double 6.1267880000000003
	.quad	0x3fd6aa582dbe7f2c              # double 0.35414699999999999
	.quad	0x400d0a39c51dabe2              # double 3.6299929999999998
	.quad	0x4014708b32ce8965              # double 5.1099059999999996
	.quad	0x402132c710cb295f              # double 8.5991750000000007
	.quad	0x4005ac1094a2b9d4              # double 2.7090160000000001
	.quad	0x401ed804534bd76f              # double 7.710954
	.quad	0x4001bb97bb730835              # double 2.2165979999999998
	.quad	0x4021848de2ac3223              # double 8.7588950000000008
	.quad	0x40239e43ed959a31              # double 9.8091120000000007
	.quad	0x40205b4916ca46e1              # double 8.1782920000000008
	.quad	0x400be5614df8b157              # double 3.4870019999999999
	.quad	0x401ddfb00bcbe61d              # double 7.468445
	.quad	0x4013cb4b2fa93af7              # double 4.9485289999999997
	.quad	0x4023f1b738e6d15b              # double 9.9721010000000003
	.quad	0x40124221c8a7a41e              # double 4.5645819999999997
	.quad	0x401c3b9a176ddacf              # double 7.0582050000000001
	.quad	0x40105f1bef49cf57              # double 4.0928800000000001
	.quad	0x401a5cbaf965b20c              # double 6.5905570000000004
	.quad	0x3ffdff1843c3a42f              # double 1.874779
	.quad	0x4021cc6a1a500d5f              # double 8.8992470000000008
	.quad	0x3ffe6ece13f4a98b              # double 1.9020520000000001
	.quad	0x3fbe29b6b2af1455              # double 0.117824
	.quad	0x400f4fd75e2046c7              # double 3.9139849999999998
	.quad	0x4006de68a0d349bf              # double 2.8585980000000002
	.quad	0x400965dfa871a3b1              # double 3.1747429999999999
	.quad	0x4023ebed740c4157              # double 9.9607960000000002
	.quad	0x4018fee3d5fdcdf7              # double 6.2489160000000004
	.quad	0x4021d7f9b56323bc              # double 8.9218270000000003
	.quad	0x4013d0fe047d3d43              # double 4.9540940000000004
	.quad	0x3fd5eed8904f6dfc              # double 0.34270299999999998
	.quad	0x4023994d0dcfcc5c              # double 9.7994160000000007
	.quad	0x402198dc768dfbd7              # double 8.7985570000000006
	.quad	0x4016508bb906466b              # double 5.5786579999999999
	.quad	0x4010e991ff7164c7              # double 4.2280959999999999
	.quad	0x3fec954866a11ec9              # double 0.89322299999999999
	.quad	0x4020b6c82e019b0b              # double 8.3569960000000005
	.quad	0x4005c40639d5e4a4              # double 2.7207150000000002
	.quad	0x3fe486b37867f0aa              # double 0.64144299999999999
	.quad	0x400b0be48a58b3f6              # double 3.3808069999999999
	.quad	0x3fe7323358f2e05d              # double 0.72487800000000002
	.quad	0x401aee7ddca4b125              # double 6.7329020000000002
	.quad	0x401b4f2cb641700d              # double 6.8273190000000001
	.quad	0x3fc423f24d8fd5cb              # double 0.15734699999999999
	.quad	0x4020bc9f94855da2              # double 8.3684049999999992
	.quad	0x4014e77ea1c68ec5              # double 5.2260689999999999
	.quad	0x40160a95421c0443              # double 5.5103350000000004
	.quad	0x400cae642bf9830e              # double 3.5851519999999999
	.quad	0x400d4435efa615a9              # double 3.6583060000000001
	.quad	0x40004ce67d77fae3              # double 2.0375489999999998
	.quad	0x3ffdfc5ac471b478              # double 1.8741099999999999
	.quad	0x4015f89f40a2877f              # double 5.4927950000000001
	.quad	0x402233cc8de2ac32              # double 9.1011699999999998
	.quad	0x40038a25d8d79d0a              # double 2.4424549999999998
	.quad	0x4009eb6848beb5b3              # double 3.2399450000000001
	.quad	0x4013ebec2480e8c9              # double 4.9803930000000003
	.quad	0x400d483126e978d5              # double 3.66025
	.quad	0x40202834d26fa3fd              # double 8.0785280000000004
	.quad	0x401063f5f91600f3              # double 4.0976179999999998
	.quad	0x4021887357e670e3              # double 8.7665050000000004
	.quad	0x4023bffe2a3cea6c              # double 9.8749859999999998
	.quad	0x401d4bf6a0dbad3a              # double 7.3241829999999997
	.quad	0x3ffcd08e581cf788              # double 1.8009170000000001
	.quad	0x401f9ddf43c7d5ed              # double 7.9041719999999999
	.quad	0x3ff48318b9346994              # double 1.282006
	.quad	0x401162d2fe3f35a0              # double 4.346508
	.quad	0x400ff56a7ac81d3b              # double 3.9948320000000002
	.quad	0x401e2b6d00b45ae6              # double 7.542408
	.quad	0x40189c10d7be9857              # double 6.1524080000000003
	.quad	0x40167d5bee3d5fdd              # double 5.6224210000000001
	.quad	0x40150ccb3a2595bc              # double 5.2624940000000002
	.quad	0x3fdddd872f33ca32              # double 0.46664600000000001
	.quad	0x4001502ff8ec0f88              # double 2.1641539999999999
	.quad	0x3fec88d8ec95bff0              # double 0.89170499999999997
	.quad	0x40070109d0635a42              # double 2.8755069999999998
	.quad	0x401f675104d551d7              # double 7.8508950000000004
	.quad	0x3ff3018b502ababf              # double 1.1878770000000001
	.quad	0x400d3f809917939a              # double 3.6560069999999998
	.quad	0x4021e7284167a95d              # double 8.9514790000000009
	.quad	0x3fe4bd102bc72e27              # double 0.64807899999999996
	.quad	0x3fdba5ebb7739f34              # double 0.432002
	.quad	0x400854f50a02b841              # double 3.0414829999999999
	.quad	0x3ff877cbb3c81909              # double 1.529247
	.quad	0x40205c185058dde8              # double 8.1798730000000006
	.quad	0x40220b4959e62563              # double 9.0220439999999993
	.quad	0x401a8cbd556084a5              # double 6.6374409999999999
	.quad	0x40131fabda0dfdf0              # double 4.7809290000000004
	.quad	0x401ddc83ec892ab7              # double 7.4653470000000004
	.quad	0x4019d3f748a15981              # double 6.4569979999999996
	.quad	0x4010af40a2877ee5              # double 4.1711450000000001
	.quad	0x401eee8a2ec28b2a              # double 7.7329489999999996
	.quad	0x4007eda09cc319c6              # double 2.9910290000000002
	.quad	0x4019e0b524399b2c              # double 6.4694409999999998
	.quad	0x3ffe6bf444e0daa1              # double 1.901356
	.quad	0x40167fa3b9ae0c17              # double 5.6246479999999996
	.quad	0x4022e2f512663411              # double 9.4432759999999991
	.quad	0x4021ba6defc7a398              # double 8.8641199999999998
	.quad	0x4017fbedfa43fe5d              # double 5.9960250000000004
	.quad	0x40051fb71fbc5dea              # double 2.6404860000000001
	.quad	0x4014c322291fb3fa              # double 5.1905599999999996
	.quad	0x4004da8cdea033e8              # double 2.6067140000000002
	.quad	0x400d231df761cbcd              # double 3.642147
	.quad	0x4021b01669ced0b3              # double 8.8439209999999999
	.quad	0x40237d12a94ff002              # double 9.7442829999999994
	.quad	0x401626ee73e681aa              # double 5.5380190000000002
	.quad	0x4010a5a07b352a84              # double 4.1617449999999998
	.quad	0x402234e2f37fbefd              # double 9.103294
	.quad	0x401d3f01322f2735              # double 7.311528
	.quad	0x4006262b27cbf6e4              # double 2.768637
	.quad	0x3ff391a86940357a              # double 1.223061
	.quad	0x40076ead9274e22a              # double 2.9290419999999999
	.quad	0x40088ca0c282c6ef              # double 3.0686659999999999
	.quad	0x402157f3cf70153c              # double 8.6717820000000003
	.quad	0x4016a41f644955b4              # double 5.6602759999999996
	.quad	0x4019b623d0bfa094              # double 6.4278709999999997
	.quad	0x401cfa415f45e0b5              # double 7.2443900000000001
	.quad	0x401e36b8f9b13166              # double 7.5534400000000002
	.quad	0x401c25b530ced4e5              # double 7.0368240000000002
	.quad	0x401d56cf850df15a              # double 7.3347759999999997
	.quad	0x3fef639f77292c49              # double 0.98091099999999997
	.quad	0x4001a719b4dcebff              # double 2.2065920000000001
	.quad	0x3fb03686a4ca4f44              # double 0.063331999999999999
	.quad	0x401b388765ba6efc              # double 6.8052039999999998
	.quad	0x4016783d790752db              # double 5.6174220000000004
	.quad	0x4010b6d655e28aa4              # double 4.1785519999999998
	.quad	0x40065963992c8c50              # double 2.793647
	.quad	0x4012d54477ff151e              # double 4.7082689999999996
	.quad	0x400d8e2003ab862b              # double 3.6943969999999999
	.quad	0x401f50ef99806f26              # double 7.8290389999999999
	.quad	0x402054e4a7b4e54f              # double 8.1658069999999991
	.quad	0x40121ef77f27fe4c              # double 4.5302410000000002
	.quad	0x40162508b32ce896              # double 5.5361659999999997
	.quad	0x40111cde19fc2a88              # double 4.2781909999999996
	.quad	0x3f79dece5710880e              # double 0.0063160000000000004
	.quad	0x3fce4f440af1cb8a              # double 0.236794
	.quad	0x3ff11563a9f383f1              # double 1.0677220000000001
	.quad	0x40167ed352220bc4              # double 5.6238530000000004
	.quad	0x40200be6601bc98a              # double 8.0232419999999998
	.quad	0x3fd1d3bafd976ff4              # double 0.27854800000000002
	.quad	0x3ff9f7f7be121ee6              # double 1.6230389999999999
	.quad	0x400458a6dacabc51              # double 2.5432869999999999
	.quad	0x3fef44da9003eea2              # double 0.977155
	.quad	0x3ffbfc69728a6117              # double 1.7491239999999999
	.quad	0x4015dc54bcf0b6b7              # double 5.4651670000000001
	.quad	0x400a88cd63cb8173              # double 3.3167979999999999
	.quad	0x4016c15f45e0b4e1              # double 5.6888399999999999
	.quad	0x401dcae85b9e8c48              # double 7.4481520000000003
	.quad	0x400e7fc8f32378ab              # double 3.812395
	.quad	0x401b434b51372a39              # double 6.8157170000000002
	.quad	0x4009347f13059642              # double 3.150633
	.quad	0x401fc357e670e2c1              # double 7.9407649999999998
	.quad	0x402216c8b4395810              # double 9.0444999999999993
	.quad	0x3fe1de41d4b6a61a              # double 0.55838100000000002
	.quad	0x4016438151a43782              # double 5.5659229999999997
	.quad	0x401951ada76d97b3              # double 6.3297639999999999
	.quad	0x400bbf90539fba45              # double 3.468537
	.quad	0x3ff45932d6ece13f              # double 1.2717769999999999
	.quad	0x401518c586876e1e              # double 5.2741910000000001
	.quad	0x3ff5bd8adab9f55a              # double 1.3587750000000001
	.quad	0x4023dabe48a58b3f              # double 9.9272329999999993
	.quad	0x401ab76a7264a16a              # double 6.6791169999999997
	.quad	0x4023f0943e100608              # double 9.9698810000000008
	.quad	0x40115f7d73c92578              # double 4.3432519999999997
	.quad	0x3ffc9b6d43d03969              # double 1.787946
	.quad	0x400f25bd944aa540              # double 3.8934280000000001
	.quad	0x40022ad601ffb481              # double 2.2709160000000002
	.quad	0x40232e3d1cc100e7              # double 9.5903100000000005
	.quad	0x401c830c67168f8e              # double 7.1279769999999996
	.quad	0x4020f216e7a311e8              # double 8.4728309999999993
	.quad	0x3ff435a20ddc6195              # double 1.2630939999999999
	.quad	0x401cf58750c1b973              # double 7.2397739999999997
	.quad	0x401bf5e5f30e7ff6              # double 6.9901350000000004
	.quad	0x3ff8996fa82e87d3              # double 1.53746
	.quad	0x40150635a426bb56              # double 5.2560640000000003
	.quad	0x3fffe4b5568e820e              # double 1.9933369999999999
	.quad	0x4007b3c4f3ba7760              # double 2.9627780000000001
	.quad	0x40088cbe1eb4202e              # double 3.0687220000000002
	.quad	0x4015dd423d9231c6              # double 5.4660729999999997
	.quad	0x4008931098d477bc              # double 3.071809
	.quad	0x4012afaeff5c6c12              # double 4.6715660000000003
	.quad	0x40221332acfb762e              # double 9.0374960000000009
	.quad	0x40109a7a41e57d9e              # double 4.1508570000000002
	.quad	0x4018afc1df3300de              # double 6.1716379999999997
	.quad	0x401ee7e06961c369              # double 7.7264419999999995
	.quad	0x401b5732df505d10              # double 6.8351550000000003
	.quad	0x40228d4801f75105              # double 9.2759400000000003
	.quad	0x40200f8b7a1c25d0              # double 8.0303609999999992
	.quad	0x40172d8a116659d1              # double 5.7944719999999998
	.quad	0x4015642bb6672fba              # double 5.347823
	.quad	0x401fac02afdda8bd              # double 7.9179789999999998
	.quad	0x401f810060780fdc              # double 7.8759779999999999
	.quad	0x401d75989df1172f              # double 7.3648400000000001
	.quad	0x3fe2d6c2efd438d2              # double 0.58871600000000002
	.quad	0x402097913e81450f              # double 8.29603
	.quad	0x401c0ad1d041cc53              # double 7.0105659999999999
	.quad	0x40083d52c16df3f9              # double 3.0299429999999998
	.quad	0x40216b51372a38b9              # double 8.7096040000000006
	.quad	0x4023b314a90470a8              # double 9.8497669999999999
	.quad	0x40120dee78183f92              # double 4.5136050000000001
	.quad	0x40140c8754f3775c              # double 5.0122350000000004
	.quad	0x4000eb6a619da9ca              # double 2.1149490000000002
	.quad	0x40213e06b7aa25d9              # double 8.6211450000000003
	.quad	0x400595caf2d7f951              # double 2.6981410000000001
	.quad	0x400620bb2bba98ee              # double 2.7659820000000002
	.quad	0x401c9ddfc9ff92f3              # double 7.1541740000000003
	.quad	0x3ff9a3d0bfa09460              # double 1.6024940000000001
	.quad	0x4018b212d77318fc              # double 6.1738999999999997
	.quad	0x4009a26f60e0eb68              # double 3.2043140000000001
	.quad	0x401ca647fdc5931d              # double 7.1623840000000003
	.quad	0x402041cac083126f              # double 8.1285000000000007
	.quad	0x4014f3111f0c34c2              # double 5.2373700000000003
	.quad	0x402342393ee5eedd              # double 9.6293430000000004
	.quad	0x40202ae126202539              # double 8.0837489999999992
	.quad	0x3ff828d10f51ac9b              # double 1.509965
	.quad	0x401dee0daa0cae64              # double 7.4824739999999998
	.quad	0x401430221426fe72              # double 5.0470050000000004
	.quad	0x40227302d59d55e7              # double 9.2246310000000005
	.quad	0x401adc2e770bd018              # double 6.7150210000000001
	.quad	0x4023f9ffb480a5ad              # double 9.9882790000000003
	.quad	0x4021c925dd095af3              # double 8.8928670000000007
	.quad	0x4014789a02752546              # double 5.117775
	.quad	0x40238553cddd6e05              # double 9.7604050000000004
	.quad	0x401fcfaa8a82a561              # double 7.9527989999999997
	.quad	0x4018ae542e557de1              # double 6.1702430000000001
	.quad	0x40234328f9f44d44              # double 9.6311719999999994
	.quad	0x401758ea7ce0fc2f              # double 5.8368320000000002
	.quad	0x401e702ababead4f              # double 7.6095379999999996
	.quad	0x402340e9b38d60a6              # double 9.6267829999999996
	.quad	0x401a284f09528f19              # double 6.539364
	.quad	0x3ffa1fcf3dc054ef              # double 1.6327659999999999
	.quad	0x4019491c087442c8              # double 6.321396
	.quad	0x401f682b1f687b14              # double 7.8517270000000003
	.quad	0x401989a30984e400              # double 6.3844110000000001
	.quad	0x4009fc7820a30db7              # double 3.2482760000000002
	.quad	0x3ffe5c2f405f6ba0              # double 1.8975059999999999
	.quad	0x4021d8bef8ceb357              # double 8.9233320000000003
	.quad	0x3fe63e6601bc98a2              # double 0.69511699999999998
	.quad	0x3fdd5692b3cc4ac7              # double 0.45840900000000001
	.quad	0x4023b930df9bdc6a              # double 9.8617010000000001
	.quad	0x4013ecee5abc0e39              # double 4.9813780000000003
	.quad	0x40210d909f1f1498              # double 8.5264939999999996
	.quad	0x401c86bebe1650a4              # double 7.1315869999999997
	.quad	0x4017b4c5da6a4441              # double 5.9265359999999996
	.quad	0x4015282f944241c4              # double 5.2892440000000001
	.quad	0x400e5ff36ac64778              # double 3.7968510000000002
	.quad	0x4020836933a0407d              # double 8.2566620000000004
	.quad	0x4022ffdf5cf2495e              # double 9.4997509999999998
	.quad	0x402275466f5019f4              # double 9.2290530000000003
	.quad	0x4023dca6ca03c4b1              # double 9.9309600000000006
	.quad	0x40001ce6c093d966              # double 2.0141119999999999
	.quad	0x40203a46e08f2171              # double 8.1138220000000008
	.quad	0x401686c332f01755              # double 5.6316040000000003
	.quad	0x4012b6199780baa6              # double 4.6778320000000004
	.quad	0x40197cf56eac8605              # double 6.3720299999999996
	.quad	0x40141ada76d97b31              # double 5.026224
	.quad	0x3fda1f2990f301eb              # double 0.40815200000000001
	.quad	0x400258fc504816f0              # double 2.29345
	.quad	0x401891ea78af3e47              # double 6.1424960000000004
	.quad	0x3ffbe54823854046              # double 1.7434769999999999
	.quad	0x3fdb9563a9f383f1              # double 0.43099300000000001
	.quad	0x40203af2f9873ffb              # double 8.1151350000000004
	.quad	0x3fa23161a1db877b              # double 0.035533000000000002
	.quad	0x402260389f83be66              # double 9.187932
	.quad	0x40188a7ded6ba8c6              # double 6.1352460000000004
	.quad	0x401a79ecb31c219f              # double 6.6190670000000003
	.quad	0x4001952977c88e7a              # double 2.1978330000000001
	.quad	0x40222283b1d0c804              # double 9.0674109999999998
	.quad	0x4018b41f644955b4              # double 6.1759009999999996
	.quad	0x401825ebb7739f34              # double 6.037032
	.quad	0x401e0f3d3a1d3240              # double 7.5148820000000001
	.quad	0x400d9f2239e6ab9b              # double 3.7027019999999999
	.quad	0x3fc248e043a21640              # double 0.142849
	.quad	0x400612220bc382a1              # double 2.7588539999999999
	.quad	0x401645e0b4e11dbd              # double 5.5682400000000003
	.quad	0x400f30acc0bdcad1              # double 3.8987669999999999
	.quad	0x40204738a3b57c4e              # double 8.1391039999999997
	.quad	0x4022188509bf9c63              # double 9.0478900000000007
	.quad	0x40001191dde37586              # double 2.0085790000000001
	.quad	0x4016783a109d0636              # double 5.6174090000000003
	.quad	0x401fd82a9930be0e              # double 7.9611000000000001
	.quad	0x4015b3cfb3311a54              # double 5.4255969999999998
	.quad	0x40163ad3e920c06a              # double 5.5574490000000001
	.quad	0x4014dd117b5286b6              # double 5.2158870000000004
	.quad	0x40095f10667f90da              # double 3.1714180000000001
	.quad	0x3ffc89fa54c55433              # double 1.7836860000000001
	.quad	0x400bb7928e0c9d9d              # double 3.4646349999999999
	.quad	0x4010fad9ad85dfa8              # double 4.2449709999999996
	.quad	0x40022ce8101f31f4              # double 2.2719269999999998
	.quad	0x40155ef99806f263              # double 5.3427490000000004
	.quad	0x3ffef2d1aeb3dd12              # double 1.9342820000000001
	.quad	0x40202f993d5347a6              # double 8.0929660000000005
	.quad	0x3fed3e553ac4f7ec              # double 0.91385899999999997
	.quad	0x4015f711d798d8a9              # double 5.4912789999999996
	.quad	0x401ab7c99ae924f2              # double 6.6794799999999999
	.quad	0x4023bd944aa53fc0              # double 9.8702719999999999
	.quad	0x40135dc1e7967caf              # double 4.8415600000000003
	.quad	0x401e045f17bd8be7              # double 7.5042689999999998
	.quad	0x40168e279dd3bafe              # double 5.6388230000000004
	.quad	0x4010a8d7e02645e5              # double 4.1648860000000001
	.quad	0x3fecf952d234eb9a              # double 0.90543499999999999
	.quad	0x40213875f6fd21ff              # double 8.6102749999999997
	.quad	0x401af024f6598e11              # double 6.7345160000000002
	.quad	0x3ff84e0daa0cae64              # double 1.519056
	.quad	0x401394bad7d7c2ca              # double 4.8952439999999999
	.quad	0x400b6ed2cbea4ebe              # double 3.4291130000000001
	.quad	0x402006994185058e              # double 8.0128880000000002
	.quad	0x4002b1f57b41bfbe              # double 2.336894
	.quad	0x4010e07746887a8d              # double 4.2192049999999997
	.quad	0x402141dde37585be              # double 8.6286459999999998
	.quad	0x401637221858bc5a              # double 5.5538410000000002
	.quad	0x401447967caea748              # double 5.0699100000000001
	.quad	0x402239ca18bd6627              # double 9.1128699999999991
	.quad	0x40035fddebd9018e              # double 2.4218099999999998
	.quad	0x401076994185058e              # double 4.1158190000000001
	.quad	0x400891654d61b2a2              # double 3.0709939999999998
	.quad	0x3ffd4153bd167664              # double 1.828449
	.quad	0x402324a38327674d              # double 9.5715599999999998
	.quad	0x400f0b25b317efe1              # double 3.8804430000000001
	.quad	0x3ff661c15097c808              # double 1.3988659999999999
	.quad	0x402237d7a13c254a              # double 9.1090669999999996
	.quad	0x40208135daad6020              # double 8.252364
	.quad	0x40130dd9c27e9531              # double 4.7635259999999997
	.quad	0x401d2baba7b9170d              # double 7.2926469999999997
	.quad	0x4001939da16616b5              # double 2.1970779999999999
	.quad	0x4022855c31593e60              # double 9.2604690000000005
	.quad	0x400794d37c1376d5              # double 2.9476689999999999
	.quad	0x401f776ee73e681b              # double 7.8666340000000003
	.quad	0x3fd989c5e6ff7dfa              # double 0.399034
	.quad	0x4013ea743a647fdc              # double 4.9789589999999997
	.quad	0x401b29a7c17a8933              # double 6.7906789999999999
	.quad	0x4022f1ea35935fc4              # double 9.4724900000000005
	.quad	0x401c201eabbcb1cd              # double 7.0313670000000004
	.quad	0x4015e9539b888723              # double 5.4778580000000003
	.quad	0x40225a6a44417870              # double 9.1765919999999994
	.quad	0x40162b21815a07b3              # double 5.5421199999999997
	.quad	0x402072ceee0f3cb4              # double 8.2242350000000001
	.quad	0x401f20d4562e09ff              # double 7.7820600000000004
	.quad	0x40171e4bcad9ad86              # double 5.7795860000000001
	.quad	0x3fe97bedb7281fda              # double 0.79637800000000003
	.quad	0x40230fc2224edf61              # double 9.5307779999999997
	.quad	0x4020ac677b395c42              # double 8.3367269999999998
	.quad	0x3ffebc5cdd50a88f              # double 1.920987
	.quad	0x401761ed5ae1cde6              # double 5.8456320000000002
	.quad	0x3ff57d0e12e83a11              # double 1.3430310000000001
	.quad	0x400d2a43bb40b34e              # double 3.6456369999999998
	.quad	0x3ff1705d95dd4c77              # double 1.089933
	.quad	0x40225c295a6c5d20              # double 9.1800029999999992
	.quad	0x401484666ec9e237              # double 5.1292970000000002
	.quad	0x401538f605ab3aac              # double 5.3056260000000002
	.quad	0x401b645b291b823d              # double 6.8480040000000004
	.quad	0x3ff1db79d909f1f1              # double 1.1160829999999999
	.quad	0x40144a73b42cc2d7              # double 5.0727070000000003
	.quad	0x401f8fa00e27e0f0              # double 7.8902590000000004
	.quad	0x3fee555c52e72da1              # double 0.94791999999999998
	.quad	0x401cb059210385c6              # double 7.1722149999999996
	.quad	0x4016e7d77fae3609              # double 5.7264080000000002
	.quad	0x401c1e557de0d66f              # double 7.029623
	.quad	0x4019f86bdf4c2b52              # double 6.4925990000000002
	.quad	0x40133c0767d34df0              # double 4.8086219999999997
	.quad	0x40191da8bd230b9e              # double 6.2789640000000002
	.quad	0x40171ad85dfa871a              # double 5.7762159999999998
	.quad	0x401e47ecfe9b7bf2              # double 7.5702400000000001
	.quad	0x401ffa41a261bf38              # double 7.9943910000000002
	.quad	0x401a9ed288ce703b              # double 6.6551
	.quad	0x3ff3551f81a5870e              # double 1.2082820000000001
	.quad	0x4011797dd00f776c              # double 4.3686439999999997
	.quad	0x400fc7bf61aa3f03              # double 3.9725329999999999
	.quad	0x4000c5996744b2b7              # double 2.0964839999999998
	.quad	0x400226d4801f7510              # double 2.2689599999999999
	.quad	0x3fcaafa2f05a708f              # double 0.208485
	.quad	0x3ffa7d4bf0995aaf              # double 1.6555899999999999
	.quad	0x4002cbae89eba6ad              # double 2.3494540000000002
	.quad	0x401f5d1e96c3fc44              # double 7.8409370000000003
	.quad	0x40150ebaade657b8              # double 5.2643839999999997
	.quad	0x3ff78be61cffeb07              # double 1.4716549999999999
	.quad	0x3fc0941c8216c615              # double 0.12952
	.quad	0x40230962f166e009              # double 9.5183330000000001
	.quad	0x4017c6b1a2a4db16              # double 5.9440369999999998
	.quad	0x401c03aa79bbadc1              # double 7.0035800000000004
	.quad	0x3fe17240fa9c12f1              # double 0.54519700000000004
	.quad	0x4021a19d883ba344              # double 8.8156549999999995
	.quad	0x402267d50225742e              # double 9.2027970000000003
	.quad	0x402389d6f112fd33              # double 9.7692180000000004
	.quad	0x401563c70c996b76              # double 5.3474389999999996
	.quad	0x4014ce67d77fae36              # double 5.201568
	.quad	0x401630dc768dfbd7              # double 5.5477160000000003
	.quad	0x3ff7b6145953586d              # double 1.4819530000000001
	.quad	0x40212c0379314446              # double 8.5859640000000006
	.quad	0x3fb4dd72367e414e              # double 0.081503999999999993
	.quad	0x40106e6d15ad106f              # double 4.1078380000000001
	.quad	0x401560a1be2b495a              # double 5.3443670000000001
	.quad	0x4006712231832fcb              # double 2.8052410000000001
	.quad	0x3fb817fc7607c41a              # double 0.094116000000000005
	.quad	0x4008b7edc7ef177a              # double 3.0898089999999998
	.quad	0x40123b606b7aa25e              # double 4.5579850000000004
	.quad	0x4007a750c1b97354              # double 2.9566970000000001
	.quad	0x3feb988f42fe8251              # double 0.86237299999999995
	.quad	0x4023a6f0cfe15443              # double 9.8260559999999994
	.quad	0x3ff5b1d0c8041030              # double 1.355912
	.quad	0x3ff7cfabda0dfdf0              # double 1.4882010000000001
	.quad	0x4023cae642bf9831              # double 9.8962880000000001
	.quad	0x3fdb54f3775b8130              # double 0.42706
	.quad	0x400398a116659d13              # double 2.4495260000000001
	.quad	0x3ffda4b33daf8df8              # double 1.8527100000000001
	.quad	0x4013ffc08fa7a850              # double 4.9997579999999999
	.quad	0x3fd182a9930be0df              # double 0.27360000000000001
	.quad	0x3ff122435696e58a              # double 1.070865
	.quad	0x4017d83ad9f0a1be              # double 5.9611619999999998
	.quad	0x401a7d4bad7d7c2d              # double 6.6223590000000003
	.quad	0x3ff5d219a847b246              # double 1.363794
	.quad	0x40202c1e57d9dba9              # double 8.0861689999999999
	.quad	0x4002e32441fea811              # double 2.3609089999999999
	.quad	0x401184167a95c854              # double 4.3789920000000002
	.quad	0x40212963baba7b91              # double 8.5808389999999992
	.quad	0x401a843419e30015              # double 6.629105
	.quad	0x40052df612407464              # double 2.6474419999999999
	.quad	0x4020ce08d08919f0              # double 8.4024110000000007
	.quad	0x401d1fe21d96e9bc              # double 7.2811360000000001
	.quad	0x3ff40940bbb1f256              # double 1.252259
	.quad	0x401b5812be48a58b              # double 6.8360089999999998
	.quad	0x401ccbdbe3c10518              # double 7.1990809999999996
	.quad	0x4019e3397dd00f77              # double 6.4718989999999996
	.quad	0x402029df548ecd8e              # double 8.0817820000000005
	.quad	0x4022aaf294dd7236              # double 9.3338819999999991
	.quad	0x4022f9af7d30ad47              # double 9.487667
	.quad	0x401be9dba908a266              # double 6.9783770000000001
	.quad	0x401274e1e71044f2              # double 4.6141430000000003
	.quad	0x40109cd530489d28              # double 4.1531570000000002
	.quad	0x4018cb8d3f1843c4              # double 6.1987810000000003
	.quad	0x40185245b291b824              # double 6.0803440000000002
	.quad	0x4023c0aaa7ded6bb              # double 9.8763020000000008
	.quad	0x401657bf61aa3f03              # double 5.5856909999999997
	.quad	0x3fb8070329802c0a              # double 0.093856999999999995
	.quad	0x401fc392189bd838              # double 7.9409869999999997
	.quad	0x400539bd4067cf1c              # double 2.6531929999999999
	.quad	0x40071fca85caafbc              # double 2.890523
	.quad	0x401228155d5f56a8              # double 4.5391440000000003
	.quad	0x4013961565c2d278              # double 4.896566
	.quad	0x40166ac18f81e8a3              # double 5.6042540000000001
	.quad	0x4017086c6583e857              # double 5.7582259999999996
	.quad	0x4019def5ec80c73b              # double 6.4677350000000002
	.quad	0x4004d1960fa15db3              # double 2.6023369999999999
	.quad	0x4022200cd855970b              # double 9.0625979999999995
	.quad	0x4010c7e9531550ca              # double 4.1952259999999999
	.quad	0x401d33a8a3f8982d              # double 7.3004480000000003
	.quad	0x4013a4934267839d              # double 4.9107180000000001
	.quad	0x3ff7d040bfe3b03e              # double 1.488343
	.quad	0x3ff6dfe75bc44bf5              # double 1.429664
	.quad	0x401ef20578e5c4eb              # double 7.7363489999999996
	.quad	0x400a529cbab649d4              # double 3.2903380000000002
	.quad	0x4017d2b7baecd078              # double 5.9557789999999997
	.quad	0x3ff5c7c200c0f020              # double 1.3612690000000001
	.quad	0x3ff8c14940bbb1f2              # double 1.5471889999999999
	.quad	0x400c06ec17ebaf10              # double 3.5033799999999999
	.quad	0x4006781e03f70585              # double 2.8086509999999998
	.quad	0x4006d716d2aa5c5f              # double 2.8550239999999998
	.quad	0x401ba292c4934268              # double 6.9087630000000004
	.quad	0x4009a55c96030c24              # double 3.205743
	.quad	0x40117923e5b8561d              # double 4.3683009999999998
	.quad	0x4014e646f1561911              # double 5.2248799999999997
	.quad	0x400f3593e5fb71fc              # double 3.9011610000000001
	.quad	0x4010894e1a3f4667              # double 4.1340870000000001
	.quad	0x400ba91212513b5c              # double 3.457554
	.quad	0x4001e9c4da9003ef              # double 2.2391450000000002
	.quad	0x400647c73eee5259              # double 2.7850480000000002
	.quad	0x401200d23d4f15e8              # double 4.5008020000000002
	.quad	0x401f089ce4a7b4e5              # double 7.7584109999999997
	.quad	0x400ac6ac215b9a5b              # double 3.3470080000000002
	.quad	0x4011ac8c5004fb12              # double 4.4185040000000004
	.quad	0x401fa7b6fe2e6ea8              # double 7.9137839999999997
	.quad	0x401ea82491afc04d              # double 7.6642020000000004
	.quad	0x4005fadfb506dd6a              # double 2.7474970000000001
	.quad	0x40198c9081c2e33f              # double 6.38727
	.quad	0x400925929670196e              # double 3.1433460000000002
	.quad	0x4002fb8cb8e086be              # double 2.372827
	.quad	0x40201fb1183b6028              # double 8.0618979999999993
	.quad	0x402361107faa044b              # double 9.6895790000000001
	.quad	0x4015c80c308feac4              # double 5.4453589999999998
	.quad	0x3fc98897e996312f              # double 0.19948099999999999
	.quad	0x4013f789e774eebf              # double 4.9917369999999996
	.quad	0x4015107c84b5dcc6              # double 5.2660999999999998
	.quad	0x4021dbaecd07852f              # double 8.9290679999999991
	.quad	0x4015b804d9839475              # double 5.4297060000000004
	.quad	0x3ff3dc0767d34df0              # double 1.2412179999999999
	.quad	0x4012b4ddb5525cc4              # double 4.6766269999999999
	.quad	0x40201468ec52a412              # double 8.0398630000000004
	.quad	0x4016783a96d4c33b              # double 5.6174109999999997
	.quad	0x40176e33eff19503              # double 5.8576199999999998
	.quad	0x4023570a3d70a3d7              # double 9.6699999999999999
	.quad	0x4005656cd6c2efd4              # double 2.6745239999999999
	.quad	0x401cb28b2a6b0d95              # double 7.1743589999999999
	.quad	0x40124939eadd590c              # double 4.57151
	.quad	0x400876c61522a6f4              # double 3.057995
	.quad	0x3ffca4b662fdfc1a              # double 1.7902130000000001
	.quad	0x4019e70b49e01de2              # double 6.4756289999999996
	.quad	0x400da1b003686a4d              # double 3.7039490000000002
	.quad	0x4011f7c5260f5e42              # double 4.4919630000000002
	.quad	0x400971001d5c3159              # double 3.1801759999999999
	.quad	0x401fe90a350d2807              # double 7.9775780000000002
	.quad	0x400b3b98c7e28241              # double 3.4041000000000001
	.quad	0x4023cac625e99e95              # double 9.8960430000000005
	.quad	0x3ff99f70de8f6cf0              # double 1.601426
	.quad	0x40103995ee136e72              # double 4.0562360000000002
	.quad	0x401490d9945b6c37              # double 5.1414549999999997
	.quad	0x40116c55000c953a              # double 4.3557930000000002
	.quad	0x4016168e3ef28416              # double 5.5220269999999996
	.quad	0x401fd6605ee568a5              # double 7.9593519999999999
	.quad	0x401c5369fcf3dc05              # double 7.0814589999999997
	.quad	0x4022dc89b0ee49f5              # double 9.4307379999999998
	.quad	0x4015f639d5e4a383              # double 5.4904549999999999
	.quad	0x4008cf7446f9b995              # double 3.1012960000000001
	.quad	0x4022fb1ad2135dab              # double 9.4904390000000002
	.quad	0x4015d33721d53cde              # double 5.4562650000000001
	.quad	0x3ff3498d477bbf94              # double 1.205457
	.quad	0x401506d4c33b5393              # double 5.2566709999999999
	.quad	0x3fcc052d666a9824              # double 0.21890799999999999
	.quad	0x4019494ab1d4f9c2              # double 6.321574
	.quad	0x4014e9ba1b1960fa              # double 5.2282489999999999
	.quad	0x4004b6616b54e2b0              # double 2.5890529999999998
	.quad	0x401408c64fdb09a6              # double 5.0085689999999996
	.quad	0x401412d490e66cb1              # double 5.018389
	.quad	0x4021056dc1a47a9e              # double 8.5106029999999997
	.quad	0x3fdd028e4fb97bb7              # double 0.45328099999999999
	.quad	0x401027ac81d3aa37              # double 4.0387440000000003
	.quad	0x401e2cd8127b2cc7              # double 7.5437929999999999
	.quad	0x402276c636b09635              # double 9.2319809999999993
	.quad	0x4023b213e3e29308              # double 9.8478080000000005
	.quad	0x3fed0cb295e9e1b1              # double 0.90780000000000005
	.quad	0x40230300bcbe61d0              # double 9.505865
	.quad	0x40214cf8726d04e6              # double 8.6503329999999998
	.quad	0x4013330984e3ffef              # double 4.7998409999999998
	.quad	0x4006806af46aa088              # double 2.8127040000000001
	.quad	0x3ff642645e4e69f0              # double 1.3912089999999999
	.quad	0x401510b8066c2acc              # double 5.2663270000000004
	.quad	0x4016cdbec2480e8d              # double 5.7009230000000004
	.quad	0x3fc3fa97e132b55f              # double 0.156085
	.quad	0x400b3d5b24e9c454              # double 3.4049589999999998
	.quad	0x40147f30a4e379b7              # double 5.1242089999999996
	.quad	0x40004f75d9a0f0a6              # double 2.038799
	.quad	0x400a06698bb4d489              # double 3.2531310000000002
	.quad	0x401ea92ccf6be37e              # double 7.6652100000000001
	.quad	0x3ffde7b3d8e00086              # double 1.869068
	.quad	0x3fdf2b020c49ba5e              # double 0.48699999999999999
	.quad	0x400f8145953586cb              # double 3.9381210000000002
	.quad	0x4016e2339c0ebee0              # double 5.7209000000000003
	.quad	0x40090275ab7dc7ac              # double 3.126201
	.quad	0x4023f194c0160525              # double 9.9718379999999999
	.quad	0x40114358298cc144              # double 4.315766
	.quad	0x3ff32dbf8b9baa15              # double 1.198669
	.quad	0x40040d940789613d              # double 2.5066299999999999
	.quad	0x40027d188f42fe82              # double 2.3110819999999999
	.quad	0x4013ee9ab29e4d5e              # double 4.9830120000000004
	.quad	0x401da0e8427418d7              # double 7.4071360000000004
	.quad	0x4022ad9d99029ae5              # double 9.3390930000000001
	.quad	0x400e0ab81f969e3d              # double 3.7552340000000002
	.quad	0x402379c38b04ab60              # double 9.7378199999999993
	.quad	0x3ff48d045fe11127              # double 1.2844279999999999
	.quad	0x3fb50d5a5b9628cc              # double 0.082235000000000003
	.quad	0x400410b6b6e0d23d              # double 2.5081609999999999
	.quad	0x4006c68f4b61fe22              # double 2.8469530000000001
	.quad	0x3ff3f7cbb3c81909              # double 1.247997
	.quad	0x3ffa23465625a683              # double 1.6336120000000001
	.quad	0x400f3a16616b54e3              # double 3.9033630000000001
	.quad	0x40036b9991361dc9              # double 2.4275389999999999
	.quad	0x40093179bfdf7e80              # double 3.1491579999999999
	.quad	0x40128eab7995ee13              # double 4.6393259999999996
	.quad	0x4006f24af0bf1a5d              # double 2.8683070000000002
	.quad	0x40085b66f9335d25              # double 3.0446300000000002
	.quad	0x4013343dccea28fe              # double 4.8010169999999999
	.quad	0x40159563ed0f6274              # double 5.3958890000000004
	.quad	0x401e2e39f77292c5              # double 7.5451430000000003
	.quad	0x4012df18c9fb6135              # double 4.7178680000000002
	.quad	0x400c8603d577963a              # double 3.5654370000000002
	.quad	0x40230a75ee99a62f              # double 9.5204310000000003
	.quad	0x3fe7d82ba5a03819              # double 0.74513799999999997
	.quad	0x40212586a8fc0d2c              # double 8.5732929999999996
	.quad	0x400d861847f56217              # double 3.6904759999999999
	.quad	0x4023e3b107746888              # double 9.9447100000000006
	.quad	0x4020d1efb6dca07f              # double 8.4100319999999993
	.quad	0x401f2c86cebbba56              # double 7.7934830000000002
	.quad	0x4020fa5d4a5df224              # double 8.4889930000000006
	.quad	0x40235a847b24638d              # double 9.6767920000000007
	.quad	0x3ff421a1db877ab3              # double 1.258211
	.quad	0x401822efd438d1d9              # double 6.0341180000000003
	.quad	0x40185b30b5aa7158              # double 6.0890529999999998
	.quad	0x4011220c8cd63cb8              # double 4.2832509999999999
	.quad	0x40136a9bcfd4bf0a              # double 4.8541100000000004
	.quad	0x400fc1511dffc548              # double 3.9693930000000002
	.quad	0x3ff3d9ce075f6fd2              # double 1.240675
	.quad	0x4020170d413122b8              # double 8.0450230000000005
	.quad	0x40210575e2046c76              # double 8.5106649999999995
	.quad	0x401aa29f59ccfaf0              # double 6.658811
	.quad	0x401c0b9ecf638002              # double 7.0113479999999999
	.quad	0x401c25b749adc8fc              # double 7.0368320000000004
	.quad	0x401db2cd39da1661              # double 7.4246109999999996
	.quad	0x401e27c88e79aae7              # double 7.5388510000000001
	.quad	0x400185a921ccd962              # double 2.190264
	.quad	0x40159fc9363f572e              # double 5.4060410000000001
	.quad	0x3ffb7dec5f394b7b              # double 1.718243
	.quad	0x402241c4545846e9              # double 9.1284510000000001
	.quad	0x4022c6a098915bdd              # double 9.3879439999999991
	.quad	0x400532ca57a786c2              # double 2.6497999999999999
	.quad	0x402048d4562e09ff              # double 8.1422450000000008
	.quad	0x40146096bb98c7e3              # double 5.0943250000000004
	.quad	0x4012fc05d52c16df              # double 4.7461159999999998
	.quad	0x401d32f2f9873ffb              # double 7.2997550000000002
	.quad	0x401c465b20b8066c              # double 7.0687069999999999
	.quad	0x4006049dbec2480f              # double 2.7522540000000002
	.quad	0x4003f87724fa8b4c              # double 2.496321
	.quad	0x401f7cbf2b239a39              # double 7.871823
	.quad	0x401bd6a93f290abb              # double 6.9596299999999998
	.quad	0x4018ef75d9a0f0a6              # double 6.2338480000000001
	.quad	0x4009297396d0917d              # double 3.1452399999999998
	.quad	0x3fd32630ec311623              # double 0.29920600000000003
	.quad	0x4022c15c63ae2542              # double 9.3776580000000003
	.quad	0x4000703211cb039f              # double 2.054783
	.quad	0x401c4405f6ba0621              # double 7.0664290000000003
	.quad	0x401abfe931876189              # double 6.6874130000000003
	.quad	0x40116cd31769a911              # double 4.356274
	.quad	0x3fd4d2a62aa1943a              # double 0.32535700000000001
	.quad	0x4020f65881a15550              # double 8.4811440000000005
	.quad	0x40227a4d6e47dc38              # double 9.2388720000000006
	.quad	0x401d2f39d1b2e59b              # double 7.296119
	.quad	0x402250986fcdee35              # double 9.157413
	.quad	0x401a357c4e2f37fc              # double 6.5522320000000001
	.quad	0x4010a3c9eecbfb16              # double 4.1599500000000003
	.quad	0x40133954a7f8012e              # double 4.805987
	.quad	0x400eb73c0c1fc8f3              # double 3.8394699999999999
	.quad	0x4006667b5f1bef4a              # double 2.8000400000000001
	.quad	0x3fd9990afe60c38f              # double 0.39996599999999999
	.quad	0x4023df57d5a9eb20              # double 9.9362169999999992
	.quad	0x40209e20685553ef              # double 8.3088409999999993
	.quad	0x4023765668c26139              # double 9.731128
	.quad	0x3ff0fce3150dae3e              # double 1.0617399999999999
	.quad	0x4014c89c5e6ff7e0              # double 5.1959090000000003
	.quad	0x3ffd4cb295e9e1b1              # double 1.8312250000000001
	.quad	0x4006aac083126e98              # double 2.8333750000000002
	.quad	0x4013cad96a6a0126              # double 4.9480950000000004
	.quad	0x40232c970f7b9e06              # double 9.5870899999999999
	.quad	0x401b9a5accd53049              # double 6.9007370000000003
	.quad	0x4007f7be9856a37b              # double 2.9959690000000001
	.quad	0x40049f2b239a38fc              # double 2.5777190000000001
	.quad	0x402249d755bccaf7              # double 9.1442209999999999
	.quad	0x40227e440f238972              # double 9.246613
	.quad	0x4001bb8130164841              # double 2.2165550000000001
	.quad	0x400ad00474d9c6b0              # double 3.3515709999999999
	.quad	0x40224d810624dd2f              # double 9.1513749999999998
	.quad	0x40116bc8c0ce91c9              # double 4.3552580000000001
	.quad	0x401d5cfdd2285660              # double 7.3408119999999997
	.quad	0x4014fba8826aa8eb              # double 5.2457599999999998
	.quad	0x4005c1c79b34a44c              # double 2.7196189999999998
	.quad	0x40144bab21815a08              # double 5.0738950000000003
	.quad	0x4015212d77318fc5              # double 5.2824
	.quad	0x3fe7b877ab324852              # double 0.74126800000000004
	.quad	0x3febe2328f9f44d4              # double 0.87136199999999996
	.quad	0x3ff17deb52c9d170              # double 1.093242
	.quad	0x4010ba9c560c7c0f              # double 4.1822369999999998
	.quad	0x3ff4582ecaeea63b              # double 1.2715289999999999
	.quad	0x3fd003c07ee0b0af              # double 0.25022899999999998
	.quad	0x3ff1911276fb0920              # double 1.0979179999999999
	.quad	0x3ffc6106ab14ec20              # double 1.7736879999999999
	.quad	0x401002c6ef3d3a1d              # double 4.0027119999999998
	.quad	0x4017f0f5e41d4b6a              # double 5.9853129999999997
	.quad	0x4021e0a915379fa9              # double 8.9387899999999991
	.quad	0x4022ba79fec99f1b              # double 9.3642120000000002
	.quad	0x4021c66b1e5c0b9a              # double 8.8875360000000008
	.quad	0x3ffed36a400fba88              # double 1.926615
	.quad	0x4022a774aba38759              # double 9.3270619999999997
	.quad	0x4020041e14bdfd26              # double 8.0080419999999997
	.quad	0x40211fa85015c209              # double 8.5618309999999997
	.quad	0x401456d612c6ac21              # double 5.0848009999999997
	.quad	0x3fed618266772d5e              # double 0.918153
	.quad	0x40058f9a8cdea034              # double 2.695119
	.quad	0x4022354c76d117b5              # double 9.1040989999999997
	.quad	0x4000752e2fbe33ad              # double 2.0572170000000001
	.quad	0x400bff2a172abef0              # double 3.4995919999999998
	.quad	0x4022cbe24febd09e              # double 9.3982109999999999
	.quad	0x40230352c9d16fca              # double 9.5064910000000005
	.quad	0x4022c50e779207d5              # double 9.3848760000000002
	.quad	0x3ff70f08461f9f02              # double 1.4411700000000001
	.quad	0x4023b2f46aa087ca              # double 9.8495209999999993
	.quad	0x401e095464dc22ab              # double 7.5091109999999998
	.quad	0x3ffce42aed139431              # double 1.8057049999999999
	.quad	0x3fc14e5d5b24e9c4              # double 0.13520399999999999
	.quad	0x401251c044284dfd              # double 4.5798350000000001
	.quad	0x4009ad3d859c8c93              # double 3.2095899999999999
	.quad	0x3ff5a7a0f9096bba              # double 1.3534250000000001
	.quad	0x4003fcfede97d06c              # double 2.4985330000000001
	.quad	0x4010227b2cc70868              # double 4.0336730000000003
	.quad	0x401336bd6e8af816              # double 4.8034569999999999
	.quad	0x40126d1e108c3f3e              # double 4.60656
	.quad	0x3fe58eeae9ee45c3              # double 0.67369599999999996
	.quad	0x4016f7304039abf3              # double 5.7413949999999998
	.quad	0x4015b2dbe7f2c301              # double 5.4246670000000003
	.quad	0x401911d29dc725c4              # double 6.2674050000000001
	.quad	0x400506961c36976c              # double 2.6282160000000001
	.quad	0x3fe2c241c3efae79              # double 0.58621299999999998
	.quad	0x4017376640a6b93d              # double 5.8041010000000002
	.quad	0x401eda8c154c985f              # double 7.7134249999999999
	.quad	0x40061efb6dca07f6              # double 2.7651279999999998
	.quad	0x4011f28bf3bea91e              # double 4.4868620000000004
	.quad	0x3fefe4c729f59cd0              # double 0.99667700000000004
	.quad	0x3fef1ef73c0c1fc9              # double 0.97253
	.quad	0x401536ad2dcb1466              # double 5.3033950000000001
	.quad	0x4009e04534bd76ee              # double 3.2345069999999998
	.quad	0x400dbf811f4f50a0              # double 3.7185079999999999
	.quad	0x3fb03e10060780fe              # double 0.063447000000000003
	.quad	0x4021b508f648c719              # double 8.8535839999999997
	.quad	0x40219af102363b25              # double 8.8026199999999992
	.quad	0x40129fc2a8869c67              # double 4.6560160000000002
	.quad	0x4016afdf3b645a1d              # double 5.6717500000000003
	.quad	0x3fd607aaef2c7326              # double 0.34421800000000002
	.quad	0x4021a1374bc6a7f0              # double 8.8148750000000007
	.quad	0x40223f8ee2867275              # double 9.1241369999999993
	.quad	0x401144628027d88c              # double 4.3167819999999999
	.quad	0x3fec88d2a1f8e3ac              # double 0.89170199999999999
	.quad	0x40054c6a3bddfca0              # double 2.662312
	.quad	0x401046709fa54c55              # double 4.0687889999999998
	.quad	0x402105dc1e7967cb              # double 8.5114450000000001
	.quad	0x4023bded06fef7c2              # double 9.8709489999999995
	.quad	0x402090c2a454de7f              # double 8.2827350000000006
	.quad	0x3febbc925785f8d3              # double 0.86676900000000001
	.quad	0x401cf3e0bd44998d              # double 7.238162
	.quad	0x401ca7763e4abe6a              # double 7.1635369999999998
	.quad	0x400e1b738e6d15ad              # double 3.763404
	.quad	0x4009372d5e071c54              # double 3.151942
	.quad	0x40139112ba16e7a3              # double 4.8916729999999999
	.quad	0x4020bb2ce89656ef              # double 8.365577
	.quad	0x401aca25529fe005              # double 6.6974080000000002
	.quad	0x3ffecce1c58255b0              # double 1.92502
	.quad	0x4015dc7f77af6406              # double 5.4653299999999998
	.quad	0x4018c6a444178705              # double 6.1939859999999998
	.quad	0x400961a261bf37b9              # double 3.1726730000000001
	.quad	0x4022d51611ba3ca7              # double 9.4161839999999994
	.quad	0x40231bdddb1209ee              # double 9.5544270000000004
	.quad	0x401d4452c59fb1e2              # double 7.3167220000000004
	.quad	0x400b3ee78183f91e              # double 3.4057149999999998
	.quad	0x3fff6a4ca4f440af              # double 1.963452
	.quad	0x4007edaa0cae642c              # double 2.991047
	.quad	0x3fd7b66f9335d24a              # double 0.37051000000000001
	.quad	0x401aa492ff4ba51a              # double 6.660717
	.quad	0x4002d0a137f38c54              # double 2.3518699999999999
	.quad	0x4006d9fdbd2fa0d7              # double 2.8564409999999998
	.quad	0x3fe74916ca46e08f              # double 0.72767199999999999
	.quad	0x3ff7d3c36113404f              # double 1.4892000000000001
	.quad	0x401d9d43d03968d7              # double 7.4035789999999997
	.quad	0x401e4f0b6b6e0d24              # double 7.5771920000000001
	.quad	0x400f699ae924f228              # double 3.9265650000000001
	.quad	0x4004e848387df5cf              # double 2.6134189999999999
	.quad	0x400b6f6ad70e6f2f              # double 3.4294030000000002
	.quad	0x3ff8b02d59d55e6c              # double 1.5430120000000001
	.quad	0x40231241a261bf38              # double 9.5356570000000004
	.quad	0x3ffda410b630a915              # double 1.852555
	.quad	0x4015803b81b64e05              # double 5.3752269999999998
	.quad	0x401ac621fafc8b00              # double 6.6934889999999996
	.quad	0x4003c5baf533f423              # double 2.4715479999999999
	.quad	0x3fe24b9a9da597d5              # double 0.57172900000000004
	.quad	0x3ff2681ecd4aa10e              # double 1.15042
	.quad	0x4005ab780346dc5d              # double 2.7087249999999998
	.quad	0x3fd1b10fd7e45804              # double 0.27643200000000001
	.quad	0x40239eb50b0f27bb              # double 9.8099749999999996
	.quad	0x4012c0389f83be66              # double 4.687716
	.quad	0x3ff17f39d1b2e59b              # double 1.093561
	.quad	0x3fe3d45e9185cee1              # double 0.61967399999999995
	.quad	0x401a91d53cddd6e0              # double 6.6424149999999997
	.quad	0x40029459d99029ae              # double 2.3224369999999999
	.quad	0x40135199780baa58              # double 4.8296869999999998
	.quad	0x402036fb2aae2974              # double 8.1073850000000007
	.quad	0x401d8bdc69f8c21e              # double 7.3865829999999999
	.quad	0x40105416bdb1a6d7              # double 4.0821180000000004
	.quad	0x4016c03bc4d22c88              # double 5.6877279999999999
	.quad	0x4000488f861a60d4              # double 2.0354299999999999
	.quad	0x4013add052934acb              # double 4.91974
	.quad	0x401213cb3e5753a4              # double 4.5193300000000001
	.quad	0x3fbe57d9dba908a2              # double 0.11852799999999999
	.quad	0x4004978ab0c88a48              # double 2.573995
	.quad	0x401494241c3efae8              # double 5.1446690000000004
	.quad	0x4023dcb790fb6567              # double 9.9310880000000008
	.quad	0x401d417efe0ce0b9              # double 7.3139609999999999
	.quad	0x402374f93bc0a06f              # double 9.7284640000000006
	.quad	0x3fab34e7685985ad              # double 0.053137999999999998
	.quad	0x400c89b413986339              # double 3.5672380000000001
	.quad	0x40100eb7cbb3c819              # double 4.014373
	.quad	0x4013ac5436b8f9b1              # double 4.9182899999999998
	.quad	0x400728909289dae0              # double 2.8948070000000001
	.quad	0x40137070329802c1              # double 4.8598030000000003
	.quad	0x400599dcb5781c71              # double 2.7001279999999999
	.quad	0x4002135daad60200              # double 2.2594560000000001
	.quad	0x401b2fcd24e160d9              # double 6.7966810000000004
	.quad	0x4001bdd095af294e              # double 2.2176830000000001
	.quad	0x4019341355475a32              # double 6.3008550000000003
	.quad	0x4004eeefa1e3eaf7              # double 2.6166680000000002
	.quad	0x400dba4ce8101f32              # double 3.715967
	.quad	0x4016f2e2328f9f45              # double 5.7371910000000002
	.quad	0x40232eca46e08f21              # double 9.5913869999999992
	.quad	0x3fadfeb8d8234224              # double 0.058583999999999997
	.quad	0x3fcbb7cfe5860136              # double 0.21654699999999999
	.quad	0x40223c450268900c              # double 9.1177139999999994
	.quad	0x40206ebf01322f27              # double 8.2163009999999996
	.quad	0x4020555fbb517a46              # double 8.1667459999999998
	.quad	0x3fededaa92e62132              # double 0.93526200000000004
	.quad	0x4009d014b599aa61              # double 3.2266020000000002
	.quad	0x402104e0fc2eba28              # double 8.5095290000000006
	.quad	0x4020891f2dc2b0ea              # double 8.2678159999999998
	.quad	0x401ac5b6c3760bf6              # double 6.6930800000000001
	.quad	0x401410e30446b69e              # double 5.0164910000000003
	.quad	0x401d5c61522a6f3f              # double 7.3402149999999997
	.quad	0x40179a2c2374794f              # double 5.9005590000000003
	.quad	0x400df3dea465a576              # double 3.7440769999999999
	.quad	0x4011cd04a2fcefaa              # double 4.4502129999999998
	.quad	0x40115103c8e25c81              # double 4.329116
	.quad	0x402030b6b6e0d23d              # double 8.0951439999999995
	.quad	0x3ff7ecd39da16617              # double 1.4953190000000001
	.quad	0x4011c03925bb7b6c              # double 4.4377180000000003
	.quad	0x40168100a393ee5f              # double 5.6259790000000001
	.quad	0x400e2a5614df8b15              # double 3.7706719999999998
	.quad	0x4014533508f648c7              # double 5.0812569999999999
	.quad	0x401cae2d1f1cfbb9              # double 7.1700939999999997
	.quad	0x4014e6b3354c1227              # double 5.2252929999999997
	.quad	0x401f86bb55ac03ff              # double 7.8815739999999996
	.quad	0x401a47aeddce7cd0              # double 6.5700029999999998
	.quad	0x40054d2674080f99              # double 2.662671
	.quad	0x3fa55da272862f5a              # double 0.041730000000000003
	.quad	0x4021cf0f5a1016ce              # double 8.9044139999999992
	.quad	0x400e0a5d6bebe165              # double 3.755061
	.quad	0x400fe5dc8323358f              # double 3.9872369999999999
	.quad	0x4008349a5657fb6a              # double 3.0256850000000002
	.quad	0x40110e8fb00bcbe6              # double 4.2642199999999999
	.quad	0x4017c6bf01322f27              # double 5.9440879999999998
	.quad	0x3ffe06bf01322f27              # double 1.876647
	.quad	0x3fd9ce95faa8a82a              # double 0.40323399999999998
	.quad	0x4017217481b21c47              # double 5.7826709999999997
	.quad	0x401ac8c7e28240b8              # double 6.6960750000000004
	.quad	0x400c7a5870da5daf              # double 3.559739
	.quad	0x3ffdae136e71cda3              # double 1.8549990000000001
	.quad	0x401dae93e1c9b414              # double 7.4204860000000004
	.quad	0x4011620791c4b902              # double 4.3457319999999999
	.quad	0x40202c1a048e043a              # double 8.0861359999999998
	.quad	0x3ff220ee8d10f51b              # double 1.13304
	.quad	0x402105a8bd230b9e              # double 8.5110530000000004
	.quad	0x400ac95e17e34b94              # double 3.3483239999999999
	.quad	0x401690b73d188f43              # double 5.641324
	.quad	0x40174e5bc87db2b3              # double 5.8265219999999998
	.quad	0x401d146d3f9e7b81              # double 7.2699480000000003
	.quad	0x40205cea6c1a048e              # double 8.181476
	.quad	0x402304e7cd035372              # double 9.5095810000000007
	.quad	0x4023edbf0563ed0f              # double 9.9643479999999993
	.quad	0x3ff27926c7eae5bd              # double 1.1545780000000001
	.quad	0x401df0370cdc8755              # double 7.484585
	.quad	0x400020dd3fe1975f              # double 2.0160469999999999
	.quad	0x3ff11539b888722a              # double 1.067682
	.quad	0x401b6b5bf6a0dbad              # double 6.8548429999999998
	.quad	0x401af9717df19d67              # double 6.7435970000000003
	.quad	0x400094fa48301a7a              # double 2.072743
	.quad	0x401c7ebf65dbfceb              # double 7.1237769999999996
	.quad	0x3fdfee88df37329c              # double 0.49893399999999999
	.quad	0x401303cbc48f10aa              # double 4.7537070000000003
	.quad	0x3ff5337da61e0c5b              # double 1.3250710000000001
	.quad	0x3fc3fd9ba1b19610              # double 0.15617700000000001
	.quad	0x3ff71ecd4aa10e02              # double 1.44502
	.quad	0x401fa6c0d6f544bb              # double 7.9128449999999999
	.quad	0x4021854e8fb00bcc              # double 8.7603650000000001
	.quad	0x3ffe7cd67fd3f5b6              # double 1.905478
	.quad	0x401316a161e4f766              # double 4.7721
	.quad	0x40226c66f5019f3c              # double 9.2117229999999992
	.quad	0x402041b845564b66              # double 8.1283589999999997
	.quad	0x4022d84cf0739b02              # double 9.4224619999999994
	.quad	0x4014bafaf8594291              # double 5.1825979999999996
	.quad	0x3fddf5fd47bedb73              # double 0.46813900000000003
	.quad	0x4002023b7952d235              # double 2.25109
	.quad	0x400917aa25d8d79d              # double 3.136555
	.quad	0x3fd665c70435efa6              # double 0.349962
	.quad	0x401f1569f4906035              # double 7.770912
	.quad	0x4012c2474538ef35              # double 4.6897250000000001
	.quad	0x3fd4e3b46fdeb52d              # double 0.32639800000000002
	.quad	0x3fcf91361dc93ea3              # double 0.246619
	.quad	0x3ff1fdfe32a0663c              # double 1.1245099999999999
	.quad	0x401f8450efdc9c4e              # double 7.8792150000000003
	.quad	0x40026ca4f440af1d              # double 2.3030490000000001
	.quad	0x401fa9dcb5781c71              # double 7.9158809999999997
	.quad	0x4023c11e42e12620              # double 9.8771839999999997
	.quad	0x40237bf572de43ee              # double 9.7421070000000007
	.quad	0x4020537a5f41aef7              # double 8.163043
	.quad	0x4012316872b020c5              # double 4.5482500000000003
	.quad	0x40227d7a56de3327              # double 9.2450740000000007
	.quad	0x4010dd3d4280ae10              # double 4.2160539999999997
	.quad	0x40108e33269df97b              # double 4.1388670000000003
	.quad	0x40212f4e874c8ffc              # double 8.5923960000000008
	.quad	0x402119ada76d97b3              # double 8.5501529999999999
	.quad	0x40023dbd2fa0d77b              # double 2.2801459999999998
	.quad	0x4021e2fd32c625ea              # double 8.9433380000000007
	.quad	0x3fe1f8183f91e647              # double 0.56153500000000001
	.quad	0x40196e8c0485a0be              # double 6.3579559999999997
	.quad	0x4021983254e6e222              # double 8.7972590000000004
	.quad	0x3fb8489d27c39368              # double 0.094857999999999998
	.quad	0x40220ff7164c729f              # double 9.0311819999999994
	.quad	0x4008a35371971c11              # double 3.0797490000000001
	.quad	0x4015848a9bcfd4bf              # double 5.379435
	.quad	0x400a8283d35eb745              # double 3.3137279999999998
	.quad	0x401652239e6ab9b2              # double 5.5802139999999998
	.quad	0x400bd10a137f38c5              # double 3.4770699999999999
	.quad	0x400f7e89a88ace25              # double 3.9367860000000001
	.quad	0x4023cbe6c4c5974e              # double 9.8982449999999993
	.quad	0x4013a962cfd8f0c7              # double 4.9154159999999996
	.quad	0x40170a4b124d099e              # double 5.7600519999999999
	.quad	0x3ff16cbd987c6328              # double 1.089048
	.quad	0x3faefb09203a322b              # double 0.060509
	.quad	0x3ffcc49fd7a13c25              # double 1.7980039999999999
	.quad	0x402321a2834d26fa              # double 9.5656929999999996
	.quad	0x3ff6bf06705c896e              # double 1.421637
	.quad	0x4021bd634549b62c              # double 8.8698979999999991
	.quad	0x4020f60589acbc8c              # double 8.4805109999999999
	.quad	0x40169a24463065f9              # double 5.6505289999999997
	.quad	0x3ffb5256798958da              # double 1.7076020000000001
	.quad	0x401c3b24638c9753              # double 7.0577560000000004
	.quad	0x4000fd8b60f1b25f              # double 2.1238009999999998
	.quad	0x400fe1e4f765fd8b              # double 3.9853000000000001
	.quad	0x40209a4638c97529              # double 8.3013169999999992
	.quad	0x3ff2be02645e4e6a              # double 1.171389
	.quad	0x4012800eae18ac9f              # double 4.6250559999999998
	.quad	0x4017b4c87980f55e              # double 5.9265460000000001
	.quad	0x401ed64883fd5022              # double 7.7092609999999997
	.quad	0x401f7d96638433d7              # double 7.8726440000000001
	.quad	0x3ff706cb966be7b0              # double 1.4391590000000001
	.quad	0x4021967d34df04de              # double 8.7939240000000005
	.quad	0x402065cdb37c99af              # double 8.1988350000000008
	.quad	0x401b5f6dfc5cdd51              # double 6.8431930000000003
	.quad	0x4020e1abd1aa821f              # double 8.4407639999999997
	.quad	0x401a3eb78897e996              # double 6.5612469999999998
	.quad	0x40149ea4a8c154ca              # double 5.1549250000000004
	.quad	0x40053e889c1b5419              # double 2.6555339999999998
	.quad	0x3ffd06573215fcc2              # double 1.8140480000000001
	.quad	0x4012f1676640a6b9              # double 4.7357459999999998
	.quad	0x401558fb43d89ce5              # double 5.3368960000000003
	.quad	0x40219fcbd556084a              # double 8.8121019999999994
	.quad	0x3fe3aa68f4b61fe2              # double 0.61455199999999999
	.quad	0x401d0f737da61e0c              # double 7.2650889999999997
	.quad	0x401a93b03e20ccff              # double 6.6442269999999999
	.quad	0x401aeb9baa1511e0              # double 6.730086
	.quad	0x402059f0c34c1a8b              # double 8.1756650000000004
	.quad	0x401b746994185059              # double 6.8636840000000001
	.quad	0x400a30ed3d859c8d              # double 3.2738900000000002
	.quad	0x40194cc575c0767d              # double 6.3249719999999998
	.quad	0x4014882d7b634dad              # double 5.1329859999999998
	.quad	0x401e565b20b8066c              # double 7.5843319999999999
	.quad	0x4019540314877681              # double 6.3320429999999996
	.quad	0x4006099a62ed3522              # double 2.7546889999999999
	.quad	0x4021a580a17b0f6b              # double 8.8232470000000003
	.quad	0x40136544fe36d224              # double 4.8488959999999999
	.quad	0x401e3ed41b75a74c              # double 7.561356
	.quad	0x402187d0aed99cbf              # double 8.7652640000000002
	.quad	0x3fe00aeb80ecfa6a              # double 0.50133300000000003
	.quad	0x3ffae40b780346dc              # double 1.6806749999999999
	.quad	0x40207ac55c96030c              # double 8.2397869999999997
	.quad	0x401415e74299d884              # double 5.0213900000000002
	.quad	0x3fc9db1a6d698fe7              # double 0.20199900000000001
	.quad	0x401909420b3d4ae4              # double 6.2590409999999999
	.quad	0x4016d5492ff4ba52              # double 5.7082870000000003
	.quad	0x4016c078d92fb19e              # double 5.6879609999999996
	.quad	0x400ddd798d8a979e              # double 3.733142
	.quad	0x40165b9841aac53b              # double 5.589448
	.quad	0x401a44e054690de1              # double 6.5672620000000004
	.quad	0x4003b676ea422899              # double 2.4640939999999998
	.quad	0x4022654cb9ecf638              # double 9.1978509999999999
	.quad	0x4010b4a0a0f4d7ae              # double 4.1763940000000002
	.quad	0x400acf42784a9479              # double 3.3512010000000001
	.quad	0x3ff46d0d49949e88              # double 1.276624
	.quad	0x40226db70691ea79              # double 9.2142870000000006
	.quad	0x4008b6c9c0a8d21c              # double 3.0892520000000001
	.quad	0x4016716872b020c5              # double 5.6107500000000003
	.quad	0x4022a1fd1569f490              # double 9.3163839999999993
	.quad	0x401b8c2ca148ba84              # double 6.886889
	.quad	0x3ff014eb13dfb0d5              # double 1.005107
	.quad	0x3feb33721d53cddd              # double 0.85002999999999995
	.quad	0x402272e5796bfca8              # double 9.2244069999999993
	.quad	0x3ff3b866e43aa79c              # double 1.2325200000000001
	.quad	0x400df38fffbce421              # double 3.7439269999999998
	.quad	0x401a483fd5022574              # double 6.5705559999999998
	.quad	0x4015a536933a0408              # double 5.4113410000000002
	.quad	0x400adaffb04ee7c5              # double 3.3569330000000002
	.quad	0x400bb4117f84449e              # double 3.4629240000000001
	.quad	0x3fe84460ed80a17b              # double 0.75834699999999999
	.quad	0x402175daf07bfe7e              # double 8.7301859999999998
	.quad	0x4020a69fcf3dc055              # double 8.3254380000000001
	.quad	0x401e6e1975f2cb64              # double 7.6075189999999999
	.quad	0x3fe4616b54e2b064              # double 0.63689200000000001
	.quad	0x401810ab71327243              # double 6.0162789999999999
	.quad	0x4002b59578a2a90d              # double 2.3386640000000001
	.quad	0x3ff10ac083126e98              # double 1.0651250000000001
	.quad	0x40157196d8f4f93c              # double 5.3609270000000002
	.quad	0x401610d38cda6e76              # double 5.516432
	.quad	0x4022bd78811b1d93              # double 9.3700600000000004
	.quad	0x4017e5e0b4e11dbd              # double 5.9744900000000003
	.quad	0x4023c4384ba0e842              # double 9.8832419999999992
	.quad	0x40112bead4f5903a              # double 4.2928879999999996
	.quad	0x400dde0ce0b912dc              # double 3.7334230000000002
	.quad	0x4012e07e5a78f25a              # double 4.7192319999999999
	.quad	0x4017506c8711d799              # double 5.8285390000000001
	.quad	0x4021bf727136a401              # double 8.87392
	.quad	0x4003188d2a1f8e3b              # double 2.3869880000000001
	.quad	0x40142509bf9c62a2              # double 5.0361700000000003
	.quad	0x401f5b0f6ad70e6f              # double 7.8389259999999998
	.quad	0x4019adf86e3b46fe              # double 6.4198930000000001
	.quad	0x3fd349e8815e3971              # double 0.30138599999999999
	.quad	0x400c64d4cb9ecf64              # double 3.5492340000000002
	.quad	0x401782da554b8bf0              # double 5.8777860000000004
	.quad	0x4007966f0cfe1544              # double 2.9484539999999999
	.quad	0x40222e2cba732df5              # double 9.090185
	.quad	0x4013a485a0be5109              # double 4.910666
	.quad	0x40122ceaaf35e311              # double 4.5438640000000001
	.quad	0x4018d2163fdd65a1              # double 6.2051629999999998
	.quad	0x4017fb9ae0c17657              # double 5.9957079999999996
	.quad	0x4015af39085f4a12              # double 5.4211159999999996
	.quad	0x40174b60ae9680e0              # double 5.8236109999999996
	.quad	0x4022e7d63022dd7b              # double 9.4528060000000007
	.quad	0x401bbd2630ec3116              # double 6.9347159999999999
	.quad	0x401088ed5f138bce              # double 4.133718
	.quad	0x400e20cf9e3864cb              # double 3.7660209999999998
	.quad	0x4010dd74d594f26b              # double 4.2162660000000001
	.quad	0x402319094a2b9d3d              # double 9.5488990000000004
	.quad	0x4022639cf9a06a6e              # double 9.1945569999999996
	.quad	0x3fea1c51dabe2718              # double 0.81595700000000004
	.quad	0x4019569a4df47f99              # double 6.3345729999999998
	.quad	0x400a9da37ef5a965              # double 3.326972
	.quad	0x3fd2eb8d82342246              # double 0.29562699999999997
	.quad	0x4018d296f6512a95              # double 6.205654
	.quad	0x40141b645a1cac08              # double 5.0267499999999998
	.quad	0x4002bbd273d5bab2              # double 2.34171
	.quad	0x400ac93532e7b3d9              # double 3.3482460000000001
	.quad	0x3fe00b5ed8d36b4c              # double 0.50138799999999994
	.quad	0x402284cfaeff5c6c              # double 9.2593969999999998
	.quad	0x3fe2754f3775b813              # double 0.57682
	.quad	0x400a694812be48a6              # double 3.3014070000000002
	.quad	0x4017c9f44d445671              # double 5.9472209999999999
	.quad	0x402252fbe33acd5b              # double 9.1620779999999993
	.quad	0x4004bc8e25c810a5              # double 2.5920679999999998
	.quad	0x4018a5532617c1be              # double 6.1614500000000003
	.quad	0x401135ffe6d58c8f              # double 4.3027340000000001
	.quad	0x3fdacf0739b024f6              # double 0.41888599999999998
	.quad	0x4007de68a0d349bf              # double 2.9835980000000002
	.quad	0x3fd9f8fcd67fd3f6              # double 0.40582200000000002
	.quad	0x40026e5b4245f5ae              # double 2.3038850000000002
	.quad	0x3febd3da72a7bd49              # double 0.86961100000000002
	.quad	0x3ff0871a3b14a904              # double 1.0329839999999999
	.quad	0x4000c3f141205bc0              # double 2.095675
	.quad	0x3fe93ab21815a07b              # double 0.78841499999999998
	.quad	0x3fe8cda4ce8101f3              # double 0.77510299999999999
	.quad	0x3fc5c74751ce28ed              # double 0.17014399999999999
	.quad	0x401231ca3a4b5569              # double 4.5486230000000001
	.quad	0x4007b6b65a9a8049              # double 2.9642149999999998
	.quad	0x3fc22b5a20ddc619              # double 0.14194799999999999
	.quad	0x4008fdaceee0f3cb              # double 3.1238649999999999
	.quad	0x3ff8adc1a47a9e2c              # double 1.542421
	.quad	0x3fe4fc243dccea29              # double 0.655779
	.quad	0x401e3f81a5870da6              # double 7.5620180000000001
	.quad	0x402199e364bec67a              # double 8.8005630000000004
	.quad	0x401ec4302b40f66a              # double 7.6915899999999997
	.quad	0x40020738a3b57c4e              # double 2.2535259999999999
	.quad	0x4014f057082491b0              # double 5.2347070000000002
	.quad	0x402128793dd97f63              # double 8.5790500000000005
	.quad	0x4009337867f0aa22              # double 3.1501320000000002
	.quad	0x3f7a858793dd97f6              # double 0.0064749999999999999
	.quad	0x40115fcce1c58256              # double 4.3435550000000003
	.quad	0x401cdccbc05d52c1              # double 7.2156209999999996
	.quad	0x401f6a67a52ac754              # double 7.8539110000000001
	.quad	0x401a9a6a875d56f3              # double 6.6507969999999998
	.quad	0x3fda97635e74299e              # double 0.41549000000000003
	.quad	0x4023202afdda8bd2              # double 9.5628279999999997
	.quad	0x400f22e019b0ab2e              # double 3.892029
	.quad	0x400d37ca2120e1f8              # double 3.6522410000000001
	.quad	0x4022f18a86d71f36              # double 9.4717599999999997
	.quad	0x401028de2ac32229              # double 4.0399099999999999
	.quad	0x4023bc3b2dd377e2              # double 9.8676390000000005
	.quad	0x401bb01c92ddbdb6              # double 6.9219840000000001
	.quad	0x3fe437baecd07853              # double 0.631803
	.quad	0x4020bca3a4b5568f              # double 8.3684360000000009
	.quad	0x3ff663a29c779a6b              # double 1.3993249999999999
	.quad	0x402179a4df47f994              # double 8.7375860000000002
	.quad	0x4016db9c304ccee6              # double 5.7144630000000003
	.quad	0x4008344b2b777d0f              # double 3.0255339999999999
	.quad	0x40008a012599ed7c              # double 2.0673849999999998
	.quad	0x3fd8f88fc9363f57              # double 0.39017099999999999
	.quad	0x40023bea0ba1f4b2              # double 2.279255
	.quad	0x3fed987e7c06e19c              # double 0.92486500000000004
	.quad	0x401827eed45e9186              # double 6.0389970000000002
	.quad	0x400e3aea3161a1dc              # double 3.7787670000000002
	.quad	0x4007d69f4906034f              # double 2.9797959999999999
	.quad	0x4016337de939eadd              # double 5.5502849999999997
	.quad	0x4022ead46f587d70              # double 9.4586520000000007
	.quad	0x400cf0e23af31b15              # double 3.6176189999999999
	.quad	0x40161365881a1555              # double 5.518942
	.quad	0x4023c056c508b32d              # double 9.8756620000000001
	.quad	0x401a43d74d594f27              # double 6.5662510000000003
	.quad	0x40225db4245f5ad9              # double 9.1830149999999993
	.quad	0x400c9fd47bedb728              # double 3.5780419999999999
	.quad	0x400fe1a719b4dcec              # double 3.985182
	.quad	0x4015f0574b407033              # double 5.4847080000000004
	.quad	0x3fec2003ab862b28              # double 0.87890800000000002
	.quad	0x401ee60999dcb578              # double 7.7246459999999999
	.quad	0x4010d21c475e6363              # double 4.2051860000000003
	.quad	0x40152fbf401c4fc2              # double 5.2966280000000001
	.quad	0x401dba06a6e32e38              # double 7.4316659999999998
	.quad	0x4023206ab14ec205              # double 9.563314
	.quad	0x3ffe6a582dbe7f2c              # double 1.900963
	.quad	0x40199a1554fbdad7              # double 6.4004719999999997
	.quad	0x401d9c371da37ef6              # double 7.4025540000000003
	.quad	0x4013e35ac8a37260              # double 4.9720259999999996
	.quad	0x4006488c60cbf2b2              # double 2.7854239999999999
	.quad	0x400158d5842b734b              # double 2.1683759999999999
	.quad	0x40216c32ca57a787              # double 8.7113250000000004
	.quad	0x4022b17fa5d28d00              # double 9.3466769999999997
	.quad	0x401fc57e670e2c13              # double 7.9428650000000002
	.quad	0x400dc2b628459967              # double 3.7200739999999999
	.quad	0x4010c5e9e1b089a0              # double 4.1932749999999999
	.quad	0x4003e9dadfb506dd              # double 2.4891869999999998
	.quad	0x401c23b2dd377e1c              # double 7.0348620000000004
	.quad	0x40082aa4b9884c6a              # double 3.0208219999999999
	.quad	0x400d75c209246bf0              # double 3.682499
	.quad	0x4022f990f301eabc              # double 9.4874340000000003
	.quad	0x4019b3300de4c511              # double 6.4249879999999999
	.quad	0x40090a465a57646b              # double 3.130017
	.quad	0x3fd6b851eb851eb8              # double 0.35499999999999998
	.quad	0x40189d3d859c8c93              # double 6.1535549999999999
	.quad	0x4022a628240b7803              # double 9.3245249999999995
	.quad	0x40145b630a91537a              # double 5.089245
	.quad	0x4021ee2ac3222920              # double 8.9651700000000005
	.quad	0x4017ed6e8af81627              # double 5.9818670000000003
	.quad	0x4016e7c6b8b69553              # double 5.7263440000000001
	.quad	0x4021eca25529fe00              # double 8.9621759999999994
	.quad	0x400eaa3cea6c1a05              # double 3.8331240000000002
	.quad	0x401b57eb6bf444e1              # double 6.8358590000000001
	.quad	0x4008c7136a400fbb              # double 3.0972050000000002
	.quad	0x3ff48af1cb89d6ae              # double 1.283922
	.quad	0x3ff160c7c0f45176              # double 1.086128
	.quad	0x401ee7cdcca70d20              # double 7.7263710000000003
	.quad	0x3ffe74ea8da7f3cf              # double 1.9035439999999999
	.quad	0x400ebf969e3c9689              # double 3.8435489999999999
	.quad	0x400df54003254e6e              # double 3.7447509999999999
	.quad	0x3ff528e2e2b8c75c              # double 1.3224819999999999
	.quad	0x400602949a5657fb              # double 2.7512599999999998
	.quad	0x400079d6f112fd33              # double 2.0594920000000001
	.quad	0x4001fe99e94ab1d5              # double 2.249317
	.quad	0x400bc3f141205bc0              # double 3.470675
	.quad	0x4022bed0917d6b66              # double 9.3726850000000006
	.quad	0x401217d566cf41f2              # double 4.5232749999999999
	.quad	0x4018f0ab71327243              # double 6.2350289999999999
	.quad	0x401810ebaade657c              # double 6.0165240000000004
	.quad	0x402265c03361565c              # double 9.1987319999999996
	.quad	0x401b2310129cbab6              # double 6.7842409999999997
	.quad	0x3fdd648c7192ea53              # double 0.459262
	.quad	0x400c17e3d1cc100e              # double 3.5116649999999998
	.quad	0x3ff1092ff4ba51a0              # double 1.064743
	.quad	0x400e8ee0f3cb3e57              # double 3.8197649999999999
	.quad	0x40138fc19c17225b              # double 4.8903869999999996
	.quad	0x401e4718eb895076              # double 7.5694309999999998
	.quad	0x3fe1fe846a5d6bec              # double 0.56231900000000001
	.quad	0x4001d36cdf266ba5              # double 2.2282350000000002
	.quad	0x3ff592ee84ad794a              # double 1.3483719999999999
	.quad	0x401d3973d9ec7000              # double 7.3061059999999998
	.quad	0x400bf877ab324852              # double 3.4963220000000002
	.quad	0x3ff8cc9320d9945b              # double 1.5499449999999999
	.quad	0x4015cacf7446f9ba              # double 5.4480570000000004
	.quad	0x4023d23897204296              # double 9.9105880000000006
	.quad	0x402213fb9bed30f0              # double 9.0390289999999993
	.quad	0x400d9955f78359bc              # double 3.6998709999999999
	.quad	0x3ff4f022dd7a99fa              # double 1.308627
	.quad	0x4020824c61d8622c              # double 8.2544889999999995
	.quad	0x4011a534373f316e              # double 4.4113319999999998
	.quad	0x400ba9930be0ded3              # double 3.4578000000000002
	.quad	0x4016e0a2ca9ac365              # double 5.7193709999999998
	.quad	0x3ff71d0a67620ee9              # double 1.44459
	.quad	0x401a33825e13b18e              # double 6.5503020000000003
	.quad	0x400fa5109070fbec              # double 3.9555980000000002
	.quad	0x40213e81669ced0b              # double 8.6220809999999997
	.quad	0x400fabb7739f340d              # double 3.9588459999999999
	.quad	0x4015f523b3636f3b              # double 5.4893939999999999
	.quad	0x4022fb2f661f18ca              # double 9.490596
	.quad	0x40223d43d03968d7              # double 9.1196579999999994
	.quad	0x401344bec679cc75              # double 4.8171340000000002
	.quad	0x4020ecb5568e820e              # double 8.4623209999999993
	.quad	0x3fffcb8f14db5958              # double 1.9871970000000001
	.quad	0x401656173b85e80c              # double 5.5840730000000001
	.quad	0x4020ea2b5a20ddc6              # double 8.4573619999999998
	.quad	0x40216254a3c64346              # double 8.6920520000000003
	.quad	0x4020314ab1d4f9c2              # double 8.0962730000000001
	.quad	0x4021612ee84ad795              # double 8.6898110000000006
	.quad	0x4011842b734b5137              # double 4.3790719999999999
	.quad	0x401ce9f44d445671              # double 7.2284709999999999
	.quad	0x402227325918a00a              # double 9.0765560000000001
	.quad	0x3ffdbf8ca8198f1d              # double 1.8592649999999999
	.quad	0x4011cf96e158750c              # double 4.4527239999999999
	.quad	0x4008541d8e864021              # double 3.0410720000000002
	.quad	0x4014d0a2014727dd              # double 5.2037430000000002
	.quad	0x3ff7e5dbfceb7889              # double 1.4936179999999999
	.quad	0x400ad5e6bc621b7e              # double 3.354444
	.quad	0x4022c938583621fb              # double 9.393008
	.quad	0x401af05ee568a505              # double 6.734737
	.quad	0x40140c03bc4d22c9              # double 5.0117330000000004
	.quad	0x4018dc91d14e3bcd              # double 6.2153999999999998
	.quad	0x3fe22ee84ad794a7              # double 0.56822600000000001
	.quad	0x40180edc3bd59924              # double 6.0145119999999999
	.quad	0x4019b126a65cf67b              # double 6.4229989999999999
	.quad	0x4019053868fd199c              # double 6.2550980000000003
	.quad	0x4008a1d10b1feeb3              # double 3.0790120000000001
	.quad	0x401c42a51e321a2e              # double 7.0650829999999996
	.quad	0x3ff15349be8ff328              # double 1.0828340000000001
	.quad	0x401d2beb18116ebd              # double 7.2928889999999997
	.quad	0x40168ca4b124d09a              # double 5.6373470000000001
	.quad	0x4016073c4f3ba776              # double 5.507066
	.quad	0x401de5729b280f13              # double 7.4740700000000002
	.quad	0x40225a2af5771002              # double 9.1761090000000003
	.quad	0x3fdfdd441355475a              # double 0.49787999999999999
	.quad	0x40189295e9e1b08a              # double 6.1431500000000003
	.quad	0x40196c1f85d744f6              # double 6.3555890000000002
	.quad	0x4005065cf67b1c00              # double 2.628107
	.quad	0x4023d43a860dcb9b              # double 9.9145090000000006
	.quad	0x4020ff6f4be835df              # double 8.4988960000000002
	.quad	0x400d70870110a138              # double 3.679945
	.quad	0x4018b7bbf93ff25e              # double 6.1794279999999997
	.quad	0x4015b61b6d43d039              # double 5.4278389999999996
	.quad	0x400516fe2e6ea854              # double 2.6362269999999999
	.quad	0x4021892ba16e7a31              # double 8.7679109999999998
	.quad	0x40236e4f11b60ae9              # double 9.7154469999999992
	.quad	0x402294743201040c              # double 9.289949
	.quad	0x400bc71fff79c843              # double 3.472229
	.quad	0x40175a4df47f993d              # double 5.8381879999999997
	.quad	0x4004e1cef240fa9c              # double 2.610258
	.quad	0x402125334c5da6a4              # double 8.5726569999999995
	.quad	0x401e70f16f4384ba              # double 7.6102959999999999
	.quad	0x401525caafbc1ace              # double 5.2869060000000001
	.quad	0x401f1f15e7c8d196              # double 7.7803570000000004
	.quad	0x401b3a5accd53049              # double 6.8069870000000003
	.quad	0x4023537b07075b3e              # double 9.6630479999999999
	.quad	0x4023b9310129cbab              # double 9.8617019999999993
	.quad	0x40061f1e8e608073              # double 2.7651949999999998
	.quad	0x4023f1496249a134              # double 9.9712630000000004
	.quad	0x40200b79d909f1f1              # double 8.0224139999999995
	.quad	0x4022e68815e39714              # double 9.4502570000000005
	.quad	0x40111fec13b9f128              # double 4.281174
	.quad	0x40040f5a964e8b7e              # double 2.5074969999999999
	.quad	0x401ca5109070fbec              # double 7.1611960000000003
	.quad	0x401dd7f562174c4d              # double 7.4608970000000001
	.quad	0x40136931876188b1              # double 4.8527279999999999
	.quad	0x3ffa8c64fdb09a67              # double 1.659276
	.quad	0x401dae8b7e4de3b9              # double 7.4204540000000003
	.quad	0x400ee5f8d2e514c2              # double 3.8622909999999999
	.quad	0x3ffa1b34a44c7b03              # double 1.631642
	.quad	0x401d7e264e48626f              # double 7.3731929999999997
	.quad	0x3fe21e774eebf65e              # double 0.56621900000000003
	.quad	0x401c3298cc144029              # double 7.0494110000000001
	.quad	0x401c331ca7d6733f              # double 7.0499140000000002
	.quad	0x401634b7f5a5332b              # double 5.5514830000000002
	.quad	0x4004376ab5807fed              # double 2.5270589999999999
	.quad	0x3ffdb72c5197a249              # double 1.8572200000000001
	.quad	0x3fefa1bc126a65cf              # double 0.98849299999999995
	.quad	0x401a9f2dc2b0ea18              # double 6.6554479999999998
	.quad	0x3ff644da9003eea2              # double 1.39181
	.quad	0x3fdfb078d92fb19e              # double 0.49514599999999998
	.quad	0x401d4127f5e84f09              # double 7.3136289999999997
	.quad	0x4023acf7446f9b99              # double 9.8378239999999994
	.quad	0x3ffb47b24638c975              # double 1.705004
	.quad	0x401ef5a8deb0fadf              # double 7.7399019999999998
	.quad	0x4000066772d5e072              # double 2.0031270000000001
	.quad	0x4016c84be40420f7              # double 5.6956020000000001
	.quad	0x4013fcd8127b2cc7              # double 4.996918
	.quad	0x401b992c8c5004fb              # double 6.8995839999999999
	.quad	0x401a57a95c853c15              # double 6.5856070000000004
	.quad	0x400084b5568e820e              # double 2.0647989999999998
	.quad	0x4000e4d12018a43c              # double 2.1117270000000001
	.quad	0x40216dae3e6c4c59              # double 8.7142199999999992
	.quad	0x400b639713ad5bee              # double 3.4236279999999999
	.quad	0x401ab7a4a48f96e1              # double 6.6793389999999997
	.quad	0x40157b9d7fd82774              # double 5.3707180000000001
	.quad	0x4016dd82fd75e204              # double 5.7163199999999996
	.quad	0x40037083dbc23316              # double 2.4299390000000001
	.quad	0x3fa053198288051d              # double 0.031884000000000003
	.quad	0x40199cdd93c46d83              # double 6.4031890000000002
	.quad	0x401bd40181e03f70              # double 6.9570369999999997
	.quad	0x3fb43ad9f0a1be2b              # double 0.079022999999999996
	.quad	0x400f9dd76683c298              # double 3.9520710000000001
	.quad	0x401489f2ba9d1f60              # double 5.1347149999999999
	.quad	0x3fd0d8c2a454de7f              # double 0.26323000000000002
	.quad	0x4022b62541d8e864              # double 9.3557529999999999
	.quad	0x40223d0edc3bd599              # double 9.1192539999999997
	.quad	0x4023886f049a9974              # double 9.7664720000000002
	.quad	0x400073ba775fb2ee              # double 2.056508
	.quad	0x400a2f49491f2dc3              # double 3.2730890000000001
	.quad	0x3fee12bc2fc69729              # double 0.93978700000000004
	.quad	0x40108494d50ebaae              # double 4.1294740000000001
	.quad	0x400ae8d972cd7cf6              # double 3.363696
	.quad	0x3ff69dc4007570c5              # double 1.4135169999999999
	.quad	0x40175a7ac81d3aa3              # double 5.8383589999999996
	.quad	0x4001ff04ddb5525d              # double 2.2495210000000001
	.quad	0x40096882f0e0a84c              # double 3.176031
	.quad	0x4020e4afd5454153              # double 8.4466540000000006
	.quad	0x400bde0ac7da1ec5              # double 3.483419
	.quad	0x400522413db7f173              # double 2.6417259999999998
	.quad	0x40139f76a2f48c2e              # double 4.9057259999999996
	.quad	0x401d51a11233df2b              # double 7.3297160000000003
	.quad	0x4014286db50f40e6              # double 5.0394810000000003
	.quad	0x3f816c1e364bec68              # double 0.0085070000000000006
	.quad	0x4022af37542a23c0              # double 9.342219
	.quad	0x400a9c18b502abac              # double 3.326219
	.quad	0x40203e9984a0e411              # double 8.1222650000000005
	.quad	0x4021b62e2b8c75c5              # double 8.8558210000000006
	.quad	0x401ae35fc3b4f616              # double 6.7220449999999996
	.quad	0x401215d9a0f0a5f0              # double 4.5213380000000001
	.quad	0x401598605681ecd5              # double 5.3988050000000003
	.quad	0x401c1f840181e03f              # double 7.0307769999999996
	.quad	0x401029f2ba9d1f60              # double 4.0409649999999999
	.quad	0x4010f1a86940357a              # double 4.2359939999999998
	.quad	0x40137983947496ab              # double 4.8686660000000002
	.quad	0x40218c0cc78e9f6b              # double 8.7735350000000007
	.quad	0x40163d349be8ff32              # double 5.5597709999999996
	.quad	0x401ca40b34e7685a              # double 7.1601990000000004
	.quad	0x400c43486f049a99              # double 3.5328529999999998
	.quad	0x3fdb6ac215b9a5a9              # double 0.42839100000000002
	.quad	0x4017cec0724b76f7              # double 5.9519060000000001
	.quad	0x4002270c1333b96b              # double 2.269066
	.quad	0x3ffac2a5614df8b1              # double 1.6725209999999999
	.quad	0x4013d8e219652bd4              # double 4.9618000000000002
	.quad	0x4014cf776c4827b7              # double 5.202604
	.quad	0x3ff162cecc814d72              # double 1.0866229999999999
	.quad	0x4003699e94ab1d50              # double 2.4265720000000002
	.quad	0x3fd3b662fdfc19c1              # double 0.30800699999999998
	.quad	0x401beebaf102363b              # double 6.9831349999999999
	.quad	0x401d90b45ae5ffa4              # double 7.3913130000000002
	.quad	0x4021689e55c0fcb5              # double 8.7043330000000001
	.quad	0x40217b5e310dbf05              # double 8.7409529999999993
	.quad	0x4020d95f88fc9364              # double 8.424557
	.quad	0x3f8a9a8049667b5f              # double 0.01299
	.quad	0x40112b4d056c508b              # double 4.2922859999999998
	.quad	0x4020c305532617c2              # double 8.3809000000000005
	.quad	0x4003e3b03e20ccff              # double 2.4861759999999999
	.quad	0x3ff27358f2e05ccd              # double 1.1531610000000001
	.quad	0x3fdfdb3bfb58d152              # double 0.49775599999999998
	.quad	0x400b5799e518f3ed              # double 3.4177740000000001
	.quad	0x4000ac3dab5c39bd              # double 2.0841020000000001
	.quad	0x401d0e18266772d6              # double 7.2637640000000001
	.quad	0x40050a6eb91b3f21              # double 2.6300940000000002
	.quad	0x3fd87c30d306a2b1              # double 0.38257999999999998
	.quad	0x401f482a5614df8b              # double 7.8204739999999999
	.quad	0x400e023c85c24c40              # double 3.7510919999999999
	.quad	0x3ffba4cc6822ff09              # double 1.7277340000000001
	.quad	0x40175157eed45e92              # double 5.8294370000000004
	.quad	0x401768cf398e9707              # double 5.8523529999999999
	.quad	0x401a0ffb8b263950              # double 6.5156080000000003
	.quad	0x40231b677f6b1a2a              # double 9.5535239999999995
	.quad	0x401128897e996313              # double 4.289587
	.quad	0x4016b75360d02470              # double 5.6790289999999999
	.quad	0x4012850ce4ead0c4              # double 4.6299320000000002
	.quad	0x3ffd5f1bef49cf57              # double 1.83572
	.quad	0x401acd55a3a08399              # double 6.7005220000000003
	.quad	0x4017254866a11ec9              # double 5.7864089999999999
	.quad	0x4018743dccea28fe              # double 6.1135169999999999
	.quad	0x4011ccc63f141206              # double 4.4499750000000002
	.quad	0x4015c2189bd8383b              # double 5.4395470000000001
	.quad	0x4018e54a3c64345d              # double 6.223916
	.quad	0x3ff7eebf65dbfceb              # double 1.4957879999999999
	.quad	0x4017040a2877ee4e              # double 5.7539449999999999
	.quad	0x401205b2d4d4024b              # double 4.5055649999999998
	.quad	0x4005dd8e86402081              # double 2.7331819999999998
	.quad	0x401b490cd423d923              # double 6.8213379999999999
	.quad	0x401a20329802c0a5              # double 6.5314430000000003
	.quad	0x3fc399fe43675ddd              # double 0.153137
	.quad	0x3f84245f5ad96a6a              # double 0.0098349999999999999
	.quad	0x4022f418f81e8a2f              # double 9.4767530000000004
	.quad	0x4009fdfd2630ec31              # double 3.249018
	.quad	0x40115345cfede97d              # double 4.331321
	.quad	0x3fbcf1f57b41bfbe              # double 0.113067
	.quad	0x402380709741d085              # double 9.7508590000000001
	.quad	0x400ab6ec5b078d93              # double 3.339318
	.quad	0x4016839e279dd3bb              # double 5.628533
	.quad	0x40080e9ccb7d4174              # double 3.0071349999999999
	.quad	0x401c67d9dba908a2              # double 7.1014169999999996
	.quad	0x4020433b10774688              # double 8.1313099999999991
	.quad	0x401f13ac0c62e4d2              # double 7.7692110000000003
	.quad	0x401bb930be0ded29              # double 6.9308500000000004
	.quad	0x4020adb445ed4a1b              # double 8.3392660000000003
	.quad	0x4008e786c226809d              # double 3.1130499999999999
	.quad	0x3ff07ad6cb535009              # double 1.02999
	.quad	0x4013ad46b26bf877              # double 4.9192150000000003
	.quad	0x40175c9afe1da7b1              # double 5.8404350000000003
	.quad	0x3ff75532617c1bda              # double 1.4582999999999999
	.quad	0x402113369b9d7fd8              # double 8.5375259999999997
	.quad	0x3fff4ac083126e98              # double 1.9557500000000001
	.quad	0x402085872f33ca32              # double 8.2607970000000002
	.quad	0x4009822e5de15ca7              # double 3.1885650000000001
	.quad	0x401618958d9b5e96              # double 5.5240080000000003
	.quad	0x40191122b7baecd0              # double 6.2667339999999996
	.quad	0x401e8024f6598e11              # double 7.6251410000000001
	.quad	0x401db4289118c198              # double 7.425936
	.quad	0x4020102730c67169              # double 8.031549
	.quad	0x4016e9ce8d972cd8              # double 5.7283270000000002
	.quad	0x4018b548ecd8dbcf              # double 6.1770360000000002
	.quad	0x3ffb39b024f6598e              # double 1.701584
	.quad	0x400f6e0008637bd0              # double 3.9287109999999998
	.quad	0x4004bc62a1b5c7ce              # double 2.5919850000000002
	.quad	0x4019461ed5ae1cde              # double 6.3184769999999997
	.quad	0x4008d4024b33daf9              # double 3.1035200000000001
	.quad	0x400cd5bd512ec6bd              # double 3.604365
	.quad	0x4017cbb2bba98eda              # double 5.9489239999999999
	.quad	0x3fe70bdcad14a0a1              # double 0.720198
	.quad	0x401bbf587d6f9768              # double 6.9368610000000004
	.quad	0x401a2f8a8f3a9b07              # double 6.5464270000000004
	.quad	0x40154801f75104d5              # double 5.3203199999999997
	.quad	0x401d0387160956c1              # double 7.2534450000000001
	.quad	0x4002354b05b7cfe6              # double 2.2760220000000002
	.quad	0x40161ebd9018e758              # double 5.5300200000000004
	.quad	0x402350e991ff7165              # double 9.6580320000000003
	.quad	0x4022be5d9e40c847              # double 9.3718079999999996
	.quad	0x3feeefef7c243dcd              # double 0.966789
	.quad	0x3ffbb9e8c47a17f4              # double 1.732888
	.quad	0x4006a500d5e8d541              # double 2.830568
	.quad	0x400bdbd3804534bd              # double 3.4823369999999998
	.quad	0x402055e6ddf00abf              # double 8.1677769999999992
	.quad	0x4001aec0f88333fd              # double 2.2103290000000002
	.quad	0x3fe3a647fdc5931d              # double 0.61404800000000004
	.quad	0x4023b47064ece9a3              # double 9.8524200000000003
	.quad	0x40105d07c84b5dcc              # double 4.0908499999999997
	.quad	0x3ff2c938583621fb              # double 1.174126
	.quad	0x4018f57c0b135979              # double 6.2397309999999999
	.quad	0x401de6fd651b0ccc              # double 7.4755760000000002
	.quad	0x4011143393ab430f              # double 4.2697279999999997
	.quad	0x401d92e48e8a71de              # double 7.3934499999999996
	.quad	0x4016f0d90e23af32              # double 5.7352030000000003
	.quad	0x400348112ba16e7a              # double 2.4101889999999999
	.quad	0x4023468943e10060              # double 9.6377659999999992
	.quad	0x4016c8e68e3ef284              # double 5.6961919999999999
	.quad	0x40100f35e310dbf0              # double 4.0148539999999997
	.quad	0x400fa71ef30a4e38              # double 3.9566020000000002
	.quad	0x40117f0e90bc7b46              # double 4.3740790000000001
	.quad	0x4020b4cd0fe8ab50              # double 8.3531270000000006
	.quad	0x3ff520791c4b9021              # double 1.3204279999999999
	.quad	0x4015d6e58a32f449              # double 5.4598599999999999
	.quad	0x3fd90da5daf07bfe              # double 0.39145799999999997
	.quad	0x3fd3d32c625e99e9              # double 0.30976399999999998
	.quad	0x401146861e92923e              # double 4.3188709999999997
	.quad	0x400060713f077ccc              # double 2.047091
	.quad	0x401a22d3415b1423              # double 6.5340090000000002
	.quad	0x4017a78af3e468cb              # double 5.9136160000000002
	.quad	0x401e4e2c12ad81ae              # double 7.5763400000000001
	.quad	0x401793fc86cebbba              # double 5.8945179999999997
	.quad	0x402024016052502f              # double 8.0703230000000001
	.quad	0x4020eaa7589efd87              # double 8.4583080000000006
	.quad	0x3fcf24e9c4545847              # double 0.243314
	.quad	0x4002521c475e6363              # double 2.2900930000000002
	.quad	0x4015f5515054ac2a              # double 5.4895680000000002
	.quad	0x4010b48e8a71de6a              # double 4.1763250000000003
	.quad	0x3ffd7ca1059ea572              # double 1.842927
	.quad	0x3fac68cac4b4d057              # double 0.055487000000000002
	.quad	0x3ff33d70a3d70a3d              # double 1.2024999999999999
	.quad	0x3fdfcc7d1bb4916d              # double 0.49685600000000002
	.quad	0x40038f9a06a6e32e              # double 2.4451179999999999
	.quad	0x3fd726b2f23033a4              # double 0.36173699999999998
	.quad	0x400601cde5d18091              # double 2.7508810000000001
	.quad	0x400da50b524399b3              # double 3.7055880000000001
	.quad	0x3ffcc9107faa044b              # double 1.799088
	.quad	0x40200568a50507a7              # double 8.0105640000000005
	.quad	0x40229a2ccb3a2596              # double 9.3011230000000005
	.quad	0x40143270b06c43f6              # double 5.049258
	.quad	0x402008f25a250f84              # double 8.0174739999999999
	.quad	0x400ea478854cdb7b              # double 3.830308
	.quad	0x40031a743a647fdc              # double 2.3879169999999998
	.quad	0x40099df6555c52e7              # double 3.2021299999999999
	.quad	0x40039680e0653006              # double 2.4484880000000002
	.quad	0x401bdc100e6afcce              # double 6.9649049999999999
	.quad	0x401043161a1db878              # double 4.0655140000000003
	.quad	0x4016f0663c74fb55              # double 5.7347650000000003
	.quad	0x400d5a97e132b55f              # double 3.669235
	.quad	0x40061c4c9c90c4df              # double 2.7638180000000001
	.quad	0x40093cc2938de6de              # double 3.154668
	.quad	0x401f005f6ba0620b              # double 7.7503640000000002
	.quad	0x3fe8c58eeae9ee46              # double 0.77411600000000003
	.quad	0x4023c779e9d0e992              # double 9.889602
	.quad	0x401548f25a250f84              # double 5.321237
	.quad	0x400e0e07e5a78f26              # double 3.7568510000000002
	.quad	0x40166de657b84dba              # double 5.6073240000000002
	.quad	0x401076ea854477ff              # double 4.1161289999999999
	.quad	0x402188cf9e3864cb              # double 8.7672089999999994
	.quad	0x3fb7cf91a32b12d3              # double 0.093010999999999996
	.quad	0x3ffb35104d551d69              # double 1.700455
	.quad	0x400926a098915bdd              # double 3.1438609999999998
	.quad	0x4021a44ef88b9778              # double 8.8209149999999994
	.quad	0x401925011904b3c4              # double 6.2861370000000001
	.quad	0x40202c79702e6645              # double 8.0868640000000003
	.quad	0x40121a9a8049667b              # double 4.5259799999999997
	.quad	0x3ff1b59ee88df373              # double 1.106841
	.quad	0x4018e154003254e7              # double 6.2200470000000001
	.quad	0x3ff294ff0025bfad              # double 1.161376
	.quad	0x401ea296b3354c12              # double 7.6587779999999999
	.quad	0x4020818958d9b5e9              # double 8.2530009999999994
	.quad	0x3fea337c99ae924f              # double 0.81878499999999999
	.quad	0x3fec23e9ea140571              # double 0.87938400000000005
	.quad	0x4002ecc70867ad8e              # double 2.3656139999999999
	.quad	0x401d4c3efae7924b              # double 7.3244590000000001
	.quad	0x401696965f5275ef              # double 5.6470580000000004
	.quad	0x40058caab8a5ce5b              # double 2.6936849999999999
	.quad	0x400171c2a0232096              # double 2.1805469999999998
	.quad	0x402330a7a41e57da              # double 9.5950290000000003
	.quad	0x40150455eaee2004              # double 5.2542340000000003
	.quad	0x4005b43f1c75818c              # double 2.7130109999999998
	.quad	0x4009a46b69db65ed              # double 3.2052830000000001
	.quad	0x4007a107b784662c              # double 2.9536280000000001
	.quad	0x4019e8c9b845564b              # double 6.4773319999999996
	.quad	0x40229d1c193b3a69              # double 9.3068550000000005
	.quad	0x3fb29cbab649d389              # double 0.072704000000000005
	.quad	0x401fe5996744b2b7              # double 7.9742179999999995
	.quad	0x3ff8ad97b30f8c65              # double 1.542381
	.quad	0x400c89131ec0b567              # double 3.5669309999999999
	.quad	0x401ca43201040bfe              # double 7.1603469999999998
	.quad	0x400a6f50a02b8412              # double 3.3043529999999999
	.quad	0x400639c4113c6866              # double 2.778206
	.quad	0x3ff3baa9b499d020              # double 1.2330719999999999
	.quad	0x401b97d41743e964              # double 6.8982700000000001
	.quad	0x402078fd5cb790fb              # double 8.2363079999999993
	.quad	0x401c058c08b75ea6              # double 7.0054169999999996
	.quad	0x4012423bff8a8f3b              # double 4.5646820000000004
	.quad	0x4007dde050374ff8              # double 2.9833379999999998
	.quad	0x3fe308e9b38d60a6              # double 0.59483799999999998
	.quad	0x4020af56861e9292              # double 8.3424569999999996
	.quad	0x401a27ba237cdcca              # double 6.5387959999999996
	.quad	0x400d162d83c6c97e              # double 3.6358290000000002
	.quad	0x401620ac7da1ec4e              # double 5.5319079999999996
	.quad	0x40211fd7a13c254a              # double 8.5621919999999996
	.quad	0x401ff4944ed6fda8              # double 7.9888469999999998
	.quad	0x401bacad14a0a0f5              # double 6.9186290000000001
	.quad	0x4023bd5347a5b0ff              # double 9.8697759999999998
	.quad	0x4013d898b2e9ccb8              # double 4.9615200000000002
	.quad	0x4022adcfcc5b8dc5              # double 9.3394759999999994
	.quad	0x401094f61672324d              # double 4.1454700000000004
	.quad	0x3fc5886df82b1f68              # double 0.16822599999999999
	.quad	0x3feed34bd76ee73e              # double 0.96329299999999995
	.quad	0x3ff9a4fb97bb7308              # double 1.602779
	.quad	0x400a91d798d8a97a              # double 3.3212120000000001
	.quad	0x401d98b69552e2fc              # double 7.3991340000000001
	.quad	0x3fe7bfc2224edf61              # double 0.74215799999999998
	.quad	0x40224cd5f99c38b0              # double 9.1500699999999995
	.quad	0x402314a6223e186a              # double 9.5403300000000009
	.quad	0x40088365cb35f3d8              # double 3.0641590000000001
	.quad	0x40202980b242070c              # double 8.0810600000000007
	.quad	0x4018d8366516db0e              # double 6.2111450000000001
	.quad	0x4018bfab10ba6267              # double 6.187176
	.quad	0x4011cfa376922d95              # double 4.4527720000000004
	.quad	0x401ad63b688bda94              # double 6.7092109999999998
	.quad	0x3ff9e4a8c154c986              # double 1.618325
	.quad	0x40193d68405b39e2              # double 6.3099679999999996
	.quad	0x4015ad93c46d82ba              # double 5.4195089999999997
	.quad	0x3ff4685015c20924              # double 1.2754669999999999
	.quad	0x400c3c88e79aae6d              # double 3.5295580000000002
	.quad	0x400e3b3e9a6f826f              # double 3.7789280000000001
	.quad	0x3ff5a09246bf0132              # double 1.351702
	.quad	0x40231f2abef06b38              # double 9.5608730000000008
	.quad	0x40131c903ea704bc              # double 4.7778939999999999
	.quad	0x40023b3743632c1f              # double 2.2789139999999999
	.quad	0x401ffde43ed959a3              # double 7.9979409999999999
	.quad	0x401999ebe9c88616              # double 6.4003139999999998
	.quad	0x402077544bb1af3a              # double 8.2330649999999999
	.quad	0x40145d6451b93038              # double 5.0912030000000001
	.quad	0x40238bff8a8f3a9b              # double 9.7734339999999999
	.size	.L__constant_1999xf64, 15992

	.section	".note.GNU-stack","",@progbits
