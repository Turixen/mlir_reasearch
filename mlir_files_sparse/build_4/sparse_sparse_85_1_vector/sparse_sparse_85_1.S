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
	.quad	0x41257dee5dcc4263              # double 704247.18319899996
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
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	46                              # 0x2e
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
	.quad	95                              # 0x5f
	.quad	116                             # 0x74
	.quad	134                             # 0x86
	.quad	146                             # 0x92
	.quad	163                             # 0xa3
	.quad	181                             # 0xb5
	.quad	202                             # 0xca
	.quad	221                             # 0xdd
	.quad	232                             # 0xe8
	.quad	246                             # 0xf6
	.quad	257                             # 0x101
	.quad	279                             # 0x117
	.quad	292                             # 0x124
	.quad	303                             # 0x12f
	.quad	310                             # 0x136
	.quad	329                             # 0x149
	.quad	342                             # 0x156
	.quad	361                             # 0x169
	.quad	378                             # 0x17a
	.quad	389                             # 0x185
	.quad	400                             # 0x190
	.quad	414                             # 0x19e
	.quad	425                             # 0x1a9
	.quad	447                             # 0x1bf
	.quad	459                             # 0x1cb
	.quad	476                             # 0x1dc
	.quad	488                             # 0x1e8
	.quad	501                             # 0x1f5
	.quad	520                             # 0x208
	.quad	534                             # 0x216
	.quad	544                             # 0x220
	.quad	559                             # 0x22f
	.quad	577                             # 0x241
	.quad	597                             # 0x255
	.quad	613                             # 0x265
	.quad	626                             # 0x272
	.quad	636                             # 0x27c
	.quad	653                             # 0x28d
	.quad	667                             # 0x29b
	.quad	686                             # 0x2ae
	.quad	699                             # 0x2bb
	.quad	709                             # 0x2c5
	.quad	728                             # 0x2d8
	.quad	744                             # 0x2e8
	.quad	767                             # 0x2ff
	.quad	789                             # 0x315
	.quad	798                             # 0x31e
	.quad	812                             # 0x32c
	.quad	823                             # 0x337
	.quad	832                             # 0x340
	.quad	841                             # 0x349
	.quad	859                             # 0x35b
	.quad	876                             # 0x36c
	.quad	896                             # 0x380
	.quad	903                             # 0x387
	.quad	920                             # 0x398
	.quad	932                             # 0x3a4
	.quad	947                             # 0x3b3
	.quad	964                             # 0x3c4
	.quad	978                             # 0x3d2
	.quad	997                             # 0x3e5
	.quad	1014                            # 0x3f6
	.quad	1029                            # 0x405
	.quad	1043                            # 0x413
	.quad	1055                            # 0x41f
	.quad	1071                            # 0x42f
	.quad	1083                            # 0x43b
	.quad	1099                            # 0x44b
	.quad	1111                            # 0x457
	.quad	1120                            # 0x460
	.quad	1135                            # 0x46f
	.quad	1158                            # 0x486
	.quad	1168                            # 0x490
	.quad	1183                            # 0x49f
	.quad	1197                            # 0x4ad
	.quad	1211                            # 0x4bb
	.quad	1227                            # 0x4cb
	.quad	1243                            # 0x4db
	.quad	1260                            # 0x4ec
	.quad	1275                            # 0x4fb
	.quad	1293                            # 0x50d
	.quad	1301                            # 0x515
	.quad	1317                            # 0x525
	.quad	1335                            # 0x537
	.quad	1342                            # 0x53e
	.quad	1355                            # 0x54b
	.quad	1367                            # 0x557
	.quad	1381                            # 0x565
	.quad	1398                            # 0x576
	.quad	1411                            # 0x583
	.quad	1427                            # 0x593
	.quad	1442                            # 0x5a2
	.quad	1464                            # 0x5b8
	.quad	1478                            # 0x5c6
	.quad	1500                            # 0x5dc
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1500xindex,@object # @__constant_1500xindex
	.p2align	6, 0x0
.L__constant_1500xindex:
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	64                              # 0x40
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	92                              # 0x5c
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	4                               # 0x4
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	95                              # 0x5f
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	61                              # 0x3d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	59                              # 0x3b
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	84                              # 0x54
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	5                               # 0x5
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	70                              # 0x46
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	54                              # 0x36
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	69                              # 0x45
	.quad	80                              # 0x50
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	29                              # 0x1d
	.quad	66                              # 0x42
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	71                              # 0x47
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	2                               # 0x2
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	4                               # 0x4
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	49                              # 0x31
	.quad	60                              # 0x3c
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	32                              # 0x20
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	81                              # 0x51
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	62                              # 0x3e
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	21                              # 0x15
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	30                              # 0x1e
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	77                              # 0x4d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	59                              # 0x3b
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	58                              # 0x3a
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	49                              # 0x31
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	13                              # 0xd
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.size	.L__constant_1500xindex, 12000

	.type	.L__constant_1500xf64,@object   # @__constant_1500xf64
	.p2align	6, 0x0
.L__constant_1500xf64:
	.quad	0x40139dc054ef459e              # double 4.9040540000000004
	.quad	0x4020d0de093532e8              # double 8.4079440000000005
	.quad	0x401a37dbf487fcb9              # double 6.5545499999999999
	.quad	0x401f52f5dbb9cf9a              # double 7.831016
	.quad	0x401674b76f6d7625              # double 5.6139809999999999
	.quad	0x4023fb461309c800              # double 9.9907690000000002
	.quad	0x401eaad8a116659d              # double 7.6668419999999999
	.quad	0x40160a83b1d0c804              # double 5.5102679999999999
	.quad	0x4000171e29b6b2af              # double 2.011288
	.quad	0x3fecfb43d89ce4a8              # double 0.90567200000000003
	.quad	0x401bcecedd484513              # double 6.9519609999999998
	.quad	0x401b03cbc48f10aa              # double 6.7537070000000003
	.quad	0x401b7bdb1a6d6990              # double 6.8709530000000001
	.quad	0x4016addb9841aac5              # double 5.6697829999999998
	.quad	0x3fffbc9795b35b0c              # double 1.9835430000000001
	.quad	0x3fe95f4c2b51bd62              # double 0.792883
	.quad	0x40215b111f0c34c2              # double 8.6778650000000006
	.quad	0x40227dd8d79d0a67              # double 9.2457949999999993
	.quad	0x400150c2c5e2cdc0              # double 2.164434
	.quad	0x3fd48ba40d90e23b              # double 0.321023
	.quad	0x4002c34eb9a176de              # double 2.3453650000000001
	.quad	0x4010cc692f6e8295              # double 4.1996200000000004
	.quad	0x3ffeb0ef566490a3              # double 1.9181969999999999
	.quad	0x400acffc9795b35b              # double 3.351556
	.quad	0x3ffe02f944241c3f              # double 1.875726
	.quad	0x40194694ccab3ede              # double 6.3189270000000004
	.quad	0x40212ab0a6fc58ac              # double 8.5833790000000007
	.quad	0x4011322ee41919ac              # double 4.2990069999999996
	.quad	0x40022268900c521e              # double 2.2668010000000001
	.quad	0x4021391c4b90214b              # double 8.6115440000000003
	.quad	0x4021a355043e5322              # double 8.8190080000000002
	.quad	0x401ae52eb5f5f0b3              # double 6.7238110000000004
	.quad	0x3ffdab5a20ddc619              # double 1.8543339999999999
	.quad	0x401fee0e736049ed              # double 7.9824770000000002
	.quad	0x3ffec74751ce28ed              # double 1.9236519999999999
	.quad	0x40146ddfc9ff92f3              # double 5.1072990000000003
	.quad	0x401de51e75360d02              # double 7.4737489999999998
	.quad	0x40020014f8b588e3              # double 2.2500399999999998
	.quad	0x401eea087ca643cc              # double 7.728548
	.quad	0x3ffb8cda6e75ff61              # double 1.7218880000000001
	.quad	0x40150480a5accd53              # double 5.254397
	.quad	0x40048dce39b456b4              # double 2.5692409999999999
	.quad	0x401d080f98fa3769              # double 7.2578719999999999
	.quad	0x400c316659d12cae              # double 3.5241210000000001
	.quad	0x3feda6dacabc5155              # double 0.92661800000000005
	.quad	0x3ff50a0e410b630b              # double 1.3149550000000001
	.quad	0x401e5332acfb762e              # double 7.5812480000000004
	.quad	0x3fd9b7f5a5332ad0              # double 0.40185300000000002
	.quad	0x4013e31e3a7daa50              # double 4.9717950000000002
	.quad	0x4021001b64e05469              # double 8.5002089999999999
	.quad	0x401d0be8bc169c24              # double 7.2616300000000003
	.quad	0x401639a0ad8a1166              # double 5.5562769999999997
	.quad	0x3feca9ef5232d2bb              # double 0.89574399999999998
	.quad	0x3fe0d0a244630660              # double 0.52546800000000005
	.quad	0x40217eafcce1c582              # double 8.7474349999999994
	.quad	0x402242921ccd9620              # double 9.1300209999999993
	.quad	0x401bef3343fa2ad4              # double 6.9835940000000001
	.quad	0x401c81a32b12d341              # double 7.1265989999999997
	.quad	0x40002412cf0f9d2c              # double 2.017614
	.quad	0x40213fa05143bf72              # double 8.6242699999999992
	.quad	0x400633ff25e56cd7              # double 2.7753890000000001
	.quad	0x3fe594ab1d4f9c20              # double 0.67439800000000005
	.quad	0x401bfb5cbff47736              # double 6.9954710000000002
	.quad	0x4001411e42e12620              # double 2.1567959999999999
	.quad	0x40160be5d9e40c84              # double 5.5116189999999996
	.quad	0x40042bfd2e946801              # double 2.5214789999999998
	.quad	0x40100105e1c15098              # double 4.0009990000000002
	.quad	0x401fd8f7db6e5040              # double 7.9618830000000003
	.quad	0x401c76d00b45ae60              # double 7.116028
	.quad	0x40198dc33721d53d              # double 6.3884400000000001
	.quad	0x4014e18a86d71f36              # double 5.2202549999999999
	.quad	0x401741a86940357a              # double 5.8141189999999998
	.quad	0x4021e4c729f59cd0              # double 8.9468320000000006
	.quad	0x4018322291fb3fa7              # double 6.0489600000000001
	.quad	0x4011bd22424a276b              # double 4.4347009999999996
	.quad	0x40128ffb04ee7c4a              # double 4.640606
	.quad	0x4002393ab430f495              # double 2.2779440000000002
	.quad	0x3ff56b8f9b13165d              # double 1.33876
	.quad	0x402082b25b317efe              # double 8.2552669999999999
	.quad	0x4021c26aa8eb4635              # double 8.8797200000000007
	.quad	0x3ff86acc92146a1a              # double 1.5260739999999999
	.quad	0x4016cb8dc55000c9              # double 5.6987829999999997
	.quad	0x40221e6cf41f212d              # double 9.0594249999999992
	.quad	0x401b0cb4f1e4b44a              # double 6.7624089999999999
	.quad	0x400bda3a8e71476b              # double 3.481557
	.quad	0x3fab441bb8c32a8d              # double 0.053254000000000003
	.quad	0x4006d0dcfcc5b8dc              # double 2.8519839999999999
	.quad	0x40170931876188b1              # double 5.7589779999999999
	.quad	0x401547d1fe64f54d              # double 5.3201369999999999
	.quad	0x401f44794ea07703              # double 7.8168689999999996
	.quad	0x402375d11be6e654              # double 9.7301110000000008
	.quad	0x40112705425f2021              # double 4.288106
	.quad	0x4014322fad6cb535              # double 5.04901
	.quad	0x40050f8f8a4c1ebd              # double 2.6325980000000002
	.quad	0x4020956de33269e0              # double 8.2918540000000007
	.quad	0x4007d613d31b9b67              # double 2.97953
	.quad	0x401b08adab9f559b              # double 6.7584749999999998
	.quad	0x40232e0ae9680e06              # double 9.5899269999999994
	.quad	0x401b655fbb517a46              # double 6.8489979999999999
	.quad	0x4014c04816f0068e              # double 5.1877750000000002
	.quad	0x401ab4a9478c868c              # double 6.6764270000000003
	.quad	0x3ffe870b8cfbfc65              # double 1.9079699999999999
	.quad	0x401c384e3ffef391              # double 7.0549860000000004
	.quad	0x3fefa13a0c6b484d              # double 0.98843099999999994
	.quad	0x4015d250f840181e              # double 5.455387
	.quad	0x4023ad4f7a919696              # double 9.8384970000000003
	.quad	0x4018a5f9df548ece              # double 6.1620860000000004
	.quad	0x3ff37d4e09784ec6              # double 1.218092
	.quad	0x40225d15ad106ee3              # double 9.1818059999999999
	.quad	0x40237c9774256bca              # double 9.7433429999999994
	.quad	0x4020da2a4db163bb              # double 8.4261040000000005
	.quad	0x4000703f2d3c792d              # double 2.054808
	.quad	0x400b8532a497fa5d              # double 3.4400379999999999
	.quad	0x401184280ae10492              # double 4.3790589999999998
	.quad	0x40232a14f0520d13              # double 9.5821909999999999
	.quad	0x4018102c4d65e460              # double 6.0157939999999996
	.quad	0x40088a2877ee4e27              # double 3.0674600000000001
	.quad	0x4022632d0a244630              # double 9.1937029999999993
	.quad	0x4022fd6a9c560c7c              # double 9.4949539999999998
	.quad	0x4007f8897e996313              # double 2.996356
	.quad	0x4020db2fcac8e68e              # double 8.4280989999999996
	.quad	0x40206d93e5fb71fc              # double 8.2140190000000004
	.quad	0x40077342edbb59de              # double 2.9312800000000001
	.quad	0x400ee97204295a6c              # double 3.8639869999999998
	.quad	0x40185ad42c3c9eed              # double 6.0887000000000002
	.quad	0x3fff3a24894c447c              # double 1.951695
	.quad	0x400e07ae9ab29e4d              # double 3.7537509999999998
	.quad	0x4016f1611ba3ca75              # double 5.735722
	.quad	0x400a184ec636b096              # double 3.2618689999999999
	.quad	0x40205eabffcdab19              # double 8.1849059999999998
	.quad	0x40214c4b4d056c51              # double 8.6490120000000008
	.quad	0x40122b04ee7c49fd              # double 4.5420109999999996
	.quad	0x4004a7863beec398              # double 2.5817990000000002
	.quad	0x4010c51e321a2e7f              # double 4.1924979999999996
	.quad	0x401433d9ec700043              # double 5.0506359999999999
	.quad	0x40137157689ca18c              # double 4.8606850000000001
	.quad	0x40168bd3c3611340              # double 5.6365499999999997
	.quad	0x401ab1f255f3519c              # double 6.6737760000000002
	.quad	0x4021ecfb97bb7308              # double 8.9628569999999996
	.quad	0x3ff862f7b17ce52e              # double 1.524162
	.quad	0x4004921dda059a74              # double 2.5713460000000001
	.quad	0x3fe66fd438d1d8a5              # double 0.70115099999999997
	.quad	0x401599b34a44c7b0              # double 5.4000979999999998
	.quad	0x402279c66d373b00              # double 9.2378420000000006
	.quad	0x401364aa53fc0097              # double 4.848306
	.quad	0x401c57e4de3b8a1a              # double 7.0858340000000002
	.quad	0x4022f21ea35935fc              # double 9.4728899999999995
	.quad	0x3ffdb0c996b7670a              # double 1.855661
	.quad	0x3fceb51bd61f5be6              # double 0.239902
	.quad	0x40017138bcdfefbf              # double 2.1802839999999999
	.quad	0x4002de73a365cb36              # double 2.358619
	.quad	0x4016b4a1272c94b4              # double 5.6763960000000004
	.quad	0x4021ac508b32ce89              # double 8.8365519999999993
	.quad	0x401121c087442c80              # double 4.2829610000000002
	.quad	0x401a440bbb1f255f              # double 6.5664509999999998
	.quad	0x401510d6b228dc98              # double 5.2664439999999999
	.quad	0x3fe0c3e5321e603d              # double 0.52391299999999996
	.quad	0x4008f14a0a0f4d7b              # double 3.1178170000000001
	.quad	0x4015ab474107314d              # double 5.4172640000000003
	.quad	0x400e5dcf893faf42              # double 3.7958059999999998
	.quad	0x4021006a8fc0d2c4              # double 8.5008130000000008
	.quad	0x400d55d1c3ac929b              # double 3.6669040000000002
	.quad	0x40058d8e432441ff              # double 2.6941190000000002
	.quad	0x40205e6e86c6583f              # double 8.1844370000000009
	.quad	0x401d684988094e5d              # double 7.3518429999999997
	.quad	0x400d4876e1deacc9              # double 3.6603829999999999
	.quad	0x401f54406c00da1b              # double 7.8322770000000003
	.quad	0x401633ad18d25edd              # double 5.550465
	.quad	0x400c70917d6b65aa              # double 3.5549650000000002
	.quad	0x400d22877ee4e26d              # double 3.6418599999999999
	.quad	0x401fec18b502abac              # double 7.9805630000000001
	.quad	0x4011db88ca3e7d13              # double 4.4643889999999997
	.quad	0x4006e31d712a0ec7              # double 2.8608959999999999
	.quad	0x3ffdf5aa715831f0              # double 1.8724769999999999
	.quad	0x400ad661f18c9fb6              # double 3.354679
	.quad	0x40097873ffac1d2a              # double 3.1838150000000001
	.quad	0x401a4f3fd933e35c              # double 6.5773919999999997
	.quad	0x40054f965b20b806              # double 2.6638609999999998
	.quad	0x401cc41cc532a498              # double 7.191516
	.quad	0x40234cc165907d91              # double 9.6499129999999997
	.quad	0x4002b1aeb3dd11be              # double 2.3367589999999998
	.quad	0x400da65add9c27e9              # double 3.7062279999999999
	.quad	0x400836d97b30f8c6              # double 3.0267819999999999
	.quad	0x3ff325aff2a172ac              # double 1.196701
	.quad	0x4002524851a86940              # double 2.2901769999999999
	.quad	0x3ff27c7f77af6406              # double 1.1553949999999999
	.quad	0x3fea687d2c7b890d              # double 0.82525499999999996
	.quad	0x400af0b7c3504c49              # double 3.3675380000000001
	.quad	0x4012ad5629d8409e              # double 4.6692739999999997
	.quad	0x401d61001d5c3159              # double 7.3447269999999998
	.quad	0x4021baae6c8f7553              # double 8.8646119999999993
	.quad	0x3ffd2c80c73abc94              # double 1.8233649999999999
	.quad	0x40009781c714fce7              # double 2.0739779999999999
	.quad	0x400aea31e7d9988d              # double 3.3643529999999999
	.quad	0x3fccb7457c0b1359              # double 0.22434299999999999
	.quad	0x3fffc54ef459d990              # double 1.985671
	.quad	0x4008325edd052935              # double 3.0245950000000001
	.quad	0x4003501083dbc233              # double 2.414094
	.quad	0x401183953dea465a              # double 4.3784989999999997
	.quad	0x4005b29563a9f384              # double 2.712199
	.quad	0x3fff234eb9a176de              # double 1.9461200000000001
	.quad	0x4010a39fba450acc              # double 4.159789
	.quad	0x402171d0a67620ef              # double 8.7222950000000008
	.quad	0x401e8c209246bf01              # double 7.6368429999999998
	.quad	0x4021b448cf7caa76              # double 8.8521180000000008
	.quad	0x3fa93e3e29307af2              # double 0.049303
	.quad	0x402019869835158c              # double 8.0498550000000008
	.quad	0x401435479d4d8341              # double 5.0520310000000004
	.quad	0x401085579af1886e              # double 4.130217
	.quad	0x4000fd7ba6698bb5              # double 2.1237710000000001
	.quad	0x3ffc5ea465a57647              # double 1.7731060000000001
	.quad	0x3ff9363b256ffc11              # double 1.5757399999999999
	.quad	0x3ffc6a6b0d9513f9              # double 1.775981
	.quad	0x4017368ad6883772              # double 5.8032640000000004
	.quad	0x40038abd5dc40075              # double 2.4427439999999998
	.quad	0x401da4295a6c5d20              # double 7.4103139999999996
	.quad	0x40077d12cadddf44              # double 2.9360710000000001
	.quad	0x401c9dc6e2a80065              # double 7.1540790000000003
	.quad	0x3fc80cf1800a7c5b              # double 0.18789500000000001
	.quad	0x40134c8e68e3ef28              # double 4.8247619999999998
	.quad	0x401c79bf5946c333              # double 7.1188940000000001
	.quad	0x3fe1d1bd61f5be5e              # double 0.55685300000000004
	.quad	0x400a7255f3519bd4              # double 3.305828
	.quad	0x4015ab15f88fc936              # double 5.4170759999999998
	.quad	0x4017bffef39085f5              # double 5.9374960000000003
	.quad	0x4021944e50c5eb31              # double 8.7896599999999996
	.quad	0x4004ddb3397dd00f              # double 2.6082519999999998
	.quad	0x4005c7b3d8e00086              # double 2.7225109999999999
	.quad	0x40178441355475a3              # double 5.8791549999999999
	.quad	0x401e3308787485e4              # double 7.5498370000000001
	.quad	0x4016a88e368f0846              # double 5.6646049999999999
	.quad	0x3ff94e29f9ce8d97              # double 1.581583
	.quad	0x400ec517e77d523b              # double 3.8462369999999999
	.quad	0x4009722e1ac57e24              # double 3.180752
	.quad	0x401c68db0574b407              # double 7.102398
	.quad	0x400c76b65a9a8049              # double 3.5579649999999998
	.quad	0x3fd07fe08aefb2ab              # double 0.25780500000000001
	.quad	0x401f871715c63ae2              # double 7.8819239999999997
	.quad	0x4014d3a190082060              # double 5.206671
	.quad	0x402028130164840e              # double 8.0782699999999998
	.quad	0x3fc6363b256ffc11              # double 0.17352999999999999
	.quad	0x4004329dc725c3df              # double 2.524715
	.quad	0x4002444417870542              # double 2.2833329999999998
	.quad	0x402201df97aaac11              # double 9.0036590000000007
	.quad	0x4005cee5abc0e38a              # double 2.7260239999999998
	.quad	0x4007269f8c21e1d2              # double 2.893859
	.quad	0x401a4b02d59d55e7              # double 6.5732530000000002
	.quad	0x401b4201040bfe3b              # double 6.814457
	.quad	0x40048175d13d74d6              # double 2.5632130000000002
	.quad	0x401bab107746887b              # double 6.9170550000000004
	.quad	0x3ff36d31fcd24e16              # double 1.214159
	.quad	0x4012614c22ee4192              # double 4.5950170000000004
	.quad	0x3fd865add9c27e95              # double 0.38120599999999999
	.quad	0x401055f3d7d3910c              # double 4.0839379999999998
	.quad	0x3fff5080b673c4f4              # double 1.9571540000000001
	.quad	0x4022a6eb702602c9              # double 9.3260149999999999
	.quad	0x4021cb6e935b91f7              # double 8.8973279999999999
	.quad	0x401bd98a65492ff5              # double 6.9624420000000002
	.quad	0x3ff7fd36f7e3d1cc              # double 1.49932
	.quad	0x3fd2fadafd113837              # double 0.29656100000000002
	.quad	0x40025441355475a3              # double 2.29114
	.quad	0x4021fbac4f7ec354              # double 8.9915489999999991
	.quad	0x40152ded288ce704              # double 5.2948500000000003
	.quad	0x400debb6672fba02              # double 3.740094
	.quad	0x401a17bbf93ff25e              # double 6.5231779999999997
	.quad	0x4017e89b0ee49f51              # double 5.9771539999999996
	.quad	0x401f5c02f2f98740              # double 7.839855
	.quad	0x4019489613d31b9b              # double 6.3208849999999996
	.quad	0x4023fd102bc72e27              # double 9.9942639999999993
	.quad	0x401985a5b9628cbd              # double 6.3805149999999999
	.quad	0x4023ae9531550ca2              # double 9.8409820000000003
	.quad	0x4021045e4e69f05f              # double 8.5085320000000007
	.quad	0x3ffceb6d00b45ae6              # double 1.807477
	.quad	0x400ac11f4f50a02c              # double 3.3442980000000002
	.quad	0x3ffc19c17225b74a              # double 1.7562880000000001
	.quad	0x401c9e9d94d0dcfd              # double 7.1548980000000002
	.quad	0x400ab2f661f18ca0              # double 3.3373840000000001
	.quad	0x3fde4938583621fb              # double 0.473219
	.quad	0x40233d0b524399b3              # double 9.6192270000000004
	.quad	0x40230f39d1b2e59b              # double 9.529738
	.quad	0x401ebbfca85caafc              # double 7.6835810000000002
	.quad	0x4015b2b5a20ddc62              # double 5.4245210000000004
	.quad	0x3ff765ce5b4245f6              # double 1.4623550000000001
	.quad	0x4021ca469d7342ee              # double 8.8950700000000005
	.quad	0x4018f7be121ee675              # double 6.2419359999999999
	.quad	0x4019f3cea6c1a049              # double 6.4880930000000001
	.quad	0x3ff076b1a2a4db16              # double 1.0289779999999999
	.quad	0x4005189df1172ef1              # double 2.6370200000000001
	.quad	0x3ff7ad5cfaacd9e8              # double 1.4798249999999999
	.quad	0x3fe02cdc011d3672              # double 0.50547600000000004
	.quad	0x401b011a11233df3              # double 6.7510760000000003
	.quad	0x401185e679463cfb              # double 4.3807619999999998
	.quad	0x4016c46a1a500d5f              # double 5.6918110000000004
	.quad	0x401a639c0ebedfa4              # double 6.5972749999999998
	.quad	0x4017adaa0cae642c              # double 5.919594
	.quad	0x3fd8e878fabda0e0              # double 0.38918900000000001
	.quad	0x402320d887ebf22c              # double 9.5641519999999999
	.quad	0x401e9b14a90470a8              # double 7.6514459999999999
	.quad	0x4023ab877ab32485              # double 9.8350179999999998
	.quad	0x4014d94e1a3f4667              # double 5.2122120000000001
	.quad	0x400c71d0c8041030              # double 3.555574
	.quad	0x400a68cdea033e79              # double 3.3011740000000001
	.quad	0x40117f9a49c2c1b1              # double 4.3746119999999999
	.quad	0x4020c375a74c09c4              # double 8.3817570000000003
	.quad	0x401d4dcebfec13ba              # double 7.3259840000000001
	.quad	0x3fd1f36ef8055fbb              # double 0.28048299999999998
	.quad	0x4018a7e996312f4d              # double 6.163977
	.quad	0x40227e965f5275ef              # double 9.2472410000000007
	.quad	0x3ff58a009f623077              # double 1.3461920000000001
	.quad	0x400fc7bf61aa3f03              # double 3.9725329999999999
	.quad	0x400f14b51372a38c              # double 3.8851110000000002
	.quad	0x401f3cb81733226c              # double 7.8092959999999998
	.quad	0x40195bacf7446f9c              # double 6.3395270000000004
	.quad	0x400981bd1ed9dfdb              # double 3.1883490000000001
	.quad	0x401eca771c970f7c              # double 7.6977200000000003
	.quad	0x40232cdcca70d1fa              # double 9.5876219999999996
	.quad	0x4019c42352eb5f5f              # double 6.441541
	.quad	0x3fe94fc3f811f4f5              # double 0.790987
	.quad	0x3fc94a66559f6ec6              # double 0.19758300000000001
	.quad	0x4018c1bbcf4e874d              # double 6.1891930000000004
	.quad	0x400062396073de1e              # double 2.0479609999999999
	.quad	0x3ffda50c5eb313be              # double 1.852795
	.quad	0x4013ce84ad794a6f              # double 4.9516780000000002
	.quad	0x3fbda07b352a8438              # double 0.11573
	.quad	0x4011299029ae4f33              # double 4.2905889999999998
	.quad	0x401e1dcdf6987831              # double 7.5291059999999996
	.quad	0x3feaaa8869c66d37              # double 0.83331699999999997
	.quad	0x4008ec271fff79c8              # double 3.1153089999999999
	.quad	0x40229572bcb5fe54              # double 9.2918909999999996
	.quad	0x400d73083558a761              # double 3.681168
	.quad	0x400eec79f666234b              # double 3.8654670000000002
	.quad	0x3ffa141743e963dc              # double 1.6299049999999999
	.quad	0x400dddf00abf76a3              # double 3.733368
	.quad	0x402114e28ed5f139              # double 8.5407910000000005
	.quad	0x3fa2411c2a023209              # double 0.035652999999999997
	.quad	0x4002ab5bb384fd2a              # double 2.3336709999999998
	.quad	0x3fef75cf2495e17e              # double 0.98313099999999998
	.quad	0x4014b8af3e468cac              # double 5.1803559999999997
	.quad	0x40223637bd05af6c              # double 9.1058939999999992
	.quad	0x4006e6bce8533b10              # double 2.8626649999999998
	.quad	0x401ec60e94ee392e              # double 7.6934149999999999
	.quad	0x40218f2becedd484              # double 8.7796319999999994
	.quad	0x3fcfd052934acaff              # double 0.24854499999999999
	.quad	0x40122183b60285ec              # double 4.5327289999999998
	.quad	0x40208640a6b93ccd              # double 8.2622119999999999
	.quad	0x4011d6d612c6ac21              # double 4.4598009999999997
	.quad	0x4023da1b1960fa16              # double 9.9259880000000003
	.quad	0x401b75421c044285              # double 6.8645100000000001
	.quad	0x4023ac1bb8c32a8d              # double 9.8361490000000006
	.quad	0x4021e6cc814d727a              # double 8.9507790000000007
	.quad	0x400c88a372606fac              # double 3.5667179999999998
	.quad	0x3fcc0296b3354c12              # double 0.218829
	.quad	0x40228baafff36ac6              # double 9.2727889999999995
	.quad	0x3fe8da76d97b30f9              # double 0.77666800000000003
	.quad	0x402398563ed0f627              # double 9.7975329999999996
	.quad	0x40096616b54e2b06              # double 3.1748479999999999
	.quad	0x3ff511782d38476f              # double 1.316765
	.quad	0x401c8e03b3e9a6f8              # double 7.1386859999999999
	.quad	0x400477625204af92              # double 2.5582929999999999
	.quad	0x401aed81adea8976              # double 6.7319399999999998
	.quad	0x402316034f3fd934              # double 9.5429940000000001
	.quad	0x4012f1f0c34c1a8b              # double 4.7362700000000002
	.quad	0x400ab6f9fcb0c027              # double 3.3393440000000001
	.quad	0x401f86bc1eff9f88              # double 7.881577
	.quad	0x3ffaeb4b72c5197a              # double 1.682445
	.quad	0x401ab9131ec0b567              # double 6.6807369999999997
	.quad	0x4021680f345069a5              # double 8.7032410000000002
	.quad	0x3fefdc5d63886595              # double 0.99565000000000003
	.quad	0x3feae8ea39c51dac              # double 0.84093200000000001
	.quad	0x4009ec3eb7cbb3c8              # double 3.240354
	.quad	0x40227644b6e935b9              # double 9.2309929999999998
	.quad	0x40163cf7caa7589f              # double 5.559539
	.quad	0x40091f25e56cd6c3              # double 3.140209
	.quad	0x401f3f666234a87e              # double 7.8119139999999998
	.quad	0x40076ff3ade225fa              # double 2.9296639999999998
	.quad	0x40029d640e9d51b5              # double 2.326851
	.quad	0x3fe29ec2ce464990              # double 0.58187999999999995
	.quad	0x3feecf26aec0724b              # double 0.96278699999999994
	.quad	0x3ffeb72f76e6106b              # double 1.9197230000000001
	.quad	0x40118a8869c66d37              # double 4.3852859999999998
	.quad	0x401af90f301eabbd              # double 6.7432220000000003
	.quad	0x4002edd0d8cb07d1              # double 2.3661210000000001
	.quad	0x3ffefafa7221858c              # double 1.9362740000000001
	.quad	0x40160355cd91eeaa              # double 5.5032569999999996
	.quad	0x4020656f32bdc26e              # double 8.1981140000000003
	.quad	0x401efa1016ce789e              # double 7.7442019999999996
	.quad	0x400ce59b8023a6ce              # double 3.6121129999999999
	.quad	0x4014240a6b93ccd1              # double 5.035196
	.quad	0x401db7c6fbd273d6              # double 7.4294700000000002
	.quad	0x40102cd24e160d88              # double 4.0437709999999996
	.quad	0x401a5a90470a808d              # double 6.5884410000000004
	.quad	0x40066142f61ed5ae              # double 2.7974909999999999
	.quad	0x3fe8ea91d9b1b79e              # double 0.77863400000000005
	.quad	0x400ddda2f8bdec5f              # double 3.7332209999999999
	.quad	0x402195add9c27e95              # double 8.7923419999999997
	.quad	0x401a895dd4c76d11              # double 6.6341469999999996
	.quad	0x4013d87d2c7b890d              # double 4.9614149999999997
	.quad	0x3ff27dfe32a0663c              # double 1.1557599999999999
	.quad	0x400f9686a4ca4f44              # double 3.948499
	.quad	0x3fe59de8b3b32053              # double 0.67552599999999996
	.quad	0x400cea43bb40b34e              # double 3.6143869999999998
	.quad	0x4007c5ce5b4245f6              # double 2.9715850000000001
	.quad	0x3ff79ca18bd66278              # double 1.4757400000000001
	.quad	0x401b6d1bf7ad4b27              # double 6.8565519999999998
	.quad	0x401e262e4d1a6506              # double 7.5372859999999999
	.quad	0x4000e1da7b0b3919              # double 2.1102799999999999
	.quad	0x4005f700cd855971              # double 2.7456070000000001
	.quad	0x4020ba2cecc814d7              # double 8.3636239999999997
	.quad	0x401933675ddd2ae9              # double 6.3001990000000001
	.quad	0x401d805ea24cc682              # double 7.3753609999999998
	.quad	0x4016db827fa1a0cf              # double 5.7143649999999999
	.quad	0x3ff5510f51ac9afe              # double 1.33229
	.quad	0x40107dfce3150dae              # double 4.1230349999999998
	.quad	0x401e87ae147ae148              # double 7.6325000000000002
	.quad	0x3fc14b4070329803              # double 0.13510900000000001
	.quad	0x4018fe646f156191              # double 6.2484299999999999
	.quad	0x40040601bc98a223              # double 2.5029330000000001
	.quad	0x40013413986338b4              # double 2.1504279999999998
	.quad	0x401c7efe93187619              # double 7.1240180000000004
	.quad	0x401313dea465a576              # double 4.7694039999999998
	.quad	0x4022c85ff1d81f10              # double 9.3913569999999993
	.quad	0x402196e19b90ea9e              # double 8.7946899999999992
	.quad	0x40166e5d18090b41              # double 5.6077769999999996
	.quad	0x40165df0d413122b              # double 5.5917389999999996
	.quad	0x40141b3a68b19a41              # double 5.0265899999999997
	.quad	0x4009f44a1f080304              # double 3.2442820000000001
	.quad	0x4014645cbbc2b94e              # double 5.0980100000000004
	.quad	0x4022f8f47304039b              # double 9.4862400000000004
	.quad	0x401b8998d045fe11              # double 6.8843719999999999
	.quad	0x401515004fb1183b              # double 5.2705089999999997
	.quad	0x401f39cd3e0bd44a              # double 7.8064470000000004
	.quad	0x400b0a2120e1f7d7              # double 3.3799459999999999
	.quad	0x3fee916a8b8f14db              # double 0.95525099999999996
	.quad	0x3ffe70c67168f8e8              # double 1.902533
	.quad	0x40157e5082cf52b9              # double 5.373354
	.quad	0x4012c00fba8826ab              # double 4.6875600000000004
	.quad	0x3fbf0ff10ecb74de              # double 0.121337
	.quad	0x3fe9aa2c2374794f              # double 0.80202300000000004
	.quad	0x401f4bb1290257c9              # double 7.8239179999999999
	.quad	0x40127996b76709fa              # double 4.6187389999999997
	.quad	0x401a6f11f926c7eb              # double 6.6084670000000001
	.quad	0x401f1d7b634dad32              # double 7.778791
	.quad	0x4018d64adff822bc              # double 6.2092700000000001
	.quad	0x3febd3b8e4b87bdd              # double 0.86959500000000001
	.quad	0x400c64545846e8f3              # double 3.5489890000000002
	.quad	0x400e2ffd1dcd7061              # double 3.7734320000000001
	.quad	0x4003f993d5347a5b              # double 2.496864
	.quad	0x40096916ca46e08f              # double 3.1763129999999999
	.quad	0x40219363b256ffc1              # double 8.7878699999999998
	.quad	0x4023bb8950763a19              # double 9.8662819999999999
	.quad	0x3ff8b034b0e1b4bb              # double 1.5430189999999999
	.quad	0x3ff58fb86f47b678              # double 1.347588
	.quad	0x40239360d0247022              # double 9.7878480000000003
	.quad	0x401682f8bdec5f39              # double 5.6279019999999997
	.quad	0x401d34241c3efae8              # double 7.3009190000000004
	.quad	0x401abe83a109d063              # double 6.6860489999999997
	.quad	0x4021f365ecc3e319              # double 8.9753869999999996
	.quad	0x4005d81adea89763              # double 2.7305199999999998
	.quad	0x4019dd640e9d51b5              # double 6.466202
	.quad	0x4021e36f19934efd              # double 8.9442070000000005
	.quad	0x4020bcd31769a911              # double 8.368798
	.quad	0x4006447c30d306a3              # double 2.7834400000000001
	.quad	0x4018de48a58b3f64              # double 6.2170740000000002
	.quad	0x3fec494b380cb6c8              # double 0.88394700000000004
	.quad	0x401b6908e581cf78              # double 6.8525729999999996
	.quad	0x4023d9231c64ba95              # double 9.9240960000000004
	.quad	0x3fc3a0ad8a11665a              # double 0.15334100000000001
	.quad	0x40046daf4adbc665              # double 2.5535570000000001
	.quad	0x4018367f90d9d777              # double 6.0532209999999997
	.quad	0x401f4bc2fc69728a              # double 7.8239859999999997
	.quad	0x4015bcf398e97072              # double 5.4345230000000004
	.quad	0x4014d4c9c90c4dec              # double 5.2078009999999999
	.quad	0x401b816f86a09891              # double 6.8764019999999997
	.quad	0x3febcbc8c0ce91c9              # double 0.86862600000000001
	.quad	0x40178795b35b0bbf              # double 5.8824069999999997
	.quad	0x4021ae2584f4c6e7              # double 8.8401300000000003
	.quad	0x400c9c408d8ec95c              # double 3.576295
	.quad	0x4023c714fce746cc              # double 9.8888320000000007
	.quad	0x4011bdae81882adc              # double 4.4352359999999997
	.quad	0x3fd8e060fe47991c              # double 0.38869500000000001
	.quad	0x3fe3e3d1cc100e6b              # double 0.62156
	.quad	0x4020b075b3e1437c              # double 8.3446479999999993
	.quad	0x400f2af81626b2f2              # double 3.8959809999999999
	.quad	0x400cd4e874c8ffb9              # double 3.6039590000000001
	.quad	0x400dc4f765fd8adb              # double 3.7211750000000001
	.quad	0x4010de718a86d71f              # double 4.2172299999999998
	.quad	0x401686f694467382              # double 5.6318000000000001
	.quad	0x401e831b152f3c2e              # double 7.6280330000000003
	.quad	0x3ff71de481f53826              # double 1.444798
	.quad	0x40093fcb923a29c7              # double 3.1561499999999998
	.quad	0x4016e81c2e33eff2              # double 5.7266700000000004
	.quad	0x4013f6be37de939f              # double 4.9909600000000003
	.quad	0x3ff69a4484944ed7              # double 1.412663
	.quad	0x401bcb3e9a6f826f              # double 6.9484810000000001
	.quad	0x4019f5100a393ee6              # double 6.4893190000000001
	.quad	0x40222ca7503b81b6              # double 9.0872139999999995
	.quad	0x401fce7a311e85fd              # double 7.9516379999999999
	.quad	0x3ff023022dd7a9a0              # double 1.0085470000000001
	.quad	0x401461309c7ffde7              # double 5.0949119999999999
	.quad	0x3ff6fc9ff92f2b67              # double 1.4366760000000001
	.quad	0x401cf4f93bc0a06f              # double 7.2392320000000003
	.quad	0x401bc90fb65668c2              # double 6.9463489999999997
	.quad	0x4018492af9a8cdea              # double 6.071453
	.quad	0x401c6bfdb4cc2507              # double 7.1054599999999999
	.quad	0x3fe4e8d759ee88df              # double 0.65342299999999998
	.quad	0x401b771476af89c6              # double 6.8662890000000001
	.quad	0x401a84da9003eea2              # double 6.62974
	.quad	0x401a3bae89eba6ad              # double 6.5582830000000003
	.quad	0x402103b7f9d6f113              # double 8.507263
	.quad	0x40172de69ad42c3d              # double 5.7948250000000003
	.quad	0x4021d40bfe3b03e2              # double 8.9141539999999999
	.quad	0x4012e7a786c22681              # double 4.7262250000000003
	.quad	0x401bcd3415b1422d              # double 6.9503940000000002
	.quad	0x401e0d77318fc505              # double 7.5131500000000004
	.quad	0x4006826aa8eb4635              # double 2.8136800000000002
	.quad	0x40235b6e2eb1c433              # double 9.6785750000000003
	.quad	0x401f68a2ec28b2a7              # double 7.8521840000000002
	.quad	0x4013346e4c0df58c              # double 4.801202
	.quad	0x401986cd6c2efd44              # double 6.3816430000000004
	.quad	0x4000187ce95faa8b              # double 2.0119570000000002
	.quad	0x401a00ad46f587d7              # double 6.500661
	.quad	0x402272d98bf7f067              # double 9.224316
	.quad	0x400b143a647fdc59              # double 3.3848769999999999
	.quad	0x40110d05f2884838              # double 4.2627179999999996
	.quad	0x401bbed1394317ad              # double 6.9363450000000002
	.quad	0x3fcf6a93f290abb4              # double 0.24543999999999999
	.quad	0x4021f894a2b9d3cc              # double 8.9855090000000004
	.quad	0x401759bcfd4bf099              # double 5.8376349999999997
	.quad	0x40175fcc5b8dc550              # double 5.843553
	.quad	0x3ff9e513b5bf6a0e              # double 1.6184270000000001
	.quad	0x4008e4f3ba775fb3              # double 3.111793
	.quad	0x4002e03e63e8dda5              # double 2.3594940000000002
	.quad	0x4022e2fd75e2046c              # double 9.4433399999999991
	.quad	0x3ffa24a8c154c986              # double 1.63395
	.quad	0x40215f35e310dbf0              # double 8.6859579999999994
	.quad	0x3fe12730c67168f9              # double 0.53603400000000001
	.quad	0x401bbba4d6e47dc3              # double 6.9332459999999996
	.quad	0x3fff613e3e29307b              # double 1.961241
	.quad	0x4008bc6f36ef8056              # double 3.092009
	.quad	0x3fe7df41aef6f8f0              # double 0.74600299999999997
	.quad	0x4012fbf37b8d3f18              # double 4.7460459999999998
	.quad	0x400f36d7625204b0              # double 3.9017780000000002
	.quad	0x3fd2d88c1db0142f              # double 0.29446699999999998
	.quad	0x4022d9d12cadddf4              # double 9.4254239999999995
	.quad	0x3ffcead70e6f2e8c              # double 1.807334
	.quad	0x401f9ba83f4eca68              # double 7.9020089999999996
	.quad	0x401a17a7c9de0503              # double 6.5231009999999996
	.quad	0x4010c42a23bff8a9              # double 4.191567
	.quad	0x4020fe5b4245f5ae              # double 8.4967900000000007
	.quad	0x3feba00c0f01fb83              # double 0.86328700000000003
	.quad	0x4021bf9d909f1f15              # double 8.8742490000000007
	.quad	0x40201a7503b81b65              # double 8.0516740000000002
	.quad	0x401fd5ad106ee30d              # double 7.9586680000000002
	.quad	0x3fff8cc46950fc72              # double 1.971867
	.quad	0x4001d3e35c5b4aa9              # double 2.2284609999999998
	.quad	0x4003c7bd48cb4aed              # double 2.4725290000000002
	.quad	0x401584538ef34d6a              # double 5.3792249999999999
	.quad	0x40181d851654d61b              # double 6.0288279999999999
	.quad	0x400bfe9af5ba2be0              # double 3.4993189999999998
	.quad	0x400636b5d462c344              # double 2.7767140000000001
	.quad	0x40164a0232096788              # double 5.5722740000000002
	.quad	0x401b1426fe718a87              # double 6.7696800000000001
	.quad	0x4020037d41743e96              # double 8.0068149999999996
	.quad	0x400555347a5b0ff1              # double 2.666604
	.quad	0x3feb5fb9389b5200              # double 0.85543499999999995
	.quad	0x4006a3b0c4588a05              # double 2.8299270000000001
	.quad	0x40199f0ae536501e              # double 6.4053149999999999
	.quad	0x401d1e807bbb6241              # double 7.2797869999999998
	.quad	0x4012ff5caf2d7f95              # double 4.749377
	.quad	0x40191bba12b5e52a              # double 6.2770770000000002
	.quad	0x400006bce8533b10              # double 2.0032899999999998
	.quad	0x4009749d7ba6698c              # double 3.1819410000000001
	.quad	0x402234753e707e17              # double 9.1024569999999994
	.quad	0x40160d0247021d11              # double 5.5127040000000003
	.quad	0x400c5d441355475a              # double 3.5455399999999999
	.quad	0x3fe9e0956c0d6f54              # double 0.80866499999999996
	.quad	0x3ff72f9335d249e4              # double 1.4491149999999999
	.quad	0x4005671c53f39d1b              # double 2.6753469999999999
	.quad	0x3ffaba0b5ed8d36b              # double 1.6704209999999999
	.quad	0x4001b77ea1c68ec5              # double 2.2145969999999999
	.quad	0x400fe785b5b70692              # double 3.988048
	.quad	0x40201ed612c6ac21              # double 8.0602269999999994
	.quad	0x40117b79d909f1f1              # double 4.3705819999999997
	.quad	0x40031011904b3c3e              # double 2.3828459999999998
	.quad	0x4017cf98b71b8aa0              # double 5.952731
	.quad	0x3ff93e49b1fab96f              # double 1.577707
	.quad	0x4023ad1e321a2e7f              # double 9.8381209999999992
	.quad	0x4012dc4ef88b9778              # double 4.7151449999999997
	.quad	0x4015bed84d338f7a              # double 5.4363720000000004
	.quad	0x3fc71843c3a42f1f              # double 0.18042800000000001
	.quad	0x402370b45ae5ffa4              # double 9.7201260000000004
	.quad	0x40147ecb31c219eb              # double 5.1238219999999997
	.quad	0x4009cbca5375c8da              # double 3.224507
	.quad	0x4022980e27e0ef9a              # double 9.2969830000000009
	.quad	0x4011d60ed80a17b1              # double 4.459041
	.quad	0x400245332acfb763              # double 2.2837890000000001
	.quad	0x4015780f55de58e6              # double 5.3672459999999997
	.quad	0x4022e7368ad68837              # double 9.4515879999999992
	.quad	0x3fe4dfb506dd69d3              # double 0.652308
	.quad	0x4012d3608d08919f              # double 4.706423
	.quad	0x40215913404ea4a9              # double 8.6739750000000004
	.quad	0x4020a0678c0053e3              # double 8.3132900000000003
	.quad	0x4018ee6d9be4cd75              # double 6.2328400000000004
	.quad	0x4022cf255f3519bd              # double 9.4045819999999995
	.quad	0x40205b35b0bbf50e              # double 8.1781439999999996
	.quad	0x401f7d7f51efb6dd              # double 7.8725560000000003
	.quad	0x4010c642396073de              # double 4.1936119999999999
	.quad	0x3fffaa044ae85b9f              # double 1.9790080000000001
	.quad	0x4018895a294141ea              # double 6.1341330000000003
	.quad	0x401683c2dadb8349              # double 5.628673
	.quad	0x3fceddd6e04c0592              # double 0.241145
	.quad	0x4021a6b3dd11be6e              # double 8.8255909999999993
	.quad	0x400ae3df6db940ff              # double 3.3612660000000001
	.quad	0x4020b3c0a06e9ff1              # double 8.3510790000000004
	.quad	0x40183df58c08b75f              # double 6.0605070000000003
	.quad	0x40005733226c3b92              # double 2.0425779999999998
	.quad	0x401ae0dae3e6c4c6              # double 6.7195850000000004
	.quad	0x400f961f5be5d9e4              # double 3.948302
	.quad	0x3ff2c3e3193f6c27              # double 1.1728240000000001
	.quad	0x4007f6e1deacc921              # double 2.9955479999999999
	.quad	0x4023b2c27a63736d              # double 9.8491400000000002
	.quad	0x3ff0f45cfede97d0              # double 1.0596589999999999
	.quad	0x3fea3395c4220360              # double 0.81879699999999999
	.quad	0x401ddf9c62a1b5c8              # double 7.4683700000000001
	.quad	0x4012d67a52ac753e              # double 4.7094509999999996
	.quad	0x4020195d91ab8e8f              # double 8.0495420000000006
	.quad	0x3fe4b96073de1e2e              # double 0.64762900000000001
	.quad	0x3fbc88c60cbf2b24              # double 0.11146200000000001
	.quad	0x3fd3467be553ac4f              # double 0.30117699999999997
	.quad	0x400d2f06b37867f1              # double 3.6479620000000001
	.quad	0x4010ff301eabbcb2              # double 4.2492070000000002
	.quad	0x402022163fdd65a1              # double 8.0665759999999995
	.quad	0x3fe3c74751ce28ed              # double 0.61807599999999996
	.quad	0x400ff2f449129889              # double 3.99363
	.quad	0x3ffc19ff4fd6d7e9              # double 1.7563470000000001
	.quad	0x3ffc16ece13f4a99              # double 1.7555970000000001
	.quad	0x4022cf49f0e4da0a              # double 9.4048610000000004
	.quad	0x4010f3ca7503b81b              # double 4.2380769999999997
	.quad	0x40136c929aa1d756              # double 4.8560280000000002
	.quad	0x400a1ab9f559b3d0              # double 3.2630499999999998
	.quad	0x4023fa6e978d4fdf              # double 9.9891249999999995
	.quad	0x401c211a543f1c76              # double 7.0323270000000004
	.quad	0x401118ee28672757              # double 4.2743460000000004
	.quad	0x4004ac5fbf83382e              # double 2.5841669999999999
	.quad	0x4015f4488c60cbf3              # double 5.4885580000000003
	.quad	0x4022724399b2c40d              # double 9.2231719999999999
	.quad	0x4023f6b0b7c3504c              # double 9.9818169999999994
	.quad	0x4023a3ce4217d285              # double 9.8199330000000006
	.quad	0x400b86455eaee200              # double 3.4405619999999999
	.quad	0x40209e536501e258              # double 8.3092299999999994
	.quad	0x3fe595d701d9f4d3              # double 0.67454099999999995
	.quad	0x400125974e65bea1              # double 2.1433550000000001
	.quad	0x400d5fdcdf698783              # double 3.671808
	.quad	0x40146b4528283d36              # double 5.1047560000000001
	.quad	0x4019e6d71f36262d              # double 6.4754300000000002
	.quad	0x40003644955b4678              # double 2.0264980000000001
	.quad	0x401f63721d53cddd              # double 7.8471149999999996
	.quad	0x401d1925fe974a34              # double 7.274559
	.quad	0x4017aed56b00ffda              # double 5.9207359999999998
	.quad	0x3fffa0ac7da1ec4e              # double 1.9767269999999999
	.quad	0x4000cccff21b3aef              # double 2.100006
	.quad	0x4010228bb0a2ca9b              # double 4.0337360000000002
	.quad	0x3fe3caa326e11559              # double 0.61848599999999998
	.quad	0x40143cb039ef0f17              # double 5.059266
	.quad	0x401bec77574f722e              # double 6.9809239999999999
	.quad	0x4015f1e6cd29131f              # double 5.4862320000000002
	.quad	0x401e6fd1569f4906              # double 7.609197
	.quad	0x3fd83ae685db76b4              # double 0.37859500000000001
	.quad	0x401080e991ff7165              # double 4.1258910000000002
	.quad	0x400d823422467be5              # double 3.6885759999999999
	.quad	0x400bf79a6b50b0f2              # double 3.4958999999999998
	.quad	0x4011c264a16a4873              # double 4.4398369999999998
	.quad	0x400d76b3354c1227              # double 3.6829589999999999
	.quad	0x3ff3cd2e514c22ee              # double 1.2375929999999999
	.quad	0x3fccb93469941850              # double 0.22440199999999999
	.quad	0x3fe1a22b3892ee85              # double 0.55104600000000004
	.quad	0x4004516d2aa5c5f8              # double 2.5397590000000001
	.quad	0x40131d898b2e9ccb              # double 4.7788449999999996
	.quad	0x40206fa82e87d2c8              # double 8.2180800000000005
	.quad	0x3fd99552e2fbe33b              # double 0.39973900000000001
	.quad	0x3ff5cb827fa1a0cf              # double 1.362185
	.quad	0x4009c0c176577532              # double 3.2191190000000001
	.quad	0x402095870da5daf0              # double 8.2920459999999991
	.quad	0x400ba05681ecd4aa              # double 3.45329
	.quad	0x400824e93e1c9b41              # double 3.0180229999999999
	.quad	0x401c9810e8858ff7              # double 7.1485019999999997
	.quad	0x40106c5692b3cc4b              # double 4.1057990000000002
	.quad	0x40199020c49ba5e3              # double 6.3907499999999997
	.quad	0x4019fd50a88effe3              # double 6.4973780000000003
	.quad	0x4019acf7878b7a1c              # double 6.4189129999999999
	.quad	0x3ff554bf0995aaf8              # double 1.3331900000000001
	.quad	0x401d136b4c7f3494              # double 7.2689640000000004
	.quad	0x400d61815a07b353              # double 3.6726100000000002
	.quad	0x3ffe704ee7c49fd8              # double 1.9024190000000001
	.quad	0x40225c7f13059642              # double 9.1806570000000001
	.quad	0x401ca564f97edc7f              # double 7.1615180000000001
	.quad	0x4003a81fd9ba1b19              # double 2.4570919999999998
	.quad	0x402272de00d1b717              # double 9.2243499999999994
	.quad	0x4003c12cf0f9d2bf              # double 2.4693239999999999
	.quad	0x3fd339da16616b55              # double 0.30040600000000001
	.quad	0x400a7db6e503fb37              # double 3.3113839999999999
	.quad	0x402268a6117720c9              # double 9.2043920000000004
	.quad	0x401b56d6dc1a47aa              # double 6.8348040000000001
	.quad	0x4010b32e3821af7d              # double 4.1749809999999998
	.quad	0x402204fbdad7518b              # double 9.0097339999999999
	.quad	0x3ffc202539756c94              # double 1.7578480000000001
	.quad	0x4019091cd1c7de51              # double 6.2588990000000004
	.quad	0x4021456883771865              # double 8.6355629999999994
	.quad	0x4022826506141637              # double 9.2546769999999992
	.quad	0x4023f358298cc144              # double 9.9752819999999999
	.quad	0x401a678c0053e2d6              # double 6.6011199999999999
	.quad	0x4015e939eadd590c              # double 5.47776
	.quad	0x3feef082491afc05              # double 0.96685900000000002
	.quad	0x4015ae82517e77d5              # double 5.4204189999999999
	.quad	0x402323a732df505d              # double 9.5696349999999998
	.quad	0x4022165061416378              # double 9.0435820000000007
	.quad	0x4014d36eb4e98138              # double 5.2064769999999996
	.quad	0x3ff251d57ff9b563              # double 1.144979
	.quad	0x3feb7548ecd8dbcf              # double 0.85806700000000002
	.quad	0x4018195c42203600              # double 6.0247659999999996
	.quad	0x401962f2b66b6178              # double 6.3466290000000001
	.quad	0x3fff684dfce3150e              # double 1.9629650000000001
	.quad	0x4022350fe8ab4fa5              # double 9.1036370000000009
	.quad	0x40226b6b09635611              # double 9.2098010000000006
	.quad	0x402365479d4d8341              # double 9.6978120000000007
	.quad	0x400fcf566490a351              # double 3.9762390000000001
	.quad	0x3fd6eee957470eb2              # double 0.35833199999999998
	.quad	0x40166a0be5109071              # double 5.603561
	.quad	0x400316805a2d7300              # double 2.3859870000000001
	.quad	0x401bd2014727dcbe              # double 6.9550830000000001
	.quad	0x3fe0f1971c10d7bf              # double 0.52949100000000004
	.quad	0x40059dea465a5764              # double 2.7021069999999998
	.quad	0x40220ac36544fe37              # double 9.0210220000000003
	.quad	0x3ff4f414a4d2b2c0              # double 1.30959
	.quad	0x4012e773e24febd1              # double 4.7260280000000003
	.quad	0x401efe97d06bbdbe              # double 7.7486259999999998
	.quad	0x402213a109d0635a              # double 9.0383379999999995
	.quad	0x4020720e1f7d73c9              # double 8.2227639999999997
	.quad	0x40110bfdb4cc2507              # double 4.2617099999999999
	.quad	0x3ff33f43419e3001              # double 1.2029449999999999
	.quad	0x40123567125dd096              # double 4.5521510000000003
	.quad	0x4012a5ff609dcf89              # double 4.6621069999999998
	.quad	0x3fed5564b662fdfc              # double 0.91667399999999998
	.quad	0x401cdb5d462c343b              # double 7.2142229999999996
	.quad	0x4021f234a87e38eb              # double 8.973058
	.quad	0x400e017ebaf10236              # double 3.7507299999999999
	.quad	0x40181426351deefe              # double 6.0196769999999997
	.quad	0x401f4080303c07ee              # double 7.812989
	.quad	0x4010a9641f644956              # double 4.1654210000000003
	.quad	0x3ff6dddf43c7d5ed              # double 1.429168
	.quad	0x4013ed0e991ff716              # double 4.9815009999999997
	.quad	0x40230c011d3671ac              # double 9.5234459999999998
	.quad	0x40061fa0945f9df5              # double 2.7654429999999999
	.quad	0x401e95e80bed740c              # double 7.6463929999999998
	.quad	0x4011bd972cd7cf5f              # double 4.4351469999999997
	.quad	0x401ac96dd26b723f              # double 6.6967080000000001
	.quad	0x3ff890dcfcc5b8dc              # double 1.5353669999999999
	.quad	0x400d00a393ee5eee              # double 3.6253120000000001
	.quad	0x4001c615a8deb0fb              # double 2.2217210000000001
	.quad	0x4020b72990f301eb              # double 8.3577390000000005
	.quad	0x4019bd6b228dc982              # double 6.4349790000000002
	.quad	0x401be5d1c3ac929b              # double 6.9744330000000003
	.quad	0x40169f64cf8d716d              # double 5.6556579999999999
	.quad	0x400215f3519bd406              # double 2.2607179999999998
	.quad	0x3ffb12146a1a500d              # double 1.6919139999999999
	.quad	0x402185e17e34b945              # double 8.7614859999999997
	.quad	0x401fd34ce3de614a              # double 7.9563480000000002
	.quad	0x401b3323fee2c98e              # double 6.7999419999999997
	.quad	0x3fe6d857afea3df7              # double 0.71390900000000002
	.quad	0x4007e813cab81f97              # double 2.9883190000000002
	.quad	0x3ff2065300581494              # double 1.126544
	.quad	0x4017aa1016ce789e              # double 5.9160769999999996
	.quad	0x400ff44a1f080304              # double 3.9942820000000001
	.quad	0x4023eb44c37e6f72              # double 9.9595090000000006
	.quad	0x401d17b7414a4d2b              # double 7.2731599999999998
	.quad	0x401b8296b3354c12              # double 6.8775279999999999
	.quad	0x400efa33bd9cae21              # double 3.872169
	.quad	0x4023a607a28bb0a3              # double 9.8242770000000003
	.quad	0x4023cba797891e21              # double 9.8977629999999994
	.quad	0x3fd6b5393250b524              # double 0.35481099999999999
	.quad	0x401f8437824d4cba              # double 7.8791180000000001
	.quad	0x4008fec918e325d5              # double 3.1244070000000002
	.quad	0x40142148344c37e7              # double 5.032502
	.quad	0x400d047a17f4128c              # double 3.627186
	.quad	0x4020ab3d6c721922              # double 8.3344529999999999
	.quad	0x3fece770bd017daf              # double 0.90325200000000005
	.quad	0x3ff4cca1cef240fb              # double 1.2999590000000001
	.quad	0x4020e3641700cd85              # double 8.4441229999999994
	.quad	0x401d49799e518f3f              # double 7.3217530000000002
	.quad	0x401a43126e978d50              # double 6.5655000000000001
	.quad	0x3ff2a34b945308bc              # double 1.1648670000000001
	.quad	0x3ffd469835158b82              # double 1.8297349999999999
	.quad	0x400775fdcdf69878              # double 2.9326129999999999
	.quad	0x401455807fed2029              # double 5.0834979999999996
	.quad	0x40150e89a88ace25              # double 5.2641970000000002
	.quad	0x3ff7417fc7607c42              # double 1.4534910000000001
	.quad	0x401b188d2a1f8e3b              # double 6.7739760000000002
	.quad	0x401d7321a2e7f6f5              # double 7.3624330000000002
	.quad	0x401657c6327ed84d              # double 5.5857169999999998
	.quad	0x3ffbbaa68f4b61fe              # double 1.733069
	.quad	0x401afe225fa658c5              # double 6.7481780000000002
	.quad	0x4007076a7264a16a              # double 2.8786209999999999
	.quad	0x4003eb9a176ddacf              # double 2.49004
	.quad	0x3ffdf0a1be2b495a              # double 1.871248
	.quad	0x4013d68986fcdee3              # double 4.9595089999999997
	.quad	0x40215bcd78c436fc              # double 8.6793019999999998
	.quad	0x4013bfd694ccab3f              # double 4.9373420000000001
	.quad	0x4006c53fc0096feb              # double 2.8463129999999999
	.quad	0x3ffaa00f345069a5              # double 1.664077
	.quad	0x40195e1c58255b03              # double 6.3419049999999997
	.quad	0x40233d27a20578e6              # double 9.6194430000000004
	.quad	0x4020c30ea18372e7              # double 8.3809710000000006
	.quad	0x40204f325918a00a              # double 8.1546810000000001
	.quad	0x40208bf0fe047d3d              # double 8.2733229999999995
	.quad	0x40116437824d4cba              # double 4.3478680000000001
	.quad	0x40017a7221858bc6              # double 2.1847880000000002
	.quad	0x40030e1b4bb5e0f8              # double 2.381888
	.quad	0x4001d1f687b139c9              # double 2.2275209999999999
	.quad	0x401546149c6f36f0              # double 5.3184380000000004
	.quad	0x401e69a91105e1c1              # double 7.6031839999999997
	.quad	0x400137867f0aa21a              # double 2.1521119999999998
	.quad	0x3ff3248a58b3f63c              # double 1.196421
	.quad	0x4003f882278d0cc3              # double 2.4963419999999998
	.quad	0x401eb26e5471715c              # double 7.6742489999999997
	.quad	0x400386e43aa79bbb              # double 2.4408650000000001
	.quad	0x4010ac49774256bd              # double 4.1682490000000003
	.quad	0x401f7015c209246c              # double 7.8594580000000001
	.quad	0x40138de7a743a648              # double 4.888579
	.quad	0x4022a93660e51d26              # double 9.3304930000000006
	.quad	0x401705d851654d62              # double 5.7557080000000003
	.quad	0x400e860f5e41d4b7              # double 3.8154590000000002
	.quad	0x4013a7be121ee675              # double 4.9138109999999999
	.quad	0x400a26fc58ab92c0              # double 3.2690359999999998
	.quad	0x4012cdffc5479d4e              # double 4.7011710000000004
	.quad	0x3ff79e7d9988d2a2              # double 1.476194
	.quad	0x4021dc1d4b6a619e              # double 8.9299110000000006
	.quad	0x401f6a90cd423d92              # double 7.8540679999999998
	.quad	0x4022f342aa9f7b5b              # double 9.4751180000000001
	.quad	0x401edfb97bb73083              # double 7.7184809999999997
	.quad	0x3ff1af62f9ca5bd9              # double 1.1053189999999999
	.quad	0x400ed4b61fe21d97              # double 3.853863
	.quad	0x4015a2452c59fb1e              # double 5.4084669999999999
	.quad	0x40228a2ee41919ac              # double 9.2698889999999991
	.quad	0x40189666234a87e4              # double 6.1468740000000004
	.quad	0x400fc4a8c154c986              # double 3.971025
	.quad	0x40100ba237cdcca7              # double 4.011361
	.quad	0x401c4cffa7eb6bf4              # double 7.0751939999999998
	.quad	0x401014dc65c70436              # double 4.0203720000000001
	.quad	0x4004e4e1e71044f2              # double 2.6117590000000002
	.quad	0x4012691d14e3bcd3              # double 4.6026499999999997
	.quad	0x4022d814d72799a2              # double 9.422034
	.quad	0x3fe70bcbe61cffeb              # double 0.72019
	.quad	0x40207e518f3eccc4              # double 8.2467159999999992
	.quad	0x40152f355cd91eeb              # double 5.2961020000000003
	.quad	0x400011eafee6fb4c              # double 2.0087489999999999
	.quad	0x3feab8151a437825              # double 0.83497100000000002
	.quad	0x3fffa4ece9a2c669              # double 1.977765
	.quad	0x3fff9d4c76d117b5              # double 1.975903
	.quad	0x401a96833c60029f              # double 6.6469849999999999
	.quad	0x3ffe5ea465a57647              # double 1.8981060000000001
	.quad	0x4020972a5a469d73              # double 8.2952449999999995
	.quad	0x4004235e74299d88              # double 2.5172699999999999
	.quad	0x401303a7daa4fca4              # double 4.7535699999999999
	.quad	0x401726e08f217093              # double 5.7879659999999999
	.quad	0x3ff2834e3369b9d8              # double 1.157057
	.quad	0x4017609917939a7c              # double 5.8443339999999999
	.quad	0x4004ceb356da0169              # double 2.6009280000000001
	.quad	0x40054f25a250f840              # double 2.663646
	.quad	0x401760a30db6a1e8              # double 5.8443719999999999
	.quad	0x4021ef110e453d21              # double 8.9669270000000001
	.quad	0x4014626138fffbce              # double 5.0960739999999998
	.quad	0x4014c861a60d4563              # double 5.1956850000000001
	.quad	0x4016424aada33bda              # double 5.5647380000000002
	.quad	0x3fc992f2b66b6178              # double 0.199797
	.quad	0x3fd50c23fab10ba6              # double 0.32886599999999999
	.quad	0x4014300c0f01fb83              # double 5.0469210000000002
	.quad	0x3ff80cf398e97072              # double 1.5031620000000001
	.quad	0x400e34213a0c6b48              # double 3.7754539999999999
	.quad	0x40011a5fc7e6b3ff              # double 2.1378780000000002
	.quad	0x3ff5c77bbf93ff26              # double 1.361202
	.quad	0x40225d59b3d07c85              # double 9.1823250000000005
	.quad	0x40215d7bc7f77af6              # double 8.6825849999999996
	.quad	0x401ba2f87ad080b6              # double 6.9091509999999996
	.quad	0x400fbdc69f8c21e2              # double 3.9676640000000001
	.quad	0x3feada272862f599              # double 0.83913000000000004
	.quad	0x400ff82ba5a03819              # double 3.9961769999999999
	.quad	0x4008b3ccd0fe8ab5              # double 3.087793
	.quad	0x4014ec3e74afd545              # double 5.2307069999999998
	.quad	0x40072576cce5f740              # double 2.8932929999999999
	.quad	0x401e95e2cdc011d3              # double 7.6463729999999996
	.quad	0x401b8a697aeddce8              # double 6.8851680000000002
	.quad	0x3fff8266772d5e07              # double 1.969336
	.quad	0x3ff279de481f5382              # double 1.1547529999999999
	.quad	0x3ff26b8e8ea39c52              # double 1.151259
	.quad	0x40064ce89656eefa              # double 2.7875529999999999
	.quad	0x401abe27e0ef9980              # double 6.6856989999999996
	.quad	0x400c04ec636b0963              # double 3.5024039999999999
	.quad	0x4020217204295a6c              # double 8.0653229999999993
	.quad	0x400f55097c80841f              # double 3.9165220000000001
	.quad	0x401f53797460242d              # double 7.8315179999999999
	.quad	0x402142c29bf162ae              # double 8.6303909999999995
	.quad	0x40200f0fbeb9e493              # double 8.0294170000000005
	.quad	0x401b711d798d8a98              # double 6.8604640000000003
	.quad	0x4020e60999dcb578              # double 8.4492919999999998
	.quad	0x40034a5efe931876              # double 2.411314
	.quad	0x3fdb4dd72367e415              # double 0.42662600000000001
	.quad	0x3ffb97e77d523b36              # double 1.724586
	.quad	0x402293313be22e5e              # double 9.2874850000000002
	.quad	0x4004b1e85fd04a30              # double 2.5868690000000001
	.quad	0x401df545846e8f2a              # double 7.4895230000000002
	.quad	0x4006f87e7c06e19c              # double 2.8713350000000002
	.quad	0x3ff3657d9dba908a              # double 1.212278
	.quad	0x401414827b6fe2e7              # double 5.0200290000000001
	.quad	0x401cf56798958d9b              # double 7.2396529999999997
	.quad	0x4015f6b4c7f34938              # double 5.4909239999999997
	.quad	0x401ce8848387df5d              # double 7.227068
	.quad	0x4008c3b7952d234f              # double 3.0955650000000001
	.quad	0x402042d1d041cc53              # double 8.1305069999999997
	.quad	0x3ff567f90d9d7775              # double 1.3378840000000001
	.quad	0x40121aa68f4b61fe              # double 4.5260259999999999
	.quad	0x4014c22e5de15ca7              # double 5.1896300000000002
	.quad	0x401d84a771c970f8              # double 7.3795450000000002
	.quad	0x3fd20ab713272431              # double 0.28190399999999999
	.quad	0x401a7a77e5eaab04              # double 6.6195979999999999
	.quad	0x4000f6b441bb8c33              # double 2.1204610000000002
	.quad	0x3ff28c5eb313be23              # double 1.15927
	.quad	0x401500984e3ffef4              # double 5.2505810000000004
	.quad	0x3ff5db1d92b7fe09              # double 1.3659950000000001
	.quad	0x3ff0d873ffac1d2a              # double 1.052845
	.quad	0x401fd780fdc1615f              # double 7.9604530000000002
	.quad	0x4022c2ec28b2a6b1              # double 9.3807080000000002
	.quad	0x4021348387df5cf2              # double 8.6025659999999995
	.quad	0x40234441fea8112c              # double 9.6333160000000006
	.quad	0x400710b417ca2121              # double 2.8831560000000001
	.quad	0x401b7e835dedf1e1              # double 6.8735480000000004
	.quad	0x40108728e92d55a4              # double 4.1319920000000003
	.quad	0x3ffca37cdcca70d2              # double 1.789914
	.quad	0x3f9f2d7f950b955f              # double 0.030446999999999998
	.quad	0x4019106a6e32e382              # double 6.2660309999999999
	.quad	0x3fd1ad18d25edd05              # double 0.27618999999999999
	.quad	0x40150d29dc725c3e              # double 5.2628550000000001
	.quad	0x4016665ecc3e3194              # double 5.599971
	.quad	0x4002ef1800a7c5ac              # double 2.3667449999999999
	.quad	0x3ff72481f53825e1              # double 1.4464129999999999
	.quad	0x401eaf8ceb356da0              # double 7.6714359999999999
	.quad	0x401fe60913a4f872              # double 7.9746439999999996
	.quad	0x4008f96d8f4f93bc              # double 3.121791
	.quad	0x402296d30f062d41              # double 9.2945790000000006
	.quad	0x400905471715c63b              # double 3.1275770000000001
	.quad	0x3fe0fd1351159c49              # double 0.53089299999999995
	.quad	0x4019524e59296702              # double 6.3303770000000004
	.quad	0x401a241e14bdfd26              # double 6.5352709999999998
	.quad	0x4011c1904b3c3e75              # double 4.4390270000000003
	.quad	0x40031e3e29307af2              # double 2.389767
	.quad	0x4010a559b3d07c85              # double 4.1614750000000003
	.quad	0x3fec5e19fc2a886a              # double 0.88648700000000002
	.quad	0x401e5fe0ce0b912e              # double 7.5936310000000002
	.quad	0x4020ded8b1dd5d3e              # double 8.4352470000000004
	.quad	0x3ff64fd9fd36f7e4              # double 1.394495
	.quad	0x4023d010c6f7a0b6              # double 9.9063780000000001
	.quad	0x400147af20ea5b53              # double 2.160002
	.quad	0x400cc56473471f79              # double 3.5963829999999999
	.quad	0x4001a763a1900820              # double 2.2067329999999998
	.quad	0x40227cf206423960              # double 9.2440339999999992
	.quad	0x40003d9d3458cd21              # double 2.0300850000000001
	.quad	0x3fe76bfca85caafc              # double 0.73193200000000003
	.quad	0x40137a897635e743              # double 4.8696650000000004
	.quad	0x3fcc73f748a15981              # double 0.22228899999999999
	.quad	0x4011a79bfdf7e804              # double 4.4136810000000004
	.quad	0x40029542a23bff8b              # double 2.3228810000000002
	.quad	0x3fff97dbf487fcb9              # double 1.974575
	.quad	0x40049c68661ae70c              # double 2.576371
	.quad	0x40214246bf01322f              # double 8.6294459999999997
	.quad	0x40157e1c58255b03              # double 5.3731549999999997
	.quad	0x40222c4f3ba775fb              # double 9.0865419999999997
	.quad	0x401580079a2834d2              # double 5.3750289999999996
	.quad	0x3ff6d001d5c31594              # double 1.425783
	.quad	0x4004b65ba6efc372              # double 2.5890420000000001
	.quad	0x4013df37329c347f              # double 4.9679840000000004
	.quad	0x40133733226c3b92              # double 4.8039059999999996
	.quad	0x401ca9d55e6bc622              # double 7.1658530000000003
	.quad	0x402128281ba7fc33              # double 8.5784310000000001
	.quad	0x401c2948dc11e42e              # double 7.0403169999999999
	.quad	0x401913a08398a655              # double 6.2691670000000004
	.quad	0x4023892684cf073a              # double 9.7678720000000006
	.quad	0x40173fd71b046845              # double 5.8123440000000004
	.quad	0x400ed7318fc50481              # double 3.8550749999999998
	.quad	0x4009c14f8b588e37              # double 3.2193900000000002
	.quad	0x4023fcd056c508b3              # double 9.9937769999999996
	.quad	0x40198945308bb906              # double 6.3840529999999998
	.quad	0x4021da3571d1d474              # double 8.9261890000000008
	.quad	0x4023defc7a398202              # double 9.9355200000000004
	.quad	0x4013d56b00ffda40              # double 4.9584159999999997
	.quad	0x4012344fa05143bf              # double 4.5510849999999996
	.quad	0x40010d362e903644              # double 2.1314510000000002
	.quad	0x4022daa23bff8a8f              # double 9.4270189999999995
	.quad	0x4018c42f61ed5ae2              # double 6.1915870000000002
	.quad	0x3fff4eb8950763a2              # double 1.9567190000000001
	.quad	0x4014396d4c33b539              # double 5.0560809999999998
	.quad	0x401a18e864020818              # double 6.524324
	.quad	0x400375e17e34b945              # double 2.4325589999999999
	.quad	0x401171f926c7eae6              # double 4.3613020000000002
	.quad	0x3ffa57353b4b2fa9              # double 1.6462909999999999
	.quad	0x401252085b18548b              # double 4.5801100000000003
	.quad	0x4021749ba5e353f8              # double 8.7277500000000003
	.quad	0x400a4ed3d859c8c9              # double 3.2884899999999999
	.quad	0x40200abb01c92ddc              # double 8.0209580000000002
	.quad	0x4020274a1272c94b              # double 8.0767369999999996
	.quad	0x400a7bb1f255f352              # double 3.3103980000000002
	.quad	0x402026aee2003ab8              # double 8.0755529999999993
	.quad	0x4016ee974a3400b9              # double 5.7329990000000004
	.quad	0x401ccfc0096feb4a              # double 7.2028809999999996
	.quad	0x3fd7f1c75818c5ca              # double 0.37413200000000002
	.quad	0x401a2fcac8e68e3f              # double 6.546672
	.quad	0x40183027d88c1db0              # double 6.0470269999999999
	.quad	0x40087f2ecf206424              # double 3.0621010000000002
	.quad	0x40218c52e72da123              # double 8.77407
	.quad	0x3fe193a4f8726d05              # double 0.54927300000000001
	.quad	0x3fff2837f7be121f              # double 1.947319
	.quad	0x4022ede1c15097c8              # double 9.4646129999999999
	.quad	0x40103f5d78811b1e              # double 4.0618800000000004
	.quad	0x40212c26bb55ac04              # double 8.586233
	.quad	0x4017b3aa369fcf3e              # double 5.9254540000000002
	.quad	0x4018d74ff865d7cb              # double 6.2102659999999998
	.quad	0x4016d839cd8127b3              # double 5.7111580000000002
	.quad	0x400751ae2da554b9              # double 2.9148830000000001
	.quad	0x4023f290470a808d              # double 9.9737570000000008
	.quad	0x40188e4d5d80e497              # double 6.1389670000000001
	.quad	0x40232abb01c92ddc              # double 9.5834580000000002
	.quad	0x3ff9ce1b4bb5e0f8              # double 1.612819
	.quad	0x40111b1704ff4342              # double 4.2764550000000003
	.quad	0x4022d2d96a6a0126              # double 9.4118150000000007
	.quad	0x4007ab1e5c0b9991              # double 2.9585539999999999
	.quad	0x3ff056a26e547171              # double 1.0211509999999999
	.quad	0x40002ffb8b263950              # double 2.0234290000000001
	.quad	0x400a1fe111276fb1              # double 3.2655660000000002
	.quad	0x3feab3c60029f16b              # double 0.83444499999999999
	.quad	0x4000cef1bac2df0d              # double 2.1010469999999999
	.quad	0x4015411f926c7eae              # double 5.3135969999999997
	.quad	0x401623526527a205              # double 5.5344939999999996
	.quad	0x3ff0609bb6aa4b99              # double 1.0235860000000001
	.quad	0x4018788051c9f72f              # double 6.1176769999999996
	.quad	0x3fe8d7cd466f501a              # double 0.77634300000000001
	.quad	0x40187f0cbaf965b2              # double 6.124072
	.quad	0x4021587a8d64d7f1              # double 8.6728100000000001
	.quad	0x40101b9170d62bf1              # double 4.0269219999999999
	.quad	0x40093320d9945b6c              # double 3.1499649999999999
	.quad	0x3ff8ac764adff823              # double 1.5421050000000001
	.quad	0x401ffa22706d5065              # double 7.9942719999999996
	.quad	0x3fe02d96a6a0125a              # double 0.50556500000000004
	.quad	0x3ffe628134480629              # double 1.899049
	.quad	0x3fee8bbf50e34763              # double 0.95455900000000005
	.quad	0x400eaced4e4c942d              # double 3.8344369999999999
	.quad	0x3ff66b1704ff4342              # double 1.4011450000000001
	.quad	0x401ed8e4755ffe6d              # double 7.7118089999999996
	.quad	0x401d167125dd095b              # double 7.271916
	.quad	0x401234cc6822ff09              # double 4.5515610000000004
	.quad	0x4023886940357a35              # double 9.7664279999999994
	.quad	0x4016857646ae3a3b              # double 5.6303340000000004
	.quad	0x401c02fc69728a61              # double 7.0029159999999999
	.quad	0x401879c1f85d744f              # double 6.1189039999999997
	.quad	0x40209482e019b0ab              # double 8.2900609999999997
	.quad	0x4013c3efae7924af              # double 4.941344
	.quad	0x40214b75ea67e847              # double 8.6473840000000006
	.quad	0x40192d65a14488c6              # double 6.294333
	.quad	0x40072c7325918a01              # double 2.8967040000000002
	.quad	0x40122531db445ed5              # double 4.5363230000000003
	.quad	0x3ff5d0edc3bd5992              # double 1.3635079999999999
	.quad	0x4020f71c75818c5d              # double 8.4826390000000007
	.quad	0x4008b89a459103c9              # double 3.0901380000000001
	.quad	0x3ffa615b9a5a89b9              # double 1.6487689999999999
	.quad	0x4009c543f1c75819              # double 3.2213210000000001
	.quad	0x3ff4c9cb252ce033              # double 1.299266
	.quad	0x4013d90752da9867              # double 4.9619419999999996
	.quad	0x40121b79d909f1f1              # double 4.5268319999999997
	.quad	0x4017b029f16b11c7              # double 5.9220350000000002
	.quad	0x4022396bfca85cab              # double 9.112152
	.quad	0x401f35bff04577d9              # double 7.8024899999999997
	.quad	0x402142159817b95a              # double 8.6290709999999997
	.quad	0x400ece779207d4e1              # double 3.8508140000000002
	.quad	0x400dd296f6512a95              # double 3.727827
	.quad	0x3ffb5cb6848beb5b              # double 1.710135
	.quad	0x4023f917b5286b59              # double 9.9865089999999998
	.quad	0x4004a82d7b634dad              # double 2.5821179999999999
	.quad	0x401c415a4acf312b              # double 7.0638209999999999
	.quad	0x4013862d40aaeafb              # double 4.8810320000000003
	.quad	0x4023b88377186552              # double 9.8603780000000008
	.quad	0x3ff88a7d6733ebc0              # double 1.533811
	.quad	0x4022540a4a05dd90              # double 9.1641410000000008
	.quad	0x3ffb8b827fa1a0cf              # double 1.72156
	.quad	0x4021dcdf47f993d5              # double 8.9313909999999996
	.quad	0x3ff99cffeb074a77              # double 1.60083
	.quad	0x3ff18981beb18117              # double 1.096071
	.quad	0x401ee33ebbfd71b0              # double 7.7219189999999998
	.quad	0x3fe280d801b43526              # double 0.57822799999999996
	.quad	0x40221797aaac1095              # double 9.0460790000000006
	.quad	0x401afeed45e9185d              # double 6.7489520000000001
	.quad	0x3ff6a597d49d7ba6              # double 1.4154279999999999
	.quad	0x3ff18ad9ad85dfa8              # double 1.0963989999999999
	.quad	0x401dd02cd39da166              # double 7.4532959999999999
	.quad	0x3fad273d5bab2181              # double 0.056939999999999998
	.quad	0x4020fdcfede97d07              # double 8.4957270000000005
	.quad	0x401fb0bc382a12f9              # double 7.9225929999999999
	.quad	0x3ffbf2c625e99e95              # double 1.7467710000000001
	.quad	0x3ffefd9018e75793              # double 1.9369050000000001
	.quad	0x400055f2452c59fb              # double 2.0419659999999999
	.quad	0x40228a1682f94424              # double 9.2697029999999998
	.quad	0x401a2a5e785b5b70              # double 6.5413759999999996
	.quad	0x4015ecfa26a22b39              # double 5.4814230000000004
	.quad	0x401556bca5375c8e              # double 5.3347040000000003
	.quad	0x3fdd55d1c3ac929b              # double 0.45836300000000002
	.quad	0x400d74940bbb1f25              # double 3.6819229999999998
	.quad	0x401f100192a73711              # double 7.7656309999999999
	.quad	0x401b7b4e54f7a919              # double 6.8704159999999996
	.quad	0x40148eb5b2d4d402              # double 5.1393649999999997
	.quad	0x3fbb7da61e0c5a81              # double 0.107386
	.quad	0x4020838433d6c722              # double 8.2568680000000008
	.quad	0x400794d48882f0e1              # double 2.9476710000000002
	.quad	0x3ff428b3b320535d              # double 1.2599370000000001
	.quad	0x401632a497fa5d29              # double 5.5494560000000002
	.quad	0x3ff6de5f30e7ff58              # double 1.4292899999999999
	.quad	0x4012b2c625e99e95              # double 4.6745840000000003
	.quad	0x3ffe3312b1b36bd3              # double 1.8874690000000001
	.quad	0x400149070fbeb9e5              # double 2.1606580000000002
	.quad	0x3fabdec5f394b7b3              # double 0.054434000000000003
	.quad	0x40131f6f4be835df              # double 4.7806980000000001
	.quad	0x401690fa15db3398              # double 5.6415790000000001
	.quad	0x40148ccfaeff5c6c              # double 5.1375109999999999
	.quad	0x40121a2014727dcc              # double 4.5255130000000001
	.quad	0x40231bdf6db940ff              # double 9.5544390000000003
	.quad	0x3ff2c92ff4ba51a0              # double 1.174118
	.quad	0x3fce976bc1eff9f8              # double 0.23899599999999999
	.quad	0x3fe3a856605ee569              # double 0.61429900000000004
	.quad	0x3fedb8d3f1843c3a              # double 0.92881199999999997
	.quad	0x400a9ff47735c183              # double 3.328103
	.quad	0x4022d60fa15db339              # double 9.4180879999999991
	.quad	0x4020a051654d61b3              # double 8.3131210000000006
	.quad	0x3ff69f255f3519bd              # double 1.4138539999999999
	.quad	0x40071d44998d0460              # double 2.8892910000000001
	.quad	0x401368d25edd0529              # double 4.8523649999999998
	.quad	0x4023d2d6238da3c2              # double 9.9117899999999999
	.quad	0x4012fc02afdda8bd              # double 4.7461039999999999
	.quad	0x3ffc2d72ffd1dcd7              # double 1.761096
	.quad	0x40113d9f4d37c137              # double 4.3101779999999996
	.quad	0x402273d09e12a51e              # double 9.2262009999999997
	.quad	0x401d3d46f587d6f9              # double 7.3098409999999996
	.quad	0x400465c13fd0d068              # double 2.5496850000000002
	.quad	0x3ff66d5cfaacd9e8              # double 1.4016999999999999
	.quad	0x401339107faa044b              # double 4.8057270000000001
	.quad	0x401f80068db8bac7              # double 7.8750249999999999
	.quad	0x4014cccd96206855              # double 5.2000029999999997
	.quad	0x3fe243dee78183f9              # double 0.57078499999999999
	.quad	0x3ff58b630a91537a              # double 1.34653
	.quad	0x401e074e22a2c237              # double 7.5071339999999997
	.quad	0x4012dcd855970b4a              # double 4.7156690000000001
	.quad	0x401e8f4a558ea7ce              # double 7.6399319999999999
	.quad	0x400bc3f359ff4fd7              # double 3.4706790000000001
	.quad	0x4020b46e2a80064b              # double 8.3524030000000007
	.quad	0x4021a142d490e66d              # double 8.8149630000000005
	.quad	0x40191144cbe1eb42              # double 6.266864
	.quad	0x4011d59b8023a6ce              # double 4.4586009999999998
	.quad	0x4003c6e3b46fdeb5              # double 2.4721139999999999
	.quad	0x4012021815a07b35              # double 4.5020449999999999
	.quad	0x400ad07a6bd6e8b0              # double 3.3517960000000002
	.quad	0x3fb35818c5c9a34d              # double 0.075563000000000005
	.quad	0x3fe71b823c85c24c              # double 0.72210799999999997
	.quad	0x402185ffe6d58c8f              # double 8.7617180000000001
	.quad	0x401847d9988d2a20              # double 6.0701660000000004
	.quad	0x4002b7396d0917d7              # double 2.3394650000000001
	.quad	0x3fd8f398e9707182              # double 0.38986799999999999
	.quad	0x3fc3d9231c64ba95              # double 0.15506400000000001
	.quad	0x3ff21101b003686a              # double 1.1291519999999999
	.quad	0x4013be0c17657753              # double 4.9355929999999999
	.quad	0x401960470a808c82              # double 6.3440209999999997
	.quad	0x4013a2b302f72b45              # double 4.9088859999999999
	.quad	0x4011cfc19c17225b              # double 4.4528869999999996
	.quad	0x402238aaa7ded6bb              # double 9.1106770000000008
	.quad	0x4022f67c06e19b91              # double 9.4814150000000001
	.quad	0x401ae31b584b1ab1              # double 6.7217840000000004
	.quad	0x400e83bc4d22c882              # double 3.814324
	.quad	0x40107d12018a43bb              # double 4.1221389999999998
	.quad	0x4016373affb04ee8              # double 5.5539360000000002
	.quad	0x401ae1975f2cb641              # double 6.7203039999999996
	.quad	0x401bb909289dadfb              # double 6.9306989999999997
	.quad	0x40203bb0a2ca9ac3              # double 8.1165819999999993
	.quad	0x4022b995cc857f30              # double 9.3624709999999993
	.quad	0x40092d6a161e4f76              # double 3.1471749999999998
	.quad	0x3febf544bb1af3a1              # double 0.87368999999999997
	.quad	0x4023c1b4bb5e0f80              # double 9.8783320000000003
	.quad	0x401131eafee6fb4c              # double 4.2987479999999998
	.quad	0x401fd2c27a63736d              # double 7.9558200000000001
	.quad	0x401910eb67c286f9              # double 6.2665230000000003
	.quad	0x401207ebaf102364              # double 4.5077350000000003
	.quad	0x40232c059210385c              # double 9.5859799999999992
	.quad	0x3ffe4488c60cbf2b              # double 1.891732
	.quad	0x401de06573215fcc              # double 7.4691369999999999
	.quad	0x40203897635e742a              # double 8.1105300000000007
	.quad	0x4020d5bb9cf9a06a              # double 8.4174469999999992
	.quad	0x4020e7f8ca8198f2              # double 8.4530700000000003
	.quad	0x4003a191148fd9fd              # double 2.4538899999999999
	.quad	0x402145b61bb05faf              # double 8.6361550000000005
	.quad	0x4023c0d0cc35ce18              # double 9.8765929999999997
	.quad	0x4017fedfe75bc44c              # double 5.998901
	.quad	0x401b214a90470a81              # double 6.7825110000000004
	.quad	0x401e752977c88e7a              # double 7.6144160000000003
	.quad	0x40043c5d63886595              # double 2.5294750000000001
	.quad	0x4009e7e52157689d              # double 3.2382300000000002
	.quad	0x400f1899392189be              # double 3.8870110000000002
	.quad	0x40115cfaacd9e83e              # double 4.3407999999999998
	.quad	0x4002af1dc50ce4eb              # double 2.3355060000000001
	.quad	0x3ffb1105e1c15098              # double 1.691656
	.quad	0x40232d7a99fa11a9              # double 9.5888259999999991
	.quad	0x3feee81882adc4ca              # double 0.96583200000000002
	.quad	0x402156ca46e08f21              # double 8.6695119999999992
	.quad	0x3fe8543aeab7995f              # double 0.76028200000000001
	.quad	0x40204b27aa68f4b6              # double 8.1467869999999998
	.quad	0x401cb11b60ae9681              # double 7.1729560000000001
	.quad	0x4017b0c0ad03d9a9              # double 5.9226099999999997
	.quad	0x4013e68a936c58ef              # double 4.9751380000000003
	.quad	0x401304d1e96c3fc4              # double 4.7547069999999998
	.quad	0x40138672324c8366              # double 4.8812949999999997
	.quad	0x3fc7d9988d2a1f8e              # double 0.18632799999999999
	.quad	0x400cdbad3a604e1e              # double 3.6072639999999998
	.quad	0x401bcd10f51ac9b0              # double 6.9502600000000001
	.quad	0x3fea4057082491b0              # double 0.82035400000000003
	.quad	0x3ffd48637bd05af7              # double 1.830173
	.quad	0x4022ffc32ebe596d              # double 9.4995360000000008
	.quad	0x3ffcec083126e979              # double 1.807625
	.quad	0x4008fd188f42fe82              # double 3.1235819999999999
	.quad	0x3ffb33eff1950332              # double 1.70018
	.quad	0x40135588e368f084              # double 4.8335299999999997
	.quad	0x4010aab3aabcd78c              # double 4.1667009999999998
	.quad	0x3ffb27dfe32a0664              # double 1.697235
	.quad	0x401fc3df2a9d627c              # double 7.941281
	.quad	0x40056ff0025bfad3              # double 2.6796570000000002
	.quad	0x3ff6897204295a6c              # double 1.4085559999999999
	.quad	0x401134ea4a8c154d              # double 4.3016750000000004
	.quad	0x401b8a68b19a415f              # double 6.8851649999999998
	.quad	0x4001dcfcc5b8dc55              # double 2.232904
	.quad	0x4006a2f7b17ce52e              # double 2.829574
	.quad	0x4019379d0a67620f              # double 6.3043100000000001
	.quad	0x3fecaf78feef5ec8              # double 0.89641999999999999
	.quad	0x4022f869c66d373b              # double 9.485182
	.quad	0x3ff732b239a38fbd              # double 1.4498770000000001
	.quad	0x3fbaa4ebdd334c5e              # double 0.104079
	.quad	0x4020d096dd26b724              # double 8.4074010000000001
	.quad	0x3feabcf91a32b12d              # double 0.83556799999999998
	.quad	0x40198db8bac710cb              # double 6.3883999999999999
	.quad	0x40214f3b42cc2d6b              # double 8.6547490000000007
	.quad	0x40229de9c0229a5f              # double 9.3084240000000005
	.quad	0x401624523f67f4dc              # double 5.5354700000000001
	.quad	0x4020b9eafee6fb4c              # double 8.3631209999999995
	.quad	0x4007923cc8de2ac3              # double 2.9464049999999999
	.quad	0x400c2bbba55d1c3b              # double 3.5213540000000001
	.quad	0x40236f65dbfceb79              # double 9.7175740000000008
	.quad	0x400286455eaee200              # double 2.3155619999999999
	.quad	0x4020e3fd933e35c6              # double 8.4452940000000005
	.quad	0x3fd5f1e4b44a1f08              # double 0.342889
	.quad	0x401acb990afe60c4              # double 6.6988260000000004
	.quad	0x3ff021682f944242              # double 1.0081560000000001
	.quad	0x402376b18116ebd5              # double 9.7318230000000003
	.quad	0x401c2d6f544bb1af              # double 7.0443699999999998
	.quad	0x40136b2f661f18ca              # double 4.854673
	.quad	0x40090d6883771865              # double 3.1315469999999999
	.quad	0x4017bd61b2a27f1b              # double 5.9349429999999996
	.quad	0x4001578897e99631              # double 2.1677409999999999
	.quad	0x4003009fe86833c6              # double 2.375305
	.quad	0x401c953198288052              # double 7.1456970000000002
	.quad	0x4020c36b8f9b1316              # double 8.3816799999999994
	.quad	0x3fd203ff69014b5a              # double 0.28149400000000002
	.quad	0x40189fbc1acde1a0              # double 6.1559910000000002
	.quad	0x4023e4d6e47dc37a              # double 9.9469519999999996
	.quad	0x4005a827b6fe2e6f              # double 2.7071070000000002
	.quad	0x4007b11e85fd04a3              # double 2.961484
	.quad	0x40175415b1422ccb              # double 5.8321139999999998
	.quad	0x401a23dd54da4ce8              # double 6.5350239999999999
	.quad	0x4007307faa044ae8              # double 2.8986809999999998
	.quad	0x4017e7620ee8d10f              # double 5.9759599999999997
	.quad	0x4016e0d9d7774aba              # double 5.7195809999999998
	.quad	0x40035253543aeab8              # double 2.4151980000000002
	.quad	0x40157bc48f10a99b              # double 5.3708669999999996
	.quad	0x401fe7c6fbd273d6              # double 7.9763450000000002
	.quad	0x3fe33d9ec7000432              # double 0.60127200000000003
	.quad	0x3ff3e83b1d0c8041              # double 1.244197
	.quad	0x400dcfd86a8fc0d3              # double 3.7264870000000001
	.quad	0x40229c5cdd50a88f              # double 9.305396
	.quad	0x3fdd1bb4916ca46e              # double 0.454816
	.quad	0x3fe355454152b0a7              # double 0.604159
	.quad	0x401b21cfbb949625              # double 6.7830190000000004
	.quad	0x40229b2aae297397              # double 9.3030600000000003
	.quad	0x3fa499ae924f227d              # double 0.040235
	.quad	0x40143331e3a7daa5              # double 5.049995
	.quad	0x40095d5454152b0a              # double 3.1705709999999998
	.quad	0x3ff5f4080f98fa37              # double 1.3720779999999999
	.quad	0x4005ecf206423960              # double 2.7406959999999998
	.quad	0x3ff2e7a95c853c15              # double 1.1815580000000001
	.quad	0x402176503fb37436              # double 8.7310809999999996
	.quad	0x40202cb44a1f0803              # double 8.087313
	.quad	0x400d4398201cd5fa              # double 3.6580050000000002
	.quad	0x4013fe9142b302f7              # double 4.9986009999999998
	.quad	0x40229b211cb039ef              # double 9.3029869999999999
	.quad	0x401a256ffc115df6              # double 6.5365599999999997
	.quad	0x3ffff2799a1fd157              # double 1.9966980000000001
	.quad	0x40216b2d6ece13f5              # double 8.7093310000000006
	.quad	0x401e097b30f8c650              # double 7.5092590000000001
	.quad	0x4017f42d8c2a454e              # double 5.9884550000000001
	.quad	0x3ff055c74751ce29              # double 1.020942
	.quad	0x40054bfb15b573eb              # double 2.6621000000000001
	.quad	0x40206d6366d7a56e              # double 8.2136490000000002
	.quad	0x4022a58537e2c55d              # double 9.3232820000000007
	.quad	0x401af723ee1bd1ee              # double 6.7413480000000003
	.quad	0x40168c896dd26b72              # double 5.6372429999999998
	.quad	0x400e5ea0ba1f4b1f              # double 3.7962050000000001
	.quad	0x4014d8b827fa1a0d              # double 5.2116400000000001
	.quad	0x401febd8383ad9f1              # double 7.9803170000000003
	.quad	0x400f352eb5f5f0b3              # double 3.9009680000000002
	.quad	0x401bd522a6f3f530              # double 6.9581400000000002
	.quad	0x401f9ee136e71cda              # double 7.9051559999999998
	.quad	0x3ffa5549731098d4              # double 1.6458219999999999
	.quad	0x40173b884406c00e              # double 5.8081370000000003
	.quad	0x40164316e3715400              # double 5.5655169999999998
	.quad	0x40218e5f30e7ff58              # double 8.7780699999999996
	.quad	0x4021cb73d188f430              # double 8.8973680000000002
	.quad	0x40066828c36da87a              # double 2.800859
	.quad	0x4021e5b5b70691ea              # double 8.9486519999999992
	.quad	0x40224310fd7e4580              # double 9.1309889999999996
	.quad	0x400f797785729b28              # double 3.93431
	.quad	0x4015f5d91ab8e8ea              # double 5.4900859999999998
	.quad	0x401b4a1c25d07421              # double 6.8223729999999998
	.quad	0x40212f2a38b8ae32              # double 8.5921190000000003
	.quad	0x40159f1455219a84              # double 5.4053509999999996
	.quad	0x3fffee45c358afc4              # double 1.9956719999999999
	.quad	0x401d54e3369b9d80              # double 7.3328980000000001
	.quad	0x4012a10b630a9153              # double 4.6572699999999996
	.quad	0x3fdf9fe86833c600              # double 0.49413499999999999
	.quad	0x4004d2f09d8c6d61              # double 2.6029979999999999
	.quad	0x3ffdf8e1932d6ece              # double 1.873262
	.quad	0x400faa6f3f52fc26              # double 3.9582199999999998
	.quad	0x3ffdd03968d759ef              # double 1.8633360000000001
	.quad	0x4001e9dbec2480e9              # double 2.2391890000000001
	.quad	0x401207c200c0f020              # double 4.5075760000000002
	.quad	0x4020a96e7a311e86              # double 8.330921
	.quad	0x4014dfb43d89ce4a              # double 5.2184609999999996
	.quad	0x400dc3558a761028              # double 3.7203780000000002
	.quad	0x3ffe38ad25679896              # double 1.8888370000000001
	.quad	0x4014c5d41fa76534              # double 5.1931919999999998
	.quad	0x4023b41355475a32              # double 9.8517100000000006
	.quad	0x40222e06748e4756              # double 9.089893
	.quad	0x3ff98a558ea7ce10              # double 1.5962730000000001
	.quad	0x4017dbc44bf4cb19              # double 5.9646160000000004
	.quad	0x400ef64840e1719f              # double 3.8702549999999998
	.quad	0x400315208e150119              # double 2.385316
	.quad	0x4022f5b8348f53c5              # double 9.4799209999999991
	.quad	0x40026fc69728a611              # double 2.3045779999999998
	.quad	0x3fc22834d26fa3fd              # double 0.14185200000000001
	.quad	0x401d606af46aa088              # double 7.3441580000000001
	.quad	0x3ffddfeda6612839              # double 1.86717
	.quad	0x40006c6d612c6ac2              # double 2.052943
	.quad	0x4020ed477bbf93ff              # double 8.4634359999999997
	.quad	0x401c66b7aa25d8d8              # double 7.1003100000000003
	.quad	0x400f5a54c5543287              # double 3.9191069999999999
	.quad	0x3ffa6eb702602c91              # double 1.6520300000000001
	.quad	0x4005745953586ca9              # double 2.6818110000000002
	.quad	0x400dec36da87a073              # double 3.7403390000000001
	.quad	0x4011c0563ed0f627              # double 4.4378289999999998
	.quad	0x40232cab3edd8b61              # double 9.587244
	.quad	0x40226638eb0318b9              # double 9.1996529999999996
	.quad	0x40206c3e5321e604              # double 8.2114130000000002
	.quad	0x4020b2f7b17ce52e              # double 8.3495460000000001
	.quad	0x400c8f177a7008a7              # double 3.5698690000000002
	.quad	0x400bbfe32a0663c7              # double 3.4686949999999999
	.quad	0x3fe34b923a29c77a              # double 0.60297500000000004
	.quad	0x40100d9c6b053198              # double 4.0132919999999999
	.quad	0x4004498aa8650e78              # double 2.5359090000000002
	.quad	0x40033394b7b28955              # double 2.4001860000000002
	.quad	0x4022c08637bd05af              # double 9.3760239999999992
	.quad	0x401333a190082060              # double 4.800421
	.quad	0x4007e2656abde3fc              # double 2.9855450000000001
	.quad	0x401b3cbbc2b94d94              # double 6.80931
	.quad	0x401d8c6759ab6d01              # double 7.3871130000000003
	.quad	0x3ffea0999dcb5782              # double 1.914209
	.quad	0x4015e15df6555c53              # double 5.4700850000000001
	.quad	0x40176700cd855971              # double 5.8505890000000003
	.quad	0x3ffb02cc2d6a9c56              # double 1.688183
	.quad	0x3fec89fa54c55433              # double 0.89184300000000005
	.quad	0x400a249235f80991              # double 3.2678569999999998
	.quad	0x4020a800a7c5ac47              # double 8.3281299999999998
	.quad	0x3fd39e279dd3bafe              # double 0.30652800000000002
	.quad	0x40231a68f4b61fe2              # double 9.5515819999999998
	.quad	0x40128784662bae04              # double 4.6323410000000003
	.quad	0x40149d2135daad60              # double 5.1534469999999999
	.quad	0x401c372f76e6106b              # double 7.0538920000000003
	.quad	0x3ffa36c8b4395810              # double 1.6383749999999999
	.quad	0x3ff677b395c42203              # double 1.4042239999999999
	.quad	0x4000de20ccff21b4              # double 2.1084610000000001
	.quad	0x4019e15a07b352a8              # double 6.4700699999999998
	.quad	0x401ee6cd6c2efd44              # double 7.7253930000000004
	.quad	0x3fedc58eeae9ee46              # double 0.93036600000000003
	.quad	0x4001738bcdfefbf4              # double 2.181419
	.quad	0x4010d27418d6909b              # double 4.2055210000000001
	.quad	0x4016962c77574f72              # double 5.6466539999999998
	.quad	0x4022f1f40a2877ee              # double 9.4725649999999995
	.quad	0x401a680b242070b9              # double 6.6016050000000002
	.quad	0x4017bdf8f4730404              # double 5.9355200000000004
	.quad	0x401f05158b827fa2              # double 7.7549650000000003
	.quad	0x4016dcc6822ff089              # double 5.7156010000000004
	.quad	0x40235e87b139c94f              # double 9.6846289999999992
	.quad	0x40209c11c2a02321              # double 8.3048230000000007
	.quad	0x4020b7c5cdd50a89              # double 8.3589310000000001
	.quad	0x3fda9a2403148777              # double 0.41565800000000003
	.quad	0x401ed6f0068db8bb              # double 7.7099000000000001
	.quad	0x400d77f950b955f8              # double 3.6835810000000002
	.quad	0x401f95a964e8b7e5              # double 7.8961540000000001
	.quad	0x401940aaa7ded6bb              # double 6.3131510000000004
	.quad	0x400cbaf9ebe9c886              # double 3.591297
	.quad	0x401e1c5ef62f9ca6              # double 7.5277060000000002
	.quad	0x401ca350d2806af4              # double 7.1594879999999996
	.quad	0x4021aa00192a7371              # double 8.8320319999999999
	.quad	0x401835842b734b51              # double 6.0522619999999998
	.quad	0x400d8a465a57646b              # double 3.692517
	.quad	0x4008b1715c63ae25              # double 3.0866419999999999
	.quad	0x3fe5e2003ab862b2              # double 0.68383799999999995
	.quad	0x401ba1d6494d50ec              # double 6.9080440000000003
	.quad	0x4023937ae5796bfd              # double 9.7880470000000006
	.quad	0x40225cb7d41743e9              # double 9.1810899999999993
	.quad	0x400dc134ce3de615              # double 3.7193390000000002
	.quad	0x40144372606fac60              # double 5.0658659999999998
	.quad	0x4017a544fe36d224              # double 5.9113959999999999
	.quad	0x4017a1172ef0ae53              # double 5.9073149999999996
	.quad	0x401990d73860999e              # double 6.3914460000000002
	.quad	0x401e5b8bef8ceb35              # double 7.5894009999999996
	.quad	0x401023b7d84901d2              # double 4.0348810000000004
	.quad	0x40061d9d3458cd21              # double 2.7644600000000001
	.quad	0x3fc165ba6efc371e              # double 0.13591700000000001
	.quad	0x401de475a31a4bdc              # double 7.4731050000000003
	.quad	0x4010cab10ba62670              # double 4.1979410000000001
	.quad	0x40076d330941c821              # double 2.9283199999999998
	.quad	0x4021206338b47c74              # double 8.5632570000000001
	.quad	0x4023a2a4db163bac              # double 9.8176640000000006
	.quad	0x4009bd790752da98              # double 3.2175159999999998
	.quad	0x3fda37cdcca70d20              # double 0.40965600000000002
	.quad	0x402125bab21815a0              # double 8.5736899999999991
	.quad	0x3ff8ac1f42bb6673              # double 1.542022
	.quad	0x401352e0e30446b7              # double 4.8309360000000003
	.quad	0x3fece2a1b5c7cd8a              # double 0.90266500000000005
	.quad	0x400264adff822bbf              # double 2.2991600000000001
	.quad	0x3fe3e78c0053e2d6              # double 0.62201499999999998
	.quad	0x4015008d8ec95bff              # double 5.25054
	.quad	0x3f861d4306e5cd4f              # double 0.010798
	.quad	0x400bd4898f605ab4              # double 3.4787780000000001
	.quad	0x40012bc05d52c16e              # double 2.146363
	.quad	0x3febb992c8c50050              # double 0.86640300000000003
	.quad	0x4020d1246bf01323              # double 8.4084810000000001
	.quad	0x4011e36ef8055fbb              # double 4.4721029999999997
	.quad	0x400cef4517614595              # double 3.6168309999999999
	.quad	0x3fe1a2e1ac57e23f              # double 0.55113299999999998
	.quad	0x401338f68be2f7b1              # double 4.8056279999999996
	.quad	0x4022c2b042528ae7              # double 9.3802509999999994
	.quad	0x4005106b37867f0b              # double 2.6330170000000002
	.quad	0x4004122e1ac57e24              # double 2.508877
	.quad	0x40118c0485a0be51              # double 4.386736
	.quad	0x40123ac4b4d056c5              # double 4.557391
	.quad	0x400e0994185058de              # double 3.754677
	.quad	0x402340b11409a240              # double 9.6263509999999996
	.quad	0x40129dd22856605f              # double 4.6541220000000001
	.quad	0x40202094c447c30d              # double 8.0636349999999997
	.quad	0x4011f03c4b09e98e              # double 4.4846050000000002
	.quad	0x4019a94face67d78              # double 6.415343
	.quad	0x402133dd11be6e65              # double 8.6012959999999996
	.quad	0x4007cff327aa68f5              # double 2.9765380000000001
	.quad	0x40181a821f2990f3              # double 6.025887
	.quad	0x4021f5f9df548ece              # double 8.9804220000000008
	.quad	0x3fdb48a159817b96              # double 0.42630800000000002
	.quad	0x4022f53cff64cf8d              # double 9.4789809999999992
	.quad	0x401db043e5321e60              # double 7.4221339999999998
	.quad	0x4006be425aee6320              # double 2.8429000000000002
	.quad	0x401269802c0a4a06              # double 4.6030280000000001
	.quad	0x4010c8c79f666235              # double 4.1960740000000003
	.quad	0x4004fa48301a79ff              # double 2.6222080000000001
	.quad	0x40215190d173fb7a              # double 8.6593079999999993
	.quad	0x400e260c38f36695              # double 3.7685780000000002
	.quad	0x4016daff2a172abf              # double 5.7138640000000001
	.quad	0x4019cdc7abfb9bed              # double 6.4509569999999998
	.quad	0x40121958969a0ad9              # double 4.5247520000000003
	.quad	0x3fd358298cc14403              # double 0.30225600000000002
	.quad	0x401a4d7625204af9              # double 6.5756459999999999
	.quad	0x4020f1463cfb3312              # double 8.4712390000000006
	.quad	0x3fd61b93037d6302              # double 0.34543299999999999
	.quad	0x40106614df8b1572              # double 4.0996889999999997
	.quad	0x4014263ae2541d8f              # double 5.0373340000000004
	.quad	0x40103eb6bf444e0e              # double 4.0612440000000003
	.quad	0x40235064ece9a2c6              # double 9.6570199999999993
	.quad	0x402204d78c436fc1              # double 9.0094569999999994
	.quad	0x3ff5a0d77b7c7821              # double 1.3517680000000001
	.quad	0x3ffe25b317efe0ce              # double 1.884204
	.quad	0x3fcb7a0b5ed8d36b              # double 0.21466199999999999
	.quad	0x400bf2606fac6046              # double 3.4933480000000001
	.quad	0x3ff0614f0520d131              # double 1.023757
	.quad	0x4009cef2c7325919              # double 3.2260490000000002
	.quad	0x401918f75536933a              # double 6.274381
	.size	.L__constant_1500xf64, 12000

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
