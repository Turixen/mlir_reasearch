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
	.quad	0x4127458e085bc01a              # double 762567.01632499998
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
	.quad	1500                            # 0x5dc
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	1500                            # 0x5dc
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
	lui	a7, %hi(.L__constant_1500xindex)
	addi	a7, a7, %lo(.L__constant_1500xindex)
	lui	t0, %hi(.L__constant_1500xf64)
	addi	t0, t0, %lo(.L__constant_1500xf64)
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
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	47                              # 0x2f
	.quad	63                              # 0x3f
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	106                             # 0x6a
	.quad	117                             # 0x75
	.quad	128                             # 0x80
	.quad	143                             # 0x8f
	.quad	159                             # 0x9f
	.quad	169                             # 0xa9
	.quad	182                             # 0xb6
	.quad	199                             # 0xc7
	.quad	212                             # 0xd4
	.quad	228                             # 0xe4
	.quad	241                             # 0xf1
	.quad	255                             # 0xff
	.quad	269                             # 0x10d
	.quad	281                             # 0x119
	.quad	298                             # 0x12a
	.quad	312                             # 0x138
	.quad	323                             # 0x143
	.quad	338                             # 0x152
	.quad	353                             # 0x161
	.quad	365                             # 0x16d
	.quad	381                             # 0x17d
	.quad	399                             # 0x18f
	.quad	418                             # 0x1a2
	.quad	433                             # 0x1b1
	.quad	459                             # 0x1cb
	.quad	471                             # 0x1d7
	.quad	485                             # 0x1e5
	.quad	498                             # 0x1f2
	.quad	507                             # 0x1fb
	.quad	522                             # 0x20a
	.quad	536                             # 0x218
	.quad	547                             # 0x223
	.quad	568                             # 0x238
	.quad	588                             # 0x24c
	.quad	606                             # 0x25e
	.quad	626                             # 0x272
	.quad	641                             # 0x281
	.quad	657                             # 0x291
	.quad	671                             # 0x29f
	.quad	686                             # 0x2ae
	.quad	696                             # 0x2b8
	.quad	711                             # 0x2c7
	.quad	727                             # 0x2d7
	.quad	742                             # 0x2e6
	.quad	755                             # 0x2f3
	.quad	767                             # 0x2ff
	.quad	782                             # 0x30e
	.quad	796                             # 0x31c
	.quad	814                             # 0x32e
	.quad	826                             # 0x33a
	.quad	837                             # 0x345
	.quad	855                             # 0x357
	.quad	870                             # 0x366
	.quad	888                             # 0x378
	.quad	899                             # 0x383
	.quad	911                             # 0x38f
	.quad	928                             # 0x3a0
	.quad	942                             # 0x3ae
	.quad	958                             # 0x3be
	.quad	977                             # 0x3d1
	.quad	991                             # 0x3df
	.quad	1012                            # 0x3f4
	.quad	1026                            # 0x402
	.quad	1046                            # 0x416
	.quad	1053                            # 0x41d
	.quad	1069                            # 0x42d
	.quad	1090                            # 0x442
	.quad	1104                            # 0x450
	.quad	1117                            # 0x45d
	.quad	1133                            # 0x46d
	.quad	1152                            # 0x480
	.quad	1164                            # 0x48c
	.quad	1175                            # 0x497
	.quad	1191                            # 0x4a7
	.quad	1213                            # 0x4bd
	.quad	1227                            # 0x4cb
	.quad	1241                            # 0x4d9
	.quad	1257                            # 0x4e9
	.quad	1275                            # 0x4fb
	.quad	1285                            # 0x505
	.quad	1297                            # 0x511
	.quad	1316                            # 0x524
	.quad	1333                            # 0x535
	.quad	1352                            # 0x548
	.quad	1372                            # 0x55c
	.quad	1394                            # 0x572
	.quad	1411                            # 0x583
	.quad	1424                            # 0x590
	.quad	1434                            # 0x59a
	.quad	1445                            # 0x5a5
	.quad	1462                            # 0x5b6
	.quad	1477                            # 0x5c5
	.quad	1490                            # 0x5d2
	.quad	1500                            # 0x5dc
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1500xindex,@object # @__constant_1500xindex
	.p2align	6, 0x0
.L__constant_1500xindex:
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	23                              # 0x17
	.quad	38                              # 0x26
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	64                              # 0x40
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	5                               # 0x5
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	96                              # 0x60
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	64                              # 0x40
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	66                              # 0x42
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	14                              # 0xe
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	91                              # 0x5b
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	29                              # 0x1d
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	69                              # 0x45
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	37                              # 0x25
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	70                              # 0x46
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	23                              # 0x17
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	51                              # 0x33
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	88                              # 0x58
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	85                              # 0x55
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	41                              # 0x29
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	88                              # 0x58
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	10                              # 0xa
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	6                               # 0x6
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	14                              # 0xe
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	9                               # 0x9
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	10                              # 0xa
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.size	.L__constant_1500xindex, 12000

	.type	.L__constant_1500xf64,@object   # @__constant_1500xf64
	.p2align	6, 0x0
.L__constant_1500xf64:
	.quad	0x4018eb8561d4306e              # double 6.2300009999999997
	.quad	0x3feb13e81450efdd              # double 0.84618000000000004
	.quad	0x3ff49b97353b4b30              # double 1.2879860000000001
	.quad	0x4017954da4ce8102              # double 5.895804
	.quad	0x401da00c0f01fb83              # double 7.4062960000000002
	.quad	0x401c55a5332acfb7              # double 7.0836379999999997
	.quad	0x3ff0f884406c00da              # double 1.060673
	.quad	0x401a032ebe596c83              # double 6.5031080000000001
	.quad	0x401e42fd75e2046c              # double 7.5654199999999996
	.quad	0x4022ed26d8b1dd5d              # double 9.4631869999999995
	.quad	0x3fd95675579af188              # double 0.39590199999999998
	.quad	0x40127eb4e981387a              # double 4.6237370000000002
	.quad	0x4009578c436fc159              # double 3.167748
	.quad	0x400bddb4cc250721              # double 3.4832550000000002
	.quad	0x40043235f8099179              # double 2.5245169999999999
	.quad	0x3fe84c9c90c4dec2              # double 0.75935200000000003
	.quad	0x40031324851a8694              # double 2.384347
	.quad	0x4011ea8bd230b9dc              # double 4.4790489999999998
	.quad	0x401414c5974e65bf              # double 5.0202850000000003
	.quad	0x401dbf0f5a1016ce              # double 7.4365819999999996
	.quad	0x4001f743632c1f43              # double 2.2457340000000001
	.quad	0x40224eec17ebaf10              # double 9.1541449999999998
	.quad	0x4013e7507e9d94d1              # double 4.9758930000000001
	.quad	0x3fe6bdaf8df7a4e8              # double 0.71065500000000004
	.quad	0x40229cd65e460675              # double 9.3063230000000008
	.quad	0x4022ccb5568e820e              # double 9.3998209999999993
	.quad	0x40188512a94ff002              # double 6.1299539999999997
	.quad	0x400836f112fd32c6              # double 3.0268269999999999
	.quad	0x3fdb154c985f06f7              # double 0.42317500000000002
	.quad	0x401e90767d34df05              # double 7.6410770000000001
	.quad	0x402244c92146a1a5              # double 9.134347
	.quad	0x401b81d6494d50ec              # double 6.8767940000000003
	.quad	0x3fd7466b1e5c0b9a              # double 0.36367300000000002
	.quad	0x4009dda8bd230b9e              # double 3.2332320000000001
	.quad	0x4014c7c45cbbc2b9              # double 5.1950849999999997
	.quad	0x401b557d9dba908a              # double 6.8334869999999999
	.quad	0x4011917fc7607c42              # double 4.3920890000000004
	.quad	0x401bc4020817fc76              # double 6.941414
	.quad	0x4021558afc47e49b              # double 8.6670759999999998
	.quad	0x402343499d0203e6              # double 9.6314209999999996
	.quad	0x40157b545c78a6db              # double 5.3704390000000002
	.quad	0x3fe788ce703afb7f              # double 0.73545000000000005
	.quad	0x400e1722e1ac57e2              # double 3.7612969999999999
	.quad	0x3ff9f83dff3f0fe0              # double 1.6231059999999999
	.quad	0x4018881f10667f91              # double 6.1329310000000001
	.quad	0x40170f8f8a4c1ebd              # double 5.7651960000000004
	.quad	0x4023ed43d03968d7              # double 9.9634079999999993
	.quad	0x4016961672324c83              # double 5.6465699999999996
	.quad	0x4009d384fd2a62aa              # double 3.228281
	.quad	0x401c4024b33daf8e              # double 7.06264
	.quad	0x400656bc1eff9f88              # double 2.792351
	.quad	0x4019ae89eba6aca8              # double 6.4204480000000004
	.quad	0x401330ab71327243              # double 4.7975289999999999
	.quad	0x400bdd3ed527e521              # double 3.4830299999999998
	.quad	0x4020bf10a99b6f5d              # double 8.3731740000000006
	.quad	0x400aa358afc47e4a              # double 3.3297590000000001
	.quad	0x3fb437e6f71a7e31              # double 0.078978000000000007
	.quad	0x400c505faebc408e              # double 3.5392450000000002
	.quad	0x3fe7131a8ef77f28              # double 0.721082
	.quad	0x3ff9982a9930be0e              # double 1.59965
	.quad	0x400b1dc6195464dc              # double 3.3895379999999999
	.quad	0x4015de368f084620              # double 5.4670050000000003
	.quad	0x401efd0b30b5aa71              # double 7.7471129999999996
	.quad	0x3ff2f877ab324852              # double 1.1856610000000001
	.quad	0x40171d634549b62c              # double 5.7786989999999996
	.quad	0x402219d883ba3444              # double 9.0504800000000003
	.quad	0x4022fc436fc158fb              # double 9.4927019999999995
	.quad	0x40191f2239e6ab9b              # double 6.2804039999999999
	.quad	0x3ffc0b966be7afa7              # double 1.752829
	.quad	0x40202b8ed1bf7ad5              # double 8.0850740000000005
	.quad	0x402048d9945b6c37              # double 8.1422849999999993
	.quad	0x40222257eaa2a0a9              # double 9.0670769999999994
	.quad	0x40237da5daf07bfe              # double 9.7454059999999991
	.quad	0x4020fd4a3c64345d              # double 8.494707
	.quad	0x401777e8ccdd93c4              # double 5.8670989999999996
	.quad	0x3feb76b7ed41b75a              # double 0.85824199999999995
	.quad	0x4000d8244e93e1ca              # double 2.1055380000000001
	.quad	0x401fb60c7c0f4517              # double 7.9277819999999996
	.quad	0x401e03bcd35a8588              # double 7.5036500000000003
	.quad	0x4023a46b8b69552e              # double 9.8211329999999997
	.quad	0x3ffbc3f0bae89eba              # double 1.7353369999999999
	.quad	0x40231c5260f5e41d              # double 9.5553159999999994
	.quad	0x402153884406c00e              # double 8.6631490000000007
	.quad	0x40236ed97b30f8c6              # double 9.7165029999999994
	.quad	0x40208ce3bcd35a86              # double 8.2751750000000008
	.quad	0x3ff9e9bae46cfc83              # double 1.6195630000000001
	.quad	0x4023bf5147f13059              # double 9.8736669999999993
	.quad	0x4021bd6238da3c21              # double 8.8698899999999998
	.quad	0x3ffdfc2eba27ae9b              # double 1.8740680000000001
	.quad	0x4022b52fc2656abe              # double 9.3538800000000002
	.quad	0x3fe82775fb2edfe7              # double 0.75481699999999996
	.quad	0x4015a16d2aa5c5f8              # double 5.4076430000000002
	.quad	0x3ff4c067cf1c3266              # double 1.2969740000000001
	.quad	0x3fd8e9b7bf1e8e61              # double 0.38926500000000003
	.quad	0x3f8f9c62a1b5c7ce              # double 0.015435000000000001
	.quad	0x4021d8589acbc8c1              # double 8.9225510000000003
	.quad	0x4020338d60a63305              # double 8.1006879999999999
	.quad	0x3ffafc1df3300de5              # double 1.6865520000000001
	.quad	0x4020102a77a2cecd              # double 8.0315740000000009
	.quad	0x3ff9da250f840182              # double 1.615758
	.quad	0x401d6d2ed783dff4              # double 7.3566240000000001
	.quad	0x3fe54e5710880d80              # double 0.66581299999999999
	.quad	0x400bc41e57d9dba9              # double 3.470761
	.quad	0x4013c057d1782d38              # double 4.9378349999999998
	.quad	0x4020379e59f2ba9d              # double 8.1086299999999998
	.quad	0x4017a6e04c059210              # double 5.9129649999999998
	.quad	0x4010f829068986fd              # double 4.2423440000000001
	.quad	0x401684bf8fcd67fd              # double 5.6296369999999998
	.quad	0x3fe2d330941c8217              # double 0.58828000000000003
	.quad	0x4013d338b47c73ef              # double 4.9562710000000001
	.quad	0x40227ef8055fbb51              # double 9.2479859999999992
	.quad	0x4000e667f90d9d77              # double 2.1125029999999998
	.quad	0x401b6bcf91a32b13              # double 6.8552840000000002
	.quad	0x4021246759ab6d01              # double 8.5711010000000005
	.quad	0x400bfe3da2f8bdec              # double 3.4991409999999998
	.quad	0x3ff4e42e12620254              # double 1.3057080000000001
	.quad	0x3fbebc0e38a7e73a              # double 0.120057
	.quad	0x4012976fb09203a3              # double 4.6478869999999999
	.quad	0x401c5785f8d2e515              # double 7.0854720000000002
	.quad	0x401d28b827fa1a0d              # double 7.2897650000000001
	.quad	0x401ba07dd4413554              # double 6.9067299999999996
	.quad	0x401e1d4562e09fe8              # double 7.5285849999999996
	.quad	0x3fd4f316e3715400              # double 0.32733699999999999
	.quad	0x401b7a915379fa98              # double 6.8696950000000001
	.quad	0x40196b0813cab820              # double 6.3545230000000004
	.quad	0x40231ad0e5604189              # double 9.5523749999999996
	.quad	0x40109f077ccc0379              # double 4.1553019999999998
	.quad	0x401bc79af1886df8              # double 6.9449269999999999
	.quad	0x401efea854477ff1              # double 7.7486889999999997
	.quad	0x40204ad9cf13ceea              # double 8.1461930000000002
	.quad	0x3ffac2edbb59ddc2              # double 1.67259
	.quad	0x40231c528283d35f              # double 9.5553170000000005
	.quad	0x4022a22c669057d1              # double 9.3167449999999992
	.quad	0x4015e9fb1e18efbb              # double 5.478497
	.quad	0x400149d6adf71eb0              # double 2.161054
	.quad	0x401c140d0aaa7ded              # double 7.0195809999999996
	.quad	0x400a71600f34506a              # double 3.3053590000000002
	.quad	0x401c6d17c5ef62fa              # double 7.1065360000000002
	.quad	0x401c1d4738a3b57c              # double 7.0285919999999997
	.quad	0x4020924c8366516e              # double 8.2857400000000005
	.quad	0x400a566be7afa722              # double 3.292198
	.quad	0x401ee11f4f50a02c              # double 7.7198460000000004
	.quad	0x40219f33226c3b92              # double 8.8109369999999991
	.quad	0x40210b8433d6c722              # double 8.5224930000000008
	.quad	0x40174524bfd2e947              # double 5.8175230000000004
	.quad	0x4017d229e90795f6              # double 5.9552379999999996
	.quad	0x401b9c486ad2dcb1              # double 6.9026199999999998
	.quad	0x40230155714b9cb7              # double 9.5026050000000008
	.quad	0x400720980b242071              # double 2.8909150000000001
	.quad	0x3fff6275ab7dc7ac              # double 1.961538
	.quad	0x40206df17bd8be73              # double 8.2147330000000007
	.quad	0x40132d30ad46f588              # double 4.7941310000000001
	.quad	0x401c691ff7164c73              # double 7.1026610000000003
	.quad	0x40188ae9680e0653              # double 6.135656
	.quad	0x40225cdd2f1a9fbe              # double 9.1813749999999992
	.quad	0x4021e7f2a172abef              # double 8.953023
	.quad	0x400af32617c1bda5              # double 3.368725
	.quad	0x40110d9be4cd7492              # double 4.2632899999999996
	.quad	0x3ff65785f8d2e515              # double 1.3963680000000001
	.quad	0x4001016052502eec              # double 2.1256719999999998
	.quad	0x3ffd41dc0db2702a              # double 1.828579
	.quad	0x40166aab47410731              # double 5.6041689999999997
	.quad	0x40231ed7a56de332              # double 9.5602389999999993
	.quad	0x400ad5011904b3c4              # double 3.354006
	.quad	0x4014a112ba16e7a3              # double 5.1572979999999999
	.quad	0x400365532617c1be              # double 2.4244750000000002
	.quad	0x4021ba339c0ebee0              # double 8.8636750000000006
	.quad	0x3ffa987c6327ed85              # double 1.662228
	.quad	0x400d21626b2f2303              # double 3.6413009999999999
	.quad	0x4018da94ff0025c0              # double 6.2134590000000003
	.quad	0x40216d5b24e9c454              # double 8.7135859999999993
	.quad	0x40117075b3e1437c              # double 4.3598239999999997
	.quad	0x401d5363f572de44              # double 7.3314360000000001
	.quad	0x400e81b003686a4d              # double 3.8133240000000002
	.quad	0x3fb89310129cbab6              # double 0.095993999999999995
	.quad	0x3fe6bead4f5903a7              # double 0.71077599999999996
	.quad	0x4018daf1886df82b              # double 6.2138119999999999
	.quad	0x3ffc2b53d640e9d5              # double 1.760578
	.quad	0x401a6669057d1783              # double 6.6000100000000002
	.quad	0x401ac9de8b3b3205              # double 6.6971379999999998
	.quad	0x4003f4fbdad7518b              # double 2.494621
	.quad	0x401dc22c01e68a0d              # double 7.4396209999999998
	.quad	0x4021036f19934efd              # double 8.5067070000000005
	.quad	0x4004a73ffac1d29e              # double 2.5816650000000001
	.quad	0x3ff42cba732df506              # double 1.26092
	.quad	0x400be76af89c5e70              # double 3.487997
	.quad	0x401f29374bc6a7f0              # double 7.7902500000000003
	.quad	0x4012ad3f1843c3a4              # double 4.6691859999999998
	.quad	0x4016c97dd00f776c              # double 5.6967689999999997
	.quad	0x4010f32b990afe61              # double 4.2374710000000002
	.quad	0x40084eb67c286f8b              # double 3.0384340000000001
	.quad	0x3ff1cb0f27bb2fec              # double 1.1120749999999999
	.quad	0x4021438066c2acb8              # double 8.6318389999999994
	.quad	0x3fc3c9f72f76e610              # double 0.15460099999999999
	.quad	0x401f5807fed20297              # double 7.8359680000000002
	.quad	0x3ff5742bb6672fba              # double 1.340862
	.quad	0x3fb01dd1a21ea359              # double 0.062954999999999997
	.quad	0x40013ee2c98e53eb              # double 2.1557059999999999
	.quad	0x4001ec868b9fdbd3              # double 2.240491
	.quad	0x401ba7d45a5fc7e7              # double 6.9138960000000003
	.quad	0x401d259ccfaeff5c              # double 7.2867309999999996
	.quad	0x4011f38fffbce421              # double 4.4878539999999996
	.quad	0x3ff885fe111276fb              # double 1.532713
	.quad	0x4002ec2df0d41312              # double 2.3653219999999999
	.quad	0x401645d206c8711d              # double 5.5681839999999996
	.quad	0x4013490cd423d923              # double 4.8213379999999999
	.quad	0x3fe9cc70867ad8e4              # double 0.80620599999999997
	.quad	0x40207d76683c297c              # double 8.245044
	.quad	0x40101d199bb2788e              # double 4.0284180000000003
	.quad	0x3fd8c422036006d1              # double 0.38697100000000001
	.quad	0x4000b93ff25e56cd              # double 2.0904539999999998
	.quad	0x4020c9d12cadddf4              # double 8.3941739999999995
	.quad	0x401325f91600f345              # double 4.787083
	.quad	0x400b85fe111276fb              # double 3.440426
	.quad	0x401558e6d15ad107              # double 5.3368180000000001
	.quad	0x3ff7d883ba3443d4              # double 1.4903599999999999
	.quad	0x402011d8c6d612c7              # double 8.0348570000000006
	.quad	0x40126c17225b749b              # double 4.6055570000000001
	.quad	0x3fe2b302f72b4528              # double 0.58435199999999998
	.quad	0x4013ada8bd230b9e              # double 4.9195890000000002
	.quad	0x401bc5a250f84018              # double 6.9430019999999999
	.quad	0x401ad96638433d6c              # double 6.7123039999999996
	.quad	0x4022c3508f648c72              # double 9.3814740000000008
	.quad	0x401e0865d7cb2d90              # double 7.5082009999999997
	.quad	0x3fecf5d35653c9ac              # double 0.90500800000000003
	.quad	0x4017e2ec6bce8534              # double 5.9716050000000003
	.quad	0x4020ab3fc86cebbc              # double 8.3344710000000006
	.quad	0x402382a9f7b5aea3              # double 9.7552029999999998
	.quad	0x4022b4d61b2a27f2              # double 9.3531960000000005
	.quad	0x3ff6ba01eeed8905              # double 1.420412
	.quad	0x401ad2ba5a038195              # double 6.7057890000000002
	.quad	0x40136306e5cd4ed3              # double 4.8467060000000002
	.quad	0x400d222ab25b317f              # double 3.641683
	.quad	0x4021d4a2db61bb06              # double 8.915305
	.quad	0x3ff56ac53b0813cb              # double 1.3385670000000001
	.quad	0x4016ccb252ce032e              # double 5.6998990000000003
	.quad	0x4016756323bbc6eb              # double 5.614636
	.quad	0x402225e2cdc011d3              # double 9.0739959999999993
	.quad	0x4011b6d04e618ce3              # double 4.4285290000000002
	.quad	0x4016eaab042528ae              # double 5.7291679999999996
	.quad	0x4013061309c7ffde              # double 4.7559319999999996
	.quad	0x40133ad31fcd24e1              # double 4.8074459999999997
	.quad	0x401d4929ed3953df              # double 7.3214490000000003
	.quad	0x401d0df9378ee286              # double 7.2636459999999996
	.quad	0x400280ae10492360              # double 2.3128320000000002
	.quad	0x4019fb484d76ab58              # double 6.495393
	.quad	0x4023f470867ad8e4              # double 9.9774209999999996
	.quad	0x4022c151c5c5718f              # double 9.3775770000000004
	.quad	0x401bdf66e86c6584              # double 6.9681660000000001
	.quad	0x401d0e8ee6b8305e              # double 7.2642170000000004
	.quad	0x40203985058dde7a              # double 8.1123429999999992
	.quad	0x4010ce2089e34331              # double 4.2012960000000001
	.quad	0x4023bad080b673c5              # double 9.864872
	.quad	0x40137bd33d29563b              # double 4.8709230000000003
	.quad	0x4023a9fb1e18efbb              # double 9.8319939999999999
	.quad	0x401058f81e8a2ec3              # double 4.0868840000000004
	.quad	0x4022b272ead9274e              # double 9.3485329999999998
	.quad	0x3fe91409a2403148              # double 0.78369599999999995
	.quad	0x401ee08f21709310              # double 7.7192959999999999
	.quad	0x3ffa1e33269df97b              # double 1.6323730000000001
	.quad	0x40231abb8800eae2              # double 9.5522120000000008
	.quad	0x40217b033a4723ab              # double 8.740259
	.quad	0x4006c2f1ed17c5ef              # double 2.8451879999999998
	.quad	0x4012637eb28d8666              # double 4.5971630000000001
	.quad	0x40117759253543af              # double 4.3665510000000003
	.quad	0x401e8bd66277c45d              # double 7.6365600000000002
	.quad	0x4021f0a67620ee8d              # double 8.9700199999999999
	.quad	0x400cbfc5479d4d83              # double 3.5936379999999999
	.quad	0x40205b220791c4b9              # double 8.177994
	.quad	0x3fb65a9a8049667b              # double 0.087319999999999995
	.quad	0x40141e0b0af5fd48              # double 5.0293390000000002
	.quad	0x4021c86a8fc0d2c4              # double 8.8914380000000008
	.quad	0x400a3974e65bea0c              # double 3.2780550000000002
	.quad	0x400dbcef240fa9c1              # double 3.7172529999999999
	.quad	0x4012c3b70ef56649              # double 4.691128
	.quad	0x401fc672b884406c              # double 7.943797
	.quad	0x4013c20c069e7fb2              # double 4.9394989999999996
	.quad	0x401a554c122749f1              # double 6.5832980000000001
	.quad	0x3ff6a4f227d028a2              # double 1.41527
	.quad	0x40033b69984a0e41              # double 2.40401
	.quad	0x400b29528f190d17              # double 3.3951769999999999
	.quad	0x402378c586876e1e              # double 9.7358820000000001
	.quad	0x4020cdcd0bb6ed67              # double 8.4019549999999992
	.quad	0x4014781733226c3c              # double 5.1172760000000004
	.quad	0x4023e1802c0a4a06              # double 9.9404310000000002
	.quad	0x3ff5a979e16d6dc2              # double 1.3538760000000001
	.quad	0x400de4f227d028a2              # double 3.7367900000000001
	.quad	0x4011554cdb7ae579              # double 4.3333009999999996
	.quad	0x3ff49212513b5bf7              # double 1.2856620000000001
	.quad	0x401ec8df7a4e7ab7              # double 7.6961649999999997
	.quad	0x401714284dfce315              # double 5.769685
	.quad	0x401274638c975297              # double 4.6136609999999996
	.quad	0x401e09f59ccfaeff              # double 7.5097259999999996
	.quad	0x40176ce18266772d              # double 5.8563289999999997
	.quad	0x3ff96c36544fe36d              # double 1.588919
	.quad	0x4020951394317acc              # double 8.2911649999999994
	.quad	0x4012287724fa8b4c              # double 4.539517
	.quad	0x3ff1e8e71476af8a              # double 1.1193610000000001
	.quad	0x4021b4b33daf8df8              # double 8.8529300000000006
	.quad	0x4023b897635e742a              # double 9.8605300000000007
	.quad	0x401f17820a30db6a              # double 7.7729569999999999
	.quad	0x401f2387df5cf249              # double 7.7846979999999996
	.quad	0x4013f0dae3e6c4c6              # double 4.9852100000000004
	.quad	0x3ff7dbc126a65cf6              # double 1.4911509999999999
	.quad	0x4023355714b9cb68              # double 9.6041799999999994
	.quad	0x400b94091c087443              # double 3.4472830000000001
	.quad	0x3ff422888b545c79              # double 1.2584310000000001
	.quad	0x3fe9b6d655e28aa4              # double 0.80356899999999997
	.quad	0x4023e92a0ec74320              # double 9.9553989999999999
	.quad	0x4003c7bf61aa3f03              # double 2.4725329999999999
	.quad	0x4011efce746cb967              # double 4.4841860000000002
	.quad	0x40121add9c27e953              # double 4.5262359999999999
	.quad	0x40206142917507ea              # double 8.1899610000000003
	.quad	0x4015e93ee5eedcc2              # double 5.477779
	.quad	0x4003d850df15a4ad              # double 2.480623
	.quad	0x40206fa15db3397e              # double 8.2180280000000003
	.quad	0x3fc1c1b54195cc85              # double 0.13872399999999999
	.quad	0x401d18ec0f883340              # double 7.2743380000000002
	.quad	0x4022f027fa1a0cf2              # double 9.4690550000000009
	.quad	0x40188dca07f66e87              # double 6.1384660000000002
	.quad	0x400d7aa0cae642c0              # double 3.6848770000000002
	.quad	0x3ff0f77e1b8ed1bf              # double 1.0604229999999999
	.quad	0x40121d44998d0460              # double 4.5285820000000001
	.quad	0x40215122fad6cb53              # double 8.6584699999999994
	.quad	0x4017c5718eb89507              # double 5.9428159999999997
	.quad	0x4018c21c8a7a41e5              # double 6.1895619999999996
	.quad	0x40224dd26b723ee2              # double 9.1519960000000005
	.quad	0x4013bb62413db7f1              # double 4.9329919999999996
	.quad	0x400e6b018611fd59              # double 3.8022490000000002
	.quad	0x40227c779a6b50b1              # double 9.2431000000000001
	.quad	0x401f5a71151611ba              # double 7.8383219999999998
	.quad	0x400f412f901083dc              # double 3.9068290000000001
	.quad	0x401128f3a9b06812              # double 4.2899919999999998
	.quad	0x4018006fac6045bb              # double 6.000426
	.quad	0x400e67f6f4be835e              # double 3.800764
	.quad	0x4003f7a5f41aef70              # double 2.4959220000000002
	.quad	0x3ff7d9a0f0a5efe9              # double 1.490632
	.quad	0x4020cfb352a84381              # double 8.4056650000000008
	.quad	0x401ea73de1e2de87              # double 7.6633219999999999
	.quad	0x3ffedafaf8594291              # double 1.9284619999999999
	.quad	0x40106a26e5471716              # double 4.1036640000000002
	.quad	0x4022aa671ef30a4e              # double 9.3328179999999996
	.quad	0x3fe7ee73e681a9b9              # double 0.74785800000000002
	.quad	0x402049187e7c06e2              # double 8.1427650000000007
	.quad	0x40001c725c3dee78              # double 2.01389
	.quad	0x40120c49774256bd              # double 4.5119990000000003
	.quad	0x4017b4e054690de1              # double 5.9266370000000004
	.quad	0x401cd649d388a8b1              # double 7.2092660000000004
	.quad	0x401d1080b673c4f4              # double 7.2661160000000002
	.quad	0x40182a6b93ccd0ff              # double 6.0414260000000004
	.quad	0x401c88e8a71de69b              # double 7.1337000000000002
	.quad	0x40201310ba6266fd              # double 8.0372369999999993
	.quad	0x402252dddf43c7d6              # double 9.1618490000000001
	.quad	0x3ffe936d655e28aa              # double 1.9109929999999999
	.quad	0x3ffe93a3ec02f2fa              # double 1.9110450000000001
	.quad	0x401cf9fd7a13c255              # double 7.2441310000000003
	.quad	0x401dd90f301eabbd              # double 7.4619720000000003
	.quad	0x40238e68c2613900              # double 9.778143
	.quad	0x4012a52220bc382a              # double 4.6612629999999999
	.quad	0x40217a7136a400fc              # double 8.7391450000000006
	.quad	0x3ff802c1b10fd7e4              # double 1.5006729999999999
	.quad	0x4002396312f4cf4a              # double 2.2780209999999999
	.quad	0x40151165d3996fa8              # double 5.2669899999999998
	.quad	0x40184e8ccdd93c47              # double 6.0767090000000001
	.quad	0x40220a0a73f748a1              # double 9.0196109999999994
	.quad	0x402304070329802c              # double 9.5078659999999999
	.quad	0x4014275ddd2ae8e2              # double 5.0384440000000001
	.quad	0x400502a80064a9ce              # double 2.6262970000000001
	.quad	0x4019b2c01e68a0d3              # double 6.4245609999999997
	.quad	0x4022ae18266772d6              # double 9.3400280000000002
	.quad	0x4007e088509bf9c6              # double 2.9846349999999999
	.quad	0x4021458cf398e970              # double 8.6358409999999992
	.quad	0x3ffde030c23fab11              # double 1.8672340000000001
	.quad	0x40200ed22424a277              # double 8.0289470000000005
	.quad	0x3fe1e7b3d8e00086              # double 0.55953399999999998
	.quad	0x3ff2e3f4666ec9e2              # double 1.180653
	.quad	0x400642c01e68a0d3              # double 2.7825929999999999
	.quad	0x40153bf37b8d3f18              # double 5.3085459999999998
	.quad	0x4008687442c7fbad              # double 3.0510030000000001
	.quad	0x40019f71eafee6fb              # double 2.2028539999999999
	.quad	0x3fb34a44c7b02d5a              # double 0.075352000000000002
	.quad	0x3fd7378ee2867275              # double 0.36276599999999998
	.quad	0x4017d044ae85b9e9              # double 5.9533870000000002
	.quad	0x401317cf5f4e4431              # double 4.7732520000000003
	.quad	0x4021059513f8db49              # double 8.5109030000000008
	.quad	0x4011d858bc59b802              # double 4.4612759999999998
	.quad	0x401b82f7b17ce52e              # double 6.8778980000000001
	.quad	0x3feec6cfc829cfdd              # double 0.96176899999999998
	.quad	0x400ddb4b2fa93af7              # double 3.7320769999999999
	.quad	0x400be465a57646ae              # double 3.4865219999999999
	.quad	0x3ff37892ee84ad79              # double 1.2169369999999999
	.quad	0x3ff8955f78359bc3              # double 1.5364679999999999
	.quad	0x402115fa871a3b15              # double 8.5429270000000006
	.quad	0x401f39da597d49d8              # double 7.8064970000000002
	.quad	0x4021cf8bdec5f395              # double 8.9053640000000005
	.quad	0x401a24577d955715              # double 6.5354900000000002
	.quad	0x400bb2bfdb4cc250              # double 3.4622799999999998
	.quad	0x402056d549731099              # double 8.1695960000000003
	.quad	0x40171c56d5cfaace              # double 5.7776750000000003
	.quad	0x400a90342aa9f7b6              # double 3.3204120000000001
	.quad	0x401605c8d9f9053a              # double 5.505649
	.quad	0x401873fee2c98e54              # double 6.1132770000000001
	.quad	0x401a328240b78034              # double 6.5493249999999996
	.quad	0x3fd80dc33721d53d              # double 0.37584000000000001
	.quad	0x4010024a6a875d57              # double 4.002237
	.quad	0x401277b5286b5914              # double 4.6169019999999996
	.quad	0x3fd419e30014f8b6              # double 0.31408000000000003
	.quad	0x3fe1eaceaaf35e31              # double 0.55991299999999999
	.quad	0x4023ea31832fcac9              # double 9.9574090000000001
	.quad	0x3ffee849cb252ce0              # double 1.931711
	.quad	0x3ffbfd09e12a51e3              # double 1.749277
	.quad	0x3ffe2a27f1b69121              # double 1.885292
	.quad	0x402125aa2e3c536d              # double 8.5735639999999993
	.quad	0x40030c8f75536934              # double 2.3811330000000002
	.quad	0x401c84d8fd5cb791              # double 7.129734
	.quad	0x4011ee73e681a9b9              # double 4.4828640000000002
	.quad	0x3ff70e9e5e247885              # double 1.4410689999999999
	.quad	0x4020ee52deca2553              # double 8.4654760000000007
	.quad	0x401b5c271fff79c8              # double 6.8399929999999998
	.quad	0x40117984a0e410b6              # double 4.3686699999999998
	.quad	0x4022fde5aff2a173              # double 9.4958930000000005
	.quad	0x4021b341bfbdf091              # double 8.8501110000000001
	.quad	0x4015520fb224aada              # double 5.3301379999999998
	.quad	0x401be446f9b994e2              # double 6.9729270000000003
	.quad	0x401545baf533f423              # double 5.3180959999999997
	.quad	0x401c56a487336588              # double 7.0846119999999999
	.quad	0x401dda1e81cb46bb              # double 7.4630070000000002
	.quad	0x3fd426e978d4fdf4              # double 0.31487500000000002
	.quad	0x3ff7473ffac1d29e              # double 1.454895
	.quad	0x4021314c22ee4192              # double 8.5962840000000007
	.quad	0x4020f1b280f12c28              # double 8.4720650000000006
	.quad	0x401c1774256bca53              # double 7.0229039999999996
	.quad	0x401faff4fd6d7e89              # double 7.9218330000000003
	.quad	0x4000866ec9e236c1              # double 2.0656409999999998
	.quad	0x4021630ec3116228              # double 8.6934719999999999
	.quad	0x3ff630329802c0a5              # double 1.3867670000000001
	.quad	0x401ec41e14bdfd26              # double 7.6915209999999998
	.quad	0x40213cf206423960              # double 8.6190339999999992
	.quad	0x401a3b1e18efbb0e              # double 6.5577319999999997
	.quad	0x3fff1944aa53fc01              # double 1.9436690000000001
	.quad	0x401c8f3cb3e5753a              # double 7.1398799999999998
	.quad	0x4021f988f42fe825              # double 8.9873729999999998
	.quad	0x40220bb8e4b87bdd              # double 9.0228950000000001
	.quad	0x401839bbadc0980b              # double 6.0563799999999999
	.quad	0x402153484d76ab58              # double 8.6626609999999999
	.quad	0x402193b341e14be0              # double 8.7884770000000003
	.quad	0x400cef05a708ede5              # double 3.6167099999999999
	.quad	0x4022cd4024b33db0              # double 9.4008800000000008
	.quad	0x40221da6a4441787              # double 9.057912
	.quad	0x401b6a500d5e8d54              # double 6.8538209999999999
	.quad	0x40239840bfe3b03e              # double 9.7973689999999998
	.quad	0x40049fbd6a593a2e              # double 2.577998
	.quad	0x4011b44a6223e187              # double 4.4260650000000004
	.quad	0x400b57add15f02c5              # double 3.4178120000000001
	.quad	0x402255b91f70de8f              # double 9.1674279999999992
	.quad	0x400f9beb18116ebd              # double 3.9511319999999999
	.quad	0x4018b4b9884c6a3c              # double 6.1764890000000001
	.quad	0x401c55e0b4e11dbd              # double 7.0838650000000003
	.quad	0x4021ff2cb641700d              # double 8.9983880000000003
	.quad	0x40232e0114d2f5dc              # double 9.5898520000000004
	.quad	0x4003dc896dd26b72              # double 2.4826839999999999
	.quad	0x401d30edc3bd5992              # double 7.2977819999999998
	.quad	0x401c471e6cd29132              # double 7.0694520000000001
	.quad	0x3fe6254a3c64345d              # double 0.692052
	.quad	0x4023f05d52c16df4              # double 9.969462
	.quad	0x4009fa3c21187e7c              # double 3.247185
	.quad	0x401c86cbd987c632              # double 7.1316369999999996
	.quad	0x4013876af89c5e70              # double 4.882244
	.quad	0x400c5f5e84f09529              # double 3.546567
	.quad	0x401e2c03bc4d22c9              # double 7.5429830000000004
	.quad	0x3feb2b4528283d36              # double 0.84903200000000001
	.quad	0x3ffd1efc7a398202              # double 1.820065
	.quad	0x40223d78c436fc16              # double 9.1200620000000008
	.quad	0x4010af0f5a1016ce              # double 4.1709569999999996
	.quad	0x4023edcd4ed2cbea              # double 9.9644569999999995
	.quad	0x40125aeb3dd11be7              # double 4.5887880000000001
	.quad	0x3fed25b0ff10ecb7              # double 0.91085099999999997
	.quad	0x400cae1d6494d50f              # double 3.5850170000000001
	.quad	0x4023dc46950fc71d              # double 9.9302259999999993
	.quad	0x401f98c21e1d2179              # double 7.899178
	.quad	0x4023fdfc5cdd50a9              # double 9.9960660000000007
	.quad	0x401e588ca3e7d135              # double 7.5864739999999999
	.quad	0x400c32d1287c200c              # double 3.524813
	.quad	0x40183fd2630ec311              # double 6.0623259999999997
	.quad	0x3ffa19806f262889              # double 1.6312260000000001
	.quad	0x40153cc1ca3a4b55              # double 5.3093329999999996
	.quad	0x402390060780fdc1              # double 9.7812959999999993
	.quad	0x40203b3a4723ab00              # double 8.1156790000000001
	.quad	0x3fbb79fa97e132b5              # double 0.10732999999999999
	.quad	0x4022a07485e3da30              # double 9.3133890000000008
	.quad	0x402158296b3354c1              # double 8.6721909999999998
	.quad	0x40097192ea52ef91              # double 3.1804559999999999
	.quad	0x401029a73b42cc2d              # double 4.0406769999999996
	.quad	0x4009fb4bb5e0f7fd              # double 3.247703
	.quad	0x401ce8301a79feca              # double 7.2267460000000003
	.quad	0x401300a30db6a1e8              # double 4.7506219999999999
	.quad	0x4020db29c347e8cd              # double 8.4280530000000002
	.quad	0x401bc93682730c67              # double 6.9464969999999999
	.quad	0x401653d4f15e7c8d              # double 5.5818669999999999
	.quad	0x400ed36c58eeae9f              # double 3.853234
	.quad	0x4022648e8a71de6a              # double 9.1964000000000006
	.quad	0x4017b49b1fab96f2              # double 5.9263729999999999
	.quad	0x401e3d8a116659d1              # double 7.5600969999999998
	.quad	0x402085ec1c1d6cf8              # double 8.2615669999999994
	.quad	0x3fe2c4d87724fa8b              # double 0.58652899999999997
	.quad	0x3fdc4aa10e022142              # double 0.44205499999999998
	.quad	0x4017058eeae9ee46              # double 5.7554280000000002
	.quad	0x401e626b723ee1bd              # double 7.5961129999999998
	.quad	0x3fe795c63ae2541e              # double 0.73703300000000005
	.quad	0x4011c4a5df2239e7              # double 4.4420390000000003
	.quad	0x4023fc9ff92f2b67              # double 9.9934080000000005
	.quad	0x40000d940789613d              # double 2.0066299999999999
	.quad	0x3fa7e6d58c8eef1c              # double 0.046683000000000002
	.quad	0x3ff27682730c6717              # double 1.1539330000000001
	.quad	0x40101976ff3ade22              # double 4.0248679999999997
	.quad	0x4020cee8d10f51ad              # double 8.4041200000000007
	.quad	0x3fb47e7c06e19b91              # double 0.080055000000000001
	.quad	0x401b1bfa0945f9df              # double 6.7773209999999997
	.quad	0x40171ded288ce704              # double 5.7792250000000003
	.quad	0x401cfa854477ff15              # double 7.2446489999999999
	.quad	0x4021aa122fad6cb5              # double 8.8321699999999996
	.quad	0x4023e598bf7f0670              # double 9.9484309999999994
	.quad	0x400b71f926c7eae6              # double 3.4306510000000001
	.quad	0x401bf37da61e0c5b              # double 6.9877840000000004
	.quad	0x4019dc3e74afd545              # double 6.4650819999999998
	.quad	0x4003c41248d7e026              # double 2.4707379999999999
	.quad	0x3ffaaf4e0114d2f6              # double 1.667799
	.quad	0x3fb6132b55ef1fde              # double 0.086230000000000001
	.quad	0x40129dcf893faf42              # double 4.6541119999999996
	.quad	0x4018194d0dcfcc5c              # double 6.0247080000000004
	.quad	0x402265af8df7a4e8              # double 9.1986050000000005
	.quad	0x401561a47a9e2bd0              # double 5.3453540000000004
	.quad	0x4022faf81626b2f2              # double 9.4901739999999997
	.quad	0x3ff1b456b441bb8c              # double 1.106528
	.quad	0x4003bff822bbecab              # double 2.4687350000000001
	.quad	0x401c2249e44fa051              # double 7.0334849999999998
	.quad	0x3ffdb37867f0aa22              # double 1.8563160000000001
	.quad	0x401c9c27a63736ce              # double 7.152495
	.quad	0x401fc58f2e05ccc9              # double 7.9429290000000003
	.quad	0x4003cc5eb313be23              # double 2.47479
	.quad	0x40239d39756c93a7              # double 9.8070789999999998
	.quad	0x402084bc27631b58              # double 8.2592479999999995
	.quad	0x40221a9888f861a6              # double 9.0519449999999999
	.quad	0x401d0992c8c50050              # double 7.2593490000000003
	.quad	0x40048b9c304ccee6              # double 2.5681690000000001
	.quad	0x401786fb4c3c18b5              # double 5.881818
	.quad	0x3fe679b13165d399              # double 0.70235499999999995
	.quad	0x3fed10ba6266fd65              # double 0.90829199999999999
	.quad	0x4011433226c3b928              # double 4.3156210000000002
	.quad	0x3ff84433d6c72192              # double 1.516651
	.quad	0x40232d549731098d              # double 9.5885359999999995
	.quad	0x401225cbff47735c              # double 4.5369109999999999
	.quad	0x402118f7b9e060fe              # double 8.5487649999999995
	.quad	0x40033b584b1ab085              # double 2.4039769999999998
	.quad	0x40159bd5dc400757              # double 5.402183
	.quad	0x40089f65dbfceb79              # double 3.0778310000000002
	.quad	0x40225c940bbb1f25              # double 9.1808169999999993
	.quad	0x402137beb9e492bc              # double 8.6088769999999996
	.quad	0x402152647fdc5932              # double 8.6609230000000004
	.quad	0x4012504d98394749              # double 4.5784209999999996
	.quad	0x4020173a365cb35f              # double 8.0453659999999996
	.quad	0x40166942d490e66d              # double 5.6027940000000003
	.quad	0x400a8c33b5393251              # double 3.3184580000000001
	.quad	0x4013497a67a52ac7              # double 4.8217559999999997
	.quad	0x400297585be1a826              # double 2.3238989999999999
	.quad	0x4012ce121ee67514              # double 4.7012409999999996
	.quad	0x401166bca5375c8e              # double 4.3503290000000003
	.quad	0x402171c38b04ab60              # double 8.7221949999999993
	.quad	0x4005732bdc26dce4              # double 2.6812360000000002
	.quad	0x40237d219a847b24              # double 9.7443969999999993
	.quad	0x4023efe414e7ee91              # double 9.9685369999999995
	.quad	0x3ffb2c58eeae9ee4              # double 1.6983269999999999
	.quad	0x401a8a7503b81b65              # double 6.6352120000000001
	.quad	0x4022d0ccdd93c46e              # double 9.4078130000000009
	.quad	0x4005072c0e7bc3c6              # double 2.6285020000000001
	.quad	0x40155a087ca643cc              # double 5.337923
	.quad	0x401c449129888f86              # double 7.0669599999999999
	.quad	0x402219a3b14a9047              # double 9.0500769999999999
	.quad	0x401c3299d883ba34              # double 7.0494149999999998
	.quad	0x40235704bc27631b              # double 9.6699579999999993
	.quad	0x3ff9bd1aa821f299              # double 1.608668
	.quad	0x3fea1a91105e1c15              # double 0.815743
	.quad	0x400da2ac322291fb              # double 3.7044299999999999
	.quad	0x4017a64adff822bc              # double 5.9123950000000001
	.quad	0x402219da9c99285b              # double 9.0504960000000008
	.quad	0x40173b44a1f08030              # double 5.8078789999999998
	.quad	0x4011374b838c111b              # double 4.3039990000000001
	.quad	0x400b6a94ff0025c0              # double 3.4270420000000001
	.quad	0x4019904790b84988              # double 6.390898
	.quad	0x4023914317acc4f0              # double 9.7837150000000008
	.quad	0x401c27e02645e4e7              # double 7.0389410000000003
	.quad	0x401cb2f512663411              # double 7.1747629999999996
	.quad	0x4016de5604189375              # double 5.7171250000000002
	.quad	0x401a7572580c3090              # double 6.6146940000000001
	.quad	0x40100c0053e2d624              # double 4.0117200000000004
	.quad	0x4003e22ff08893b8              # double 2.4854430000000001
	.quad	0x401f8728e92d55a4              # double 7.8819920000000003
	.quad	0x4021ee4712e40853              # double 8.9653860000000005
	.quad	0x4020f8e043a21640              # double 8.4860860000000002
	.quad	0x40204f574f722e1b              # double 8.1549630000000004
	.quad	0x401db5be5d9e40c8              # double 7.4274839999999997
	.quad	0x400e10ce4ead0c3d              # double 3.7582059999999999
	.quad	0x400bb790fb65668c              # double 3.4646319999999999
	.quad	0x3ffc0c8259e1f3a5              # double 1.7530539999999999
	.quad	0x402289b90ea9e6ef              # double 9.2689900000000005
	.quad	0x3fc2b90a7829068a              # double 0.14627200000000001
	.quad	0x400f88909289dae0              # double 3.9416820000000001
	.quad	0x402002157689ca19              # double 8.0040700000000005
	.quad	0x3ffac8feac42e98a              # double 1.6740710000000001
	.quad	0x400e0dcebfec13ba              # double 3.756742
	.quad	0x40235db9628cbd12              # double 9.6830549999999995
	.quad	0x40147519bd4067cf              # double 5.1143559999999999
	.quad	0x40127b6523704791              # double 4.6205030000000002
	.quad	0x40023de15ca6ca04              # double 2.2802150000000001
	.quad	0x3ff4483126e978d5              # double 1.267625
	.quad	0x3fea29691a75cd0c              # double 0.81755500000000003
	.quad	0x40030f96e158750c              # double 2.382612
	.quad	0x401b54e4430b178b              # double 6.8329019999999998
	.quad	0x3fe923315d701d9f              # double 0.78554599999999997
	.quad	0x3ff65aa821f2990f              # double 1.397133
	.quad	0x401bb641b328b6d8              # double 6.9279849999999996
	.quad	0x40211b74794ea077              # double 8.553623
	.quad	0x3fe7a5cc426351df              # double 0.73898900000000001
	.quad	0x40182a465a57646b              # double 6.0412840000000001
	.quad	0x40234057f3061c7a              # double 9.6256710000000005
	.quad	0x40239fe9fadafd11              # double 9.8123319999999996
	.quad	0x400b1c69f8c21e1d              # double 3.3888739999999999
	.quad	0x4019a215fcc1871e              # double 6.4082869999999996
	.quad	0x402092500d5e8d54              # double 8.2857669999999998
	.quad	0x401d59478c868ba0              # double 7.3371870000000001
	.quad	0x3fd296f6512a94ff              # double 0.290464
	.quad	0x400c3e5d9e40c847              # double 3.5304519999999999
	.quad	0x4021f1248d7e0264              # double 8.9709819999999993
	.quad	0x4016509f623076c0              # double 5.5787329999999997
	.quad	0x400b1fa658c4bd34              # double 3.3904540000000001
	.quad	0x401bd305d95dd4c7              # double 6.9560769999999996
	.quad	0x40085f01322f2735              # double 3.046389
	.quad	0x4012ecaafbc1acde              # double 4.7311209999999999
	.quad	0x4006e5efe9318762              # double 2.8622740000000002
	.quad	0x40058528283d35eb              # double 2.6900179999999998
	.quad	0x40220db6805a2d73              # double 9.026783
	.quad	0x4023b6ab367a0f91              # double 9.8567750000000007
	.quad	0x401bbc9d5a187a4a              # double 6.9341939999999997
	.quad	0x4004d7481b21c476              # double 2.605118
	.quad	0x4022c8470a808c82              # double 9.3911669999999994
	.quad	0x40154dd8b60f1b26              # double 5.326022
	.quad	0x401b5b64e054690e              # double 6.8392520000000001
	.quad	0x40111bef06b37868              # double 4.2772790000000001
	.quad	0x4021085985ad538b              # double 8.5163080000000004
	.quad	0x400acb5dcc63f141              # double 3.3492999999999999
	.quad	0x401d6364388ebcc7              # double 7.3470620000000002
	.quad	0x4014471b8aa00193              # double 5.0694410000000003
	.quad	0x40224a5cc426351e              # double 9.1452390000000001
	.quad	0x4016da9d627bf61b              # double 5.7134910000000003
	.quad	0x3f414d2f5dbb9cfa              # double 5.2800000000000004E-4
	.quad	0x40121c60cbf2b23a              # double 4.5277130000000003
	.quad	0x40212dd67ba237ce              # double 8.5895270000000004
	.quad	0x40233fd30ad46f58              # double 9.6246569999999991
	.quad	0x400286b1e5c0b999              # double 2.315769
	.quad	0x4020df51ac9afe1e              # double 8.4361700000000006
	.quad	0x40110102ff8ec0f9              # double 4.2509880000000004
	.quad	0x40076b220791c4b9              # double 2.927311
	.quad	0x4018898cc144028e              # double 6.1343259999999997
	.quad	0x4022f9d2391d5800              # double 9.4879320000000007
	.quad	0x400d19eadd590c0b              # double 3.6376550000000001
	.quad	0x4005066666666666              # double 2.6281249999999998
	.quad	0x3fd3ce4649906cca              # double 0.30946499999999999
	.quad	0x3fe139628cbd1245              # double 0.53825500000000004
	.quad	0x402019cfbb949625              # double 8.0504130000000007
	.quad	0x3ff55183b60285ec              # double 1.3324009999999999
	.quad	0x3fccaf35e310dbf0              # double 0.22409699999999999
	.quad	0x401343d4f15e7c8d              # double 4.8162419999999999
	.quad	0x400742a12f901084              # double 2.9075340000000001
	.quad	0x4013c757928e0c9e              # double 4.9446700000000003
	.quad	0x4000f7eb28d8665e              # double 2.121054
	.quad	0x4017e975afaf8594              # double 5.9779879999999999
	.quad	0x4022f296b3354c12              # double 9.4738059999999997
	.quad	0x40070df15a4acf31              # double 2.8818079999999999
	.quad	0x400a5b4916ca46e1              # double 3.2945730000000002
	.quad	0x400cf04bc27631b6              # double 3.6173320000000002
	.quad	0x400da3d9231c64bb              # double 3.7050040000000002
	.quad	0x402182a326e11559              # double 8.7551509999999997
	.quad	0x4002a67d77fae361              # double 2.3312940000000002
	.quad	0x3fdc2f8bdec5f395              # double 0.44040200000000002
	.quad	0x400d96d0917d6b66              # double 3.6986400000000001
	.quad	0x40155746455eaee2              # double 5.335229
	.quad	0x400a617b0f6ad70e              # double 3.2975979999999998
	.quad	0x4012f6822ff08894              # double 4.7407310000000003
	.quad	0x40043ba3443d46b2              # double 2.5291199999999998
	.quad	0x400dd5193708aac9              # double 3.7290519999999998
	.quad	0x40184465625a682b              # double 6.0667929999999997
	.quad	0x4012d7d8cf398e97              # double 4.710788
	.quad	0x40201e9e5e247885              # double 8.0598019999999995
	.quad	0x40232cecc814d728              # double 9.5877440000000007
	.quad	0x4014549adc8fb86f              # double 5.0826219999999998
	.quad	0x4018ace8101f31f4              # double 6.1688539999999996
	.quad	0x3ff3e26916440f24              # double 1.2427760000000001
	.quad	0x3fd5f284167a95c8              # double 0.34292699999999998
	.quad	0x401c157646ae3a3b              # double 7.0209590000000004
	.quad	0x4010dcb790fb6567              # double 4.2155440000000004
	.quad	0x401e473f316e3715              # double 7.5695769999999997
	.quad	0x401b1771c970f7ba              # double 6.7728950000000001
	.quad	0x401e153d20f2becf              # double 7.5207410000000001
	.quad	0x400f0dcebfec13ba              # double 3.881742
	.quad	0x3fb81615ebfa8f7e              # double 0.094087000000000003
	.quad	0x400ea65492ff4ba5              # double 3.831216
	.quad	0x4019f1b3f20a73f7              # double 6.4860379999999997
	.quad	0x402031183b60285f              # double 8.0958880000000004
	.quad	0x40184d01c0ca600b              # double 6.075202
	.quad	0x3ffd3737da61e0c6              # double 1.8259810000000001
	.quad	0x401ff02d16b97fe9              # double 7.984547
	.quad	0x4014054152b0a6fc              # double 5.0051319999999997
	.quad	0x4023b3c07ee0b0af              # double 9.8510779999999993
	.quad	0x40060dba4d6e47dc              # double 2.7567029999999999
	.quad	0x402391f623076c05              # double 9.7850809999999999
	.quad	0x40124b5568e820e6              # double 4.5735679999999999
	.quad	0x3ffe07991bc55864              # double 1.8768549999999999
	.quad	0x402192aac1094a2c              # double 8.7864590000000006
	.quad	0x4014bf7403dddb12              # double 5.186966
	.quad	0x3fb0d530489d27c4              # double 0.065753000000000006
	.quad	0x40087701d9f4d37c              # double 3.058109
	.quad	0x40207d9ea57214f0              # double 8.2453509999999994
	.quad	0x4010692fb19e731d              # double 4.1027209999999998
	.quad	0x40238c5d851654d6              # double 9.7741509999999998
	.quad	0x401e8dbe3c105187              # double 7.6384210000000001
	.quad	0x401b34d61b2a27f2              # double 6.8015980000000003
	.quad	0x3fda5ccc89b0ee4a              # double 0.411914
	.quad	0x40214a0c6b484d77              # double 8.6446260000000006
	.quad	0x4013c591cd1c7de5              # double 4.942939
	.quad	0x401e0135daad6020              # double 7.501182
	.quad	0x40229913e81450f0              # double 9.2989800000000002
	.quad	0x3feea73b42cc2d6b              # double 0.95791400000000004
	.quad	0x40156529fe004b7f              # double 5.3487929999999997
	.quad	0x3ffc67ce0fc2eba2              # double 1.7753429999999999
	.quad	0x400ae16df3f96180              # double 3.3600729999999999
	.quad	0x400d5cb923a29c78              # double 3.6702750000000002
	.quad	0x3fd1b2c83ec892ab              # double 0.27653699999999998
	.quad	0x4014fcbd987c6328              # double 5.2468170000000001
	.quad	0x40182545c78a6dad              # double 6.0363990000000003
	.quad	0x40219f78140dd3fe              # double 8.8114629999999998
	.quad	0x4018c39b024f6599              # double 6.1910210000000001
	.quad	0x401b09ab29e4d5d8              # double 6.759442
	.quad	0x40216c7bcc2938de              # double 8.7118819999999992
	.quad	0x400474e1a3f4666f              # double 2.5570710000000001
	.quad	0x40144203e63e8dda              # double 5.0644679999999997
	.quad	0x3fffa9728a611772              # double 1.978869
	.quad	0x3fed97225b749add              # double 0.92469900000000005
	.quad	0x401d93aeee957471              # double 7.3942220000000001
	.quad	0x4022485b18548a9c              # double 9.1413200000000003
	.quad	0x4000509bf9c62a1b              # double 2.0393599999999998
	.quad	0x401e4e1650a45d42              # double 7.576257
	.quad	0x4014c81c714fce74              # double 5.1954209999999996
	.quad	0x401f068b19a415f4              # double 7.7563899999999997
	.quad	0x3fc62a8869c66d37              # double 0.17317299999999999
	.quad	0x401b141e57d9dba9              # double 6.769647
	.quad	0x4019cbcc6c54bcf1              # double 6.4490220000000003
	.quad	0x3fea0a02b841248d              # double 0.81372199999999995
	.quad	0x402143841248d7e0              # double 8.6318669999999997
	.quad	0x400aa0c49ba5e354              # double 3.3285
	.quad	0x3fef628240b78034              # double 0.98077499999999995
	.quad	0x402272aa19439de5              # double 9.2239540000000009
	.quad	0x401b5207d4e09785              # double 6.8301080000000001
	.quad	0x4021471044f1a198              # double 8.6387959999999993
	.quad	0x400a6e7ab7564303              # double 3.3039450000000001
	.quad	0x402025baf533f423              # double 8.0736919999999994
	.quad	0x4023f1f18c9fb613              # double 9.9725459999999994
	.quad	0x3ff363e186983516              # double 1.2118850000000001
	.quad	0x401f6b57c4e2f380              # double 7.8548270000000002
	.quad	0x401f92480e8c8abd              # double 7.8928529999999996
	.quad	0x4005c543f1c75819              # double 2.7213210000000001
	.quad	0x400170d413122b7c              # double 2.1800920000000001
	.quad	0x3fd7734f82f51266              # double 0.36641299999999999
	.quad	0x40083eff9f87f024              # double 3.030761
	.quad	0x3ffbbe3d1cc100e7              # double 1.7339450000000001
	.quad	0x3fe26d0917d6b65b              # double 0.57581000000000004
	.quad	0x4009181a5870da5e              # double 3.1367690000000001
	.quad	0x40236a87c200c0f0              # double 9.7080669999999998
	.quad	0x400fea0c282c6ef4              # double 3.9892810000000001
	.quad	0x3ff9cbff47735c18              # double 1.612304
	.quad	0x4017a17acc4ef88c              # double 5.9076950000000004
	.quad	0x3fff885b18548a9c              # double 1.97079
	.quad	0x40120fbeb9e492bc              # double 4.5153759999999998
	.quad	0x4010c145d851654d              # double 4.1887429999999997
	.quad	0x4018c8882f0e0a85              # double 6.1958320000000002
	.quad	0x401a099780baa583              # double 6.5093670000000001
	.quad	0x3ffb6478854cdb7b              # double 1.712029
	.quad	0x40139a3a8e71476b              # double 4.900614
	.quad	0x400539c065b63d3e              # double 2.6531989999999999
	.quad	0x402318abb44e50c6              # double 9.5481850000000001
	.quad	0x3fd2e703afb7e910              # double 0.29535
	.quad	0x4023540fecdd0d8d              # double 9.6641840000000005
	.quad	0x401f810adcd2d44e              # double 7.8760180000000002
	.quad	0x3ffeea747d805e5f              # double 1.93224
	.quad	0x4022af5f2cb64170              # double 9.3425229999999999
	.quad	0x3fe75a8deb0fadf3              # double 0.72980400000000001
	.quad	0x40230b1337eb28d8              # double 9.5216309999999992
	.quad	0x401f389613d31b9b              # double 7.8052599999999996
	.quad	0x40233d113836a833              # double 9.6192720000000004
	.quad	0x4006d74e65bea0ba              # double 2.8551299999999999
	.quad	0x4017ce1869835159              # double 5.9512650000000002
	.quad	0x4019b6323bbc6eb1              # double 6.4279260000000003
	.quad	0x3ff3465300581494              # double 1.204669
	.quad	0x3fc33953dea465a5              # double 0.15018699999999999
	.quad	0x4022e35d249e44fa              # double 9.44407
	.quad	0x4022a19392189bd8              # double 9.3155789999999996
	.quad	0x40129ff08893b7d8              # double 4.6561909999999997
	.quad	0x4004a86cebbba55d              # double 2.582239
	.quad	0x402357162ae4b018              # double 9.6700909999999993
	.quad	0x3ffabf8982cb20fb              # double 1.671762
	.quad	0x3ff34b05b7cfe586              # double 1.205816
	.quad	0x40125385c67dfe33              # double 4.5815650000000003
	.quad	0x3ff832fdb8fde2ef              # double 1.5124489999999999
	.quad	0x4011ecfd4bf0995b              # double 4.4814350000000003
	.quad	0x40159aebc408d8ed              # double 5.4012900000000004
	.quad	0x4023416c61522a6f              # double 9.6277799999999995
	.quad	0x401d2e20ccff21b4              # double 7.2950470000000003
	.quad	0x401bc2ccb3a2595c              # double 6.9402340000000002
	.quad	0x4020e1fd36f7e3d2              # double 8.4413850000000004
	.quad	0x4014cc4199fe4367              # double 5.1994689999999997
	.quad	0x401fcdea033e78e2              # double 7.9510880000000004
	.quad	0x3ff5a99fa11a975b              # double 1.353912
	.quad	0x400904028e4fb97c              # double 3.1269580000000001
	.quad	0x402277518b0d0edc              # double 9.2330439999999995
	.quad	0x40199862b27cbf6e              # double 6.3988139999999998
	.quad	0x40154fb00bcbe61d              # double 5.32782
	.quad	0x401d92cc70867ad9              # double 7.3933580000000001
	.quad	0x40160a59c065b63d              # double 5.5101079999999998
	.quad	0x40194127f5e84f09              # double 6.3136289999999997
	.quad	0x3ff7a9ac36544fe3              # double 1.4789239999999999
	.quad	0x401a2dddb1209edc              # double 6.544791
	.quad	0x3ff99ef0f16f4385              # double 1.6013040000000001
	.quad	0x3ff6309d8c6d612c              # double 1.3868689999999999
	.quad	0x401c01aa821f2991              # double 7.001627
	.quad	0x4023907d0aed99cc              # double 9.7822040000000001
	.quad	0x401876a6e32e3822              # double 6.1158710000000003
	.quad	0x4001ae06d938151a              # double 2.2099739999999999
	.quad	0x4023c16c1e364bec              # double 9.8777779999999992
	.quad	0x401c34f483cafb3b              # double 7.0517139999999996
	.quad	0x4019cd5e8d5410f9              # double 6.4505559999999997
	.quad	0x3fe03a53b8e4b87c              # double 0.50712000000000002
	.quad	0x400534b838c111ae              # double 2.6507420000000002
	.quad	0x401de94c447c30d3              # double 7.47783
	.quad	0x40011ee99a62ed35              # double 2.1400939999999999
	.quad	0x401467e1b8ed1bf8              # double 5.1014470000000003
	.quad	0x400fa9b413986339              # double 3.9578630000000001
	.quad	0x401f8e2d1f1cfbb9              # double 7.8888439999999997
	.quad	0x4020c1ca3a4b5569              # double 8.3784960000000002
	.quad	0x40232d5a7d24180d              # double 9.5885809999999995
	.quad	0x4023d330728e92d5              # double 9.9124789999999993
	.quad	0x4021325119ce075f              # double 8.5982749999999992
	.quad	0x402294484944ed70              # double 9.2896140000000003
	.quad	0x400780578e5c4eb5              # double 2.9376669999999998
	.quad	0x4008cb5a20ddc619              # double 3.0992929999999999
	.quad	0x400b80bdcad14a0a              # double 3.437862
	.quad	0x400e2e09fe86833c              # double 3.7724799999999998
	.quad	0x40212269df97aaac              # double 8.5672139999999998
	.quad	0x3fff1f04ddb5525d              # double 1.9450730000000001
	.quad	0x400d2379314445aa              # double 3.6423209999999999
	.quad	0x401c8e6d15ad106f              # double 7.1390880000000001
	.quad	0x40090159817b95a3              # double 3.1256590000000002
	.quad	0x40136dd15f02c4d6              # double 4.8572439999999997
	.quad	0x401a1235f8099179              # double 6.5177839999999998
	.quad	0x401f0d10f51ac9b0              # double 7.7627600000000001
	.quad	0x401d281dc0db2703              # double 7.2891760000000003
	.quad	0x401a5df6555c52e7              # double 6.5917599999999998
	.quad	0x401298d1958969a1              # double 4.6492370000000003
	.quad	0x4022fd08d4bad7d8              # double 9.4942080000000004
	.quad	0x3fe38de8f6cefed6              # double 0.61107299999999998
	.quad	0x401b9bfb58d1526e              # double 6.9023260000000004
	.quad	0x40236d2f1a9fbe77              # double 9.7132500000000003
	.quad	0x3fd2c2938de6ddf0              # double 0.293126
	.quad	0x3f91ca3a4b5568e8              # double 0.017373
	.quad	0x4012ac947064ecea              # double 4.6685350000000003
	.quad	0x4006c26aa8eb4635              # double 2.8449300000000002
	.quad	0x3ffc23e6c4c5974e              # double 1.7587649999999999
	.quad	0x4014bbab649d388b              # double 5.1832710000000004
	.quad	0x4019d7a24894c448              # double 6.4605800000000002
	.quad	0x4021377a919695d9              # double 8.6083569999999998
	.quad	0x3fedfd63022dd7aa              # double 0.93718100000000004
	.quad	0x4016931b584b1ab1              # double 5.6436590000000004
	.quad	0x40234fca85caafbc              # double 9.6558419999999998
	.quad	0x401078d8665e02eb              # double 4.1180130000000004
	.quad	0x40022ab25b317efe              # double 2.270848
	.quad	0x4022ea4fca42aed1              # double 9.4576399999999996
	.quad	0x3feed2a62aa1943a              # double 0.96321400000000001
	.quad	0x4002fc664d3bf2f5              # double 2.3732419999999999
	.quad	0x4023de12a51e321a              # double 9.9337359999999997
	.quad	0x3fabaafff36ac647              # double 0.054038999999999997
	.quad	0x4009e84be40420f7              # double 3.238426
	.quad	0x401b818dac258d58              # double 6.8765169999999998
	.quad	0x40139c2ca148ba84              # double 4.902514
	.quad	0x4022d534df04ddb5              # double 9.4164189999999994
	.quad	0x402160ebcc6c54bd              # double 8.6892990000000001
	.quad	0x401056e9bbf0dc77              # double 4.0848760000000004
	.quad	0x3febe1869835158c              # double 0.87128000000000005
	.quad	0x40149dc2f405f6ba              # double 5.154064
	.quad	0x402375fefbf401c5              # double 9.730461
	.quad	0x3ff41a122fad6cb5              # double 1.256365
	.quad	0x3fe670e0a84be404              # double 0.70127899999999999
	.quad	0x40198f36262cba73              # double 6.3898549999999998
	.quad	0x401f45c0b9991362              # double 7.8181180000000001
	.quad	0x3ff02d288ce703b0              # double 1.0110250000000001
	.quad	0x3fb94fce746cb967              # double 0.098874000000000004
	.quad	0x400f12a38b8ae31d              # double 3.8841009999999998
	.quad	0x40064bb01c92ddbe              # double 2.7869570000000001
	.quad	0x402062d6451b9303              # double 8.1930409999999991
	.quad	0x3ff3f63e4abe6a33              # double 1.2476179999999999
	.quad	0x3ff6472e275ab7dc              # double 1.3923779999999999
	.quad	0x400f5d6b65a9a805              # double 3.9206150000000002
	.quad	0x40211dea24cc6823              # double 8.558427
	.quad	0x40147a0c6b484d77              # double 5.1191880000000003
	.quad	0x400cf0ff97247454              # double 3.6176750000000002
	.quad	0x401ba2a12f901084              # double 6.9088180000000001
	.quad	0x401be887ebf22c02              # double 6.9770810000000001
	.quad	0x401ef3f572de43ee              # double 7.7382410000000004
	.quad	0x4023a31572580c31              # double 9.8185230000000007
	.quad	0x400e81ecd4aa10e0              # double 3.8134399999999999
	.quad	0x4021952fa0d77b7c              # double 8.7913789999999991
	.quad	0x4006b7292c493426              # double 2.8394339999999998
	.quad	0x4006083cafb3b752              # double 2.754022
	.quad	0x3fdf144cbe1eb420              # double 0.48561399999999999
	.quad	0x400c97dbf487fcb9              # double 3.5741499999999999
	.quad	0x3ff855e17e34b945              # double 1.520967
	.quad	0x401e87d06bbdbe3c              # double 7.6326309999999999
	.quad	0x401cd6bd2b6f1993              # double 7.2097059999999997
	.quad	0x40218ab8a5ce5b42              # double 8.7709399999999995
	.quad	0x401f0e496ededaec              # double 7.7639519999999997
	.quad	0x3feecfb762d83c6d              # double 0.96285600000000004
	.quad	0x40229912fd32c626              # double 9.2989730000000002
	.quad	0x4020ff1971c10d7c              # double 8.4982410000000001
	.quad	0x40212d4cfd08d4bb              # double 8.5884780000000003
	.quad	0x4006d2fdb8fde2ef              # double 2.8530229999999999
	.quad	0x40179fcdab191dde              # double 5.9060579999999998
	.quad	0x401d735610adcd2d              # double 7.3626329999999998
	.quad	0x4022195c42203600              # double 9.0495319999999992
	.quad	0x3ff8bc4d22c881e4              # double 1.5459719999999999
	.quad	0x40109b5d462c343b              # double 4.1517229999999996
	.quad	0x4019e87df5cf2496              # double 6.4770430000000001
	.quad	0x3ffad85ad538ac19              # double 1.677821
	.quad	0x3fcdc03bc4d22c88              # double 0.232429
	.quad	0x3fe9e8c692f6e829              # double 0.80966499999999997
	.quad	0x4010283f4eca686e              # double 4.0393039999999996
	.quad	0x401af0eb67c286f9              # double 6.7352730000000003
	.quad	0x4013fdb0dd82fd76              # double 4.9977450000000001
	.quad	0x4017dbce8533b107              # double 5.9646549999999996
	.quad	0x400db490e66cb103              # double 3.7131669999999999
	.quad	0x400fd2fec56d5cfb              # double 3.9780250000000001
	.quad	0x4022c179e16d6dc2              # double 9.3778830000000006
	.quad	0x4019968c692f6e83              # double 6.3970200000000004
	.quad	0x401a72eec7c957cd              # double 6.6122389999999998
	.quad	0x401e539eadd590c1              # double 7.5816600000000002
	.quad	0x401f2540cc78e9f7              # double 7.7863800000000003
	.quad	0x40080dedaec4a409              # double 3.0068009999999998
	.quad	0x3fae1ae70c1333b9              # double 0.058798999999999997
	.quad	0x40225dca6ca03c4b              # double 9.1831849999999999
	.quad	0x400c7c7de5082cf5              # double 3.5607869999999999
	.quad	0x400bb775b8130165              # double 3.4645800000000002
	.quad	0x4016e8bb0a2ca9ac              # double 5.7272759999999998
	.quad	0x3fdbfd7e45803cd1              # double 0.43734699999999999
	.quad	0x400550c67168f8e8              # double 2.6644410000000001
	.quad	0x40165bbecaab8a5d              # double 5.5895950000000001
	.quad	0x4023b573647baa9b              # double 9.8543959999999994
	.quad	0x401e1559f6ec5b08              # double 7.5208510000000003
	.quad	0x3ff2358298cc1440              # double 1.138064
	.quad	0x40102c4f7ec3547e              # double 4.043272
	.quad	0x401945efa615a8df              # double 6.3182970000000003
	.quad	0x3ffa271044f1a198              # double 1.6345369999999999
	.quad	0x4003a5d8d79d0a67              # double 2.4559799999999998
	.quad	0x40100cd67fd3f5b6              # double 4.012537
	.quad	0x40117e0c17657753              # double 4.3730929999999999
	.quad	0x402208c36da87a07              # double 9.0171159999999997
	.quad	0x4021d79f23465626              # double 8.9211360000000006
	.quad	0x401b867b1c0010c7              # double 6.881329
	.quad	0x4020dca1f080303c              # double 8.4309229999999999
	.quad	0x401a2f355cd91eeb              # double 6.5461020000000003
	.quad	0x4014320c49ba5e35              # double 5.0488749999999998
	.quad	0x401fa578a2a90cd4              # double 7.9115929999999999
	.quad	0x401f5eddce7cd035              # double 7.8426429999999998
	.quad	0x402223584b1ab085              # double 9.0690329999999992
	.quad	0x4010a442c7fbacb4              # double 4.1604109999999999
	.quad	0x401b7af89c5e6ff8              # double 6.8700890000000001
	.quad	0x401ed7bb73083559              # double 7.7106760000000003
	.quad	0x40103a3486f049aa              # double 4.0568410000000004
	.quad	0x40234fa13c254a3c              # double 9.6555269999999993
	.quad	0x401c1da6a4441787              # double 7.028956
	.quad	0x401e74af922962d0              # double 7.6139510000000001
	.quad	0x3ff561ae70c1333c              # double 1.3363480000000001
	.quad	0x40187d1bf7ad4b27              # double 6.1221769999999998
	.quad	0x4021cc8beb5b2d4d              # double 8.8995049999999996
	.quad	0x400b71fbc5de9c02              # double 3.4306559999999999
	.quad	0x402329906cca2db6              # double 9.5811799999999998
	.quad	0x4013e697aeddce7d              # double 4.9751880000000002
	.quad	0x3ffdab8a5ce5b424              # double 1.8543799999999999
	.quad	0x4001a646f1561911              # double 2.2061899999999999
	.quad	0x4002e0e9d51b4fe8              # double 2.3598210000000002
	.quad	0x4001618def416bdb              # double 2.172634
	.quad	0x4011cbc947064ecf              # double 4.4490100000000004
	.quad	0x400fc9b738e6d15b              # double 3.9734940000000001
	.quad	0x3ff8b10dbf0563ed              # double 1.543226
	.quad	0x4022bb81b64e0547              # double 9.3662240000000007
	.quad	0x3fc20ea5b530ced5              # double 0.141072
	.quad	0x4000d47496aad1d0              # double 2.1037379999999999
	.quad	0x3ff24e10cf5b1c86              # double 1.1440589999999999
	.quad	0x3fe06f240fa9c12f              # double 0.513567
	.quad	0x3ff5f39b024f6599              # double 1.371974
	.quad	0x3fe7f44d44567126              # double 0.74857200000000002
	.quad	0x3fd7aeea63b688be              # double 0.37005100000000002
	.quad	0x400fd7c4e2f37fbf              # double 3.980356
	.quad	0x40195bffcdab191e              # double 6.3398430000000001
	.quad	0x4012d9f0a1be2b49              # double 4.7128319999999997
	.quad	0x3fe2247ecfe9b7bf              # double 0.56695499999999999
	.quad	0x40090111ada76d98              # double 3.1255220000000001
	.quad	0x400da6fa3fcc9eaa              # double 3.7065320000000002
	.quad	0x402216a93f290abb              # double 9.0442599999999995
	.quad	0x3ffc8044284dfce3              # double 1.781315
	.quad	0x401159fe004b7f5a              # double 4.3378829999999997
	.quad	0x401b1912dba4d6e4              # double 6.7744859999999996
	.quad	0x401f427ae9ab29e5              # double 7.8149220000000001
	.quad	0x401a1efed634549b              # double 6.5302689999999997
	.quad	0x401b2b44a1f08030              # double 6.7922539999999998
	.quad	0x4023beefa1e3eaf7              # double 9.8729220000000008
	.quad	0x40055781c714fce7              # double 2.6677279999999999
	.quad	0x4017b874c8ffb8b2              # double 5.9301329999999997
	.quad	0x3fe208bfc2224edf              # double 0.56356799999999996
	.quad	0x3ffd8bd1244a6224              # double 1.846635
	.quad	0x3fffbf36ac647779              # double 1.984183
	.quad	0x40204210be9424e6              # double 8.1290340000000008
	.quad	0x401af4e379b77c03              # double 6.7391490000000003
	.quad	0x4014a1b4bb5e0f80              # double 5.1579160000000002
	.quad	0x40043ba6efc371da              # double 2.5291269999999999
	.quad	0x401e3a9de8b3b320              # double 7.5572429999999997
	.quad	0x40025b4cc2507208              # double 2.2945799999999998
	.quad	0x3fd1b7ed41b75a75              # double 0.27685100000000001
	.quad	0x3fe1b7564302b40f              # double 0.55362999999999996
	.quad	0x400627caea747d80              # double 2.7694299999999998
	.quad	0x4022e5b89939218a              # double 9.4486740000000005
	.quad	0x400275ab7dc7abfc              # double 2.3074560000000002
	.quad	0x4022d199567dbb17              # double 9.4093730000000004
	.quad	0x3ff5865a57646ae4              # double 1.3453010000000001
	.quad	0x40213310129cbab6              # double 8.5997319999999995
	.quad	0x400df5b0bbf50e34              # double 3.7449659999999998
	.quad	0x4008a435efa615a9              # double 3.0801810000000001
	.quad	0x402086e02a77a2cf              # double 8.2634290000000004
	.quad	0x401e8f98b71b8aa0              # double 7.640231
	.quad	0x4004ad84d338f798              # double 2.5847259999999999
	.quad	0x401e9f141205bc02              # double 7.6553500000000003
	.quad	0x401001733226c3b9              # double 4.0014159999999999
	.quad	0x3fbd3af74cd3176a              # double 0.114181
	.quad	0x401f9eb313be22e6              # double 7.9049800000000001
	.quad	0x3fbd69b17481b21c              # double 0.114894
	.quad	0x40064e275ab7dc7b              # double 2.7881610000000001
	.quad	0x400b8034f3fd933e              # double 3.4376009999999999
	.quad	0x400169aa1d755bcd              # double 2.1765940000000001
	.quad	0x3ffad45308bb9064              # double 1.6768369999999999
	.quad	0x401ff1b584b1ab08              # double 7.9860439999999996
	.quad	0x400db0318b934699              # double 3.7110319999999999
	.quad	0x4021a3882278d0cc              # double 8.8193979999999996
	.quad	0x4001b18a009f6230              # double 2.2116889999999998
	.quad	0x401bc175d13d74d6              # double 6.9389260000000004
	.quad	0x401973d20f2becee              # double 6.3631060000000002
	.quad	0x40192df7a4e7ab75              # double 6.2948899999999997
	.quad	0x3fe5163992c8c500              # double 0.65896299999999997
	.quad	0x400519767903211d              # double 2.6374330000000001
	.quad	0x4022b1f5be5d9e41              # double 9.3475780000000004
	.quad	0x3feb56c7219220ff              # double 0.85434299999999996
	.quad	0x40198924f227d029              # double 6.3839300000000003
	.quad	0x401a828283d35eb7              # double 6.6274509999999998
	.quad	0x402014c122749f0e              # double 8.0405359999999995
	.quad	0x4005419f3c70c997              # double 2.6570420000000001
	.quad	0x4016be47dc37a3db              # double 5.6858209999999998
	.quad	0x3fee2c1d29dc725c              # double 0.94288499999999997
	.quad	0x4015e7913e81450f              # double 5.47614
	.quad	0x401e839eadd590c1              # double 7.6285350000000002
	.quad	0x40229e312f4cf4a5              # double 9.3089689999999994
	.quad	0x4006994855da2728              # double 2.8248449999999998
	.quad	0x40192949e8815e39              # double 6.2903209999999996
	.quad	0x4020226634117f84              # double 8.0671859999999995
	.quad	0x3ffa46df82b1f688              # double 1.6423030000000001
	.quad	0x3fe08cf1800a7c5b              # double 0.51720500000000003
	.quad	0x4020e43eb7cbb3c8              # double 8.4457909999999998
	.quad	0x3ff0ff822bbecaac              # double 1.0623800000000001
	.quad	0x402157127f5e84f1              # double 8.6700630000000007
	.quad	0x401610ffda4052d6              # double 5.5166009999999996
	.quad	0x401bc3b14a90470b              # double 6.9411060000000004
	.quad	0x4012f6b228dc981c              # double 4.7409140000000001
	.quad	0x3fed77e80389f83c              # double 0.92088700000000001
	.quad	0x4020875579af1887              # double 8.2643240000000002
	.quad	0x4020ba6eb91b3f21              # double 8.3641260000000006
	.quad	0x4023d5a9c99285a9              # double 9.9173109999999997
	.quad	0x400a96f75d9a0f0a              # double 3.3237139999999998
	.quad	0x3ffebbbf93ff25e5              # double 1.9208369999999999
	.quad	0x3ff3f481b21c475e              # double 1.2471939999999999
	.quad	0x40201fb7414a4d2b              # double 8.0619449999999997
	.quad	0x3fc2745bf26f1dc5              # double 0.144176
	.quad	0x401c2779207d4e09              # double 7.0385479999999996
	.quad	0x400a8f9a8cdea034              # double 3.320119
	.quad	0x400993c68661ae71              # double 3.1971560000000001
	.quad	0x401961cb039ef0f1              # double 6.3455009999999996
	.quad	0x400230691ea78af4              # double 2.273638
	.quad	0x4014a54c122749f1              # double 5.1614230000000001
	.quad	0x401c08301a79feca              # double 7.0079960000000003
	.quad	0x401b88a265f0f5a1              # double 6.883432
	.quad	0x40237b897204295a              # double 9.7412829999999992
	.quad	0x4003fcd8127b2cc7              # double 2.498459
	.quad	0x400cf76683c297c0              # double 3.6208010000000002
	.quad	0x4022345e6ff7dfa0              # double 9.1022829999999999
	.quad	0x3ffffaa1511dffc5              # double 1.9986889999999999
	.quad	0x3fdef5caf2d7f951              # double 0.48375200000000002
	.quad	0x400bde3f359ff4fd              # double 3.4835189999999998
	.quad	0x40213573215fcc18              # double 8.6043939999999992
	.quad	0x401f932b55ef1fde              # double 7.8937200000000001
	.quad	0x401c7ee88df3732a              # double 7.1239340000000002
	.quad	0x400d8a7610279570              # double 3.6926079999999999
	.quad	0x4020742070b8cfc0              # double 8.2268100000000004
	.quad	0x401860d49949e881              # double 6.0945609999999997
	.quad	0x3ff2615b9a5a89b9              # double 1.1487689999999999
	.quad	0x401847e73a365cb3              # double 6.0702179999999997
	.quad	0x401ece2eb1c432ca              # double 7.7013499999999997
	.quad	0x3fec7a0f9096bb99              # double 0.88990000000000002
	.quad	0x401fb5fd8adab9f5              # double 7.9277249999999996
	.quad	0x4013cb97353b4b30              # double 4.9488190000000003
	.quad	0x3fe5cefaa4766c6e              # double 0.68151600000000001
	.quad	0x4020d4fe79ee02a7              # double 8.4160039999999992
	.quad	0x401b03458cd20afa              # double 6.7531949999999998
	.quad	0x3fdf54f3775b8130              # double 0.48956
	.quad	0x3ff7611cb039ef0f              # double 1.461209
	.quad	0x4001a0c308feac43              # double 2.203497
	.quad	0x4004a59ea57214f0              # double 2.5808689999999999
	.quad	0x402201a9b8cb8e08              # double 9.0032479999999993
	.quad	0x3fedb0f6ad70e6f3              # double 0.92785200000000001
	.quad	0x3fec32b777d0f1f5              # double 0.88119099999999995
	.quad	0x400094fb549f9485              # double 2.0727449999999998
	.quad	0x401c24db59578a2b              # double 7.0359930000000004
	.quad	0x40195da272862f5a              # double 6.3414400000000004
	.quad	0x40221d2fa0d77b7c              # double 9.0570039999999991
	.quad	0x4012e61e0c5a8156              # double 4.7247240000000001
	.quad	0x4008f20b8066c2ad              # double 3.1181860000000001
	.quad	0x4006b9a38fbca106              # double 2.8406440000000002
	.quad	0x401aa3c4f3ba7760              # double 6.6599310000000003
	.quad	0x3fe19b38d60a6330              # double 0.55019799999999996
	.quad	0x4014021a2e7f6f4c              # double 5.0020530000000001
	.quad	0x3fea1d3671ac14c6              # double 0.81606599999999996
	.quad	0x401fc645e4e69f06              # double 7.9436260000000001
	.quad	0x4021cf7db6e503fb              # double 8.9052559999999996
	.quad	0x4016bee3d5fdcdf7              # double 5.6864160000000004
	.quad	0x4006f9aae6c8f755              # double 2.8719079999999999
	.quad	0x40235f69ca9ef523              # double 9.6863539999999996
	.quad	0x40204c15097c8084              # double 8.1485979999999997
	.quad	0x3ffff5e529bae46d              # double 1.997533
	.quad	0x3ff56b94d9407896              # double 1.338765
	.quad	0x4010820817fc7608              # double 4.1269840000000002
	.quad	0x3ffae0f9096bb98c              # double 1.6799249999999999
	.quad	0x401a000eae18ac9f              # double 6.5000559999999998
	.quad	0x401c4606317268d3              # double 7.0683829999999999
	.quad	0x401f68bd230b9dc3              # double 7.852284
	.quad	0x4011855ac03ff690              # double 4.3802289999999999
	.quad	0x4022c163dc486ad3              # double 9.3777150000000002
	.quad	0x4021538a3b57c4e3              # double 8.6631640000000001
	.quad	0x402298cf398e9707              # double 9.2984559999999998
	.quad	0x4022887229e90796              # double 9.2664960000000001
	.quad	0x3fe94d6e47dc37a4              # double 0.79070200000000001
	.quad	0x40239a222d5171e3              # double 9.8010420000000006
	.quad	0x401d25e02ea960b7              # double 7.286988
	.quad	0x4020939b024f6599              # double 8.2882920000000002
	.quad	0x3fdc7e38eb0318b9              # double 0.44520399999999999
	.quad	0x400535b78cc9a77e              # double 2.6512289999999998
	.quad	0x3fe57e82517e77d5              # double 0.67169299999999998
	.quad	0x4023d3d0e12e83a1              # double 9.9137029999999999
	.quad	0x4014e3f1c75818c6              # double 5.2226020000000002
	.quad	0x401db5f2cb641701              # double 7.4276840000000002
	.quad	0x400542fe82517e78              # double 2.6577120000000001
	.quad	0x4013fc7abfb9bed3              # double 4.9965619999999999
	.quad	0x401d3974e65bea0c              # double 7.3061100000000003
	.quad	0x3ffc9e2046c764ae              # double 1.788605
	.quad	0x3ff2fd3e4ef0281c              # double 1.1868270000000001
	.quad	0x4019e4727dcbddba              # double 6.4730930000000004
	.quad	0x40231e84f09528f2              # double 9.5596080000000008
	.quad	0x3ff179335d249e45              # double 1.09209
	.quad	0x40079167ec7863bf              # double 2.945999
	.quad	0x3fd1fee6fb4c3c19              # double 0.28118300000000002
	.quad	0x401ee9378ee28672              # double 7.7277509999999996
	.quad	0x3ff455193708aac9              # double 1.2707759999999999
	.quad	0x402040f94c87980f              # double 8.1269019999999994
	.quad	0x40205492146a1a50              # double 8.1651769999999999
	.quad	0x3fdba5614df8b157              # double 0.43196899999999999
	.quad	0x3ff9845ed4a1ad64              # double 1.5948169999999999
	.quad	0x40233f0153bd1676              # double 9.6230569999999993
	.quad	0x4022ddc5f7c6759b              # double 9.4331510000000005
	.quad	0x4023f58a32f44913              # double 9.9795700000000007
	.quad	0x400344d2b2bfdb4d              # double 2.4086050000000001
	.quad	0x401cc457c0b13598              # double 7.1917410000000004
	.quad	0x40146656eefa1e3f              # double 5.0999410000000003
	.quad	0x4022234c5da6a444              # double 9.0689419999999998
	.quad	0x401de6defc7a3982              # double 7.47546
	.quad	0x40206b13165d3997              # double 8.20913
	.quad	0x4023009fa54c5543              # double 9.5012179999999997
	.quad	0x401a5213e3e29308              # double 6.5801540000000003
	.quad	0x401c458bc59b8024              # double 7.0679160000000003
	.quad	0x4020a833c60029f1              # double 8.3285199999999993
	.quad	0x401dd9235f809918              # double 7.4620490000000003
	.quad	0x40127e47dc37a3db              # double 4.6233209999999998
	.quad	0x400097c1bda5119d              # double 2.0741000000000001
	.quad	0x3ffdcca4f440af1d              # double 1.8624620000000001
	.quad	0x401e841919ac7970              # double 7.6290019999999998
	.quad	0x3ffb5c24c404a72f              # double 1.7099960000000001
	.quad	0x3ff6287b139c94f7              # double 1.3848830000000001
	.quad	0x3ff5f18fc504816f              # double 1.371475
	.quad	0x4018d3ac929aa1d7              # double 6.2067129999999997
	.quad	0x40073ff822bbecab              # double 2.9062350000000001
	.quad	0x40203b95810624dd              # double 8.1163749999999997
	.quad	0x4010d6a26e547171              # double 4.2096039999999997
	.quad	0x401d72ef4e0114d3              # double 7.362241
	.quad	0x3f94c33b5393250b              # double 0.020275999999999999
	.quad	0x4012c92ff4ba51a0              # double 4.696472
	.quad	0x40173f9767903212              # double 5.8121010000000002
	.quad	0x4011c1700cd85597              # double 4.438904
	.quad	0x401b066490a350d3              # double 6.7562430000000004
	.quad	0x4019132873bc903f              # double 6.2687090000000003
	.quad	0x4023288aac96cc60              # double 9.5791830000000004
	.quad	0x400e4af3e468cac5              # double 3.7865980000000001
	.quad	0x4010229dc725c3df              # double 4.0338050000000001
	.quad	0x401e326e115592da              # double 7.5492480000000004
	.quad	0x400e9708aac96cc6              # double 3.823747
	.quad	0x3ffa5d4f9c1f85d7              # double 1.6477809999999999
	.quad	0x401f579a6b50b0f2              # double 7.8355499999999996
	.quad	0x40050aaf35e310dc              # double 2.630217
	.quad	0x4020157cb2d905c0              # double 8.0419669999999996
	.quad	0x401cc61e4f765fd9              # double 7.1934750000000003
	.quad	0x4004b75b81301648              # double 2.5895299999999999
	.quad	0x4021ea582dbe7f2c              # double 8.9577039999999996
	.quad	0x401bb136a400fba9              # double 6.9230600000000004
	.quad	0x3ff96c343b70ef56              # double 1.5889169999999999
	.quad	0x3fd6cd78c436fc16              # double 0.35629100000000002
	.quad	0x4019f5ce9e5e2479              # double 6.4900460000000004
	.quad	0x3ff5e00d1b71758e              # double 1.3672
	.quad	0x400d547e8ccdd93c              # double 3.6662569999999999
	.quad	0x401e46af89c5e6ff              # double 7.5690289999999995
	.quad	0x401eaeaab042528b              # double 7.670573
	.quad	0x400166afcce1c582              # double 2.1751399999999999
	.quad	0x3ff1a038194c0160              # double 1.1016159999999999
	.quad	0x4000dd8d79d0a676              # double 2.1081799999999999
	.quad	0x40187628cbd1244a              # double 6.1153899999999997
	.quad	0x401ebfe586013661              # double 7.687399
	.quad	0x401ce9e492bc2fc7              # double 7.2284110000000004
	.quad	0x401c02856605ee57              # double 7.0024620000000004
	.quad	0x401c5be1a8262457              # double 7.089728
	.quad	0x4023ea68900c521e              # double 9.9578290000000003
	.quad	0x4002ba1ec4e7253e              # double 2.3408790000000002
	.quad	0x3fc7e16d6dc1a47b              # double 0.18656700000000001
	.quad	0x402175d872f33ca3              # double 8.7301669999999998
	.quad	0x401cff077ccc0379              # double 7.2490519999999998
	.quad	0x4023c08d4bad7d7c              # double 9.8760779999999996
	.quad	0x40160787ce95faa9              # double 5.5073540000000003
	.quad	0x3ff4468123810e88              # double 1.2672129999999999
	.quad	0x3ff67b4f61672325              # double 1.405105
	.quad	0x40173d6bebe1650a              # double 5.8099819999999998
	.quad	0x400acc2c5e2cdc01              # double 3.3496939999999999
	.quad	0x401e665cb35f3d7d              # double 7.5999629999999998
	.quad	0x4020e0d73860999e              # double 8.4391420000000004
	.quad	0x4018862456f75d9a              # double 6.1309979999999999
	.quad	0x4021c26e32e3821b              # double 8.8797470000000001
	.quad	0x3ff667ff583a53b9              # double 1.40039
	.quad	0x3fd4caff6d330942              # double 0.32489000000000001
	.quad	0x3ffa52d666a98245              # double 1.645224
	.quad	0x40213d551d68c693              # double 8.6197900000000001
	.quad	0x401e71e2584f4c6e              # double 7.6112149999999996
	.quad	0x3ff9b4dbdf8f4730              # double 1.6066549999999999
	.quad	0x3fe859d7774aba38              # double 0.76096699999999995
	.quad	0x3fffe8943e100608              # double 1.9942820000000001
	.quad	0x4023888a8b08dd1e              # double 9.7666819999999994
	.quad	0x3fbc6195464dc22b              # double 0.110864
	.quad	0x3fffb0f3882278d1              # double 1.980701
	.quad	0x40065243137b0707              # double 2.7901669999999998
	.quad	0x400dfde58e64b231              # double 3.7489729999999999
	.quad	0x4006c1040bfe3b04              # double 2.8442460000000001
	.quad	0x3feebd577963992d              # double 0.96061300000000005
	.quad	0x40232ac59fb1e18f              # double 9.583539
	.quad	0x401a08ef77f27fe5              # double 6.5087260000000002
	.quad	0x40068eb0b7c3504c              # double 2.8196729999999999
	.quad	0x40133160d887ebf2              # double 4.7982209999999998
	.quad	0x401d35de58e64b23              # double 7.3026059999999999
	.quad	0x401e22bf5515054b              # double 7.5339330000000002
	.quad	0x402247ace67d77fb              # double 9.1399910000000002
	.quad	0x401c8f3eccc46951              # double 7.139888
	.quad	0x3ffdd30270f38822              # double 1.8640159999999999
	.quad	0x4018ea858793dd98              # double 6.229025
	.quad	0x40238b35f3d7d391              # double 9.7718959999999999
	.quad	0x4005d0d62bf11f92              # double 2.7269709999999998
	.quad	0x40092cadddf43c7d              # double 3.1468159999999998
	.quad	0x40149c75818c5c9a              # double 5.1527919999999998
	.quad	0x3ffaf1337eb28d86              # double 1.6838869999999999
	.quad	0x401889c5a3e39f77              # double 6.1345429999999999
	.quad	0x400dd2a737110e45              # double 3.7278579999999999
	.quad	0x402243b8800eae19              # double 9.1322670000000006
	.quad	0x4014f04a72ead927              # double 5.2346589999999997
	.quad	0x40215cb31c219eb6              # double 8.6810539999999996
	.quad	0x3ff89acde19fc2a9              # double 1.5377940000000001
	.quad	0x401cc6ab5807fed2              # double 7.194013
	.quad	0x401cdbf3bea91d9b              # double 7.2147969999999999
	.quad	0x401cc11947cfa26a              # double 7.1885729999999999
	.quad	0x400ec1fc08fa7a85              # double 3.844719
	.quad	0x402361d1b2e59afa              # double 9.6910530000000001
	.quad	0x40072f13cee9dd7f              # double 2.8979870000000001
	.quad	0x3ff678c21e1d2179              # double 1.404482
	.quad	0x4019a9fe004b7f5a              # double 6.4160079999999997
	.quad	0x4017f5ffa3b9ae0c              # double 5.9902329999999999
	.quad	0x3fba08e15011904b              # double 0.101698
	.quad	0x3ffc666ec9e236c1              # double 1.7750079999999999
	.quad	0x4009053b8e4b87be              # double 3.1275550000000001
	.quad	0x401843ec02f2f987              # double 6.0663299999999998
	.quad	0x3ffd477574f722e2              # double 1.8299460000000001
	.quad	0x401991869835158c              # double 6.3921150000000004
	.quad	0x401cacf850df15a5              # double 7.1689160000000003
	.quad	0x3fe102539756c93a              # double 0.53153399999999995
	.quad	0x401038e64b231401              # double 4.0555659999999998
	.quad	0x3fc23422467be554              # double 0.14221600000000001
	.quad	0x40221a7807789a46              # double 9.0516970000000008
	.quad	0x3ff10787485e3da3              # double 1.064338
	.quad	0x3fa12ea52ef911cf              # double 0.033558999999999999
	.quad	0x401e8c1b97353b4b              # double 7.6368239999999998
	.quad	0x402244007570c565              # double 9.132816
	.quad	0x40095036c9c0a8d2              # double 3.164167
	.quad	0x4011ba376922d949              # double 4.4318520000000001
	.quad	0x400cd2146a1a500d              # double 3.6025779999999998
	.quad	0x400fd86a098915be              # double 3.9806710000000001
	.quad	0x40209154c985f06f              # double 8.2838499999999993
	.quad	0x40186ec7863beec4              # double 6.1081830000000004
	.quad	0x4012e62a5e785b5b              # double 4.7247709999999996
	.quad	0x3ff279a49c2c1b11              # double 1.154698
	.quad	0x4002a4fd2a62aa19              # double 2.3305609999999999
	.quad	0x4016208e15011905              # double 5.5317920000000003
	.quad	0x3fe6edb0dd82fd76              # double 0.71651500000000001
	.quad	0x400b8c8711d798d9              # double 3.4436170000000002
	.quad	0x400075946c332f01              # double 2.0574119999999998
	.quad	0x3ff550aaa7ded6bb              # double 1.3321940000000001
	.quad	0x3ff5951b4fe79ee0              # double 1.348903
	.quad	0x401424a5df2239e7              # double 5.0357890000000003
	.quad	0x40044f92af9a8cdf              # double 2.5388540000000002
	.quad	0x3ff987f66e86c658              # double 1.5956939999999999
	.quad	0x4022838c75c4a83b              # double 9.2569309999999998
	.quad	0x401f96049ecb31c2              # double 7.8965019999999999
	.quad	0x40115c504816f007              # double 4.3401500000000004
	.quad	0x401355946c332f01              # double 4.8335739999999996
	.quad	0x401103f20a73f749              # double 4.2538530000000003
	.quad	0x4023fdd5f56a7ac8              # double 9.9957729999999997
	.quad	0x3fa4e1a3f4666eca              # double 0.040784000000000001
	.quad	0x401f779702e6644e              # double 7.8667870000000004
	.quad	0x402094065b63d3e5              # double 8.2891110000000001
	.quad	0x4010aaaeafab53d6              # double 4.1666819999999998
	.quad	0x4023d01a5870da5e              # double 9.9064510000000006
	.quad	0x3fdef6be37de939f              # double 0.48381000000000002
	.quad	0x4023be35e74299d9              # double 9.8715050000000008
	.quad	0x4021eaaa19439de5              # double 8.9583290000000009
	.quad	0x4014074107314ca9              # double 5.0070839999999999
	.quad	0x401e03e4ef0281ba              # double 7.5038029999999996
	.quad	0x402353c72e275ab8              # double 9.6636290000000002
	.quad	0x3ff69a272862f599              # double 1.4126350000000001
	.quad	0x401100cdc8754f37              # double 4.2507849999999996
	.quad	0x40136a71de69ad43              # double 4.8539500000000002
	.quad	0x3fcc7e73a365cb36              # double 0.222609
	.quad	0x4023c3fceb78897f              # double 9.8827890000000007
	.quad	0x40209dea67e846a6              # double 8.3084290000000003
	.quad	0x4001c2d05f288484              # double 2.2201240000000002
	.quad	0x401716fd21ff2e49              # double 5.7724500000000001
	.quad	0x401171876188b114              # double 4.360868
	.quad	0x400aec36544fe36d              # double 3.3653379999999999
	.quad	0x40014b0b7c3504c5              # double 2.1616430000000002
	.quad	0x4018d20b3d4ae42a              # double 6.2051210000000001
	.quad	0x40230906cca2db62              # double 9.5176300000000005
	.quad	0x4017aa582dbe7f2c              # double 5.9163519999999998
	.quad	0x3ff789d495182a99              # double 1.47115
	.quad	0x40126950fc71d606              # double 4.6028479999999998
	.quad	0x401fc9dbec2480e9              # double 7.9471280000000001
	.quad	0x400debe5109070fc              # double 3.740183
	.quad	0x4006b0af5fd47bee              # double 2.8362720000000001
	.quad	0x401886ee30caa327              # double 6.1317680000000001
	.quad	0x401c8ba12b5e529c              # double 7.1363570000000003
	.quad	0x401540d2c386d2ed              # double 5.3133039999999996
	.quad	0x40207cb10342aa9f              # double 8.2435379999999991
	.quad	0x401889652bd3c361              # double 6.1341749999999999
	.quad	0x4023982a77a2cecd              # double 9.7971990000000008
	.quad	0x40158889c1b54196              # double 5.3833380000000002
	.quad	0x40212a4bfd2e9468              # double 8.582611
	.quad	0x4022f82afdda8bd2              # double 9.4847029999999997
	.quad	0x4005c523704790b8              # double 2.7212589999999999
	.quad	0x3fdd8f36694898f6              # double 0.461866
	.quad	0x40104055757d5a9f              # double 4.0628260000000003
	.quad	0x40126dca8e2e2b8c              # double 4.6072179999999996
	.quad	0x40215271151611ba              # double 8.6610189999999996
	.quad	0x40036af89c5e6ff8              # double 2.4272320000000001
	.quad	0x401f1a7d24180d3d              # double 7.775868
	.quad	0x400468be2f7b17ce              # double 2.5511439999999999
	.quad	0x401eab5b2d4d4025              # double 7.6673400000000002
	.quad	0x402349b456b441bc              # double 9.6439540000000008
	.quad	0x4020028d64d7f0ed              # double 8.0049849999999996
	.quad	0x40156d38cda6e760              # double 5.356662
	.quad	0x3fb2111276fb0920              # double 0.070572999999999997
	.quad	0x400ca7b24638c975              # double 3.5818829999999999
	.quad	0x40099052934acaff              # double 3.1954699999999998
	.quad	0x4021b2e87d2c7b89              # double 8.8494299999999999
	.quad	0x40233d031055b899              # double 9.6191639999999996
	.quad	0x40037f7d73c92578              # double 2.4372509999999998
	.quad	0x400cf68cef672b88              # double 3.6203859999999999
	.quad	0x4021bc245f5ad96a              # double 8.8674649999999993
	.quad	0x401665f80991793a              # double 5.5995790000000003
	.quad	0x400ded2a1f8e3ac1              # double 3.7408030000000001
	.quad	0x3ffd71ab0856e697              # double 1.8402510000000001
	.quad	0x4017cde54b48d3ae              # double 5.9510699999999996
	.quad	0x3ffa5e6362a5e786              # double 1.6480440000000001
	.quad	0x3fe0596851223183              # double 0.51091399999999998
	.quad	0x4003130270f38822              # double 2.3842819999999998
	.quad	0x3fedb1e18efbb0e6              # double 0.92796400000000001
	.quad	0x4020b927b2cc7086              # double 8.3616309999999991
	.quad	0x3fdbb042528ae74f              # double 0.43263299999999999
	.quad	0x401b8427418d690a              # double 6.8790560000000003
	.quad	0x3feaa7b6fe2e6ea8              # double 0.83297299999999996
	.quad	0x4021d226809d4952              # double 8.9104500000000009
	.quad	0x400a157603925bb8              # double 3.2604790000000001
	.quad	0x400b4a3d70a3d70a              # double 3.4112499999999999
	.quad	0x4021c0cfbfc6540d              # double 8.8765850000000004
	.quad	0x4021c1a49c2c1b11              # double 8.878209
	.quad	0x4010cc0980b24207              # double 4.199255
	.quad	0x3fe426fa3fcc9eaa              # double 0.62975800000000004
	.quad	0x402362dc4c9c90c5              # double 9.6930870000000002
	.quad	0x400f21205bc01a37              # double 3.8911750000000001
	.quad	0x401281d798d8a97a              # double 4.6267990000000001
	.quad	0x401f1bfb15b573eb              # double 7.7773250000000002
	.quad	0x401dd8d32830a0b2              # double 7.4617430000000002
	.quad	0x3ff5324851a86940              # double 1.324776
	.quad	0x4010654eb13dfb0d              # double 4.0989329999999997
	.quad	0x3ffcf33fc86cebbc              # double 1.8093870000000001
	.quad	0x4021601d7dbf4880              # double 8.6877250000000004
	.quad	0x402360096feb4a66              # double 9.6875719999999994
	.quad	0x400e562d83c6c97e              # double 3.7920790000000002
	.quad	0x3fe4101b003686a5              # double 0.62696600000000002
	.quad	0x4015ff56a7ac81d4              # double 5.4993540000000003
	.quad	0x3fd3e30446b69db6              # double 0.31073099999999998
	.quad	0x40203d5f56a7ac82              # double 8.1198680000000003
	.quad	0x400c04cbe1eb4203              # double 3.5023420000000001
	.quad	0x4015e861a60d4563              # double 5.4769350000000001
	.quad	0x3fa43201040bfe3b              # double 0.039444
	.quad	0x4015bd616f86a099              # double 5.4349420000000004
	.quad	0x3fe0c256bca5375d              # double 0.52372300000000005
	.quad	0x400910d7be9856a3              # double 3.1332239999999998
	.quad	0x3ffe9bf162ae4b02              # double 1.9130720000000001
	.quad	0x4020123e39f77293              # double 8.0356310000000004
	.quad	0x400fdb4aa9717df2              # double 3.9820760000000002
	.quad	0x40234266ba493c8a              # double 9.6296900000000001
	.quad	0x40233048beb5b2d5              # double 9.5943050000000003
	.quad	0x4022007f023e9ea1              # double 9.0009689999999996
	.quad	0x40169e15ca6ca03c              # double 5.6543799999999997
	.quad	0x401facb923a29c78              # double 7.9186750000000003
	.quad	0x400fd268d32830a1              # double 3.9777390000000001
	.quad	0x400ec3992c8c5005              # double 3.845507
	.quad	0x400ca82517e77d52              # double 3.5821019999999999
	.quad	0x4016afd6d7e889c2              # double 5.6717180000000003
	.quad	0x402187f0ed3d859d              # double 8.7655100000000008
	.quad	0x4014233daf8df7a5              # double 5.0344150000000001
	.quad	0x401b739f77292c49              # double 6.8629129999999998
	.quad	0x401a82749f0e4da1              # double 6.6273980000000003
	.quad	0x3fe9de1198aeb80f              # double 0.80835800000000002
	.quad	0x3fda4816f0068db9              # double 0.41065000000000002
	.quad	0x401f853b4b2fa93b              # double 7.880109
	.quad	0x40182f4fd6d7e88a              # double 6.0462030000000002
	.quad	0x4018bfcdab191dde              # double 6.1873079999999998
	.quad	0x4021b74107314ca9              # double 8.8579179999999997
	.quad	0x4022e0da5daf07c0              # double 9.4391660000000001
	.quad	0x4010638ef34d6a16              # double 4.0972249999999999
	.quad	0x3ff28ebdd334c5da              # double 1.1598489999999999
	.quad	0x4000dff9b56323bc              # double 2.1093630000000001
	.quad	0x3fe5f9bfdf7e8039              # double 0.68673700000000004
	.quad	0x400d0297396d0918              # double 3.6262650000000001
	.quad	0x402314e2089e3433              # double 9.5407869999999999
	.quad	0x4023ea52263d816b              # double 9.9576580000000003
	.quad	0x4008c671ef30a4e3              # double 3.0968969999999998
	.quad	0x4022e6136e71cda3              # double 9.4493670000000005
	.quad	0x40160ff8a8f3a9b0              # double 5.5155969999999996
	.quad	0x4012f30ec3116228              # double 4.7373609999999999
	.quad	0x4010472c5197a249              # double 4.0695050000000004
	.quad	0x3ffe7e86833c6003              # double 1.9058900000000001
	.quad	0x4013292bc2fc6973              # double 4.7902060000000004
	.quad	0x3ffb3365881a1555              # double 1.700048
	.quad	0x401596cca2db61bb              # double 5.397265
	.quad	0x401223c42a66dbd7              # double 4.5349279999999998
	.quad	0x401be4b48d3ae686              # double 6.9733450000000001
	.quad	0x4021eb0c67168f8e              # double 8.9590789999999991
	.quad	0x4014ace4a7b4e54f              # double 5.1688409999999996
	.quad	0x402237496aad1d04              # double 9.1079819999999998
	.quad	0x3fdb5182a9930be1              # double 0.42685000000000001
	.quad	0x40215a57646ae3a4              # double 8.6764480000000006
	.quad	0x400827ee9142b303              # double 3.019498
	.quad	0x4023e12817763e4b              # double 9.9397590000000004
	.quad	0x40197322291fb3fa              # double 6.3624349999999996
	.quad	0x4022b9af7d30ad47              # double 9.362667
	.quad	0x40218e63a5c1c609              # double 8.7781040000000008
	.quad	0x3fe753b0813cab82              # double 0.728966
	.quad	0x4023278dd616f86a              # double 9.5772539999999999
	.quad	0x40027f865d7cb2d9              # double 2.312268
	.quad	0x4012d8f605ab3aac              # double 4.7118760000000002
	.quad	0x40133c25d074213a              # double 4.808738
	.size	.L__constant_1500xf64, 12000

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
