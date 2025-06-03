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
	.quad	0x414121ffe2b15f89              # double 2245631.771038
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
	.quad	39                              # 0x27
	.quad	78                              # 0x4e
	.quad	119                             # 0x77
	.quad	163                             # 0xa3
	.quad	200                             # 0xc8
	.quad	255                             # 0xff
	.quad	298                             # 0x12a
	.quad	346                             # 0x15a
	.quad	393                             # 0x189
	.quad	436                             # 0x1b4
	.quad	480                             # 0x1e0
	.quad	529                             # 0x211
	.quad	585                             # 0x249
	.quad	625                             # 0x271
	.quad	672                             # 0x2a0
	.quad	712                             # 0x2c8
	.quad	760                             # 0x2f8
	.quad	800                             # 0x320
	.quad	835                             # 0x343
	.quad	883                             # 0x373
	.quad	925                             # 0x39d
	.quad	961                             # 0x3c1
	.quad	1007                            # 0x3ef
	.quad	1052                            # 0x41c
	.quad	1093                            # 0x445
	.quad	1140                            # 0x474
	.quad	1189                            # 0x4a5
	.quad	1234                            # 0x4d2
	.quad	1278                            # 0x4fe
	.quad	1326                            # 0x52e
	.quad	1371                            # 0x55b
	.quad	1420                            # 0x58c
	.quad	1470                            # 0x5be
	.quad	1518                            # 0x5ee
	.quad	1563                            # 0x61b
	.quad	1602                            # 0x642
	.quad	1640                            # 0x668
	.quad	1697                            # 0x6a1
	.quad	1741                            # 0x6cd
	.quad	1782                            # 0x6f6
	.quad	1822                            # 0x71e
	.quad	1875                            # 0x753
	.quad	1915                            # 0x77b
	.quad	1955                            # 0x7a3
	.quad	2007                            # 0x7d7
	.quad	2044                            # 0x7fc
	.quad	2096                            # 0x830
	.quad	2135                            # 0x857
	.quad	2174                            # 0x87e
	.quad	2226                            # 0x8b2
	.quad	2276                            # 0x8e4
	.quad	2316                            # 0x90c
	.quad	2367                            # 0x93f
	.quad	2406                            # 0x966
	.quad	2448                            # 0x990
	.quad	2494                            # 0x9be
	.quad	2540                            # 0x9ec
	.quad	2577                            # 0xa11
	.quad	2626                            # 0xa42
	.quad	2670                            # 0xa6e
	.quad	2721                            # 0xaa1
	.quad	2762                            # 0xaca
	.quad	2802                            # 0xaf2
	.quad	2861                            # 0xb2d
	.quad	2902                            # 0xb56
	.quad	2947                            # 0xb83
	.quad	2985                            # 0xba9
	.quad	3025                            # 0xbd1
	.quad	3076                            # 0xc04
	.quad	3117                            # 0xc2d
	.quad	3157                            # 0xc55
	.quad	3204                            # 0xc84
	.quad	3260                            # 0xcbc
	.quad	3312                            # 0xcf0
	.quad	3357                            # 0xd1d
	.quad	3405                            # 0xd4d
	.quad	3455                            # 0xd7f
	.quad	3507                            # 0xdb3
	.quad	3556                            # 0xde4
	.quad	3604                            # 0xe14
	.quad	3652                            # 0xe44
	.quad	3688                            # 0xe68
	.quad	3733                            # 0xe95
	.quad	3767                            # 0xeb7
	.quad	3806                            # 0xede
	.quad	3851                            # 0xf0b
	.quad	3889                            # 0xf31
	.quad	3940                            # 0xf64
	.quad	3992                            # 0xf98
	.quad	4041                            # 0xfc9
	.quad	4090                            # 0xffa
	.quad	4138                            # 0x102a
	.quad	4183                            # 0x1057
	.quad	4236                            # 0x108c
	.quad	4282                            # 0x10ba
	.quad	4325                            # 0x10e5
	.quad	4371                            # 0x1113
	.quad	4416                            # 0x1140
	.quad	4459                            # 0x116b
	.quad	4499                            # 0x1193
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4499xindex,@object # @__constant_4499xindex
	.p2align	6, 0x0
.L__constant_4499xindex:
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
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
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
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
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
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
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	34                              # 0x22
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
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	11                              # 0xb
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
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
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
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
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
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
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
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
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
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
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.size	.L__constant_4499xindex, 35992

	.type	.L__constant_4499xf64,@object   # @__constant_4499xf64
	.p2align	6, 0x0
.L__constant_4499xf64:
	.quad	0x4014f08919ef954f              # double 5.2348980000000003
	.quad	0x401fccd466f5019f              # double 7.9500289999999997
	.quad	0x402042235b4edb2f              # double 8.1291759999999993
	.quad	0x4014389a02752546              # double 5.055275
	.quad	0x3ffb1ecf63800219              # double 1.695022
	.quad	0x401d938151a43782              # double 7.3940479999999997
	.quad	0x4019477ee4e26d48              # double 6.31982
	.quad	0x4022d2d77318fc50              # double 9.4117999999999995
	.quad	0x3febbda2f8bdec5f              # double 0.86689899999999998
	.quad	0x4005017a89331a09              # double 2.6257220000000001
	.quad	0x4023f1e9f2778141              # double 9.9724880000000002
	.quad	0x40195e22a2c23748              # double 6.3419290000000004
	.quad	0x401dac0ebedfa440              # double 7.4180250000000001
	.quad	0x3fd88387df5cf249              # double 0.38302799999999998
	.quad	0x401e0863beec397a              # double 7.5081930000000003
	.quad	0x4020586db50f40e6              # double 8.1727120000000006
	.quad	0x400912839042d8c3              # double 3.1340400000000002
	.quad	0x4003076e1deacc92              # double 2.378628
	.quad	0x40182b9c304ccee6              # double 6.0425880000000003
	.quad	0x400c7644955b4678              # double 3.5577480000000001
	.quad	0x400de2f6a50d6b23              # double 3.7358220000000002
	.quad	0x401fcb530ced4e4d              # double 7.9485590000000003
	.quad	0x3fe7a8f3a9b06812              # double 0.73937399999999998
	.quad	0x40204b29a1b9f98b              # double 8.1468019999999992
	.quad	0x3ff3cb3b320535ca              # double 1.237117
	.quad	0x4014377fae3608d1              # double 5.0541980000000004
	.quad	0x400a20c6b484d76b              # double 3.2660040000000001
	.quad	0x40108be5109070fc              # double 4.1366160000000001
	.quad	0x40004164840e171a              # double 2.03193
	.quad	0x4005079ee02a77a3              # double 2.6287210000000001
	.quad	0x401654cd31769a91              # double 5.5828139999999999
	.quad	0x3fdfc6d612c6ac21              # double 0.49651099999999998
	.quad	0x401174f69ca9ef52              # double 4.3642219999999998
	.quad	0x4023bd8f4f93bc0a              # double 9.870234
	.quad	0x400f69c12f09d8c7              # double 3.9266380000000001
	.quad	0x4011431ceaf251c2              # double 4.3155400000000004
	.quad	0x3fd54b124d099e0e              # double 0.33270699999999997
	.quad	0x401da743e963dc48              # double 7.4133449999999996
	.quad	0x402347d8cf398e97              # double 9.6403259999999999
	.quad	0x40211cc2938de6de              # double 8.5561720000000001
	.quad	0x401cd209edbf8b9c              # double 7.2051160000000003
	.quad	0x40171b46fdeb52ca              # double 5.7766380000000002
	.quad	0x402327f08893b7d8              # double 9.5780069999999994
	.quad	0x4020f0b242070b8d              # double 8.47011
	.quad	0x40143b09a671ef31              # double 5.0576540000000003
	.quad	0x4017b1ee675147f1              # double 5.9237609999999998
	.quad	0x4016c1001d5c3159              # double 5.6884769999999998
	.quad	0x40128c96030c23fb              # double 4.6372910000000003
	.quad	0x400a49531550ca1d              # double 3.285803
	.quad	0x400afd6bebe1650a              # double 3.3737409999999999
	.quad	0x4021a4768dfbd6a6              # double 8.8212170000000008
	.quad	0x4022c8b84988094e              # double 9.3920309999999994
	.quad	0x4011a2784a9478c8              # double 4.4086619999999996
	.quad	0x3fe1b3d4ae429e0a              # double 0.55320199999999997
	.quad	0x400dcb9a9da597d5              # double 3.7244160000000002
	.quad	0x401a8249e44fa051              # double 6.6272349999999998
	.quad	0x3fdc378ab0c88a48              # double 0.44089
	.quad	0x3fea21fd1569f490              # double 0.81664899999999996
	.quad	0x402083d48cb4aec9              # double 8.2574810000000003
	.quad	0x3fdf57603925bb7b              # double 0.48970799999999998
	.quad	0x401212b27cbf6e3f              # double 4.5182589999999996
	.quad	0x40126ea9a3d2d880              # double 4.6080690000000004
	.quad	0x3ff516d8f4f93bc1              # double 1.3180780000000001
	.quad	0x3fe9b75ea67e846a              # double 0.80363399999999996
	.quad	0x3ffeb9cf9a06a6e3              # double 1.920364
	.quad	0x4022d5d52c16df40              # double 9.4176420000000007
	.quad	0x400b926e115592da              # double 3.4464990000000002
	.quad	0x400096c7a7c9de05              # double 2.073623
	.quad	0x400e76deb95e5aff              # double 3.8080419999999999
	.quad	0x4002c18bd66277c4              # double 2.3445049999999998
	.quad	0x3fe4d76683c297c0              # double 0.65129400000000004
	.quad	0x401959ccb7d41744              # double 6.3376950000000001
	.quad	0x3ff0ea92e62131a9              # double 1.057269
	.quad	0x3fe6bc7b45f17bd9              # double 0.71050800000000003
	.quad	0x4015aa86940357a3              # double 5.4165289999999997
	.quad	0x4018465a57646ae4              # double 6.0687040000000003
	.quad	0x401089fb6134ce3e              # double 4.1347480000000001
	.quad	0x4019fbddb9841aac              # double 6.4959629999999997
	.quad	0x3f93b5393250b524              # double 0.019245999999999999
	.quad	0x401b3a34ca0c282c              # double 6.8068419999999996
	.quad	0x40032dc55000c954              # double 2.3973490000000002
	.quad	0x401753ccd0fe8ab5              # double 5.831836
	.quad	0x400003b03e20ccff              # double 2.0018009999999999
	.quad	0x401e9da4ce8101f3              # double 7.6539489999999998
	.quad	0x401bb30fcf80dc33              # double 6.9248649999999996
	.quad	0x40008c43f5f91601              # double 2.068489
	.quad	0x4022fcd4aa10e022              # double 9.4938099999999999
	.quad	0x400cdf31f46ed246              # double 3.6089820000000001
	.quad	0x40238a9930be0ded              # double 9.7706999999999997
	.quad	0x4007cfb762d83c6d              # double 2.9764240000000002
	.quad	0x40057f22c01e68a1              # double 2.6870780000000001
	.quad	0x401b577292c49342              # double 6.8353979999999996
	.quad	0x401508d3ae685db7              # double 5.2586199999999996
	.quad	0x40098e568a50507a              # double 3.1945009999999998
	.quad	0x4015fc0e38a7e73a              # double 5.4961479999999998
	.quad	0x400d0192a737110e              # double 3.6257679999999999
	.quad	0x4016f14ca925fe97              # double 5.7356439999999997
	.quad	0x401f10b8cfbfc654              # double 7.76633
	.quad	0x401203bcd35a8588              # double 4.5036500000000004
	.quad	0x40135e0eb67c2870              # double 4.8418530000000004
	.quad	0x4002beb6bf444e0e              # double 2.3431220000000001
	.quad	0x4019404189374bc7              # double 6.3127500000000003
	.quad	0x40128c12ad81adeb              # double 4.6367900000000004
	.quad	0x4015fbdba0a52696              # double 5.4959550000000004
	.quad	0x400533d188f42fe8              # double 2.6503019999999999
	.quad	0x4022aa24edf61240              # double 9.3323129999999991
	.quad	0x401e1305100a393f              # double 7.518574
	.quad	0x40172becedd48451              # double 5.7928959999999998
	.quad	0x401c4e2478854cdb              # double 7.0763109999999996
	.quad	0x40231743c7d5ed07              # double 9.545439
	.quad	0x3ff1fadd15f02c4d              # double 1.1237459999999999
	.quad	0x4020f461d8622c45              # double 8.477309
	.quad	0x3fe7a3e9ea140571              # double 0.73875900000000005
	.quad	0x400107fc32ebe597              # double 2.1288990000000001
	.quad	0x4004b65dbfceb789              # double 2.5890460000000002
	.quad	0x400a2dc011d3671b              # double 3.2723390000000001
	.quad	0x3ff68b05b7cfe586              # double 1.408941
	.quad	0x400389f7b5aea316              # double 2.442367
	.quad	0x402046cb31c219eb              # double 8.1382689999999993
	.quad	0x4020f054690de093              # double 8.4693939999999994
	.quad	0x40035c1b54195cc8              # double 2.4199739999999998
	.quad	0x3ff4a8b9fdbd2fa1              # double 1.291193
	.quad	0x400e914e3bcd35a8              # double 3.8209499999999998
	.quad	0x4011ca077036c9c1              # double 4.4472940000000003
	.quad	0x4022192f09d8c6d6              # double 9.0491869999999999
	.quad	0x3fd3afb3b7521145              # double 0.30759900000000001
	.quad	0x3ff99532617c1bda              # double 1.5989249999999999
	.quad	0x40086b14ec204f2b              # double 3.0522860000000001
	.quad	0x3fe3403361565c2d              # double 0.60158699999999998
	.quad	0x4006154866a11ec9              # double 2.760392
	.quad	0x400d4814d72799a2              # double 3.660196
	.quad	0x40226086594af4f1              # double 9.1885250000000003
	.quad	0x40029630a91537a0              # double 2.3233350000000002
	.quad	0x401141055b899392              # double 4.3134969999999999
	.quad	0x3fc57cdcca70d1fa              # double 0.16787299999999999
	.quad	0x401a3dec5f394b7b              # double 6.5604719999999999
	.quad	0x3ff51b1e9f277814              # double 1.319121
	.quad	0x4014c6ff7dfa00e2              # double 5.1943339999999996
	.quad	0x400274c447c30d30              # double 2.3070149999999998
	.quad	0x4023930df9bdc6a0              # double 9.7872160000000008
	.quad	0x3ff19c9b41398634              # double 1.1007340000000001
	.quad	0x401edbe9424e5929              # double 7.7147569999999996
	.quad	0x4004645e4e69f05f              # double 2.5490080000000002
	.quad	0x3ff6e90cd423d923              # double 1.431897
	.quad	0x400535a4acf312b2              # double 2.6511930000000001
	.quad	0x401130c77dd872f3              # double 4.2976359999999998
	.quad	0x400cd5b70691ea79              # double 3.6043530000000001
	.quad	0x401467414a4d2b2c              # double 5.100835
	.quad	0x400ca8787485e3da              # double 3.5822609999999999
	.quad	0x401c4c73abc94706              # double 7.0746599999999997
	.quad	0x4016c2b239a38fbd              # double 5.6901330000000003
	.quad	0x40184fb6134ce3de              # double 6.0778429999999997
	.quad	0x40000a337a80cf9e              # double 2.0049809999999999
	.quad	0x3fefee30caa326e1              # double 0.99782599999999999
	.quad	0x402162a3486f049b              # double 8.6926520000000007
	.quad	0x3fed429e0a41a262              # double 0.91438200000000003
	.quad	0x4013daafbc1acde2              # double 4.9635610000000003
	.quad	0x3fff15097c80841f              # double 1.942636
	.quad	0x3fac007570c564f9              # double 0.054690999999999997
	.quad	0x4022728c36da87a0              # double 9.2237259999999992
	.quad	0x4021b08a04d12019              # double 8.8448030000000006
	.quad	0x400690fa58f7121b              # double 2.8207900000000001
	.quad	0x3ff5ce93e1c9b414              # double 1.3629340000000001
	.quad	0x401c79146e4c0df6              # double 7.1182420000000004
	.quad	0x40106347a5b0ff11              # double 4.0969530000000001
	.quad	0x40215b065f9591cd              # double 8.6777829999999998
	.quad	0x400b14c985f06f69              # double 3.3851499999999999
	.quad	0x4023a03b60285ec4              # double 9.8129530000000002
	.quad	0x40161bdf4c2b51bd              # double 5.5272189999999997
	.quad	0x3fe3fefbf401c4fc              # double 0.62487599999999999
	.quad	0x3ffc0539fba450ad              # double 1.7512760000000001
	.quad	0x4011780a17b0f6ad              # double 4.3672259999999996
	.quad	0x401c5b0dd82fd75e              # double 7.0889199999999999
	.quad	0x4016a999567dbb17              # double 5.6656240000000002
	.quad	0x4013a33226c3b928              # double 4.9093710000000002
	.quad	0x401f393708aac96d              # double 7.8058740000000002
	.quad	0x4019c49c6f36ef80              # double 6.4420029999999997
	.quad	0x401171d4b6a619db              # double 4.3611630000000003
	.quad	0x40041809917939a8              # double 2.5117370000000001
	.quad	0x40234d9dba908a26              # double 9.6515939999999993
	.quad	0x4016ab738e6d15ad              # double 5.6674329999999999
	.quad	0x401dd1a3b14a9047              # double 7.454726
	.quad	0x4014d10adcd2d44e              # double 5.2041430000000002
	.quad	0x400b402d16b97fe9              # double 3.406336
	.quad	0x402101344806290f              # double 8.5023520000000001
	.quad	0x40175a56de33269e              # double 5.838222
	.quad	0x4020b04ddb5525cc              # double 8.3443439999999995
	.quad	0x40106542a23bff8b              # double 4.0988870000000004
	.quad	0x401f424f227d028a              # double 7.8147549999999999
	.quad	0x3fd2814940bbb1f2              # double 0.28914099999999998
	.quad	0x4021201c4fc1df33              # double 8.562716
	.quad	0x401162c7b890d5a6              # double 4.3464650000000002
	.quad	0x400455011904b3c4              # double 2.541506
	.quad	0x4000d7a02fb5d031              # double 2.105286
	.quad	0x401cf7689ca18bd6              # double 7.2416099999999997
	.quad	0x4010d52c59fb1e19              # double 4.2081770000000001
	.quad	0x4004d4330d73860a              # double 2.6036130000000002
	.quad	0x40165bd48cb4aec9              # double 5.5896780000000001
	.quad	0x3ffe3f609dcf8940              # double 1.8904730000000001
	.quad	0x4012a5ca29845dc8              # double 4.6619039999999998
	.quad	0x3ffb194e1a3f4667              # double 1.693678
	.quad	0x3fea591eeaa6d267              # double 0.82337899999999997
	.quad	0x400eeda98676a726              # double 3.8660459999999999
	.quad	0x3ffb7fc86cebbba5              # double 1.7186969999999999
	.quad	0x4004022706d50657              # double 2.5010509999999999
	.quad	0x40206e7dbb16c1e3              # double 8.2158029999999993
	.quad	0x401d49a88ace24bc              # double 7.3219320000000003
	.quad	0x400c3ee136e71cda              # double 3.5307029999999999
	.quad	0x40150a5ce5b4245f              # double 5.2601199999999997
	.quad	0x4023902a12f90108              # double 9.7815709999999995
	.quad	0x40163ae74f2f123c              # double 5.5575229999999998
	.quad	0x4022dba2163fdd66              # double 9.4289710000000007
	.quad	0x40235e9270b06c44              # double 9.684711
	.quad	0x401b90eb24a6a876              # double 6.8915220000000001
	.quad	0x402301b4dcebfec1              # double 9.5033329999999995
	.quad	0x40231c304ccee5ac              # double 9.5550560000000004
	.quad	0x40013aa821f2990f              # double 2.1536409999999999
	.quad	0x400998da3c21187e              # double 3.1996349999999998
	.quad	0x3fe3cc46950fc71d              # double 0.61868599999999996
	.quad	0x4023a31c864883fd              # double 9.8185769999999994
	.quad	0x40208ef177a7008a              # double 8.2791859999999993
	.quad	0x401386909aed56b0              # double 4.8814109999999999
	.quad	0x4005bf39d1b2e59b              # double 2.718372
	.quad	0x40074ef5ec80c73b              # double 2.9135550000000001
	.quad	0x402369205bc01a37              # double 9.7053250000000002
	.quad	0x4021065cb35f3d7d              # double 8.5124259999999996
	.quad	0x3ff30e703afb7e91              # double 1.191025
	.quad	0x400c6a4db163baba              # double 3.5519059999999998
	.quad	0x40213230984e3fff              # double 8.5980270000000001
	.quad	0x4001b455a7d24181              # double 2.2130540000000001
	.quad	0x4001c08a697aeddd              # double 2.219014
	.quad	0x3fecc562e09fe868              # double 0.89909499999999998
	.quad	0x40223f99c38b04ab              # double 9.1242199999999993
	.quad	0x400f2dd15f02c4d6              # double 3.8973719999999998
	.quad	0x401dd62f9ca5bd94              # double 7.4591659999999997
	.quad	0x4021f7f77af64064              # double 8.9843100000000006
	.quad	0x4023178b9baa1512              # double 9.5459870000000002
	.quad	0x400d73c60029f16b              # double 3.68153
	.quad	0x40164cbfb15b573f              # double 5.5749500000000003
	.quad	0x4018a5db3397dd01              # double 6.161969
	.quad	0x401950fbeb9e492c              # double 6.3290860000000002
	.quad	0x400fb3f8db489093              # double 3.9628770000000002
	.quad	0x40141dc5931ca7d6              # double 5.0290739999999996
	.quad	0x4016c9c1b54195cd              # double 5.6970280000000004
	.quad	0x40169a89fc6da448              # double 5.6509169999999997
	.quad	0x401b9b1feeb2d0a2              # double 6.9014889999999998
	.quad	0x3fe5ad3c792d1288              # double 0.67739700000000003
	.quad	0x4023b12b3cc4ac6d              # double 9.8460330000000002
	.quad	0x4017d86338b47c74              # double 5.9613160000000001
	.quad	0x401ae7e90ff97247              # double 6.7264749999999998
	.quad	0x4015b3eccc469510              # double 5.4257080000000002
	.quad	0x40209f6fd21ff2e5              # double 8.3114000000000008
	.quad	0x3fe08e92d55a3a08              # double 0.51740399999999998
	.quad	0x40210f3fb7a5f41b              # double 8.5297830000000001
	.quad	0x3fd4034b0e1b4bb6              # double 0.31270100000000001
	.quad	0x4019ac804102ff8f              # double 6.4184580000000002
	.quad	0x401f203e20ccff22              # double 7.7814870000000003
	.quad	0x401c54ef88b97785              # double 7.0829449999999996
	.quad	0x40154c88e79aae6d              # double 5.3247410000000004
	.quad	0x401e5a8da7f3cf70              # double 7.5884309999999999
	.quad	0x4022475fd47bedb7              # double 9.1394029999999997
	.quad	0x401c835c9e6687f4              # double 7.1282829999999997
	.quad	0x40212cfaacd9e83e              # double 8.5878499999999995
	.quad	0x3fff550ebaade658              # double 1.9582660000000001
	.quad	0x401f77481b21c476              # double 7.8664860000000001
	.quad	0x40114d898b2e9ccb              # double 4.3257199999999996
	.quad	0x402374c9a77e5eab              # double 9.7281010000000005
	.quad	0x3fda4f97edc7ef17              # double 0.41110799999999997
	.quad	0x402349049235f80a              # double 9.6426130000000008
	.quad	0x4010786594af4f0e              # double 4.1175750000000004
	.quad	0x3ff552263d816acf              # double 1.3325560000000001
	.quad	0x401c7d938151a438              # double 7.1226330000000004
	.quad	0x401599c23b7952d2              # double 5.4001549999999998
	.quad	0x400f01bda5119ce0              # double 3.8758499999999998
	.quad	0x4013a10adcd2d44e              # double 4.9072680000000002
	.quad	0x40175ee34fc610f1              # double 5.8426640000000001
	.quad	0x4022149f72f76e61              # double 9.040279
	.quad	0x401d28ae74f2f124              # double 7.2897280000000002
	.quad	0x3ffa0c0f01fb82c3              # double 1.6279440000000001
	.quad	0x3ffce3065f9591cd              # double 1.805426
	.quad	0x4012b93ab430f495              # double 4.6808880000000004
	.quad	0x3ff414f0520d130e              # double 1.255112
	.quad	0x40021a48b6523704              # double 2.2628339999999998
	.quad	0x3fe6b93ee5eedcc2              # double 0.71011299999999999
	.quad	0x40226d5f56a7ac82              # double 9.2136180000000003
	.quad	0x3fb36d22424a276b              # double 0.075883999999999993
	.quad	0x401f89f127f5e84f              # double 7.8847089999999999
	.quad	0x400329c886162f16              # double 2.3954019999999998
	.quad	0x4023afe5a78f25a2              # double 9.8435489999999994
	.quad	0x3ff43443d46b26c0              # double 1.2627600000000001
	.quad	0x4020528198f1d3ed              # double 8.1611449999999994
	.quad	0x40201d0203e63e8e              # double 8.0566560000000003
	.quad	0x4003b53825e13b19              # double 2.4634860000000001
	.quad	0x3ff85cf9a06a6e33              # double 1.522699
	.quad	0x4014c36c15d2d01c              # double 5.190842
	.quad	0x40207bd2fa0d77b8              # double 8.2418440000000004
	.quad	0x401dfef88b977857              # double 7.4989949999999998
	.quad	0x4019446f9b994e1a              # double 6.3168319999999998
	.quad	0x40086fbdad7518b1              # double 3.0545610000000001
	.quad	0x4007b1d798d8a97a              # double 2.9618370000000001
	.quad	0x4014079fec99f1ae              # double 5.0074459999999998
	.quad	0x401e2fda4052d667              # double 7.5467310000000003
	.quad	0x3ff5a90364388ebd              # double 1.353763
	.quad	0x40167961c36976bc              # double 5.6185369999999999
	.quad	0x401c10a06e9ff0cc              # double 7.0162370000000003
	.quad	0x400038a009f62307              # double 2.0276489999999998
	.quad	0x4018d5a5b9628cbd              # double 6.2086399999999999
	.quad	0x40151af74cd3176a              # double 5.2763340000000003
	.quad	0x401ca01a79fec99f              # double 7.1563509999999999
	.quad	0x4015f71ac14c660a              # double 5.4913129999999999
	.quad	0x401612bf11f926c8              # double 5.5183070000000001
	.quad	0x3ffd024d4cb9ecf6              # double 1.813062
	.quad	0x401a04199fe43676              # double 6.5040040000000001
	.quad	0x400177b7c7820a31              # double 2.1834560000000001
	.quad	0x40170288ce703afb              # double 5.7524749999999996
	.quad	0x3ff5d5e28aa43351              # double 1.3647180000000001
	.quad	0x3fe5aebc408d8ec9              # double 0.67757999999999996
	.quad	0x4008e5614df8b157              # double 3.1120019999999999
	.quad	0x400f1f67f4dbdf8f              # double 3.8903349999999999
	.quad	0x4014455a7d24180d              # double 5.0677279999999998
	.quad	0x40154cbf6e3f78bc              # double 5.3249490000000002
	.quad	0x4013b90ea9e6eeb7              # double 4.93072
	.quad	0x400424e9c4545847              # double 2.518024
	.quad	0x4023755cfaacd9e8              # double 9.7292249999999995
	.quad	0x4013dbcfd4bf0996              # double 4.9646600000000003
	.quad	0x4016a579f2346562              # double 5.6615979999999997
	.quad	0x402352cd5b6805a3              # double 9.6617230000000002
	.quad	0x4023a2d4b2745bf2              # double 9.8180289999999992
	.quad	0x3fc1991361dc93ea              # double 0.137484
	.quad	0x400334a01abd1aa8              # double 2.4006959999999999
	.quad	0x400881aef6f8f041              # double 3.0633219999999999
	.quad	0x40174348b220791c              # double 5.8157069999999997
	.quad	0x3ff60b9a9da597d5              # double 1.3778330000000001
	.quad	0x401db51eb851eb85              # double 7.4268749999999999
	.quad	0x3ffabe2a3cea6c1a              # double 1.671427
	.quad	0x401af43a2163fdd6              # double 6.7385029999999997
	.quad	0x40114a80cf9e3865              # double 4.3227570000000002
	.quad	0x4022eb89d6adf71f              # double 9.4600360000000005
	.quad	0x401084f2f123c42a              # double 4.1298329999999996
	.quad	0x4022a831f03d145e              # double 9.3285060000000009
	.quad	0x4022af84cad57bc8              # double 9.34281
	.quad	0x4022c01669ced0b3              # double 9.3751709999999999
	.quad	0x4023d68db8bac711              # double 9.9190500000000003
	.quad	0x401e491c8eabffce              # double 7.5713980000000003
	.quad	0x402354a5df2239e7              # double 9.6653280000000005
	.quad	0x4004bd67ba237cdd              # double 2.5924830000000001
	.quad	0x400e787e7c06e19c              # double 3.8088350000000002
	.quad	0x402130e8c8abd5dc              # double 8.5955259999999995
	.quad	0x3fd2fd2e94680171              # double 0.29670299999999999
	.quad	0x4022193d74d594f2              # double 9.0492969999999993
	.quad	0x4016a3ac4f7ec354              # double 5.6598369999999996
	.quad	0x401926a550870111              # double 6.2877400000000003
	.quad	0x4002e43675ddd2af              # double 2.3614320000000002
	.quad	0x4010f41fa7653437              # double 4.2384019999999998
	.quad	0x401efc9539b88872              # double 7.7466629999999999
	.quad	0x400409da597d49d8              # double 2.5048110000000001
	.quad	0x401c1169c23b7953              # double 7.0170050000000002
	.quad	0x4022b253111f0c35              # double 9.3482900000000004
	.quad	0x401e4f94c87980f5              # double 7.5777159999999996
	.quad	0x4019b203a322af57              # double 6.4238419999999996
	.quad	0x3ff2c3ce2089e343              # double 1.172804
	.quad	0x3ff0e7b3d8e00086              # double 1.056568
	.quad	0x401c115097c80842              # double 7.0169090000000001
	.quad	0x400ba98915bdd767              # double 3.4577810000000002
	.quad	0x40084643cc07aaef              # double 3.0343089999999999
	.quad	0x400bb07746887a8d              # double 3.4611649999999998
	.quad	0x3ffd369a91105e1c              # double 1.825831
	.quad	0x3ff72809d495182b              # double 1.4472750000000001
	.quad	0x4021f69fadafd114              # double 8.9816870000000008
	.quad	0x3febc460ed80a17b              # double 0.86772199999999999
	.quad	0x400468b5cbff4773              # double 2.5511279999999998
	.quad	0x3ff71b35b0bbf50e              # double 1.444143
	.quad	0x400206be7afa7222              # double 2.2532930000000002
	.quad	0x4016e044f1a1986c              # double 5.7190130000000003
	.quad	0x4001865492ff4ba5              # double 2.190591
	.quad	0x4021d294573a7979              # double 8.9112880000000008
	.quad	0x4020c514a0a0f4d8              # double 8.3849230000000006
	.quad	0x40152df7a4e7ab75              # double 5.2948899999999997
	.quad	0x3ff72e74f2f123c4              # double 1.448842
	.quad	0x401a9e68a0d349bf              # double 6.6546960000000004
	.quad	0x4022152d44dca8e3              # double 9.0413610000000002
	.quad	0x401ae2253111f0c3              # double 6.7208449999999997
	.quad	0x3fee9a3d2d87f887              # double 0.95632799999999996
	.quad	0x400a45b8dc55000d              # double 3.2840440000000002
	.quad	0x40011e6a337a80d0              # double 2.1398510000000002
	.quad	0x4023f04ee7c49fd8              # double 9.9693520000000006
	.quad	0x4022d0a5efe93187              # double 9.4075159999999993
	.quad	0x40068ec84f8f8a4c              # double 2.8197179999999999
	.quad	0x402292fcce1c5825              # double 9.2870849999999994
	.quad	0x3ffccfb43d89ce4a              # double 1.8007089999999999
	.quad	0x40192d71f36262cc              # double 6.2943800000000003
	.quad	0x4007d419e30014f9              # double 2.9785650000000001
	.quad	0x4017cf969e3c9689              # double 5.9527229999999998
	.quad	0x40225a6b50b0f27c              # double 9.1766000000000005
	.quad	0x400826f3f52fc265              # double 3.0190199999999998
	.quad	0x3fc7cc532a497fa6              # double 0.185923
	.quad	0x40236aacfb762d84              # double 9.7083510000000003
	.quad	0x400749b62c77574f              # double 2.9109919999999998
	.quad	0x4011fa9973d9ec70              # double 4.494726
	.quad	0x4005d6bb98c7e282              # double 2.7298499999999999
	.quad	0x4004ed2806af46aa              # double 2.615799
	.quad	0x401137e175d13d75              # double 4.3045710000000001
	.quad	0x3ff4531ec0b56755              # double 1.2702929999999999
	.quad	0x4018364bec679cc7              # double 6.0530239999999997
	.quad	0x3ffe5cb252ce032e              # double 1.8976310000000001
	.quad	0x4012ebc664d3bf2f              # double 4.7302489999999997
	.quad	0x40191e3d5fdcdf6a              # double 6.2795310000000004
	.quad	0x3ff5fd1aa821f299              # double 1.374293
	.quad	0x4019562b27cbf6e4              # double 6.334149
	.quad	0x40125003eea209ab              # double 4.5781400000000003
	.quad	0x4019959146e4c0df              # double 6.3960619999999997
	.quad	0x4013a77d523b3637              # double 4.913564
	.quad	0x4011c2b90a782907              # double 4.4401590000000004
	.quad	0x40204664f54d1e97              # double 8.1374890000000004
	.quad	0x400647f8012dfd69              # double 2.7851409999999999
	.quad	0x400b58ba40d90e24              # double 3.4183240000000001
	.quad	0x4019037b4a2339c1              # double 6.2534000000000001
	.quad	0x3ff2ea497fa5d28d              # double 1.182199
	.quad	0x400e897bfa4c61d8              # double 3.8171309999999998
	.quad	0x402265b163baba7c              # double 9.1986190000000007
	.quad	0x401b46e221c8a7a4              # double 6.8192219999999999
	.quad	0x3ff404bd33d29564              # double 1.2511570000000001
	.quad	0x4019574c4cdfaca3              # double 6.3352519999999997
	.quad	0x3ff080bcbe61cfff              # double 1.0314300000000001
	.quad	0x40239d4dc65c7043              # double 9.8072339999999993
	.quad	0x4009d89efd86a8fc              # double 3.230772
	.quad	0x400a916ebd4cfd09              # double 3.3210120000000001
	.quad	0x3ff2f9fdbd2fa0d7              # double 1.1860329999999999
	.quad	0x4010280a9de8b3b3              # double 4.0391029999999999
	.quad	0x3ffd96d3b6cbd988              # double 1.8493230000000001
	.quad	0x4020cf2cd7cf5f4e              # double 8.4046389999999995
	.quad	0x3fddd9274e22a2c2              # double 0.46637899999999999
	.quad	0x40207555e6bc621b              # double 8.2291709999999991
	.quad	0x3ffd1e7fb267c6b9              # double 1.8199460000000001
	.quad	0x3fe0e659d12cadde              # double 0.52811900000000001
	.quad	0x3fb4b31c219eb639              # double 0.080857999999999999
	.quad	0x4016dda059a73b43              # double 5.7164320000000002
	.quad	0x40129f5b5fa22707              # double 4.6556220000000001
	.quad	0x3ff055842b734b51              # double 1.020878
	.quad	0x4022084167a95c85              # double 9.0161239999999996
	.quad	0x400d834a01abd1ab              # double 3.6891060000000002
	.quad	0x40201900a393ee5f              # double 8.0488330000000001
	.quad	0x4022bab96f21f6cb              # double 9.3646960000000003
	.quad	0x3ff46a2c2374794f              # double 1.2759210000000001
	.quad	0x40207e9b17481b22              # double 8.2472770000000004
	.quad	0x400bd2170931012a              # double 3.4775830000000001
	.quad	0x4023577db6e503fb              # double 9.6708809999999996
	.quad	0x400f5b3a68b19a41              # double 3.9195449999999998
	.quad	0x400c59c17225b74a              # double 3.5438260000000001
	.quad	0x40226e06fac6045c              # double 9.2148970000000005
	.quad	0x4000aa0b1bbcf4e8              # double 2.0830289999999998
	.quad	0x40220fb84db9c737              # double 9.0307030000000008
	.quad	0x402221c3ce2089e3              # double 9.0659469999999995
	.quad	0x3ff178e3ac0c62e5              # double 1.092014
	.quad	0x4021ee045baf533f              # double 8.9648769999999995
	.quad	0x401a6532e7b3d8e0              # double 6.598827
	.quad	0x4019a6598e10cf5b              # double 6.4124509999999999
	.quad	0x40143c2ce4649907              # double 5.0587650000000002
	.quad	0x40113ff0cbaf965b              # double 4.3124419999999999
	.quad	0x4022f7ace67d77fb              # double 9.4837410000000001
	.quad	0x4022de6149c6f36f              # double 9.434336
	.quad	0x4018bb18dac258d6              # double 6.1827120000000004
	.quad	0x400d4a6ca03c4b0a              # double 3.66134
	.quad	0x401ab5f2cb641701              # double 6.6776840000000002
	.quad	0x3ffdc995aaf78fef              # double 1.861715
	.quad	0x4013aef6b5d462c3              # double 4.9208629999999998
	.quad	0x40210c0b9991361e              # double 8.5235260000000004
	.quad	0x3fca12b5e529bae4              # double 0.20369599999999999
	.quad	0x4014f9695d91ab8f              # double 5.2435660000000004
	.quad	0x400f488a47ecfe9b              # double 3.9104199999999998
	.quad	0x3fe222339c0ebee0              # double 0.56667500000000004
	.quad	0x3ff07c69728a6117              # double 1.0303739999999999
	.quad	0x401e825fa658c4bd              # double 7.6273179999999998
	.quad	0x401b97b24638c975              # double 6.8981409999999999
	.quad	0x400d81672324c836              # double 3.6881849999999998
	.quad	0x3ff5d4ff0025bfad              # double 1.364501
	.quad	0x401a671ef30a4e38              # double 6.6007040000000003
	.quad	0x4023ab9ffd60e94f              # double 9.8352050000000001
	.quad	0x40170c6c11a11234              # double 5.7621310000000001
	.quad	0x4021f343d89ce4a8              # double 8.9751270000000005
	.quad	0x4023f1ea14057082              # double 9.9724889999999995
	.quad	0x40117df6db940fed              # double 4.3730120000000001
	.quad	0x4019a43d89ce4a7b              # double 6.4103909999999997
	.quad	0x4011cfb97bb73083              # double 4.4528559999999997
	.quad	0x4012078c436fc159              # double 4.507371
	.quad	0x40229f9463cfb331              # double 9.3116789999999998
	.quad	0x4023abfad2999568              # double 9.8358980000000002
	.quad	0x40234c63065f9592              # double 9.6491930000000004
	.quad	0x40145bf61aa3f035              # double 5.0898060000000003
	.quad	0x3feb3fd50225742e              # double 0.85154200000000002
	.quad	0x4021bf2bcb5fe543              # double 8.8733810000000002
	.quad	0x4021daa7bd48cb4b              # double 8.9270610000000001
	.quad	0x4017f9c7ffde7211              # double 5.9939270000000002
	.quad	0x401e3b7bf1e8e608              # double 7.5580899999999999
	.quad	0x40206899392189be              # double 8.2042940000000009
	.quad	0x400a42f9ca5bd945              # double 3.2827030000000001
	.quad	0x4023b77f8ca8198f              # double 9.8583949999999997
	.quad	0x401b7f922962cfd9              # double 6.8745810000000001
	.quad	0x401371e42e126202              # double 4.8612219999999997
	.quad	0x3ffc2159817b95a3              # double 1.7581420000000001
	.quad	0x3feb0303c07ee0b1              # double 0.84411800000000003
	.quad	0x400d5709310129cc              # double 3.6674980000000001
	.quad	0x400f8195464dc22b              # double 3.9382730000000001
	.quad	0x401d3bbe0157eed4              # double 7.3083419999999997
	.quad	0x400e995e5aff2a17              # double 3.8248869999999999
	.quad	0x4023870196d8f4f9              # double 9.7636839999999995
	.quad	0x3fa122962cfd8f0c              # double 0.033466999999999997
	.quad	0x3fbe6601bc98a223              # double 0.118744
	.quad	0x4012a4c76d117b53              # double 4.6609170000000004
	.quad	0x3ff0ec3a860dcb9b              # double 1.0576730000000001
	.quad	0x4009d7b0f6ad70e7              # double 3.230318
	.quad	0x4019dd234eb9a177              # double 6.4659550000000001
	.quad	0x401e2b295e9e1b09              # double 7.5421500000000003
	.quad	0x4020e17225b749ae              # double 8.4403240000000004
	.quad	0x401e1553ac4f7ec3              # double 7.5208269999999997
	.quad	0x401dc866a11ec919              # double 7.4457040000000001
	.quad	0x4017ca94bbe4473d              # double 5.9478330000000001
	.quad	0x3fff218bd66277c4              # double 1.9456899999999999
	.quad	0x401994812be48a59              # double 6.3950240000000003
	.quad	0x3feedbfad2999568              # double 0.96435300000000001
	.quad	0x4007e5bc87db2b34              # double 2.9871759999999998
	.quad	0x4022685db76b3bb8              # double 9.2038399999999995
	.quad	0x3fcc21c8a7a41e58              # double 0.219781
	.quad	0x3fd5e3c536d655e3              # double 0.34202700000000003
	.quad	0x400443cc07aaef2c              # double 2.5331039999999998
	.quad	0x402254e746cb966c              # double 9.1658270000000001
	.quad	0x400eecdaf4adbc66              # double 3.8656519999999999
	.quad	0x401cf50ca1cef241              # double 7.239306
	.quad	0x3fef98d477bbf940              # double 0.987406
	.quad	0x401c57168f8e7ddd              # double 7.0850470000000003
	.quad	0x3ff54d173fb7a5f4              # double 1.331321
	.quad	0x40228c4998d045fe              # double 9.2739989999999999
	.quad	0x4004dbf727136a40              # double 2.607405
	.quad	0x4019750df15a4acf              # double 6.3643109999999998
	.quad	0x4021f2018a43bb41              # double 8.9726680000000005
	.quad	0x401c609635610add              # double 7.0943230000000002
	.quad	0x4011c4bb1af3a14d              # double 4.4421200000000001
	.quad	0x40112f1c75818c5d              # double 4.2960070000000004
	.quad	0x400b1c10d7be9857              # double 3.3887040000000002
	.quad	0x4020d89c7ffde721              # double 8.4230689999999999
	.quad	0x400b59cb6848beb6              # double 3.4188450000000001
	.quad	0x4002b5c4a83b1d0d              # double 2.3387540000000002
	.quad	0x401dcba9d1f60179              # double 7.4488899999999996
	.quad	0x4017629aa1d755bd              # double 5.8462930000000002
	.quad	0x401e941fa7653437              # double 7.6446519999999997
	.quad	0x401d2bdad7518b0d              # double 7.2928269999999999
	.quad	0x3ffb89752977c88e              # double 1.7210589999999999
	.quad	0x4003f2c6ac215b9a              # double 2.4935429999999998
	.quad	0x4003cc7eae5bc87e              # double 2.4748510000000001
	.quad	0x4023a1d7342edbb6              # double 9.8160950000000007
	.quad	0x40139ef911cf355d              # double 4.9052470000000001
	.quad	0x401a7f54d1e96c40              # double 6.6243470000000002
	.quad	0x40119924f227d029              # double 4.3995550000000003
	.quad	0x401a71e603d57796              # double 6.6112289999999998
	.quad	0x401d309d8c6d612c              # double 7.2974759999999996
	.quad	0x40129f75104d551d              # double 4.6557199999999996
	.quad	0x401d3df6db940fed              # double 7.3105120000000001
	.quad	0x400e7c18b502abac              # double 3.810594
	.quad	0x3f9160d887ebf22c              # double 0.016971
	.quad	0x402265f4e4430b18              # double 9.1991340000000008
	.quad	0x4023ee9f2778140e              # double 9.9660580000000003
	.quad	0x401886e08f217093              # double 6.1317159999999999
	.quad	0x4010de6106ab14ec              # double 4.2171669999999999
	.quad	0x3fffacf850df15a5              # double 1.9797290000000001
	.quad	0x3fecf162ae4b0186              # double 0.90446599999999999
	.quad	0x40170fb09203a323              # double 5.7653220000000003
	.quad	0x400e3dd334c5da6a              # double 3.7801879999999999
	.quad	0x401e823b7952d235              # double 7.62718
	.quad	0x4018d809917939a8              # double 6.2109740000000002
	.quad	0x40230d011904b3c4              # double 9.5253990000000001
	.quad	0x401205dd095af295              # double 4.5057260000000001
	.quad	0x4006b18eb8950764              # double 2.8366980000000002
	.quad	0x400c358969a0ad8a              # double 3.526141
	.quad	0x402118afe60c38f3              # double 8.5482169999999993
	.quad	0x40027ed959a30985              # double 2.311938
	.quad	0x4004752d234eb9a1              # double 2.5572149999999998
	.quad	0x40219f1001d5c316              # double 8.8106690000000008
	.quad	0x4021ce215336deb9              # double 8.9025979999999993
	.quad	0x400d6091c087442c              # double 3.6721529999999998
	.quad	0x401720728e92d55a              # double 5.7816869999999998
	.quad	0x40181662fdfc19c1              # double 6.0218619999999996
	.quad	0x3ff98f893faf4278              # double 1.5975429999999999
	.quad	0x4018e0f55de58e65              # double 6.2196860000000003
	.quad	0x4022b5942917507f              # double 9.3546460000000006
	.quad	0x4020042eba27ae9b              # double 8.0081690000000005
	.quad	0x401d2e1eb4202d9d              # double 7.2950390000000001
	.quad	0x4023d0b029281776              # double 9.9075939999999996
	.quad	0x40193079a2834d27              # double 6.297339
	.quad	0x40200447a17f4129              # double 8.0083590000000004
	.quad	0x40220320b8066c2b              # double 9.0061090000000004
	.quad	0x3ff02897635e742a              # double 1.0099100000000001
	.quad	0x400683992c8c5005              # double 2.814257
	.quad	0x401ca4f0520d130e              # double 7.161073
	.quad	0x4023633333333333              # double 9.6937499999999996
	.quad	0x4022fb58afc47e4a              # double 9.4909110000000005
	.quad	0x3fd32b2bfdb4cc25              # double 0.29951
	.quad	0x401b60d9945b6c37              # double 6.8445799999999997
	.quad	0x4010909b30728e93              # double 4.1412170000000001
	.quad	0x401bd664d3bf2f55              # double 6.9593689999999997
	.quad	0x4020e4651f3e89a9              # double 8.4460840000000008
	.quad	0x3fcb2dcb1465e892              # double 0.212335
	.quad	0x40228f913e81450f              # double 9.280405
	.quad	0x4010510667f90d9d              # double 4.0791259999999996
	.quad	0x401cb838c111ada7              # double 7.1799039999999996
	.quad	0x3fc0c4ef88b97785              # double 0.13100999999999999
	.quad	0x4007b5c28f5c28f6              # double 2.9637500000000001
	.quad	0x3fd4a9c12f09d8c7              # double 0.32286100000000001
	.quad	0x3ff9cbae89eba6ad              # double 1.6122270000000001
	.quad	0x40239c5b8dc55001              # double 9.8053860000000003
	.quad	0x401d8bc23315d702              # double 7.3864830000000001
	.quad	0x4004a5e892253112              # double 2.58101
	.quad	0x401a55ab3aabcd79              # double 6.5836610000000002
	.quad	0x4022bf36049ecb32              # double 9.3734590000000004
	.quad	0x401128b04ab606b8              # double 4.2897350000000003
	.quad	0x4010f3a322af5771              # double 4.237927
	.quad	0x40196cbd1244a622              # double 6.3561899999999998
	.quad	0x3ff96f294dd72368              # double 1.589639
	.quad	0x400b6bead4f5903a              # double 3.4276939999999998
	.quad	0x402027e111276fb1              # double 8.0778890000000008
	.quad	0x4005755ac03ff690              # double 2.682302
	.quad	0x402044ab3edd8b61              # double 8.1341190000000001
	.quad	0x4017f7b395c42203              # double 5.9918959999999997
	.quad	0x40191784ec636b09              # double 6.2729679999999997
	.quad	0x40235460242d05f3              # double 9.6647960000000008
	.quad	0x400b4adcd2d44dcb              # double 3.4115540000000002
	.quad	0x401b3359791819d2              # double 6.8001459999999998
	.quad	0x401acf36ef8055fc              # double 6.7023580000000003
	.quad	0x400e8eabffcdab19              # double 3.8196639999999999
	.quad	0x3fea46aa087ca644              # double 0.82112600000000002
	.quad	0x3ff903914f483cb0              # double 1.5633710000000001
	.quad	0x400bd60d0247021d              # double 3.479517
	.quad	0x400f736a400fba88              # double 3.9313549999999999
	.quad	0x4013d868b9fdbd30              # double 4.9613370000000003
	.quad	0x4023f8ceb356da01              # double 9.9859519999999992
	.quad	0x4012192ff4ba51a0              # double 4.524597
	.quad	0x4022cadbe7f2c301              # double 9.3962090000000006
	.quad	0x3fefb97353b4b2fb              # double 0.99138800000000004
	.quad	0x4022eb54e2b063e0              # double 9.4596319999999992
	.quad	0x40161aec8d5c7475              # double 5.5262929999999999
	.quad	0x402313fe7e1fc090              # double 9.5390510000000006
	.quad	0x4018999b2c40d0ab              # double 6.1500060000000003
	.quad	0x3fe0f8e7ddca4b12              # double 0.53038399999999997
	.quad	0x40232db0142f61ed              # double 9.5892339999999993
	.quad	0x400fc2773e24febd              # double 3.969954
	.quad	0x401ad2aa9f7b5aea              # double 6.7057289999999998
	.quad	0x4018d20afa2f05a7              # double 6.20512
	.quad	0x401fe2a8c9b84556              # double 7.9713469999999997
	.quad	0x40217f6be37de93a              # double 8.7488700000000001
	.quad	0x40234fc88e79aae7              # double 9.6558270000000003
	.quad	0x401a563886594af5              # double 6.5842000000000001
	.quad	0x4021d6c95bff0457              # double 8.9195049999999991
	.quad	0x401c0625204af923              # double 7.0060010000000004
	.quad	0x4012f5985ad538ac              # double 4.7398389999999999
	.quad	0x401a7a3f4666ec9e              # double 6.6193819999999999
	.quad	0x4023d61c79b34a45              # double 9.9181860000000003
	.quad	0x40175352eb5f5f0b              # double 5.8313709999999999
	.quad	0x40191cdc443914f5              # double 6.2781840000000004
	.quad	0x40151a06a6e32e38              # double 5.2754159999999999
	.quad	0x3fcf4983d790752e              # double 0.24443100000000001
	.quad	0x40147c9363f572de              # double 5.1216559999999998
	.quad	0x400dd698fe69270b              # double 3.729784
	.quad	0x401452f48c2e770c              # double 5.0810110000000002
	.quad	0x400fff19d66adb40              # double 3.9995609999999999
	.quad	0x400b26f5019f3c71              # double 3.3940220000000001
	.quad	0x4009230b9dc2f406              # double 3.142112
	.quad	0x40012c7000431bdf              # double 2.1466980000000002
	.quad	0x40125bd6a593a2e0              # double 4.5896860000000004
	.quad	0x402059971c10d7bf              # double 8.1749810000000007
	.quad	0x402396527a20578e              # double 9.7935979999999994
	.quad	0x3fccd6451b93037d              # double 0.22528899999999999
	.quad	0x401f048a58b3f63c              # double 7.7544339999999998
	.quad	0x400832b5e529bae4              # double 3.0247609999999998
	.quad	0x400d44f765fd8adb              # double 3.6586750000000001
	.quad	0x4002b403dddb120a              # double 2.337898
	.quad	0x40217638eb0318b9              # double 8.7309029999999996
	.quad	0x40038e8427418d69              # double 2.444588
	.quad	0x4017c7f77af64064              # double 5.9452800000000003
	.quad	0x401841deacc92147              # double 6.0643260000000003
	.quad	0x401a1f75d9a0f0a6              # double 6.5307230000000001
	.quad	0x4011c1eb4202d9cf              # double 4.4393739999999999
	.quad	0x40227d4690de0935              # double 9.2446789999999996
	.quad	0x401133eee5258927              # double 4.3007160000000004
	.quad	0x4006f4a2339c0ebf              # double 2.8694500000000001
	.quad	0x4023c7beb9e492bc              # double 9.8901269999999996
	.quad	0x4016bf255f3519bd              # double 5.6866659999999998
	.quad	0x40027bc77143393b              # double 2.3104390000000001
	.quad	0x4016ac55432873bd              # double 5.6682940000000004
	.quad	0x402277c7c5260f5e              # double 9.2339459999999995
	.quad	0x3ff9cb220791c4b9              # double 1.612093
	.quad	0x4023a70c564f97ee              # double 9.8262660000000004
	.quad	0x401e6db0dd82fd76              # double 7.6071200000000001
	.quad	0x401f979fa97e132b              # double 7.8980699999999997
	.quad	0x402090448cf7caa7              # double 8.2817729999999994
	.quad	0x3fd7a369fcf3dc05              # double 0.36934899999999998
	.quad	0x400c8518f3eccc47              # double 3.5649890000000002
	.quad	0x4019ce1bd1ed9dfe              # double 6.4512780000000003
	.quad	0x400feac18f81e8a3              # double 3.989627
	.quad	0x4001b9f4d37c1377              # double 2.2157990000000001
	.quad	0x401d6bb1290257c9              # double 7.3551679999999999
	.quad	0x4012a2085b18548b              # double 4.6582350000000003
	.quad	0x3febd2c9d16fc9bc              # double 0.86948099999999994
	.quad	0x3fe409fa54c55433              # double 0.62621800000000005
	.quad	0x4005bd712a0ec743              # double 2.7175009999999999
	.quad	0x4012320c069e7fb2              # double 4.5488739999999996
	.quad	0x401c81a93293d103              # double 7.1266220000000002
	.quad	0x401ab87ce95faa8b              # double 6.6801640000000004
	.quad	0x40073caafbc1acde              # double 2.904623
	.quad	0x4000835610adcd2d              # double 2.0641289999999999
	.quad	0x40105e1e71044f1a              # double 4.0919129999999999
	.quad	0x40116a2a90cd423e              # double 4.3536780000000004
	.quad	0x40235e3b688bda94              # double 9.6840469999999996
	.quad	0x401fc5c63ae2541e              # double 7.9431390000000004
	.quad	0x3fff33a68b19a416              # double 1.95011
	.quad	0x3ff7c41dd1a21ea3              # double 1.4853799999999999
	.quad	0x401e4ced0b30b5aa              # double 7.5751229999999996
	.quad	0x3ff53e49b1fab96f              # double 1.327707
	.quad	0x40022372606fac60              # double 2.2673079999999999
	.quad	0x401e396c82e019b1              # double 7.5560780000000002
	.quad	0x3ff6d9220ff54089              # double 1.4280109999999999
	.quad	0x401be0e6f2e8c048              # double 6.9696309999999997
	.quad	0x4021731db445ed4a              # double 8.7248359999999998
	.quad	0x401d9807bbb62414              # double 7.3984670000000001
	.quad	0x401c5bf3bea91d9b              # double 7.0897969999999999
	.quad	0x3ffa69899bf5946c              # double 1.650766
	.quad	0x3ff1da5a89b951c6              # double 1.1158090000000001
	.quad	0x401f968e820e6299              # double 7.8970279999999997
	.quad	0x401fe6d43d03968d              # double 7.9754189999999995
	.quad	0x3ff238c21e1d2179              # double 1.138857
	.quad	0x400223e963dc486b              # double 2.2675350000000001
	.quad	0x401f65321e603d57              # double 7.8488239999999995
	.quad	0x40071e468cac4b4d              # double 2.889783
	.quad	0x3ffe867381d7dbf5              # double 1.9078250000000001
	.quad	0x400a8abef06b3786              # double 3.3177469999999998
	.quad	0x4022cad31fcd24e1              # double 9.3961419999999993
	.quad	0x40103178705425f2              # double 4.048311
	.quad	0x4014fad2dcb1465f              # double 5.2449450000000004
	.quad	0x401894959e625636              # double 6.1451019999999996
	.quad	0x3ff3f5d894812be5              # double 1.2475210000000001
	.quad	0x401647d912556d1a              # double 5.5701640000000001
	.quad	0x40183e5d5b24e9c4              # double 6.0609029999999997
	.quad	0x400d76e3f78bbd38              # double 3.683052
	.quad	0x401d87a63736cdf2              # double 7.3824699999999996
	.quad	0x400edf18c9fb6135              # double 3.8589340000000001
	.quad	0x3ff39d13d74d594f              # double 1.225849
	.quad	0x400ca90de093532e              # double 3.5825459999999998
	.quad	0x3fb51dffc5479d4e              # double 0.082489000000000006
	.quad	0x4022e224894c447c              # double 9.4416849999999996
	.quad	0x3fdf00de4c51116b              # double 0.48442800000000003
	.quad	0x3fc2c7325918a00a              # double 0.146704
	.quad	0x3fd4656abde3fbbd              # double 0.31868999999999997
	.quad	0x40220f5fd47bedb7              # double 9.0300279999999997
	.quad	0x3ff72584f4c6e6da              # double 1.4466600000000001
	.quad	0x4022a099e0e73605              # double 9.3136740000000007
	.quad	0x401e190257c914b1              # double 7.5244229999999996
	.quad	0x4016f6a4ca4f440b              # double 5.740863
	.quad	0x40239dbd512ec6bd              # double 9.8080850000000001
	.quad	0x4013b69db65ecc3e              # double 4.9283359999999998
	.quad	0x4022261b8ed1bf7b              # double 9.0744290000000003
	.quad	0x40189ceaaf35e311              # double 6.1532390000000001
	.quad	0x401e704c05921038              # double 7.6096649999999996
	.quad	0x40006d1a65061416              # double 2.0532729999999999
	.quad	0x4013047b24638c97              # double 4.7543759999999997
	.quad	0x4023433a4723ab00              # double 9.6313040000000001
	.quad	0x40194b48d3ae685e              # double 6.3235200000000003
	.quad	0x4016eadeebb341e1              # double 5.7293659999999997
	.quad	0x4023f86f47b677f7              # double 9.9852240000000005
	.quad	0x401eb798958d9b5f              # double 7.6792930000000003
	.quad	0x401920f01fb82c2c              # double 6.2821660000000001
	.quad	0x400736ebd4cfd08d              # double 2.9018169999999999
	.quad	0x3fed6d3953dea466              # double 0.91958300000000004
	.quad	0x400e387485e3da30              # double 3.7775660000000002
	.quad	0x4023b8537e2c55c9              # double 9.8600119999999993
	.quad	0x40215c8f10a99b6f              # double 8.6807789999999994
	.quad	0x400c5ca5375c8da0              # double 3.5452370000000002
	.quad	0x401cf3eccc469510              # double 7.2382080000000002
	.quad	0x40188f672b884407              # double 6.1400420000000002
	.quad	0x401e725c810a569b              # double 7.6116809999999999
	.quad	0x401e8350092ccf6c              # double 7.6282350000000001
	.quad	0x402074677b395c42              # double 8.2273519999999998
	.quad	0x4017d5625a682b63              # double 5.9583830000000004
	.quad	0x3fd06eeb702602c9              # double 0.25677
	.quad	0x40174d72799a1fd1              # double 5.8256319999999997
	.quad	0x4015fb8c75c4a83b              # double 5.4956529999999999
	.quad	0x401105c358afc47e              # double 4.2556279999999997
	.quad	0x3fd6bf5d78811b1e              # double 0.35543000000000002
	.quad	0x400a148fd9fd36f8              # double 3.26004
	.quad	0x40173d6f97679032              # double 5.8099959999999999
	.quad	0x4022f0e347629521              # double 9.4704840000000007
	.quad	0x40122a7fc32ebe59              # double 4.5415029999999996
	.quad	0x400499d12cadddf4              # double 2.5751059999999999
	.quad	0x401be69b9d7fd827              # double 6.9752029999999996
	.quad	0x40005e974a3400b9              # double 2.0461870000000002
	.quad	0x4017db8e8ea39c52              # double 5.9644110000000001
	.quad	0x401488b934699418              # double 5.1335189999999997
	.quad	0x402172f3a14cec42              # double 8.7245150000000002
	.quad	0x3fff3ae147ae147b              # double 1.951875
	.quad	0x4021b0f6f08cc576              # double 8.8456340000000004
	.quad	0x4020e9f7b5aea316              # double 8.4569679999999998
	.quad	0x40238022ff08893b              # double 9.7502669999999991
	.quad	0x40043d438d1d8a55              # double 2.5299140000000002
	.quad	0x3fdd84a515ce9e5e              # double 0.46122099999999999
	.quad	0x40196ca3e7d13511              # double 6.3560939999999997
	.quad	0x4004dbdcf0307f24              # double 2.6073550000000001
	.quad	0x40200b886594af4f              # double 8.0225249999999999
	.quad	0x3fc9f540895d0b74              # double 0.20279700000000001
	.quad	0x4022bbaa9b499d02              # double 9.366536
	.quad	0x401f2d5d3dc8b86b              # double 7.7943009999999999
	.quad	0x402145ce7cd03537              # double 8.6363409999999998
	.quad	0x4013d22b3892ee85              # double 4.9552430000000003
	.quad	0x40200c86f049a997              # double 8.0244669999999996
	.quad	0x4023456238da3c21              # double 9.6355149999999998
	.quad	0x401c4338b47c73ef              # double 7.0656460000000001
	.quad	0x3fe9244e93e1c9b4              # double 0.78568199999999999
	.quad	0x4012572e275ab7dc              # double 4.5851369999999996
	.quad	0x4013444567125dd1              # double 4.8166710000000004
	.quad	0x4008ac4a4095f245              # double 3.0841259999999999
	.quad	0x40169ccd0fe8ab50              # double 5.6531260000000003
	.quad	0x4011f008a697aede              # double 4.4844080000000002
	.quad	0x4005ee4217d2849d              # double 2.7413370000000001
	.quad	0x4018eb4395810625              # double 6.2297500000000001
	.quad	0x40183744b2b777d1              # double 6.053973
	.quad	0x401c4a9d1f601798              # double 7.0728650000000002
	.quad	0x400ca06d0d49949f              # double 3.5783330000000002
	.quad	0x40023a1c25d07421              # double 2.2783739999999999
	.quad	0x402186779207d4e1              # double 8.7626310000000007
	.quad	0x401b45714b9cb685              # double 6.8178150000000004
	.quad	0x4021d7060bb2bbaa              # double 8.9199680000000008
	.quad	0x4011224851a86940              # double 4.2834789999999998
	.quad	0x3ff1caa64c2f837b              # double 1.1119749999999999
	.quad	0x3fffc8e79aae6c8f              # double 1.9865489999999999
	.quad	0x40184262888b545c              # double 6.0648289999999996
	.quad	0x4011758a76102795              # double 4.3647859999999996
	.quad	0x401755ae1cde5d18              # double 5.833672
	.quad	0x40226366d7a56de3              # double 9.1941439999999997
	.quad	0x401daa26a22b3893              # double 7.4161630000000001
	.quad	0x40078bddb9841aac              # double 2.9432939999999999
	.quad	0x400475e310dbf056              # double 2.5575619999999999
	.quad	0x4022cf8c868b9fdc              # double 9.4053690000000003
	.quad	0x40134a087ca643cc              # double 4.822298
	.quad	0x400cda7221858bc6              # double 3.6066630000000002
	.quad	0x402060fe8ab4fa48              # double 8.1894419999999997
	.quad	0x4013beacc92146a2              # double 4.9362060000000003
	.quad	0x3ff2d7646ae3a3a9              # double 1.177586
	.quad	0x3ffb57f0ed3d859d              # double 1.7089700000000001
	.quad	0x3ff4416f0068db8c              # double 1.2659750000000001
	.quad	0x3fe8e8ea39c51dac              # double 0.77843200000000001
	.quad	0x4022da033e78e193              # double 9.4258059999999996
	.quad	0x40130b18dac258d6              # double 4.7608370000000004
	.quad	0x401f25796bfca85d              # double 7.7865960000000002
	.quad	0x402079198aeb80ed              # double 8.236523
	.quad	0x4022732830a0b1bc              # double 9.2249160000000003
	.quad	0x401ec20e6299524c              # double 7.689508
	.quad	0x400967221858bc5a              # double 3.1753580000000001
	.quad	0x40197131a8ef77f2              # double 6.3605409999999996
	.quad	0x40058ad794a6eb92              # double 2.6927940000000001
	.quad	0x402283c77143393b              # double 9.2573810000000005
	.quad	0x40177cd3e0bd449a              # double 5.8719020000000004
	.quad	0x4023d04e1e71044f              # double 9.9068459999999998
	.quad	0x3ffa685122318330              # double 1.650468
	.quad	0x400495935fc3b4f6              # double 2.573035
	.quad	0x3fe42cecc814d728              # double 0.63048400000000004
	.quad	0x4022bf121ab4b72c              # double 9.3731849999999994
	.quad	0x401edfec13b9f128              # double 7.718674
	.quad	0x40174c4d22c881e4              # double 5.8245129999999996
	.quad	0x40009b4f61672325              # double 2.0758350000000001
	.quad	0x4006827d88c1db01              # double 2.8137159999999999
	.quad	0x40120f2d3c792d13              # double 4.5148210000000004
	.quad	0x400680a41a261bf3              # double 2.8128129999999998
	.quad	0x40150aec8d5c7475              # double 5.2606679999999999
	.quad	0x4010104d98394749              # double 4.0159209999999996
	.quad	0x40109bdc69f8c21e              # double 4.1522079999999999
	.quad	0x401674107314ca92              # double 5.6133439999999997
	.quad	0x3ff38c0379314446              # double 1.2216830000000001
	.quad	0x4013f93e1c9b413a              # double 4.9934010000000004
	.quad	0x4021e2fc8b0079a3              # double 8.9433330000000009
	.quad	0x400cd357e670e2c1              # double 3.6031949999999999
	.quad	0x40204f666234a87e              # double 8.1550779999999996
	.quad	0x3fe90a7c5ac471b4              # double 0.78252999999999994
	.quad	0x40147c450268900c              # double 5.1213569999999997
	.quad	0x400be1a5870da5db              # double 3.485179
	.quad	0x3fe03a1d323fee2d              # double 0.50709400000000004
	.quad	0x3ffdc25aee631f8a              # double 1.85995
	.quad	0x3ffa45b4aa9717df              # double 1.642018
	.quad	0x4020d834091c0874              # double 8.4222719999999995
	.quad	0x40062ada33bd9cae              # double 2.7709239999999999
	.quad	0x40133ef5232d2bb2              # double 4.8114819999999998
	.quad	0x401525907d912557              # double 5.2866840000000002
	.quad	0x401dec15097c8084              # double 7.4805489999999999
	.quad	0x401c9d4bf0995aaf              # double 7.1536099999999996
	.quad	0x401fabb7b6bb1290              # double 7.9176929999999999
	.quad	0x40183b48909289db              # double 6.0578940000000001
	.quad	0x402125d8d79d0a67              # double 8.5739199999999993
	.quad	0x4020183fd5022574              # double 8.0473619999999996
	.quad	0x40216a92a3055326              # double 8.7081499999999998
	.quad	0x3fe5e086bdf4c2b5              # double 0.68365799999999999
	.quad	0x4010f684cf0739b0              # double 4.2407409999999999
	.quad	0x402334827b6fe2e7              # double 9.6025580000000001
	.quad	0x40147c85c24c404a              # double 5.1216039999999996
	.quad	0x400dcd97b30f8c65              # double 3.725387
	.quad	0x402266455eaee200              # double 9.1997479999999995
	.quad	0x3ff8b09b738e6d16              # double 1.5431170000000001
	.quad	0x400ae2be8bc169c2              # double 3.3607149999999999
	.quad	0x3ffb30ac3a860dcc              # double 1.6993830000000001
	.quad	0x3fdda7264a16a487              # double 0.46332699999999999
	.quad	0x401024e11dbca969              # double 4.0360149999999999
	.quad	0x4008cbdd334c5da7              # double 3.0995430000000002
	.quad	0x401a0a272862f599              # double 6.5099150000000003
	.quad	0x3fe3530ad46f587d              # double 0.60388699999999995
	.quad	0x4000156d19dece57              # double 2.010462
	.quad	0x4020bd2dcb1465e9              # double 8.3694900000000008
	.quad	0x402166c6bce8533b              # double 8.7007349999999999
	.quad	0x40234f5e41d4b6a6              # double 9.6550159999999998
	.quad	0x4020d7f1d81f1066              # double 8.4217669999999991
	.quad	0x402133526527a205              # double 8.6002379999999992
	.quad	0x402340357a355044              # double 9.6254080000000001
	.quad	0x400e506fef7c243e              # double 3.7892760000000001
	.quad	0x40165a322af57710              # double 5.588082
	.quad	0x4011d37f38c5436c              # double 4.4565400000000004
	.quad	0x401f4ff8a8f3a9b0              # double 7.8280969999999996
	.quad	0x3fd18f25a250f840              # double 0.27436199999999999
	.quad	0x401bc7496aad1d04              # double 6.9446159999999999
	.quad	0x3ff4720535c9e668              # double 1.2778369999999999
	.quad	0x400501cffeb074a7              # double 2.6258849999999998
	.quad	0x4015dc144028e4fc              # double 5.4649210000000004
	.quad	0x3ffc664e48626f61              # double 1.774977
	.quad	0x4005b5df6555c52e              # double 2.7138049999999998
	.quad	0x3fabef284167a95d              # double 0.054559000000000003
	.quad	0x3fe07601797cc3a0              # double 0.514405
	.quad	0x4006eaceaaf35e31              # double 2.864652
	.quad	0x401b078183f91e64              # double 6.7573299999999996
	.quad	0x402389f59ccfaeff              # double 9.7694519999999993
	.quad	0x3ff839eadd590c0b              # double 1.51414
	.quad	0x4018226c7eae5bc8              # double 6.0336169999999996
	.quad	0x40100ed41b75a74c              # double 4.014481
	.quad	0x401dc57c914b167f              # double 7.4428580000000002
	.quad	0x40052a1c68ec52a4              # double 2.645562
	.quad	0x3ff5f691212513b6              # double 1.3726970000000001
	.quad	0x401a52877ee4e26d              # double 6.5805949999999998
	.quad	0x4000b687b139c94f              # double 2.0891259999999998
	.quad	0x4022b1b2a27f1b69              # double 9.3470659999999999
	.quad	0x401056e158750c1c              # double 4.0848440000000004
	.quad	0x40212980b242070c              # double 8.5810600000000007
	.quad	0x3fea60cbf2b239a4              # double 0.82431600000000004
	.quad	0x4009bd2178f68be3              # double 3.217349
	.quad	0x400daa45d41fa765              # double 3.7081409999999999
	.quad	0x400c479fec99f1ae              # double 3.5349729999999999
	.quad	0x402350cac4b4d057              # double 9.6577970000000004
	.quad	0x4023fd668c261390              # double 9.994923
	.quad	0x400567674d163348              # double 2.6754899999999999
	.quad	0x4010a6fd651b0ccc              # double 4.1630760000000002
	.quad	0x400add3bafd976ff              # double 3.3580239999999999
	.quad	0x401535a74c09c3ce              # double 5.3023959999999999
	.quad	0x40089285a921ccd9              # double 3.0715439999999998
	.quad	0x4009bceaf251c194              # double 3.2172450000000001
	.quad	0x40103a0cae642bfa              # double 4.0566890000000004
	.quad	0x3fff5ef0f16f4385              # double 1.9606790000000001
	.quad	0x4020ea97bfa4c61e              # double 8.4581890000000008
	.quad	0x3fcb2cd7cf5f4e44              # double 0.21230599999999999
	.quad	0x4001463c74fb54a0              # double 2.1592950000000002
	.quad	0x3fe7e39d5e4a3832              # double 0.74653499999999995
	.quad	0x3ff4a80f12c27a63              # double 1.2910299999999999
	.quad	0x401310fbeb9e492c              # double 4.7665860000000002
	.quad	0x4010034b0e1b4bb6              # double 4.0032160000000001
	.quad	0x4004b8958d9b5e96              # double 2.5901290000000001
	.quad	0x40235cbc8c0ce91d              # double 9.6811260000000007
	.quad	0x40197fbce4217d28              # double 6.3747439999999997
	.quad	0x4011c496ededaec5              # double 4.4419820000000003
	.quad	0x402285a682b62846              # double 9.2610360000000007
	.quad	0x4023fe138fffbce4              # double 9.9962429999999997
	.quad	0x400c7a4ce8101f32              # double 3.559717
	.quad	0x3fbd40789613d31c              # double 0.11426500000000001
	.quad	0x4016056b00ffda40              # double 5.5052909999999997
	.quad	0x4007443cc07aaef3              # double 2.9083190000000001
	.quad	0x40194cbff47735c2              # double 6.3249510000000004
	.quad	0x40205abc2fc69729              # double 8.1772170000000006
	.quad	0x4021ba49c2c1b110              # double 8.8638440000000003
	.quad	0x400c485f4a1272c9              # double 3.5353379999999999
	.quad	0x401987ced916872b              # double 6.382625
	.quad	0x3fd288f861a60d45              # double 0.28960999999999998
	.quad	0x401e3aeea63b688c              # double 7.5575510000000001
	.quad	0x40172008a697aede              # double 5.7812830000000002
	.quad	0x3fe7b810e8858ff7              # double 0.74121899999999996
	.quad	0x401584d87724fa8b              # double 5.3797319999999997
	.quad	0x4019dfa6defc7a3a              # double 6.4684100000000004
	.quad	0x4021005e80bed741              # double 8.5007210000000004
	.quad	0x4010d4ead0c3d252              # double 4.2079269999999998
	.quad	0x400481b64e054691              # double 2.5633360000000001
	.quad	0x401c5bff04577d95              # double 7.0898399999999997
	.quad	0x4015da9eb2074ea9              # double 5.4634960000000001
	.quad	0x40229df612407464              # double 9.3085179999999994
	.quad	0x3ff2a808c8259e1f              # double 1.1660239999999999
	.quad	0x4023f9f53825e13b              # double 9.9881989999999998
	.quad	0x3fe08e1932d6ece1              # double 0.51734599999999997
	.quad	0x401dfbfec13b9f12              # double 7.4960889999999996
	.quad	0x400188c154c985f0              # double 2.1917749999999998
	.quad	0x4023d45d851654d6              # double 9.9147759999999998
	.quad	0x3ff15ede1198aeb8              # double 1.085661
	.quad	0x3ffc0b1897a67a53              # double 1.7527090000000001
	.quad	0x401d559ea57214f0              # double 7.3336129999999997
	.quad	0x400dc8387df5cf25              # double 3.7227640000000002
	.quad	0x3ffad9ad85dfa872              # double 1.6781440000000001
	.quad	0x40080e9ab29e4d5e              # double 3.0071310000000002
	.quad	0x400a153dea465a57              # double 3.2603719999999998
	.quad	0x401fe46173b85e81              # double 7.9730280000000002
	.quad	0x3fe4408b75ea67e8              # double 0.63287899999999997
	.quad	0x401c8e9468017119              # double 7.1392379999999998
	.quad	0x3ff9d3d102bc72e2              # double 1.6142129999999999
	.quad	0x401c849e01de2691              # double 7.1295089999999997
	.quad	0x401ed5814940bbb2              # double 7.708501
	.quad	0x3ffd041ede1198af              # double 1.8135060000000001
	.quad	0x401721a5ca29845e              # double 5.7828590000000002
	.quad	0x401daaba38759253              # double 7.4167259999999997
	.quad	0x40159df04ddb5526              # double 5.4042370000000002
	.quad	0x3fe2a7546d3f9e7c              # double 0.58292600000000006
	.quad	0x40211038e29f9ce9              # double 8.5316840000000003
	.quad	0x40235519bd4067cf              # double 9.6662119999999998
	.quad	0x3ffa903b81b64e05              # double 1.6602129999999999
	.quad	0x40122f27fe4bcada              # double 4.5460510000000003
	.quad	0x3fe80262456f75da              # double 0.75029100000000004
	.quad	0x3fe4a0e8427418d7              # double 0.64464200000000005
	.quad	0x401a9b966be7afa7              # double 6.6519409999999999
	.quad	0x40214dbc87db2b34              # double 8.6518289999999993
	.quad	0x401bc7b9170d62bf              # double 6.9450419999999999
	.quad	0x4003507852f7f499              # double 2.4142920000000001
	.quad	0x3fe63f42352eb5f6              # double 0.69522200000000001
	.quad	0x4010f14fce746cb9              # double 4.2356559999999996
	.quad	0x40042333764f11b6              # double 2.517188
	.quad	0x401de2c061847f56              # double 7.4714369999999999
	.quad	0x3fc0d056c508b32d              # double 0.131358
	.quad	0x401dabbe4473cd57              # double 7.4177179999999998
	.quad	0x3fe054eb13dfb0d5              # double 0.51036599999999999
	.quad	0x3febafdfc19c1722              # double 0.86521899999999996
	.quad	0x40235743e963dc48              # double 9.6704399999999992
	.quad	0x4021f2915379fa98              # double 8.9737650000000002
	.quad	0x400838897e996313              # double 3.027606
	.quad	0x401a32d77318fc50              # double 6.5496499999999997
	.quad	0x3fc2e935b91f70df              # double 0.14774200000000001
	.quad	0x4009d21a2e7f6f4c              # double 3.227589
	.quad	0x3ffb363c31df761d              # double 1.7007410000000001
	.quad	0x40058679463cfb33              # double 2.690661
	.quad	0x3ffdc80a5accd530              # double 1.8613379999999999
	.quad	0x40209d84901d1915              # double 8.3076519999999991
	.quad	0x4014ff2990f301eb              # double 5.2491820000000002
	.quad	0x400b76a26e547171              # double 3.4329269999999998
	.quad	0x4020d24e59296702              # double 8.4107540000000007
	.quad	0x400822ed352220bc              # double 3.0170539999999999
	.quad	0x401affb58d1526d9              # double 6.7497160000000003
	.quad	0x4022a34c3c18b503              # double 9.3189410000000006
	.quad	0x401a3d577963992d              # double 6.5599040000000004
	.quad	0x4022aa64c2f837b5              # double 9.3328000000000007
	.quad	0x400869a459103c8e              # double 3.0515829999999999
	.quad	0x3fee4959e6256367              # double 0.94645400000000002
	.quad	0x40228fdfe32a0664              # double 9.2810050000000003
	.quad	0x40219483ec892ab7              # double 8.7900690000000008
	.quad	0x3fd6e30014f8b589              # double 0.35760500000000001
	.quad	0x4011ee9856a37ac4              # double 4.4830030000000001
	.quad	0x401bcba387592535              # double 6.9488659999999998
	.quad	0x4018bbc05d52c16e              # double 6.183351
	.quad	0x40118d8127b2cc71              # double 4.3881880000000004
	.quad	0x3fe6b1d92b7fe08b              # double 0.70921000000000001
	.quad	0x3ff85fa00e27e0f0              # double 1.5233460000000001
	.quad	0x401b0a54c5543287              # double 6.7600889999999998
	.quad	0x40239b8b04ab606b              # double 9.8037949999999991
	.quad	0x40215d4280ae1049              # double 8.6821479999999998
	.quad	0x401fa3e74afd5454              # double 7.9100619999999999
	.quad	0x4022a3c46d82ba5a              # double 9.319858
	.quad	0x3fb6c0b5675579af              # double 0.088877999999999999
	.quad	0x400bdbf0563ed0f6              # double 3.4823919999999999
	.quad	0x4021e239a38fbca1              # double 8.941846
	.quad	0x402189919ac79703              # double 8.7686890000000002
	.quad	0x3feddb078d92fb1a              # double 0.93298700000000001
	.quad	0x3fee403dddb1209f              # double 0.94534200000000002
	.quad	0x40020dde7a743a64              # double 2.2567719999999998
	.quad	0x40164b14ec204f2b              # double 5.5733220000000001
	.quad	0x400545c4651f3e8a              # double 2.6590660000000002
	.quad	0x3fe44be835dedf1e              # double 0.634266
	.quad	0x401871b5c7cd898b              # double 6.1110449999999998
	.quad	0x400f313cee9dd7ed              # double 3.8990420000000001
	.quad	0x401955e4e69f05ea              # double 6.3338809999999999
	.quad	0x3ffc1fb506dd69d3              # double 1.757741
	.quad	0x40142a172abef06b              # double 5.0411039999999998
	.quad	0x40103b5d462c343b              # double 4.0579729999999996
	.quad	0x401206922d948dc1              # double 4.5064169999999999
	.quad	0x401189bd8383ad9f              # double 4.384512
	.quad	0x401d868b5cbff477              # double 7.3813909999999998
	.quad	0x40153a1f080303c0              # double 5.3067589999999996
	.quad	0x40189d74927913e8              # double 6.1537649999999999
	.quad	0x4021806df82b1f68              # double 8.7508389999999991
	.quad	0x40143236c15d2d02              # double 5.0490370000000002
	.quad	0x4008ef5019f3c70d              # double 3.1168520000000002
	.quad	0x40114122749f0e4e              # double 4.3136080000000003
	.quad	0x402024c165907d91              # double 8.0717879999999997
	.quad	0x40146507e9d94d0e              # double 5.0986630000000002
	.quad	0x401165ebfa8f7db7              # double 4.3495330000000001
	.quad	0x402000cd20afa2f0              # double 8.0015649999999994
	.quad	0x3fe091904b3c3e75              # double 0.51776900000000003
	.quad	0x4004f0db6a1e81cb              # double 2.6176059999999999
	.quad	0x4023850e991ff716              # double 9.7598769999999995
	.quad	0x4023197fe8ee6b83              # double 9.5498039999999999
	.quad	0x4016114bdfd2630f              # double 5.5168910000000002
	.quad	0x4010d28e4fb97bb7              # double 4.2056209999999998
	.quad	0x3fb10d9d7774aba4              # double 0.066614000000000007
	.quad	0x4015cdcdb37c99af              # double 5.4509800000000004
	.quad	0x401024e618ce2d1f              # double 4.0360339999999999
	.quad	0x3fbfb0a2ca9ac365              # double 0.123789
	.quad	0x401c63f4666ec9e2              # double 7.0976119999999998
	.quad	0x4018abfc6540cc79              # double 6.1679550000000001
	.quad	0x40111ab7dc7abfba              # double 4.2760920000000002
	.quad	0x3ff1bcd141a6937d              # double 1.108598
	.quad	0x3ff534091c087443              # double 1.325204
	.quad	0x4011c60aa64c2f83              # double 4.4433999999999996
	.quad	0x3ffc03925bb7b6bb              # double 1.750872
	.quad	0x401c7ce13f4a98ab              # double 7.1219530000000004
	.quad	0x4014c8cc144028e5              # double 5.196091
	.quad	0x4017a323bbc6eb0b              # double 5.9093159999999996
	.quad	0x3f936113404ea4a9              # double 0.018925000000000001
	.quad	0x3ff8806e19b90eaa              # double 1.531355
	.quad	0x3fdd8f190d173fb8              # double 0.46185900000000002
	.quad	0x401c896787ce95fb              # double 7.1341840000000003
	.quad	0x3fdb7a24894c447c              # double 0.42932999999999999
	.quad	0x40182d362e903644              # double 6.0441520000000004
	.quad	0x3fe38c069e7fb268              # double 0.61084300000000002
	.quad	0x401261f601797cc4              # double 4.5956650000000003
	.quad	0x401515aaf78feef6              # double 5.2711600000000001
	.quad	0x400a19b8887229e9              # double 3.262559
	.quad	0x401dcf3882278d0d              # double 7.4523640000000002
	.quad	0x40186cb8e086bdf5              # double 6.1061740000000002
	.quad	0x4014153f7ced9168              # double 5.0207499999999996
	.quad	0x4017c673c4f3ba77              # double 5.9438009999999997
	.quad	0x402093e8ff327aa7              # double 8.2888870000000008
	.quad	0x3ffbe27e0ef99807              # double 1.742796
	.quad	0x40114131ec0b5675              # double 4.3136669999999997
	.quad	0x40222036c9c0a8d2              # double 9.0629179999999998
	.quad	0x40212e67d77fae36              # double 8.5906359999999999
	.quad	0x40234c3e5321e604              # double 9.6489130000000002
	.quad	0x40018cabc5154867              # double 2.1936870000000002
	.quad	0x400a5913e81450f0              # double 3.2934950000000001
	.quad	0x4016c925785f8d2e              # double 5.6964319999999997
	.quad	0x401dc1b089a02752              # double 7.4391499999999997
	.quad	0x400362c2374794ea              # double 2.423222
	.quad	0x4012d0539fba450b              # double 4.7034440000000002
	.quad	0x3ff5b6deb95e5aff              # double 1.357146
	.quad	0x4020ba7b4e54f7a9              # double 8.3642219999999998
	.quad	0x4023f88dd1e53a82              # double 9.9854570000000002
	.quad	0x40179625a682b628              # double 5.8966279999999998
	.quad	0x4011374256bca537              # double 4.3039639999999997
	.quad	0x4012d74299d883ba              # double 4.7102149999999998
	.quad	0x4016ac1fc8f32379              # double 5.6680900000000003
	.quad	0x401bce525892684d              # double 6.9514860000000001
	.quad	0x401dd7a41e57d9dc              # double 7.4605870000000003
	.quad	0x401ebd49949e8816              # double 7.6848510000000001
	.quad	0x3ff180f55de58e65              # double 1.0939840000000001
	.quad	0x400f6eea63b688be              # double 3.9291580000000002
	.quad	0x4004162a5e785b5b              # double 2.5108229999999998
	.quad	0x4015c5d56f32bdc2              # double 5.4431969999999996
	.quad	0x4005c045baf533f4              # double 2.7188829999999999
	.quad	0x40066140dd3fe197              # double 2.7974869999999998
	.quad	0x401585e28aa43351              # double 5.3807470000000004
	.quad	0x3ff1ffab10ba6267              # double 1.124919
	.quad	0x40062395810624dd              # double 2.7673749999999999
	.quad	0x3ffc8b2a6b0d9514              # double 1.783976
	.quad	0x40206653a81dc0db              # double 8.1998569999999997
	.quad	0x400d3275ee99a62f              # double 3.6496390000000001
	.quad	0x3ff78f3775b81301              # double 1.4724649999999999
	.quad	0x3fd2d77fae3608d1              # double 0.29440300000000003
	.quad	0x3ff1ca569b17481b              # double 1.111899
	.quad	0x40207e77b395c422              # double 8.247007
	.quad	0x3fd687a072d1aeb4              # double 0.35202800000000001
	.quad	0x400e9c7b45f17bd9              # double 3.8264070000000001
	.quad	0x4013b8427418d691              # double 4.9299410000000004
	.quad	0x400b7d5dc4007571              # double 3.4362140000000001
	.quad	0x40024e3476295209              # double 2.2881860000000001
	.quad	0x401bb5de9c0229a6              # double 6.9276070000000001
	.quad	0x401914bba12b5e53              # double 6.2702470000000003
	.quad	0x40212a018a43bb41              # double 8.5820430000000005
	.quad	0x3ffb2a12f901083e              # double 1.6977720000000001
	.quad	0x401e57c45cbbc2b9              # double 7.5857099999999997
	.quad	0x4023891f2dc2b0ea              # double 9.7678159999999998
	.quad	0x3ff3bd07c84b5dcc              # double 1.2336499999999999
	.quad	0x40182242070b8cfc              # double 6.033455
	.quad	0x3fa14573a797891e              # double 0.033732999999999999
	.quad	0x3ffbcf5c28f5c28f              # double 1.7381249999999999
	.quad	0x402122c2bd7f51f0              # double 8.5678920000000005
	.quad	0x4021f5f86e3b46fe              # double 8.9804110000000001
	.quad	0x4017599bf5946c33              # double 5.8375089999999998
	.quad	0x401296351deefe50              # double 4.646687
	.quad	0x4013afa7eb6bf445              # double 4.9215390000000001
	.quad	0x4023274c8ffb8b26              # double 9.5767559999999996
	.quad	0x4020ccee7c49fd7a              # double 8.4002569999999999
	.quad	0x40211992428d434a              # double 8.549944
	.quad	0x401ce64883fd5022              # double 7.2248859999999997
	.quad	0x401e515b1422ccb4              # double 7.5794490000000003
	.quad	0x401c7832fcac8e69              # double 7.1173820000000001
	.quad	0x3ff83b97bb730835              # double 1.5145489999999999
	.quad	0x402367aa68f4b620              # double 9.7024720000000002
	.quad	0x3fe3b9496249a134              # double 0.61636800000000003
	.quad	0x40134275ab7dc7ac              # double 4.814902
	.quad	0x400aca7ded6ba8c6              # double 3.3488730000000002
	.quad	0x40223e4ba94bbe44              # double 9.1216709999999991
	.quad	0x4010b45176145953              # double 4.1760919999999997
	.quad	0x4013d955714b9cb7              # double 4.9622400000000004
	.quad	0x3fee320b8066c2ad              # double 0.94360900000000003
	.quad	0x401933f316e37154              # double 6.300732
	.quad	0x3ffa4b9cb6848beb              # double 1.6434599999999999
	.quad	0x401c770b8cfbfc65              # double 7.1162549999999998
	.quad	0x4023725d6bebe165              # double 9.7233689999999999
	.quad	0x4020bbc9cd3e0bd4              # double 8.3667739999999994
	.quad	0x4020b23a29c779a7              # double 8.3481000000000005
	.quad	0x4010af4e4430b179              # double 4.1711970000000003
	.quad	0x400b2d23d4f15e7d              # double 3.3970410000000002
	.quad	0x40218122b7baecd0              # double 8.7522179999999992
	.quad	0x40219c9adc8fb86f              # double 8.8058689999999995
	.quad	0x40112a47a9e2bcf9              # double 4.2912889999999999
	.quad	0x4020b005814940bc              # double 8.3437920000000005
	.quad	0x4021868427418d69              # double 8.7627269999999999
	.quad	0x400529eb2074ea8e              # double 2.6454680000000002
	.quad	0x4019ac3504c48adf              # double 6.4181710000000001
	.quad	0x400831a437824d4d              # double 3.0242390000000001
	.quad	0x40221e50a45d41fa              # double 9.0592089999999992
	.quad	0x401faff6d330941d              # double 7.9218400000000004
	.quad	0x402337f2a172abef              # double 9.6092729999999999
	.quad	0x402388999dcb5782              # double 9.7667970000000004
	.quad	0x402310060780fdc1              # double 9.5312959999999993
	.quad	0x4022980cd855970b              # double 9.2969729999999995
	.quad	0x401bc94317acc4f0              # double 6.9465450000000004
	.quad	0x401045f394b7b289              # double 4.0683119999999997
	.quad	0x40059765fd8adaba              # double 2.698925
	.quad	0x4017cabef06b3786              # double 5.9479939999999996
	.quad	0x4012c41b75a74c0a              # double 4.6915110000000002
	.quad	0x402327fc7607c41a              # double 9.5780980000000007
	.quad	0x3fc002645e4e69f0              # double 0.12507299999999999
	.quad	0x402308c996b7670a              # double 9.517163
	.quad	0x401972ec28b2a6b1              # double 6.3622290000000001
	.quad	0x40059feeb2d0a244              # double 2.7030919999999998
	.quad	0x401db0ae10492360              # double 7.4225390000000004
	.quad	0x3ff55cebfec13b9f              # double 1.335186
	.quad	0x4019a143bf727137              # double 6.4074850000000003
	.quad	0x40197694898f605b              # double 6.3658010000000003
	.quad	0x401f512ad81adea9              # double 7.8292650000000003
	.quad	0x401f78b71b8aa002              # double 7.8678860000000004
	.quad	0x401ed30984e3ffef              # double 7.7060909999999998
	.quad	0x400ace71476af89c              # double 3.3508019999999998
	.quad	0x3fcffb8b26394fad              # double 0.249864
	.quad	0x401bea8650e77920              # double 6.9790279999999996
	.quad	0x3ffc0e379b77c02b              # double 1.753471
	.quad	0x3fb8fb224aada33c              # double 0.097582000000000002
	.quad	0x400abf0563ed0f62              # double 3.3432719999999998
	.quad	0x4021e22856605ee5              # double 8.9417139999999993
	.quad	0x40003dc8323358f3              # double 2.0301670000000001
	.quad	0x40036bfdb4cc2507              # double 2.4277299999999999
	.quad	0x40134c0ce91c8eac              # double 4.824268
	.quad	0x4012094f26aec072              # double 4.5090909999999997
	.quad	0x401c84727dcbddba              # double 7.1293430000000004
	.quad	0x402128a47ecfe9b8              # double 8.5793800000000005
	.quad	0x4018d052934acaff              # double 6.2034399999999996
	.quad	0x4023a2c8c5004fb1              # double 9.8179379999999998
	.quad	0x3fa2a369fcf3dc05              # double 0.036402999999999998
	.quad	0x4017303361565c2d              # double 5.7970709999999999
	.quad	0x40046e1049235f81              # double 2.5537420000000002
	.quad	0x3ff4e9424e592967              # double 1.306948
	.quad	0x4018d101b003686a              # double 6.2041079999999997
	.quad	0x4010a78140dd3fe2              # double 4.1635790000000004
	.quad	0x40173c2b0ea18373              # double 5.8087580000000001
	.quad	0x4023c2324c836651              # double 9.8792899999999992
	.quad	0x40204556084a515d              # double 8.1354220000000002
	.quad	0x401663d7d3910c2c              # double 5.5975029999999997
	.quad	0x4010334bd76ee73e              # double 4.0500939999999996
	.quad	0x3ffb0917d6b65a9b              # double 1.6897200000000001
	.quad	0x4009c49f51697f20              # double 3.2210070000000002
	.quad	0x3ff5d4e5d5b24e9c              # double 1.3644769999999999
	.quad	0x401de6bf444e0daa              # double 7.475339
	.quad	0x4021849e8815e397              # double 8.7590219999999999
	.quad	0x4021fbf1843c3a43              # double 8.9920770000000001
	.quad	0x3ffc4e4755ffe6d6              # double 1.7691110000000001
	.quad	0x3ff1bf993d5347a6              # double 1.1092770000000001
	.quad	0x40002eac8605681f              # double 2.0227900000000001
	.quad	0x401a75b5b70691ea              # double 6.6149509999999996
	.quad	0x3ff5e5a250f84018              # double 1.368563
	.quad	0x4008319ce075f6fd              # double 3.0242249999999999
	.quad	0x40232b018611fd59              # double 9.5839960000000008
	.quad	0x4020bf89c5e6ff7e              # double 8.374098
	.quad	0x401a84ab606b7aa2              # double 6.6295599999999997
	.quad	0x40132cd855970b4a              # double 4.7937940000000001
	.quad	0x4020afaca3619978              # double 8.3431139999999999
	.quad	0x4012369f05ea24cc              # double 4.5533409999999996
	.quad	0x401189f7b5aea316              # double 4.3847339999999999
	.quad	0x400e10a88effe2a4              # double 3.7581340000000001
	.quad	0x40144f4c2b51bd62              # double 5.077439
	.quad	0x400e5f3bea91d9b2              # double 3.7965010000000001
	.quad	0x3fe6486f049a9974              # double 0.69634200000000002
	.quad	0x40212649b1fab96f              # double 8.5747809999999998
	.quad	0x3ffc6ed99cbee808              # double 1.7770630000000001
	.quad	0x3fe0c2656abde3fc              # double 0.52373000000000003
	.quad	0x40183a72ead9274e              # double 6.0570789999999999
	.quad	0x3fe2831ceaf251c2              # double 0.57850500000000005
	.quad	0x400e48f190d173fb              # double 3.7856169999999998
	.quad	0x402114d0bb6ed677              # double 8.5406549999999992
	.quad	0x40081a06a6e32e38              # double 3.0127079999999999
	.quad	0x40016493c89f40a3              # double 2.1741100000000002
	.quad	0x4012ba43fe5c91d1              # double 4.6818999999999997
	.quad	0x401bcf38c5436b90              # double 6.9523650000000004
	.quad	0x4018509bb6aa4b99              # double 6.0787190000000004
	.quad	0x40114bdbe3c10518              # double 4.3240809999999996
	.quad	0x40209d9f6ec5b079              # double 8.3078570000000003
	.quad	0x4010072862f5989e              # double 4.0069900000000001
	.quad	0x3fdde4a38327674d              # double 0.46708
	.quad	0x401ded20afa2f05a              # double 7.4815699999999996
	.quad	0x401c5947cfa26a23              # double 7.0871880000000003
	.quad	0x3fe6691c8eabffce              # double 0.70033100000000004
	.quad	0x4022e37c1376d549              # double 9.4443059999999992
	.quad	0x4022270cdc8754f3              # double 9.0762699999999992
	.quad	0x4021c838194c0160              # double 8.8910529999999994
	.quad	0x4021da2a4db163bb              # double 8.9261040000000005
	.quad	0x401aef1b25f633ce              # double 6.7335019999999997
	.quad	0x3ffcf2f661f18ca0              # double 1.8093170000000001
	.quad	0x401686045baf533f              # double 5.6308759999999998
	.quad	0x4000ee4755ffe6d6              # double 2.1163470000000002
	.quad	0x4007bc5bd0e12e84              # double 2.9669720000000002
	.quad	0x401423f316e37154              # double 5.035107
	.quad	0x3feae4e26d4801f7              # double 0.84043999999999996
	.quad	0x40055ee807bbb624              # double 2.671341
	.quad	0x400c779420b3d4ae              # double 3.5583879999999999
	.quad	0x401b61700cd85597              # double 6.845154
	.quad	0x401f32aa19439de5              # double 7.7994770000000004
	.quad	0x3fea907b784662bb              # double 0.83013700000000001
	.quad	0x402148858ff75968              # double 8.6416439999999994
	.quad	0x401c15afaf859429              # double 7.0211779999999999
	.quad	0x4003390d9d7774ac              # double 2.4028580000000002
	.quad	0x40139d48cb4aec8d              # double 4.9035979999999997
	.quad	0x401005b573eab368              # double 4.0055750000000003
	.quad	0x401973cfb3311a54              # double 6.3630969999999998
	.quad	0x40095ebf22c01e69              # double 3.1712630000000002
	.quad	0x3fed0e64b2314014              # double 0.908007
	.quad	0x40021a8cdea033e8              # double 2.2629640000000002
	.quad	0x4016c22962cfd8f1              # double 5.6896110000000002
	.quad	0x4005ff7ced916873              # double 2.7497500000000001
	.quad	0x40034964e8b7e4de              # double 2.4108369999999999
	.quad	0x400d7db22d0e5604              # double 3.686375
	.quad	0x40018f1800a7c5ac              # double 2.1948699999999999
	.quad	0x400c1ef06b37867f              # double 3.515107
	.quad	0x3ffa46940357a355              # double 1.642231
	.quad	0x40215dc55000c954              # double 8.6831460000000006
	.quad	0x4022b4a771c970f8              # double 9.3528400000000004
	.quad	0x4017b7b99d451fc5              # double 5.9294190000000002
	.quad	0x4015a1b54195cc85              # double 5.4079179999999996
	.quad	0x40190b39192641b3              # double 6.2609599999999999
	.quad	0x3feaec9c0a8d21bc              # double 0.84138299999999999
	.quad	0x4022b7eb4a66559f              # double 9.3592169999999992
	.quad	0x401b7eb313be22e6              # double 6.8737300000000001
	.quad	0x4018cd0c80410300              # double 6.2002430000000004
	.quad	0x4020dab27cbf6e3f              # double 8.4271429999999992
	.quad	0x4015c57f737da61e              # double 5.442869
	.quad	0x4015c38327674d16              # double 5.4409299999999998
	.quad	0x3fce254a3c64345d              # double 0.235513
	.quad	0x3fe58e9707182236              # double 0.67365600000000003
	.quad	0x3ff2b543aeab7996              # double 1.169254
	.quad	0x400fec7219220ff5              # double 3.9904519999999999
	.quad	0x401c5b990afe60c4              # double 7.0894510000000004
	.quad	0x3ffc799f5dfeb8d8              # double 1.779693
	.quad	0x3ffed019f3c70c99              # double 1.9258059999999999
	.quad	0x4020d0096feb4a66              # double 8.4063219999999994
	.quad	0x401ab3ffac1d29dc              # double 6.6757799999999996
	.quad	0x40009141205bc01a              # double 2.0709249999999999
	.quad	0x401fb4ae85b9e8c4              # double 7.9264469999999996
	.quad	0x3fd5f23897204296              # double 0.34290900000000002
	.quad	0x40037ab9f559b3d0              # double 2.4349249999999998
	.quad	0x4014894d50ebaade              # double 5.1340839999999996
	.quad	0x4021ad9e6256366d              # double 8.8390989999999992
	.quad	0x400eb9008205ff1e              # double 3.8403330000000002
	.quad	0x402102089e34330d              # double 8.5039719999999992
	.quad	0x4010ba27ae9ab29e              # double 4.1817919999999997
	.quad	0x40115ef73c0c1fc9              # double 4.34274
	.quad	0x401c13beec39799e              # double 7.0192829999999997
	.quad	0x4011e2745bf26f1e              # double 4.4711470000000002
	.quad	0x3f983d790752da98              # double 0.023671999999999999
	.quad	0x40036a055757d5aa              # double 2.426768
	.quad	0x4011835bd512ec6c              # double 4.3782800000000002
	.quad	0x3ffa333764f11b61              # double 1.6375040000000001
	.quad	0x401adfa8b4bf8fcd              # double 6.7184169999999996
	.quad	0x3ffd65929670196e              # double 1.8372980000000001
	.quad	0x401f6eb24a6a875d              # double 7.8581019999999996
	.quad	0x40167bc408d8ec96              # double 5.6208650000000002
	.quad	0x401df5653c9abb02              # double 7.4896440000000002
	.quad	0x3fe23c558644523f              # double 0.56986499999999995
	.quad	0x4020207ca643cc08              # double 8.0634510000000006
	.quad	0x400b4b5c39bcba30              # double 3.411797
	.quad	0x40107d627bf61aa4              # double 4.1224460000000001
	.quad	0x3ff2ab4e9813879c              # double 1.1668229999999999
	.quad	0x4018cf69ca9ef523              # double 6.2025519999999998
	.quad	0x4001b06a2b1704ff              # double 2.2111399999999999
	.quad	0x3feb842528ae74f3              # double 0.85988100000000001
	.quad	0x3fb5ca8e2e2b8c76              # double 0.085122000000000003
	.quad	0x4003d142b302f72b              # double 2.4771779999999999
	.quad	0x400277995ee136e7              # double 2.3083979999999999
	.quad	0x40233f10a99b6f5d              # double 9.6231740000000005
	.quad	0x401d0fa8f7db6e50              # double 7.2652929999999998
	.quad	0x4021f597b30f8c65              # double 8.979673
	.quad	0x3ff7e1cde5d18091              # double 1.4926280000000001
	.quad	0x4007813a92a30553              # double 2.9380999999999999
	.quad	0x40178c98e53eb39a              # double 5.887302
	.quad	0x4006dd9231c64ba9              # double 2.8581889999999999
	.quad	0x4022dcc87980f55e              # double 9.4312170000000002
	.quad	0x4014b07c4199fe43              # double 5.1723489999999996
	.quad	0x4022df75b8130165              # double 9.4364450000000008
	.quad	0x3fe94a44c7b02d5a              # double 0.79031600000000002
	.quad	0x3ff7fca2120e1f7d              # double 1.4991779999999999
	.quad	0x3ffd565a14488c61              # double 1.833582
	.quad	0x3fb1f7e80389f83c              # double 0.070189000000000001
	.quad	0x401cc132b55ef1fe              # double 7.1886700000000001
	.quad	0x3ffe4bf2b239a390              # double 1.8935420000000001
	.quad	0x400233bfb58d1527              # double 2.2752680000000001
	.quad	0x4023aea37ac3eb7d              # double 9.8410910000000004
	.quad	0x401583910c2c5e2d              # double 5.3784830000000001
	.quad	0x401ea7c286f8ad25              # double 7.6638279999999996
	.quad	0x4011b9702e6644d8              # double 4.4310919999999996
	.quad	0x4023c02517e77d52              # double 9.8752829999999996
	.quad	0x4016fa3a08398a65              # double 5.7443619999999997
	.quad	0x401761af7d30ad47              # double 5.845396
	.quad	0x3fe48123810e8859              # double 0.640764
	.quad	0x4021c896dd26b724              # double 8.8917760000000001
	.quad	0x401c601de2691644              # double 7.0938639999999999
	.quad	0x3fb046b69db65ecc              # double 0.063578999999999997
	.quad	0x401a72f09d8c6d61              # double 6.6122459999999998
	.quad	0x4004e09bb6aa4b99              # double 2.6096720000000002
	.quad	0x40083ca3a4b5568f              # double 3.0296090000000002
	.quad	0x401e0eb851eb851f              # double 7.5143750000000002
	.quad	0x4007dfa7eb6bf445              # double 2.9842070000000001
	.quad	0x4019e3bff8a8f3aa              # double 6.4724120000000003
	.quad	0x40129b30f8c64fdb              # double 4.651554
	.quad	0x4004a5907d912557              # double 2.5808420000000001
	.quad	0x401d2fdfc19c1722              # double 7.2967519999999997
	.quad	0x4008b8255b035bd5              # double 3.089915
	.quad	0x3ffeac2acb85a4f0              # double 1.917033
	.quad	0x3ff5f035bd512ec7              # double 1.3711450000000001
	.quad	0x4012cf5d78811b1e              # double 4.7025050000000004
	.quad	0x402063f0dc768dfc              # double 8.1951970000000002
	.quad	0x400dbd0fa58f7122              # double 3.7173150000000001
	.quad	0x401f8f0aa21a719b              # double 7.8896889999999997
	.quad	0x400690129cbab64a              # double 2.8203480000000001
	.quad	0x4010eee136e71cda              # double 4.2332809999999998
	.quad	0x40163bdba0a52696              # double 5.5584550000000004
	.quad	0x401aef562174c4ce              # double 6.733727
	.quad	0x401287214f0520d1              # double 4.6319629999999998
	.quad	0x4013dc343b70ef56              # double 4.9650429999999997
	.quad	0x40182c6327ed84d3              # double 6.0433469999999998
	.quad	0x40147302f72b4528              # double 5.1123159999999999
	.quad	0x401880270f388228              # double 6.1251490000000004
	.quad	0x401425fe974a3401              # double 5.0371040000000002
	.quad	0x400090c9107faa04              # double 2.0706959999999999
	.quad	0x401579a8049667b6              # double 5.368805
	.quad	0x4019fb630a91537a              # double 6.495495
	.quad	0x40137141e9af5ba3              # double 4.8606030000000002
	.quad	0x401dd3a2df9378ee              # double 7.4566759999999999
	.quad	0x40194c36976bc1f0              # double 6.324427
	.quad	0x4013e682730c6717              # double 4.9751070000000004
	.quad	0x4000c44e0daa0cae              # double 2.0958519999999998
	.quad	0x4008a8f32378ab0d              # double 3.0824950000000002
	.quad	0x3fe6622a2c237479              # double 0.69948299999999997
	.quad	0x4019551b93037d63              # double 6.333113
	.quad	0x3fe14ccee5abc0e4              # double 0.54062600000000005
	.quad	0x4015a8b60f1b25f6              # double 5.4147569999999998
	.quad	0x400cfec679cc74b8              # double 3.6244019999999999
	.quad	0x40027d2c7b890d5a              # double 2.3111199999999998
	.quad	0x401a706a6e32e382              # double 6.6097809999999999
	.quad	0x400425ccc89b0ee5              # double 2.5184570000000002
	.quad	0x401a8b9b23dd54da              # double 6.6363339999999997
	.quad	0x401f2f81e8a2ec29              # double 7.7963940000000002
	.quad	0x3feb2b5a20ddc619              # double 0.84904199999999996
	.quad	0x401fb857f3061c7a              # double 7.9300230000000003
	.quad	0x3ff6c984e3ffef39              # double 1.424199
	.quad	0x3fce64ece9a2c669              # double 0.237455
	.quad	0x40069405f6ba0621              # double 2.8222770000000001
	.quad	0x3ffa0c2f837b4a23              # double 1.6279749999999999
	.quad	0x400ce87442c7fbad              # double 3.6135030000000001
	.quad	0x401210e347629521              # double 4.5164920000000004
	.quad	0x401260e6f2e8c048              # double 4.5946309999999997
	.quad	0x3ffb9b5525cc4263              # double 1.7254229999999999
	.quad	0x3fec05d0fa58f712              # double 0.87570999999999999
	.quad	0x40138ec8d5c74752              # double 4.8894380000000002
	.quad	0x40176dce7cd03537              # double 5.8572329999999999
	.quad	0x4011edaf8df7a4e8              # double 4.4821150000000003
	.quad	0x40117fc69728a611              # double 4.3747809999999996
	.quad	0x3fefc1bb8c32a8ca              # double 0.99239900000000003
	.quad	0x40234c8b0079a283              # double 9.6494979999999994
	.quad	0x40151e3476295209              # double 5.2794970000000001
	.quad	0x400838dcdb37c99b              # double 3.027765
	.quad	0x401c123bbc6eb0b8              # double 7.0178060000000002
	.quad	0x401a8129888f861a              # double 6.6261349999999997
	.quad	0x401f23b29a1b9f99              # double 7.7848610000000002
	.quad	0x401bcd883ba3443d              # double 6.9507149999999998
	.quad	0x400eb5421c044285              # double 3.8385050000000001
	.quad	0x401294e0114d2f5e              # double 4.6453860000000002
	.quad	0x3ffae0c6b484d76b              # double 1.6798770000000001
	.quad	0x4011dde00d1b7176              # double 4.4666750000000004
	.quad	0x3fe7857d1782d384              # double 0.73504499999999995
	.quad	0x401b96dacabc5155              # double 6.8973190000000004
	.quad	0x40090379b77c02b0              # double 3.1266970000000001
	.quad	0x400aa5abc0e38a7e              # double 3.3308939999999998
	.quad	0x4021f4dfefbf401c              # double 8.9782709999999994
	.quad	0x3ff31c1c6088d6d4              # double 1.1943630000000001
	.quad	0x40212aeb1c432ca5              # double 8.5838249999999992
	.quad	0x402032e89eba6aca              # double 8.0994309999999992
	.quad	0x4017e2deca2552a0              # double 5.9715530000000001
	.quad	0x4019e1fbc5de9c02              # double 6.4706869999999999
	.quad	0x401f43f034b0e1b5              # double 7.8163460000000002
	.quad	0x4015f81d7dbf4880              # double 5.4923000000000002
	.quad	0x4007f30a4e379b78              # double 2.9936720000000001
	.quad	0x4021b9b6b2af1455              # double 8.8627219999999998
	.quad	0x400c6c0c62e4d1a6              # double 3.5527579999999999
	.quad	0x401658e25c810a57              # double 5.5868010000000004
	.quad	0x40224769a91105e2              # double 9.1394780000000004
	.quad	0x3feb3fb9bed30f06              # double 0.85152899999999998
	.quad	0x401a6d9e40c8472c              # double 6.6070489999999999
	.quad	0x3ffcc254a3c64346              # double 1.797444
	.quad	0x40099aa1d755bccb              # double 3.200504
	.quad	0x4013674927913e81              # double 4.8508649999999998
	.quad	0x40193881e4712e41              # double 6.3051830000000004
	.quad	0x402015e4e69f05ea              # double 8.0427619999999997
	.quad	0x4015eece9a2c6690              # double 5.4832099999999997
	.quad	0x402213b0e5e67946              # double 9.0384589999999996
	.quad	0x4009496a26e54717              # double 3.160847
	.quad	0x401824528283d35f              # double 6.0354710000000003
	.quad	0x3fea6fed634549b6              # double 0.82616299999999998
	.quad	0x401614dca8e2e2b9              # double 5.5203730000000002
	.quad	0x402191c62a1b5c7d              # double 8.7847150000000003
	.quad	0x402311ccfaeff5c7              # double 9.5347670000000004
	.quad	0x400bba8bd230b9dc              # double 3.4660869999999999
	.quad	0x401c183947496aad              # double 7.0236559999999999
	.quad	0x401c68ab4fa48302              # double 7.1022160000000003
	.quad	0x40091ce9e5e24788              # double 3.1391179999999999
	.quad	0x40103577963992c9              # double 4.0522140000000002
	.quad	0x4017853b8e4b87be              # double 5.8801100000000002
	.quad	0x3ff1b7079e59f2bb              # double 1.1071850000000001
	.quad	0x4000a68900c521de              # double 2.0813160000000002
	.quad	0x401f38c32a8c9b84              # double 7.8054319999999997
	.quad	0x40065869835158b8              # double 2.7931699999999999
	.quad	0x4022259791819d24              # double 9.0734220000000007
	.quad	0x402217cefaa4766c              # double 9.0465009999999992
	.quad	0x3fd642e9899bf594              # double 0.34783399999999998
	.quad	0x3fd6d948dc11e42e              # double 0.357012
	.quad	0x40179d8e0008637c              # double 5.9038620000000002
	.quad	0x4013be83a109d063              # double 4.9360489999999997
	.quad	0x40115a29845dc832              # double 4.3380489999999998
	.quad	0x400b5a4d6e47dc38              # double 3.4190930000000002
	.quad	0x401d34766c6de764              # double 7.3012329999999999
	.quad	0x40031246bf01322f              # double 2.3839239999999999
	.quad	0x4019cb4959e62563              # double 6.4485219999999996
	.quad	0x401a3c2c5e2cdc01              # double 6.5587629999999999
	.quad	0x400ebe15ca6ca03c              # double 3.8428149999999999
	.quad	0x4006d7c1bda5119d              # double 2.8553500000000001
	.quad	0x4001af2d7f950b95              # double 2.2105359999999998
	.quad	0x401332b1b36bd2b7              # double 4.799506
	.quad	0x4021e125fe974a34              # double 8.9397429999999999
	.quad	0x3f7fd7a13c254a3c              # double 0.0077739999999999997
	.quad	0x40206b1db445ed4a              # double 8.2092109999999998
	.quad	0x401ae102ff8ec0f9              # double 6.7197380000000004
	.quad	0x401216abde3fbbd8              # double 4.5221400000000003
	.quad	0x4020c4bf6e3f78bc              # double 8.3842730000000003
	.quad	0x401a43c8e25c810a              # double 6.5661959999999997
	.quad	0x4008f63cb8173322              # double 3.1202329999999998
	.quad	0x4011373083558a76              # double 4.3038959999999999
	.quad	0x401d2430f49491f3              # double 7.2853430000000001
	.quad	0x401d4a4ce8101f32              # double 7.322559
	.quad	0x3ff9f1c864883fd5              # double 1.621529
	.quad	0x3fff69b17481b21c              # double 1.9633039999999999
	.quad	0x3fff992d98bf7f06              # double 1.9748969999999999
	.quad	0x401f1e392e1ef73c              # double 7.779515
	.quad	0x401e3a6efc371da3              # double 7.5570639999999995
	.quad	0x400540d9945b6c37              # double 2.6566649999999998
	.quad	0x40220171e29b6b2b              # double 9.0028220000000001
	.quad	0x40179c6da4484945              # double 5.9027620000000001
	.quad	0x40066c2ce4649907              # double 2.8028200000000001
	.quad	0x4016a25918a009f6              # double 5.6585429999999999
	.quad	0x4012714727dcbddc              # double 4.6106230000000004
	.quad	0x401b37b784662bae              # double 6.804411
	.quad	0x4017a331e3a7daa5              # double 5.90937
	.quad	0x4015b861a60d4563              # double 5.4300600000000001
	.quad	0x402018ce0b912dba              # double 8.0484469999999995
	.quad	0x4011a51116a8b8f1              # double 4.4111979999999997
	.quad	0x40232a1d96e9bbf1              # double 9.5822570000000002
	.quad	0x4014298bf7f06706              # double 5.0405730000000002
	.quad	0x40036c729f59ccfb              # double 2.427953
	.quad	0x4020ffc957cd466f              # double 8.4995829999999994
	.quad	0x3ff79d50a88effe3              # double 1.4759070000000001
	.quad	0x3fcc64ba94bbe447              # double 0.22182399999999999
	.quad	0x40228d0a24463066              # double 9.275468
	.quad	0x3fedda07b352a844              # double 0.93286500000000005
	.quad	0x3fd9dc0980b24207              # double 0.404055
	.quad	0x4021c397bb730835              # double 8.8820169999999994
	.quad	0x40231839ef0f16f4              # double 9.5473169999999996
	.quad	0x401eb70d62bf11f9              # double 7.6787619999999998
	.quad	0x40228a9670196d8f              # double 9.2706789999999994
	.quad	0x3fdcdd7a99fa11a9              # double 0.45101799999999997
	.quad	0x3fc872c94b380cb7              # double 0.19100300000000001
	.quad	0x4021c72e275ab7dc              # double 8.8890239999999991
	.quad	0x4019a4abe6a337a8              # double 6.410812
	.quad	0x3fff59d66adb402d              # double 1.959433
	.quad	0x3fea814940bbb1f2              # double 0.82828199999999996
	.quad	0x3fefe3b03e20ccff              # double 0.99654399999999998
	.quad	0x4001c88ce703afb8              # double 2.222925
	.quad	0x3fdc542a23bff8a9              # double 0.442637
	.quad	0x4013326809d49518              # double 4.7992249999999999
	.quad	0x401c24f8b588e369              # double 7.0361050000000001
	.quad	0x40093758e219652c              # double 3.1520250000000001
	.quad	0x4011d76ff3ade226              # double 4.460388
	.quad	0x4002ac2ce4649907              # double 2.3340700000000001
	.quad	0x4016b2edfe75bc45              # double 5.6747360000000002
	.quad	0x3fe217d6b65a9a80              # double 0.56540999999999997
	.quad	0x4013b064a9cdc444              # double 4.9222590000000004
	.quad	0x4010848e4755ffe7              # double 4.1294490000000001
	.quad	0x401871d4738a3b58              # double 6.1111620000000002
	.quad	0x4003098a222d5172              # double 2.3796580000000001
	.quad	0x4014a01e68a0d34a              # double 5.1563660000000002
	.quad	0x40123fe260b2c83f              # double 4.5623870000000002
	.quad	0x40086036006d0d4a              # double 3.0469780000000002
	.quad	0x4009669057d1782d              # double 3.1750799999999999
	.quad	0x4020f458cd20afa3              # double 8.4772400000000001
	.quad	0x4009e187a4a48f97              # double 3.2351220000000001
	.quad	0x400ff7e4de3b8a1a              # double 3.9960420000000001
	.quad	0x4022b75a31a4bdba              # double 9.3581099999999999
	.quad	0x40227671ef30a4e3              # double 9.2313379999999992
	.quad	0x40213c5e6ff7dfa0              # double 8.6179079999999999
	.quad	0x3ff2a598e10cf5b2              # double 1.165429
	.quad	0x4019736976bc1f00              # double 6.3627070000000003
	.quad	0x4010d198f1d3ed52              # double 4.2046849999999996
	.quad	0x4013e0b5aa715832              # double 4.9694430000000001
	.quad	0x40217f6c2699c7bd              # double 8.7488720000000004
	.quad	0x4003ba5c1c6088d7              # double 2.4659960000000001
	.quad	0x40227eb00ffda405              # double 9.2474369999999997
	.quad	0x401e5dcf893faf42              # double 7.5916119999999996
	.quad	0x4020de81882adc4d              # double 8.4345820000000007
	.quad	0x401e03f9a49c2c1b              # double 7.5038819999999999
	.quad	0x400fdd933e35c5b5              # double 3.9831910000000001
	.quad	0x4020eba860dcb9aa              # double 8.4602690000000003
	.quad	0x402393111f0c34c2              # double 9.7872400000000006
	.quad	0x401a89873ffac1d3              # double 6.6343050000000003
	.quad	0x3ffaad03d9a95422              # double 1.6672400000000001
	.quad	0x40161148ba83f4ed              # double 5.5168790000000003
	.quad	0x3ff98d9e83e425af              # double 1.597075
	.quad	0x401c0f4906034f40              # double 7.0149270000000001
	.quad	0x4012974c8ffb8b26              # double 4.6477529999999998
	.quad	0x40079de5082cf52c              # double 2.9520970000000002
	.quad	0x401bf330941c8217              # double 6.9874900000000002
	.quad	0x4017ab0856e696a2              # double 5.9170239999999996
	.quad	0x402060e79aae6c8f              # double 8.1892669999999992
	.quad	0x3ff4d2ba16e7a312              # double 1.301447
	.quad	0x3ffdc70329802c0a              # double 1.8610869999999999
	.quad	0x4022e4dea033e78e              # double 9.4470109999999998
	.quad	0x401dbc15d2d01c0d              # double 7.4336770000000003
	.quad	0x400a3952d234eb9a              # double 3.27799
	.quad	0x3ffe60221426fe72              # double 1.8984700000000001
	.quad	0x4014ce6e653868fd              # double 5.2015929999999999
	.quad	0x40097b66f9335d25              # double 3.1852550000000002
	.quad	0x40052f6c69b5a640              # double 2.6481560000000002
	.quad	0x3ffbc36006d0d499              # double 1.7351989999999999
	.quad	0x4008338a3b57c4e3              # double 3.025166
	.quad	0x401bdd0c80410300              # double 6.9658680000000004
	.quad	0x401111b3f20a73f7              # double 4.2672879999999997
	.quad	0x4023b410f94c8798              # double 9.8516919999999998
	.quad	0x40125a7eb6bf444e              # double 4.588374
	.quad	0x40150d4845132f88              # double 5.2629710000000003
	.quad	0x401986837f7be122              # double 6.3813610000000001
	.quad	0x400aea79bbadc098              # double 3.36449
	.quad	0x4023c3c6eb0b7c35              # double 9.8823769999999999
	.quad	0x3ff001c2e33eff19              # double 1.0004299999999999
	.quad	0x402370adab9f559b              # double 9.7200749999999995
	.quad	0x402275aad601ffb5              # double 9.2298190000000009
	.quad	0x4010d1eb4202d9cf              # double 4.2049989999999999
	.quad	0x40219c80a5accd53              # double 8.805669
	.quad	0x401e572862f5989e              # double 7.5851150000000001
	.quad	0x3fda327674d16335              # double 0.40933000000000003
	.quad	0x4003401eeed8904f              # double 2.4063089999999998
	.quad	0x40177d96e9bbf0dc              # double 5.8726459999999996
	.quad	0x401fc5e6bc621b7e              # double 7.943263
	.quad	0x4014d3f5f91600f3              # double 5.2069929999999998
	.quad	0x40215e25a682b628              # double 8.6838809999999995
	.quad	0x4020055219a847b2              # double 8.0103919999999995
	.quad	0x4017dc21e1d2178f              # double 5.9649729999999996
	.quad	0x3ff8c15e39713ad6              # double 1.5472090000000001
	.quad	0x4020fa7b9170d62c              # double 8.4892240000000001
	.quad	0x401d918372e6a769              # double 7.3921029999999996
	.quad	0x40082c1d29dc725c              # double 3.0215399999999999
	.quad	0x40037d955714b9cb              # double 2.4363199999999998
	.quad	0x401b54a44c7b02d6              # double 6.8326580000000003
	.quad	0x3fe04a2db61bb060              # double 0.50905500000000004
	.quad	0x4022683a109d0636              # double 9.2035680000000006
	.quad	0x40106daf8df7a4e8              # double 4.1071150000000003
	.quad	0x4013e8f7db6e5040              # double 4.9775080000000003
	.quad	0x3fefba732df505d1              # double 0.99151
	.quad	0x40216e5eaab04253              # double 8.7155660000000008
	.quad	0x3fc6bccf28c79f66              # double 0.17763699999999999
	.quad	0x40239b1bbcf4e875              # double 9.8029460000000003
	.quad	0x3fcb035bd512ec6c              # double 0.21104000000000001
	.quad	0x400e1229e90795f6              # double 3.7588689999999998
	.quad	0x4023e9dffc5479d5              # double 9.9567870000000002
	.quad	0x3ff058cb07d0aeda              # double 1.0216780000000001
	.quad	0x400a2a51e321a2e8              # double 3.270664
	.quad	0x40220c080f98fa37              # double 9.0234989999999993
	.quad	0x4023e308787485e4              # double 9.9434240000000002
	.quad	0x4014616b54e2b064              # double 5.0951360000000001
	.quad	0x400a0d19dece5711              # double 3.2563970000000002
	.quad	0x401808e53eb399f6              # double 6.0086870000000001
	.quad	0x401cc26b723ee1bd              # double 7.1898629999999999
	.quad	0x3ff5a0daa0cae643              # double 1.3517710000000001
	.quad	0x401eb65492ff4ba5              # double 7.6780569999999999
	.quad	0x400763c18b502abb              # double 2.9237090000000001
	.quad	0x3ff0fc6da4484945              # double 1.061628
	.quad	0x3fc6edc3bd599243              # double 0.17913100000000001
	.quad	0x4003a37f7be121ee              # double 2.4548329999999998
	.quad	0x3ff00507a6bd6e8b              # double 1.001228
	.quad	0x40053d2391d57ffa              # double 2.6548530000000001
	.quad	0x3ff6915054ac29bf              # double 1.410477
	.quad	0x4021912af9a8cdea              # double 8.783531
	.quad	0x4023e83b60285ec4              # double 9.9535780000000002
	.quad	0x401604f5d35653ca              # double 5.5048440000000003
	.quad	0x401cf945b6c3760c              # double 7.24343
	.quad	0x402306ff9f87f024              # double 9.5136690000000001
	.quad	0x4020c2a044ae85ba              # double 8.3801290000000002
	.quad	0x4023568405b39e28              # double 9.6689760000000006
	.quad	0x4015fc8711d798d9              # double 5.4966090000000003
	.quad	0x3ff2dae3e6c4c597              # double 1.1784399999999999
	.quad	0x3ff02cbc8c0ce91d              # double 1.0109220000000001
	.quad	0x400e66cfc829cfdd              # double 3.8002009999999999
	.quad	0x4008b57a355043e5              # double 3.0886119999999999
	.quad	0x401464013ec460ee              # double 5.0976610000000004
	.quad	0x40130e9c886162f1              # double 4.7642689999999996
	.quad	0x4008450acc0bdcad              # double 3.033712
	.quad	0x4016051c9f72f76e              # double 5.5049919999999997
	.quad	0x40088e957470eb25              # double 3.0696210000000002
	.quad	0x3ff6afbd273d5bab              # double 1.417905
	.quad	0x4010687df5cf2496              # double 4.1020430000000001
	.quad	0x401f79d99029ae4f              # double 7.8689939999999998
	.quad	0x4005e8b97785729b              # double 2.7386349999999999
	.quad	0x3fd108d8ec95bff0              # double 0.26616499999999998
	.quad	0x400dd48c2e770bd0              # double 3.728783
	.quad	0x3ffa503c8e25c811              # double 1.6445890000000001
	.quad	0x3ff13d07c84b5dcc              # double 1.0773999999999999
	.quad	0x4020965082cf52b9              # double 8.2935829999999999
	.quad	0x40114b599aa60914              # double 4.3235840000000003
	.quad	0x3fbdf19d66adb403              # double 0.116968
	.quad	0x4023189d8c6d612c              # double 9.5480769999999992
	.quad	0x401d70029f16b11c              # double 7.3593849999999996
	.quad	0x4021327807789a46              # double 8.5985720000000008
	.quad	0x40075fe542e557de              # double 2.921824
	.quad	0x4020d139eadd590c              # double 8.4086449999999999
	.quad	0x40210bbf50e34763              # double 8.5229440000000007
	.quad	0x3fe992018a43bb41              # double 0.79907300000000003
	.quad	0x400312617c1bda51              # double 2.383975
	.quad	0x4019400b02928177              # double 6.3125419999999997
	.quad	0x4020a55432873bc9              # double 8.322908
	.quad	0x4016d2c669057d18              # double 5.7058350000000004
	.quad	0x4021d39ef0f16f44              # double 8.9133220000000008
	.quad	0x3fd3fa9c12f09d8c              # double 0.31217099999999998
	.quad	0x4003fded6ba8c587              # double 2.4989880000000002
	.quad	0x40169ec02f2f9874              # double 5.65503
	.quad	0x401be6af89c5e6ff              # double 6.9752789999999996
	.quad	0x400256a7264a16a5              # double 2.2923110000000002
	.quad	0x4014e3b9ae0c1765              # double 5.2223879999999996
	.quad	0x4010dec0f88333fd              # double 4.2175330000000004
	.quad	0x40093a72a7bd48cb              # double 3.1535389999999999
	.quad	0x4022bfcd466f501a              # double 9.3746130000000001
	.quad	0x401a42873bc903ea              # double 6.5649689999999996
	.quad	0x3ffb3e920c069e80              # double 1.7027760000000001
	.quad	0x4010f1da7b0b3919              # double 4.2361849999999999
	.quad	0x4023c6f5ec80c73b              # double 9.8885950000000004
	.quad	0x40196d86ec17ebaf              # double 6.3569599999999999
	.quad	0x4005bbf8b9baa151              # double 2.7167829999999999
	.quad	0x3fff44f09528f191              # double 1.954331
	.quad	0x4009ab4b72c5197a              # double 3.2086399999999999
	.quad	0x4023a859c8c9320e              # double 9.8288100000000007
	.quad	0x40190a02fb5d0310              # double 6.2597769999999997
	.quad	0x40231de4c51116a9              # double 9.5583860000000004
	.quad	0x401de31055b89939              # double 7.4717419999999999
	.quad	0x40188008a697aede              # double 6.1250330000000002
	.quad	0x4004fe82517e77d5              # double 2.6242719999999999
	.quad	0x4013a0a2014727dd              # double 4.9068680000000002
	.quad	0x400a3d4b6a619daa              # double 3.2799290000000001
	.quad	0x400fed0678c0053e              # double 3.9907349999999999
	.quad	0x3fe459fb1e18efbb              # double 0.63598399999999999
	.quad	0x4002ec48adeebb34              # double 2.3653729999999999
	.quad	0x3ff65492ff4ba51a              # double 1.395648
	.quad	0x3fd221d96e9bbf0e              # double 0.28331600000000001
	.quad	0x4023afdc37a3db3c              # double 9.843477
	.quad	0x40205092684cf074              # double 8.1573670000000007
	.quad	0x3fe5c29e0a41a262              # double 0.68000700000000003
	.quad	0x4012cf401c4fc1df              # double 4.7023929999999998
	.quad	0x402165710880d802              # double 8.6981280000000005
	.quad	0x401bbe63e8dda48b              # double 6.9359279999999996
	.quad	0x3ff3b496aad1d042              # double 1.231589
	.quad	0x4021df9d909f1f15              # double 8.9367490000000007
	.quad	0x3ffee75579af1887              # double 1.931478
	.quad	0x4018aaf31b152f3c              # double 6.1669429999999998
	.quad	0x3fda733a8a3f8983              # double 0.41328300000000001
	.quad	0x3fc0b2d0a2446306              # double 0.13045699999999999
	.quad	0x40068834d26fa3fd              # double 2.8165070000000001
	.quad	0x4007fbb4916ca46e              # double 2.997903
	.quad	0x3fb7d944aa53fc01              # double 0.093159000000000006
	.quad	0x40141acd9e83e426              # double 5.0261750000000003
	.quad	0x4021403d35eb7458              # double 8.6254670000000004
	.quad	0x401a552ce032db1f              # double 6.5831790000000003
	.quad	0x3ff5b3acd5b6805a              # double 1.356366
	.quad	0x400537f950b955f8              # double 2.6523310000000002
	.quad	0x4001ffd5885d3133              # double 2.2499189999999998
	.quad	0x3fd937867f0aa21a              # double 0.39401399999999998
	.quad	0x400a1e43ed959a31              # double 3.2647780000000002
	.quad	0x40186ce3de6149c7              # double 6.106338
	.quad	0x400ff5c182ecaeea              # double 3.9949979999999998
	.quad	0x4017ad7e45803cd1              # double 5.9194269999999998
	.quad	0x3fdbe59f2ba9d1f6              # double 0.43589
	.quad	0x40065c2e33eff195              # double 2.79501
	.quad	0x402267765fd8adac              # double 9.2020750000000006
	.quad	0x4021dac1f42bb667              # double 8.9272609999999997
	.quad	0x402343e63e8dda49              # double 9.6326160000000005
	.quad	0x40109bcc6c54bcf1              # double 4.1521470000000003
	.quad	0x4009ecbe1eb4202e              # double 3.2405970000000002
	.quad	0x401b31248d7e0264              # double 6.7979909999999997
	.quad	0x40217acc0bdcad15              # double 8.7398380000000007
	.quad	0x4012452bd3c36113              # double 4.5675499999999998
	.quad	0x401803c3a42f1ed1              # double 6.0036759999999996
	.quad	0x40164c59fb1e18f0              # double 5.5745620000000002
	.quad	0x400ef64e054690de              # double 3.870266
	.quad	0x3fe1f89613d31b9b              # double 0.56159499999999996
	.quad	0x3fa73fb7a5f41aef              # double 0.045407999999999997
	.quad	0x3fd089e34330d738              # double 0.25841599999999998
	.quad	0x4013da5a469d7343              # double 4.9632350000000001
	.quad	0x400ecd86ec17ebaf              # double 3.850355
	.quad	0x3ff313c46d82ba5a              # double 1.192326
	.quad	0x400cdd97f62b6ae8              # double 3.6082000000000001
	.quad	0x40127f2c7325918a              # double 4.624193
	.quad	0x40194e2ef4e0114d              # double 6.3263509999999998
	.quad	0x401da84ec636b096              # double 7.4143629999999998
	.quad	0x402305f2452c59fb              # double 9.5116139999999997
	.quad	0x40197dfdef8487ba              # double 6.3730390000000003
	.quad	0x401e20b630a91538              # double 7.5319450000000003
	.quad	0x4002473e681a9b8d              # double 2.2847870000000001
	.quad	0x40196eb4e981387a              # double 6.3581120000000002
	.quad	0x401d0927913e8145              # double 7.2589399999999999
	.quad	0x401292231832fcad              # double 4.6427120000000004
	.quad	0x3fac2ca148ba83f5              # double 0.055028000000000001
	.quad	0x400cfdb1209edbf9              # double 3.6238730000000001
	.quad	0x4012f317acc4ef89              # double 4.7373950000000002
	.quad	0x3fc2f52b90a78290              # double 0.14810699999999999
	.quad	0x401552f33ca31e7e              # double 5.3310060000000004
	.quad	0x401c42f6e82949a5              # double 7.0653949999999996
	.quad	0x40213b71da37ef5b              # double 8.6161030000000007
	.quad	0x40164bac2df0d413              # double 5.5738989999999999
	.quad	0x40226fd04a2fcefb              # double 9.2183860000000006
	.quad	0x4017501ffb480a5b              # double 5.8282470000000002
	.quad	0x3ffa3945308bb906              # double 1.6389819999999999
	.quad	0x40222eaa2a0a9585              # double 9.0911419999999996
	.quad	0x4010c6eb4e981388              # double 4.1942570000000003
	.quad	0x40003c5479d4d834              # double 2.029458
	.quad	0x400c33da72a7bd49              # double 3.5253190000000001
	.quad	0x4013cbc8c0ce91c9              # double 4.9490080000000001
	.quad	0x4019980a5accd530              # double 6.3984769999999997
	.quad	0x400541ecd4aa10e0              # double 2.6571899999999999
	.quad	0x401f2e6b8305d95e              # double 7.7953320000000001
	.quad	0x4003015ebfa8f7db              # double 2.3756689999999998
	.quad	0x401632ec6bce8534              # double 5.5497300000000003
	.quad	0x4006571f36262cba              # double 2.7925399999999998
	.quad	0x401c64751ce28ed6              # double 7.0981030000000001
	.quad	0x4022b45b291b823d              # double 9.3522580000000008
	.quad	0x3ff946c97d8cf399              # double 1.579782
	.quad	0x3fe87082491afc05              # double 0.76373400000000002
	.quad	0x401eb308787485e4              # double 7.6748370000000001
	.quad	0x4011a6559f6ec5b0              # double 4.4124359999999996
	.quad	0x4020a3d44998d046              # double 8.319979
	.quad	0x3ff50f5c28f5c28f              # double 1.3162499999999999
	.quad	0x400eb6ea4228997c              # double 3.8393139999999999
	.quad	0x40160c84f8f8a4c2              # double 5.5122260000000001
	.quad	0x401a4bad7d7c2ca1              # double 6.5739039999999997
	.quad	0x3fdd4bd76ee73e68              # double 0.45775399999999999
	.quad	0x4010e9157abb8801              # double 4.2276210000000001
	.quad	0x40207eaca7935760              # double 8.2474109999999996
	.quad	0x4014a67caea747d8              # double 5.162585
	.quad	0x401edfeda6612839              # double 7.7186799999999999
	.quad	0x3ff243cd141a6938              # double 1.141553
	.quad	0x4008b7ff9b56323c              # double 3.0898430000000001
	.quad	0x400f1f8a0902de01              # double 3.8904000000000001
	.quad	0x3ff2b44b2b777d0f              # double 1.169017
	.quad	0x4015f73c0c1fc8f3              # double 5.4914399999999999
	.quad	0x4016c90d173fb7a6              # double 5.696339
	.quad	0x3ff01a250f840182              # double 1.006383
	.quad	0x4015c8fc0d2c386d              # double 5.4462739999999998
	.quad	0x4018b91d9b1b79d9              # double 6.180777
	.quad	0x401bb41cc532a498              # double 6.925891
	.quad	0x3fe09578a2a90cd4              # double 0.51824599999999998
	.quad	0x4000b6a6a012599f              # double 2.0891850000000001
	.quad	0x40233ce0fc2eba28              # double 9.6189040000000005
	.quad	0x401f54ad794a6eb9              # double 7.8326929999999999
	.quad	0x401cc1858bc59b80              # double 7.1889859999999999
	.quad	0x3ffa949e8815e397              # double 1.661284
	.quad	0x3fed8476f2a5a46a              # double 0.92242000000000002
	.quad	0x3fc303c8e25c810a              # double 0.14855299999999999
	.quad	0x40051810e8858ff7              # double 2.6367509999999998
	.quad	0x4016bf92af9a8cdf              # double 5.6870830000000003
	.quad	0x40025d41fa765343              # double 2.2955359999999998
	.quad	0x4020a777d0f1f57b              # double 8.3270859999999995
	.quad	0x3ff8e33eff195033              # double 1.55548
	.quad	0x4021e504c48adeec              # double 8.9473020000000005
	.quad	0x4022d2e536501e26              # double 9.4119050000000009
	.quad	0x4008edab9f559b3d              # double 3.11605
	.quad	0x40038493c89f40a3              # double 2.4397350000000002
	.quad	0x4022313c68661ae7              # double 9.0961639999999999
	.quad	0x400fbb4fe79ee02a              # double 3.9664609999999998
	.quad	0x40193a033e78e193              # double 6.3066529999999998
	.quad	0x3fc1517a46173b86              # double 0.135299
	.quad	0x401ba4f26aec0725              # double 6.9110810000000003
	.quad	0x40127864020817fc              # double 4.6175689999999996
	.quad	0x401df8476f2a5a47              # double 7.4924600000000003
	.quad	0x4013d144cbe1eb42              # double 4.954364
	.quad	0x40125832fcac8e69              # double 4.5861320000000001
	.quad	0x3ff1b20535c9e668              # double 1.1059619999999999
	.quad	0x400e1814940bbb1f              # double 3.7617579999999999
	.quad	0x4011722ccb3a2596              # double 4.3614990000000002
	.quad	0x3fd1c3bd5992428d              # double 0.27757199999999999
	.quad	0x3ff9deca25529fe0              # double 1.616892
	.quad	0x4020d95b78cc9a78              # double 8.4245260000000002
	.quad	0x3ffcc4230fcf80dc              # double 1.797885
	.quad	0x40029ac4f7ec3548              # double 2.3255710000000001
	.quad	0x401e3743e963dc48              # double 7.5539699999999996
	.quad	0x40127e54f7a91969              # double 4.6233709999999997
	.quad	0x400676a26e547171              # double 2.8079269999999998
	.quad	0x3fb7221858bc59b8              # double 0.090364
	.quad	0x3fd40c1333b96af0              # double 0.31323699999999999
	.quad	0x40194aa4fca42aed              # double 6.3228949999999999
	.quad	0x4006e5ce5b4245f6              # double 2.8622100000000001
	.quad	0x401ac1a3b14a9047              # double 6.689101
	.quad	0x3fe77f10ecb74de0              # double 0.73426100000000005
	.quad	0x3ffcb88db0574b40              # double 1.7950569999999999
	.quad	0x40199a2fcefaa476              # double 6.4005729999999996
	.quad	0x402129af9ebe9c88              # double 8.5814179999999993
	.quad	0x3ffd788b9778572a              # double 1.8419300000000001
	.quad	0x4022cec2acb85a4f              # double 9.4038289999999999
	.quad	0x40137133c1ce6c09              # double 4.8605489999999998
	.quad	0x4021bd8969a0ad8a              # double 8.8701889999999999
	.quad	0x40211440af1cb89d              # double 8.5395559999999993
	.quad	0x401b046bacf74470              # double 6.7543170000000003
	.quad	0x401506084a515cea              # double 5.2558910000000001
	.quad	0x401b47460242d05f              # double 6.8196029999999999
	.quad	0x400e949be8ff327b              # double 3.8225630000000002
	.quad	0x3ffeb393ab430f49              # double 1.9188419999999999
	.quad	0x4010bca1cef240fb              # double 4.1842110000000003
	.quad	0x400b97e996312f4d              # double 3.449176
	.quad	0x4022bd7cf5f4e443              # double 9.3700939999999999
	.quad	0x3feccf2ae07e5a79              # double 0.90028900000000001
	.quad	0x4020b54aa10e0221              # double 8.3540849999999995
	.quad	0x40125dd7a99fa11b              # double 4.5916430000000004
	.quad	0x401d53250b52439a              # double 7.3311960000000003
	.quad	0x40164e08f2170931              # double 5.576206
	.quad	0x401f3a01eeed8905              # double 7.806648
	.quad	0x3ff7566cf41f212d              # double 1.4585999999999999
	.quad	0x3ff9c6c00da1a933              # double 1.6110230000000001
	.quad	0x4022fdb6e503fb37              # double 9.4955359999999995
	.quad	0x4021e365881a1555              # double 8.944134
	.quad	0x3fe660dcb9a9da59              # double 0.69932399999999995
	.quad	0x40174ffb04ee7c4a              # double 5.828106
	.quad	0x40217fbbb62413db              # double 8.7494789999999991
	.quad	0x4020380fdc1615ec              # double 8.109496
	.quad	0x401536106ab14ec2              # double 5.302797
	.quad	0x40105ad85dfa871a              # double 4.0887159999999998
	.quad	0x401e850efdc9c4db              # double 7.6299400000000003
	.quad	0x401113543aeab799              # double 4.2688759999999997
	.quad	0x402176516db0dd83              # double 8.73109
	.quad	0x40179672b884406c              # double 5.896922
	.quad	0x3ffe2f566490a351              # double 1.886557
	.quad	0x40141467381d7dbf              # double 5.0199249999999997
	.quad	0x40228f3fd933e35c              # double 9.2797839999999993
	.quad	0x40194098d477bbf9              # double 6.3130829999999998
	.quad	0x40132c868b9fdbd3              # double 4.793482
	.quad	0x401556c82e019b0b              # double 5.3347480000000003
	.quad	0x400c409a24031487              # double 3.5315439999999998
	.quad	0x3fd9be37de939eae              # double 0.40223500000000001
	.quad	0x4010a6ef3d3a1d32              # double 4.1630219999999998
	.quad	0x4010371fff79c843              # double 4.053833
	.quad	0x4021779aae6c8f75              # double 8.7336019999999994
	.quad	0x400bb4384ba0e842              # double 3.4629979999999998
	.quad	0x4013d21bc126a65d              # double 4.955184
	.quad	0x4015293a2df9378f              # double 5.2902610000000001
	.quad	0x400238a761027957              # double 2.277663
	.quad	0x40049d6d7e889c1b              # double 2.5768689999999999
	.quad	0x3ff80537e2c55c96              # double 1.501274
	.quad	0x401e20d49949e881              # double 7.5320609999999996
	.quad	0x402174ebdd334c5e              # double 8.7283620000000006
	.quad	0x40099e425aee6320              # double 3.2022750000000002
	.quad	0x4002994317acc4f0              # double 2.3248350000000002
	.quad	0x40085518b0d0edc4              # double 3.0415510000000001
	.quad	0x4019bdfc19c17226              # double 6.4355320000000003
	.quad	0x401a42539756c93a              # double 6.5647719999999996
	.quad	0x40217ffde7210be9              # double 8.7499839999999995
	.quad	0x40086e685db76b3c              # double 3.0539100000000001
	.quad	0x40156e30014f8b59              # double 5.3576050000000004
	.quad	0x4022829e6eeb7026              # double 9.255115
	.quad	0x3fb33c0c1fc8f323              # double 0.075134999999999993
	.quad	0x3fffa04d12018a44              # double 1.9766360000000001
	.quad	0x3fde67caea747d80              # double 0.47508499999999998
	.quad	0x401b8c343b70ef56              # double 6.8869179999999997
	.quad	0x4020d047f562174c              # double 8.4067989999999994
	.quad	0x4007a6f5019f3c71              # double 2.9565220000000001
	.quad	0x4007b95a294141ea              # double 2.9655040000000001
	.quad	0x401c7add15f02c4d              # double 7.1199839999999996
	.quad	0x402360c2c5e2cdc0              # double 9.6889859999999998
	.quad	0x401019cf9a06a6e3              # double 4.0252059999999998
	.quad	0x40115f52fc2656ac              # double 4.3430900000000001
	.quad	0x3ff7767f4dbdf8f4              # double 1.4664299999999999
	.quad	0x401ef1dcd7060bb3              # double 7.7361940000000002
	.quad	0x3fed40fecdd0d8cb              # double 0.914184
	.quad	0x3ff8efcac8e68e3f              # double 1.558543
	.quad	0x402334cdb7ae5797              # double 9.6031320000000004
	.quad	0x40108de58e64b231              # double 4.1385709999999998
	.quad	0x401a7ee41919ac79              # double 6.6239169999999996
	.quad	0x401726c1a048e044              # double 5.7878480000000003
	.quad	0x401f871d60631727              # double 7.8819480000000003
	.quad	0x4020d1e0a41a261c              # double 8.409917
	.quad	0x40023d12cadddf44              # double 2.2798210000000001
	.quad	0x40206f4f2f123c43              # double 8.2174010000000006
	.quad	0x40084ca25529fe00              # double 3.0374189999999999
	.quad	0x40211a56798958da              # double 8.5514410000000005
	.quad	0x401d7ea5b530ced5              # double 7.3736790000000001
	.quad	0x4015b1d3671ac14c              # double 5.4236579999999996
	.quad	0x3fdff8db4890928a              # double 0.49956400000000001
	.quad	0x4020f945308bb906              # double 8.4868559999999995
	.quad	0x4009f568e820e62a              # double 3.2448290000000002
	.quad	0x400a951c5c5718ec              # double 3.3228080000000002
	.quad	0x40032bab649d388b              # double 2.3963230000000002
	.quad	0x40211222706d5065              # double 8.5354189999999992
	.quad	0x4017c09dcf893faf              # double 5.9381019999999998
	.quad	0x4019271a7e308787              # double 6.2881869999999997
	.quad	0x40049e90ff972474              # double 2.5774249999999999
	.quad	0x4019ef50e3476295              # double 6.4837069999999999
	.quad	0x40199b530ced4e4d              # double 6.4016840000000004
	.quad	0x401193ca7503b81b              # double 4.3943269999999997
	.quad	0x3fe203eea209aaa4              # double 0.56298000000000004
	.quad	0x40107acd5b6805a3              # double 4.1199240000000001
	.quad	0x400e99378ee28672              # double 3.8248129999999998
	.quad	0x40208fc2a8869c67              # double 8.2807820000000003
	.quad	0x401b73e8dda48b65              # double 6.8631929999999999
	.quad	0x401292ce89656ef0              # double 4.6433660000000003
	.quad	0x40206531550ca1cf              # double 8.1976420000000001
	.quad	0x3ff413d74d594f27              # double 1.2548440000000001
	.quad	0x40131c0f01fb82c3              # double 4.7774010000000002
	.quad	0x401296e653868fd2              # double 4.6473630000000004
	.quad	0x401590a02b841249              # double 5.3912360000000001
	.quad	0x4017ad052934acb0              # double 5.918965
	.quad	0x40141f61ed5ae1ce              # double 5.0306470000000001
	.quad	0x400fa67b5f1bef4a              # double 3.9562900000000001
	.quad	0x40014de33269df98              # double 2.1630310000000001
	.quad	0x40222b05d95dd4c7              # double 9.0840289999999992
	.quad	0x40073d9a0f0a5eff              # double 2.9050790000000002
	.quad	0x40190ed80a17b0f7              # double 6.2644960000000003
	.quad	0x3ff4a6a11ec918e3              # double 1.290681
	.quad	0x40218aa77a2cecc8              # double 8.7708089999999999
	.quad	0x4012ea03c4b09e99              # double 4.7285300000000001
	.quad	0x3ffd299fa11a975b              # double 1.822662
	.quad	0x4023398e10cf5b1d              # double 9.6124120000000008
	.quad	0x4014f01bc98a222d              # double 5.2344809999999997
	.quad	0x4022f49e6687f456              # double 9.4777710000000006
	.quad	0x401146102795703f              # double 4.3184209999999998
	.quad	0x401a8dc93ea2d2fe              # double 6.6384629999999998
	.quad	0x4021d1e1f3a57eaa              # double 8.9099269999999997
	.quad	0x3fdf52220bc382a1              # double 0.48938799999999999
	.quad	0x3fc373e24febd09e              # double 0.151974
	.quad	0x3ffec0e496ededaf              # double 1.9220930000000001
	.quad	0x401720ebedfa43fe              # double 5.7821499999999997
	.quad	0x402235b8bac710cb              # double 9.1049249999999997
	.quad	0x3fd582cb20fb224b              # double 0.33610800000000002
	.quad	0x401c0ef0f16f4385              # double 7.0145910000000002
	.quad	0x4022b6d8d36b4c7f              # double 9.3571229999999996
	.quad	0x4011ce10cf5b1c86              # double 4.4512359999999997
	.quad	0x3ff077fbefd00714              # double 1.029293
	.quad	0x4018235653c9abb0              # double 6.0345089999999999
	.quad	0x40209b11c6d1e109              # double 8.3028700000000004
	.quad	0x3ff3b311a543f1c7              # double 1.2312179999999999
	.quad	0x3ff73e76c8b43958              # double 1.45275
	.quad	0x400e12096787ce96              # double 3.758807
	.quad	0x3fe67dc1615ebfa9              # double 0.702851
	.quad	0x401fc4ad794a6eb9              # double 7.9420679999999999
	.quad	0x4012b116ebd4cfd1              # double 4.6729390000000004
	.quad	0x4022a84af922962d              # double 9.328697
	.quad	0x401eb8fb86f47b67              # double 7.6806469999999995
	.quad	0x3f97518b0d0edc3c              # double 0.022772000000000001
	.quad	0x400da653868fd19a              # double 3.7062140000000001
	.quad	0x4010807d4e09784f              # double 4.1254780000000002
	.quad	0x4011c118c197e564              # double 4.4385709999999996
	.quad	0x401580e6299524c0              # double 5.3758780000000002
	.quad	0x400d04e69f05ea25              # double 3.6273930000000001
	.quad	0x401406e82949a565              # double 5.0067449999999996
	.quad	0x4020f5c054ef459e              # double 8.4799830000000007
	.quad	0x401c250c1b97353b              # double 7.0361789999999997
	.quad	0x3ffcf1151611ba3d              # double 1.8088580000000001
	.quad	0x40179333764f11b6              # double 5.893751
	.quad	0x40027fc8f32378ab              # double 2.312395
	.quad	0x4001dd91ab8e8ea4              # double 2.2331880000000002
	.quad	0x4021f5ff3f0fe048              # double 8.9804630000000003
	.quad	0x401f88abd5dc4007              # double 7.8834679999999996
	.quad	0x4017ef42352eb5f6              # double 5.9836510000000001
	.quad	0x40046d527e521577              # double 2.5533800000000002
	.quad	0x401e749129888f86              # double 7.6138349999999999
	.quad	0x400b733ebbfd71b0              # double 3.4312719999999999
	.quad	0x4020ee2bcf91a32b              # double 8.4651779999999999
	.quad	0x4011ab430f49491f              # double 4.4172479999999998
	.quad	0x402172f5dbb9cf9a              # double 8.724532
	.quad	0x40154ffda4052d66              # double 5.3281159999999996
	.quad	0x4021e6414e7ee914              # double 8.9497169999999997
	.quad	0x400231b71758e219              # double 2.2742749999999998
	.quad	0x3fe36c3b927d45a6              # double 0.606962
	.quad	0x400ec46d82ba5a04              # double 3.8459120000000002
	.quad	0x401c575fb2edfe76              # double 7.0853260000000002
	.quad	0x400b24790b849881              # double 3.3928090000000002
	.quad	0x40232b122b7baecd              # double 9.5841229999999999
	.quad	0x3fe270f5a1016ce8              # double 0.57628900000000005
	.quad	0x4023538c5436b8fa              # double 9.6631800000000005
	.quad	0x401939abb01c92de              # double 6.3063190000000002
	.quad	0x4018082cb20fb225              # double 6.0079830000000003
	.quad	0x40101718a86d71f3              # double 4.0225549999999997
	.quad	0x40227a5fc7e6b3ff              # double 9.2390120000000007
	.quad	0x401f6ffeb074a772              # double 7.8593700000000002
	.quad	0x4023e89613d31b9b              # double 9.9542699999999992
	.quad	0x400890b49e01de27              # double 3.0706570000000002
	.quad	0x401535807fed2029              # double 5.3022479999999996
	.quad	0x40136730c67168f9              # double 4.8507720000000001
	.quad	0x401fa520d130df9c              # double 7.9112580000000001
	.quad	0x401cb9f05ea24cc7              # double 7.1815810000000004
	.quad	0x402111b64e054691              # double 8.5345940000000002
	.quad	0x401193b81b64e054              # double 4.3942569999999996
	.quad	0x40206d230b9dc2f4              # double 8.2131579999999999
	.quad	0x4002d9d451fc4c16              # double 2.3563619999999998
	.quad	0x4008f549731098d4              # double 3.1197689999999998
	.quad	0x4008b4ae429e0a42              # double 3.0882230000000002
	.quad	0x4013e5accd53048a              # double 4.9742920000000002
	.quad	0x40091da48b652370              # double 3.1394739999999999
	.quad	0x3fea03afb7e90ff9              # double 0.81294999999999995
	.quad	0x40035fb71fbc5dea              # double 2.4217360000000001
	.quad	0x4022d95b1422ccb4              # double 9.4245230000000006
	.quad	0x4007e937d1fe64f5              # double 2.9888759999999999
	.quad	0x401e86256366d7a5              # double 7.6310019999999996
	.quad	0x3fd45e5aff2a172b              # double 0.31825900000000001
	.quad	0x3fec4e2089e34331              # double 0.88453700000000002
	.quad	0x4023472d1aeb3dd1              # double 9.6390159999999998
	.quad	0x40103312b1b36bd3              # double 4.0498760000000003
	.quad	0x400b27589efd86a9              # double 3.394212
	.quad	0x3fce54ac29bf162b              # double 0.236959
	.quad	0x4012798b2e9ccb7d              # double 4.6186949999999998
	.quad	0x401880d49949e881              # double 6.1258109999999997
	.quad	0x3ff59cdf69878317              # double 1.3507990000000001
	.quad	0x40117e9fadafd114              # double 4.3736560000000004
	.quad	0x4012a03c8e25c811              # double 4.6564810000000003
	.quad	0x40140a148ba83f4f              # double 5.0098440000000002
	.quad	0x4021afe5c91d14e4              # double 8.8435500000000004
	.quad	0x3fed72367e414e7f              # double 0.92019200000000001
	.quad	0x3ff3e5aee631f8a1              # double 1.2435750000000001
	.quad	0x4020a134267839ce              # double 8.3148510000000009
	.quad	0x401a0a1c25d07421              # double 6.5098729999999998
	.quad	0x4001ede19fc2a887              # double 2.2411530000000002
	.quad	0x4010149949e8815e              # double 4.0201159999999998
	.quad	0x40178c460ed80a18              # double 5.8869860000000003
	.quad	0x401e26d655e28aa4              # double 7.5379269999999998
	.quad	0x40113192ea52ef91              # double 4.2984119999999999
	.quad	0x40119bdcf0307f24              # double 4.4022100000000002
	.quad	0x4001335c9e6687f4              # double 2.1500789999999999
	.quad	0x400099cb6848beb6              # double 2.0750950000000001
	.quad	0x402015551d68c693              # double 8.0416650000000001
	.quad	0x4003695d91ab8e8f              # double 2.4264480000000002
	.quad	0x400befd438d1d8a5              # double 3.4921039999999999
	.quad	0x400b3a9e2bcf91a3              # double 3.4036219999999999
	.quad	0x402253d4cfd08d4c              # double 9.1637330000000005
	.quad	0x3fd78f041461b6d4              # double 0.36810399999999999
	.quad	0x40229f48c2e770bd              # double 9.311102
	.quad	0x4023afbe33acd5b7              # double 9.8432480000000008
	.quad	0x4013c308787485e4              # double 4.9404620000000001
	.quad	0x400a9526527a2058              # double 3.3228270000000002
	.quad	0x401f0f961804d984              # double 7.7652210000000004
	.quad	0x40205f4f50a02b84              # double 8.1861519999999998
	.quad	0x401f09f2ba9d1f60              # double 7.7597149999999999
	.quad	0x3ff43587d6f97679              # double 1.263069
	.quad	0x401df355475a31a5              # double 7.4876300000000002
	.quad	0x4009f6dd26b723ee              # double 3.245539
	.quad	0x401740685553ef6b              # double 5.8128979999999997
	.quad	0x40163da2b5a20ddc              # double 5.5601909999999997
	.quad	0x401ab14a90470a81              # double 6.6731360000000004
	.quad	0x40076e7c49fd7a14              # double 2.9289480000000001
	.quad	0x402171da37ef5a96              # double 8.7223679999999995
	.quad	0x40191733226c3b92              # double 6.2726559999999996
	.quad	0x400e25dd8f92af9b              # double 3.7684890000000002
	.quad	0x3fcf78705425f202              # double 0.245863
	.quad	0x4023819c5a3e39f7              # double 9.7531459999999992
	.quad	0x402306add590c0ad              # double 9.5130449999999999
	.quad	0x400b7017dae81883              # double 3.4297330000000001
	.quad	0x401005c9e6687f45              # double 4.0056529999999997
	.quad	0x4023da599ed7c6fc              # double 9.9264650000000003
	.quad	0x4011234efcbd5561              # double 4.2844810000000004
	.quad	0x3fe62743a647fdc6              # double 0.69229300000000005
	.quad	0x40165ee8d10f51ad              # double 5.5926850000000004
	.quad	0x400eb0941c8216c6              # double 3.83622
	.quad	0x3ffd768dfbd6a594              # double 1.8414440000000001
	.quad	0x4000643bb40b34e7              # double 2.0489419999999998
	.quad	0x4004e40fa9c12f0a              # double 2.6113580000000001
	.quad	0x40204e89eba6aca8              # double 8.1533960000000008
	.quad	0x3fe3fc43b2dd377e              # double 0.62454399999999999
	.quad	0x40203b5568e820e6              # double 8.1158859999999997
	.quad	0x40000e2a80064a9d              # double 2.0069170000000001
	.quad	0x400ba3f034b0e1b5              # double 3.4550480000000001
	.quad	0x400ad338f7985272              # double 3.3531360000000001
	.quad	0x401675271bcdbbe0              # double 5.6144069999999999
	.quad	0x401943c9eecbfb16              # double 6.3162000000000003
	.quad	0x401c41ada76d97b3              # double 7.0641389999999999
	.quad	0x40079d57ff9b5632              # double 2.9518279999999999
	.quad	0x402101a1db877ab3              # double 8.5031879999999997
	.quad	0x401f980e06530058              # double 7.8984909999999999
	.quad	0x400ecb441bb8c32b              # double 3.8492510000000002
	.quad	0x3fffea10e0221427              # double 1.994645
	.quad	0x4020d12e1ef73c0c              # double 8.4085549999999997
	.quad	0x400ca817fc7607c4              # double 3.582077
	.quad	0x40174865d7cb2d90              # double 5.8207009999999997
	.quad	0x4016a991ff7164c7              # double 5.6655959999999999
	.quad	0x400ef8c8eef1bac3              # double 3.8714770000000001
	.quad	0x4004e88377186552              # double 2.6135320000000002
	.quad	0x401b4d7fd82773e2              # double 6.8256829999999997
	.quad	0x3fe5764cf8d716d3              # double 0.67069100000000004
	.quad	0x400b231055b89939              # double 3.3921209999999999
	.quad	0x3ff44e219652bd3c              # double 1.269075
	.quad	0x401fa94ccab3edd9              # double 7.9153320000000002
	.quad	0x4018fd9ec7000432              # double 6.2476760000000002
	.quad	0x401920efdc9c4da9              # double 6.282165
	.quad	0x3fa9f383f0bae89f              # double 0.050686000000000002
	.quad	0x3fe3d1a86940357a              # double 0.61934299999999998
	.quad	0x4014b2b1b36bd2b7              # double 5.174506
	.quad	0x401015d3996fa82f              # double 4.0213150000000004
	.quad	0x40225a9f9ce8d973              # double 9.1769990000000004
	.quad	0x3fd1b8887229e908              # double 0.27688800000000002
	.quad	0x400570307f23cc8e              # double 2.6797800000000001
	.quad	0x401d7f8df7a4e7ab              # double 7.3745649999999996
	.quad	0x3fd50e736049ecb3              # double 0.32900699999999999
	.quad	0x3ffd529131ec0b56              # double 1.8326579999999999
	.quad	0x40239c8a372606fb              # double 9.8057420000000004
	.quad	0x4019d8fc9363f573              # double 6.4619010000000001
	.quad	0x3fd71b4bb5e0f7fd              # double 0.361041
	.quad	0x40032612839042d9              # double 2.3935900000000001
	.quad	0x4014a71fff79c843              # double 5.163208
	.quad	0x401383cbc48f10aa              # double 4.8787070000000003
	.quad	0x40066cebbba55d1c              # double 2.8031839999999999
	.quad	0x40127f893faf4278              # double 4.6245469999999997
	.quad	0x40203307af20ea5b              # double 8.0996679999999994
	.quad	0x3fd74163779e9d0f              # double 0.36336600000000002
	.quad	0x401a77aeddce7cd0              # double 6.6168779999999998
	.quad	0x400a298d477bbf94              # double 3.270289
	.quad	0x401c0737110e453d              # double 7.0070459999999999
	.quad	0x400aaac4b4d056c5              # double 3.333383
	.quad	0x400bee1c58255b03              # double 3.4912649999999998
	.quad	0x40013e5f30e7ff58              # double 2.1554549999999999
	.quad	0x401c4783dff3f0fe              # double 7.069839
	.quad	0x401db73c4f3ba776              # double 7.428941
	.quad	0x400a39c7bcc2938e              # double 3.278213
	.quad	0x4018844fe36d2242              # double 6.1292109999999997
	.quad	0x401c214c660a2014              # double 7.0325179999999996
	.quad	0x401be429e0a41a26              # double 6.9728159999999999
	.quad	0x3ffb9ecc3e3193f7              # double 1.7262690000000001
	.quad	0x400594f61672324d              # double 2.6977350000000002
	.quad	0x4023631ceaf251c2              # double 9.6935800000000008
	.quad	0x3fd43c85c24c404a              # double 0.31619399999999998
	.quad	0x402098e79aae6c8f              # double 8.2986419999999992
	.quad	0x3fe72962cfd8f0c7              # double 0.72380199999999995
	.quad	0x4020e8852b4d8ba4              # double 8.4541409999999999
	.quad	0x402224fbfc6540cc              # double 9.0722349999999991
	.quad	0x3ffd33ca31e7d999              # double 1.8251440000000001
	.quad	0x4005a1dc0db2702a              # double 2.7040329999999999
	.quad	0x4007fefe0ce0b913              # double 2.9995080000000001
	.quad	0x4022ae7b80a9de8b              # double 9.3407859999999996
	.quad	0x401761ce6c093d96              # double 5.8455139999999997
	.quad	0x40080ad3e920c06a              # double 3.005287
	.quad	0x40091f7be121ee67              # double 3.1403729999999999
	.quad	0x401d662d83c6c97e              # double 7.3497830000000004
	.quad	0x3fbe8ef77f27fe4c              # double 0.119369
	.quad	0x3ff2a294141e9af6              # double 1.1646920000000001
	.quad	0x40129c9c90c4dec2              # double 4.6529410000000002
	.quad	0x4016eb7281fd9ba2              # double 5.7299290000000003
	.quad	0x4020163305100a39              # double 8.0433579999999996
	.quad	0x4021c93e81450efe              # double 8.8930550000000004
	.quad	0x401c2324c8366517              # double 7.0343200000000001
	.quad	0x3fdd71044f1a1987              # double 0.46002300000000002
	.quad	0x3fe054d1e96c3fc4              # double 0.51035399999999997
	.quad	0x40102f9b994e1a3f              # double 4.0464919999999998
	.quad	0x401fe3e81450efdd              # double 7.9725650000000003
	.quad	0x4022081a36e2eb1c              # double 9.0158249999999995
	.quad	0x3fd2a0902de00d1b              # double 0.29104999999999998
	.quad	0x4011fad5bee3d5fe              # double 4.4949560000000002
	.quad	0x4011fd8f4f93bc0a              # double 4.497617
	.quad	0x3ff01d4c76d117b5              # double 1.007153
	.quad	0x402194a4b124d09a              # double 8.7903190000000002
	.quad	0x4012b33eff195033              # double 4.6750449999999999
	.quad	0x3fcb2c3009b30729              # double 0.212286
	.quad	0x40179632c1f42bb6              # double 5.8966779999999996
	.quad	0x401b97674d163348              # double 6.8978549999999998
	.quad	0x401b945e0b4e11dc              # double 6.8948900000000002
	.quad	0x4021672bcb5fe543              # double 8.7015060000000002
	.quad	0x4019544e93e1c9b4              # double 6.3323309999999999
	.quad	0x3fb44ef88b977857              # double 0.079329999999999998
	.quad	0x3fd161e4f765fd8b              # double 0.27160000000000001
	.quad	0x4002d83f0bae89ec              # double 2.3555890000000002
	.quad	0x400802de00d1b717              # double 3.0013999999999998
	.quad	0x402210e0eb67c287              # double 9.0329660000000001
	.quad	0x40212379d909f1f1              # double 8.5692889999999995
	.quad	0x3ff4dba2be0589ad              # double 1.3036220000000001
	.quad	0x401c00a0b1bbcf4f              # double 7.0006130000000004
	.quad	0x400275e0f7fcfc40              # double 2.3075580000000002
	.quad	0x3ff70bed740c4157              # double 1.440412
	.quad	0x400e7b5c7cd898b3              # double 3.810235
	.quad	0x4021b1e7fb267c6c              # double 8.8474730000000008
	.quad	0x4006342aa9f7b5af              # double 2.7754720000000002
	.quad	0x400389057d1782d4              # double 2.4419050000000002
	.quad	0x40102fd2e9468017              # double 4.0467029999999999
	.quad	0x40229eeb2d0a2446              # double 9.3103879999999997
	.quad	0x3ff4b62e90364389              # double 1.294478
	.quad	0x401b09b0ee49f517              # double 6.7594640000000004
	.quad	0x4005621c044284e0              # double 2.6729050000000001
	.quad	0x3ff90f1f57b41bfc              # double 1.566192
	.quad	0x4009224894c447c3              # double 3.14174
	.quad	0x4013861fe21d96ea              # double 4.8809810000000002
	.quad	0x401b643f1c75818c              # double 6.8478969999999997
	.quad	0x3fedcb07d0aed99d              # double 0.93103400000000003
	.quad	0x400482584f4c6e6e              # double 2.5636450000000002
	.quad	0x400e365f5275ee9a              # double 3.7765490000000002
	.quad	0x3fd9e89656eefa1e              # double 0.40482099999999999
	.quad	0x400e296c3fc43b2e              # double 3.7702260000000001
	.quad	0x40232fd912556d1a              # double 9.5934530000000002
	.quad	0x40220cd423d9231c              # double 9.0250559999999993
	.quad	0x402350407cc7d1bb              # double 9.6567419999999994
	.quad	0x401b4e06d938151a              # double 6.8261979999999998
	.quad	0x4023a0b3700474da              # double 9.8138690000000004
	.quad	0x402246f1fddebd90              # double 9.1385649999999998
	.quad	0x40013c3bd5992429              # double 2.1544110000000001
	.quad	0x400a413a0c6b484d              # double 3.2818489999999998
	.quad	0x3ff902ca148ba83f              # double 1.5631809999999999
	.quad	0x3ff1ed8c2a454de8              # double 1.120495
	.quad	0x401011d3671ac14c              # double 4.0174079999999996
	.quad	0x3ffe2a077036c9c1              # double 1.8852610000000001
	.quad	0x4010107d0aed99cc              # double 4.0161020000000001
	.quad	0x3ff9d5cfaacd9e84              # double 1.6147
	.quad	0x401811ce28ed5f14              # double 6.0173880000000004
	.quad	0x40136a737110e454              # double 4.8539560000000002
	.quad	0x4021604b5dcc63f1              # double 8.6880749999999995
	.quad	0x401405b0bbf50e34              # double 5.0055569999999996
	.quad	0x40120023a6ce3583              # double 4.5001360000000004
	.quad	0x4011aa53b8e4b87c              # double 4.4163350000000001
	.quad	0x401ee471f79420b4              # double 7.7230910000000002
	.quad	0x4020d69fcf3dc055              # double 8.4191880000000001
	.quad	0x3ff3688377186552              # double 1.2130160000000001
	.quad	0x401a4239a38fbca1              # double 6.564673
	.quad	0x401acb7457c0b136              # double 6.6986860000000004
	.quad	0x401b2c2b0ea18373              # double 6.7931330000000001
	.quad	0x3ff3b58f2e05ccc9              # double 1.2318260000000001
	.quad	0x4012eee06d938152              # double 4.7332780000000003
	.quad	0x400f213122b7baed              # double 3.8912070000000001
	.quad	0x402208e53eb399f6              # double 9.0173740000000002
	.quad	0x400e25e3da2f8bdf              # double 3.7685010000000001
	.quad	0x401bcaed1394317b              # double 6.9481700000000002
	.quad	0x400d09185cee17a0              # double 3.6294409999999999
	.quad	0x4004dd4067cf1c32              # double 2.6080329999999998
	.quad	0x400939f3c70c996b              # double 3.1532969999999998
	.quad	0x4017d578e5c4eb57              # double 5.958469
	.quad	0x4023b3cea6c1a049              # double 9.8511860000000002
	.quad	0x3fdbd1394317acc5              # double 0.434645
	.quad	0x4023bb7c99ae924f              # double 9.8661849999999997
	.quad	0x4013459d12cadddf              # double 4.8179819999999998
	.quad	0x40004f9d2bf55150              # double 2.0388739999999999
	.quad	0x401f3b673c4f3ba7              # double 7.8080109999999995
	.quad	0x4021fd058dde7a74              # double 8.9941829999999995
	.quad	0x40167d3bafd976ff              # double 5.6222979999999998
	.quad	0x40188ab9f559b3d0              # double 6.1354749999999996
	.quad	0x400b7f59ccfaeff6              # double 3.4371830000000001
	.quad	0x4015a1c9b4139863              # double 5.4079959999999998
	.quad	0x401b277ab324851b              # double 6.7885540000000004
	.quad	0x400e794f26aec072              # double 3.8092329999999999
	.quad	0x40091fc19c17225b              # double 3.1405059999999998
	.quad	0x401c7d66adb402d1              # double 7.1224619999999996
	.quad	0x401351650a45d420              # double 4.8294870000000003
	.quad	0x3ffa2ab25b317efe              # double 1.635424
	.quad	0x40051b445ed4a1ad              # double 2.6383139999999998
	.quad	0x40091f8b9baa1512              # double 3.1404030000000001
	.quad	0x400745c67dfe32a0              # double 2.9090699999999998
	.quad	0x4000d05a708ede55              # double 2.1017350000000001
	.quad	0x40231e6f5019f3c7              # double 9.5594429999999999
	.quad	0x3ff456f544bb1af4              # double 1.2712300000000001
	.quad	0x402354083126e979              # double 9.6641250000000002
	.quad	0x402343b14a90470b              # double 9.6322120000000008
	.quad	0x40029531db445ed5              # double 2.3228490000000002
	.quad	0x401d241a261bf37c              # double 7.2852560000000004
	.quad	0x4019fae31d712a0f              # double 6.4950070000000002
	.quad	0x4023374be835dedf              # double 9.6080009999999997
	.quad	0x40208f47b677f6b2              # double 8.2798440000000006
	.quad	0x3ff17f39d1b2e59b              # double 1.093561
	.quad	0x40126d4bf0995aaf              # double 4.6067349999999996
	.quad	0x4007196d0917d6b6              # double 2.8874149999999998
	.quad	0x40190e26916440f2              # double 6.2638189999999998
	.quad	0x4009a266772d5e07              # double 3.204297
	.quad	0x4001e465a57646ae              # double 2.2365219999999999
	.quad	0x400ef79c842fa509              # double 3.8709039999999999
	.quad	0x401fd225b749adc9              # double 7.955222
	.quad	0x3ffc4ff540895d0b              # double 1.7695209999999999
	.quad	0x3ff96b020c49ba5e              # double 1.588625
	.quad	0x3ff95992428d434a              # double 1.584368
	.quad	0x40207727fe4bcada              # double 8.2327270000000006
	.quad	0x400b546994185059              # double 3.4162170000000001
	.quad	0x40233edd26b723ee              # double 9.6227809999999998
	.quad	0x4003508c3f3e0371              # double 2.4143300000000001
	.quad	0x4022c8b2e9ccb7d4              # double 9.3919899999999998
	.quad	0x3fe748d7e02645e5              # double 0.72764200000000001
	.quad	0x400393868fd199bb              # double 2.4470339999999999
	.quad	0x40186f7a919695d9              # double 6.1088659999999999
	.quad	0x401167de939eadd6              # double 4.3514350000000004
	.quad	0x40224d9231c64ba9              # double 9.1515059999999995
	.quad	0x401e8fbca1059ea5              # double 7.6403679999999996
	.quad	0x40128f00abf76a2f              # double 4.6396509999999997
	.quad	0x40234019b0ab2e17              # double 9.6251960000000007
	.quad	0x40196727dcbddb98              # double 6.3507379999999998
	.quad	0x40133046412cf0fa              # double 4.7971430000000002
	.quad	0x3fe715a4acf312b2              # double 0.72139200000000003
	.quad	0x3ff41b8dc55000c9              # double 1.2567269999999999
	.quad	0x4008c114d2f5dbba              # double 3.0942780000000001
	.quad	0x40001709310129cc              # double 2.0112480000000001
	.quad	0x4011000de4c51117              # double 4.2500530000000003
	.quad	0x4006d6d655e28aa4              # double 2.8549009999999999
	.quad	0x400fbbd8383ad9f1              # double 3.9667210000000002
	.quad	0x3ffed40aaeafab54              # double 1.926768
	.quad	0x3fea3c1acde19fc3              # double 0.81983700000000004
	.quad	0x4010e877681669cf              # double 4.2270180000000002
	.quad	0x4015a113404ea4a9              # double 5.4073000000000002
	.quad	0x40178dd54da4ce81              # double 5.888509
	.quad	0x3ff3db9841aac53b              # double 1.241112
	.quad	0x402090ac9f2fdb90              # double 8.2825670000000002
	.quad	0x400e66fef7c243dd              # double 3.8002910000000001
	.quad	0x3fea0f062d40aaeb              # double 0.814334
	.quad	0x4020c2bfb9bed30f              # double 8.380369
	.quad	0x4020528e71476af9              # double 8.1612430000000007
	.quad	0x40118035371971c1              # double 4.375203
	.quad	0x4009a090b417ca21              # double 3.2034009999999999
	.quad	0x400dc6df82b1f688              # double 3.7221060000000001
	.quad	0x4012afd1569f4906              # double 4.671697
	.quad	0x3fe3b6bf444e0daa              # double 0.61605799999999999
	.quad	0x3ffaa921ccd96207              # double 1.6662920000000001
	.quad	0x40230d4f9c1f85d7              # double 9.5259979999999995
	.quad	0x400af18c9fb6134d              # double 3.367944
	.quad	0x402243f76a2f48c3              # double 9.1327470000000002
	.quad	0x401d7cd39da16617              # double 7.3719010000000003
	.quad	0x401999a95421c044              # double 6.4000599999999999
	.quad	0x3fe387d912556d1a              # double 0.61033300000000001
	.quad	0x4013b0a2014727dd              # double 4.9224930000000002
	.quad	0x3fe8ffae3608d089              # double 0.78121099999999999
	.quad	0x3fe00d60a6330510              # double 0.501633
	.quad	0x4021e8fa376922d9              # double 8.9550339999999995
	.quad	0x40107d66277c45cc              # double 4.1224600000000002
	.quad	0x3fe8e35a426bb55b              # double 0.77775300000000003
	.quad	0x40058284dfce3151              # double 2.6887300000000001
	.quad	0x4017902d59d55e6c              # double 5.8907980000000002
	.quad	0x401fc44028e4fb98              # double 7.9416510000000002
	.quad	0x402354358afc47e5              # double 9.6644710000000006
	.quad	0x40201830e3cd9a52              # double 8.0472479999999997
	.quad	0x3ffad5336deb95e6              # double 1.6770510000000001
	.quad	0x4022e938fffbce42              # double 9.4555129999999998
	.quad	0x3fe9ab7995ee136e              # double 0.80218199999999995
	.quad	0x401c09f83be6601c              # double 7.0097360000000002
	.quad	0x40195382e44b6e93              # double 6.3315539999999997
	.quad	0x40220d7cb2d905c0              # double 9.0263419999999996
	.quad	0x4006f06a2b1704ff              # double 2.8673899999999999
	.quad	0x401aff9f44d44567              # double 6.7496309999999999
	.quad	0x4022256c0d6f544c              # double 9.0730900000000005
	.quad	0x4001117a46173b86              # double 2.133534
	.quad	0x401ad5796bfca85d              # double 6.7084710000000003
	.quad	0x40108a0be5109071              # double 4.134811
	.quad	0x4018ad80a17b0f6b              # double 6.1694360000000001
	.quad	0x401ecb8cb8e086be              # double 7.698779
	.quad	0x401a9ab9f559b3d0              # double 6.6510999999999996
	.quad	0x40111ea7ce0fc2ec              # double 4.2799370000000003
	.quad	0x4022fd666a98244f              # double 9.4949220000000007
	.quad	0x40202b6177ea1c69              # double 8.0847280000000001
	.quad	0x401cbfed20296b33              # double 7.1874279999999997
	.quad	0x4008c4d983947497              # double 3.0961180000000001
	.quad	0x401f9bb5e0f7fcfc              # double 7.9020609999999998
	.quad	0x3fdaf4f93bc0a06f              # double 0.42120200000000002
	.quad	0x3feb7bf401c4fc1e              # double 0.85888100000000001
	.quad	0x4020062ed352220c              # double 8.0120760000000004
	.quad	0x4021b8e3cd9a5226              # double 8.8611129999999996
	.quad	0x4012ccdaf4adbc66              # double 4.7000539999999997
	.quad	0x40097fbd6a593a2e              # double 3.187373
	.quad	0x401c0c4c165907d9              # double 7.0120089999999999
	.quad	0x400599170d62bf12              # double 2.699751
	.quad	0x3febb34a44c7b02d              # double 0.86563599999999996
	.quad	0x400b6c07aaef2c73              # double 3.4277489999999999
	.quad	0x4000d578a2a90cd4              # double 2.1042339999999999
	.quad	0x401ae45803cd141a              # double 6.7229919999999996
	.quad	0x40199a333764f11b              # double 6.4005859999999997
	.quad	0x401785614df8b157              # double 5.8802539999999999
	.quad	0x3ff2e756861e9292              # double 1.1814789999999999
	.quad	0x40227e3d5fdcdf6a              # double 9.2465620000000008
	.quad	0x400838e219652bd4              # double 3.0277750000000001
	.quad	0x4016050fc71d6063              # double 5.5049429999999999
	.quad	0x401bc85a921ccd96              # double 6.9456579999999999
	.quad	0x4015319ce075f6fd              # double 5.2984499999999999
	.quad	0x4019282278d0cc36              # double 6.2891940000000002
	.quad	0x400f9799e518f3ed              # double 3.9490240000000001
	.quad	0x402094f9e3864cb6              # double 8.2909690000000005
	.quad	0x3fe66e30caa326e1              # double 0.70095099999999999
	.quad	0x400161da7b0b3919              # double 2.1727799999999999
	.quad	0x3ffac9a88ace24bc              # double 1.6742330000000001
	.quad	0x3fbf88765ba6efc3              # double 0.12317599999999999
	.quad	0x401225e17e34b945              # double 4.5369929999999998
	.quad	0x3ffea353f7ced917              # double 1.9148750000000001
	.quad	0x4022cec0724b76f7              # double 9.4038120000000002
	.quad	0x40189d2ed783dff4              # double 6.1534990000000001
	.quad	0x400678793dd97f63              # double 2.8088250000000001
	.quad	0x40007cbddb9841ab              # double 2.0609090000000001
	.quad	0x401ee40357a35504              # double 7.7226689999999998
	.quad	0x400397fcfc3f811f              # double 2.4492129999999999
	.quad	0x40087e108c3f3e03              # double 3.0615549999999998
	.quad	0x401209f87f023e9f              # double 4.5097370000000003
	.quad	0x401e0af038e29f9d              # double 7.510682
	.quad	0x4021291d9b1b79d9              # double 8.5803039999999999
	.quad	0x401b171a3b14a904              # double 6.7725609999999996
	.quad	0x3fc8c0724b76f6d7              # double 0.19337299999999999
	.quad	0x4015f4723aafff37              # double 5.4887170000000003
	.quad	0x401e937eb28d8666              # double 7.6440380000000001
	.quad	0x401715c2d2780779              # double 5.7712510000000004
	.quad	0x401265e95b78cc9a              # double 4.5995229999999996
	.quad	0x401cef48c2e770bd              # double 7.233676
	.quad	0x3ffa8b73d188f430              # double 1.659046
	.quad	0x40183ab92c061848              # double 6.057347
	.quad	0x401472cbea4ebdd3              # double 5.1121059999999998
	.quad	0x402130f733a8a3f9              # double 8.5956360000000007
	.quad	0x40200881c2e33eff              # double 8.0166149999999998
	.quad	0x40197df37329c348              # double 6.3729990000000001
	.quad	0x401c02ed352220bc              # double 7.0028579999999998
	.quad	0x4021afe7e1fc08fa              # double 8.8435659999999991
	.quad	0x401cf8fd5cb790fb              # double 7.2431539999999996
	.quad	0x3fd6c0767d34df05              # double 0.35549700000000001
	.quad	0x40218b7f5a5332ad              # double 8.772456
	.quad	0x401b88c5436b8f9b              # double 6.8835649999999999
	.quad	0x401c50d6b228dc98              # double 7.0789439999999999
	.quad	0x3ff653682730c671              # double 1.3953629999999999
	.quad	0x40110a75cd0bb6ed              # double 4.2602149999999996
	.quad	0x401493bff8a8f3aa              # double 5.1442870000000003
	.quad	0x401f6942d490e66d              # double 7.8527940000000002
	.quad	0x3fea2d2999567dbb              # double 0.81801299999999999
	.quad	0x3ffe25a469d7342f              # double 1.88419
	.quad	0x4002dbd5992428d4              # double 2.3573409999999999
	.quad	0x401c10ae10492360              # double 7.0162890000000004
	.quad	0x3feb0578e5c4eb57              # double 0.844418
	.quad	0x3ff4b54d1e96c3fc              # double 1.2942629999999999
	.quad	0x400d5b73083558a7              # double 3.6696529999999998
	.quad	0x3ff2fc77143393ab              # double 1.1866369999999999
	.quad	0x4016a4806290eed0              # double 5.6606459999999998
	.quad	0x4022c804d9839475              # double 9.3906620000000007
	.quad	0x3fdab9a5a89b951c              # double 0.41758099999999998
	.quad	0x3fe353458cd20afa              # double 0.60391499999999998
	.quad	0x40156525460aa64c              # double 5.3487749999999998
	.quad	0x4012033daf8df7a5              # double 4.5031650000000001
	.quad	0x401654a44c7b02d6              # double 5.5826580000000003
	.quad	0x40228ff77af64064              # double 9.2811850000000006
	.quad	0x400d752e2fbe33ad              # double 3.6822170000000001
	.quad	0x40102999dcb5781c              # double 4.0406259999999996
	.quad	0x3ffee9de8b3b3205              # double 1.932097
	.quad	0x401efb441bb8c32b              # double 7.7453770000000004
	.quad	0x3fe8b302f72b4528              # double 0.77185199999999998
	.quad	0x4022bebd09e12a52              # double 9.3725360000000002
	.quad	0x401cab90214ad363              # double 7.1675420000000001
	.quad	0x3ff4c5e80bed740c              # double 1.2983169999999999
	.quad	0x401f7c84b5dcc63f              # double 7.8715999999999999
	.quad	0x4019d3504c48adef              # double 6.4563610000000002
	.quad	0x3fd55ffa3b9ae0c1              # double 0.33398299999999997
	.quad	0x4015ad2ae8e1d649              # double 5.4191089999999997
	.quad	0x4012e83947496aad              # double 4.7267809999999999
	.quad	0x4020ff4aba387592              # double 8.4986169999999994
	.quad	0x401f0468448cf7cb              # double 7.7543040000000003
	.quad	0x400e76b76709fa55              # double 3.8079670000000001
	.quad	0x4010d5dbfceb7889              # double 4.2088469999999996
	.quad	0x40129b2a6b0d9514              # double 4.651529
	.quad	0x4021496e7a311e86              # double 8.643421
	.quad	0x401d382278d0cc36              # double 7.3048190000000002
	.quad	0x4023baec28b2a6b1              # double 9.8650830000000002
	.quad	0x4022c5e0b4e11dbd              # double 9.3864800000000006
	.quad	0x40130fc9ff92f2b6              # double 4.7654189999999996
	.quad	0x401e9946c332f017              # double 7.6496839999999997
	.quad	0x4021eaaeafab53d6              # double 8.9583639999999995
	.quad	0x4020e0a50507a6bd              # double 8.4387589999999992
	.quad	0x3fea056e696a26e5              # double 0.81316299999999997
	.quad	0x4023a861e92923e6              # double 9.8288720000000005
	.quad	0x400a2d5cfaacd9e8              # double 3.2721499999999999
	.quad	0x401359b280f12c28              # double 4.8375950000000003
	.quad	0x3ffeaab68cef672c              # double 1.9166780000000001
	.quad	0x4010e2253111f0c3              # double 4.2208449999999997
	.quad	0x401af4677b395c42              # double 6.7386759999999999
	.quad	0x401cc3311a543f1c              # double 7.1906169999999996
	.quad	0x40040f2734f82f51              # double 2.5073989999999999
	.quad	0x4023f02f51266341              # double 9.9691109999999998
	.quad	0x4020fb8a3b57c4e3              # double 8.4912890000000001
	.quad	0x3fd944ae85b9e8c4              # double 0.39481699999999997
	.quad	0x401adc4f3ba775fb              # double 6.7151459999999998
	.quad	0x402166ee52589268              # double 8.7010369999999995
	.quad	0x40179032db1e9f27              # double 5.8908189999999996
	.quad	0x4017c7b4e54f7a92              # double 5.9450260000000004
	.quad	0x40234e1aa3f034b1              # double 9.6525470000000002
	.quad	0x400e8389f83be660              # double 3.814228
	.quad	0x401dd24bfd2e9468              # double 7.4553679999999999
	.quad	0x3ff46c2480e8c8ac              # double 1.276402
	.quad	0x40212061847f5621              # double 8.5632439999999992
	.quad	0x40108e8ccdd93c47              # double 4.1392090000000001
	.quad	0x3ff6d1ada76d97b3              # double 1.426191
	.quad	0x4016a70b49e01de2              # double 5.6631289999999996
	.quad	0x4007b715c63ae254              # double 2.9643969999999999
	.quad	0x401805b6c3760bf6              # double 6.0055800000000001
	.quad	0x400e087ca643cc08              # double 3.7541440000000001
	.quad	0x3ffc996d8f4f93bc              # double 1.787458
	.quad	0x4018746e8f29d40f              # double 6.1137030000000001
	.quad	0x402081d10b1feeb3              # double 8.2535480000000003
	.quad	0x4022f6e2003ab863              # double 9.4821930000000005
	.quad	0x40179d7d7c2ca149              # double 5.9037990000000002
	.quad	0x40018effe2a3cea7              # double 2.1948240000000001
	.quad	0x401f82e2fbe33acd              # double 7.8778189999999996
	.quad	0x401fd87c200c0f02              # double 7.961411
	.quad	0x401b863f141205bc              # double 6.8811
	.quad	0x4023060e94ee392e              # double 9.5118299999999998
	.quad	0x401c69845dc83233              # double 7.1030439999999997
	.quad	0x400d15568e820e63              # double 3.6354190000000002
	.quad	0x401a331f46ed245b              # double 6.5499239999999999
	.quad	0x40065cc2938de6de              # double 2.795293
	.quad	0x4021c81adea89763              # double 8.8908299999999993
	.quad	0x401ec7219220ff54              # double 7.694464
	.quad	0x3ffb5f59ccfaeff6              # double 1.710779
	.quad	0x401d937154003255              # double 7.3939870000000001
	.quad	0x4005b2085b18548b              # double 2.7119300000000002
	.quad	0x3fea8954a7f8012e              # double 0.829264
	.quad	0x401e31d14e3bcd36              # double 7.5486500000000003
	.quad	0x3ff6ac0f88333fc8              # double 1.4170069999999999
	.quad	0x401502396073de1e              # double 5.2521719999999998
	.quad	0x40015db8fde2ef4e              # double 2.170763
	.quad	0x401d0280f12c27a6              # double 7.2524449999999998
	.quad	0x3fff31348b220792              # double 1.9495130000000001
	.quad	0x400695c0767d34df              # double 2.823121
	.quad	0x3fbbc1eff9f87f02              # double 0.108428
	.quad	0x401750fe8ab4fa48              # double 5.8290959999999998
	.quad	0x4012e512a94ff002              # double 4.7237039999999997
	.quad	0x3ffeda37ef5a964f              # double 1.9282760000000001
	.quad	0x4023214141e9af5c              # double 9.5649510000000006
	.quad	0x40171142b302f72b              # double 5.7668559999999998
	.quad	0x3ff660945f9df549              # double 1.398579
	.quad	0x401d0c7c5260f5e4              # double 7.2621929999999999
	.quad	0x3fe4fca85caafbc2              # double 0.65584200000000004
	.quad	0x401fe1a437824d4d              # double 7.9703530000000002
	.quad	0x4023993cee9dd7ed              # double 9.7992930000000004
	.quad	0x4012fe41d4b6a61a              # double 4.7482980000000001
	.quad	0x401296809d495183              # double 4.6469750000000003
	.quad	0x3fd5bff47735c183              # double 0.339841
	.quad	0x3fe54d466f5019f4              # double 0.66568300000000002
	.quad	0x3fea737542a23c00              # double 0.82659400000000005
	.quad	0x4023ae672fba01ef              # double 9.8406310000000001
	.quad	0x4012c8a222d5171e              # double 4.6959309999999999
	.quad	0x401e7840181e03f7              # double 7.6174319999999999
	.quad	0x400abb7ae5796bfd              # double 3.3415430000000002
	.quad	0x40160a9f7b5aea31              # double 5.5103739999999997
	.quad	0x40086bca5375c8da              # double 3.052632
	.quad	0x4008d0f94c87980f              # double 3.1020379999999999
	.quad	0x3fe60abd5dc40075              # double 0.68881099999999995
	.quad	0x400b754d1e96c3fc              # double 3.4322759999999999
	.quad	0x3ffeedea897635e7              # double 1.9330849999999999
	.quad	0x3fec8bef8ceb356e              # double 0.89208200000000004
	.quad	0x40011367a0f9096c              # double 2.1344750000000001
	.quad	0x40021252ce032db2              # double 2.258947
	.quad	0x4014d17d6b65a9a8              # double 5.20458
	.quad	0x402105fb9389b520              # double 8.5116849999999999
	.quad	0x4022dda5332acfb7              # double 9.4329009999999993
	.quad	0x40010751ce28ed5f              # double 2.128574
	.quad	0x40191c74fb549f95              # double 6.2777900000000004
	.quad	0x401561151611ba3d              # double 5.3448070000000003
	.quad	0x40136adcd2d44dcb              # double 4.8543580000000004
	.quad	0x401cc29f16b11c6d              # double 7.1900599999999999
	.quad	0x4013d5e02ea960b7              # double 4.958863
	.quad	0x4010303e63e8dda5              # double 4.0471130000000004
	.quad	0x4013681f53825e14              # double 4.8516820000000003
	.quad	0x40053c0980b24207              # double 2.654315
	.quad	0x4015caafbc1acde2              # double 5.4479360000000003
	.quad	0x400a901a79fec99f              # double 3.320363
	.quad	0x4005b3682730c671              # double 2.7126009999999998
	.quad	0x3ffc449dbec2480f              # double 1.7667520000000001
	.quad	0x3ff1e9da597d49d8              # double 1.1195930000000001
	.quad	0x3fbf8705425f2021              # double 0.123154
	.quad	0x402114ba0e842742              # double 8.5404820000000008
	.quad	0x400e3178b3700475              # double 3.7741560000000001
	.quad	0x3ff940a06e9ff0cc              # double 1.5782780000000001
	.quad	0x40144436b8f9b131              # double 5.0666149999999996
	.quad	0x40003c1d6cf850df              # double 2.029353
	.quad	0x3ffa0011d3671ac1              # double 1.6250169999999999
	.quad	0x4023a6dce39b456b              # double 9.8259039999999995
	.quad	0x401c99d2391d5800              # double 7.1502160000000003
	.quad	0x40111e6d15ad106f              # double 4.2797130000000001
	.quad	0x4022072a38b8ae32              # double 9.0139940000000003
	.quad	0x4020a16f6512a950              # double 8.3153030000000001
	.quad	0x4002f9d12cadddf4              # double 2.3719809999999999
	.quad	0x3fe87da836eb4e98              # double 0.76533899999999999
	.quad	0x3ff3adaec4a4095f              # double 1.229903
	.quad	0x401bdabbcb1cc964              # double 6.9636069999999997
	.quad	0x4022f44f7ec3547e              # double 9.477169
	.quad	0x4007d25785f8d2e5              # double 2.977706
	.quad	0x3fdfbef06b37867f              # double 0.496029
	.quad	0x401c1d056c508b33              # double 7.0283410000000002
	.quad	0x3ff50a42aed13943              # double 1.315005
	.quad	0x4006c625e99e94ab              # double 2.8467519999999999
	.quad	0x4005aa222d5171e3              # double 2.7080730000000002
	.quad	0x401df003ab862b28              # double 7.4843890000000001
	.quad	0x3fff94445aa2e3c5              # double 1.973698
	.quad	0x40215b4df04ddb55              # double 8.6783289999999997
	.quad	0x401fdffe6d58c8ef              # double 7.968744
	.quad	0x400f014727dcbddc              # double 3.8756240000000002
	.quad	0x4020527b9170d62c              # double 8.1610990000000001
	.quad	0x402145692b3cc4ac              # double 8.6355679999999992
	.quad	0x40131ff04577d955              # double 4.7811899999999996
	.quad	0x3ff1acabc5154867              # double 1.1046560000000001
	.quad	0x402083d1ed9dfdac              # double 8.2574609999999992
	.quad	0x402009899bf5946c              # double 8.0186279999999996
	.quad	0x4007fba450acc0be              # double 2.9978720000000001
	.quad	0x401c9533f42352eb              # double 7.1457059999999997
	.quad	0x4010fdc768dfbd6a              # double 4.2478309999999997
	.quad	0x401ecb068123810f              # double 7.6982670000000004
	.quad	0x40200cb85a4f00ef              # double 8.0248439999999999
	.quad	0x4012f9af9ebe9c88              # double 4.7438339999999997
	.quad	0x4002c4827b6fe2e7              # double 2.345952
	.quad	0x40239bd987c6327f              # double 9.8043940000000002
	.quad	0x40059c03bc4d22c9              # double 2.7011790000000002
	.quad	0x401a3ff08893b7d8              # double 6.5624409999999997
	.quad	0x4011a76188b1140a              # double 4.4134580000000003
	.quad	0x3feec62a1b5c7cd9              # double 0.96169000000000004
	.quad	0x4008725dd095af29              # double 3.0558429999999999
	.quad	0x3ff03c579f234656              # double 1.014732
	.quad	0x3fdce89656eefa1e              # double 0.45169599999999999
	.quad	0x40155defc7a39820              # double 5.3417349999999999
	.quad	0x400d80e7bc3c5bd1              # double 3.6879420000000001
	.quad	0x401cd9d388a8b08e              # double 7.2127210000000002
	.quad	0x400bb7be121ee675              # double 3.464718
	.quad	0x401c501e68a0d34a              # double 7.0782410000000002
	.quad	0x3ff17f5b5fa22707              # double 1.093593
	.quad	0x402105f0b28522ea              # double 8.5116019999999999
	.quad	0x401d66f826edaa93              # double 7.3505560000000001
	.quad	0x401b3d872f33ca32              # double 6.8100860000000001
	.quad	0x401364f11b60ae97              # double 4.8485760000000004
	.quad	0x4014e8d477bbf940              # double 5.227373
	.quad	0x40006e325d4a5df2              # double 2.0538069999999999
	.quad	0x4011c378ab0c88a4              # double 4.4408899999999996
	.quad	0x401be204f2ae07e6              # double 6.9707220000000003
	.quad	0x402189070fbeb9e5              # double 8.7676320000000008
	.quad	0x4013eb74ddf86e3b              # double 4.9799379999999998
	.quad	0x400eefc610f0e90c              # double 3.8670770000000001
	.quad	0x4003e1e1d2178f69              # double 2.4852940000000001
	.quad	0x40153e4e26d4801f              # double 5.3108449999999996
	.quad	0x3fe3adf2ecf20642              # double 0.61498399999999998
	.quad	0x3ffc8635a426bb56              # double 1.7827660000000001
	.quad	0x3ff27baa9b499d02              # double 1.155192
	.quad	0x401cf107b784662c              # double 7.2353810000000003
	.quad	0x401cecb20fb224ab              # double 7.2311480000000001
	.quad	0x401c5c09c3ce208a              # double 7.0898810000000001
	.quad	0x3ff4759146e4c0df              # double 1.2787029999999999
	.quad	0x401e5c24c404a72f              # double 7.5899840000000002
	.quad	0x4021f72cf95d4e90              # double 8.9827650000000006
	.quad	0x3febc26138fffbce              # double 0.86747799999999997
	.quad	0x40222f154003254e              # double 9.0919589999999992
	.quad	0x3ff0b6cacd184c27              # double 1.044627
	.quad	0x4006142cc2d6a9c5              # double 2.7598509999999998
	.quad	0x40187f0cbaf965b2              # double 6.124072
	.quad	0x4015d0edc3bd5992              # double 5.4540319999999998
	.quad	0x40223f2d3c792d13              # double 9.1233920000000008
	.quad	0x3fe61769a91105e2              # double 0.69035800000000003
	.quad	0x400bd901083dbc23              # double 3.4809589999999999
	.quad	0x3fdc86e3b46fdeb5              # double 0.44573299999999999
	.quad	0x4018ae3eaf6837f8              # double 6.1701610000000002
	.quad	0x40207dc63ae2541e              # double 8.2456530000000008
	.quad	0x3fb06e19b90ea9e7              # double 0.064180000000000001
	.quad	0x400e6a85caafbc1b              # double 3.8020130000000001
	.quad	0x4011eb4395810625              # double 4.4797500000000001
	.quad	0x3fee97225b749add              # double 0.95594900000000005
	.quad	0x3fdb436b8f9b1316              # double 0.42598999999999998
	.quad	0x400ac6b26bf8769f              # double 3.3470200000000001
	.quad	0x3ff60869c66d373b              # double 1.377054
	.quad	0x40232d885d31337f              # double 9.5889310000000005
	.quad	0x3ff67c3e74afd545              # double 1.4053329999999999
	.quad	0x401e6b71758e2196              # double 7.6049249999999997
	.quad	0x401d2ef1fddebd90              # double 7.2958449999999999
	.quad	0x4021a921682f9442              # double 8.8303329999999995
	.quad	0x4017bc0053e2d624              # double 5.9335950000000004
	.quad	0x402128f36694898f              # double 8.5799819999999993
	.quad	0x400c8b8f9b13165d              # double 3.5681449999999999
	.quad	0x401442b3cc4ac6ce              # double 5.0651390000000003
	.quad	0x401c8f3cb3e5753a              # double 7.1398799999999998
	.quad	0x40174e54f7a91969              # double 5.8264959999999997
	.quad	0x402323280f12c27a              # double 9.5686649999999993
	.quad	0x40093be76c8b4396              # double 3.1542500000000002
	.quad	0x40238a3f4666ec9e              # double 9.7700139999999998
	.quad	0x3fd80791c4b90215              # double 0.37546200000000002
	.quad	0x400a1775b8130165              # double 3.2614550000000002
	.quad	0x3ff46355043e5322              # double 1.274251
	.quad	0x401c1ff2a172abef              # double 7.031199
	.quad	0x3ffaf0153bd16766              # double 1.6836139999999999
	.quad	0x40117152f3c2dadc              # double 4.3606680000000004
	.quad	0x400b8bc7b45f17be              # double 3.4432520000000002
	.quad	0x401b5f9c1f85d745              # double 6.843369
	.quad	0x401ac19c9d5a187a              # double 6.6890739999999997
	.quad	0x40164c2656abde40              # double 5.5743650000000002
	.quad	0x40170a1d323fee2d              # double 5.7598770000000004
	.quad	0x4020ed29fe004b7f              # double 8.4632109999999994
	.quad	0x4013b11c2a023209              # double 4.9229589999999996
	.quad	0x401fb13122b7baed              # double 7.9230390000000001
	.quad	0x4015bca9691a75cd              # double 5.43424
	.quad	0x401cad4024b33db0              # double 7.1691900000000004
	.quad	0x401c6188f42fe825              # double 7.0952489999999999
	.quad	0x3feb6777079e59f3              # double 0.85638000000000003
	.quad	0x3ff1fea1c68ec52a              # double 1.1246659999999999
	.quad	0x401cdc215b9a5a8a              # double 7.2149710000000002
	.quad	0x4021f4da2b5a20de              # double 8.9782270000000004
	.quad	0x4001577fae3608d1              # double 2.1677240000000002
	.quad	0x402257681669ced1              # double 9.1707160000000005
	.quad	0x3ff8c35371971c11              # double 1.547687
	.quad	0x40206db7cfe58601              # double 8.2142929999999996
	.quad	0x400ea4d4cb9ecf64              # double 3.8304840000000002
	.quad	0x40169c62e4d1a650              # double 5.6527209999999997
	.quad	0x40147ead0c3d2524              # double 5.1237069999999996
	.quad	0x400f38f4f93bc0a0              # double 3.9028109999999998
	.quad	0x400b8ffd1dcd7061              # double 3.4453070000000001
	.quad	0x4020113f6c2699c8              # double 8.0336870000000005
	.quad	0x4023705814940bbb              # double 9.7194219999999997
	.quad	0x40214bbb83cf2cf9              # double 8.6479149999999994
	.quad	0x40239057f3061c7a              # double 9.7819210000000005
	.quad	0x4015423e9ea14057              # double 5.314692
	.quad	0x40046e07e5a78f26              # double 2.5537260000000002
	.quad	0x4023fce22a2c2374              # double 9.9939129999999991
	.quad	0x40218d3cddd6e04c              # double 8.7758549999999999
	.quad	0x4011dfb506dd69d3              # double 4.468464
	.quad	0x4007e1cef240fa9c              # double 2.985258
	.quad	0x4018966d373affb0              # double 6.1469009999999997
	.quad	0x4023abf141205bc0              # double 9.8358249999999998
	.quad	0x4017926b723ee1bd              # double 5.8929879999999999
	.quad	0x4021c6534373f317              # double 8.8873540000000002
	.quad	0x4010c35696e58a33              # double 4.19076
	.quad	0x3ffcc9d9d3458cd2              # double 1.79928
	.quad	0x4020e9fcb0c026cc              # double 8.4570059999999998
	.quad	0x3ff341c92ddbdb5e              # double 1.2035610000000001
	.quad	0x401e1919ac79702e              # double 7.5245119999999996
	.quad	0x3fd10a808c8259e2              # double 0.266266
	.quad	0x3ff10a8d21bc126a              # double 1.0650759999999999
	.quad	0x3fd3bd9018e75793              # double 0.30844500000000002
	.quad	0x3fd5b44a1f080304              # double 0.33912900000000001
	.quad	0x3fd3460aa64c2f83              # double 0.30114999999999997
	.quad	0x401aefb97bb73083              # double 6.7341059999999997
	.quad	0x3ff31068986fcdee              # double 1.191506
	.quad	0x401917c7c5260f5e              # double 6.2732229999999998
	.quad	0x4008f68405b39e28              # double 3.1203690000000002
	.quad	0x40186aab47410731              # double 6.1041689999999997
	.quad	0x400c8f12c27a6373              # double 3.5698599999999998
	.quad	0x3ff1eb54e2b063e0              # double 1.1199539999999999
	.quad	0x401220ff10ecb74e              # double 4.5322230000000001
	.quad	0x401984d44567125e              # double 6.3797160000000002
	.quad	0x4021550bd87b56b8              # double 8.6661059999999992
	.quad	0x40226fba237cdcca              # double 9.2182169999999992
	.quad	0x4012f9e279dd3bb0              # double 4.7440280000000001
	.quad	0x40219fc02afdda8c              # double 8.8120130000000003
	.quad	0x3ff9fafd976ff3ae              # double 1.623777
	.quad	0x401f584e3ffef391              # double 7.8362360000000004
	.quad	0x4015a9ffd60e94ee              # double 5.4160149999999998
	.quad	0x3ff9f5232d2bb235              # double 1.6223479999999999
	.quad	0x4005a72f33ca31e8              # double 2.7066330000000001
	.quad	0x40196cd91eeaa6d2              # double 6.3562969999999996
	.quad	0x3ff3abfdb4cc2507              # double 1.22949
	.quad	0x4021d25093964a5a              # double 8.9107710000000004
	.quad	0x400150e1b4bb5e0f              # double 2.1644929999999998
	.quad	0x400870f9d2bf5515              # double 3.055164
	.quad	0x4006331a8ef77f28              # double 2.774953
	.quad	0x4022e24febd09e13              # double 9.4420160000000006
	.quad	0x40126a72a7bd48cb              # double 4.6039529999999997
	.quad	0x401631bf7ad4b274              # double 5.5485819999999997
	.quad	0x4014453eb399f5e0              # double 5.0676220000000001
	.quad	0x402139fc6da44849              # double 8.6132539999999995
	.quad	0x3fe9396d0917d6b6              # double 0.78825999999999996
	.quad	0x40111ba01eeed890              # double 4.2769779999999997
	.quad	0x400b01ec4e7253da              # double 3.3759389999999998
	.quad	0x3ff103dddb1209ee              # double 1.0634440000000001
	.quad	0x402361a77e5eaab0              # double 9.6907309999999995
	.quad	0x401e7e631f8a0903              # double 7.6234250000000001
	.quad	0x3ff7c91c087442c8              # double 1.486599
	.quad	0x4014ba89331a08c0              # double 5.1821640000000002
	.quad	0x401f983e8576cce6              # double 7.898676
	.quad	0x401c928e92d55a3a              # double 7.143122
	.quad	0x4020623f8982cb21              # double 8.191891
	.quad	0x401da4fd6d7e889c              # double 7.4111229999999999
	.quad	0x400460639d5e4a38              # double 2.5470649999999999
	.quad	0x400ac23315d701da              # double 3.344824
	.quad	0x3ff611eb851eb852              # double 1.379375
	.quad	0x40225d55e6bc621b              # double 9.1822959999999991
	.quad	0x4009a82f0e0a84be              # double 3.2071209999999999
	.quad	0x40009d68405b39e2              # double 2.0768589999999998
	.quad	0x3ff3d233df2a9d62              # double 1.2388189999999999
	.quad	0x401ec8e68e3ef284              # double 7.6961919999999999
	.quad	0x4004c56f75d9a0f1              # double 2.5964040000000002
	.quad	0x4018ba84be40420f              # double 6.1821469999999996
	.quad	0x400361dfb9389b52              # double 2.42279
	.quad	0x400828815e39713b              # double 3.0197780000000001
	.quad	0x3ff30898f605ab3b              # double 1.1895990000000001
	.quad	0x40178f06705c896e              # double 5.8896730000000002
	.quad	0x40218901f31f46ed              # double 8.7675929999999997
	.quad	0x3ff591bd61f5be5e              # double 1.3480810000000001
	.quad	0x402259db0142f61f              # double 9.1754990000000003
	.quad	0x4022333a0407cc7d              # double 9.1000519999999998
	.quad	0x401ad7d1bb4916ca              # double 6.7107609999999998
	.quad	0x40009653c9abb01d              # double 2.0734020000000002
	.quad	0x402394810a569b17              # double 9.7900469999999994
	.quad	0x4021117763e4abe7              # double 8.5341140000000006
	.quad	0x3feef69a91105e1c              # double 0.96760299999999999
	.quad	0x401ef77ccc037931              # double 7.7416869999999997
	.quad	0x40017e81450efdca              # double 2.1867700000000001
	.quad	0x401129210385c67e              # double 4.290165
	.quad	0x40128212d77318fc              # double 4.6270249999999997
	.quad	0x40202c3419e30015              # double 8.0863350000000001
	.quad	0x40222ecd07852f7f              # double 9.0914079999999995
	.quad	0x40206c76295208e1              # double 8.2118389999999994
	.quad	0x401004e160d887ec              # double 4.004766
	.quad	0x4018cb502ababead              # double 6.1985479999999997
	.quad	0x40209c445aa2e3c5              # double 8.3052089999999996
	.quad	0x4007f909f1f14984              # double 2.9966010000000001
	.quad	0x40146db877ab3248              # double 5.1071489999999997
	.quad	0x402265b6805a2d73              # double 9.198658
	.quad	0x4005fa5b0ff10ecb              # double 2.7472439999999998
	.quad	0x401a6a29845dc832              # double 6.6036739999999998
	.quad	0x40176ce8101f31f4              # double 5.8563539999999996
	.quad	0x4008b1ef30a4e37a              # double 3.0868820000000001
	.quad	0x4012d80baa582dbe              # double 4.7109819999999996
	.quad	0x400e8b0531982880              # double 3.8178809999999999
	.quad	0x40003923a29c779a              # double 2.0278999999999998
	.quad	0x40075e2478854cdb              # double 2.9209679999999998
	.quad	0x4000eb24a6a875d5              # double 2.1148159999999998
	.quad	0x400680c8472c0e7c              # double 2.8128820000000001
	.quad	0x40142af6837f7be1              # double 5.0419559999999999
	.quad	0x401394ae85b9e8c4              # double 4.8951969999999996
	.quad	0x401a1b2702a3486f              # double 6.526516
	.quad	0x401f4a1554fbdad7              # double 7.8223469999999997
	.quad	0x40155636b0963561              # double 5.334193
	.quad	0x40196dc50ce4ead1              # double 6.3571970000000002
	.quad	0x4012a022dd7a99fa              # double 4.6563829999999999
	.quad	0x3fff3b224aada33c              # double 1.951937
	.quad	0x3ff984806290eed0              # double 1.594849
	.quad	0x4002516b11c6d1e1              # double 2.289755
	.quad	0x3ffc37ea1c68ec53              # double 1.7636510000000001
	.quad	0x3fe8110a137f38c5              # double 0.75207999999999997
	.quad	0x402094cccccccccd              # double 8.2906250000000004
	.quad	0x401c3f5c28f5c28f              # double 7.0618749999999997
	.quad	0x401820e453d20f2c              # double 6.0321210000000001
	.quad	0x400d713404ea4a8c              # double 3.680275
	.quad	0x401454095f2452c6              # double 5.0820670000000003
	.quad	0x40098b0c88a47ed0              # double 3.192895
	.quad	0x40124b1572580c31              # double 4.5733240000000004
	.quad	0x400d2f19934efcbd              # double 3.6479979999999999
	.quad	0x401b29cc319c5a3e              # double 6.7908179999999998
	.quad	0x400ee2467be553ac              # double 3.8604859999999999
	.quad	0x4017659a73b42cc3              # double 5.8492220000000001
	.quad	0x400d34fa48301a7a              # double 3.650868
	.quad	0x40104eaaf35e310e              # double 4.0768240000000002
	.quad	0x400db77963992c8c              # double 3.7145869999999999
	.quad	0x40204f88333fc86d              # double 8.1553360000000001
	.quad	0x4014c26fe718a86d              # double 5.1898799999999996
	.quad	0x3ff706940357a355              # double 1.439106
	.quad	0x4015b0d0edc3bd5a              # double 5.4226720000000004
	.quad	0x3ffecc25072085b2              # double 1.9248400000000001
	.quad	0x40237dbccaf709b7              # double 9.7455809999999996
	.quad	0x3fe7636b09635611              # double 0.73088600000000004
	.quad	0x3ff7803148776816              # double 1.4687969999999999
	.quad	0x400809e774eebf66              # double 3.0048360000000001
	.quad	0x401eded5f138bce0              # double 7.7176130000000001
	.quad	0x402214c9ea9a3d2e              # double 9.0406030000000008
	.quad	0x4022271a9fbe76c9              # double 9.0763750000000005
	.quad	0x400345753a3ec02f              # double 2.4089149999999999
	.quad	0x3fdd21c044284dfd              # double 0.45518500000000001
	.quad	0x3fb614bdfd2630ec              # double 0.086253999999999997
	.quad	0x401c4de5d18090b4              # double 7.0760719999999999
	.quad	0x400aa32e3821af7d              # double 3.3296779999999999
	.quad	0x40129c33f85510d4              # double 4.6525420000000004
	.quad	0x3fe6d72de43ed95a              # double 0.71376700000000004
	.quad	0x401eab7e0ac7da1f              # double 7.6674730000000002
	.quad	0x4015336bd2b6f199              # double 5.3002159999999998
	.quad	0x400b5fe8ee6b8306              # double 3.4218310000000001
	.quad	0x402091231c64ba95              # double 8.2834710000000005
	.quad	0x401c2e41d4b6a61a              # double 7.0451730000000001
	.quad	0x3fe0c4998d045fe1              # double 0.52399899999999999
	.quad	0x402079e215336dec              # double 8.2380530000000007
	.quad	0x401b13361565c2d2              # double 6.7687609999999996
	.quad	0x401f37f993d5347a              # double 7.8046629999999997
	.quad	0x3ff7c43a2163fdd6              # double 1.4854069999999999
	.quad	0x40081b60285ec3db              # double 3.0133670000000001
	.quad	0x3fe94fb3311a543f              # double 0.79097899999999999
	.quad	0x40154d1f601797cc              # double 5.3253149999999998
	.quad	0x4015a31a4bdba0a5              # double 5.4092799999999999
	.quad	0x4020f99b2c40d0ab              # double 8.4875120000000006
	.quad	0x3fed61b2a27f1b69              # double 0.91817599999999999
	.quad	0x402324562e09fe87              # double 9.5709700000000008
	.quad	0x402005df00abf76a              # double 8.0114669999999997
	.quad	0x401ab97dd00f776c              # double 6.6811439999999997
	.quad	0x402324d63cb81733              # double 9.5719469999999997
	.quad	0x40146c3eb7cbb3c8              # double 5.1057079999999999
	.quad	0x3ffb6d256798958e              # double 1.7141470000000001
	.quad	0x3ff6e0eb67c286f9              # double 1.4299120000000001
	.quad	0x4000d2a94ff0025c              # double 2.102862
	.quad	0x4022e42f837b4a23              # double 9.4456749999999995
	.quad	0x3fdabba12b5e529c              # double 0.41770200000000002
	.quad	0x3ff4ea960b6f9fcb              # double 1.307272
	.quad	0x3fe09131ec0b5675              # double 0.51772399999999996
	.quad	0x401a7fd1569f4906              # double 6.624822
	.quad	0x40216fdfc19c1722              # double 8.7185039999999994
	.quad	0x3fbac1f42bb66730              # double 0.104522
	.quad	0x3ffacdb7ae5796c0              # double 1.675224
	.quad	0x4020f25e56cd6c2f              # double 8.473376
	.quad	0x401a7e6299524bfd              # double 6.6234229999999998
	.quad	0x4021d22c2374794f              # double 8.9104930000000007
	.quad	0x4007091d9b1b79d9              # double 2.879451
	.quad	0x40118477bbf93ff2              # double 4.3793629999999997
	.quad	0x401207ced916872b              # double 4.507625
	.quad	0x4020e7d82773e250              # double 8.4528210000000001
	.quad	0x3fecefdeb52c9d17              # double 0.904281
	.quad	0x402084af709b738e              # double 8.2591509999999992
	.quad	0x40003183b60285ec              # double 2.0241769999999999
	.quad	0x40214cae85b9e8c4              # double 8.6497689999999991
	.quad	0x4015b6deb95e5aff              # double 5.4285839999999999
	.quad	0x40095f23465625a7              # double 3.1714540000000002
	.quad	0x401ea3c07ee0b0af              # double 7.6599139999999996
	.quad	0x4002dfa4c61d8623              # double 2.3592010000000001
	.quad	0x400d3c8b86b15f89              # double 3.654563
	.quad	0x400a2f262888b546              # double 3.2730220000000001
	.quad	0x4021c99d451fc4c1              # double 8.8937779999999993
	.quad	0x4001a89dadfb506e              # double 2.2073320000000001
	.quad	0x400614bf8fcd67fd              # double 2.7601309999999999
	.quad	0x4015856c508b32cf              # double 5.3802960000000004
	.quad	0x400aba99fa11a976              # double 3.3411140000000001
	.quad	0x401f7e9ccb7d4174              # double 7.8736449999999998
	.quad	0x401a06e935b91f71              # double 6.5067490000000001
	.quad	0x400a64755ffe6d59              # double 3.2990520000000001
	.quad	0x402108333fc86cec              # double 8.5160160000000004
	.quad	0x3fedc93ea2d2fe3f              # double 0.93081599999999998
	.quad	0x401d54aa9717df1a              # double 7.3326820000000001
	.quad	0x4002692bc2fc6973              # double 2.3013530000000002
	.quad	0x401e31e4f765fd8b              # double 7.5487250000000001
	.quad	0x40082d0c3d25247d              # double 3.0219960000000001
	.quad	0x3ff7d4a0a0f4d7ae              # double 1.489411
	.quad	0x400c241cc532a498              # double 3.517633
	.quad	0x40208c8d5c74751d              # double 8.2745160000000002
	.quad	0x401d47c3504c48ae              # double 7.3200810000000001
	.quad	0x3fd2c504816f0069              # double 0.29327500000000001
	.quad	0x401581355475a31a              # double 5.3761799999999997
	.quad	0x4023e3e48a58b3f6              # double 9.9451029999999996
	.quad	0x3f8b38d60a633051              # double 0.013292
	.quad	0x401a8a66559f6ec6              # double 6.6351560000000003
	.quad	0x3ff47d3a1d323fee              # double 1.280573
	.quad	0x4017efd2a62aa194              # double 5.9842019999999998
	.quad	0x401ab7ad8e432442              # double 6.679373
	.quad	0x40102de6ddf00abf              # double 4.0448259999999996
	.quad	0x400b94f0520d130e              # double 3.447724
	.quad	0x40119eb78897e996              # double 4.4049969999999998
	.quad	0x4021e1eb6390c910              # double 8.9412489999999991
	.quad	0x4020eb9e279dd3bb              # double 8.460191
	.quad	0x4011644cbe1eb420              # double 4.3479489999999998
	.quad	0x3ff97294dd72367e              # double 1.5904739999999999
	.quad	0x4022a6daa92e6213              # double 9.3258869999999998
	.quad	0x4014ec17ebaf1023              # double 5.2305599999999997
	.quad	0x401f83b320535c9e              # double 7.8786129999999996
	.quad	0x3ffe6de54b48d3ae              # double 1.9018299999999999
	.quad	0x400e483558a76102              # double 3.7852579999999998
	.quad	0x40200402d16b97ff              # double 8.0078340000000008
	.quad	0x3ff716f86a098916              # double 1.4431080000000001
	.quad	0x4023686317268d33              # double 9.7038810000000008
	.quad	0x400bc6223e186983              # double 3.4717449999999999
	.quad	0x3fff00789613d31c              # double 1.9376150000000001
	.quad	0x401ebb7b28954a80              # double 7.6830870000000004
	.quad	0x401f23886594af4f              # double 7.7846999999999999
	.quad	0x4005f00d5e8d5411              # double 2.742213
	.quad	0x401929a62ed35222              # double 6.290673
	.quad	0x4016b31ad2135dab              # double 5.6749070000000001
	.quad	0x401e8d6b228dc982              # double 7.6381040000000002
	.quad	0x4004c29f9ce8d973              # double 2.5950310000000001
	.quad	0x401c723d9231c64c              # double 7.1115630000000003
	.quad	0x40135548a9bcfd4c              # double 4.8332850000000001
	.quad	0x401b5fd36f7e3d1d              # double 6.8435800000000002
	.quad	0x400f6b484d76ab58              # double 3.927384
	.quad	0x3feccbd556084a51              # double 0.89988199999999996
	.quad	0x40189c5e2cdc011d              # double 6.1527029999999998
	.quad	0x402207cfe5860136              # double 9.0152579999999993
	.quad	0x401d3bbadc0980b2              # double 7.3083299999999998
	.quad	0x3fef31f03d145d85              # double 0.97484599999999999
	.quad	0x3fd32fa93af74cd3              # double 0.29978399999999999
	.quad	0x3fd64927913e8145              # double 0.348215
	.quad	0x4020b30d0edc3bd6              # double 8.3497090000000007
	.quad	0x4023ea9d1f601798              # double 9.9582300000000003
	.quad	0x4021b7e90ff97247              # double 8.8591999999999995
	.quad	0x3ff8f5275ee99a63              # double 1.559852
	.quad	0x4016de45c358afc4              # double 5.7170629999999996
	.quad	0x3fae2c98e53eb39a              # double 0.058934
	.quad	0x3fc69cb252ce032e              # double 0.17665700000000001
	.quad	0x400772fa0d77b7c8              # double 2.9311410000000002
	.quad	0x3fde0828c36da87a              # double 0.469248
	.quad	0x401bddcdb37c99af              # double 6.9666050000000004
	.quad	0x3ff9ec0724b76f6d              # double 1.6201239999999999
	.quad	0x4017f13cee9dd7ed              # double 5.9855840000000002
	.quad	0x400d13b18dac258d              # double 3.6346159999999998
	.quad	0x3fcdffd60e94ee39              # double 0.23436999999999999
	.quad	0x40082d26fa3fcc9f              # double 3.0220470000000001
	.quad	0x40198f666234a87e              # double 6.3900389999999998
	.quad	0x401ea878316a0557              # double 7.6645209999999996
	.quad	0x4021a8b69552e2fc              # double 8.8295180000000001
	.quad	0x402153c33f85510d              # double 8.6635989999999996
	.quad	0x40113db48909289e              # double 4.3102590000000003
	.quad	0x3feb87d2c7b890d6              # double 0.86033000000000004
	.quad	0x3ffa93faf42784a9              # double 1.6611279999999999
	.quad	0x4020cd7de0d66f0d              # double 8.401351
	.quad	0x400056605ee568a5              # double 2.042176
	.quad	0x401675b70691ea79              # double 5.6149560000000003
	.quad	0x401b89591cd1c7de              # double 6.8841289999999997
	.quad	0x4023e288ace24bba              # double 9.9424489999999999
	.quad	0x40032752da98676a              # double 2.3942009999999998
	.quad	0x3fd9a86940357a35              # double 0.40090399999999998
	.quad	0x4011592b7fe08af0              # double 4.3370800000000003
	.quad	0x3ff6ac9afe1da7b1              # double 1.4171400000000001
	.quad	0x4013580bed740c41              # double 4.8359829999999997
	.quad	0x4020a38e6d15ad10              # double 8.3194459999999992
	.quad	0x3fd81511dffc547a              # double 0.37628600000000001
	.quad	0x4022063fbbd7b203              # double 9.0122049999999998
	.quad	0x4023b2a8869c66d3              # double 9.8489419999999991
	.quad	0x3ffb8dd3fe1975f3              # double 1.722126
	.quad	0x3fd3a6266fd651b1              # double 0.30701600000000001
	.quad	0x4011686bdf4c2b52              # double 4.3519740000000002
	.quad	0x40206438d1d8a548              # double 8.1957459999999998
	.quad	0x402178adab9f559b              # double 8.7356999999999996
	.quad	0x4013d737da61e0c6              # double 4.9601740000000003
	.quad	0x4009c869c66d373b              # double 3.222858
	.quad	0x4003d1cb039ef0f1              # double 2.4774379999999998
	.quad	0x402061c6088d6d3b              # double 8.1909639999999992
	.quad	0x4000b81c714fce74              # double 2.0898979999999998
	.quad	0x401f68f648c7192f              # double 7.8525020000000003
	.quad	0x3fff5d334c5da6a4              # double 1.9602539999999999
	.quad	0x4020d9129888f862              # double 8.4239700000000006
	.quad	0x40124ca57a786c22              # double 4.5748499999999996
	.quad	0x3fdfaf1886df82b2              # double 0.495062
	.quad	0x40156db445ed4a1b              # double 5.3571330000000001
	.quad	0x4017da5df2239e6b              # double 5.9632490000000002
	.quad	0x40113a5a469d7343              # double 4.3069850000000001
	.quad	0x40203df0f5a1016d              # double 8.1209790000000002
	.quad	0x4020eb30d738609a              # double 8.4593570000000007
	.quad	0x401e09085f4a1273              # double 7.5088210000000001
	.quad	0x402110667f90d9d7              # double 8.5320319999999992
	.quad	0x400e70e347629521              # double 3.8051210000000002
	.quad	0x3feec58cd20afa2f              # double 0.96161499999999999
	.quad	0x40191ae5bc87db2b              # double 6.2762669999999998
	.quad	0x4023a32e7b3d8e00              # double 9.8187139999999999
	.quad	0x400f9357e670e2c1              # double 3.9469449999999999
	.quad	0x4017f4666ec9e237              # double 5.9886720000000002
	.quad	0x40200f0b49e01de2              # double 8.0293829999999993
	.quad	0x4017d6e19b90ea9e              # double 5.9598449999999996
	.quad	0x401b2e40420f6f09              # double 6.7951670000000002
	.quad	0x400e6e4b018611fd              # double 3.8038539999999998
	.quad	0x401427d63022dd7b              # double 5.0389030000000004
	.quad	0x401d700d5e8d5411              # double 7.359426
	.quad	0x401b561ae70c1334              # double 6.8340870000000002
	.quad	0x3ff9673e681a9b8d              # double 1.5877060000000001
	.quad	0x400a3e2ac3222920              # double 3.2803550000000001
	.quad	0x401ac4d44567125e              # double 6.6922160000000002
	.quad	0x401a9955b4677b39              # double 6.6497409999999997
	.quad	0x4002ab7457c0b136              # double 2.3337180000000002
	.quad	0x401be37c1376d549              # double 6.9721529999999996
	.quad	0x401687b2cc70867b              # double 5.6325180000000001
	.quad	0x40181cbff47735c2              # double 6.0280760000000004
	.quad	0x402228a350d2806b              # double 9.0793710000000001
	.quad	0x4005ec154c985f07              # double 2.740275
	.quad	0x401502a411c2a023              # double 5.2525789999999999
	.quad	0x400f222d5171e29b              # double 3.8916879999999998
	.quad	0x40237677d523b363              # double 9.7313829999999992
	.quad	0x401edb8ed1bf7ad5              # double 7.7144120000000002
	.quad	0x4017ad031055b899              # double 5.9189569999999998
	.quad	0x4022b433721d53ce              # double 9.3519550000000002
	.quad	0x400780b135979182              # double 2.9378380000000002
	.quad	0x4011f7d1351159c5              # double 4.4920090000000004
	.quad	0x400876ef8055fbb5              # double 3.058074
	.quad	0x401c40b9dc2f405f              # double 7.0632089999999996
	.quad	0x401ba6e6106ab14f              # double 6.9129870000000002
	.quad	0x401d0e1b4bb5e0f8              # double 7.263776
	.quad	0x401aa57eed45e918              # double 6.6616169999999997
	.quad	0x400d9de15ca6ca04              # double 3.7020900000000001
	.quad	0x3ff6eb723ee1bd1f              # double 1.432482
	.quad	0x4023dca9ef5232d3              # double 9.9309840000000004
	.quad	0x400d564302b40f67              # double 3.6671200000000002
	.quad	0x402244e09784ec63              # double 9.1345259999999993
	.quad	0x401df475a31a4bdc              # double 7.4887300000000003
	.quad	0x4011fff7164c729f              # double 4.4999659999999997
	.quad	0x4000c6aa087ca644              # double 2.0970040000000001
	.quad	0x40076e04c0592104              # double 2.9287200000000002
	.quad	0x4007b7a3db3bfb59              # double 2.9646680000000001
	.quad	0x400181ec4e7253da              # double 2.1884389999999998
	.quad	0x3ff24779a6b50b0f              # double 1.14245
	.quad	0x40219bc558644524              # double 8.80424
	.quad	0x3ff79a500d5e8d54              # double 1.475174
	.quad	0x3fd61aeb3dd11be7              # double 0.34539300000000001
	.quad	0x400b9c3ac929aa1d              # double 3.4512839999999998
	.quad	0x400069070fbeb9e5              # double 2.0512830000000002
	.quad	0x4020b92a51e321a3              # double 8.3616510000000002
	.quad	0x4019cb927d45a5fc              # double 6.4488009999999996
	.quad	0x400830c1333b96af              # double 3.023806
	.quad	0x4014591c8eabffce              # double 5.0870230000000003
	.quad	0x401cfeb6bf444e0e              # double 7.2487440000000003
	.quad	0x4021f369fcf3dc05              # double 8.9754179999999995
	.quad	0x4012525a682b6284              # double 4.5804229999999997
	.quad	0x401cf13d31b9b670              # double 7.2355850000000004
	.quad	0x4022217460242d06              # double 9.0653410000000001
	.quad	0x3fdf779a6b50b0f2              # double 0.49167499999999997
	.quad	0x400e9af859429175              # double 3.825669
	.quad	0x40199ac36544fe37              # double 6.4011360000000002
	.quad	0x3ffd338e6d15ad10              # double 1.8250869999999999
	.quad	0x401820435efa615b              # double 6.0315070000000004
	.quad	0x3fdf43393ab430f5              # double 0.48847800000000002
	.quad	0x4016d1654d61b2a2              # double 5.7044879999999996
	.quad	0x4016a09917939a7c              # double 5.6568339999999999
	.quad	0x3fc470196d8f4f94              # double 0.15967100000000001
	.quad	0x40000376922d948e              # double 2.0016910000000001
	.quad	0x4001447a9e2bcf92              # double 2.1584370000000002
	.quad	0x4020ce0fc2eba27b              # double 8.4024640000000002
	.quad	0x40217fee0b0af5fd              # double 8.7498629999999995
	.quad	0x3ff4cc0053e2d624              # double 1.2998050000000001
	.quad	0x4009a870110a137f              # double 3.2072449999999999
	.quad	0x401456d97b30f8c6              # double 5.0848139999999997
	.quad	0x401ec33ca31e7d9a              # double 7.6906610000000004
	.quad	0x3ff3c25d074213a1              # double 1.234952
	.quad	0x401906e75ff609dd              # double 6.256742
	.quad	0x4022720620ab7132              # double 9.2227029999999992
	.quad	0x3ff5123810e88590              # double 1.316948
	.quad	0x40035dec5f394b7b              # double 2.4208609999999999
	.quad	0x3fe52d01c0ca600b              # double 0.661744
	.quad	0x401759131ec0b567              # double 5.8369869999999997
	.quad	0x3ff17bc5de9c022a              # double 1.0927180000000001
	.quad	0x40058ec743201041              # double 2.6947160000000001
	.quad	0x402063bea91d9b1b              # double 8.1948139999999992
	.quad	0x3ffe29cbab649d39              # double 1.8852040000000001
	.quad	0x40050b60f1b25f63              # double 2.6305559999999999
	.quad	0x40140e7d1351159c              # double 5.0141489999999997
	.quad	0x4013f532617c1bda              # double 4.9894499999999997
	.quad	0x3fe7da9eb2074ea9              # double 0.74543700000000002
	.quad	0x40206ab66b6177ea              # double 8.2084229999999998
	.quad	0x401aae939eadd591              # double 6.6704850000000002
	.quad	0x401004ff43419e30              # double 4.00488
	.quad	0x40227118a009f623              # double 9.2208909999999999
	.quad	0x4020c27525460aa6              # double 8.3797999999999995
	.quad	0x3ff9dd9c27e95315              # double 1.6166039999999999
	.quad	0x4018aad4f5903a75              # double 6.1668279999999998
	.quad	0x401726abde3fbbd8              # double 5.7877650000000003
	.quad	0x40199cba30121683              # double 6.403054
	.quad	0x4020161522a6f3f5              # double 8.0431299999999997
	.quad	0x4017713a0c6b484d              # double 5.8605729999999996
	.quad	0x40238150331e3a7e              # double 9.7525650000000006
	.quad	0x4021655000c9539c              # double 8.6978760000000008
	.quad	0x400111f46ed245b3              # double 2.1337670000000002
	.quad	0x4015e02e2328f9f4              # double 5.4689259999999997
	.quad	0x3fce73365881a155              # double 0.23789099999999999
	.quad	0x400e65df2239e6ac              # double 3.7997420000000002
	.quad	0x40075a3b14a90471              # double 2.9190580000000002
	.quad	0x401efe1ef73c0c20              # double 7.7481650000000002
	.quad	0x4023d22e3c536d65              # double 9.9105089999999993
	.quad	0x401db945308bb906              # double 7.4309279999999998
	.quad	0x4001e77ff151e753              # double 2.2380369999999998
	.quad	0x3fafbce4217d284a              # double 0.061988000000000001
	.quad	0x4010d33ce63a5c1c              # double 4.2062869999999997
	.quad	0x40213d8665e02ea9              # double 8.6201659999999993
	.quad	0x40172d035371971c              # double 5.7939579999999999
	.quad	0x3fe483be6601bc99              # double 0.64108200000000004
	.quad	0x3ff46a044ae85b9f              # double 1.2758830000000001
	.quad	0x40212337eb28d866              # double 8.5687859999999993
	.quad	0x4022ec6583e8576d              # double 9.4617120000000003
	.quad	0x40012bf338716095              # double 2.1464599999999998
	.quad	0x401d483382e44b6f              # double 7.3205090000000004
	.quad	0x4007e746cb966be8              # double 2.9879280000000001
	.quad	0x40207680bed740c4              # double 8.2314509999999998
	.quad	0x40105df2ecf20642              # double 4.0917469999999998
	.quad	0x4018946e8f29d40f              # double 6.1449530000000001
	.quad	0x401d95553ef6b5d4              # double 7.3958329999999997
	.quad	0x4013f28997c3d684              # double 4.986853
	.quad	0x401c3c17ebaf1023              # double 7.0586849999999997
	.quad	0x401f14195cc857f3              # double 7.7696279999999999
	.quad	0x40064f32bdc26dce              # double 2.7886709999999999
	.quad	0x40218cec636b0963              # double 8.7752409999999994
	.quad	0x400064a9cdc44391              # double 2.0491519999999999
	.quad	0x4011f35c9e6687f4              # double 4.4876579999999997
	.quad	0x400e110342aa9f7b              # double 3.7583069999999998
	.quad	0x40239a4cc6822ff1              # double 9.8013670000000008
	.quad	0x401bf5af6c69b5a6              # double 6.9899269999999998
	.quad	0x400b4767d34df04e              # double 3.4098660000000001
	.quad	0x40066e70c1333b97              # double 2.8039260000000001
	.quad	0x40211b76709fa54c              # double 8.5536379999999994
	.quad	0x4007a14ad362e903              # double 2.9537559999999998
	.quad	0x401a771a7e308787              # double 6.6163119999999997
	.quad	0x4013b35a426bb55b              # double 4.9251490000000002
	.quad	0x4008c8f8e7ddca4b              # double 3.098131
	.quad	0x400694a90470a809              # double 2.8225880000000001
	.quad	0x40042d490e66cb10              # double 2.5221119999999999
	.quad	0x400f0539fba450ad              # double 3.8775520000000001
	.quad	0x4011622036006d0d              # double 4.3458259999999997
	.quad	0x40227386b15f88fd              # double 9.2256370000000008
	.quad	0x4017c7ad8e432442              # double 5.944998
	.quad	0x401e1fa7a85015c2              # double 7.530913
	.quad	0x4006bb517a46173c              # double 2.8414640000000002
	.quad	0x40174b4070329803              # double 5.8234880000000002
	.quad	0x402066d783dff3f1              # double 8.200863
	.quad	0x4022738c75c4a83b              # double 9.2256809999999998
	.quad	0x3ff1e646f1561911              # double 1.1187199999999999
	.quad	0x40159003254e6e22              # double 5.3906369999999999
	.quad	0x401705e17e34b945              # double 5.7557429999999998
	.quad	0x401e53de1e2de871              # double 7.5819020000000003
	.quad	0x401b2b2bba98eda2              # double 6.7921589999999998
	.quad	0x4018967a95c853c1              # double 6.1469519999999997
	.quad	0x40214c141e9af5ba              # double 8.6485909999999997
	.quad	0x4022efb56b873797              # double 9.4681809999999995
	.quad	0x402089de481f5382              # double 8.2692739999999993
	.quad	0x4016b82b62845996              # double 5.6798529999999996
	.quad	0x401eb842fa509396              # double 7.6799429999999997
	.quad	0x4023dde0b4e11dbd              # double 9.9333550000000006
	.quad	0x40067bf0563ed0f6              # double 2.8105169999999999
	.quad	0x400815a187a4a490              # double 3.0105620000000002
	.quad	0x3ff2a31b584b1ab1              # double 1.1648210000000001
	.quad	0x3ff694c016052503              # double 1.411316
	.quad	0x40209115379fa97e              # double 8.2833649999999999
	.quad	0x401ca09917939a7c              # double 7.1568339999999999
	.quad	0x40158024f6598e11              # double 5.3751410000000002
	.quad	0x40047a75cd0bb6ed              # double 2.5597949999999998
	.quad	0x40006705425f2021              # double 2.050303
	.quad	0x400cde4bcad9ad86              # double 3.6085430000000001
	.quad	0x401c92ab68cef673              # double 7.1432320000000002
	.quad	0x401f1bffcdab191e              # double 7.7773430000000001
	.quad	0x400157d2849cb253              # double 2.1678820000000001
	.quad	0x400603864cb5bb38              # double 2.7517209999999999
	.quad	0x40160346dc5d6388              # double 5.5031999999999996
	.quad	0x4016905ff1d81f10              # double 5.6409909999999996
	.quad	0x400052ddbdb5d895              # double 2.0404620000000002
	.quad	0x4016cc6d1e108c3f              # double 5.6996349999999998
	.quad	0x402131c9b4139863              # double 8.5972419999999996
	.quad	0x401119d66adb402d              # double 4.2752319999999999
	.quad	0x3ff522f37fbefd00              # double 1.3210329999999999
	.quad	0x401b9605ab3aabcd              # double 6.8965059999999996
	.quad	0x401de05b39e279dd              # double 7.4690979999999998
	.quad	0x401f2467381d7dbf              # double 7.7855499999999997
	.quad	0x400e895a6c5d206d              # double 3.8170670000000002
	.quad	0x3ff41d8c6d612c6b              # double 1.2572140000000001
	.quad	0x3fa12b1b36bd2b6f              # double 0.033531999999999999
	.quad	0x3fb630caa326e115              # double 0.086681999999999995
	.quad	0x401a39d0203e63e9              # double 6.5564580000000001
	.quad	0x401c4a372606fac6              # double 7.072476
	.quad	0x4022ece6e221c8a8              # double 9.4626990000000006
	.quad	0x401d14cc25072086              # double 7.2703100000000003
	.quad	0x400e04ead0c3d252              # double 3.7524009999999999
	.quad	0x3fe2b4a2339c0ebf              # double 0.58455000000000001
	.quad	0x400a2541d8e86402              # double 3.268192
	.quad	0x401d51ef73c0c1fd              # double 7.3300150000000004
	.quad	0x4013aab9b23dd54e              # double 4.9167240000000003
	.quad	0x401b45cbbc2b94d9              # double 6.8181599999999998
	.quad	0x4010a92ff4ba51a0              # double 4.165222
	.quad	0x40237934ce3de615              # double 9.7367310000000006
	.quad	0x40021d08d4bad7d8              # double 2.2641770000000001
	.quad	0x4018683be6601bca              # double 6.1017910000000004
	.quad	0x4000867168f8e7de              # double 2.0656460000000001
	.quad	0x3fec967a95c853c1              # double 0.89336899999999997
	.quad	0x400f22730c671690              # double 3.8918210000000002
	.quad	0x402122495e17e34c              # double 8.5669660000000007
	.quad	0x4016cea747d805e6              # double 5.70181
	.quad	0x401057a7c9de0503              # double 4.0856009999999996
	.quad	0x3fc716440f238972              # double 0.180367
	.quad	0x401b7ad81adea897              # double 6.8699649999999997
	.quad	0x401b0e4606748e47              # double 6.7639389999999997
	.quad	0x40226835dedf1e08              # double 9.2035359999999997
	.quad	0x400c0f5b1c864884              # double 3.507498
	.quad	0x4018b65ba6efc372              # double 6.1780840000000001
	.quad	0x401410c9107faa04              # double 5.0163919999999997
	.quad	0x401c0a8112ba16e8              # double 7.0102580000000003
	.quad	0x4023963d5fdcdf6a              # double 9.7934370000000008
	.quad	0x401988c2a454de7f              # double 6.3835550000000003
	.quad	0x3fec4aa7589efd87              # double 0.88411300000000004
	.quad	0x402000537e2c55c9              # double 8.0006369999999993
	.quad	0x3fb52c7b890d5a5c              # double 0.082710000000000006
	.quad	0x402317a28bb0a2cb              # double 9.5461620000000007
	.quad	0x40202baf533f4235              # double 8.0853219999999997
	.quad	0x3ffb3b139c94f69d              # double 1.7019230000000001
	.quad	0x400d6cc037931444              # double 3.6781009999999998
	.quad	0x400865ec3dab5c3a              # double 3.0497670000000001
	.quad	0x4015ad71b0468449              # double 5.4193790000000002
	.quad	0x40230a6f826edaa9              # double 9.5203819999999996
	.quad	0x400757b2031ceaf2              # double 2.9178199999999999
	.quad	0x4021751c9f72f76e              # double 8.7287339999999993
	.quad	0x40103bc4d22c881e              # double 4.0583679999999998
	.quad	0x400ddb4677b395c4              # double 3.7320679999999999
	.quad	0x3ff9246cfc829cfe              # double 1.571393
	.quad	0x401efc0ad03d9a95              # double 7.7461349999999997
	.quad	0x400b6a8da7f3cf70              # double 3.427028
	.quad	0x3ff09c7368ad6883              # double 1.0381959999999999
	.quad	0x401f9b955f78359c              # double 7.9019370000000002
	.quad	0x4021b4fc1df3300e              # double 8.8534860000000002
	.quad	0x40025ccf28c79f66              # double 2.2953169999999998
	.quad	0x400bc67dfe32a066              # double 3.4719199999999999
	.quad	0x4015e10e02214270              # double 5.4697800000000001
	.quad	0x40170b18548a9bd0              # double 5.7608350000000002
	.quad	0x401801290257c915              # double 6.0011330000000003
	.quad	0x4015d893faf42785              # double 5.4615020000000003
	.quad	0x3fe963800218def4              # double 0.79339599999999999
	.quad	0x401e027aa68f4b62              # double 7.502421
	.quad	0x40125c026cc1ca3a              # double 4.5898529999999997
	.quad	0x40144d130df9bdc7              # double 5.0752680000000003
	.quad	0x40183a0a958537e3              # double 6.0566810000000002
	.quad	0x4004468d32830a0b              # double 2.534449
	.quad	0x401be2aa19439de5              # double 6.9713520000000004
	.quad	0x40121167a95c853c              # double 4.5169969999999999
	.quad	0x4023e79ee02a77a3              # double 9.9523840000000003
	.quad	0x401c976bc1eff9f8              # double 7.1478719999999996
	.quad	0x3ff754013ec460ee              # double 1.4580090000000001
	.quad	0x3fd262131a8ef77f              # double 0.28723599999999999
	.quad	0x4016b97e132b55ef              # double 5.6811449999999999
	.quad	0x401367318fc50481              # double 4.8507749999999996
	.quad	0x40232048beb5b2d5              # double 9.5630550000000003
	.quad	0x4022a744d4456712              # double 9.3266969999999993
	.quad	0x401fc51d68c692f7              # double 7.942495
	.quad	0x400551c3265add9c              # double 2.6649229999999999
	.quad	0x40223dc52e72da12              # double 9.1206449999999997
	.quad	0x3fff44d013a92a30              # double 1.9542999999999999
	.quad	0x40200f62f9ca5bd9              # double 8.0300519999999995
	.quad	0x40235aa12f901084              # double 9.6770110000000002
	.quad	0x401322e4d1a65061              # double 4.7840759999999998
	.quad	0x40206213a0c6b485              # double 8.1915560000000003
	.quad	0x4021a01322f27350              # double 8.8126460000000009
	.quad	0x401dc20e6299524c              # double 7.439508
	.quad	0x401fc5336deb95e6              # double 7.9425790000000003
	.quad	0x40146a0ad8a11666              # double 5.1035570000000003
	.quad	0x402021569f490603              # double 8.0651139999999995
	.quad	0x40219ea63b688bdb              # double 8.8098620000000007
	.quad	0x3ff5e2036006d0d5              # double 1.3676790000000001
	.quad	0x3ffad9a0f0a5efe9              # double 1.678132
	.quad	0x401ba3d5fdcdf698              # double 6.9099959999999996
	.quad	0x4016e0941c8216c6              # double 5.7193149999999999
	.quad	0x40108ef99806f263              # double 4.1396240000000004
	.quad	0x3fe7efef7c243dcd              # double 0.74803900000000001
	.quad	0x401bc9c842fa5094              # double 6.9470530000000004
	.quad	0x3ff7b911cf355cd9              # double 1.482683
	.quad	0x4021694b7b28954a              # double 8.7056539999999991
	.quad	0x3ff4ca5482385404              # double 1.2993969999999999
	.quad	0x401b7849cb252ce0              # double 6.8674689999999998
	.quad	0x400f53b4b2fa93af              # double 3.9158719999999998
	.quad	0x401412917507e9d9              # double 5.0181329999999997
	.quad	0x3ff140dd3fe1975f              # double 1.078336
	.quad	0x401d9921ccd96207              # double 7.3995430000000004
	.quad	0x3fbc0a5accd53049              # double 0.10953300000000001
	.quad	0x401e9d24e160d888              # double 7.653461
	.quad	0x401f164b2314013f              # double 7.7717710000000002
	.quad	0x400ff12018a43bb4              # double 3.992737
	.quad	0x402165bdd76683c3              # double 8.6987140000000007
	.quad	0x400b1c03bc4d22c9              # double 3.3886790000000002
	.quad	0x4021ab3daf8df7a5              # double 8.8344550000000002
	.quad	0x40217828a1dfb939              # double 8.7346850000000007
	.quad	0x400e2ad0c3d25248              # double 3.7709060000000001
	.quad	0x4012a649d388a8b1              # double 4.6623910000000004
	.quad	0x400845aee631f8a1              # double 3.0340250000000002
	.quad	0x4023a54c55432874              # double 9.8228480000000004
	.quad	0x401d64f0d844d014              # double 7.3485750000000003
	.quad	0x3ff9446950fc71d6              # double 1.579202
	.quad	0x4015520535c9e668              # double 5.3300979999999996
	.quad	0x3fd8c3c18b502abb              # double 0.38694800000000001
	.quad	0x400416bebe1650a4              # double 2.5111059999999998
	.quad	0x401626a1e81cb46c              # double 5.5377270000000003
	.quad	0x3ff94c34c1a8ac5c              # double 1.581105
	.quad	0x3ffb2b14ec204f2b              # double 1.698018
	.quad	0x3fb449ecb31c219f              # double 0.079253000000000004
	.quad	0x401e2b5aa715831f              # double 7.5423379999999999
	.quad	0x40059f8b9baa1512              # double 2.7029030000000001
	.quad	0x40024f61ed5ae1ce              # double 2.288761
	.quad	0x4002ec322291fb40              # double 2.3653300000000002
	.quad	0x402019628cbd1245              # double 8.0495800000000006
	.quad	0x3fe224228997c3d7              # double 0.56691100000000005
	.quad	0x402181ce8d972cd8              # double 8.7535290000000003
	.quad	0x400c84a6a875d56f              # double 3.5647709999999999
	.quad	0x400a7550ca1cef24              # double 3.307283
	.quad	0x4009e90a350d2807              # double 3.2387890000000001
	.quad	0x400de76f2a5a469d              # double 3.7380049999999998
	.quad	0x4017db0c88a47ed0              # double 5.9639150000000001
	.quad	0x4023ec2a02320968              # double 9.9612580000000008
	.quad	0x4023857e45803cd1              # double 9.7607289999999995
	.quad	0x4014e7980f55de59              # double 5.2261660000000001
	.quad	0x4000540ee06d9381              # double 2.0410439999999999
	.quad	0x40083c0b13597918              # double 3.029318
	.quad	0x4023e70cfe154435              # double 9.9512710000000001
	.quad	0x4004c9a0ad8a1166              # double 2.5984509999999998
	.quad	0x3ff803d35eb7457c              # double 1.500934
	.quad	0x3fd7225742dcf462              # double 0.36147099999999999
	.quad	0x402034f483cafb3b              # double 8.1034279999999992
	.quad	0x4020047da1ec4e72              # double 8.0087709999999994
	.quad	0x3ffa8f7fcfc3f812              # double 1.660034
	.quad	0x4008d5970b49e01e              # double 3.1042920000000001
	.quad	0x40113779a6b50b0f              # double 4.3041749999999999
	.quad	0x4023bb45ae5ffa3c              # double 9.8657660000000007
	.quad	0x401c437e2c55c960              # double 7.0659109999999998
	.quad	0x3f91240746455eaf              # double 0.016739
	.quad	0x4014ab45f17bd8be              # double 5.1672589999999996
	.quad	0x401e8569b17481b2              # double 7.6302859999999999
	.quad	0x4006f318fc504817              # double 2.8687
	.quad	0x40046c6045baf534              # double 2.552918
	.quad	0x3fde16f4384ba0e8              # double 0.47015099999999999
	.quad	0x400da7eae5bc87db              # double 3.7069909999999999
	.quad	0x40122b31c219eb64              # double 4.5421820000000004
	.quad	0x4023c11e85fd04a3              # double 9.877186
	.quad	0x401146a65cf67b1c              # double 4.318994
	.quad	0x4022c3035bd512ec              # double 9.3808849999999992
	.quad	0x4008cd0d49949e88              # double 3.100123
	.quad	0x4022fdc63ae2541e              # double 9.4956530000000008
	.quad	0x40186416bdb1a6d7              # double 6.0977430000000004
	.quad	0x4015d12839042d8c              # double 5.4542549999999999
	.quad	0x402036b3fe9fadb0              # double 8.1068420000000003
	.quad	0x401ba0d5e8d54110              # double 6.9070660000000004
	.quad	0x3fd5121682f94424              # double 0.32922899999999999
	.quad	0x402019ebe9c88616              # double 8.0506279999999997
	.quad	0x3fbdd2bf5515054b              # double 0.116497
	.quad	0x400dcf533f42352f              # double 3.7262330000000001
	.quad	0x3fdc4a38327674d1              # double 0.44202999999999998
	.quad	0x40019c0a8d21bc12              # double 2.2011919999999998
	.quad	0x401a46b484d76ab6              # double 6.5690480000000004
	.quad	0x4008334ce3de614a              # double 3.0250490000000001
	.quad	0x3ffe452c59fb1e19              # double 1.891888
	.quad	0x40197b8a5ce5b424              # double 6.3706449999999997
	.quad	0x4017826c7eae5bc8              # double 5.8773669999999996
	.quad	0x3fce61ae70c1333c              # double 0.23735600000000001
	.quad	0x400b4a854477ff15              # double 3.4113869999999999
	.quad	0x401315d9a0f0a5f0              # double 4.7713380000000001
	.quad	0x400beb8737974602              # double 3.4900039999999999
	.quad	0x4017f244e93e1c9b              # double 5.9865909999999998
	.quad	0x400ac5de9c0229a6              # double 3.346616
	.quad	0x40221c521dda059a              # double 9.0553139999999992
	.quad	0x40222ace4649906d              # double 9.0836050000000004
	.quad	0x401cf90795f676ea              # double 7.2431929999999998
	.quad	0x3fa8218def416bdb              # double 0.047130999999999999
	.quad	0x4022b8fcf80dc337              # double 9.3613049999999997
	.quad	0x401b1d6cb5350093              # double 6.7787350000000002
	.quad	0x400ac2c2374794ea              # double 3.345097
	.quad	0x40184c86cebbba56              # double 6.0747330000000002
	.quad	0x3ffc9daceee0f3cb              # double 1.7884949999999999
	.quad	0x401d333ce63a5c1c              # double 7.3000369999999997
	.quad	0x3ff14095f2452c5a              # double 1.078268
	.quad	0x3fd302f2f9873ffb              # double 0.29705500000000001
	.quad	0x4023f07bbb62413e              # double 9.9696940000000005
	.quad	0x402084dc22ab25b3              # double 8.2594919999999998
	.quad	0x40232c7735c182ed              # double 9.5868470000000005
	.quad	0x4023280cb6c7a7ca              # double 9.5782220000000002
	.quad	0x3ffac5c5718eb895              # double 1.673284
	.quad	0x3fd764f97edc7ef1              # double 0.36553799999999997
	.quad	0x4016d20d9945b6c3              # double 5.7051299999999996
	.quad	0x4012a7457c0b1359              # double 4.6633509999999996
	.quad	0x402003de1e2de871              # double 8.0075540000000007
	.quad	0x401adee84ad794a7              # double 6.7176830000000001
	.quad	0x4019b240b780346e              # double 6.4240750000000002
	.quad	0x4011010cb295e9e2              # double 4.2510250000000003
	.quad	0x401e7fb00bcbe61d              # double 7.624695
	.quad	0x401571ab4b72c519              # double 5.3610049999999996
	.quad	0x401e945e0b4e11dc              # double 7.6448900000000002
	.quad	0x4001f80a17b0f6ad              # double 2.2461129999999998
	.quad	0x401ba82cf52b90a8              # double 6.9142340000000004
	.quad	0x3fda840181e03f70              # double 0.41430699999999998
	.quad	0x401442d27807789a              # double 5.0652559999999998
	.quad	0x401d3b5fa22706d5              # double 7.307982
	.quad	0x4020154801f75105              # double 8.0415650000000003
	.quad	0x401c1b1d0c804103              # double 7.026478
	.quad	0x4015da8b8f14db59              # double 5.4634229999999997
	.quad	0x401e29185cee17a0              # double 7.5401319999999998
	.quad	0x401b2b063e07a28c              # double 6.7920160000000003
	.quad	0x4010b0be0ded288d              # double 4.1726000000000001
	.quad	0x401844c37e6f71a8              # double 6.0671520000000001
	.quad	0x40183d4ed2cbea4f              # double 6.0598710000000002
	.quad	0x3fef016052502eec              # double 0.96891799999999994
	.quad	0x400cb99780baa583              # double 3.5906210000000001
	.quad	0x40223851eb851eb8              # double 9.1099999999999994
	.quad	0x4017b441355475a3              # double 5.9260299999999999
	.quad	0x4021acec636b0963              # double 8.8377409999999994
	.quad	0x400241f18c9fb613              # double 2.2821989999999999
	.quad	0x400e6357a355043e              # double 3.7985069999999999
	.quad	0x402088a761027957              # double 8.266902
	.quad	0x401f8aad1d041cc5              # double 7.8854259999999998
	.quad	0x401e7b3c81908e58              # double 7.6203479999999998
	.quad	0x4004c49235f80991              # double 2.5959819999999998
	.quad	0x40176620ee8d10f5              # double 5.8497349999999999
	.quad	0x40218f3b85e80bed              # double 8.7797509999999992
	.quad	0x401887824d4cb9ed              # double 6.132333
	.quad	0x402266b7457c0b13              # double 9.2006169999999994
	.quad	0x4023cff3061c79b3              # double 9.9061509999999994
	.quad	0x400fe4e26d4801f7              # double 3.9867599999999999
	.quad	0x40079a6defc7a398              # double 2.9504049999999999
	.quad	0x400f377fae3608d1              # double 3.9020990000000002
	.quad	0x40084e008e9b38d6              # double 3.038087
	.quad	0x400a9f19d66adb40              # double 3.3276859999999999
	.quad	0x3fff52b2bfdb4cc2              # double 1.9576899999999999
	.quad	0x3fe56a18372e6a77              # double 0.66920100000000005
	.quad	0x40213d74f722e1ac              # double 8.6200329999999993
	.quad	0x3ffe1d4f9c1f85d7              # double 1.8821559999999999
	.quad	0x4019b627bf61aa3f              # double 6.427886
	.quad	0x402098ccff21b3af              # double 8.2984390000000001
	.quad	0x4012db5350092ccf              # double 4.7141849999999996
	.quad	0x401397ccc0379314              # double 4.8982419999999998
	.quad	0x401ed4c76d117b53              # double 7.7077920000000004
	.quad	0x400209d8c6d612c7              # double 2.2548080000000001
	.quad	0x4022a2b3cc4ac6ce              # double 9.3177780000000006
	.quad	0x4001172bcb5fe543              # double 2.136314
	.quad	0x40137d8a116659d1              # double 4.8725969999999998
	.quad	0x4021b003254e6e22              # double 8.8437739999999998
	.quad	0x4021c1af5ba2be06              # double 8.8782910000000008
	.quad	0x40222f36262cba73              # double 9.0922099999999997
	.quad	0x401ccdf47f993d53              # double 7.2011279999999998
	.quad	0x401a5b078d92fb1a              # double 6.5888960000000001
	.quad	0x40122db8348f53c5              # double 4.5446479999999996
	.quad	0x40072deebb341e15              # double 2.8974280000000001
	.quad	0x4012a198288051ca              # double 4.657807
	.quad	0x3fe8403dddb1209f              # double 0.75784200000000002
	.quad	0x401b41e0828c36db              # double 6.8143330000000004
	.quad	0x3fef0dc981beb181              # double 0.97043299999999999
	.quad	0x3fe78225742dcf46              # double 0.73463699999999998
	.quad	0x4015347f13059642              # double 5.301266
	.quad	0x400f0003254e6e22              # double 3.875006
	.quad	0x4010a12f09d8c6d6              # double 4.1574059999999999
	.quad	0x402282e8c0485a0c              # double 9.2556820000000001
	.quad	0x3ff91157abb8800f              # double 1.5667340000000001
	.quad	0x400dd05857afea3e              # double 3.726731
	.quad	0x400e2337a80cf9e4              # double 3.7671960000000002
	.quad	0x401ab845564b6630              # double 6.6799520000000001
	.quad	0x40221d9146e4c0df              # double 9.0577489999999994
	.quad	0x4014c50225742dcf              # double 5.1923909999999998
	.quad	0x400e3ac9afe1da7b              # double 3.778705
	.quad	0x402355275ee99a63              # double 9.6663160000000001
	.quad	0x3feca1b9f98b71b9              # double 0.89474200000000004
	.quad	0x3fe7c51b93037d63              # double 0.742811
	.quad	0x400925692b3cc4ac              # double 3.1432669999999998
	.quad	0x40096cbd1244a622              # double 3.1780949999999999
	.quad	0x3fff2a76965f5276              # double 1.947867
	.quad	0x400c8bba98eda22f              # double 3.5682269999999998
	.quad	0x402391d6adf71eb0              # double 9.7848410000000001
	.quad	0x401df1919ac79703              # double 7.485907
	.quad	0x401f48dde7a743a6              # double 7.8211589999999998
	.quad	0x40236d5d1c3ac92a              # double 9.7136010000000006
	.quad	0x3ffd2466b1e5c0ba              # double 1.8213870000000001
	.quad	0x4016212a94ff0026              # double 5.5323890000000002
	.quad	0x40166ecb31c219eb              # double 5.6081969999999997
	.quad	0x4019d8e086bdf4c3              # double 6.4617940000000003
	.quad	0x401627abb8800eae              # double 5.5387409999999999
	.quad	0x3fff365fd8adab9f              # double 1.9507749999999999
	.quad	0x40048f1886df82b2              # double 2.569871
	.quad	0x40151a7fc32ebe59              # double 5.2758779999999996
	.quad	0x400801a79fec99f2              # double 3.0008080000000001
	.quad	0x4000fe9d0e991ff7              # double 2.124323
	.quad	0x401d6845132f87ad              # double 7.351826
	.quad	0x3fff355582129457              # double 1.9505209999999999
	.quad	0x40176be9424e5929              # double 5.8553819999999996
	.quad	0x3ffc6f112fd32c62              # double 1.7771159999999999
	.quad	0x4010d8323358f2e0              # double 4.2111289999999997
	.quad	0x3ff21783dff3f0fe              # double 1.130741
	.quad	0x4020944a83b1d0c8              # double 8.289631
	.quad	0x4021e8945f9df549              # double 8.9542570000000001
	.quad	0x3ff640c62e4d1a65              # double 1.390814
	.quad	0x4012f68e820e6299              # double 4.7407779999999997
	.quad	0x4023a2f7f498c3b1              # double 9.8182980000000004
	.quad	0x400ebd5c31593e60              # double 3.8424610000000001
	.quad	0x401819d0203e63e9              # double 6.0252080000000001
	.quad	0x401742ecaeea63b7              # double 5.8153560000000004
	.quad	0x401bf94dd72367e4              # double 6.9934609999999999
	.quad	0x402256ad0c3d2524              # double 9.1692889999999991
	.quad	0x3ffe6fcefaa4766c              # double 1.9022969999999999
	.quad	0x4011da732df505d1              # double 4.46333
	.quad	0x4014fa9973d9ec70              # double 5.244726
	.quad	0x4021475b3e1437c5              # double 8.6393679999999993
	.quad	0x3fe92702a3486f05              # double 0.78601200000000004
	.quad	0x4013812620253975              # double 4.8761219999999996
	.quad	0x4016f398201cd5fa              # double 5.7378850000000003
	.quad	0x401f2a6b50b0f27c              # double 7.7914250000000003
	.quad	0x3ff58bec679cc74c              # double 1.3466610000000001
	.quad	0x400efe48a58b3f64              # double 3.8741620000000001
	.quad	0x400295f4e4430b18              # double 2.3232210000000002
	.quad	0x401978448cf7caa7              # double 6.3674489999999997
	.quad	0x401c2a055757d5aa              # double 7.0410360000000001
	.quad	0x401b6f3eccc46951              # double 6.858638
	.quad	0x3fdbfecdd0d8cb08              # double 0.43742700000000001
	.quad	0x40210498c3b0c459              # double 8.5089780000000008
	.quad	0x402267abda0dfdf0              # double 9.2024830000000009
	.quad	0x4014c6f36ef80560              # double 5.1942880000000002
	.quad	0x4013824463065f96              # double 4.8772140000000004
	.quad	0x40073a53b8e4b87c              # double 2.9034800000000001
	.quad	0x402212467be553ac              # double 9.0356939999999994
	.quad	0x402186eefa1e3eaf              # double 8.7635419999999993
	.quad	0x3fb3f7be121ee675              # double 0.077998999999999999
	.quad	0x401633a9f383f0bb              # double 5.5504530000000001
	.quad	0x40191fa4c61d8623              # double 6.2809020000000002
	.quad	0x401c7c0724b76f6d              # double 7.1211209999999996
	.quad	0x40128a80064a9cdc              # double 4.6352539999999998
	.quad	0x3ffa79d0a67620ef              # double 1.6547400000000001
	.quad	0x401f5fb2aae29739              # double 7.8434549999999996
	.quad	0x4021cfb09203a323              # double 8.9056440000000006
	.quad	0x400026e9ff0cbaf9              # double 2.0190009999999998
	.quad	0x401c2701d9f4d37c              # double 7.0380929999999999
	.quad	0x400cb8fc504816f0              # double 3.590325
	.quad	0x4021969552e2fbe3              # double 8.7941079999999996
	.quad	0x4020646ae3a3a8e7              # double 8.1961279999999999
	.quad	0x40126e96c3fc43b3              # double 4.6079970000000001
	.quad	0x40158a95c853c148              # double 5.3853369999999998
	.quad	0x3ff6097d8cf398e9              # double 1.3773169999999999
	.quad	0x40238ce7ee9142b3              # double 9.7752069999999999
	.quad	0x400ee80a5accd530              # double 3.8633009999999999
	.quad	0x4010895b35b0bbf5              # double 4.134137
	.quad	0x3ffade71044f1a1a              # double 1.6793070000000001
	.quad	0x3fc693faf42784a9              # double 0.17639099999999999
	.quad	0x401e1de69ad42c3d              # double 7.5292000000000003
	.quad	0x402320e0221426fe              # double 9.5642099999999992
	.quad	0x400db9e0e736049f              # double 3.7157610000000001
	.quad	0x4020d3de1e2de871              # double 8.4138040000000007
	.quad	0x4012f588a04d1202              # double 4.7397790000000004
	.quad	0x400c5b4d48882f0e              # double 3.544581
	.quad	0x40201a6634117f84              # double 8.0515609999999995
	.quad	0x3ff7216c61522a6f              # double 1.4456599999999999
	.quad	0x40229dc0980b2420              # double 9.3081099999999992
	.quad	0x3fd65757d5a9eb20              # double 0.34908099999999997
	.quad	0x3fd6bda5119ce076              # double 0.355325
	.quad	0x4013e95a294141ea              # double 4.9778830000000003
	.quad	0x400317eaa2a0a958              # double 2.3866779999999999
	.quad	0x3fea8cc9a77e5eab              # double 0.82968600000000003
	.quad	0x3fc9f077ccc03793              # double 0.202651
	.quad	0x40113724b76f6d76              # double 4.3038509999999999
	.quad	0x400e291d14e3bcd3              # double 3.7700749999999998
	.quad	0x400e8af9a8cdea03              # double 3.8178589999999999
	.quad	0x3fea1a9973d9ec70              # double 0.815747
	.quad	0x4011f41e14bdfd26              # double 4.4883959999999998
	.quad	0x400b8054690de093              # double 3.4376609999999999
	.quad	0x40218ee935b91f71              # double 8.7791230000000002
	.quad	0x4005a8954a7f8013              # double 2.7073160000000001
	.quad	0x402141b8aa00192a              # double 8.6283619999999992
	.quad	0x4018ad14e3bcd35b              # double 6.1690250000000004
	.quad	0x3fe9b69984a0e411              # double 0.80354000000000003
	.quad	0x40028794ea077037              # double 2.3162020000000001
	.quad	0x3ffb6a39c51dabe2              # double 1.7134339999999999
	.quad	0x3fe3b4117f84449e              # double 0.61573100000000003
	.quad	0x3fe491e646f15619              # double 0.64280999999999999
	.quad	0x4009c213a0c6b485              # double 3.2197640000000001
	.quad	0x400ee8e0c9d9d346              # double 3.8637100000000002
	.quad	0x4023c01e68a0d34a              # double 9.8752320000000005
	.quad	0x40217c7863beec39              # double 8.7431059999999992
	.quad	0x401634e69f05ea25              # double 5.5516610000000002
	.quad	0x400043d70a3d70a4              # double 2.0331250000000001
	.quad	0x401e4a5fc7e6b3ff              # double 7.5726310000000003
	.quad	0x4012a9de05037500              # double 4.6658860000000004
	.quad	0x40065c0980b24207              # double 2.79494
	.quad	0x400c0add590c0ad0              # double 3.5053049999999999
	.quad	0x400c2eb80ecfa69c              # double 3.5228120000000001
	.quad	0x3ff5d97f62b6ae7d              # double 1.3655999999999999
	.quad	0x40075c968943e100              # double 2.9202089999999998
	.quad	0x400bfcddd6e04c06              # double 3.4984700000000002
	.quad	0x400191422ccb3a26              # double 2.1959270000000002
	.quad	0x40176659d12cadde              # double 5.849952
	.quad	0x400aa0fa15db3398              # double 3.3286020000000001
	.quad	0x400a4ac322291fb4              # double 3.286505
	.quad	0x401c1f5ad96a6a01              # double 7.0306199999999999
	.quad	0x40220e950fc71d60              # double 9.0284809999999993
	.quad	0x400f1b291b823c86              # double 3.8882620000000001
	.quad	0x401c63a92a305532              # double 7.0973249999999997
	.quad	0x40219792f2b66b61              # double 8.7960429999999992
	.quad	0x3fe1916440f23897              # double 0.54899799999999999
	.quad	0x3ff7e4bcad9ad85e              # double 1.493344
	.quad	0x4005b9e6ab9b23dd              # double 2.7157719999999999
	.quad	0x400e3c9de0503750              # double 3.779598
	.quad	0x4019d4ef88b97785              # double 6.4579449999999996
	.quad	0x40207ef112fd32c6              # double 8.2479329999999997
	.quad	0x3fff962e09fe8683              # double 1.9741649999999999
	.quad	0x3fe8f901083dbc23              # double 0.78039599999999998
	.quad	0x3fee1c864883fd50              # double 0.94098199999999999
	.quad	0x40155a311e85fd05              # double 5.3380780000000003
	.quad	0x4003a1fa76534374              # double 2.454091
	.quad	0x4021667b3d8e0008              # double 8.7001589999999993
	.quad	0x400dbbc98a222d51              # double 3.7166929999999998
	.quad	0x400a5d11be6e6538              # double 3.2954439999999998
	.quad	0x4021ff32bdc26dce              # double 8.9984339999999996
	.quad	0x400a10318b934699              # double 3.2579069999999999
	.quad	0x4005455970b49e02              # double 2.6588620000000001
	.quad	0x4012d455eaee2004              # double 4.7073590000000003
	.quad	0x3ff76c3116228134              # double 1.4639139999999999
	.quad	0x400b410d7be9856a              # double 3.4067639999999999
	.quad	0x400d902a3486f04a              # double 3.6953930000000001
	.quad	0x402388763a190082              # double 9.766527
	.quad	0x3fe627cbf6e3f78c              # double 0.69235800000000003
	.quad	0x40199a569b17481b              # double 6.4007209999999999
	.quad	0x3fee321e603d5779              # double 0.94361799999999996
	.quad	0x401e89fcb0c026cc              # double 7.6347529999999999
	.quad	0x401faa1f080303c0              # double 7.9161339999999996
	.quad	0x4018ccf2495e17e3              # double 6.2001429999999997
	.quad	0x3ff559157abb8801              # double 1.334249
	.quad	0x4022253996fa82e8              # double 9.0727049999999991
	.quad	0x40239d610adcd2d4              # double 9.8073809999999994
	.quad	0x4020087cc7d1bb49              # double 8.0165769999999998
	.quad	0x401cc689ca18bd66              # double 7.1938849999999999
	.quad	0x402063024f6598e1              # double 8.1933769999999999
	.quad	0x401cc306a2b17050              # double 7.190455
	.quad	0x3ff96a4a8c154c98              # double 1.5884499999999999
	.quad	0x4011d4c87980f55e              # double 4.4577960000000001
	.quad	0x400e16bfca85cab0              # double 3.7611080000000001
	.quad	0x4010f25892684cf0              # double 4.2366659999999996
	.quad	0x3f8800a7c5ac471b              # double 0.01172
	.quad	0x4012b37ef5a964e9              # double 4.6752890000000003
	.quad	0x400b4a90cd423d92              # double 3.4114089999999999
	.quad	0x40155dadb8348f54              # double 5.3414830000000002
	.quad	0x4010636544fe36d2              # double 4.0970659999999999
	.quad	0x402191c5c5718eb9              # double 8.7847120000000007
	.quad	0x4018c5464dc22ab2              # double 6.1926509999999997
	.quad	0x4017a6759ab6d00b              # double 5.9125579999999998
	.quad	0x4020d3cafb3b7521              # double 8.4136579999999999
	.quad	0x400ce59c8c9320da              # double 3.6121150000000002
	.quad	0x401e8edc3bd59924              # double 7.6395119999999999
	.quad	0x4021af4c2b51bd62              # double 8.8423780000000001
	.quad	0x3fee2d8c2a454de8              # double 0.94306
	.quad	0x3ffd1960fa15db34              # double 1.8186960000000001
	.quad	0x401c07e4de3b8a1a              # double 7.0077090000000002
	.quad	0x401fdc521dda059a              # double 7.9651569999999996
	.quad	0x3fc2b9d3cbc48f11              # double 0.14629600000000001
	.quad	0x3faf60bf5d78811b              # double 0.061284999999999999
	.quad	0x40088c68a936c58f              # double 3.068559
	.quad	0x3fff0c8abd5dc400              # double 1.9405619999999999
	.quad	0x401f409917939a7c              # double 7.8130839999999999
	.quad	0x3fe590ecb74ddf87              # double 0.67394100000000001
	.quad	0x3ff551f2dc2b0ea2              # double 1.3325070000000001
	.quad	0x402143fe5c91d14e              # double 8.6327999999999996
	.quad	0x40218797aaac1095              # double 8.7648290000000006
	.quad	0x401fe5ef1fddebd9              # double 7.9745449999999999
	.quad	0x3fdd8abd5dc40075              # double 0.46159299999999998
	.quad	0x40150efe0ce0b913              # double 5.2646410000000001
	.quad	0x40155c2eba27ae9b              # double 5.3400220000000003
	.quad	0x401a0e392e1ef73c              # double 6.51389
	.quad	0x4023b69e7fb267c7              # double 9.8566780000000004
	.quad	0x3fe1f55bccaf709b              # double 0.56120099999999995
	.quad	0x4001aab3edd8b60f              # double 2.208351
	.quad	0x40137ef416bdb1a7              # double 4.8739780000000001
	.quad	0x4019c32acfb762d8              # double 6.4405929999999998
	.quad	0x3fefc0c8472c0e7c              # double 0.99228300000000002
	.quad	0x3ff143621fafc8b0              # double 1.078951
	.quad	0x3fd76db50f40e5a3              # double 0.36607099999999998
	.quad	0x401873a797891e21              # double 6.1129439999999997
	.quad	0x401c3a1e3eaf6838              # double 7.056756
	.quad	0x4003256a37ac3eb8              # double 2.3932690000000001
	.quad	0x401157967caea748              # double 4.3355350000000001
	.quad	0x4006902b40f66a55              # double 2.820395
	.quad	0x40020f36694898f6              # double 2.257428
	.quad	0x3ff0d1bf7ad4b274              # double 1.0512079999999999
	.quad	0x40116b8950763a19              # double 4.355016
	.quad	0x400e85ca29845dc8              # double 3.8153269999999999
	.quad	0x4004c80e8c8abd5e              # double 2.5976840000000001
	.quad	0x401bc2d77318fc50              # double 6.9402749999999997
	.quad	0x401e7d955714b9cb              # double 7.6226399999999996
	.quad	0x3ffec64ece9a2c67              # double 1.9234150000000001
	.quad	0x3ff1b964a59c065b              # double 1.1077619999999999
	.quad	0x3ffd74c6e6d9be4d              # double 1.84101
	.quad	0x400743e63e8dda49              # double 2.9081540000000001
	.quad	0x3ff302f72b452828              # double 1.1882239999999999
	.quad	0x4013f9bf162ae4b0              # double 4.9938929999999999
	.quad	0x401f1b78cc9a77e6              # double 7.7768280000000001
	.quad	0x3ff436ff3ade2260              # double 1.2634270000000001
	.quad	0x401aaf04ddb5525d              # double 6.6709170000000002
	.quad	0x4022bd2ef911cf35              # double 9.3694989999999993
	.quad	0x4020d6f0cfe15443              # double 8.4198059999999995
	.quad	0x401a8b8a19c9d5a2              # double 6.6362690000000004
	.quad	0x40126ecd07852f7f              # double 4.6082039999999997
	.quad	0x40194aec0724b76f              # double 6.3231659999999996
	.quad	0x40071564302b40f6              # double 2.8854449999999998
	.quad	0x400ad34a44c7b02d              # double 3.3531689999999998
	.quad	0x4015626f60e0eb68              # double 5.3461280000000002
	.quad	0x400f33682730c671              # double 3.9001009999999998
	.quad	0x3ff879b456b441bc              # double 1.5297130000000001
	.quad	0x402016514c22ee42              # double 8.0435890000000008
	.quad	0x4022294983d79075              # double 9.0806389999999997
	.quad	0x400b83ed959a3098              # double 3.4394179999999999
	.quad	0x4023205d744f5d35              # double 9.5632129999999992
	.quad	0x400e54f0d844d014              # double 3.7914750000000002
	.quad	0x4018a8e60807357e              # double 6.1649399999999996
	.quad	0x402272fa2f05a709              # double 9.2245650000000001
	.quad	0x401f3beb18116ebd              # double 7.8085139999999997
	.quad	0x40191b3e5753a3ec              # double 6.276605
	.quad	0x3ffa5dce7cd03537              # double 1.647902
	.quad	0x3ffa13532e7b3d8e              # double 1.629718
	.quad	0x3fe9994185058dde              # double 0.79995799999999995
	.quad	0x4017bf33ca31e7da              # double 5.9367210000000004
	.quad	0x4015a7c3d68405b4              # double 5.4138330000000003
	.quad	0x4014092c49342678              # double 5.0089579999999998
	.quad	0x4023047192ea52f0              # double 9.5086790000000008
	.quad	0x4021b4347e8ccdd9              # double 8.8519629999999996
	.quad	0x4021a5fc9ff92f2b              # double 8.8241929999999993
	.quad	0x401a732c625e99e9              # double 6.6124739999999997
	.quad	0x4020a6d655e28aa4              # double 8.3258539999999996
	.quad	0x40167917507e9d95              # double 5.6182530000000002
	.quad	0x40024286f8ad2568              # double 2.2824840000000002
	.quad	0x4022be801711947d              # double 9.372071
	.quad	0x4011655000c9539c              # double 4.3489380000000004
	.quad	0x3ff12317268d3283              # double 1.071067
	.quad	0x4006222c45026890              # double 2.766686
	.quad	0x3fdac07aaef2c732              # double 0.41799799999999998
	.quad	0x4021d455000c953a              # double 8.9147110000000005
	.quad	0x4021a076c050bd88              # double 8.8134060000000005
	.quad	0x3ffa083ba3443d47              # double 1.6270100000000001
	.quad	0x401612d3c792d128              # double 5.5183859999999996
	.quad	0x40018e8ea39c51db              # double 2.1946080000000001
	.quad	0x400b48fc9363f573              # double 3.4106380000000001
	.quad	0x401530e410b630a9              # double 5.2977449999999999
	.quad	0x4019f7efe0ce0b91              # double 6.4921259999999998
	.quad	0x400080e8427418d7              # double 2.0629430000000002
	.quad	0x401a78112ba16e7a              # double 6.6172529999999998
	.quad	0x40128bccaf709b74              # double 4.6365230000000004
	.quad	0x401b8b4289118c19              # double 6.8859959999999996
	.quad	0x40139a4873365882              # double 4.9006670000000003
	.quad	0x4005298dcdb37c9a              # double 2.6452900000000001
	.quad	0x3fe945eb313be22e              # double 0.78978499999999996
	.quad	0x3fbe0c282c6ef3d4              # double 0.11737300000000001
	.quad	0x401f810a99b6f5cb              # double 7.876017
	.quad	0x400b4145953586cb              # double 3.4068710000000002
	.quad	0x4023557b84db9c73              # double 9.6669579999999992
	.quad	0x3fa1cc74b838c112              # double 0.034763000000000002
	.quad	0x3ffe45a4f00ef135              # double 1.8920030000000001
	.quad	0x4015bb35f3d7d391              # double 5.432823
	.quad	0x3ffa013122b7baed              # double 1.625291
	.quad	0x3ffea29d8409e55c              # double 1.914701
	.quad	0x3ff8f8800eae18ad              # double 1.5606690000000001
	.quad	0x4022a92a0ec74320              # double 9.3303989999999999
	.quad	0x3ffdb2ae07e5a78f              # double 1.856123
	.quad	0x400fa0d5629d840a              # double 3.953532
	.quad	0x3feb47b677f6b1a3              # double 0.85250400000000004
	.quad	0x3ff35d377e1b8ed2              # double 1.2102580000000001
	.quad	0x401ddc79b34a44c8              # double 7.4653080000000002
	.quad	0x3ff2358e219652bd              # double 1.1380749999999999
	.quad	0x40037be33acd5b68              # double 2.435492
	.quad	0x3fd1f2e05ccc89b1              # double 0.280449
	.quad	0x4012f559f6ec5b08              # double 4.7396010000000004
	.quad	0x4008af8055fbb518              # double 3.0856940000000002
	.quad	0x3fb1806f262888b5              # double 0.068365999999999996
	.quad	0x3ff74880d801b435              # double 1.455201
	.quad	0x4016ddefc7a39820              # double 5.7167349999999999
	.quad	0x401d63fbbd7b2032              # double 7.3476400000000002
	.quad	0x4015febd4cfd08d5              # double 5.4987690000000002
	.quad	0x4022410f51ac9afe              # double 9.1270699999999998
	.quad	0x401ebd9fd36f7e3d              # double 7.6851799999999999
	.quad	0x40214f852f7f498c              # double 8.6553129999999995
	.quad	0x400ee0303c07ee0b              # double 3.859467
	.quad	0x400d9fed20296b33              # double 3.7030889999999999
	.quad	0x40213d22c881e471              # double 8.6194059999999997
	.quad	0x4022f59a0f0a5eff              # double 9.4796910000000007
	.quad	0x4016a95d4e8fb00c              # double 5.6653950000000002
	.quad	0x40222a1af7d30ad4              # double 9.0822369999999992
	.quad	0x3fe3fa0d77b7c782              # double 0.624274
	.quad	0x400e3495182a9931              # double 3.7756750000000001
	.quad	0x402281d55e6bc622              # double 9.2535810000000005
	.quad	0x3fe9264e48626f61              # double 0.78592600000000001
	.quad	0x40194185058dde7a              # double 6.3139839999999996
	.quad	0x3ff59d6494d50ebb              # double 1.3509260000000001
	.quad	0x4022a0370cdc8755              # double 9.3129200000000001
	.quad	0x4013dc3b4f616723              # double 4.9650699999999999
	.quad	0x4010c801f75104d5              # double 4.1953199999999997
	.quad	0x4020b35525cc4263              # double 8.3502589999999994
	.quad	0x3fd921d53cddd6e0              # double 0.39268999999999998
	.quad	0x4014928997c3d684              # double 5.143103
	.quad	0x4016e89efd86a8fc              # double 5.727169
	.quad	0x3fd49799e518f3ed              # double 0.32175300000000001
	.quad	0x4000015db3397dd0              # double 2.000667
	.quad	0x3fd602d59d55e6bc              # double 0.34392299999999998
	.quad	0x3ff3ad77318fc505              # double 1.2298500000000001
	.quad	0x4023af0cdc8754f3              # double 9.8418949999999991
	.quad	0x401c09496249a134              # double 7.0090690000000002
	.quad	0x4013c8c7e28240b8              # double 4.9460750000000004
	.quad	0x40039a0620ab7132              # double 2.4502069999999998
	.quad	0x3ff4691c8eabffce              # double 1.2756620000000001
	.quad	0x400258c3b0c4588a              # double 2.293342
	.quad	0x4022caa821f2990f              # double 9.3958139999999996
	.quad	0x40214b65881a1555              # double 8.647259
	.quad	0x401ca2324c836651              # double 7.1583949999999996
	.quad	0x40217f127f5e84f1              # double 8.7481880000000007
	.quad	0x401bc07bbb62413e              # double 6.9379720000000002
	.quad	0x4022df4aba387592              # double 9.4361169999999994
	.quad	0x400ea544fe36d224              # double 3.8306979999999999
	.quad	0x40100a06a6e32e38              # double 4.0097909999999999
	.quad	0x4013140b780346dc              # double 4.7695749999999997
	.quad	0x3ff574b1ee243569              # double 1.3409899999999999
	.quad	0x3fed910a137f38c5              # double 0.92395499999999997
	.quad	0x3feb36199780baa6              # double 0.85035400000000005
	.quad	0x40238d759ee88df3              # double 9.7762879999999992
	.quad	0x402174a2fcefaa47              # double 8.7278059999999993
	.quad	0x3ffbf31a08bfc222              # double 1.7468509999999999
	.quad	0x3fe8cd12018a43bb              # double 0.77503299999999997
	.quad	0x400e6bbe4473cd57              # double 3.8026089999999999
	.quad	0x401db6ededaec4a4              # double 7.428642
	.quad	0x401527381d7dbf48              # double 5.2882999999999996
	.quad	0x4012eb8305d95dd5              # double 4.7299920000000002
	.quad	0x3f78a76102795704              # double 0.006019
	.quad	0x4013ec371da37ef6              # double 4.9806790000000003
	.quad	0x3ff6b45176145953              # double 1.4190229999999999
	.quad	0x3ff0ff8db4890929              # double 1.0623910000000001
	.quad	0x401169e12a51e322              # double 4.3533980000000003
	.quad	0x4005ba06a6e32e38              # double 2.7158329999999999
	.quad	0x400a124d8fd5cb79              # double 3.258937
	.quad	0x3fe5087ebf22c01e              # double 0.65728699999999995
	.quad	0x40215bf22c01e68a              # double 8.6795819999999999
	.quad	0x4006fee0b0af5fd4              # double 2.8744519999999998
	.quad	0x4019717720c8cd64              # double 6.3608060000000002
	.quad	0x40155e96c3fc43b3              # double 5.3423720000000001
	.quad	0x3fe6676a7264a16a              # double 0.70012399999999997
	.quad	0x400e174aba387592              # double 3.7613729999999999
	.quad	0x400537518b0d0edc              # double 2.6520109999999999
	.quad	0x401e565300581494              # double 7.584301
	.quad	0x3ffc8b05b7cfe586              # double 1.783941
	.quad	0x402175f9df548ece              # double 8.7304220000000008
	.quad	0x4012f58e219652bd              # double 4.7397999999999998
	.quad	0x4023902c2bd7f51f              # double 9.781587
	.quad	0x400767ad8e432442              # double 2.925624
	.quad	0x402304b4f1e4b44a              # double 9.5091929999999998
	.quad	0x3ff32fa5093964a6              # double 1.1991320000000001
	.quad	0x4004ea73f748a15a              # double 2.6144790000000002
	.quad	0x40134c99ae924f22              # double 4.8248049999999996
	.quad	0x401eedb8fde2ef4e              # double 7.732151
	.quad	0x401b2f0739b024f6              # double 6.7959259999999997
	.quad	0x4006c8198f1d3ed5              # double 2.8477049999999999
	.quad	0x40208e59d12cadde              # double 8.2780290000000001
	.quad	0x401dc5efa615a8df              # double 7.4432970000000003
	.quad	0x401d94806290eed0              # double 7.3950209999999998
	.quad	0x401f716d2aa5c5f8              # double 7.8607680000000001
	.quad	0x3fe6fa3b9ae0c176              # double 0.71804599999999996
	.quad	0x4000a4b9884c6a3c              # double 2.0804320000000001
	.quad	0x401c56390c9107fb              # double 7.0842020000000003
	.quad	0x3ff820c49ba5e354              # double 1.508
	.quad	0x401102d3c792d128              # double 4.2527609999999996
	.quad	0x4016cddd2ae8e1d6              # double 5.7010389999999997
	.quad	0x3f525dd095af294e              # double 0.001121
	.quad	0x4016ab71fbc5de9c              # double 5.667427
	.quad	0x401cc2235b4edb2f              # double 7.1895879999999996
	.quad	0x40179ebe1650a45d              # double 5.9050219999999998
	.quad	0x40074cfaeff5c6c1              # double 2.912588
	.quad	0x40230c623d0bfa09              # double 9.5241869999999995
	.quad	0x401dcd11be6e6538              # double 7.4502629999999996
	.quad	0x40047151611ba3ca              # double 2.5553309999999998
	.quad	0x3ffc0061847f5621              # double 1.7500929999999999
	.quad	0x401820192a737111              # double 6.0313460000000001
	.quad	0x3ffe4655193708ab              # double 1.892171
	.quad	0x4002163dc486ad2e              # double 2.2608600000000001
	.quad	0x40195ceee0f3cb3e              # double 6.3407549999999997
	.quad	0x3ff45ac471b47842              # double 1.27216
	.quad	0x40004d87724fa8b5              # double 2.0378560000000001
	.quad	0x40211dac258d5843              # double 8.5579540000000005
	.quad	0x3fbff0bae89eba6b              # double 0.124767
	.quad	0x4011b364388ebcc7              # double 4.4251870000000002
	.quad	0x401daebc83a96d4c              # double 7.4206409999999998
	.quad	0x40204494f69ca9ef              # double 8.1339489999999994
	.quad	0x400c9ed4a1ad6452              # double 3.5775540000000001
	.quad	0x4014df533f42352f              # double 5.2180910000000003
	.quad	0x4022086940357a35              # double 9.0164279999999994
	.quad	0x4012774ddf86e3b4              # double 4.6165079999999996
	.quad	0x4017717b5286b591              # double 5.8608219999999998
	.quad	0x4014cd8f0c77dd87              # double 5.2007409999999998
	.quad	0x400a74fe79ee02a7              # double 3.3071259999999998
	.quad	0x401971c10d7be985              # double 6.3610879999999996
	.quad	0x3ff3debd9018e758              # double 1.2418800000000001
	.quad	0x4006b2b12d3415b1              # double 2.8372519999999999
	.quad	0x3ff39a4f00ef1349              # double 1.2251730000000001
	.quad	0x4022812f2b66b617              # double 9.2523129999999991
	.quad	0x3fa20a0f4d7add16              # double 0.035233
	.quad	0x400cf68f08461f9f              # double 3.62039
	.quad	0x40234678183f91e6              # double 9.6376349999999995
	.quad	0x40193090f733a8a4              # double 6.297428
	.quad	0x4021599dcb5781c7              # double 8.6750319999999999
	.quad	0x40062c78e9f6a93f              # double 2.7717149999999999
	.quad	0x400c9d1e53a81dc1              # double 3.5767180000000001
	.quad	0x400af2d0a2446306              # double 3.3685619999999998
	.quad	0x4021bfc6327ed84d              # double 8.8745589999999996
	.quad	0x3fe71ab29e4d5d81              # double 0.72200900000000001
	.quad	0x4010483dff3f0fe0              # double 4.0705489999999998
	.quad	0x4016363c31df761d              # double 5.5529640000000002
	.quad	0x401960870110a138              # double 6.344265
	.quad	0x401ef5bc87db2b34              # double 7.7399769999999997
	.quad	0x3fbab649d388a8b1              # double 0.10434400000000001
	.quad	0x4018e67f0aa21a72              # double 6.2250940000000003
	.quad	0x400fb13c68661ae7              # double 3.961541
	.quad	0x4023871758e21965              # double 9.7638499999999996
	.quad	0x4021b33c1ce6c094              # double 8.8500680000000002
	.quad	0x3ff66fa93af74cd3              # double 1.402261
	.quad	0x3fdb3a3ec02f2f98              # double 0.42542999999999997
	.quad	0x401435dc4007570c              # double 5.0525979999999997
	.quad	0x401b7873bc903ea7              # double 6.867629
	.quad	0x401ddea6c1a048e0              # double 7.4674329999999998
	.quad	0x3fe72fd976ff3ade              # double 0.72459099999999999
	.quad	0x401a11da37ef5a96              # double 6.5174339999999997
	.quad	0x40185a0f0a5efe93              # double 6.0879479999999999
	.quad	0x4020d1b34a44c7b0              # double 8.4095709999999997
	.quad	0x4000d99dcb5781c7              # double 2.106258
	.quad	0x4022c8379314445b              # double 9.3910490000000006
	.quad	0x4005fafc8b0079a3              # double 2.7475520000000002
	.quad	0x4021f4bd987c6328              # double 8.9780090000000001
	.quad	0x402098561d4306e6              # double 8.2975320000000004
	.quad	0x401542a51e321a2e              # double 5.3150829999999996
	.quad	0x401a3aad1d041cc5              # double 6.5573009999999998
	.quad	0x400d92ccf6be37df              # double 3.6966800000000002
	.quad	0x401e18ff75968512              # double 7.5244119999999999
	.quad	0x401b89b499d0203e              # double 6.8844779999999997
	.quad	0x3fe8a391d57ff9b5              # double 0.76996699999999996
	.quad	0x3fa92a51e321a2e8              # double 0.049151
	.quad	0x3fe22311e85fd04a              # double 0.56678099999999998
	.quad	0x40060a2e3c536d65              # double 2.7549709999999998
	.quad	0x401db1a261bf37b9              # double 7.4234710000000002
	.quad	0x400ec7ecfe9b7bf2              # double 3.84762
	.quad	0x3fe671a9fbe76c8b              # double 0.70137499999999997
	.quad	0x401566defc7a3982              # double 5.35046
	.quad	0x400f280c73abc947              # double 3.894555
	.quad	0x40181c054ef459da              # double 6.0273640000000004
	.quad	0x40232d3fc0096feb              # double 9.5883769999999994
	.quad	0x401cf8f4b61fe21e              # double 7.2431210000000004
	.quad	0x4020ce5b20b8066c              # double 8.4030389999999997
	.quad	0x401ca3ec892ab68d              # double 7.1600820000000001
	.quad	0x402130df15a4acf3              # double 8.5954519999999999
	.quad	0x3ff0d5faa8a82a56              # double 1.052241
	.quad	0x4021b354e2b063e0              # double 8.8502569999999992
	.quad	0x402256e49f51697f              # double 9.1697129999999998
	.quad	0x401df69552e2fbe3              # double 7.4908039999999997
	.quad	0x401b7c65c70435f0              # double 6.8714820000000003
	.quad	0x3ff01171e29b6b2b              # double 1.004259
	.quad	0x400fb64302b40f67              # double 3.9639950000000002
	.quad	0x4002d465625a682b              # double 2.3537089999999998
	.quad	0x400aba7daa4fca43              # double 3.3410600000000001
	.quad	0x40042de093532e7b              # double 2.5224009999999999
	.quad	0x401585b317efe0ce              # double 5.380566
	.quad	0x3fe10c5c9a34ca0c              # double 0.53275899999999998
	.quad	0x4006d090f733a8a4              # double 2.851839
	.quad	0x401ae2aa5c5f7c67              # double 6.7213529999999997
	.quad	0x3fbcf6be37de939f              # double 0.11314
	.quad	0x401be355cd91eeaa              # double 6.9720069999999996
	.quad	0x40004a59c065b63d              # double 2.0363039999999999
	.quad	0x401982bbecaab8a6              # double 6.3776700000000002
	.quad	0x401342fd32c625ea              # double 4.8154190000000003
	.quad	0x40138f3ba775fb2f              # double 4.8898760000000001
	.quad	0x4017fd81adea8976              # double 5.9975649999999998
	.quad	0x401a27a4e7ab7564              # double 6.5387149999999998
	.quad	0x401f1a78f25a2510              # double 7.7758520000000004
	.quad	0x401e89a240314877              # double 7.6344079999999996
	.quad	0x4020e274c09c3ce2              # double 8.4422969999999999
	.quad	0x400e97d49d7ba66a              # double 3.8241360000000002
	.quad	0x4018d16b11c6d1e1              # double 6.20451
	.quad	0x3fe396aceaaf35e3              # double 0.61214299999999999
	.quad	0x4009c09246bf0132              # double 3.2190289999999999
	.quad	0x4013852263d816ad              # double 4.8800140000000001
	.quad	0x401a9478854cdb7b              # double 6.6449910000000001
	.quad	0x4000ce757928e0ca              # double 2.1008100000000001
	.quad	0x4023b62478854cdb              # double 9.8557469999999991
	.quad	0x400978eeae9ee45c              # double 3.1840489999999999
	.quad	0x4021f3f705857aff              # double 8.9764940000000006
	.quad	0x4023fe351deefe50              # double 9.996499
	.quad	0x40075de58e64b231              # double 2.9208479999999999
	.quad	0x401b0f00ef1348b2              # double 6.7646519999999999
	.quad	0x4017a036006d0d4a              # double 5.9064560000000004
	.quad	0x400d4edf61240746              # double 3.6635119999999999
	.quad	0x4014890ea9e6eeb7              # double 5.133845
	.quad	0x4007001c4fc1df33              # double 2.875054
	.quad	0x4020f65753a3ec03              # double 8.4811350000000001
	.quad	0x40028f86a098915c              # double 2.3200810000000001
	.quad	0x4018b8b3b320535d              # double 6.1803730000000003
	.quad	0x4005abad7d7c2ca1              # double 2.7088269999999999
	.quad	0x401f84c059210386              # double 7.8796400000000002
	.quad	0x4021ce0c5a8155d6              # double 8.9024380000000001
	.quad	0x3f7669ced0b30b5b              # double 0.0054720000000000003
	.quad	0x3f9f4be835dedf1e              # double 0.030563
	.quad	0x4021c475e6362a5e              # double 8.8837119999999992
	.quad	0x40132d495182a993              # double 4.794225
	.quad	0x3ff5cdb59578a2a9              # double 1.362722
	.quad	0x4019dbf7f06705c9              # double 6.4648130000000004
	.quad	0x401828198f1d3ed5              # double 6.0391599999999999
	.quad	0x3ffc9e94ab1d4f9c              # double 1.788716
	.quad	0x40227c729f59ccfb              # double 9.2430620000000001
	.quad	0x3fc18183f91e646f              # double 0.136765
	.quad	0x401d2976bc1effa0              # double 7.2904920000000004
	.quad	0x40212f52b90a7829              # double 8.592428
	.quad	0x401ab9f23465625a              # double 6.6815879999999996
	.quad	0x401a3316e3715400              # double 6.5498919999999998
	.quad	0x401f4cbbc2b94d94              # double 7.824935
	.quad	0x4018d7060bb2bbaa              # double 6.2099840000000004
	.quad	0x400ec8d4bad7d7c3              # double 3.8480620000000001
	.quad	0x4013be679463cfb3              # double 4.9359419999999998
	.quad	0x401aa1394317acc5              # double 6.6574450000000001
	.quad	0x401ef2178f68be2f              # double 7.7364179999999995
	.quad	0x4014da2b5a20ddc6              # double 5.2130559999999999
	.quad	0x400426e75ff609dd              # double 2.518996
	.quad	0x3ffc34666ec9e237              # double 1.7627930000000001
	.quad	0x4015c2d55a3a083a              # double 5.4402670000000004
	.quad	0x40101bd2b6f19935              # double 4.0271710000000001
	.quad	0x4007b013a92a3055              # double 2.9609749999999999
	.quad	0x401fc759253543af              # double 7.9446760000000002
	.quad	0x401dec7c0f451761              # double 7.4809419999999998
	.quad	0x400a3559b3d07c85              # double 3.2760500000000001
	.quad	0x3fc18969a0ad8a11              # double 0.13700599999999999
	.quad	0x40034f7ec3547e07              # double 2.4138160000000002
	.quad	0x400158b8ae31d713              # double 2.1683210000000002
	.quad	0x3ffc791e646f1562              # double 1.7795700000000001
	.quad	0x4016c3e681a9b8cc              # double 5.6913090000000004
	.quad	0x40096c80c73abc94              # double 3.1779799999999998
	.quad	0x40139e8ea39c51db              # double 4.9048410000000002
	.quad	0x3fd23382e44b6e93              # double 0.28439399999999998
	.quad	0x3ffdb2a497fa5d29              # double 1.856114
	.quad	0x40158c93a7115161              # double 5.3872819999999999
	.quad	0x3ffb1be6e6538690              # double 1.694312
	.quad	0x4012a5b6805a2d73              # double 4.661829
	.quad	0x40198def8487b99d              # double 6.3886089999999998
	.quad	0x401d66f6512a94ff              # double 7.350549
	.quad	0x401c9909aed56b01              # double 7.149451
	.quad	0x3ff6aaf9a8cdea03              # double 1.4167419999999999
	.quad	0x3fef1aa1d755bccb              # double 0.972001
	.quad	0x40176ef6f8f04146              # double 5.8583639999999999
	.quad	0x400a46cf41f212d7              # double 3.2845749999999998
	.quad	0x4010eabf33871609              # double 4.2292449999999997
	.quad	0x3fc94c87980f55de              # double 0.19764799999999999
	.quad	0x400fe6e008e9b38d              # double 3.9877319999999998
	.quad	0x401bd69a4df47f99              # double 6.9595729999999998
	.quad	0x400555ef1fddebd9              # double 2.66696
	.quad	0x40229a456f75d9a1              # double 9.3013110000000001
	.quad	0x3fe8161e4f765fd9              # double 0.75270000000000004
	.quad	0x3fe90ccbc05d52c1              # double 0.78281199999999995
	.quad	0x401d56238da3c212              # double 7.3341200000000004
	.quad	0x401057e28240b780              # double 4.0858249999999998
	.quad	0x4010b4b124d099e1              # double 4.1764570000000001
	.quad	0x402288121682f944              # double 9.2657629999999997
	.quad	0x401f1af5771001d6              # double 7.7763270000000002
	.quad	0x400a1fceb78897ea              # double 3.2655310000000002
	.quad	0x4002697d8cf398e9              # double 2.3015089999999998
	.quad	0x401b6e154434e337              # double 6.8575030000000003
	.quad	0x3ff02a8650e77920              # double 1.0103819999999999
	.quad	0x4022f50268900c52              # double 9.4785339999999998
	.quad	0x3ff80f4623d0bfa1              # double 1.5037290000000001
	.quad	0x4021569057d1782d              # double 8.6690699999999996
	.quad	0x40177ed783dff3f1              # double 5.873869
	.quad	0x3fcbab21815a07b3              # double 0.21615999999999999
	.quad	0x4022c304ee7c49fd              # double 9.3808969999999991
	.quad	0x4014d8090b417ca2              # double 5.2109719999999999
	.quad	0x3ffb92e62131a8ef              # double 1.7233639999999999
	.quad	0x4009ad6238da3c21              # double 3.20966
	.quad	0x4020762a5e785b5b              # double 8.2307919999999992
	.quad	0x4002c66a11ec918e              # double 2.3468819999999999
	.quad	0x401e4e108c3f3e03              # double 7.5762349999999996
	.quad	0x402044083126e979              # double 8.1328750000000003
	.quad	0x40021916872b020c              # double 2.2622499999999999
	.quad	0x401b66e8f29d40ee              # double 6.850498
	.quad	0x3fe54bc27631b585              # double 0.66549800000000003
	.quad	0x401f96fbd273d5bb              # double 7.8974450000000002
	.quad	0x401b0580c308feac              # double 6.7553739999999998
	.quad	0x3ffa390c9107faa0              # double 1.6389279999999999
	.quad	0x3ff33229e90795f6              # double 1.1997469999999999
	.quad	0x40137bd7b2031ceb              # double 4.87094
	.quad	0x401ad65ba6efc372              # double 6.7093340000000001
	.quad	0x4023b2c01e68a0d3              # double 9.8491219999999994
	.quad	0x3ffcbdbb16c1e365              # double 1.7963210000000001
	.quad	0x4011f2d77318fc50              # double 4.4871499999999997
	.quad	0x3fc273d5bab21816              # double 0.14416000000000001
	.quad	0x4015bdeca25529fe              # double 5.435473
	.quad	0x40123b28522ea0fd              # double 4.5577709999999998
	.quad	0x4022e898f605ab3b              # double 9.4542920000000005
	.quad	0x3fe6870fbeb9e493              # double 0.70398700000000003
	.quad	0x400cb2ccf6be37df              # double 3.5873050000000002
	.quad	0x4011cd7a13c254a4              # double 4.4506610000000002
	.quad	0x4023762541d8e864              # double 9.7307529999999999
	.quad	0x4019bd451fc4c166              # double 6.4348340000000004
	.quad	0x400939c5a3e39f77              # double 3.1532089999999999
	.quad	0x401d3f16b11c6d1e              # double 7.3116099999999999
	.quad	0x4022adf2a9d627bf              # double 9.3397419999999993
	.quad	0x4006583be6601bca              # double 2.7930830000000002
	.quad	0x3fc4e67d77fae361              # double 0.16328400000000001
	.quad	0x400534d37c1376d5              # double 2.6507939999999999
	.quad	0x3ff5165e4606748e              # double 1.3179609999999999
	.quad	0x4021b9a5870da5db              # double 8.8625910000000001
	.quad	0x3fef0a8b08dd1e54              # double 0.97003700000000003
	.quad	0x40174abffcdab192              # double 5.8229980000000001
	.quad	0x400e6719b4dcebff              # double 3.8003420000000001
	.quad	0x3ff40c73abc94706              # double 1.2530399999999999
	.quad	0x40051e69270b06c4              # double 2.6398489999999999
	.quad	0x4013a59c065b63d4              # double 4.9117280000000001
	.quad	0x400edbce4217d285              # double 3.8573270000000002
	.quad	0x4022f3369b9d7fd8              # double 9.4750259999999997
	.quad	0x40157c1eff9f87f0              # double 5.3712119999999999
	.quad	0x4015b6687f455a7d              # double 5.4281329999999999
	.quad	0x401fc8e0008637bd              # double 7.9461669999999999
	.quad	0x400c2061847f5621              # double 3.5158109999999998
	.quad	0x401893660e51d25b              # double 6.1439440000000003
	.quad	0x401b251d25aab474              # double 6.7862439999999999
	.quad	0x3ff124d7f0ed3d86              # double 1.0714950000000001
	.quad	0x401c4b9ecf638002              # double 7.0738479999999999
	.quad	0x4011b02de00d1b71              # double 4.4220499999999996
	.quad	0x4017de3608d0891a              # double 5.9670030000000001
	.quad	0x400926ec17ebaf10              # double 3.1440049999999999
	.quad	0x401c2909289dadfb              # double 7.0400739999999997
	.quad	0x40155c475e6362a6              # double 5.3401160000000001
	.quad	0x401588d972cd7cf6              # double 5.383642
	.quad	0x401d831550ca1cef              # double 7.3780109999999999
	.quad	0x40100c5d63886595              # double 4.0120750000000003
	.quad	0x40145e675147f130              # double 5.0921909999999997
	.quad	0x3ffa082cf52b90a8              # double 1.6269960000000001
	.quad	0x3ffa94d72799a1fd              # double 1.661338
	.quad	0x40173d0fe8ab4fa5              # double 5.8096310000000004
	.quad	0x401282ab25b317f0              # double 4.6276060000000001
	.quad	0x3ff4dc74751ce28f              # double 1.303822
	.quad	0x401b8887a8d64d7f              # double 6.8833299999999999
	.quad	0x4022ddc91d14e3bd              # double 9.4331750000000003
	.quad	0x401a80dd3fe1975f              # double 6.6258439999999998
	.quad	0x40230f4c09c3ce21              # double 9.5298770000000008
	.quad	0x401bb4f26aec0725              # double 6.9267060000000003
	.quad	0x3ffcc6bacf7446fa              # double 1.7985180000000001
	.quad	0x400b4e5471715c64              # double 3.4132470000000001
	.quad	0x3ffb5b413986338b              # double 1.7097789999999999
	.quad	0x4022700713f077cd              # double 9.2188040000000004
	.quad	0x3fff50c0ad03d9a9              # double 1.9572149999999999
	.quad	0x4013f8088509bf9c              # double 4.9922199999999997
	.quad	0x40185122749f0e4e              # double 6.0792330000000003
	.quad	0x3fc8e60807357e67              # double 0.19452
	.quad	0x3fe22a8eb463497b              # double 0.56769499999999995
	.quad	0x3fedc8adeebb341e              # double 0.93074699999999999
	.quad	0x401593f7ced91687              # double 5.3944999999999999
	.quad	0x40183a250f840182              # double 6.0567820000000001
	.quad	0x401b72d44dca8e2e              # double 6.8621379999999998
	.quad	0x4000908cc575c076              # double 2.0705809999999998
	.quad	0x40054d7e889c1b54              # double 2.662839
	.quad	0x3ffd442fa5093965              # double 1.8291470000000001
	.quad	0x4019c71151611ba4              # double 6.4444020000000002
	.quad	0x401c92031ceaf252              # double 7.1425900000000002
	.quad	0x40118a8049667b5f              # double 4.3852549999999999
	.quad	0x3feb32f01754b05b              # double 0.84996799999999995
	.quad	0x3fedaa433508f649              # double 0.92703400000000002
	.quad	0x3feac2a23bff8a8f              # double 0.83625899999999997
	.quad	0x4010a5f3d7d3910c              # double 4.1620629999999998
	.quad	0x4012cf3bea91d9b2              # double 4.7023770000000003
	.quad	0x401e08b97785729b              # double 7.5085199999999998
	.quad	0x4010c0a958537e2c              # double 4.1881459999999997
	.quad	0x3fc2d72ffd1dcd70              # double 0.14719199999999999
	.quad	0x4017cb57c4e2f380              # double 5.9485770000000002
	.quad	0x4016dc3009b30729              # double 5.7150270000000001
	.quad	0x400b262d40aaeafb              # double 3.3936410000000001
	.quad	0x4023fbb0e5e67946              # double 9.9915839999999996
	.quad	0x400127c17a89331a              # double 2.144412
	.quad	0x40173e13f4a98aa8              # double 5.8106229999999996
	.quad	0x3ffecb1897a67a53              # double 1.9245840000000001
	.quad	0x4004927f5e84f095              # double 2.5715319999999999
	.quad	0x4010530ec3116228              # double 4.0811109999999999
	.quad	0x401f8807bbb62414              # double 7.8828420000000001
	.quad	0x3ff33ef5a964e8b8              # double 1.202871
	.quad	0x4020f04d98394749              # double 8.4693419999999993
	.quad	0x3fba135daad60200              # double 0.101858
	.quad	0x3ffae616b54e2b06              # double 1.6811739999999999
	.quad	0x401d36705c896dd2              # double 7.3031629999999996
	.quad	0x4018a100e6afcce2              # double 6.1572300000000002
	.quad	0x401c597aaac1094a              # double 7.0873819999999998
	.quad	0x3fff39a5a89b951c              # double 1.9515739999999999
	.quad	0x3fd53864cb5bb385              # double 0.331567
	.quad	0x401ad8eb0318b934              # double 6.7118339999999996
	.quad	0x40203da4ce8101f3              # double 8.1203979999999998
	.quad	0x4023716249a133c2              # double 9.7214530000000003
	.quad	0x40155dc0db2702a3              # double 5.3415559999999997
	.quad	0x4003e47f562174c5              # double 2.4865710000000001
	.quad	0x401633860999dcb5              # double 5.5503159999999996
	.quad	0x401dbe9c4545846f              # double 7.4361430000000004
	.quad	0x402044219eb6390d              # double 8.1330690000000008
	.quad	0x401789bcfd4bf099              # double 5.8845099999999997
	.quad	0x401dc5857afea3df              # double 7.4428919999999996
	.quad	0x4009380cb6c7a7ca              # double 3.1523680000000001
	.quad	0x401f125a250f8402              # double 7.7679220000000004
	.quad	0x400410f5a1016ce8              # double 2.5082810000000002
	.quad	0x401c280b673c4f3c              # double 7.0391060000000003
	.quad	0x402023122b7baecd              # double 8.0684979999999999
	.quad	0x402356fdeb52c9d1              # double 9.6699059999999992
	.quad	0x400b29b38d60a633              # double 3.395362
	.quad	0x3fe93ea704bc2763              # double 0.78889799999999999
	.quad	0x401b5092ccf6be38              # double 6.8286850000000001
	.quad	0x4010d16b11c6d1e1              # double 4.20451
	.quad	0x4023c5daad601ffb              # double 9.8864339999999995
	.quad	0x4000dcf3dc054ef4              # double 2.1078869999999998
	.quad	0x4023c197a24894c4              # double 9.8781099999999995
	.quad	0x4016af9acffa7eb7              # double 5.6714890000000002
	.quad	0x4012b70c564f97ee              # double 4.6787580000000002
	.quad	0x40150f02c4d65e46              # double 5.264659
	.quad	0x4023229c99285a92              # double 9.5676009999999998
	.quad	0x4018ce49f51697f2              # double 6.201454
	.quad	0x40234e6afcce1c58              # double 9.6531599999999997
	.quad	0x3fd873bc903ea705              # double 0.38206400000000001
	.quad	0x3fedb7f7be121ee6              # double 0.92870699999999995
	.quad	0x400f9e9d94d0dcfd              # double 3.9524490000000001
	.quad	0x4005667c6b8b6955              # double 2.6750419999999999
	.quad	0x4020d086df82b1f7              # double 8.4072790000000008
	.quad	0x401a932df505d0fa              # double 6.6437299999999997
	.quad	0x4013ba6bd6e8af81              # double 4.9320519999999997
	.quad	0x40226fe06961c369              # double 9.2185089999999992
	.quad	0x401b065cb35f3d7d              # double 6.7562129999999998
	.quad	0x4020f6c28b2a6b0e              # double 8.4819530000000007
	.quad	0x400566d0d49949e9              # double 2.6752030000000002
	.quad	0x4019b70d62bf11f9              # double 6.4287619999999999
	.quad	0x40225671ac14c661              # double 9.1688360000000007
	.quad	0x3feabb1af3a14cec              # double 0.83533999999999997
	.quad	0x3ff4c8d4bad7d7c3              # double 1.299031
	.quad	0x402149a36e2eb1c4              # double 8.6438249999999996
	.quad	0x3ffd501f31f46ed2              # double 1.8320609999999999
	.quad	0x3ff8eb8e8ea39c52              # double 1.557509
	.quad	0x3fe13d31b9b66f93              # double 0.53871999999999998
	.quad	0x3ff6352da98676a7              # double 1.387983
	.quad	0x3fe9a3465625a683              # double 0.80118100000000003
	.quad	0x401375aab4741073              # double 4.8649089999999999
	.quad	0x4021c258d5842b73              # double 8.8795839999999995
	.quad	0x3fdf9845dc832336              # double 0.49366900000000002
	.quad	0x4023b6199780baa6              # double 9.8556640000000009
	.quad	0x40149ec7c957cd46              # double 5.1550589999999996
	.quad	0x40202cd63cb81733              # double 8.0875719999999998
	.quad	0x400d093964a59c06              # double 3.6295039999999998
	.quad	0x4000e1049235f80a              # double 2.1098720000000002
	.quad	0x401ed855da272863              # double 7.711265
	.quad	0x400655df6555c52e              # double 2.7919299999999998
	.quad	0x40213996fa82e87d              # double 8.6124799999999997
	.quad	0x40135eed8904f6e0              # double 4.8427030000000002
	.quad	0x4021003211cb039f              # double 8.5003820000000001
	.quad	0x401ae51a86940358              # double 6.7237340000000003
	.quad	0x401aef127f5e84f1              # double 6.7334690000000004
	.quad	0x4022db4a2339c0ec              # double 9.4283000000000001
	.quad	0x3fc1280f12c27a63              # double 0.13403499999999999
	.quad	0x3fe011dde37585be              # double 0.50218099999999999
	.quad	0x401f603d9a95421c              # double 7.843985
	.quad	0x4008693f290abb45              # double 3.05139
	.quad	0x4018f12dfd694ccb              # double 6.2355270000000003
	.quad	0x40229525aab47410              # double 9.2913029999999992
	.quad	0x4016be646f156191              # double 5.6859299999999999
	.quad	0x401f034ca0c282c7              # double 7.753222
	.quad	0x3ff27a355043e532              # double 1.154836
	.quad	0x401fc06c00da1a93              # double 7.9379119999999998
	.quad	0x402180bb2bba98ee              # double 8.7514280000000007
	.quad	0x400f4b8305d95dd5              # double 3.9118710000000001
	.quad	0x3feb0307f23cc8de              # double 0.84411999999999998
	.quad	0x4019882235b4edb3              # double 6.382943
	.quad	0x4010675968512232              # double 4.1009270000000004
	.quad	0x40140205ff1d81f1              # double 5.001976
	.quad	0x401462cecc814d72              # double 5.0964919999999996
	.quad	0x401fcbca1059ea57              # double 7.9490129999999998
	.quad	0x4022d30e7ff583a5              # double 9.4122199999999995
	.quad	0x4020b36933a0407d              # double 8.3504120000000004
	.quad	0x400d78c32a8c9b84              # double 3.6839659999999999
	.quad	0x3face8b7e4de3b8a              # double 0.056462999999999999
	.quad	0x40150614163779ea              # double 5.2559360000000002
	.quad	0x401fdc7820a30db7              # double 7.9653020000000003
	.quad	0x40230e2ed352220c              # double 9.5277010000000004
	.quad	0x4019b49c2c1b10fd              # double 6.4263769999999996
	.quad	0x402154c8366516db              # double 8.6655899999999999
	.quad	0x4016b8cc575c0768              # double 5.6804670000000002
	.quad	0x401b61b54195cc85              # double 6.8454179999999996
	.quad	0x40152d9a0f0a5eff              # double 5.2945330000000004
	.quad	0x3fe722fcefaa4767              # double 0.72302100000000002
	.quad	0x401e729bae46cfc8              # double 7.6119219999999998
	.quad	0x401a3f3387160957              # double 6.5617200000000002
	.quad	0x400ba96dd26b723f              # double 3.4577290000000001
	.quad	0x401cf3775b813016              # double 7.2377599999999997
	.quad	0x3fd53b2dd377e1b9              # double 0.331737
	.quad	0x3fe717204295a6c6              # double 0.72157300000000002
	.quad	0x400578cb8e086bdf              # double 2.6839819999999999
	.quad	0x401696d58c8eef1c              # double 5.6472990000000003
	.quad	0x401efbc01a36e2eb              # double 7.7458499999999999
	.quad	0x40221ef5a964e8b8              # double 9.0604680000000002
	.quad	0x40213c4d44567126              # double 8.6177770000000002
	.quad	0x4014a05d52c16df4              # double 5.156606
	.quad	0x401993365881a155              # double 6.3937619999999997
	.quad	0x3fc1ccd0fe8ab4fa              # double 0.13906299999999999
	.quad	0x3ff84535c9e6687f              # double 1.5168969999999999
	.quad	0x401f7fabda0dfdf0              # double 7.8746790000000004
	.quad	0x400b7c297bfa4c62              # double 3.4356260000000001
	.quad	0x4011dff1950331e4              # double 4.4686950000000003
	.quad	0x401ec13cee9dd7ed              # double 7.6887090000000002
	.quad	0x4022f5f3f961804e              # double 9.4803770000000007
	.quad	0x40215bbb83cf2cf9              # double 8.6791649999999994
	.quad	0x401cba975afaf859              # double 7.1822179999999998
	.quad	0x4020e53671ac14c6              # double 8.4476809999999993
	.quad	0x400b3ac471b47842              # double 3.4036949999999999
	.quad	0x3ffe997e56473472              # double 1.912474
	.quad	0x401359613d31b9b6              # double 4.8372849999999996
	.quad	0x3ff511600f34506a              # double 1.3167420000000001
	.quad	0x40070f3cb3e5753a              # double 2.8824399999999999
	.quad	0x4012cfc5479d4d83              # double 4.7029009999999998
	.quad	0x3fed716b11c6d1e1              # double 0.920095
	.quad	0x401d8f2a172abef0              # double 7.3898089999999996
	.quad	0x3fe3ddbdb5d89481              # double 0.62081799999999998
	.quad	0x40038b72c5197a25              # double 2.4430900000000002
	.quad	0x401966b93ccd0fe9              # double 6.3503160000000003
	.quad	0x3ff8272324c83665              # double 1.509555
	.quad	0x3ffe56cf850df15a              # double 1.8961939999999999
	.quad	0x402015e15ca6ca04              # double 8.0427350000000004
	.quad	0x400dc9ecb31c219f              # double 3.7235960000000001
	.quad	0x401a92f8bdec5f39              # double 6.6435269999999997
	.quad	0x4011777f6b1a2a4e              # double 4.3666970000000003
	.quad	0x401668e60807357e              # double 5.6024399999999996
	.quad	0x3fe0550a88effe2a              # double 0.51038099999999997
	.quad	0x402204f0f9d2bf55              # double 9.0096509999999999
	.quad	0x4020f0f96e158751              # double 8.4706530000000004
	.quad	0x4004bf487fcb923a              # double 2.5933999999999999
	.quad	0x3fe374f93bc0a06f              # double 0.60802900000000004
	.quad	0x4018806317268d33              # double 6.1253780000000004
	.quad	0x40180e3864cb5bb4              # double 6.0138870000000004
	.quad	0x40075666a98244e9              # double 2.9171879999999999
	.quad	0x400e7dc7abfb9bed              # double 3.8114159999999999
	.quad	0x4022eaa2a0a95853              # double 9.4582719999999991
	.quad	0x3fd1c41dd1a21ea3              # double 0.27759499999999998
	.quad	0x3ffd112556d19ded              # double 1.816686
	.quad	0x401fc6ad2dcb1466              # double 7.9440200000000001
	.quad	0x400ac7a28bb0a2cb              # double 3.3474780000000002
	.size	.L__constant_4499xf64, 35992

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
