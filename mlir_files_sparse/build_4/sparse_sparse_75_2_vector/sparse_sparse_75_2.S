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
	.quad	0x41425f80a5fca85d              # double 2408193.2967730002
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
	.quad	2500                            # 0x9c4
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	2500                            # 0x9c4
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
	lui	a7, %hi(.L__constant_2500xindex)
	addi	a7, a7, %lo(.L__constant_2500xindex)
	lui	t0, %hi(.L__constant_2500xf64)
	addi	t0, t0, %lo(.L__constant_2500xf64)
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
	.quad	50                              # 0x32
	.quad	50                              # 0x32
	.quad	100                             # 0x64
	.quad	100                             # 0x64
	.quad	150                             # 0x96
	.quad	150                             # 0x96
	.quad	200                             # 0xc8
	.quad	200                             # 0xc8
	.quad	250                             # 0xfa
	.quad	250                             # 0xfa
	.quad	300                             # 0x12c
	.quad	300                             # 0x12c
	.quad	350                             # 0x15e
	.quad	350                             # 0x15e
	.quad	400                             # 0x190
	.quad	400                             # 0x190
	.quad	450                             # 0x1c2
	.quad	450                             # 0x1c2
	.quad	500                             # 0x1f4
	.quad	500                             # 0x1f4
	.quad	550                             # 0x226
	.quad	550                             # 0x226
	.quad	600                             # 0x258
	.quad	600                             # 0x258
	.quad	650                             # 0x28a
	.quad	650                             # 0x28a
	.quad	700                             # 0x2bc
	.quad	700                             # 0x2bc
	.quad	750                             # 0x2ee
	.quad	750                             # 0x2ee
	.quad	800                             # 0x320
	.quad	800                             # 0x320
	.quad	850                             # 0x352
	.quad	850                             # 0x352
	.quad	900                             # 0x384
	.quad	900                             # 0x384
	.quad	950                             # 0x3b6
	.quad	950                             # 0x3b6
	.quad	1000                            # 0x3e8
	.quad	1000                            # 0x3e8
	.quad	1050                            # 0x41a
	.quad	1050                            # 0x41a
	.quad	1100                            # 0x44c
	.quad	1100                            # 0x44c
	.quad	1150                            # 0x47e
	.quad	1150                            # 0x47e
	.quad	1200                            # 0x4b0
	.quad	1200                            # 0x4b0
	.quad	1250                            # 0x4e2
	.quad	1250                            # 0x4e2
	.quad	1300                            # 0x514
	.quad	1300                            # 0x514
	.quad	1350                            # 0x546
	.quad	1350                            # 0x546
	.quad	1400                            # 0x578
	.quad	1400                            # 0x578
	.quad	1450                            # 0x5aa
	.quad	1450                            # 0x5aa
	.quad	1500                            # 0x5dc
	.quad	1500                            # 0x5dc
	.quad	1550                            # 0x60e
	.quad	1550                            # 0x60e
	.quad	1600                            # 0x640
	.quad	1600                            # 0x640
	.quad	1650                            # 0x672
	.quad	1650                            # 0x672
	.quad	1700                            # 0x6a4
	.quad	1700                            # 0x6a4
	.quad	1750                            # 0x6d6
	.quad	1750                            # 0x6d6
	.quad	1800                            # 0x708
	.quad	1800                            # 0x708
	.quad	1850                            # 0x73a
	.quad	1850                            # 0x73a
	.quad	1900                            # 0x76c
	.quad	1900                            # 0x76c
	.quad	1950                            # 0x79e
	.quad	1950                            # 0x79e
	.quad	2000                            # 0x7d0
	.quad	2000                            # 0x7d0
	.quad	2050                            # 0x802
	.quad	2050                            # 0x802
	.quad	2100                            # 0x834
	.quad	2100                            # 0x834
	.quad	2150                            # 0x866
	.quad	2150                            # 0x866
	.quad	2200                            # 0x898
	.quad	2200                            # 0x898
	.quad	2250                            # 0x8ca
	.quad	2250                            # 0x8ca
	.quad	2300                            # 0x8fc
	.quad	2300                            # 0x8fc
	.quad	2350                            # 0x92e
	.quad	2350                            # 0x92e
	.quad	2400                            # 0x960
	.quad	2400                            # 0x960
	.quad	2450                            # 0x992
	.quad	2450                            # 0x992
	.quad	2500                            # 0x9c4
	.quad	2500                            # 0x9c4
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_2500xindex,@object # @__constant_2500xindex
	.p2align	6, 0x0
.L__constant_2500xindex:
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.size	.L__constant_2500xindex, 20000

	.type	.L__constant_2500xf64,@object   # @__constant_2500xf64
	.p2align	6, 0x0
.L__constant_2500xf64:
	.quad	0x400fea0a958537e3              # double 3.9892780000000001
	.quad	0x4014d2dd377e1b8f              # double 5.2059220000000002
	.quad	0x40150116659d12cb              # double 5.2510620000000001
	.quad	0x4022c496aad1d042              # double 9.3839620000000004
	.quad	0x4021ec58ab92c062              # double 8.9616140000000009
	.quad	0x3fed077ee4e26d48              # double 0.907165
	.quad	0x40042878fabda0e0              # double 2.5197620000000001
	.quad	0x401bb77ccc037931              # double 6.9291869999999998
	.quad	0x401620270f388228              # double 5.5313990000000004
	.quad	0x401f1a2c669057d1              # double 7.7755599999999995
	.quad	0x400a59a62ed35222              # double 3.293774
	.quad	0x4020affe8ee6b830              # double 8.3437389999999994
	.quad	0x3ff75f212d773190              # double 1.4607250000000001
	.quad	0x400c8113c68661ae              # double 3.5630259999999998
	.quad	0x401c4fa76534373f              # double 7.0777869999999998
	.quad	0x4022d05d52c16df4              # double 9.406962
	.quad	0x400543193f6c269a              # double 2.6577630000000001
	.quad	0x3fdb6ed245b291b8              # double 0.42863899999999999
	.quad	0x400ac5c67dfe32a0              # double 3.3465699999999998
	.quad	0x3ff3ccfe154434e3              # double 1.237547
	.quad	0x3ff3a584f4c6e6da              # double 1.2279100000000001
	.quad	0x4012350870110a13              # double 4.5517899999999996
	.quad	0x401faefbf401c4fc              # double 7.9208829999999999
	.quad	0x4021b1aeb3dd11be              # double 8.8470359999999992
	.quad	0x40223bb688bda943              # double 9.1166269999999994
	.quad	0x401087e02645e4e7              # double 4.1326910000000003
	.quad	0x402158121682f944              # double 8.6720129999999997
	.quad	0x40228480e8c8abd6              # double 9.2587960000000002
	.quad	0x3ff6e1eb4202d9cf              # double 1.430156
	.quad	0x40068d1633482be9              # double 2.8188900000000001
	.quad	0x40204ae642bf9831              # double 8.1462880000000002
	.quad	0x3ffce71bcdbbe015              # double 1.8064229999999999
	.quad	0x40214810a569b175              # double 8.6407520000000009
	.quad	0x4009fd24180d3cff              # double 3.2486039999999998
	.quad	0x3ff31aa4fca42aed              # double 1.194005
	.quad	0x401b702107b78466              # double 6.8595009999999998
	.quad	0x401c203148776816              # double 7.0314379999999996
	.quad	0x3ff79c9d5a187a4a              # double 1.4757359999999999
	.quad	0x400c75d80e496edf              # double 3.5575410000000001
	.quad	0x4021e1b54195cc85              # double 8.9408359999999991
	.quad	0x40215111cf355cd9              # double 8.6583389999999998
	.quad	0x3fd07c3d68405b3a              # double 0.25758300000000001
	.quad	0x40233b0d7386099a              # double 9.6153370000000002
	.quad	0x400220407cc7d1bb              # double 2.2657479999999999
	.quad	0x40103e6ab9b23dd5              # double 4.0609539999999997
	.quad	0x3ff92a1405708249              # double 1.572773
	.quad	0x400814e22a2c2374              # double 3.0101969999999998
	.quad	0x3ff28dfaca361998              # double 1.1596630000000001
	.quad	0x3ff738151a437825              # double 1.451192
	.quad	0x401c315ad106ee31              # double 7.0481980000000002
	.quad	0x4017182a9930be0e              # double 5.7736000000000001
	.quad	0x4011480b242070b9              # double 4.3203550000000002
	.quad	0x401793ea704bc276              # double 5.8944489999999998
	.quad	0x4016d0780fdc1616              # double 5.7035830000000001
	.quad	0x401c579dd3bafd97              # double 7.0855629999999996
	.quad	0x4022d3e7afa72218              # double 9.4138769999999993
	.quad	0x40103c2656abde40              # double 4.0587400000000002
	.quad	0x3fe63dc054ef459e              # double 0.69503800000000004
	.quad	0x4000f4d056c508b3              # double 2.1195379999999999
	.quad	0x402143bcf4e874c9              # double 8.632301
	.quad	0x4005af944241c3f0              # double 2.7107320000000001
	.quad	0x40004ded288ce704              # double 2.0380500000000001
	.quad	0x3ff0ad948dc11e43              # double 1.042378
	.quad	0x402070051c9f72f7              # double 8.2187889999999992
	.quad	0x4010e4eb13dfb0d5              # double 4.2235529999999999
	.quad	0x4021f3d4f15e7c8d              # double 8.9762339999999998
	.quad	0x3fd4ecb74ddf86e4              # double 0.32694800000000002
	.quad	0x40025dabe27179c0              # double 2.2957380000000001
	.quad	0x3ffc6acc92146a1a              # double 1.7760739999999999
	.quad	0x3fe26c5d206c8712              # double 0.57572800000000002
	.quad	0x401ef54a3c64345d              # double 7.739541
	.quad	0x401b20c5eb313be2              # double 6.7820049999999998
	.quad	0x400b7e2046c764ae              # double 3.436585
	.quad	0x402175028a1dfb94              # double 8.7285350000000008
	.quad	0x402371b5c7cd898b              # double 9.7220899999999996
	.quad	0x3ff2503211cb039f              # double 1.144579
	.quad	0x401c79df97aaac11              # double 7.1190170000000004
	.quad	0x40226ae297396d09              # double 9.2087599999999998
	.quad	0x40002f7a919695d9              # double 2.023183
	.quad	0x40208df5275ee99a              # double 8.2772609999999993
	.quad	0x4007cdb37c99ae92              # double 2.9754399999999999
	.quad	0x4023faddbdb5d895              # double 9.9899730000000008
	.quad	0x4020ecc8366516db              # double 8.4624649999999999
	.quad	0x4006adc3bd599243              # double 2.8348460000000002
	.quad	0x4017f5ebb7739f34              # double 5.990157
	.quad	0x402033380cb6c7a8              # double 8.1000370000000004
	.quad	0x40100b80a9de8b3b              # double 4.0112329999999998
	.quad	0x401a4392e1ef73c1              # double 6.5659900000000002
	.quad	0x402007da836eb4ea              # double 8.0153390000000009
	.quad	0x4019fbf9830e3cda              # double 6.4960690000000003
	.quad	0x401cdf4906034f40              # double 7.2180520000000001
	.quad	0x3fe85912556d19df              # double 0.76087300000000002
	.quad	0x400a2bef8ceb356e              # double 3.2714530000000002
	.quad	0x4011dc7abfb9bed3              # double 4.4653119999999999
	.quad	0x4020d82ecaeea63b              # double 8.4222319999999993
	.quad	0x401694d76ab58080              # double 5.6453530000000001
	.quad	0x4016edf505d0fa59              # double 5.73238
	.quad	0x3feacac083126e98              # double 0.83725000000000005
	.quad	0x40045a94bbe4473d              # double 2.5442290000000001
	.quad	0x3fef0fc9363f572e              # double 0.97067700000000001
	.quad	0x4021e6a487336588              # double 8.9504739999999998
	.quad	0x3fec997c3d68405b              # double 0.89373599999999997
	.quad	0x400886d2ed783dff              # double 3.0658319999999999
	.quad	0x402176d00b45ae60              # double 8.732056
	.quad	0x4010165ecc3e3194              # double 4.021846
	.quad	0x3fd972c0e7bc3c5c              # double 0.39762900000000001
	.quad	0x40154fd976ff3ade              # double 5.3279779999999999
	.quad	0x4011b5425f202108              # double 4.4270110000000003
	.quad	0x4016245f17bd8be7              # double 5.5355189999999999
	.quad	0x4021cba71151611c              # double 8.8977590000000006
	.quad	0x400b12dc2b0ea183              # double 3.3842089999999998
	.quad	0x40149aad1d041cc5              # double 5.1510509999999998
	.quad	0x40105833c60029f1              # double 4.0861349999999996
	.quad	0x401d53f42352eb5f              # double 7.3319859999999997
	.quad	0x3fd304d12018a43c              # double 0.29716900000000002
	.quad	0x4013742cc2d6a9c5              # double 4.8634519999999997
	.quad	0x402317ae7924af0c              # double 9.546253
	.quad	0x4010429e0a41a262              # double 4.0650560000000002
	.quad	0x4021b8468448cf7d              # double 8.8599130000000006
	.quad	0x401df5ffe6d58c8f              # double 7.490234
	.quad	0x401b7b8348f53c58              # double 6.8706180000000003
	.quad	0x4003f531550ca1cf              # double 2.494723
	.quad	0x401d077e5eaab042              # double 7.2573179999999997
	.quad	0x40159de2ef4e0115              # double 5.4041860000000002
	.quad	0x40126d4306e5cd4f              # double 4.6067010000000002
	.quad	0x400ecad256798959              # double 3.8490340000000001
	.quad	0x400204b6e935b91f              # double 2.2523019999999998
	.quad	0x401f7a250f840182              # double 7.8692820000000001
	.quad	0x4022ecdfce3150db              # double 9.4626450000000001
	.quad	0x3ffa5fe542e557de              # double 1.648412
	.quad	0x401fc7f23cc8de2b              # double 7.9452600000000002
	.quad	0x402170288051c9f7              # double 8.7190589999999997
	.quad	0x3ffd50adcd2d44dd              # double 1.8321970000000001
	.quad	0x3ff1fe004b7f5a53              # double 1.124512
	.quad	0x401f20ce4ead0c3d              # double 7.7820369999999998
	.quad	0x401f616659d12cae              # double 7.8451170000000001
	.quad	0x3fdf5a682b62845a              # double 0.48989300000000002
	.quad	0x4008815a07b352a8              # double 3.0631599999999999
	.quad	0x3fe4d471715c63ae              # double 0.65093299999999998
	.quad	0x401187c914b167ec              # double 4.3826029999999996
	.quad	0x40166a009f623077              # double 5.6035180000000002
	.quad	0x3ff3cfeac42e989a              # double 1.2382610000000001
	.quad	0x40150fd36f7e3d1d              # double 5.2654550000000002
	.quad	0x400f6f7e3d1cc101              # double 3.92944
	.quad	0x3fd4798958d9b5e9              # double 0.31991799999999998
	.quad	0x402279eb4202d9cf              # double 9.2381229999999999
	.quad	0x4006c95bff04577e              # double 2.8483200000000002
	.quad	0x4016d6defc7a3982              # double 5.709835
	.quad	0x40171400b88ca3e8              # double 5.7695340000000002
	.quad	0x40035ff92f2b66b6              # double 2.421862
	.quad	0x4006f9285a921cce              # double 2.8716590000000002
	.quad	0x4021be8f08461f9f              # double 8.872185
	.quad	0x401f226b723ee1bd              # double 7.7836129999999998
	.quad	0x3ff4a43ed959a30a              # double 1.2900990000000001
	.quad	0x400fb246bf01322f              # double 3.9620489999999999
	.quad	0x40208642bf9830e4              # double 8.2622280000000003
	.quad	0x3fc88262456f75da              # double 0.19147900000000001
	.quad	0x4015124d8fd5cb79              # double 5.2678739999999999
	.quad	0x400df7521144cbe2              # double 3.745762
	.quad	0x4016a00ef1348b22              # double 5.656307
	.quad	0x4016d07e175d13d7              # double 5.7036059999999997
	.quad	0x400b134373f316e3              # double 3.3844059999999998
	.quad	0x4008216bdb1a6d6a              # double 3.0163190000000002
	.quad	0x4013b051c9f72f77              # double 4.9221870000000001
	.quad	0x40197193b3a68b1a              # double 6.3609150000000003
	.quad	0x401a35286b59146e              # double 6.5519119999999997
	.quad	0x40093fd36f7e3d1d              # double 3.1561650000000001
	.quad	0x402081fb3fa6defc              # double 8.2538699999999991
	.quad	0x401180385c67dfe3              # double 4.3752149999999999
	.quad	0x3ff3ac81d3aa36a0              # double 1.229616
	.quad	0x40101f54d1e96c40              # double 4.0305970000000002
	.quad	0x4001ebdba0a52696              # double 2.2401650000000002
	.quad	0x402171a719b4dcec              # double 8.721978
	.quad	0x3fb9a87a072d1aeb              # double 0.100227
	.quad	0x4022bd66277c45cc              # double 9.3699200000000004
	.quad	0x3ff53f42352eb5f6              # double 1.327944
	.quad	0x4016b8d92fb19e73              # double 5.6805159999999999
	.quad	0x40232d3c36113405              # double 9.5883500000000001
	.quad	0x400ca02d9cf13cef              # double 3.5782120000000002
	.quad	0x4010902e6644d877              # double 4.1408019999999999
	.quad	0x3fc441c3efae7925              # double 0.15825700000000001
	.quad	0x4019a8bd66277c46              # double 6.4147850000000002
	.quad	0x401b25d462c343b7              # double 6.7869429999999999
	.quad	0x4017deb2074ea8da              # double 5.9674759999999996
	.quad	0x401b6e09784ec637              # double 6.8574580000000003
	.quad	0x402360d1958969a1              # double 9.6890990000000005
	.quad	0x3fcfc382a12f9011              # double 0.24815400000000001
	.quad	0x402177d21ff2e48f              # double 8.7340250000000008
	.quad	0x3ffab9fba450acc1              # double 1.6704060000000001
	.quad	0x3fde23f24d8fd5cb              # double 0.47094399999999997
	.quad	0x4023b7bfa4c61d86              # double 9.8588839999999998
	.quad	0x3ffad62f166e008f              # double 1.6772910000000001
	.quad	0x4021351aeb3dd11c              # double 8.6037210000000001
	.quad	0x3ffdffd2e9468017              # double 1.874957
	.quad	0x3ff6d88b11409a24              # double 1.427867
	.quad	0x3ff43632c1f42bb6              # double 1.2632319999999999
	.quad	0x3fd98bd230b9dc2f              # double 0.39915899999999999
	.quad	0x4020ec42e9899bf6              # double 8.4614480000000007
	.quad	0x400b926394face68              # double 3.4464790000000001
	.quad	0x4016ae6c8f755369              # double 5.6703359999999998
	.quad	0x40175f2495e17e35              # double 5.8429130000000002
	.quad	0x40189422036006d1              # double 6.1446610000000002
	.quad	0x4022897b7414a4d3              # double 9.2685200000000005
	.quad	0x3feef972474538ef              # double 0.96794999999999997
	.quad	0x400c3c579f234656              # double 3.5294639999999999
	.quad	0x401622bc2fc69729              # double 5.5339210000000003
	.quad	0x400a665add9c27e9              # double 3.2999779999999999
	.quad	0x40237f2f55582129              # double 9.7484079999999995
	.quad	0x401a231487768167              # double 6.5342580000000003
	.quad	0x3f52f901083dbc23              # double 0.001158
	.quad	0x40177271bcdbbe01              # double 5.8617619999999997
	.quad	0x4017a7ec7863beec              # double 5.9139879999999998
	.quad	0x401a11b64e054691              # double 6.5172970000000001
	.quad	0x4020bb96f21f6cad              # double 8.3663860000000003
	.quad	0x40227cf70153bd16              # double 9.2440719999999992
	.quad	0x40017b9628cbd124              # double 2.1853449999999999
	.quad	0x401713cddd6e04c0              # double 5.7693399999999997
	.quad	0x401c6a62aa19439e              # double 7.1038920000000001
	.quad	0x4020a79378ee2867              # double 8.3272969999999997
	.quad	0x401c9fa54c554328              # double 7.1559039999999996
	.quad	0x402242a19439de48              # double 9.1301389999999998
	.quad	0x3ffb672324c83665              # double 1.71268
	.quad	0x4021b9a3d2d87f88              # double 8.8625779999999992
	.quad	0x3fd865a14488c60d              # double 0.38120300000000001
	.quad	0x40177b8b69552e30              # double 5.8706490000000002
	.quad	0x402127b3fa6defc8              # double 8.5775450000000006
	.quad	0x40206f84449dbec2              # double 8.2178059999999995
	.quad	0x3f92495e17e34b94              # double 0.017857999999999999
	.quad	0x4022abcb1cc96463              # double 9.3355340000000009
	.quad	0x401839270b06c43f              # double 6.0558129999999997
	.quad	0x4014af633ce63a5c              # double 5.1712769999999999
	.quad	0x400542d8c2a454de              # double 2.6576399999999998
	.quad	0x4009b07af20ea5b5              # double 3.2111719999999999
	.quad	0x402096c8f7553693              # double 8.2945019999999996
	.quad	0x402302a3ad18d25f              # double 9.5051550000000002
	.quad	0x3ffa6775fb2edfe7              # double 1.6502589999999999
	.quad	0x400e6b4e9813879c              # double 3.8023959999999999
	.quad	0x401049fadafd1138              # double 4.0722459999999998
	.quad	0x40226585be1a8262              # double 9.1982859999999995
	.quad	0x4015093037d63023              # double 5.2589730000000001
	.quad	0x3fe9e523704790b8              # double 0.80922099999999997
	.quad	0x401882e33eff1950              # double 6.1278199999999998
	.quad	0x4004d99a1fd1569f              # double 2.6062509999999999
	.quad	0x400b5b6b2af14552              # double 3.419638
	.quad	0x3fcc919ef954eb14              # double 0.223194
	.quad	0x401622e557de0d67              # double 5.5340780000000001
	.quad	0x402022e74f2f123c              # double 8.0681709999999995
	.quad	0x40169b7f1737542a              # double 5.6518519999999999
	.quad	0x40138148ba83f4ed              # double 4.8762540000000003
	.quad	0x4020b46801711948              # double 8.3523560000000003
	.quad	0x40176e653868fd1a              # double 5.8578080000000003
	.quad	0x40209b40f66a5508              # double 8.3032299999999992
	.quad	0x40032778140dd3fe              # double 2.394272
	.quad	0x400024db163baba8              # double 2.0179960000000001
	.quad	0x401d9cd8127b2cc7              # double 7.403168
	.quad	0x4002f415b1422ccb              # double 2.3691819999999999
	.quad	0x401f584167a95c85              # double 7.8361869999999997
	.quad	0x3fce0b5675579af2              # double 0.23472100000000001
	.quad	0x40213bd05af6c69b              # double 8.6168239999999994
	.quad	0x4010f53b4b2fa93b              # double 4.239484
	.quad	0x40125ab5c39bcba3              # double 4.588584
	.quad	0x400a9ceb78897e99              # double 3.3266209999999998
	.quad	0x400d40ffda4052d6              # double 3.6567379999999998
	.quad	0x402220a2014727dd              # double 9.0637360000000005
	.quad	0x4013ca50d6b228dd              # double 4.9475740000000004
	.quad	0x4010f2a1f8e3ac0c              # double 4.2369459999999997
	.quad	0x401dbb28522ea0fd              # double 7.4327709999999998
	.quad	0x4015fb15f88fc936              # double 5.4952009999999998
	.quad	0x4010c3ad9f0a1be3              # double 4.1910920000000003
	.quad	0x4023d76a50d6b229              # double 9.9207330000000002
	.quad	0x3ffcd351159c4977              # double 1.8015909999999999
	.quad	0x401e26a50d6b228e              # double 7.5377390000000002
	.quad	0x40105709fa54c554              # double 4.0849989999999998
	.quad	0x40115fcdab191dde              # double 4.3435579999999998
	.quad	0x3fd12a94ff0025c0              # double 0.26822400000000002
	.quad	0x402087202107b784              # double 8.2639169999999992
	.quad	0x4013e7cdcca70d20              # double 4.9763710000000003
	.quad	0x401f2051c9f72f77              # double 7.781562
	.quad	0x3ff1d29fe004b7f6              # double 1.1139220000000001
	.quad	0x3fe99ecb31c219eb              # double 0.80063399999999996
	.quad	0x401321040bfe3b04              # double 4.7822420000000001
	.quad	0x402246d58c8eef1c              # double 9.1383480000000005
	.quad	0x3fe6b5568e820e63              # double 0.70963600000000004
	.quad	0x400014eb9a176ddb              # double 2.0102150000000001
	.quad	0x400cf0268900c522              # double 3.6172610000000001
	.quad	0x3ff4bb2edfe75bc4              # double 1.2956989999999999
	.quad	0x3fd388b545c78a6e              # double 0.30521900000000002
	.quad	0x3ff2eff6d330941d              # double 1.1835850000000001
	.quad	0x4020bc9fb6134ce4              # double 8.3684060000000002
	.quad	0x400e46ca89fc6da4              # double 3.7845659999999999
	.quad	0x400e8d0b30b5aa71              # double 3.8188689999999998
	.quad	0x402236468cac4b4d              # double 9.106007
	.quad	0x400e13c46d82ba5a              # double 3.759652
	.quad	0x4021f262ed352221              # double 8.9734110000000005
	.quad	0x401ec03686a4ca4f              # double 7.6877079999999997
	.quad	0x4021167d1351159c              # double 8.5439229999999994
	.quad	0x400c8e8c8abd5dc4              # double 3.569604
	.quad	0x3f9ad9274e22a2c2              # double 0.026218999999999999
	.quad	0x4023bb74794ea077              # double 9.8661229999999999
	.quad	0x401127b9170d62bf              # double 4.2887919999999999
	.quad	0x4020e36f19934efd              # double 8.4442070000000005
	.quad	0x4004b40a2877ee4e              # double 2.5879099999999999
	.quad	0x40032581cf7878b8              # double 2.3933140000000002
	.quad	0x402211dc50ce4ead              # double 9.0348839999999999
	.quad	0x4011c09fa54c5543              # double 4.4381089999999999
	.quad	0x402047ad8e432442              # double 8.139996
	.quad	0x400fb44806290eed              # double 3.963028
	.quad	0x4023d0880d801b43              # double 9.9072879999999994
	.quad	0x401ec7214f0520d1              # double 7.6944629999999998
	.quad	0x40178da87a072d1b              # double 5.8883380000000001
	.quad	0x3f75ae1cde5d1809              # double 0.005293
	.quad	0x40162929ed3953df              # double 5.5401990000000003
	.quad	0x40213bb3636f3b21              # double 8.6166029999999996
	.quad	0x40005b05faebc409              # double 2.0444450000000001
	.quad	0x40228aee631f8a09              # double 9.27135
	.quad	0x4000b5ae1cde5d18              # double 2.088711
	.quad	0x401ea740c4156e26              # double 7.6633329999999997
	.quad	0x401f36fa3fcc9eaa              # double 7.8036890000000003
	.quad	0x4022945c78a6dacb              # double 9.2897680000000005
	.quad	0x3fc3a9b068123811              # double 0.153616
	.quad	0x401d0bbf50e34763              # double 7.2614720000000004
	.quad	0x40197174c4cdfaca              # double 6.3607969999999998
	.quad	0x4022113b3a68b19a              # double 9.0336549999999995
	.quad	0x401da67e846a5d6c              # double 7.4125920000000001
	.quad	0x401ae48882f0e0a8              # double 6.7231769999999997
	.quad	0x4017df3775b81301              # double 5.9679849999999997
	.quad	0x4004af6a50d6b229              # double 2.5856520000000001
	.quad	0x3ff44f68be2f7b18              # double 1.269387
	.quad	0x402163892ee84ad8              # double 8.6944060000000007
	.quad	0x40206f5558212945              # double 8.2174479999999992
	.quad	0x4012e918e325d4a6              # double 4.7276340000000001
	.quad	0x3fa88d2a1f8e3ac1              # double 0.047952000000000002
	.quad	0x3ff3c406c00da1a9              # double 1.235358
	.quad	0x400876672fba01ef              # double 3.057814
	.quad	0x4021b135b91f70df              # double 8.8461130000000008
	.quad	0x4013e0485a0be511              # double 4.9690260000000004
	.quad	0x4011902d16b97fe9              # double 4.3907970000000001
	.quad	0x401b311ec918e326              # double 6.7979690000000002
	.quad	0x4023600389f83be6              # double 9.6875269999999993
	.quad	0x4000c6ae3a3a8e71              # double 2.0970119999999999
	.quad	0x3ff0fb28954a7f80              # double 1.061318
	.quad	0x4013e017dae81883              # double 4.9688410000000003
	.quad	0x402069700cd85597              # double 8.2059329999999999
	.quad	0x400ab881a1554fbe              # double 3.3400910000000001
	.quad	0x400a0f6f08cc575c              # double 3.257536
	.quad	0x401ceb46fdeb52ca              # double 7.2297630000000002
	.quad	0x4011bc3dee781840              # double 4.4338300000000004
	.quad	0x401cae1b089a0275              # double 7.1700249999999999
	.quad	0x3fdbcf52b90a7829              # double 0.434529
	.quad	0x3ff64b71b8aa0019              # double 1.393419
	.quad	0x40237739f340d4dc              # double 9.7328639999999992
	.quad	0x4002e6644d877250              # double 2.3624960000000002
	.quad	0x3ff21f4c2b51bd62              # double 1.132641
	.quad	0x4015e2a51e321a2e              # double 5.4713329999999996
	.quad	0x3ffbe1e3eaf6837f              # double 1.7426489999999999
	.quad	0x3ff99287c200c0f0              # double 1.598274
	.quad	0x4009ae160d887ebf              # double 3.2100029999999999
	.quad	0x3fdad48cb4aec8d6              # double 0.41922300000000001
	.quad	0x4020fefaa4766c6e              # double 8.4980060000000002
	.quad	0x401bccf2495e17e3              # double 6.9501429999999997
	.quad	0x401d263305100a39              # double 7.2873039999999998
	.quad	0x40100dddb1209edc              # double 4.013541
	.quad	0x400aeb65a9a80496              # double 3.3649399999999998
	.quad	0x401f59e060fe4799              # double 7.8377699999999999
	.quad	0x4014c5e4606748e4              # double 5.1932539999999996
	.quad	0x401f91bc55864452              # double 7.8923199999999998
	.quad	0x40170c7d1bb4916d              # double 5.7621960000000003
	.quad	0x3fd04ff865d7cb2e              # double 0.25488100000000002
	.quad	0x3fffd21ab4b72c52              # double 1.9887950000000001
	.quad	0x4022accad57bc7f7              # double 9.3374849999999991
	.quad	0x40217f46455eaee2              # double 8.748583
	.quad	0x401532702a3486f0              # double 5.2992559999999997
	.quad	0x400f879463cfb331              # double 3.941201
	.quad	0x400b45e5f30e7ff6              # double 3.4091300000000002
	.quad	0x40071854046412cf              # double 2.886879
	.quad	0x40015b04ee7c49fd              # double 2.1694429999999998
	.quad	0x3fd49d451fc4c166              # double 0.32209900000000002
	.quad	0x3fe38cbd1244a622              # double 0.61092999999999997
	.quad	0x401ebd4024b33db0              # double 7.6848150000000004
	.quad	0x40204d454152b0a7              # double 8.150919
	.quad	0x4004193250b5243a              # double 2.5123030000000002
	.quad	0x401274d551d68c69              # double 4.6140949999999998
	.quad	0x3fae733ebbfd71b0              # double 0.059472999999999998
	.quad	0x4018c07d0aed99cc              # double 6.1879770000000001
	.quad	0x40119fc158fb43d9              # double 4.4060110000000003
	.quad	0x40235186338b47c7              # double 9.6592269999999995
	.quad	0x4020030e5e679464              # double 8.0059690000000003
	.quad	0x3ff2bb30f8c64fdb              # double 1.170701
	.quad	0x4008fb089a027525              # double 3.1225749999999999
	.quad	0x40217d4c122749f1              # double 8.7447210000000002
	.quad	0x3fca69b5a63f9a4a              # double 0.20635100000000001
	.quad	0x3fea79335d249e45              # double 0.827295
	.quad	0x4001f7cfe5860136              # double 2.2460019999999998
	.quad	0x4011a8b11409a240              # double 4.4147379999999998
	.quad	0x4020d968b5cbff47              # double 8.4246269999999992
	.quad	0x40126b3311a543f2              # double 4.6046870000000002
	.quad	0x40215df5f0b28523              # double 8.6835170000000002
	.quad	0x4003228134480629              # double 2.391848
	.quad	0x3ff1f9baa1511e00              # double 1.1234690000000001
	.quad	0x40159cebfec13b9f              # double 5.4032439999999999
	.quad	0x4020f6cbb7f9d6f1              # double 8.4820229999999999
	.quad	0x40196a459103c8e2              # double 6.3537809999999997
	.quad	0x3fe1947cfa26a22b              # double 0.54937599999999998
	.quad	0x400527b4e54f7a92              # double 2.6443880000000002
	.quad	0x40180b9a5a89b952              # double 6.0113310000000002
	.quad	0x3ff750268900c522              # double 1.457068
	.quad	0x401bf780baa582dc              # double 6.9917020000000001
	.quad	0x402113673c4f3ba7              # double 8.5378969999999992
	.quad	0x4001def5232d2bb2              # double 2.2338659999999999
	.quad	0x401daa26a22b3893              # double 7.4161630000000001
	.quad	0x4015eab29e4d5d81              # double 5.4791970000000001
	.quad	0x4002d20e1f7d73c9              # double 2.3525659999999999
	.quad	0x40159b3bb83cf2d0              # double 5.4015950000000004
	.quad	0x400aa934267839ce              # double 3.3326190000000002
	.quad	0x4017619c17225b75              # double 5.8453220000000004
	.quad	0x4023bca643cc07ab              # double 9.8684560000000001
	.quad	0x4020e8b8cfbfc654              # double 8.4545349999999999
	.quad	0x4023a0b73d188f43              # double 9.813898
	.quad	0x401dba4a05dd8f93              # double 7.4319230000000003
	.quad	0x401622ecf2064239              # double 5.5341069999999997
	.quad	0x401f4a53b8e4b87c              # double 7.8225850000000001
	.quad	0x401e403c8e25c811              # double 7.5627310000000003
	.quad	0x401bc6db50f40e5a              # double 6.9441959999999998
	.quad	0x40205ed0917d6b66              # double 8.1851850000000006
	.quad	0x3fd9052d666a9824              # double 0.39094099999999998
	.quad	0x40225f3c925785f9              # double 9.1860090000000003
	.quad	0x3ff2ef3f52fc2657              # double 1.1834100000000001
	.quad	0x402187bd8be7296f              # double 8.7651179999999993
	.quad	0x401720a782906898              # double 5.7818889999999996
	.quad	0x3fd0232096787ce9              # double 0.25214399999999998
	.quad	0x40022232096787cf              # double 2.2666970000000002
	.quad	0x40162e92923e5b85              # double 5.5454809999999997
	.quad	0x401cd90ff9724745              # double 7.2119749999999998
	.quad	0x40067ad106ee30cb              # double 2.8099690000000002
	.quad	0x4013e46e08f21709              # double 4.9730759999999998
	.quad	0x4014fb21c475e636              # double 5.2452459999999999
	.quad	0x401a35471715c63b              # double 6.5520290000000001
	.quad	0x4021ffc19c17225b              # double 8.9995239999999992
	.quad	0x401c3f31f46ed246              # double 7.0617140000000003
	.quad	0x3ffcd5a07b352a84              # double 1.802155
	.quad	0x401ce44b2b777d0f              # double 7.2229429999999999
	.quad	0x4019b0852b4d8ba4              # double 6.422383
	.quad	0x4017be93e1c9b414              # double 5.9361110000000004
	.quad	0x401f19b499d0203e              # double 7.7751029999999997
	.quad	0x40032f96e158750c              # double 2.398237
	.quad	0x401153c7d5ed06ff              # double 4.331817
	.quad	0x400daa222d5171e3              # double 3.7080730000000002
	.quad	0x3fec6136e71cda2b              # double 0.88686699999999996
	.quad	0x3ffc5372a38b8ae3              # double 1.770373
	.quad	0x4013cd017dae8188              # double 4.9502009999999999
	.quad	0x401821b97353b4b3              # double 6.032934
	.quad	0x4006d06e5cd4ed2d              # double 2.8517730000000001
	.quad	0x401ed3aeab7995ee              # double 7.7067209999999999
	.quad	0x40109e77d523b363              # double 4.1547539999999996
	.quad	0x4012f1a60d4562e1              # double 4.7359850000000003
	.quad	0x401efcd035371972              # double 7.7468880000000002
	.quad	0x3ff8653da72a7bd5              # double 1.5247170000000001
	.quad	0x401d0713ad5bee3d              # double 7.2569109999999997
	.quad	0x4021b74c6e6d9be5              # double 8.8580050000000004
	.quad	0x4015a15f45e0b4e1              # double 5.4075899999999999
	.quad	0x4008f8feef5ec80c              # double 3.1215799999999998
	.quad	0x4012b7bfa4c61d86              # double 4.6794419999999999
	.quad	0x4013493a71151612              # double 4.8215120000000002
	.quad	0x3ff7ce4da09cc31a              # double 1.4878670000000001
	.quad	0x401ec835158b8280              # double 7.6955150000000003
	.quad	0x40203acabc515486              # double 8.1148279999999993
	.quad	0x401fc681ecd4aa11              # double 7.9438550000000001
	.quad	0x40048954a7f8012e              # double 2.567056
	.quad	0x401941d53cddd6e0              # double 6.3142899999999997
	.quad	0x3fee27674d163348              # double 0.94230999999999998
	.quad	0x401bb7d49d7ba66a              # double 6.9295220000000004
	.quad	0x401ae5dd8f92af9b              # double 6.7244780000000004
	.quad	0x3fe980de4c51116b              # double 0.79698100000000005
	.quad	0x3ff68ed0b30b5aa7              # double 1.409867
	.quad	0x400f970c564f97ee              # double 3.9487540000000001
	.quad	0x40154a176ddaceee              # double 5.3223549999999999
	.quad	0x4014b29c779a6b51              # double 5.1744250000000003
	.quad	0x4006a059210385c6              # double 2.8282949999999998
	.quad	0x4018f73b85e80bed              # double 6.2414379999999996
	.quad	0x4006cea39c51dabe              # double 2.8508979999999999
	.quad	0x401f6f75d9a0f0a6              # double 7.8588480000000001
	.quad	0x40218e9dd7ecbb80              # double 8.7785480000000007
	.quad	0x3fe486a2b1704ff4              # double 0.64143499999999998
	.quad	0x3fc0958537e2c55d              # double 0.12956300000000001
	.quad	0x4014a69552e2fbe3              # double 5.1626789999999998
	.quad	0x4008b77f27fe4bcb              # double 3.0895980000000001
	.quad	0x400ee0abf76a2f49              # double 3.8597030000000001
	.quad	0x40211bf8db489093              # double 8.5546330000000008
	.quad	0x402019e321a2e7f7              # double 8.0505610000000001
	.quad	0x400116feb4a6655a              # double 2.136228
	.quad	0x402064c5da6a4441              # double 8.1968219999999992
	.quad	0x4017b89f40a2877f              # double 5.9302950000000001
	.quad	0x4018fb70691ea78b              # double 6.245546
	.quad	0x40235a033e78e193              # double 9.6758059999999996
	.quad	0x402289eb851eb852              # double 9.2693750000000001
	.quad	0x400cf782d38476f3              # double 3.6208550000000002
	.quad	0x4009f9a6b50b0f28              # double 3.2469000000000001
	.quad	0x3fff64f227d028a2              # double 1.962145
	.quad	0x3ffa554434e3369c              # double 1.6458170000000001
	.quad	0x400046573215fcc2              # double 2.0343460000000002
	.quad	0x40005fe974a3400c              # double 2.0468320000000002
	.quad	0x40222282c6ef3d3a              # double 9.0674039999999998
	.quad	0x400d2d99cbee807c              # double 3.6472660000000001
	.quad	0x4020510470a808c8              # double 8.1582369999999997
	.quad	0x3fe957be9856a37b              # double 0.79196100000000003
	.quad	0x3fd059a73b42cc2d              # double 0.25547199999999998
	.quad	0x4023abad3a604e1e              # double 9.8353059999999992
	.quad	0x4015dc1fc8f32379              # double 5.4649650000000003
	.quad	0x3ff1c1c0ca600b03              # double 1.1098030000000001
	.quad	0x4022f29f383f0baf              # double 9.4738710000000008
	.quad	0x4021b1c5a3e39f77              # double 8.8472109999999997
	.quad	0x4022df5968512232              # double 9.4362290000000009
	.quad	0x400c2a01abd1aa82              # double 3.5205109999999999
	.quad	0x401e3cd141a6937d              # double 7.5593919999999998
	.quad	0x3ffbe074ea8da7f4              # double 1.742299
	.quad	0x3ffc6c3c9eecbfb1              # double 1.7764249999999999
	.quad	0x4019c093d9663843              # double 6.4380639999999998
	.quad	0x401224ccee5abc0e              # double 4.5359379999999998
	.quad	0x4018a8d9b5e95b79              # double 6.1648930000000002
	.quad	0x3fe388d8ec95bff0              # double 0.61045499999999997
	.quad	0x401b307182235b4f              # double 6.7973080000000001
	.quad	0x40103a148ba83f4f              # double 4.0567190000000002
	.quad	0x40122f43419e3001              # double 4.5461549999999997
	.quad	0x4009bca85caafbc2              # double 3.2171180000000001
	.quad	0x400416ddaceee0f4              # double 2.5111650000000001
	.quad	0x401d4d4e09784ec6              # double 7.3254929999999998
	.quad	0x3ffe8cb9ecf63800              # double 1.909357
	.quad	0x4011c9bbadc0980b              # double 4.4470049999999999
	.quad	0x3fc73354c122749f              # double 0.181254
	.quad	0x3fe969ca9ef5232d              # double 0.79416399999999998
	.quad	0x400dbad6451b9303              # double 3.7162289999999998
	.quad	0x3fe0c5ac471b4784              # double 0.52412999999999998
	.quad	0x3fd6e874c8ffb8b2              # double 0.35793799999999998
	.quad	0x40210efa615a8deb              # double 8.5292539999999999
	.quad	0x3fff7966be7afa72              # double 1.967139
	.quad	0x4022f09289dadfb5              # double 9.4698679999999999
	.quad	0x401731c53f39d1b3              # double 5.7986040000000001
	.quad	0x401fb1e7967caea7              # double 7.9237349999999997
	.quad	0x401a0e414e7ee914              # double 6.5139209999999999
	.quad	0x40147f5989df1173              # double 5.1243650000000001
	.quad	0x4021f7df3b645a1d              # double 8.9841250000000006
	.quad	0x4005f0df9bdc69f9              # double 2.7426140000000001
	.quad	0x401243affb04ee7c              # double 4.5661009999999997
	.quad	0x40126cd8127b2cc7              # double 4.606293
	.quad	0x402168c9539b8887              # double 8.7046609999999998
	.quad	0x40199cbea4ebdd33              # double 6.4030709999999997
	.quad	0x3ff2715f88fc9364              # double 1.152679
	.quad	0x400ecdc7ef177a70              # double 3.850479
	.quad	0x4012f0e6afcce1c6              # double 4.7352550000000004
	.quad	0x3ffd96fc9bc77143              # double 1.849362
	.quad	0x3feab9ae0c176577              # double 0.83516599999999996
	.quad	0x40215397785729b3              # double 8.6632650000000009
	.quad	0x401c559f2ba9d1f6              # double 7.083615
	.quad	0x40120d3e920c069e              # double 4.5129339999999996
	.quad	0x40113cd0fe8ab4fa              # double 4.3093909999999997
	.quad	0x401fe2d2fe3f35a0              # double 7.971508
	.quad	0x401296a6a012599f              # double 4.6471200000000001
	.quad	0x3ff90c33b5393251              # double 1.5654790000000001
	.quad	0x4004234c1a8ac5c1              # double 2.5172349999999999
	.quad	0x3ff2ae9bbf0dc769              # double 1.167629
	.quad	0x40040f32378ab0c9              # double 2.5074200000000002
	.quad	0x40125f84449dbec2              # double 4.5932779999999998
	.quad	0x3ffaf70ef566490a              # double 1.685317
	.quad	0x40223849cb252ce0              # double 9.1099379999999996
	.quad	0x40102b6bf444e0db              # double 4.0424040000000003
	.quad	0x40238bc74fb549f9              # double 9.7730049999999994
	.quad	0x400fa9bcfd4bf099              # double 3.9578799999999998
	.quad	0x40166f3a9b068124              # double 5.6086220000000004
	.quad	0x4016bb3e5753a3ec              # double 5.682855
	.quad	0x401b86c3b927d45a              # double 6.8816059999999997
	.quad	0x3febbeea209aaa3b              # double 0.86705500000000002
	.quad	0x3fee305100a393ee              # double 0.94339799999999996
	.quad	0x400707b4e54f7a92              # double 2.8787630000000002
	.quad	0x4012f93c89f40a28              # double 4.7433949999999996
	.quad	0x40123cdd0d8cb07d              # double 4.559437
	.quad	0x401fa054ef459d99              # double 7.9065739999999999
	.quad	0x3fd694467381d7dc              # double 0.3528
	.quad	0x3fc26fcdee34fc61              # double 0.144037
	.quad	0x401a91c53f39d1b3              # double 6.6423540000000001
	.quad	0x4006b54b05b7cfe6              # double 2.8385220000000002
	.quad	0x4004662e4d1a6506              # double 2.549893
	.quad	0x4008a5918a009f62              # double 3.0808439999999999
	.quad	0x40056f68be2f7b18              # double 2.6793990000000001
	.quad	0x400552b2bfdb4cc2              # double 2.6653799999999999
	.quad	0x3fd823571d1d4739              # double 0.37715700000000002
	.quad	0x401d81d4f9c1f85d              # double 7.3767889999999996
	.quad	0x40153a5fc7e6b3ff              # double 5.3070060000000003
	.quad	0x401ef3e78e1932d7              # double 7.738188
	.quad	0x3fbcc6a3bddfca00              # double 0.11240600000000001
	.quad	0x3ff601f75104d552              # double 1.37548
	.quad	0x4018cb7457c0b136              # double 6.1986860000000004
	.quad	0x40126327aa68f4b6              # double 4.5968309999999999
	.quad	0x401682684cf0739b              # double 5.627351
	.quad	0x4018d5f9df548ece              # double 6.2089610000000004
	.quad	0x4019bbc558644524              # double 6.43337
	.quad	0x401e7bccf28c79f6              # double 7.6208989999999996
	.quad	0x401f3c7325918a01              # double 7.8090330000000003
	.quad	0x40203b1b9b66f933              # double 8.1154449999999994
	.quad	0x3fc2ee8d10f51aca              # double 0.14790500000000001
	.quad	0x3ff5e1b3aeee9574              # double 1.3676029999999999
	.quad	0x4007e9bf162ae4b0              # double 2.989134
	.quad	0x4016398e10cf5b1d              # double 5.5562060000000004
	.quad	0x402294c6c54bcf0b              # double 9.2905789999999993
	.quad	0x40159f6d330941c8              # double 5.4056899999999999
	.quad	0x402209b0468448cf              # double 9.0189229999999991
	.quad	0x401daadcd2d44dcb              # double 7.4168580000000004
	.quad	0x4015a3415b1422cd              # double 5.4094290000000003
	.quad	0x40146d2e94680171              # double 5.1066229999999999
	.quad	0x40137f48c2e770bd              # double 4.874301
	.quad	0x401c819c9d5a187a              # double 7.1265739999999997
	.quad	0x40234954c985f06f              # double 9.6432249999999992
	.quad	0x4022aef6d7625205              # double 9.3417270000000006
	.quad	0x401824f2f123c42a              # double 6.0360829999999996
	.quad	0x4006ab86b15f88fd              # double 2.8337530000000002
	.quad	0x3ff6844284dfce31              # double 1.4072899999999999
	.quad	0x401923161a1db878              # double 6.2842640000000003
	.quad	0x401d91bf7ad4b274              # double 7.3923319999999997
	.quad	0x401e1192a737110e              # double 7.5171609999999998
	.quad	0x3fefcf67b1c0010c              # double 0.99406799999999995
	.quad	0x40192e0653005815              # double 6.2949460000000004
	.quad	0x4016cac68a936c59              # double 5.6980230000000001
	.quad	0x4013db5286b59147              # double 4.9641820000000001
	.quad	0x4010ffb9bed30f06              # double 4.2497319999999998
	.quad	0x3ff35c054ef459da              # double 1.2099660000000001
	.quad	0x401293aa369fcf3e              # double 4.6442040000000002
	.quad	0x400ff6f9fcb0c027              # double 3.9955940000000001
	.quad	0x3fc4044284dfce31              # double 0.15637999999999999
	.quad	0x3fb54f5903a7546d              # double 0.083241999999999997
	.quad	0x4003a14163779e9d              # double 2.453738
	.quad	0x40059bbcf4e874c9              # double 2.701044
	.quad	0x4019d0cdc8754f37              # double 6.4539099999999996
	.quad	0x4021ccf3ba775fb3              # double 8.9002970000000001
	.quad	0x401ed525460aa64c              # double 7.7081499999999998
	.quad	0x3ff9d2263d816acf              # double 1.6138060000000001
	.quad	0x3fcdca643cc07aaf              # double 0.232739
	.quad	0x4020bc6ae3a3a8e7              # double 8.3680029999999999
	.quad	0x3fd6ec636b096356              # double 0.358178
	.quad	0x3fdc017dae81882b              # double 0.43759100000000001
	.quad	0x3fdeeda661283904              # double 0.48325499999999999
	.quad	0x401af1cef240fa9c              # double 6.7361409999999999
	.quad	0x3fe6f94c87980f56              # double 0.71793200000000001
	.quad	0x40104cb0c026cc1d              # double 4.0748930000000003
	.quad	0x40228b81b64e0547              # double 9.2724740000000008
	.quad	0x4012c65625a682b6              # double 4.6936879999999999
	.quad	0x400e48cf7caa758a              # double 3.785552
	.quad	0x40129d512ec6bce8              # double 4.6536299999999997
	.quad	0x40166cdb37c99ae9              # double 5.6063049999999999
	.quad	0x40033accd530489d              # double 2.4037109999999999
	.quad	0x3fb3aeddce7cd035              # double 0.076886999999999997
	.quad	0x401a31d084e831ad              # double 6.5486469999999999
	.quad	0x400eac521dda059a              # double 3.8341409999999998
	.quad	0x3ffd3d77fae3608d              # double 1.827507
	.quad	0x40186b65ecc3e319              # double 6.1048809999999998
	.quad	0x3ffe36933a0407cc              # double 1.8883239999999999
	.quad	0x4020ce5c0b999136              # double 8.4030459999999998
	.quad	0x4019b75ff609dcf9              # double 6.4290770000000004
	.quad	0x401c9e78e1932d6f              # double 7.1547580000000002
	.quad	0x40223d6c72192210              # double 9.1199680000000001
	.quad	0x40227bb9cf9a06a7              # double 9.2416520000000002
	.quad	0x3fe037e4de3b8a1a              # double 0.50682300000000002
	.quad	0x3fd1779207d4e098              # double 0.27292300000000003
	.quad	0x4016a143bf727137              # double 5.6574850000000003
	.quad	0x4019f9a2834d26fa              # double 6.4937839999999998
	.quad	0x4011a00c521dda06              # double 4.4062970000000004
	.quad	0x401fbc8b0079a283              # double 7.9341239999999997
	.quad	0x3fe7fdbf487fcb92              # double 0.74972499999999997
	.quad	0x401ae0bf5d78811b              # double 6.7194799999999999
	.quad	0x4011a59641f64495              # double 4.4117059999999997
	.quad	0x401f53137b07075b              # double 7.8311289999999997
	.quad	0x401ab13b18dac259              # double 6.6730770000000001
	.quad	0x40123fbb9496249a              # double 4.5622389999999999
	.quad	0x3fe6899bf5946c33              # double 0.70429799999999998
	.quad	0x401f4e89eba6aca8              # double 7.8266980000000003
	.quad	0x4002c9c3ce2089e3              # double 2.3485179999999999
	.quad	0x4019f6a93f290abb              # double 6.4908799999999998
	.quad	0x401927f0ed3d859d              # double 6.2890050000000004
	.quad	0x401b778cc9a77e5f              # double 6.8667480000000003
	.quad	0x40041633ce63a5c2              # double 2.5108410000000001
	.quad	0x3ff9c0e27e0ef998              # double 1.609591
	.quad	0x3fe72398201cd5fa              # double 0.72309500000000004
	.quad	0x402107fc32ebe597              # double 8.5155960000000004
	.quad	0x4001ad530489d27c              # double 2.2096309999999999
	.quad	0x401df18b502ababf              # double 7.4858830000000002
	.quad	0x4018da836eb4e981              # double 6.2133919999999998
	.quad	0x4023c549d7ba6699              # double 9.8853290000000004
	.quad	0x400af60bf5d78812              # double 3.3701400000000001
	.quad	0x400b00f01fb82c2c              # double 3.3754580000000001
	.quad	0x4021fd5bab21815a              # double 8.9948399999999999
	.quad	0x4006e9f94855da27              # double 2.8642449999999999
	.quad	0x3fdf6d655e28aa43              # double 0.49105199999999999
	.quad	0x3fe74c48adeebb34              # double 0.72806199999999999
	.quad	0x401c0028a1dfb939              # double 7.0001550000000003
	.quad	0x3ff7cc319c5a3e3a              # double 1.487352
	.quad	0x401e0b5f5f0b2852              # double 7.5111059999999998
	.quad	0x40235c126a65cf68              # double 9.6798280000000005
	.quad	0x40223d334c5da6a4              # double 9.1195319999999995
	.quad	0x4010ae924f227d03              # double 4.1704800000000004
	.quad	0x4019676295208e15              # double 6.350962
	.quad	0x400b244d87724fa9              # double 3.3927260000000001
	.quad	0x3ff05e9e1b089a02              # double 1.0230999999999999
	.quad	0x3ff25d68c692f6e8              # double 1.147805
	.quad	0x40103cb10342aa9f              # double 4.0592689999999996
	.quad	0x400fe43cc07aaef3              # double 3.9864440000000001
	.quad	0x401d0bf5946c332f              # double 7.261679
	.quad	0x401ce53fc0096feb              # double 7.2238759999999997
	.quad	0x40096314013ec461              # double 3.173378
	.quad	0x4010c65ecc3e3194              # double 4.193721
	.quad	0x400161f7d73c9258              # double 2.1728360000000002
	.quad	0x4011518b502ababf              # double 4.3296330000000003
	.quad	0x40179c8eabffcdab              # double 5.9028879999999999
	.quad	0x401bc8ac18f81e8a              # double 6.9459689999999998
	.quad	0x3fd2bb6ed677707a              # double 0.29269000000000001
	.quad	0x40231531337eb28e              # double 9.5413910000000008
	.quad	0x3fc75d2d01c0ca60              # double 0.182531
	.quad	0x4000d79f23465626              # double 2.1052840000000002
	.quad	0x401d321e1d2178f7              # double 7.2989430000000004
	.quad	0x4004577fae3608d1              # double 2.5427240000000002
	.quad	0x400992b66b6177ea              # double 3.196637
	.quad	0x40119ccab3edd8b6              # double 4.4031169999999999
	.quad	0x3fd9123810e88590              # double 0.391737
	.quad	0x4020adb89939218a              # double 8.3392990000000005
	.quad	0x401e3187a4a48f97              # double 7.5483690000000001
	.quad	0x400160841ede1199              # double 2.1721270000000001
	.quad	0x4019190b84988095              # double 6.2744580000000001
	.quad	0x4010e27aa68f4b62              # double 4.221171
	.quad	0x400cd47ae147ae14              # double 3.6037499999999998
	.quad	0x4013d04ddb5525cc              # double 4.9534219999999998
	.quad	0x3fe7f3300de4c511              # double 0.74843599999999999
	.quad	0x4007fb24e9c45458              # double 2.9976289999999999
	.quad	0x4011c21187e7c06e              # double 4.4395199999999999
	.quad	0x400b6c426351def0              # double 3.427861
	.quad	0x4022582c2bd7f51f              # double 9.172212
	.quad	0x401e2a10e0221427              # double 7.54108
	.quad	0x401db9310129cbab              # double 7.4308509999999997
	.quad	0x402216f566490a35              # double 9.0448409999999999
	.quad	0x4014a14c22ee4192              # double 5.1575170000000004
	.quad	0x3feb450efdc9c4db              # double 0.85218000000000005
	.quad	0x3ff6b811f4f50a03              # double 1.4199390000000001
	.quad	0x402044115df6555c              # double 8.1329449999999994
	.quad	0x400f3c6fbd273d5c              # double 3.9045100000000001
	.quad	0x400bef69ca9ef523              # double 3.4919009999999999
	.quad	0x4005d00474d9c6b0              # double 2.7265709999999999
	.quad	0x402003fb9bed30f0              # double 8.0077789999999993
	.quad	0x40236a51a005c465              # double 9.7076539999999997
	.quad	0x3ff405718eb89507              # double 1.2513289999999999
	.quad	0x401903bbc6eb0b7c              # double 6.2536459999999998
	.quad	0x4023f1e108c3f3e0              # double 9.9724199999999996
	.quad	0x40210dea897635e7              # double 8.5271799999999995
	.quad	0x401f78aa433508f6              # double 7.8678369999999997
	.quad	0x3ffff09741d084e8              # double 1.996238
	.quad	0x3fb91e96c3fc43b3              # double 0.098123000000000002
	.quad	0x40176f46ed245b29              # double 5.8586689999999999
	.quad	0x40016c25072085b2              # double 2.1778050000000002
	.quad	0x400915f5f0b28523              # double 3.135723
	.quad	0x4019c906466b1e5c              # double 6.446313
	.quad	0x3ff74e831ad2135e              # double 1.4566680000000001
	.quad	0x40144a921ccd9620              # double 5.0728229999999996
	.quad	0x3fc934c5da6a4441              # double 0.19692299999999999
	.quad	0x4023d662fdfc19c1              # double 9.9187239999999992
	.quad	0x40231ddebd9018e7              # double 9.5583399999999993
	.quad	0x4023d42b302f72b4              # double 9.9143919999999994
	.quad	0x402309a847b24639              # double 9.5188620000000003
	.quad	0x40119fe47991bc56              # double 4.4061450000000004
	.quad	0x3ff983e3193f6c27              # double 1.5946990000000001
	.quad	0x401588fd199bb279              # double 5.3837780000000004
	.quad	0x3fe17d5454152b0a              # double 0.54654899999999995
	.quad	0x4011ffabda0dfdf0              # double 4.4996790000000004
	.quad	0x4023cd0a02b84125              # double 9.9004670000000007
	.quad	0x402212a0cae642c0              # double 9.0363830000000007
	.quad	0x40107925bb7b6bb1              # double 4.1183079999999999
	.quad	0x4014e98d045fe111              # double 5.2280769999999999
	.quad	0x4014a5072085b185              # double 5.1611599999999997
	.quad	0x4021a5492ff4ba52              # double 8.8228240000000007
	.quad	0x4013035eb7457c0b              # double 4.7532909999999999
	.quad	0x400d2a9b499d0204              # double 3.645804
	.quad	0x4022064a16a48733              # double 9.0122839999999993
	.quad	0x4014c21d53cddd6e              # double 5.189565
	.quad	0x40227b6a832b990b              # double 9.241047
	.quad	0x40008259e1f3a57f              # double 2.0636480000000001
	.quad	0x4012e74ff865d7cb              # double 4.7258909999999998
	.quad	0x4023cd955714b9cb              # double 9.9015299999999992
	.quad	0x4022bd6777079e5a              # double 9.3699300000000001
	.quad	0x40220fb9e060fe48              # double 9.0307150000000007
	.quad	0x3ff6dc5b4aa9717e              # double 1.428798
	.quad	0x400135807fed2029              # double 2.1511239999999998
	.quad	0x40216cb5781c7150              # double 8.7123220000000003
	.quad	0x3fdb213e3e29307b              # double 0.423904
	.quad	0x3fe835bd512ec6bd              # double 0.75656000000000001
	.quad	0x401719adc8fb86f4              # double 5.7750769999999996
	.quad	0x40212ead2dcb1466              # double 8.5911650000000002
	.quad	0x40234dff3f0fe048              # double 9.6523380000000003
	.quad	0x3feea558ea7ce0fc              # double 0.95768399999999997
	.quad	0x40121d334c5da6a4              # double 4.5285159999999998
	.quad	0x40075db877ab3248              # double 2.9207619999999999
	.quad	0x3fea36c58eeae9ee              # double 0.81918599999999997
	.quad	0x4017c65b63d3e4ef              # double 5.943708
	.quad	0x3fe2d7342edbb59e              # double 0.58877000000000002
	.quad	0x401e44ac29bf162b              # double 7.567063
	.quad	0x401580c4dec1c1d7              # double 5.3757510000000002
	.quad	0x3ffae3fdd65a1449              # double 1.6806620000000001
	.quad	0x401aac64345cfedf              # double 6.6683510000000004
	.quad	0x3ff091c087442c80              # double 1.0355840000000001
	.quad	0x4020368c47a17f41              # double 8.1065389999999997
	.quad	0x401809888f861a61              # double 6.0093100000000002
	.quad	0x4022c57ff9b56324              # double 9.3857420000000004
	.quad	0x3fd54a9478c868ba              # double 0.332677
	.quad	0x3ffa25ebb7739f34              # double 1.634258
	.quad	0x4003730728e92d56              # double 2.4311660000000002
	.quad	0x401847210be9424e              # double 6.0694619999999997
	.quad	0x40234e991ff7164c              # double 9.6535119999999992
	.quad	0x40222a324c836651              # double 9.0824149999999992
	.quad	0x3f736c58eeae9ee4              # double 0.0047419999999999997
	.quad	0x40034174c4cdfaca              # double 2.4069609999999999
	.quad	0x40137113836a832c              # double 4.8604260000000004
	.quad	0x4016e70e6f2e8c05              # double 5.7256410000000004
	.quad	0x3ff937ff151e7536              # double 1.576171
	.quad	0x4002dbdcf0307f24              # double 2.3573550000000001
	.quad	0x40107af640639d5e              # double 4.1200799999999997
	.quad	0x4011f96a26e54717              # double 4.4935689999999999
	.quad	0x4022c9f383f0bae9              # double 9.3944360000000006
	.quad	0x401b4982cb20fb22              # double 6.8217879999999997
	.quad	0x4013bead4f5903a7              # double 4.9362079999999997
	.quad	0x4012f09c3ce2089e              # double 4.7349709999999998
	.quad	0x4022901c2e33eff2              # double 9.2814650000000007
	.quad	0x3f859d55e6bc621b              # double 0.010553999999999999
	.quad	0x3ff2ca8b08dd1e54              # double 1.1744490000000001
	.quad	0x40214dbb384fd2a6              # double 8.6518189999999997
	.quad	0x3f7f1ae2da554b8c              # double 0.0075940000000000001
	.quad	0x401ae4306e5cd4ed              # double 6.7228409999999998
	.quad	0x401da92c8c5004fb              # double 7.4152089999999999
	.quad	0x401a35885d31337f              # double 6.5522780000000003
	.quad	0x4017b1c64ba94bbe              # double 5.9236079999999998
	.quad	0x401c8695d91ab8e9              # double 7.1314310000000001
	.quad	0x401b2dcc63f14120              # double 6.7947249999999997
	.quad	0x402362e46cfc829d              # double 9.693149
	.quad	0x3ff7e4c942d490e6              # double 1.4933559999999999
	.quad	0x40115f42bb6672fc              # double 4.3430280000000003
	.quad	0x4023ce2fdfc19c17              # double 9.9027089999999997
	.quad	0x401c5a6266fd651b              # double 7.088266
	.quad	0x3ff960f7fcfc3f81              # double 1.586174
	.quad	0x3ff7c5f9df548ece              # double 1.4858340000000001
	.quad	0x4020a5f4a1272c95              # double 8.3241320000000005
	.quad	0x401a2cdab191dde3              # double 6.5438029999999996
	.quad	0x3fcfe6d58c8eef1c              # double 0.24923200000000001
	.quad	0x400d4c2c5e2cdc01              # double 3.6621939999999999
	.quad	0x3fc449e44fa05144              # double 0.15850500000000001
	.quad	0x4016dc42e9899bf6              # double 5.7150990000000004
	.quad	0x401d4bfdf7e8038a              # double 7.324211
	.quad	0x40202b9841aac53b              # double 8.0851459999999999
	.quad	0x4021b87a4a48f96e              # double 8.8603079999999999
	.quad	0x40066a033e78e193              # double 2.8017639999999999
	.quad	0x3fffb9b34a44c7b0              # double 1.982837
	.quad	0x3ff58567125dd096              # double 1.3450690000000001
	.quad	0x4010ed6f97679032              # double 4.2318709999999999
	.quad	0x401ffbe4473cd573              # double 7.9959879999999996
	.quad	0x3fe641eff9f87f02              # double 0.69554899999999997
	.quad	0x4021e9e6256366d8              # double 8.9568340000000006
	.quad	0x4012d24a6a875d57              # double 4.705362
	.quad	0x3ffbb154003254e7              # double 1.730793
	.quad	0x4016d41a261bf37c              # double 5.7071310000000004
	.quad	0x4000706f69446738              # double 2.0548999999999999
	.quad	0x4005b40aaeafab54              # double 2.7129110000000001
	.quad	0x3fe67820a30db6a2              # double 0.70216400000000001
	.quad	0x400a67ce95faa8a8              # double 3.3006869999999999
	.quad	0x401b34940bbb1f25              # double 6.8013459999999997
	.quad	0x3fe7a09246bf0132              # double 0.73835099999999998
	.quad	0x4008f84fd2a62aa2              # double 3.1212460000000002
	.quad	0x4019c359bc33f855              # double 6.4407719999999999
	.quad	0x40180d566cf41f21              # double 6.0130249999999998
	.quad	0x402332c8a3726070              # double 9.5991870000000006
	.quad	0x400e8c669057d178              # double 3.8185549999999999
	.quad	0x40187a11ec918e32              # double 6.1192089999999997
	.quad	0x400da62fdfc19c17              # double 3.7061459999999999
	.quad	0x402281f383f0bae9              # double 9.2538110000000007
	.quad	0x40226db89939218a              # double 9.2142990000000005
	.quad	0x4013870b8cfbfc65              # double 4.8818799999999998
	.quad	0x4023fbead4f5903a              # double 9.9920259999999992
	.quad	0x402377837b4a233a              # double 9.7334250000000004
	.quad	0x3ff57ef49cf56ead              # double 1.3434950000000001
	.quad	0x4012ec13b9f127f6              # double 4.7305440000000001
	.quad	0x40140e2c12ad81ae              # double 5.0138400000000001
	.quad	0x40167f633ce63a5c              # double 5.6244019999999999
	.quad	0x3fe66c204f2ae07e              # double 0.70069899999999996
	.quad	0x400c4b21815a07b3              # double 3.5366849999999999
	.quad	0x4022d2e72da122fb              # double 9.4119200000000002
	.quad	0x401506594af4f0d8              # double 5.2561999999999998
	.quad	0x401f47ce95faa8a8              # double 7.8201239999999998
	.quad	0x4011ef0e0a84be40              # double 4.4834519999999998
	.quad	0x3feb0dcdb37c99af              # double 0.84543500000000005
	.quad	0x400bc120e1f7d73d              # double 3.4693010000000002
	.quad	0x40111f71eafee6fb              # double 4.2807079999999997
	.quad	0x40119d07852f7f4a              # double 4.4033490000000004
	.quad	0x402058e71476af8a              # double 8.1736380000000004
	.quad	0x4015f695d91ab8e9              # double 5.4908060000000001
	.quad	0x401812745bf26f1e              # double 6.0180220000000002
	.quad	0x4022b26351deefe5              # double 9.348414
	.quad	0x4014f5c9a34ca0c3              # double 5.2400270000000004
	.quad	0x401a8cf7446f9b99              # double 6.6376619999999997
	.quad	0x401e461bf37b8d3f              # double 7.5684659999999999
	.quad	0x40219a7ed84d338f              # double 8.8017489999999992
	.quad	0x400474003254e6e2              # double 2.5566409999999999
	.quad	0x40023c0a8d21bc12              # double 2.2793169999999998
	.quad	0x3ff2b28f9f44d445              # double 1.1685939999999999
	.quad	0x4010582f51266341              # double 4.0861179999999999
	.quad	0x40215f87ce95faa9              # double 8.6865830000000006
	.quad	0x4015f8090b417ca2              # double 5.4922219999999999
	.quad	0x40134e736049ecb3              # double 4.8266119999999999
	.quad	0x3ffc00b780346dc6              # double 1.750175
	.quad	0x401cd23854046413              # double 7.2052930000000002
	.quad	0x40177441355475a3              # double 5.8635299999999999
	.quad	0x401c268a0d349be9              # double 7.037636
	.quad	0x4023530468448cf8              # double 9.6621430000000003
	.quad	0x400bea1405708249              # double 3.489296
	.quad	0x40212db5b70691ea              # double 8.5892769999999992
	.quad	0x4023ec50efdc9c4e              # double 9.9615550000000006
	.quad	0x4005e892ab68cef6              # double 2.7385609999999998
	.quad	0x4014237867f0aa22              # double 5.0346390000000003
	.quad	0x3ff8084b5dcc63f1              # double 1.5020249999999999
	.quad	0x401b3584f4c6e6da              # double 6.8022650000000002
	.quad	0x401c8ac1094a2b9d              # double 7.1355019999999998
	.quad	0x401e6fb2aae29739              # double 7.6090799999999996
	.quad	0x401504ab606b7aa2              # double 5.2545599999999997
	.quad	0x4018ad495182a993              # double 6.169225
	.quad	0x40220b9346994185              # double 9.022608
	.quad	0x401ff8e3ef284168              # double 7.9930570000000003
	.quad	0x401a2a99b6f5caf3              # double 6.5416020000000001
	.quad	0x3fc32fdb8fde2ef5              # double 0.149898
	.quad	0x40121884406c00da              # double 4.5239419999999999
	.quad	0x3ffa8b32ce89656f              # double 1.658984
	.quad	0x4002fc7cd898b2ea              # double 2.3732850000000001
	.quad	0x4019055ef1fddebe              # double 6.2552450000000004
	.quad	0x401ba27525460aa6              # double 6.9086499999999997
	.quad	0x401397d805e5f30e              # double 4.8982849999999996
	.quad	0x40205c981beb1811              # double 8.1808479999999992
	.quad	0x401059eecbfb15b5              # double 4.0878249999999996
	.quad	0x3fc40b9991361dc9              # double 0.15660399999999999
	.quad	0x400bbead4f5903a7              # double 3.4681039999999999
	.quad	0x4019718dac258d58              # double 6.3608919999999998
	.quad	0x4021329c779a6b51              # double 8.5988500000000005
	.quad	0x401f82f9ca5bd945              # double 7.8779060000000002
	.quad	0x400379d6f112fd33              # double 2.4344920000000001
	.quad	0x40236cb0c026cc1d              # double 9.7122860000000006
	.quad	0x40213aaa3ad18d26              # double 8.6145800000000001
	.quad	0x401229af9ebe9c88              # double 4.5407089999999997
	.quad	0x4023b7cc39ffd60f              # double 9.8589800000000007
	.quad	0x401bd21682f94424              # double 6.9551639999999999
	.quad	0x3fc6ef2c7325918a              # double 0.179174
	.quad	0x400172b7fe08aefb              # double 2.1810149999999999
	.quad	0x402356ed45e9185d              # double 9.6697790000000001
	.quad	0x3fe988b97785729b              # double 0.79793999999999998
	.quad	0x4020cf676ea4228a              # double 8.4050860000000007
	.quad	0x4000c236c15d2d02              # double 2.0948310000000001
	.quad	0x4019d0520d130dfa              # double 6.4534380000000002
	.quad	0x400f9be7f2c3009b              # double 3.9511259999999999
	.quad	0x401496db50f40e5a              # double 5.1473209999999998
	.quad	0x3fca7fbacb428912              # double 0.20702300000000001
	.quad	0x4008f1ed17c5ef63              # double 3.118128
	.quad	0x40195f01322f2735              # double 6.342778
	.quad	0x3fd41d25aab47410              # double 0.31427899999999998
	.quad	0x40000b430f49491f              # double 2.0054989999999999
	.quad	0x3f87b95a294141ea              # double 0.011584000000000001
	.quad	0x4020bbd72bcb5fe5              # double 8.3668759999999995
	.quad	0x40234d22424a276b              # double 9.6506519999999991
	.quad	0x4011e03a7546d3fa              # double 4.4689730000000001
	.quad	0x400c628fe260b2c8              # double 3.5481259999999999
	.quad	0x400b05e02ea960b7              # double 3.377869
	.quad	0x40189799a1fd156a              # double 6.148047
	.quad	0x400ba20791c4b902              # double 3.454116
	.quad	0x401749830e3cd9a5              # double 5.8217889999999999
	.quad	0x400a04a6223e186a              # double 3.2522700000000002
	.quad	0x401c95269595feda              # double 7.1456549999999996
	.quad	0x401da4e1e71044f2              # double 7.4110180000000003
	.quad	0x40104a6698bb4d49              # double 4.0726570000000004
	.quad	0x40028092ccf6be38              # double 2.3127800000000001
	.quad	0x4017136d655e28aa              # double 5.7689719999999998
	.quad	0x4003faa9b499d020              # double 2.4973939999999999
	.quad	0x3fe3cd8dbcec84f9              # double 0.618842
	.quad	0x4009a56ffc115df6              # double 3.2057799999999999
	.quad	0x3ffcaf31b152f3c3              # double 1.792772
	.quad	0x4010fd8a979e16d7              # double 4.2475990000000001
	.quad	0x400d9abf33871609              # double 3.7005599999999998
	.quad	0x4023e1a6f826edab              # double 9.9407270000000007
	.quad	0x4013c7fb69984a0e              # double 4.9452949999999998
	.quad	0x401f972862f5989e              # double 7.8976150000000001
	.quad	0x4012331550ca1cef              # double 4.5498859999999999
	.quad	0x402001b0468448cf              # double 8.0032979999999991
	.quad	0x401b97ca643cc07b              # double 6.8982330000000003
	.quad	0x4022380cd855970b              # double 9.1094729999999995
	.quad	0x40004324c8366517              # double 2.0327850000000001
	.quad	0x401da18eb8950764              # double 7.4077710000000003
	.quad	0x401aad909f1f1498              # double 6.6694969999999998
	.quad	0x400ffd71b0468449              # double 3.9987520000000001
	.quad	0x400d0215336deb96              # double 3.626017
	.quad	0x401b7dcd7060bb2c              # double 6.8728540000000002
	.quad	0x40093cffeb074a77              # double 3.154785
	.quad	0x4003965f5275ee9a              # double 2.4484240000000002
	.quad	0x4001a9e12a51e322              # double 2.2079490000000002
	.quad	0x400efaad601ffb48              # double 3.872401
	.quad	0x4011893037d63023              # double 4.3839730000000001
	.quad	0x401717ff151e7536              # double 5.773434
	.quad	0x400f4e49f51697f2              # double 3.913227
	.quad	0x4018424894c447c3              # double 6.06473
	.quad	0x3feaef71a7e30878              # double 0.84172899999999995
	.quad	0x40136eec7c957cd4              # double 4.8583239999999996
	.quad	0x4004fe28aa433509              # double 2.624101
	.quad	0x3ff8a2ad3e920c07              # double 1.5397160000000001
	.quad	0x40237a990f301eac              # double 9.7394490000000004
	.quad	0x4018199a1fd1569f              # double 6.0250019999999997
	.quad	0x3ff190ce4ead0c3d              # double 1.097853
	.quad	0x3fcc9707182235b5              # double 0.223359
	.quad	0x4022d8f29d40ee07              # double 9.4237260000000002
	.quad	0x401e77b784662bae              # double 7.616911
	.quad	0x3ff223d3e4ef0282              # double 1.1337470000000001
	.quad	0x4020927264a16a48              # double 8.2860289999999992
	.quad	0x400ba9e774eebf66              # double 3.4579610000000001
	.quad	0x401d386b15f88fc9              # double 7.3050959999999998
	.quad	0x4021b204af922963              # double 8.8476920000000003
	.quad	0x400d7c810a569b17              # double 3.6857929999999999
	.quad	0x4022e66f9335d24a              # double 9.4500700000000002
	.quad	0x3fdd0268900c521e              # double 0.45327200000000001
	.quad	0x401418def416bdb2              # double 5.0242880000000003
	.quad	0x4021ecaf709b738e              # double 8.9622759999999992
	.quad	0x400c5b8bac710cb3              # double 3.5447000000000002
	.quad	0x401bc0d0678c0054              # double 6.9382950000000001
	.quad	0x401d5025bfad2999              # double 7.3282689999999997
	.quad	0x4020a02dbe7f2c30              # double 8.3128489999999999
	.quad	0x3fc140bbb1f255f3              # double 0.13478799999999999
	.quad	0x40048254a3c64346              # double 2.5636380000000001
	.quad	0x3fe7bae2541d8e86              # double 0.74156299999999997
	.quad	0x4021348387df5cf2              # double 8.6025659999999995
	.quad	0x4016e0a5269595ff              # double 5.7193800000000001
	.quad	0x4011425e56cd6c2f              # double 4.314813
	.quad	0x4022322d948dc11e              # double 9.0980039999999995
	.quad	0x4010569c23b7952d              # double 4.0845799999999999
	.quad	0x400e80232096787d              # double 3.812567
	.quad	0x3fe0cf9a06a6e32e              # double 0.52534199999999998
	.quad	0x40212366b6177ea2              # double 8.5691430000000004
	.quad	0x40113922962cfd8f              # double 4.305796
	.quad	0x3ff433fb7a5f41af              # double 1.262691
	.quad	0x4023a1bc33f85511              # double 9.8158890000000003
	.quad	0x40149f15e7c8d196              # double 5.1553570000000004
	.quad	0x400c7c87db2b3461              # double 3.5608059999999999
	.quad	0x3ff6c957cd466f50              # double 1.424156
	.quad	0x401d2176577531db              # double 7.2826779999999998
	.quad	0x3ffdd3cee9dd7ecc              # double 1.8642110000000001
	.quad	0x400836e82949a565              # double 3.0268099999999998
	.quad	0x4012e3508f648c72              # double 4.7219870000000004
	.quad	0x4018c8f4f93bc0a0              # double 6.1962469999999996
	.quad	0x4018223fab10ba62              # double 6.0334459999999996
	.quad	0x4023454ac29bf163              # double 9.6353360000000005
	.quad	0x40200737110e453d              # double 8.0140919999999998
	.quad	0x400853122b7baecd              # double 3.040562
	.quad	0x40210352007dd441              # double 8.5064849999999996
	.quad	0x401d782dbe7f2c30              # double 7.367362
	.quad	0x40226dd31337eb29              # double 9.2145010000000003
	.quad	0x3ffa1742dcf4623d              # double 1.630679
	.quad	0x401ecfafc8b0079a              # double 7.7028189999999999
	.quad	0x3fe7f43a647fdc59              # double 0.74856299999999998
	.quad	0x3ff6e553ac4f7ec3              # double 1.4309879999999999
	.quad	0x401202efd438d1d9              # double 4.5028680000000003
	.quad	0x402018f66a550870              # double 8.0487549999999999
	.quad	0x401a31986b9c304d              # double 6.5484330000000002
	.quad	0x401c11897a67a52b              # double 7.0171260000000002
	.quad	0x401dd4cd31769a91              # double 7.4578139999999999
	.quad	0x3fec277c45cbbc2c              # double 0.87982000000000004
	.quad	0x3ff1fb60285ec3db              # double 1.1238710000000001
	.quad	0x3fe84ea077036c9c              # double 0.75959799999999999
	.quad	0x401e960a2014727e              # double 7.6465230000000002
	.quad	0x3f6eba6aca793576              # double 0.003751
	.quad	0x3fe06f7a0b5ed8d3              # double 0.51360799999999995
	.quad	0x4010027f1b691212              # double 4.0024379999999997
	.quad	0x3fe5a747d805e5f3              # double 0.67666999999999999
	.quad	0x401f05aee631f8a1              # double 7.7555500000000003
	.quad	0x401b34c729f59cd0              # double 6.8015410000000003
	.quad	0x4007c32f44912989              # double 2.9703050000000002
	.quad	0x4023557cd466f502              # double 9.6669680000000007
	.quad	0x400b178f68be2f7b              # double 3.386504
	.quad	0x40184738e6d15ad1              # double 6.069553
	.quad	0x4021ad8ab92c0618              # double 8.8389489999999995
	.quad	0x401f0f8ceb356da0              # double 7.7651859999999999
	.quad	0x3fda4b838c111ada              # double 0.41085899999999997
	.quad	0x4013c3879c4113c7              # double 4.9409470000000004
	.quad	0x401e7e4430b178b3              # double 7.6233069999999996
	.quad	0x400b483e425aee63              # double 3.4102749999999999
	.quad	0x401fce43675ddd2b              # double 7.951429
	.quad	0x4011301bc98a222d              # double 4.2969809999999997
	.quad	0x4014b3dff3f0fe04              # double 5.1756589999999996
	.quad	0x4020c4c942d490e6              # double 8.3843479999999992
	.quad	0x4011fffda4052d66              # double 4.4999909999999996
	.quad	0x4020654e4c942d49              # double 8.1978629999999999
	.quad	0x400cbb3e1437c569              # double 3.5914269999999999
	.quad	0x4023f94ccab3edd9              # double 9.9869140000000005
	.quad	0x401913e4ef0281ba              # double 6.2694279999999996
	.quad	0x4019a8c0ce91c8eb              # double 6.4147980000000002
	.quad	0x401abef6b5d462c3              # double 6.6864879999999998
	.quad	0x4022a55b89939219              # double 9.3229640000000007
	.quad	0x400e391ff7164c73              # double 3.7778930000000002
	.quad	0x401acc4113c68662              # double 6.6994670000000003
	.quad	0x3fc31b2e59af9ebf              # double 0.14926700000000001
	.quad	0x3f9f6e3f78bbd380              # double 0.030693999999999999
	.quad	0x400a98c868b9fdbd              # double 3.3246009999999999
	.quad	0x400953cddd6e04c0              # double 3.1659199999999998
	.quad	0x401aa24fa8b4bf90              # double 6.6585070000000002
	.quad	0x40173cfc3f811f4f              # double 5.8095559999999997
	.quad	0x4014e44fe36d2242              # double 5.2229609999999997
	.quad	0x4007f2e62131a8ef              # double 2.9936029999999998
	.quad	0x3ff1b01a79fec99f              # double 1.105494
	.quad	0x3ff5426fe718a86d              # double 1.3287199999999999
	.quad	0x3ffeff0fe047d3d4              # double 1.937271
	.quad	0x401136787ce95fab              # double 4.3031940000000004
	.quad	0x40102c4b09e98dce              # double 4.0432550000000003
	.quad	0x402397e64f54d1e9              # double 9.7966789999999992
	.quad	0x401acfbb0e5e6794              # double 6.7028619999999997
	.quad	0x3faf65fd8adab9f5              # double 0.061324999999999998
	.quad	0x3fc8b40f66a55087              # double 0.192995
	.quad	0x402218270f388228              # double 9.0471730000000008
	.quad	0x400fdaa60913a4f8              # double 3.9817619999999998
	.quad	0x400da76427c7c526              # double 3.706734
	.quad	0x4021460a84be4042              # double 8.6367989999999999
	.quad	0x401d7e160d887ebf              # double 7.3731309999999999
	.quad	0x4020bc42a66dbd73              # double 8.3676960000000005
	.quad	0x40184bcd35a85879              # double 6.0740249999999998
	.quad	0x401db4fc1df3300e              # double 7.4267430000000001
	.quad	0x4004f97891e21533              # double 2.6218119999999998
	.quad	0x3ff174cf4a558ea8              # double 1.091018
	.quad	0x3ffdbadd15f02c4d              # double 1.8581209999999999
	.quad	0x400b870329802c0a              # double 3.4409239999999999
	.quad	0x4011cbd3804534bd              # double 4.4490489999999996
	.quad	0x3ff2712f4cf4a559              # double 1.152633
	.quad	0x40187679cc74b839              # double 6.1156990000000002
	.quad	0x4021982cd39da166              # double 8.7972169999999998
	.quad	0x401e089656eefa1e              # double 7.5083859999999998
	.quad	0x401881d323fee2ca              # double 6.1267820000000004
	.quad	0x3ffe4e779207d4e1              # double 1.8941570000000001
	.quad	0x4003c9363f572de4              # double 2.4732479999999999
	.quad	0x401746fdeb52c9d1              # double 5.8193279999999996
	.quad	0x4016cda37ef5a965              # double 5.7008190000000001
	.quad	0x401797a311e85fd0              # double 5.8980829999999997
	.quad	0x40165b51372a38b9              # double 5.5891770000000003
	.quad	0x4012a3c925785f8d              # double 4.6599469999999998
	.quad	0x4022cf570c564f98              # double 9.4049610000000001
	.quad	0x4001df15a4acf313              # double 2.2339280000000001
	.quad	0x400b2d855970b49e              # double 3.397227
	.quad	0x4009bf7d73c92578              # double 3.2185009999999998
	.quad	0x3fe3918a009f6230              # double 0.61151599999999995
	.quad	0x4017276965f5275f              # double 5.7884880000000001
	.quad	0x3ff8577c88e79aae              # double 1.5213589999999999
	.quad	0x40051c6b05319829              # double 2.6388760000000002
	.quad	0x4021f22856605ee5              # double 8.9729639999999993
	.quad	0x401e5a072d1aeb3e              # double 7.5879180000000002
	.quad	0x401ff9d66adb402d              # double 7.9939819999999999
	.quad	0x3fd04e22a2c23748              # double 0.25476900000000002
	.quad	0x4009c4cdfaca361a              # double 3.2210960000000002
	.quad	0x40018bccf28c79f6              # double 2.1932619999999998
	.quad	0x401d82c59fb1e18f              # double 7.377707
	.quad	0x4000b4a558ea7ce1              # double 2.088206
	.quad	0x401a215f88fc9364              # double 6.532591
	.quad	0x401db6f2e8c0485a              # double 7.428661
	.quad	0x401ccecf63800219              # double 7.2019630000000001
	.quad	0x400127ffde7210bf              # double 2.1445310000000002
	.quad	0x4004c784a9478c87              # double 2.5974210000000002
	.quad	0x40092c5a8155d5f5              # double 3.1466569999999998
	.quad	0x401bed1569f49060              # double 6.9815269999999998
	.quad	0x3fbeaca793576039              # double 0.119822
	.quad	0x402242839042d8c3              # double 9.1299100000000006
	.quad	0x3feac1d8e8640208              # double 0.83616299999999999
	.quad	0x40067262888b545c              # double 2.8058519999999998
	.quad	0x400212702a3486f0              # double 2.2590029999999999
	.quad	0x3fbf9f77292c4934              # double 0.123527
	.quad	0x401d299c7bcc2939              # double 7.2906360000000001
	.quad	0x401c0d24180d3cff              # double 7.0128329999999997
	.quad	0x401ad177a7008a69              # double 6.7045579999999996
	.quad	0x401d5ce746cb966c              # double 7.3407260000000001
	.quad	0x401f01c044284dfd              # double 7.7517100000000001
	.quad	0x40189503b81b64e0              # double 6.1455219999999997
	.quad	0x4010d7f023e9ea14              # double 4.210877
	.quad	0x400bf26fa3fcc9eb              # double 3.4933770000000002
	.quad	0x401a389a459103c9              # double 6.5552760000000001
	.quad	0x401a1752da98676a              # double 6.5227769999999996
	.quad	0x4008fbbb62413db8              # double 3.122916
	.quad	0x3ffd2747d805e5f3              # double 1.82209
	.quad	0x401e002afdda8bd2              # double 7.5001639999999998
	.quad	0x401718bd66277c46              # double 5.7741600000000002
	.quad	0x40204ab40f66a551              # double 8.1459050000000008
	.quad	0x4012c7cfa26a22b4              # double 4.6951280000000004
	.quad	0x4020baab042528ae              # double 8.3645859999999992
	.quad	0x3fc7cac083126e98              # double 0.18587500000000001
	.quad	0x402018ccdd93c46e              # double 8.0484380000000009
	.quad	0x401093e920c069e8              # double 4.144444
	.quad	0x3ff9e2f37fbefd00              # double 1.6179079999999999
	.quad	0x40182fdbd2fa0d78              # double 6.0467370000000003
	.quad	0x3ffd126fa3fcc9eb              # double 1.8170010000000001
	.quad	0x401038d08919ef95              # double 4.0554829999999997
	.quad	0x40104dc55000c954              # double 4.0759480000000003
	.quad	0x400d9129888f861a              # double 3.6958799999999998
	.quad	0x4014205bc01a36e3              # double 5.0316000000000001
	.quad	0x401881e321a2e7f7              # double 6.126843
	.quad	0x401c0318b9346994              # double 7.0030239999999999
	.quad	0x3ffcdacbc8c0ce92              # double 1.803417
	.quad	0x3feb7ca2120e1f7d              # double 0.85896399999999995
	.quad	0x3ff3c1ce6c093d96              # double 1.2348159999999999
	.quad	0x3fef31d92b7fe08b              # double 0.974835
	.quad	0x4007c106ab14ec20              # double 2.9692509999999999
	.quad	0x4004d51efb6dca08              # double 2.604063
	.quad	0x3ffd5de8b3b32053              # double 1.8354269999999999
	.quad	0x401b83b0813cab82              # double 6.878603
	.quad	0x3fe29fc2a8869c67              # double 0.58200200000000002
	.quad	0x3ff358244e93e1ca              # double 1.2090190000000001
	.quad	0x4021246ae3a3a8e7              # double 8.5711279999999999
	.quad	0x4008c770bd017daf              # double 3.0973830000000002
	.quad	0x4015fc45cbbc2b95              # double 5.4963600000000001
	.quad	0x3ffc3b55ac03ff69              # double 1.764486
	.quad	0x3fdabd66277c45cc              # double 0.41781000000000001
	.quad	0x40134de4c51116a9              # double 4.8260680000000002
	.quad	0x40213437a3db3bfb              # double 8.6019869999999994
	.quad	0x3fec8c3d25247cb7              # double 0.892119
	.quad	0x40210c62c343b70f              # double 8.5241910000000001
	.quad	0x4012c5b317efe0ce              # double 4.693066
	.quad	0x401e9264a16a4873              # double 7.6429619999999998
	.quad	0x4014abda5119ce07              # double 5.1678249999999997
	.quad	0x4013e31e7d9988d3              # double 4.9717960000000003
	.quad	0x3fe6c84b5dcc63f1              # double 0.71194999999999997
	.quad	0x4021c949a5657fb7              # double 8.8931400000000007
	.quad	0x4013aacf7446f9ba              # double 4.9168070000000004
	.quad	0x400872e1693c03bc              # double 3.0560939999999999
	.quad	0x40181606317268d3              # double 6.0215079999999999
	.quad	0x401fd70110a137f4              # double 7.9599650000000004
	.quad	0x4020f2f859429175              # double 8.4745509999999999
	.quad	0x402152737110e454              # double 8.6610370000000003
	.quad	0x3ff52599ed7c6fbd              # double 1.32168
	.quad	0x40238675579af188              # double 9.7626139999999992
	.quad	0x401ed40c8472c0e8              # double 7.7070790000000002
	.quad	0x40215972ef0ae536              # double 8.6747049999999994
	.quad	0x401584df04ddb552              # double 5.3797569999999997
	.quad	0x401aedd8f92af9a9              # double 6.7322730000000002
	.quad	0x3ffc81eeed8904f7              # double 1.781722
	.quad	0x401990a5efe93187              # double 6.3912579999999997
	.quad	0x400227820a30db6a              # double 2.2692909999999999
	.quad	0x3fe9b90214ad362f              # double 0.80383400000000005
	.quad	0x401d577c88e79aae              # double 7.3354359999999996
	.quad	0x40106647baa9b49a              # double 4.0998830000000002
	.quad	0x3ff86d2fe3f359ff              # double 1.5266569999999999
	.quad	0x4022d0eb67c286f9              # double 9.4080460000000005
	.quad	0x3fe0c7cd898b2e9d              # double 0.52439000000000002
	.quad	0x3fc500ef1348b220              # double 0.16409099999999999
	.quad	0x402200f0e90bc7b4              # double 9.0018379999999993
	.quad	0x4020bd1e53a81dc1              # double 8.3693720000000003
	.quad	0x3ff37a7a85015c21              # double 1.2174020000000001
	.quad	0x40102545c78a6dad              # double 4.0363990000000003
	.quad	0x40220dfbd6a593a3              # double 9.0273120000000002
	.quad	0x4017bf6837f7be12              # double 5.9369209999999999
	.quad	0x4023ca4a6a875d57              # double 9.895099
	.quad	0x3ff6c7f88765ba6f              # double 1.423821
	.quad	0x40123230fcf80dc3              # double 4.5490149999999998
	.quad	0x400977214f0520d1              # double 3.1831689999999999
	.quad	0x401ac7ed84d338f8              # double 6.6952420000000004
	.quad	0x40218d5410f94c88              # double 8.7760320000000007
	.quad	0x40140ffc5479d4d8              # double 5.0156109999999998
	.quad	0x40070f7b9e060fe4              # double 2.8825599999999998
	.quad	0x40139d2999567dbb              # double 4.9034789999999999
	.quad	0x4020b07c84b5dcc6              # double 8.3446999999999996
	.quad	0x4021ea834d26fa40              # double 8.9580330000000003
	.quad	0x401ee703afb7e910              # double 7.7256
	.quad	0x3fedc6c764adff82              # double 0.93051499999999998
	.quad	0x400eced916872b02              # double 3.851
	.quad	0x4011a26aec0724b7              # double 4.4086109999999996
	.quad	0x3f9f5b1c864883fd              # double 0.030620999999999999
	.quad	0x401cc944241c3efb              # double 7.1965490000000001
	.quad	0x401ede62dc6e2a80              # double 7.717174
	.quad	0x40156625a682b628              # double 5.3497529999999998
	.quad	0x40105726d04e618d              # double 4.0851090000000001
	.quad	0x4010fb4d056c508b              # double 4.2454109999999998
	.quad	0x4020839cd8127b2d              # double 8.2570560000000004
	.quad	0x400c4e3608d0891a              # double 3.538189
	.quad	0x401f34aa53fc0097              # double 7.801431
	.quad	0x401dca5a469d7343              # double 7.4476100000000001
	.quad	0x400bff84cad57bc8              # double 3.499765
	.quad	0x401b9e54f7a91969              # double 6.9046209999999997
	.quad	0x402303f50e347629              # double 9.5077289999999994
	.quad	0x401cdd113836a833              # double 7.2158860000000002
	.quad	0x400e2e6b8305d95e              # double 3.7726660000000001
	.quad	0x401df4d44567125e              # double 7.4890910000000002
	.quad	0x3fed5f090f733a8a              # double 0.91785099999999997
	.quad	0x40234d0203e63e8e              # double 9.6504060000000003
	.quad	0x3fdf157689ca18bd              # double 0.48568499999999998
	.quad	0x4016c02ababead4f              # double 5.6876629999999997
	.quad	0x4020e70da5daf07c              # double 8.451276
	.quad	0x3f68ac9f2fdb8fde              # double 0.0030119999999999999
	.quad	0x400d3fc6540cc78f              # double 3.6561400000000002
	.quad	0x400068b08dd1e53b              # double 2.0511180000000002
	.quad	0x401d7b890d5a5b96              # double 7.3706399999999999
	.quad	0x4021521a719b4dcf              # double 8.6603580000000004
	.quad	0x40098e6d9be4cd75              # double 3.1945450000000002
	.quad	0x400331782d38476f              # double 2.3991549999999999
	.quad	0x400e6ca89fc6da45              # double 3.8030560000000002
	.quad	0x4009467839cd8128              # double 3.1594090000000001
	.quad	0x40094be0589acbc9              # double 3.1620490000000001
	.quad	0x4022c199567dbb17              # double 9.3781230000000004
	.quad	0x40128dab191dde37              # double 4.6383479999999997
	.quad	0x401d5aa21a719b4e              # double 7.3385090000000002
	.quad	0x4016402e6644d877              # double 5.5626769999999999
	.quad	0x40151504c48adeec              # double 5.2705260000000003
	.quad	0x4020419a415f45e1              # double 8.1281300000000005
	.quad	0x4015429dc725c3df              # double 5.3150550000000001
	.quad	0x3ffbb6a2f48c2e77              # double 1.732089
	.quad	0x4021462eb1c432ca              # double 8.6370749999999994
	.quad	0x40154b4070329803              # double 5.3234880000000002
	.quad	0x4011fcf8d716d2aa              # double 4.4970429999999997
	.quad	0x3ffc576145953587              # double 1.771333
	.quad	0x4006043f5f91600f              # double 2.7520739999999999
	.quad	0x40098f5c28f5c28f              # double 3.1949999999999998
	.quad	0x401bf6188b11409a              # double 6.9903279999999999
	.quad	0x401b4eefa1e3eaf7              # double 6.8270860000000004
	.quad	0x4002348ba83f4eca              # double 2.2756569999999998
	.quad	0x3ffbdb71758e2196              # double 1.7410749999999999
	.quad	0x4013e8fd5cb790fb              # double 4.9775289999999996
	.quad	0x4016456cd6c2efd4              # double 5.5677979999999998
	.quad	0x3ff1f8df7a4e7ab7              # double 1.1232599999999999
	.quad	0x4013f66c2acb85a5              # double 4.9906470000000001
	.quad	0x3fe56fd21ff2e48f              # double 0.66990000000000005
	.quad	0x3fd2b5f5f0b28523              # double 0.292356
	.quad	0x400940620ab71327              # double 3.1564369999999999
	.quad	0x3ff794d61b2a27f2              # double 1.4738370000000001
	.quad	0x401479eadd590c0b              # double 5.1190600000000002
	.quad	0x3feff36ac647778e              # double 0.99846400000000002
	.quad	0x3fdb144028e4fb98              # double 0.42311100000000001
	.quad	0x401221ec4e7253da              # double 4.5331279999999996
	.quad	0x4015b4b3c3e74afd              # double 5.4264669999999997
	.quad	0x400688b19a415f46              # double 2.8167450000000001
	.quad	0x3ffc1fec99f1ae2e              # double 1.7577940000000001
	.quad	0x401907b634dad320              # double 6.2575310000000002
	.quad	0x401e6eb7cbb3c819              # double 7.6081229999999999
	.quad	0x40114c99285a921d              # double 4.3248030000000002
	.quad	0x400b9c2b0ea18373              # double 3.451254
	.quad	0x4021baad81adea89              # double 8.8646049999999992
	.quad	0x400e206c8711d799              # double 3.7658320000000001
	.quad	0x402005421c044285              # double 8.0102700000000002
	.quad	0x40084ff8ec0f8833              # double 3.0390489999999999
	.quad	0x400d663b688bda94              # double 3.6749179999999999
	.quad	0x4020cead2dcb1466              # double 8.4036650000000002
	.quad	0x3fd26162f166e009              # double 0.287194
	.quad	0x3fd3506dd69d3027              # double 0.301784
	.quad	0x401ab352220bc383              # double 6.6751180000000003
	.quad	0x402311d27c393682              # double 9.5348089999999992
	.quad	0x4017cec9e236c15d              # double 5.9519419999999998
	.quad	0x4003a671ef30a4e3              # double 2.4562719999999998
	.quad	0x401ef79aae6c8f75              # double 7.7418009999999997
	.quad	0x401233d20f2becee              # double 4.5506060000000002
	.quad	0x4021197cc39ffd61              # double 8.5497800000000002
	.quad	0x4015d6594af4f0d8              # double 5.4593249999999998
	.quad	0x3ffa7fbefd00713f              # double 1.656188
	.quad	0x400fca60913a4f87              # double 3.9738169999999999
	.quad	0x401414d338f79852              # double 5.0203369999999996
	.quad	0x401a94877681669d              # double 6.6450480000000001
	.quad	0x402276e8f29d40ee              # double 9.232246
	.quad	0x40234107314ca926              # double 9.627008
	.quad	0x4020a955b4677b39              # double 8.3307319999999994
	.quad	0x401c0b0c026cc1ca              # double 7.0107879999999998
	.quad	0x401b4deefe4ffc98              # double 6.8261070000000004
	.quad	0x400675432873bc90              # double 2.8072569999999999
	.quad	0x4001c25742dcf462              # double 2.2198929999999999
	.quad	0x401e57ac3eb7cbb4              # double 7.5856180000000002
	.quad	0x400e533a0407cc7d              # double 3.790638
	.quad	0x40084c1871e6cd29              # double 3.037156
	.quad	0x40230d352220bc38              # double 9.5257959999999997
	.quad	0x40237ef9db22d0e5              # double 9.7479999999999993
	.quad	0x4014be5d5b24e9c4              # double 5.1859029999999997
	.quad	0x4018241700cd8559              # double 6.0352439999999996
	.quad	0x401a7ec95bff0457              # double 6.6238149999999996
	.quad	0x401c2704ff43419e              # double 7.0381049999999998
	.quad	0x401025692b3cc4ac              # double 4.0365339999999996
	.quad	0x401282f2b66b6178              # double 4.6278790000000001
	.quad	0x4015b8900c521dda              # double 5.430237
	.quad	0x401fd7807789a459              # double 7.9604509999999999
	.quad	0x401e1f8012dfd695              # double 7.5307620000000001
	.quad	0x401b47082491afc0              # double 6.8193669999999997
	.quad	0x400c5233df2a9d62              # double 3.5401379999999998
	.quad	0x401885681ecd4aa1              # double 6.13028
	.quad	0x3fefb9e060fe4799              # double 0.99143999999999998
	.quad	0x400f6214ad362e90              # double 3.9228909999999999
	.quad	0x4015b610adcd2d45              # double 5.4277980000000001
	.quad	0x4021fdbee3d5fdce              # double 8.9955970000000001
	.quad	0x3ff66e019b0ab2e1              # double 1.4018569999999999
	.quad	0x400190ee49f51698              # double 2.195767
	.quad	0x401d53c85c24c405              # double 7.3318190000000003
	.quad	0x3ff6d25bb7b6bb13              # double 1.4263570000000001
	.quad	0x401a0ecaeea63b69              # double 6.5144460000000004
	.quad	0x4002f245b291b824              # double 2.3682970000000001
	.quad	0x3ff45185cee17a03              # double 1.269903
	.quad	0x4021ad6451b93038              # double 8.8386560000000003
	.quad	0x3fe638066c2acb86              # double 0.69433900000000004
	.quad	0x4019788051c9f72f              # double 6.3676769999999996
	.quad	0x401c88f8e7ddca4b              # double 7.1337619999999999
	.quad	0x4019378c436fc159              # double 6.304246
	.quad	0x3f9ce28ed5f138bd              # double 0.028208
	.quad	0x40106013a92a3055              # double 4.0938249999999998
	.quad	0x4013a5e84f09528f              # double 4.9120189999999999
	.quad	0x40207d627bf61aa4              # double 8.2448920000000001
	.quad	0x400f230121682f94              # double 3.8920919999999999
	.quad	0x4012ab63d3e4ef03              # double 4.6673730000000004
	.quad	0x40142fe3b03e20cd              # double 5.046767
	.quad	0x4018312ba16e7a31              # double 6.0480179999999999
	.quad	0x401bbad46f587d70              # double 6.9324510000000004
	.quad	0x401497fc7607c41a              # double 5.1484240000000003
	.quad	0x401c47121ab4b72c              # double 7.0694049999999997
	.quad	0x3ffb7c6327ed84d3              # double 1.717868
	.quad	0x401739c99285a922              # double 5.8064330000000002
	.quad	0x40169f6a0dbad3a6              # double 5.655678
	.quad	0x401342bb23571d1d              # double 4.8151669999999998
	.quad	0x4014b252ce032db2              # double 5.1741440000000001
	.quad	0x3fefb0446b69db66              # double 0.99026700000000001
	.quad	0x40207dd1e53a81dc              # double 8.2457419999999999
	.quad	0x401a1c725c3dee78              # double 6.5277799999999999
	.quad	0x401961b25f633ce6              # double 6.3454069999999998
	.quad	0x401863508f648c72              # double 6.0969870000000004
	.quad	0x40079fe542e557de              # double 2.953074
	.quad	0x40173dc7ef177a70              # double 5.810333
	.quad	0x40155f0307f23cc9              # double 5.3427850000000001
	.quad	0x4022d02b62845996              # double 9.4065809999999992
	.quad	0x401332b3cc4ac6ce              # double 4.7995140000000003
	.quad	0x4023db2cc70867ae              # double 9.9280760000000008
	.quad	0x401861cc96462802              # double 6.0955069999999996
	.quad	0x4003fd3e4ef0281c              # double 2.4986540000000002
	.quad	0x3ff2154003254e6e              # double 1.130188
	.quad	0x3ffd3470eb24a6a8              # double 1.8253029999999999
	.quad	0x401f13df6db940ff              # double 7.7694070000000001
	.quad	0x40139c9de0503750              # double 4.902946
	.quad	0x4011552a411c2a02              # double 4.3331689999999998
	.quad	0x40153e4b018611fd              # double 5.3108329999999997
	.quad	0x40144d4280ae1049              # double 5.0754489999999999
	.quad	0x401bc4c55432873c              # double 6.9421590000000002
	.quad	0x40037c39bcba3012              # double 2.435657
	.quad	0x4001c80a5accd530              # double 2.2226759999999999
	.quad	0x40100cf5f4e4430b              # double 4.0126569999999999
	.quad	0x3ff71132f87ad081              # double 1.4416990000000001
	.quad	0x4006925460aa64c3              # double 2.82145
	.quad	0x3fe088bda9435ac9              # double 0.51669200000000004
	.quad	0x3ffba55d1c3ac92a              # double 1.7278720000000001
	.quad	0x402152d98bf7f067              # double 8.661816
	.quad	0x400cd4c985f06f69              # double 3.6038999999999999
	.quad	0x4019ca5614df8b15              # double 6.4475939999999996
	.quad	0x40150631f8a0902e              # double 5.2560500000000001
	.quad	0x401651348b220792              # double 5.5793020000000002
	.quad	0x40198bd512ec6bcf              # double 6.3865550000000004
	.quad	0x402181e236c15d2d              # double 8.753679
	.quad	0x3fe9923c42a66dbd              # double 0.79910099999999995
	.quad	0x40102ed0f627392a              # double 4.0457190000000001
	.quad	0x402397304039abf3              # double 9.7952899999999996
	.quad	0x401f2b6bf444e0db              # double 7.7924040000000003
	.quad	0x402352dcb1465e89              # double 9.6618399999999997
	.quad	0x3feba34a87e38eb0              # double 0.86368299999999998
	.quad	0x40106b26394face6              # double 4.1046379999999996
	.quad	0x40223ee6b8305d96              # double 9.1228540000000002
	.quad	0x3fe003ab862b27cc              # double 0.500448
	.quad	0x3ffb46c6583e8577              # double 1.704779
	.quad	0x40017af4adbc664d              # double 2.1850369999999999
	.quad	0x40138d4d4024b33e              # double 4.8879900000000003
	.quad	0x3fe3595dd4c76d11              # double 0.60465899999999995
	.quad	0x4018c4cbe1eb4203              # double 6.1921840000000001
	.quad	0x3ff5d30be0ded289              # double 1.364025
	.quad	0x401ff561d4306e5d              # double 7.9896310000000001
	.quad	0x3ff5d3aa369fcf3e              # double 1.3641760000000001
	.quad	0x4011cc31593e5fb7              # double 4.4494069999999999
	.quad	0x4011f39c51dabe27              # double 4.4879009999999999
	.quad	0x40137de4c51116a9              # double 4.8729430000000002
	.quad	0x3ff88c176577531e              # double 1.5342020000000001
	.quad	0x4005c4c942d490e6              # double 2.7210869999999998
	.quad	0x4010fff10ecb74de              # double 4.249943
	.quad	0x4011e3df6db940ff              # double 4.4725320000000002
	.quad	0x4021596616b54e2b              # double 8.674607
	.quad	0x401da20bc382a130              # double 7.4082480000000004
	.quad	0x4010b70d62bf11f9              # double 4.1787619999999999
	.quad	0x401529bb6aa4b988              # double 5.2907539999999997
	.quad	0x4004ec0a4a05dd90              # double 2.6152540000000002
	.quad	0x401b7859c8c9320e              # double 6.8675300000000004
	.quad	0x3ffd506dd69d3027              # double 1.832136
	.quad	0x400497939a7c17a9              # double 2.5740120000000002
	.quad	0x3fe32391d57ff9b5              # double 0.59809199999999996
	.quad	0x3ff77affb04ee7c5              # double 1.4675290000000001
	.quad	0x400ef2e8c0485a0c              # double 3.868608
	.quad	0x401eeaa044ae85ba              # double 7.7291270000000001
	.quad	0x400e4e9680e06530              # double 3.788373
	.quad	0x4012109784ec636b              # double 4.516203
	.quad	0x401d5d783dff3f10              # double 7.3412790000000001
	.quad	0x401d18986fcdee35              # double 7.274019
	.quad	0x3fc637bd05af6c6a              # double 0.17357600000000001
	.quad	0x3ff4ebcc6c54bcf1              # double 1.3075680000000001
	.quad	0x3fff3b62413db7f1              # double 1.9519979999999999
	.quad	0x40002555c52e72da              # double 2.01823
	.quad	0x4005f986b9c304cd              # double 2.746839
	.quad	0x3fea90a137f38c54              # double 0.83015499999999997
	.quad	0x40154028e4fb97bb              # double 5.3126559999999996
	.quad	0x3fdb2f8bdec5f395              # double 0.42477700000000002
	.quad	0x401e9ae5ffa3b9ae              # double 7.651268
	.quad	0x4016ef1f9acffa7f              # double 5.7335190000000003
	.quad	0x4022c96ca46e08f2              # double 9.3934069999999998
	.quad	0x3ff650385c67dfe3              # double 1.394585
	.quad	0x4017e5f676ea4229              # double 5.9745730000000004
	.quad	0x401a584449dbec25              # double 6.5861980000000004
	.quad	0x40134647778dd617              # double 4.818632
	.quad	0x4012b7a786c22681              # double 4.6793500000000003
	.quad	0x40206844ae85b9e9              # double 8.2036490000000004
	.quad	0x3fff557cd466f502              # double 1.9583710000000001
	.quad	0x401ed8aa8650e779              # double 7.7115879999999998
	.quad	0x4020a0cfbfc6540d              # double 8.3140850000000004
	.quad	0x400bb67ec7863bef              # double 3.4641090000000001
	.quad	0x401c0c5718eb8950              # double 7.0120509999999996
	.quad	0x4021de1aa3f034b1              # double 8.9337970000000002
	.quad	0x40105528f190d174              # double 4.083164
	.quad	0x401cd256798958da              # double 7.2054080000000003
	.quad	0x400230d413122b7c              # double 2.2738420000000001
	.quad	0x401d51db445ed4a2              # double 7.3299380000000003
	.quad	0x3fe9851eb851eb85              # double 0.79749999999999999
	.quad	0x3fffced0b30b5aa7              # double 1.987992
	.quad	0x3ffdf3b107746888              # double 1.8719950000000001
	.quad	0x402296e7e62dc6e3              # double 9.2947380000000006
	.quad	0x4014dd0203e63e8e              # double 5.2158280000000001
	.quad	0x400dac57e23f24d9              # double 3.709152
	.quad	0x40119495182a9931              # double 4.3951000000000002
	.quad	0x401baf91a32b12d3              # double 6.9214539999999998
	.quad	0x4012994855da2728              # double 4.6496899999999997
	.quad	0x40209de3da2f8bdf              # double 8.3083790000000004
	.quad	0x400503925bb7b6bb              # double 2.626744
	.quad	0x401b4d013a92a305              # double 6.8251999999999997
	.quad	0x4003c3fc43b2dd37              # double 2.4706959999999998
	.quad	0x4023fba6aca79357              # double 9.9915059999999993
	.quad	0x4004400f345069a5              # double 2.5312790000000001
	.quad	0x4020566f0cfe1544              # double 8.1688159999999996
	.quad	0x3ffafd8cf398e970              # double 1.6869019999999999
	.quad	0x402134dfaca36199              # double 8.6032689999999992
	.quad	0x401de33721d53cde              # double 7.4718900000000001
	.quad	0x3feb8b0f27bb2fec              # double 0.86072499999999996
	.quad	0x401f403f705857b0              # double 7.8127420000000001
	.quad	0x4022833f85510d39              # double 9.2563440000000003
	.quad	0x40148b11c6d1e109              # double 5.1358100000000002
	.quad	0x3ff684a6223e186a              # double 1.4073850000000001
	.quad	0x40217ec52a411c2a              # double 8.747598
	.quad	0x401cc094a2b9d3cc              # double 7.1880670000000002
	.quad	0x3fff54e3bcd35a86              # double 1.9582250000000001
	.quad	0x3fe937110e453d21              # double 0.78797200000000001
	.quad	0x400ece147ae147ae              # double 3.850625
	.quad	0x401923f42352eb5f              # double 6.2851109999999997
	.quad	0x4014827c39368273              # double 5.127427
	.quad	0x3ffbbac929aa1d75              # double 1.7331019999999999
	.quad	0x400c42845996744b              # double 3.5324789999999999
	.quad	0x3ff97a7c9de05037              # double 1.5924039999999999
	.quad	0x40190df43c7d5ed0              # double 6.2636269999999996
	.quad	0x3fe793ad5bee3d60              # double 0.73677700000000001
	.quad	0x3ffa832873bc903f              # double 1.6570210000000001
	.quad	0x401f039192641b33              # double 7.7534850000000004
	.quad	0x3fc351159c497742              # double 0.15091199999999999
	.quad	0x4022de601bc98a22              # double 9.4343269999999997
	.quad	0x40168dde7a743a64              # double 5.6385439999999996
	.quad	0x4007866559f6ec5b              # double 2.940623
	.quad	0x401a0249e44fa051              # double 6.5022349999999998
	.quad	0x401640079a2834d2              # double 5.5625289999999996
	.quad	0x4016260242d05f29              # double 5.5371180000000004
	.quad	0x401926683c297bfa              # double 6.2875069999999997
	.quad	0x3fe45eb95e5aff2a              # double 0.63656299999999999
	.quad	0x402311f623076c05              # double 9.5350809999999999
	.quad	0x4007ce48e8a71de7              # double 2.9757250000000002
	.quad	0x40052662bae03b3f              # double 2.6437430000000002
	.quad	0x3fd5fc8f32378ab1              # double 0.34354000000000001
	.quad	0x400f76eb4e981388              # double 3.9330660000000002
	.quad	0x400adcfe58601366              # double 3.357907
	.quad	0x40146d9f4d37c137              # double 5.1070529999999996
	.quad	0x400ff085f4a1272d              # double 3.9924430000000002
	.quad	0x40218272ead9274e              # double 8.7547829999999998
	.quad	0x40146fa00e27e0f0              # double 5.1090090000000004
	.quad	0x3ff3ae7a311e85fd              # double 1.230097
	.quad	0x4021d12f09d8c6d6              # double 8.9085619999999999
	.quad	0x401e0b9bed30f063              # double 7.5113370000000001
	.quad	0x3ff1bc2224edf612              # double 1.1084309999999999
	.quad	0x3febbc42a66dbd73              # double 0.86673100000000003
	.quad	0x4014933508f648c7              # double 5.1437569999999999
	.quad	0x401587496aad1d04              # double 5.3821159999999999
	.quad	0x400ea77bbf93ff26              # double 3.831779
	.quad	0x4013e7820a30db6a              # double 4.9760819999999999
	.quad	0x40179ba301216830              # double 5.9019890000000004
	.quad	0x3ff5f5b70691ea79              # double 1.3724890000000001
	.quad	0x400156a0dbad3a60              # double 2.1672989999999999
	.quad	0x402369dbca9691a7              # double 9.7067549999999993
	.quad	0x400aaa59c065b63d              # double 3.3331789999999999
	.quad	0x4023fc3760bf5d79              # double 9.9926100000000008
	.quad	0x400babb2bba98eda              # double 3.4588369999999999
	.quad	0x401f2c2acb85a4f0              # double 7.7931319999999999
	.quad	0x401ba76640a6b93d              # double 6.9134760000000002
	.quad	0x3ffbc0cb6c7a7c9e              # double 1.734569
	.quad	0x4019c01cd5f99c39              # double 6.4376100000000003
	.quad	0x3ffa0cb8e086bdf5              # double 1.6281060000000001
	.quad	0x4021c1b2a27f1b69              # double 8.8783159999999999
	.quad	0x3fe5281344806291              # double 0.66114200000000001
	.quad	0x40132d2a62aa1944              # double 4.7941070000000003
	.quad	0x4017bbb7b6bb1290              # double 5.9333179999999999
	.quad	0x4015848cf7caa759              # double 5.3794440000000003
	.quad	0x402084e91c8eac00              # double 8.2595910000000003
	.quad	0x402107746887a8d6              # double 8.5145599999999995
	.quad	0x3fd2bb9496249a13              # double 0.29269899999999999
	.quad	0x40201896787ce960              # double 8.0480230000000006
	.quad	0x3fe5e8f29d40ee07              # double 0.68468600000000002
	.quad	0x401f6f75d9a0f0a6              # double 7.8588480000000001
	.quad	0x40129d4fdf3b645a              # double 4.6536249999999999
	.quad	0x3faa355043e5321e              # double 0.051187999999999997
	.quad	0x40223202107b7846              # double 9.0976719999999993
	.quad	0x4021b24fa8b4bf90              # double 8.8482640000000004
	.quad	0x4001b839cd8127b3              # double 2.2149540000000001
	.quad	0x4022c2c16df3f962              # double 9.3803820000000009
	.quad	0x401fd80c73abc947              # double 7.9609849999999999
	.quad	0x400aff3e89a88ace              # double 3.3746309999999999
	.quad	0x40035f31f46ed246              # double 2.4214820000000001
	.quad	0x401a656323bbc6eb              # double 6.599011
	.quad	0x401a99cae21101b0              # double 6.650188
	.quad	0x3ffde6bb55ac03ff              # double 1.8688309999999999
	.quad	0x4021f7903211cb04              # double 8.9835220000000006
	.quad	0x4023740b34e7685a              # double 9.7266480000000008
	.quad	0x401effb71fbc5dea              # double 7.7497220000000002
	.quad	0x401c4a1e81cb46bb              # double 7.0723820000000002
	.quad	0x4014ed3b6cbd987c              # double 5.2316719999999997
	.quad	0x400ce60999dcb578              # double 3.612323
	.quad	0x40192fabda0dfdf0              # double 6.2965540000000004
	.quad	0x4015426aec0724b7              # double 5.3148609999999996
	.quad	0x4011d43b70ef5665              # double 4.4572580000000004
	.quad	0x40067a272862f599              # double 2.8096450000000002
	.quad	0x4001001de2691644              # double 2.125057
	.quad	0x3ff5dd9b1b79d90a              # double 1.366603
	.quad	0x3fa0c5c9a34ca0c3              # double 0.032759000000000003
	.quad	0x40142130164840e1              # double 5.0324099999999996
	.quad	0x3ff69b1d92b7fe09              # double 1.4128700000000001
	.quad	0x4022bf6ddaceee0f              # double 9.3738849999999995
	.quad	0x401aeae429e0a41a              # double 6.7293859999999999
	.quad	0x4000fa2f8bdec5f4              # double 2.1221610000000002
	.quad	0x3fd3435696e58a33              # double 0.300985
	.quad	0x400246e7e62dc6e3              # double 2.2846220000000002
	.quad	0x4016d28848387df6              # double 5.7055980000000002
	.quad	0x4013b4ea4a8c154d              # double 4.9266750000000004
	.quad	0x4023c363b256ffc1              # double 9.8816199999999998
	.quad	0x3ff0f865d7cb2d90              # double 1.0606439999999999
	.quad	0x3ff5d1276fb09204              # double 1.3635630000000001
	.quad	0x400aa00000000000              # double 3.328125
	.quad	0x401476555c52e72e              # double 5.1155600000000003
	.quad	0x40234f8e5c4eb570              # double 9.6553830000000005
	.quad	0x401c1ef3d3a1d324              # double 7.030227
	.quad	0x401ba241c3efae79              # double 6.9084539999999999
	.quad	0x3ff0b52eb5f5f0b3              # double 1.0442340000000001
	.quad	0x4019943201040bfe              # double 6.3947219999999998
	.quad	0x401476d8f4f93bc1              # double 5.1160620000000003
	.quad	0x40141154c985f06f              # double 5.0169249999999996
	.quad	0x400036d7e889c1b5              # double 2.0267789999999999
	.quad	0x40060aeb80ecfa6a              # double 2.7553320000000001
	.quad	0x400ae66559f6ec5b              # double 3.362498
	.quad	0x3ffa3daa4fca42af              # double 1.640055
	.quad	0x3ff82369fcf3dc05              # double 1.5086459999999999
	.quad	0x3fec25d28d002e23              # double 0.87961699999999998
	.quad	0x401d91a60d4562e1              # double 7.3922350000000003
	.quad	0x4010be61cffeb075              # double 4.1859200000000003
	.quad	0x4001c4ef0281ba80              # double 2.2211590000000001
	.quad	0x400db2502eec7c95              # double 3.7120669999999998
	.quad	0x401ffc8605681ecd              # double 7.9966049999999997
	.quad	0x4023db8887229e90              # double 9.9287759999999992
	.quad	0x40103e35c5b4aa97              # double 4.0607519999999999
	.quad	0x3fd927525460aa65              # double 0.39302500000000001
	.quad	0x3ffe0eaaf35e310e              # double 1.8785810000000001
	.quad	0x401f4d9a0f0a5eff              # double 7.8257830000000003
	.quad	0x4023782c2bd7f51f              # double 9.734712
	.quad	0x4020c5f1e0828c37              # double 8.3866110000000003
	.quad	0x4016db79d909f1f1              # double 5.7143319999999997
	.quad	0x3ffbb7b28954a7f8              # double 1.732348
	.quad	0x40146ef06b37867f              # double 5.108339
	.quad	0x400bbb1e9f277814              # double 3.466367
	.quad	0x4022b204af922963              # double 9.3476920000000003
	.quad	0x400703e3193f6c27              # double 2.8768980000000002
	.quad	0x401b2122fad6cb53              # double 6.7823599999999997
	.quad	0x4016c9f7f8ca8199              # double 5.697235
	.quad	0x401f0fbb0e5e6794              # double 7.7653619999999997
	.quad	0x4018dbe3c105186e              # double 6.2147360000000003
	.quad	0x4022425ca29845dd              # double 9.1296130000000009
	.quad	0x400e21dc93ea2d30              # double 3.766534
	.quad	0x3fc1873ffac1d29e              # double 0.13694000000000001
	.quad	0x3ff46c2df0d41312              # double 1.276411
	.quad	0x3ff563b8a19c9d5a              # double 1.336846
	.quad	0x4016d353f7ced917              # double 5.7063750000000004
	.quad	0x401e8ffac1d29dc7              # double 7.6406049999999998
	.quad	0x40167f0cbaf965b2              # double 5.624072
	.quad	0x3fedfd63022dd7aa              # double 0.93718100000000004
	.quad	0x3ffbf3f42352eb5f              # double 1.7470589999999999
	.quad	0x40113c0767d34df0              # double 4.3086219999999997
	.quad	0x3fddf8726d04e619              # double 0.46828900000000001
	.quad	0x4013e55de58e64b2              # double 4.9739909999999998
	.quad	0x4016f296f6512a95              # double 5.736904
	.quad	0x400e612e83a109d0              # double 3.7974519999999998
	.quad	0x3fbc1333b96af039              # double 0.109668
	.quad	0x4017d9f1ae2da555              # double 5.9628360000000002
	.quad	0x4021ad7c914b167f              # double 8.8388410000000004
	.quad	0x401782a38b8ae31d              # double 5.8775769999999996
	.quad	0x3fe496a8b8f14db6              # double 0.64339100000000005
	.quad	0x40222063e07a28bb              # double 9.0632619999999999
	.quad	0x400ebaff2a172abf              # double 3.841307
	.quad	0x400057ebaf102364              # double 2.0429300000000001
	.quad	0x40104281fd9ba1b2              # double 4.0649490000000004
	.quad	0x3f97903211cb039f              # double 0.023011
	.quad	0x400227903211cb04              # double 2.2693180000000002
	.quad	0x40151082cf52b90a              # double 5.2661239999999996
	.quad	0x401b4fb762d83c6d              # double 6.8278480000000004
	.quad	0x4021302ababead4f              # double 8.5940759999999994
	.quad	0x4023411600f34507              # double 9.6271210000000007
	.quad	0x401092a8869c66d3              # double 4.1432209999999996
	.quad	0x3ff0873365881a15              # double 1.0330079999999999
	.quad	0x3fe34de19fc2a887              # double 0.60325700000000004
	.quad	0x401ec00e6afcce1c              # double 7.6875549999999997
	.quad	0x40215878d92fb19e              # double 8.6727969999999992
	.quad	0x401e20be0ded288d              # double 7.531975
	.quad	0x4017dba237cdcca7              # double 5.964486
	.quad	0x40130df4c2b51bd6              # double 4.7636289999999999
	.quad	0x4021905c24c404a7              # double 8.7819529999999997
	.quad	0x400940cb6c7a7c9e              # double 3.1566380000000001
	.quad	0x40214c58cd20afa3              # double 8.6491150000000001
	.quad	0x401dc2a51e321a2e              # double 7.4400829999999996
	.quad	0x401ec8e8ea39c51e              # double 7.6962010000000003
	.quad	0x4023d4998d045fe1              # double 9.9152339999999998
	.quad	0x4023e614163779ea              # double 9.9493720000000003
	.quad	0x4020831b9b66f933              # double 8.2560699999999994
	.quad	0x4010dd9f4d37c137              # double 4.2164279999999996
	.quad	0x401d8914f483cafb              # double 7.3838689999999998
	.quad	0x3ffeecb10342aa9f              # double 1.9327859999999999
	.quad	0x3ff64845132f87ad              # double 1.392644
	.quad	0x3ff6db8bac710cb3              # double 1.4286000000000001
	.quad	0x401793c792d1287c              # double 5.8943159999999999
	.quad	0x3ff82f74cd31769b              # double 1.5115860000000001
	.quad	0x4023dba6aca79357              # double 9.9290059999999993
	.quad	0x401b2da2f8bdec5f              # double 6.7945669999999998
	.quad	0x3fbf9a2834d26fa4              # double 0.123446
	.quad	0x40209e5321e603d5              # double 8.3092279999999992
	.quad	0x400d070fbeb9e493              # double 3.6284480000000001
	.quad	0x4020efcc7d1bb491              # double 8.4683569999999992
	.quad	0x400f164840e1719f              # double 3.8858799999999998
	.quad	0x4011bc4e2f37fbf0              # double 4.4338920000000002
	.quad	0x40007e8a2ec28b2a              # double 2.0617869999999998
	.quad	0x40002f15e7c8d196              # double 2.0229910000000002
	.quad	0x4021d1d2e0e30447              # double 8.9098120000000005
	.quad	0x3ff2e60d4562e0a0              # double 1.181165
	.quad	0x4015801a36e2eb1c              # double 5.3750999999999998
	.quad	0x400fee8e1d6494d5              # double 3.991482
	.quad	0x401ab830a0b1bbcf              # double 6.6798729999999997
	.quad	0x402368c6b484d76b              # double 9.7046410000000005
	.quad	0x401619363f572de4              # double 5.5246209999999998
	.quad	0x3ff557a355043e53              # double 1.333896
	.quad	0x4002ace0b912dba5              # double 2.3344130000000001
	.quad	0x40071e1fc08fa7a8              # double 2.8897089999999999
	.quad	0x401b584b5dcc63f1              # double 6.8362249999999998
	.quad	0x401f3dfa871a3b15              # double 7.8105260000000003
	.quad	0x40118ba9d1f60179              # double 4.3863899999999996
	.quad	0x401e79310129cbab              # double 7.6183509999999996
	.quad	0x4016c9d7fd82773e              # double 5.6971129999999999
	.quad	0x40141447c30d306a              # double 5.0198049999999999
	.quad	0x4011480ae1049236              # double 4.320354
	.quad	0x4012ed655e28aa43              # double 4.7318319999999998
	.quad	0x40114328b6d86ec1              # double 4.3155849999999996
	.quad	0x4007087b139c94f7              # double 2.8791410000000002
	.quad	0x3ff6d3fd0d0678c0              # double 1.426755
	.quad	0x400bdd5885d31338              # double 3.483079
	.quad	0x401eeec679cc74b8              # double 7.7331789999999998
	.quad	0x40201e8405b39e28              # double 8.0596010000000007
	.quad	0x4011a4a1f080303c              # double 4.410774
	.quad	0x40204e25a682b628              # double 8.1526309999999995
	.quad	0x4014b5903a7546d4              # double 5.177308
	.quad	0x3fc26aa8eb463498              # double 0.14388000000000001
	.quad	0x400ed018611fd588              # double 3.8516089999999998
	.quad	0x4012d3621fafc8b0              # double 4.706429
	.quad	0x4007cbdc26dce39b              # double 2.9745409999999999
	.quad	0x401e505e5f30e7ff              # double 7.5784849999999996
	.quad	0x401751001d5c3159              # double 5.8291019999999998
	.quad	0x400d4fd75e2046c7              # double 3.6639849999999998
	.quad	0x401a98fabda0dfdf              # double 6.649394
	.quad	0x401779a7c17a8933              # double 5.8688039999999999
	.quad	0x401f2c40d0aaa7df              # double 7.7932160000000001
	.quad	0x400a4ceaaf35e311              # double 3.2875570000000001
	.quad	0x4021fcb07d0aed9a              # double 8.9935340000000004
	.quad	0x40232a89fc6da448              # double 9.5830839999999994
	.quad	0x4013b7a0f9096bba              # double 4.9293250000000004
	.quad	0x401b0a47a9e2bcf9              # double 6.7600389999999999
	.quad	0x4023313986338b48              # double 9.5961420000000003
	.quad	0x4023f3940fecdd0e              # double 9.9757390000000008
	.quad	0x4021e8893b7d8490              # double 8.9541719999999998
	.quad	0x4021302f2f987400              # double 8.5941100000000006
	.quad	0x4012e05d0fa58f71              # double 4.7191049999999999
	.quad	0x401afcd20afa2f06              # double 6.7468950000000003
	.quad	0x401f4ec56d5cfaad              # double 7.8269250000000001
	.quad	0x40226bfe1975f2cb              # double 9.2109229999999993
	.quad	0x400d8d49949e8816              # double 3.693988
	.quad	0x3fe752ed783dff3f              # double 0.72887299999999999
	.quad	0x3fee874ea8da7f3d              # double 0.954017
	.quad	0x4004f6134ce3de61              # double 2.6201539999999999
	.quad	0x3ff96178f68be2f8              # double 1.5862970000000001
	.quad	0x4016697bb7308356              # double 5.6030110000000004
	.quad	0x4002cd2b2bfdb4cc              # double 2.3501799999999999
	.quad	0x400c88e1d6494d51              # double 3.566837
	.quad	0x3ff43b7d84901d19              # double 1.264524
	.quad	0x40230c80e8c8abd6              # double 9.5244210000000002
	.quad	0x401c2b2e9ccb7d41              # double 7.0421699999999996
	.quad	0x4009c35f80991794              # double 3.2203970000000002
	.quad	0x40211ba08398a655              # double 8.5539590000000008
	.quad	0x400381e92923e5b8              # double 2.4384329999999999
	.quad	0x4000825529fe004b              # double 2.0636389999999998
	.quad	0x4009871f79420b3d              # double 3.1909779999999999
	.quad	0x40107b573eab367a              # double 4.1204499999999999
	.quad	0x3fe2d08919ef954f              # double 0.58795600000000003
	.quad	0x400f11244a6223e2              # double 3.8833700000000002
	.quad	0x401ef94b380cb6c8              # double 7.7434510000000003
	.quad	0x401fcefe4ffc9796              # double 7.9521420000000003
	.quad	0x40021771001d5c31              # double 2.2614459999999998
	.quad	0x40006c9320d9945b              # double 2.0530149999999998
	.quad	0x4019c4dd2f1a9fbe              # double 6.4422499999999996
	.quad	0x3ffbab92c061847f              # double 1.7293879999999999
	.quad	0x40060a24cc6822ff              # double 2.754953
	.quad	0x3fd1549b62c77575              # double 0.270789
	.quad	0x400b2a66559f6ec6              # double 3.3957030000000001
	.quad	0x3fdbd6f544bb1af4              # double 0.43499500000000002
	.quad	0x400ea7f562174c4d              # double 3.8320110000000001
	.quad	0x401ec11622813448              # double 7.6885609999999999
	.quad	0x3fe7feda66128390              # double 0.74985999999999997
	.quad	0x4002ffb04ee7c4a0              # double 2.3748480000000001
	.quad	0x40132c6fbd273d5c              # double 4.7933950000000003
	.quad	0x4017cfa00e27e0f0              # double 5.9527590000000004
	.quad	0x3ff217c5ef62f9ca              # double 1.1308039999999999
	.quad	0x3ffa53db7f173754              # double 1.645473
	.quad	0x4022b87a6bd6e8b0              # double 9.3603090000000009
	.quad	0x401daab474107315              # double 7.4167040000000002
	.quad	0x40110a1511dffc54              # double 4.2598459999999996
	.quad	0x3fe3691a75cd0bb7              # double 0.60658000000000001
	.quad	0x401e8ee286727568              # double 7.6395359999999996
	.quad	0x401e11f5be5d9e41              # double 7.5175390000000001
	.quad	0x4007d8da3c21187e              # double 2.9808849999999998
	.quad	0x4014cf9a49c2c1b1              # double 5.2027369999999999
	.quad	0x4001acbfb15b573f              # double 2.2093500000000001
	.quad	0x3fe40c9d9d3458cd              # double 0.62653999999999999
	.quad	0x4022d5918a009f62              # double 9.4171259999999997
	.quad	0x4018bfaf42784a94              # double 6.1871919999999996
	.quad	0x3fc550dae3e6c4c6              # double 0.16653000000000001
	.quad	0x4008da52263d816b              # double 3.1066020000000001
	.quad	0x4008f84e3ffef391              # double 3.1212430000000002
	.quad	0x40215bf83382e44b              # double 8.6796279999999992
	.quad	0x3ff19146e4c0df59              # double 1.0979680000000001
	.quad	0x401f39784ec636b1              # double 7.8061230000000003
	.quad	0x401fae2e6ea85447              # double 7.9200989999999995
	.quad	0x40233cf3343fa2ad              # double 9.6190429999999995
	.quad	0x401551f85d744f5d              # double 5.3300489999999998
	.quad	0x4019a5653c9abb02              # double 6.4115190000000002
	.quad	0x40207d119ce075f7              # double 8.244275
	.quad	0x3fa7dd22856605ee              # double 0.046608999999999998
	.quad	0x4010466dbd72bcb6              # double 4.068778
	.quad	0x400804052d666a98              # double 3.0019629999999999
	.quad	0x400fb660e51d25ab              # double 3.9640520000000001
	.quad	0x4021564ece9a2c67              # double 8.6685700000000008
	.quad	0x3ffa868db8bac711              # double 1.65785
	.quad	0x40212aca79357604              # double 8.5835760000000007
	.quad	0x40150016052502ef              # double 5.2500840000000002
	.quad	0x3fceaa21a719b4dd              # double 0.239567
	.quad	0x3ffd6cc70867ad8e              # double 1.8390569999999999
	.quad	0x3fe2f13cee9dd7ed              # double 0.59194800000000003
	.quad	0x3ffb427fa1a0cf18              # double 1.703735
	.quad	0x40203671044f1a1a              # double 8.1063310000000008
	.quad	0x40039e132b55ef20              # double 2.4521850000000001
	.quad	0x400efdac68a936c6              # double 3.8738640000000002
	.quad	0x400549528f190d17              # double 2.6608019999999999
	.quad	0x40123e5eaab04253              # double 4.5609080000000004
	.quad	0x400f9a22706d5065              # double 3.9502609999999998
	.quad	0x4020ef6124074645              # double 8.4675379999999993
	.quad	0x401babacb4289119              # double 6.9176510000000002
	.quad	0x4011cdb0dd82fd76              # double 4.4508700000000001
	.quad	0x401b6122749f0e4e              # double 6.8448580000000003
	.quad	0x401ad4a01abd1aa8              # double 6.7076419999999999
	.quad	0x3ff9bd4e09784ec6              # double 1.608717
	.quad	0x401132b734b51373              # double 4.2995270000000003
	.quad	0x4020008ace24bba1              # double 8.0010589999999997
	.quad	0x4020e824d4cb9ecf              # double 8.4534059999999993
	.quad	0x40143cd466f5019f              # double 5.0594039999999998
	.quad	0x3ff9163022dd7a9a              # double 1.567917
	.quad	0x400c543632c1f42c              # double 3.5411190000000001
	.quad	0x400d4eb463497b74              # double 3.66343
	.quad	0x4022801908e581cf              # double 9.2501909999999992
	.quad	0x401f1c0724b76f6d              # double 7.7773709999999995
	.quad	0x4022d581cf7878b8              # double 9.4170060000000006
	.quad	0x3ff347304039abf3              # double 1.20488
	.quad	0x400ff0a6fc58ab93              # double 3.9925060000000001
	.quad	0x401212ce4649906d              # double 4.5183650000000002
	.quad	0x4019fb994e1a3f46              # double 6.4957019999999996
	.quad	0x40212308bb906467              # double 8.5684260000000005
	.quad	0x401eaf4d7add15f0              # double 7.6711939999999998
	.quad	0x3fe8f4d1633482bf              # double 0.77988500000000005
	.quad	0x4017beeae9ee45c3              # double 5.9364429999999997
	.quad	0x400027b677f6b1a3              # double 2.0193910000000002
	.quad	0x4010b2c01e68a0d3              # double 4.1745609999999997
	.quad	0x400d286cebbba55d              # double 3.644739
	.quad	0x400776dc1a47a9e3              # double 2.9330370000000001
	.quad	0x3fd94f1a1986b9c3              # double 0.395453
	.quad	0x40193a6937d1fe65              # double 6.307042
	.quad	0x40156db76b3bb83d              # double 5.357145
	.quad	0x401cb5dc4007570c              # double 7.1775979999999997
	.quad	0x40215effc115df65              # double 8.6855449999999994
	.quad	0x401c483a53b8e4b8              # double 7.0705349999999996
	.quad	0x402225d7ecbb7f9d              # double 9.0739129999999992
	.quad	0x3fe1116872b020c5              # double 0.53337500000000004
	.quad	0x401025bb384fd2a6              # double 4.0368469999999999
	.quad	0x3ffca6c4c5974e66              # double 1.7907150000000001
	.quad	0x401965069a4df480              # double 6.3486580000000004
	.quad	0x40119748e4755ffe              # double 4.3977389999999996
	.quad	0x401949cb252ce033              # double 6.3220640000000001
	.quad	0x4011f01f75104d55              # double 4.4844949999999999
	.quad	0x3fe018c9fb6134ce              # double 0.50302599999999997
	.quad	0x401b1cab3edd8b61              # double 6.777997
	.quad	0x401d2ff609dcf894              # double 7.296837
	.quad	0x3ffe1594f26aec07              # double 1.880269
	.quad	0x3ff38a88effe2a3d              # double 1.221322
	.quad	0x3ff0ebebe1650a46              # double 1.057598
	.quad	0x40136b2a6b0d9514              # double 4.854654
	.quad	0x4016d3b688bda943              # double 5.7067509999999997
	.quad	0x40160a808c8259e2              # double 5.510256
	.quad	0x40225f7c88e79aae              # double 9.1864969999999992
	.quad	0x3fbfce746cb966be              # double 0.12424399999999999
	.quad	0x40187e98dcdb37ca              # double 6.1236300000000004
	.quad	0x40150266772d5e07              # double 5.2523439999999999
	.quad	0x4021d89374bc6a7f              # double 8.923
	.quad	0x401ff460ed80a17b              # double 7.9886509999999999
	.quad	0x401651719f7f8ca8              # double 5.5795349999999999
	.quad	0x402069be09bb6aa5              # double 8.2065280000000005
	.quad	0x40229a2e1ac57e24              # double 9.301133
	.quad	0x40166a21a719b4dd              # double 5.6036440000000001
	.quad	0x4016a0caa326e115              # double 5.6570229999999997
	.quad	0x400644ddb5525cc4              # double 2.7836259999999999
	.quad	0x401b6401c4fc1df3              # double 6.8476629999999998
	.quad	0x402236dd69d30271              # double 9.1071580000000001
	.quad	0x3ffbc713f077ccc0              # double 1.736103
	.quad	0x4018b9274e22a2c2              # double 6.1808139999999998
	.quad	0x401f3eea63b688be              # double 7.8114410000000003
	.quad	0x4019897a24894c44              # double 6.3842549999999996
	.quad	0x401afba237cdcca7              # double 6.745736
	.quad	0x40210d2a411c2a02              # double 8.5257129999999997
	.quad	0x3fe35fa871a3b14b              # double 0.60542700000000005
	.quad	0x3fd80d3cff64cf8d              # double 0.37580799999999998
	.quad	0x402039d9b1b79d91              # double 8.1129890000000007
	.quad	0x3ffc0a5ce5b4245f              # double 1.7525299999999999
	.quad	0x4018f0b8cfbfc654              # double 6.23508
	.quad	0x402223584b1ab085              # double 9.0690329999999992
	.quad	0x40234123c42a66dc              # double 9.6272260000000002
	.quad	0x3fe36da87a072d1b              # double 0.60713600000000001
	.quad	0x3fec2478854cdb7b              # double 0.87945200000000001
	.quad	0x40204742352eb5f6              # double 8.1391770000000001
	.quad	0x3f873647baa9b49a              # double 0.011334
	.quad	0x4006760e0eb67c28              # double 2.8076439999999998
	.quad	0x40053d51b4fe79ee              # double 2.654941
	.quad	0x401bf0c0f01fb82c              # double 6.9851109999999998
	.quad	0x3ff2802f2f987400              # double 1.1562950000000001
	.quad	0x4019187e38eb0319              # double 6.2739190000000002
	.quad	0x40006b8066c2acb8              # double 2.0524909999999998
	.quad	0x40103d62bf11f927              # double 4.0599470000000002
	.quad	0x401cda500d5e8d54              # double 7.2131959999999999
	.quad	0x4003ebe1eb4202da              # double 2.4901770000000001
	.quad	0x3f965a9a8049667b              # double 0.021829999999999999
	.quad	0x4022ae4fb97bb731              # double 9.3404520000000009
	.quad	0x3f94751ce28ed5f1              # double 0.019977999999999999
	.quad	0x3fdd27807789a459              # double 0.455536
	.quad	0x40221bccd0fe8ab5              # double 9.054297
	.quad	0x400bf44f5d35653d              # double 3.4942920000000002
	.quad	0x4021e8e3ac0c62e5              # double 8.9548620000000003
	.quad	0x401312acb85a4f01              # double 4.7682370000000001
	.quad	0x4022b6d3f9e7b80b              # double 9.3570860000000006
	.quad	0x3ffabf865d7cb2d9              # double 1.671759
	.quad	0x40023a1ec4e7253e              # double 2.2783790000000002
	.quad	0x4005710dbf0563ed              # double 2.680202
	.quad	0x401e58787485e3da              # double 7.5863969999999998
	.quad	0x401455cd0bb6ed67              # double 5.0837899999999996
	.quad	0x3fd928d002e23290              # double 0.39311600000000002
	.quad	0x401ad47e06961c37              # double 6.7075120000000004
	.quad	0x401e7a11a975afb0              # double 7.6192080000000004
	.quad	0x400f9752977c88e8              # double 3.9488880000000002
	.quad	0x4006e9f16b11c6d2              # double 2.8642300000000001
	.quad	0x401648db8bac710d              # double 5.5711500000000003
	.quad	0x4022d086594af4f1              # double 9.4072750000000002
	.quad	0x4021adab3aabcd79              # double 8.8391970000000004
	.quad	0x3fe7b35b0bbf50e3              # double 0.74064399999999997
	.quad	0x401aca821f2990f3              # double 6.697762
	.quad	0x40235e72324c8366              # double 9.6844649999999994
	.quad	0x3ff9614057082492              # double 1.5862430000000001
	.quad	0x4021ee527a20578e              # double 8.9654729999999994
	.quad	0x402386ec5b078d93              # double 9.763522
	.quad	0x401d23dff3f0fe04              # double 7.2850339999999996
	.quad	0x4012f0c23fab10ba              # double 4.7351159999999997
	.quad	0x3fd538fffbce4218              # double 0.33160400000000001
	.quad	0x402227d5885d3133              # double 9.0778009999999991
	.quad	0x401c2c56d5cfaace              # double 7.0433000000000003
	.quad	0x401eefaebc408d8f              # double 7.7340650000000001
	.quad	0x4012fc0bdcad14a1              # double 4.7461390000000003
	.quad	0x3ff1e854477ff152              # double 1.119221
	.quad	0x4022a9fcb0c026cc              # double 9.3320059999999998
	.quad	0x40164f1cb89d6adf              # double 5.5772579999999996
	.quad	0x3fe27fb267c6b8b7              # double 0.57808800000000005
	.quad	0x4023b9a3b14a9047              # double 9.8625769999999999
	.quad	0x4011c8f8e7ddca4b              # double 4.4462619999999999
	.quad	0x3fec1f8e3ac0c62e              # double 0.87885199999999997
	.quad	0x3fd70bc382a12f90              # double 0.360093
	.quad	0x401914ebdd334c5e              # double 6.2704310000000003
	.quad	0x40193e974a3400b9              # double 6.3111240000000004
	.quad	0x400206cd29131ec1              # double 2.2533210000000001
	.quad	0x4023a447e49b1fac              # double 9.8208610000000007
	.quad	0x3fe58deb0fadf2ed              # double 0.67357400000000001
	.quad	0x4015623d4f15e7c9              # double 5.3459370000000002
	.quad	0x40182cd0fe8ab4fa              # double 6.0437659999999997
	.quad	0x3ff857a89331a08c              # double 1.521401
	.quad	0x3fd80c4588a04d12              # double 0.375749
	.quad	0x4023185ea24cc682              # double 9.5475969999999997
	.quad	0x4001a2db61bb05fb              # double 2.20452
	.quad	0x3ff643526527a205              # double 1.3914359999999999
	.quad	0x400c8aeea63b688c              # double 3.5678380000000001
	.quad	0x4020ab8759253544              # double 8.3350170000000005
	.quad	0x4018d2730c671690              # double 6.2055170000000004
	.quad	0x3ff0d5a07b352a84              # double 1.052155
	.quad	0x401b5ccea28fe261              # double 6.8406320000000003
	.quad	0x402341fab96f21f7              # double 9.6288660000000003
	.quad	0x4017e27f5e84f095              # double 5.9711889999999999
	.quad	0x40092f6cefed6345              # double 3.1481569999999999
	.quad	0x3fcf306a2b1704ff              # double 0.24366499999999999
	.quad	0x4015d8893b7d8490              # double 5.4614609999999999
	.quad	0x401910c2c5e2cdc0              # double 6.2663679999999999
	.quad	0x3ff746df82b1f688              # double 1.4548030000000001
	.quad	0x3fb38348f53c579f              # double 0.076221999999999998
	.quad	0x3fec1ac14c660a20              # double 0.87826599999999999
	.quad	0x4004a84f09528f19              # double 2.582182
	.quad	0x401ab941c8216c61              # double 6.6809149999999997
	.quad	0x3ff2cb5dcc63f141              # double 1.17465
	.quad	0x3fd9544fe36d2242              # double 0.39577099999999998
	.quad	0x3fdd474538ef34d7              # double 0.45747500000000002
	.quad	0x400400642396073e              # double 2.5001910000000001
	.quad	0x3ff8f6d117b5286b              # double 1.5602579999999999
	.quad	0x3feec9bc77143394              # double 0.96212600000000003
	.quad	0x400195fcc1871e6d              # double 2.1982360000000001
	.quad	0x3fec887ca643cc08              # double 0.89166100000000004
	.quad	0x3fdbe0e30446b69e              # double 0.43560100000000002
	.quad	0x4018fbd87b56b873              # double 6.2459429999999996
	.quad	0x3faf7af640639d5e              # double 0.061484999999999998
	.quad	0x4015955f78359bc3              # double 5.3958719999999998
	.quad	0x4018c78359bc33f8              # double 6.1948369999999997
	.quad	0x402150a009f62307              # double 8.6574709999999993
	.quad	0x401ae2c01e68a0d3              # double 6.7214359999999997
	.quad	0x3ff9bcab81f969e4              # double 1.608562
	.quad	0x3ff1375536933a04              # double 1.076009
	.quad	0x4022c89784ec636b              # double 9.3917809999999999
	.quad	0x401bc793dd97f62b              # double 6.9448999999999996
	.quad	0x401616f156191149              # double 5.522405
	.quad	0x40212886162f166e              # double 8.579148
	.quad	0x4021fad3e920c06a              # double 8.9898980000000002
	.quad	0x401e3e7e1fc08fa8              # double 7.5610280000000003
	.quad	0x40239247ecfe9b7c              # double 9.785705
	.quad	0x401b623bbc6eb0b8              # double 6.8459310000000002
	.quad	0x401ea332f01754b0              # double 7.6593739999999997
	.quad	0x4017018a009f6230              # double 5.7515029999999996
	.quad	0x40040d288ce703b0              # double 2.5064250000000001
	.quad	0x4020db1d92b7fe09              # double 8.4279600000000006
	.quad	0x4010643b2dd377e2              # double 4.0978820000000002
	.quad	0x4022e635a426bb56              # double 9.4496280000000006
	.quad	0x4020c07e175d13d7              # double 8.3759619999999995
	.quad	0x400f381d7dbf4880              # double 3.9024000000000001
	.quad	0x40225618efbb0e5e              # double 9.1681589999999993
	.quad	0x401914445aa2e3c5              # double 6.2697919999999998
	.quad	0x3fd3b1a2a4db163c              # double 0.30771700000000002
	.quad	0x3fc92fba01eeed89              # double 0.196769
	.quad	0x3fe3357e670e2c13              # double 0.60028000000000004
	.quad	0x4016fc32a8c9b845              # double 5.7462869999999997
	.quad	0x400f3913e81450f0              # double 3.9028700000000001
	.quad	0x401b41bf37b8d3f2              # double 6.8142060000000004
	.quad	0x401e84f0d844d014              # double 7.6298250000000003
	.quad	0x40229134267839ce              # double 9.2836010000000009
	.quad	0x4012bce95faa8a83              # double 4.6844840000000003
	.quad	0x401e535935fc3b4f              # double 7.5813949999999996
	.quad	0x401f83482be8bc17              # double 7.8782050000000003
	.quad	0x401f7d23d4f15e7d              # double 7.8722070000000003
	.quad	0x4016f6edaa92e621              # double 5.7411409999999998
	.quad	0x4018b11a543f1c76              # double 6.1729520000000004
	.quad	0x400116ededaec4a4              # double 2.136196
	.quad	0x401160bc7b45f17c              # double 4.3444690000000001
	.quad	0x4020a08c3f3e0371              # double 8.3135700000000003
	.quad	0x400667485e3da2f9              # double 2.8004310000000001
	.quad	0x3ff568f3a9b06812              # double 1.338123
	.quad	0x401a9364bec679cc              # double 6.6439389999999996
	.quad	0x400bce7253da72a8              # double 3.4758040000000001
	.quad	0x4017ca49c2c1b110              # double 5.9475470000000001
	.quad	0x3fc0e2f37fbefd00              # double 0.13192599999999999
	.quad	0x3fe9d1fe64f54d1f              # double 0.80688400000000005
	.quad	0x40183efc7a398202              # double 6.0615100000000002
	.quad	0x4018a9389b52007e              # double 6.1652550000000002
	.quad	0x40039a543f1c7582              # double 2.4503560000000002
	.quad	0x3ffad410f94c8798              # double 1.676774
	.quad	0x400dc847b24638c9              # double 3.7227929999999998
	.quad	0x401667eb28d8665e              # double 5.601483
	.quad	0x4023739799e518f4              # double 9.7257660000000001
	.quad	0x40140a044ae85b9f              # double 5.0097820000000004
	.quad	0x4000d449129888f8              # double 2.1036549999999998
	.quad	0x401a3dd4845132f8              # double 6.5603809999999996
	.quad	0x3fdc947496aad1d0              # double 0.44656099999999999
	.quad	0x401d6a0dbad3a605              # double 7.3535680000000001
	.quad	0x3ffca1db877ab325              # double 1.7895160000000001
	.quad	0x4004cabcd78c4370              # double 2.5989930000000001
	.quad	0x40219147064ece9a              # double 8.7837449999999997
	.quad	0x401672806af46aa1              # double 5.6118180000000004
	.quad	0x401896c3fc43b2dd              # double 6.1472319999999998
	.quad	0x4011de40852b4d8c              # double 4.4670430000000003
	.quad	0x40209917f84449dc              # double 8.2990110000000001
	.quad	0x40194bfe7e1fc090              # double 6.3242130000000003
	.quad	0x4009d43e10060781              # double 3.228634
	.quad	0x4002b804d9839475              # double 2.3398530000000002
	.quad	0x4009d5e310dbf056              # double 3.2294369999999999
	.quad	0x4015e8c5436b8f9b              # double 5.4773149999999999
	.quad	0x40203788b9778573              # double 8.1084650000000007
	.quad	0x3feb74f722e1ac58              # double 0.85802800000000001
	.quad	0x4014cfcc5b8dc550              # double 5.202928
	.quad	0x400130563ed0f627              # double 2.1486019999999999
	.quad	0x3fee1ca3a4b5568f              # double 0.94099600000000005
	.quad	0x401a9d3e4ef0281c              # double 6.6535580000000003
	.quad	0x40205a5ca29845dd              # double 8.1764880000000009
	.quad	0x4012c4b380cb6c7a              # double 4.6920909999999996
	.quad	0x401d5d30270f3882              # double 7.3410039999999999
	.quad	0x401506a619da9c99              # double 5.2564929999999999
	.quad	0x3ffe07b45f17bd8c              # double 1.876881
	.quad	0x401e9202d9cf13cf              # double 7.642589
	.quad	0x4014553eb399f5e0              # double 5.0832470000000001
	.quad	0x4016680346dc5d64              # double 5.6015750000000004
	.quad	0x4006df69014b599b              # double 2.8590870000000002
	.quad	0x40133110e453d20f              # double 4.7979159999999998
	.quad	0x4021e949c6f36ef8              # double 8.955641
	.quad	0x3ff46231832fcac9              # double 1.273973
	.quad	0x40208bc7f77af640              # double 8.2730099999999993
	.quad	0x40194ca7d6733ebc              # double 6.324859
	.quad	0x4015d15bdd76683c              # double 5.4544519999999999
	.quad	0x40087fa6defc7a3a              # double 3.0623300000000002
	.quad	0x400f960d887ebf23              # double 3.9482680000000001
	.quad	0x400538c5c9a34ca1              # double 2.6527210000000001
	.quad	0x402196e34fc610f1              # double 8.7947030000000002
	.quad	0x3ff0e8ed5f138bce              # double 1.056867
	.quad	0x3fd433d6c7219221              # double 0.315664
	.quad	0x3fcb517a46173b86              # double 0.213424
	.quad	0x402362647fdc5932              # double 9.6921730000000004
	.quad	0x401991c5c5718eb9              # double 6.3923560000000004
	.quad	0x3fef9f31f46ed246              # double 0.98818300000000003
	.quad	0x40232420d5629d84              # double 9.5705629999999999
	.quad	0x40233137f38c5437              # double 9.5961300000000004
	.quad	0x3fd5f5ba2be0589b              # double 0.34312300000000001
	.quad	0x3fc942aa9f7b5aea              # double 0.19734699999999999
	.quad	0x40236c925785f8d3              # double 9.7120540000000001
	.quad	0x3fe7fb30f8c64fdb              # double 0.749413
	.quad	0x4010929845dc8323              # double 4.1431589999999998
	.quad	0x401c328b6d86ec18              # double 7.0493600000000001
	.quad	0x40235f6cacd184c2              # double 9.6863759999999992
	.quad	0x3ff3b21b3aeee957              # double 1.2309829999999999
	.quad	0x3fdf38b8ae31d713              # double 0.48783700000000002
	.quad	0x400193aabcd78c43              # double 2.1971029999999998
	.quad	0x4004e813cab81f97              # double 2.6133190000000002
	.quad	0x4014cbea91d9b1b8              # double 5.1991370000000003
	.quad	0x4016c75d9a0f0a5f              # double 5.694693
	.quad	0x40217df2a9d627bf              # double 8.7459919999999993
	.quad	0x40206dc7abfb9bed              # double 8.2144139999999997
	.quad	0x401a82018a43bb41              # double 6.6269590000000003
	.quad	0x4017b3bc0a06e9ff              # double 5.925522
	.quad	0x3ff2e7d45a5fc7e7              # double 1.1815990000000001
	.quad	0x400805af6c69b5a6              # double 3.0027759999999999
	.quad	0x40204c54bcf0b6b7              # double 8.1490840000000002
	.quad	0x401928533b107747              # double 6.2893800000000004
	.quad	0x40212489b0ee49f5              # double 8.5713629999999998
	.quad	0x400474fb549f9485              # double 2.5571199999999998
	.quad	0x3fe01d9d3458cd21              # double 0.50361500000000003
	.quad	0x400f33ea2d2fe3f3              # double 3.9003489999999998
	.quad	0x4015b8216c61522a              # double 5.4298149999999996
	.quad	0x402069c7368ad688              # double 8.2065979999999996
	.quad	0x4019aec743201041              # double 6.4206820000000002
	.quad	0x4020aae8c0485a0c              # double 8.3338070000000001
	.quad	0x400d4c9fb6134ce4              # double 3.6624140000000001
	.quad	0x3fe318611fd5885d              # double 0.59672599999999998
	.quad	0x400f08ccdd93c46e              # double 3.8792970000000002
	.quad	0x401725e8d5410f95              # double 5.7870210000000002
	.quad	0x3fb4d44567125dd1              # double 0.081364000000000006
	.quad	0x4023f751ac9afe1e              # double 9.9830450000000006
	.quad	0x3fd02ead9274e22a              # double 0.25284899999999999
	.quad	0x3fc5b677f6b1a2a5              # double 0.169631
	.quad	0x40193532e7b3d8e0              # double 6.301952
	.quad	0x4005cc39ffd60e95              # double 2.72472
	.quad	0x400c3fb04ee7c4a0              # double 3.5310980000000001
	.quad	0x402004011d3671ac              # double 8.0078209999999998
	.quad	0x3fc4202d9cf13cef              # double 0.15723200000000001
	.quad	0x400017f0ed3d859d              # double 2.0116900000000002
	.quad	0x3fd4cdaf4adbc665              # double 0.32505400000000001
	.quad	0x3fe53445ed4a1ad6              # double 0.66263099999999997
	.quad	0x3fe7bef49cf56ead              # double 0.74206000000000005
	.quad	0x4004a833c60029f1              # double 2.5821299999999998
	.quad	0x3ffae19eb6390c91              # double 1.680083
	.quad	0x3ff4f39192641b33              # double 1.3094650000000001
	.quad	0x4014b11ada76d97b              # double 5.1729539999999998
	.quad	0x401ef03a322af577              # double 7.7345969999999999
	.quad	0x400228fb86f47b67              # double 2.2700109999999998
	.quad	0x40161a0dbad3a605              # double 5.5254430000000001
	.quad	0x3fa0ed3d859c8c93              # double 0.033059999999999999
	.quad	0x400b531337eb28d8              # double 3.4155639999999998
	.quad	0x400246b484d76ab6              # double 2.2845240000000002
	.quad	0x3fd406dd69d30271              # double 0.312919
	.quad	0x40131644d87724fb              # double 4.7717470000000004
	.quad	0x4020f2bef06b3786              # double 8.4741129999999991
	.quad	0x40189ba6aca79357              # double 6.1520029999999997
	.quad	0x40210ab9f559b3d0              # double 8.5209499999999991
	.quad	0x401026cfc829cfdd              # double 4.0379019999999999
	.quad	0x401bb8eda22f6a51              # double 6.9305940000000001
	.quad	0x40217958d9b5e95b              # double 8.7370059999999992
	.quad	0x4022534aec8d5c74              # double 9.1626809999999991
	.quad	0x4018da3db3bfb58d              # double 6.2131259999999999
	.quad	0x4012326634117f84              # double 4.5492179999999998
	.quad	0x4020759ddc1e7968              # double 8.2297200000000004
	.quad	0x3ff0f077ccc03793              # double 1.058708
	.quad	0x40150b4d48882f0e              # double 5.261037
	.quad	0x4001632ebe596c83              # double 2.1734290000000001
	.quad	0x4023ceb313be22e6              # double 9.9037100000000002
	.quad	0x402212de43ed959a              # double 9.0368519999999997
	.quad	0x3ff040f451761459              # double 1.0158579999999999
	.quad	0x4015e8eef1bac2df              # double 5.477474
	.quad	0x402226a400fba882              # double 9.0754699999999993
	.quad	0x4023960e94ee392e              # double 9.7930799999999998
	.quad	0x400870fcf80dc337              # double 3.0551699999999999
	.quad	0x4020d6366d7a56de              # double 8.4183839999999996
	.quad	0x4015aac81d3aa36a              # double 5.416779
	.quad	0x401d7bf487fcb924              # double 7.3710500000000003
	.quad	0x40223d9a30984e40              # double 9.120317
	.quad	0x401144c09c3ce209              # double 4.3171410000000003
	.quad	0x40188d8cb07d0aee              # double 6.1382320000000004
	.quad	0x40074e22a2c23748              # double 2.9131520000000002
	.quad	0x402213b213e3e293              # double 9.0384679999999999
	.quad	0x4021937d84901d19              # double 8.7880669999999999
	.quad	0x3fd355219a847b24              # double 0.30207099999999998
	.quad	0x402248665e02ea96              # double 9.1414059999999999
	.quad	0x400d2d0e56041893              # double 3.6469999999999998
	.quad	0x40206bf37b8d3f18              # double 8.2108419999999995
	.quad	0x401e57bdcf0307f2              # double 7.5856849999999998
	.quad	0x400a9442c7fbacb4              # double 3.3223929999999999
	.quad	0x40101c18f81e8a2f              # double 4.0274390000000002
	.quad	0x40137971c10d7bea              # double 4.8685980000000004
	.quad	0x3fe5aa62aa19439e              # double 0.67704900000000001
	.quad	0x4012f0cfe154434e              # double 4.7351679999999998
	.quad	0x4022b9cc319c5a3e              # double 9.3628859999999996
	.quad	0x4006685db76b3bb8              # double 2.8009599999999999
	.quad	0x3ffc72a497fa5d29              # double 1.777989
	.quad	0x3fd38461f9f01b86              # double 0.30495499999999998
	.quad	0x401874766c6de764              # double 6.1137329999999999
	.quad	0x40207c58ab92c062              # double 8.2428640000000009
	.quad	0x40203d00f776c482              # double 8.1191479999999991
	.quad	0x4004a5b078d92fb2              # double 2.5809030000000002
	.quad	0x40039c3efae7924b              # double 2.451292
	.quad	0x3ff2d0f0e90bc7b4              # double 1.1760109999999999
	.quad	0x401c928997c3d684              # double 7.143103
	.quad	0x40199d79d0a67621              # double 6.4037850000000001
	.quad	0x4007b4bf0995aaf8              # double 2.9632550000000002
	.quad	0x3fdc8eabffcdab19              # double 0.44620799999999999
	.quad	0x4023c3854046412d              # double 9.8818760000000001
	.quad	0x4022ab6f19934efd              # double 9.3348320000000005
	.quad	0x401c5d7e02645e4e              # double 7.0913009999999996
	.quad	0x40194864020817fc              # double 6.3206939999999996
	.quad	0x3ffcd45c78a6dacb              # double 1.8018460000000001
	.quad	0x4022662c98e53eb4              # double 9.1995590000000007
	.quad	0x3ffb7a1f4b1ee243              # double 1.7173149999999999
	.quad	0x3fc9b9e060fe4799              # double 0.200985
	.quad	0x401a0cf5b1c86488              # double 6.5126559999999998
	.quad	0x402126a3161a1db8              # double 8.5754629999999992
	.quad	0x4007160e0eb67c28              # double 2.8857689999999998
	.quad	0x401809dfdac68a93              # double 6.0096429999999996
	.quad	0x401f0741d084e832              # double 7.7570870000000003
	.quad	0x40113fa69be09bb7              # double 4.3121590000000003
	.quad	0x40058a9478c868ba              # double 2.692666
	.quad	0x40203a55d1c3ac93              # double 8.1139360000000007
	.quad	0x400bb0fe047d3d43              # double 3.4614220000000002
	.quad	0x401ff4b1ee243569              # double 7.9889599999999996
	.quad	0x400e35d67ba237ce              # double 3.7762880000000001
	.quad	0x40073947496aad1d              # double 2.902968
	.quad	0x4010d91e646f1562              # double 4.2120300000000004
	.quad	0x400cdc853c148345              # double 3.6076760000000001
	.quad	0x4021323cc8de2ac3              # double 8.5981199999999998
	.quad	0x4016fac36544fe37              # double 5.7448860000000002
	.quad	0x4022794f0520d131              # double 9.2369310000000002
	.quad	0x401fc114d2f5dbba              # double 7.9385560000000002
	.quad	0x401dbccb3a2595bc              # double 7.4343690000000002
	.quad	0x4023a96f4384ba0f              # double 9.8309270000000008
	.quad	0x4017cd145d851655              # double 5.9502730000000001
	.quad	0x401bf4f6598e10cf              # double 6.9892209999999997
	.quad	0x400c9a2cecc814d7              # double 3.5752809999999999
	.quad	0x402230ad03d9a954              # double 9.0950699999999997
	.quad	0x401f3280ae104923              # double 7.7993189999999996
	.quad	0x40216f251c193b3a              # double 8.7170799999999993
	.quad	0x3ff859c38b04ab60              # double 1.5219149999999999
	.quad	0x401a12c5e2cdc012              # double 6.5183330000000002
	.quad	0x400dd3721d53cddd              # double 3.7282449999999998
	.quad	0x3fc6733ebbfd71b0              # double 0.17539199999999999
	.quad	0x40179b41bfbdf091              # double 5.901618
	.quad	0x4013ba0b1bbcf4e8              # double 4.9316829999999996
	.quad	0x3fe49d3cbc48f10b              # double 0.64419400000000004
	.quad	0x400aa5cf67b1c001              # double 3.330962
	.quad	0x3ff5e542e557de0d              # double 1.3684719999999999
	.quad	0x4013111947cfa26a              # double 4.7666979999999999
	.quad	0x3ffa46ee30caa327              # double 1.642317
	.quad	0x400d277ccc037931              # double 3.6442809999999999
	.quad	0x4004f18eb8950764              # double 2.6179480000000002
	.quad	0x4003575d13d74d59              # double 2.4176579999999999
	.quad	0x4020153ac4f7ec35              # double 8.0414639999999995
	.quad	0x3ffbaa77a2cecc81              # double 1.7291179999999999
	.quad	0x400850e90bc7b45f              # double 3.039507
	.quad	0x400c78644523f67f              # double 3.5587849999999999
	.quad	0x4011a1a2a4db163c              # double 4.4078470000000003
	.quad	0x4000c4199fe43676              # double 2.0957520000000001
	.quad	0x4010b8bb4d48882f              # double 4.180402
	.quad	0x400b5e4712e40853              # double 3.4210340000000001
	.quad	0x4011feddce7cd035              # double 4.4988929999999998
	.quad	0x400bae1932d6ece1              # double 3.4600089999999999
	.quad	0x4010f0ac7da1ec4e              # double 4.2350329999999996
	.quad	0x4022546a5d6bebe1              # double 9.1648739999999993
	.quad	0x4023b2ab47410731              # double 9.8489629999999994
	.quad	0x401c64e09784ec63              # double 7.0985129999999996
	.quad	0x3fbee9ee45c358b0              # double 0.120757
	.quad	0x3ffe57939a7c17a9              # double 1.8963810000000001
	.quad	0x3ff1af640639d5e5              # double 1.1053200000000001
	.quad	0x4015e3c579f23465              # double 5.4724329999999997
	.quad	0x400bcc2bd7f51efb              # double 3.4746929999999998
	.quad	0x4000cdeca25529fe              # double 2.100549
	.quad	0x401960dcfcc5b8dc              # double 6.3445929999999997
	.quad	0x40053628cbd1244a              # double 2.6514449999999998
	.quad	0x3ff471f255f3519c              # double 1.277819
	.quad	0x3fd215f45e0b4e12              # double 0.28259000000000001
	.quad	0x3f9f42bb6672fba0              # double 0.030528
	.quad	0x401004a6a875d56f              # double 4.0045419999999998
	.quad	0x401a7b3354c12275              # double 6.6203130000000003
	.quad	0x4020dad0a2446306              # double 8.4273729999999993
	.quad	0x4017c855da272863              # double 5.94564
	.quad	0x3ffb520f2becedd5              # double 1.7075340000000001
	.quad	0x400d919dece57109              # double 3.6961020000000002
	.quad	0x3ff5926634117f84              # double 1.3482419999999999
	.quad	0x40190976bc1effa0              # double 6.2592420000000004
	.quad	0x3ff723dd54da4ce8              # double 1.446256
	.quad	0x400bee4649906cca              # double 3.4913449999999999
	.quad	0x40185a161e4f7660              # double 6.0879750000000001
	.quad	0x40168f6cacd184c2              # double 5.6400629999999996
	.quad	0x400dc6772d5e071c              # double 3.7219069999999999
	.quad	0x40217f69ca9ef523              # double 8.7488539999999997
	.quad	0x401721c970f7b9e0              # double 5.7829949999999997
	.quad	0x3fe54cf8d716d2aa              # double 0.66564599999999996
	.quad	0x4017ed5d3dc8b86b              # double 5.9818009999999999
	.quad	0x401ca10dbf0563ed              # double 7.1572789999999999
	.quad	0x4012388f42fe8251              # double 4.5552339999999996
	.quad	0x40044892ab68cef6              # double 2.5354359999999998
	.quad	0x402170d3cff64cf9              # double 8.7203660000000003
	.quad	0x401fc2e72da122fb              # double 7.9403350000000001
	.quad	0x402019e0828c36db              # double 8.0505410000000008
	.quad	0x4013fd017dae8188              # double 4.9970759999999999
	.quad	0x400ac1f9f01b866e              # double 3.3447149999999999
	.quad	0x4018ed1fa333764f              # double 6.2315659999999999
	.quad	0x402266b91b3f20a7              # double 9.2006309999999996
	.quad	0x3ffbf2a0663c74fb              # double 1.7467349999999999
	.quad	0x4005dce39b456b44              # double 2.732856
	.quad	0x401aad70a3d70a3d              # double 6.6693749999999996
	.quad	0x401f241d084e831b              # double 7.7852670000000001
	.quad	0x401a3fcc1871e6cd              # double 6.5623019999999999
	.quad	0x401a363f141205bc              # double 6.552975
	.quad	0x40218762b6ae7d56              # double 8.7644249999999992
	.quad	0x40185af6837f7be1              # double 6.0888309999999999
	.quad	0x4014f17df19d66ae              # double 5.2358320000000003
	.quad	0x401ebf23465625a7              # double 7.6866580000000004
	.quad	0x40154d5842b734b5              # double 5.3255319999999999
	.quad	0x4010f39d5e4a3832              # double 4.2379049999999996
	.quad	0x40129c436fc158fb              # double 4.6526009999999998
	.quad	0x40239210385c67e0              # double 9.7852800000000002
	.quad	0x3fe464a16a487336              # double 0.63728399999999996
	.quad	0x4015b6bf8769ec2d              # double 5.4284650000000001
	.quad	0x3feba6aa8eb46349              # double 0.86409499999999995
	.quad	0x401c0f9d6f112fd3              # double 7.0152489999999998
	.quad	0x4000f9767903211d              # double 2.1218080000000001
	.quad	0x401bf79bfdf7e804              # double 6.9918060000000004
	.quad	0x401399a847b24639              # double 4.9000560000000002
	.quad	0x402358950763a190              # double 9.6730119999999999
	.quad	0x4016f08a697aeddd              # double 5.7349030000000001
	.quad	0x4022092cadddf43c              # double 9.0179189999999991
	.quad	0x40194c63f141205c              # double 6.3246000000000002
	.quad	0x4003e9f83be6601c              # double 2.4892430000000001
	.quad	0x4017447bedb72820              # double 5.8168790000000001
	.quad	0x3ff95fc6da448494              # double 1.5858829999999999
	.quad	0x3fc8e9a2c669057d              # double 0.19463
	.quad	0x40237d76cce5f740              # double 9.7450469999999995
	.quad	0x401b3594af4f0d84              # double 6.8023249999999997
	.quad	0x40217531337eb28e              # double 8.7288910000000008
	.quad	0x402010c9fb6134ce              # double 8.0327909999999996
	.quad	0x40171d7a99fa11a9              # double 5.7787879999999996
	.quad	0x4011b34549b62c77              # double 4.4250689999999997
	.quad	0x400581c36976bc1f              # double 2.688361
	.quad	0x40217f59ccfaeff6              # double 8.7487320000000004
	.quad	0x400ca6fcdee34fc6              # double 3.581537
	.quad	0x401a795464dc22ab              # double 6.6184859999999999
	.quad	0x400b6f5126634118              # double 3.429354
	.quad	0x4004edea033e78e2              # double 2.6161690000000002
	.quad	0x3ff350870110a138              # double 1.20716
	.quad	0x40085fe21d96e9bc              # double 3.046818
	.quad	0x400490fbeb9e492c              # double 2.5707930000000001
	.quad	0x4000290a350d2807              # double 2.0200390000000001
	.quad	0x3fe16ee525892685              # double 0.54478700000000002
	.quad	0x4007c9670196d8f5              # double 2.973341
	.quad	0x401976bd6e8af816              # double 6.3659569999999999
	.quad	0x40160e10cf5b1c86              # double 5.5137359999999997
	.quad	0x3fdb4202d9cf13cf              # double 0.425904
	.quad	0x401f41611ba3ca75              # double 7.8138469999999999
	.quad	0x40027a294141e9af              # double 2.3096489999999998
	.quad	0x402110096feb4a66              # double 8.5313219999999994
	.quad	0x3ff28848387df5cf              # double 1.158272
	.quad	0x402384c4ac6cdaf5              # double 9.7593130000000005
	.quad	0x40227789a459103d              # double 9.2334720000000008
	.quad	0x40182c8c5004fb12              # double 6.0435040000000004
	.quad	0x3ff4d88f42fe8251              # double 1.3028709999999999
	.quad	0x3ff346cb966be7b0              # double 1.2047840000000001
	.quad	0x40166f8f041461b7              # double 5.6089440000000002
	.quad	0x401149270b06c43f              # double 4.3214379999999997
	.quad	0x4020af9f44d44567              # double 8.3430119999999999
	.quad	0x3ff09ca18bd66278              # double 1.0382400000000001
	.quad	0x4007fc42a66dbd73              # double 2.9981740000000001
	.quad	0x40104655e28aa433              # double 4.0686869999999997
	.quad	0x400e766b6177ea1c              # double 3.8078219999999998
	.quad	0x3ff8eb95e5aff2a1              # double 1.5575159999999999
	.quad	0x3ff2bdda8bd230ba              # double 1.171351
	.quad	0x3ff962e4d1a65061              # double 1.5866439999999999
	.quad	0x401c562f9ca5bd94              # double 7.0841659999999997
	.quad	0x3ff341a79fec99f2              # double 1.2035290000000001
	.quad	0x3fd6eae18ac9f2fe              # double 0.35808600000000002
	.quad	0x40061f79420b3d4b              # double 2.765368
	.quad	0x40074f1348b22079              # double 2.913611
	.quad	0x3fde471f79420b3d              # double 0.47309099999999998
	.quad	0x402088ef34d6a162              # double 8.2674500000000002
	.quad	0x3ff015992428d435              # double 1.0052730000000001
	.quad	0x401cde46cfc829d0              # double 7.2170670000000001
	.quad	0x4022712c27a63737              # double 9.2210400000000003
	.quad	0x4015c615ebfa8f7e              # double 5.4434430000000003
	.quad	0x40010dc768dfbd6a              # double 2.1317279999999998
	.quad	0x401e14434e3369ba              # double 7.5197880000000001
	.quad	0x400a41bd1ed9dfdb              # double 3.2820990000000001
	.quad	0x401491d81f106680              # double 5.1424260000000004
	.quad	0x402272b5807fed20              # double 9.2240409999999997
	.quad	0x401171a1db877ab3              # double 4.3609689999999999
	.quad	0x3ff15de58e64b231              # double 1.0854239999999999
	.quad	0x401646837f7be122              # double 5.5688610000000001
	.quad	0x40073e679463cfb3              # double 2.9054709999999999
	.quad	0x401b7c8605681ecd              # double 6.8716049999999997
	.quad	0x4005607fed20296b              # double 2.6721189999999999
	.quad	0x4013873929ed3954              # double 4.8820540000000001
	.quad	0x4021deb67c286f8b              # double 8.9349860000000003
	.quad	0x401397229e90795f              # double 4.8975929999999996
	.quad	0x4013f7b890d5a5b9              # double 4.9919149999999997
	.quad	0x4010be1cde5d1809              # double 4.185657
	.quad	0x3fff3fdf7e8038a0              # double 1.9530940000000001
	.quad	0x400732085b18548b              # double 2.8994300000000002
	.quad	0x4012cf21f6cacd18              # double 4.7022779999999997
	.quad	0x400bf2e275ab7dc8              # double 3.4935960000000001
	.quad	0x401664bcad9ad85e              # double 5.598376
	.quad	0x401a643dccea28fe              # double 6.5978919999999999
	.quad	0x3fe48882f0e0a84c              # double 0.64166400000000001
	.quad	0x4005053f39d1b2e6              # double 2.6275620000000002
	.quad	0x401378e1d6494d51              # double 4.8680490000000001
	.quad	0x3fe3b8e6d15ad107              # double 0.61632100000000001
	.quad	0x402064660a201472              # double 8.1960909999999991
	.quad	0x401c4f0dc768dfbd              # double 7.0772009999999996
	.quad	0x3ff84b4070329803              # double 1.5183720000000001
	.quad	0x4021ddb9e8c47a18              # double 8.9330590000000001
	.quad	0x4022cb85a4f00ef1              # double 9.3975039999999996
	.quad	0x40200e7ba237cdcd              # double 8.0282870000000006
	.quad	0x400be1908e581cf8              # double 3.4851390000000002
	.quad	0x40022877681669cf              # double 2.2697590000000001
	.quad	0x401246687f455a7d              # double 4.5687579999999999
	.quad	0x401573b46fdeb52d              # double 5.3629930000000003
	.quad	0x40078ef1bac2df0d              # double 2.9447969999999999
	.quad	0x40214ba301216830              # double 8.6477280000000007
	.quad	0x3ff06ac215b9a5a9              # double 1.0260640000000001
	.quad	0x4005148d3ae685db              # double 2.6350349999999998
	.quad	0x40132d8f92af9a8d              # double 4.7944930000000001
	.quad	0x3fd78ac5c13fd0d0              # double 0.36784499999999998
	.quad	0x3ff08e9c4545846f              # double 1.0348170000000001
	.quad	0x3fffe66fd651b0cd              # double 1.9937590000000001
	.quad	0x4010cee6b8305d96              # double 4.2020520000000001
	.quad	0x4000715b573eab36              # double 2.0553499999999998
	.quad	0x3fd3de7a743a6480              # double 0.31045400000000001
	.quad	0x40085a3ec02f2f98              # double 3.0440649999999998
	.quad	0x402233f7ced91687              # double 9.1014999999999997
	.quad	0x4022945e0b4e11dc              # double 9.2897800000000003
	.quad	0x4011bde657b84dba              # double 4.4354490000000002
	.quad	0x40121934267839ce              # double 4.5246130000000004
	.quad	0x4006edde7a743a64              # double 2.8661469999999998
	.quad	0x40208b704790b84a              # double 8.2723410000000008
	.quad	0x401f67d6f9767903              # double 7.8514059999999998
	.quad	0x40106f9ebe9c8861              # double 4.1090039999999997
	.quad	0x3ffcef9ca5bd944b              # double 1.8084990000000001
	.quad	0x400bed5c74751ce3              # double 3.4908990000000002
	.quad	0x401e4e924f227d03              # double 7.5767300000000004
	.quad	0x400bad4c33b53932              # double 3.4596179999999999
	.quad	0x4005309c7ffde721              # double 2.648736
	.quad	0x400be20b3d4ae42a              # double 3.4853730000000001
	.quad	0x4021256dc1a47a9e              # double 8.5731029999999997
	.quad	0x40139f5d78811b1e              # double 4.9056300000000004
	.quad	0x4022171d81f10668              # double 9.045147
	.size	.L__constant_2500xf64, 20000

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
