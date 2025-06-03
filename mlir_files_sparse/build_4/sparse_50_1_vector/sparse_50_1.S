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
	.quad	0x41440466d228cbd1              # double 2623693.6418699999
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
	lui	a1, %hi(.L__constant_101xindex)
	addi	a1, a1, %lo(.L__constant_101xindex)
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
	.quad	43                              # 0x2b
	.quad	95                              # 0x5f
	.quad	140                             # 0x8c
	.quad	196                             # 0xc4
	.quad	243                             # 0xf3
	.quad	299                             # 0x12b
	.quad	346                             # 0x15a
	.quad	389                             # 0x185
	.quad	446                             # 0x1be
	.quad	497                             # 0x1f1
	.quad	550                             # 0x226
	.quad	591                             # 0x24f
	.quad	654                             # 0x28e
	.quad	702                             # 0x2be
	.quad	757                             # 0x2f5
	.quad	803                             # 0x323
	.quad	857                             # 0x359
	.quad	903                             # 0x387
	.quad	952                             # 0x3b8
	.quad	1000                            # 0x3e8
	.quad	1050                            # 0x41a
	.quad	1099                            # 0x44b
	.quad	1154                            # 0x482
	.quad	1202                            # 0x4b2
	.quad	1254                            # 0x4e6
	.quad	1305                            # 0x519
	.quad	1364                            # 0x554
	.quad	1415                            # 0x587
	.quad	1460                            # 0x5b4
	.quad	1508                            # 0x5e4
	.quad	1556                            # 0x614
	.quad	1597                            # 0x63d
	.quad	1646                            # 0x66e
	.quad	1694                            # 0x69e
	.quad	1751                            # 0x6d7
	.quad	1794                            # 0x702
	.quad	1840                            # 0x730
	.quad	1892                            # 0x764
	.quad	1946                            # 0x79a
	.quad	1997                            # 0x7cd
	.quad	2046                            # 0x7fe
	.quad	2100                            # 0x834
	.quad	2161                            # 0x871
	.quad	2201                            # 0x899
	.quad	2251                            # 0x8cb
	.quad	2299                            # 0x8fb
	.quad	2343                            # 0x927
	.quad	2400                            # 0x960
	.quad	2444                            # 0x98c
	.quad	2487                            # 0x9b7
	.quad	2528                            # 0x9e0
	.quad	2583                            # 0xa17
	.quad	2634                            # 0xa4a
	.quad	2684                            # 0xa7c
	.quad	2739                            # 0xab3
	.quad	2781                            # 0xadd
	.quad	2839                            # 0xb17
	.quad	2889                            # 0xb49
	.quad	2936                            # 0xb78
	.quad	2993                            # 0xbb1
	.quad	3041                            # 0xbe1
	.quad	3084                            # 0xc0c
	.quad	3136                            # 0xc40
	.quad	3186                            # 0xc72
	.quad	3233                            # 0xca1
	.quad	3279                            # 0xccf
	.quad	3325                            # 0xcfd
	.quad	3375                            # 0xd2f
	.quad	3421                            # 0xd5d
	.quad	3475                            # 0xd93
	.quad	3526                            # 0xdc6
	.quad	3579                            # 0xdfb
	.quad	3627                            # 0xe2b
	.quad	3672                            # 0xe58
	.quad	3724                            # 0xe8c
	.quad	3778                            # 0xec2
	.quad	3828                            # 0xef4
	.quad	3873                            # 0xf21
	.quad	3932                            # 0xf5c
	.quad	3977                            # 0xf89
	.quad	4027                            # 0xfbb
	.quad	4076                            # 0xfec
	.quad	4124                            # 0x101c
	.quad	4173                            # 0x104d
	.quad	4227                            # 0x1083
	.quad	4275                            # 0x10b3
	.quad	4328                            # 0x10e8
	.quad	4380                            # 0x111c
	.quad	4426                            # 0x114a
	.quad	4478                            # 0x117e
	.quad	4537                            # 0x11b9
	.quad	4586                            # 0x11ea
	.quad	4637                            # 0x121d
	.quad	4683                            # 0x124b
	.quad	4740                            # 0x1284
	.quad	4792                            # 0x12b8
	.quad	4835                            # 0x12e3
	.quad	4891                            # 0x131b
	.quad	4947                            # 0x1353
	.quad	5000                            # 0x1388
	.size	.L__constant_101xindex, 808

	.type	.L__constant_5000xindex,@object # @__constant_5000xindex
	.p2align	6, 0x0
.L__constant_5000xindex:
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
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
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
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
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
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
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
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
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
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
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
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
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
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
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
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
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
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
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
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
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
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
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
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
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
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
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
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
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
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
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
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
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
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
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
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
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
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
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
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
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
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
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
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
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
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
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
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
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
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
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
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
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_5000xindex, 40000

	.type	.L__constant_5000xf64,@object   # @__constant_5000xf64
	.p2align	6, 0x0
.L__constant_5000xf64:
	.quad	0x401b4cf9a06a6e33              # double 6.8251710000000001
	.quad	0x3fde23465625a683              # double 0.47090300000000002
	.quad	0x4018fa1c68ec52a4              # double 6.2442489999999999
	.quad	0x401b93925bb7b6bb              # double 6.8941129999999999
	.quad	0x40118e924f227d03              # double 4.3892300000000004
	.quad	0x3feaf8bbd3804535              # double 0.84286300000000003
	.quad	0x401e04d7add15f03              # double 7.5047290000000002
	.quad	0x400756ec5b078d93              # double 2.917443
	.quad	0x4012270d62bf11f9              # double 4.5381369999999999
	.quad	0x4021d8c2a454de7f              # double 8.9233600000000006
	.quad	0x4022f3a3ca7503b8              # double 9.4758589999999998
	.quad	0x401230a73f748a16              # double 4.5475130000000004
	.quad	0x40052661ae70c133              # double 2.6437409999999999
	.quad	0x4002e71f79420b3d              # double 2.3628529999999999
	.quad	0x4010777d0f1f57b4              # double 4.1166879999999999
	.quad	0x4022863821af7d31              # double 9.2621470000000006
	.quad	0x40153ce032db1e9f              # double 5.3094489999999999
	.quad	0x401c16e75ff609dd              # double 7.022367
	.quad	0x40159afa2f05a709              # double 5.4013450000000001
	.quad	0x3ff1020f6f08cc57              # double 1.0630029999999999
	.quad	0x40218ab606b7aa26              # double 8.7709200000000003
	.quad	0x4003e279dd3bafd9              # double 2.4855839999999998
	.quad	0x4020d062f5989df1              # double 8.4070049999999998
	.quad	0x3ff37e1650a45d42              # double 1.218283
	.quad	0x400ac3cfb3311a54              # double 3.3456109999999999
	.quad	0x3fc20c308feac42f              # double 0.14099700000000001
	.quad	0x40226541743e963e              # double 9.1977650000000004
	.quad	0x401c4c3efae7924b              # double 7.0744590000000001
	.quad	0x3fcd9d12cadddf44              # double 0.23135600000000001
	.quad	0x4019311ada76d97b              # double 6.2979539999999998
	.quad	0x3fd01ff2e48e8a72              # double 0.25195000000000001
	.quad	0x4012886f049a9974              # double 4.6332360000000001
	.quad	0x4004edda48b65237              # double 2.616139
	.quad	0x40105f88b9778573              # double 4.0932950000000003
	.quad	0x4023b6759ab6d00b              # double 9.8563659999999995
	.quad	0x40123048e043a216              # double 4.5471529999999998
	.quad	0x401cbfb1183b6028              # double 7.1871989999999997
	.quad	0x4021360221426fe7              # double 8.6054849999999998
	.quad	0x4023739a176ddacf              # double 9.7257850000000001
	.quad	0x40196c25072085b2              # double 6.3556100000000004
	.quad	0x4022e8b1dd5d3dc9              # double 9.4544820000000004
	.quad	0x40206b26e115592e              # double 8.2092810000000007
	.quad	0x40009f01322f2735              # double 2.077639
	.quad	0x40144142b302f72b              # double 5.0637309999999998
	.quad	0x401f6eb7457c0b13              # double 7.8581209999999996
	.quad	0x401b518ce2d1f1d0              # double 6.8296390000000002
	.quad	0x4013e4e1e71044f2              # double 4.9735180000000003
	.quad	0x400ac1abd1aa821f              # double 3.3445659999999999
	.quad	0x401cac3504c48adf              # double 7.1681710000000001
	.quad	0x3ff418409e55c0fd              # double 1.2559210000000001
	.quad	0x4021a809b30728e9              # double 8.8281989999999997
	.quad	0x4022783d790752db              # double 9.2348440000000007
	.quad	0x3ff0197c3d68405b              # double 1.0062219999999999
	.quad	0x4000fe8f6cefed63              # double 2.1242969999999999
	.quad	0x400a27f455a7d242              # double 3.2695090000000002
	.quad	0x401a2b1d4f9c1f86              # double 6.5421040000000001
	.quad	0x40119c714fce746d              # double 4.4027760000000002
	.quad	0x3fb277b395c42203              # double 0.072138999999999995
	.quad	0x4021b7a3b9ae0c17              # double 8.8586709999999993
	.quad	0x402224f69ca9ef52              # double 9.0721939999999996
	.quad	0x3fd402e2328f9f45              # double 0.31267600000000001
	.quad	0x401eff23465625a7              # double 7.7491580000000004
	.quad	0x3ff5d2b5e529bae4              # double 1.3639429999999999
	.quad	0x40170f166e008e9b              # double 5.7647339999999998
	.quad	0x4006a0902de00d1b              # double 2.8283999999999998
	.quad	0x401ea1f81a5870da              # double 7.6581729999999997
	.quad	0x3ff70ee5abc0e38a              # double 1.4411369999999999
	.quad	0x401578b652370479              # double 5.367883
	.quad	0x4009c2730c671690              # double 3.2199460000000002
	.quad	0x4001c9b52007dd44              # double 2.22349
	.quad	0x4012cf5126634118              # double 4.702458
	.quad	0x4013beb702602c91              # double 4.9362450000000004
	.quad	0x40163767903211cb              # double 5.554106
	.quad	0x401e631876188b11              # double 7.5967729999999997
	.quad	0x4023cf05857afea4              # double 9.9043390000000002
	.quad	0x3fda7ee9142b302f              # double 0.41399599999999998
	.quad	0x40213a8f190d1740              # double 8.6143730000000005
	.quad	0x3feb422ab25b317f              # double 0.851827
	.quad	0x401d62efd438d1d9              # double 7.3466180000000003
	.quad	0x3ff0110a137f38c5              # double 1.0041599999999999
	.quad	0x401f10bb6ed67770              # double 7.7663399999999996
	.quad	0x40183bf1a5ca2984              # double 6.0585389999999997
	.quad	0x401369695d91ab8f              # double 4.8529410000000004
	.quad	0x401bff2e48e8a71e              # double 6.9992000000000001
	.quad	0x3ff65e42e1262025              # double 1.398013
	.quad	0x400be0c38f366949              # double 3.4847480000000002
	.quad	0x4023a5e02ea960b7              # double 9.823976
	.quad	0x4018ec2c5e2cdc01              # double 6.2306379999999999
	.quad	0x4016a0431bde82d8              # double 5.6565060000000003
	.quad	0x4012e112fd32c626              # double 4.7197990000000001
	.quad	0x401e8ad538ac18f8              # double 7.6355789999999998
	.quad	0x400b8ff865d7cb2e              # double 3.4452980000000002
	.quad	0x40220e34117f8445              # double 9.0277410000000007
	.quad	0x3fff71769a91105e              # double 1.965201
	.quad	0x4000cbe835dedf1e              # double 2.099564
	.quad	0x3fe2f9df548ecd8e              # double 0.59300200000000003
	.quad	0x4020495fcc1871e7              # double 8.1433090000000004
	.quad	0x401a74d7add15f03              # double 6.6141040000000002
	.quad	0x3ff7f7824d4cb9ed              # double 1.497927
	.quad	0x4002f3abc947064f              # double 2.3689800000000001
	.quad	0x4019b00b02928177              # double 6.4219169999999997
	.quad	0x3fe3d1e75360d024              # double 0.61937299999999995
	.quad	0x4001168a50507a6c              # double 2.1360060000000001
	.quad	0x40236dedd052934b              # double 9.7147050000000003
	.quad	0x402136af46aa087d              # double 8.6068060000000006
	.quad	0x40113b9841aac53b              # double 4.308198
	.quad	0x4003e26c3b927d46              # double 2.4855580000000002
	.quad	0x40123a7503b81b65              # double 4.5570870000000001
	.quad	0x4022db7132724313              # double 9.4285979999999991
	.quad	0x401a98101f31f46f              # double 6.6484990000000002
	.quad	0x4005fc32ebe596c8              # double 2.7481439999999999
	.quad	0x3ff862e90364388f              # double 1.5241480000000001
	.quad	0x4021822b9d3cbc49              # double 8.7542390000000001
	.quad	0x400533311a543f1c              # double 2.6499959999999998
	.quad	0x4021efbeb9e492bc              # double 8.9682519999999996
	.quad	0x4021ffba8826aa8f              # double 8.9994700000000005
	.quad	0x4023e453b0813cac              # double 9.9459510000000008
	.quad	0x4007eedfe75bc44c              # double 2.991638
	.quad	0x4013af8ad2567989              # double 4.9214279999999997
	.quad	0x40187c78e9f6a93f              # double 6.1215549999999999
	.quad	0x40100f9fcb0c026d              # double 4.0152580000000002
	.quad	0x401bd9a240314877              # double 6.9625329999999996
	.quad	0x3ff2c2fe82517e78              # double 1.172606
	.quad	0x4022d67c06e19b91              # double 9.4189150000000001
	.quad	0x3fd4d00713f077cd              # double 0.32519700000000001
	.quad	0x400e82003ab862b2              # double 3.8134769999999998
	.quad	0x4014fa0ad8a11666              # double 5.2441820000000003
	.quad	0x3fffa64a16a48733              # double 1.9780979999999999
	.quad	0x400e34e7ee9142b3              # double 3.775833
	.quad	0x401d869f8c21e1d2              # double 7.3814679999999999
	.quad	0x3ff5941a6937d1fe              # double 1.3486579999999999
	.quad	0x402312b239a38fbd              # double 9.5365160000000006
	.quad	0x3ffac90a350d2807              # double 1.6740820000000001
	.quad	0x40139607c4199fe4              # double 4.8965139999999998
	.quad	0x40192da09cc319c6              # double 6.2945580000000003
	.quad	0x3fe01804d9839475              # double 0.50293200000000005
	.quad	0x40226cdd0d8cb07d              # double 9.2126239999999999
	.quad	0x3fe3dfeda6612839              # double 0.621085
	.quad	0x400106eb91b3f20a              # double 2.1283789999999998
	.quad	0x4020868b7e4de3b9              # double 8.2627830000000007
	.quad	0x3fd925d4a5df223a              # double 0.39293400000000001
	.quad	0x40127480a5accd53              # double 4.613772
	.quad	0x40176fc2eba27aea              # double 5.8591420000000003
	.quad	0x3ffcf1c970f7b9e0              # double 1.8090299999999999
	.quad	0x401a589dadfb506e              # double 6.5865390000000001
	.quad	0x3ff8475f6fd21ff3              # double 1.517425
	.quad	0x401f2ac8605681ed              # double 7.7917800000000001
	.quad	0x4021e896787ce960              # double 8.9542730000000006
	.quad	0x40236018c5c9a34d              # double 9.6876890000000006
	.quad	0x3ffdba94bbe4473d              # double 1.858052
	.quad	0x401d0b588e368f08              # double 7.2610799999999998
	.quad	0x3fd9e0008637bd06              # double 0.40429700000000002
	.quad	0x4004e214ad362e90              # double 2.6103909999999999
	.quad	0x4006d5e6362a5e78              # double 2.8544429999999998
	.quad	0x40217e56abde3fbc              # double 8.7467550000000002
	.quad	0x3fde23c85c24c405              # double 0.47093400000000002
	.quad	0x402129a5657fb69a              # double 8.5813400000000009
	.quad	0x4010bf822bbecaac              # double 4.1870200000000004
	.quad	0x401d1263d816aceb              # double 7.2679590000000003
	.quad	0x3fc9b213e3e29308              # double 0.20074700000000001
	.quad	0x40135486ad2dcb14              # double 4.8325449999999996
	.quad	0x400616db940fecdd              # double 2.761161
	.quad	0x40001ce4a7b4e54f              # double 2.0141079999999998
	.quad	0x402349878316a055              # double 9.6436119999999991
	.quad	0x4017388b11409a24              # double 5.805218
	.quad	0x401cf029f16b11c7              # double 7.2345350000000002
	.quad	0x3fe7d104d551d68c              # double 0.74426499999999995
	.quad	0x402065f761cbccf3              # double 8.1991530000000008
	.quad	0x402265ffa3b9ae0c              # double 9.1992159999999998
	.quad	0x400f2d04e618ce2d              # double 3.8969819999999999
	.quad	0x401ce02795703f2d              # double 7.2189009999999998
	.quad	0x4013cba40d90e23b              # double 4.948868
	.quad	0x40119e7fb267c6b9              # double 4.4047840000000003
	.quad	0x4020c37329c347e9              # double 8.3817380000000004
	.quad	0x4016b5f202107b78              # double 5.6776809999999998
	.quad	0x4015ce38eb0318b9              # double 5.4513889999999998
	.quad	0x40205e15ebfa8f7e              # double 8.1837610000000005
	.quad	0x4016b5219a847b24              # double 5.6768859999999997
	.quad	0x3fead59b3d07c84b              # double 0.83857499999999996
	.quad	0x3fe4415b1422ccb4              # double 0.63297800000000004
	.quad	0x3fde51372a38b8ae              # double 0.47370699999999999
	.quad	0x402067162ae4b018              # double 8.2013409999999993
	.quad	0x402009ae70c1333c              # double 8.0189090000000007
	.quad	0x402362b2e1693c04              # double 9.6927710000000004
	.quad	0x401c9df8f4730404              # double 7.1542700000000004
	.quad	0x40215d65c2d27807              # double 8.6824169999999992
	.quad	0x400251fd5885d313              # double 2.2900339999999999
	.quad	0x4021cd48a9bcfd4c              # double 8.9009450000000001
	.quad	0x3ffbd46801711948              # double 1.739357
	.quad	0x40144c70867ad8e4              # double 5.0746479999999998
	.quad	0x401d0ce24bba12b6              # double 7.2625820000000001
	.quad	0x4017b7ba6698bb4d              # double 5.9294219999999997
	.quad	0x4006349491f2dc2b              # double 2.775674
	.quad	0x401796162f166e01              # double 5.8965690000000004
	.quad	0x401e53497b7414a5              # double 7.5813350000000001
	.quad	0x401792b27cbf6e3f              # double 5.8932589999999996
	.quad	0x40231af640639d5e              # double 9.5526599999999995
	.quad	0x4005304d551d68c7              # double 2.6485850000000002
	.quad	0x400594ea8da7f3cf              # double 2.6977129999999998
	.quad	0x401d6b28954a7f80              # double 7.3546469999999999
	.quad	0x401eca9f383f0baf              # double 7.6978730000000004
	.quad	0x40112a88ace24bba              # double 4.2915369999999999
	.quad	0x400324b7f5a5332b              # double 2.3929290000000001
	.quad	0x401f53c254a3c643              # double 7.8317959999999997
	.quad	0x401e591b823c85c2              # double 7.5870189999999997
	.quad	0x4023a909aed56b01              # double 9.830152
	.quad	0x3ff14c5974e65bea              # double 1.08114
	.quad	0x40075024f6598e11              # double 2.9141330000000001
	.quad	0x401ca5d8d79d0a67              # double 7.1619599999999997
	.quad	0x40136935fc3b4f61              # double 4.8527449999999996
	.quad	0x402020f4b61fe21e              # double 8.0643670000000007
	.quad	0x401461815a07b353              # double 5.0952200000000003
	.quad	0x40222c04c8bc9cd4              # double 9.0859740000000002
	.quad	0x401a5e8ee6b8305e              # double 6.5923420000000004
	.quad	0x401c945d851654d6              # double 7.1448879999999999
	.quad	0x4023ae351deefe50              # double 9.840249
	.quad	0x3ff50d2a1f8e3ac1              # double 1.3157140000000001
	.quad	0x4022020c6b484d77              # double 9.0040010000000006
	.quad	0x401ea63736cdf267              # double 7.6623200000000002
	.quad	0x40017da16616b54e              # double 2.1863429999999999
	.quad	0x4023c113e81450f0              # double 9.8771050000000002
	.quad	0x4019897edc7ef178              # double 6.3842730000000003
	.quad	0x3ff8a337a80cf9e4              # double 1.5398480000000001
	.quad	0x401373ca31e7d999              # double 4.8630760000000004
	.quad	0x4023ef1e4b44a1f1              # double 9.9670280000000008
	.quad	0x401973e8576cce5f              # double 6.3631909999999996
	.quad	0x3fec43d03968d75a              # double 0.88327800000000001
	.quad	0x401ed714b9cb6849              # double 7.7100400000000002
	.quad	0x3fff73f748a15981              # double 1.9658119999999999
	.quad	0x4021bc2528ae74f3              # double 8.8674710000000001
	.quad	0x400ccbd7f51efb6e              # double 3.5995330000000001
	.quad	0x400d4c942d490e67              # double 3.6623920000000001
	.quad	0x400eff51efb6dca0              # double 3.8746679999999998
	.quad	0x40231d31337eb28e              # double 9.5570160000000008
	.quad	0x3ff32b6f19934efd              # double 1.1981040000000001
	.quad	0x3ff51ce7cd035372              # double 1.3195570000000001
	.quad	0x4020048e68e3ef28              # double 8.0088989999999995
	.quad	0x3fd1f4a558ea7ce1              # double 0.280557
	.quad	0x40133cbc8c0ce91d              # double 4.8093130000000004
	.quad	0x3ff967967caea748              # double 1.58779
	.quad	0x4022466b6177ea1c              # double 9.1375379999999992
	.quad	0x4006831ad2135dab              # double 2.8140160000000001
	.quad	0x401992a12f901084              # double 6.3931930000000001
	.quad	0x3ff6fc3f811f4f51              # double 1.4365840000000001
	.quad	0x4023cf8bdec5f395              # double 9.9053640000000005
	.quad	0x3ff440e1719f7f8d              # double 1.2658400000000001
	.quad	0x401564fce746cb96              # double 5.3486209999999996
	.quad	0x4014bd76ee73e682              # double 5.1850240000000003
	.quad	0x401cdd78c436fc16              # double 7.2162810000000004
	.quad	0x3ff014195cc857f3              # double 1.004907
	.quad	0x4017b3eab367a0f9              # double 5.9257
	.quad	0x401792bc72e275ab              # double 5.8932969999999996
	.quad	0x400880e5a35d67ba              # double 3.0629379999999999
	.quad	0x4014f938de6ddf01              # double 5.2433810000000003
	.quad	0x401a7c2224edf612              # double 6.6212239999999998
	.quad	0x3ff9a46e08f21709              # double 1.602644
	.quad	0x4010576ea4228998              # double 4.0853830000000002
	.quad	0x402316c97d8cf399              # double 9.5445060000000001
	.quad	0x40124fb6dca07f67              # double 4.5778460000000001
	.quad	0x40231a7ed84d338f              # double 9.5517489999999991
	.quad	0x3ff929563a9f383f              # double 1.572592
	.quad	0x40202358d1526d8b              # double 8.0690369999999998
	.quad	0x4022e82de00d1b71              # double 9.4534749999999991
	.quad	0x40211cf206423960              # double 8.5565339999999992
	.quad	0x40140c01e68a0d35              # double 5.0117260000000003
	.quad	0x401d3463065f9592              # double 7.3011590000000002
	.quad	0x401861dcd7060bb3              # double 6.0955690000000002
	.quad	0x4004f64f97edc7ef              # double 2.620269
	.quad	0x402116d527e52157              # double 8.5445949999999993
	.quad	0x401074b380cb6c7a              # double 4.1139659999999996
	.quad	0x40127e731d2e0e30              # double 4.6234859999999998
	.quad	0x4007b53c579f2346              # double 2.9634939999999999
	.quad	0x4020f7353b4b2fa9              # double 8.4828279999999996
	.quad	0x3fe9a15336deb95e              # double 0.80094299999999996
	.quad	0x3ff2d2bf5515054b              # double 1.1764520000000001
	.quad	0x40217dc9a34ca0c3              # double 8.7456790000000009
	.quad	0x4016a0ae536501e2              # double 5.6569149999999997
	.quad	0x40167057082491b0              # double 5.6097070000000002
	.quad	0x401e843f1c75818c              # double 7.6291469999999997
	.quad	0x401e7165907d9125              # double 7.6107389999999996
	.quad	0x401fdee631f8a090              # double 7.9676749999999998
	.quad	0x4007af544bb1af3a              # double 2.96061
	.quad	0x401daba5e353f7cf              # double 7.4176250000000001
	.quad	0x401195e99e94ab1d              # double 4.3963989999999997
	.quad	0x401e5c282c6ef3d4              # double 7.5899970000000003
	.quad	0x4018e0b2c83ec893              # double 6.2194320000000003
	.quad	0x3ffda24894c447c3              # double 1.85212
	.quad	0x4021e6e4c0df58c1              # double 8.9509640000000008
	.quad	0x401b2761cbccf28c              # double 6.7884589999999996
	.quad	0x4022bba83f4eca68              # double 9.3665179999999992
	.quad	0x40223219008205ff              # double 9.0978469999999998
	.quad	0x401826ce358298cc              # double 6.0378959999999999
	.quad	0x40064c0d6f544bb2              # double 2.7871350000000001
	.quad	0x40110147f1305964              # double 4.2512509999999999
	.quad	0x400145a469d7342f              # double 2.1590050000000001
	.quad	0x4020e1be09bb6aa5              # double 8.4409030000000005
	.quad	0x3fd427a63736cdf2              # double 0.31491999999999998
	.quad	0x401f135158b827fa              # double 7.7688649999999999
	.quad	0x4016465061416378              # double 5.5686660000000003
	.quad	0x4023de69270b06c4              # double 9.9343959999999995
	.quad	0x4015724b76f6d762              # double 5.3616159999999997
	.quad	0x401fdce52deca255              # double 7.9657179999999998
	.quad	0x40115c61d8622c45              # double 4.340217
	.quad	0x4019060bf5d78812              # double 6.2559050000000003
	.quad	0x40102661ae70c133              # double 4.0374819999999998
	.quad	0x401da3c297bfa4c6              # double 7.4099219999999999
	.quad	0x3ff0eb28d8665e03              # double 1.057412
	.quad	0x40084a936c58eeaf              # double 3.0364140000000002
	.quad	0x401f3723aafff36b              # double 7.8038470000000002
	.quad	0x3ffec97204295a6c              # double 1.9241809999999999
	.quad	0x40084cd74927913f              # double 3.0375200000000002
	.quad	0x4020f044f1a1986c              # double 8.4692760000000006
	.quad	0x40067b5aea3161a2              # double 2.8102320000000001
	.quad	0x40208accf6be37df              # double 8.2710950000000008
	.quad	0x3fcaf26aec0724b7              # double 0.21052299999999999
	.quad	0x402071233df2a9d6              # double 8.2209719999999997
	.quad	0x40208131a8ef77f2              # double 8.2523319999999991
	.quad	0x400a1797cc39ffd6              # double 3.26152
	.quad	0x4006b9a73b42cc2d              # double 2.8406509999999998
	.quad	0x400265cfede97d07              # double 2.2997130000000001
	.quad	0x3fe7c7325918a00a              # double 0.743066
	.quad	0x4020f7e7c06e19b9              # double 8.4841899999999999
	.quad	0x401c629670196d8f              # double 7.0962769999999997
	.quad	0x3ff699dfdac68a93              # double 1.4125669999999999
	.quad	0x402115dc8323358f              # double 8.5426979999999997
	.quad	0x3ff79707182235b5              # double 1.474372
	.quad	0x40141bb7739f340d              # double 5.0270669999999997
	.quad	0x4020cbaf533f4235              # double 8.3978219999999997
	.quad	0x4012336049ecb31c              # double 4.5501719999999999
	.quad	0x3ffff6c2699c7bcc              # double 1.997744
	.quad	0x401fdfd933e35c5b              # double 7.9686019999999997
	.quad	0x3fed0e94ee392e1f              # double 0.90803
	.quad	0x3fdc647fdc5931ca              # double 0.44363399999999997
	.quad	0x4023317b7414a4d3              # double 9.5966450000000005
	.quad	0x3fec6d288ce703b0              # double 0.88832500000000003
	.quad	0x3ffee23af31b152f              # double 1.9302319999999999
	.quad	0x401848e970718223              # double 6.0712029999999997
	.quad	0x3ffd544dca8e2e2c              # double 1.8330820000000001
	.quad	0x4003b029ae4f3344              # double 2.461017
	.quad	0x4003010adcd2d44e              # double 2.3755090000000001
	.quad	0x3ff9a32b12d3415b              # double 1.602336
	.quad	0x40220728e92d55a4              # double 9.0139840000000006
	.quad	0x4011936ef8055fbb              # double 4.3939779999999997
	.quad	0x40144d3f1843c3a4              # double 5.0754359999999998
	.quad	0x4022aaa90cd423d9              # double 9.3333209999999998
	.quad	0x4012cf7164c729f6              # double 4.7025810000000003
	.quad	0x3fd4d955714b9cb7              # double 0.32576500000000003
	.quad	0x3ff5ca9478c868ba              # double 1.361958
	.quad	0x4004eed3d859c8c9              # double 2.6166149999999999
	.quad	0x401ad26d04e618ce              # double 6.7054939999999998
	.quad	0x4021ec4b2b777d0f              # double 8.9615109999999998
	.quad	0x3fe78ee49f51697f              # double 0.73619299999999999
	.quad	0x40151b5c7cd898b3              # double 5.2767200000000001
	.quad	0x3fc403361565c2d2              # double 0.15634799999999999
	.quad	0x400fdeb074a771c9              # double 3.9837349999999998
	.quad	0x4022732e7b3d8e00              # double 9.2249639999999999
	.quad	0x4013756084a515cf              # double 4.8646260000000003
	.quad	0x40132e26916440f2              # double 4.7950689999999998
	.quad	0x4020ca8826aa8eb4              # double 8.3955699999999993
	.quad	0x401b5b47c73eee52              # double 6.8391409999999997
	.quad	0x3fcf7a1c25d07421              # double 0.24591399999999999
	.quad	0x3fbc8c3f3e0370ce              # double 0.111515
	.quad	0x4023a8df9bdc69f9              # double 9.8298310000000004
	.quad	0x4011f0a958537e2c              # double 4.4850209999999997
	.quad	0x40169dc37a3db3c0              # double 5.6540660000000003
	.quad	0x3fee15336deb95e6              # double 0.94008800000000003
	.quad	0x401d7f10ecb74de0              # double 7.3740880000000004
	.quad	0x4018a47778dd6170              # double 6.1606120000000004
	.quad	0x401fb9b7bf1e8e61              # double 7.9313650000000004
	.quad	0x400a178f68be2f7b              # double 3.261504
	.quad	0x401df8f861a60d45              # double 7.4931349999999996
	.quad	0x3fc9ea91d9b1b79e              # double 0.20247100000000001
	.quad	0x40019e74afd54541              # double 2.2023709999999999
	.quad	0x4003c379b77c02b0              # double 2.4704470000000001
	.quad	0x4021fb0813cab820              # double 8.9902960000000007
	.quad	0x3fd71ba3ca7503b8              # double 0.36106199999999999
	.quad	0x400c54ac29bf162b              # double 3.541344
	.quad	0x40039b57c4e2f380              # double 2.4508510000000001
	.quad	0x4021e9b5c7cd898b              # double 8.9564649999999997
	.quad	0x4020b060999dcb58              # double 8.3444870000000009
	.quad	0x401b6b7cfe586013              # double 6.8549689999999996
	.quad	0x4001f93ab430f495              # double 2.2466940000000002
	.quad	0x3fcc612839042d8c              # double 0.221715
	.quad	0x4008cea9e6eeb702              # double 3.1009099999999998
	.quad	0x400541ad6451b930              # double 2.6570689999999999
	.quad	0x4022444955b4677b              # double 9.1333719999999996
	.quad	0x4019e497fa5d28d0              # double 6.473236
	.quad	0x4000c5dfa871a3b1              # double 2.0966179999999999
	.quad	0x401c8208e1501190              # double 7.1269869999999997
	.quad	0x40219f733a8a3f8a              # double 8.8114260000000009
	.quad	0x4014642a23bff8a9              # double 5.097817
	.quad	0x4013084be40420f7              # double 4.7581020000000001
	.quad	0x400b630db6a1e81d              # double 3.4233660000000001
	.quad	0x3fdba7bd48cb4aed              # double 0.43211300000000002
	.quad	0x40239c58cd20afa3              # double 9.8053650000000001
	.quad	0x401515e892253112              # double 5.2713950000000001
	.quad	0x4023dd5cb790fb65              # double 9.9323479999999992
	.quad	0x3fe91c75818c5c9a              # double 0.78472399999999998
	.quad	0x402297fe6d58c8ef              # double 9.2968630000000001
	.quad	0x40137255b035bd51              # double 4.8616549999999998
	.quad	0x4002403cd141a693              # double 2.2813659999999998
	.quad	0x401d0e96c3fc43b3              # double 7.2642470000000001
	.quad	0x4021b19fc2a8869c              # double 8.8469219999999992
	.quad	0x4022795b78cc9a78              # double 9.2370260000000001
	.quad	0x3fe5cc8bc9cd3e0c              # double 0.68121900000000002
	.quad	0x40223d33b1077469              # double 9.1195350000000008
	.quad	0x4019ea77a2cecc81              # double 6.4789719999999997
	.quad	0x402224b1465e8922              # double 9.0716649999999994
	.quad	0x3fff9388a8b08dd2              # double 1.973519
	.quad	0x40036aad1d041cc5              # double 2.4270879999999999
	.quad	0x4018ad2d87f88766              # double 6.1691190000000002
	.quad	0x4023e690bc7b45f1              # double 9.9503229999999991
	.quad	0x40234f87ce95faa9              # double 9.6553330000000006
	.quad	0x401b6d783dff3f10              # double 6.8569040000000001
	.quad	0x400bfbfbdf090f73              # double 3.4980389999999999
	.quad	0x400fe9bd8383ad9f              # double 3.989131
	.quad	0x400d0b0856e696a2              # double 3.6303869999999998
	.quad	0x4017acf41f212d77              # double 5.9188999999999998
	.quad	0x401bb38cda6e75ff              # double 6.9253419999999997
	.quad	0x3ff481e2584f4c6e              # double 1.2817099999999999
	.quad	0x401105393250b524              # double 4.2551009999999998
	.quad	0x402254f1a1986b9c              # double 9.1659059999999996
	.quad	0x401ba4b9884c6a3c              # double 6.9108640000000001
	.quad	0x401356e696a26e54              # double 4.8348639999999996
	.quad	0x401434ab1d4f9c20              # double 5.0514340000000004
	.quad	0x400d13d96638433d              # double 3.6346919999999998
	.quad	0x3fdaefb2aae29739              # double 0.42087999999999998
	.quad	0x400d70068db8bac7              # double 3.6797
	.quad	0x3ff17eab367a0f91              # double 1.0934250000000001
	.quad	0x4016237f38c5436c              # double 5.5346650000000004
	.quad	0x400e8ae297396d09              # double 3.817815
	.quad	0x4000de76427c7c52              # double 2.1086239999999998
	.quad	0x4020adb20b8066c3              # double 8.3392490000000006
	.quad	0x40102cbf2b239a39              # double 4.043698
	.quad	0x40084f6e82949a56              # double 3.0387849999999998
	.quad	0x40160b7cbb3c8191              # double 5.5112180000000004
	.quad	0x40060f8e7ddca4b1              # double 2.7575959999999999
	.quad	0x401899ef5232d2bb              # double 6.1503269999999999
	.quad	0x401eb868fd199bb2              # double 7.6800879999999996
	.quad	0x401b6e779207d4e1              # double 6.8578780000000004
	.quad	0x3ffda5b63d3e4ef0              # double 1.852957
	.quad	0x3ffbe9680e065300              # double 1.7444839999999999
	.quad	0x3fee8c2c5e2cdc01              # double 0.95461099999999999
	.quad	0x4020bb30728e92d5              # double 8.3656039999999994
	.quad	0x4012f88b9778572a              # double 4.7427200000000003
	.quad	0x3fd09e6eeb702603              # double 0.25967000000000001
	.quad	0x40082a3486f049aa              # double 3.0206080000000002
	.quad	0x400066b37867f0aa              # double 2.0501469999999999
	.quad	0x4010f37de939eadd              # double 4.2377849999999997
	.quad	0x3ffb70574b407033              # double 1.7149270000000001
	.quad	0x4021e9c53f39d1b3              # double 8.9565830000000002
	.quad	0x401f5656eefa1e3f              # double 7.8343160000000002
	.quad	0x4013fb0ea18372e7              # double 4.9951730000000003
	.quad	0x4021f03382e44b6f              # double 8.9691430000000008
	.quad	0x3fd7d5885d31337f              # double 0.37240800000000002
	.quad	0x40231b1337eb28d8              # double 9.5528809999999992
	.quad	0x4010023c85c24c40              # double 4.0021839999999997
	.quad	0x400dc2328f9f44d4              # double 3.7198229999999999
	.quad	0x400fdb866e43aa7a              # double 3.9821900000000001
	.quad	0x402295104d551d69              # double 9.2911400000000004
	.quad	0x3ffe115ad106ee31              # double 1.879237
	.quad	0x40213aff2a172abf              # double 8.6152280000000001
	.quad	0x4017cef954eb13e0              # double 5.9521230000000003
	.quad	0x3fe2468a936c58ef              # double 0.57111100000000004
	.quad	0x3fef79ee02a77a2d              # double 0.983634
	.quad	0x401cce6ea8544780              # double 7.2015940000000001
	.quad	0x40224f4906034f40              # double 9.1548540000000002
	.quad	0x402229f51697f1fa              # double 9.0819480000000006
	.quad	0x400f33eee5258927              # double 3.9003580000000002
	.quad	0x3ffa48323358f2e0              # double 1.6426259999999999
	.quad	0x4014735dedf1e083              # double 5.1126630000000004
	.quad	0x4014a9a9973d9ec7              # double 5.165686
	.quad	0x3fe7c1c1d6cf850e              # double 0.74240200000000001
	.quad	0x40231769ec2ce465              # double 9.5457300000000007
	.quad	0x401b86dbd72bcb60              # double 6.8816980000000001
	.quad	0x4017121ea35935fc              # double 5.7676949999999998
	.quad	0x4018373647baa9b5              # double 6.0539180000000004
	.quad	0x400c05b530ced4e5              # double 3.5027870000000001
	.quad	0x400e0265f0f5a101              # double 3.7511709999999998
	.quad	0x4022920c282c6ef4              # double 9.2852490000000003
	.quad	0x3fdc80f98fa37692              # double 0.44537199999999999
	.quad	0x3fdc548a9bcfd4bf              # double 0.44266
	.quad	0x401e8083558a7610              # double 7.6255009999999999
	.quad	0x4016541a6937d1fe              # double 5.5821319999999996
	.quad	0x401a3ad2999567dc              # double 6.5574440000000003
	.quad	0x400bb9207d4e0978              # double 3.4653939999999999
	.quad	0x4022d97d06bbdbe4              # double 9.4247820000000004
	.quad	0x401a4c61522a6f3f              # double 6.5745899999999997
	.quad	0x3ff4370691ea78af              # double 1.2634339999999999
	.quad	0x3ff162d2fe3f35a0              # double 1.086627
	.quad	0x4004e61847f56217              # double 2.6123509999999999
	.quad	0x4023c868fd199bb2              # double 9.8914259999999992
	.quad	0x3ff7451b93037d63              # double 1.454372
	.quad	0x400ff8ed1bf7ad4b              # double 3.9965459999999999
	.quad	0x3ff05c2c1b10fd7e              # double 1.0225029999999999
	.quad	0x40214f63e4abe6a3              # double 8.6550589999999996
	.quad	0x4017b8754f3775b8              # double 5.9301349999999999
	.quad	0x401b8712a0ec7432              # double 6.881907
	.quad	0x3fff8b0292817764              # double 1.971438
	.quad	0x3ff79151611ba3ca              # double 1.4729779999999999
	.quad	0x3ffed32617c1bda5              # double 1.92655
	.quad	0x4021ca934acaff6d              # double 8.8956549999999996
	.quad	0x401b8a6b93ccd0ff              # double 6.8851760000000004
	.quad	0x3ffcd08a265f0f5a              # double 1.800913
	.quad	0x4008fd19157abb88              # double 3.123583
	.quad	0x4010077bbf93ff26              # double 4.0073080000000001
	.quad	0x400b3e9531550ca2              # double 3.4055580000000001
	.quad	0x3fdf8ec0f88333fd              # double 0.49308800000000003
	.quad	0x3ffe56872b020c4a              # double 1.8961250000000001
	.quad	0x402180c996b7670a              # double 8.751538
	.quad	0x3fdc98bf7f06705d              # double 0.44682300000000003
	.quad	0x401eed8904f6dfc6              # double 7.7319680000000002
	.quad	0x400e07f1b6912125              # double 3.753879
	.quad	0x401c5e1975f2cb64              # double 7.0918939999999999
	.quad	0x40213909f1f14984              # double 8.6114040000000002
	.quad	0x4014a805e5f30e80              # double 5.164085
	.quad	0x4005ab2fa93af74d              # double 2.7085870000000001
	.quad	0x400fd0435efa615b              # double 3.9766910000000002
	.quad	0x4023799ed7c6fbd2              # double 9.7375399999999992
	.quad	0x4023caa087ca643d              # double 9.8957560000000004
	.quad	0x401a1804534bd76f              # double 6.5234540000000001
	.quad	0x4023db72606fac60              # double 9.9286069999999995
	.quad	0x401938e2e2b8c75c              # double 6.3055529999999997
	.quad	0x40107f47b677f6b2              # double 4.1242970000000003
	.quad	0x400f6f709b738e6d              # double 3.929414
	.quad	0x40040263d816aceb              # double 2.5011670000000001
	.quad	0x40203d88a04d1202              # double 8.1201830000000008
	.quad	0x4019b42528ae74f3              # double 6.4259230000000001
	.quad	0x4021af9aae6c8f75              # double 8.8429769999999994
	.quad	0x40208b413986338b              # double 8.2719819999999995
	.quad	0x3fea2ac322291fb4              # double 0.81772
	.quad	0x40094bce8533b107              # double 3.1620149999999998
	.quad	0x400372ba16e7a312              # double 2.431019
	.quad	0x40206e6256366d7a              # double 8.2155939999999994
	.quad	0x401991c219eb6391              # double 6.3923420000000002
	.quad	0x4006e43675ddd2af              # double 2.8614320000000002
	.quad	0x40213187e7c06e1a              # double 8.5967400000000005
	.quad	0x3ffe98372e6a7696              # double 1.9121619999999999
	.quad	0x3ffb7201040bfe3b              # double 1.715333
	.quad	0x401a457cd466f502              # double 6.5678590000000003
	.quad	0x4020e3649d388a8b              # double 8.4441269999999999
	.quad	0x40163041cc532a49              # double 5.5471259999999996
	.quad	0x401e72c9d16fc9bc              # double 7.6120979999999996
	.quad	0x40228322f2734f83              # double 9.2561260000000001
	.quad	0x402100941c8216c6              # double 8.5011299999999999
	.quad	0x4015df67f4dbdf8f              # double 5.4681699999999998
	.quad	0x3ffc65742dcf4624              # double 1.774769
	.quad	0x3fbc1d29dc725c3e              # double 0.10982
	.quad	0x40227ab734b51373              # double 9.2396790000000006
	.quad	0x40186a22706d5065              # double 6.1036469999999996
	.quad	0x3ff0b39f340d4dc6              # double 1.0438529999999999
	.quad	0x3ff1dccfaeff5c6c              # double 1.116409
	.quad	0x400598a222d5171e              # double 2.6995279999999999
	.quad	0x400531209edbf8ba              # double 2.6489880000000001
	.quad	0x3ff07c6b8b69552e              # double 1.030376
	.quad	0x40041b6dca07f66f              # double 2.5133930000000002
	.quad	0x40026f6c69b5a640              # double 2.3044060000000002
	.quad	0x400e22df9378ee28              # double 3.7670279999999998
	.quad	0x40223f4d594f26af              # double 9.1236370000000004
	.quad	0x4018c8c586876e1e              # double 6.1960660000000001
	.quad	0x401e121e1d2178f7              # double 7.5176930000000004
	.quad	0x401b218c9fb6134d              # double 6.7827630000000001
	.quad	0x401b9b441bb8c32b              # double 6.9016270000000004
	.quad	0x4002beb28d8665e0              # double 2.3431139999999999
	.quad	0x3fe05feb8d823422              # double 0.51170899999999997
	.quad	0x4021ccd141a6937d              # double 8.9000339999999998
	.quad	0x402384a2339c0ebf              # double 9.7590500000000002
	.quad	0x4017c5525cc42635              # double 5.9426969999999999
	.quad	0x4014521815a07b35              # double 5.0801699999999999
	.quad	0x4017222424a276b8              # double 5.7833410000000001
	.quad	0x3feb755ffe6d58c9              # double 0.85807800000000001
	.quad	0x3fe136d43d03968d              # double 0.53794299999999995
	.quad	0x4011b43632c1f42c              # double 4.4259880000000003
	.quad	0x401b5c4113c68662              # double 6.8400920000000003
	.quad	0x40094f4623d0bfa1              # double 3.1637080000000002
	.quad	0x401bdc7e28240b78              # double 6.965325
	.quad	0x401efc01a36e2eb2              # double 7.7461000000000002
	.quad	0x402187baecd07853              # double 8.7650980000000001
	.quad	0x40232ce7ab756430              # double 9.5877049999999997
	.quad	0x4010b727136a4010              # double 4.1788600000000002
	.quad	0x4019622ab25b317f              # double 6.345866
	.quad	0x4019415a8deb0fae              # double 6.313822
	.quad	0x3ffaf852f7f498c4              # double 1.6856260000000001
	.quad	0x402166b13dfb0d52              # double 8.7005710000000001
	.quad	0x4019d31487768167              # double 6.4561330000000003
	.quad	0x400c990fb65668c2              # double 3.5747369999999998
	.quad	0x3ffb8868b9fdbd30              # double 1.7208030000000001
	.quad	0x3fe6de54b48d3ae7              # double 0.71464000000000005
	.quad	0x40207b3c60029f17              # double 8.2406950000000005
	.quad	0x40233bb40b34e768              # double 9.6166079999999993
	.quad	0x40056b9fdbd2fa0d              # double 2.6775509999999998
	.quad	0x4012474d9c6b0532              # double 4.5696320000000004
	.quad	0x401af392e1ef73c1              # double 6.7378650000000002
	.quad	0x4021e04e618ce2d2              # double 8.9380980000000001
	.quad	0x4010503d9a95421c              # double 4.07836
	.quad	0x4007b9e3864cb5bb              # double 2.9657659999999999
	.quad	0x40110b0fadf2ecf2              # double 4.260802
	.quad	0x4004252bd3c36113              # double 2.5181499999999999
	.quad	0x3fdd70ac3a860dcc              # double 0.46000200000000002
	.quad	0x401474f69ca9ef52              # double 5.1142219999999998
	.quad	0x4016257a786c2268              # double 5.5366
	.quad	0x4022e9a847b24639              # double 9.4563620000000003
	.quad	0x40184bf65dbfceb8              # double 6.0741820000000004
	.quad	0x4020c6049ecb31c2              # double 8.3867539999999998
	.quad	0x40187aeff5c6c11a              # double 6.1200559999999999
	.quad	0x4012633226c3b928              # double 4.5968710000000002
	.quad	0x4013c78c868b9fdc              # double 4.9448720000000002
	.quad	0x40036e60807357e6              # double 2.4288949999999998
	.quad	0x400ad13f8db48909              # double 3.3521719999999999
	.quad	0x400cf7d9dba908a2              # double 3.6210209999999998
	.quad	0x401962da98676a72              # double 6.3465369999999997
	.quad	0x402088795f676ea4              # double 8.2665509999999997
	.quad	0x4006ffd47bedb728              # double 2.8749169999999999
	.quad	0x40208e7bc3c5bd0e              # double 8.2782879999999999
	.quad	0x401f67b6fe2e6ea8              # double 7.8512839999999997
	.quad	0x4006db0468448cf8              # double 2.8569420000000001
	.quad	0x3fff8ac18f81e8a3              # double 1.971376
	.quad	0x3fd4bd1ed9dfdac7              # double 0.32404300000000003
	.quad	0x4022abd0bfa09460              # double 9.3355770000000007
	.quad	0x4015c93ee5eedcc2              # double 5.446529
	.quad	0x400da11ec918e326              # double 3.7036720000000001
	.quad	0x40169b22d0e56042              # double 5.6515000000000004
	.quad	0x4021807bbb62413e              # double 8.7509440000000005
	.quad	0x40135cb1465e8922              # double 4.8405199999999997
	.quad	0x4017d474d9c6b053              # double 5.9574769999999999
	.quad	0x401a6bc01a36e2eb              # double 6.6052249999999999
	.quad	0x402211f3a57eaa2a              # double 9.0350619999999999
	.quad	0x401cc6b873797460              # double 7.1940629999999999
	.quad	0x401df6a1a500d5e9              # double 7.4908510000000001
	.quad	0x401b3c58eeae9ee4              # double 6.8089329999999997
	.quad	0x40202f5ec80c73ac              # double 8.0925200000000003
	.quad	0x401c499ae924f228              # double 7.0718800000000002
	.quad	0x3fdf438d1d8a5482              # double 0.48849799999999999
	.quad	0x3fab764f11b60ae9              # double 0.053636999999999997
	.quad	0x401da1327243137b              # double 7.407419
	.quad	0x4005c841ede1198b              # double 2.722782
	.quad	0x3ff55ec7000431be              # double 1.335639
	.quad	0x40012e8640208180              # double 2.1477170000000001
	.quad	0x4004fc087442c7fc              # double 2.6230630000000001
	.quad	0x4022e20dfdef8488              # double 9.4415130000000004
	.quad	0x400292f661f18ca0              # double 2.3217590000000001
	.quad	0x40112adeebb341e1              # double 4.2918659999999997
	.quad	0x400defa93af74cd3              # double 3.742022
	.quad	0x3ffce3beec39799e              # double 1.8056019999999999
	.quad	0x40184d330941c821              # double 6.0753899999999996
	.quad	0x3fb2b51bd61f5be6              # double 0.073076000000000002
	.quad	0x4001d1e215336dec              # double 2.2274820000000002
	.quad	0x402295b61bb05faf              # double 9.2924050000000005
	.quad	0x40060bf9830e3cda              # double 2.7558470000000002
	.quad	0x4020dff0cbaf965b              # double 8.4373839999999998
	.quad	0x401f89917939a7c1              # double 7.8843439999999995
	.quad	0x401221a2a4db163c              # double 4.5328470000000003
	.quad	0x4022a26b0d9513f9              # double 9.3172230000000003
	.quad	0x40136705857afea4              # double 4.8506070000000001
	.quad	0x40199204295a6c5d              # double 6.3925939999999999
	.quad	0x3fe28c75c4a83b1d              # double 0.57964599999999999
	.quad	0x400a8dba4d6e47dc              # double 3.3192029999999999
	.quad	0x40231c059210385c              # double 9.5547299999999992
	.quad	0x4015ca515ce9e5e2              # double 5.4475759999999998
	.quad	0x3ffa320a73f748a1              # double 1.6372169999999999
	.quad	0x4021f22163fdd65a              # double 8.9729109999999999
	.quad	0x4020e6f156191149              # double 8.45106
	.quad	0x4011d5cd91eeaa6d              # double 4.4587919999999999
	.quad	0x4023dc241c3efae8              # double 9.9299630000000007
	.quad	0x40087bbb62413db8              # double 3.060416
	.quad	0x3ffa1d206c8711d8              # double 1.6321110000000001
	.quad	0x4022c11f0c34c1a9              # double 9.3771900000000005
	.quad	0x401028b2a6b0d951              # double 4.0397439999999998
	.quad	0x4019c3e5fb71fbc6              # double 6.4413070000000001
	.quad	0x40188ae21101b003              # double 6.1356279999999996
	.quad	0x40236b4fc610f0e9              # double 9.7095929999999999
	.quad	0x40235e45a1cac083              # double 9.6841249999999998
	.quad	0x401e78130164840e              # double 7.6172599999999999
	.quad	0x4000a80f98fa3769              # double 2.0820609999999999
	.quad	0x40018b702602c908              # double 2.193085
	.quad	0x3ff3ce0a84be4042              # double 1.237803
	.quad	0x4011be30446b69db              # double 4.4357309999999996
	.quad	0x40189945308bb906              # double 6.1496779999999998
	.quad	0x3ff4b52220bc382a              # double 1.294222
	.quad	0x401ab2b2bfdb4cc2              # double 6.6745099999999997
	.quad	0x401d13cff64cf8d7              # double 7.2693479999999999
	.quad	0x4017c44d44567126              # double 5.9417010000000001
	.quad	0x3fbafe4ffc9795b3              # double 0.105443
	.quad	0x3ff6269df97aaac1              # double 1.384428
	.quad	0x4012cb67c286f8ad              # double 4.6986379999999999
	.quad	0x40235468ec52a412              # double 9.6648630000000004
	.quad	0x40239952f3c2dadc              # double 9.7994610000000008
	.quad	0x4010f443d46b26c0              # double 4.2385400000000004
	.quad	0x4008d2096787ce96              # double 3.102557
	.quad	0x4019e679463cfb33              # double 6.4750719999999999
	.quad	0x401373fb7a5f41af              # double 4.863264
	.quad	0x401bfba01eeed890              # double 6.9957279999999997
	.quad	0x40016a087ca643cc              # double 2.176774
	.quad	0x3fe14c8bc9cd3e0c              # double 0.54059400000000002
	.quad	0x3ff34950763a1901              # double 1.2053990000000001
	.quad	0x40105eb7cbb3c819              # double 4.092498
	.quad	0x401f2f76a2f48c2e              # double 7.7963509999999996
	.quad	0x401d05104d551d69              # double 7.2549450000000002
	.quad	0x400ffde82d7b634e              # double 3.9989780000000001
	.quad	0x3ff652ce032db1ea              # double 1.395216
	.quad	0x4015689a88ace24c              # double 5.3521520000000002
	.quad	0x40133449129888f8              # double 4.8010599999999997
	.quad	0x401a36fbd273d5bb              # double 6.5536950000000003
	.quad	0x401185f28848387e              # double 4.380808
	.quad	0x3fe0835dedf1e083              # double 0.51603600000000005
	.quad	0x401ed82d7b634dad              # double 7.7111109999999998
	.quad	0x402048cb295e9e1b              # double 8.1421749999999999
	.quad	0x4023eab25b317efe              # double 9.9583919999999999
	.quad	0x400c2cf5b1c86488              # double 3.5219529999999999
	.quad	0x4015d665e02ea961              # double 5.4593730000000003
	.quad	0x402343d2d87f8876              # double 9.6324679999999994
	.quad	0x4019060807357e67              # double 6.25589
	.quad	0x40119e6c8f755369              # double 4.4047109999999998
	.quad	0x400b1b96af038e2a              # double 3.388471
	.quad	0x402251d30270f388              # double 9.1598129999999997
	.quad	0x4021fca87e38eb03              # double 8.9934729999999998
	.quad	0x3fdc7ea5f84cad58              # double 0.44523000000000001
	.quad	0x4000b40aaeafab54              # double 2.0879110000000001
	.quad	0x4020ad2849cb252d              # double 8.3381980000000002
	.quad	0x401af134ce3de615              # double 6.7355530000000003
	.quad	0x3ff09e3c968943e1              # double 1.038632
	.quad	0x40217430b178b370              # double 8.726934
	.quad	0x401bef737da61e0c              # double 6.9838389999999997
	.quad	0x3fff7fb7a5f41aef              # double 1.9686809999999999
	.quad	0x401e489118c197e5              # double 7.5708659999999996
	.quad	0x401fbbcb1cc96463              # double 7.9333920000000004
	.quad	0x400125ef62f9ca5c              # double 2.1435230000000001
	.quad	0x4022923f24d8fd5d              # double 9.2856380000000005
	.quad	0x4017c87a8d64d7f1              # double 5.9457800000000001
	.quad	0x4014f2d7b634dad3              # double 5.2371509999999999
	.quad	0x40011e18efbb0e5e              # double 2.1396959999999998
	.quad	0x4001e57f3061c79b              # double 2.2370589999999999
	.quad	0x4023554e6e221c8a              # double 9.6666139999999992
	.quad	0x401a12fbe33acd5b              # double 6.5185389999999996
	.quad	0x400a1a7f3cf70154              # double 3.2629380000000001
	.quad	0x40236b40f66a5508              # double 9.7094799999999992
	.quad	0x3ff910b84988094e              # double 1.5665819999999999
	.quad	0x401cec0e7bc3c5bd              # double 7.230524
	.quad	0x4023adc443914f48              # double 9.8393879999999995
	.quad	0x400ac30fcf80dc33              # double 3.3452449999999998
	.quad	0x3fe0716b11c6d1e1              # double 0.513845
	.quad	0x40199f3a9b068124              # double 6.4054970000000004
	.quad	0x4002838c9752977d              # double 2.3142330000000002
	.quad	0x4008387f023e9ea1              # double 3.0275859999999999
	.quad	0x400554c8ffb8b264              # double 2.6663990000000002
	.quad	0x401bb440af1cb89d              # double 6.9260279999999996
	.quad	0x401ef4e2b063e07a              # double 7.7391459999999999
	.quad	0x4006f906466b1e5c              # double 2.871594
	.quad	0x4023582cf52b90a8              # double 9.6722180000000008
	.quad	0x3ff15d9d3458cd21              # double 1.0853550000000001
	.quad	0x4020b34a01abd1ab              # double 8.3501740000000009
	.quad	0x401d06d9be4cd749              # double 7.2566899999999999
	.quad	0x4022f2398201cd60              # double 9.4730950000000007
	.quad	0x400b3ded6ba8c587              # double 3.4052380000000002
	.quad	0x401d6164840e171a              # double 7.34511
	.quad	0x3ff07c2ca148ba84              # double 1.030316
	.quad	0x400746088d6d3b6d              # double 2.9091960000000001
	.quad	0x4016e82c6ef3d3a2              # double 5.7267320000000002
	.quad	0x40231a923e5b8562              # double 9.5518970000000003
	.quad	0x401ef6a1a500d5e9              # double 7.7408510000000001
	.quad	0x40077591cd1c7de5              # double 2.932407
	.quad	0x40197af3a14cec42              # double 6.3700700000000001
	.quad	0x4000d6177ea1c68f              # double 2.1045370000000001
	.quad	0x3fef9dd7ecbb7f9d              # double 0.98801799999999995
	.quad	0x401c87abb8800eae              # double 7.1324909999999999
	.quad	0x40139d0635a426bb              # double 4.9033439999999997
	.quad	0x4021ac7991bc5586              # double 8.8368649999999995
	.quad	0x4011d0739b024f66              # double 4.4535660000000004
	.quad	0x4012dd441355475a              # double 4.7160799999999998
	.quad	0x400454be835dedf2              # double 2.5413790000000001
	.quad	0x4016b9aed56b0100              # double 5.6813310000000001
	.quad	0x4018f38476f2a5a4              # double 6.2378099999999996
	.quad	0x40141b30b5aa7158              # double 5.0265529999999998
	.quad	0x3fe61fa97e132b56              # double 0.69136500000000001
	.quad	0x40047b691212513b              # double 2.5602589999999998
	.quad	0x400a563992c8c500              # double 3.2921019999999999
	.quad	0x401be6ff7dfa00e2              # double 6.9755839999999996
	.quad	0x402201e5c0b99913              # double 9.0037059999999993
	.quad	0x3fe79376d5497311              # double 0.73675100000000004
	.quad	0x3fd2965f5275ee9a              # double 0.29042800000000002
	.quad	0x401d0b035bd512ec              # double 7.2607549999999996
	.quad	0x3fcafa9c12f09d8c              # double 0.21077299999999999
	.quad	0x400a3b2031ceaf25              # double 3.27887
	.quad	0x40225f42dcf4623d              # double 9.1860569999999999
	.quad	0x401555425f202108              # double 5.3332610000000003
	.quad	0x4016fe646f156191              # double 5.7484299999999999
	.quad	0x4013fa658c4bd33d              # double 4.9945279999999999
	.quad	0x4019666e43aa79bc              # double 6.3500300000000003
	.quad	0x4012955757d5a9eb              # double 4.6458409999999999
	.quad	0x40097a0a52695960              # double 3.18459
	.quad	0x40134dbdb5d89481              # double 4.8259189999999998
	.quad	0x40204cbdfd2630ec              # double 8.1498869999999996
	.quad	0x4013912839042d8c              # double 4.8917549999999999
	.quad	0x40233fced916872b              # double 9.6246249999999999
	.quad	0x4022bbf4666ec9e2              # double 9.3670989999999996
	.quad	0x400d3d60e94ee393              # double 3.6549700000000001
	.quad	0x400e32e83a109d06              # double 3.7748569999999999
	.quad	0x402102369fcf3dc0              # double 8.5043229999999994
	.quad	0x402397baa9b499d0              # double 9.7963459999999998
	.quad	0x3fed54067cf1c326              # double 0.91650699999999996
	.quad	0x401ebcff21b3aeef              # double 7.6845670000000003
	.quad	0x4021f00d1b71758e              # double 8.9688499999999998
	.quad	0x3fcedd2f1a9fbe77              # double 0.24112500000000001
	.quad	0x401350d8cb07d0af              # double 4.8289520000000001
	.quad	0x4014cd53cddd6e05              # double 5.2005150000000002
	.quad	0x401fd34373f316e3              # double 7.9563119999999996
	.quad	0x4020fa433508f649              # double 8.4887940000000004
	.quad	0x3fee08feac42e98a              # double 0.93859800000000004
	.quad	0x4005ff15a4acf313              # double 2.7495530000000001
	.quad	0x401c780303c07ee1              # double 7.1171990000000003
	.quad	0x400ebc4d22c881e4              # double 3.8419439999999998
	.quad	0x402250bd230b9dc3              # double 9.1576930000000001
	.quad	0x401208637bd05af7              # double 4.5081920000000002
	.quad	0x4021fed373affb05              # double 8.9977070000000001
	.quad	0x402095805e5f30e8              # double 8.291995
	.quad	0x3ff6d81f10667f91              # double 1.427764
	.quad	0x4023ecebdd334c5e              # double 9.9627370000000006
	.quad	0x4017b0a2ca9ac365              # double 5.9224959999999998
	.quad	0x400f3cffeb074a77              # double 3.904785
	.quad	0x40202525edd05293              # double 8.0725549999999995
	.quad	0x4020ac49dbec2481              # double 8.3365010000000002
	.quad	0x3ffcf9628cbd1245              # double 1.8108850000000001
	.quad	0x40119fc43b2dd378              # double 4.4060220000000001
	.quad	0x401d3f3d7d3910c3              # double 7.3117580000000002
	.quad	0x4013ff676ea4228a              # double 4.9994180000000004
	.quad	0x4005f3c925785f8d              # double 2.7440359999999999
	.quad	0x40174d3fe1975f2d              # double 5.8254390000000003
	.quad	0x3ffefe004b7f5a53              # double 1.937012
	.quad	0x4021da393ee5eedd              # double 8.9262180000000004
	.quad	0x4007f81d7dbf4880              # double 2.9961500000000001
	.quad	0x40044493c89f40a3              # double 2.5334850000000002
	.quad	0x4012ecaab8a5ce5b              # double 4.7311199999999998
	.quad	0x3ff87b784662bae0              # double 1.5301439999999999
	.quad	0x401011b823c85c25              # double 4.0173040000000002
	.quad	0x3ff6bc08fa7a8501              # double 1.4209069999999999
	.quad	0x4019ffcc1871e6cd              # double 6.4998019999999999
	.quad	0x4010dd744f5d3565              # double 4.2162639999999998
	.quad	0x3fea814727dcbddc              # double 0.82828100000000004
	.quad	0x4014011fd5885d31              # double 5.0010979999999998
	.quad	0x3ffe854ef459d990              # double 1.907546
	.quad	0x4022e7aca3619978              # double 9.4524889999999999
	.quad	0x401eab9346994185              # double 7.6675539999999999
	.quad	0x4014256abde3fbbd              # double 5.0365399999999996
	.quad	0x3ff355421c044285              # double 1.208315
	.quad	0x3feacce1c58255b0              # double 0.83750999999999998
	.quad	0x4020a95d4e8fb00c              # double 8.3307900000000003
	.quad	0x40143efc371da37f              # double 5.061509
	.quad	0x4022ded740c4156e              # double 9.4352359999999997
	.quad	0x3fb464883fd50225              # double 0.079658999999999994
	.quad	0x40218412ad81adeb              # double 8.7579550000000008
	.quad	0x401f55c67dfe32a0              # double 7.8337649999999996
	.quad	0x3fb40f66a5508701              # double 0.078359999999999999
	.quad	0x40217e33482be8bc              # double 8.7464849999999998
	.quad	0x40128b7f9d6f1130              # double 4.6362290000000002
	.quad	0x40194dbec2480e8d              # double 6.3259230000000004
	.quad	0x4014345953586ca9              # double 5.0511220000000003
	.quad	0x4018a40789613d32              # double 6.1601850000000002
	.quad	0x4007c8b4bf8fcd68              # double 2.973001
	.quad	0x402208a50507a6bd              # double 9.0168839999999992
	.quad	0x400152da98676a72              # double 2.1654559999999998
	.quad	0x40234814727dcbde              # double 9.6407810000000005
	.quad	0x40146db940fecdd1              # double 5.1071520000000001
	.quad	0x401d63d35eb7457c              # double 7.347486
	.quad	0x401acc65c70435f0              # double 6.6996070000000003
	.quad	0x400b5de1e2de8709              # double 3.4208409999999998
	.quad	0x40221be4ef0281ba              # double 9.0544809999999991
	.quad	0x401ed861e92923e6              # double 7.7113110000000002
	.quad	0x3fc2c0485a0be511              # double 0.14649300000000001
	.quad	0x40181e0f7fcfc3f8              # double 6.0293559999999999
	.quad	0x3fe960dcb9a9da59              # double 0.79307399999999995
	.quad	0x401d154690de0935              # double 7.2707769999999998
	.quad	0x3ffe583621fafc8b              # double 1.896536
	.quad	0x401dc1248d7e0264              # double 7.4386159999999997
	.quad	0x40182bae89eba6ad              # double 6.0426580000000003
	.quad	0x401ed297bfa4c61e              # double 7.7056570000000004
	.quad	0x3ff0e7631b584b1b              # double 1.0564910000000001
	.quad	0x401618112ba16e7a              # double 5.5235029999999998
	.quad	0x401ad1b691212514              # double 6.7047980000000003
	.quad	0x401472fa5093964a              # double 5.1122829999999997
	.quad	0x401b9eccc46950fc              # double 6.9050779999999996
	.quad	0x3fac299d883ba344              # double 0.055004999999999998
	.quad	0x3fe2f182235b4edb              # double 0.59198099999999998
	.quad	0x401ec2a4db163bac              # double 7.6900820000000003
	.quad	0x401d356b87379746              # double 7.302168
	.quad	0x4010f0c6f7a0b5ee              # double 4.2351340000000004
	.quad	0x40202b3ce63a5c1c              # double 8.0844489999999993
	.quad	0x4003b82ecaeea63b              # double 2.4649329999999998
	.quad	0x400ba733ebbfd71b              # double 3.456642
	.quad	0x3ff1b29802c0a4a0              # double 1.1061019999999999
	.quad	0x3ff27e3c105186db              # double 1.1558189999999999
	.quad	0x401e91769a91105e              # double 7.6420539999999999
	.quad	0x4006d460242d05f3              # double 2.8536990000000002
	.quad	0x401c77aaef2c7326              # double 7.1168630000000004
	.quad	0x400654e09784ec63              # double 2.7914439999999998
	.quad	0x4010cd40ee06d938              # double 4.2004429999999999
	.quad	0x3ff2c33d6c721922              # double 1.172666
	.quad	0x401943037d63022e              # double 6.3154430000000001
	.quad	0x4018d0e90bc7b45f              # double 6.2040139999999999
	.quad	0x401ba3c968943e10              # double 6.909948
	.quad	0x3ff644e1e71044f2              # double 1.3918170000000001
	.quad	0x40165c105186db51              # double 5.589906
	.quad	0x400bddaa4fca42af              # double 3.4832350000000001
	.quad	0x4017be6256366d7a              # double 5.9359219999999997
	.quad	0x3ff96086bdf4c2b5              # double 1.586066
	.quad	0x402243864cb5bb38              # double 9.1318839999999994
	.quad	0x401ea7aa68f4b620              # double 7.6637360000000001
	.quad	0x3ff151cf355cd91f              # double 1.082473
	.quad	0x401ef12018a43bb4              # double 7.735474
	.quad	0x400c840e1719f7f9              # double 3.5644800000000001
	.quad	0x402281cfbb949625              # double 9.2535380000000007
	.quad	0x4023559c8c9320da              # double 9.6672100000000007
	.quad	0x40100219652bd3c3              # double 4.0020499999999997
	.quad	0x4017b75f2cb64170              # double 5.929074
	.quad	0x4014d729b280f12c              # double 5.2101199999999999
	.quad	0x400cdc1b54195cc8              # double 3.6074739999999998
	.quad	0x4023c8c1333b96af              # double 9.8920989999999999
	.quad	0x3ff2b58afc47e49b              # double 1.169322
	.quad	0x3ff8fed30f062d41              # double 1.5622130000000001
	.quad	0x3ff58d7f0ed3d85a              # double 1.347045
	.quad	0x40168f9e7b80a9df              # double 5.6402530000000004
	.quad	0x4010b569b17481b2              # double 4.1771609999999999
	.quad	0x4001404fb1183b60              # double 2.1564019999999999
	.quad	0x4023df5be5d9e40d              # double 9.9362480000000008
	.quad	0x40188b0ccbc05d53              # double 6.1357910000000002
	.quad	0x3ff289491f2dc2b1              # double 1.158517
	.quad	0x4023d1f83be6601c              # double 9.9100970000000003
	.quad	0x3ffd54dc65c70436              # double 1.833218
	.quad	0x400e768f8e7ddca5              # double 3.8078910000000001
	.quad	0x40228655193708ab              # double 9.2623680000000004
	.quad	0x401cb17e34b94531              # double 7.1733330000000004
	.quad	0x3fd5a4c1ebc83a97              # double 0.33818100000000001
	.quad	0x40223ac79702e664              # double 9.1148039999999994
	.quad	0x4021021c8a7a41e5              # double 8.5041239999999991
	.quad	0x4015bd0d0678c005              # double 5.4346199999999998
	.quad	0x40129e518f3eccc4              # double 4.6546079999999996
	.quad	0x401114eb56fb8f58              # double 4.270429
	.quad	0x3fd3ed916872b021              # double 0.31137500000000001
	.quad	0x4022eca1f080303c              # double 9.4621729999999999
	.quad	0x4001523bbc6eb0b8              # double 2.1651530000000001
	.quad	0x4022e2960b6f9fcb              # double 9.4425509999999999
	.quad	0x3ff0f83ad9f0a1be              # double 1.060603
	.quad	0x4023e68c8abd5dc4              # double 9.9502909999999999
	.quad	0x3fe23193f6c2699c              # double 0.56855199999999995
	.quad	0x401d2da4052d666b              # double 7.2945710000000004
	.quad	0x4022a3eb7cbb3c82              # double 9.3201560000000008
	.quad	0x40201ce9813879c4              # double 8.0564689999999998
	.quad	0x4021d57ba6698bb5              # double 8.9169590000000003
	.quad	0x40170333fc86cebc              # double 5.7531280000000002
	.quad	0x3fe47e56473471f8              # double 0.64042200000000005
	.quad	0x401ed4d65e460675              # double 7.7078490000000003
	.quad	0x3fd1abb8800eae19              # double 0.27610600000000002
	.quad	0x400224a1f080303c              # double 2.267887
	.quad	0x4000d190d173fb7a              # double 2.1023269999999998
	.quad	0x3fd925204af92296              # double 0.39289099999999999
	.quad	0x4019b46950fc71d6              # double 6.426183
	.quad	0x4018215097c80842              # double 6.0325340000000001
	.quad	0x4013431c64ba94bc              # double 4.8155380000000001
	.quad	0x40196522ea0fd3b3              # double 6.3487660000000004
	.quad	0x400dd769a91105e2              # double 3.7301820000000001
	.quad	0x4013f6772d5e071c              # double 4.9906889999999997
	.quad	0x4019abfa0945f9df              # double 6.4179459999999997
	.quad	0x401387dfe32a0664              # double 4.8826900000000002
	.quad	0x3fe4cc0df58c08b7              # double 0.64990899999999996
	.quad	0x4020579096bb98c8              # double 8.1710250000000002
	.quad	0x4023ee09bb6aa4ba              # double 9.9649180000000008
	.quad	0x401f84545846e8f3              # double 7.8792280000000003
	.quad	0x4007251e321a2e7f              # double 2.8931239999999998
	.quad	0x401a0a9e2bcf91a3              # double 6.5103689999999999
	.quad	0x401a9f4491298890              # double 6.6555350000000004
	.quad	0x3fd1fbdf090f733b              # double 0.28099800000000003
	.quad	0x40214f3f748a1598              # double 8.6547809999999998
	.quad	0x401eb566cf41f213              # double 7.6771500000000001
	.quad	0x4021fcb20fb224ab              # double 8.9935460000000003
	.quad	0x40196a57646ae3a4              # double 6.3538490000000003
	.quad	0x401dda7c9de05037              # double 7.4633659999999997
	.quad	0x4022b5512ec6bce8              # double 9.3541349999999994
	.quad	0x4022dfb3b7521145              # double 9.4369180000000003
	.quad	0x40161771001d5c31              # double 5.5228919999999997
	.quad	0x401685d249e44fa0              # double 5.6306849999999997
	.quad	0x400f32441fea8113              # double 3.8995440000000001
	.quad	0x3fea0917d6b65a9b              # double 0.81361000000000006
	.quad	0x401ee2b1704ff434              # double 7.7213799999999999
	.quad	0x401b90a393ee5eee              # double 6.8912490000000002
	.quad	0x4019a68cef672b88              # double 6.4126469999999998
	.quad	0x4022b858bc59b802              # double 9.3600519999999996
	.quad	0x4014f3b2dd377e1c              # double 5.2379870000000004
	.quad	0x401b29f0a1be2b49              # double 6.7909569999999997
	.quad	0x3fedd18090b417ca              # double 0.93182399999999999
	.quad	0x4015f9335d249e45              # double 5.49336
	.quad	0x4011e69b5a63f9a5              # double 4.4752020000000003
	.quad	0x3ffa670f3882278d              # double 1.650161
	.quad	0x40219a1d96e9bbf1              # double 8.8010070000000002
	.quad	0x401ff95d91ab8e8f              # double 7.9935210000000003
	.quad	0x3fc785c67dfe32a0              # double 0.18376999999999999
	.quad	0x4019e1d798d8a97a              # double 6.4705490000000001
	.quad	0x402236516db0dd83              # double 9.10609
	.quad	0x402292706d506573              # double 9.2860139999999998
	.quad	0x401fd52deca2552a              # double 7.958183
	.quad	0x3fdb283d35eb7458              # double 0.42433100000000001
	.quad	0x3fc758537e2c55c9              # double 0.18238299999999999
	.quad	0x3fdabea4ebdd334c              # double 0.41788599999999998
	.quad	0x40165c70435efa61              # double 5.5902719999999997
	.quad	0x4023f7e82517e77d              # double 9.9841929999999994
	.quad	0x400941815a07b353              # double 3.1569850000000002
	.quad	0x40225fa0945f9df5              # double 9.1867719999999995
	.quad	0x4003e7c0f4517614              # double 2.4881609999999998
	.quad	0x40115f969e3c9689              # double 4.3433479999999998
	.quad	0x40130734b51372a4              # double 4.7570370000000004
	.quad	0x401d6b30728e92d5              # double 7.3546769999999997
	.quad	0x3fe6e34fc610f0e9              # double 0.71524799999999999
	.quad	0x40108f601797cc3a              # double 4.140015
	.quad	0x4020a4156e264e48              # double 8.3204759999999993
	.quad	0x40201132b55ef1fe              # double 8.0335900000000002
	.quad	0x400276a93f290abb              # double 2.3079399999999999
	.quad	0x40081ee2435696e6              # double 3.0150800000000002
	.quad	0x4016c8d21bc126a6              # double 5.6961139999999997
	.quad	0x401baff3ade225fa              # double 6.9218279999999996
	.quad	0x4004381f969e3c97              # double 2.5274040000000002
	.quad	0x400fbef8ceb356da              # double 3.968248
	.quad	0x4020cd3c36113405              # double 8.4008500000000002
	.quad	0x40030d01c0ca600b              # double 2.381351
	.quad	0x4010888e79aae6c9              # double 4.133356
	.quad	0x40224c7368ad6883              # double 9.1493179999999992
	.quad	0x401f40b7c3504c49              # double 7.8132010000000002
	.quad	0x400d97bb73083559              # double 3.6990880000000002
	.quad	0x401a69bcfd4bf099              # double 6.6032599999999997
	.quad	0x401d3e931876188b              # double 7.3111079999999999
	.quad	0x400c16295208e150              # double 3.510821
	.quad	0x40224968943e1006              # double 9.1433759999999999
	.quad	0x401cae1e71044f1a              # double 7.1700379999999999
	.quad	0x3faf3dc054ef459e              # double 0.061018000000000003
	.quad	0x4005ce7c49fd7a14              # double 2.7258230000000001
	.quad	0x400f057e23f24d90              # double 3.8776820000000001
	.quad	0x4014d3a0c6b484d7              # double 5.2066679999999996
	.quad	0x4020168dfbd6a594              # double 8.0440520000000006
	.quad	0x401d0a6aca793576              # double 7.260173
	.quad	0x3ff5f2378ab0c88a              # double 1.3716349999999999
	.quad	0x4016b88c1db0142f              # double 5.6802219999999997
	.quad	0x40208af0bf1a5ca3              # double 8.2713680000000007
	.quad	0x3fee1971c10d7bea              # double 0.94060600000000005
	.quad	0x4022485e3da2f8be              # double 9.1413440000000001
	.quad	0x3fdca98eda22f6a5              # double 0.447849
	.quad	0x4010fe7296f6512b              # double 4.2484840000000004
	.quad	0x40226b04ccee5abc              # double 9.2090209999999999
	.quad	0x40236b018611fd59              # double 9.7089960000000008
	.quad	0x3fe683b3e9a6f827              # double 0.70357700000000001
	.quad	0x401639103c8e25c8              # double 5.5557259999999999
	.quad	0x40221c4028e4fb98              # double 9.0551770000000005
	.quad	0x401e96390c9107fb              # double 7.6467020000000003
	.quad	0x401242e275ab7dc8              # double 4.5653170000000003
	.quad	0x4015c1e53a81dc0e              # double 5.4393510000000003
	.quad	0x3fdb9a34ca0c282c              # double 0.43128699999999998
	.quad	0x3fd748344c37e6f7              # double 0.36378199999999999
	.quad	0x40103cc92146a1a5              # double 4.059361
	.quad	0x4022eb886594af4f              # double 9.4600249999999999
	.quad	0x40131bca9691a75d              # double 4.7771400000000002
	.quad	0x4001f7739f340d4e              # double 2.2458260000000001
	.quad	0x4019706a2b1704ff              # double 6.3597799999999998
	.quad	0x4016a96a26e54717              # double 5.6654439999999999
	.quad	0x40235179e16d6dc2              # double 9.6591330000000006
	.quad	0x40197c6da4484945              # double 6.3715120000000001
	.quad	0x40140745bf26f1dc              # double 5.0071019999999997
	.quad	0x40163f3b645a1cac              # double 5.56175
	.quad	0x4010bf63800218df              # double 4.186903
	.quad	0x401158958d9b5e96              # double 4.3365080000000003
	.quad	0x4016612cadddf43c              # double 5.5948969999999996
	.quad	0x4017a55b89939219              # double 5.9114820000000003
	.quad	0x4022b6b8d8234224              # double 9.3568789999999992
	.quad	0x40237d52e2fbe33b              # double 9.7447730000000003
	.quad	0x401a3574f722e1ac              # double 6.5522039999999997
	.quad	0x4005ea98aa8650e7              # double 2.7395489999999998
	.quad	0x400ff3c81908e582              # double 3.9940340000000001
	.quad	0x4021ccadbc664d3c              # double 8.899763
	.quad	0x4020b0605681ecd5              # double 8.3444850000000006
	.quad	0x401dc525460aa64c              # double 7.4425249999999998
	.quad	0x40204296b3354c12              # double 8.1300559999999997
	.quad	0x401b33ec460ed80a              # double 6.8007059999999999
	.quad	0x400857878b7a1c26              # double 3.0427390000000001
	.quad	0x4021d7f759685122              # double 8.9218089999999997
	.quad	0x401ac8afc47e49b2              # double 6.695983
	.quad	0x401508259e1f3a58              # double 5.2579560000000001
	.quad	0x402394f2495e17e3              # double 9.7909109999999994
	.quad	0x4021fcd37c1376d5              # double 8.9938009999999995
	.quad	0x401a029e4d5d80e5              # double 6.5025570000000004
	.quad	0x3fec9fe64f54d1e9              # double 0.89451899999999995
	.quad	0x4015a2877ee4e26d              # double 5.4087199999999998
	.quad	0x401baea24cc68230              # double 6.9205410000000001
	.quad	0x3ffd2b00ffda4053              # double 1.822999
	.quad	0x3ffe6529bae46cfd              # double 1.8996980000000001
	.quad	0x401d9d7774aba387              # double 7.4037759999999997
	.quad	0x40025a0168b5cbff              # double 2.2939479999999999
	.quad	0x4011ac58255b035c              # double 4.4183050000000001
	.quad	0x3fef77a7008a697b              # double 0.983356
	.quad	0x3ff3dfb6134ce3de              # double 1.2421169999999999
	.quad	0x4022ea9845dc8323              # double 9.4581929999999996
	.quad	0x4015b5ed06fef7c2              # double 5.4276619999999998
	.quad	0x400ab8d045fe1112              # double 3.3402409999999998
	.quad	0x40204adfb506dd6a              # double 8.1462380000000003
	.quad	0x4014d58e219652bd              # double 5.2085499999999998
	.quad	0x401d4504c48adeec              # double 7.3174010000000003
	.quad	0x40087a038194c016              # double 3.059577
	.quad	0x4019123c42a66dbd              # double 6.2678079999999996
	.quad	0x40208671044f1a1a              # double 8.2625810000000008
	.quad	0x4023b18a43bb40b3              # double 9.8467579999999994
	.quad	0x4008d743632c1f43              # double 3.1051090000000001
	.quad	0x4023591a543f1c76              # double 9.6740290000000009
	.quad	0x4001b1d606317269              # double 2.2118340000000001
	.quad	0x401a172d5e071c54              # double 6.522634
	.quad	0x40198231832fcac9              # double 6.3771420000000001
	.quad	0x401503cd141a6938              # double 5.2537120000000002
	.quad	0x40158e6ddf00abf7              # double 5.3890909999999996
	.quad	0x401c598c7e28240b              # double 7.0874499999999996
	.quad	0x400583c3a42f1ed1              # double 2.6893379999999998
	.quad	0x4022c452c59fb1e2              # double 9.3834440000000008
	.quad	0x4013903cd141a693              # double 4.8908569999999996
	.quad	0x40133aceaaf35e31              # double 4.807429
	.quad	0x4006f7d84901d191              # double 2.8710179999999998
	.quad	0x402259001d5c3159              # double 9.1738289999999996
	.quad	0x4011a23315d701da              # double 4.408398
	.quad	0x3fcad245b291b824              # double 0.20954200000000001
	.quad	0x3fd6207d4e09784f              # double 0.34573300000000001
	.quad	0x40134f75d9a0f0a6              # double 4.8275980000000001
	.quad	0x4014e95aaf78feef              # double 5.2278849999999997
	.quad	0x3ffb8b35f3d7d391              # double 1.721487
	.quad	0x400adcb3e5753a3f              # double 3.3577650000000001
	.quad	0x4021b6cf850df15a              # double 8.8570519999999995
	.quad	0x4023f8e68e3ef284              # double 9.9861339999999998
	.quad	0x4015c6cc1ca3a4b5              # double 5.4441379999999997
	.quad	0x3ffd450acc0bdcad              # double 1.829356
	.quad	0x401064f00ef1348b              # double 4.0985719999999999
	.quad	0x401e50bb2bba98ee              # double 7.5788390000000003
	.quad	0x401a100ffda4052d              # double 6.5156859999999996
	.quad	0x4021afa7eb6bf445              # double 8.8430780000000002
	.quad	0x4011d9d1b2e59afa              # double 4.4627140000000001
	.quad	0x401c0cc100e6afcd              # double 7.0124550000000001
	.quad	0x4003b059ea57214f              # double 2.461109
	.quad	0x400ff107746887a9              # double 3.9926900000000001
	.quad	0x4020a93037d63023              # double 8.3304460000000002
	.quad	0x4021cc8fb86f47b6              # double 8.8995339999999992
	.quad	0x4003472e275ab7dc              # double 2.4097559999999998
	.quad	0x40035fd36f7e3d1d              # double 2.4217900000000001
	.quad	0x40164ee17a02fb5d              # double 5.577032
	.quad	0x3fe2507e9d94d0dd              # double 0.572326
	.quad	0x401ce9c9d5a187a5              # double 7.2283090000000003
	.quad	0x401aa8c32a8c9b84              # double 6.6648069999999997
	.quad	0x401bf460242d05f3              # double 6.9886480000000004
	.quad	0x401762d0a2446306              # double 5.8464989999999997
	.quad	0x4017afdc9c4da900              # double 5.9217399999999998
	.quad	0x401145d4a5df223a              # double 4.3181940000000001
	.quad	0x4016afd1dcd7060c              # double 5.6716990000000003
	.quad	0x3ffc173fb7a5f41b              # double 1.755676
	.quad	0x400fd96638433d6c              # double 3.9811519999999998
	.quad	0x401cb5f138bcdff0              # double 7.1776780000000002
	.quad	0x401345bfad299956              # double 4.8181139999999996
	.quad	0x3fe264020817fc76              # double 0.574708
	.quad	0x4014ae3ef284167b              # double 5.1701620000000004
	.quad	0x40203ace67d77fae              # double 8.1148559999999996
	.quad	0x400be2a66dbd72bd              # double 3.4856690000000001
	.quad	0x4021ea702a3486f0              # double 8.9578869999999995
	.quad	0x401c522af5771002              # double 7.0802420000000001
	.quad	0x401f9c09c3ce208a              # double 7.9023810000000001
	.quad	0x401c8a79fec99f1b              # double 7.1352310000000001
	.quad	0x401fc4fe79ee02a7              # double 7.9423769999999995
	.quad	0x40226452e72da123              # double 9.195945
	.quad	0x401b1c842fa50939              # double 6.7778479999999997
	.quad	0x401be6394face67d              # double 6.9748279999999996
	.quad	0x3ff5683a109d0636              # double 1.3379460000000001
	.quad	0x400bad0f6273929f              # double 3.4595020000000001
	.quad	0x4003f984a0e410b6              # double 2.4968349999999999
	.quad	0x4008b28ae74f2f12              # double 3.0871789999999999
	.quad	0x400e17e2c55c9603              # double 3.761663
	.quad	0x4016b0e38a7e73a3              # double 5.6727429999999996
	.quad	0x3fff231f8a0902de              # double 1.946075
	.quad	0x3ffc37b9e060fe48              # double 1.7636050000000001
	.quad	0x3ffb2d2fe3f359ff              # double 1.6985319999999999
	.quad	0x4023ff92d1287c20              # double 9.9991669999999999
	.quad	0x401c7a027525460b              # double 7.1191500000000003
	.quad	0x4013692ddbdb5d89              # double 4.8527139999999997
	.quad	0x401d76ba493c89f4              # double 7.365945
	.quad	0x4010717df19d66ae              # double 4.1108320000000003
	.quad	0x4022ef83dff3f0fe              # double 9.467803
	.quad	0x400864ccee5abc0e              # double 3.0492189999999999
	.quad	0x401e69f2778140dd              # double 7.6034639999999997
	.quad	0x4013a59685122318              # double 4.9117069999999998
	.quad	0x4011b07ee0b0af60              # double 4.4223590000000002
	.quad	0x401d6f316e371540              # double 7.358587
	.quad	0x400534666ec9e237              # double 2.6505860000000001
	.quad	0x4005bbbbe878fabe              # double 2.7166670000000002
	.quad	0x400f65fd8adab9f5              # double 3.9247999999999998
	.quad	0x4021a64a16a48733              # double 8.8247839999999993
	.quad	0x4017d79207d4e098              # double 5.9605180000000004
	.quad	0x4002fac14c660a20              # double 2.372439
	.quad	0x4023c26bd6e8af81              # double 9.8797289999999993
	.quad	0x40066fe154434e33              # double 2.8046289999999998
	.quad	0x40208bb6ed677708              # double 8.2728800000000007
	.quad	0x40176b96f21f6cad              # double 5.8550680000000002
	.quad	0x3ffce262cba732df              # double 1.8052699999999999
	.quad	0x401965c9e6687f45              # double 6.3494029999999997
	.quad	0x401bfdea465a5764              # double 6.9979639999999996
	.quad	0x3ff2513f8db48909              # double 1.144836
	.quad	0x40062b7a1c25d074              # double 2.7712289999999999
	.quad	0x4012a5810624dd2f              # double 4.6616249999999999
	.quad	0x401a2a8b8f14db59              # double 6.5415479999999997
	.quad	0x4023db039ef0f16f              # double 9.9277619999999995
	.quad	0x4023e906ab14ec20              # double 9.9551289999999995
	.quad	0x401097c957cd466f              # double 4.1482289999999997
	.quad	0x40051f7dfa00e27e              # double 2.640377
	.quad	0x400d27e5a78f25a2              # double 3.6444809999999999
	.quad	0x401b47b677f6b1a3              # double 6.8200320000000003
	.quad	0x400ba0f5e41d4b6a              # double 3.4535939999999998
	.quad	0x40071613d31b9b67              # double 2.88578
	.quad	0x401765eaab042529              # double 5.8495280000000003
	.quad	0x3ffc5a5a89b951c6              # double 1.7720590000000001
	.quad	0x4015f90de093532e              # double 5.4932169999999996
	.quad	0x401456c8711d798e              # double 5.0847490000000004
	.quad	0x40202ea619da9c99              # double 8.0911109999999997
	.quad	0x400f4729f59ccfaf              # double 3.909748
	.quad	0x40207fb84db9c737              # double 8.2494530000000008
	.quad	0x4018cac2df0d4131              # double 6.1980089999999999
	.quad	0x40190ae6c8f75537              # double 6.2606460000000004
	.quad	0x402305000c9539b9              # double 9.5097660000000008
	.quad	0x400c03ff69014b5a              # double 3.5019520000000002
	.quad	0x4023a05143bf7271              # double 9.8131199999999996
	.quad	0x401d70d9945b6c37              # double 7.3602049999999997
	.quad	0x401f35edd052934b              # double 7.8026650000000001
	.quad	0x4015ea06a6e32e38              # double 5.4785409999999999
	.quad	0x40238e58c4bd33d3              # double 9.7780210000000007
	.quad	0x401700d9513f8db5              # double 5.7508290000000004
	.quad	0x40047061c79b34a4              # double 2.5548739999999999
	.quad	0x40181b43526527a2              # double 6.026624
	.quad	0x40219dd95dd4c76d              # double 8.8082989999999999
	.quad	0x401cdf444e0daa0d              # double 7.2180340000000003
	.quad	0x4023005e5f30e7ff              # double 9.5007199999999993
	.quad	0x40114c7cd898b2ea              # double 4.3246950000000002
	.quad	0x40133acb4289118c              # double 4.8074159999999999
	.quad	0x400c15ce9e5e2479              # double 3.5106480000000002
	.quad	0x401ff9289dadfb50              # double 7.9933189999999996
	.quad	0x401b68b60f1b25f6              # double 6.8522569999999998
	.quad	0x400fe13a0c6b484d              # double 3.9849739999999998
	.quad	0x401e0f22c01e68a1              # double 7.5147810000000001
	.quad	0x401553254e6e221d              # double 5.3311970000000004
	.quad	0x4008c2fb5d031056              # double 3.0952060000000001
	.quad	0x40055a5657fb6998              # double 2.6691099999999999
	.quad	0x40189b69db65ecc4              # double 6.1517710000000001
	.quad	0x4021533fc86cebbc              # double 8.6625960000000006
	.quad	0x401827036c9c0a8d              # double 6.0380989999999999
	.quad	0x400673953dea465a              # double 2.8064369999999998
	.quad	0x4008713f8db48909              # double 3.0552969999999999
	.quad	0x4023e671044f1a1a              # double 9.9500810000000008
	.quad	0x4022cce789e774ef              # double 9.4002040000000004
	.quad	0x401465069a4df480              # double 5.0986580000000004
	.quad	0x4014480e496ededb              # double 5.0703670000000001
	.quad	0x401f7c647778dd61              # double 7.8714769999999996
	.quad	0x4001a493c89f40a3              # double 2.2053600000000002
	.quad	0x401246709fa54c55              # double 4.5687889999999998
	.quad	0x400958eb0318b934              # double 3.1684169999999998
	.quad	0x400cb8bd66277c46              # double 3.5902050000000001
	.quad	0x3f99c99285a921cd              # double 0.025183000000000001
	.quad	0x4021e1cd1c7de508              # double 8.9410179999999997
	.quad	0x401a087e7c06e19c              # double 6.5082950000000004
	.quad	0x40223f789a459104              # double 9.1239670000000003
	.quad	0x4020ef2d5e071c54              # double 8.467143
	.quad	0x4021d75ec80c73ac              # double 8.9206450000000003
	.quad	0x400b27e49b1fab97              # double 3.394479
	.quad	0x4023542bd7f51efb              # double 9.6643969999999992
	.quad	0x401c2c504816f007              # double 7.0432750000000004
	.quad	0x401a371a3b14a904              # double 6.5538109999999996
	.quad	0x4012b5336deb95e6              # double 4.6769540000000003
	.quad	0x40135b7995ee136e              # double 4.8393309999999996
	.quad	0x4015681669ced0b3              # double 5.351648
	.quad	0x40091e02645e4e6a              # double 3.139653
	.quad	0x401d707e5a78f25a              # double 7.3598569999999999
	.quad	0x40133a1a93293d10              # double 4.8067419999999998
	.quad	0x401a353c148344c3              # double 6.5519869999999996
	.quad	0x3fbc5fe111276fb1              # double 0.11083800000000001
	.quad	0x401df36c15d2d01c              # double 7.487717
	.quad	0x40026fa0d77b7c78              # double 2.3045059999999999
	.quad	0x40010558644523f6              # double 2.1276099999999998
	.quad	0x40170a708ede54b5              # double 5.7601950000000004
	.quad	0x40189780fdc1615f              # double 6.1479530000000002
	.quad	0x401fb36e2eb1c433              # double 7.9252250000000001
	.quad	0x40161ea8112ba16e              # double 5.5299379999999996
	.quad	0x402350ec52a411c3              # double 9.6580530000000006
	.quad	0x402353b83cf2cf96              # double 9.6635150000000003
	.quad	0x3fe0ef694467381d              # double 0.52922499999999995
	.quad	0x400ea1c4fc1df330              # double 3.828989
	.quad	0x401f65e99e94ab1d              # double 7.8495239999999997
	.quad	0x401c0fa7eb6bf445              # double 7.0152890000000001
	.quad	0x400c1ef8ceb356da              # double 3.515123
	.quad	0x401ec088d6d3b6cc              # double 7.6880220000000001
	.quad	0x3ff462f2734f82f5              # double 1.274157
	.quad	0x401aafc504816f00              # double 6.6716499999999996
	.quad	0x401b4fcd24e160d9              # double 6.8279310000000004
	.quad	0x4011c0ff97247454              # double 4.4384750000000004
	.quad	0x4023e36ed677707a              # double 9.9442050000000002
	.quad	0x4016abccf28c79f6              # double 5.6677739999999996
	.quad	0x4023aa7a41e57d9e              # double 9.8329640000000005
	.quad	0x401eeca4f440af1d              # double 7.7310980000000002
	.quad	0x400e48bf3bea91da              # double 3.7855210000000001
	.quad	0x401f2ca36199780c              # double 7.7935920000000003
	.quad	0x3ffe52b90a782907              # double 1.8951960000000001
	.quad	0x3ff67269df97aaac              # double 1.402933
	.quad	0x402377c829cfdd23              # double 9.7339490000000008
	.quad	0x3fee2c6cdaf4adbc              # double 0.94292299999999995
	.quad	0x4010164cf8d716d3              # double 4.0217780000000003
	.quad	0x4003a37718655193              # double 2.4548169999999998
	.quad	0x3ff18a24463065f9              # double 1.0962259999999999
	.quad	0x40230e4217d2849d              # double 9.5278480000000005
	.quad	0x402100b178b37004              # double 8.5013539999999991
	.quad	0x40211fd2c7b890d6              # double 8.5621550000000006
	.quad	0x4009f84db9c7368b              # double 3.2462420000000001
	.quad	0x400e3ed06fef7c24              # double 3.7806709999999999
	.quad	0x40087312b1b36bd3              # double 3.0561880000000001
	.quad	0x402219b60ae9680e              # double 9.050217
	.quad	0x40111645e4e69f06              # double 4.2717510000000001
	.quad	0x40197a0945f9df55              # double 6.3691760000000004
	.quad	0x4012bca1cef240fb              # double 4.6842110000000003
	.quad	0x400c014d72799a20              # double 3.5006360000000001
	.quad	0x400c09ed3953dea4              # double 3.5048469999999998
	.quad	0x3ff6e573215fcc18              # double 1.4310179999999999
	.quad	0x4010298676a7264a              # double 4.0405519999999999
	.quad	0x3fe98d8665e02ea9              # double 0.79852599999999996
	.quad	0x4011906cca2db61c              # double 4.3910400000000003
	.quad	0x401219a027525461              # double 4.5250250000000003
	.quad	0x40016de43ed959a3              # double 2.178658
	.quad	0x4008a449dbec2481              # double 3.080219
	.quad	0x400a5034b0e1b4bb              # double 3.2891629999999998
	.quad	0x400f4d2ed783dff4              # double 3.912687
	.quad	0x3ff4a54c55432874              # double 1.2903560000000001
	.quad	0x400879146e4c0df6              # double 3.0591210000000002
	.quad	0x400f783b60285ec4              # double 3.9337070000000001
	.quad	0x3ff841355475a31a              # double 1.5159199999999999
	.quad	0x4001d4666ec9e237              # double 2.2287110000000001
	.quad	0x402073e76c8b4396              # double 8.2263750000000009
	.quad	0x400e95d35653c9ac              # double 3.8231570000000001
	.quad	0x4021fb634dad31fd              # double 8.9909920000000003
	.quad	0x401ee2de00d1b717              # double 7.7215499999999996
	.quad	0x40152fc9bc771434              # double 5.2966680000000004
	.quad	0x4014f3ed0f627393              # double 5.2382090000000003
	.quad	0x4012db3cc4ac6cdb              # double 4.714099
	.quad	0x4005d740c4156e26              # double 2.7301039999999999
	.quad	0x401e85bccaf709b7              # double 7.6306029999999998
	.quad	0x4014a5d6bebe1651              # double 5.1619520000000003
	.quad	0x3fd609fa54c55433              # double 0.34435900000000003
	.quad	0x401dddbf0563ed0f              # double 7.4665489999999997
	.quad	0x4017b1ec918e325d              # double 5.9237539999999997
	.quad	0x401145bd0e12e83a              # double 4.3181039999999999
	.quad	0x40125429e0a41a26              # double 4.5821909999999999
	.quad	0x4023f71a9fbe76c9              # double 9.9826250000000005
	.quad	0x401a7e75ff609dd0              # double 6.6234970000000004
	.quad	0x401ed6223e186983              # double 7.7091149999999997
	.quad	0x40051d3458cd20b0              # double 2.6392600000000002
	.quad	0x4004fabfb9bed30f              # double 2.622436
	.quad	0x4022765ecc3e3194              # double 9.231192
	.quad	0x40215d80e496edee              # double 8.6826240000000006
	.quad	0x40202e48a58b3f64              # double 8.0903980000000004
	.quad	0x401fe03e63e8dda5              # double 7.9689880000000004
	.quad	0x3fd16527a20578e6              # double 0.27179900000000001
	.quad	0x400ea637bd05af6c              # double 3.8311609999999998
	.quad	0x3ff29275ee99a62f              # double 1.160757
	.quad	0x40152059ea57214f              # double 5.281593
	.quad	0x3ffeed905c033615              # double 1.9329989999999999
	.quad	0x4001316228134480              # double 2.1491129999999998
	.quad	0x40215696e58a32f4              # double 8.6691199999999994
	.quad	0x402163dee78183f9              # double 8.6950599999999998
	.quad	0x3fe80c9b845564b6              # double 0.75153899999999996
	.quad	0x401d67b8d3f1843c              # double 7.3512909999999998
	.quad	0x3fcba08bfc2224ee              # double 0.215837
	.quad	0x40212e527a20578e              # double 8.5904729999999994
	.quad	0x40215ee9142b302f              # double 8.6853719999999992
	.quad	0x401764b9884c6a3c              # double 5.8483640000000001
	.quad	0x4008984a0e410b63              # double 3.07436
	.quad	0x40233cf63800218e              # double 9.6190660000000001
	.quad	0x400bf48909289dae              # double 3.494402
	.quad	0x401ad3df2a9d627c              # double 6.706906
	.quad	0x40149e2c98e53eb4              # double 5.1544670000000004
	.quad	0x40109d5f99c38b05              # double 4.1536850000000003
	.quad	0x40234cdea033e78e              # double 9.6501359999999998
	.quad	0x4011711dffc5479d              # double 4.3604659999999997
	.quad	0x401a126e978d4fdf              # double 6.5179999999999998
	.quad	0x3fd209917939a7c1              # double 0.28183399999999997
	.quad	0x4015c830a0b1bbcf              # double 5.4454979999999997
	.quad	0x401d64567125dd09              # double 7.3479859999999997
	.quad	0x4013f86db50f40e6              # double 4.9926060000000003
	.quad	0x4020fc061847f562              # double 8.4922339999999998
	.quad	0x40138f7f8ca8198f              # double 4.8901349999999999
	.quad	0x40115e1ac57e23f2              # double 4.3418989999999997
	.quad	0x3ff7ad9be4cd7492              # double 1.4798849999999999
	.quad	0x4017e7839cd8127b              # double 5.9760879999999998
	.quad	0x4013062e09fe8683              # double 4.7560349999999998
	.quad	0x400c788db0574b40              # double 3.5588639999999998
	.quad	0x4021bd097c80841f              # double 8.8692130000000002
	.quad	0x4017a0f733a8a3f9              # double 5.9071930000000004
	.quad	0x401bc5918a009f62              # double 6.9429379999999998
	.quad	0x401a1899392189be              # double 6.5240220000000004
	.quad	0x4011b56473471f79              # double 4.4271409999999998
	.quad	0x4014d10ecb74ddf8              # double 5.2041579999999996
	.quad	0x40034e7a311e85fd              # double 2.413319
	.quad	0x4017ad8c6d612c6b              # double 5.9194810000000002
	.quad	0x4011945c358afc48              # double 4.3948830000000001
	.quad	0x3fff850bd87b56b8              # double 1.9699819999999999
	.quad	0x40237e175d13d74d              # double 9.7462719999999993
	.quad	0x4012f34efcbd5561              # double 4.7376060000000004
	.quad	0x40227252ce032db2              # double 9.2232880000000002
	.quad	0x4000be1eb4202d9d              # double 2.092832
	.quad	0x4023dcb7b28954a8              # double 9.931089
	.quad	0x401d8af74cd3176a              # double 7.3857090000000003
	.quad	0x3fd438fbca1059ea              # double 0.31597799999999998
	.quad	0x400f75714b9cb685              # double 3.9323450000000002
	.quad	0x40158a11a975afb0              # double 5.3848330000000004
	.quad	0x3fb9490e66cb1034              # double 0.098770999999999997
	.quad	0x4012725fa658c4bd              # double 4.6116929999999998
	.quad	0x401df6e3b46fdeb5              # double 7.4911029999999998
	.quad	0x4021c6e115592d99              # double 8.8884360000000004
	.quad	0x4021cb721d53cddd              # double 8.8973549999999992
	.quad	0x40130ededaec4a41              # double 4.7645220000000004
	.quad	0x4018c19a415f45e1              # double 6.1890650000000003
	.quad	0x3fe20285ec3dab5c              # double 0.56280799999999997
	.quad	0x400c66a7ef9db22d              # double 3.550125
	.quad	0x4022259231c64ba9              # double 9.0733809999999995
	.quad	0x4023e68f8e7ddca5              # double 9.9503140000000005
	.quad	0x3feeadff822bbecb              # double 0.95874000000000003
	.quad	0x4011f28954a7f801              # double 4.4868519999999998
	.quad	0x401b36ee73e681aa              # double 6.8036440000000002
	.quad	0x3fee5b70691ea78b              # double 0.94866200000000001
	.quad	0x40098009f623076c              # double 3.187519
	.quad	0x400e401711947cfa              # double 3.7812939999999999
	.quad	0x40071256798958da              # double 2.8839540000000001
	.quad	0x3fea58e219652bd4              # double 0.82335000000000002
	.quad	0x401f1c61522a6f3f              # double 7.7777149999999997
	.quad	0x40001bafd976ff3b              # double 2.0135190000000001
	.quad	0x3f823d4f15e7c8d2              # double 0.0089060000000000007
	.quad	0x401ec912dba4d6e4              # double 7.6963609999999996
	.quad	0x4016d5a3e39f7729              # double 5.7086329999999998
	.quad	0x3ff9c76e1deacc92              # double 1.611189
	.quad	0x4023f985271bcdbc              # double 9.9873440000000002
	.quad	0x401dd9d66adb402d              # double 7.4627319999999999
	.quad	0x401eb17c5ef62f9d              # double 7.6733260000000003
	.quad	0x400220bfe3b03e21              # double 2.2659910000000001
	.quad	0x4019e9784ec636b1              # double 6.4779980000000004
	.quad	0x400b6e6299524bfd              # double 3.4288989999999999
	.quad	0x400df645a1cac083              # double 3.74525
	.quad	0x402276325d4a5df2              # double 9.2308529999999998
	.quad	0x3ffe997d49d7ba67              # double 1.9124730000000001
	.quad	0x401d01dfb9389b52              # double 7.25183
	.quad	0x400f07b677f6b1a3              # double 3.8787660000000002
	.quad	0x400cc53005814941              # double 3.5962830000000001
	.quad	0x3fc273de1e2de871              # double 0.14416100000000001
	.quad	0x4017c4c0df58c08b              # double 5.9421419999999996
	.quad	0x3fe6846c764adff8              # double 0.70366499999999998
	.quad	0x400e80f4d7add15f              # double 3.812967
	.quad	0x40109492bc2fc697              # double 4.1450909999999999
	.quad	0x401322c16df3f962              # double 4.7839410000000004
	.quad	0x401921719f7f8ca8              # double 6.2826599999999999
	.quad	0x401c9c46950fc71d              # double 7.1526129999999997
	.quad	0x40226c8b0079a283              # double 9.2119979999999995
	.quad	0x400cce3b46fdeb53              # double 3.6006990000000001
	.quad	0x40140c74fb549f95              # double 5.0121650000000004
	.quad	0x401b22e9899bf594              # double 6.7840939999999996
	.quad	0x3fd5f826edaa92e6              # double 0.34327099999999999
	.quad	0x40205bd859c8c932              # double 8.1793849999999999
	.quad	0x400be94680171194              # double 3.4889039999999998
	.quad	0x4011a99bb2788db0              # double 4.4156329999999997
	.quad	0x400e79e731d2e0e3              # double 3.809523
	.quad	0x3ff3bc0d2c386d2f              # double 1.233411
	.quad	0x400593804534bd77              # double 2.697022
	.quad	0x3fef76a50d6b228e              # double 0.98323300000000002
	.quad	0x401badc054ef459e              # double 6.9196790000000004
	.quad	0x4022572734f82f51              # double 9.1702209999999997
	.quad	0x400289ef5232d2bb              # double 2.3173509999999999
	.quad	0x400c6521dda059a7              # double 3.5493809999999999
	.quad	0x4012cad601ffb481              # double 4.6980820000000003
	.quad	0x40203ddaceee0f3d              # double 8.1208100000000005
	.quad	0x4013ee8ab4fa4830              # double 4.9829509999999999
	.quad	0x401570d1b71758e2              # double 5.3601749999999999
	.quad	0x3ff0ae9899bf5947              # double 1.0426260000000001
	.quad	0x401b3b0079a2834d              # double 6.8076189999999999
	.quad	0x4005fe4712e40853              # double 2.7491590000000001
	.quad	0x40221bcd141a6938              # double 9.0542990000000003
	.quad	0x3ffacd716d2aa5c6              # double 1.675157
	.quad	0x4023316a26e54717              # double 9.5965129999999998
	.quad	0x3f9d712a0ec74320              # double 0.028752
	.quad	0x40206bcc8de2ac32              # double 8.2105449999999998
	.quad	0x3ffda12620253975              # double 1.8518429999999999
	.quad	0x3ff999c38b04ab60              # double 1.6000399999999999
	.quad	0x4009ddeb52c9d170              # double 3.2333590000000001
	.quad	0x3ff13f23cc8de2ac              # double 1.077915
	.quad	0x400eab063e07a28c              # double 3.8335080000000001
	.quad	0x402181d323fee2ca              # double 8.7535640000000008
	.quad	0x3fe992ccf6be37df              # double 0.79917000000000005
	.quad	0x3fe7c0895d0b73d2              # double 0.74225300000000005
	.quad	0x3fa48adeebb341e1              # double 0.040121999999999998
	.quad	0x400d3daad601ffb5              # double 3.6551110000000002
	.quad	0x401fee76c8b43958              # double 7.9828749999999999
	.quad	0x3ff511b0ccbc05d5              # double 1.316819
	.quad	0x4017090ff9724745              # double 5.7588499999999998
	.quad	0x3ff519b3d07c84b6              # double 1.318775
	.quad	0x3fc3a09cc319c5a4              # double 0.153339
	.quad	0x4000059103c8e25d              # double 2.0027180000000002
	.quad	0x4020fe0653005815              # double 8.4961420000000007
	.quad	0x40098c7219220ff5              # double 3.1935769999999999
	.quad	0x3ff0e7ee9142b303              # double 1.056624
	.quad	0x4020d0de4c51116b              # double 8.4079460000000008
	.quad	0x3fff20168b5cbff4              # double 1.9453339999999999
	.quad	0x3fe49f51697f1f9b              # double 0.64444800000000002
	.quad	0x4009dce2089e3433              # double 3.232853
	.quad	0x40030e4e26d4801f              # double 2.3819849999999998
	.quad	0x4014d780346dc5d6              # double 5.2104499999999998
	.quad	0x4021b87182235b4f              # double 8.8602410000000003
	.quad	0x4000254b48d3ae68              # double 2.0182099999999998
	.quad	0x3ff2a9df97aaac11              # double 1.1664730000000001
	.quad	0x3ff71b3397dd00f7              # double 1.4441409999999999
	.quad	0x402158e779207d4e              # double 8.6736409999999999
	.quad	0x3fe8ba9d1f601798              # double 0.77278000000000002
	.quad	0x4011195a294141ea              # double 4.2747580000000003
	.quad	0x3ff1678f25a250f8              # double 1.0877829999999999
	.quad	0x4021a2c929aa1d75              # double 8.8179409999999994
	.quad	0x401dea647fdc5932              # double 7.4788990000000002
	.quad	0x400e722a6f3f52fc              # double 3.8057449999999999
	.quad	0x4002eb7132724313              # double 2.3649619999999998
	.quad	0x4017e9e40c8472c1              # double 5.9784090000000001
	.quad	0x4020f4f69ca9ef52              # double 8.4784439999999996
	.quad	0x400d8afff36ac647              # double 3.6928709999999998
	.quad	0x4010de8101f31f47              # double 4.2172890000000001
	.quad	0x40225032fcac8e69              # double 9.1566390000000002
	.quad	0x401fe4898f605ab4              # double 7.9731810000000003
	.quad	0x3ff3c8cc575c0768              # double 1.236523
	.quad	0x401fb0c23fab10ba              # double 7.9226159999999997
	.quad	0x40155f99806f2629              # double 5.3433590000000004
	.quad	0x3ff2a96e58a32f45              # double 1.1663650000000001
	.quad	0x4003e92ddbdb5d89              # double 2.4888569999999999
	.quad	0x40015070fbeb9e49              # double 2.1642779999999999
	.quad	0x4018194467381d7e              # double 6.0246750000000002
	.quad	0x3fc17cbb3c81908e              # double 0.13661899999999999
	.quad	0x3fd836b8f9b13166              # double 0.37834000000000001
	.quad	0x3fb058dde7a743a6              # double 0.063855999999999996
	.quad	0x40219ead0c3d2524              # double 8.8099139999999991
	.quad	0x3fbc959e6256366d              # double 0.11165799999999999
	.quad	0x4013777ee4e26d48              # double 4.866695
	.quad	0x400664f8f8a4c1ec              # double 2.7993030000000001
	.quad	0x40121244a6223e18              # double 4.5178399999999996
	.quad	0x3fe8a01cd5f99c39              # double 0.76954500000000003
	.quad	0x4022ae4388ebcc6c              # double 9.3403589999999994
	.quad	0x40239eb8950763a2              # double 9.8100020000000008
	.quad	0x402170eed02cd39e              # double 8.7205720000000007
	.quad	0x402084c319c5a3e4              # double 8.2593010000000006
	.quad	0x40212e60807357e6              # double 8.5905799999999992
	.quad	0x4021cc98a222d517              # double 8.8996019999999998
	.quad	0x4019525bfad29995              # double 6.3304289999999996
	.quad	0x401999d8409e55c1              # double 6.400239
	.quad	0x4015feb56fb8f57f              # double 5.4987389999999996
	.quad	0x40216369984a0e41              # double 8.6941649999999999
	.quad	0x401c249be8ff327b              # double 7.0357510000000003
	.quad	0x400f9e1c9b413986              # double 3.9522029999999999
	.quad	0x401c48bdec5f394b              # double 7.0710369999999996
	.quad	0x3fdb67b1c0010c6f              # double 0.42820399999999997
	.quad	0x400c7577963992c9              # double 3.5573570000000001
	.quad	0x40177ee30caa326e              # double 5.8739129999999999
	.quad	0x40018d7060bb2bbb              # double 2.1940620000000002
	.quad	0x4023872606fac604              # double 9.7639619999999993
	.quad	0x4010e3964a59c066              # double 4.2222530000000003
	.quad	0x40213aaae297396d              # double 8.6145849999999999
	.quad	0x400f66bf8769ec2d              # double 3.92517
	.quad	0x40052378ab0c88a4              # double 2.6423199999999998
	.quad	0x3ff50aeea63b688c              # double 1.315169
	.quad	0x3ff845cfede97d07              # double 1.5170440000000001
	.quad	0x401187d45a5fc7e7              # double 4.3826460000000003
	.quad	0x400c31dd5d3dc8b8              # double 3.5243479999999998
	.quad	0x40236216a4873366              # double 9.6915790000000008
	.quad	0x40113afb3b752114              # double 4.3075989999999997
	.quad	0x3fea7e06961c3697              # double 0.82788399999999995
	.quad	0x40214b1d92b7fe09              # double 8.6467100000000006
	.quad	0x40209ba94bbe4474              # double 8.3040260000000003
	.quad	0x3ff3290eed02cd3a              # double 1.197524
	.quad	0x400feb662fdfc19c              # double 3.989941
	.quad	0x40176a20578e5c4f              # double 5.8536390000000003
	.quad	0x401c4c9a34ca0c28              # double 7.0748069999999998
	.quad	0x3ff18f5c28f5c28f              # double 1.0974999999999999
	.quad	0x4004a7ef9db22d0e              # double 2.5819999999999999
	.quad	0x4007102b40f66a55              # double 2.882895
	.quad	0x402167a7221858bc              # double 8.7024469999999993
	.quad	0x401aeeb9a176ddad              # double 6.7331300000000001
	.quad	0x4022e333fc86cebc              # double 9.4437560000000004
	.quad	0x401a8182a9930be1              # double 6.6264750000000001
	.quad	0x4006b71001d5c316              # double 2.8393860000000002
	.quad	0x401620e23af31b15              # double 5.5321129999999998
	.quad	0x400a4a7ded6ba8c6              # double 3.2863730000000002
	.quad	0x40113cf893faf428              # double 4.3095420000000004
	.quad	0x40122ed6fda836eb              # double 4.5457419999999997
	.quad	0x4012c606b7aa25d9              # double 4.6933850000000001
	.quad	0x3fe25c725c3dee78              # double 0.57378499999999999
	.quad	0x3ffe60bd44998d04              # double 1.8986179999999999
	.quad	0x401cc5b6805a2d73              # double 7.193079
	.quad	0x40172c158fb43d8a              # double 5.7930510000000002
	.quad	0x40146af5771001d6              # double 5.1044520000000002
	.quad	0x400a59b56323bbc7              # double 3.293803
	.quad	0x4012dd6cf850df16              # double 4.7162360000000003
	.quad	0x40017f3e0370cdc8              # double 2.1871299999999998
	.quad	0x40238527e5215769              # double 9.7600700000000006
	.quad	0x40110a4228997c3d              # double 4.2600179999999996
	.quad	0x401deb04ee7c49fd              # double 7.4795109999999996
	.quad	0x4020268a2ec28b2a              # double 8.0752729999999993
	.quad	0x4021cdb445ed4a1b              # double 8.9017660000000003
	.quad	0x40132647fdc5931d              # double 4.7873840000000003
	.quad	0x401f7cb8e086bdf5              # double 7.8717990000000002
	.quad	0x401a8d1a65061416              # double 6.6377959999999998
	.quad	0x401b9f212d773190              # double 6.9054000000000002
	.quad	0x401ad41cc532a498              # double 6.707141
	.quad	0x401b3c52e72da123              # double 6.80891
	.quad	0x4010f07dd4413554              # double 4.2348549999999996
	.quad	0x401ba645e4e69f06              # double 6.9123760000000001
	.quad	0x401e7adc8fb86f48              # double 7.6199820000000002
	.quad	0x400d1f6fd21ff2e5              # double 3.6403500000000002
	.quad	0x3ff622d40aaeafab              # double 1.3835029999999999
	.quad	0x3ff967d566cf41f2              # double 1.58785
	.quad	0x40145b780346dc5d              # double 5.0893249999999997
	.quad	0x3ffcdf19d66adb40              # double 1.804468
	.quad	0x400a5023e9ea1405              # double 3.2891309999999998
	.quad	0x3fde60e0eb67c287              # double 0.474663
	.quad	0x401cc16c1e364bec              # double 7.1888889999999996
	.quad	0x4010b57e23f24d90              # double 4.1772390000000001
	.quad	0x401cec3f811f4f51              # double 7.2307110000000003
	.quad	0x40152fda836eb4ea              # double 5.2967320000000004
	.quad	0x3fa98eda22f6a50d              # double 0.049917999999999997
	.quad	0x4007796a6a01259a              # double 2.934285
	.quad	0x4023eb7a3db3bfb6              # double 9.9599170000000008
	.quad	0x3ffeb5a74c09c3ce              # double 1.919349
	.quad	0x402021b003686a4d              # double 8.0657960000000006
	.quad	0x40227b267c6b8b69              # double 9.2405279999999994
	.quad	0x40002ed352220bc4              # double 2.0228640000000002
	.quad	0x40174a3875925354              # double 5.8224809999999998
	.quad	0x40035ff609dcf894              # double 2.421856
	.quad	0x401bae21d96e9bbf              # double 6.920051
	.quad	0x4015d0b242070b8d              # double 5.453805
	.quad	0x401a73f359ff4fd7              # double 6.6132330000000001
	.quad	0x400274d1e96c3fc4              # double 2.3070409999999999
	.quad	0x3fddbc83a96d4c34              # double 0.46463100000000002
	.quad	0x3fdf25918a009f62              # double 0.48666799999999999
	.quad	0x4002afaacd9e83e4              # double 2.3357749999999999
	.quad	0x3fbcc165907d9125              # double 0.112326
	.quad	0x3ffb317acc4ef88c              # double 1.6995800000000001
	.quad	0x40238ce22a2c2374              # double 9.7751629999999991
	.quad	0x400e119f7f8ca81a              # double 3.7586050000000002
	.quad	0x401edee7c49fd7a1              # double 7.7176809999999997
	.quad	0x401d04bd33d29564              # double 7.2546280000000003
	.quad	0x401bf475e6362a5e              # double 6.9887309999999996
	.quad	0x4016c5946c332f01              # double 5.6929489999999996
	.quad	0x400e67607c4199fe              # double 3.8004769999999999
	.quad	0x40232ba4723aafff              # double 9.5852389999999996
	.quad	0x401fc0ae9680e065              # double 7.9381659999999998
	.quad	0x402210da5daf07c0              # double 9.0329160000000001
	.quad	0x401a73f52fc2656b              # double 6.6132400000000002
	.quad	0x4003415336deb95e              # double 2.4068969999999998
	.quad	0x400806a4ca4f440b              # double 3.003244
	.quad	0x4002c8461f9f01b8              # double 2.3477899999999998
	.quad	0x4015698676a7264a              # double 5.3530519999999999
	.quad	0x400321719f7f8ca8              # double 2.39133
	.quad	0x400dc32a0663c750              # double 3.7202950000000001
	.quad	0x3ff2fd944aa53fc0              # double 1.186909
	.quad	0x402382f123c42a67              # double 9.7557460000000002
	.quad	0x3fd1832b990afe61              # double 0.27363100000000001
	.quad	0x401dbc1ebc83a96d              # double 7.4337109999999997
	.quad	0x40195e52157689ca              # double 6.3421099999999999
	.quad	0x401f39c0229a5ebb              # double 7.8063969999999995
	.quad	0x3ffb4023a6ce3583              # double 1.7031590000000001
	.quad	0x402379d30270f388              # double 9.7379379999999997
	.quad	0x401200adcd2d44dd              # double 4.5006630000000003
	.quad	0x400f47546d3f9e7c              # double 3.9098290000000002
	.quad	0x4010d5b4edb2f662              # double 4.2086980000000001
	.quad	0x401983afb7e90ff9              # double 6.3785999999999996
	.quad	0x40086d5065732160              # double 3.0533760000000001
	.quad	0x4011bc6540cc78ea              # double 4.43398
	.quad	0x40009becaab8a5ce              # double 2.0761349999999998
	.quad	0x402279613d31b9b6              # double 9.2370699999999992
	.quad	0x4004ceba27ae9ab3              # double 2.6009410000000002
	.quad	0x3ffbbd1782d38477              # double 1.733665
	.quad	0x401c8a8ac5c13fd1              # double 7.1352950000000002
	.quad	0x3ffa5276fb09203a              # double 1.645133
	.quad	0x40025dc1e7967caf              # double 2.2957800000000002
	.quad	0x401d013986338b48              # double 7.2511960000000002
	.quad	0x3fd4f811f4f50a03              # double 0.32764100000000002
	.quad	0x3fe88b04ab606b7b              # double 0.76697000000000004
	.quad	0x401d8dce39b456b4              # double 7.3884819999999998
	.quad	0x4021aa8f9f44d445              # double 8.8331269999999993
	.quad	0x400f1ee02a77a2cf              # double 3.8900760000000001
	.quad	0x402220130164840e              # double 9.0626449999999998
	.quad	0x40205a478854cdb8              # double 8.1763270000000006
	.quad	0x401f3f893faf4278              # double 7.8120469999999997
	.quad	0x401cb01b003686a5              # double 7.1719780000000002
	.quad	0x40022f6e82949a56              # double 2.2731599999999998
	.quad	0x3faabdc26dce39b4              # double 0.052228999999999998
	.quad	0x4015273929ed3954              # double 5.2883040000000001
	.quad	0x4005cd2999567dbb              # double 2.725177
	.quad	0x4020e797edc7ef17              # double 8.4523309999999992
	.quad	0x3fee1fa11a975afb              # double 0.941361
	.quad	0x400c44aa53fc0097              # double 3.533528
	.quad	0x40146039ef0f16f4              # double 5.0939709999999998
	.quad	0x3fdf0c996b7670a0              # double 0.48514400000000002
	.quad	0x400b3888f861a60d              # double 3.4026049999999999
	.quad	0x3ff2396bfca85cab              # double 1.139019
	.quad	0x4001c8ecd8dbcec8              # double 2.2231079999999999
	.quad	0x40200b02d59d55e7              # double 8.0215060000000005
	.quad	0x4014f7867f0aa21a              # double 5.2417239999999996
	.quad	0x402398225742dcf4              # double 9.7971369999999993
	.quad	0x4023b006d0d4994a              # double 9.8438020000000002
	.quad	0x40082a369fcf3dc0              # double 3.0206119999999999
	.quad	0x3fc9ae89eba6aca8              # double 0.20063900000000001
	.quad	0x400bb4256bca5376              # double 3.4629620000000001
	.quad	0x400060b6f9fcb0c0              # double 2.0472239999999999
	.quad	0x3ff75323fee2c98e              # double 1.4577979999999999
	.quad	0x401b1dcb5781c715              # double 6.779096
	.quad	0x3fe81756c93a7115              # double 0.75284899999999999
	.quad	0x3ff28e0008637bd0              # double 1.1596679999999999
	.quad	0x4022c056e696a26e              # double 9.3756629999999994
	.quad	0x400fcd92fb19e732              # double 3.9753780000000001
	.quad	0x40168b645a1cac08              # double 5.6361249999999998
	.quad	0x3ff842b302f72b45              # double 1.516284
	.quad	0x4023b2d2fe3f35a0              # double 9.8492660000000001
	.quad	0x4023a0ba40d90e24              # double 9.8139210000000005
	.quad	0x4016d5a8deb0fadf              # double 5.7086519999999998
	.quad	0x40204915592d98bf              # double 8.1427409999999991
	.quad	0x40229f6e6106ab15              # double 9.3113890000000001
	.quad	0x401649c66d373b00              # double 5.5720460000000003
	.quad	0x40233d1bf7ad4b27              # double 9.6193539999999995
	.quad	0x4012e931876188b1              # double 4.7277279999999999
	.quad	0x4018f63022dd7a9a              # double 6.240418
	.quad	0x40052961c36976bc              # double 2.6452059999999999
	.quad	0x40187bc98a222d51              # double 6.1208859999999996
	.quad	0x4020e3b23571d1d4              # double 8.4447189999999991
	.quad	0x401b717f84449dbf              # double 6.8608380000000002
	.quad	0x3fbfb7b6bb129025              # double 0.12389699999999999
	.quad	0x40190ca643cc07ab              # double 6.2623530000000001
	.quad	0x3ff6e46e08f21709              # double 1.430769
	.quad	0x3ffc67008a697aee              # double 1.775147
	.quad	0x3fd1f4a1272c94b4              # double 0.28055600000000003
	.quad	0x401f677ee4e26d48              # double 7.8510699999999999
	.quad	0x401c67c5ef62f9ca              # double 7.1013409999999997
	.quad	0x4011f8f29d40ee07              # double 4.4931130000000001
	.quad	0x4011b2d44dca8e2e              # double 4.4246379999999998
	.quad	0x40089b3d07c84b5e              # double 3.0758000000000001
	.quad	0x402231e7fb267c6c              # double 9.0974730000000008
	.quad	0x4016fb662fdfc19c              # double 5.7455069999999999
	.quad	0x4002e89e34330d74              # double 2.3635830000000002
	.quad	0x3fe1c940bbb1f256              # double 0.55581700000000001
	.quad	0x400f4be2f7b17ce5              # double 3.9120539999999999
	.quad	0x4018f4988094e5d6              # double 6.2388630000000003
	.quad	0x400c62d0e5604189              # double 3.5482499999999999
	.quad	0x3fc0e13f4a98aa86              # double 0.13187399999999999
	.quad	0x3ffa263736cdf267              # double 1.6343300000000001
	.quad	0x4010088377186552              # double 4.0083140000000004
	.quad	0x3fe01b93037d6302              # double 0.50336599999999998
	.quad	0x401dcc4e7253da73              # double 7.4495180000000003
	.quad	0x40036877681669cf              # double 2.4260090000000001
	.quad	0x40201e02a77a2ced              # double 8.0586140000000004
	.quad	0x401ddb50f40e5a36              # double 7.4641760000000001
	.quad	0x402121fc2a8869c6              # double 8.5663769999999992
	.quad	0x401f12f901083dbc              # double 7.7685279999999999
	.quad	0x3ff2e87d2c7b890d              # double 1.1817599999999999
	.quad	0x3ff585154866a11f              # double 1.344991
	.quad	0x40209ffe08aefb2b              # double 8.3124850000000006
	.quad	0x401e67f51efb6dca              # double 7.601521
	.quad	0x401c2e66cb10342b              # double 7.0453140000000003
	.quad	0x40201cbfb15b573f              # double 8.0561500000000006
	.quad	0x401165ff1d81f106              # double 4.3496059999999996
	.quad	0x4013d1deacc92147              # double 4.9549510000000003
	.quad	0x3fed040e1719f7f9              # double 0.90674500000000002
	.quad	0x400fcd6ba8c58687              # double 3.9753029999999998
	.quad	0x4013bb1dd5d3dc8c              # double 4.9327310000000004
	.quad	0x4012cd373affb04f              # double 4.7004060000000001
	.quad	0x400f96c58eeae9ee              # double 3.9486189999999999
	.quad	0x3ff92cca2db61bb0              # double 1.5734349999999999
	.quad	0x4000deb399f5dfec              # double 2.1087410000000002
	.quad	0x401b4fdc5931ca7d              # double 6.8279889999999996
	.quad	0x40015c5260f5e41d              # double 2.1700789999999999
	.quad	0x401ed6fd651b0ccc              # double 7.7099510000000002
	.quad	0x4001654cdb7ae579              # double 2.1744629999999998
	.quad	0x401895b89939218a              # double 6.1462120000000002
	.quad	0x400925f8d2e514c2              # double 3.1435409999999999
	.quad	0x4023d8374ff865d8              # double 9.9222970000000003
	.quad	0x3fdb82278d0cc35d              # double 0.42981900000000001
	.quad	0x3fdad7e889c1b542              # double 0.41942800000000002
	.quad	0x4009395f676ea423              # double 3.1530140000000002
	.quad	0x4012dac710cb295f              # double 4.7136500000000003
	.quad	0x3ff0096787ce95fb              # double 1.0022960000000001
	.quad	0x4022c6e653868fd2              # double 9.3884760000000007
	.quad	0x40165dd590c0ad04              # double 5.5916350000000001
	.quad	0x401b48cbd1244a62              # double 6.8210899999999999
	.quad	0x400f107a6bd6e8b0              # double 3.8830460000000002
	.quad	0x3fb49ba5e353f7cf              # double 0.080500000000000002
	.quad	0x401016ab14ec204f              # double 4.0221369999999999
	.quad	0x4017156473471f79              # double 5.7708909999999998
	.quad	0x40127deca25529fe              # double 4.622973
	.quad	0x401e3819d2391d58              # double 7.554786
	.quad	0x4001f878316a0557              # double 2.2463229999999998
	.quad	0x400760902de00d1b              # double 2.9221499999999998
	.quad	0x3ff2feb6bf444e0e              # double 1.1871860000000001
	.quad	0x4019fcd4ed2cbea5              # double 6.4969060000000001
	.quad	0x4014f4f50a02b841              # double 5.2392159999999999
	.quad	0x3ffe4d48882f0e0b              # double 1.8938680000000001
	.quad	0x4010d1f85d744f5d              # double 4.2050489999999998
	.quad	0x40187392189bd838              # double 6.1128619999999998
	.quad	0x401c931876188b11              # double 7.1436479999999998
	.quad	0x3fea05b9e8c47a18              # double 0.81319900000000001
	.quad	0x401772df0d413123              # double 5.8621790000000003
	.quad	0x40179fc19c17225b              # double 5.9060119999999996
	.quad	0x3ff890752da98677              # double 1.5352680000000001
	.quad	0x40153aeea63b688c              # double 5.3075510000000001
	.quad	0x4023e8dc981beb18              # double 9.9548079999999998
	.quad	0x3ffacf75536933a0              # double 1.6756489999999999
	.quad	0x40236942f61ed5ae              # double 9.7055889999999998
	.quad	0x3fef0be5109070fc              # double 0.970202
	.quad	0x4004b4de7ea5f84d              # double 2.5883150000000001
	.quad	0x401173c03bc4d22d              # double 4.3630380000000004
	.quad	0x401b63760bf5d788              # double 6.8471299999999999
	.quad	0x401b2404a72ead92              # double 6.7851739999999996
	.quad	0x401f1cb1465e8922              # double 7.7780199999999997
	.quad	0x3fea8e6299524bfd              # double 0.82988099999999998
	.quad	0x4018222f6a50d6b2              # double 6.0333839999999999
	.quad	0x401931d14e3bcd36              # double 6.2986500000000003
	.quad	0x400f1bb62413db7f              # double 3.888531
	.quad	0x3ff19ca8e2e2b8c7              # double 1.1007469999999999
	.quad	0x40239a433508f649              # double 9.8012940000000003
	.quad	0x3ff53ee2c98e53eb              # double 1.327853
	.quad	0x4014cb641700cd85              # double 5.1986239999999997
	.quad	0x4015f973d9ec7000              # double 5.4936059999999998
	.quad	0x401b15421c044285              # double 6.7707600000000001
	.quad	0x3ff3aa53fc0096ff              # double 1.2290840000000001
	.quad	0x4021ce596c82e01a              # double 8.9030260000000006
	.quad	0x401aa57470eb24a7              # double 6.6615770000000003
	.quad	0x4013550c1b97353b              # double 4.8330539999999997
	.quad	0x401d684ad794a6ec              # double 7.3518480000000004
	.quad	0x401a8ba7fc32ebe6              # double 6.6363830000000004
	.quad	0x4016d6cca2db61bb              # double 5.709765
	.quad	0x40200ed17c5ef630              # double 8.0289420000000007
	.quad	0x4023dbe7afa72218              # double 9.9295019999999993
	.quad	0x402297325918a00a              # double 9.2953060000000001
	.quad	0x4020f92f6e82949a              # double 8.4866899999999994
	.quad	0x40220b72c5197a25              # double 9.0223600000000008
	.quad	0x40204f60e0eb67c3              # double 8.1550360000000008
	.quad	0x40224d9a95421c04              # double 9.1515699999999995
	.quad	0x4017af3300de4c51              # double 5.9210929999999999
	.quad	0x4016fc34c1a8ac5c              # double 5.7462949999999999
	.quad	0x401a3b2cc70867ae              # double 6.5577880000000004
	.quad	0x40149418d6909aed              # double 5.1446259999999997
	.quad	0x4022d6b80ecfa69c              # double 9.4193730000000002
	.quad	0x401d5afa2f05a709              # double 7.3388450000000001
	.quad	0x40102d3e4ef0281c              # double 4.0441830000000003
	.quad	0x401c8b139c94f69d              # double 7.1358170000000003
	.quad	0x3fe98fa7a85015c2              # double 0.798786
	.quad	0x400734d1e96c3fc4              # double 2.9007909999999999
	.quad	0x400e767ba237cdcd              # double 3.8078530000000002
	.quad	0x4010adb6a1e81cb4              # double 4.1696419999999996
	.quad	0x4022b9cf7878b7a2              # double 9.3629110000000004
	.quad	0x4020d80baa582dbe              # double 8.4219639999999991
	.quad	0x400bab60f1b25f63              # double 3.4586809999999999
	.quad	0x40228fe9d94d0dd0              # double 9.2810810000000004
	.quad	0x4023a6a4a8c154ca              # double 9.8254750000000008
	.quad	0x3ff4851eb851eb85              # double 1.2825
	.quad	0x3fe831ca7d6733ec              # double 0.75607800000000002
	.quad	0x40088678c0053e2d              # double 3.0656599999999998
	.quad	0x4011b2d77318fc50              # double 4.4246499999999997
	.quad	0x3ffce9f4906034f4              # double 1.807118
	.quad	0x4000430446b69db6              # double 2.0327229999999998
	.quad	0x401dc39192641b33              # double 7.4409850000000004
	.quad	0x4004cdca8e2e2b8c              # double 2.6004839999999998
	.quad	0x4008c8509bf9c62a              # double 3.09781
	.quad	0x401b3d4aa10e0221              # double 6.8098549999999998
	.quad	0x3ff10bb2bba98eda              # double 1.065356
	.quad	0x4013074d9c6b0532              # double 4.7571320000000004
	.quad	0x4007245996744b2b              # double 2.8927489999999998
	.quad	0x40232c028e4fb97c              # double 9.5859570000000005
	.quad	0x4001fc853c148345              # double 2.2483010000000001
	.quad	0x40227344c37e6f72              # double 9.2251340000000006
	.quad	0x3fe5a15fcc1871e7              # double 0.67594900000000002
	.quad	0x40228c0f01fb82c3              # double 9.2735520000000005
	.quad	0x4010e0e560418937              # double 4.2196249999999997
	.quad	0x3fdff6273929ed39              # double 0.49939899999999998
	.quad	0x402268a2014727dd              # double 9.2043610000000005
	.quad	0x401c897e132b55ef              # double 7.1342699999999999
	.quad	0x401f83fb3743632c              # double 7.8788879999999999
	.quad	0x4012499e94ab1d50              # double 4.5718940000000003
	.quad	0x401a830a4e379b78              # double 6.6279690000000002
	.quad	0x4023392f6e82949a              # double 9.6116899999999994
	.quad	0x400cf61cbccf28c8              # double 3.6201720000000002
	.quad	0x40109a1fd1569f49              # double 4.150512
	.quad	0x40199e0daa0cae64              # double 6.4043489999999998
	.quad	0x401b26634117f844              # double 6.7874879999999997
	.quad	0x3fe384b1ab0856e7              # double 0.60994800000000005
	.quad	0x3ff489fc6da44849              # double 1.2836879999999999
	.quad	0x400038c5c9a34ca1              # double 2.0277210000000001
	.quad	0x4010c8676a7264a1              # double 4.1957069999999996
	.quad	0x4020606c00da1a93              # double 8.1883239999999997
	.quad	0x3ff0841355475a32              # double 1.0322450000000001
	.quad	0x3ff3a1a8262456f7              # double 1.2269669999999999
	.quad	0x400d7f7f06705c89              # double 3.6872539999999998
	.quad	0x40139f2495e17e35              # double 4.9054130000000002
	.quad	0x401ce04ab606b7aa              # double 7.2190349999999999
	.quad	0x3ffa79ca5bd944aa              # double 1.6547339999999999
	.quad	0x401b535dedf1e083              # double 6.8314130000000004
	.quad	0x3ffd9ca07f66e86c              # double 1.8507389999999999
	.quad	0x401e4225b749adc9              # double 7.564597
	.quad	0x4022a7021d10b1ff              # double 9.3261880000000001
	.quad	0x4015d3897204295a              # double 5.4565789999999996
	.quad	0x400ced56b00ffda4              # double 3.615888
	.quad	0x401a80f51ac9afe2              # double 6.6259350000000001
	.quad	0x400650f5a1016ce8              # double 2.7895310000000002
	.quad	0x4009fd7774aba387              # double 3.2487629999999998
	.quad	0x40236ebd6e8af816              # double 9.7162889999999997
	.quad	0x40137b862b27cbf7              # double 4.8706290000000001
	.quad	0x4003ed7f0ed3d85a              # double 2.4909650000000001
	.quad	0x401dfd0bb6ed6777              # double 7.4971149999999999
	.quad	0x401d402b40f66a55              # double 7.312665
	.quad	0x400a04cc6822ff09              # double 3.2523430000000002
	.quad	0x402033a322af5771              # double 8.100854
	.quad	0x401d66fc58ab92c0              # double 7.3505719999999997
	.quad	0x3ff33862b27cbf6e              # double 1.2012659999999999
	.quad	0x3fcb4ba51a005c46              # double 0.21324599999999999
	.quad	0x40194c2374794ea0              # double 6.3243539999999996
	.quad	0x3fe3009b30728e93              # double 0.59382400000000002
	.quad	0x4020650e991ff716              # double 8.1973769999999995
	.quad	0x40004d22424a276b              # double 2.0376629999999998
	.quad	0x4020512b3cc4ac6d              # double 8.1585330000000003
	.quad	0x40104cac8e68e3ef              # double 4.0748769999999999
	.quad	0x400474f26aec0725              # double 2.5571030000000001
	.quad	0x3fee02ff8ec0f883              # double 0.93786599999999998
	.quad	0x3fea07b352a84381              # double 0.81344000000000005
	.quad	0x3fb35a5332acfb76              # double 0.075596999999999998
	.quad	0x400491f14983d790              # double 2.5712609999999998
	.quad	0x401c5c58255b035c              # double 7.0901800000000001
	.quad	0x400de6e5471715c6              # double 3.7377419999999999
	.quad	0x4003eeb463497b74              # double 2.491555
	.quad	0x401bbd7ba6698bb5              # double 6.9350420000000002
	.quad	0x3f92d1287c200c0f              # double 0.018376
	.quad	0x40223d56084a515d              # double 9.1197970000000002
	.quad	0x40212a178f68be2f              # double 8.5822109999999991
	.quad	0x400f6ecfa69be09c              # double 3.9291070000000001
	.quad	0x3fd60cb295e9e1b1              # double 0.34452500000000003
	.quad	0x3fea03254e6e221d              # double 0.81288400000000005
	.quad	0x4020dbc01a36e2eb              # double 8.4291999999999998
	.quad	0x401bbbd1aa821f2a              # double 6.9334170000000004
	.quad	0x4022ab95810624dd              # double 9.3351249999999997
	.quad	0x4020f9ec0b567558              # double 8.4881290000000007
	.quad	0x4011cde2ef4e0115              # double 4.4510610000000002
	.quad	0x400e5d377e1b8ed2              # double 3.7955160000000001
	.quad	0x4023d76922d948dc              # double 9.9207239999999998
	.quad	0x3ff56656abde3fbc              # double 1.337485
	.quad	0x400e632ebe596c83              # double 3.7984290000000001
	.quad	0x4019a9d451fc4c16              # double 6.4158489999999997
	.quad	0x3fdf4c3c18b502ac              # double 0.48902800000000002
	.quad	0x4022e5b4245f5ad9              # double 9.4486399999999992
	.quad	0x401769531550ca1d              # double 5.8528560000000001
	.quad	0x40239fcbf6e3f78c              # double 9.8121030000000004
	.quad	0x40199456b441bb8c              # double 6.3948619999999998
	.quad	0x4014769057d1782d              # double 5.1157849999999998
	.quad	0x4012fb228dc981bf              # double 4.7452490000000003
	.quad	0x3ffff682730c6717              # double 1.9976830000000001
	.quad	0x400e69bae46cfc83              # double 3.8016260000000002
	.quad	0x4021c9c560c7c0f4              # double 8.8940839999999994
	.quad	0x3ff237ccc0379314              # double 1.1386229999999999
	.quad	0x401cfccaf709b739              # double 7.2468680000000001
	.quad	0x400f74d0dcfcc5b9              # double 3.9320390000000001
	.quad	0x4021a8fa376922d9              # double 8.8300339999999995
	.quad	0x40201e889c1b5419              # double 8.0596359999999994
	.quad	0x402132671ef30a4e              # double 8.5984429999999996
	.quad	0x401d28a8f3a9b068              # double 7.2897069999999999
	.quad	0x3fe86924f227d029              # double 0.76283500000000004
	.quad	0x4015149e44fa0514              # double 5.2701349999999998
	.quad	0x4017f51f81a5870e              # double 5.9893780000000003
	.quad	0x401a41d8a5482385              # double 6.5643029999999998
	.quad	0x40181d8e0008637c              # double 6.0288620000000002
	.quad	0x4012a98244e93e1d              # double 4.6655360000000003
	.quad	0x402242706d506573              # double 9.1297639999999998
	.quad	0x3fff1bd2fa0d77b8              # double 1.944293
	.quad	0x400e5252ce032db2              # double 3.790197
	.quad	0x40061da836eb4e98              # double 2.764481
	.quad	0x4023ad84d338f798              # double 9.8389039999999994
	.quad	0x3ff8cb3e5753a3ec              # double 1.54962
	.quad	0x401e11dfb9389b52              # double 7.517455
	.quad	0x402117e02645e4e7              # double 8.5466320000000007
	.quad	0x4022bde54b48d3ae              # double 9.3708899999999993
	.quad	0x3fccfc69728a6117              # double 0.22645299999999999
	.quad	0x40052c48adeebb34              # double 2.6466229999999999
	.quad	0x401a044c7b02d59d              # double 6.5041979999999997
	.quad	0x3ff738800eae18ad              # double 1.4512940000000001
	.quad	0x3ff9e16e7a311e86              # double 1.617537
	.quad	0x401ed3f2d3c792d1              # double 7.7069809999999998
	.quad	0x4018e75147f13059              # double 6.2258959999999997
	.quad	0x4017120642396074              # double 5.7676020000000001
	.quad	0x3fccd38cda6e75ff              # double 0.22520599999999999
	.quad	0x3fe0461d8622c450              # double 0.50855899999999998
	.quad	0x3ff82fec56d5cfab              # double 1.5117
	.quad	0x402128a47ecfe9b8              # double 8.5793800000000005
	.quad	0x402367980f55de59              # double 9.7023320000000001
	.quad	0x3fe4e7924af0bf1a              # double 0.65326799999999996
	.quad	0x3fc24e93e1c9b414              # double 0.14302300000000001
	.quad	0x3ffa7102363b2570              # double 1.65259
	.quad	0x3fd6a9973d9ec700              # double 0.354101
	.quad	0x401005dbfceb7889              # double 4.0057219999999996
	.quad	0x4020dd64302b40f6              # double 8.4324049999999993
	.quad	0x400bf168f8e7ddca              # double 3.4928759999999999
	.quad	0x40203649d388a8b1              # double 8.1060320000000008
	.quad	0x40115183b60285ec              # double 4.3296039999999998
	.quad	0x401f287f88765ba7              # double 7.789549
	.quad	0x4023dbe0bd44998d              # double 9.9294489999999999
	.quad	0x401277a4a48f96e1              # double 4.6168389999999997
	.quad	0x401171f1cfbb9496              # double 4.3612739999999999
	.quad	0x3ff66cde19fc2a88              # double 1.4015789999999999
	.quad	0x3ffca1016ce789e7              # double 1.7893079999999999
	.quad	0x4010351efb6dca08              # double 4.051876
	.quad	0x4023b542e557de0d              # double 9.8540259999999992
	.quad	0x3fe3a4acf312b1b3              # double 0.61385199999999995
	.quad	0x4002a568a50507a7              # double 2.3307660000000001
	.quad	0x4022f60e51d25aab              # double 9.4805779999999995
	.quad	0x40236fbc7f77af64              # double 9.7182349999999999
	.quad	0x4020fe98fe69270b              # double 8.497261
	.quad	0x4008be596c82e01a              # double 3.0929440000000001
	.quad	0x4021a3ef284167a9              # double 8.8201839999999994
	.quad	0x40165036c9c0a8d2              # double 5.5783339999999999
	.quad	0x40135c8b0079a283              # double 4.8403739999999997
	.quad	0x4022ccbbc2b94d94              # double 9.3998699999999999
	.quad	0x40184014b599aa61              # double 6.0625790000000004
	.quad	0x40228bf5b5fa2270              # double 9.2733589999999992
	.quad	0x4004f65ecc3e3194              # double 2.620298
	.quad	0x401e2f55de58e64b              # double 7.5462259999999998
	.quad	0x4020bfef5a964e8b              # double 8.3748729999999991
	.quad	0x3ff904a83b1d0c80              # double 1.5636369999999999
	.quad	0x4023fbd70a3d70a4              # double 9.9918750000000002
	.quad	0x3fc57e56473471f8              # double 0.16791800000000001
	.quad	0x400c49c6f36ef805              # double 3.5360239999999998
	.quad	0x40017432873bc904              # double 2.181737
	.quad	0x402285d6bebe1651              # double 9.2614040000000006
	.quad	0x40160e892253111f              # double 5.514195
	.quad	0x4022f17bfa4c61d8              # double 9.4716489999999993
	.quad	0x40218ba3443d46b2              # double 8.7727299999999993
	.quad	0x3fe2d3bd1676640a              # double 0.58834699999999995
	.quad	0x40056728e92d55a4              # double 2.6753710000000002
	.quad	0x4010d9c7ffde7211              # double 4.2126770000000002
	.quad	0x400de5da6a444178              # double 3.7372329999999998
	.quad	0x4017d2784a9478c8              # double 5.9555369999999996
	.quad	0x4023782cb20fb225              # double 9.7347160000000005
	.quad	0x4013acb4289118c2              # double 4.9186560000000004
	.quad	0x3ff94b30b5aa7158              # double 1.580857
	.quad	0x4022907bbb62413e              # double 9.2821940000000005
	.quad	0x401ef28e92d55a3a              # double 7.736872
	.quad	0x4000bfe4bcad9ad8              # double 2.0936979999999998
	.quad	0x4023ffcc9ea9a3d3              # double 9.9996080000000002
	.quad	0x40013c01a36e2eb2              # double 2.1543000000000001
	.quad	0x40146e25c810a56a              # double 5.1075660000000003
	.quad	0x3fd0f3eccc469510              # double 0.26488800000000001
	.quad	0x401a6a3ca7503b82              # double 6.6037470000000003
	.quad	0x4007fe33acd5b680              # double 2.9991219999999998
	.quad	0x4019346aa087ca64              # double 6.3011879999999998
	.quad	0x401a2ee3d5fdcdf7              # double 6.5457910000000004
	.quad	0x401c49abf3387161              # double 7.0719450000000004
	.quad	0x40230c7b24638c97              # double 9.5243769999999994
	.quad	0x40033c0b13597918              # double 2.404318
	.quad	0x3ff6b3de1e2de871              # double 1.4189130000000001
	.quad	0x4010bb73d188f430              # double 4.1830590000000001
	.quad	0x4021d9676640a6b9              # double 8.9246169999999996
	.quad	0x3fd235eb7457c0b1              # double 0.28454099999999999
	.quad	0x40231da6e75ff60a              # double 9.5579140000000002
	.quad	0x4015b58afc47e49b              # double 5.4272879999999999
	.quad	0x3ff1d7fb69984a0e              # double 1.1152299999999999
	.quad	0x4015c5657fb69985              # double 5.4427700000000003
	.quad	0x400f1f3ade225fa6              # double 3.8902489999999998
	.quad	0x3ff0fda1ec4e7254              # double 1.061922
	.quad	0x4011915ca6ca03c5              # double 4.3919550000000003
	.quad	0x3fd1a708ede54b49              # double 0.27582000000000001
	.quad	0x401fc9b90ea9e6ef              # double 7.9469950000000002
	.quad	0x4023855dc4007571              # double 9.7604810000000004
	.quad	0x40181232d2bb2357              # double 6.0177719999999999
	.quad	0x401bdbd8383ad9f1              # double 6.9646920000000003
	.quad	0x40205be09bb6aa4c              # double 8.1794480000000007
	.quad	0x4002e23422467be5              # double 2.3604509999999999
	.quad	0x400f5d5885d31338              # double 3.920579
	.quad	0x3fef31b9b66f9336              # double 0.97482000000000002
	.quad	0x401b7fc2eba27aea              # double 6.8747670000000003
	.quad	0x4015939abf338716              # double 5.394145
	.quad	0x40060f41f212d773              # double 2.75745
	.quad	0x401944fa05143bf7              # double 6.3173599999999999
	.quad	0x3ffbc739b024f65a              # double 1.7361390000000001
	.quad	0x402055af4adbc665              # double 8.1673530000000003
	.quad	0x401a8151e75360d0              # double 6.6262889999999999
	.quad	0x4022b81c0ca600b0              # double 9.3595889999999997
	.quad	0x402227ce746cb967              # double 9.0777470000000005
	.quad	0x40072d2a1f8e3ac1              # double 2.8970530000000001
	.quad	0x4015a553ef6b5d46              # double 5.4114529999999998
	.quad	0x4011358255b035bd              # double 4.3022549999999997
	.quad	0x3fdf43632c1f42bb              # double 0.48848799999999998
	.quad	0x40188a4ebdd334c6              # double 6.1350660000000001
	.quad	0x401de695d91ab8e9              # double 7.4751810000000001
	.quad	0x401839207d4e0978              # double 6.0557879999999997
	.quad	0x4022e8e432441feb              # double 9.4548660000000008
	.quad	0x401eeef4e0114d2f              # double 7.7333559999999996
	.quad	0x4023ac14e7ee9143              # double 9.8360970000000005
	.quad	0x4021c5f9df548ece              # double 8.8866720000000008
	.quad	0x40203bd145d85165              # double 8.1168309999999995
	.quad	0x4022a9d2bf551505              # double 9.3316859999999995
	.quad	0x402134c016052503              # double 8.6030280000000001
	.quad	0x401f9396073de1e3              # double 7.8941270000000001
	.quad	0x4021a310129cbab6              # double 8.8184819999999995
	.quad	0x401ab004b7f5a533              # double 6.6718929999999999
	.quad	0x4022cc32ebe596c8              # double 9.3988259999999996
	.quad	0x401967c243dccea3              # double 6.3513270000000004
	.quad	0x401cc3f20a73f749              # double 7.1913530000000003
	.quad	0x3fc430121682f944              # double 0.157717
	.quad	0x40201f17df19d66b              # double 8.0607290000000003
	.quad	0x401563dd97f62b6b              # double 5.3475250000000001
	.quad	0x400de78290689870              # double 3.7380420000000001
	.quad	0x4021bc8f96e15875              # double 8.8682829999999999
	.quad	0x401435e5aff2a173              # double 5.0526340000000003
	.quad	0x4022d4c8de2ac322              # double 9.4155949999999997
	.quad	0x4002c36a832b990b              # double 2.345418
	.quad	0x3fffb991bc558644              # double 1.9828049999999999
	.quad	0x401f731876188b11              # double 7.8623979999999997
	.quad	0x40209438d1d8a548              # double 8.2894959999999998
	.quad	0x400261cf7878b7a2              # double 2.2977590000000001
	.quad	0x401ed8ebcc6c54bd              # double 7.711837
	.quad	0x401f72f944241c3f              # double 7.862279
	.quad	0x4010e8ea7ce0fc2f              # double 4.2274570000000002
	.quad	0x401829ff4fd6d7e9              # double 6.0410130000000004
	.quad	0x402137d6b65a9a80              # double 8.6090599999999995
	.quad	0x401bd8b47c73eee5              # double 6.9616259999999999
	.quad	0x4008034fc610f0e9              # double 3.001617
	.quad	0x4021ee6afcce1c58              # double 8.9656599999999997
	.quad	0x400c3eaab042528b              # double 3.530599
	.quad	0x40086e23af31b153              # double 3.053779
	.quad	0x40096e9ab29e4d5e              # double 3.1790060000000002
	.quad	0x40176ecd8dbcec85              # double 5.858206
	.quad	0x4002e3f3e0370cdd              # double 2.3613050000000002
	.quad	0x40140e9d94d0dcfd              # double 5.0142730000000002
	.quad	0x402396a400fba882              # double 9.7942199999999993
	.quad	0x40015894812be48a              # double 2.1682519999999998
	.quad	0x3fa6c5b078d92fb2              # double 0.044477000000000003
	.quad	0x3ffbdb866e43aa7a              # double 1.7410950000000001
	.quad	0x3fe7b3764f11b60b              # double 0.74065700000000001
	.quad	0x4013ea25529fe005              # double 4.9786580000000002
	.quad	0x40108e7b80a9de8b              # double 4.1391429999999998
	.quad	0x4017eb20fb224aae              # double 5.9796180000000003
	.quad	0x400ad3354c12274a              # double 3.353129
	.quad	0x402064fa26a22b39              # double 8.1972210000000008
	.quad	0x3fc6e264e48626f6              # double 0.178784
	.quad	0x401eab48909289db              # double 7.6672690000000001
	.quad	0x40234c0b9991361e              # double 9.6485260000000004
	.quad	0x3ff8b9dd3bafd977              # double 1.545377
	.quad	0x4002439713ad5bee              # double 2.2830029999999999
	.quad	0x401e49d99029ae4f              # double 7.5721189999999998
	.quad	0x3ff9ad6238da3c21              # double 1.60483
	.quad	0x40219920e1f7d73d              # double 8.7990790000000008
	.quad	0x400e4353f7ced917              # double 3.7828750000000002
	.quad	0x40171b6e503fb374              # double 5.7767879999999998
	.quad	0x4008d0c23fab10ba              # double 3.1019329999999998
	.quad	0x40112dfb0d51f81a              # double 4.2949029999999997
	.quad	0x3feb3a16e7a311e8              # double 0.85084099999999996
	.quad	0x40202bcddd6e04c0              # double 8.0855549999999994
	.quad	0x400dd733226c3b92              # double 3.7300779999999998
	.quad	0x3fe6586ec17ebaf1              # double 0.698295
	.quad	0x400f759ff4fd6d7f              # double 3.9324340000000002
	.quad	0x40102d4f9c1f85d7              # double 4.0442489999999998
	.quad	0x40151983d790752e              # double 5.2749170000000003
	.quad	0x4021e5019f3c70ca              # double 8.9472780000000007
	.quad	0x401a10780fdc1616              # double 6.5160830000000001
	.quad	0x4004161e4f765fd9              # double 2.5108000000000001
	.quad	0x4021c9813879c411              # double 8.8935639999999996
	.quad	0x3f85a7d24180d3d0              # double 0.010574
	.quad	0x4021cc2e9899bf59              # double 8.8987929999999995
	.quad	0x3fd4b3aeee957471              # double 0.323467
	.quad	0x40020fef7c243dcd              # double 2.257781
	.quad	0x4011c18d6909aed5              # double 4.4390159999999996
	.quad	0x4011b0b0f27bb2ff              # double 4.4225500000000002
	.quad	0x401f24e831ad2136              # double 7.7860420000000001
	.quad	0x401104f765fd8adb              # double 4.2548500000000002
	.quad	0x401c7d477bbf93ff              # double 7.1223429999999999
	.quad	0x3ff78ba6266fd652              # double 1.4715940000000001
	.quad	0x4013f9ce4a7b4e55              # double 4.993951
	.quad	0x40215520d130df9c              # double 8.6662660000000002
	.quad	0x4010088ce703afb8              # double 4.0083500000000001
	.quad	0x400c3cd0bb6ed677              # double 3.5296949999999998
	.quad	0x40224450268900c5              # double 9.1334239999999998
	.quad	0x40237187c6327ed8              # double 9.7217389999999994
	.quad	0x400925058dde7a74              # double 3.1430769999999999
	.quad	0x4003631832fcac8e              # double 2.4233859999999998
	.quad	0x40238ec460ed80a1              # double 9.7788419999999991
	.quad	0x4021674c8ffb8b26              # double 8.7017559999999996
	.quad	0x40212a771c970f7c              # double 8.5829400000000006
	.quad	0x400a805f6ba0620b              # double 3.3126820000000001
	.quad	0x4022c43d03968d76              # double 9.3832780000000007
	.quad	0x4000a4c9c90c4dec              # double 2.080463
	.quad	0x401d58ca8198f1d4              # double 7.3367100000000001
	.quad	0x400eedf612407464              # double 3.8661919999999999
	.quad	0x40016c6a3bddfca0              # double 2.177937
	.quad	0x3ffadf7f8ca8198f              # double 1.679565
	.quad	0x3fe07f51efb6dca0              # double 0.51554199999999994
	.quad	0x400845100a393ee6              # double 3.033722
	.quad	0x40109406c00da1a9              # double 4.1445569999999998
	.quad	0x40196167a95c853c              # double 6.3451219999999999
	.quad	0x400043e7d135115a              # double 2.0331570000000001
	.quad	0x4010c3964a59c066              # double 4.1910030000000003
	.quad	0x3ff14fdd22856606              # double 1.081998
	.quad	0x3ffbb71001d5c316              # double 1.7321930000000001
	.quad	0x3fdaa1c25d074214              # double 0.41612300000000002
	.quad	0x400cae7d566cf41f              # double 3.5851999999999999
	.quad	0x3ffb5e15ca6ca03c              # double 1.7104699999999999
	.quad	0x4003d1ac14c660a2              # double 2.477379
	.quad	0x401a9e978d4fdf3b              # double 6.6548749999999997
	.quad	0x4009c5f30e7ff584              # double 3.2216550000000002
	.quad	0x402263daf8df7a4e              # double 9.1950299999999991
	.quad	0x4022bdf37329c348              # double 9.3709980000000001
	.quad	0x3fb9f6a93f290abb              # double 0.10142
	.quad	0x4011e128bf3bea92              # double 4.4698820000000001
	.quad	0x4017a4628027d88c              # double 5.9105319999999999
	.quad	0x3fe3fcfa26a22b39              # double 0.62463100000000005
	.quad	0x40159b9bed30f063              # double 5.4019620000000002
	.quad	0x40212574b407032a              # double 8.5731560000000009
	.quad	0x3ffcdd1c3ac929aa              # double 1.803982
	.quad	0x400c6fca42aed139              # double 3.5545849999999999
	.quad	0x40008a0dbad3a605              # double 2.0674090000000001
	.quad	0x400038298cc14403              # double 2.0274230000000002
	.quad	0x401ab35ac8a37260              # double 6.6751509999999996
	.quad	0x4022fbe2b4959e62              # double 9.4919639999999994
	.quad	0x3ffd405d52c16df4              # double 1.828214
	.quad	0x402146af038e29fa              # double 8.6380540000000003
	.quad	0x400d1dc37a3db3c0              # double 3.6395330000000001
	.quad	0x4015fdeefe4ffc98              # double 5.4979820000000004
	.quad	0x4011755043e5321e              # double 4.3645639999999997
	.quad	0x401c9aa21a719b4e              # double 7.1510090000000002
	.quad	0x401d576188b1140a              # double 7.3353330000000003
	.quad	0x402065b8dc55000d              # double 8.1986760000000007
	.quad	0x401cf1c4b90214ad              # double 7.2361019999999998
	.quad	0x401b86b723ee1bd2              # double 6.8815580000000001
	.quad	0x40026fecdd0d8cb0              # double 2.3046509999999998
	.quad	0x401ccfeac42e989a              # double 7.2030440000000002
	.quad	0x40169af922962cfe              # double 5.6513410000000004
	.quad	0x40078e568a50507a              # double 2.9445009999999998
	.quad	0x3fee8d2a1f8e3ac1              # double 0.95473200000000003
	.quad	0x402158d8cb07d0af              # double 8.6735290000000003
	.quad	0x40222c5c9a34ca0c              # double 9.0866439999999997
	.quad	0x3fc4b46bacf74470              # double 0.16175600000000001
	.quad	0x4022752220bc382a              # double 9.2287759999999999
	.quad	0x401f98d32830a0b2              # double 7.8992430000000002
	.quad	0x3ff82f2e8c0485a1              # double 1.5115190000000001
	.quad	0x400d14d940789614              # double 3.6351800000000001
	.quad	0x401b155a3a08398a              # double 6.7708519999999996
	.quad	0x40172117720c8cd6              # double 5.7823159999999998
	.quad	0x401fd38b8ae31d71              # double 7.9565869999999998
	.quad	0x4003780fdc1615ec              # double 2.433624
	.quad	0x400715bd512ec6bd              # double 2.885615
	.quad	0x400464bec679cc75              # double 2.5491920000000001
	.quad	0x40032e4ead0c3d25              # double 2.3976109999999999
	.quad	0x400e641355475a32              # double 3.7988650000000002
	.quad	0x40221a5b317efe0d              # double 9.0514770000000002
	.quad	0x3fe31693c03bc4d2              # double 0.59650599999999998
	.quad	0x40238f440af1cb8a              # double 9.7798160000000003
	.quad	0x4017555582129457              # double 5.8333339999999998
	.quad	0x4022ca137f38c543              # double 9.3946799999999992
	.quad	0x40213fd41743e964              # double 8.6246650000000002
	.quad	0x400be66559f6ec5b              # double 3.487498
	.quad	0x401b6bf8b9baa151              # double 6.8554409999999999
	.quad	0x400f858e64b23140              # double 3.940213
	.quad	0x4003669835158b82              # double 2.4250949999999998
	.quad	0x400181d7dbf487fd              # double 2.1884000000000001
	.quad	0x401f7eaa6d267408              # double 7.8736969999999999
	.quad	0x4016b06dd69d3027              # double 5.6722939999999999
	.quad	0x4013c767d34df04e              # double 4.9447320000000001
	.quad	0x4014aa3a8e71476b              # double 5.166239
	.quad	0x3ffdf455a7d24181              # double 1.872152
	.quad	0x400a7728a6117721              # double 3.3081830000000001
	.quad	0x401acc93a7115161              # double 6.6997819999999999
	.quad	0x40223f3e681a9b8d              # double 9.1235230000000005
	.quad	0x400777d8cf398e97              # double 2.933519
	.quad	0x4019b95bff04577e              # double 6.4310150000000004
	.quad	0x401fe18116ebd4d0              # double 7.9702190000000002
	.quad	0x3fd1b994e1a3f466              # double 0.27695199999999998
	.quad	0x4015ee536501e258              # double 5.4827399999999997
	.quad	0x401231715c63ae25              # double 4.5482839999999998
	.quad	0x4021c4636b096356              # double 8.8835709999999999
	.quad	0x40217a0c6b484d77              # double 8.7383760000000006
	.quad	0x40213441dd1a21ea              # double 8.6020649999999996
	.quad	0x401bd4ca4f440af2              # double 6.9578030000000002
	.quad	0x40169084a515ce9e              # double 5.6411309999999997
	.quad	0x4022d55219a847b2              # double 9.4166419999999995
	.quad	0x401d0ba40d90e23b              # double 7.261368
	.quad	0x3ff4670c1333b96b              # double 1.275158
	.quad	0x4019e1e53a81dc0e              # double 6.4706010000000003
	.quad	0x401d439b8887229f              # double 7.3160230000000004
	.quad	0x401437ca643cc07b              # double 5.0544830000000003
	.quad	0x400136cb5350092d              # double 2.1517550000000001
	.quad	0x3ff662dd7a99fa12              # double 1.3991370000000001
	.quad	0x3fa2ee631f8a0903              # double 0.036975000000000001
	.quad	0x401d14f0d844d014              # double 7.2704500000000003
	.quad	0x4023556a7ac81d3b              # double 9.6668280000000006
	.quad	0x4012bd67ba237cdd              # double 4.6849660000000002
	.quad	0x401c8fdcdf698783              # double 7.1404909999999999
	.quad	0x4023449235f80991              # double 9.6339279999999991
	.quad	0x4023ed4562e09fe8              # double 9.9634199999999992
	.quad	0x400ab5a294141e9b              # double 3.338689
	.quad	0x401f901d5c31593e              # double 7.8907369999999997
	.quad	0x4021acb5350092cd              # double 8.8373200000000001
	.quad	0x4014dd71b0468449              # double 5.2162540000000002
	.quad	0x400c970691ea78af              # double 3.5737429999999999
	.quad	0x4002ad801b435265              # double 2.3347169999999999
	.quad	0x4015e30b178b3700              # double 5.4717219999999998
	.quad	0x3ff428c586876e1e              # double 1.259954
	.quad	0x4023d809f623076c              # double 9.9219509999999999
	.quad	0x40190e93e1c9b414              # double 6.2642360000000004
	.quad	0x401a5e536501e258              # double 6.5921149999999997
	.quad	0x40091316e3715400              # double 3.1343209999999999
	.quad	0x40213f202107b784              # double 8.6232919999999992
	.quad	0x4021ff07bfe7e1fc              # double 8.9981059999999999
	.quad	0x4001c4db163baba8              # double 2.2211210000000001
	.quad	0x4010117c1bda511a              # double 4.0170750000000002
	.quad	0x3fff2b81f969e3c9              # double 1.9481219999999999
	.quad	0x40234e542e557de1              # double 9.6529860000000002
	.quad	0x4015d695d91ab8e9              # double 5.4595560000000001
	.quad	0x3ff920ea5b530ced              # double 1.5705359999999999
	.quad	0x4005d29dc725c3df              # double 2.72784
	.quad	0x401ad0902de00d1b              # double 6.7036749999999996
	.quad	0x3ff813dfb0d51f82              # double 1.5048520000000001
	.quad	0x3fdfb124d099e0e7              # double 0.49518699999999999
	.quad	0x3ff85fa11a975afb              # double 1.523347
	.quad	0x40101c66d373affb              # double 4.027736
	.quad	0x4015b0895d0b73d2              # double 5.4223990000000004
	.quad	0x4016e5a1016ce78a              # double 5.7242470000000001
	.quad	0x402090713f077ccc              # double 8.2821139999999999
	.quad	0x4000ea2339c0ebee              # double 2.114325
	.quad	0x40144f3f961804da              # double 5.0773910000000004
	.quad	0x40236247a9e2bcf9              # double 9.6919529999999998
	.quad	0x401f988a47ecfe9b              # double 7.8989649999999995
	.quad	0x4013be978d4fdf3b              # double 4.9361249999999997
	.quad	0x4018796249a133c2              # double 6.1185390000000002
	.quad	0x4023a19e30014f8b              # double 9.8156599999999993
	.quad	0x4001837b4a2339c1              # double 2.1892
	.quad	0x4013a777079e59f3              # double 4.9135400000000002
	.quad	0x40060e85b9e8c47a              # double 2.757091
	.quad	0x3fe57572de43ed96              # double 0.67058700000000004
	.quad	0x401153519bd4067d              # double 4.331366
	.quad	0x40063940789613d3              # double 2.777955
	.quad	0x401795525cc42635              # double 5.8958219999999999
	.quad	0x400dbcb3e5753a3f              # double 3.7171400000000001
	.quad	0x4014a6a50d6b228e              # double 5.1627390000000002
	.quad	0x400e8788db0574b4              # double 3.816179
	.quad	0x400d34ddf86e3b47              # double 3.650814
	.quad	0x401cfbae03b3e9a7              # double 7.245781
	.quad	0x401b0d26b723ee1c              # double 6.7628430000000002
	.quad	0x4020efe586013661              # double 8.4685480000000002
	.quad	0x3fd577a7008a697b              # double 0.335428
	.quad	0x400a76b3bb83cf2d              # double 3.30796
	.quad	0x401305e39713ad5c              # double 4.7557510000000001
	.quad	0x401bac65c70435f0              # double 6.9183570000000003
	.quad	0x401ab21fafc8b008              # double 6.6739490000000004
	.quad	0x40179e019b0ab2e1              # double 5.9043029999999996
	.quad	0x400229a88ace24bc              # double 2.2703410000000002
	.quad	0x401abb0c4588a04d              # double 6.6826639999999999
	.quad	0x401c8d15f02c4d66              # double 7.1377790000000001
	.quad	0x402268216c61522a              # double 9.2033799999999992
	.quad	0x3ff8f3e1437c5693              # double 1.5595410000000001
	.quad	0x40191f0cfe154435              # double 6.2803230000000001
	.quad	0x401c6600b0292817              # double 7.0996119999999996
	.quad	0x4020d0ab2e1693c0              # double 8.4075559999999996
	.quad	0x400a54ba51a005c4              # double 3.2913709999999998
	.quad	0x3fdaa8c586876e1e              # double 0.416551
	.quad	0x401935e39713ad5c              # double 6.3026260000000001
	.quad	0x3ff4fddebd9018e7              # double 1.3119799999999999
	.quad	0x401c2323bbc6eb0b              # double 7.0343159999999996
	.quad	0x3fa20d5629d8409e              # double 0.035257999999999998
	.quad	0x400a1293d102bc73              # double 3.2590710000000001
	.quad	0x402399c5a3e39f77              # double 9.8003359999999997
	.quad	0x40107cab81f969e4              # double 4.1217480000000002
	.quad	0x4022129d627bf61b              # double 9.0363570000000006
	.quad	0x402058caa326e115              # double 8.1734209999999994
	.quad	0x401920635a426bb5              # double 6.2816289999999997
	.quad	0x400a384a0e410b63              # double 3.277485
	.quad	0x400be6aa087ca644              # double 3.4876290000000001
	.quad	0x4011b569f4906035              # double 4.427162
	.quad	0x4014dd48cb4aec8d              # double 5.2160979999999997
	.quad	0x4021050d49949e88              # double 8.5098669999999998
	.quad	0x400aeb3700474d9c              # double 3.3648509999999998
	.quad	0x40154c282c6ef3d4              # double 5.3243720000000003
	.quad	0x400e5f926c7eae5c              # double 3.7966660000000001
	.quad	0x4023a3b645a1cac1              # double 9.8197500000000008
	.quad	0x401edc0096feb4a6              # double 7.7148459999999996
	.quad	0x4010a4a6eb91b3f2              # double 4.160793
	.quad	0x3fcc0ba1f4b1ee24              # double 0.21910499999999999
	.quad	0x4022a03a96d4c33b              # double 9.3129469999999994
	.quad	0x4014eb9884c6a3be              # double 5.2300740000000001
	.quad	0x400e8add590c0ad0              # double 3.8178049999999999
	.quad	0x4003f66b6177ea1c              # double 2.4953219999999998
	.quad	0x4019ae4d1a650614              # double 6.4202159999999999
	.quad	0x4013f00c9539b888              # double 4.9844229999999996
	.quad	0x40157a133c1ce6c1              # double 5.3692140000000004
	.quad	0x4023c71e8e608073              # double 9.8889049999999993
	.quad	0x4021feac215b9a5b              # double 8.9974070000000008
	.quad	0x402118a06e9ff0cc              # double 8.5480990000000005
	.quad	0x4015cb2f23033a47              # double 5.4484219999999999
	.quad	0x4008e2d6238da3c2              # double 3.11076
	.quad	0x40006c3fc43b2dd3              # double 2.0528559999999998
	.quad	0x4010fffa7eb6bf44              # double 4.2499789999999997
	.quad	0x4019ccf355cd91ef              # double 6.4501470000000003
	.quad	0x400238f92af9a8ce              # double 2.277819
	.quad	0x40147485e3da2f8c              # double 5.1137920000000001
	.quad	0x3fd1e6ff7dfa00e2              # double 0.27972399999999997
	.quad	0x401a67c1bda5119d              # double 6.6013250000000001
	.quad	0x3fe90eef1bac2df1              # double 0.78307300000000002
	.quad	0x402208e6f2e8c048              # double 9.0173869999999994
	.quad	0x401ee732df505d10              # double 7.7257800000000003
	.quad	0x3fe7d8fd5cb790fb              # double 0.74523799999999996
	.quad	0x400e27d912556d1a              # double 3.7694570000000001
	.quad	0x4015c3a9b0681238              # double 5.4410769999999999
	.quad	0x400fc600b0292817              # double 3.9716809999999998
	.quad	0x4015d226809d4952              # double 5.4552250000000004
	.quad	0x40216fb890d5a5b9              # double 8.7182049999999993
	.quad	0x4015d2c94b380cb7              # double 5.4558460000000002
	.quad	0x401ee40e9d51b4fe              # double 7.7227119999999996
	.quad	0x400a66cb966be7b0              # double 3.3001930000000002
	.quad	0x4015c90bc7b45f18              # double 5.4463340000000002
	.quad	0x401f0c36544fe36d              # double 7.7619259999999998
	.quad	0x400cc3065f9591cd              # double 3.595227
	.quad	0x3ff9094812be48a6              # double 1.5647660000000001
	.quad	0x40155f89c5e6ff7e              # double 5.343299
	.quad	0x4012df80dc33721d              # double 4.7182649999999997
	.quad	0x3f6ad6451b93037d              # double 0.0032759999999999998
	.quad	0x401eb142f61ed5ae              # double 7.6731069999999999
	.quad	0x40123010c6f7a0b6              # double 4.5469390000000001
	.quad	0x4019cc0096feb4a6              # double 6.4492209999999996
	.quad	0x40161ad46f587d70              # double 5.5262010000000004
	.quad	0x401eb107746887a9              # double 7.6728800000000001
	.quad	0x400aeb4289118c19              # double 3.3648729999999998
	.quad	0x400edc8c0ce91c8f              # double 3.8576890000000001
	.quad	0x400eb17507e9d94d              # double 3.836649
	.quad	0x401cc84d338f7985              # double 7.1956069999999999
	.quad	0x4020c11233df2a9d              # double 8.3770919999999993
	.quad	0x4002c3033a4723ab              # double 2.345221
	.quad	0x401093d35eb7457c              # double 4.144361
	.quad	0x4017de358298cc14              # double 5.9670009999999998
	.quad	0x402260ea7ce0fc2f              # double 9.1892890000000005
	.quad	0x4020f7911cf355ce              # double 8.4835290000000008
	.quad	0x3ffb8b20fb224aae              # double 1.7214670000000001
	.quad	0x4015b3db7f173754              # double 5.4256419999999999
	.quad	0x401e6e5a35d67ba2              # double 7.6077659999999998
	.quad	0x400967a4a48f96e1              # double 3.1756069999999998
	.quad	0x401181d19157abb9              # double 4.3767760000000004
	.quad	0x402248fc504816f0              # double 9.14255
	.quad	0x4019648344c37e6f              # double 6.3481569999999996
	.quad	0x400491a21ea35936              # double 2.57111
	.quad	0x401e2cf0b6b6e0d2              # double 7.5438869999999998
	.quad	0x401dae368f084620              # double 7.4201300000000003
	.quad	0x40092e5de15ca6ca              # double 3.14764
	.quad	0x40055fb3fa6defc8              # double 2.6717300000000002
	.quad	0x402353c85c24c405              # double 9.6636380000000006
	.quad	0x3fcd38fffbce4218              # double 0.228302
	.quad	0x401cacf0739b024f              # double 7.1688859999999996
	.quad	0x40219f4ea8da7f3d              # double 8.8111470000000001
	.quad	0x4022ae5b8561d430              # double 9.3405419999999992
	.quad	0x4012b4ff43419e30              # double 4.676755
	.quad	0x3ff37e73a365cb36              # double 1.218372
	.quad	0x40239931876188b1              # double 9.7992059999999998
	.quad	0x400070c2c5e2cdc0              # double 2.055059
	.quad	0x40155c74751ce28f              # double 5.3402880000000001
	.quad	0x400d4726d04e618d              # double 3.6597420000000001
	.quad	0x400a017225b749ae              # double 3.2507060000000001
	.quad	0x400293f290abb44e              # double 2.3222399999999999
	.quad	0x4004696dd26b723f              # double 2.5514790000000001
	.quad	0x3fe2a161e4f765fe              # double 0.58220000000000005
	.quad	0x401f122f2734f82f              # double 7.7677579999999997
	.quad	0x3fd75e785b5b7069              # double 0.36514099999999999
	.quad	0x401e5f4fd6d7e88a              # double 7.5930780000000002
	.quad	0x40205906ee30caa3              # double 8.1738809999999997
	.quad	0x3fdb9b0ab2e1693c              # double 0.431338
	.quad	0x401dfc6583e8576d              # double 7.4964810000000001
	.quad	0x4020995c209246bf              # double 8.299531
	.quad	0x4015e0a8d21bc127              # double 5.4693940000000003
	.quad	0x4020592d98bf7f06              # double 8.1741759999999992
	.quad	0x400ecca03c4b09ea              # double 3.8499150000000002
	.quad	0x4007908d4bad7d7c              # double 2.9455819999999999
	.quad	0x3ff2d9018e757929              # double 1.17798
	.quad	0x40232d894812be49              # double 9.5889380000000006
	.quad	0x40222569f4906035              # double 9.0730740000000001
	.quad	0x4020b6fdeb52c9d1              # double 8.3574059999999992
	.quad	0x3fe499c9d5a187a5              # double 0.64377300000000004
	.quad	0x3ff35ab8e8ea39c5              # double 1.209649
	.quad	0x3fef319a415f45e1              # double 0.97480500000000003
	.quad	0x401f844e0daa0cae              # double 7.8792039999999997
	.quad	0x401dd6b97fe8ee6c              # double 7.4596920000000004
	.quad	0x40188c2ce4649907              # double 6.1368900000000002
	.quad	0x40237f1d81f10668              # double 9.748272
	.quad	0x401cc9c90c4dec1c              # double 7.1970559999999999
	.quad	0x4023572a172abef0              # double 9.6702429999999993
	.quad	0x3ff0a1a3f4666eca              # double 1.039463
	.quad	0x40043bb9cf9a06a7              # double 2.529163
	.quad	0x3ff6d58b827fa1a1              # double 1.427135
	.quad	0x40171abb44e50c5f              # double 5.7761050000000003
	.quad	0x400a89e44fa05144              # double 3.3173300000000001
	.quad	0x4010a5410f94c87a              # double 4.1613810000000004
	.quad	0x3ffc14434e3369ba              # double 1.754947
	.quad	0x4012fc9c0a8d21bc              # double 4.7466889999999999
	.quad	0x3f59d66adb402d17              # double 0.0015770000000000001
	.quad	0x4019f8ab4fa48302              # double 6.4928410000000003
	.quad	0x4023c02ff8ec0f88              # double 9.8753659999999996
	.quad	0x400e6bcd78c436fc              # double 3.802638
	.quad	0x3fef325d4a5df224              # double 0.97489800000000004
	.quad	0x3ffc75d78811b1d9              # double 1.77877
	.quad	0x4020ad8d5842b735              # double 8.3389690000000005
	.quad	0x40217852b4d8ba41              # double 8.7350060000000003
	.quad	0x4008bdf3300de4c5              # double 3.092749
	.quad	0x401defd2a62aa194              # double 7.4842019999999998
	.quad	0x4019de48e8a71de7              # double 6.4670750000000004
	.quad	0x4020345e9185cee1              # double 8.1022839999999992
	.quad	0x4000d7a7008a697b              # double 2.105299
	.quad	0x401dfff972474539              # double 7.499975
	.quad	0x4016c5321e603d57              # double 5.6925739999999996
	.quad	0x40159ddbdb5d8948              # double 5.4041589999999999
	.quad	0x4007ca5accd53049              # double 2.9738060000000002
	.quad	0x402128f7db6e5040              # double 8.5800160000000005
	.quad	0x3ffd79c842fa5094              # double 1.8422320000000001
	.quad	0x3fd20e991ff7164c              # double 0.28214099999999998
	.quad	0x4001b9f559b3d07d              # double 2.2158000000000002
	.quad	0x4020605fd04a2fcf              # double 8.188231
	.quad	0x40160c122749f0e5              # double 5.5117880000000001
	.quad	0x3fe9bab649d388a9              # double 0.80404200000000003
	.quad	0x40201aecaeea63b7              # double 8.0525870000000008
	.quad	0x3fd2b8066c2acb86              # double 0.29248200000000002
	.quad	0x40188845132f87ad              # double 6.133076
	.quad	0x4011b466f5019f3c              # double 4.4261739999999996
	.quad	0x402071487768166a              # double 8.2212560000000003
	.quad	0x40157446f9b994e2              # double 5.3635520000000003
	.quad	0x4020b5423d9231c6              # double 8.3540209999999995
	.quad	0x4020b76ddaceee0f              # double 8.3582599999999996
	.quad	0x40116c38b04ab607              # double 4.3556850000000003
	.quad	0x4003d6605ee568a5              # double 2.479676
	.quad	0x4020ff969e3c9689              # double 8.4991959999999995
	.quad	0x3fe79f2dc2b0ea18              # double 0.73818099999999998
	.quad	0x401a9ed245b291b8              # double 6.6550989999999999
	.quad	0x3ff4f25f633ce63a              # double 1.3091729999999999
	.quad	0x402012773e24febd              # double 8.0360659999999999
	.quad	0x4011f6cd29131ec1              # double 4.4910170000000003
	.quad	0x401f311904b3c3e7              # double 7.7979469999999997
	.quad	0x400cb324851a8694              # double 3.587472
	.quad	0x4016463a5c1c6089              # double 5.5685820000000001
	.quad	0x402181a7e3087875              # double 8.7532340000000008
	.quad	0x3ff1fdc8b86b15f9              # double 1.1244590000000001
	.quad	0x4017d48909289dae              # double 5.957554
	.quad	0x400542a90cd423d9              # double 2.6575489999999999
	.quad	0x401d1112ba16e7a3              # double 7.2666729999999999
	.quad	0x40234c9b41398634              # double 9.6496220000000008
	.quad	0x4012943bb40b34e7              # double 4.6447589999999996
	.quad	0x401342ce89656ef0              # double 4.8152410000000003
	.quad	0x4023afede97d06bc              # double 9.8436120000000002
	.quad	0x4021753b8e4b87be              # double 8.7289700000000003
	.quad	0x4022ca265f0f5a10              # double 9.3948239999999998
	.quad	0x3ff340ee06d93815              # double 1.203352
	.quad	0x3ff10794ea077037              # double 1.064351
	.quad	0x3ff814e3bcd35a86              # double 1.5051000000000001
	.quad	0x4023a73860999dcb              # double 9.8266019999999993
	.quad	0x3fd1d72367e414e8              # double 0.278756
	.quad	0x4012c543aeab7996              # double 4.6926410000000001
	.quad	0x401ee25072085b18              # double 7.7210099999999997
	.quad	0x400d7fc3b4f61672              # double 3.6873849999999999
	.quad	0x40236426351deefe              # double 9.6956039999999994
	.quad	0x40238b44a1f08030              # double 9.7720079999999996
	.quad	0x3fcd289dadfb506e              # double 0.227802
	.quad	0x40007574f722e1ac              # double 2.0573519999999998
	.quad	0x4009e1c58255b036              # double 3.2352400000000001
	.quad	0x4018617a89331a09              # double 6.0951940000000002
	.quad	0x4009ed080b673c4f              # double 3.2407379999999999
	.quad	0x402100605681ecd5              # double 8.5007350000000006
	.quad	0x4022f5dd4c76d118              # double 9.4802040000000005
	.quad	0x4023e4f3343fa2ad              # double 9.9471679999999995
	.quad	0x401a8aafff36ac64              # double 6.6354369999999996
	.quad	0x40113578e5c4eb57              # double 4.302219
	.quad	0x3ff51b994e1a3f46              # double 1.3192379999999999
	.quad	0x4018ee1eb4202d9d              # double 6.2325390000000001
	.quad	0x4012f82be8bc169c              # double 4.7423549999999999
	.quad	0x401aff0281ba7fc3              # double 6.7490329999999998
	.quad	0x4017e37bd05af6c7              # double 5.9721520000000003
	.quad	0x402080e2c12ad81b              # double 8.2517300000000002
	.quad	0x40235da5b9628cbd              # double 9.6829049999999998
	.quad	0x40220951e75360d0              # double 9.0182029999999997
	.quad	0x3ff24b780346dc5d              # double 1.1434249999999999
	.quad	0x3fe48f49491f2dc3              # double 0.64249100000000003
	.quad	0x40150ace24bba12b              # double 5.2605519999999997
	.quad	0x4010890d5a5b9629              # double 4.1338400000000002
	.quad	0x401e7dcb5781c715              # double 7.622846
	.quad	0x3fc5e5b8561d4307              # double 0.171073
	.quad	0x4016aa2014727dcc              # double 5.6661380000000001
	.quad	0x401719df97aaac11              # double 5.7752670000000004
	.quad	0x401582e557de0d67              # double 5.3778280000000001
	.quad	0x400c683558a76102              # double 3.5508829999999998
	.quad	0x4007efd21ff2e48f              # double 2.9921000000000002
	.quad	0x4018f342aa9f7b5b              # double 6.2375590000000001
	.quad	0x4012f54b8bef8ceb              # double 4.7395459999999998
	.quad	0x401ec2cadddf43c8              # double 7.6902270000000001
	.quad	0x40000fbeb9e492bc              # double 2.0076879999999999
	.quad	0x4014a4febd09e12a              # double 5.1611279999999997
	.quad	0x40108509bf9c62a2              # double 4.1299200000000003
	.quad	0x3ff702efd438d1d9              # double 1.4382170000000001
	.quad	0x40005f0fe047d3d4              # double 2.0464169999999999
	.quad	0x402336ce358298cc              # double 9.6070419999999998
	.quad	0x3ffadce28ed5f139              # double 1.6789270000000001
	.quad	0x4021aacd7cf5f4e4              # double 8.8335989999999995
	.quad	0x4023afb3743632c2              # double 9.8431660000000001
	.quad	0x4010bde8709741d1              # double 4.1854570000000004
	.quad	0x40025349be8ff328              # double 2.2906680000000001
	.quad	0x401a3a2ca9ac3654              # double 6.5568109999999997
	.quad	0x40076fd08d4bad7d              # double 2.9295969999999998
	.quad	0x3feb0ec743201041              # double 0.84555400000000003
	.quad	0x401726fa3fcc9eaa              # double 5.7880640000000003
	.quad	0x3fd10f51ac9afe1e              # double 0.26656000000000002
	.quad	0x4018e83a53b8e4b8              # double 6.2267849999999996
	.quad	0x401cb773e24febd1              # double 7.1791530000000003
	.quad	0x4012103254e6e222              # double 4.5158170000000002
	.quad	0x3fb87a6bd6e8af81              # double 0.095617999999999995
	.quad	0x400683d35eb7457c              # double 2.814368
	.quad	0x401ef4c059210386              # double 7.7390150000000002
	.quad	0x4023ba7d88c1db01              # double 9.8642389999999995
	.quad	0x40216f97460242d0              # double 8.7179509999999993
	.quad	0x3fe21f2990f301eb              # double 0.56630400000000003
	.quad	0x4014345bf26f1dc5              # double 5.051132
	.quad	0x40239ee371540032              # double 9.8103289999999994
	.quad	0x40150993d5347a5b              # double 5.2593529999999999
	.quad	0x4016c0a84be40421              # double 5.688142
	.quad	0x402321bd1ed9dfdb              # double 9.5658960000000003
	.quad	0x400df515054ac29c              # double 3.744669
	.quad	0x4000120642396074              # double 2.0088010000000001
	.quad	0x3ff45a1cac083127              # double 1.272
	.quad	0x4022aded4a1ad645              # double 9.3397009999999998
	.quad	0x401d24d4024b33db              # double 7.285965
	.quad	0x3ffee6fb4c3c18b5              # double 1.931392
	.quad	0x4014240cc78e9f6b              # double 5.0352050000000004
	.quad	0x400757ed41b75a75              # double 2.9179330000000001
	.quad	0x3fa3252ce032db1f              # double 0.037393000000000003
	.quad	0x4020c17d2849cb25              # double 8.3779079999999997
	.quad	0x40015187e7c06e1a              # double 2.1648100000000001
	.quad	0x4011bc90c4dec1c2              # double 4.4341460000000001
	.quad	0x4006ce368f084620              # double 2.8506900000000002
	.quad	0x4023140639d5e4a4              # double 9.5391100000000008
	.quad	0x3fe5fc47e49b1fac              # double 0.68704600000000005
	.quad	0x402297ff36ac6477              # double 9.2968689999999992
	.quad	0x402361835158b828              # double 9.690455
	.quad	0x4017e083558a7610              # double 5.9692509999999999
	.quad	0x401daa60d4562e0a              # double 7.416385
	.quad	0x4023e606317268d3              # double 9.9492659999999997
	.quad	0x401580229a5ebb77              # double 5.3751319999999998
	.quad	0x401df1ea78af3e47              # double 7.4862460000000004
	.quad	0x4016f8b0d0edc3bd              # double 5.7428619999999997
	.quad	0x3ff49c13fd0d0679              # double 1.2881050000000001
	.quad	0x4018eab29e4d5d81              # double 6.2291970000000001
	.quad	0x3ff37a3b9ae0c176              # double 1.2173419999999999
	.quad	0x3ffc768f08461f9f              # double 1.778945
	.quad	0x400a023e18698351              # double 3.2510949999999998
	.quad	0x40210d69d30270f4              # double 8.5261980000000008
	.quad	0x3ff3ac2374794ea0              # double 1.2295259999999999
	.quad	0x401c29e83e425aee              # double 7.0409249999999997
	.quad	0x4017c7bf1e8e6080              # double 5.9450649999999996
	.quad	0x4023e5ec5f394b7b              # double 9.9490689999999997
	.quad	0x401357a8d64d7f0f              # double 4.8356050000000002
	.quad	0x401dee58e64b2314              # double 7.482761
	.quad	0x3fd2671ac14c660a              # double 0.28754299999999999
	.quad	0x402374a3400b88ca              # double 9.7278079999999996
	.quad	0x4019c1ba7fc32ebe              # double 6.4391879999999997
	.quad	0x3ffd4051c9f72f77              # double 1.828203
	.quad	0x3fe14d013a92a305              # double 0.54064999999999996
	.quad	0x400286748e475600              # double 2.315652
	.quad	0x4016442a66dbd72c              # double 5.5665680000000002
	.quad	0x4019488f861a60d4              # double 6.3208599999999997
	.quad	0x4015bae536501e26              # double 5.4325150000000004
	.quad	0x4018a06dd69d3027              # double 6.1566689999999999
	.quad	0x40070db59578a2a9              # double 2.881694
	.quad	0x40197e9680e06530              # double 6.373621
	.quad	0x3fe024a48f96e158              # double 0.50447299999999995
	.quad	0x40235740c4156e26              # double 9.6704159999999995
	.quad	0x401da4a98aa8650e              # double 7.4108029999999996
	.quad	0x4012c3c297bfa4c6              # double 4.6911719999999999
	.quad	0x400dbc1acde19fc3              # double 3.7168480000000002
	.quad	0x4020c0c9320d9946              # double 8.3765350000000005
	.quad	0x401fda3fcc9ea9a4              # double 7.9631340000000002
	.quad	0x3ff6beab367a0f91              # double 1.4215500000000001
	.quad	0x4000c5186db50f41              # double 2.096238
	.quad	0x4020fcbc8c0ce91d              # double 8.4936260000000008
	.quad	0x4020419cbee807bc              # double 8.1281490000000005
	.quad	0x4000bc1a47a9e2bd              # double 2.091847
	.quad	0x4021239b8887229f              # double 8.5695460000000008
	.quad	0x4003d4a4d2b2bfdb              # double 2.4788299999999999
	.quad	0x4022f2682b62845a              # double 9.4734510000000007
	.quad	0x40127d2a62aa1944              # double 4.6222320000000003
	.quad	0x4014389f40a2877f              # double 5.0552950000000001
	.quad	0x40222e8a2ec28b2a              # double 9.0908979999999993
	.quad	0x4007a50bd87b56b8              # double 2.9555889999999998
	.quad	0x3fd54638c9752978              # double 0.33241100000000001
	.quad	0x401351fafc8b007a              # double 4.8300590000000003
	.quad	0x3f91ab0856e696a2              # double 0.017253999999999999
	.quad	0x40199167ec7863bf              # double 6.3919980000000001
	.quad	0x401f5085b18548aa              # double 7.8286350000000002
	.quad	0x40239d460aa64c30              # double 9.8071750000000009
	.quad	0x4004f718eb895076              # double 2.6206529999999999
	.quad	0x3ff99a6c5d206c87              # double 1.600201
	.quad	0x3ff8b8a3b57c4e2f              # double 1.545078
	.quad	0x4021d2975afaf859              # double 8.9113109999999995
	.quad	0x3feb47a5b0ff10ed              # double 0.85249600000000003
	.quad	0x4009b9ee88df3733              # double 3.2157870000000002
	.quad	0x40204728c79f6662              # double 8.1389829999999996
	.quad	0x40142202539756c9              # double 5.0332119999999998
	.quad	0x401b4a222d5171e3              # double 6.8223960000000003
	.quad	0x40189105186db50f              # double 6.1416209999999998
	.quad	0x40002281ba7fc32f              # double 2.0168490000000001
	.quad	0x40183485e3da2f8c              # double 6.0512920000000001
	.quad	0x400b57e34b945309              # double 3.4179140000000001
	.quad	0x4004259641f64495              # double 2.5183529999999998
	.quad	0x4022acbc6a7ef9db              # double 9.3373749999999998
	.quad	0x402016e6b8305d96              # double 8.0447290000000002
	.quad	0x40103ed352220bc4              # double 4.0613530000000004
	.quad	0x402081b6f5caf2d8              # double 8.253349
	.quad	0x40062ed80a17b0f7              # double 2.7728730000000001
	.quad	0x4019d96030c23fab              # double 6.4622809999999999
	.quad	0x4003a739b024f65a              # double 2.4566530000000002
	.quad	0x4020949cb252ce03              # double 8.2902579999999997
	.quad	0x40126d67ba237cdd              # double 4.6068410000000002
	.quad	0x40176ead9274e22a              # double 5.8580839999999998
	.quad	0x4014243d03968d76              # double 5.0353890000000003
	.quad	0x4013718b93469942              # double 4.8608840000000004
	.quad	0x401e086876e1dead              # double 7.5082110000000001
	.quad	0x3fccd2aa5c5f7c67              # double 0.22517899999999999
	.quad	0x400d084ad794a6ec              # double 3.6290490000000002
	.quad	0x4010d7314ca925ff              # double 4.2101490000000004
	.quad	0x401065ef62f9ca5c              # double 4.0995460000000001
	.quad	0x402267f9d6f112fd              # double 9.2030779999999996
	.quad	0x4013dc11e42e1262              # double 4.964912
	.quad	0x4020f7b6bb129025              # double 8.4838159999999991
	.quad	0x3fd2e7ddca4b124d              # double 0.295402
	.quad	0x4003b4aec8d5c747              # double 2.4632239999999999
	.quad	0x401d182c6ef3d3a2              # double 7.2736070000000002
	.quad	0x3ff77eb074a771c9              # double 1.4684299999999999
	.quad	0x3fb2a38b8ae31d71              # double 0.072807999999999998
	.quad	0x4006d74aba387592              # double 2.8551229999999999
	.quad	0x401fd926c7eae5bd              # double 7.9620620000000004
	.quad	0x401f3f02c4d65e46              # double 7.811534
	.quad	0x401770014f8b588e              # double 5.8593799999999998
	.quad	0x402089f0a1be2b49              # double 8.2694139999999994
	.quad	0x4006cf1348b22079              # double 2.851111
	.quad	0x402145b7cfe58601              # double 8.6361679999999996
	.quad	0x400a1291b823c85c              # double 3.2590669999999999
	.quad	0x4015fa7264a16a48              # double 5.4945769999999996
	.quad	0x4021d0d1526d8b1e              # double 8.9078470000000003
	.quad	0x4020f8476f2a5a47              # double 8.4849200000000007
	.quad	0x401f8b441bb8c32b              # double 7.8860020000000004
	.quad	0x3fe3b2d0a2446306              # double 0.61557799999999996
	.quad	0x400c5b402d16b980              # double 3.544556
	.quad	0x3fd719157abb8801              # double 0.360906
	.quad	0x3ff105faebc408d9              # double 1.06396
	.quad	0x3fe389d8c6d612c7              # double 0.61057700000000004
	.quad	0x40182892253111f1              # double 6.0396200000000002
	.quad	0x400cf7ccc0379314              # double 3.6209959999999999
	.quad	0x4016afba8826aa8f              # double 5.6716100000000003
	.quad	0x4008fec13b9f127f              # double 3.1243919999999998
	.quad	0x401ac84167a95c85              # double 6.6955619999999998
	.quad	0x4020f674d1633483              # double 8.4813600000000005
	.quad	0x4011e3f0bae89eba              # double 4.4725979999999996
	.quad	0x401955c0767d34df              # double 6.333742
	.quad	0x40238fc17a89331a              # double 9.7807729999999999
	.quad	0x4012a4e7ab756430              # double 4.6610399999999998
	.quad	0x4016ea493c89f40a              # double 5.7287949999999999
	.quad	0x4012f35b0bbf50e3              # double 4.7376519999999998
	.quad	0x402195ab3aabcd79              # double 8.7923220000000004
	.quad	0x401472b27cbf6e3f              # double 5.1120089999999996
	.quad	0x401b4da16616b54e              # double 6.8258109999999999
	.quad	0x3fba24febd09e12a              # double 0.102127
	.quad	0x401fe6d330941c82              # double 7.9754149999999999
	.quad	0x3feec5e9185cee18              # double 0.96165900000000004
	.quad	0x401eb6d5cfaacd9f              # double 7.6785500000000004
	.quad	0x40137bb2788db057              # double 4.8707979999999997
	.quad	0x3fe066fd651b0ccc              # double 0.51257200000000003
	.quad	0x4022960ac7da1ec5              # double 9.2930510000000002
	.quad	0x400c025c810a569b              # double 3.501153
	.quad	0x401c0c0ad03d9a95              # double 7.0117599999999998
	.quad	0x401e4eb13dfb0d52              # double 7.576848
	.quad	0x4021899652bd3c36              # double 8.7687249999999999
	.quad	0x40222917720c8cd6              # double 9.0802569999999996
	.quad	0x40177265f0f5a101              # double 5.8617169999999996
	.quad	0x40189286b59146e5              # double 6.1430920000000002
	.quad	0x402190d92fb19e73              # double 8.7829069999999998
	.quad	0x400ebb645a1cac08              # double 3.8414999999999999
	.quad	0x3ffcffe9fadafd11              # double 1.812479
	.quad	0x3fe04f2f123c42a6              # double 0.50966599999999995
	.quad	0x401d22afdda8bd23              # double 7.283874
	.quad	0x40233c651f3e89a9              # double 9.6179590000000008
	.quad	0x401ecbd09e12a51e              # double 7.6990379999999998
	.quad	0x4018fab7dc7abfba              # double 6.2448420000000002
	.quad	0x40105b135979181a              # double 4.0889410000000002
	.quad	0x400176544fe36d22              # double 2.1827779999999999
	.quad	0x40219aacd9e83e42              # double 8.8020999999999994
	.quad	0x400543b8a19c9d5a              # double 2.658067
	.quad	0x4020f501c0ca600b              # double 8.478529
	.quad	0x3fde855da272862f              # double 0.47688999999999998
	.quad	0x40221064ece9a2c6              # double 9.0320199999999993
	.quad	0x401f42b841248d7e              # double 7.815156
	.quad	0x4016bd905c033615              # double 5.6851209999999996
	.quad	0x402170d1b71758e2              # double 8.7203499999999998
	.quad	0x3ff682e126202539              # double 1.4069529999999999
	.quad	0x40172ea4a8c154ca              # double 5.7955500000000004
	.quad	0x4023ecc61d8622c4              # double 9.9624489999999994
	.quad	0x3ffbec9d16fc9bc7              # double 1.7452669999999999
	.quad	0x401ff4b599aa6091              # double 7.9889739999999997
	.quad	0x40200b42cc2d6a9c              # double 8.0219939999999994
	.quad	0x40142ed5ae1cde5d              # double 5.0457369999999999
	.quad	0x40152c55432873bd              # double 5.2932940000000004
	.quad	0x401f89e279dd3bb0              # double 7.8846530000000001
	.quad	0x4008d677f6b1a2a5              # double 3.1047210000000001
	.quad	0x3fb30c4588a04d12              # double 0.074406
	.quad	0x4021716ededaec4a              # double 8.7215489999999996
	.quad	0x3ff0553586ca89fc              # double 1.0208029999999999
	.quad	0x3fea7a7221858bc6              # double 0.82744700000000004
	.quad	0x401c620ccff21b3b              # double 7.0957520000000001
	.quad	0x400c7c5c5718eb89              # double 3.5607229999999999
	.quad	0x3ff51a9003eea20a              # double 1.3189850000000001
	.quad	0x4016f34b0e1b4bb6              # double 5.7375910000000001
	.quad	0x401df8ede54b48d4              # double 7.4930950000000003
	.quad	0x4010cc59b8023a6d              # double 4.1995610000000001
	.quad	0x4008b6dca07f66e8              # double 3.0892879999999998
	.quad	0x3fac5eb313be22e6              # double 0.055410000000000001
	.quad	0x4018d05ee568a505              # double 6.203487
	.quad	0x3ffb733fc86cebbc              # double 1.7156370000000001
	.quad	0x400c087c200c0f02              # double 3.504143
	.quad	0x3ff31b64e054690e              # double 1.194188
	.quad	0x3ff4f6d330941c82              # double 1.31026
	.quad	0x402169e6cd29131f              # double 8.7068390000000004
	.quad	0x4021aedeb95e5aff              # double 8.8415429999999997
	.quad	0x401e8b630a91537a              # double 7.63612
	.quad	0x400c97f4128bf3bf              # double 3.5741960000000002
	.quad	0x3ffe9c93ea2d2fe4              # double 1.913227
	.quad	0x400b50225742dcf4              # double 3.4141279999999998
	.quad	0x400d9187e7c06e1a              # double 3.6960600000000001
	.quad	0x3ff48829cfdd2285              # double 1.2832429999999999
	.quad	0x40200ad31fcd24e1              # double 8.0211419999999993
	.quad	0x4016e77dd872f33d              # double 5.7260660000000003
	.quad	0x400eb30a4e379b78              # double 3.8374220000000001
	.quad	0x40118eba27ae9ab3              # double 4.3893820000000003
	.quad	0x401f5324c8366517              # double 7.8311950000000001
	.quad	0x3ff945c5718eb895              # double 1.579534
	.quad	0x401436dfc5cdd50b              # double 5.0535880000000004
	.quad	0x40015f24d8fd5cb8              # double 2.1714570000000002
	.quad	0x40026c2c5e2cdc01              # double 2.3028189999999999
	.quad	0x401baaf922962cfe              # double 6.9169660000000004
	.quad	0x401bd51761459536              # double 6.9580970000000004
	.quad	0x40048f3dc054ef46              # double 2.5699420000000002
	.quad	0x4019fcb1897a67a5              # double 6.4967709999999999
	.quad	0x40164392e1ef73c1              # double 5.5659900000000002
	.quad	0x401f54d551d68c69              # double 7.8328449999999998
	.quad	0x3fcb409a24031487              # double 0.21290899999999999
	.quad	0x3ff76376922d948e              # double 1.4617830000000001
	.quad	0x4007d16ebd4cfd09              # double 2.9772620000000001
	.quad	0x4010d8a19c9d5a18              # double 4.2115539999999996
	.quad	0x40217f37110e453d              # double 8.7484669999999998
	.quad	0x3ff08e5a35d67ba2              # double 1.034754
	.quad	0x40149734b51372a4              # double 5.1476620000000004
	.quad	0x401d820685553ef7              # double 7.3769780000000003
	.quad	0x40222067cf1c3266              # double 9.0632920000000006
	.quad	0x4021e0a3f8982cb2              # double 8.9387509999999999
	.quad	0x401bc9a73b42cc2d              # double 6.9469269999999996
	.quad	0x401792c7b890d5a6              # double 5.8933400000000002
	.quad	0x4020ef6ddaceee0f              # double 8.4676349999999996
	.quad	0x4017bfa3b9ae0c17              # double 5.9371479999999996
	.quad	0x4023d766e86c6584              # double 9.9207070000000001
	.quad	0x400ff9934efcbd55              # double 3.9968629999999998
	.quad	0x40036f0739b024f6              # double 2.4292129999999998
	.quad	0x401fa44c37e6f71a              # double 7.9104469999999996
	.quad	0x40158a76d97b30f9              # double 5.3852190000000002
	.quad	0x40000fa2f05a708f              # double 2.0076350000000001
	.quad	0x401bc54c122749f1              # double 6.9426730000000001
	.quad	0x3fd4bea91d9b1b7a              # double 0.32413700000000001
	.quad	0x4010e1526d8b1dd6              # double 4.2200410000000002
	.quad	0x401a7b955f78359c              # double 6.6206870000000002
	.quad	0x40152f31f46ed246              # double 5.2960890000000003
	.quad	0x4014d271bcdbbe01              # double 5.2055119999999997
	.quad	0x3fe495097c80841f              # double 0.64319300000000001
	.quad	0x4017a9be4cd74928              # double 5.9157650000000004
	.quad	0x4018c5b6c3760bf6              # double 6.1930800000000001
	.quad	0x401c72a3cea6c1a0              # double 7.1119529999999997
	.quad	0x401098a8f3a9b068              # double 4.1490819999999999
	.quad	0x4023fb9d7fd82774              # double 9.9914360000000002
	.quad	0x400409a5ebb7739f              # double 2.5047109999999999
	.quad	0x40230476295208e1              # double 9.5087139999999994
	.quad	0x3fcb2513b5bf6a0e              # double 0.21206900000000001
	.quad	0x401212b841248d7e              # double 4.518281
	.quad	0x4017ca60d4562e0a              # double 5.947635
	.quad	0x401c97a786c22681              # double 7.1481000000000003
	.quad	0x400430c4dec1c1d7              # double 2.5238130000000001
	.quad	0x401054e09784ec63              # double 4.0828879999999996
	.quad	0x401d2e80389f83be              # double 7.2954109999999996
	.quad	0x400a72b55ef1fddf              # double 3.3060100000000001
	.quad	0x400ab601797cc3a0              # double 3.33887
	.quad	0x4005fc2f405f6ba0              # double 2.7481369999999998
	.quad	0x3ffedb994e1a3f46              # double 1.9286129999999999
	.quad	0x40207c41dd1a21ea              # double 8.2426899999999996
	.quad	0x4020423c85c24c40              # double 8.1293679999999995
	.quad	0x401e31c6d1e108c4              # double 7.54861
	.quad	0x401412bae03b3e9a              # double 5.0182909999999996
	.quad	0x4020a56c2efd438d              # double 8.3230909999999998
	.quad	0x40133e3150dae3e7              # double 4.8107350000000002
	.quad	0x401d1813879c4114              # double 7.2735120000000002
	.quad	0x3fe2bb6aa4b9884c              # double 0.58537799999999995
	.quad	0x401f63c148344c38              # double 7.847417
	.quad	0x401bb1294573a798              # double 6.9230090000000004
	.quad	0x40214ac27a63736d              # double 8.6460150000000002
	.quad	0x3ff7601797cc3a00              # double 1.46096
	.quad	0x400f8d2cbea4ebdd              # double 3.9439329999999999
	.quad	0x401924db59578a2b              # double 6.2859930000000004
	.quad	0x40158519bd4067cf              # double 5.3799809999999999
	.quad	0x402223f24d8fd5cb              # double 9.0702079999999992
	.quad	0x4021e736cdf266ba              # double 8.9515899999999995
	.quad	0x3ffda0afa2f05a71              # double 1.8517300000000001
	.quad	0x40151d30270f3882              # double 5.2785039999999999
	.quad	0x4006bdf97aaac109              # double 2.8427609999999999
	.quad	0x3ff1588094e5d5b2              # double 1.0841069999999999
	.quad	0x3ff8e5bea0ba1f4b              # double 1.55609
	.quad	0x400911f2dc2b0ea2              # double 3.1337640000000002
	.quad	0x400ce7f023e9ea14              # double 3.613251
	.quad	0x4007ce8fb00bcbe6              # double 2.9758599999999999
	.quad	0x3ff7fc2224edf612              # double 1.4990559999999999
	.quad	0x40037e8f6cefed63              # double 2.4367969999999999
	.quad	0x3fee368ad6883772              # double 0.94415800000000005
	.quad	0x3ffa82fc69728a61              # double 1.656979
	.quad	0x400546f826edaa93              # double 2.659653
	.quad	0x40128bd017dae819              # double 4.6365360000000004
	.quad	0x4021844998d045fe              # double 8.7583739999999999
	.quad	0x40130a46e08f2171              # double 4.7600360000000004
	.quad	0x4011a61e4f765fd9              # double 4.4122250000000003
	.quad	0x401ac8183f91e647              # double 6.6954050000000001
	.quad	0x40019cf70153bd16              # double 2.2016429999999998
	.quad	0x4019597d8cf398e9              # double 6.3373929999999996
	.quad	0x4022fcd8ba40d90e              # double 9.4938409999999998
	.quad	0x401ee496aad1d042              # double 7.7232310000000002
	.quad	0x3fff9ea35935fc3b              # double 1.9762299999999999
	.quad	0x4017a976bc1effa0              # double 5.9154920000000004
	.quad	0x401ae85ad538ac19              # double 6.726909
	.quad	0x401f7c1615ebfa8f              # double 7.8711779999999995
	.quad	0x4011c8bb906466b2              # double 4.4460280000000001
	.quad	0x401f7b7b28954a80              # double 7.8705870000000004
	.quad	0x4012a94f69ca9ef5              # double 4.6653419999999999
	.quad	0x40129aeb3dd11be7              # double 4.6512880000000001
	.quad	0x400314299d883ba3              # double 2.3848449999999999
	.quad	0x400a4d87f88765ba              # double 3.2878569999999998
	.quad	0x401f7ebcc6c54bcf              # double 7.8737669999999999
	.quad	0x401c92ee84ad794a              # double 7.1434879999999996
	.quad	0x4021af7a4e7ab756              # double 8.8427299999999995
	.quad	0x401b11d10b1feeb3              # double 6.7673990000000002
	.quad	0x40176059ea57214f              # double 5.844093
	.quad	0x40235ed0917d6b66              # double 9.6851850000000006
	.quad	0x3fba36c15d2d01c1              # double 0.102398
	.quad	0x4021e192a737110e              # double 8.9405719999999995
	.quad	0x401b253f7ced9168              # double 6.7863749999999996
	.quad	0x401979d2bf551505              # double 6.3689679999999997
	.quad	0x4023da027525460b              # double 9.9258000000000006
	.quad	0x4012b1e108c3f3e0              # double 4.6737099999999998
	.quad	0x40203b1c0010c6f8              # double 8.1154480000000007
	.quad	0x3ffbfcc1871e6cd3              # double 1.7492080000000001
	.quad	0x40236b81d7dbf488              # double 9.709975
	.quad	0x4004c76af89c5e70              # double 2.597372
	.quad	0x400deafc47e49b20              # double 3.7397390000000001
	.quad	0x3fca1f85d744f5d3              # double 0.20408699999999999
	.quad	0x40201c43d46b26c0              # double 8.0552050000000008
	.quad	0x40164143393ab431              # double 5.563733
	.quad	0x401a4981beb18117              # double 6.5717840000000001
	.quad	0x4011dc93a7115161              # double 4.4654069999999999
	.quad	0x4013c8c32a8c9b84              # double 4.9460569999999997
	.quad	0x3fdf8b1572580c31              # double 0.49286400000000002
	.quad	0x40221b1b79d909f2              # double 9.0529440000000001
	.quad	0x4020e7f3061c79b3              # double 8.4530259999999995
	.quad	0x401794cc6822ff09              # double 5.8953110000000004
	.quad	0x4001ade97d06bbdc              # double 2.209918
	.quad	0x401a4b8b26394fad              # double 6.5737730000000001
	.quad	0x3fff39b34a44c7b0              # double 1.951587
	.quad	0x40054fb1183b6028              # double 2.6639119999999998
	.quad	0x401883eb399f5dff              # double 6.1288270000000002
	.quad	0x3ff9c198f1d3ed52              # double 1.6097649999999999
	.quad	0x4023c47d3d4280ae              # double 9.8837679999999999
	.quad	0x400a410e8858ff76              # double 3.2817660000000002
	.quad	0x4015a2cb641700ce              # double 5.4089790000000004
	.quad	0x40218830e3cd9a52              # double 8.7659979999999997
	.quad	0x401f2f4491298890              # double 7.7961600000000004
	.quad	0x4001e4c0df58c08b              # double 2.2366959999999998
	.quad	0x3ff3c57082491afc              # double 1.235703
	.quad	0x400115bc44bf4cb2              # double 2.1356130000000002
	.quad	0x40233b6e0d23d4f1              # double 9.6160739999999993
	.quad	0x401dae2003ab862b              # double 7.4200439999999999
	.quad	0x4009e07d4e09784f              # double 3.2346140000000001
	.quad	0x40229db317efe0ce              # double 9.3080069999999999
	.quad	0x401a78283d35eb74              # double 6.6173409999999997
	.quad	0x400cb972474538ef              # double 3.5905499999999999
	.quad	0x3ffd26a11ec918e3              # double 1.821931
	.quad	0x401ab2684cf0739b              # double 6.674226
	.quad	0x4015947ae147ae14              # double 5.3949999999999996
	.quad	0x4001a26bb55ac040              # double 2.204307
	.quad	0x401f2e2e2b8c75c5              # double 7.7950980000000003
	.quad	0x4017b472c0e7bc3c              # double 5.9262189999999997
	.quad	0x4013535c5b4aa971              # double 4.8314069999999996
	.quad	0x4011efb6134ce3de              # double 4.4840929999999997
	.quad	0x4011fb7dc7abfb9c              # double 4.4955970000000001
	.quad	0x40162374794ea077              # double 5.534624
	.quad	0x402394cc6822ff09              # double 9.7906220000000008
	.quad	0x3fbe84167a95c854              # double 0.119203
	.quad	0x401f9414e7ee9143              # double 7.8946110000000002
	.quad	0x40139b71fbc5de9c              # double 4.901802
	.quad	0x40168895d0b73d19              # double 5.6333840000000004
	.quad	0x40091f572de43ed9              # double 3.1403029999999998
	.quad	0x4009cd5b6805a2d7              # double 3.2252719999999999
	.quad	0x40006999567dbb17              # double 2.0515620000000001
	.quad	0x40206154003254e7              # double 8.1900940000000002
	.quad	0x401235974e65bea1              # double 4.5523350000000002
	.quad	0x4022a6807bbb6241              # double 9.3251989999999996
	.quad	0x402004e9c4545847              # double 8.0095960000000002
	.quad	0x40197a5870da5daf              # double 6.369478
	.quad	0x3fc7beec39799e52              # double 0.18551400000000001
	.quad	0x4011cd92b7fe08af              # double 4.450755
	.quad	0x3fe84d056c508b33              # double 0.75940200000000002
	.quad	0x401e1b1ee2435697              # double 7.526485
	.quad	0x4021a602ea960b70              # double 8.8242410000000007
	.quad	0x401a3a94bbe4473d              # double 6.5572080000000001
	.quad	0x401f3f42fe82517e              # double 7.8117789999999996
	.quad	0x400cf97460242d06              # double 3.621804
	.quad	0x401c25fa658c4bd3              # double 7.0370879999999998
	.quad	0x4022f49ba5e353f8              # double 9.4777500000000003
	.quad	0x3ffa2f81626b2f23              # double 1.636598
	.quad	0x3fcab4c7f3493858              # double 0.20864199999999999
	.quad	0x401dac1b54195cc8              # double 7.4180729999999996
	.quad	0x401228815e39713b              # double 4.5395560000000001
	.quad	0x400388d3ae685db7              # double 2.4418099999999998
	.quad	0x4010f455a7d24181              # double 4.2386080000000002
	.quad	0x4022efc9363f572e              # double 9.4683320000000002
	.quad	0x3ff6f6ddaceee0f4              # double 1.43527
	.quad	0x4001845c358afc48              # double 2.189629
	.quad	0x3ff7b04ff43419e3              # double 1.480545
	.quad	0x401d600e6afcce1c              # double 7.3438049999999997
	.quad	0x3ff72c7fbacb4289              # double 1.448364
	.quad	0x3ff8771865519371              # double 1.5290760000000001
	.quad	0x3ff397e77d523b36              # double 1.224586
	.quad	0x3ff2efa615a8deb1              # double 1.183508
	.quad	0x402159d451fc4c16              # double 8.6754479999999994
	.quad	0x4017b7d1351159c5              # double 5.9295090000000004
	.quad	0x4012868e820e6299              # double 4.6314029999999997
	.quad	0x4003368405b39e28              # double 2.4016190000000002
	.quad	0x401bff4e4430b179              # double 6.9993220000000003
	.quad	0x400281f7d73c9258              # double 2.3134610000000002
	.quad	0x400e498bb4d48883              # double 3.785911
	.quad	0x401638e60807357e              # double 5.5555649999999996
	.quad	0x4010042070b8cfc0              # double 4.0040300000000002
	.quad	0x401081240746455f              # double 4.1261140000000003
	.quad	0x400acd35a858793e              # double 3.3502000000000001
	.quad	0x4013dff3f0fe047d              # double 4.9687039999999998
	.quad	0x401b150225742dcf              # double 6.7705159999999998
	.quad	0x40132eca686e7e63              # double 4.7956940000000001
	.quad	0x400b242aed139431              # double 3.3926599999999998
	.quad	0x4017574299d883ba              # double 5.8352149999999998
	.quad	0x3ffb3d1569f49060              # double 1.702413
	.quad	0x4020c75cf2495e18              # double 8.3893810000000002
	.quad	0x40203bfdb4cc2507              # double 8.1171699999999998
	.quad	0x4022c44a4095f245              # double 9.3833789999999996
	.quad	0x4005af48c2e770bd              # double 2.710588
	.quad	0x4022f4b90214ad36              # double 9.4779739999999997
	.quad	0x401e6fe0ce0b912e              # double 7.6092560000000002
	.quad	0x40072ff9f87f023f              # double 2.8984260000000002
	.quad	0x3fd3121682f94424              # double 0.29797899999999999
	.quad	0x4008f7e23f24d8fd              # double 3.1210369999999998
	.quad	0x4022adc6195464dc              # double 9.3394019999999997
	.quad	0x3fdab18548a9bcfd              # double 0.41708499999999998
	.quad	0x401929df1172ef0b              # double 6.2908900000000001
	.quad	0x4011cae03b3e9a70              # double 4.4481210000000004
	.quad	0x3fe463dc486ad2dd              # double 0.63719000000000003
	.quad	0x400a90d5a5b9628d              # double 3.3207200000000001
	.quad	0x3ffc6c1094a2b9d4              # double 1.776383
	.quad	0x4023abd5dc400757              # double 9.8356159999999999
	.quad	0x3feeb81b64e05469              # double 0.95997399999999999
	.quad	0x400bdc64345cfedf              # double 3.4826130000000002
	.quad	0x4008d8066c2acb86              # double 3.1054810000000002
	.quad	0x4020b69899bf5947              # double 8.3566330000000004
	.quad	0x40173840181e03f7              # double 5.804932
	.quad	0x3fa40e1719f7f8cb              # double 0.039170000000000003
	.quad	0x3fd2f25e56cd6c2f              # double 0.296043
	.quad	0x40218e81cb46bacf              # double 8.7783339999999992
	.quad	0x3ffe20b6f9fcb0c0              # double 1.882987
	.quad	0x40191eee52589268              # double 6.2802059999999997
	.quad	0x40121831ad2135db              # double 4.5236270000000003
	.quad	0x3fdde2435696e58a              # double 0.46693499999999999
	.quad	0x400f549731098d47              # double 3.9163039999999998
	.quad	0x3fff85aa2e3c536d              # double 1.9701329999999999
	.quad	0x4022f6c1c1d6cf85              # double 9.4819469999999999
	.quad	0x3fa239c51dabe271              # double 0.035596999999999997
	.quad	0x4023d1287c200c0f              # double 9.9085119999999999
	.quad	0x4002050ce4ead0c4              # double 2.2524660000000001
	.quad	0x3ffb28f9f44d4456              # double 1.6975039999999999
	.quad	0x3fbad3a604e1e710              # double 0.104792
	.quad	0x4020a84449dbec25              # double 8.3286460000000009
	.quad	0x400bce9899bf5947              # double 3.4758770000000001
	.quad	0x3fd00e12e83a109d              # double 0.250859
	.quad	0x4017089a02752546              # double 5.7584
	.quad	0x4010d7820a30db6a              # double 4.2104569999999999
	.quad	0x4007b852f7f498c4              # double 2.9650020000000001
	.quad	0x3ff469845dc83233              # double 1.2757609999999999
	.quad	0x4016731e3a7daa50              # double 5.6124200000000002
	.quad	0x400fee019b0ab2e1              # double 3.9912139999999998
	.quad	0x4022d378cc9a77e6              # double 9.4130310000000001
	.quad	0x3ff429f8c21e1d21              # double 1.2602469999999999
	.quad	0x3fdf9d51b4fe79ee              # double 0.493977
	.quad	0x400eb5a3a08398a6              # double 3.8386909999999999
	.quad	0x3fefe8db8bac710d              # double 0.99717500000000003
	.quad	0x4012665ba6efc372              # double 4.5999590000000001
	.quad	0x401614fce746cb96              # double 5.5204959999999996
	.quad	0x3ff1885b18548a9c              # double 1.09579
	.quad	0x4019cc4cdfaca362              # double 6.4495120000000004
	.quad	0x40154e08f2170931              # double 5.326206
	.quad	0x4003e984e3ffef39              # double 2.489023
	.quad	0x40163f648c7192ea              # double 5.5619069999999997
	.quad	0x3fc507bfe7e1fc09              # double 0.164299
	.quad	0x3ff88e8c8abd5dc4              # double 1.534802
	.quad	0x40066f8ad2567989              # double 2.8044639999999998
	.quad	0x40150aff2a172abf              # double 5.2607390000000001
	.quad	0x401fbd8622c45027              # double 7.9350820000000004
	.quad	0x3fae92923e5b8562              # double 0.059712000000000001
	.quad	0x4021ead6238da3c2              # double 8.9586649999999999
	.quad	0x4021e2bead4f5904              # double 8.9428610000000006
	.quad	0x3fee7ae9ab29e4d6              # double 0.95250400000000002
	.quad	0x3ff46b4a66559f6f              # double 1.2761940000000001
	.quad	0x4019c3a57eaa2a0b              # double 6.4410610000000004
	.quad	0x402281bcfd4bf099              # double 9.2533949999999994
	.quad	0x4013514bdfd2630f              # double 4.8293910000000002
	.quad	0x3ff55cdb37c99ae9              # double 1.33517
	.quad	0x3ffb45ff1d81f106              # double 1.7045889999999999
	.quad	0x401767bfe7e1fc09              # double 5.851318
	.quad	0x402135987c6327ee              # double 8.6046790000000009
	.quad	0x3ff556cd6c2efd44              # double 1.3336920000000001
	.quad	0x40211333764f11b6              # double 8.5375019999999999
	.quad	0x401231e8a2ec28b3              # double 4.5487390000000003
	.quad	0x3ff423c105186db5              # double 1.258729
	.quad	0x401beacc92146a1a              # double 6.9792959999999997
	.quad	0x40013b8a19c9d5a2              # double 2.1540720000000002
	.quad	0x3ff861c79b34a44c              # double 1.5238719999999999
	.quad	0x40183270b06c43f6              # double 6.049258
	.quad	0x4011769ec2ce464a              # double 4.3658400000000004
	.quad	0x401185a20ddc6195              # double 4.3805009999999998
	.quad	0x3ff68e3ac0c62e4d              # double 1.409724
	.quad	0x4023fa89b951c5c5              # double 9.9893319999999992
	.quad	0x40134e76427c7c52              # double 4.8266229999999997
	.quad	0x40161e5a35d67ba2              # double 5.5296409999999998
	.quad	0x4014851a005c4652              # double 5.129982
	.quad	0x400909dbec2480e9              # double 3.1298140000000001
	.quad	0x401868709741d085              # double 6.1019920000000001
	.quad	0x3fc1ac3eb7cbb3c8              # double 0.138069
	.quad	0x3ff50cec41dd1a22              # double 1.315655
	.quad	0x4011445aa2e3c537              # double 4.3167520000000001
	.quad	0x4022f104f6dfc5ce              # double 9.4707410000000003
	.quad	0x3ff0ef30a4e379b7              # double 1.0583959999999999
	.quad	0x40112e81882adc4d              # double 4.2954160000000003
	.quad	0x400cbf8769ec2ce4              # double 3.5935199999999998
	.quad	0x40130a8f3a9b0681              # double 4.7603119999999999
	.quad	0x40034a7e73a365cb              # double 2.4113739999999999
	.quad	0x3f85c7cd898b2e9d              # double 0.010635
	.quad	0x3fff732f01754b06              # double 1.9656210000000001
	.quad	0x402260de2ac32229              # double 9.1891949999999998
	.quad	0x401b6cb039ef0f17              # double 6.856141
	.quad	0x400ff1b2e59af9ec              # double 3.993017
	.quad	0x3fd517fc7607c41a              # double 0.32958900000000002
	.quad	0x4004b9a176ddacef              # double 2.5906400000000001
	.quad	0x3fe90ad46f587d70              # double 0.78257200000000005
	.quad	0x4020a8fb43d89ce5              # double 8.3300420000000006
	.quad	0x400861aef6f8f041              # double 3.0476969999999999
	.quad	0x40145baa582dbe7f              # double 5.0895169999999998
	.quad	0x401f53cea6c1a049              # double 7.8318430000000001
	.quad	0x4014309c7ffde721              # double 5.047472
	.quad	0x3fc2159817b95a29              # double 0.14128399999999999
	.quad	0x401785831f03d146              # double 5.8803830000000001
	.quad	0x402042fcac8e68e4              # double 8.1308340000000001
	.quad	0x401bce43ed959a31              # double 6.9514310000000004
	.quad	0x400958055fbb517a              # double 3.1679789999999999
	.quad	0x3fea620ee8d10f52              # double 0.82447000000000004
	.quad	0x3fd03d102bc72e27              # double 0.25372699999999998
	.quad	0x402342f61ed5ae1d              # double 9.6307840000000002
	.quad	0x40000e5d5b24e9c4              # double 2.0070139999999999
	.quad	0x401416eb0b7c3505              # double 5.0223810000000002
	.quad	0x4020c4007570c565              # double 8.382816
	.quad	0x401ba53e707e175d              # double 6.9113709999999999
	.quad	0x402222528ae74f2f              # double 9.0670359999999999
	.quad	0x3fd7b1a6d698fe69              # double 0.37021799999999999
	.quad	0x4020852d44dca8e3              # double 8.2601110000000002
	.quad	0x4009df3f961804da              # double 3.2340080000000002
	.quad	0x40202cdb37c99ae9              # double 8.0876099999999997
	.quad	0x4021fdb530ced4e5              # double 8.9955230000000004
	.quad	0x400bf9fc2a8869c6              # double 3.4970629999999998
	.quad	0x40230abf11f926c8              # double 9.5209890000000001
	.quad	0x40119bb7b6bb1290              # double 4.4020679999999999
	.quad	0x401f7bff47735c18              # double 7.8710909999999998
	.quad	0x40227afc8b0079a3              # double 9.2402080000000009
	.quad	0x400a0e275ab7dc7b              # double 3.2569110000000001
	.quad	0x401dc35158b827fa              # double 7.4407399999999999
	.quad	0x4022e35d249e44fa              # double 9.44407
	.quad	0x40214b3aeee95747              # double 8.6469339999999999
	.quad	0x4015cbc23315d702              # double 5.4489830000000001
	.quad	0x4001b3affb04ee7c              # double 2.2127379999999999
	.quad	0x401027df19d66adb              # double 4.0389369999999998
	.quad	0x40012ccff21b3aef              # double 2.146881
	.quad	0x3ff911c193b3a68b              # double 1.566835
	.quad	0x40029df5cf2495e1              # double 2.3271289999999998
	.quad	0x3fff744a1f080304              # double 1.9658910000000001
	.quad	0x400682856605ee57              # double 2.8137310000000002
	.quad	0x4020b38ef34d6a16              # double 8.3506999999999998
	.quad	0x401df7b02d59d55e              # double 7.4918829999999996
	.quad	0x40203aea747d805e              # double 8.1150699999999993
	.quad	0x400f0a1c68ec52a4              # double 3.879937
	.quad	0x3ff851aa821f2991              # double 1.519938
	.quad	0x40031335d249e450              # double 2.3843800000000002
	.quad	0x4013570b8cfbfc65              # double 4.8350049999999998
	.quad	0x40214b990afe60c4              # double 8.6476520000000007
	.quad	0x3fd194d940789614              # double 0.27471000000000001
	.quad	0x4021f9bf9c62a1b6              # double 8.9877900000000004
	.quad	0x4004157eed45e918              # double 2.5104959999999998
	.quad	0x3fefea704bc27632              # double 0.99736800000000003
	.quad	0x3fef96744b2b777d              # double 0.98711599999999999
	.quad	0x4021a4fe9b7bf1e9              # double 8.8222550000000002
	.quad	0x4022dd1611ba3ca7              # double 9.4318089999999994
	.quad	0x3fe0334e7685985b              # double 0.50626300000000002
	.quad	0x4020638c5436b8fa              # double 8.1944300000000005
	.quad	0x4010227674d16335              # double 4.0336550000000004
	.quad	0x3fbc6c332f01754b              # double 0.111026
	.quad	0x401e539e6ab9b23e              # double 7.5816590000000001
	.quad	0x4018c0fe8ab4fa48              # double 6.1884709999999998
	.quad	0x401643fc43b2dd37              # double 5.5663919999999996
	.quad	0x401183854046412d              # double 4.3784380000000001
	.quad	0x3ffa334a44c7b02d              # double 1.6375219999999999
	.quad	0x3ff27daf8df7a4e8              # double 1.1556850000000001
	.quad	0x40178fbe76c8b439              # double 5.8903749999999997
	.quad	0x3ff34a65492ff4ba              # double 1.2056629999999999
	.quad	0x402275184c271fff              # double 9.2287009999999992
	.quad	0x402146fb6dca07f6              # double 8.6386369999999992
	.quad	0x3ff5a5f202107b78              # double 1.3530139999999999
	.quad	0x40194a048e043a21              # double 6.3222829999999997
	.quad	0x4022bd6abde3fbbd              # double 9.3699549999999991
	.quad	0x401ab757928e0c9e              # double 6.6790450000000003
	.quad	0x40237edd26b723ee              # double 9.7477809999999998
	.quad	0x401c4d74927913e8              # double 7.0756399999999999
	.quad	0x400af04577d95571              # double 3.3673199999999999
	.quad	0x4015130b9dc2f406              # double 5.268599
	.quad	0x40032069e7fb267c              # double 2.3908269999999998
	.quad	0x4019ee3ac0c62e4d              # double 6.4826459999999999
	.quad	0x401604345cfede98              # double 5.5041060000000002
	.quad	0x3fe01e3c968943e1              # double 0.503691
	.quad	0x3ff215c74751ce29              # double 1.130317
	.quad	0x4021f75f91600f34              # double 8.9831509999999994
	.quad	0x401b78abd5dc4007              # double 6.8678429999999997
	.quad	0x401ce4bd33d29564              # double 7.2233780000000003
	.quad	0x401d088509bf9c63              # double 7.2583200000000003
	.quad	0x4011ac81908e581d              # double 4.418463
	.quad	0x40178c575c0767d3              # double 5.8870519999999997
	.quad	0x400ca0e9d51b4fe8              # double 3.5785710000000002
	.quad	0x4008bbd7b2031ceb              # double 3.09172
	.quad	0x401e9314445aa2e4              # double 7.6436320000000002
	.quad	0x401b5957cd466f50              # double 6.8372489999999999
	.quad	0x40236e718a86d71f              # double 9.7157099999999996
	.quad	0x4007e88f861a60d4              # double 2.9885549999999999
	.quad	0x40146b58d1526d8b              # double 5.1048309999999999
	.quad	0x402283841248d7e0              # double 9.2568669999999997
	.quad	0x402133254e6e221d              # double 8.5998940000000008
	.quad	0x400e2aa7589efd87              # double 3.7708270000000002
	.quad	0x4012c59ff4fd6d7f              # double 4.6929930000000004
	.quad	0x40202cd2b2bfdb4d              # double 8.0875450000000004
	.quad	0x40103974e65bea0c              # double 4.0561100000000003
	.quad	0x40131fff79c842fa              # double 4.7812479999999997
	.quad	0x4007f9ecf6380022              # double 2.9970340000000002
	.quad	0x40173ba7b9170d63              # double 5.8082570000000002
	.quad	0x4011820f6f08cc57              # double 4.3770119999999997
	.quad	0x4020efef9db22d0e              # double 8.4686249999999994
	.quad	0x400d51ed9dfdac69              # double 3.6650040000000002
	.quad	0x400d5b291b823c86              # double 3.6695120000000001
	.quad	0x401f3c14c660a201              # double 7.8086729999999997
	.quad	0x40164e032db1e9f2              # double 5.5761839999999996
	.quad	0x3ffdbb395c422036              # double 1.858209
	.quad	0x3ff134b838c111ae              # double 1.0753710000000001
	.quad	0x3fe38a7e73a365cb              # double 0.61065599999999998
	.quad	0x400974467381d7dc              # double 3.181775
	.quad	0x4016969be09bb6aa              # double 5.6470789999999997
	.quad	0x3ffc774eebf65dc0              # double 1.779128
	.quad	0x401c891bc5586445              # double 7.1338949999999999
	.quad	0x4015b31f8a0902de              # double 5.424925
	.quad	0x402233c23315d702              # double 9.1010910000000003
	.quad	0x401ffed7c6fbd274              # double 7.9988700000000001
	.quad	0x400aec436fc158fb              # double 3.3653629999999999
	.quad	0x400ecd8904f6dfc6              # double 3.8503590000000001
	.quad	0x3ff497abb8800eae              # double 1.287029
	.quad	0x402121eb6390c910              # double 8.5662489999999991
	.quad	0x3ff3fbff8a8f3a9b              # double 1.249023
	.quad	0x4011d0e1719f7f8d              # double 4.4539850000000003
	.quad	0x40145eea63b688be              # double 5.0926910000000003
	.quad	0x3ff2272b884406c0              # double 1.134563
	.quad	0x3fca52a411c2a023              # double 0.205647
	.quad	0x40135f39d1b2e59b              # double 4.842994
	.quad	0x3ff1c724b76f6d76              # double 1.111119
	.quad	0x400a89c0a8d21bc1              # double 3.3172619999999999
	.quad	0x401716c93a711516              # double 5.7722519999999999
	.quad	0x40108a05dd8f92b0              # double 4.1347880000000004
	.quad	0x3ff8d539b888722a              # double 1.552057
	.quad	0x40035ccea28fe261              # double 2.4203160000000001
	.quad	0x40180c84f8f8a4c2              # double 6.0122260000000001
	.quad	0x40179a44c7b02d5a              # double 5.9006530000000001
	.quad	0x3fd6fc9795b35b0c              # double 0.35916700000000001
	.quad	0x4020c4c22ee4191a              # double 8.3842940000000006
	.quad	0x4017b8fd9fd36f7e              # double 5.9306549999999998
	.quad	0x4013c2e5de15ca6d              # double 4.9403300000000003
	.quad	0x400a0d20afa2f05a              # double 3.2564099999999998
	.quad	0x400915182a9930be              # double 3.1353
	.quad	0x4022f3fbbd7b2032              # double 9.4765300000000003
	.quad	0x401cf2b4528283d3              # double 7.2370159999999997
	.quad	0x40233c538ef34d6a              # double 9.6178249999999998
	.quad	0x400af3a4723aafff              # double 3.3689659999999999
	.quad	0x401c77192ea52ef9              # double 7.1163069999999999
	.quad	0x3ff951fb3fa6defc              # double 1.5825149999999999
	.quad	0x3ff3a3a29c779a6b              # double 1.2274499999999999
	.quad	0x3feba81dc0db2703              # double 0.86427200000000004
	.quad	0x4016a65ba6efc372              # double 5.6624590000000001
	.quad	0x401c276ee73e681b              # double 7.0385090000000003
	.quad	0x40169ad70e6f2e8c              # double 5.651211
	.quad	0x402007fac1d29dc7              # double 8.0155849999999997
	.quad	0x401d8925785f8d2e              # double 7.3839319999999997
	.quad	0x401017cc39ffd60f              # double 4.0232400000000004
	.quad	0x40168640639d5e4a              # double 5.6311049999999998
	.quad	0x4023d7c0b1359792              # double 9.9213920000000009
	.quad	0x4018b543f1c75819              # double 6.1770170000000002
	.quad	0x40144a4873365882              # double 5.0725420000000003
	.quad	0x401843ea704bc276              # double 6.0663239999999998
	.quad	0x3fed16bdb1a6d699              # double 0.909026
	.quad	0x4013138cda6e75ff              # double 4.7690919999999997
	.quad	0x40202289b951c5c5              # double 8.0674569999999992
	.quad	0x3fe1113404ea4a8c              # double 0.53334999999999999
	.quad	0x3fae8c8abd5dc400              # double 0.059665999999999997
	.quad	0x401cb72324c83665              # double 7.1788449999999999
	.quad	0x401c575579af1887              # double 7.0852870000000001
	.quad	0x4010832c1f42bb66              # double 4.1280979999999996
	.quad	0x4012aaeee957470f              # double 4.6669270000000003
	.quad	0x3ff9fc74fb549f95              # double 1.6241350000000001
	.quad	0x40088d173fb7a5f4              # double 3.068892
	.quad	0x4009a62aa19439de              # double 3.2061359999999999
	.quad	0x40208a80f12c27a6              # double 8.2705149999999996
	.quad	0x4017315011904b3c              # double 5.7981569999999998
	.quad	0x4016d46e4c0df58c              # double 5.707452
	.quad	0x400cc75147f13059              # double 3.5973229999999998
	.quad	0x401973c46d82ba5a              # double 6.363054
	.quad	0x402256e41919ac79              # double 9.1697089999999992
	.quad	0x402164d6a161e4f7              # double 8.6969499999999993
	.quad	0x4004012f09d8c6d6              # double 2.500578
	.quad	0x401b181450efdc9c              # double 6.7735149999999997
	.quad	0x4006ea9c560c7c0f              # double 2.8645559999999999
	.quad	0x402124868b9fdbd3              # double 8.571339
	.quad	0x40077d334c5da6a4              # double 2.9361329999999999
	.quad	0x400aae696a26e547              # double 3.335162
	.quad	0x40051b2dd377e1b9              # double 2.638271
	.quad	0x401bface24bba12b              # double 6.9949269999999997
	.quad	0x3fe61a6937d1fe65              # double 0.690724
	.quad	0x40089e98dcdb37ca              # double 3.0774400000000002
	.quad	0x4022246b69db65ed              # double 9.0711320000000004
	.quad	0x3ffb0522ea0fd3b3              # double 1.6887540000000001
	.quad	0x3feeebce8533b107              # double 0.96628499999999994
	.quad	0x4018bf86a098915c              # double 6.1870370000000001
	.quad	0x400a69528f190d17              # double 3.3014269999999999
	.quad	0x40171b78cc9a77e6              # double 5.7768280000000001
	.quad	0x4020063dc486ad2e              # double 8.0121900000000004
	.quad	0x3fac58255b035bd5              # double 0.055359999999999999
	.quad	0x400d1bd0e12e83a1              # double 3.638582
	.quad	0x4020aa7ae9ab29e5              # double 8.3329690000000003
	.quad	0x4021589e12a51e32              # double 8.6730809999999998
	.quad	0x40142d1bb4916ca4              # double 5.0440509999999996
	.quad	0x3ff5f7f6b1a2a4db              # double 1.373038
	.quad	0x400a341a6937d1fe              # double 3.2754409999999998
	.quad	0x401b52031ceaf252              # double 6.8300900000000002
	.quad	0x40166dc768dfbd6a              # double 5.6072059999999997
	.quad	0x40229357c4e2f380              # double 9.2877790000000005
	.quad	0x4005adb940fecdd1              # double 2.7098260000000001
	.quad	0x400aff3b645a1cac              # double 3.374625
	.quad	0x4016635daad60200              # double 5.5970370000000003
	.quad	0x401a1b70ac3a860e              # double 6.5267970000000002
	.quad	0x4002e5058dde7a74              # double 2.3618269999999999
	.quad	0x4010ac5f394b7b29              # double 4.1683320000000004
	.quad	0x40199f72b4528284              # double 6.4057110000000002
	.quad	0x400d9794a6eb91b4              # double 3.699014
	.quad	0x400387bd48cb4aed              # double 2.4412790000000002
	.quad	0x401c777b7c7820a3              # double 7.116682
	.quad	0x40119a7e30878748              # double 4.4008719999999997
	.quad	0x3ffab8fabda0dfdf              # double 1.670161
	.quad	0x4017596aad1d041d              # double 5.8373210000000002
	.quad	0x3ff8f8140dd3fe19              # double 1.5605659999999999
	.quad	0x4020109374bc6a7f              # double 8.032375
	.quad	0x4016c02d9cf13cef              # double 5.6876740000000003
	.quad	0x402369c68ec52a41              # double 9.7065929999999998
	.quad	0x40210b8e6d15ad10              # double 8.5225709999999992
	.quad	0x4006409784ec636b              # double 2.781539
	.quad	0x4020de5e02ea960b              # double 8.4343109999999992
	.quad	0x4023cd0a02b84125              # double 9.9004670000000007
	.quad	0x3fef807570c564f9              # double 0.98443099999999994
	.quad	0x3ffc695d91ab8e8f              # double 1.7757240000000001
	.quad	0x40152f034b0e1b4c              # double 5.2959110000000003
	.quad	0x4018d7867f0aa21a              # double 6.2104739999999996
	.quad	0x401d906b37867f0b              # double 7.3910340000000003
	.quad	0x4002ebc48f10a99b              # double 2.3651209999999998
	.quad	0x3ff455e5aff2a173              # double 1.2709710000000001
	.quad	0x40161245b291b824              # double 5.5178440000000002
	.quad	0x3ff6a57c914b167f              # double 1.415402
	.quad	0x401ce765ba6efc37              # double 7.2259739999999999
	.quad	0x40208aaf5771001d              # double 8.2708689999999994
	.quad	0x40190904b3c3e74b              # double 6.258807
	.quad	0x402026c0724b76f7              # double 8.0756870000000003
	.quad	0x4011ee736049ecb3              # double 4.4828619999999999
	.quad	0x4022205f6ba0620b              # double 9.0632280000000005
	.quad	0x401208509bf9c62a              # double 4.5081199999999999
	.quad	0x4023f44ae85b9e8c              # double 9.9771339999999995
	.quad	0x4011c720c8cd63cc              # double 4.4444610000000004
	.quad	0x40012431bde82d7b              # double 2.1426729999999998
	.quad	0x4016a8800eae18ad              # double 5.6645510000000003
	.quad	0x401e33a604e1e710              # double 7.5504379999999998
	.quad	0x4010d32acfb762d8              # double 4.2062179999999998
	.quad	0x3fd5e94680171194              # double 0.34236299999999997
	.quad	0x4023e2f8bdec5f39              # double 9.9433039999999994
	.quad	0x401d3c17225b749b              # double 7.3086820000000001
	.quad	0x402003b0813cab82              # double 8.007206
	.quad	0x3fe44b1ab0856e69              # double 0.63416799999999995
	.quad	0x402336f62f9ca5be              # double 9.6073470000000007
	.quad	0x401d5e60807357e6              # double 7.3421649999999996
	.quad	0x401e3ad7d7c2ca15              # double 7.5574640000000004
	.quad	0x40044eb2d0a24463              # double 2.538427
	.quad	0x402130887229e908              # double 8.5947910000000007
	.quad	0x3fdbf9d6f112fd33              # double 0.43712400000000001
	.quad	0x400f82491afc04c9              # double 3.9386160000000001
	.quad	0x4016380f12c27a63              # double 5.5547449999999996
	.quad	0x40168b7b6bb12902              # double 5.6362129999999997
	.quad	0x40232b28d8665e03              # double 9.5842960000000001
	.quad	0x40210801f75104d5              # double 8.5156399999999994
	.quad	0x4014b76e6106ab15              # double 5.1791320000000001
	.quad	0x401a972324c83665              # double 6.6475949999999999
	.quad	0x40163d07c84b5dcc              # double 5.5595999999999997
	.quad	0x401a82cf95d4e8fb              # double 6.627745
	.quad	0x40239c200c0f01fc              # double 9.8049320000000008
	.quad	0x3ffb618efbb0e5e6              # double 1.7113179999999999
	.quad	0x401f63f9a49c2c1b              # double 7.8476319999999999
	.quad	0x3fd32584f4c6e6da              # double 0.29916500000000001
	.quad	0x3ffeafc58ab92c06              # double 1.917913
	.quad	0x3fe5380ecfa69be1              # double 0.66309300000000004
	.quad	0x3ff7de0b4e11dbcb              # double 1.4917100000000001
	.quad	0x4023f74d1633482c              # double 9.9830100000000001
	.quad	0x401ebada76d97b31              # double 7.682474
	.quad	0x40172d9ba1b19610              # double 5.7945390000000003
	.quad	0x40206ef88b977857              # double 8.2167399999999997
	.quad	0x3fd27ced916872b0              # double 0.28887499999999999
	.quad	0x40239c7021d10b20              # double 9.8055430000000001
	.quad	0x401d00e7bc3c5bd1              # double 7.2508840000000001
	.quad	0x4014abd61f5be5da              # double 5.1678090000000001
	.quad	0x401b3aa4fca42aed              # double 6.8072699999999999
	.quad	0x401d3df505d0fa59              # double 7.310505
	.quad	0x4011d6138fffbce4              # double 4.4590589999999999
	.quad	0x3ff1fbeb9e492bc3              # double 1.124004
	.quad	0x401b208d8ec95bff              # double 6.78179
	.quad	0x40063ea91d9b1b7a              # double 2.7805960000000001
	.quad	0x40228929aa1d755c              # double 9.2678960000000003
	.quad	0x40123362e9036439              # double 4.5501820000000004
	.quad	0x3ffeacebbba55d1c              # double 1.9172169999999999
	.quad	0x4019b4623d0bfa09              # double 6.4261559999999998
	.quad	0x4001b22c01e68a0d              # double 2.2119979999999999
	.quad	0x40060e6fb4c3c18b              # double 2.7570489999999999
	.quad	0x3ff31f4e4430b179              # double 1.1951430000000001
	.quad	0x4020a63a19008206              # double 8.324662
	.quad	0x40215c86ad2dcb14              # double 8.6807149999999992
	.quad	0x3ff0022036006d0d              # double 1.0005189999999999
	.quad	0x40228c70eb24a6a8              # double 9.2742989999999991
	.quad	0x40217a1f2990f302              # double 8.7385190000000001
	.quad	0x400760a5269595ff              # double 2.9221900000000001
	.quad	0x3ff6082be8bc169c              # double 1.376995
	.quad	0x4014c5d851654d62              # double 5.1932080000000003
	.quad	0x400082962cfd8f0c              # double 2.0637629999999998
	.quad	0x401b65a964e8b7e5              # double 6.8492790000000001
	.quad	0x401f9c38f366948a              # double 7.9025610000000004
	.quad	0x3ff2290795f676ea              # double 1.1350169999999999
	.quad	0x401c8ae0c1765775              # double 7.1356229999999998
	.quad	0x3ffd37bf1e8e6080              # double 1.8261099999999999
	.quad	0x40111ca9ac365450              # double 4.2779910000000001
	.quad	0x4023b9b2a27f1b69              # double 9.8626909999999998
	.quad	0x4022bfe80389f83c              # double 9.3748170000000001
	.quad	0x3ff5b86e3b46fdeb              # double 1.3575269999999999
	.quad	0x3fd06ce789e774ef              # double 0.25664700000000001
	.quad	0x3ff3824d4cb9ecf6              # double 1.219312
	.quad	0x40138cf28c79f666              # double 4.8876439999999999
	.quad	0x4002b3b107746888              # double 2.3377400000000002
	.quad	0x3fd90e51d25aab47              # double 0.39149899999999999
	.quad	0x4010356323bbc6eb              # double 4.052136
	.quad	0x401b8eae18ac9f30              # double 6.8893360000000001
	.quad	0x4020a023e9ea1405              # double 8.3127739999999992
	.quad	0x400a75e17e34b945              # double 3.3075589999999999
	.quad	0x400bd3ef6b5d462c              # double 3.4784839999999999
	.quad	0x3ff27d5a9eb2074f              # double 1.1556040000000001
	.quad	0x4012baae6c8f7553              # double 4.6823059999999996
	.quad	0x4013b9539b888723              # double 4.9309830000000003
	.quad	0x400f261847f56217              # double 3.8936009999999999
	.quad	0x3ffba8dc981beb18              # double 1.728726
	.quad	0x4015ff56a7ac81d4              # double 5.4993540000000003
	.quad	0x4020aa75ee99a62f              # double 8.3329310000000003
	.quad	0x401ab9bed30f062d              # double 6.6813919999999998
	.quad	0x3ff4baaef2c73259              # double 1.295577
	.quad	0x40217d78c436fc16              # double 8.7450620000000008
	.quad	0x401e2e2328f9f44d              # double 7.5450559999999997
	.quad	0x3fc4088509bf9c63              # double 0.15651000000000001
	.quad	0x3ff6b42aa9f7b5af              # double 1.4189860000000001
	.quad	0x400ad845564b6630              # double 3.3556010000000001
	.quad	0x401408bb0a2ca9ac              # double 5.0085259999999998
	.quad	0x40204421187e7c07              # double 8.1330650000000002
	.quad	0x3ff7980c308feac4              # double 1.474621
	.quad	0x3ff4cd1526d8b1dd              # double 1.3000689999999999
	.quad	0x4021dff950b955f8              # double 8.9374490000000009
	.quad	0x40201fd438d1d8a5              # double 8.0621659999999995
	.quad	0x40101aa3f034b0e2              # double 4.0260160000000003
	.quad	0x3ffc8bef8ceb356e              # double 1.7841640000000001
	.quad	0x4022126b723ee1bd              # double 9.0359759999999998
	.quad	0x4015d0d2c386d2ed              # double 5.4539289999999996
	.quad	0x401062c493426784              # double 4.0964530000000003
	.quad	0x3ff499524bfd2e94              # double 1.2874319999999999
	.quad	0x40126f5b5fa22707              # double 4.6087470000000001
	.quad	0x3feebc23315d701e              # double 0.96046600000000004
	.quad	0x40163ca7503b81b6              # double 5.5592319999999997
	.quad	0x402192b606b7aa26              # double 8.7865450000000003
	.quad	0x4015f9bcba301217              # double 5.4938840000000004
	.quad	0x3fe08a2877ee4e27              # double 0.51686500000000002
	.quad	0x400b1ade225fa659              # double 3.3881190000000001
	.quad	0x4022c0954a7f8013              # double 9.3761390000000002
	.quad	0x4023f8789613d31c              # double 9.9852950000000006
	.quad	0x4012370b8cfbfc65              # double 4.5537549999999998
	.quad	0x4023977ad4b2745c              # double 9.795859
	.quad	0x3feff540895d0b74              # double 0.99868800000000002
	.quad	0x4023a16aad1d041d              # double 9.8152670000000004
	.quad	0x4023ca93af74cd31              # double 9.8956579999999991
	.quad	0x4019c6b484d76ab6              # double 6.4440480000000004
	.quad	0x4011a79aae6c8f75              # double 4.4136759999999997
	.quad	0x40204117939a7c18              # double 8.1271330000000006
	.quad	0x4000a7000431bde8              # double 2.0815429999999999
	.quad	0x4021fd8c6d612c6b              # double 8.9952120000000004
	.quad	0x401b031a8ef77f28              # double 6.753031
	.quad	0x401fbe1eb4202d9d              # double 7.935664
	.quad	0x40226e9d7342edbb              # double 9.2160449999999994
	.quad	0x4022b69057d1782d              # double 9.3565699999999996
	.quad	0x4010fe7c06e19b91              # double 4.2485200000000001
	.quad	0x401616933a0407cc              # double 5.5220459999999996
	.quad	0x4007bb5aea3161a2              # double 2.9664820000000001
	.quad	0x4013bc60cbf2b23a              # double 4.9339630000000003
	.quad	0x4017d202d9cf13cf              # double 5.9550890000000001
	.quad	0x4020ad104d551d69              # double 8.3380150000000004
	.quad	0x4023457f737da61e              # double 9.6357379999999999
	.quad	0x4018d25072085b18              # double 6.2053849999999997
	.quad	0x40222c7bcc2938de              # double 9.0868819999999992
	.quad	0x4011f54434e3369c              # double 4.4895180000000003
	.quad	0x401f8942917507ea              # double 7.8840430000000001
	.quad	0x401b554866a11ec9              # double 6.8332839999999999
	.quad	0x3fe4b90ea9e6eeb7              # double 0.64759
	.quad	0x401591049235f80a              # double 5.3916190000000004
	.quad	0x401c594ea077036d              # double 7.0872140000000003
	.quad	0x401e5fef7c243dcd              # double 7.593687
	.quad	0x3ff6a7ded6ba8c58              # double 1.4159839999999999
	.quad	0x401cf7b7c7820a31              # double 7.2419120000000001
	.quad	0x3ffc91611ba3ca75              # double 1.785493
	.quad	0x3fb013879c4113c7              # double 0.062798000000000007
	.quad	0x3ff7d9ed7c6fbd27              # double 1.4907049999999999
	.quad	0x402120181e03f706              # double 8.5626840000000009
	.quad	0x4012225247cb70ac              # double 4.5335169999999998
	.quad	0x4021a9bf5946c333              # double 8.8315380000000001
	.quad	0x4023edcebfec13ba              # double 9.9644680000000001
	.quad	0x3ff669014b599aa6              # double 1.400636
	.quad	0x4011113b5bf6a0dc              # double 4.2668280000000003
	.quad	0x3ff4036da87a072d              # double 1.250837
	.quad	0x401122c450268901              # double 4.2839520000000002
	.quad	0x40234cac083126e9              # double 9.6497499999999991
	.quad	0x4003485c24c404a7              # double 2.4103319999999999
	.quad	0x40209fa615a8deb1              # double 8.311814
	.quad	0x3ff0f672b884406c              # double 1.060168
	.quad	0x4018f08787485e3e              # double 6.2348920000000003
	.quad	0x40009421c044284e              # double 2.07233
	.quad	0x400f3491f2dc2b0f              # double 3.9006690000000002
	.quad	0x4009e4ad794a6eb9              # double 3.236659
	.quad	0x40197dfa00e27e0f              # double 6.373024
	.quad	0x3fa24fa8b4bf8fcd              # double 0.035763999999999997
	.quad	0x3ff39caafbc1acde              # double 1.225749
	.quad	0x40163ce3150dae3e              # double 5.5594599999999996
	.quad	0x400fd2096787ce96              # double 3.977557
	.quad	0x40123eae9ee45c36              # double 4.5612130000000004
	.quad	0x4003f6e264e48627              # double 2.495549
	.quad	0x4015c537e2c55c96              # double 5.442596
	.quad	0x401451ede1198aec              # double 5.0800090000000004
	.quad	0x400c6c0053e2d624              # double 3.5527350000000002
	.quad	0x40212f9e16d6dc1a              # double 8.5930029999999995
	.quad	0x40194c6540cc78ea              # double 6.324605
	.quad	0x4016d894c447c30d              # double 5.7115049999999998
	.quad	0x4002f375c8d9f905              # double 2.3688769999999999
	.quad	0x401add04a2fcefaa              # double 6.7158379999999998
	.quad	0x401682d05f288484              # double 5.6277480000000004
	.quad	0x401fa3293d102bc7              # double 7.9093369999999998
	.quad	0x401575104d551d69              # double 5.3643200000000002
	.quad	0x400115caf2d7f951              # double 2.1356410000000001
	.quad	0x401cc2f48c2e770c              # double 7.1903860000000002
	.quad	0x40234bfe7e1fc090              # double 9.6484260000000006
	.quad	0x40158181e03f7058              # double 5.3764719999999997
	.quad	0x4020865de15ca6ca              # double 8.262435
	.quad	0x402172b68cef672c              # double 8.7240490000000008
	.quad	0x4009fec56d5cfaad              # double 3.2494000000000001
	.quad	0x4020efe0ef99806f              # double 8.4685129999999997
	.quad	0x3fff8ab4fa48301a              # double 1.9713639999999999
	.quad	0x40236ef5019f3c71              # double 9.7167130000000003
	.quad	0x4022f9183b60285f              # double 9.4865130000000004
	.quad	0x400f146dc5d63886              # double 3.8849749999999998
	.quad	0x40005d6494d50ebb              # double 2.0456020000000001
	.quad	0x400809d9d3458cd2              # double 3.00481
	.quad	0x40227193b3a68b1a              # double 9.2218300000000006
	.quad	0x401bb307af20ea5b              # double 6.9248339999999997
	.quad	0x400b094141e9af5c              # double 3.3795190000000002
	.quad	0x40131f1950331e3a              # double 4.7803699999999996
	.quad	0x40181d352220bc38              # double 6.0285229999999999
	.quad	0x402168f27bb2fec5              # double 8.7049749999999992
	.quad	0x40236983947496ab              # double 9.7060820000000003
	.quad	0x4021a9752977c88e              # double 8.8309719999999992
	.quad	0x3fde8ea39c51dabe              # double 0.47745599999999999
	.quad	0x400593fd933e35c6              # double 2.6972610000000001
	.quad	0x401504c6e6d9be4d              # double 5.2546650000000001
	.quad	0x3feb131ec0b56755              # double 0.84608399999999995
	.quad	0x4002d1f79420b3d5              # double 2.3525230000000001
	.quad	0x4023f708ede54b49              # double 9.9824900000000003
	.quad	0x401028db4890928a              # double 4.0398990000000001
	.quad	0x402104024b33daf9              # double 8.5078300000000002
	.quad	0x4019ea81dc0db270              # double 6.4790109999999999
	.quad	0x401e3f0aa21a719b              # double 7.5615639999999997
	.quad	0x4000ca3486f049aa              # double 2.0987330000000002
	.quad	0x4010e70a3d70a3d7              # double 4.225625
	.quad	0x4004580c308feac4              # double 2.5429919999999999
	.quad	0x4007f2ca57a786c2              # double 2.9935499999999999
	.quad	0x400ced44dca8e2e3              # double 3.6158540000000001
	.quad	0x40124dd82fd75e20              # double 4.5760199999999998
	.quad	0x4009f821af7d30ad              # double 3.2461579999999999
	.quad	0x400154cc25072086              # double 2.1664050000000001
	.quad	0x402161d323fee2ca              # double 8.6910640000000008
	.quad	0x3ff87a69be09bb6b              # double 1.5298860000000001
	.quad	0x4020c4f398e97072              # double 8.3846710000000009
	.quad	0x4021e388a8b08dd2              # double 8.9444020000000002
	.quad	0x4020e305b7cfe586              # double 8.443403
	.quad	0x4013ad45a5fc7e6b              # double 4.9192109999999998
	.quad	0x4022b52849cb252d              # double 9.3538230000000002
	.quad	0x4012bf4fd6d7e88a              # double 4.6868280000000002
	.quad	0x3ff8ee264e48626f              # double 1.5581419999999999
	.quad	0x4006a129cbab649d              # double 2.8286929999999999
	.quad	0x401de9da9c99285b              # double 7.4783730000000004
	.quad	0x4010c12f4cf4a559              # double 4.1886570000000001
	.quad	0x3ffbd1be6e653869              # double 1.738707
	.quad	0x3feccd855970b49e              # double 0.900088
	.quad	0x3fdfccc037931444              # double 0.49687199999999998
	.quad	0x4019f957470eb24a              # double 6.4934969999999996
	.quad	0x401b140aaeafab54              # double 6.7695720000000001
	.quad	0x40102ccea28fe261              # double 4.0437570000000003
	.quad	0x3ff38bf0995aaf79              # double 1.221665
	.quad	0x4010f7df5cf2495e              # double 4.2420629999999999
	.quad	0x4003b27fe4bcad9b              # double 2.4621580000000001
	.quad	0x40193e48e8a71de7              # double 6.3108250000000004
	.quad	0x400fda250f840182              # double 3.9815160000000001
	.quad	0x4001296d4c33b539              # double 2.1452279999999999
	.quad	0x4005e61e92923e5c              # double 2.7373630000000002
	.quad	0x4021cc484944ed70              # double 8.8989890000000003
	.quad	0x3fe0b4c7f3493858              # double 0.52206799999999998
	.quad	0x400b89aa1d755bcd              # double 3.4422190000000001
	.quad	0x40137dcf0307f23d              # double 4.8728600000000002
	.quad	0x40110aefb2aae297              # double 4.2606799999999998
	.quad	0x3ff4c1dd1a21ea36              # double 1.2973300000000001
	.quad	0x401ffcad57bc7f78              # double 7.9967550000000002
	.quad	0x401391a08bfc2225              # double 4.8922140000000001
	.quad	0x4012b4ec636b0963              # double 4.6766829999999997
	.quad	0x3fe8d8a979e16d6e              # double 0.77644800000000003
	.quad	0x3ffafb4d48882f0e              # double 1.686353
	.quad	0x4001e0913a4f8727              # double 2.2346520000000001
	.quad	0x400437ba6698bb4d              # double 2.5272109999999999
	.quad	0x401a9b1465e89225              # double 6.6514449999999998
	.quad	0x4023c9f90539fba4              # double 9.8944779999999994
	.quad	0x3fac299d883ba344              # double 0.055004999999999998
	.quad	0x3fe979b34a44c7b0              # double 0.79610599999999998
	.quad	0x401534bf8fcd67fd              # double 5.3015119999999998
	.quad	0x40060c9ea9a3d2d8              # double 2.7561619999999998
	.quad	0x401f7bb44e50c5eb              # double 7.8708049999999998
	.quad	0x40224683e425aee6              # double 9.1377249999999997
	.quad	0x400940ad03d9a954              # double 3.1565799999999999
	.quad	0x401b3b352a843809              # double 6.8078200000000004
	.quad	0x4022de3150dae3e7              # double 9.4339700000000004
	.quad	0x401733b7521144cc              # double 5.8005040000000001
	.quad	0x4006dfb9bed30f06              # double 2.8592409999999999
	.quad	0x402304b31c219eb6              # double 9.5091789999999996
	.quad	0x3ffb74bd76ee73e7              # double 1.7160010000000001
	.quad	0x400d2cc4ef88b978              # double 3.6468600000000002
	.quad	0x4021cc8366516db1              # double 8.8994400000000002
	.quad	0x40087ae147ae147b              # double 3.0600000000000001
	.quad	0x401fafc6540cc78f              # double 7.9216550000000003
	.quad	0x401fcdd15f02c4d6              # double 7.9509939999999997
	.quad	0x401cdba8826aa8eb              # double 7.2145099999999998
	.quad	0x40237b75c8d9f905              # double 9.7411329999999995
	.quad	0x401e4f82b1f687b1              # double 7.5776469999999997
	.quad	0x4023b50f1f57b41c              # double 9.853631
	.quad	0x401b702602c9081c              # double 6.8595199999999998
	.quad	0x40210a88effe2a3d              # double 8.5205760000000001
	.quad	0x4021c82795703f2d              # double 8.8909269999999996
	.quad	0x4005cdfbd6a593a3              # double 2.7255780000000001
	.quad	0x401fb859c8c9320e              # double 7.9300300000000004
	.quad	0x40023e6c4c5974e6              # double 2.2804799999999998
	.quad	0x401ca49667b5f1bf              # double 7.16073
	.quad	0x4018eb020c49ba5e              # double 6.2294999999999998
	.quad	0x400a3aa92e62131b              # double 3.2786430000000002
	.quad	0x4023e3599aa60914              # double 9.9440430000000006
	.quad	0x402049e6cd29131f              # double 8.1443390000000004
	.quad	0x400376f112fd32c6              # double 2.4330769999999999
	.quad	0x40119fb6dca07f67              # double 4.4059710000000001
	.quad	0x3feb68943e100608              # double 0.85651600000000006
	.quad	0x4020507c4199fe43              # double 8.1571979999999993
	.quad	0x3ffb8d0edc3bd599              # double 1.721938
	.quad	0x4020671cb89d6adf              # double 8.2013909999999992
	.quad	0x401ea55432873bc9              # double 7.6614539999999999
	.quad	0x402398f42fe82518              # double 9.7987380000000001
	.quad	0x400922b6ae7d566d              # double 3.14195
	.quad	0x400c6dac258d5843              # double 3.5535510000000001
	.quad	0x4017d738a3b57c4e              # double 5.9601769999999998
	.quad	0x3ffd33226c3b927d              # double 1.8249839999999999
	.quad	0x402258c77dd872f3              # double 9.1733969999999996
	.quad	0x4016c77d0f1f57b4              # double 5.6948129999999999
	.quad	0x40112d20296b3355              # double 4.2940680000000002
	.quad	0x4018d095af294dd7              # double 6.2036959999999999
	.quad	0x4016cc76d117b528              # double 5.6996719999999996
	.quad	0x400ba83ba3443d47              # double 3.4571450000000001
	.quad	0x402265360d024702              # double 9.1976779999999998
	.quad	0x40203622a2c23748              # double 8.1057330000000007
	.quad	0x401a45b4edb2f662              # double 6.5680730000000001
	.quad	0x401cecaff6d33094              # double 7.2311399999999999
	.quad	0x4007fa19008205ff              # double 2.9971179999999999
	.quad	0x4013af954eb13dfb              # double 4.921468
	.quad	0x4001f5ea67e846a6              # double 2.2450760000000001
	.quad	0x401a1ab474107315              # double 6.5260790000000002
	.quad	0x400cf1960fa15db3              # double 3.6179619999999999
	.quad	0x400157ae5796bfcb              # double 2.1678130000000002
	.quad	0x4021b060780fdc16              # double 8.8444859999999998
	.quad	0x401069491f2dc2b1              # double 4.1028180000000001
	.quad	0x3ffa569e3c968944              # double 1.646147
	.quad	0x400302d8c2a454de              # double 2.3763899999999998
	.quad	0x4011d508b32ce896              # double 4.4580409999999997
	.quad	0x3ff01675579af188              # double 1.0054829999999999
	.quad	0x3fe08d73860999dd              # double 0.51726700000000003
	.quad	0x40221c0e1719f7f9              # double 9.0547950000000004
	.quad	0x40128858ff759685              # double 4.6331519999999999
	.quad	0x4002d8b1572580c3              # double 2.355807
	.quad	0x3fdaada33bd9cae2              # double 0.416848
	.quad	0x3f5dda059a73b42d              # double 0.0018220000000000001
	.quad	0x401aed983947496b              # double 6.7320260000000003
	.quad	0x401563b7d84901d2              # double 5.3473810000000004
	.quad	0x3ff0d62bf11f926c              # double 1.0522879999999999
	.quad	0x3ff39e5d18090b41              # double 1.2261629999999999
	.quad	0x401e8bc98a222d51              # double 7.6365109999999996
	.quad	0x400c42b8c75c4a84              # double 3.5325790000000001
	.quad	0x4023716ebd4cfd09              # double 9.7215480000000003
	.quad	0x3fb0c0df58c08b76              # double 0.065443000000000001
	.quad	0x40220effe2a3cea7              # double 9.0292960000000004
	.quad	0x402368b439581062              # double 9.7044999999999995
	.quad	0x40183a832b990afe              # double 6.0571409999999997
	.quad	0x401110c73abc9470              # double 4.2663849999999996
	.quad	0x3ffc6b0ea18372e7              # double 1.7761370000000001
	.quad	0x4000244fa05143bf              # double 2.0177299999999998
	.quad	0x3ff1c7485e3da2f9              # double 1.1111530000000001
	.quad	0x4023a803eea209ab              # double 9.8281550000000006
	.quad	0x4004377d0f1f57b4              # double 2.527094
	.quad	0x3fef3042528ae74f              # double 0.97464099999999997
	.quad	0x4012165f0f5a1017              # double 4.5218470000000002
	.quad	0x4010df049a9973da              # double 4.2177910000000001
	.quad	0x401ad58793dd97f6              # double 6.7085249999999998
	.quad	0x400a417fc7607c42              # double 3.2819820000000002
	.quad	0x3ff7bfc2224edf61              # double 1.484316
	.quad	0x3fdb8e7ddca4b125              # double 0.43057200000000001
	.quad	0x401984e3bcd35a86              # double 6.3797750000000004
	.quad	0x3fe6d19bd4067cf2              # double 0.71308700000000003
	.quad	0x3feabba55d1c3ac9              # double 0.83540599999999998
	.quad	0x3ff30e6afcce1c58              # double 1.19102
	.quad	0x4021f00bcbe61d00              # double 8.9688400000000001
	.quad	0x401d1d84d338f798              # double 7.2788269999999997
	.quad	0x401ece06d938151a              # double 7.7011979999999998
	.quad	0x3fde79d0a67620ef              # double 0.47618500000000002
	.quad	0x3fe9ac710cb295ea              # double 0.80230000000000001
	.quad	0x3ffb79af1886df83              # double 1.7172080000000001
	.quad	0x40222860780fdc16              # double 9.0788609999999998
	.quad	0x400cb75536933a04              # double 3.589518
	.quad	0x4015745baf533f42              # double 5.3636309999999998
	.quad	0x4014ce974a3400b9              # double 5.2017490000000004
	.quad	0x402215a272862f5a              # double 9.0422550000000008
	.quad	0x402036978d4fdf3b              # double 8.1066249999999993
	.quad	0x4007f02cd39da166              # double 2.992273
	.quad	0x3fe77d2630ec3116              # double 0.73402699999999999
	.quad	0x401748d8665e02eb              # double 5.8211380000000004
	.quad	0x40165dc5931ca7d6              # double 5.5915739999999996
	.quad	0x3fdf4f7a919695d9              # double 0.48922599999999999
	.quad	0x4011dc7abfb9bed3              # double 4.4653119999999999
	.quad	0x3fd5002e2328f9f4              # double 0.32813599999999998
	.quad	0x401526759ab6d00b              # double 5.2875579999999998
	.quad	0x40066787ce95faa9              # double 2.8005520000000002
	.quad	0x3fffe8ae74f2f124              # double 1.9943070000000001
	.quad	0x3fd06cc1ca3a4b55              # double 0.25663799999999998
	.quad	0x4010ab474107314d              # double 4.1672640000000003
	.quad	0x3fe84e2d1f1cfbb9              # double 0.75954299999999997
	.quad	0x3fcca98244e93e1d              # double 0.22392300000000001
	.quad	0x4020d60b4e11dbcb              # double 8.4180550000000007
	.quad	0x401c63e425aee632              # double 7.09755
	.quad	0x3fd5db402d16b980              # double 0.34150700000000001
	.quad	0x4022124b33daf8df              # double 9.0357299999999992
	.quad	0x40239df30e7ff584              # double 9.8084950000000006
	.quad	0x3fe9148fd9fd36f8              # double 0.78376000000000001
	.quad	0x40231ec7000431be              # double 9.5601120000000002
	.quad	0x3ff4c4567125dd09              # double 1.2979339999999999
	.quad	0x4011b25a250f8402              # double 4.4241720000000004
	.quad	0x40166a0d77b7c782              # double 5.603567
	.quad	0x3fe5d7e889c1b542              # double 0.68260600000000005
	.quad	0x4001af34d6a161e5              # double 2.21055
	.quad	0x3fd893d96638433d              # double 0.38402399999999998
	.quad	0x4004ad256798958e              # double 2.5845440000000002
	.quad	0x3fddb9fdbd2fa0d7              # double 0.46447699999999997
	.quad	0x401e06a487336588              # double 7.5064869999999999
	.quad	0x40232adf9378ee28              # double 9.5837369999999992
	.quad	0x4019640bfe3b03e2              # double 6.347702
	.quad	0x400bd4e6e221c8a8              # double 3.4789560000000002
	.quad	0x4009277574f722e2              # double 3.1442670000000001
	.quad	0x4013369270b06c44              # double 4.803293
	.quad	0x3fffee158750c1b9              # double 1.9956259999999999
	.quad	0x3fd4591cd1c7de51              # double 0.31793900000000003
	.quad	0x3ffd63aafff36ac6              # double 1.8368329999999999
	.quad	0x40230348f53c579f              # double 9.5064159999999997
	.quad	0x40171495182a9931              # double 5.7701000000000002
	.quad	0x4020a7d34df04ddb              # double 8.3277839999999994
	.quad	0x3fb99dba908a265f              # double 0.100063
	.quad	0x3fe19235f8099179              # double 0.54909799999999997
	.quad	0x3fd626fe718a86d7              # double 0.34612999999999999
	.quad	0x4012ecc037931444              # double 4.7312019999999997
	.quad	0x40158588a04d1202              # double 5.3804040000000004
	.quad	0x3fe6ecfc829cfdd2              # double 0.71642899999999998
	.quad	0x3fd4934699418506              # double 0.32148900000000002
	.quad	0x40128ac215b9a5a9              # double 4.6355060000000003
	.quad	0x4014824638c97529              # double 5.1272209999999996
	.quad	0x3ff51d4b6a619daa              # double 1.319652
	.quad	0x4010dfed20296b33              # double 4.2186779999999997
	.quad	0x3fe6a979e16d6dc2              # double 0.70818800000000004
	.quad	0x401e2c6bce8533b1              # double 7.5433799999999999
	.quad	0x40060df58c08b75f              # double 2.7568160000000002
	.quad	0x40042bedfa43fe5d              # double 2.5214500000000002
	.quad	0x40239b3aabcd78c4              # double 9.8031819999999996
	.quad	0x4003c71de69ad42c              # double 2.4722249999999999
	.quad	0x4009b737542a23c0              # double 3.214461
	.quad	0x402185b4aa9717df              # double 8.7611439999999998
	.quad	0x4022d4925785f8d3              # double 9.4151790000000001
	.quad	0x401f5be6601bc98a              # double 7.8397459999999999
	.quad	0x4010083f4eca686e              # double 4.0080539999999996
	.quad	0x3fe8b691212513b6              # double 0.77228600000000003
	.quad	0x401758de2ac32229              # double 5.8367849999999999
	.quad	0x40168ce9a2c66905              # double 5.6376099999999996
	.quad	0x3fefa73b42cc2d6b              # double 0.98916400000000004
	.quad	0x401ab8fa7a85015c              # double 6.6806429999999999
	.quad	0x40034603d577963a              # double 2.4091870000000002
	.quad	0x3ff86e81882adc4d              # double 1.5269790000000001
	.quad	0x3ff08ec743201041              # double 1.0348580000000001
	.quad	0x4022d2116659d12d              # double 9.4102890000000005
	.quad	0x402043f444e0daa1              # double 8.1327230000000004
	.quad	0x40064bf22c01e68a              # double 2.787083
	.quad	0x40239f3493858362              # double 9.8109479999999998
	.quad	0x3fb17e132b55ef20              # double 0.068330000000000002
	.quad	0x4014e9e6687f455a              # double 5.2284179999999996
	.quad	0x401e3e6d15ad106f              # double 7.5609630000000001
	.quad	0x401e47008a697aee              # double 7.5693380000000001
	.quad	0x4007aeb24a6a875d              # double 2.9603009999999998
	.quad	0x3ff85892684cf074              # double 1.5216240000000001
	.quad	0x40152b313be22e5e              # double 5.2921800000000001
	.quad	0x400c0ec4a4095f24              # double 3.5072109999999999
	.quad	0x402127ed20296b33              # double 8.5779809999999994
	.quad	0x40222f13ad5bee3d              # double 9.0919469999999993
	.quad	0x40174f10667f90da              # double 5.8272110000000001
	.quad	0x3ffd09d8c6d612c7              # double 1.8149040000000001
	.quad	0x401b22a1b5c7cd8a              # double 6.7838200000000004
	.quad	0x401916145953586d              # double 6.2715620000000003
	.quad	0x401cd08c8259e1f4              # double 7.2036610000000003
	.quad	0x400fd675579af188              # double 3.9797159999999998
	.quad	0x400164f6dfc5cdd5              # double 2.174299
	.quad	0x3fea0620ab713272              # double 0.81324799999999997
	.quad	0x402095308bb90646              # double 8.2913859999999993
	.quad	0x400c8b1704ff4342              # double 3.5679150000000002
	.quad	0x4021ee5eedcc20d5              # double 8.9655679999999993
	.quad	0x4023691c2a023209              # double 9.7052929999999992
	.quad	0x4012993e5fb71fbc              # double 4.6496519999999997
	.quad	0x3fe47fc9795b35b1              # double 0.64059900000000003
	.quad	0x4001f669ced0b30b              # double 2.2453189999999998
	.quad	0x4023e4b2d905c033              # double 9.9466769999999993
	.quad	0x4023ba4052d666aa              # double 9.8637720000000009
	.quad	0x3fe79fa76534373f              # double 0.73823899999999998
	.quad	0x3ffc089f40a2877f              # double 1.752105
	.quad	0x401f1884c6a3bde0              # double 7.7739440000000002
	.quad	0x401da76ee73e681b              # double 7.4135090000000003
	.quad	0x401cb3387160956c              # double 7.17502
	.quad	0x400f1cb5fe542e55              # double 3.8890189999999998
	.quad	0x400af15df6555c53              # double 3.367855
	.quad	0x40232ace89656ef0              # double 9.5836070000000007
	.quad	0x40187ca5375c8da0              # double 6.1217240000000004
	.quad	0x40141bd66277c45d              # double 5.0271850000000002
	.quad	0x3fef17b5286b5914              # double 0.97164399999999995
	.quad	0x4010d3aeab7995ee              # double 4.2067209999999999
	.quad	0x40060ce24bba12b6              # double 2.756291
	.quad	0x4022b85319828805              # double 9.3600089999999998
	.quad	0x3ff48a7a41e57d9e              # double 1.2838080000000001
	.quad	0x401368f9b13165d4              # double 4.8525150000000004
	.quad	0x40120db2b346130a              # double 4.5133770000000002
	.quad	0x3fd65058dde7a744              # double 0.34865400000000002
	.quad	0x4000cbe1650a45d4              # double 2.0995509999999999
	.quad	0x4022d57e23f24d90              # double 9.4169780000000003
	.quad	0x401944d834091c08              # double 6.3172309999999996
	.quad	0x40229900c521dda0              # double 9.2988339999999994
	.quad	0x401a24f7ec3547e0              # double 6.5361019999999996
	.quad	0x401812253111f0c3              # double 6.0177199999999997
	.quad	0x401a11f080303c08              # double 6.5175190000000001
	.quad	0x401a76534373f317              # double 6.6155520000000001
	.quad	0x40202f6b5d462c34              # double 8.0926159999999995
	.quad	0x4023327b0b391926              # double 9.5985949999999995
	.quad	0x3ff7fdfb0d51f81a              # double 1.4995069999999999
	.quad	0x4003b4d48882f0e1              # double 2.4632960000000002
	.quad	0x400332aae297396d              # double 2.39974
	.quad	0x400536deb95e5aff              # double 2.6517919999999999
	.quad	0x40226f78bbd38045              # double 9.2177179999999996
	.quad	0x4023a38066c2acb8              # double 9.8193389999999993
	.quad	0x401aa0ccff21b3af              # double 6.6570320000000001
	.quad	0x40175c97d8cf398f              # double 5.8404230000000004
	.quad	0x402101a36e2eb1c4              # double 8.5031999999999996
	.quad	0x4016141b75a74c0a              # double 5.5196360000000002
	.quad	0x40078f3a9b068124              # double 2.9449360000000002
	.quad	0x3fdfe4712e40852b              # double 0.49831799999999998
	.quad	0x3fb4d0aaa7ded6bb              # double 0.081309000000000006
	.quad	0x4022feba27ae9ab3              # double 9.4975140000000006
	.quad	0x40231380a9de8b3b              # double 9.5380909999999996
	.quad	0x40217d82ba5a0382              # double 8.7451380000000007
	.quad	0x401cae57d9dba909              # double 7.1702570000000003
	.quad	0x400c5ff36ac64778              # double 3.5468510000000002
	.quad	0x4011ab60285ec3db              # double 4.4173590000000003
	.quad	0x3ff4f381d7dbf488              # double 1.30945
	.quad	0x40219385a4f00ef1              # double 8.7881289999999996
	.quad	0x3fca8b86b15f88fd              # double 0.20738300000000001
	.quad	0x3fec4ac4b4d056c5              # double 0.884127
	.quad	0x401edb302f72b453              # double 7.7140510000000004
	.quad	0x4014d31832fcac8e              # double 5.2061469999999996
	.quad	0x40228bc64345cfee              # double 9.2729970000000002
	.quad	0x3ff4456d5cfaacda              # double 1.26695
	.quad	0x40102481f53825e1              # double 4.0356519999999998
	.quad	0x40233afc8b0079a3              # double 9.6152080000000008
	.quad	0x3ff70bd87b56b873              # double 1.4403919999999999
	.quad	0x4022546f15619115              # double 9.1649100000000008
	.quad	0x400dfaa8a82a5615              # double 3.7473920000000001
	.quad	0x3ffe207b352a8438              # double 1.88293
	.quad	0x401ac6f71a7e3088              # double 6.6943020000000004
	.quad	0x402168a244630660              # double 8.7043630000000007
	.quad	0x400852dd377e1b8f              # double 3.0404610000000001
	.quad	0x40156781c714fce7              # double 5.3510809999999998
	.quad	0x3ffd2fe2e6ea8544              # double 1.8241909999999999
	.quad	0x3ff68d530489d27c              # double 1.409503
	.quad	0x40042708ede54b49              # double 2.5190600000000001
	.quad	0x40209112ba16e7a3              # double 8.2833459999999999
	.quad	0x40188e3e29307af2              # double 6.1389089999999999
	.quad	0x4022e47064ece9a3              # double 9.4461700000000003
	.quad	0x401a3db59578a2a9              # double 6.560263
	.quad	0x4023e16a6a01259a              # double 9.9402650000000001
	.quad	0x4023d82d59d55e6c              # double 9.9222210000000004
	.quad	0x4022cdffc5479d4e              # double 9.4023420000000009
	.quad	0x4021a35286b59147              # double 8.8189890000000002
	.quad	0x40225e598e10cf5b              # double 9.1842769999999998
	.quad	0x401ef5286b59146e              # double 7.7394119999999997
	.quad	0x4017e811b1d92b80              # double 5.9766300000000001
	.quad	0x40219a93af74cd31              # double 8.8019079999999992
	.quad	0x40038c79702e6645              # double 2.4435910000000001
	.quad	0x3fdc591cd1c7de51              # double 0.44293900000000003
	.quad	0x4011ee92923e5b85              # double 4.4829809999999997
	.quad	0x4005485c24c404a7              # double 2.6603319999999999
	.quad	0x400a59a30984e400              # double 3.293768
	.quad	0x400c34afd5454153              # double 3.5257260000000001
	.quad	0x401ccb955f78359c              # double 7.1988120000000002
	.quad	0x4022a1c8eabffcdb              # double 9.3159860000000005
	.quad	0x401ffe40420f6f09              # double 7.9982920000000001
	.quad	0x4021da51a005c465              # double 8.9264039999999998
	.quad	0x3fe5de0d66f0cfe1              # double 0.68335599999999996
	.quad	0x4022b34f61672325              # double 9.3502150000000004
	.quad	0x4008f9830e3cd9a5              # double 3.1218319999999999
	.quad	0x401b5fb549f94856              # double 6.8434650000000001
	.quad	0x40157038e29f9ce9              # double 5.3595920000000001
	.quad	0x401f3a11233df2aa              # double 7.8067060000000001
	.quad	0x3fe004295a6c5d20              # double 0.50050799999999995
	.quad	0x3fe27fa5d28d002e              # double 0.57808199999999998
	.quad	0x40213e4cf8d716d3              # double 8.6216810000000006
	.quad	0x40121cd5b6805a2d              # double 4.5281589999999996
	.quad	0x3ff1a6a337a80cfa              # double 1.103183
	.quad	0x3fdcfcc5b8dc5500              # double 0.452928
	.quad	0x401cae6eeb702603              # double 7.1703450000000002
	.quad	0x40059c9d5a187a4a              # double 2.7014719999999999
	.quad	0x3ff37dea465a5764              # double 1.2182409999999999
	.quad	0x4010f6b09635610b              # double 4.2409080000000001
	.quad	0x4016f154866a11ed              # double 5.7356740000000004
	.quad	0x40187b3f20a73f75              # double 6.1203580000000004
	.quad	0x401a6c625e99e94b              # double 6.6058440000000003
	.quad	0x4006d4d26fa3fcca              # double 2.853917
	.quad	0x4019eefc371da37f              # double 6.483384
	.quad	0x40229b945308bb90              # double 9.3038659999999993
	.quad	0x4022a6219652bd3c              # double 9.3244749999999996
	.quad	0x3fe5a2d2fe3f35a0              # double 0.676126
	.quad	0x4014be675147f130              # double 5.1859409999999997
	.quad	0x4010705ff1d81f10              # double 4.1097409999999996
	.quad	0x401a954bcf0b6b6e              # double 6.645797
	.quad	0x400de7d6733ebbfd              # double 3.7382019999999998
	.quad	0x3fc8f4a558ea7ce1              # double 0.194966
	.quad	0x4014146aa087ca64              # double 5.0199379999999998
	.quad	0x40101bd1aa821f2a              # double 4.0271670000000004
	.quad	0x402258ac5c13fd0d              # double 9.17319
	.quad	0x40076f12c27a6373              # double 2.9292349999999998
	.quad	0x3fd64651f3e89a89              # double 0.34804200000000002
	.quad	0x400523c85c24c405              # double 2.6424720000000002
	.quad	0x40216d77fae3608d              # double 8.7138059999999999
	.quad	0x402098157eed45e9              # double 8.2970389999999998
	.quad	0x401981ee675147f1              # double 6.3768859999999998
	.quad	0x400ba4fdb09a671f              # double 3.455562
	.quad	0x3ff2af049a9973da              # double 1.167729
	.quad	0x3fd3294dd72367e4              # double 0.299396
	.quad	0x40078eddce7cd035              # double 2.9447589999999999
	.quad	0x40128c8e25c810a5              # double 4.6372609999999996
	.quad	0x4016dbad3a604e1e              # double 5.7145279999999996
	.quad	0x400267a0f9096bba              # double 2.3006000000000002
	.quad	0x3ff558ce2d1f1cfc              # double 1.3341810000000001
	.quad	0x3fd641205bc01a37              # double 0.34772500000000001
	.quad	0x40151f9b56323bbc              # double 5.2808659999999996
	.quad	0x401f07e02645e4e7              # double 7.7576910000000003
	.quad	0x4013edc1a47a9e2c              # double 4.9821840000000002
	.quad	0x3ff53192ea52ef91              # double 1.324603
	.quad	0x402291a75cd0bb6f              # double 9.2844800000000003
	.quad	0x402272f8bdec5f39              # double 9.2245539999999995
	.quad	0x40079a89331a08c0              # double 2.9504570000000001
	.quad	0x4010796a6a01259a              # double 4.1185700000000001
	.quad	0x3fe789656eefa1e4              # double 0.73552200000000001
	.quad	0x401da018e757928e              # double 7.406345
	.quad	0x40223bcb81733227              # double 9.1167870000000004
	.quad	0x401bc8ee28672757              # double 6.9462210000000004
	.quad	0x401b21a437824d4d              # double 6.7828530000000002
	.quad	0x4016199524bfd2e9              # double 5.5249829999999998
	.quad	0x4015fa6223e18698              # double 5.4945149999999998
	.quad	0x4011b5dbfceb7889              # double 4.4275969999999996
	.quad	0x401111a32b12d341              # double 4.2672239999999997
	.quad	0x3ff0dce4a7b4e54f              # double 1.0539289999999999
	.quad	0x401184b51372a38c              # double 4.3795970000000004
	.quad	0x40192577531db446              # double 6.2865880000000001
	.quad	0x40157625204af923              # double 5.3653760000000004
	.quad	0x4005d5970b49e01e              # double 2.7292920000000001
	.quad	0x401b1fb267c6b8b7              # double 6.7809540000000004
	.quad	0x4002203eea209aaa              # double 2.2657449999999999
	.quad	0x3fecbb2bba98eda2              # double 0.89784799999999998
	.quad	0x4015617939a7c17b              # double 5.3451890000000004
	.quad	0x40084a265f0f5a10              # double 3.036206
	.quad	0x401bbc3efae7924b              # double 6.9338340000000001
	.quad	0x4021465bea0ba1f5              # double 8.6374200000000005
	.quad	0x4023b3eff1950332              # double 9.8514400000000002
	.quad	0x3fe185b5b70691ea              # double 0.54757199999999995
	.quad	0x4017fde3b8a19c9d              # double 5.9979389999999997
	.quad	0x4015b8bb0a2ca9ac              # double 5.4304009999999998
	.quad	0x401980bbb1f255f3              # double 6.3757159999999997
	.quad	0x4009019c17225b75              # double 3.1257860000000002
	.quad	0x3fb0d2a1f8e3ac0c              # double 0.065713999999999995
	.quad	0x400ef18548a9bcfd              # double 3.8679299999999999
	.quad	0x402060c5436b8f9b              # double 8.1890049999999999
	.quad	0x40186399b2c40d0b              # double 6.0972660000000003
	.quad	0x400f53387160956c              # double 3.915635
	.quad	0x3fdfce9e5e247885              # double 0.49698599999999998
	.quad	0x4022c67d566cf41f              # double 9.3876749999999997
	.quad	0x40010d7d7c2ca149              # double 2.1315870000000001
	.quad	0x400a89e98dcdb37d              # double 3.3173400000000002
	.quad	0x400b1aecd07852f8              # double 3.388147
	.quad	0x400df7f5a5332ad0              # double 3.7460740000000001
	.quad	0x401e7093964a59c0              # double 7.6099379999999996
	.quad	0x3fbe16b54e2b063e              # double 0.117534
	.quad	0x3feaf42bb6672fba              # double 0.842306
	.quad	0x401216013660e51d              # double 4.5214889999999999
	.quad	0x4017823315d701da              # double 5.877148
	.quad	0x401290ffda4052d6              # double 4.6416009999999996
	.quad	0x401c734f82f51266              # double 7.1126079999999998
	.quad	0x401b7060bb2bba99              # double 6.8597440000000001
	.quad	0x40133cea6c1a048e              # double 4.809488
	.quad	0x401ebebd09e12a52              # double 7.6862680000000001
	.quad	0x400d56e3f78bbd38              # double 3.667427
	.quad	0x40087b36bd2b6f1a              # double 3.0601630000000002
	.quad	0x4016cebd4cfd08d5              # double 5.7018940000000002
	.quad	0x40026fb6dca07f67              # double 2.304548
	.quad	0x4012e37bd05af6c7              # double 4.7221520000000003
	.quad	0x3ff751654d61b2a2              # double 1.4573719999999999
	.quad	0x40107ce13f4a98ab              # double 4.1219530000000004
	.quad	0x4023494d2f5dbb9d              # double 9.643167
	.quad	0x400084b2314013ec              # double 2.0647929999999999
	.quad	0x3fd5e50c5eb313be              # double 0.34210499999999999
	.quad	0x401d5fddebd9018e              # double 7.3436199999999996
	.quad	0x4020458409e55c10              # double 8.1357730000000004
	.quad	0x4010b46f15619115              # double 4.1762050000000004
	.quad	0x3ff536d00b45ae60              # double 1.325882
	.quad	0x401018e820e62995              # double 4.0243229999999999
	.quad	0x4015490795f676ea              # double 5.3213179999999998
	.quad	0x401552630ec31162              # double 5.3304559999999999
	.quad	0x4012676a7264a16a              # double 4.6009919999999997
	.quad	0x3fd1773e24febd0a              # double 0.27290300000000001
	.quad	0x4010c163779e9d0f              # double 4.1888560000000004
	.quad	0x40116444e0daa0cb              # double 4.3479190000000001
	.quad	0x4023ace0daa0cae6              # double 9.8376529999999995
	.quad	0x40217850374ff866              # double 8.7349870000000003
	.quad	0x3ffcf8327674d163              # double 1.810595
	.quad	0x4010e875d56f32be              # double 4.2270120000000002
	.quad	0x401683d640e9d51b              # double 5.6287469999999997
	.quad	0x402344152b0a6fc6              # double 9.6329740000000008
	.quad	0x3fff335c182ecaef              # double 1.9500390000000001
	.quad	0x402391ca9ef5232d              # double 9.7847489999999996
	.quad	0x4022a6317268d328              # double 9.3245959999999996
	.quad	0x401f60247021d10b              # double 7.8438889999999998
	.quad	0x401a6864883fd502              # double 6.6019459999999999
	.quad	0x4001a53f39d1b2e6              # double 2.2056870000000002
	.quad	0x4001720ea5b530cf              # double 2.1806920000000001
	.quad	0x40173c3f3e0370ce              # double 5.8088350000000002
	.quad	0x40223ac03ff69015              # double 9.1147480000000005
	.quad	0x4015fe4e26d4801f              # double 5.4983449999999996
	.quad	0x400320ca600b0293              # double 2.3910110000000002
	.quad	0x3ffd7e260b2c83ed              # double 1.8432980000000001
	.quad	0x4000b901083dbc23              # double 2.0903339999999999
	.quad	0x4021522db61bb060              # double 8.6605050000000006
	.quad	0x4023935350092ccf              # double 9.7877449999999992
	.quad	0x4011e73c4f3ba776              # double 4.475816
	.quad	0x401a98155d5f56a8              # double 6.6485190000000003
	.quad	0x401079cc319c5a3e              # double 4.1189429999999998
	.quad	0x4007cd1f1cfbb949              # double 2.9751569999999998
	.quad	0x400e5090f733a8a4              # double 3.789339
	.quad	0x401728027d88c1db              # double 5.789072
	.quad	0x401934117f84449e              # double 6.3008480000000002
	.quad	0x402033f01322f273              # double 8.1014409999999994
	.quad	0x402178c32a8c9b84              # double 8.7358639999999994
	.quad	0x4018d4e831ad2136              # double 6.2079170000000001
	.quad	0x4020e99439de481f              # double 8.4562089999999994
	.quad	0x4023b62a80064a9d              # double 9.8557930000000002
	.quad	0x4016c3397dd00f77              # double 5.6906489999999996
	.quad	0x401e1c94b380cb6c              # double 7.5279109999999996
	.quad	0x400812cd7cf5f4e4              # double 3.0091809999999999
	.quad	0x400e68be2f7b17ce              # double 3.8011439999999999
	.quad	0x400111ec918e325d              # double 2.1337519999999999
	.quad	0x401950d801b43526              # double 6.3289489999999997
	.quad	0x3fe801abd1aa821f              # double 0.75020399999999998
	.quad	0x3fda1f3a57eaa2a1              # double 0.40815600000000002
	.quad	0x402364aba3875925              # double 9.6966219999999996
	.quad	0x4021601450efdc9c              # double 8.6876549999999994
	.quad	0x4023bef1348b2208              # double 9.8729340000000007
	.quad	0x40045cc964628028              # double 2.5453060000000001
	.quad	0x4017c5bab21815a0              # double 5.9430949999999996
	.quad	0x40236f141205bc02              # double 9.7169500000000006
	.quad	0x4006010e8858ff76              # double 2.7505160000000002
	.quad	0x401a7434e3369b9d              # double 6.6134829999999996
	.quad	0x401436a5d6bebe16              # double 5.0533669999999997
	.quad	0x402207c1bda5119d              # double 9.0151500000000002
	.quad	0x4021714a2b9d3cbc              # double 8.7212689999999994
	.quad	0x3ff934d9c6b0531a              # double 1.5754030000000001
	.quad	0x402091652bd3c361              # double 8.2839749999999999
	.quad	0x4023f9d51b4fe79f              # double 9.9879540000000002
	.quad	0x400a99641f644956              # double 3.3248980000000001
	.quad	0x4020c0f10a99b6f6              # double 8.3768390000000004
	.quad	0x3fe441cc532a4980              # double 0.63303200000000004
	.quad	0x40230d3c36113405              # double 9.5258500000000001
	.quad	0x401e97570c564f98              # double 7.647793
	.quad	0x4013293d96638434              # double 4.7902740000000001
	.quad	0x3ff2864ece9a2c67              # double 1.1577900000000001
	.quad	0x4005e004b7f5a533              # double 2.7343839999999999
	.quad	0x40103c660a201472              # double 4.0589829999999996
	.quad	0x40023f4cb1897a68              # double 2.2809080000000002
	.quad	0x3ffb668c26139000              # double 1.7125360000000001
	.quad	0x401874e4c942d491              # double 6.1141540000000001
	.quad	0x4017436501e2584f              # double 5.8158149999999997
	.quad	0x4013dab53d640e9d              # double 4.9635819999999997
	.quad	0x4018f45e9185cee1              # double 6.2386419999999996
	.quad	0x400c71cc100e6afd              # double 3.5555650000000001
	.quad	0x3ffd728b6d86ec18              # double 1.840465
	.quad	0x3fdd24180d3cff65              # double 0.45532800000000001
	.quad	0x40123cf312b1b36c              # double 4.5595210000000002
	.quad	0x4022a1044f1a1987              # double 9.3144860000000005
	.quad	0x4010266b6177ea1c              # double 4.0375189999999996
	.quad	0x401d555582129457              # double 7.3333339999999998
	.quad	0x3ff962328f9f44d4              # double 1.5864739999999999
	.quad	0x402334c319c5a3e4              # double 9.6030510000000006
	.quad	0x3ff48cff21b3aeef              # double 1.2844230000000001
	.quad	0x401f5f04577d9557              # double 7.8427899999999999
	.quad	0x40189f02c4d65e46              # double 6.155284
	.quad	0x40136362a5e785b6              # double 4.8470560000000003
	.quad	0x401db1dd1a21ea36              # double 7.4236950000000004
	.quad	0x4015f3760bf5d788              # double 5.4877549999999999
	.quad	0x4016455b89939219              # double 5.5677320000000003
	.quad	0x401bfb7a1c25d074              # double 6.9955829999999999
	.quad	0x3fde7d88c1db0143              # double 0.476412
	.quad	0x40237ba2595bbbe8              # double 9.7414729999999991
	.quad	0x40125726d04e618d              # double 4.5851090000000001
	.quad	0x3fe0736cdf266ba5              # double 0.51409000000000005
	.quad	0x4009fb291b823c86              # double 3.2476370000000001
	.quad	0x401dcff04577d955              # double 7.4530649999999996
	.quad	0x401354fd2a62aa19              # double 4.8329969999999998
	.quad	0x4015afbce4217d28              # double 5.4216189999999997
	.quad	0x40229b62e9036439              # double 9.3034890000000008
	.quad	0x401f9dc0db2702a3              # double 7.9040559999999997
	.quad	0x40119f401c4fc1df              # double 4.4055179999999998
	.quad	0x402063083558a761              # double 8.193422
	.quad	0x401b4161e4f765fe              # double 6.8138500000000004
	.quad	0x4006bc01a36e2eb2              # double 2.8418000000000001
	.quad	0x40109988094e5d5b              # double 4.1499329999999999
	.quad	0x40200ce8b7e4de3c              # double 8.0252130000000008
	.quad	0x40159a6efc371da3              # double 5.4008139999999996
	.quad	0x3fce28d434a01abd              # double 0.235621
	.quad	0x4013d150dae3e6c5              # double 4.9544100000000002
	.quad	0x401ead5dc4007571              # double 7.6693030000000002
	.quad	0x3fef3e9424e59296              # double 0.97638899999999995
	.quad	0x40013cdc443914f5              # double 2.1547170000000002
	.quad	0x40115157abb8800f              # double 4.3294360000000003
	.quad	0x401c54eb56fb8f58              # double 7.082929
	.quad	0x4018ab588e368f08              # double 6.1673299999999998
	.quad	0x401a0e27179bfdf8              # double 6.5138210000000001
	.quad	0x4016f36fc158fb44              # double 5.7377310000000001
	.quad	0x40213c47a17f4129              # double 8.6177340000000004
	.quad	0x40228b2a0663c750              # double 9.2718050000000005
	.quad	0x3ff2aa0fd3b29a1c              # double 1.1665190000000001
	.quad	0x4019d8aefb2aae29              # double 6.4616049999999996
	.quad	0x3fee2c9d16fc9bc7              # double 0.94294599999999995
	.quad	0x400cb890d5a5b963              # double 3.5901200000000002
	.quad	0x4008a1e57d9dba91              # double 3.0790510000000002
	.quad	0x3fdc1b3aeee95747              # double 0.439162
	.quad	0x3ff3a0ccff21b3af              # double 1.226758
	.quad	0x401aebc8c0ce91c9              # double 6.7302580000000001
	.quad	0x3fe5fe60c38f3669              # double 0.68730199999999997
	.quad	0x401c5854046412cf              # double 7.0862579999999999
	.quad	0x401ff8887229e908              # double 7.9927080000000003
	.quad	0x4022c7a7221858bc              # double 9.3899469999999993
	.quad	0x4020b9cb039ef0f1              # double 8.3628769999999992
	.quad	0x401e068cac4b4d05              # double 7.5063959999999996
	.quad	0x3fc2ba6266fd651b              # double 0.146313
	.quad	0x40081eccc46950fc              # double 3.0150389999999998
	.quad	0x400dca72ead9274e              # double 3.7238519999999999
	.quad	0x400ea2ed352220bc              # double 3.8295539999999999
	.quad	0x3ff60f40e5a35d68              # double 1.3787240000000001
	.quad	0x402232faf8594291              # double 9.0995709999999992
	.quad	0x40126abda0dfdef8              # double 4.6042389999999997
	.quad	0x40228a9eb2074ea9              # double 9.2707420000000003
	.quad	0x4020e1463cfb3312              # double 8.4399890000000006
	.quad	0x40230214f0520d13              # double 9.5040659999999999
	.quad	0x40213a13c254a3c6              # double 8.6134319999999995
	.quad	0x4007521c475e6363              # double 2.9150930000000002
	.quad	0x402254f54d1e96c4              # double 9.165934
	.quad	0x401de93e5fb71fbc              # double 7.4777769999999997
	.quad	0x400e43bc4d22c882              # double 3.783074
	.quad	0x4006eecbfb15b574              # double 2.8666
	.quad	0x40110a426bb55ac0              # double 4.2600189999999998
	.quad	0x401d9cf3dc054ef4              # double 7.4032739999999997
	.quad	0x4000c999567dbb17              # double 2.0984370000000001
	.quad	0x401689363f572de4              # double 5.6339959999999998
	.quad	0x3ffa2bd7f51efb6e              # double 1.635704
	.quad	0x4023c1a3d2d87f88              # double 9.8782029999999991
	.quad	0x3fb7b07075b3e143              # double 0.092535999999999993
	.quad	0x401a80f5a1016ce8              # double 6.6259370000000004
	.quad	0x4011036f3b213e3e              # double 4.2533539999999999
	.quad	0x3fb7ad18d25edd05              # double 0.092484999999999998
	.quad	0x3fedd2263d816acf              # double 0.93190300000000004
	.quad	0x4000673e681a9b8d              # double 2.0504120000000001
	.quad	0x4017f74299d883ba              # double 5.9914649999999998
	.quad	0x3fd07baecd07852f              # double 0.25754899999999997
	.quad	0x3fc00f12c27a6373              # double 0.12545999999999999
	.quad	0x4021bbd74d594f27              # double 8.8668770000000006
	.quad	0x401120c0f01fb82c              # double 4.2819859999999998
	.quad	0x40236eca686e7e63              # double 9.7163880000000002
	.quad	0x4020ce48626f60e1              # double 8.4028960000000001
	.quad	0x402340c6d612c6ac              # double 9.6265169999999997
	.quad	0x40130367a0f9096c              # double 4.7533250000000002
	.quad	0x401a244aa53fc009              # double 6.5354409999999996
	.quad	0x3fecce6e221c8a7a              # double 0.90019899999999997
	.quad	0x401dbceee0f3cb3e              # double 7.4345049999999997
	.quad	0x40208c36fc158fb4              # double 8.2738569999999995
	.quad	0x40044398a65492ff              # double 2.5330059999999999
	.quad	0x3fff8d1d8a548238              # double 1.9719519999999999
	.quad	0x402290f3cb3e5754              # double 9.2831100000000006
	.quad	0x40233ca66559f6ec              # double 9.6184569999999993
	.quad	0x40185398201cd5fa              # double 6.0816350000000003
	.quad	0x4022a50df15a4acf              # double 9.3223719999999997
	.quad	0x4010249f51697f20              # double 4.0357640000000004
	.quad	0x4014c67c6b8b6955              # double 5.1938339999999998
	.quad	0x4000da57646ae3a4              # double 2.1066120000000002
	.quad	0x4023a4a8c154c986              # double 9.8216000000000001
	.quad	0x3fd57af640639d5e              # double 0.33562999999999998
	.quad	0x4011efcce1c58256              # double 4.4841800000000003
	.quad	0x4021511ec918e326              # double 8.6584380000000003
	.quad	0x4016b31f03d145d8              # double 5.6749229999999997
	.quad	0x4021665d3996fa83              # double 8.6999300000000002
	.quad	0x4016e5f676ea4229              # double 5.7245730000000004
	.quad	0x40139d2999567dbb              # double 4.9034789999999999
	.quad	0x401b6b0813cab820              # double 6.8545230000000004
	.quad	0x3ff8ea8650e77920              # double 1.5572569999999999
	.quad	0x40124a6698bb4d49              # double 4.5726570000000004
	.quad	0x401f2df090f733a9              # double 7.7948630000000003
	.quad	0x4023c491d14e3bcd              # double 9.8839249999999996
	.quad	0x40059cf13cee9dd8              # double 2.701632
	.quad	0x4020a5ebd9018e75              # double 8.3240649999999992
	.quad	0x3fe5c26138fffbce              # double 0.67997799999999997
	.quad	0x402099af9ebe9c88              # double 8.3001679999999993
	.quad	0x4004c5308bb90646              # double 2.5962839999999998
	.quad	0x3fe01001d5c31594              # double 0.50195400000000001
	.quad	0x4011fe008e9b38d6              # double 4.498049
	.quad	0x3ff979c94f69ca9f              # double 1.592233
	.quad	0x401e8f290abb44e5              # double 7.6398049999999999
	.quad	0x3ff6fd1fe64f54d2              # double 1.436798
	.quad	0x40153e2867275686              # double 5.3107009999999999
	.quad	0x400b527bb2fec56d              # double 3.4152749999999998
	.quad	0x401440f8c64fdb0a              # double 5.0634490000000003
	.quad	0x40097e18efbb0e5e              # double 3.1865709999999998
	.quad	0x40136bd2fa0d77b8              # double 4.8552970000000002
	.quad	0x40113e69270b06c4              # double 4.3109479999999998
	.quad	0x3fe9d0763a190082              # double 0.806697
	.quad	0x400f4b474107314d              # double 3.9117570000000002
	.quad	0x4021b151e75360d0              # double 8.8463279999999997
	.quad	0x4018c62456f75d9a              # double 6.1934979999999999
	.quad	0x401785a6c5d206c8              # double 5.8805189999999996
	.quad	0x4015dba493c89f41              # double 5.4644950000000003
	.quad	0x401086e9ff0cbaf9              # double 4.1317519999999996
	.quad	0x4019ea33bd9cae21              # double 6.4787129999999999
	.quad	0x4006c892ab68cef6              # double 2.8479359999999998
	.quad	0x3fe2f7c45cbbc2b9              # double 0.59274499999999997
	.quad	0x4000116872b020c5              # double 2.0085000000000002
	.quad	0x3fd0918e325d4a5e              # double 0.258884
	.quad	0x3fd77b41bfbdf091              # double 0.366898
	.quad	0x401b1e0157eed45f              # double 6.7793020000000004
	.quad	0x402276ab14ec204f              # double 9.2317739999999997
	.quad	0x4022b4fe58601366              # double 9.3535029999999999
	.quad	0x4009f7a2cecc814d              # double 3.2459159999999998
	.quad	0x3ff5bc47e49b1fac              # double 1.3584670000000001
	.quad	0x401e8b4e11dbca97              # double 7.6360400000000003
	.quad	0x4021c1a8cdea033e              # double 8.8782409999999992
	.quad	0x400b0866a11ec919              # double 3.3791020000000001
	.quad	0x4002f16d2aa5c5f8              # double 2.3678840000000001
	.quad	0x40102e6cd29131ec              # double 4.045337
	.quad	0x401ab11cf355cd92              # double 6.6729620000000001
	.quad	0x401676ededaec4a4              # double 5.616142
	.quad	0x3fc30f49491f2dc3              # double 0.14890400000000001
	.quad	0x401e81d81f106680              # double 7.6268010000000004
	.quad	0x40212d145d851655              # double 8.5880460000000003
	.quad	0x4015b897e996312f              # double 5.4302669999999997
	.quad	0x3fed7ad8e4324420              # double 0.921246
	.quad	0x4022c99c38b04ab6              # double 9.39377
	.quad	0x401cb7cc7d1bb491              # double 7.1794909999999996
	.quad	0x4022c1f77292c493              # double 9.3788409999999995
	.quad	0x401028d08919ef95              # double 4.0398579999999997
	.quad	0x3fe52a00192a7371              # double 0.66137699999999999
	.quad	0x401caba1f4b1ee24              # double 7.1676099999999998
	.quad	0x4002b7d84901d191              # double 2.3397679999999998
	.quad	0x402203a1d323fee3              # double 9.0070940000000004
	.quad	0x4022d3fa0945f9df              # double 9.4140169999999994
	.quad	0x400986759ab6d00b              # double 3.1906539999999999
	.quad	0x4023e8d0247021d1              # double 9.9547129999999999
	.quad	0x4002afe154434e33              # double 2.3358789999999998
	.quad	0x40170c69f8c21e1d              # double 5.7621229999999999
	.quad	0x4014bea140570825              # double 5.1861620000000004
	.quad	0x40001ea2d2fe3f36              # double 2.0149590000000002
	.quad	0x4016ac73eee52589              # double 5.6684109999999999
	.quad	0x400d8a4b9884c6a4              # double 3.6925270000000001
	.quad	0x4017055ac03ff690              # double 5.7552289999999999
	.quad	0x3feef51ce28ed5f1              # double 0.96742099999999997
	.quad	0x4020bf5536933a04              # double 8.3736969999999999
	.quad	0x4017b47b677f6b1a              # double 5.9262519999999999
	.quad	0x4014166559f6ec5b              # double 5.021871
	.quad	0x402049f46ed245b3              # double 8.1444430000000008
	.quad	0x4015cc0980b24207              # double 5.449255
	.quad	0x40001ae7924af0bf              # double 2.013137
	.quad	0x4001244417870542              # double 2.1427079999999998
	.quad	0x400802c343b70ef5              # double 3.0013489999999998
	.quad	0x4010146bf01322f2              # double 4.0199429999999996
	.quad	0x3ff9f2a8c9b84556              # double 1.6217429999999999
	.quad	0x3ffdfbc0a06e9ff1              # double 1.873963
	.quad	0x4006bb068123810f              # double 2.8413210000000002
	.quad	0x400dcaa00192a737              # double 3.723938
	.quad	0x401d416872b020c5              # double 7.3138750000000003
	.quad	0x40216579d0a67621              # double 8.6981950000000001
	.quad	0x3ff153bc0a06e9ff              # double 1.082943
	.quad	0x402041b951c5c572              # double 8.1283670000000008
	.quad	0x3ffd7d0f1f57b41c              # double 1.843032
	.quad	0x401409fcf3dc054f              # double 5.009754
	.quad	0x3fecf6cce5f7403e              # double 0.90512700000000001
	.quad	0x400eecdb7ae5796c              # double 3.865653
	.quad	0x3ff6286940357a35              # double 1.3848659999999999
	.quad	0x40182c2e770bd018              # double 6.0431460000000001
	.quad	0x401852d2bb23571d              # double 6.0808819999999999
	.quad	0x40210defe9318762              # double 8.5272210000000008
	.quad	0x4015bd41fa765343              # double 5.4348219999999996
	.quad	0x401e621ccd962068              # double 7.5958129999999997
	.quad	0x4013450b0f27bb30              # double 4.8174250000000001
	.quad	0x401cbcc1ca3a4b55              # double 7.1843329999999996
	.quad	0x4021573215fcc187              # double 8.6703039999999998
	.quad	0x40228e3a19008206              # double 9.277787
	.quad	0x4020bfbf83382e45              # double 8.3745080000000005
	.quad	0x3fe07809917939a8              # double 0.51465300000000003
	.quad	0x4020a631b584b1ab              # double 8.3245979999999999
	.quad	0x40116d5454152b0a              # double 4.3567669999999996
	.quad	0x3fff018f81e8a2ec              # double 1.937881
	.quad	0x3feec182ecaeea64              # double 0.96112200000000003
	.quad	0x4015dcf4623d0bfa              # double 5.465776
	.quad	0x40187b5c39bcba30              # double 6.1204689999999999
	.quad	0x40222c95182a9931              # double 9.0870750000000005
	.quad	0x4019ca07b352a844              # double 6.4472950000000004
	.quad	0x401f774ff865d7cb              # double 7.8665159999999998
	.quad	0x40149351159c4977              # double 5.1438639999999998
	.quad	0x3ffd1c182ecaeea6              # double 1.8193589999999999
	.quad	0x40169bd0e12e83a1              # double 5.652164
	.quad	0x4018cd9c27e95315              # double 6.2007909999999997
	.quad	0x402160d972cd7cf6              # double 8.6891590000000001
	.quad	0x3ffffb82c2bd7f52              # double 1.998904
	.quad	0x3ff2158b827fa1a1              # double 1.13026
	.quad	0x4022555885d31338              # double 9.1666910000000001
	.quad	0x4017797fe8ee6b83              # double 5.868652
	.quad	0x4021e2b1d4f9c1f8              # double 8.9427629999999994
	.quad	0x4021ebc7b45f17be              # double 8.9605080000000008
	.quad	0x3ff747af20ea5b53              # double 1.455001
	.quad	0x4016707c4199fe43              # double 5.6098489999999996
	.quad	0x3ffd9e43ed959a31              # double 1.8511390000000001
	.quad	0x401da1ef30a4e37a              # double 7.4081390000000003
	.quad	0x4019ef51ac9afe1e              # double 6.4837100000000003
	.quad	0x40086d16b97fe8ee              # double 3.0532659999999998
	.quad	0x3faf2f123c42a66e              # double 0.060906000000000002
	.quad	0x401f94959e625636              # double 7.8951019999999996
	.quad	0x402366cf63800219              # double 9.7008010000000002
	.quad	0x402039aed56b0100              # double 8.1126620000000003
	.quad	0x400bdb45f17bd8be              # double 3.4820669999999998
	.quad	0x4022470a1be2b496              # double 9.1387490000000007
	.quad	0x3ff3274e22a2c237              # double 1.1970959999999999
	.quad	0x3ff502a66dbd72bd              # double 1.3131470000000001
	.quad	0x3ff44205ff1d81f1              # double 1.266119
	.quad	0x40219c7b02d59d56              # double 8.8056260000000002
	.quad	0x3fef0b26394face6              # double 0.97011099999999995
	.quad	0x400f67bcc2938de7              # double 3.9256530000000001
	.quad	0x3ffe20afa2f05a71              # double 1.8829800000000001
	.quad	0x4014c8bfc2224edf              # double 5.1960439999999997
	.quad	0x401eb3f8982cb210              # double 7.6757530000000003
	.quad	0x3fe358a761027957              # double 0.604572
	.quad	0x40031973d9ec7000              # double 2.3874279999999999
	.quad	0x4000960d0247021d              # double 2.073267
	.quad	0x3fe52a821f2990f3              # double 0.661439
	.quad	0x4021b6de54b48d3b              # double 8.8571650000000002
	.quad	0x3ff773b42cc2d6aa              # double 1.4657480000000001
	.quad	0x401037db6e503fb3              # double 4.0545479999999996
	.quad	0x4023ce6559f6ec5b              # double 9.9031169999999999
	.quad	0x401a963a19008206              # double 6.646706
	.quad	0x40213da426bb55ac              # double 8.6203929999999999
	.quad	0x400e3b291b823c86              # double 3.7788870000000001
	.quad	0x40237b573eab367a              # double 9.7408999999999999
	.quad	0x40038e429e0a41a2              # double 2.4444629999999998
	.quad	0x401fae8533b10774              # double 7.9204299999999996
	.quad	0x400d23ed959a3098              # double 3.6425429999999999
	.quad	0x4020649c2c1b10fd              # double 8.1965039999999991
	.quad	0x4003ea012599ed7c              # double 2.4892599999999998
	.quad	0x401bc79fa97e132b              # double 6.9449449999999997
	.quad	0x4019329d8409e55c              # double 6.2994289999999999
	.quad	0x401f80999dcb5782              # double 7.8755860000000002
	.quad	0x3fcac532a497fa5d              # double 0.209143
	.quad	0x3ff85a76d97b30f9              # double 1.5220860000000001
	.quad	0x401e70c1333b96af              # double 7.6101119999999999
	.quad	0x40154476f2a5a46a              # double 5.3168600000000001
	.quad	0x4001a540cc78e9f7              # double 2.2056900000000002
	.quad	0x4011c5379fa97e13              # double 4.4425949999999998
	.quad	0x4015763f9a49c2c2              # double 5.3654770000000003
	.quad	0x4014141d8e864021              # double 5.0196440000000004
	.quad	0x4016b909f1f14984              # double 5.6807020000000001
	.quad	0x402353352a843809              # double 9.6625150000000008
	.quad	0x3fdcb55ef1fddebe              # double 0.44857000000000002
	.quad	0x3ff054163779e9d1              # double 1.020529
	.quad	0x4011d3dbc23315d7              # double 4.456893
	.quad	0x3ff59f255f3519bd              # double 1.3513539999999999
	.quad	0x400259ff4fd6d7e9              # double 2.2939440000000002
	.quad	0x400c0b69552e2fbe              # double 3.5055719999999999
	.quad	0x4022fe774eebf65e              # double 9.4970040000000004
	.quad	0x40233b60285ec3db              # double 9.6159680000000005
	.quad	0x3ff251fd5885d313              # double 1.145017
	.quad	0x4006b58644523f68              # double 2.838635
	.quad	0x400b416b54e2b064              # double 3.4069430000000001
	.quad	0x4018b860999dcb58              # double 6.1800560000000004
	.quad	0x4018c181e03f7058              # double 6.1889719999999997
	.quad	0x4020981fd9ba1b19              # double 8.2971179999999993
	.quad	0x3fef3e3e29307af2              # double 0.97634799999999999
	.quad	0x4003d8c75c4a83b2              # double 2.4808490000000001
	.quad	0x402253899392189c              # double 9.1631590000000002
	.quad	0x4012346801711948              # double 4.5511780000000002
	.quad	0x401523cd141a6938              # double 5.2849620000000002
	.quad	0x400083f5f91600f3              # double 2.0644339999999999
	.quad	0x4001cfbd273d5bab              # double 2.2264349999999999
	.quad	0x4022c0c73abc9470              # double 9.3765199999999993
	.quad	0x4007d04ccee5abc1              # double 2.976709
	.quad	0x400c84167a95c854              # double 3.5644960000000001
	.quad	0x400690b524399b2c              # double 2.8206579999999999
	.quad	0x4005314db59578a3              # double 2.6490740000000002
	.quad	0x401ab63e07a28bb1              # double 6.6779710000000003
	.quad	0x4010e6edaa92e621              # double 4.2255159999999998
	.quad	0x401e55e2478854ce              # double 7.5838710000000003
	.quad	0x400f90dcfcc5b8dc              # double 3.9457339999999999
	.quad	0x4013a77f6b1a2a4e              # double 4.9135720000000003
	.quad	0x40200b2441fea811              # double 8.0217609999999997
	.quad	0x3ffef089a0275254              # double 1.9337249999999999
	.quad	0x3fd50c1333b96af0              # double 0.32886199999999999
	.quad	0x401d0d12cadddf44              # double 7.2627670000000002
	.quad	0x401888c32a8c9b84              # double 6.1335569999999997
	.quad	0x4015ffef7c243dcd              # double 5.4999370000000001
	.quad	0x3ff57b8c32a8c9b8              # double 1.3426629999999999
	.quad	0x40099bb9cf9a06a7              # double 3.201038
	.quad	0x3fb9ceaf251c193b              # double 0.10081
	.quad	0x3fe1c964628027d9              # double 0.55583400000000005
	.quad	0x3ff5328848387df6              # double 1.324837
	.quad	0x400c2e4c942d490e              # double 3.5226069999999998
	.quad	0x3fddf78359bc33f8              # double 0.46823199999999998
	.quad	0x3feae6b1e5c0b999              # double 0.84066099999999999
	.quad	0x4023ad89ce4a7b4e              # double 9.8389419999999994
	.quad	0x401ed1116a8b8f15              # double 7.7041680000000001
	.quad	0x401b376427c7c526              # double 6.8040929999999999
	.quad	0x4017ee8a71de69ad              # double 5.9829499999999998
	.quad	0x400c70db6a1e81cb              # double 3.5551059999999999
	.quad	0x3fff863ae2541d8f              # double 1.9702710000000001
	.quad	0x4011100e27e0ef9a              # double 4.2656790000000004
	.quad	0x3fb087a8d64d7f0f              # double 0.064570000000000002
	.quad	0x401d11fcd24e160e              # double 7.2675660000000004
	.quad	0x3ff059ef954eb13e              # double 1.021957
	.quad	0x3ff85a31a4bdba0a              # double 1.5220199999999999
	.quad	0x4021a651b0ccbc06              # double 8.8248420000000003
	.quad	0x4019129068986fce              # double 6.2681290000000001
	.quad	0x401254202d9cf13d              # double 4.5821540000000001
	.quad	0x40036582dbe7f2c3              # double 2.424566
	.quad	0x4016146bf01322f2              # double 5.5199429999999996
	.quad	0x3ff757e889c1b542              # double 1.4589620000000001
	.quad	0x4020eea9c560c7c1              # double 8.4661390000000001
	.quad	0x401978ede54b48d4              # double 6.3680950000000003
	.quad	0x40207c2f837b4a23              # double 8.2425499999999996
	.quad	0x3ffc97481b21c476              # double 1.786934
	.quad	0x4023e1a32b12d341              # double 9.9406979999999993
	.quad	0x401b2bb05faebc41              # double 6.7926650000000004
	.quad	0x3fee7008a697aede              # double 0.95117600000000002
	.quad	0x3ff1fdc1615ebfa9              # double 1.124452
	.quad	0x3ff0559817b95a29              # double 1.0208969999999999
	.quad	0x4021f0ba6266fd65              # double 8.9701719999999998
	.quad	0x400a14445aa2e3c5              # double 3.2598959999999999
	.quad	0x4010a450acc0bdcb              # double 4.1604640000000002
	.quad	0x4008ce2c98e53eb4              # double 3.1006710000000002
	.quad	0x3fdca2e3c536d656              # double 0.44744200000000001
	.quad	0x4001c66a11ec918e              # double 2.2218819999999999
	.quad	0x40194a74c09c3ce2              # double 6.322711
	.quad	0x40013a8e71476af9              # double 2.1535920000000002
	.quad	0x4017f5d52c16df40              # double 5.9900710000000004
	.quad	0x401dc1dde37585be              # double 7.4393229999999999
	.quad	0x4007b1e646f15619              # double 2.961865
	.quad	0x3ff39e5aff2a172b              # double 1.2261610000000001
	.quad	0x40231cd7060bb2bc              # double 9.5563280000000005
	.quad	0x40174683c297bfa5              # double 5.8188620000000002
	.quad	0x4009f3bc903ea705              # double 3.2440120000000001
	.quad	0x4020cc6759ab6d01              # double 8.3992260000000005
	.quad	0x40120e44b6e935b9              # double 4.5139339999999999
	.quad	0x401affae7924af0c              # double 6.749689
	.quad	0x40166d7ecbb7f9d7              # double 5.6069290000000001
	.quad	0x400b5a61e0c5a815              # double 3.4191319999999998
	.quad	0x401d0dbfceb78898              # double 7.2634270000000001
	.quad	0x40223e195464dc23              # double 9.1212870000000006
	.quad	0x400e7610adcd2d45              # double 3.8076490000000001
	.quad	0x401d32fb5d031056              # double 7.2997870000000002
	.quad	0x40014e02a77a2ced              # double 2.1630910000000001
	.quad	0x400f0da661283904              # double 3.8816649999999999
	.quad	0x40182dacabc51548              # double 6.0446039999999996
	.quad	0x400b628cbd1244a6              # double 3.4231199999999999
	.quad	0x401ee2df0d413123              # double 7.7215540000000002
	.quad	0x4014df0b6b6e0d24              # double 5.2178170000000001
	.quad	0x40200eeb0b7c3505              # double 8.0291370000000004
	.quad	0x40147e42e1262025              # double 5.1233019999999998
	.quad	0x402288969a0ad8a1              # double 9.2667739999999998
	.quad	0x401cf7739f340d4e              # double 7.2416520000000002
	.quad	0x3ff6fd00713f077d              # double 1.436768
	.quad	0x4015bb7414a4d2b3              # double 5.4330600000000002
	.quad	0x4011f97353b4b2fb              # double 4.4936040000000004
	.quad	0x4023b25fe974a340              # double 9.8483879999999999
	.quad	0x40105918e325d4a6              # double 4.0870090000000001
	.quad	0x401777ffde7210bf              # double 5.8671870000000004
	.quad	0x4017ff75104d551d              # double 5.9994699999999996
	.quad	0x40225256de33269e              # double 9.160819
	.quad	0x3ffd8f3882278d0d              # double 1.8474660000000001
	.quad	0x4013a2b27cbf6e3f              # double 4.9088839999999996
	.quad	0x40148a4e379b77c0              # double 5.1350639999999999
	.quad	0x401a865fd8adab9f              # double 6.6312249999999997
	.quad	0x401d26b26bf8769f              # double 7.2877900000000002
	.quad	0x401a9c471b478423              # double 6.6526149999999999
	.quad	0x3fea14d2f5dbb9d0              # double 0.81504200000000004
	.quad	0x401ef80e06530058              # double 7.7422409999999999
	.quad	0x4021cd2391d57ffa              # double 8.9006620000000005
	.quad	0x3fd84df04ddb5526              # double 0.37975700000000001
	.quad	0x3fbba5b0ff10ecb7              # double 0.107997
	.quad	0x4020d2116659d12d              # double 8.4102890000000006
	.quad	0x4022e52d44dca8e3              # double 9.4476110000000002
	.quad	0x400bdc6540cc78ea              # double 3.482615
	.quad	0x4022839cf9a06a6e              # double 9.2570569999999996
	.quad	0x4020e0eabffcdab2              # double 8.4392910000000008
	.quad	0x4004582e44b6e936              # double 2.5430570000000001
	.quad	0x4014b3a42f1ed17c              # double 5.1754309999999997
	.quad	0x40201420b3d4ae43              # double 8.0393120000000007
	.quad	0x401465bd0e12e83a              # double 5.0993539999999999
	.quad	0x3fad8d1526d8b1dd              # double 0.057716999999999997
	.quad	0x4023730270f38822              # double 9.7246279999999992
	.quad	0x4011992ccf6be37e              # double 4.3995850000000001
	.quad	0x401c2c0f45176146              # double 7.0430270000000004
	.quad	0x40228550225742dd              # double 9.2603770000000001
	.quad	0x4022e357a355043e              # double 9.4440279999999994
	.quad	0x40214b5fe542e558              # double 8.6472160000000002
	.quad	0x400e5b7521144cbe              # double 3.7946569999999999
	.quad	0x401ca80841ede11a              # double 7.1640940000000004
	.quad	0x40168be0157eed46              # double 5.6365970000000001
	.quad	0x3ff47c19c17225b7              # double 1.2802979999999999
	.quad	0x401cf4d50ebaade6              # double 7.2390939999999997
	.quad	0x401c13b3a68b19a4              # double 7.0192399999999999
	.quad	0x4022816a26e54717              # double 9.2527629999999998
	.quad	0x4019530a4e379b78              # double 6.3310940000000002
	.quad	0x401e83e3193f6c27              # double 7.6287960000000003
	.quad	0x3fb10e453d20f2bf              # double 0.066624000000000003
	.quad	0x4011ee2a3cea6c1a              # double 4.482583
	.quad	0x40127ede97d06bbe              # double 4.6238960000000002
	.quad	0x40183c9eecbfb15b              # double 6.0591999999999997
	.quad	0x4007c62aa19439de              # double 2.9717609999999999
	.quad	0x4010599fe43675de              # double 4.0875240000000002
	.quad	0x4020776be37de93a              # double 8.2332450000000001
	.quad	0x400982131a8ef77f              # double 3.1885129999999999
	.quad	0x4017f65a14488c61              # double 5.9905780000000002
	.quad	0x40206c6cfc829cfe              # double 8.2117690000000003
	.quad	0x4016683c6c97d8cf              # double 5.6017929999999998
	.quad	0x3ff6b1d4f9c1f85d              # double 1.4184159999999999
	.quad	0x401f6374bc6a7efa              # double 7.8471250000000001
	.quad	0x40094b9d3cbc48f1              # double 3.161921
	.quad	0x401ce15bdd76683c              # double 7.2200769999999999
	.quad	0x40221d938151a438              # double 9.0577660000000009
	.quad	0x401f26b723ee1bd2              # double 7.7878080000000001
	.quad	0x400ba9ef5232d2bb              # double 3.4579759999999999
	.quad	0x401e96659d12cade              # double 7.6468720000000001
	.quad	0x3faa8d434a01abd2              # double 0.051859000000000002
	.quad	0x400e77154003254e              # double 3.8081459999999998
	.quad	0x3ffa8f25a250f840              # double 1.659948
	.quad	0x401758bb4d48882f              # double 5.836652
	.quad	0x400a1324851a8694              # double 3.259347
	.quad	0x40229c0fecdd0d8d              # double 9.3048090000000006
	.quad	0x40205e7d34df04de              # double 8.1845490000000005
	.quad	0x402062ef4e0114d3              # double 8.1932320000000001
	.quad	0x40208910e453d20f              # double 8.2677069999999997
	.quad	0x40239b5b4edb2f66              # double 9.8034309999999998
	.quad	0x3ff392bf5515054b              # double 1.2233270000000001
	.quad	0x4000109bf9c62a1b              # double 2.0081099999999998
	.quad	0x3fe9e7c6b8b69553              # double 0.80954300000000001
	.quad	0x400192f33ca31e7e              # double 2.1967530000000002
	.quad	0x401648f57f737da6              # double 5.5712489999999999
	.quad	0x4022d4743201040c              # double 9.414949
	.quad	0x3feedf4e4430b179              # double 0.96475900000000003
	.quad	0x401f51fe64f54d1f              # double 7.8300720000000003
	.quad	0x400b869a4df47f99              # double 3.4407239999999999
	.quad	0x4023175afaf85943              # double 9.5456160000000007
	.quad	0x3fad3cddd6e04c06              # double 0.057105000000000003
	.quad	0x4022399cbee807bc              # double 9.1125240000000005
	.quad	0x4022a4cdfaca361a              # double 9.3218840000000007
	.quad	0x400eb0667f90d9d7              # double 3.8361329999999998
	.quad	0x40209f14fce746cc              # double 8.3107070000000007
	.quad	0x4013ab7281fd9ba2              # double 4.9174290000000003
	.quad	0x4021c07229e90796              # double 8.8758710000000001
	.quad	0x4019c4cc6822ff09              # double 6.4421860000000004
	.quad	0x3ffbc9070fbeb9e5              # double 1.7365790000000001
	.quad	0x4016ab328b6d86ec              # double 5.6671849999999999
	.quad	0x401286694898f606              # double 4.6312610000000003
	.quad	0x4006f99aa60913a5              # double 2.871877
	.quad	0x401d175818c5c9a3              # double 7.2727969999999997
	.quad	0x40138308787485e4              # double 4.8779620000000001
	.quad	0x3fedae5ffa3b9ae1              # double 0.92753600000000003
	.quad	0x401f593bc0a06ea0              # double 7.8371420000000001
	.quad	0x4011c0a3d70a3d71              # double 4.4381250000000003
	.quad	0x40213e7a95c853c1              # double 8.6220289999999995
	.quad	0x40239944aa53fc01              # double 9.7993520000000007
	.quad	0x3fd0ca9ef5232d2c              # double 0.26236700000000002
	.quad	0x4020dc71d6063172              # double 8.4305559999999993
	.quad	0x4020cb402d16b980              # double 8.3969740000000002
	.quad	0x40156b25f633ce64              # double 5.3546370000000003
	.quad	0x4022d1873ffac1d3              # double 9.4092350000000006
	.quad	0x40192699c7bcc294              # double 6.2876960000000004
	.quad	0x401993404ea4a8c1              # double 6.3937999999999997
	.quad	0x40217881e4712e41              # double 8.7353660000000009
	.quad	0x3ff8b1ab0856e697              # double 1.5433760000000001
	.quad	0x4023fe16d6dc1a48              # double 9.9962680000000005
	.quad	0x402042291fb3fa6e              # double 8.1292200000000001
	.quad	0x401d3772d5e071c5              # double 7.3041489999999998
	.quad	0x401445a4acf312b2              # double 5.0680110000000003
	.quad	0x3fd98c26138fffbd              # double 0.39917900000000001
	.quad	0x40226f47735c182f              # double 9.2173420000000004
	.quad	0x4021e489d27c3937              # double 8.9463640000000009
	.quad	0x401ff9f0a1be2b49              # double 7.9940819999999996
	.quad	0x402132c55c96030c              # double 8.5991619999999997
	.quad	0x3ff66efe4ffc9796              # double 1.4020980000000001
	.quad	0x401e1c4dec1c1d6d              # double 7.527641
	.quad	0x401f0a76d97b30f9              # double 7.7602190000000002
	.quad	0x40063cefaa4766c7              # double 2.7797540000000001
	.quad	0x3ff5625c810a569b              # double 1.336514
	.quad	0x4009a4d099e0e736              # double 3.205476
	.quad	0x400abd4d834091c1              # double 3.3424330000000002
	.quad	0x4006349e8815e397              # double 2.775693
	.quad	0x401cb97bfa4c61d8              # double 7.1811369999999997
	.quad	0x4012db15b573eab3              # double 4.7139499999999996
	.quad	0x4021b92dfd694ccb              # double 8.8616790000000005
	.quad	0x400b7670196d8f50              # double 3.4328310000000002
	.quad	0x40068189bd8383ae              # double 2.8132510000000002
	.quad	0x4004078f25a250f8              # double 2.5036909999999999
	.quad	0x3fe0a4febd09e12a              # double 0.52014099999999996
	.quad	0x40068061847f5621              # double 2.8126859999999998
	.quad	0x401d23c60029f16b              # double 7.2849349999999999
	.quad	0x401108448cf7caa7              # double 4.2580739999999997
	.quad	0x40149dab9f559b3d              # double 5.153975
	.quad	0x40224b2b55ef1fde              # double 9.1468150000000001
	.quad	0x4016dbc2b94d9408              # double 5.7146100000000004
	.quad	0x4022433b320535ca              # double 9.1313110000000002
	.quad	0x40143c9d16fc9bc7              # double 5.0591929999999996
	.quad	0x4017798fa376922e              # double 5.8687120000000004
	.quad	0x4013951b93037d63              # double 4.895613
	.quad	0x401090c564f97edc              # double 4.1413779999999996
	.quad	0x40119e503fb37436              # double 4.4046029999999998
	.quad	0x3febd3c148344c38              # double 0.86959900000000001
	.quad	0x400a17ea1c68ec53              # double 3.2616770000000002
	.quad	0x3fd84d983947496b              # double 0.37973600000000002
	.quad	0x3fedcb6848beb5b3              # double 0.93108000000000002
	.quad	0x401dd0370cdc8755              # double 7.453335
	.quad	0x4019835610adcd2d              # double 6.3782579999999998
	.quad	0x401db1d3671ac14c              # double 7.4236579999999996
	.quad	0x3ff8893d96638434              # double 1.533506
	.quad	0x3ffc8877681669cf              # double 1.783317
	.quad	0x40227d2135daad60              # double 9.2443939999999998
	.quad	0x4023d92556d19ded              # double 9.9241130000000001
	.quad	0x40144f30e7ff583a              # double 5.0773349999999997
	.quad	0x400391d041cc532a              # double 2.4461979999999999
	.quad	0x4000c3d9231c64bb              # double 2.0956290000000002
	.quad	0x401255892684cf07              # double 4.5835309999999998
	.quad	0x40159a63f9a49c2c              # double 5.4007719999999999
	.quad	0x4020b84c48adeebb              # double 8.3599569999999996
	.quad	0x4010ff1e4b44a1f1              # double 4.2491390000000004
	.quad	0x40236ea11ec918e3              # double 9.7160729999999997
	.quad	0x3ff954c76d117b53              # double 1.5831980000000001
	.quad	0x4011eaa79bbadc0a              # double 4.4791550000000004
	.quad	0x4015445e0b4e11dc              # double 5.3167650000000002
	.quad	0x402387e004b7f5a5              # double 9.7653809999999996
	.quad	0x4020317df19d66ae              # double 8.0966640000000005
	.quad	0x3fee7a9c12f09d8c              # double 0.95246699999999995
	.quad	0x3f99fb1e18efbb0e              # double 0.025371999999999999
	.quad	0x3fc8b73d188f42ff              # double 0.19309200000000001
	.quad	0x400baa3e7d135116              # double 3.4581270000000002
	.quad	0x401bf800218def41              # double 6.9921879999999996
	.quad	0x3fb039bcba301217              # double 0.063381000000000007
	.quad	0x40098d099e0e7360              # double 3.1938659999999999
	.quad	0x401ec7446f9b994e              # double 7.6945969999999999
	.quad	0x400e973083558a76              # double 3.823823
	.quad	0x401866db0dd82fd7              # double 6.1004449999999997
	.quad	0x400720cc78e9f6a9              # double 2.8910149999999999
	.quad	0x3ff07f972474538f              # double 1.03115
	.quad	0x402189c560c7c0f4              # double 8.7690839999999994
	.quad	0x4010f6638433d6c7              # double 4.2406139999999999
	.quad	0x40122195cc857f30              # double 4.5327979999999997
	.quad	0x400b973f316e3715              # double 3.4488509999999999
	.quad	0x4014a35158b827fa              # double 5.1594899999999999
	.quad	0x3f56fc9bc7714339              # double 0.001403
	.quad	0x3fe19a36e2eb1c43              # double 0.55007499999999998
	.quad	0x3fec35350092ccf7              # double 0.88149500000000003
	.quad	0x400e97b5aea3161a              # double 3.8240769999999999
	.quad	0x401fe4d8ba40d90e              # double 7.9734829999999999
	.quad	0x4009989ce4a7b4e5              # double 3.1995179999999999
	.quad	0x40225b3df2a9d628              # double 9.1782070000000004
	.quad	0x4022faf20ea5b531              # double 9.4901280000000003
	.quad	0x4020adc0767d34df              # double 8.339359
	.quad	0x4019e15f88fc9364              # double 6.470091
	.quad	0x40210e5f5275ee9a              # double 8.5280710000000006
	.quad	0x4005f0e6f2e8c048              # double 2.7426279999999998
	.quad	0x40114df69878316a              # double 4.326136
	.quad	0x401ba34efcbd5561              # double 6.9094810000000004
	.quad	0x3ff8c201cd5f99c4              # double 1.5473650000000001
	.quad	0x401443193f6c269a              # double 5.0655260000000002
	.quad	0x3fef05ff1d81f106              # double 0.96948199999999995
	.quad	0x400b88900c521dda              # double 3.441681
	.quad	0x3fc5ff7164c729f6              # double 0.17185800000000001
	.quad	0x3fe40333fc86cebc              # double 0.62539100000000003
	.quad	0x4013efc32ebe596d              # double 4.9841430000000004
	.quad	0x40220165907d9125              # double 9.0027279999999994
	.quad	0x401d6a03c4b09e99              # double 7.3535300000000001
	.quad	0x40188d0e12e83a11              # double 6.1377490000000003
	.quad	0x400bf08ede54b48d              # double 3.4924599999999999
	.quad	0x4022dbbbc6eb0b7c              # double 9.4291669999999996
	.quad	0x400328259e1f3a58              # double 2.394603
	.quad	0x40138216c61522a7              # double 4.87704
	.quad	0x4022df6a50d6b229              # double 9.4363580000000002
	.quad	0x401f363f141205bc              # double 7.802975
	.quad	0x400ee4f97edc7ef1              # double 3.8618039999999998
	.quad	0x400e2a6a875d56f3              # double 3.7707109999999999
	.quad	0x3ff8cfbfc6540cc8              # double 1.5507200000000001
	.quad	0x4022baaf9a8cdea0              # double 9.3646209999999996
	.quad	0x401f9cfd8f0c77de              # double 7.9033110000000004
	.quad	0x3fef17f1f9acffa8              # double 0.971673
	.quad	0x40229cb407032980              # double 9.3060609999999997
	.quad	0x3fc07cb70ac3a861              # double 0.128806
	.quad	0x4007915379fa97e1              # double 2.9459599999999999
	.quad	0x40146fdc1615ebfb              # double 5.1092380000000004
	.quad	0x3ffeb4e65bea0ba2              # double 1.919165
	.quad	0x3ff961975f2cb641              # double 1.5863259999999999
	.quad	0x4023c13ad5bee3d6              # double 9.877402
	.quad	0x4012d253111f0c35              # double 4.7053950000000002
	.quad	0x3fdb8b8f14db5958              # double 0.43039300000000003
	.quad	0x4011bf67f4dbdf8f              # double 4.4369199999999998
	.quad	0x4001322b7baecd08              # double 2.1494970000000002
	.quad	0x402359c36976bc1f              # double 9.675319
	.quad	0x4012196030c23fab              # double 4.5247809999999999
	.quad	0x400da0b8066c2acc              # double 3.7034760000000002
	.quad	0x3fe60d413122b7bb              # double 0.68911800000000001
	.quad	0x40159197a24894c4              # double 5.3921799999999998
	.quad	0x4021ae68c2613900              # double 8.840643
	.quad	0x401b04ef88b97785              # double 6.7548199999999996
	.quad	0x40028bffcdab191e              # double 2.3183590000000001
	.quad	0x3fd530fcf80dc337              # double 0.33111499999999999
	.quad	0x4013ed35653c9abb              # double 4.981649
	.quad	0x401cfa9973d9ec70              # double 7.244726
	.quad	0x401b2c65c70435f0              # double 6.7933570000000003
	.quad	0x3ff066a22b3892ef              # double 1.0250570000000001
	.quad	0x4023b1d2bf551505              # double 9.8473109999999994
	.quad	0x401957acc4ef88b9              # double 6.3356199999999996
	.quad	0x40110d701d9f4d38              # double 4.2631230000000002
	.quad	0x3ffcf564302b40f6              # double 1.8099099999999999
	.quad	0x4022fb34a44c7b03              # double 9.4906360000000002
	.quad	0x400990d7be9856a3              # double 3.1957239999999998
	.quad	0x40218836c9c0a8d2              # double 8.7660429999999998
	.quad	0x40200f21d53cddd7              # double 8.0295550000000002
	.quad	0x401fa76534373f31              # double 7.9134719999999996
	.quad	0x401bfdd1e53a81dc              # double 6.997871
	.quad	0x3fc372580c308feb              # double 0.15192700000000001
	.quad	0x3fcc3476295208e1              # double 0.22035099999999999
	.quad	0x4006c7caea747d80              # double 2.8475549999999998
	.quad	0x3fdf17b0f6ad70e7              # double 0.485821
	.quad	0x40083cfa26a22b39              # double 3.0297740000000002
	.quad	0x4011999aa60913a5              # double 4.400004
	.quad	0x4015bbacf7446f9c              # double 5.4332770000000004
	.quad	0x401c9201cd5f99c4              # double 7.1425850000000004
	.quad	0x40074f694467381d              # double 2.9137749999999998
	.quad	0x40145c475e6362a6              # double 5.0901160000000001
	.quad	0x401fad22424a276b              # double 7.9190759999999995
	.quad	0x4023bd2deca2552a              # double 9.869491
	.quad	0x4023f9170d62bf12              # double 9.986504
	.quad	0x4017b46801711948              # double 5.9261780000000002
	.quad	0x40192bee3d5fdcdf              # double 6.2929009999999996
	.quad	0x4021bc1a47a9e2bd              # double 8.867388
	.quad	0x4021e6290eed02cd              # double 8.9495319999999996
	.quad	0x402393673c4f3ba7              # double 9.7878969999999991
	.quad	0x40213e5061416378              # double 8.6217070000000007
	.quad	0x4022c9fadafd1138              # double 9.3944919999999996
	.quad	0x401b7451b93037d6              # double 6.8635929999999998
	.quad	0x4023bdaad601ffb5              # double 9.8704440000000008
	.quad	0x4021d0ecfa69be0a              # double 8.9080580000000005
	.quad	0x40108916ca46e08f              # double 4.1338759999999999
	.quad	0x401a1d8a116659d1              # double 6.5288469999999998
	.quad	0x3fff29ec2ce46499              # double 1.947735
	.quad	0x401dbf75104d551d              # double 7.4369699999999996
	.quad	0x3fecd77318fc5048              # double 0.90129999999999999
	.quad	0x3ff54751ce28ed5f              # double 1.329912
	.quad	0x3fe6d1b0ccbc05d5              # double 0.71309699999999998
	.quad	0x3ffe22d5171e29b7              # double 1.8835040000000001
	.quad	0x4014b402d16b97ff              # double 5.1757920000000004
	.quad	0x400c1bcd35a85879              # double 3.5135749999999999
	.quad	0x40114ff25e56cd6c              # double 4.3280729999999998
	.quad	0x400fb6a161e4f766              # double 3.964175
	.quad	0x402044712e40852b              # double 8.1336759999999995
	.quad	0x40210840bfe3b03e              # double 8.5161189999999998
	.quad	0x3ff594a7f8012dfd              # double 1.3487929999999999
	.quad	0x40128f340d4dc65c              # double 4.6398469999999996
	.quad	0x3ff5e3ca7503b81b              # double 1.3681129999999999
	.quad	0x3ffb4e3369b9d7fe              # double 1.7065920000000001
	.quad	0x40228bc07ee0b0af              # double 9.2729529999999993
	.quad	0x401c4d573647baaa              # double 7.0755280000000003
	.quad	0x4011bee7c49fd7a1              # double 4.4364309999999998
	.quad	0x401726088d6d3b6d              # double 5.7871420000000002
	.quad	0x401606e158750c1c              # double 5.5067190000000004
	.quad	0x401a729068986fce              # double 6.6118790000000001
	.quad	0x4004b519bd4067cf              # double 2.588428
	.quad	0x3fd7c996b76709fa              # double 0.37167899999999998
	.quad	0x4012881adea89763              # double 4.6329149999999997
	.quad	0x401eb6cce5f7403e              # double 7.6785160000000001
	.quad	0x4023b4eaf251c194              # double 9.8533550000000005
	.quad	0x401d96777079e59f              # double 7.3969399999999998
	.quad	0x4020bfba8826aa8f              # double 8.3744700000000005
	.quad	0x3fffc606748e4756              # double 1.985846
	.quad	0x3feb0112ba16e7a3              # double 0.84388099999999999
	.quad	0x401bd2ad3e920c07              # double 6.9557390000000003
	.quad	0x400345985ad538ac              # double 2.408982
	.quad	0x400b40767d34df05              # double 3.4064760000000001
	.quad	0x401961e75360d024              # double 6.3456089999999996
	.quad	0x402351ab6d00b45b              # double 9.6595110000000001
	.quad	0x402015887ebf22c0              # double 8.0420569999999998
	.quad	0x40115ff2a172abef              # double 4.343699
	.quad	0x400937143393ab43              # double 3.151894
	.quad	0x401849420b3d4ae4              # double 6.0715409999999999
	.quad	0x401851a86940357a              # double 6.0797439999999998
	.quad	0x4020d07789a45910              # double 8.4071619999999996
	.quad	0x3ffc3191dde37586              # double 1.7621020000000001
	.quad	0x401208f8a4c1ebc8              # double 4.5087609999999998
	.quad	0x40167104d551d68c              # double 5.6103699999999996
	.quad	0x3feeb85e80bed741              # double 0.96000600000000002
	.quad	0x4003daa25d8d79d1              # double 2.4817550000000002
	.quad	0x400d234a87e38eb0              # double 3.6422319999999999
	.quad	0x3ff78268900c521e              # double 1.469338
	.quad	0x4006ce831ad2135e              # double 2.8508360000000001
	.quad	0x401f43f9a49c2c1b              # double 7.8163819999999999
	.quad	0x40217a03c4b09e99              # double 8.7383100000000002
	.quad	0x3fe0a0b3d4ae429e              # double 0.519617
	.quad	0x40210bcba3012168              # double 8.5230379999999997
	.quad	0x401f5dfc9ff92f2b              # double 7.8417839999999996
	.quad	0x400befeef5ec80c7              # double 3.4921549999999999
	.quad	0x401770364388ebcc              # double 5.8595819999999996
	.quad	0x40223bedd8b60f1b              # double 9.1170489999999997
	.quad	0x40237378897e9963              # double 9.7255289999999998
	.quad	0x3ffc4dcdb37c99af              # double 1.7689950000000001
	.quad	0x4014732ca57a786c              # double 5.1124749999999999
	.quad	0x400491819d2391d5              # double 2.5710479999999998
	.quad	0x400f91e85fd04a30              # double 3.9462440000000001
	.quad	0x401e54ea4a8c154d              # double 7.5829250000000003
	.quad	0x401a8784230fcf81              # double 6.6323400000000001
	.quad	0x4010cd5f56a7ac82              # double 4.2005590000000002
	.quad	0x4015d5efa615a8df              # double 5.4589220000000003
	.quad	0x401c9cf52b90a783              # double 7.1532790000000004
	.quad	0x4013a63a5c1c6089              # double 4.9123320000000001
	.quad	0x3ff972f87ad080b6              # double 1.5905689999999999
	.quad	0x40186b7e4de3b8a2              # double 6.1049740000000003
	.quad	0x4021a3e1650a45d4              # double 8.8200789999999997
	.quad	0x4022b22db61bb060              # double 9.3480050000000006
	.quad	0x4006b0153bd16766              # double 2.8359779999999999
	.quad	0x3ffb7c80841ede12              # double 1.7178960000000001
	.quad	0x40226ecb10342aaa              # double 9.2163930000000001
	.quad	0x4014a3ac0c62e4d2              # double 5.1598360000000003
	.quad	0x401c59ae0c176577              # double 7.0875779999999997
	.quad	0x3ffc61bd1ed9dfdb              # double 1.773862
	.quad	0x4021578b7a1c25d0              # double 8.6709859999999992
	.quad	0x400ba56a37ac3eb8              # double 3.4557690000000001
	.quad	0x40230fdb09a671ef              # double 9.5309679999999996
	.quad	0x402364c100e6afcd              # double 9.6967850000000002
	.quad	0x40083e85fd04a2fd              # double 3.030529
	.quad	0x401809d8c6d612c7              # double 6.0096160000000003
	.quad	0x4021fa5c5f7c675a              # double 8.9889860000000006
	.quad	0x4020feb50b0f27bb              # double 8.4974749999999997
	.quad	0x400303ca7503b81b              # double 2.3768509999999998
	.quad	0x40159dd7ecbb7f9d              # double 5.4041439999999996
	.quad	0x4011aac4f7ec3548              # double 4.4167670000000001
	.quad	0x401c8abf33871609              # double 7.1354949999999997
	.quad	0x4005bdf4c2b51bd6              # double 2.7177519999999999
	.quad	0x4006555ef1fddebe              # double 2.7916850000000002
	.quad	0x4010e420f6f08cc5              # double 4.2227819999999996
	.quad	0x3feffee4e26d4802              # double 0.999865
	.quad	0x40144bd4cfd08d4c              # double 5.0740540000000003
	.quad	0x40019c9ff92f2b67              # double 2.2014770000000001
	.quad	0x40204e0eb67c2870              # double 8.1524560000000008
	.quad	0x3ffb272fba01eeee              # double 1.6970670000000001
	.quad	0x4021e28954a7f801              # double 8.9424539999999997
	.quad	0x3ff6160956c0d6f5              # double 1.3803799999999999
	.quad	0x401b3e64f54d1e97              # double 6.8109320000000002
	.quad	0x402046be7afa7222              # double 8.1381720000000008
	.quad	0x40120b6aa4b9884c              # double 4.5111489999999996
	.quad	0x3ff7290257c914b1              # double 1.4475119999999999
	.quad	0x3fd503361565c2d2              # double 0.32832099999999997
	.quad	0x4005fd7a99fa11a9              # double 2.7487689999999998
	.quad	0x4009bc12f09d8c6d              # double 3.2168329999999998
	.quad	0x4020b922d948dc12              # double 8.3615940000000002
	.quad	0x3ffe5510d38cda6e              # double 1.8957679999999999
	.quad	0x3ffa5e71044f1a1a              # double 1.6480570000000001
	.quad	0x3fffa81cb46bacf7              # double 1.9785429999999999
	.quad	0x40128fd4bf0995ab              # double 4.64046
	.quad	0x4016fdc11e42e126              # double 5.7478069999999999
	.quad	0x3fb8e48626f60e0f              # double 0.097237000000000004
	.quad	0x400680a0f4d7add1              # double 2.8128069999999998
	.quad	0x40220ba322af5771              # double 9.022729
	.quad	0x4002e25e99e94ab2              # double 2.3605320000000001
	.quad	0x4023c7f1950331e4              # double 9.8905150000000006
	.quad	0x4003d99c38b04ab6              # double 2.481255
	.quad	0x40219b4d26fa3fcd              # double 8.8033230000000007
	.quad	0x40129fd86a8fc0d3              # double 4.6560990000000002
	.quad	0x3feaf3b85e80bed7              # double 0.84225099999999997
	.quad	0x40227f2170931013              # double 9.2483020000000007
	.quad	0x402043bf727136a4              # double 8.1323199999999999
	.quad	0x3febdabc0e38a7e7              # double 0.87045099999999997
	.quad	0x3ff8dc64ba94bbe4              # double 1.5538069999999999
	.quad	0x4014e2ecf2064239              # double 5.2216069999999997
	.quad	0x40146b5bf6a0dbad              # double 5.1048429999999998
	.quad	0x400dccec41dd1a22              # double 3.72506
	.quad	0x40048c0df58c08b7              # double 2.5683859999999998
	.quad	0x4011906fac6045bb              # double 4.391051
	.quad	0x4010406fef7c243e              # double 4.0629270000000002
	.quad	0x400e42b1704ff434              # double 3.782565
	.quad	0x401c58cef672b884              # double 7.0867269999999998
	.quad	0x40205c5b4aa9717e              # double 8.1803840000000001
	.quad	0x4015cfc0d2c386d3              # double 5.4528840000000001
	.quad	0x401f0454de7ea5f8              # double 7.7542299999999997
	.quad	0x401bf5d4a5df223a              # double 6.9900690000000001
	.quad	0x400086490a350d28              # double 2.065569
	.quad	0x401ee3edd8b60f1b              # double 7.7225869999999998
	.quad	0x401c3e1deacc9214              # double 7.0606609999999996
	.quad	0x402067737da61e0c              # double 8.2020529999999993
	.quad	0x4019973b85e80bed              # double 6.3976879999999996
	.quad	0x4022065f5275ee9a              # double 9.0124460000000006
	.quad	0x401fc057d1782d38              # double 7.9378349999999997
	.quad	0x401e1704ff43419e              # double 7.5224799999999998
	.quad	0x402094daf4adbc66              # double 8.2907329999999995
	.size	.L__constant_5000xf64, 40000

	.section	".note.GNU-stack","",@progbits
