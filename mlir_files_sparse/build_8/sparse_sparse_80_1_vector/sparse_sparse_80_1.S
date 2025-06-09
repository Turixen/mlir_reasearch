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
	.quad	0x412e843e4e4fb97c              # double 999967.15295200003
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
	lui	a1, %hi(.L__constant_101xindex_0)
	addi	a1, a1, %lo(.L__constant_101xindex_0)
	lui	a7, %hi(.L__constant_1999xindex_0)
	addi	a7, a7, %lo(.L__constant_1999xindex_0)
	lui	t0, %hi(.L__constant_1999xf64_0)
	addi	t0, t0, %lo(.L__constant_1999xf64_0)
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
	.quad	17                              # 0x11
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	65                              # 0x41
	.quad	90                              # 0x5a
	.quad	106                             # 0x6a
	.quad	126                             # 0x7e
	.quad	144                             # 0x90
	.quad	174                             # 0xae
	.quad	195                             # 0xc3
	.quad	215                             # 0xd7
	.quad	229                             # 0xe5
	.quad	247                             # 0xf7
	.quad	271                             # 0x10f
	.quad	289                             # 0x121
	.quad	310                             # 0x136
	.quad	330                             # 0x14a
	.quad	347                             # 0x15b
	.quad	375                             # 0x177
	.quad	401                             # 0x191
	.quad	428                             # 0x1ac
	.quad	449                             # 0x1c1
	.quad	463                             # 0x1cf
	.quad	487                             # 0x1e7
	.quad	510                             # 0x1fe
	.quad	528                             # 0x210
	.quad	549                             # 0x225
	.quad	572                             # 0x23c
	.quad	594                             # 0x252
	.quad	611                             # 0x263
	.quad	637                             # 0x27d
	.quad	651                             # 0x28b
	.quad	677                             # 0x2a5
	.quad	695                             # 0x2b7
	.quad	711                             # 0x2c7
	.quad	732                             # 0x2dc
	.quad	750                             # 0x2ee
	.quad	763                             # 0x2fb
	.quad	786                             # 0x312
	.quad	805                             # 0x325
	.quad	822                             # 0x336
	.quad	836                             # 0x344
	.quad	856                             # 0x358
	.quad	871                             # 0x367
	.quad	891                             # 0x37b
	.quad	911                             # 0x38f
	.quad	931                             # 0x3a3
	.quad	950                             # 0x3b6
	.quad	974                             # 0x3ce
	.quad	996                             # 0x3e4
	.quad	1016                            # 0x3f8
	.quad	1037                            # 0x40d
	.quad	1063                            # 0x427
	.quad	1078                            # 0x436
	.quad	1099                            # 0x44b
	.quad	1120                            # 0x460
	.quad	1140                            # 0x474
	.quad	1159                            # 0x487
	.quad	1183                            # 0x49f
	.quad	1203                            # 0x4b3
	.quad	1223                            # 0x4c7
	.quad	1247                            # 0x4df
	.quad	1269                            # 0x4f5
	.quad	1293                            # 0x50d
	.quad	1312                            # 0x520
	.quad	1329                            # 0x531
	.quad	1349                            # 0x545
	.quad	1362                            # 0x552
	.quad	1385                            # 0x569
	.quad	1406                            # 0x57e
	.quad	1428                            # 0x594
	.quad	1453                            # 0x5ad
	.quad	1472                            # 0x5c0
	.quad	1484                            # 0x5cc
	.quad	1503                            # 0x5df
	.quad	1521                            # 0x5f1
	.quad	1537                            # 0x601
	.quad	1562                            # 0x61a
	.quad	1577                            # 0x629
	.quad	1596                            # 0x63c
	.quad	1615                            # 0x64f
	.quad	1637                            # 0x665
	.quad	1658                            # 0x67a
	.quad	1679                            # 0x68f
	.quad	1697                            # 0x6a1
	.quad	1718                            # 0x6b6
	.quad	1739                            # 0x6cb
	.quad	1762                            # 0x6e2
	.quad	1786                            # 0x6fa
	.quad	1799                            # 0x707
	.quad	1819                            # 0x71b
	.quad	1838                            # 0x72e
	.quad	1862                            # 0x746
	.quad	1880                            # 0x758
	.quad	1898                            # 0x76a
	.quad	1917                            # 0x77d
	.quad	1939                            # 0x793
	.quad	1956                            # 0x7a4
	.quad	1976                            # 0x7b8
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_1999xindex_0,@object # @__constant_1999xindex_0
	.p2align	6, 0x0
.L__constant_1999xindex_0:
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	40                              # 0x28
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	4                               # 0x4
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	66                              # 0x42
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	83                              # 0x53
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	11                              # 0xb
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	75                              # 0x4b
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	55                              # 0x37
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	64                              # 0x40
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	60                              # 0x3c
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	17                              # 0x11
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
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	70                              # 0x46
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	15                              # 0xf
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	28                              # 0x1c
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	91                              # 0x5b
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	66                              # 0x42
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.size	.L__constant_1999xindex_0, 15992

	.type	.L__constant_1999xf64_0,@object # @__constant_1999xf64_0
	.p2align	6, 0x0
.L__constant_1999xf64_0:
	.quad	0x402181b17481b21c              # double 8.7533069999999995
	.quad	0x40042502eec7c958              # double 2.5180720000000001
	.quad	0x401bef5946c332f0              # double 6.9837389999999999
	.quad	0x4020cdd7a99fa11b              # double 8.4020360000000007
	.quad	0x401a1b6c3760bf5d              # double 6.5267799999999996
	.quad	0x401f2556d19dece5              # double 7.7864639999999996
	.quad	0x400e1ee9142b302f              # double 3.7650929999999998
	.quad	0x401981a21ea35936              # double 6.376595
	.quad	0x3ff7925460aa64c3              # double 1.473225
	.quad	0x40190f0c34c1a8ac              # double 6.2646949999999997
	.quad	0x3feab5d67ba237ce              # double 0.83469700000000002
	.quad	0x400e04be40420f6f              # double 3.752316
	.quad	0x3ff9eae4b0186120              # double 1.619847
	.quad	0x3ffc2a854477ff15              # double 1.760381
	.quad	0x401d9db7281fd9ba              # double 7.4040189999999999
	.quad	0x40202c4a4095f245              # double 8.0865039999999997
	.quad	0x4014f13059641f64              # double 5.2355359999999997
	.quad	0x402304e7ab756430              # double 9.5095799999999997
	.quad	0x401368eb0318b934              # double 4.8524589999999996
	.quad	0x40000face67d77fb              # double 2.007654
	.quad	0x3fd9eae18ac9f2fe              # double 0.40496100000000002
	.quad	0x40176d16b97fe8ee              # double 5.8565319999999996
	.quad	0x401db080b673c4f4              # double 7.4223660000000002
	.quad	0x40093572de43ed96              # double 3.1510980000000002
	.quad	0x401d916e37154003              # double 7.3920219999999999
	.quad	0x3ff48a643cc07aaf              # double 1.283787
	.quad	0x4021d8791c4b9021              # double 8.9227989999999995
	.quad	0x400d0ca600b02928              # double 3.631176
	.quad	0x401a4d3d4280ae10              # double 6.5754289999999997
	.quad	0x4019a5a0be510907              # double 6.4117459999999999
	.quad	0x400b142aa9f7b5af              # double 3.3848470000000002
	.quad	0x401bc3929ed3953e              # double 6.9409890000000001
	.quad	0x4002fdb1a6d698fe              # double 2.3738739999999998
	.quad	0x4020b9fa11a975b0              # double 8.3632360000000006
	.quad	0x4003922424a276b8              # double 2.446358
	.quad	0x401ea3c925785f8d              # double 7.6599469999999998
	.quad	0x400b7a9973d9ec70              # double 3.434863
	.quad	0x3fec6a4873365882              # double 0.88797400000000004
	.quad	0x4021ff204295a6c6              # double 8.9982930000000003
	.quad	0x401797021d10b1ff              # double 5.8974690000000001
	.quad	0x40116a50d6b228dd              # double 4.3538240000000004
	.quad	0x40214525892684cf              # double 8.6350519999999999
	.quad	0x3fe505c4651f3e8a              # double 0.65695400000000004
	.quad	0x401bfef911cf355d              # double 6.9989970000000001
	.quad	0x400147c7c5260f5e              # double 2.1600489999999999
	.quad	0x4000251654d61b2a              # double 2.0181089999999999
	.quad	0x401d6ed80a17b0f7              # double 7.3582460000000003
	.quad	0x4016db56fb8f57f7              # double 5.7141989999999998
	.quad	0x4014f41a6937d1fe              # double 5.2383819999999996
	.quad	0x40206c40af1cb89d              # double 8.2114309999999993
	.quad	0x4001a1733226c3b9              # double 2.2038329999999999
	.quad	0x3fe149b413986339              # double 0.54024700000000003
	.quad	0x402352454de7ea60              # double 9.6606850000000009
	.quad	0x4010dff4fd6d7e89              # double 4.2187080000000003
	.quad	0x3fe7f48a159817b9              # double 0.74860099999999996
	.quad	0x3fea7ef39085f4a1              # double 0.82799699999999998
	.quad	0x3ffe56f112fd32c6              # double 1.896226
	.quad	0x4009b24851a86940              # double 3.2120519999999999
	.quad	0x40155f78359bc340              # double 5.3432320000000004
	.quad	0x4012c077ccc03793              # double 4.6879569999999999
	.quad	0x401908958d9b5e96              # double 6.2583830000000003
	.quad	0x402189fafc8b007a              # double 8.7694930000000006
	.quad	0x401302dadb8348f5              # double 4.7527879999999998
	.quad	0x4006fe154434e337              # double 2.8740640000000002
	.quad	0x40078f9d2bf55150              # double 2.9451239999999999
	.quad	0x401b118090b417ca              # double 6.7670919999999999
	.quad	0x40078ddce7cd0353              # double 2.9442689999999998
	.quad	0x3fec3ae03b3e9a70              # double 0.88218700000000005
	.quad	0x3fe565c70435efa6              # double 0.66867399999999999
	.quad	0x3fee8ffda4052d66              # double 0.95507699999999995
	.quad	0x401d4348b220791c              # double 7.3157069999999997
	.quad	0x4012ccadddf43c7d              # double 4.6998819999999997
	.quad	0x40035cfe58601366              # double 2.420407
	.quad	0x400addc0db2702a3              # double 3.3582779999999999
	.quad	0x3fd08d9f90539fba              # double 0.25864399999999999
	.quad	0x3fbad83c6c97d8cf              # double 0.104862
	.quad	0x401c465b63d3e4ef              # double 7.068708
	.quad	0x400b9d230b9dc2f4              # double 3.451727
	.quad	0x401bb220bc382a13              # double 6.923953
	.quad	0x4015fe09bb6aa4ba              # double 5.4980840000000004
	.quad	0x401a72120e1f7d74              # double 6.6113970000000002
	.quad	0x40219bb2bba98eda              # double 8.8040979999999998
	.quad	0x4020ab50092ccf6c              # double 8.3345950000000001
	.quad	0x3ff3e7c286f8ad25              # double 1.2440819999999999
	.quad	0x401acca3a4b5568f              # double 6.6998430000000004
	.quad	0x40181e8a2ec28b2a              # double 6.0298239999999996
	.quad	0x4012c42aed139431              # double 4.6915699999999996
	.quad	0x4020f1652bd3c361              # double 8.4714749999999999
	.quad	0x4023497a24894c44              # double 9.6435099999999991
	.quad	0x4007f2cd7cf5f4e4              # double 2.9935559999999999
	.quad	0x400e70917d6b65aa              # double 3.8049650000000002
	.quad	0x4000f97c3d68405b              # double 2.1218189999999999
	.quad	0x4019ff4a558ea7ce              # double 6.4993069999999999
	.quad	0x4020ef47735c182f              # double 8.4673420000000004
	.quad	0x40220ed6fda836eb              # double 9.0289839999999995
	.quad	0x4018af98b71b8aa0              # double 6.171481
	.quad	0x4021f70a808c825a              # double 8.9825020000000002
	.quad	0x400a443dccea28fe              # double 3.2833209999999999
	.quad	0x401f74c2b51bd61f              # double 7.8640239999999996
	.quad	0x400bbc45cbbc2b95              # double 3.4669300000000001
	.quad	0x400c4dd4845132f8              # double 3.5380029999999998
	.quad	0x3fef3b0813cab820              # double 0.97595600000000004
	.quad	0x400139f4d37c1377              # double 2.1532990000000001
	.quad	0x3faaa305532617c2              # double 0.052025000000000002
	.quad	0x4021989e34330d74              # double 8.7980820000000008
	.quad	0x400f170691ea78af              # double 3.8862429999999999
	.quad	0x3ffc137c1376d549              # double 1.7547569999999999
	.quad	0x40095c558644523f              # double 3.1700849999999998
	.quad	0x402322f2d7f950b9              # double 9.5682589999999994
	.quad	0x3feadc1e7967caea              # double 0.83936999999999995
	.quad	0x4022818201cd5f9a              # double 9.2529450000000004
	.quad	0x401a2280f12c27a6              # double 6.5336949999999998
	.quad	0x4015679463cfb331              # double 5.3511519999999999
	.quad	0x402132ef0ae53650              # double 8.5994799999999998
	.quad	0x4011baaa3ad18d26              # double 4.4322900000000001
	.quad	0x4020aee1deacc921              # double 8.3415669999999995
	.quad	0x40214f73e24febd1              # double 8.6551810000000007
	.quad	0x401e6a1b5c7cd899              # double 7.6036200000000002
	.quad	0x3fe37d34df04ddb5              # double 0.60903399999999996
	.quad	0x400ae43b2dd377e2              # double 3.3614410000000001
	.quad	0x4003bb7f1737542a              # double 2.4665509999999999
	.quad	0x4011b441fea8112c              # double 4.4260330000000003
	.quad	0x40223b256ffc115e              # double 9.1155200000000001
	.quad	0x3fee80baa582dbe8              # double 0.953214
	.quad	0x4001af27bb2fec57              # double 2.2105250000000001
	.quad	0x40011e76c8b43958              # double 2.139875
	.quad	0x401dab599aa60914              # double 7.4173340000000003
	.quad	0x401cf42fa5093965              # double 7.2384630000000003
	.quad	0x401ebbd0e12e83a1              # double 7.6834139999999999
	.quad	0x3ff7024b33daf8df              # double 1.4380599999999999
	.quad	0x4016b6d612c6ac21              # double 5.6785509999999997
	.quad	0x401fdfa48301a7a0              # double 7.9684010000000001
	.quad	0x40149e82517e77d5              # double 5.1547939999999999
	.quad	0x40111a2cecc814d7              # double 4.2755619999999999
	.quad	0x401e1ac647778dd6              # double 7.5261469999999999
	.quad	0x40197ba5a038194c              # double 6.370749
	.quad	0x4015a413986338b4              # double 5.4102309999999996
	.quad	0x40080940357a3550              # double 3.0045169999999999
	.quad	0x40201d056c508b33              # double 8.0566820000000003
	.quad	0x401353a71151611c              # double 4.8316920000000003
	.quad	0x4005897c80841ede              # double 2.692132
	.quad	0x400b5b7e0ac7da1f              # double 3.4196740000000001
	.quad	0x400b2159817b95a3              # double 3.3912840000000002
	.quad	0x402344edd4845133              # double 9.634627
	.quad	0x401d38fa376922d9              # double 7.3056419999999997
	.quad	0x4021c28672756862              # double 8.8799320000000002
	.quad	0x401466366d7a56de              # double 5.0998169999999998
	.quad	0x400c42d8c2a454de              # double 3.5326399999999998
	.quad	0x3feabee3d5fdcdf7              # double 0.83580200000000004
	.quad	0x4004b96b76709fa5              # double 2.5905369999999999
	.quad	0x40217f7ad4b2745c              # double 8.748984
	.quad	0x401def46ed245b29              # double 7.4836689999999999
	.quad	0x4017cabd1aa821f3              # double 5.9479870000000004
	.quad	0x3ffcd1dde37585be              # double 1.801237
	.quad	0x3fd417ce52deca25              # double 0.31395299999999998
	.quad	0x3fef045564b662fe              # double 0.969279
	.quad	0x40216ac0e7bc3c5c              # double 8.7085030000000003
	.quad	0x40200fad080b673c              # double 8.0306169999999994
	.quad	0x401af410b630a915              # double 6.7383449999999998
	.quad	0x4023cd821294573a              # double 9.9013829999999992
	.quad	0x4000aed99cbee808              # double 2.0853760000000001
	.quad	0x401410f9096bb98c              # double 5.0165749999999996
	.quad	0x401b4d3a604e1e71              # double 6.825418
	.quad	0x40077b5393250b52              # double 2.9352179999999999
	.quad	0x40174d983947496b              # double 5.8257760000000003
	.quad	0x3ff802b0ea18372e              # double 1.5006569999999999
	.quad	0x40122b966be7afa7              # double 4.5425659999999999
	.quad	0x4009a76a7264a16a              # double 3.2067459999999999
	.quad	0x3fc8a593a2df9379              # double 0.192553
	.quad	0x3fee841248d7e026              # double 0.95362199999999997
	.quad	0x4021ad6084a515cf              # double 8.8386270000000007
	.quad	0x4020c19c5a3e39f7              # double 8.3781459999999992
	.quad	0x40139adb8348f53c              # double 4.9012279999999997
	.quad	0x401a99da9c99285b              # double 6.6502480000000004
	.quad	0x3ff78cdea033e78e              # double 1.471892
	.quad	0x401832877ee4e26d              # double 6.0493449999999998
	.quad	0x401ea3d6c7219221              # double 7.659999
	.quad	0x4021896bb98c7e28              # double 8.7683999999999997
	.quad	0x40221ff77af64064              # double 9.0624350000000006
	.quad	0x400be95e17e34b94              # double 3.4889489999999999
	.quad	0x400c7ca18bd66278              # double 3.5608550000000001
	.quad	0x40108099e0e73605              # double 4.1255870000000003
	.quad	0x40209a272862f599              # double 8.3010800000000007
	.quad	0x4021b6da22f6a50d              # double 8.8571329999999993
	.quad	0x4022f39170d62bf1              # double 9.4757189999999997
	.quad	0x3fda0e453d20f2bf              # double 0.40712100000000001
	.quad	0x4010a546d3f9e7b8              # double 4.161403
	.quad	0x400a09289dadfb50              # double 3.2544719999999998
	.quad	0x40106b6d43d03969              # double 4.1049090000000001
	.quad	0x402384f97edc7ef1              # double 9.7597159999999991
	.quad	0x40135fba01eeed89              # double 4.843483
	.quad	0x40134c625e99e94b              # double 4.8245940000000003
	.quad	0x401db0110a137f39              # double 7.4219400000000002
	.quad	0x401638101f31f46f              # double 5.5547490000000002
	.quad	0x401479392189bd84              # double 5.1183820000000004
	.quad	0x400f698d477bbf94              # double 3.926539
	.quad	0x40067410f94c8798              # double 2.806673
	.quad	0x401e32d1f1cfbb95              # double 7.5496290000000003
	.quad	0x402132a8c9b84556              # double 8.5989439999999995
	.quad	0x3fecf93dd97f62b7              # double 0.90542500000000004
	.quad	0x4011cd1f601797cc              # double 4.4503149999999998
	.quad	0x4023066c4c5974e6              # double 9.5125449999999994
	.quad	0x401d093f290abb45              # double 7.2590300000000001
	.quad	0x40102785b5b70692              # double 4.0385960000000001
	.quad	0x401cf1719f7f8ca8              # double 7.2357849999999999
	.quad	0x4011a15011904b3c              # double 4.4075319999999998
	.quad	0x401d3c78a6dacabc              # double 7.3090539999999997
	.quad	0x3ff3e5d28d002e23              # double 1.243609
	.quad	0x401f74fce746cb96              # double 7.8642459999999996
	.quad	0x400cae807bbb6241              # double 3.5852059999999999
	.quad	0x4001e68448cf7caa              # double 2.2375569999999998
	.quad	0x4018be7e62dc6e2b              # double 6.1860290000000004
	.quad	0x4007a1b5c7cd898b              # double 2.9539599999999999
	.quad	0x400046351deefe50              # double 2.034281
	.quad	0x4013d80b673c4f3c              # double 4.9609810000000003
	.quad	0x40012a93f290abb4              # double 2.1457899999999999
	.quad	0x4019424b76f6d762              # double 6.3147409999999997
	.quad	0x4022f056c508b32d              # double 9.4694120000000001
	.quad	0x3ff7ab3cc4ac6cdb              # double 1.479306
	.quad	0x4021168858ff7597              # double 8.5440090000000009
	.quad	0x40071a8a3f8982cb              # double 2.8879589999999999
	.quad	0x400d7f562174c4ce              # double 3.687176
	.quad	0x40211628aa433509              # double 8.5432790000000001
	.quad	0x3fd9ed634549b62c              # double 0.40511399999999997
	.quad	0x4013f888f861a60d              # double 4.9927099999999998
	.quad	0x400e253f39d1b2e6              # double 3.7681870000000002
	.quad	0x4020fbc3e74afd54              # double 8.4917289999999994
	.quad	0x4013749774256bca              # double 4.8638589999999997
	.quad	0x4014e8d045fe1112              # double 5.2273569999999996
	.quad	0x401a78800eae18ad              # double 6.6176760000000003
	.quad	0x3fffb90fb65668c2              # double 1.9826809999999999
	.quad	0x4010974fb549f948              # double 4.1477649999999997
	.quad	0x401119c7ffde7211              # double 4.2751770000000002
	.quad	0x402295c0767d34df              # double 9.292484
	.quad	0x3fee06c00da1a933              # double 0.93832400000000005
	.quad	0x4006ce7f6f4be836              # double 2.8508290000000001
	.quad	0x4016202afdda8bd2              # double 5.5314139999999998
	.quad	0x400f9d441355475a              # double 3.9517899999999999
	.quad	0x4007b17b5286b591              # double 2.9616609999999999
	.quad	0x40159c7d1bb4916d              # double 5.4028210000000003
	.quad	0x4013861ae70c1334              # double 4.8809620000000002
	.quad	0x4016e923e5b8561d              # double 5.7276759999999998
	.quad	0x401114cdfaca361a              # double 4.2703170000000004
	.quad	0x401273d46b26bf87              # double 4.6131149999999996
	.quad	0x401d2d080b673c4f              # double 7.2939759999999998
	.quad	0x4022002eec7c957d              # double 9.0003580000000003
	.quad	0x3fe5785b5b70691f              # double 0.67094200000000004
	.quad	0x400217df19d66adb              # double 2.2616559999999999
	.quad	0x3fd61dc0db2702a3              # double 0.34556599999999998
	.quad	0x4008a16df3f96180              # double 3.0788229999999999
	.quad	0x400572617c1bda51              # double 2.68085
	.quad	0x3ffb5b280f12c27a              # double 1.7097549999999999
	.quad	0x3fe626937d1fe64f              # double 0.69220899999999996
	.quad	0x3fd19945b6c3760c              # double 0.27498
	.quad	0x400023c968943e10              # double 2.017474
	.quad	0x4014b182ecaeea64              # double 5.1733510000000003
	.quad	0x40032e0653005815              # double 2.3974730000000002
	.quad	0x4022a1876188b114              # double 9.3154859999999999
	.quad	0x4014d7b07075b3e1              # double 5.2106339999999998
	.quad	0x3fea3137b07075b4              # double 0.81850800000000001
	.quad	0x401034bd33d29564              # double 4.0515030000000003
	.quad	0x4008dcbccf28c79f              # double 3.1077819999999998
	.quad	0x4015bb76b3bb83cf              # double 5.4330699999999998
	.quad	0x4010564adff822bc              # double 4.0842700000000001
	.quad	0x3fe708f861a60d45              # double 0.71984499999999996
	.quad	0x3fc68f3a9b068124              # double 0.17624600000000001
	.quad	0x3fe6c4ef88b97785              # double 0.71153999999999995
	.quad	0x3ff3b5cd0bb6ed67              # double 1.2318849999999999
	.quad	0x401f351f81a5870e              # double 7.8018780000000003
	.quad	0x40048cc35ce18266              # double 2.5687319999999998
	.quad	0x400c3dc69f8c21e2              # double 3.5301640000000001
	.quad	0x40110ba387592535              # double 4.2613659999999998
	.quad	0x402003d05af6c69b              # double 8.0074489999999994
	.quad	0x4016bc03361565c3              # double 5.6836060000000002
	.quad	0x401372fd75e2046c              # double 4.8622949999999996
	.quad	0x40115a72a7bd48cb              # double 4.3383279999999997
	.quad	0x401e540e5a35d67c              # double 7.5820860000000003
	.quad	0x40091ceaf251c194              # double 3.1391200000000001
	.quad	0x3fd25eaee2003ab8              # double 0.28702899999999998
	.quad	0x401bcddf43c7d5ed              # double 6.951047
	.quad	0x400603b7952d234f              # double 2.7518150000000001
	.quad	0x401ab8f648c7192f              # double 6.6806270000000003
	.quad	0x4014957e670e2c13              # double 5.1459900000000003
	.quad	0x3feffb71fbc5de9c              # double 0.99944399999999999
	.quad	0x4014c8dc55000c95              # double 5.1961529999999998
	.quad	0x4020a731d2e0e304              # double 8.3265519999999995
	.quad	0x401da83cafb3b752              # double 7.4142939999999999
	.quad	0x401381fc8f32378b              # double 4.8769400000000003
	.quad	0x400fd7e889c1b542              # double 3.9804240000000002
	.quad	0x401a6a3fcc9ea9a4              # double 6.6037590000000002
	.quad	0x401946909aed56b0              # double 6.3189109999999999
	.quad	0x4021ce1cde5d1809              # double 8.9025639999999999
	.quad	0x40029a58f7121ab5              # double 2.3253650000000001
	.quad	0x40178048e043a216              # double 5.8752779999999998
	.quad	0x4016b794ea077037              # double 5.6792790000000002
	.quad	0x400c1449129888f8              # double 3.5099049999999998
	.quad	0x400ad1de69ad42c4              # double 3.3524750000000001
	.quad	0x4023118a65492ff5              # double 9.5342590000000004
	.quad	0x40080f99806f2629              # double 3.0076170000000002
	.quad	0x40202dd7cb2d905c              # double 8.0895369999999999
	.quad	0x401fee0d23d4f15e              # double 7.9824719999999996
	.quad	0x401da08c8259e1f4              # double 7.4067860000000003
	.quad	0x4017458f7121ab4b              # double 5.8179299999999996
	.quad	0x400493d102bc72e2              # double 2.5721759999999998
	.quad	0x3fd21ce6c093d966              # double 0.28301399999999999
	.quad	0x400b94df8b157258              # double 3.447692
	.quad	0x400c03ad9f0a1be3              # double 3.5017960000000001
	.quad	0x4018fc52e72da123              # double 6.24641
	.quad	0x3fd270867ad8e432              # double 0.28811799999999999
	.quad	0x40205c508b32ce89              # double 8.1803019999999993
	.quad	0x40021bd61f5be5da              # double 2.263592
	.quad	0x3ff971f46ed245b3              # double 1.5903210000000001
	.quad	0x4015375e6362a5e8              # double 5.3040710000000004
	.quad	0x401a5c9c4da9003f              # double 6.5904400000000001
	.quad	0x4005bc2c1b10fd7e              # double 2.7168809999999999
	.quad	0x401b500000000000              # double 6.828125
	.quad	0x4006266e43aa79bc              # double 2.7687650000000001
	.quad	0x40156345cfede97d              # double 5.346946
	.quad	0x40016f8f8a4c1ebd              # double 2.1794730000000002
	.quad	0x4023487724fa8b4c              # double 9.641534
	.quad	0x400bb00d5e8d5411              # double 3.460963
	.quad	0x402143ee3d5fdcdf              # double 8.6326769999999993
	.quad	0x3fe9ab6ae7d566cf              # double 0.80217499999999997
	.quad	0x402043ee1bd1ed9e              # double 8.132676
	.quad	0x40120f4adbc664d4              # double 4.5149340000000002
	.quad	0x3fd1bdad7518b0d1              # double 0.277202
	.quad	0x3fabe1c9b4139863              # double 0.054456999999999998
	.quad	0x402123afb7e90ff9              # double 8.5696999999999992
	.quad	0x40025fb267c6b8b7              # double 2.2967270000000002
	.quad	0x4017697e56473472              # double 5.853021
	.quad	0x4006b5b813016484              # double 2.83873
	.quad	0x401dcda0168b5cc0              # double 7.450806
	.quad	0x40207fb86f47b678              # double 8.2494540000000001
	.quad	0x400eb0ce4ead0c3d              # double 3.8363309999999999
	.quad	0x4021d874213a0c6b              # double 8.9227609999999995
	.quad	0x4015f368ad688377              # double 5.4877039999999999
	.quad	0x4005ed55a3a08399              # double 2.7408860000000002
	.quad	0x4022d03d790752db              # double 9.4067190000000007
	.quad	0x401febcc6c54bcf1              # double 7.9802720000000002
	.quad	0x401f22cbea4ebdd3              # double 7.7839809999999998
	.quad	0x3ff326362a5e785b              # double 1.1968289999999999
	.quad	0x4007d6ef8055fbb5              # double 2.979949
	.quad	0x4017bd551d68c693              # double 5.934895
	.quad	0x40228f36cdf266ba              # double 9.2797149999999995
	.quad	0x4012da500d5e8d54              # double 4.7131959999999999
	.quad	0x40112ae74f2f123c              # double 4.2918979999999998
	.quad	0x40207c69d7342edc              # double 8.2429950000000005
	.quad	0x4016e773e24febd1              # double 5.7260280000000003
	.quad	0x4021a0b45ae5ffa4              # double 8.8138760000000004
	.quad	0x4011f154434e336a              # double 4.4856730000000002
	.quad	0x40150a24463065f9              # double 5.2599039999999997
	.quad	0x40041af20ea5b531              # double 2.5131570000000001
	.quad	0x40217e4f3343fa2b              # double 8.7466980000000003
	.quad	0x4016cdf00abf76a3              # double 5.701111
	.quad	0x3fda686a4ca4f441              # double 0.41262300000000002
	.quad	0x4020fe2f5989df11              # double 8.4964549999999992
	.quad	0x3ff1402c0a4a05de              # double 1.0781670000000001
	.quad	0x400e8b1f687b139d              # double 3.8179310000000002
	.quad	0x40203ad2bb23571d              # double 8.1148889999999998
	.quad	0x400e5f30e7ff583a              # double 3.7964799999999999
	.quad	0x4022d938de6ddf01              # double 9.4242620000000005
	.quad	0x4016b51611ba3ca7              # double 5.6768419999999997
	.quad	0x40135eee52589268              # double 4.8427059999999997
	.quad	0x40144888b545c78a              # double 5.0708339999999996
	.quad	0x401f7fea3df6db94              # double 7.8749169999999999
	.quad	0x401179c5a3e39f77              # double 4.3689179999999999
	.quad	0x402108b0d0edc3bd              # double 8.5169739999999994
	.quad	0x401124c8366516db              # double 4.28592
	.quad	0x4020bd10b1feeb2d              # double 8.3692679999999999
	.quad	0x4015cccea28fe261              # double 5.4500070000000003
	.quad	0x4001fc148344c37e              # double 2.2480859999999998
	.quad	0x401b969ec2ce464a              # double 6.8970900000000004
	.quad	0x4015de28ed5f138c              # double 5.4669530000000002
	.quad	0x401fbc2ce4649907              # double 7.9337650000000001
	.quad	0x401dc5186db50f41              # double 7.4424760000000001
	.quad	0x401ee4eebf65dbfd              # double 7.723567
	.quad	0x3ffeb27243137b07              # double 1.918566
	.quad	0x4019526bf8769ec3              # double 6.3304900000000002
	.quad	0x401e2a93f290abb4              # double 7.5415799999999997
	.quad	0x401f4054ef459d99              # double 7.8128239999999999
	.quad	0x4020062ac3222920              # double 8.0120450000000005
	.quad	0x3fa3333333333333              # double 0.037499999999999999
	.quad	0x3fcf91eeaa6d2674              # double 0.246641
	.quad	0x3fcad40aaeafab54              # double 0.209596
	.quad	0x401220f01fb82c2c              # double 4.5321660000000001
	.quad	0x40170fb58d1526d9              # double 5.7653410000000003
	.quad	0x40043205bc01a36e              # double 2.5244249999999999
	.quad	0x40230b1337eb28d8              # double 9.5216309999999992
	.quad	0x402040a82a5614e0              # double 8.1262830000000008
	.quad	0x3ff3f6a50d6b228e              # double 1.247716
	.quad	0x401fc8a2ec28b2a7              # double 7.9459340000000002
	.quad	0x3fd3a3db3bfb58d1              # double 0.30687599999999998
	.quad	0x4001eacd184c2720              # double 2.239649
	.quad	0x401f2a4b124d099e              # double 7.7913019999999999
	.quad	0x401beee6b8305d96              # double 6.9833020000000001
	.quad	0x401a96634117f844              # double 6.6468629999999997
	.quad	0x3fe3467be553ac4f              # double 0.60235399999999995
	.quad	0x40205cb89d6adf72              # double 8.1810960000000001
	.quad	0x4005e6c3b927d45a              # double 2.7376779999999998
	.quad	0x4008f4f3fd933e36              # double 3.1196060000000001
	.quad	0x40062780fdc1615f              # double 2.7692890000000001
	.quad	0x4022343eb7cbb3c8              # double 9.1020409999999998
	.quad	0x401ee1437c5692b4              # double 7.7199840000000002
	.quad	0x4019695421c04428              # double 6.3528599999999997
	.quad	0x401611919ac79703              # double 5.5171570000000001
	.quad	0x40226fcbf6e3f78c              # double 9.2183530000000004
	.quad	0x401d6c63ae2541d9              # double 7.3558490000000001
	.quad	0x40101a222d5171e3              # double 4.0255210000000003
	.quad	0x4020e329e4d5d80e              # double 8.4436789999999995
	.quad	0x3fe705f4a1272c95              # double 0.71947700000000003
	.quad	0x40139c9b845564b6              # double 4.9029369999999997
	.quad	0x401b78409e55c0fd              # double 6.8674340000000003
	.quad	0x40228b9192641b33              # double 9.2725950000000008
	.quad	0x3ff37b8800eae18b              # double 1.217659
	.quad	0x3fd03422467be554              # double 0.25318200000000002
	.quad	0x4021eb7d84901d19              # double 8.9599419999999999
	.quad	0x3ff7abe27179bfdf              # double 1.4794639999999999
	.quad	0x3fefde82d7b634db              # double 0.99591200000000001
	.quad	0x40004dd69d30270f              # double 2.0380069999999999
	.quad	0x400bbe60c38f3669              # double 3.4679579999999999
	.quad	0x40238b5b0bbf50e3              # double 9.7721789999999995
	.quad	0x401c25ff1d81f106              # double 7.0371059999999996
	.quad	0x400f5fd933e35c5b              # double 3.9218009999999999
	.quad	0x401f01c7de5082cf              # double 7.7517389999999997
	.quad	0x401a4d5d3dc8b86b              # double 6.5755509999999999
	.quad	0x400ea4f227d028a2              # double 3.8305400000000001
	.quad	0x4018c512ec6bce85              # double 6.1924549999999998
	.quad	0x4021da15b9a5a89c              # double 8.9259470000000007
	.quad	0x3ff65d28d002e233              # double 1.3977440000000001
	.quad	0x401a5d8c2a454de8              # double 6.5913550000000001
	.quad	0x3fe4cc2f837b4a23              # double 0.64992499999999997
	.quad	0x4001647778dd6170              # double 2.1740560000000002
	.quad	0x40163b5286b59147              # double 5.5579320000000001
	.quad	0x4004a032db1e9f27              # double 2.5782219999999998
	.quad	0x401b1821294573a8              # double 6.7735640000000004
	.quad	0x4023fb70cdc8754f              # double 9.9910949999999996
	.quad	0x401feb5d462c343b              # double 7.9798479999999996
	.quad	0x401691af7d30ad47              # double 5.642271
	.quad	0x402137f498c3b0c4              # double 8.6092879999999993
	.quad	0x40120ff972474539              # double 4.5156000000000001
	.quad	0x3ff12b80ecfa69be              # double 1.073121
	.quad	0x4010211409a24031              # double 4.0323029999999997
	.quad	0x4014116659d12cae              # double 5.0169920000000001
	.quad	0x3f357eed45e9185d              # double 3.28E-4
	.quad	0x4005dab649d388a9              # double 2.7317930000000001
	.quad	0x4021dbc8c0ce91c9              # double 8.9292660000000001
	.quad	0x402319cc100e6afd              # double 9.5503850000000003
	.quad	0x401cee7a311e85fd              # double 7.232888
	.quad	0x3fe5fc9de0503750              # double 0.687087
	.quad	0x3fe5047b24638c97              # double 0.65679699999999996
	.quad	0x40194a6f826edaa9              # double 6.3226909999999998
	.quad	0x401b3bdf090f733b              # double 6.8084680000000004
	.quad	0x4023b44113c68662              # double 9.8520590000000006
	.quad	0x4022f88b75ea67e8              # double 9.4854389999999995
	.quad	0x40107aa582dbe7f3              # double 4.1197720000000002
	.quad	0x402251101b003687              # double 9.1583260000000006
	.quad	0x40160524bfd2e947              # double 5.5050230000000004
	.quad	0x401045a5b9628cbd              # double 4.0680149999999999
	.quad	0x3ff4efe931876189              # double 1.3085720000000001
	.quad	0x3fe04ef240fa9c13              # double 0.50963700000000001
	.quad	0x4022a35371971c11              # double 9.3189960000000003
	.quad	0x4021825bd944aa54              # double 8.754607
	.quad	0x40167ead4f5903a7              # double 5.6237079999999997
	.quad	0x40157d556084a516              # double 5.3723960000000002
	.quad	0x4021c32af145521a              # double 8.8811870000000006
	.quad	0x3ffedcbbc2b94d94              # double 1.92889
	.quad	0x40128d1287c200c1              # double 4.6377660000000001
	.quad	0x4022c4b6e935b91f              # double 9.3842079999999992
	.quad	0x4008552b0a6fc58b              # double 3.0415860000000001
	.quad	0x401e7bb2788db057              # double 7.6207979999999997
	.quad	0x4008a42c7fbacb43              # double 3.0801630000000002
	.quad	0x4018096c3fc43b2e              # double 6.0092020000000002
	.quad	0x4020e84d98394749              # double 8.4537169999999993
	.quad	0x40007f0cbaf965b2              # double 2.062036
	.quad	0x40138f2e48e8a71e              # double 4.8898250000000001
	.quad	0x4017bd4ed2cbea4f              # double 5.9348710000000002
	.quad	0x40215807357e670e              # double 8.6719299999999997
	.quad	0x3fe21682f944241c              # double 0.56524799999999997
	.quad	0x402214a8c154c986              # double 9.0403500000000001
	.quad	0x4013cf1b69121251              # double 4.9522529999999998
	.quad	0x3ff9e6a012599ed8              # double 1.618805
	.quad	0x401763e39f77292c              # double 5.8475479999999997
	.quad	0x401b435e310dbf05              # double 6.8157889999999997
	.quad	0x40053a77e5eaab04              # double 2.6535489999999999
	.quad	0x400c3ce6c093d966              # double 3.5297369999999999
	.quad	0x4015a93a71151612              # double 5.4152620000000002
	.quad	0x40221d2502eec7c9              # double 9.0569229999999994
	.quad	0x400e16dfc5cdd50b              # double 3.7611690000000002
	.quad	0x40080883fd502257              # double 3.0041579999999999
	.quad	0x401c898e53eb399f              # double 7.1343319999999997
	.quad	0x3fa7bd8be7296f65              # double 0.046367999999999999
	.quad	0x40184a148ba83f4f              # double 6.0723440000000002
	.quad	0x400fc807357e670e              # double 3.9726699999999999
	.quad	0x400585260f5e41d5              # double 2.6900140000000001
	.quad	0x3fe991ba3ca7503c              # double 0.79903900000000005
	.quad	0x3ffde99e94ab1d50              # double 1.8695360000000001
	.quad	0x3fec202b841248d8              # double 0.87892700000000001
	.quad	0x4022b5881a1554fc              # double 9.3545540000000002
	.quad	0x401f2e9b38d60a63              # double 7.7955139999999998
	.quad	0x4023e527a20578e6              # double 9.9475680000000004
	.quad	0x4015ab30b5aa7158              # double 5.4171779999999998
	.quad	0x401e4ef1fddebd90              # double 7.5770949999999999
	.quad	0x3ff48dfaca361998              # double 1.2846630000000001
	.quad	0x4000f57d5a9eb207              # double 2.1198679999999999
	.quad	0x400ed4877681669d              # double 3.853774
	.quad	0x40200b17efe0ce0c              # double 8.0216670000000007
	.quad	0x401095fd04a2fcf0              # double 4.1464730000000003
	.quad	0x3ff10b0d0edc3bd6              # double 1.0651980000000001
	.quad	0x3fe585bc01a36e2f              # double 0.67257500000000003
	.quad	0x3fd6c2c1b10fd7e4              # double 0.35563699999999998
	.quad	0x4023ecb662fdfc1a              # double 9.9623290000000004
	.quad	0x4023fb4dcebfec14              # double 9.9908280000000004
	.quad	0x40213602ea960b70              # double 8.6054910000000007
	.quad	0x3ff62dd8b60f1b26              # double 1.386193
	.quad	0x401a96dce39b456b              # double 6.6473269999999998
	.quad	0x40183a4e379b77c0              # double 6.0569389999999999
	.quad	0x400dee13f4a98aa8              # double 3.7412489999999998
	.quad	0x4013a27aa68f4b62              # double 4.908671
	.quad	0x402277cc7d1bb491              # double 9.2339819999999992
	.quad	0x3ffa178705425f20              # double 1.630744
	.quad	0x40174085b18548aa              # double 5.8130100000000002
	.quad	0x4002716b11c6d1e1              # double 2.30538
	.quad	0x400c671ac14c660a              # double 3.5503439999999999
	.quad	0x4016d2d01c0ca601              # double 5.7058720000000003
	.quad	0x4018c669ced0b30b              # double 6.1937629999999997
	.quad	0x3fe5ea50d6b228dd              # double 0.68485300000000005
	.quad	0x4010952a84380885              # double 4.14567
	.quad	0x40234f2dc2b0ea18              # double 9.6546459999999996
	.quad	0x4022ae62bae03b3f              # double 9.3405970000000007
	.quad	0x40203bd3e4ef0282              # double 8.1168510000000005
	.quad	0x4022a2a5e785b5b7              # double 9.317672
	.quad	0x40135f77292c4934              # double 4.8432279999999999
	.quad	0x40169d349be8ff32              # double 5.6535209999999996
	.quad	0x3fee2bc947064ecf              # double 0.94284500000000004
	.quad	0x3feb8b5cbff47736              # double 0.86076200000000003
	.quad	0x4013613c254a3c64              # double 4.8449559999999998
	.quad	0x401f2e707e175d14              # double 7.7953510000000001
	.quad	0x401733bddfc9ff93              # double 5.800529
	.quad	0x40210963dc486ad3              # double 8.5183400000000002
	.quad	0x401a6662fdfc19c1              # double 6.5999869999999996
	.quad	0x3ff0926202539757              # double 1.035738
	.quad	0x40157fceb78897ea              # double 5.3748120000000004
	.quad	0x4018478dd616f86a              # double 6.069877
	.quad	0x4021980abf76a2f5              # double 8.7969570000000008
	.quad	0x401f90e38a7e73a3              # double 7.8914929999999996
	.quad	0x40155e3b03e20cd0              # double 5.342022
	.quad	0x4000c9563a9f383f              # double 2.098309
	.quad	0x3ff84f840181e03f              # double 1.5194129999999999
	.quad	0x400ba6351deefe50              # double 3.456156
	.quad	0x3fd04046412cf0fa              # double 0.25392300000000001
	.quad	0x3ffba7c8d195896a              # double 1.7284630000000001
	.quad	0x4001af911cf355ce              # double 2.2107260000000002
	.quad	0x4007fc105186db51              # double 2.998078
	.quad	0x4021e39c0ebedfa4              # double 8.9445499999999995
	.quad	0x401ee149c6f36ef8              # double 7.7200079999999999
	.quad	0x401e7ba237cdcca7              # double 7.6207359999999999
	.quad	0x402379845dc83233              # double 9.7373379999999993
	.quad	0x401a165cb35f3d7d              # double 6.5218379999999998
	.quad	0x401861465e892253              # double 6.0949949999999999
	.quad	0x4013729a1b9f98b7              # double 4.8619159999999999
	.quad	0x3fee4c20d5629d84              # double 0.94679299999999999
	.quad	0x400facfbfc6540cc              # double 3.9594649999999998
	.quad	0x40109c5c13fd0d06              # double 4.1526949999999996
	.quad	0x3ff8f84ba0e84274              # double 1.560619
	.quad	0x401f290bc7b45f18              # double 7.7900840000000002
	.quad	0x40147d97b30f8c65              # double 5.122649
	.quad	0x3fffdc842fa50939              # double 1.9913369999999999
	.quad	0x40142604189374bc              # double 5.0371249999999996
	.quad	0x4020927546d3f9e8              # double 8.2860510000000005
	.quad	0x3fe383e63e8dda49              # double 0.60985100000000003
	.quad	0x401fe72bcb5fe543              # double 7.975753
	.quad	0x4021605faebc408e              # double 8.6882300000000008
	.quad	0x40077438d1d8a548              # double 2.9317489999999999
	.quad	0x4023d1da597d49d8              # double 9.9098690000000004
	.quad	0x4010ed24180d3cff              # double 4.2315829999999997
	.quad	0x40223b341e14bdfd              # double 9.1156319999999997
	.quad	0x402068e8ea39c51e              # double 8.2049020000000006
	.quad	0x402118754f3775b8              # double 8.5477699999999999
	.quad	0x400c6a43bb40b34e              # double 3.5518869999999998
	.quad	0x400ca52502eec7c9              # double 3.5806369999999998
	.quad	0x40225d90c0ad03da              # double 9.1827450000000006
	.quad	0x4022c0f8a4c1ebc8              # double 9.3768969999999995
	.quad	0x3fdb9a95421c0443              # double 0.43131000000000003
	.quad	0x4003b2ba16e7a312              # double 2.462269
	.quad	0x40080a60913a4f87              # double 3.0050669999999999
	.quad	0x3fdf4fb549f94856              # double 0.48924000000000001
	.quad	0x40117f51ac9afe1e              # double 4.3743350000000003
	.quad	0x400215a3a08398a6              # double 2.2605659999999999
	.quad	0x40118602c9081c2e              # double 4.3808699999999998
	.quad	0x3ffca3f24d8fd5cb              # double 1.7900259999999999
	.quad	0x3fd45996744b2b77              # double 0.31796799999999997
	.quad	0x3fe158dbcec84f90              # double 0.54209700000000005
	.quad	0x4000466dbd72bcb6              # double 2.034389
	.quad	0x4005b4e2b063e07a              # double 2.7133229999999999
	.quad	0x401f703e20ccff22              # double 7.8596120000000003
	.quad	0x40202b6e935b91f7              # double 8.0848279999999999
	.quad	0x401885bd944aa540              # double 6.1306060000000002
	.quad	0x400b78e325d4a5df              # double 3.4340269999999999
	.quad	0x3fd7a2339c0ebee0              # double 0.36927500000000002
	.quad	0x40151d2b6f19934f              # double 5.278486
	.quad	0x40205b1ee2435697              # double 8.1779700000000002
	.quad	0x401aa7c3d68405b4              # double 6.6638330000000003
	.quad	0x3ff2ccc575c0767d              # double 1.174993
	.quad	0x4021bd490e66cb10              # double 8.8696979999999996
	.quad	0x4011973d9ec70004              # double 4.3976959999999998
	.quad	0x4013c83382e44b6f              # double 4.9455090000000004
	.quad	0x4012161c36976bc2              # double 4.5215920000000001
	.quad	0x401e5c6327ed84d3              # double 7.5902219999999998
	.quad	0x402124cb1897a67a              # double 8.5718619999999994
	.quad	0x402364117f84449e              # double 9.6954460000000005
	.quad	0x400153f5b5fa2270              # double 2.1659959999999998
	.quad	0x400cd3a365cb35f4              # double 3.6033390000000001
	.quad	0x402042ceee0f3cb4              # double 8.1304850000000001
	.quad	0x40042e06d938151a              # double 2.5224739999999999
	.quad	0x4018860285ec3dab              # double 6.1308689999999997
	.quad	0x4023ad4c76d117b5              # double 9.8384739999999997
	.quad	0x4009d05319828805              # double 3.226721
	.quad	0x40222342aa9f7b5b              # double 9.0688680000000002
	.quad	0x402246f284167a96              # double 9.1385690000000004
	.quad	0x401f23dd11be6e65              # double 7.7850229999999998
	.quad	0x40152d50225742dd              # double 5.294251
	.quad	0x40114c7e28240b78              # double 4.3247
	.quad	0x401b4c1094a2b9d4              # double 6.8242820000000002
	.quad	0x4011d16659d12cae              # double 4.4544920000000001
	.quad	0x401c105ccc89b0ee              # double 7.0159789999999997
	.quad	0x400b6bb44e50c5eb              # double 3.4275899999999999
	.quad	0x4023912a51e321a3              # double 9.7835260000000001
	.quad	0x400d1bd9cae21102              # double 3.6385990000000001
	.quad	0x40205cbaf965b20c              # double 8.1811140000000008
	.quad	0x3ffdd60a63305101              # double 1.8647560000000001
	.quad	0x4002849fd7a13c25              # double 2.3147579999999999
	.quad	0x3fefcfdd22856606              # double 0.99412400000000001
	.quad	0x4011131d712a0ec7              # double 4.2686669999999998
	.quad	0x4020ef9ebe9c8861              # double 8.4680079999999993
	.quad	0x400b4323358f2e06              # double 3.4077820000000001
	.quad	0x401891f85d744f5d              # double 6.1425489999999998
	.quad	0x400c66fac6045baf              # double 3.5502829999999999
	.quad	0x4003207cc7d1bb49              # double 2.390863
	.quad	0x40103e03f705857b              # double 4.060562
	.quad	0x4009b871e6cd2913              # double 3.2150609999999999
	.quad	0x3fd0fb2aae297397              # double 0.26533000000000001
	.quad	0x40210209edbf8b9c              # double 8.5039820000000005
	.quad	0x40175a3ad18d25ee              # double 5.8381150000000002
	.quad	0x4010831162281345              # double 4.1279960000000004
	.quad	0x401371eff9f87f02              # double 4.8612669999999998
	.quad	0x400bcbdf4c2b51bd              # double 3.4745469999999998
	.quad	0x4006c99e0e73604a              # double 2.848446
	.quad	0x3ffb181e03f70585              # double 1.6933879999999999
	.quad	0x3fe41491f2dc2b0f              # double 0.62751100000000004
	.quad	0x3feb113836a832ba              # double 0.84585200000000005
	.quad	0x401c0eb13dfb0d52              # double 7.014348
	.quad	0x3f8671ac14c660a2              # double 0.010959
	.quad	0x4022b4534bd76ee7              # double 9.3521979999999996
	.quad	0x400b22517e77d524              # double 3.3917570000000001
	.quad	0x4023dd0f1f57b41c              # double 9.931756
	.quad	0x4023fc1a47a9e2bd              # double 9.992388
	.quad	0x3fd9535c9e6687f4              # double 0.39571299999999998
	.quad	0x40024f8df7a4e7ab              # double 2.2888449999999998
	.quad	0x401939e236c15d2d              # double 6.306527
	.quad	0x4007713f8db48909              # double 2.9302969999999999
	.quad	0x401cdb37867f0aa2              # double 7.2140789999999999
	.quad	0x4019736c9c0a8d22              # double 6.3627190000000002
	.quad	0x3ff1d3d74d594f27              # double 1.1142190000000001
	.quad	0x4020f384988094e6              # double 8.4756210000000003
	.quad	0x3ffed4e3bcd35a86              # double 1.9269750000000001
	.quad	0x400f3253543aeab8              # double 3.8995730000000002
	.quad	0x401478ac9f2fdb90              # double 5.1178460000000001
	.quad	0x40224b60f1b25f63              # double 9.1472239999999996
	.quad	0x401ff23a29c779a7              # double 7.9865500000000002
	.quad	0x40239a849cb252ce              # double 9.801793
	.quad	0x402307d63022dd7b              # double 9.5153060000000007
	.quad	0x402145fbd6a593a3              # double 8.6366870000000002
	.quad	0x4015de2f37fbefd0              # double 5.466977
	.quad	0x40183b5ed8d36b4c              # double 6.0579789999999996
	.quad	0x40059583a53b8e4c              # double 2.6980050000000002
	.quad	0x3fb73a8a3f8982cb              # double 0.090736999999999998
	.quad	0x40143a07f66e86c6              # double 5.0566709999999997
	.quad	0x401afbee807bbb62              # double 6.7460269999999998
	.quad	0x3fb6f1cb89d6adf7              # double 0.089626999999999998
	.quad	0x40229669ad42c3ca              # double 9.2937750000000001
	.quad	0x4019af459d99029b              # double 6.4211640000000001
	.quad	0x400adaa369fcf3dc              # double 3.356757
	.quad	0x4002d00abf76a2f5              # double 2.3515830000000002
	.quad	0x4010d527a20578e6              # double 4.2081590000000002
	.quad	0x4022f3167ec7863c              # double 9.4747810000000001
	.quad	0x402013cea6c1a049              # double 8.0386860000000002
	.quad	0x4004dc4545846e8f              # double 2.6075539999999999
	.quad	0x40221986b9c304cd              # double 9.0498560000000001
	.quad	0x4021f3a2595bbbe8              # double 8.9758479999999992
	.quad	0x402273a7fc32ebe6              # double 9.2258910000000007
	.quad	0x4010d4677b395c42              # double 4.2074259999999999
	.quad	0x4010306d0d49949f              # double 4.0472910000000004
	.quad	0x4012797bb7308356              # double 4.6186360000000004
	.quad	0x4006411dbca9691a              # double 2.7817949999999998
	.quad	0x4017ca93f290abb4              # double 5.9478299999999997
	.quad	0x3fcdeb52c9d16fca              # double 0.23374400000000001
	.quad	0x400c471ac14c660a              # double 3.5347189999999999
	.quad	0x4020082a5614df8b              # double 8.0159479999999999
	.quad	0x401a7d2d01c0ca60              # double 6.622242
	.quad	0x3fdebb9cf9a06a6e              # double 0.48020099999999999
	.quad	0x401ebaeddce7cd03              # double 7.6825479999999997
	.quad	0x4001375c0767d34e              # double 2.152031
	.quad	0x4005c0a7c5ac471b              # double 2.7190699999999999
	.quad	0x402326eb2d0a2446              # double 9.5760129999999997
	.quad	0x4017e2ef4e0114d3              # double 5.971616
	.quad	0x400fd651b0ccbc06              # double 3.9796480000000001
	.quad	0x40157134ce3de615              # double 5.3605530000000003
	.quad	0x401e7746887a8d65              # double 7.6164800000000001
	.quad	0x3fe091be6e653869              # double 0.517791
	.quad	0x3fe17fe4bcad9ad8              # double 0.54686199999999996
	.quad	0x400d679357603926              # double 3.6755740000000001
	.quad	0x401aaa3cea6c1a05              # double 6.6662480000000004
	.quad	0x402196759ab6d00b              # double 8.7938659999999995
	.quad	0x401279fdbd2fa0d7              # double 4.6191319999999996
	.quad	0x40019f505d0fa58f              # double 2.2027899999999998
	.quad	0x4011f502ababead5              # double 4.489268
	.quad	0x401b3963992c8c50              # double 6.806044
	.quad	0x401e54f7ec3547e0              # double 7.5829769999999996
	.quad	0x3f8585be1a826245              # double 0.010508999999999999
	.quad	0x400d34d1e96c3fc4              # double 3.6507909999999999
	.quad	0x401fe90795f676ea              # double 7.9775679999999998
	.quad	0x4020f7de7210be94              # double 8.4841189999999997
	.quad	0x4017f5e0b4e11dbd              # double 5.9901150000000003
	.quad	0x4003095182a9930c              # double 2.3795500000000001
	.quad	0x401c59db65ecc3e3              # double 7.0877509999999999
	.quad	0x40017329c347e8cd              # double 2.1812320000000001
	.quad	0x3fffb0856e696a27              # double 1.980596
	.quad	0x401604c7b02d59d5              # double 5.5046679999999997
	.quad	0x4017152fc2656abe              # double 5.7706900000000001
	.quad	0x400d0f6ad70e6f2f              # double 3.6325280000000002
	.quad	0x3fe60d4fdf3b645a              # double 0.68912499999999999
	.quad	0x401d1a8d21bc126a              # double 7.2759289999999996
	.quad	0x40125224aada33be              # double 4.5802180000000003
	.quad	0x3fff728848387df6              # double 1.965462
	.quad	0x40221bfb7a5f41af              # double 9.0546530000000001
	.quad	0x3ffeca4095f2452c              # double 1.9243779999999999
	.quad	0x401d49cae21101b0              # double 7.322063
	.quad	0x3fed903211cb039f              # double 0.92385200000000001
	.quad	0x402360ae10492360              # double 9.6888280000000009
	.quad	0x401f5371da37ef5b              # double 7.8314890000000003
	.quad	0x4005ab966be7afa7              # double 2.7087829999999999
	.quad	0x4004369f4906034f              # double 2.5266709999999999
	.quad	0x4018f9f666234a88              # double 6.2441040000000001
	.quad	0x4010fd6f112fd32c              # double 4.2474939999999997
	.quad	0x401fb686e7e62dc7              # double 7.9282490000000001
	.quad	0x3fec420b3d4ae42a              # double 0.88306200000000001
	.quad	0x4008b0ced4e4c943              # double 3.0863320000000001
	.quad	0x40192bd87b56b873              # double 6.2928179999999996
	.quad	0x400feb0e1b4bb5e1              # double 3.989773
	.quad	0x3fe3ebfca85caafc              # double 0.62255700000000003
	.quad	0x401481c2a0232096              # double 5.1267189999999996
	.quad	0x4013740314877681              # double 4.8632929999999996
	.quad	0x3fe9745bf26f1dc5              # double 0.79545399999999999
	.quad	0x4012b5942917507f              # double 4.6773230000000003
	.quad	0x40116c54bcf0b6b7              # double 4.3557920000000001
	.quad	0x4013df8e7ddca4b1              # double 4.9683169999999999
	.quad	0x3ff837f9d6f112fd              # double 1.513666
	.quad	0x3fee9f212d773190              # double 0.95692500000000003
	.quad	0x400e45a9a8049668              # double 3.7840150000000001
	.quad	0x4015cd1d8a548238              # double 5.4503079999999997
	.quad	0x4022794e7ee9142b              # double 9.2369269999999997
	.quad	0x4022a4621b7e0ac8              # double 9.3210610000000002
	.quad	0x4021bf0ac3a860dd              # double 8.8731290000000005
	.quad	0x3ffc60f7fcfc3f81              # double 1.773674
	.quad	0x4023a145953586cb              # double 9.8149840000000008
	.quad	0x40082e9ee45c358b              # double 3.022764
	.quad	0x402087c371da37ef              # double 8.2651629999999994
	.quad	0x3fdcdfc19c17225b              # double 0.45115699999999997
	.quad	0x4003ea50507a6bd7              # double 2.489411
	.quad	0x4017297edc7ef178              # double 5.7905230000000003
	.quad	0x401b09f44d445671              # double 6.7597209999999999
	.quad	0x401145e785b5b707              # double 4.3182660000000004
	.quad	0x3ff48e0b912dba4d              # double 1.2846789999999999
	.quad	0x3ffb927f5e84f095              # double 1.723266
	.quad	0x3fe99bcba3012168              # double 0.80026799999999998
	.quad	0x3fc8086bdf4c2b52              # double 0.18775700000000001
	.quad	0x3fd05818c5c9a34d              # double 0.25537700000000002
	.quad	0x400b0a7589efd86b              # double 3.3801070000000002
	.quad	0x400f53996fa82e88              # double 3.9158200000000001
	.quad	0x400d065a57646ae4              # double 3.6281020000000002
	.quad	0x4021113e3e29307b              # double 8.5336780000000001
	.quad	0x401c3a276b7ed41b              # double 7.0567909999999996
	.quad	0x40154baa582dbe7f              # double 5.3238919999999998
	.quad	0x40140f5e41d4b6a6              # double 5.0150079999999999
	.quad	0x4008977531db445f              # double 3.0739540000000001
	.quad	0x401bde878fabda0e              # double 6.967314
	.quad	0x4010b42528ae74f3              # double 4.1759230000000001
	.quad	0x400fa473cd573648              # double 3.9552990000000001
	.quad	0x3fda8650e779207d              # double 0.41444799999999998
	.quad	0x4010defdc9c4da90              # double 4.217765
	.quad	0x40218e30a91537a0              # double 8.7777150000000006
	.quad	0x3ffd04e0daa0cae6              # double 1.8136909999999999
	.quad	0x401a15154866a11f              # double 6.5205890000000002
	.quad	0x4018484c271fff7a              # double 6.0706030000000002
	.quad	0x402231df3300de4c              # double 9.0974059999999994
	.quad	0x400c66e2a80064aa              # double 3.5502370000000001
	.quad	0x4016b03b81b64e05              # double 5.6721019999999998
	.quad	0x4021954280ae1049              # double 8.7915229999999998
	.quad	0x4017fab367a0f909              # double 5.9948249999999996
	.quad	0x402169e16d6dc1a4              # double 8.7067979999999991
	.quad	0x401a4676640a6b94              # double 6.5688110000000002
	.quad	0x401d26d7a56de332              # double 7.2879319999999996
	.quad	0x40239b46fdeb52ca              # double 9.8032760000000003
	.quad	0x401e3f5f91600f34              # double 7.5618879999999997
	.quad	0x401ee4ce8101f31f              # double 7.7234439999999997
	.quad	0x401823cf2cf95d4f              # double 6.0349700000000004
	.quad	0x40034559f6ec5b08              # double 2.4088630000000002
	.quad	0x400d05e99e94ab1d              # double 3.6278869999999999
	.quad	0x4020ebf572de43ee              # double 8.4608570000000007
	.quad	0x401fe29802c0a4a0              # double 7.9712829999999997
	.quad	0x402206b97fe8ee6c              # double 9.0131340000000008
	.quad	0x40232ccff21b3aef              # double 9.5875240000000001
	.quad	0x4003f2ead9274e23              # double 2.4936120000000002
	.quad	0x40219a8fe260b2c8              # double 8.8018789999999996
	.quad	0x402206644d877250              # double 9.0124840000000006
	.quad	0x4021942d490e66cb              # double 8.7894079999999999
	.quad	0x40095ddebd9018e7              # double 3.1708349999999998
	.quad	0x3fb6f1886df82b1f              # double 0.089622999999999994
	.quad	0x400c172ef0ae5365              # double 3.51132
	.quad	0x401e3080b673c4f4              # double 7.5473660000000002
	.quad	0x4001c0d1b71758e2              # double 2.21915
	.quad	0x3fe876cacd184c27              # double 0.76450099999999999
	.quad	0x4004f25e56cd6c2f              # double 2.618344
	.quad	0x4013329cbab649d4              # double 4.7994260000000004
	.quad	0x401ed4449dbec248              # double 7.7072929999999999
	.quad	0x401d9ff10ecb74de              # double 7.406193
	.quad	0x401bc12556d19ded              # double 6.9386190000000001
	.quad	0x4022ad63ed0f6274              # double 9.3386530000000007
	.quad	0x40189874c8ffb8b2              # double 6.1488829999999997
	.quad	0x4017b2f05a708ede              # double 5.9247449999999997
	.quad	0x4012554de7ea5f85              # double 4.5833050000000002
	.quad	0x4016ccc426351def              # double 5.699967
	.quad	0x401dacc35ce18266              # double 7.4187139999999996
	.quad	0x40176f7db6e503fb              # double 5.8588779999999998
	.quad	0x401567c0b1359792              # double 5.3513210000000004
	.quad	0x40125af74cd3176a              # double 4.5888340000000003
	.quad	0x401365d206c8711d              # double 4.8494339999999996
	.quad	0x4023a5d5d3dc8b87              # double 9.8238970000000005
	.quad	0x4016e775fb2edfe7              # double 5.7260359999999997
	.quad	0x3fef643ed959a30a              # double 0.98098700000000005
	.quad	0x4018c849cb252ce0              # double 6.1955939999999998
	.quad	0x40238baa79bbadc1              # double 9.7727850000000007
	.quad	0x401cae4fb97bb731              # double 7.1702260000000004
	.quad	0x40158aac1094a2ba              # double 5.3854220000000002
	.quad	0x40140fd8f0c77dd8              # double 5.0154759999999996
	.quad	0x400cf62c77574f72              # double 3.6202019999999999
	.quad	0x4019bcc100e6afcd              # double 6.4343300000000001
	.quad	0x402379055b899392              # double 9.7363689999999998
	.quad	0x401da6534373f317              # double 7.4124270000000001
	.quad	0x4016a93469941850              # double 5.6652389999999997
	.quad	0x4010a9df548ecd8e              # double 4.1658910000000002
	.quad	0x400277739f340d4e              # double 2.3083260000000001
	.quad	0x4018affd60e94ee4              # double 6.1718650000000004
	.quad	0x3fe4cf8d716d2aa6              # double 0.65033600000000003
	.quad	0x3fe2a62456f75d9a              # double 0.58278099999999999
	.quad	0x400e46a11ec918e3              # double 3.7844869999999999
	.quad	0x40078867ad8e4324              # double 2.9416039999999999
	.quad	0x401a53ccd0fe8ab5              # double 6.581836
	.quad	0x4023bc32ebe596c8              # double 9.8675759999999996
	.quad	0x3ffd7fb04ee7c4a0              # double 1.843674
	.quad	0x401d630c23fab10c              # double 7.3467260000000003
	.quad	0x4001ec80c73abc94              # double 2.2404799999999998
	.quad	0x401d4b6cbd987c63              # double 7.3236569999999999
	.quad	0x4020a09bf9c62a1b              # double 8.3136899999999994
	.quad	0x4014513b9f127f5f              # double 5.0793290000000004
	.quad	0x4004a5ce5b4245f6              # double 2.5809600000000001
	.quad	0x4014978e9f6a93f3              # double 5.1480050000000004
	.quad	0x40139193f6c2699c              # double 4.8921659999999996
	.quad	0x4009c787485e3da3              # double 3.222426
	.quad	0x3ff3a4c51116a8b9              # double 1.227727
	.quad	0x3fd77674d1633483              # double 0.36660500000000001
	.quad	0x4021f1309c7ffde7              # double 8.9710739999999998
	.quad	0x3ffffe260b2c83ed              # double 1.9995480000000001
	.quad	0x400f62dcf4623d0c              # double 3.923273
	.quad	0x400a187724fa8b4c              # double 3.261946
	.quad	0x400a8ad3e920c06a              # double 3.317787
	.quad	0x402382f23033a472              # double 9.7557539999999996
	.quad	0x401b342b734b5137              # double 6.8009469999999999
	.quad	0x40101ee4e26d4802              # double 4.03017
	.quad	0x4011eebedfa43fe6              # double 4.4831500000000002
	.quad	0x3fe7fb02d59d55e7              # double 0.74939100000000003
	.quad	0x40022eca686e7e63              # double 2.2728470000000001
	.quad	0x3fef45953586ca8a              # double 0.977244
	.quad	0x401dee7967caea74              # double 7.4828849999999996
	.quad	0x4011ee1a8262456f              # double 4.4825229999999996
	.quad	0x3fffb6da87a072d2              # double 1.9821420000000001
	.quad	0x4023c7a56de3326a              # double 9.8899340000000002
	.quad	0x40221279bbadc098              # double 9.0360849999999999
	.quad	0x4015d3d07c84b5dd              # double 5.4568500000000002
	.quad	0x40212276534373f3              # double 8.5673089999999998
	.quad	0x4023fee158750c1c              # double 9.9978130000000007
	.quad	0x4021f72b239a38fc              # double 8.9827510000000003
	.quad	0x40136bc664d3bf2f              # double 4.8552489999999997
	.quad	0x4011becfa69be09c              # double 4.4363390000000003
	.quad	0x4020e744f5d35654              # double 8.4516980000000003
	.quad	0x401edf24d8fd5cb8              # double 7.7179140000000003
	.quad	0x4021731422ccb3a2              # double 8.7247629999999994
	.quad	0x4020292a0ec74320              # double 8.0803989999999999
	.quad	0x401c3bbb1f255f35              # double 7.0583309999999999
	.quad	0x4015585a0be51090              # double 5.3362809999999996
	.quad	0x40234b9cf9a06a6e              # double 9.6476819999999996
	.quad	0x40158082491afc05              # double 5.3754970000000002
	.quad	0x3fe095054ac29bf1              # double 0.51819099999999996
	.quad	0x4001c756861e9292              # double 2.2223329999999999
	.quad	0x4010856c508b32cf              # double 4.1302960000000004
	.quad	0x40111da72a7bd48d              # double 4.2789580000000003
	.quad	0x400d60192a737111              # double 3.671923
	.quad	0x4009721ccd962068              # double 3.1807189999999999
	.quad	0x40140e060fe47992              # double 5.0136950000000002
	.quad	0x401ca28e92d55a3a              # double 7.158747
	.quad	0x402242862f5989df              # double 9.1299299999999999
	.quad	0x4023ac5132f87ad1              # double 9.8365570000000008
	.quad	0x4014972799a1fd15              # double 5.1476119999999996
	.quad	0x4021d6a704bc2763              # double 8.9192429999999998
	.quad	0x4009ec1fc8f32379              # double 3.2402950000000001
	.quad	0x4020de1804d98394              # double 8.4337769999999991
	.quad	0x401534c2b51bd61f              # double 5.3015239999999997
	.quad	0x40091950b955f783              # double 3.1373609999999998
	.quad	0x4001d9db22d0e560              # double 2.2313749999999999
	.quad	0x400f78950763a190              # double 3.933878
	.quad	0x401d23532e7b3d8e              # double 7.284497
	.quad	0x4017f0f12c27a637              # double 5.9852949999999998
	.quad	0x40141ae9ab29e4d6              # double 5.0262820000000001
	.quad	0x4011a5a14488c60d              # double 4.4117480000000002
	.quad	0x40010bcb5fe542e5              # double 2.1307589999999998
	.quad	0x4003f704790b8499              # double 2.4956140000000002
	.quad	0x400c613a92a30553              # double 3.5474749999999999
	.quad	0x401c1a14488c60cc              # double 7.025468
	.quad	0x401aea81dc0db270              # double 6.7290109999999999
	.quad	0x4022564755ffe6d6              # double 9.1685130000000008
	.quad	0x3fd419a415f45e0b              # double 0.31406499999999998
	.quad	0x401d6916ca46e08f              # double 7.3526259999999999
	.quad	0x400aab8950763a19              # double 3.333758
	.quad	0x40176f39085f4a12              # double 5.8586159999999996
	.quad	0x3ffef55582129457              # double 1.9348959999999999
	.quad	0x4002ec319c5a3e3a              # double 2.365329
	.quad	0x401a68e219652bd4              # double 6.6024250000000002
	.quad	0x401af4fa48301a7a              # double 6.739236
	.quad	0x401f73f359ff4fd7              # double 7.8632330000000001
	.quad	0x400476262cba732e              # double 2.55769
	.quad	0x4023d04e831ad213              # double 9.9068489999999993
	.quad	0x40187882adc4c9c9              # double 6.117686
	.quad	0x4021110e02214270              # double 8.5333100000000002
	.quad	0x3ff2f1971c10d7bf              # double 1.1839820000000001
	.quad	0x401eecc6822ff089              # double 7.7312260000000003
	.quad	0x400eddc5931ca7d6              # double 3.8582869999999998
	.quad	0x40014bda0dfdef85              # double 2.1620370000000002
	.quad	0x4022e11bc5586445              # double 9.4396649999999997
	.quad	0x4019c14c22ee4192              # double 6.4387670000000004
	.quad	0x4004878af3e468cb              # double 2.5661830000000001
	.quad	0x4010826c7eae5bc8              # double 4.1273669999999996
	.quad	0x400369dbec2480e9              # double 2.4266890000000001
	.quad	0x402163ca9691a75d              # double 8.6949050000000003
	.quad	0x3ff0a1fc08fa7a85              # double 1.039547
	.quad	0x3fecba5e353f7cee              # double 0.89775000000000005
	.quad	0x4015ce64f54d1e97              # double 5.4515570000000002
	.quad	0x401af939eadd590c              # double 6.743385
	.quad	0x4012a9b499d0203e              # double 4.6657279999999997
	.quad	0x40077d94d0dcfcc6              # double 2.9363190000000001
	.quad	0x40172d7c6fbd273d              # double 5.7944199999999997
	.quad	0x4023924c8366516e              # double 9.7857400000000005
	.quad	0x402116aad1d041cc              # double 8.5442719999999994
	.quad	0x3fb4ac4b4d056c51              # double 0.080754000000000006
	.quad	0x4022299a62ed3522              # double 9.0812559999999998
	.quad	0x3fc2ea209aaa3ad2              # double 0.14777000000000001
	.quad	0x401e2a9b499d0204              # double 7.5416080000000001
	.quad	0x4004b163baba7b91              # double 2.5866159999999998
	.quad	0x401397d4e09784ec              # double 4.8982729999999997
	.quad	0x4012b832fcac8e69              # double 4.6798820000000001
	.quad	0x400811aeb3dd11be              # double 3.0086339999999998
	.quad	0x401c3525892684cf              # double 7.051901
	.quad	0x3fff5e6ab9b23dd5              # double 1.9605509999999999
	.quad	0x4009ba847b24638d              # double 3.2160730000000002
	.quad	0x3fe8c1700cd85597              # double 0.773613
	.quad	0x3ff54e8ea39c51db              # double 1.3316790000000001
	.quad	0x4023b8d5a5b9628d              # double 9.8610050000000004
	.quad	0x400bd698fe69270b              # double 3.479784
	.quad	0x401551f18c9fb613              # double 5.3300229999999997
	.quad	0x3ff7c38088509bfa              # double 1.4852300000000001
	.quad	0x4021f58298cc1440              # double 8.9795119999999997
	.quad	0x400703a3a8e71477              # double 2.8767770000000001
	.quad	0x401130f840181e04              # double 4.297822
	.quad	0x40033d76683c297c              # double 2.405011
	.quad	0x401cdde939eadd59              # double 7.21671
	.quad	0x401912e1ef73c0c2              # double 6.26844
	.quad	0x401cebf0dc768dfc              # double 7.2304110000000001
	.quad	0x3ff82efc371da37f              # double 1.511471
	.quad	0x3fc4f840181e03f7              # double 0.163826
	.quad	0x3ffabb645a1cac08              # double 1.67075
	.quad	0x4017e449129888f8              # double 5.9729349999999997
	.quad	0x3fa0882f0e0a84be              # double 0.032288999999999998
	.quad	0x3fbd0d2806af46aa              # double 0.113482
	.quad	0x401231a21ea35936              # double 4.54847
	.quad	0x3fe113ff25e56cd7              # double 0.53369100000000003
	.quad	0x400f7f926c7eae5c              # double 3.9372910000000001
	.quad	0x40207c2396073de2              # double 8.2424590000000002
	.quad	0x3ff88995aaf78fef              # double 1.53359
	.quad	0x3ff30b1897a67a53              # double 1.1902090000000001
	.quad	0x401325d41fa76534              # double 4.7869419999999998
	.quad	0x40103564b662fdfc              # double 4.0521419999999999
	.quad	0x402117a85015c209              # double 8.5462059999999997
	.quad	0x4021ab74794ea077              # double 8.834873
	.quad	0x4023ae67d77fae36              # double 9.8406359999999999
	.quad	0x401d5c0980b24207              # double 7.33988
	.quad	0x3fb747e8ccdd93c4              # double 0.090940999999999994
	.quad	0x4000eec204f2ae08              # double 2.116581
	.quad	0x401ec71151611ba4              # double 7.6944020000000002
	.quad	0x4016fb54195cc858              # double 5.745438
	.quad	0x401f72a77a2cecc8              # double 7.8619669999999999
	.quad	0x40227f51ce28ed5f              # double 9.2486709999999999
	.quad	0x401167253da72a7c              # double 4.3507280000000002
	.quad	0x40128e3193f6c26a              # double 4.6388610000000003
	.quad	0x4021d369fcf3dc05              # double 8.9129179999999995
	.quad	0x3ff0c15f45e0b4e1              # double 1.04721
	.quad	0x401c144a6223e187              # double 7.0198150000000004
	.quad	0x4014402ea960b6fa              # double 5.062678
	.quad	0x40181d744f5d3565              # double 6.0287639999999998
	.quad	0x4008384901d19158              # double 3.0274830000000001
	.quad	0x40224c0db2702a35              # double 9.1485420000000008
	.quad	0x4018a4ca925fe975              # double 6.1609290000000003
	.quad	0x3ffc29003eea209b              # double 1.7600100000000001
	.quad	0x400400b4e11dbca9              # double 2.5003449999999998
	.quad	0x40119f3e468cac4b              # double 4.4055109999999997
	.quad	0x3ff83abb8800eae2              # double 1.5143390000000001
	.quad	0x400b8e2b063e07a3              # double 3.4444180000000002
	.quad	0x400b3c7d5ed06fef              # double 3.4045359999999998
	.quad	0x4021defcbd556085              # double 8.9355220000000006
	.quad	0x4017e2dcb1465e89              # double 5.9715449999999999
	.quad	0x400c73c925785f8d              # double 3.5565359999999999
	.quad	0x40104721d53cddd7              # double 4.0694650000000001
	.quad	0x4004fee78183f91e              # double 2.6244649999999998
	.quad	0x401a2583e8576cce              # double 6.5366359999999997
	.quad	0x401d5e9ff0cbaf96              # double 7.3424069999999997
	.quad	0x401aedcd7060bb2c              # double 6.7322290000000002
	.quad	0x40228f227d028a1e              # double 9.27956
	.quad	0x401b825d8d79d0a6              # double 6.8773099999999996
	.quad	0x3fed6f6d7625204b              # double 0.919852
	.quad	0x4011f8a372606fac              # double 4.4928109999999997
	.quad	0x402386957470eb25              # double 9.7628590000000006
	.quad	0x401d3ffe6d58c8ef              # double 7.312494
	.quad	0x40215f87ad080b67              # double 8.6865819999999996
	.quad	0x4021261a3f4666ed              # double 8.5744190000000007
	.quad	0x4008dd03968d759f              # double 3.107917
	.quad	0x401a88d1958969a1              # double 6.6336120000000003
	.quad	0x3feb9d53cddd6e05              # double 0.86295500000000003
	.quad	0x401eecb20fb224ab              # double 7.7311480000000001
	.quad	0x3fff0a66559f6ec6              # double 1.9400390000000001
	.quad	0x4011e220bc382a13              # double 4.470828
	.quad	0x4008436c15d2d01c              # double 3.032921
	.quad	0x401710285ec3dab6              # double 5.7657790000000002
	.quad	0x40236b4b2fa93af7              # double 9.7095579999999994
	.quad	0x40062e1ef73c0c20              # double 2.7725200000000001
	.quad	0x4023ab8d60a63305              # double 9.8350629999999998
	.quad	0x4018adb9c7368ad7              # double 6.1696540000000004
	.quad	0x4020100ef1348b22              # double 8.0313639999999999
	.quad	0x402371b13165d399              # double 9.7220549999999992
	.quad	0x400bf8c7e28240b8              # double 3.4964750000000002
	.quad	0x400c5722e1ac57e2              # double 3.5425469999999999
	.quad	0x4006e558ea7ce0fc              # double 2.8619859999999999
	.quad	0x4021db61565c2d28              # double 8.9284770000000009
	.quad	0x40175e892253111f              # double 5.84232
	.quad	0x40140c054ef459da              # double 5.0117390000000004
	.quad	0x3febe957470eb24a              # double 0.87223399999999995
	.quad	0x4010b67903211cb0              # double 4.1781959999999998
	.quad	0x40209b968d759ee9              # double 8.3038830000000008
	.quad	0x401234d2b2bfdb4d              # double 4.5515850000000002
	.quad	0x3ff7576ee73e681b              # double 1.4588460000000001
	.quad	0x4018b7f6f4be835e              # double 6.1796530000000001
	.quad	0x3ffed46c332f0175              # double 1.9268609999999999
	.quad	0x4019e33226c3b928              # double 6.4718710000000002
	.quad	0x4022c333764f11b6              # double 9.3812519999999999
	.quad	0x4015a7b634dad320              # double 5.4137810000000002
	.quad	0x40210478c868b9fe              # double 8.5087340000000005
	.quad	0x401915dd095af295              # double 6.2713510000000001
	.quad	0x40060f6ad70e6f2f              # double 2.7575280000000002
	.quad	0x3fdd5dbb9cf9a06a              # double 0.45884599999999998
	.quad	0x40137510d38cda6e              # double 4.8643219999999996
	.quad	0x40203ff5e84f0953              # double 8.1249230000000008
	.quad	0x4017db3fa6defc7a              # double 5.9641099999999998
	.quad	0x401db9ad42c3c9ef              # double 7.4313250000000002
	.quad	0x400f0920c069e7fb              # double 3.8794569999999999
	.quad	0x4020b3cc8de2ac32              # double 8.3511699999999998
	.quad	0x3ff55e6ff7dfa00e              # double 1.335556
	.quad	0x3fe20fe047d3d428              # double 0.564438
	.quad	0x402397e974a3400c              # double 9.7967030000000008
	.quad	0x400dfa71151611ba              # double 3.7472859999999999
	.quad	0x401bc4f3775b8130              # double 6.9423349999999999
	.quad	0x401187125dd095af              # double 4.3819059999999999
	.quad	0x401974ccab3edd8b              # double 6.3640619999999997
	.quad	0x401b6d234eb9a177              # double 6.8565800000000001
	.quad	0x401f4f7596851223              # double 7.8275969999999999
	.quad	0x40198dbca9691a76              # double 6.3884150000000002
	.quad	0x40229823a6ce3583              # double 9.2971470000000007
	.quad	0x401dbd938151a438              # double 7.4351330000000004
	.quad	0x40236b882278d0cc              # double 9.7100229999999996
	.quad	0x401db049a9973d9f              # double 7.4221560000000002
	.quad	0x401b8a2cecc814d7              # double 6.8849369999999999
	.quad	0x4016c446b69db65f              # double 5.6916760000000002
	.quad	0x40076769ec2ce465              # double 2.9254950000000002
	.quad	0x4016d25a250f8402              # double 5.7054220000000004
	.quad	0x3fc028027d88c1db              # double 0.126221
	.quad	0x3fdd6f1dc50ce4eb              # double 0.45990700000000001
	.quad	0x4021af82d38476f3              # double 8.8427950000000006
	.quad	0x4020135bb384fd2a              # double 8.0378089999999993
	.quad	0x40069fff79c842fa              # double 2.8281239999999999
	.quad	0x40237e82730c6717              # double 9.7470890000000007
	.quad	0x401f857c914b167f              # double 7.8803580000000001
	.quad	0x40193dd8b60f1b26              # double 6.310397
	.quad	0x40204bb1290257c9              # double 8.1478359999999999
	.quad	0x3ff02ac753e707e1              # double 1.0104439999999999
	.quad	0x402194fc610f0e91              # double 8.7909880000000005
	.quad	0x4002355475a31a4c              # double 2.2760400000000001
	.quad	0x3fff120d130df9be              # double 1.941907
	.quad	0x40040c95bff04578              # double 2.5061450000000001
	.quad	0x40224f021d10b1ff              # double 9.1543130000000001
	.quad	0x40076df04ddb5526              # double 2.9286810000000001
	.quad	0x40019a95c853c148              # double 2.2004809999999999
	.quad	0x40101cf0307f23cd              # double 4.0282600000000004
	.quad	0x4005b2dd377e1b8f              # double 2.7123360000000001
	.quad	0x401dd105186db50f              # double 7.4541209999999998
	.quad	0x4004530728e92d56              # double 2.5405410000000002
	.quad	0x4017878a2a90cd42              # double 5.8823629999999998
	.quad	0x40124a92e62131a9              # double 4.5728260000000001
	.quad	0x401290f451761459              # double 4.6415569999999997
	.quad	0x4015126351deefe5              # double 5.267957
	.quad	0x4020c95810624dd3              # double 8.3932500000000001
	.quad	0x4007bebe9c886163              # double 2.968137
	.quad	0x4012479d0a67620f              # double 4.5699350000000001
	.quad	0x40100e02ea960b70              # double 4.0136830000000003
	.quad	0x400f0a159817b95a              # double 3.8799239999999999
	.quad	0x3fed83d145d85165              # double 0.92234099999999997
	.quad	0x401c1d5a187a4a49              # double 7.028664
	.quad	0x4022b25e13b18dac              # double 9.3483739999999997
	.quad	0x4011e2ccf6be37df              # double 4.4714850000000004
	.quad	0x401dcd3aa369fcf4              # double 7.4504190000000001
	.quad	0x4021892be48a58b4              # double 8.767913
	.quad	0x40223c03361565c3              # double 9.1172120000000003
	.quad	0x401b3fdd65a14489              # double 6.8123680000000002
	.quad	0x402365cf67b1c001              # double 9.6988479999999999
	.quad	0x40128a54c5543287              # double 4.6350889999999998
	.quad	0x3ff9a34ca0c282c7              # double 1.602368
	.quad	0x3fabf63c31df761d              # double 0.054613000000000002
	.quad	0x3fc3a3c21187e7c0              # double 0.15343499999999999
	.quad	0x3ff9127d45a5fc7e              # double 1.5670139999999999
	.quad	0x40224b3dd11be6e6              # double 9.1469559999999994
	.quad	0x4016ee6149c6f36f              # double 5.732793
	.quad	0x4021f328b6d86ec1              # double 8.9749199999999991
	.quad	0x4016bb28522ea0fd              # double 5.6827709999999998
	.quad	0x40208c37a3db3bfb              # double 8.2738619999999994
	.quad	0x40223eeeb702602d              # double 9.1229150000000008
	.quad	0x400edc65c70435f0              # double 3.8576160000000002
	.quad	0x40221254c5543287              # double 9.0358029999999996
	.quad	0x3ff8a659d12cadde              # double 1.540613
	.quad	0x401189de05037500              # double 4.3846360000000004
	.quad	0x401307cd03537197              # double 4.7576179999999999
	.quad	0x40088c1d29dc725c              # double 3.0684149999999999
	.quad	0x401db8383ad9f0a2              # double 7.4299020000000002
	.quad	0x400c03f572de43ee              # double 3.5019330000000002
	.quad	0x3fe5823c85c24c40              # double 0.67214799999999997
	.quad	0x40195382e44b6e93              # double 6.3315539999999997
	.quad	0x4007da35d67ba238              # double 2.9815480000000001
	.quad	0x4017ea369fcf3dc0              # double 5.9787239999999997
	.quad	0x4019b518b0d0edc4              # double 6.4268520000000002
	.quad	0x400d2bf22c01e68a              # double 3.646458
	.quad	0x401a83743632c1f4              # double 6.6283729999999998
	.quad	0x4002486940357a35              # double 2.2853569999999999
	.quad	0x401afc2b0ea18373              # double 6.7462580000000001
	.quad	0x400be45e4e69f05f              # double 3.4865080000000002
	.quad	0x40205b23dd54da4d              # double 8.1780080000000002
	.quad	0x4023cb94face67d7              # double 9.8976209999999991
	.quad	0x400c2ed56b00ffda              # double 3.5228679999999999
	.quad	0x402174e703afb7e9              # double 8.7283249999999999
	.quad	0x3fee006af46aa088              # double 0.93755100000000002
	.quad	0x402290d887ebf22c              # double 9.2829019999999999
	.quad	0x400cbdcb5781c715              # double 3.592673
	.quad	0x40175ab191dde376              # double 5.8385680000000004
	.quad	0x3fb17fd82773e250              # double 0.068357000000000001
	.quad	0x4020eb899392189c              # double 8.4600340000000002
	.quad	0x4016794ea077036d              # double 5.6184640000000003
	.quad	0x401a5eaa2a0a9585              # double 6.5924459999999998
	.quad	0x3fe2ad77318fc505              # double 0.58367500000000005
	.quad	0x40174c22ee41919b              # double 5.8243520000000002
	.quad	0x401c0af5fd47bedb              # double 7.0107039999999996
	.quad	0x40233c81b21c475e              # double 9.6181769999999993
	.quad	0x3fdb91bc55864452              # double 0.43076999999999999
	.quad	0x40207ae9ee45c359              # double 8.2400660000000006
	.quad	0x4019ac5004fb1184              # double 6.4182740000000003
	.quad	0x4018a6ce789e774f              # double 6.1628970000000001
	.quad	0x3fe5cc37e6f71a7e              # double 0.68117899999999998
	.quad	0x40239b400b88ca3e              # double 9.8032229999999991
	.quad	0x400b2d9b5e95b78d              # double 3.3972690000000001
	.quad	0x400fff151e75360d              # double 3.999552
	.quad	0x4015676188b1140a              # double 5.3509580000000003
	.quad	0x4021d7b4e54f7a92              # double 8.9213020000000007
	.quad	0x3ff02ca57a786c22              # double 1.0108999999999999
	.quad	0x4002717720c8cd64              # double 2.3054030000000001
	.quad	0x4003bb66f9335d25              # double 2.4665050000000002
	.quad	0x3fd7f316e3715400              # double 0.37421199999999999
	.quad	0x401ea4070329802c              # double 7.660183
	.quad	0x3fec078d92fb19e7              # double 0.87592199999999998
	.quad	0x4014756084a515cf              # double 5.1146260000000003
	.quad	0x400e001b43526528              # double 3.7500520000000002
	.quad	0x401dbf1fddebd902              # double 7.4366450000000004
	.quad	0x40230bfe9fadafd1              # double 9.5234269999999998
	.quad	0x3fcd94a6eb91b3f2              # double 0.231099
	.quad	0x401a4dae81882adc              # double 6.5758609999999997
	.quad	0x402237b30f8c64fe              # double 9.1087880000000006
	.quad	0x40101bf26f1dc50d              # double 4.0272920000000001
	.quad	0x4023dc039abf3387              # double 9.9297149999999998
	.quad	0x4018a2c8c5004fb1              # double 6.1589689999999999
	.quad	0x400d068db8bac711              # double 3.6282000000000001
	.quad	0x40031f6f4be835df              # double 2.3903490000000001
	.quad	0x4003728522ea0fd4              # double 2.4309180000000001
	.quad	0x401516b441bb8c33              # double 5.2721720000000003
	.quad	0x401fe5d56f32bdc2              # double 7.9744469999999996
	.quad	0x4015a21c475e6363              # double 5.4083110000000003
	.quad	0x4012bedbf8b9baa1              # double 4.6863859999999997
	.quad	0x401619c27e953155              # double 5.525156
	.quad	0x4021f70520d130e0              # double 8.9824610000000007
	.quad	0x4023388e79aae6c9              # double 9.610462
	.quad	0x40038d70e6f2e8c0              # double 2.4440629999999999
	.quad	0x4021e39e060fe47a              # double 8.9445650000000008
	.quad	0x4012d6e6d9be4cd7              # double 4.7098649999999997
	.quad	0x3ff94a47ecfe9b7c              # double 1.580635
	.quad	0x40148e4ffc9795b3              # double 5.1389769999999997
	.quad	0x402228203e63e8de              # double 9.0783710000000006
	.quad	0x40123a8049667b5f              # double 4.5571299999999999
	.quad	0x3ff0aa737110e454              # double 1.041614
	.quad	0x40238632c1f42bb6              # double 9.7621059999999993
	.quad	0x401161aef6f8f041              # double 4.3453939999999998
	.quad	0x401b5c486ad2dcb1              # double 6.8401199999999998
	.quad	0x4020386530058149              # double 8.1101469999999996
	.quad	0x400aebd76ee73e68              # double 3.365157
	.quad	0x4011c40cc78e9f6b              # double 4.4414550000000004
	.quad	0x400072ca57a786c2              # double 2.0560499999999999
	.quad	0x401fc913e81450f0              # double 7.9463650000000001
	.quad	0x4003337d1fe64f55              # double 2.4001410000000001
	.quad	0x402129a86940357a              # double 8.5813629999999996
	.quad	0x40039efb6dca07f6              # double 2.4526279999999998
	.quad	0x401e21cb89d6adf7              # double 7.5330029999999998
	.quad	0x4005ce09fe86833c              # double 2.7256049999999998
	.quad	0x40140c5fbf83382e              # double 5.0120839999999998
	.quad	0x401af3aeee957471              # double 6.7379720000000001
	.quad	0x3ff4add590c0ad04              # double 1.29244
	.quad	0x4023fefcbd556085              # double 9.9980220000000006
	.quad	0x401c97afea3df6dc              # double 7.1481320000000004
	.quad	0x4022919ce075f6fd              # double 9.2843999999999998
	.quad	0x3fe957f737da61e1              # double 0.79198800000000003
	.quad	0x40177f82b1f687b1              # double 5.8745219999999998
	.quad	0x40071d1b2e59af9f              # double 2.8892120000000001
	.quad	0x4003e725c3dee782              # double 2.4878650000000002
	.quad	0x3ff2f4afd5454153              # double 1.1847380000000001
	.quad	0x400b60b88ca3e7d1              # double 3.4222269999999999
	.quad	0x400478fcd67fd3f6              # double 2.5590760000000001
	.quad	0x40126539b888722a              # double 4.5988530000000001
	.quad	0x401e0076c050bd88              # double 7.5004530000000002
	.quad	0x3ff3c6876e1deacd              # double 1.2359690000000001
	.quad	0x4021e19ef954eb14              # double 8.9406660000000002
	.quad	0x4016c43137b07076              # double 5.6915940000000003
	.quad	0x400cc75818c5c9a3              # double 3.5973359999999999
	.quad	0x3ffc9cc74b838c11              # double 1.788276
	.quad	0x3fe158fd5cb790fb              # double 0.54211299999999996
	.quad	0x401ed0f98fa37692              # double 7.7040769999999998
	.quad	0x40211a4f00ef1349              # double 8.5513840000000005
	.quad	0x40158579f2346562              # double 5.3803479999999997
	.quad	0x40207e3a7daa4fca              # double 8.2465399999999995
	.quad	0x401a4e08f2170931              # double 6.576206
	.quad	0x401fe6e115592d99              # double 7.9754680000000002
	.quad	0x4021fe40852b4d8c              # double 8.9965860000000006
	.quad	0x401f319157abb880              # double 7.7984059999999999
	.quad	0x40157a40d90e23af              # double 5.3693879999999998
	.quad	0x40136cf2cf95d4e9              # double 4.856395
	.quad	0x4009aff0025bfad3              # double 3.2109070000000002
	.quad	0x40128ad538ac18f8              # double 4.6355789999999999
	.quad	0x402124925785f8d3              # double 8.5714290000000002
	.quad	0x4022f256ffc115df              # double 9.4733199999999992
	.quad	0x401d1129888f861a              # double 7.2667599999999997
	.quad	0x40225032db1e9f27              # double 9.1566379999999992
	.quad	0x40149d76683c297c              # double 5.153772
	.quad	0x401b00fa9c12f09e              # double 6.7509560000000004
	.quad	0x402026ab14ec204f              # double 8.0755239999999997
	.quad	0x4010fdd76683c298              # double 4.2478920000000002
	.quad	0x400cde5aff2a172b              # double 3.6085720000000001
	.quad	0x40226d568e820e63              # double 9.2135510000000007
	.quad	0x400d4daa0cae642c              # double 3.662922
	.quad	0x402008c34c1a8ac6              # double 8.0171150000000004
	.quad	0x4016452007dd4413              # double 5.5675049999999997
	.quad	0x40116400fba8826b              # double 4.3476600000000003
	.quad	0x4023d93836a832ba              # double 9.9242570000000008
	.quad	0x401e6a0cf1800a7c              # double 7.6035649999999997
	.quad	0x402145fa00e27e0f              # double 8.636673
	.quad	0x40134bb8c32a8c9c              # double 4.8239470000000004
	.quad	0x4010456798958d9b              # double 4.0677779999999997
	.quad	0x3fee59bc33f85511              # double 0.94845400000000002
	.quad	0x4023332314013ec4              # double 9.5998769999999993
	.quad	0x40201d308bb90646              # double 8.0570109999999993
	.quad	0x40166fb3fa6defc8              # double 5.6090850000000003
	.quad	0x3fff12aa5c5f7c67              # double 1.9420569999999999
	.quad	0x401e529a5ebb773a              # double 7.580667
	.quad	0x40196ca2db61bb06              # double 6.35609
	.quad	0x40236dd095af294e              # double 9.7144820000000003
	.quad	0x3feb48f75536933a              # double 0.852657
	.quad	0x40198cd24e160d88              # double 6.3875209999999996
	.quad	0x401b0cbc05d52c17              # double 6.7624360000000001
	.quad	0x401ae0329802c0a5              # double 6.7189430000000003
	.quad	0x402377bd48cb4aed              # double 9.7338660000000007
	.quad	0x40237241a261bf38              # double 9.7231570000000004
	.quad	0x400e262bae03b3ea              # double 3.7686380000000002
	.quad	0x401b418266772d5e              # double 6.813974
	.quad	0x3ffb9e33269df97b              # double 1.7261230000000001
	.quad	0x401eccd530489d28              # double 7.7000320000000002
	.quad	0x401490f0a5efe932              # double 5.1415430000000004
	.quad	0x3ff854bdfd2630ec              # double 1.520689
	.quad	0x3fc796b76709fa55              # double 0.18428700000000001
	.quad	0x401c6a37ef5a964f              # double 7.1037290000000004
	.quad	0x402171a5a89b951c              # double 8.7219669999999993
	.quad	0x4012ab6bb1290258              # double 4.6674030000000002
	.quad	0x40177a30984e3fff              # double 5.869326
	.quad	0x401d00eb24a6a876              # double 7.2508970000000001
	.quad	0x401475e9185cee18              # double 5.1151470000000003
	.quad	0x3ff816a8b8f14db6              # double 1.5055320000000001
	.quad	0x4011cc63f141205c              # double 4.4496000000000002
	.quad	0x402181df3300de4c              # double 8.7536559999999994
	.quad	0x401d74a4d2b2bfdb              # double 7.3639099999999997
	.quad	0x3fe9c0a2877ee4e2              # double 0.80476499999999995
	.quad	0x400a6ce2d1f1cfbc              # double 3.3031670000000002
	.quad	0x401e40485a0be511              # double 7.5627760000000003
	.quad	0x3ffa080f98fa3769              # double 1.626968
	.quad	0x3ffa94738a3b57c5              # double 1.661243
	.quad	0x401be4b9884c6a3c              # double 6.9733640000000001
	.quad	0x3fc920f2becedd48              # double 0.19631799999999999
	.quad	0x4021e5b8fde2ef4e              # double 8.948677
	.quad	0x4022e37fe08aefb3              # double 9.4443350000000005
	.quad	0x40174bb3c81908e6              # double 5.8239280000000004
	.quad	0x401af7d8cf398e97              # double 6.742038
	.quad	0x40105815e39713ad              # double 4.0860209999999997
	.quad	0x40116642396073de              # double 4.3498619999999999
	.quad	0x40225f58e219652c              # double 9.1862250000000003
	.quad	0x40193bccf28c79f6              # double 6.3083989999999996
	.quad	0x40193bbb1f255f35              # double 6.3083309999999999
	.quad	0x401df0d173fb7a5f              # double 7.4851739999999997
	.quad	0x401c0e8c47a17f41              # double 7.0142069999999999
	.quad	0x3ff3c3e8576cce5f              # double 1.2353289999999999
	.quad	0x4006a777079e59f3              # double 2.8317700000000001
	.quad	0x4000fe79ee02a77a              # double 2.1242559999999999
	.quad	0x401d51ef30a4e37a              # double 7.3300140000000003
	.quad	0x3fff489a02752546              # double 1.955225
	.quad	0x40205709310129cc              # double 8.1699920000000005
	.quad	0x40234ad8e4324420              # double 9.6461860000000001
	.quad	0x4021d1737542a23c              # double 8.909084
	.quad	0x401c0e26916440f2              # double 7.0138189999999998
	.quad	0x4005f4c87980f55e              # double 2.744523
	.quad	0x401b17e52157689d              # double 6.7733350000000003
	.quad	0x4016ee01de269164              # double 5.7324289999999998
	.quad	0x40060a2014727dcc              # double 2.7549440000000001
	.quad	0x3fe3a48b65237048              # double 0.61383600000000005
	.quad	0x40237d3aa369fcf4              # double 9.7445880000000002
	.quad	0x4018d21ccd962068              # double 6.2051879999999997
	.quad	0x4020b05ec3dab5c4              # double 8.3444730000000006
	.quad	0x4018c7ed41b75a75              # double 6.1952410000000002
	.quad	0x401fa5caafbc1ace              # double 7.9119060000000001
	.quad	0x3fe9a1511dffc548              # double 0.80094200000000004
	.quad	0x40223746aa087ca6              # double 9.1079609999999995
	.quad	0x4023fe5604189375              # double 9.9967500000000004
	.quad	0x3ff7c738a3b57c4e              # double 1.486138
	.quad	0x4022e235f8099179              # double 9.4418179999999995
	.quad	0x400cabddb9841aac              # double 3.5839189999999999
	.quad	0x3ff980fdc1615ec0              # double 1.5939920000000001
	.quad	0x401c67a1c25d0742              # double 7.1012029999999999
	.quad	0x400b95696e58a32f              # double 3.4479549999999999
	.quad	0x3fd0ff8a8f3a9b07              # double 0.26559700000000003
	.quad	0x400f151e75360d02              # double 3.8853119999999999
	.quad	0x3fde5f5275ee99a6              # double 0.47456799999999999
	.quad	0x4013a4477ff151e7              # double 4.9104289999999997
	.quad	0x402034267839cd81              # double 8.1018559999999997
	.quad	0x401e430270f38822              # double 7.5654389999999996
	.quad	0x4017106530058149              # double 5.7660109999999998
	.quad	0x4009022b3892ee85              # double 3.1260590000000001
	.quad	0x400d97342edbb59e              # double 3.6988300000000001
	.quad	0x40014c521dda059a              # double 2.1622659999999998
	.quad	0x400812a62aa1943a              # double 3.0091060000000001
	.quad	0x4011fef39085f4a1              # double 4.4989759999999999
	.quad	0x401615c4a83b1d0d              # double 5.5212580000000004
	.quad	0x402085b5fa22706d              # double 8.2611539999999994
	.quad	0x400ad7585be1a826              # double 3.3551489999999999
	.quad	0x401648b5cbff4773              # double 5.5710059999999997
	.quad	0x401329b38d60a633              # double 4.790724
	.quad	0x4018a9b13165d399              # double 6.1657149999999996
	.quad	0x400ceec8d5c74752              # double 3.6165940000000001
	.quad	0x4009224b33daf8df              # double 3.1417449999999998
	.quad	0x4023c0fa7a85015c              # double 9.8769109999999997
	.quad	0x40012152b0a6fc59              # double 2.1412710000000001
	.quad	0x401c8eb0318b9347              # double 7.1393440000000004
	.quad	0x4013badab9f559b4              # double 4.9324750000000002
	.quad	0x3ffd98b502ababeb              # double 1.849782
	.quad	0x40083ee2435696e6              # double 3.0307050000000002
	.quad	0x3fe47112fd32c626              # double 0.63880300000000001
	.quad	0x4003400b02928177              # double 2.4062709999999998
	.quad	0x40126e30446b69db              # double 4.6076059999999996
	.quad	0x4000e31ad2135dab              # double 2.1108910000000001
	.quad	0x40238b7a1c25d074              # double 9.7724159999999997
	.quad	0x401541cffeb074a7              # double 5.3142699999999996
	.quad	0x401c4c4fc1df3301              # double 7.0745230000000001
	.quad	0x40017da059a73b43              # double 2.1863410000000001
	.quad	0x4007b7c6fbd273d6              # double 2.9647350000000001
	.quad	0x400749784ec636b1              # double 2.9108740000000002
	.quad	0x400c096030c23fab              # double 3.504578
	.quad	0x4023a93250b5243a              # double 9.8304620000000007
	.quad	0x401004edf6124074              # double 4.0048139999999997
	.quad	0x40235b9991361dc9              # double 9.6789059999999995
	.quad	0x3fe9fe56473471f8              # double 0.81229700000000005
	.quad	0x401cee07e5a78f26              # double 7.2324520000000003
	.quad	0x402113ef284167a9              # double 8.5389339999999994
	.quad	0x401a0741d084e832              # double 6.5070870000000003
	.quad	0x40152832b990afe6              # double 5.289256
	.quad	0x4016ffa6defc7a3a              # double 5.7496600000000004
	.quad	0x400a62352eb5f5f1              # double 3.2979530000000001
	.quad	0x401725daad601ffb              # double 5.7869669999999998
	.quad	0x4020805510d38cda              # double 8.2506489999999992
	.quad	0x4018c4b380cb6c7a              # double 6.1920909999999996
	.quad	0x4022e336deb95e5b              # double 9.443778
	.quad	0x3ff690f840181e04              # double 1.410393
	.quad	0x40048f544bb1af3a              # double 2.569985
	.quad	0x3fc73ee5eedcc20d              # double 0.18160699999999999
	.quad	0x4019740af1cb89d7              # double 6.3633230000000003
	.quad	0x40207604c0592104              # double 8.2305050000000008
	.quad	0x40229442a66dbd73              # double 9.2895710000000005
	.quad	0x40220a57646ae3a4              # double 9.0201980000000006
	.quad	0x40003edb7281fd9c              # double 2.0306920000000002
	.quad	0x40029c393682730c              # double 2.3262809999999998
	.quad	0x4005e994185058de              # double 2.739052
	.quad	0x3ff0728d8665e02f              # double 1.0279670000000001
	.quad	0x402211b64e054691              # double 9.0345940000000002
	.quad	0x3fe3c7219220ff54              # double 0.618058
	.quad	0x4020228d8665e02f              # double 8.0674860000000006
	.quad	0x401a1a16a4873366              # double 6.5254770000000004
	.quad	0x400bfa355043e532              # double 3.4971719999999999
	.quad	0x4010b2478854cdb8              # double 4.1741010000000003
	.quad	0x4005a54bcf0b6b6e              # double 2.705711
	.quad	0x4014471fff79c843              # double 5.069458
	.quad	0x401dd3d96638433d              # double 7.4568839999999996
	.quad	0x400539ff4fd6d7e9              # double 2.6533190000000002
	.quad	0x3fef4eaaf35e310e              # double 0.97835300000000003
	.quad	0x4015a30164840e17              # double 5.4091849999999999
	.quad	0x3ffb4aba38759253              # double 1.7057439999999999
	.quad	0x4018967839cd8128              # double 6.1469430000000003
	.quad	0x3fc7bc87db2b3461              # double 0.18544099999999999
	.quad	0x400ea797891e2153              # double 3.8318319999999999
	.quad	0x3ff8662aa19439de              # double 1.5249429999999999
	.quad	0x3fe5e249a133c1ce              # double 0.68387299999999995
	.quad	0x401fb1bb8c32a8ca              # double 7.9235670000000002
	.quad	0x40198454152b0a70              # double 6.3792270000000002
	.quad	0x402216e9142b302f              # double 9.0447469999999992
	.quad	0x401415eaee2003ac              # double 5.0214040000000004
	.quad	0x401b8397dd00f777              # double 6.8785090000000002
	.quad	0x3fe747baa9b499d0              # double 0.72750599999999999
	.quad	0x4006f19ce075f6fd              # double 2.8679749999999999
	.quad	0x4009330489d27c39              # double 3.1499109999999999
	.quad	0x401595e892253112              # double 5.3963950000000001
	.quad	0x4018f14b167ec786              # double 6.2356379999999998
	.quad	0x40239d04816f0069              # double 9.8066750000000002
	.quad	0x3fe84a5df2239e6b              # double 0.75907800000000003
	.quad	0x4020a25fa658c4bd              # double 8.3171359999999996
	.quad	0x401dafbd273d5bab              # double 7.4216199999999999
	.quad	0x4021624a6a875d57              # double 8.6919740000000001
	.quad	0x401d18d3ae685db7              # double 7.2742449999999996
	.quad	0x4007d71a7e308787              # double 2.9800309999999999
	.quad	0x400b1ab6d00b45ae              # double 3.3880439999999998
	.quad	0x4017fdcc20d5629e              # double 5.9978490000000004
	.quad	0x40106d4e09784ec6              # double 4.1067429999999998
	.quad	0x401d5db76b3bb83d              # double 7.34152
	.quad	0x400b55f88fc9363f              # double 3.4169779999999998
	.quad	0x401484c447c30d30              # double 5.1296549999999996
	.quad	0x401ba34091c08744              # double 6.9094259999999998
	.quad	0x4017de5aff2a172b              # double 5.9671440000000002
	.quad	0x3ff7e4ef0281ba80              # double 1.4933920000000001
	.quad	0x402377d49d7ba66a              # double 9.7340440000000008
	.quad	0x401354dcebfec13c              # double 4.8328740000000003
	.quad	0x3fd936c15d2d01c1              # double 0.39396700000000001
	.quad	0x3ff95d3671ac14c6              # double 1.5852569999999999
	.quad	0x402135af6c69b5a6              # double 8.6048539999999996
	.quad	0x401567f90d9d7775              # double 5.3515360000000003
	.quad	0x40221e2f7b17ce53              # double 9.0589560000000002
	.quad	0x3fea4e4a7b4e54f8              # double 0.82205700000000004
	.quad	0x401fb592d98bf7f0              # double 7.9273179999999996
	.quad	0x40141290257c914b              # double 5.0181279999999999
	.quad	0x401d04e1a3f4666f              # double 7.2547670000000002
	.quad	0x3feed5629d8409e5              # double 0.96354799999999996
	.quad	0x4017f41aef6f8f04              # double 5.9883839999999999
	.quad	0x401b19a5657fb69a              # double 6.7750450000000004
	.quad	0x3fc7a322af577100              # double 0.184666
	.quad	0x3ffd7ed20296b335              # double 1.8434619999999999
	.quad	0x40089ddca4b124d1              # double 3.0770810000000002
	.quad	0x40022bad7d7c2ca1              # double 2.2713269999999999
	.quad	0x4020b1f05ea24cc7              # double 8.3475370000000009
	.quad	0x401ceee02a77a2cf              # double 7.2332770000000002
	.quad	0x3ff1e5b20b8066c3              # double 1.1185780000000001
	.quad	0x40149af533f42353              # double 5.1513260000000001
	.quad	0x401ad28e92d55a3a              # double 6.705622
	.quad	0x400fb1fd5885d313              # double 3.9619089999999999
	.quad	0x3f8571d1d4738a3b              # double 0.010470999999999999
	.quad	0x400888deb0fadf2f              # double 3.0668310000000001
	.quad	0x401b8346dc5d6388              # double 6.8781999999999996
	.quad	0x3ff76595bbbe8790              # double 1.4623010000000001
	.quad	0x3ff6b6cacd184c27              # double 1.419627
	.quad	0x4021b22d948dc11e              # double 8.8480039999999995
	.quad	0x4023b377e1b8ed1c              # double 9.850524
	.quad	0x40130601797cc3a0              # double 4.755865
	.quad	0x4015a82491afc04d              # double 5.4142020000000004
	.quad	0x4008223422467be5              # double 3.0167009999999999
	.quad	0x401e4a919695d91b              # double 7.5728210000000002
	.quad	0x4017323422467be5              # double 5.7990269999999997
	.quad	0x400ba0b3d4ae429e              # double 3.453468
	.quad	0x4003a5fb71fbc5df              # double 2.4560460000000002
	.quad	0x4011f1aa821f2991              # double 4.486002
	.quad	0x401d4b430f49491f              # double 7.3234979999999998
	.quad	0x3ff5381c714fce74              # double 1.3261989999999999
	.quad	0x401204b9884c6a3c              # double 4.5046140000000001
	.quad	0x4014a809d495182b              # double 5.1641000000000004
	.quad	0x40173fb4c3c18b50              # double 5.8122129999999999
	.quad	0x400fccc92146a1a5              # double 3.974993
	.quad	0x400ebf1f9acffa7f              # double 3.8433220000000001
	.quad	0x4003763886594af5              # double 2.432725
	.quad	0x3fe1a396073de1e3              # double 0.55121900000000001
	.quad	0x4007bbe33acd5b68              # double 2.966742
	.quad	0x3fe3d0870110a138              # double 0.61920500000000001
	.quad	0x4021909a459103c9              # double 8.7824270000000002
	.quad	0x401cb43201040bfe              # double 7.1759719999999998
	.quad	0x40158d22424a276b              # double 5.3878259999999996
	.quad	0x400175b35b0bbf51              # double 2.182471
	.quad	0x4022e00dc33721d5              # double 9.4376049999999995
	.quad	0x400b947ae147ae14              # double 3.4474999999999998
	.quad	0x40193e6d58c8eef2              # double 6.3109640000000002
	.quad	0x3ff1dc1b54195cc8              # double 1.1162369999999999
	.quad	0x40199ec28b2a6b0e              # double 6.4050390000000004
	.quad	0x3fd97baecd07852f              # double 0.39817399999999997
	.quad	0x401c89991361dc94              # double 7.1343730000000001
	.quad	0x40211c8fb86f47b6              # double 8.5557839999999992
	.quad	0x401378da3c21187e              # double 4.8680199999999996
	.quad	0x400968e368f08462              # double 3.176215
	.quad	0x400331960fa15db3              # double 2.3992119999999999
	.quad	0x40108702a3486f05              # double 4.1318460000000004
	.quad	0x401943f290abb44e              # double 6.3163549999999997
	.quad	0x40045e414e7ee914              # double 2.5460229999999999
	.quad	0x3feb16feb4a6655a              # double 0.846557
	.quad	0x4005f15ce9e5e248              # double 2.7428530000000002
	.quad	0x4018d4c61d8622c4              # double 6.2077869999999997
	.quad	0x401a6c7a7c9de050              # double 6.6059359999999998
	.quad	0x3ff2fa4f8726d04e              # double 1.1861109999999999
	.quad	0x3ffa00f01fb82c2c              # double 1.625229
	.quad	0x4019210cf5b1c865              # double 6.2822760000000004
	.quad	0x40155f19934efcbd              # double 5.3428709999999997
	.quad	0x4010fa8826aa8eb4              # double 4.2446599999999997
	.quad	0x40217a43137b0707              # double 8.7387929999999994
	.quad	0x40227a1bc126a65d              # double 9.2384930000000001
	.quad	0x3fe0e468cac4b4d0              # double 0.52788199999999996
	.quad	0x401de54fbdad7519              # double 7.4739370000000003
	.quad	0x40089c3f811f4f51              # double 3.0762930000000002
	.quad	0x401dd5a4acf312b2              # double 7.4586360000000003
	.quad	0x40227a41a261bf38              # double 9.2387820000000004
	.quad	0x40003e731d2e0e30              # double 2.0304929999999999
	.quad	0x401979e8815e3971              # double 6.3690509999999998
	.quad	0x4023d0296b3354c1              # double 9.9065659999999997
	.quad	0x4011264ba94bbe44              # double 4.2873979999999996
	.quad	0x401f38bf7f06705d              # double 7.8054180000000004
	.quad	0x3fdd62a5e785b5b7              # double 0.459146
	.quad	0x401fe6273929ed39              # double 7.9747589999999997
	.quad	0x401d99cb6848beb6              # double 7.4001900000000003
	.quad	0x3ffcef47b677f6b2              # double 1.8084180000000001
	.quad	0x3fd83779e9d0e992              # double 0.378386
	.quad	0x40016f345069a4df              # double 2.1792989999999999
	.quad	0x3ff82048e043a216              # double 1.5078819999999999
	.quad	0x401b5aaac1094a2c              # double 6.8385420000000003
	.quad	0x40229a845996744b              # double 9.3017909999999997
	.quad	0x4016bb280f12c27a              # double 5.6827699999999997
	.quad	0x401283cff64cf8d7              # double 4.6287229999999999
	.quad	0x40203cdbbe0157ef              # double 8.1188640000000003
	.quad	0x4010a25785f8d2e5              # double 4.1585369999999999
	.quad	0x4020e76ba0620ab7              # double 8.4519929999999999
	.quad	0x4016a8433d6c7219              # double 5.6643189999999999
	.quad	0x4000ab790fb65669              # double 2.0837270000000001
	.quad	0x400935219a847b24              # double 3.1509429999999998
	.quad	0x401c7bf5946c332f              # double 7.121054
	.quad	0x401e309dcf893faf              # double 7.5474769999999997
	.quad	0x3fd6f7f8ca8198f2              # double 0.35888500000000001
	.quad	0x4015a1719f7f8ca8              # double 5.4076599999999999
	.quad	0x3ffd64766c6de764              # double 1.837027
	.quad	0x4018ec8d5c74751d              # double 6.2310080000000001
	.quad	0x402328bc7b45f17c              # double 9.5795630000000002
	.quad	0x401bbd71f36262cc              # double 6.9350050000000003
	.quad	0x401615a250f84018              # double 5.5211269999999999
	.quad	0x4010ade225fa658c              # double 4.1698079999999997
	.quad	0x40217457e23f24d9              # double 8.727233
	.quad	0x40003d462c343b71              # double 2.029919
	.quad	0x4017d87bdcf0307f              # double 5.9614099999999999
	.quad	0x3fe725ce5b4245f6              # double 0.72336500000000004
	.quad	0x401f7fee2c98e53f              # double 7.8749320000000002
	.quad	0x3ff2ae84ad794a6f              # double 1.1676070000000001
	.quad	0x400e68216c61522a              # double 3.8008449999999998
	.quad	0x4023e82b841248d8              # double 9.9534570000000002
	.quad	0x3ff8f1a8ef77f280              # double 1.558999
	.quad	0x40126c84f8f8a4c2              # double 4.6059760000000001
	.quad	0x401b7271fff79c84              # double 6.8617629999999998
	.quad	0x402170385c67dfe3              # double 8.7191799999999997
	.quad	0x4015136eb4e98138              # double 5.2689769999999996
	.quad	0x4000d3836a832b99              # double 2.103278
	.quad	0x400a0009f623076c              # double 3.250019
	.quad	0x40230d57de0d66f1              # double 9.5260610000000003
	.quad	0x40213d974e65bea1              # double 8.6202950000000005
	.quad	0x400bc4755ffe6d59              # double 3.4709270000000001
	.quad	0x400fedaa0cae642c              # double 3.991047
	.quad	0x4006fb5393250b52              # double 2.8727179999999999
	.quad	0x401438ad68837718              # double 5.0553489999999996
	.quad	0x400933fc86cebbba              # double 3.1503839999999999
	.quad	0x4022d4c2f837b4a2              # double 9.4155499999999996
	.quad	0x4015e507e9d94d0e              # double 5.4736630000000002
	.quad	0x400a7c3d68405b3a              # double 3.3106640000000001
	.quad	0x40165321e603d578              # double 5.5811840000000004
	.quad	0x4021060ac7da1ec5              # double 8.5118010000000002
	.quad	0x3fe41001d5c31594              # double 0.62695400000000001
	.quad	0x4022468b7e4de3b9              # double 9.1377830000000007
	.quad	0x3ff6a743a647fdc6              # double 1.4158360000000001
	.quad	0x401f633df2a9d628              # double 7.8469160000000002
	.quad	0x400376777079e59f              # double 2.4328449999999999
	.quad	0x4016b182ecaeea64              # double 5.6733510000000003
	.quad	0x4021f06876e1dead              # double 8.9695470000000004
	.quad	0x4010ddc1a47a9e2c              # double 4.2165590000000002
	.quad	0x400c31bef49cf56f              # double 3.5242900000000001
	.quad	0x401b81b8ed1bf7ad              # double 6.8766819999999997
	.quad	0x4023729478c868ba              # double 9.723789
	.quad	0x40143b6134ce3de6              # double 5.0579879999999999
	.quad	0x4016bb1feeb2d0a2              # double 5.6827389999999998
	.quad	0x4001e97396d0917d              # double 2.2389899999999998
	.quad	0x4022c0f32378ab0d              # double 9.3768550000000008
	.quad	0x400d2595bbbe8790              # double 3.6433520000000001
	.quad	0x401403dccea28fe2              # double 5.0037719999999997
	.quad	0x4022640d6f544bb2              # double 9.1954150000000006
	.quad	0x40237936e71cda2b              # double 9.7367469999999993
	.quad	0x3fff57891e215337              # double 1.958871
	.quad	0x40215120c069e7fb              # double 8.6584529999999997
	.quad	0x402231af5ba2be06              # double 9.0970410000000008
	.quad	0x3ff112da98676a72              # double 1.0671029999999999
	.quad	0x4005c9dd7ecbb7fa              # double 2.7235670000000001
	.quad	0x400ff3ff25e56cd7              # double 3.9941390000000001
	.quad	0x3ff8a871a3b14a90              # double 1.5411239999999999
	.quad	0x40188d3ae685db77              # double 6.1379200000000003
	.quad	0x3ffcd461b6d43d04              # double 1.8018510000000001
	.quad	0x401d8d8b60f1b25f              # double 7.3882269999999997
	.quad	0x3fee0c47a17f4129              # double 0.93899900000000003
	.quad	0x402107505d0fa58f              # double 8.5142849999999992
	.quad	0x4012a68f4b61fe22              # double 4.6626560000000001
	.quad	0x40193136a400fba9              # double 6.2980600000000004
	.quad	0x3feb994185058dde              # double 0.86245799999999995
	.quad	0x4021a178705425f2              # double 8.815372
	.quad	0x3ff46ff8ec0f8833              # double 1.2773369999999999
	.quad	0x40068603d577963a              # double 2.8154370000000002
	.quad	0x40089e75bc44bf4d              # double 3.0773730000000001
	.quad	0x3ff4dc64ba94bbe4              # double 1.3038069999999999
	.quad	0x401f52f5989df117              # double 7.8310149999999998
	.quad	0x4012fc7f34938583              # double 4.7465789999999997
	.quad	0x40220a4873365882              # double 9.0200840000000007
	.quad	0x401810a3d70a3d71              # double 6.0162500000000003
	.quad	0x4020ff154003254e              # double 8.4982089999999992
	.quad	0x4004e3ffef39085f              # double 2.6113279999999999
	.quad	0x40226d716d2aa5c6              # double 9.2137560000000001
	.quad	0x4004754a7f8012e0              # double 2.5572710000000001
	.quad	0x3fe505015c209247              # double 0.65686100000000003
	.quad	0x3ff44144028e4fb9              # double 1.2659339999999999
	.quad	0x401a6bd6e8af8162              # double 6.6053119999999996
	.quad	0x3ff7615db3397dd0              # double 1.461271
	.quad	0x400ba83558a76102              # double 3.4571329999999998
	.quad	0x4008832b990afe61              # double 3.0640480000000001
	.quad	0x4016fdf3300de4c5              # double 5.7479979999999999
	.quad	0x40222c4f7ec3547e              # double 9.086544
	.quad	0x40096f6b5d462c34              # double 3.1794039999999999
	.quad	0x40225ead9274e22a              # double 9.1849179999999997
	.quad	0x4013f5b8561d4307              # double 4.9899610000000001
	.quad	0x4021d895f2452c5a              # double 8.923019
	.quad	0x4020b43bf727136a              # double 8.3520199999999996
	.quad	0x4011550e34762952              # double 4.333062
	.quad	0x3fef99008205ff1e              # double 0.98742700000000005
	.quad	0x400be84f8f8a4c1f              # double 3.4884330000000001
	.quad	0x401c2b68cef672b9              # double 7.0423920000000004
	.quad	0x40108f7ec3547e07              # double 4.1401320000000004
	.quad	0x40137ab0856e696a              # double 4.8698139999999999
	.quad	0x4023ea34ca0c282c              # double 9.9574339999999992
	.quad	0x4005eb00ffda4053              # double 2.7397480000000001
	.quad	0x3ff3e148ba83f4ed              # double 1.2425010000000001
	.quad	0x40203ba14cec41dd              # double 8.1164649999999998
	.quad	0x3fe4bacf7446f9ba              # double 0.64780400000000005
	.quad	0x4018da5f41aef6f9              # double 6.2132540000000001
	.quad	0x402105992428d435              # double 8.5109340000000007
	.quad	0x4016dd20afa2f05a              # double 5.7159449999999996
	.quad	0x4002a4fa05143bf7              # double 2.3305549999999999
	.quad	0x4004621a719b4dcf              # double 2.5479020000000001
	.quad	0x402383dee78183f9              # double 9.7575599999999997
	.quad	0x4021b32b990afe61              # double 8.8499420000000004
	.quad	0x4014407a6bd6e8b0              # double 5.0629670000000004
	.quad	0x4021206338b47c74              # double 8.5632570000000001
	.quad	0x401cbb6c3760bf5d              # double 7.1830299999999996
	.quad	0x4016a22ab25b317f              # double 5.658366
	.quad	0x401dd8ed5f138bce              # double 7.461843
	.quad	0x400fb818c5c9a34d              # double 3.9648910000000002
	.quad	0x40224a860dcb9a9e              # double 9.1455540000000006
	.quad	0x401a3505d0fa58f7              # double 6.5517799999999999
	.quad	0x40235bf8db489093              # double 9.6796330000000008
	.quad	0x3ff3dfe542e557de              # double 1.242162
	.quad	0x4010f9cd3e0bd44a              # double 4.2439470000000004
	.quad	0x40099a493c89f40a              # double 3.2003349999999999
	.quad	0x40096f7a919695d9              # double 3.179433
	.quad	0x401fc7e414e7ee91              # double 7.9452059999999997
	.quad	0x4014dfd60e94ee39              # double 5.2185899999999998
	.quad	0x4015c19439de481f              # double 5.4390419999999997
	.quad	0x400c8a83b1d0c804              # double 3.567634
	.quad	0x401ee958969a0ad9              # double 7.7278770000000003
	.quad	0x4012ac4c5974e65c              # double 4.6682600000000001
	.quad	0x40127aad601ffb48              # double 4.619802
	.quad	0x4015e66e43aa79bc              # double 5.4750300000000003
	.quad	0x3fccd85dfa871a3b              # double 0.225353
	.quad	0x3fef93f290abb44e              # double 0.98680999999999996
	.quad	0x3ff4f88db0574b40              # double 1.3106819999999999
	.quad	0x401a851116a8b8f1              # double 6.6299479999999997
	.quad	0x4011182dbe7f2c30              # double 4.273612
	.quad	0x40015a6f826edaa9              # double 2.1691579999999999
	.quad	0x4013395e17e34b94              # double 4.8060229999999997
	.quad	0x401d06ae3a3a8e71              # double 7.2565239999999998
	.quad	0x401de91c8eabffce              # double 7.4776480000000003
	.quad	0x40187a7ef9db22d1              # double 6.1196250000000001
	.quad	0x40213aff4ba51a00              # double 8.6152289999999994
	.quad	0x40196a2b1704ff43              # double 6.3536799999999998
	.quad	0x40063ff2e48e8a72              # double 2.7812250000000001
	.quad	0x400ea3d9231c64bb              # double 3.8300040000000002
	.quad	0x400f8257c914b168              # double 3.938644
	.quad	0x4008a51dabe2717a              # double 3.0806230000000001
	.quad	0x400436a7ac81d3aa              # double 2.5266869999999999
	.quad	0x4013abe37de939eb              # double 4.9178600000000001
	.quad	0x400dea12f901083e              # double 3.7392940000000001
	.quad	0x3ff5e53c9abb01c9              # double 1.368466
	.quad	0x400846ec17ebaf10              # double 3.0346299999999999
	.quad	0x3ffc8317acc4ef89              # double 1.7820050000000001
	.quad	0x400ecd940789613d              # double 3.8503799999999999
	.quad	0x3fbd4aa10e022142              # double 0.11441999999999999
	.quad	0x3ff0ae9ff0cbaf96              # double 1.0426329999999999
	.quad	0x3fdf8d8ec95bff04              # double 0.49301499999999998
	.quad	0x40070682b6284599              # double 2.8781789999999998
	.quad	0x4023c645a1cac083              # double 9.8872499999999998
	.quad	0x4004511276fb0920              # double 2.5395859999999999
	.quad	0x400b014a4d2b2bfe              # double 3.3756300000000001
	.quad	0x3ff2598e10cf5b1d              # double 1.1468640000000001
	.quad	0x4022afac6045baf5              # double 9.3431119999999996
	.quad	0x40216d872f33ca32              # double 8.7139220000000002
	.quad	0x401413198288051d              # double 5.0186520000000003
	.quad	0x3ff3f4f82f512663              # double 1.2473069999999999
	.quad	0x3fe4eaf89c5e6ff8              # double 0.65368300000000001
	.quad	0x40110cf70153bd16              # double 4.2626609999999996
	.quad	0x3fc3741d084e831b              # double 0.151981
	.quad	0x3ffd1ddb1209edc0              # double 1.8197890000000001
	.quad	0x3fefc4c165907d91              # double 0.99276799999999998
	.quad	0x4021e6b074a771c9              # double 8.9505649999999992
	.quad	0x400c16ae7d566cf4              # double 3.5110749999999999
	.quad	0x40215f518b0d0edc              # double 8.6861689999999995
	.quad	0x40120a63305100a4              # double 4.5101440000000004
	.quad	0x40105e16d6dc1a48              # double 4.0918840000000003
	.quad	0x401266b15f88fc93              # double 4.6002859999999997
	.quad	0x3ff08155d5f56a7b              # double 1.031576
	.quad	0x400fd646ae3a3a8e              # double 3.9796269999999998
	.quad	0x400525d206c8711d              # double 2.6434669999999998
	.quad	0x3ffb6c9e236c15d3              # double 1.714018
	.quad	0x401b80c4156e264e              # double 6.8757479999999997
	.quad	0x401c23c8e25c810a              # double 7.0349459999999997
	.quad	0x400b7a88ace24bba              # double 3.434831
	.quad	0x4011f65add9c27e9              # double 4.4905809999999997
	.quad	0x4009dfdef8487b9a              # double 3.2343120000000001
	.quad	0x4010b9d883ba3444              # double 4.1814900000000002
	.quad	0x402268811b1d92b8              # double 9.20411
	.quad	0x3fde77963992c8c5              # double 0.476049
	.quad	0x4013e7d88c1db014              # double 4.9764119999999998
	.quad	0x4020f36f3b213e3e              # double 8.4754579999999997
	.quad	0x401326b228dc981c              # double 4.7877890000000001
	.quad	0x401789210385c67e              # double 5.883915
	.quad	0x4011501c0ca600b0              # double 4.3282319999999999
	.quad	0x3ffdd6dd26b723ee              # double 1.864957
	.quad	0x4022a33ce63a5c1c              # double 9.3188239999999993
	.quad	0x40081823422467be              # double 3.0117859999999999
	.quad	0x400675fa22706d50              # double 2.8076059999999998
	.quad	0x3fd22367e414e7ef              # double 0.28341100000000002
	.quad	0x402367cc1871e6cd              # double 9.7027289999999997
	.quad	0x3fef5933e35c5b4b              # double 0.97963900000000003
	.quad	0x40201432441fea81              # double 8.0394459999999999
	.quad	0x4019bfe47991bc56              # double 6.4373950000000004
	.quad	0x40131e4c942d490e              # double 4.7795889999999996
	.quad	0x401112c12ad81adf              # double 4.2683150000000003
	.quad	0x4011fb80ecfa69be              # double 4.495609
	.quad	0x401decc5b8dc5500              # double 7.481223
	.quad	0x4022fb7f5a5332ad              # double 9.491206
	.quad	0x401535e41d4b6a62              # double 5.3026280000000003
	.quad	0x400f21a60d4562e1              # double 3.8914300000000002
	.quad	0x4019cff583a53b8e              # double 6.4530849999999997
	.quad	0x4022ea6a875d56f3              # double 9.4578439999999996
	.quad	0x40217df7c6759ab7              # double 8.7460310000000003
	.quad	0x401b31da7b0b3919              # double 6.7986849999999999
	.quad	0x400101ff2e48e8a7              # double 2.1259749999999999
	.quad	0x401933910c2c5e2d              # double 6.3003580000000001
	.quad	0x3fc1de82d7b634db              # double 0.139603
	.quad	0x4003922f2734f82f              # double 2.4463789999999999
	.quad	0x401439eba6aca793              # double 5.0565629999999997
	.quad	0x3fea2cbea4ebdd33              # double 0.81796199999999997
	.quad	0x401ca9c17225b74a              # double 7.1657770000000003
	.quad	0x3ff33bb517a46174              # double 1.2020770000000001
	.quad	0x400d70ff10ecb74e              # double 3.6801740000000001
	.quad	0x400cb29cbab649d4              # double 3.5872130000000002
	.quad	0x40143530489d27c4              # double 5.0519420000000004
	.quad	0x402063519bd4067d              # double 8.1939820000000001
	.quad	0x4000f55821294574              # double 2.1197970000000002
	.quad	0x401cb0cb295e9e1b              # double 7.17265
	.quad	0x3ffb1f06f6944674              # double 1.6950750000000001
	.quad	0x3fb5e3da2f8bdec6              # double 0.085508
	.quad	0x401846dacabc5155              # double 6.0691940000000004
	.quad	0x40221da61e0c5a81              # double 9.0579079999999994
	.quad	0x3ffb71886df82b1f              # double 1.7152179999999999
	.quad	0x3fc56a1e81cb46bb              # double 0.16730100000000001
	.quad	0x3fe2269be09bb6aa              # double 0.56721299999999997
	.quad	0x40224edbd72bcb60              # double 9.1540210000000002
	.quad	0x4011b9e94ab1d4fa              # double 4.4315540000000002
	.quad	0x400e1c115df6555c              # double 3.7637049999999999
	.quad	0x4021f87c6327ed85              # double 8.9853240000000003
	.quad	0x3fd6582dbe7f2c30              # double 0.349132
	.quad	0x401937f023e9ea14              # double 6.304627
	.quad	0x401c9741d084e832              # double 7.1477120000000003
	.quad	0x40225f8ca8198f1d              # double 9.1866199999999996
	.quad	0x4014a2888b545c79              # double 5.1587240000000003
	.quad	0x40218525460aa64c              # double 8.7600499999999996
	.quad	0x3ffc2a79bbadc098              # double 1.76037
	.quad	0x4023cb54c122749f              # double 9.8971309999999999
	.quad	0x4012294ccab3edd9              # double 4.5403320000000003
	.quad	0x400d61847f562175              # double 3.6726160000000001
	.quad	0x4017e76d97b30f8c              # double 5.9760039999999996
	.quad	0x3fcfc9cd3e0bd44a              # double 0.24834600000000001
	.quad	0x3fee51394317acc5              # double 0.94741500000000001
	.quad	0x3fee14ec204f2ae0              # double 0.94005399999999994
	.quad	0x401ed5a5fc7e6b40              # double 7.7086410000000001
	.quad	0x4022cd76683c297c              # double 9.401294
	.quad	0x40203bb517a46174              # double 8.1166160000000004
	.quad	0x400b209917939a7c              # double 3.390917
	.quad	0x401b43e8dda48b65              # double 6.8163179999999999
	.quad	0x401570cbaf965b21              # double 5.3601520000000002
	.quad	0x401198012dfd694d              # double 4.3984420000000002
	.quad	0x4015c9e90795f677              # double 5.4471780000000001
	.quad	0x4018990539fba451              # double 6.1494340000000003
	.quad	0x4023bc7ef177a701              # double 9.8681560000000008
	.quad	0x3ffbc1700cd85597              # double 1.734726
	.quad	0x401d8743201040c0              # double 7.3820920000000001
	.quad	0x40027350092ccf6c              # double 2.306305
	.quad	0x3fd1d5cb790fb656              # double 0.27867399999999998
	.quad	0x401ca074213a0c6b              # double 7.1566929999999997
	.quad	0x401a70f733a8a3f9              # double 6.6103180000000004
	.quad	0x40082b53d640e9d5              # double 3.021156
	.quad	0x3ffa9cb9a9da597d              # double 1.6632629999999999
	.quad	0x4022a20fb224aada              # double 9.3165259999999996
	.quad	0x401a1b6848beb5b3              # double 6.5267650000000001
	.quad	0x4015523897204296              # double 5.3302940000000003
	.quad	0x4020e57b634dad32              # double 8.448207
	.quad	0x401b4925785f8d2e              # double 6.8214319999999997
	.quad	0x4015e79c842fa509              # double 5.4761829999999998
	.quad	0x401ef5b035bd512f              # double 7.7399300000000001
	.quad	0x40134d2fe3f359ff              # double 4.8253779999999997
	.quad	0x400742a90cd423d9              # double 2.9075489999999999
	.quad	0x40113fa48301a7a0              # double 4.3121510000000001
	.quad	0x3fe4f5caf2d7f951              # double 0.65500400000000003
	.quad	0x4013c41aef6f8f04              # double 4.9415089999999999
	.quad	0x3ffd0281ba7fc32f              # double 1.8131120000000001
	.quad	0x3fd2ee30caa326e1              # double 0.295788
	.quad	0x401b662cfd8f0c78              # double 6.8497810000000001
	.quad	0x401be884c6a3bde0              # double 6.9770690000000002
	.quad	0x400e3af294dd7236              # double 3.7787829999999998
	.quad	0x402137a7a85015c2              # double 8.6087009999999999
	.quad	0x40149008a697aede              # double 5.1406580000000002
	.quad	0x40216c9795b35b0c              # double 8.7120940000000004
	.quad	0x4023870691ea78af              # double 9.7637219999999995
	.quad	0x3fe08cc78e9f6a94              # double 0.51718500000000001
	.quad	0x401a7dca8e2e2b8c              # double 6.6228429999999996
	.quad	0x3fcf63fdd65a1449              # double 0.24523900000000001
	.quad	0x40229ea93f290abb              # double 9.3098849999999995
	.quad	0x4021ebcb1cc96463              # double 8.9605340000000009
	.quad	0x401608eabffcdab2              # double 5.5087080000000004
	.quad	0x401f9aa21a719b4e              # double 7.9010090000000002
	.quad	0x401534549b62c775              # double 5.3011039999999996
	.quad	0x4021c3024f6598e1              # double 8.8808769999999999
	.quad	0x401011ac57e23f25              # double 4.0172590000000001
	.quad	0x3fe0a365cb35f3d8              # double 0.51994600000000002
	.quad	0x3ffb2e2435696e59              # double 1.6987650000000001
	.quad	0x40231a41c3efae79              # double 9.5512829999999997
	.quad	0x4018048387df5cf2              # double 6.0044079999999997
	.quad	0x4021cba53b8e4b88              # double 8.8977450000000005
	.quad	0x4020f34f3fd933e3              # double 8.4752139999999994
	.quad	0x3ffaf95b35b0bbf5              # double 1.685878
	.quad	0x401b07a28bb0a2cb              # double 6.7574560000000004
	.quad	0x4009f0164840e172              # double 3.2422300000000002
	.quad	0x400aa25bfad29995              # double 3.3292769999999998
	.quad	0x3ff4812ad81adea9              # double 1.2815350000000001
	.quad	0x401f0f7403dddb12              # double 7.765091
	.quad	0x3fecd08f648c7193              # double 0.90045900000000001
	.quad	0x3fc04e7ab7564303              # double 0.12739500000000001
	.quad	0x401adaa8eb463498              # double 6.7135350000000003
	.quad	0x401fa3382e44b6e9              # double 7.9093939999999998
	.quad	0x4014803a322af577              # double 5.1252219999999999
	.quad	0x4018cad3e920c06a              # double 6.1980740000000001
	.quad	0x3fb994e1a3f4666f              # double 0.099928000000000003
	.quad	0x4010ffe4bcad9ad8              # double 4.2498959999999997
	.quad	0x3fe105d31337eb29              # double 0.53196100000000002
	.quad	0x3fd427a63736cdf2              # double 0.31491999999999998
	.quad	0x3ff2bab96f21f6cb              # double 1.170587
	.quad	0x40134640e9d51b50              # double 4.8186070000000001
	.quad	0x400f0dc768dfbd6a              # double 3.8817279999999998
	.quad	0x3fbcf7446f9b994e              # double 0.113148
	.quad	0x3fe58a7e73a365cb              # double 0.67315599999999998
	.quad	0x3fdc52157689ca19              # double 0.44251000000000001
	.quad	0x402152aa3ad18d26              # double 8.6614550000000001
	.quad	0x4010ac1a8ac5c140              # double 4.1680700000000002
	.quad	0x401587e846a5d6bf              # double 5.3827220000000002
	.quad	0x401fae9424e59296              # double 7.9204869999999996
	.quad	0x40160b1c864883fd              # double 5.5108509999999997
	.quad	0x401578fe260b2c84              # double 5.3681570000000001
	.quad	0x401157c88e79aae7              # double 4.3357260000000002
	.quad	0x3ff4c9b52007dd44              # double 1.299245
	.quad	0x40113af1455219a8              # double 4.3075609999999998
	.quad	0x4008613f4a98aa86              # double 3.0474839999999999
	.quad	0x4005be6f71a7e308              # double 2.7179859999999998
	.quad	0x400234c09c3ce209              # double 2.2757580000000002
	.quad	0x4015bfe974a3400c              # double 5.4374140000000004
	.quad	0x3fe9b8023a6ce358              # double 0.80371199999999998
	.quad	0x400f855e28aa4335              # double 3.940121
	.quad	0x4015fca1059ea572              # double 5.4967079999999999
	.quad	0x400f604af922962d              # double 3.922018
	.quad	0x3fe4cce1c58255b0              # double 0.65000999999999998
	.quad	0x401e1f53c579f234              # double 7.5305929999999996
	.quad	0x3ff417efe0ce0b91              # double 1.255844
	.quad	0x4002440746455eaf              # double 2.2832170000000001
	.quad	0x3fe2b6113404ea4b              # double 0.58472500000000005
	.quad	0x4021c164a59c065b              # double 8.8777209999999993
	.quad	0x401126b3bb83cf2d              # double 4.287795
	.quad	0x3fda672756861e93              # double 0.41254600000000002
	.quad	0x400aa2163fdd65a1              # double 3.3291439999999999
	.quad	0x4012deee0f3cb3e5              # double 4.7177049999999996
	.quad	0x4015dd47bedb7282              # double 5.466094
	.quad	0x3ff916a6a012599f              # double 1.56803
	.quad	0x4001aa087ca643cc              # double 2.208024
	.quad	0x401937a0f9096bba              # double 6.3043250000000004
	.quad	0x4003ba88ace24bba              # double 2.466081
	.quad	0x3f71c8eabffcdab2              # double 0.0043420000000000004
	.quad	0x40071f47f993d534              # double 2.8902739999999998
	.quad	0x3ffb34cf4a558ea8              # double 1.700393
	.quad	0x401d13c105186db5              # double 7.2692909999999999
	.quad	0x4006d42b302f72b4              # double 2.8535979999999999
	.quad	0x4022db43526527a2              # double 9.428248
	.quad	0x400ce2b1f687b13a              # double 3.6106910000000001
	.quad	0x400537ee4e26d480              # double 2.6523099999999999
	.quad	0x40131de225fa658c              # double 4.7791829999999997
	.quad	0x3ff2dd66adb402d1              # double 1.1790529999999999
	.quad	0x4012f10dbf0563ed              # double 4.7354039999999999
	.quad	0x401eb58255b035bd              # double 7.6772549999999997
	.quad	0x3ffdb47a5b0ff10f              # double 1.856562
	.quad	0x4015a013a92a3055              # double 5.4063249999999998
	.quad	0x3fd54c5da6a44418              # double 0.33278600000000003
	.quad	0x4014470de8f6ceff              # double 5.0693890000000001
	.quad	0x401dcc3b4f616723              # double 7.4494449999999999
	.quad	0x4022f6787ce95fab              # double 9.4813880000000008
	.quad	0x3fe4694ab1d4f9c2              # double 0.637853
	.quad	0x3fc87f3cf70153bd              # double 0.191383
	.quad	0x400a192d1287c201              # double 3.2622930000000001
	.quad	0x40232649d388a8b1              # double 9.5747820000000007
	.quad	0x3ff99791819d2392              # double 1.599504
	.quad	0x4010c2ee41919ac8              # double 4.1903620000000004
	.quad	0x4002785cee17a030              # double 2.3087710000000001
	.quad	0x4019ba5e353f7cee              # double 6.4320000000000004
	.quad	0x40225f4623d0bfa1              # double 9.1860820000000007
	.quad	0x4010ca5c1c6088d7              # double 4.1976170000000002
	.quad	0x4005ef123c42a66e              # double 2.7417340000000001
	.quad	0x4012b6a76965f527              # double 4.6783729999999997
	.quad	0x4023a3d102bc72e2              # double 9.8199539999999992
	.quad	0x401654662bae03b4              # double 5.5824210000000001
	.quad	0x4004a6266fd651b1              # double 2.5811280000000001
	.quad	0x400cdb0813cab820              # double 3.6069490000000002
	.quad	0x4011ad30ad46f588              # double 4.4191310000000001
	.quad	0x400f104ee7c49fd8              # double 3.8829630000000002
	.quad	0x4015be7d1351159c              # double 5.4360239999999997
	.quad	0x3fdc0f55de58e64b              # double 0.43843599999999999
	.quad	0x40212962f166e009              # double 8.5808330000000002
	.quad	0x3fdf7c7c5260f5e4              # double 0.49197299999999999
	.quad	0x40163d08919ef955              # double 5.5596030000000001
	.quad	0x4012971151611ba4              # double 4.6475270000000002
	.quad	0x4014a1b8aa00192a              # double 5.1579309999999996
	.quad	0x3fd86327ed84d339              # double 0.381052
	.quad	0x3fc2305d95dd4c77              # double 0.14210100000000001
	.quad	0x401782cd7cf5f4e4              # double 5.8777369999999998
	.quad	0x3ff1b3d5bab21816              # double 1.1064050000000001
	.quad	0x3ff9e3315d701d9f              # double 1.6179669999999999
	.quad	0x3ffa8917d6b65a9b              # double 1.6584700000000001
	.quad	0x400ceb50b0f27bb3              # double 3.6149
	.size	.L__constant_1999xf64_0, 15992

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
