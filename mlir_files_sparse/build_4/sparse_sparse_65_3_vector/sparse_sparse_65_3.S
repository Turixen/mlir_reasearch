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
	.quad	0x413abc89896d8f50              # double 1752201.5368280001
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
	.quad	3500                            # 0xdac
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	3500                            # 0xdac
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
	lui	a7, %hi(.L__constant_3500xindex)
	addi	a7, a7, %lo(.L__constant_3500xindex)
	lui	t0, %hi(.L__constant_3500xf64)
	addi	t0, t0, %lo(.L__constant_3500xf64)
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
	.size	.L__constant_101xindex_0, 808

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

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	50                              # 0x32
	.quad	73                              # 0x49
	.quad	102                             # 0x66
	.quad	151                             # 0x97
	.quad	179                             # 0xb3
	.quad	208                             # 0xd0
	.quad	262                             # 0x106
	.quad	289                             # 0x121
	.quad	316                             # 0x13c
	.quad	362                             # 0x16a
	.quad	388                             # 0x184
	.quad	418                             # 0x1a2
	.quad	469                             # 0x1d5
	.quad	493                             # 0x1ed
	.quad	527                             # 0x20f
	.quad	584                             # 0x248
	.quad	608                             # 0x260
	.quad	638                             # 0x27e
	.quad	691                             # 0x2b3
	.quad	711                             # 0x2c7
	.quad	734                             # 0x2de
	.quad	780                             # 0x30c
	.quad	804                             # 0x324
	.quad	832                             # 0x340
	.quad	886                             # 0x376
	.quad	921                             # 0x399
	.quad	939                             # 0x3ab
	.quad	986                             # 0x3da
	.quad	1015                            # 0x3f7
	.quad	1048                            # 0x418
	.quad	1107                            # 0x453
	.quad	1135                            # 0x46f
	.quad	1162                            # 0x48a
	.quad	1216                            # 0x4c0
	.quad	1248                            # 0x4e0
	.quad	1278                            # 0x4fe
	.quad	1332                            # 0x534
	.quad	1359                            # 0x54f
	.quad	1388                            # 0x56c
	.quad	1440                            # 0x5a0
	.quad	1467                            # 0x5bb
	.quad	1491                            # 0x5d3
	.quad	1539                            # 0x603
	.quad	1576                            # 0x628
	.quad	1603                            # 0x643
	.quad	1652                            # 0x674
	.quad	1677                            # 0x68d
	.quad	1703                            # 0x6a7
	.quad	1751                            # 0x6d7
	.quad	1782                            # 0x6f6
	.quad	1808                            # 0x710
	.quad	1857                            # 0x741
	.quad	1879                            # 0x757
	.quad	1902                            # 0x76e
	.quad	1960                            # 0x7a8
	.quad	1985                            # 0x7c1
	.quad	2014                            # 0x7de
	.quad	2059                            # 0x80b
	.quad	2095                            # 0x82f
	.quad	2123                            # 0x84b
	.quad	2170                            # 0x87a
	.quad	2189                            # 0x88d
	.quad	2214                            # 0x8a6
	.quad	2259                            # 0x8d3
	.quad	2280                            # 0x8e8
	.quad	2312                            # 0x908
	.quad	2366                            # 0x93e
	.quad	2383                            # 0x94f
	.quad	2407                            # 0x967
	.quad	2458                            # 0x99a
	.quad	2490                            # 0x9ba
	.quad	2516                            # 0x9d4
	.quad	2564                            # 0xa04
	.quad	2592                            # 0xa20
	.quad	2621                            # 0xa3d
	.quad	2674                            # 0xa72
	.quad	2704                            # 0xa90
	.quad	2728                            # 0xaa8
	.quad	2777                            # 0xad9
	.quad	2812                            # 0xafc
	.quad	2828                            # 0xb0c
	.quad	2875                            # 0xb3b
	.quad	2897                            # 0xb51
	.quad	2918                            # 0xb66
	.quad	2968                            # 0xb98
	.quad	3001                            # 0xbb9
	.quad	3025                            # 0xbd1
	.quad	3077                            # 0xc05
	.quad	3106                            # 0xc22
	.quad	3129                            # 0xc39
	.quad	3180                            # 0xc6c
	.quad	3203                            # 0xc83
	.quad	3228                            # 0xc9c
	.quad	3278                            # 0xcce
	.quad	3312                            # 0xcf0
	.quad	3339                            # 0xd0b
	.quad	3391                            # 0xd3f
	.quad	3423                            # 0xd5f
	.quad	3450                            # 0xd7a
	.quad	3500                            # 0xdac
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3500xindex,@object # @__constant_3500xindex
	.p2align	6, 0x0
.L__constant_3500xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
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
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
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
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
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
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	51                              # 0x33
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
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
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	43                              # 0x2b
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
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
	.quad	71                              # 0x47
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
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
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
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
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
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.size	.L__constant_3500xindex, 28000

	.type	.L__constant_3500xf64,@object   # @__constant_3500xf64
	.p2align	6, 0x0
.L__constant_3500xf64:
	.quad	0x4013aa1d755bccaf              # double 4.9161279999999996
	.quad	0x3fe7912dba4d6e48              # double 0.73647200000000002
	.quad	0x4016014c22ee4192              # double 5.5012670000000004
	.quad	0x400b6ab367a0f909              # double 3.4270999999999998
	.quad	0x40111136a400fba9              # double 4.2668100000000004
	.quad	0x3fffc73bc903ea70              # double 1.9861409999999999
	.quad	0x3fff55097c80841f              # double 1.958261
	.quad	0x401ebd566cf41f21              # double 7.6848999999999998
	.quad	0x401f612e40852b4e              # double 7.8449030000000004
	.quad	0x401604d5d80e496f              # double 5.5047220000000001
	.quad	0x4020139dc2f405f7              # double 8.0383130000000005
	.quad	0x3fcf9f23465625a7              # double 0.24704400000000001
	.quad	0x4003de7f2c3009b3              # double 2.483641
	.quad	0x4011d7ee0b0af5fd              # double 4.4608689999999998
	.quad	0x401c984901d19158              # double 7.1487160000000003
	.quad	0x4000cf240fa9c12f              # double 2.101143
	.quad	0x40216e260b2c83ed              # double 8.7151340000000008
	.quad	0x4016b49dbec2480f              # double 5.6763830000000004
	.quad	0x401868fe69270b07              # double 6.1025330000000002
	.quad	0x4020330a6fc58ab9              # double 8.0996889999999997
	.quad	0x401fdb8c32a8c9b8              # double 7.9644019999999997
	.quad	0x401424477ff151e7              # double 5.0354289999999997
	.quad	0x401fc1743e963dc5              # double 7.9389200000000004
	.quad	0x401f88e64b231401              # double 7.8836909999999997
	.quad	0x400a575ea67e846a              # double 3.2926609999999998
	.quad	0x401096b6177ea1c7              # double 4.1471790000000004
	.quad	0x40212ff06705c897              # double 8.5936310000000002
	.quad	0x40153bc6eb0b7c35              # double 5.308376
	.quad	0x3fd583558a761028              # double 0.33614100000000002
	.quad	0x3fb53a81dc0db270              # double 0.082923999999999997
	.quad	0x4022baf922962cfe              # double 9.3651820000000008
	.quad	0x4013811dffc5479d              # double 4.8760909999999997
	.quad	0x4010f430f49491f3              # double 4.2384680000000001
	.quad	0x3f9e12a51e321a2e              # double 0.029367999999999998
	.quad	0x401b459c8c9320da              # double 6.8179800000000004
	.quad	0x402021876188b114              # double 8.0654859999999999
	.quad	0x40105f9fcb0c026d              # double 4.0933830000000002
	.quad	0x4018fa52ef911cf3              # double 6.2444569999999997
	.quad	0x401b2855970b49e0              # double 6.7893889999999999
	.quad	0x40171ac14c660a20              # double 5.7761279999999999
	.quad	0x3fe8114b167ec786              # double 0.75211099999999997
	.quad	0x401c1e7b80a9de8b              # double 7.0297679999999998
	.quad	0x3ff39f41aef6f8f0              # double 1.2263809999999999
	.quad	0x400d5a493c89f40a              # double 3.6690849999999999
	.quad	0x401fcfa8f7db6e50              # double 7.9527929999999998
	.quad	0x400f66b1e5c0b999              # double 3.925144
	.quad	0x3ff2c6e8f29d40ee              # double 1.173562
	.quad	0x3ffc77b17ce52ded              # double 1.7792220000000001
	.quad	0x400c45dc8323358f              # double 3.5341119999999999
	.quad	0x3ff8566adb402d17              # double 1.5210980000000001
	.quad	0x4012747e8ccdd93c              # double 4.6137639999999998
	.quad	0x3ffe1cb35f3d7d39              # double 1.882007
	.quad	0x3ff12b15f88fc936              # double 1.0730189999999999
	.quad	0x4023e3a3ec02f2fa              # double 9.9446100000000008
	.quad	0x3ffd48711d798d8b              # double 1.8301860000000001
	.quad	0x40079b5b70691ea8              # double 2.9508580000000002
	.quad	0x4020596b11c6d1e1              # double 8.1746449999999999
	.quad	0x4020d2c5e2cdc012              # double 8.4116660000000003
	.quad	0x401e8379314445aa              # double 7.6283919999999998
	.quad	0x401d7702602c9082              # double 7.3662200000000002
	.quad	0x3ff21bf8b9baa151              # double 1.131829
	.quad	0x3ffa15432873bc90              # double 1.6301909999999999
	.quad	0x3fca7ac81d3aa36a              # double 0.206872
	.quad	0x40229253fc0096ff              # double 9.2857970000000005
	.quad	0x3fe508b545c78a6e              # double 0.65731300000000004
	.quad	0x3fdcf102363b2570              # double 0.45221
	.quad	0x401e94a48f96e158              # double 7.6451589999999995
	.quad	0x401371c8a7a41e58              # double 4.8611170000000001
	.quad	0x401e7dd0d8cb07d1              # double 7.6228670000000002
	.quad	0x400890e6f2e8c048              # double 3.0707529999999998
	.quad	0x40145964a59c065b              # double 5.0872979999999997
	.quad	0x400e84f6598e10cf              # double 3.8149229999999998
	.quad	0x40162da61e0c5a81              # double 5.5445789999999997
	.quad	0x40203bd577963993              # double 8.1168630000000004
	.quad	0x3fca7afa7221858c              # double 0.20687800000000001
	.quad	0x401e6901083dbc23              # double 7.6025429999999998
	.quad	0x400fdb9ae0c17657              # double 3.9822289999999998
	.quad	0x3ffa26149c6f36f0              # double 1.6342970000000001
	.quad	0x3fcad4e4c942d491              # double 0.209622
	.quad	0x4001efa48301a7a0              # double 2.242013
	.quad	0x3fef8110a137f38c              # double 0.98450499999999996
	.quad	0x4018d693c03bc4d2              # double 6.2095479999999998
	.quad	0x3ff4360f1b25f634              # double 1.263198
	.quad	0x401a51c0ca600b03              # double 6.5798370000000004
	.quad	0x4020dda48b652370              # double 8.4328959999999995
	.quad	0x40239b4699418506              # double 9.8032730000000008
	.quad	0x401eedac258d5843              # double 7.7321020000000002
	.quad	0x3f94d940789613d3              # double 0.02036
	.quad	0x401ecd3a604e1e71              # double 7.7004179999999999
	.quad	0x40159f7b5aea3162              # double 5.4057440000000003
	.quad	0x401ae029f16b11c7              # double 6.7189100000000002
	.quad	0x3fe15054ac29bf16              # double 0.54105599999999998
	.quad	0x40238422ab25b318              # double 9.7580770000000001
	.quad	0x40161e8a71de69ad              # double 5.5298249999999998
	.quad	0x401536940357a355              # double 5.303299
	.quad	0x4017db8561d4306e              # double 5.9643759999999997
	.quad	0x400b4fb97bb73083              # double 3.4139279999999999
	.quad	0x401c0f6f08cc575c              # double 7.015072
	.quad	0x400171dabe27179c              # double 2.180593
	.quad	0x40238aa4766c6de7              # double 9.7707859999999993
	.quad	0x3ff857e889c1b542              # double 1.5214620000000001
	.quad	0x4021bfc6540cc78f              # double 8.8745600000000007
	.quad	0x40193e2c55c96031              # double 6.3107160000000002
	.quad	0x3fe438f14db59579              # double 0.63195100000000004
	.quad	0x4011ec07ee0b0af6              # double 4.480499
	.quad	0x3fe377d30ad46f58              # double 0.60837699999999995
	.quad	0x3fffcf2becedd484              # double 1.9880789999999999
	.quad	0x400f53bfb58d1527              # double 3.9158930000000001
	.quad	0x3fe4583c6c97d8cf              # double 0.63577099999999998
	.quad	0x400da17dae81882b              # double 3.7038530000000001
	.quad	0x4009d698fe69270b              # double 3.229784
	.quad	0x3feb2f1455219a84              # double 0.84949699999999994
	.quad	0x40060fe4ffc9795b              # double 2.7577609999999999
	.quad	0x400096273929ed39              # double 2.0733169999999999
	.quad	0x4014e242070b8cfc              # double 5.220955
	.quad	0x3ff9b08cc575c076              # double 1.6056029999999999
	.quad	0x3ff5ba20578e5c4f              # double 1.3579410000000001
	.quad	0x4022234aa9717df2              # double 9.0689290000000007
	.quad	0x3fef94d72799a1fd              # double 0.98691899999999999
	.quad	0x4016b517e77d523b              # double 5.6768489999999998
	.quad	0x4015b22af5771002              # double 5.4239920000000001
	.quad	0x401d17564302b40f              # double 7.2727899999999996
	.quad	0x400d599e518f3ecd              # double 3.6687590000000001
	.quad	0x3fce435efa615a8e              # double 0.236431
	.quad	0x401d0dae81882adc              # double 7.2633609999999997
	.quad	0x3ffe5daf07bfe7e2              # double 1.897872
	.quad	0x401e284e3ffef391              # double 7.5393610000000004
	.quad	0x40239dcc426351df              # double 9.8081990000000001
	.quad	0x402184db9c7368ad              # double 8.7594879999999993
	.quad	0x4021e0d1b71758e2              # double 8.9390999999999998
	.quad	0x400f36273929ed39              # double 3.9014419999999999
	.quad	0x4022c027b6fe2e6f              # double 9.3753030000000006
	.quad	0x40207be1eb4202da              # double 8.2419580000000003
	.quad	0x4016e54a7f8012e0              # double 5.7239170000000001
	.quad	0x401676defc7a3982              # double 5.616085
	.quad	0x40211a67620ee8d1              # double 8.5515699999999999
	.quad	0x4019f45b6c3760bf              # double 6.4886299999999997
	.quad	0x401a3280f12c27a6              # double 6.5493199999999998
	.quad	0x400717396d0917d7              # double 2.8863400000000001
	.quad	0x4004ea369fcf3dc0              # double 2.6143619999999999
	.quad	0x400feab367a0f909              # double 3.9895999999999998
	.quad	0x3fe467168f8e7ddd              # double 0.63758400000000004
	.quad	0x4023eec95bff0457              # double 9.9663799999999991
	.quad	0x401f40f4d7add15f              # double 7.8134339999999999
	.quad	0x3fe1ba51a005c465              # double 0.55399399999999999
	.quad	0x4002b6fc9bc77143              # double 2.3393489999999999
	.quad	0x401cbad256798959              # double 7.1824430000000001
	.quad	0x4011f160d887ebf2              # double 4.4857209999999998
	.quad	0x40022a6f3f52fc26              # double 2.2707199999999998
	.quad	0x400470bd017dae82              # double 2.5550480000000002
	.quad	0x40160510d38cda6e              # double 5.5049469999999996
	.quad	0x4014501d5c31593e              # double 5.0782369999999997
	.quad	0x401ce69f4906034f              # double 7.2252169999999998
	.quad	0x401d21904b3c3e75              # double 7.2827770000000003
	.quad	0x401fff0c34c1a8ac              # double 7.9990699999999997
	.quad	0x401550a45d41fa76              # double 5.3287519999999997
	.quad	0x4019e40cc78e9f6b              # double 6.4727050000000004
	.quad	0x400b5e40c8472c0e              # double 3.4210219999999998
	.quad	0x40196654d61b2a28              # double 6.349933
	.quad	0x401b30bb6ed67770              # double 6.7975899999999996
	.quad	0x400ab5e28aa43351              # double 3.3388110000000002
	.quad	0x4009edefc7a39820              # double 3.2411799999999999
	.quad	0x40221c5b4aa9717e              # double 9.0553840000000001
	.quad	0x3fc9878b7a1c25d0              # double 0.19944899999999999
	.quad	0x401e88d5842b734b              # double 7.6336269999999997
	.quad	0x3fe9a29a5ebb773a              # double 0.80109900000000001
	.quad	0x401874a4d2b2bfdb              # double 6.1139099999999997
	.quad	0x400674df04ddb552              # double 2.8070659999999998
	.quad	0x40155e4217d2849d              # double 5.3420490000000003
	.quad	0x4023d97225b749ae              # double 9.9246990000000004
	.quad	0x3fc344bb1af3a14d              # double 0.150535
	.quad	0x40097abfb9bed30f              # double 3.184936
	.quad	0x401f53de1e2de871              # double 7.8319020000000003
	.quad	0x4021b34267839cd8              # double 8.8501159999999999
	.quad	0x401c2ae89eba6aca              # double 7.0419029999999996
	.quad	0x3ff7ec881e4712e4              # double 1.495247
	.quad	0x3fb7b5d031055b8a              # double 0.092618000000000005
	.quad	0x401d3d912556d19e              # double 7.3101240000000001
	.quad	0x401651feeb2d0a24              # double 5.5800739999999998
	.quad	0x4023f6653868fd1a              # double 9.9812410000000007
	.quad	0x400159085f4a1273              # double 2.1684730000000001
	.quad	0x3ff97fdb4cc25072              # double 1.593715
	.quad	0x3ffc440bfe3b03e2              # double 1.766613
	.quad	0x4012260fa15db339              # double 4.5371689999999996
	.quad	0x40202dc6195464dc              # double 8.0894019999999997
	.quad	0x3ffa74b51372a38c              # double 1.6534930000000001
	.quad	0x400e34538ef34d6a              # double 3.77555
	.quad	0x3feabcc8de2ac322              # double 0.83554499999999998
	.quad	0x40118178705425f2              # double 4.376436
	.quad	0x4015e4d3bf2f5558              # double 5.4734639999999999
	.quad	0x40106299d883ba34              # double 4.0962899999999998
	.quad	0x3ffee2c669057d18              # double 1.9303650000000001
	.quad	0x401aef7b9e060fe4              # double 6.7338699999999996
	.quad	0x40227400fba8826b              # double 9.2265700000000006
	.quad	0x40188aabcd78c437              # double 6.135421
	.quad	0x4016d6cc5fbf8338              # double 5.7097639999999998
	.quad	0x401f4d3996fa82e8              # double 7.8254149999999995
	.quad	0x3fcc2517e77d523b              # double 0.21988199999999999
	.quad	0x4012fc957cd466f5              # double 4.746664
	.quad	0x400f9360d0247022              # double 3.9469620000000001
	.quad	0x40211950fc71d606              # double 8.5494459999999997
	.quad	0x401efa79fec99f1b              # double 7.7446060000000001
	.quad	0x3fcde0e736049ecb              # double 0.23342599999999999
	.quad	0x4011afde7210be94              # double 4.4217469999999999
	.quad	0x3fe898090b417ca2              # double 0.76855899999999999
	.quad	0x3ffd38feef5ec80c              # double 1.8264149999999999
	.quad	0x4019b0fd3b29a1ba              # double 6.422841
	.quad	0x40147a8198f1d3ed              # double 5.1196349999999997
	.quad	0x402045e13b18dac2              # double 8.1364839999999994
	.quad	0x400232734f82f512              # double 2.2746339999999998
	.quad	0x3fd6add9c27e9531              # double 0.35436099999999998
	.quad	0x401d972b884406c0              # double 7.397627
	.quad	0x40036a558ea7ce10              # double 2.4269210000000001
	.quad	0x400858e4b87bdcf0              # double 3.0434049999999999
	.quad	0x3ffc7202107b7846              # double 1.7778339999999999
	.quad	0x402290f2e05ccc8a              # double 9.2831030000000005
	.quad	0x4007dfdb4cc25072              # double 2.984305
	.quad	0x3ff3112018a43bb4              # double 1.191681
	.quad	0x401ce4fbdad7518b              # double 7.223617
	.quad	0x4007fe542e557de1              # double 2.9991840000000001
	.quad	0x3febec2acb85a4f0              # double 0.87257899999999999
	.quad	0x3ff8f0eb24a6a876              # double 1.558818
	.quad	0x40223c8711d798d9              # double 9.1182180000000006
	.quad	0x40006107314ca926              # double 2.047377
	.quad	0x4020c2a90cd423d9              # double 8.3801959999999998
	.quad	0x40224dc182ecaeea              # double 9.1518669999999993
	.quad	0x401ee6601bc98a22              # double 7.7249759999999998
	.quad	0x400946455eaee200              # double 3.1593119999999999
	.quad	0x40029e90795f676f              # double 2.3274240000000002
	.quad	0x40129c9a34ca0c28              # double 4.6529319999999998
	.quad	0x401c39dece571088              # double 7.056514
	.quad	0x40173f5caf2d7f95              # double 5.811877
	.quad	0x4017894d0dcfcc5c              # double 5.8840830000000004
	.quad	0x401006fc58ab92c0              # double 4.0068219999999997
	.quad	0x3ff8571d1d4738a4              # double 1.5212680000000001
	.quad	0x4020c5e5f30e7ff6              # double 8.3865200000000009
	.quad	0x4004d903a7546d40              # double 2.6059640000000002
	.quad	0x40201030c23fab11              # double 8.0316220000000005
	.quad	0x3ffe6af35e310dbf              # double 1.901111
	.quad	0x3ff813404ea4a8c1              # double 1.5046999999999999
	.quad	0x4014b7e23f24d8fd              # double 5.1795739999999997
	.quad	0x40207ba1b1960fa1              # double 8.2414679999999993
	.quad	0x40176c55000c953a              # double 5.8557930000000002
	.quad	0x401cb91148fd9fd3              # double 7.1807299999999996
	.quad	0x401c1cd8dbcec850              # double 7.0281710000000004
	.quad	0x40183c72e275ab7e              # double 6.0590320000000002
	.quad	0x401400f7fcfc3f81              # double 5.0009459999999999
	.quad	0x4019c6d0d49949e9              # double 6.4441560000000004
	.quad	0x401d8a1d323fee2d              # double 7.3848770000000004
	.quad	0x4018beed02cd39da              # double 6.1864509999999999
	.quad	0x3feff5b1c8648840              # double 0.99874200000000001
	.quad	0x3ff20e032db1e9f2              # double 1.1284209999999999
	.quad	0x401f0671ef30a4e3              # double 7.7562939999999995
	.quad	0x40204b0531982880              # double 8.1465239999999994
	.quad	0x401febcf0b6b6e0d              # double 7.9802819999999998
	.quad	0x4020b30e1b4bb5e1              # double 8.3497170000000001
	.quad	0x4020f3b5393250b5              # double 8.4759919999999997
	.quad	0x3fe921e81cb46bad              # double 0.785389
	.quad	0x400c88d7e02645e5              # double 3.566818
	.quad	0x4002b0dcfcc5b8dc              # double 2.3363589999999999
	.quad	0x3fe5d955714b9cb7              # double 0.68278000000000005
	.quad	0x40190f2ba9d1f601              # double 6.2648149999999996
	.quad	0x40226420d5629d84              # double 9.1955629999999999
	.quad	0x3fcfa58f7121ab4b              # double 0.24723999999999999
	.quad	0x400062435696e58a              # double 2.0479799999999999
	.quad	0x3ffbe266fd651b0d              # double 1.742774
	.quad	0x4011cdd4845132f8              # double 4.4510059999999996
	.quad	0x3fe1ac8c5004fb12              # double 0.55231300000000005
	.quad	0x4006ac99f1ae2da5              # double 2.8342779999999999
	.quad	0x401ad438d1d8a548              # double 6.7072479999999999
	.quad	0x40059b42cc2d6a9c              # double 2.7008109999999999
	.quad	0x400fbebe1650a45d              # double 3.9681359999999999
	.quad	0x4020b55ae1cde5d2              # double 8.3542090000000009
	.quad	0x3ff5cdf15a4acf31              # double 1.362779
	.quad	0x40222811f4f50a03              # double 9.0782620000000005
	.quad	0x400fc096feb4a665              # double 3.9690379999999998
	.quad	0x40118ea57214f052              # double 4.389303
	.quad	0x3ff06311e85fd04a              # double 1.024187
	.quad	0x401c117481b21c47              # double 7.0170459999999997
	.quad	0x3ff5d7268d32830a              # double 1.365027
	.quad	0x40019f162ae4b018              # double 2.2026789999999998
	.quad	0x4014cce24bba12b6              # double 5.2000820000000001
	.quad	0x3fef31c864883fd5              # double 0.97482699999999999
	.quad	0x40136cc74b838c11              # double 4.8562289999999999
	.quad	0x4020c528ae74f2f1              # double 8.3850759999999998
	.quad	0x40206a556d19dece              # double 8.2076829999999994
	.quad	0x401224d6a161e4f7              # double 4.5359749999999996
	.quad	0x4021a9bf162ae4b0              # double 8.8315359999999998
	.quad	0x4011c0fba8826aa9              # double 4.4384600000000001
	.quad	0x3ff431290257c915              # double 1.2620020000000001
	.quad	0x401d90aaeafab53d              # double 7.3912769999999997
	.quad	0x4011674d9c6b0532              # double 4.3508820000000004
	.quad	0x4023d068db8bac71              # double 9.9070499999999999
	.quad	0x4021b294141e9af6              # double 8.8487860000000005
	.quad	0x4020b1b280f12c28              # double 8.3470650000000006
	.quad	0x400d23992c8c5005              # double 3.642382
	.quad	0x4023da9bcfd4bf0a              # double 9.9269700000000007
	.quad	0x401f8117f84449dc              # double 7.8760680000000001
	.quad	0x4012c9e731d2e0e3              # double 4.697171
	.quad	0x401ad44b6e935b92              # double 6.707319
	.quad	0x4012f2f9ca5bd945              # double 4.7372810000000003
	.quad	0x3fe4522424a276b8              # double 0.63502700000000001
	.quad	0x401f1b8800eae18b              # double 7.7768860000000001
	.quad	0x401a8a311e85fd05              # double 6.6349530000000003
	.quad	0x40176bd2fa0d77b8              # double 5.8552970000000002
	.quad	0x400c739b8887229f              # double 3.5564490000000002
	.quad	0x40078957cd466f50              # double 2.942062
	.quad	0x40233a19a847b246              # double 9.6134769999999996
	.quad	0x4017a4b7b28954a8              # double 5.910857
	.quad	0x3ff7ae0c17657753              # double 1.479992
	.quad	0x401fc67e846a5d6c              # double 7.9438420000000001
	.quad	0x4017f14013ec460f              # double 5.9855960000000001
	.quad	0x3fe46e3715400325              # double 0.63845399999999997
	.quad	0x401add5992428d43              # double 6.7161619999999997
	.quad	0x3fe00f3eccc46951              # double 0.501861
	.quad	0x4009b04ab606b7aa              # double 3.2110799999999999
	.quad	0x400470e453d20f2c              # double 2.555123
	.quad	0x4021f86db50f40e6              # double 8.9852120000000006
	.quad	0x401bf2f6a50d6b23              # double 6.9872690000000004
	.quad	0x400b4d2cbea4ebdd              # double 3.4126829999999999
	.quad	0x40230b8f14db5958              # double 9.5225760000000008
	.quad	0x400477ca2120e1f8              # double 2.5584910000000001
	.quad	0x400806c226809d49              # double 3.0032999999999999
	.quad	0x4020bf1ae2da554c              # double 8.3732520000000008
	.quad	0x3fc0fd6d7e889c1b              # double 0.13273399999999999
	.quad	0x400c1af07bfe7e20              # double 3.5131540000000001
	.quad	0x40169c41dd1a21ea              # double 5.6525949999999998
	.quad	0x401610db6a1e81cb              # double 5.5164619999999998
	.quad	0x401ecf38c5436b90              # double 7.7023650000000004
	.quad	0x40178195464dc22b              # double 5.8765460000000003
	.quad	0x40068e5eedcc20d5              # double 2.8195169999999998
	.quad	0x40152454de7ea5f8              # double 5.2854799999999997
	.quad	0x4022386a8fc0d2c4              # double 9.1101880000000008
	.quad	0x4006899fa11a975b              # double 2.817199
	.quad	0x3ff1115ad106ee31              # double 1.066737
	.quad	0x40174a6eb91b3f21              # double 5.8226880000000003
	.quad	0x401468301a79feca              # double 5.1017460000000003
	.quad	0x4001d9d1b2e59afa              # double 2.231357
	.quad	0x3ff94fb86f47b678              # double 1.581963
	.quad	0x3ffedd1d4738a3b5              # double 1.9289829999999999
	.quad	0x401aa13122b7baed              # double 6.6574140000000002
	.quad	0x3ffb1595feda6613              # double 1.6927700000000001
	.quad	0x4013eb506dd69d30              # double 4.9797989999999999
	.quad	0x401032c94b380cb7              # double 4.0495960000000002
	.quad	0x401c3f46aa087ca6              # double 7.0617929999999998
	.quad	0x401a010dbf0563ed              # double 6.5010289999999999
	.quad	0x4018248a159817b9              # double 6.0356829999999997
	.quad	0x3ffc4176577531db              # double 1.7659819999999999
	.quad	0x400fb2d44dca8e2e              # double 3.9623189999999999
	.quad	0x401f36f47b677f6b              # double 7.8036669999999999
	.quad	0x4010d86b9c304ccf              # double 4.2113480000000001
	.quad	0x40124abffcdab192              # double 4.5729980000000001
	.quad	0x401baa4acf312b1b              # double 6.9163009999999998
	.quad	0x401ca476295208e1              # double 7.1606069999999997
	.quad	0x40013dcdf6987831              # double 2.1551779999999998
	.quad	0x4023a09b0ee49f51              # double 9.8136829999999992
	.quad	0x402168a43bb40b35              # double 8.7043780000000002
	.quad	0x400d8cdc8754f377              # double 3.6937799999999998
	.quad	0x401f30e1719f7f8d              # double 7.7977350000000003
	.quad	0x40198c02f2f98740              # double 6.38673
	.quad	0x3fff90b84988094e              # double 1.9728319999999999
	.quad	0x40196d35a858793e              # double 6.3566500000000001
	.quad	0x400adcb5fe542e55              # double 3.3577689999999998
	.quad	0x4021ec621b7e0ac8              # double 8.9616860000000003
	.quad	0x4020a3413986338b              # double 8.3188569999999995
	.quad	0x3ffbeb0a6fc58ab9              # double 1.744883
	.quad	0x401301055b899392              # double 4.7509969999999999
	.quad	0x40203c840e1719f8              # double 8.1181950000000001
	.quad	0x4006ac404a72ead9              # double 2.8341069999999999
	.quad	0x401ce962cfd8f0c7              # double 7.2279159999999996
	.quad	0x3fdfe935b91f70df              # double 0.49860900000000002
	.quad	0x40190cbfb15b573f              # double 6.2624500000000003
	.quad	0x401b31ce28ed5f14              # double 6.7986380000000004
	.quad	0x40085f5c6c11a112              # double 3.0465629999999999
	.quad	0x3ffcdf42bb6672fc              # double 1.8045070000000001
	.quad	0x40144b8066c2acb8              # double 5.0737319999999997
	.quad	0x3fe9f36ef8055fbb              # double 0.81096599999999996
	.quad	0x4023243bd5992429              # double 9.5707690000000003
	.quad	0x4022a4c2938de6de              # double 9.3217970000000001
	.quad	0x3ffe2f46aa087ca6              # double 1.8865419999999999
	.quad	0x401155fb71fbc5df              # double 4.3339670000000003
	.quad	0x40045d7ecbb7f9d7              # double 2.545652
	.quad	0x400cf38a3b57c4e3              # double 3.618916
	.quad	0x400c45f6ba0620ab              # double 3.5341619999999998
	.quad	0x4005edc011d3671b              # double 2.7410890000000001
	.quad	0x4000537329c347e9              # double 2.0407470000000001
	.quad	0x40216dd41fa76534              # double 8.7145089999999996
	.quad	0x401f14fd2a62aa19              # double 7.7704969999999997
	.quad	0x40041b078d92fb1a              # double 2.513198
	.quad	0x40220b50b0f27bb3              # double 9.0221
	.quad	0x3fec75d56f32bdc2              # double 0.88938399999999995
	.quad	0x401869b7bf1e8e61              # double 6.1032400000000004
	.quad	0x3fdca4f8726d04e6              # double 0.44756899999999999
	.quad	0x401e55fc7e6b3fea              # double 7.583971
	.quad	0x400e4f4517614595              # double 3.7887059999999999
	.quad	0x3ff00abb44e50c5f              # double 1.0026200000000001
	.quad	0x4017a776c4827b70              # double 5.9135390000000001
	.quad	0x40208310fd7e4580              # double 8.2559889999999996
	.quad	0x4015245c78a6dacb              # double 5.2855090000000002
	.quad	0x40237f518b0d0edc              # double 9.7486689999999995
	.quad	0x401e4e1da7b0b392              # double 7.5762850000000004
	.quad	0x4020b81b003686a5              # double 8.3595810000000004
	.quad	0x40116f240fa9c12f              # double 4.358536
	.quad	0x4018253d640e9d52              # double 6.0363670000000003
	.quad	0x401ac4f765fd8adb              # double 6.6923500000000002
	.quad	0x40154b020c49ba5e              # double 5.3232499999999998
	.quad	0x4007bd26b723ee1c              # double 2.9673590000000001
	.quad	0x400f66b2f23033a4              # double 3.9251459999999998
	.quad	0x401295054ac29bf1              # double 4.6455279999999997
	.quad	0x401e720296b3354c              # double 7.6113379999999999
	.quad	0x4013ac96cc5fbf83              # double 4.9185439999999998
	.quad	0x3fedd740c4156e26              # double 0.93252599999999997
	.quad	0x3fdba2877ee4e26d              # double 0.43179499999999998
	.quad	0x4014101eabbcb1cd              # double 5.0157420000000004
	.quad	0x4002c75f6fd21ff3              # double 2.34735
	.quad	0x4004177531db445f              # double 2.5114540000000001
	.quad	0x40018c9107faa045              # double 2.1936360000000001
	.quad	0x4012acd29131ec0b              # double 4.6687719999999997
	.quad	0x3fe92d77318fc505              # double 0.78680000000000005
	.quad	0x401b20880d801b43              # double 6.7817689999999997
	.quad	0x402029841aac53b1              # double 8.0810860000000009
	.quad	0x3feac3393ab430f5              # double 0.83633100000000005
	.quad	0x40112fcc9ea9a3d3              # double 4.2966790000000001
	.quad	0x401f8a3f4666ec9e              # double 7.8850069999999999
	.quad	0x3ffe0adff822bbed              # double 1.8776550000000001
	.quad	0x401f3fb480a5accd              # double 7.8122119999999997
	.quad	0x40219854690de093              # double 8.7975189999999994
	.quad	0x401652bfdb4cc250              # double 5.5808099999999996
	.quad	0x40143c60cbf2b23a              # double 5.0589630000000003
	.quad	0x4022fe4b44a1f080              # double 9.4966679999999997
	.quad	0x40037ed30f062d41              # double 2.4369260000000001
	.quad	0x4022a043a2163fdd              # double 9.3130159999999993
	.quad	0x401245a74c09c3ce              # double 4.5680209999999999
	.quad	0x4018d66c2acb85a5              # double 6.2093970000000001
	.quad	0x3fe51ac14c660a20              # double 0.65951599999999999
	.quad	0x40198187a4a48f97              # double 6.3764940000000001
	.quad	0x40118aaa3ad18d26              # double 4.3854150000000001
	.quad	0x4006b846e8f29d41              # double 2.839979
	.quad	0x400162c450268901              # double 2.1732260000000001
	.quad	0x4001f06fef7c243e              # double 2.2424010000000001
	.quad	0x3ff2cb966be7afa7              # double 1.174704
	.quad	0x3fde0f4d7add15f0              # double 0.46968399999999999
	.quad	0x3fe5256ffc115df6              # double 0.66081999999999996
	.quad	0x402349bc77143394              # double 9.6440160000000005
	.quad	0x4022d318fc504817              # double 9.4123000000000001
	.quad	0x3ff1a4e26d4801f7              # double 1.1027549999999999
	.quad	0x4005ee2435696e59              # double 2.7412800000000002
	.quad	0x3fcc1437c5692b3d              # double 0.21936700000000001
	.quad	0x4005d29c347e8cce              # double 2.7278370000000001
	.quad	0x3ff24c1871e6cd29              # double 1.143578
	.quad	0x401b27d30ad46f58              # double 6.7888909999999996
	.quad	0x401c2cab3edd8b61              # double 7.043622
	.quad	0x4017e0fecdd0d8cb              # double 5.969722
	.quad	0x4020bf7dfa00e27e              # double 8.3740079999999999
	.quad	0x40104a7daa4fca43              # double 4.0727450000000003
	.quad	0x400a5bff04577d95              # double 3.2949199999999998
	.quad	0x401921cda2b5a20e              # double 6.2830110000000001
	.quad	0x401eeb7132724313              # double 7.7299239999999995
	.quad	0x3ff032830a0b1bbd              # double 1.012332
	.quad	0x4020bf1bef49cf57              # double 8.3732600000000001
	.quad	0x3fcf4fc610f0e90c              # double 0.24462200000000001
	.quad	0x3fe82a60913a4f87              # double 0.75517299999999998
	.quad	0x401b76b09635610b              # double 6.8659080000000001
	.quad	0x3fe574906034f3fe              # double 0.67047900000000005
	.quad	0x40208f0cfe154435              # double 8.2793960000000002
	.quad	0x4013555e28aa4335              # double 4.833367
	.quad	0x4022e1491f2dc2b1              # double 9.4400110000000001
	.quad	0x401cbdae81882adc              # double 7.1852359999999997
	.quad	0x4023a4866a11ec92              # double 9.8213380000000008
	.quad	0x401b6ed84d338f7a              # double 6.8582470000000004
	.quad	0x401359e5e2478855              # double 4.8377910000000002
	.quad	0x4017083be6601bca              # double 5.7580410000000004
	.quad	0x4018fc6fbd273d5c              # double 6.2465200000000003
	.quad	0x401f3f4be835dedf              # double 7.8118129999999998
	.quad	0x401333f359ff4fd7              # double 4.8007330000000001
	.quad	0x402278c5436b8f9b              # double 9.2358799999999999
	.quad	0x4020ef9a06a6e32e              # double 8.4679719999999996
	.quad	0x3fec2a77a2cecc81              # double 0.88018399999999997
	.quad	0x4016b162ae4b0186              # double 5.6732279999999999
	.quad	0x40230004534bd76f              # double 9.5000330000000001
	.quad	0x40208e07c4199fe4              # double 8.2774029999999996
	.quad	0x3ff33d523b3636f4              # double 1.2024710000000001
	.quad	0x3fe68bc7b45f17be              # double 0.70456300000000005
	.quad	0x40183c7863beec39              # double 6.0590529999999996
	.quad	0x4019afe3b03e20cd              # double 6.421767
	.quad	0x40118f1e0828c36e              # double 4.3897630000000003
	.quad	0x4009acd184c27200              # double 3.209384
	.quad	0x40168e6c8f755369              # double 5.6390859999999998
	.quad	0x3fe268a50507a6bd              # double 0.57527399999999995
	.quad	0x3ff3c3265add9c28              # double 1.235144
	.quad	0x400f97d7c2ca148c              # double 3.9491420000000002
	.quad	0x401fe3f4a98aa865              # double 7.9726129999999999
	.quad	0x401402630ec31162              # double 5.0023309999999999
	.quad	0x40032601bc98a223              # double 2.3935580000000001
	.quad	0x4007832f44912989              # double 2.9390550000000002
	.quad	0x3ff87021d10b1fef              # double 1.5273760000000001
	.quad	0x4009777af640639d              # double 3.1833399999999998
	.quad	0x3fecadfd694ccab4              # double 0.896239
	.quad	0x3ff5eae6c8f75537              # double 1.3698490000000001
	.quad	0x400f294573a79789              # double 3.8951519999999999
	.quad	0x4021129c99285a92              # double 8.5363509999999998
	.quad	0x4014637bd05af6c7              # double 5.0971520000000003
	.quad	0x402338a372606fac              # double 9.6106219999999993
	.quad	0x40156c21187e7c07              # double 5.3555950000000001
	.quad	0x4009e27525460aa6              # double 3.2355749999999999
	.quad	0x3ffae3992c8c5005              # double 1.680566
	.quad	0x401b1eeed8904f6e              # double 6.780208
	.quad	0x401b88a936c58eeb              # double 6.8834580000000001
	.quad	0x401cb53e2d6238da              # double 7.1769949999999998
	.quad	0x4021df94855da273              # double 8.9366800000000008
	.quad	0x400e03e6c4c5974e              # double 3.7519049999999998
	.quad	0x4021a4febd09e12a              # double 8.8222559999999994
	.quad	0x4011268123810e88              # double 4.2876019999999997
	.quad	0x3ff2cda1a93293d1              # double 1.175203
	.quad	0x3fea549d7ba6698c              # double 0.82282900000000003
	.quad	0x3ff6f44a1f080304              # double 1.4346410000000001
	.quad	0x3ffa94b599aa6091              # double 1.6613059999999999
	.quad	0x4022ed5842b734b5              # double 9.4635639999999998
	.quad	0x4011824b33daf8df              # double 4.3772399999999996
	.quad	0x40195c2bd7f51efb              # double 6.3400109999999996
	.quad	0x4018554152b0a6fc              # double 6.0832569999999997
	.quad	0x3ff03503b81b64e0              # double 1.0129429999999999
	.quad	0x4011d9b5e95b78cd              # double 4.4626080000000004
	.quad	0x40115c5ac471b478              # double 4.3401899999999998
	.quad	0x402184daf4adbc66              # double 8.7594829999999995
	.quad	0x40177b76709fa54c              # double 5.8705689999999997
	.quad	0x401baa7daa4fca43              # double 6.9164950000000003
	.quad	0x400c4d2135daad60              # double 3.5376609999999999
	.quad	0x4016f03fb3743633              # double 5.7346180000000002
	.quad	0x3feedc182ecaeea6              # double 0.96436699999999997
	.quad	0x401f365cb35f3d7d              # double 7.8030879999999998
	.quad	0x40068cacd184c272              # double 2.818689
	.quad	0x40216c13122b7baf              # double 8.7110830000000004
	.quad	0x400cade1198aeb81              # double 3.584902
	.quad	0x401878f7121ab4b7              # double 6.1181299999999998
	.quad	0x4012ac881e4712e4              # double 4.668488
	.quad	0x400267631b584b1b              # double 2.3004820000000001
	.quad	0x4011fa78af3e468d              # double 4.4946010000000003
	.quad	0x4023479f44d44567              # double 9.6398869999999998
	.quad	0x402240d1fa333765              # double 9.1266020000000001
	.quad	0x4018a29888f861a6              # double 6.158785
	.quad	0x401d34f2ae07e5a8              # double 7.3017070000000004
	.quad	0x401fda0dfdef8488              # double 7.9629440000000002
	.quad	0x3fd2bc7f77af6406              # double 0.29275499999999999
	.quad	0x401a0593e5fb71fc              # double 6.5054470000000002
	.quad	0x4022cfbf1e8e6080              # double 9.4057549999999992
	.quad	0x4022fc05b39e279e              # double 9.4922310000000003
	.quad	0x3ffb64c404a72eae              # double 1.7121010000000001
	.quad	0x4020303fb3743633              # double 8.0942360000000004
	.quad	0x4023ac007570c565              # double 9.835941
	.quad	0x40197fcf80dc3372              # double 6.3748149999999999
	.quad	0x40185c0ebedfa440              # double 6.0899000000000001
	.quad	0x4015b15097c80842              # double 5.4231590000000001
	.quad	0x40208e67f90d9d77              # double 8.2781369999999992
	.quad	0x400c66e653868fd2              # double 3.5502440000000002
	.quad	0x400af5b91f70de8f              # double 3.3699819999999998
	.quad	0x400220e51d25aab4              # double 2.2660619999999998
	.quad	0x3fdfc33f85510d39              # double 0.49629200000000001
	.quad	0x4013747f562174c5              # double 4.8637670000000002
	.quad	0x401ba6b1a2a4db16              # double 6.9127869999999998
	.quad	0x4023acf765fd8adb              # double 9.8378250000000004
	.quad	0x400faf9767903212              # double 3.9607380000000001
	.quad	0x4019e5f06f694467              # double 6.4745499999999998
	.quad	0x401fa997c3d68406              # double 7.9156180000000003
	.quad	0x3fd399fe43675ddd              # double 0.30627399999999999
	.quad	0x4014b02bc72e275b              # double 5.1720420000000003
	.quad	0x3fd451a437824d4d              # double 0.31748300000000002
	.quad	0x40237901b003686a              # double 9.7363409999999995
	.quad	0x401e6a09cc319c5a              # double 7.6035529999999998
	.quad	0x4014a2dd377e1b8f              # double 5.1590470000000002
	.quad	0x400e19a6b50b0f28              # double 3.7625250000000001
	.quad	0x40027fa97e132b56              # double 2.312335
	.quad	0x4019740d4dc65c70              # double 6.3633319999999998
	.quad	0x4012abf9c62a1b5c              # double 4.6679449999999996
	.quad	0x400e1b2b3461309c              # double 3.7632659999999998
	.quad	0x40126dc981beb181              # double 4.6072139999999999
	.quad	0x4012323033a4723b              # double 4.5490120000000003
	.quad	0x4006058eeae9ee46              # double 2.7527140000000001
	.quad	0x402260815e39713b              # double 9.1884870000000003
	.quad	0x4005699524bfd2e9              # double 2.6765539999999999
	.quad	0x401915a8155d5f57              # double 6.2711490000000003
	.quad	0x400aec7a7c9de050              # double 3.3654679999999999
	.quad	0x40043461b6d43d04              # double 2.5255770000000002
	.quad	0x401e6b3461309c80              # double 7.604692
	.quad	0x400382c9081c2e34              # double 2.43886
	.quad	0x4023ea643cc07aaf              # double 9.957796
	.quad	0x401b6e542e557de1              # double 6.8577430000000001
	.quad	0x4004bbefd00713f0              # double 2.5917659999999998
	.quad	0x40058d7f0ed3d85a              # double 2.6940900000000001
	.quad	0x40116c536d655e29              # double 4.3557870000000003
	.quad	0x402258a2a90cd424              # double 9.1731160000000002
	.quad	0x4000203ff69014b6              # double 2.0157470000000002
	.quad	0x401110cd855970b5              # double 4.2664090000000003
	.quad	0x40161cc07aaef2c7              # double 5.5280779999999998
	.quad	0x401d5425f202107b              # double 7.3321759999999996
	.quad	0x400c8259e1f3a57f              # double 3.5636480000000001
	.quad	0x3fc84ac6cdaf4adc              # double 0.18978200000000001
	.quad	0x4018972d5e071c54              # double 6.147634
	.quad	0x401dfd9ad85dfa87              # double 7.4976609999999999
	.quad	0x40234cb790fb6567              # double 9.6498380000000008
	.quad	0x4023587e175d13d7              # double 9.6728369999999994
	.quad	0x4003c88f861a60d4              # double 2.4729299999999999
	.quad	0x3ff80e5c4eb56fb9              # double 1.503506
	.quad	0x4001d1ce28ed5f14              # double 2.2274440000000002
	.quad	0x40224b38b47c73ef              # double 9.1469170000000002
	.quad	0x4001f6d97b30f8c6              # double 2.2455319999999999
	.quad	0x4023de2328f9f44d              # double 9.9338619999999995
	.quad	0x40203290470a808d              # double 8.0987570000000009
	.quad	0x40214c43d46b26c0              # double 8.6489550000000008
	.quad	0x40172d6e8af81627              # double 5.7943670000000003
	.quad	0x3ff10e4755ffe6d6              # double 1.0659860000000001
	.quad	0x402222b6ae7d566d              # double 9.0678000000000001
	.quad	0x4011b5814940bbb2              # double 4.427251
	.quad	0x401b5302f72b4528              # double 6.8310659999999999
	.quad	0x4008a04c05921038              # double 3.0782699999999998
	.quad	0x3fe2052502eec7c9              # double 0.56312799999999996
	.quad	0x402286c636b09635              # double 9.2632309999999993
	.quad	0x3fe035b4edb2f662              # double 0.50655600000000001
	.quad	0x401b13aafff36ac6              # double 6.7692069999999998
	.quad	0x401bca1b1960fa16              # double 6.9473690000000001
	.quad	0x401c530d306a2b17              # double 7.081105
	.quad	0x401c5ec311622813              # double 7.0925409999999998
	.quad	0x40151f59ccfaeff6              # double 5.2806160000000002
	.quad	0x40125441bb8c32a9              # double 4.5822820000000002
	.quad	0x4010d94898f605ab              # double 4.2121909999999998
	.quad	0x401362d59d55e6bc              # double 4.8465179999999997
	.quad	0x401e01476af89c5e              # double 7.5012489999999996
	.quad	0x3ff3ed84d338f798              # double 1.2454879999999999
	.quad	0x4006e9795b35b0bc              # double 2.864001
	.quad	0x401e2e1049235f81              # double 7.5449840000000003
	.quad	0x401fdd7cb2d905c0              # double 7.9662959999999998
	.quad	0x4022bd0a24463066              # double 9.369218
	.quad	0x401ecd790752da98              # double 7.7006569999999996
	.quad	0x3ffa38561d4306e6              # double 1.638754
	.quad	0x3ffc75a1016ce78a              # double 1.778718
	.quad	0x402233cf70153bd1              # double 9.1011919999999993
	.quad	0x4011b76ab5807fed              # double 4.4291179999999999
	.quad	0x3fd88e3ac0c62e4d              # double 0.38368099999999999
	.quad	0x401663925bb7b6bb              # double 5.5972379999999999
	.quad	0x40152e00d1b71759              # double 5.2949250000000001
	.quad	0x401ea1fff79c8430              # double 7.6582030000000003
	.quad	0x400a415011904b3c              # double 3.2818909999999999
	.quad	0x4017a6262cba732e              # double 5.912255
	.quad	0x3ff9ce779207d4e1              # double 1.6129070000000001
	.quad	0x4023889d27c39368              # double 9.7668239999999997
	.quad	0x401a3f2a172abef0              # double 6.5616839999999996
	.quad	0x40222cfbb949624a              # double 9.0878580000000007
	.quad	0x3ff95040bfe3b03e              # double 1.582093
	.quad	0x3ff61d2f1a9fbe77              # double 1.382125
	.quad	0x3fffd3458cd20afa              # double 1.98908
	.quad	0x4011d9595feda661              # double 4.4622549999999999
	.quad	0x40148644d87724fb              # double 5.1311220000000004
	.quad	0x401a9940789613d3              # double 6.6496599999999999
	.quad	0x4020c75d35653c9b              # double 8.3893830000000005
	.quad	0x400b58b3f63c31df              # double 3.4183119999999998
	.quad	0x4022f29a1b9f98b7              # double 9.4738319999999998
	.quad	0x3ff317507e9d94d1              # double 1.193192
	.quad	0x4005cfcd67fd3f5b              # double 2.7264659999999998
	.quad	0x401b904102ff8ec1              # double 6.890873
	.quad	0x4002b2c8c5004fb1              # double 2.337297
	.quad	0x401c8bd66277c45d              # double 7.1365600000000002
	.quad	0x401155d18090b418              # double 4.3338070000000002
	.quad	0x4021c39d5e4a3832              # double 8.8820599999999992
	.quad	0x401699845dc83233              # double 5.6499189999999997
	.quad	0x4010b8869c66d374              # double 4.1802010000000003
	.quad	0x3fe27179bfdf7e80              # double 0.57635199999999998
	.quad	0x401072456f75d9a1              # double 4.1115930000000001
	.quad	0x4017da1059ea5721              # double 5.9629529999999997
	.quad	0x400f09a0ad8a1166              # double 3.8797009999999998
	.quad	0x4008f9f77292c493              # double 3.1220539999999999
	.quad	0x401b261522a6f3f5              # double 6.7871899999999998
	.quad	0x400ade06961c3697              # double 3.3584109999999998
	.quad	0x402367761cbccf29              # double 9.7020730000000003
	.quad	0x3fe8c1bfbdf090f7              # double 0.77365099999999998
	.quad	0x3ffdc059210385c6              # double 1.8594599999999999
	.quad	0x402051327243137b              # double 8.158588
	.quad	0x4018fafee6fb4c3c              # double 6.2451129999999999
	.quad	0x4012e1fa333764f1              # double 4.7206809999999999
	.quad	0x3fc6285ec3dab5c4              # double 0.17310700000000001
	.quad	0x40051d54da4ce810              # double 2.6393219999999999
	.quad	0x402197a355043e53              # double 8.7961679999999998
	.quad	0x4020ea923e5b8562              # double 8.4581470000000003
	.quad	0x40238052502eec7d              # double 9.7506280000000007
	.quad	0x401b24e7ee9142b3              # double 6.786041
	.quad	0x4017f77186551937              # double 5.991644
	.quad	0x4010d59c49774257              # double 4.2086040000000002
	.quad	0x4013f46801711948              # double 4.9886780000000002
	.quad	0x3fc78b502ababead              # double 0.18393899999999999
	.quad	0x40207bb23571d1d4              # double 8.2415939999999991
	.quad	0x3fdd9ee02a77a2cf              # double 0.46282200000000001
	.quad	0x401cd564b662fdfc              # double 7.2083919999999999
	.quad	0x401d0cdd0d8cb07d              # double 7.262562
	.quad	0x4009ae2a80064a9d              # double 3.2100420000000001
	.quad	0x402296ba6aca7935              # double 9.2943909999999992
	.quad	0x3ff374e874c8ffb9              # double 1.2160420000000001
	.quad	0x40233e8fb00bcbe6              # double 9.6221899999999998
	.quad	0x4020431ab0856e69              # double 8.1310629999999993
	.quad	0x40082c3eb7cbb3c8              # double 3.021604
	.quad	0x40064fc504816f00              # double 2.7889499999999998
	.quad	0x4011419e731d2e0e              # double 4.3140809999999998
	.quad	0x401d835371971c11              # double 7.3782480000000001
	.quad	0x3fece0285ec3dab6              # double 0.90236300000000003
	.quad	0x3ffa9ca5bd944aa5              # double 1.6632439999999999
	.quad	0x3ff7f5bd512ec6bd              # double 1.497495
	.quad	0x40127e5f30e7ff58              # double 4.6234099999999998
	.quad	0x40222b2db1e9f278              # double 9.0843330000000009
	.quad	0x40093cf9a06a6e33              # double 3.154773
	.quad	0x40144c579f234656              # double 5.0745529999999999
	.quad	0x402166770bd017db              # double 8.7001270000000002
	.quad	0x3fe85abe27179bfe              # double 0.761077
	.quad	0x401f523d9231c64c              # double 7.8303130000000003
	.quad	0x400c150c1b97353b              # double 3.5102769999999999
	.quad	0x4018287160956c0d              # double 6.0394949999999996
	.quad	0x4015340e5a35d67c              # double 5.3008360000000003
	.quad	0x401b63e1437c5693              # double 6.8475390000000003
	.quad	0x3ffcc6412cf0f9d3              # double 1.7984020000000001
	.quad	0x3ffc2fea3df6db94              # double 1.761698
	.quad	0x4006989ce4a7b4e5              # double 2.8245179999999999
	.quad	0x4023e7f06705c897              # double 9.9530060000000002
	.quad	0x3ff55b70691ea78b              # double 1.334824
	.quad	0x4013d2ad3e920c07              # double 4.9557390000000003
	.quad	0x3fef43f811f4f50a              # double 0.977047
	.quad	0x4017ed1fa333764f              # double 5.9815659999999999
	.quad	0x4007d8eb0318b934              # double 2.9809169999999998
	.quad	0x4002aecd07852f7f              # double 2.3353519999999999
	.quad	0x4017064cb5bb3850              # double 5.7561520000000002
	.quad	0x3fddd6451b93037d              # double 0.46620299999999998
	.quad	0x3ffd5ae924f227d0              # double 1.834695
	.quad	0x401c3d7cf5f4e443              # double 7.060047
	.quad	0x4020c22c669057d1              # double 8.3792449999999992
	.quad	0x4016ccf13cee9dd8              # double 5.7001390000000001
	.quad	0x4021f2f0bf1a5ca3              # double 8.9744930000000007
	.quad	0x401142e9899bf594              # double 4.3153439999999996
	.quad	0x400b814488c60cbf              # double 3.4381189999999999
	.quad	0x401dd7789a459104              # double 7.4604210000000002
	.quad	0x3ff9c6cb966be7b0              # double 1.6110340000000001
	.quad	0x3fe9dfa00e27e0f0              # double 0.80854800000000004
	.quad	0x4013c1f3a57eaa2a              # double 4.939406
	.quad	0x3fd39b413986338b              # double 0.30635099999999998
	.quad	0x4022203c4b09e98e              # double 9.0629600000000003
	.quad	0x4011e19695d91ab9              # double 4.4703010000000001
	.quad	0x401317d1bb4916ca              # double 4.7732609999999998
	.quad	0x40212720ea5b530d              # double 8.5764230000000001
	.quad	0x3ff12b56fb8f57f7              # double 1.073081
	.quad	0x4017d114d2f5dbba              # double 5.9541810000000002
	.quad	0x401b247a5b0ff10f              # double 6.7856230000000002
	.quad	0x40178f44d4456712              # double 5.8899109999999997
	.quad	0x401100bd017dae82              # double 4.2507210000000004
	.quad	0x401b42fe82517e78              # double 6.8154240000000001
	.quad	0x3ffe47820a30db6a              # double 1.892458
	.quad	0x40034bbf50e34763              # double 2.4119860000000002
	.quad	0x401e789e774eebf6              # double 7.6177919999999997
	.quad	0x401bdaa8eb463498              # double 6.9635350000000003
	.quad	0x40215edefc7a3982              # double 8.685295
	.quad	0x3fc4812be48a58b4              # double 0.160192
	.quad	0x401eca08bfc2224f              # double 7.6972990000000001
	.quad	0x4022ada09cc319c6              # double 9.3391160000000006
	.quad	0x3fed5432873bc904              # double 0.916528
	.quad	0x401a5b239a38fbca              # double 6.5890029999999999
	.quad	0x4004027e0ef99807              # double 2.501217
	.quad	0x401b6249e44fa051              # double 6.8459849999999998
	.quad	0x400868387df5cf25              # double 3.0508890000000002
	.quad	0x4014a0d66f0cfe15              # double 5.1570679999999998
	.quad	0x40231f4751ce28ed              # double 9.5610909999999993
	.quad	0x401bb4d26fa3fcca              # double 6.9265840000000001
	.quad	0x400db422467be554              # double 3.7129560000000001
	.quad	0x4015a7525460aa65              # double 5.4134000000000002
	.quad	0x4022d2b90a782907              # double 9.4115680000000008
	.quad	0x401ca00ffda4052d              # double 7.1563109999999996
	.quad	0x3fc24c059210385c              # double 0.14294499999999999
	.quad	0x4000b38476f2a5a4              # double 2.0876549999999998
	.quad	0x3ff638b3700474da              # double 1.388843
	.quad	0x3fe517396d0917d7              # double 0.65908500000000003
	.quad	0x4023de00d1b71759              # double 9.9336000000000002
	.quad	0x40203ecdaf4adbc6              # double 8.1226629999999993
	.quad	0x402119e518f3eccc              # double 8.5505759999999995
	.quad	0x402279cd8127b2cc              # double 9.2378959999999992
	.quad	0x3fb8ad14a0a0f4d8              # double 0.096391000000000004
	.quad	0x4023b8869c66d374              # double 9.8604020000000005
	.quad	0x3ff1e5c0b9991362              # double 1.118592
	.quad	0x401ae0c9107faa04              # double 6.7195169999999997
	.quad	0x401d0bffcdab191e              # double 7.2617180000000001
	.quad	0x401b878e1932d6ed              # double 6.8823780000000001
	.quad	0x401cfbeb18116ebd              # double 7.2460139999999997
	.quad	0x40075abb8800eae2              # double 2.9193030000000002
	.quad	0x40133b9389b52008              # double 4.8081800000000001
	.quad	0x40171a1a500d5e8d              # double 5.7754909999999997
	.quad	0x401848bf7f06705d              # double 6.0710430000000004
	.quad	0x3fe1fadf2ecf2064              # double 0.56187399999999998
	.quad	0x401871858bc59b80              # double 6.1108609999999999
	.quad	0x40047c925785f8d3              # double 2.560826
	.quad	0x401d12f2734f82f5              # double 7.2685029999999999
	.quad	0x4013842e9899bf59              # double 4.8790839999999998
	.quad	0x3fe6fb8d3f1843c4              # double 0.71820700000000004
	.quad	0x3fc2317acc4ef88c              # double 0.14213500000000001
	.quad	0x401477bfe7e1fc09              # double 5.116943
	.quad	0x40237787ce95faa9              # double 9.7334580000000006
	.quad	0x4011069a0ad8a116              # double 4.2564469999999996
	.quad	0x3fcdb024f6598e11              # double 0.23193800000000001
	.quad	0x4004f3b7d84901d2              # double 2.6190030000000002
	.quad	0x4023d6223e186983              # double 9.9182299999999994
	.quad	0x4012ec45cbbc2b95              # double 4.7307350000000001
	.quad	0x4016eda16616b54e              # double 5.7320609999999999
	.quad	0x401ce6317268d328              # double 7.2247979999999998
	.quad	0x40089837b4a2339c              # double 3.074325
	.quad	0x3fe597c3d68405b4              # double 0.67477600000000004
	.quad	0x4021348f75536934              # double 8.6026570000000006
	.quad	0x40044bdf4c2b51bd              # double 2.5370469999999998
	.quad	0x3ff93d556084a516              # double 1.577474
	.quad	0x40213fd8f0c77dd8              # double 8.6247019999999992
	.quad	0x400e463e8dda48b6              # double 3.7842989999999999
	.quad	0x4016cf59ccfaeff6              # double 5.7024910000000002
	.quad	0x40032b0079a2834d              # double 2.3959969999999999
	.quad	0x4016170ef566490a              # double 5.5225179999999998
	.quad	0x4019d393ee5eedcc              # double 6.4566189999999999
	.quad	0x401e0817fc7607c4              # double 7.5079039999999999
	.quad	0x401d86df82b1f688              # double 7.3817120000000002
	.quad	0x4023917b7414a4d3              # double 9.7841450000000005
	.quad	0x401b035b4edb2f66              # double 6.7532779999999999
	.quad	0x40216d25460aa64c              # double 8.7131749999999996
	.quad	0x3fd929888f861a61              # double 0.39316000000000001
	.quad	0x3feae82517e77d52              # double 0.84083799999999997
	.quad	0x4019f6bc621b7e0b              # double 6.4909530000000002
	.quad	0x40218bda5119ce07              # double 8.7731499999999993
	.quad	0x3feebe7f2c3009b3              # double 0.96075399999999999
	.quad	0x40177014727dcbde              # double 5.8594530000000002
	.quad	0x40105cc426351def              # double 4.090592
	.quad	0x3ff978d0cc35ce18              # double 1.591996
	.quad	0x401e26f0068db8bb              # double 7.5380250000000001
	.quad	0x3ff22b3dd11be6e6              # double 1.1355569999999999
	.quad	0x3fad028a1dfb938a              # double 0.056660000000000002
	.quad	0x4023c64ef0281ba8              # double 9.887321
	.quad	0x4006eb7d41743e96              # double 2.8649849999999999
	.quad	0x400259096bb98c7e              # double 2.2934749999999999
	.quad	0x4002251116a8b8f1              # double 2.2680989999999999
	.quad	0x400b7d4280ae1049              # double 3.4361619999999999
	.quad	0x3fc123aafff36ac6              # double 0.13390099999999999
	.quad	0x4020dafa2f05a709              # double 8.4276900000000001
	.quad	0x401909a027525461              # double 6.2594000000000003
	.quad	0x40156ca148ba83f5              # double 5.3560840000000001
	.quad	0x4022a5bbbe878fac              # double 9.3236980000000002
	.quad	0x3ff81da7b0b39192              # double 1.5072399999999999
	.quad	0x401dd8ae74f2f124              # double 7.4616030000000002
	.quad	0x3fe25c37a3db3bfb              # double 0.57375699999999996
	.quad	0x4015f98c7e28240b              # double 5.4936999999999996
	.quad	0x400c93f5b5fa2270              # double 3.5722459999999998
	.quad	0x401823c536d655e3              # double 6.0349320000000004
	.quad	0x401560dcb9a9da59              # double 5.3445919999999996
	.quad	0x4001cf88b9778573              # double 2.2263350000000002
	.quad	0x4020d7efbf401c50              # double 8.4217510000000004
	.quad	0x3fff4112ba16e7a3              # double 1.953387
	.quad	0x3f81e53a81dc0db2              # double 0.0087379999999999992
	.quad	0x401b1d080b673c4f              # double 6.7783509999999998
	.quad	0x40156198aeb80ed0              # double 5.3453090000000003
	.quad	0x40235b58298cc144              # double 9.6784069999999999
	.quad	0x3f8a847b24638c97              # double 0.012947999999999999
	.quad	0x3fec2d5e071c53f4              # double 0.88053800000000004
	.quad	0x3ff26b2af145521a              # double 1.1511640000000001
	.quad	0x400789df1172ef0b              # double 2.94232
	.quad	0x40225315d701d9f5              # double 9.1622760000000003
	.quad	0x40124692b3cc4ac7              # double 4.5689190000000002
	.quad	0x40167394face67d7              # double 5.6128729999999996
	.quad	0x3fff80b780346dc6              # double 1.968925
	.quad	0x40226bf67f4dbdf9              # double 9.2108650000000001
	.quad	0x401cf66e43aa79bc              # double 7.2406550000000003
	.quad	0x401e9445aa2e3c53              # double 7.6447969999999996
	.quad	0x3ff36550870110a1              # double 1.212235
	.quad	0x4003058dde7a743a              # double 2.3777119999999998
	.quad	0x4022b404ea4a8c15              # double 9.3515999999999995
	.quad	0x4007d018e757928e              # double 2.97661
	.quad	0x4021833743632c1f              # double 8.7562809999999995
	.quad	0x4017a20b3d4ae42a              # double 5.9082460000000001
	.quad	0x40056d7add15f02c              # double 2.6784569999999999
	.quad	0x40228077036c9c0b              # double 9.2509080000000008
	.quad	0x40231082f0e0a84c              # double 9.5322490000000001
	.quad	0x401709a49c2c1b11              # double 5.759417
	.quad	0x401ed462c343b70f              # double 7.707408
	.quad	0x401702b8c75c4a84              # double 5.7526580000000003
	.quad	0x40113bc1acde19fc              # double 4.3083559999999999
	.quad	0x40043968d759ee89              # double 2.5280320000000001
	.quad	0x402191e7d9988d2a              # double 8.7849719999999998
	.quad	0x4003081b21c475e6              # double 2.3789579999999999
	.quad	0x401bb48beb5b2d4d              # double 6.9263149999999998
	.quad	0x40149b6f19934efd              # double 5.1517910000000002
	.quad	0x40159f7c6759ab6d              # double 5.405748
	.quad	0x4016b28e0c9d9d34              # double 5.6743699999999997
	.quad	0x400c6e30446b69db              # double 3.5538029999999998
	.quad	0x4005c0589acbc8c1              # double 2.7189190000000001
	.quad	0x4019f71971c10d7c              # double 6.4913080000000001
	.quad	0x4008c848387df5cf              # double 3.0977939999999999
	.quad	0x40012f76e6106ab1              # double 2.1481759999999999
	.quad	0x400aaf566490a351              # double 3.3356140000000001
	.quad	0x401b433b10774688              # double 6.8156549999999996
	.quad	0x3fdf3c968943e100              # double 0.48807299999999998
	.quad	0x401877079e59f2bb              # double 6.1162400000000003
	.quad	0x400c63e39f77292c              # double 3.5487739999999999
	.quad	0x400699d0a67620ef              # double 2.8251050000000002
	.quad	0x400edbb83cf2cf96              # double 3.8572850000000001
	.quad	0x401c797fa5d28d00              # double 7.1186509999999998
	.quad	0x4023bba647fdc593              # double 9.8665029999999998
	.quad	0x40213ee47dc37a3e              # double 8.6228370000000005
	.quad	0x4023bb354c12274a              # double 9.8656410000000001
	.quad	0x4006db70ef566491              # double 2.8571490000000002
	.quad	0x4020c86d71f36263              # double 8.3914600000000004
	.quad	0x3ffa2990f301eabc              # double 1.635148
	.quad	0x40204424a276b7ed              # double 8.1330919999999995
	.quad	0x400c3b4dcebfec14              # double 3.5289570000000001
	.quad	0x4021d52c386d2ed8              # double 8.9163530000000009
	.quad	0x40101ff47735c183              # double 4.0312060000000001
	.quad	0x40139bcf0b6b6e0d              # double 4.9021569999999999
	.quad	0x4002c8e68e3ef284              # double 2.348096
	.quad	0x4017568a0d349be9              # double 5.834511
	.quad	0x402260a41a261bf3              # double 9.1887519999999991
	.quad	0x4017ae8dda48b652              # double 5.9204629999999998
	.quad	0x3ffa1c981beb1811              # double 1.6319809999999999
	.quad	0x3fe0e583e8576cce              # double 0.52801699999999996
	.quad	0x401884ca0c282c6f              # double 6.129677
	.quad	0x4015478f68be2f7b              # double 5.3198829999999999
	.quad	0x401a9f5dbb9cf9a0              # double 6.6556309999999996
	.quad	0x401dd308bb906467              # double 7.4560880000000003
	.quad	0x3ff2082278d0cc36              # double 1.126986
	.quad	0x40123ac1094a2b9d              # double 4.5573769999999998
	.quad	0x40064eee0f3cb3e5              # double 2.7885399999999998
	.quad	0x401b1d4f15e7c8d2              # double 6.7786220000000004
	.quad	0x400591372a38b8ae              # double 2.6959059999999999
	.quad	0x401a7ecaab8a5ce6              # double 6.6238200000000003
	.quad	0x3fda80f12c27a637              # double 0.41411999999999999
	.quad	0x40169fa76534373f              # double 5.6559119999999998
	.quad	0x4022c9a8ef77f280              # double 9.3938670000000002
	.quad	0x4020d1de05037500              # double 8.4098970000000008
	.quad	0x40228ef1348b2208              # double 9.2791840000000007
	.quad	0x40007f06f6944674              # double 2.0620250000000002
	.quad	0x400be8049667b5f2              # double 3.4882900000000001
	.quad	0x400e726e115592da              # double 3.8058740000000002
	.quad	0x40179c75818c5c9a              # double 5.9027919999999998
	.quad	0x400a94fb549f9485              # double 3.3227449999999998
	.quad	0x402098fa376922d9              # double 8.2987839999999995
	.quad	0x4014fde9c0229a5f              # double 5.2479620000000002
	.quad	0x4019cf623076c051              # double 6.4525230000000002
	.quad	0x3fc5f22c01e68a0d              # double 0.17145299999999999
	.quad	0x401c4cc70867ad8e              # double 7.0749779999999998
	.quad	0x3fc6acb85a4f00ef              # double 0.177146
	.quad	0x3ff86e1cde5d1809              # double 1.526883
	.quad	0x40117a89331a08c0              # double 4.3696640000000002
	.quad	0x40005f41aef6f8f0              # double 2.0465119999999999
	.quad	0x4018576fb09203a3              # double 6.0853869999999999
	.quad	0x3ff399bc33f85511              # double 1.225033
	.quad	0x401272c4d65e4606              # double 4.6120789999999996
	.quad	0x3ff5a494d50ebaae              # double 1.352681
	.quad	0x40148d50a88effe3              # double 5.1380030000000003
	.quad	0x4014e6ddaceee0f4              # double 5.2254550000000002
	.quad	0x4023e6ed245b291c              # double 9.9510280000000008
	.quad	0x4021dd4cb9ecf638              # double 8.932226
	.quad	0x40104b3b320535ca              # double 4.0734680000000001
	.quad	0x4013ca35d67ba238              # double 4.9474710000000002
	.quad	0x3ff3f4b407032980              # double 1.247242
	.quad	0x400ef212513b5bf7              # double 3.8681990000000002
	.quad	0x401673111f0c34c2              # double 5.6123700000000003
	.quad	0x3fcc0dfdef8487ba              # double 0.21917700000000001
	.quad	0x4022905425f20210              # double 9.2818919999999991
	.quad	0x400e91cc100e6afd              # double 3.8211900000000001
	.quad	0x4000c4a7b4e54f7b              # double 2.0960230000000002
	.quad	0x400afa8155d5f56a              # double 3.3723169999999998
	.quad	0x4014fd4f9c1f85d7              # double 5.2473739999999998
	.quad	0x401ee3a4b5568e82              # double 7.722308
	.quad	0x402162d256798959              # double 8.6930110000000003
	.quad	0x400c91c087442c80              # double 3.5711680000000001
	.quad	0x401b0d6adf71eaff              # double 6.7631030000000001
	.quad	0x401b039a38fbca10              # double 6.7535179999999997
	.quad	0x401ae626f60e0eb6              # double 6.7247579999999996
	.quad	0x40143014f8b588e3              # double 5.0469549999999996
	.quad	0x40217bf9e7b80a9e              # double 8.7421410000000002
	.quad	0x401bf67a0f9096bc              # double 6.9907000000000004
	.quad	0x400ce763a1900820              # double 3.6129829999999998
	.quad	0x40022ca686e7e62e              # double 2.2718020000000001
	.quad	0x4011ca1dfb9389b5              # double 4.4473799999999999
	.quad	0x401e5e8e60807358              # double 7.59234
	.quad	0x4014796b3354c122              # double 5.1185729999999996
	.quad	0x400139420b3d4ae4              # double 2.1529579999999999
	.quad	0x400b01b2a27f1b69              # double 3.375829
	.quad	0x401613b1d0c80410              # double 5.5192329999999998
	.quad	0x4010b8ac9f2fdb90              # double 4.1803460000000001
	.quad	0x4023d2bc72e275ab              # double 9.9115939999999991
	.quad	0x4012c37867f0aa22              # double 4.6908890000000003
	.quad	0x40142b59578a2a91              # double 5.0423330000000002
	.quad	0x4001684b5dcc63f1              # double 2.1759249999999999
	.quad	0x4007e938de6ddf01              # double 2.9888780000000001
	.quad	0x3fff915ce9e5e248              # double 1.9729890000000001
	.quad	0x40107d82fd75e204              # double 4.1225699999999996
	.quad	0x40102a93293d102c              # double 4.0415770000000002
	.quad	0x40022df37329c348              # double 2.272437
	.quad	0x40206a7d6733ebc0              # double 8.2079880000000003
	.quad	0x3fe879e9d0e991ff              # double 0.76488199999999995
	.quad	0x3fefd58c8eef1bac              # double 0.99481799999999998
	.quad	0x401eddcdb37c99af              # double 7.7166050000000003
	.quad	0x40205ebd9018e758              # double 8.1850400000000008
	.quad	0x401d2a8d64d7f0ed              # double 7.2915549999999998
	.quad	0x4022d2070b8cfbfc              # double 9.4102099999999992
	.quad	0x40202379314445aa              # double 8.0692839999999997
	.quad	0x4016380346dc5d64              # double 5.5547000000000004
	.quad	0x3fd7161e4f765fd9              # double 0.36072500000000002
	.quad	0x4021e8e6afcce1c6              # double 8.9548850000000009
	.quad	0x4012e266772d5e07              # double 4.7210939999999999
	.quad	0x401084e592967019              # double 4.1297819999999996
	.quad	0x4006d7460242d05f              # double 2.8551139999999999
	.quad	0x40148691a75cd0bb              # double 5.1314149999999996
	.quad	0x4016e3a860dcb9aa              # double 5.7223220000000001
	.quad	0x40157a355043e532              # double 5.3693439999999999
	.quad	0x401da0dd82fd75e2              # double 7.407095
	.quad	0x400c802c0a4a05de              # double 3.5625840000000002
	.quad	0x401d325247cb70ac              # double 7.2991419999999998
	.quad	0x4022c116ebd4cfd1              # double 9.3771280000000007
	.quad	0x3fd5d117b5286b59              # double 0.340887
	.quad	0x40145e29f9ce8d97              # double 5.0919569999999998
	.quad	0x4021f23161a1db87              # double 8.9730329999999991
	.quad	0x40213a02539756c9              # double 8.6132989999999996
	.quad	0x3fc96b4c7f349386              # double 0.19858700000000001
	.quad	0x3ffac4d76ab58080              # double 1.673057
	.quad	0x4020404a72ead927              # double 8.1255679999999995
	.quad	0x401268cbd1244a62              # double 4.6023399999999999
	.quad	0x40063c13fd0d0679              # double 2.7793350000000001
	.quad	0x4011bb784662bae0              # double 4.4330759999999998
	.quad	0x401473fee2c98e54              # double 5.1132770000000001
	.quad	0x3ffad5d0b73d188f              # double 1.6772009999999999
	.quad	0x401da6916440f239              # double 7.4126640000000004
	.quad	0x3ff74954a7f8012e              # double 1.455403
	.quad	0x401d0e8a2ec28b2a              # double 7.2641989999999996
	.quad	0x4001c1a719b4dcec              # double 2.219557
	.quad	0x40099e79ee02a77a              # double 3.2023809999999999
	.quad	0x4014293964a59c06              # double 5.0402579999999997
	.quad	0x3ffdd6eefa1e3eaf              # double 1.8649739999999999
	.quad	0x402362eba27ae9ab              # double 9.6932039999999997
	.quad	0x4008e523f67f4dbe              # double 3.111885
	.quad	0x3fb16b00ffda4053              # double 0.068039000000000002
	.quad	0x401d22413db7f173              # double 7.2834519999999996
	.quad	0x401de229a5ebb774              # double 7.4708620000000003
	.quad	0x4023143fc43b2dd3              # double 9.5395489999999991
	.quad	0x4017af2e8c0485a1              # double 5.9210760000000002
	.quad	0x3ff55b940fecdd0e              # double 1.3348580000000001
	.quad	0x3fe7e80389f83be6              # double 0.74707199999999996
	.quad	0x3ffcb65cb35f3d7d              # double 1.794522
	.quad	0x3ff8beb5b2d4d402              # double 1.5465599999999999
	.quad	0x402001207d4e0978              # double 8.0022009999999995
	.quad	0x40200242f1ed17c6              # double 8.0044170000000001
	.quad	0x4022ef5818c5c9a3              # double 9.4674689999999994
	.quad	0x401a2d22c881e471              # double 6.5440779999999998
	.quad	0x3fee9667b5f1bef5              # double 0.95586000000000004
	.quad	0x401f26b97fe8ee6c              # double 7.7878170000000004
	.quad	0x4006e48e8a71de6a              # double 2.8616000000000001
	.quad	0x40043fcc9ea9a3d3              # double 2.5311520000000001
	.quad	0x40201d7add15f02c              # double 8.0575779999999994
	.quad	0x40195ff540895d0b              # double 6.3437089999999996
	.quad	0x40213c95bff04578              # double 8.6183300000000003
	.quad	0x40182f1f9acffa7f              # double 6.0460190000000003
	.quad	0x3fe1abb01c92ddbe              # double 0.55220800000000003
	.quad	0x401b3465e8922531              # double 6.8011699999999999
	.quad	0x401c72a1b5c7cd8a              # double 7.1119450000000004
	.quad	0x401cead03d9a9542              # double 7.2293099999999999
	.quad	0x40198366d7a56de3              # double 6.3783219999999998
	.quad	0x40185bd66277c45d              # double 6.0896850000000002
	.quad	0x401f629f59ccfaf0              # double 7.846311
	.quad	0x4023cead4f5903a7              # double 9.9036659999999994
	.quad	0x4011dc22ab25b318              # double 4.4649760000000001
	.quad	0x40015dba908a265f              # double 2.170766
	.quad	0x401b2f609dcf8940              # double 6.7962670000000003
	.quad	0x40143d05f2884838              # double 5.0595929999999996
	.quad	0x401e0ec0b567557a              # double 7.5144070000000003
	.quad	0x4004bea4ebdd334c              # double 2.5930879999999998
	.quad	0x4022d31f8a0902de              # double 9.41235
	.quad	0x40075d640e9d51b5              # double 2.920601
	.quad	0x40175150dae3e6c5              # double 5.8294100000000002
	.quad	0x40151d905c033615              # double 5.2788709999999996
	.quad	0x40217a3d70a3d70a              # double 8.7387499999999996
	.quad	0x3ff5d6d6dc1a47aa              # double 1.364951
	.quad	0x4022b620ab713272              # double 9.3557179999999995
	.quad	0x40047aab47410731              # double 2.5598969999999999
	.quad	0x40102644d87724fb              # double 4.0373720000000004
	.quad	0x4022ce468cac4b4d              # double 9.4028819999999999
	.quad	0x3ff46432441fea81              # double 1.274462
	.quad	0x3ff30fbfc6540cc8              # double 1.1913450000000001
	.quad	0x402038fe47991bc5              # double 8.1113149999999994
	.quad	0x401081d8622c4502              # double 4.1268019999999996
	.quad	0x4023a304ccee5abc              # double 9.8183959999999999
	.quad	0x4016bee30caa326e              # double 5.6864129999999999
	.quad	0x3ff9d9d451fc4c16              # double 1.6156809999999999
	.quad	0x4008fdf19d66adb4              # double 3.123996
	.quad	0x3fe61f81a5870da6              # double 0.69134600000000002
	.quad	0x4004425d8d79d0a6              # double 2.5324049999999998
	.quad	0x401864e2b063e07a              # double 6.0985209999999999
	.quad	0x400e2453d20f2bed              # double 3.767738
	.quad	0x400f9dd4c76d117b              # double 3.9520659999999999
	.quad	0x40036e147ae147ae              # double 2.42875
	.quad	0x3fd65321e603d578              # double 0.34882400000000002
	.quad	0x400bd126634117f8              # double 3.4771239999999999
	.quad	0x4007a8f10a99b6f6              # double 2.9574910000000001
	.quad	0x40162a4a48f96e16              # double 5.5412990000000004
	.quad	0x401a94e65bea0ba2              # double 6.64541
	.quad	0x402368daa0cae643              # double 9.7047930000000004
	.quad	0x40126003254e6e22              # double 4.5937619999999999
	.quad	0x400b76555c52e72e              # double 3.4327800000000002
	.quad	0x40194f440af1cb8a              # double 6.3274080000000001
	.quad	0x401c0843c3a42f1f              # double 7.0080710000000002
	.quad	0x40202c567125dd09              # double 8.0865969999999994
	.quad	0x401b21797cc39ffd              # double 6.7826899999999997
	.quad	0x40067b59578a2a91              # double 2.8102290000000001
	.quad	0x4021e7ea1c68ec53              # double 8.9529580000000006
	.quad	0x40172899392189be              # double 5.7896470000000004
	.quad	0x4021bc3e3193f6c2              # double 8.8676619999999993
	.quad	0x3ffc5b75a74c09c4              # double 1.772329
	.quad	0x401fb89acbc8c0cf              # double 7.9302780000000003
	.quad	0x401d99e12a51e322              # double 7.4002730000000003
	.quad	0x4011099fe43675de              # double 4.2593990000000002
	.quad	0x401fcdb2f661f18d              # double 7.9508780000000003
	.quad	0x40156e5604189375              # double 5.3577500000000002
	.quad	0x4011d25f633ce63a              # double 4.4554419999999997
	.quad	0x3fea2046c764ae00              # double 0.81644000000000005
	.quad	0x4021fb50f40e5a36              # double 8.9908520000000003
	.quad	0x3ffe560d887ebf23              # double 1.8960090000000001
	.quad	0x3fe3beff1950331e              # double 0.61706499999999997
	.quad	0x401352367e414e7f              # double 4.8302860000000001
	.quad	0x3febff3493858362              # double 0.87490299999999999
	.quad	0x400161711947cfa2              # double 2.1725789999999998
	.quad	0x400117d1782d3847              # double 2.1366299999999998
	.quad	0x4022fb4fc610f0e9              # double 9.4908429999999999
	.quad	0x400844955b4677b4              # double 3.0334880000000002
	.quad	0x3fd511ada76d97b3              # double 0.329204
	.quad	0x400666be7afa7222              # double 2.8001680000000002
	.quad	0x401d2a4db163baba              # double 7.2913119999999996
	.quad	0x4023c7034b0e1b4c              # double 9.8886970000000005
	.quad	0x401ef41c3efae792              # double 7.7383889999999997
	.quad	0x3ffbe75ddd2ae8e2              # double 1.743986
	.quad	0x3ffc85e5f30e7ff6              # double 1.7826900000000001
	.quad	0x3ffeeb9f559b3d08              # double 1.932525
	.quad	0x4020466cf41f212d              # double 8.1375499999999992
	.quad	0x4006317481b21c47              # double 2.7741479999999998
	.quad	0x4020d27ac81d3aa3              # double 8.4110929999999993
	.quad	0x401d3cf95d4e8fb0              # double 7.309545
	.quad	0x400741c79b34a44c              # double 2.9071189999999998
	.quad	0x3ff5aee84ad794a7              # double 1.355202
	.quad	0x4011e319c5a3e39f              # double 4.4717779999999996
	.quad	0x4023ce02ea960b70              # double 9.9023660000000007
	.quad	0x40162105e1c15098              # double 5.5322490000000002
	.quad	0x4007b32b55ef1fde              # double 2.962485
	.quad	0x40125957470eb24a              # double 4.5872469999999996
	.quad	0x401b0b2314013ec4              # double 6.7608759999999997
	.quad	0x4013c61cffeb074a              # double 4.9434699999999996
	.quad	0x40048ef459d9902a              # double 2.5698020000000001
	.quad	0x40223dadd9c27e95              # double 9.1204669999999997
	.quad	0x3fe0dd72367e414e              # double 0.52703199999999994
	.quad	0x401382bba98eda23              # double 4.877669
	.quad	0x4021d74d594f26af              # double 8.9205120000000004
	.quad	0x4023668512231833              # double 9.700234
	.quad	0x401fff87ad080b67              # double 7.9995409999999997
	.quad	0x4019d10342aa9f7b              # double 6.4541139999999997
	.quad	0x3ff8c386d2ed783e              # double 1.547736
	.quad	0x400e5db3397dd00f              # double 3.7957519999999998
	.quad	0x40002b51372a38b9              # double 2.0211510000000001
	.quad	0x402005edf1e0828c              # double 8.0115809999999996
	.quad	0x4022ccb3c3e74afd              # double 9.3998089999999994
	.quad	0x4000cf06b37867f1              # double 2.1010870000000001
	.quad	0x4015c05ff1d81f10              # double 5.4378659999999996
	.quad	0x3ff9b0489d27c393              # double 1.6055379999999999
	.quad	0x40080c69b5a63f9a              # double 3.0060609999999999
	.quad	0x3ffca074ea8da7f4              # double 1.789174
	.quad	0x4005d1e4b44a1f08              # double 2.727487
	.quad	0x40140c1b97353b4b              # double 5.0118239999999998
	.quad	0x3fe03e121ee67514              # double 0.50757699999999994
	.quad	0x401f8a3875925354              # double 7.8849809999999998
	.quad	0x40038f5ba2be058a              # double 2.4449990000000001
	.quad	0x4013027b6fe2e6eb              # double 4.7524240000000004
	.quad	0x3fe115bff04577d9              # double 0.53390499999999996
	.quad	0x400ad4f15e7c8d19              # double 3.3539759999999998
	.quad	0x401f1b52007dd441              # double 7.7766799999999998
	.quad	0x3ffc867f0aa21a72              # double 1.7828360000000001
	.quad	0x40101196d8f4f93c              # double 4.0171770000000002
	.quad	0x40178c06e19b90eb              # double 5.8867450000000003
	.quad	0x3feb089a02752546              # double 0.8448
	.quad	0x401c583558a76102              # double 7.0861409999999996
	.quad	0x4019bc8d1958969a              # double 6.434132
	.quad	0x3fed0a372606fac6              # double 0.907497
	.quad	0x40215942917507ea              # double 8.6743360000000003
	.quad	0x400b4685db76b3bc              # double 3.4094350000000002
	.quad	0x40211269be09bb6b              # double 8.5359630000000006
	.quad	0x3ffef1098d477bc0              # double 1.9338470000000001
	.quad	0x3ff365fd8adab9f5              # double 1.2123999999999999
	.quad	0x4013f03925bb7b6c              # double 4.9845930000000003
	.quad	0x4020d289b951c5c5              # double 8.4112069999999992
	.quad	0x4013b927913e8145              # double 4.9308149999999999
	.quad	0x3ff131fddebd9019              # double 1.074705
	.quad	0x402270d9b5e95b79              # double 9.2204110000000004
	.quad	0x4023f1802c0a4a06              # double 9.9716810000000002
	.quad	0x4023444417870542              # double 9.6333319999999993
	.quad	0x401b3985271bcdbc              # double 6.8061720000000001
	.quad	0x3ffeaca03c4b09ea              # double 1.9171450000000001
	.quad	0x401f7fec99f1ae2e              # double 7.8749260000000003
	.quad	0x4020473647baa9b5              # double 8.1390860000000007
	.quad	0x3fe8a71fff79c843              # double 0.770401
	.quad	0x40212647fdc5931d              # double 8.5747680000000006
	.quad	0x3fd1484d76ab5808              # double 0.270038
	.quad	0x401a7fd21ff2e48f              # double 6.6248250000000004
	.quad	0x3ff8103d9a95421c              # double 1.503965
	.quad	0x40179c0b13597918              # double 5.9023859999999999
	.quad	0x4022f6e82949a565              # double 9.4822399999999991
	.quad	0x401da1209edbf8ba              # double 7.4073510000000002
	.quad	0x3ff7a9c560c7c0f4              # double 1.4789479999999999
	.quad	0x3fcd7a2cecc814d7              # double 0.230291
	.quad	0x400a8b96f21f6cad              # double 3.3181590000000001
	.quad	0x3fe9f20c8cd63cb8              # double 0.81079699999999999
	.quad	0x3ffb7082491afc05              # double 1.714968
	.quad	0x401419a8cdea033e              # double 5.0250579999999996
	.quad	0x400b1056c508b32d              # double 3.382978
	.quad	0x4004145e9185cee1              # double 2.5099459999999998
	.quad	0x401624d594f26aec              # double 5.535971
	.quad	0x4000083cafb3b752              # double 2.004022
	.quad	0x40148240b780346e              # double 5.1272000000000002
	.quad	0x3ff6e3ee1bd1ed9e              # double 1.430647
	.quad	0x4020e591eeaa6d26              # double 8.4483789999999992
	.quad	0x3ffc641700cd8559              # double 1.7744359999999999
	.quad	0x3fdd3cc4ac6cdaf5              # double 0.45683400000000002
	.quad	0x3ff6a80ae1049236              # double 1.416026
	.quad	0x400d4ab92c061848              # double 3.661486
	.quad	0x3ff76b841248d7e0              # double 1.463749
	.quad	0x3ffc6c8f75536934              # double 1.7765040000000001
	.quad	0x40101127f5e84f09              # double 4.0167539999999997
	.quad	0x4016a62a1b5c7cd9              # double 5.6622700000000004
	.quad	0x3fee8a0d349be8ff              # double 0.95435199999999998
	.quad	0x40156a4f8726d04e              # double 5.3538189999999997
	.quad	0x4020dc15b1422ccb              # double 8.4298529999999996
	.quad	0x40172e68e3ef2841              # double 5.7953219999999996
	.quad	0x3ffe59ab6d00b45b              # double 1.896892
	.quad	0x40178eb5b2d4d402              # double 5.8893649999999997
	.quad	0x4016aa1ec4e7253e              # double 5.6661330000000003
	.quad	0x4022183126e978d5              # double 9.04725
	.quad	0x40177c1e7967caea              # double 5.8712099999999996
	.quad	0x4017e3b9ae0c1765              # double 5.9723879999999996
	.quad	0x402048d4fdf3b646              # double 8.1422500000000007
	.quad	0x401e2bead4f5903a              # double 7.5428879999999996
	.quad	0x4018945ae5ffa3ba              # double 6.1448780000000003
	.quad	0x4023abb4d48882f1              # double 9.8353640000000002
	.quad	0x4005412be48a58b4              # double 2.656822
	.quad	0x401d40ed80a17b0f              # double 7.3134059999999996
	.quad	0x40227f2862f5989e              # double 9.2483550000000001
	.quad	0x4016a36a400fba88              # double 5.6595849999999999
	.quad	0x401b5c33b5393251              # double 6.8400410000000003
	.quad	0x401f36777079e59f              # double 7.8031899999999998
	.quad	0x4003eaa7ded6ba8c              # double 2.4895779999999998
	.quad	0x401a0dbf8b9baa15              # double 6.5134259999999999
	.quad	0x401baf7b5aea3162              # double 6.9213690000000003
	.quad	0x3f8c5e6ff7dfa00e              # double 0.013852
	.quad	0x4008fc432ca57a78              # double 3.1231749999999998
	.quad	0x4020ca2fad6cb535              # double 8.394895
	.quad	0x3fd0b413986338b4              # double 0.26099099999999997
	.quad	0x40056a90470a808d              # double 2.6770330000000002
	.quad	0x400465de9c0229a6              # double 2.549741
	.quad	0x3ff18afc47e49b20              # double 1.0964320000000001
	.quad	0x4022a5bd512ec6bd              # double 9.3237100000000002
	.quad	0x4003ff2fdb8fde2f              # double 2.499603
	.quad	0x401ad8f10a99b6f6              # double 6.7118570000000002
	.quad	0x4020e451b93037d6              # double 8.4459359999999997
	.quad	0x3fe59dc93ea2d2fe              # double 0.67551099999999997
	.quad	0x40239470eb24a6a8              # double 9.7899239999999991
	.quad	0x4010110a137f38c5              # double 4.0166399999999998
	.quad	0x4023d6a98244e93e              # double 9.9192619999999998
	.quad	0x401af706d5065732              # double 6.7412369999999999
	.quad	0x4012b5ecc3e3193f              # double 4.6776609999999996
	.quad	0x4010388f861a60d4              # double 4.0552349999999997
	.quad	0x40207dd701d9f4d3              # double 8.2457809999999991
	.quad	0x40000923e5b8561d              # double 2.0044629999999999
	.quad	0x401e6c5bd0e12e84              # double 7.6058190000000003
	.quad	0x401fc9691a75cd0c              # double 7.9466900000000003
	.quad	0x401a7b6e503fb374              # double 6.6205379999999998
	.quad	0x40221aaa5c5f7c67              # double 9.0520809999999994
	.quad	0x4018bbd273d5bab2              # double 6.1834199999999999
	.quad	0x4005d6b3bb83cf2d              # double 2.729835
	.quad	0x4009d9ce8d972cd8              # double 3.2313510000000001
	.quad	0x4020b4ee5abc0e39              # double 8.3533810000000006
	.quad	0x401017e5eaab0425              # double 4.0233379999999999
	.quad	0x3ffe7302f72b4528              # double 1.903079
	.quad	0x3ff07e1eb4202d9d              # double 1.030791
	.quad	0x4000b800a7c5ac47              # double 2.089845
	.quad	0x3fc022e5de15ca6d              # double 0.12606500000000001
	.quad	0x3ff4060780fdc161              # double 1.2514719999999999
	.quad	0x402131e364bec67a              # double 8.5974380000000004
	.quad	0x4017d18def416bdb              # double 5.9546429999999999
	.quad	0x3fd5c2938de6ddf0              # double 0.340001
	.quad	0x4016256798958d9b              # double 5.5365279999999997
	.quad	0x3fe8c1a47a9e2bd0              # double 0.77363800000000005
	.quad	0x40073dfdac68a937              # double 2.9052690000000001
	.quad	0x40111f5b5fa22707              # double 4.2806220000000001
	.quad	0x4015c9e5e2478855              # double 5.4471660000000002
	.quad	0x40107ea077036c9c              # double 4.123659
	.quad	0x4007e709fa54c554              # double 2.9878119999999999
	.quad	0x40029c3bd5992429              # double 2.3262860000000001
	.quad	0x3fe53d145d851655              # double 0.66370600000000002
	.quad	0x4020e8140dd3fe19              # double 8.4532779999999992
	.quad	0x401b81cc96462802              # double 6.8767569999999996
	.quad	0x3ffb68848387df5d              # double 1.713017
	.quad	0x40223d1d041cc533              # double 9.1193620000000006
	.quad	0x400ac550870110a1              # double 3.3463449999999999
	.quad	0x4018f6709fa54c55              # double 6.2406639999999998
	.quad	0x4022c352a8438088              # double 9.3814899999999994
	.quad	0x4020fa95e9e1b08a              # double 8.4894250000000007
	.quad	0x401438887229e908              # double 5.0552080000000004
	.quad	0x4012fd0f1f57b41c              # double 4.747128
	.quad	0x401687c5ef62f9ca              # double 5.6325909999999997
	.quad	0x4000b46f587d6f97              # double 2.0881029999999998
	.quad	0x4010bbe596c82e02              # double 4.1834930000000004
	.quad	0x40146305532617c2              # double 5.0967000000000002
	.quad	0x4022ceac42e9899c              # double 9.403658
	.quad	0x4021e8cb295e9e1b              # double 8.9546749999999999
	.quad	0x3fd8852b4d8ba40e              # double 0.38312800000000002
	.quad	0x402297329c347e8d              # double 9.2953080000000003
	.quad	0x40189d740c4156e2              # double 6.1537629999999996
	.quad	0x3ff39ce075f6fd22              # double 1.2258
	.quad	0x4023c8bcdfefbf40              # double 9.8920659999999998
	.quad	0x4018572474538ef3              # double 6.0850999999999997
	.quad	0x3fd3b1feeb2d0a24              # double 0.30773899999999998
	.quad	0x40019056c508b32d              # double 2.195478
	.quad	0x4010be2c12ad81ae              # double 4.1857150000000001
	.quad	0x40239de8f6cefed6              # double 9.8084179999999996
	.quad	0x40227427418d690a              # double 9.2268620000000006
	.quad	0x3fe4c606748e4756              # double 0.649173
	.quad	0x40221d8eeae9ee46              # double 9.0577310000000004
	.quad	0x4010620642396074              # double 4.0957270000000001
	.quad	0x401d63892ee84ad8              # double 7.3472030000000003
	.quad	0x401ec2f2734f82f5              # double 7.6903779999999999
	.quad	0x401be1c4b90214ad              # double 6.9704769999999998
	.quad	0x40236c9e6687f456              # double 9.7121460000000006
	.quad	0x402163b1f255f352              # double 8.6947170000000007
	.quad	0x40179f340d4dc65c              # double 5.9054719999999996
	.quad	0x40128e6256366d7a              # double 4.6390469999999997
	.quad	0x3ff0ef901083dbc2              # double 1.058487
	.quad	0x40201bac2df0d413              # double 8.0540479999999999
	.quad	0x3fda6256366d7a57              # double 0.41225200000000001
	.quad	0x4020748882f0e0a8              # double 8.2276039999999995
	.quad	0x3ff312ea52ef911d              # double 1.192118
	.quad	0x4018433b96af038e              # double 6.0656569999999999
	.quad	0x4006f609dcf893fb              # double 2.870136
	.quad	0x3fd4cc35ce182667              # double 0.32496399999999998
	.quad	0x4018560d0247021d              # double 6.0840339999999999
	.quad	0x3ff712ee84ad794a              # double 1.4421219999999999
	.quad	0x401aeae89eba6aca              # double 6.7294029999999996
	.quad	0x40211b702602c908              # double 8.5535899999999998
	.quad	0x4023aabb6672fba0              # double 9.8334609999999998
	.quad	0x40202f05a708ede5              # double 8.0918399999999995
	.quad	0x40146355cd91eeaa              # double 5.0970069999999996
	.quad	0x40239a003ab862b2              # double 9.8007829999999991
	.quad	0x3fd8e41d4b6a619e              # double 0.38892300000000002
	.quad	0x40213ec1c1d6cf85              # double 8.6225719999999999
	.quad	0x40236d8b1dd5d3dd              # double 9.7139520000000008
	.quad	0x401b3bf0dc768dfc              # double 6.8085360000000001
	.quad	0x4012b4e7685985ad              # double 4.6766639999999997
	.quad	0x400ddb8ed1bf7ad5              # double 3.7322060000000001
	.quad	0x40227779e9d0e992              # double 9.233352
	.quad	0x4005207d4e09784f              # double 2.6408640000000001
	.quad	0x402304bcf0b6b6e1              # double 9.5092540000000003
	.quad	0x4006627fa1a0cf18              # double 2.798095
	.quad	0x4016675968512232              # double 5.6009270000000004
	.quad	0x3feb91f4f50a02b8              # double 0.86156699999999997
	.quad	0x4020bb12b1b36bd3              # double 8.3653770000000005
	.quad	0x402260672756861f              # double 9.1882870000000008
	.quad	0x400802b9d3cbc48f              # double 3.001331
	.quad	0x4010774080f98fa3              # double 4.1164569999999996
	.quad	0x40054f3e468cac4b              # double 2.6636929999999999
	.quad	0x4023115a8deb0fae              # double 9.5338940000000001
	.quad	0x4000c0c1fc8f3238              # double 2.0941200000000002
	.quad	0x3fb180c308feac43              # double 0.068371000000000001
	.quad	0x40236a2e5de15ca7              # double 9.7073850000000003
	.quad	0x4022410abb44e50c              # double 9.1270349999999993
	.quad	0x401a1117b5286b59              # double 6.5166919999999999
	.quad	0x3ffdea3bddfc9ff9              # double 1.869686
	.quad	0x4023c69ccb7d4174              # double 9.8879149999999995
	.quad	0x400bd329c347e8cd              # double 3.4781070000000001
	.quad	0x4015ae81cb46bacf              # double 5.4204169999999996
	.quad	0x401380a137f38c54              # double 4.8756149999999998
	.quad	0x4001e15db3397dd0              # double 2.235042
	.quad	0x3ffbd31b9b66f933              # double 1.7390399999999999
	.quad	0x4019770d1fa33376              # double 6.3662609999999997
	.quad	0x40155dc1a47a9e2c              # double 5.3415590000000002
	.quad	0x4022d6adf71eafee              # double 9.4192959999999992
	.quad	0x4021960b912dba4d              # double 8.7930569999999992
	.quad	0x4020d34f1e4b44a2              # double 8.4127130000000001
	.quad	0x3f8c0010c6f7a0b6              # double 0.013672
	.quad	0x3ff4e44b6e935b92              # double 1.305736
	.quad	0x3fd1c9795b35b0bc              # double 0.277922
	.quad	0x401d6f5a964e8b7e              # double 7.3587439999999997
	.quad	0x40137fdc9c4da900              # double 4.8748649999999998
	.quad	0x3ff2b284167a95c8              # double 1.1685829999999999
	.quad	0x401b66fd21ff2e49              # double 6.8505750000000001
	.quad	0x400d09374bc6a7f0              # double 3.6295000000000002
	.quad	0x401dd1a3b14a9047              # double 7.454726
	.quad	0x40111d0b30b5aa71              # double 4.2783629999999997
	.quad	0x40011e3c968943e1              # double 2.139764
	.quad	0x4023806317268d33              # double 9.7507560000000008
	.quad	0x401d0136a400fba9              # double 7.2511850000000004
	.quad	0x3ffa22e6ea854478              # double 1.633521
	.quad	0x4023c07a28bb0a2d              # double 9.8759320000000005
	.quad	0x400b9f562174c4ce              # double 3.452801
	.quad	0x4018fc471b478423              # double 6.2463649999999999
	.quad	0x401e0dad7518b0d1              # double 7.513357
	.quad	0x400deedcc20d562a              # double 3.7416320000000001
	.quad	0x40047d790752da98              # double 2.5612659999999998
	.quad	0x3ff959d55e6bc622              # double 1.5844320000000001
	.quad	0x401f1d0cc35ce182              # double 7.7783689999999996
	.quad	0x4013a75cd0bb6ed6              # double 4.9134399999999996
	.quad	0x3ff81001d5c31594              # double 1.503908
	.quad	0x3ffae8fd199bb279              # double 1.6818820000000001
	.quad	0x402111d2178f68be              # double 8.5348059999999997
	.quad	0x40130b3e9a6f826f              # double 4.7609810000000001
	.quad	0x400d285015c20924              # double 3.6446839999999998
	.quad	0x3fe158f0c77dd873              # double 0.54210700000000001
	.quad	0x4018ad5629d8409e              # double 6.1692739999999997
	.quad	0x401a3aa8a82a5615              # double 6.5572840000000001
	.quad	0x3fda441fea8112ba              # double 0.410408
	.quad	0x40088cb5bb384fd3              # double 3.0687060000000002
	.quad	0x40231d79f2346562              # double 9.5575709999999994
	.quad	0x4022eea1e81cb46c              # double 9.4660790000000005
	.quad	0x4016d1aeb3dd11be              # double 5.7047679999999996
	.quad	0x400c82c01e68a0d3              # double 3.5638429999999999
	.quad	0x4012592f2b66b617              # double 4.5870939999999996
	.quad	0x4023a3315d701d9f              # double 9.8187359999999994
	.quad	0x4020bb3721d53cde              # double 8.3656550000000003
	.quad	0x401007fdc5931ca8              # double 4.0078040000000001
	.quad	0x401d203d9a95421c              # double 7.281485
	.quad	0x402379beb18116ec              # double 9.7377830000000002
	.quad	0x401cf8d9f90539fc              # double 7.2430190000000003
	.quad	0x400411769a91105e              # double 2.508527
	.quad	0x401d3491f2dc2b0f              # double 7.3013380000000003
	.quad	0x40196c17ebaf1023              # double 6.3555599999999997
	.quad	0x401fe7b395c42203              # double 7.9762709999999996
	.quad	0x4002afe2e6ea8544              # double 2.3358819999999998
	.quad	0x3ffa5d5e4a383276              # double 1.6477949999999999
	.quad	0x4010db167ec7863c              # double 4.2139530000000001
	.quad	0x40017e681a9b8cb9              # double 2.1867220000000001
	.quad	0x3ff8897d8cf398e9              # double 1.5335669999999999
	.quad	0x3ff47b1183b60286              # double 1.280046
	.quad	0x3ffb8422036006d1              # double 1.719759
	.quad	0x40088a209aaa3ad2              # double 3.0674450000000002
	.quad	0x4014fc564f97edc8              # double 5.2464230000000001
	.quad	0x400c72a0ec743201              # double 3.555971
	.quad	0x4021d3b70ef56649              # double 8.9135059999999999
	.quad	0x4021dde6ff7dfa01              # double 8.9334030000000002
	.quad	0x40044d801b435265              # double 2.5378419999999999
	.quad	0x4018326b2f23033a              # double 6.0492369999999998
	.quad	0x4014a096787ce960              # double 5.1568240000000003
	.quad	0x402184fb3311a544              # double 8.759729
	.quad	0x40207de6362a5e78              # double 8.2458969999999994
	.quad	0x3fef0372e6a76966              # double 0.969171
	.quad	0x4021d058793dd97f              # double 8.9069249999999993
	.quad	0x4021285d52c16df4              # double 8.578837
	.quad	0x400220b88ca3e7d1              # double 2.2659769999999999
	.quad	0x401c32fc2656abde              # double 7.0497899999999998
	.quad	0x3fd61f85d744f5d3              # double 0.34567399999999998
	.quad	0x401bbc4c5974e65c              # double 6.9338850000000001
	.quad	0x400301eeed8904f7              # double 2.3759440000000001
	.quad	0x4007dd6e04c05921              # double 2.98312
	.quad	0x400e3151e75360d0              # double 3.7740819999999999
	.quad	0x3fe6e85553ef6b5d              # double 0.71586099999999997
	.quad	0x40094cc92146a1a5              # double 3.162493
	.quad	0x401ad0d51f81a587              # double 6.703938
	.quad	0x4001b6512a94ff00              # double 2.2140219999999999
	.quad	0x3ff18164840e171a              # double 1.09409
	.quad	0x4013a2d27807789a              # double 4.9090059999999998
	.quad	0x4012f04f6dfc5cdd              # double 4.7346779999999997
	.quad	0x401a06e6d9be4cd7              # double 6.5067399999999997
	.quad	0x400441cd5f99c38b              # double 2.53213
	.quad	0x3ff6e8ae74f2f124              # double 1.4318070000000001
	.quad	0x402093dab5c39bcc              # double 8.2887780000000006
	.quad	0x3fc64bb1af3a14cf              # double 0.17418500000000001
	.quad	0x401216bce8533b10              # double 4.5222049999999996
	.quad	0x3fe60e5e679463d0              # double 0.68925400000000003
	.quad	0x3fc23fa2ad3e920c              # double 0.142567
	.quad	0x4020bb6262cba733              # double 8.3659850000000002
	.quad	0x400b1f7c6759ab6d              # double 3.390374
	.quad	0x3ff10738a3b57c4e              # double 1.064263
	.quad	0x4013d4b7f5a5332b              # double 4.9577330000000002
	.quad	0x4010f4662bae03b4              # double 4.2386710000000001
	.quad	0x40161084a515ce9e              # double 5.5161309999999997
	.quad	0x40218b8130164841              # double 8.7724700000000002
	.quad	0x3ffc21ae70c1333c              # double 1.7582230000000001
	.quad	0x40233e35e74299d9              # double 9.6215050000000008
	.quad	0x4020b54c985f06f7              # double 8.3541000000000007
	.quad	0x3ff47e1650a45d42              # double 1.280783
	.quad	0x3fe84f8d716d2aa6              # double 0.75971100000000003
	.quad	0x4017481fd9ba1b19              # double 5.8204339999999997
	.quad	0x3fe2f177a7008a69              # double 0.59197599999999995
	.quad	0x4019edb2702a3487              # double 6.4821260000000001
	.quad	0x4017f96f6512a950              # double 5.9935890000000001
	.quad	0x3ffe5b866e43aa7a              # double 1.8973450000000001
	.quad	0x4023bb4a66559f6f              # double 9.8658020000000004
	.quad	0x3fd84e379b77c02b              # double 0.379774
	.quad	0x4009754003254e6e              # double 3.1822509999999999
	.quad	0x4003c78854cdb7ae              # double 2.4724279999999998
	.quad	0x401c47325918a00a              # double 7.069528
	.quad	0x4023de85b9e8c47a              # double 9.9346139999999998
	.quad	0x401e1994185058de              # double 7.5249790000000001
	.quad	0x3fe16004b7f5a533              # double 0.54297099999999998
	.quad	0x401fae63e8dda48b              # double 7.9203029999999996
	.quad	0x401efe81cb46bacf              # double 7.7485419999999995
	.quad	0x401ba4edb2f661f2              # double 6.9110630000000004
	.quad	0x4023daf7b17ce52e              # double 9.9276710000000001
	.quad	0x401867f0ed3d859d              # double 6.1015050000000004
	.quad	0x401d5fab10ba6267              # double 7.343426
	.quad	0x400e1a9973d9ec70              # double 3.762988
	.quad	0x3fcb9f0a1be2b496              # double 0.21579100000000001
	.quad	0x40195f07bfe7e1fc              # double 6.342803
	.quad	0x401972da122fad6d              # double 6.3621600000000003
	.quad	0x400bf6616b54e2b0              # double 3.4953029999999998
	.quad	0x401fa8882f0e0a85              # double 7.9145820000000002
	.quad	0x4013627f1b691212              # double 4.8461879999999997
	.quad	0x4010514983d79075              # double 4.0793819999999998
	.quad	0x3fe201f53825e13b              # double 0.56273899999999999
	.quad	0x4020deebd4cfd08d              # double 8.4353929999999995
	.quad	0x40137c14c660a201              # double 4.8711729999999998
	.quad	0x4019ee72da122fad              # double 6.4828599999999996
	.quad	0x401618b3f63c31df              # double 5.5241239999999996
	.quad	0x40185715c63ae254              # double 6.0850439999999999
	.quad	0x400c60d4dc65c704              # double 3.5472809999999999
	.quad	0x3fe50eef1bac2df1              # double 0.65807300000000002
	.quad	0x401295f84cad57bc              # double 4.6464549999999996
	.quad	0x401c21016ce789e7              # double 7.0322319999999996
	.quad	0x4009767ba237cdcd              # double 3.1828530000000002
	.quad	0x4020086a098915be              # double 8.0164340000000003
	.quad	0x3fdee6d15ad106ee              # double 0.48283799999999999
	.quad	0x3ff0637ef5a964e9              # double 1.0242910000000001
	.quad	0x3ff5ee74f2f123c4              # double 1.370717
	.quad	0x40101d3cbc48f10b              # double 4.0285520000000004
	.quad	0x401b6a2fcefaa476              # double 6.8536979999999996
	.quad	0x4006ac3c9eecbfb1              # double 2.8340999999999998
	.quad	0x4010cbe8ff327aa7              # double 4.1991310000000004
	.quad	0x40176dcbddb9841b              # double 5.8572230000000003
	.quad	0x400ebf04ddb5525d              # double 3.8432710000000001
	.quad	0x3feb465c70435efa              # double 0.85233899999999996
	.quad	0x3ffa86ad2dcb1466              # double 1.65788
	.quad	0x401203c4f3ba7760              # double 4.5036810000000003
	.quad	0x400f59cae21101b0              # double 3.918844
	.quad	0x40224ddbfceb7889              # double 9.1520689999999991
	.quad	0x4014d1ffb480a5ad              # double 5.2050770000000002
	.quad	0x40131813879c4114              # double 4.7735120000000002
	.quad	0x400bb9817b95a294              # double 3.465579
	.quad	0x4014d1b60ae9680e              # double 5.204796
	.quad	0x4012b51697f1f9ad              # double 4.676844
	.quad	0x4009f3a797891e21              # double 3.2439719999999999
	.quad	0x4019bcc5b8dc5500              # double 6.434348
	.quad	0x4010944567125dd1              # double 4.1447960000000004
	.quad	0x401c5512ec6bce85              # double 7.0830799999999998
	.quad	0x40017868fd199bb2              # double 2.1837939999999998
	.quad	0x400bf1b691212514              # double 3.4930240000000001
	.quad	0x40189db50f40e5a3              # double 6.1540109999999997
	.quad	0x400c62b94d940789              # double 3.5482049999999998
	.quad	0x401edca5bd944aa5              # double 7.7154759999999997
	.quad	0x40001c4b90214ad3              # double 2.0138159999999998
	.quad	0x400d77c5ef62f9ca              # double 3.6834829999999998
	.quad	0x3ffa68db8bac710d              # double 1.6506000000000001
	.quad	0x3ff873226c3b927d              # double 1.5281089999999999
	.quad	0x4022f18b71b8aa00              # double 9.4717669999999998
	.quad	0x3fea3a7546d3f9e8              # double 0.81963600000000003
	.quad	0x400b38b588e368f1              # double 3.4026900000000002
	.quad	0x40110332f01754b0              # double 4.2531239999999997
	.quad	0x4019d325d4a5df22              # double 6.4561989999999998
	.quad	0x40156a4fca42aed1              # double 5.3538199999999998
	.quad	0x400091a7e3087875              # double 2.0711210000000002
	.quad	0x4017e7d3d4280ae1              # double 5.976394
	.quad	0x401cf120e1f7d73d              # double 7.2354770000000004
	.quad	0x3fca84dfce3150db              # double 0.20718
	.quad	0x400359d0a67620ef              # double 2.4188550000000002
	.quad	0x3ff64f88333fc86d              # double 1.394417
	.quad	0x4020a22b7baecd08              # double 8.3167380000000009
	.quad	0x40122ba301216830              # double 4.5426140000000004
	.quad	0x4018c97891e21533              # double 6.1967489999999996
	.quad	0x4022de3369b9d7fe              # double 9.4339860000000009
	.quad	0x4022061198aeb80f              # double 9.0118530000000003
	.quad	0x4000cbff47735c18              # double 2.0996079999999999
	.quad	0x4021aa4fca42aed1              # double 8.8326399999999996
	.quad	0x401b5eec7c957cd4              # double 6.8426989999999996
	.quad	0x3fee78b3700474da              # double 0.95223400000000002
	.quad	0x401762e1ac57e23f              # double 5.8465639999999999
	.quad	0x3ff6c04ea4a8c155              # double 1.42195
	.quad	0x4017eb76f6d76252              # double 5.979946
	.quad	0x401f9a832b990afe              # double 7.9008909999999997
	.quad	0x401e3dcdf6987831              # double 7.5603559999999996
	.quad	0x4000e9835158b828              # double 2.11402
	.quad	0x400c45a682b62846              # double 3.5340090000000002
	.quad	0x3ff2d4f483cafb3b              # double 1.1769909999999999
	.quad	0x40224f5c28f5c28f              # double 9.1549999999999994
	.quad	0x40150fe47991bc56              # double 5.2655200000000004
	.quad	0x40218478a6dacabc              # double 8.7587329999999994
	.quad	0x40161cba732df506              # double 5.5280550000000002
	.quad	0x400e009cc319c5a4              # double 3.750299
	.quad	0x3fe47c5260f5e41d              # double 0.64017599999999997
	.quad	0x40220aca9ac36545              # double 9.021077
	.quad	0x401dd0d2806af46b              # double 7.4539280000000003
	.quad	0x400a9e4de3b8a19d              # double 3.3272970000000002
	.quad	0x4018bead0c3d2524              # double 6.1862069999999996
	.quad	0x401923c3a42f1ed1              # double 6.2849259999999996
	.quad	0x401f07325918a00a              # double 7.757028
	.quad	0x40201055fbb517a4              # double 8.0319059999999993
	.quad	0x4009963992c8c500              # double 3.1983519999999999
	.quad	0x3fd282a5614df8b1              # double 0.28922399999999998
	.quad	0x4023c6fb4c3c18b5              # double 9.8886359999999999
	.quad	0x3fb8d74927913e81              # double 0.097034999999999996
	.quad	0x4020ebd102bc72e2              # double 8.4605789999999992
	.quad	0x401386d612c6ac21              # double 4.8816759999999997
	.quad	0x401d27168f8e7ddd              # double 7.2881720000000003
	.quad	0x40220b23fee2c98e              # double 9.0217589999999994
	.quad	0x402069a11233df2b              # double 8.2063070000000007
	.quad	0x401eac30d306a2b1              # double 7.6681549999999996
	.quad	0x4001119ac79702e6              # double 2.1335959999999998
	.quad	0x40228ac881e4712e              # double 9.2710609999999996
	.quad	0x4014a906466b1e5c              # double 5.165063
	.quad	0x3fdc4c5974e65bea              # double 0.44216
	.quad	0x40122f56eac86057              # double 4.5462300000000004
	.quad	0x4010d99f1ae2da55              # double 4.2125209999999997
	.quad	0x401479578a2a90cd              # double 5.1184979999999998
	.quad	0x4019c47fdc5931ca              # double 6.4418939999999996
	.quad	0x401a34d9c6b0531a              # double 6.5516120000000004
	.quad	0x4000b5b4677b395c              # double 2.0887229999999999
	.quad	0x400598372e6a7696              # double 2.6993239999999998
	.quad	0x3ffb43f91e646f15              # double 1.7040949999999999
	.quad	0x40128fff36ac6477              # double 4.6406219999999996
	.quad	0x3ffa0f55de58e64b              # double 1.628744
	.quad	0x401ee15c63ae2542              # double 7.7200790000000001
	.quad	0x40132931ca7d6734              # double 4.7902290000000001
	.quad	0x40209cd338f79852              # double 8.3062989999999992
	.quad	0x401eec53b0813cac              # double 7.7307880000000004
	.quad	0x401904a5df2239e7              # double 6.2545390000000003
	.quad	0x400dd641f644955b              # double 3.7296179999999999
	.quad	0x40103dc5931ca7d6              # double 4.0603239999999996
	.quad	0x400d1cbe61cffeb0              # double 3.6390349999999998
	.quad	0x4021036006d0d499              # double 8.5065919999999995
	.quad	0x3ff97a7eb6bf444e              # double 1.592406
	.quad	0x3ff95d3dc8b86b16              # double 1.585264
	.quad	0x401685247cb70ac4              # double 5.6300220000000003
	.quad	0x401738a372606fac              # double 5.8053109999999997
	.quad	0x4020ab089a027525              # double 8.3340499999999995
	.quad	0x40106323fee2c98e              # double 4.0968169999999997
	.quad	0x40174968d759ee89              # double 5.8216890000000001
	.quad	0x4021909c1b54195d              # double 8.7824410000000004
	.quad	0x40061ba55d1c3ac9              # double 2.7634989999999999
	.quad	0x401a5641700cd856              # double 6.5842340000000004
	.quad	0x401820b417ca2121              # double 6.0319370000000001
	.quad	0x401eec89b0ee49f5              # double 7.7309939999999999
	.quad	0x40202b2e9ccb7d41              # double 8.0843399999999992
	.quad	0x3fe3e6ea854477ff              # double 0.62193799999999999
	.quad	0x401a7c99285a921d              # double 6.6216780000000002
	.quad	0x40239829ae4f3344              # double 9.797193
	.quad	0x40037789a459103d              # double 2.4333680000000002
	.quad	0x3fd949a9973d9ec7              # double 0.395121
	.quad	0x40009a6b50b0f27c              # double 2.0754000000000001
	.quad	0x401d9189374bc6a8              # double 7.392125
	.quad	0x401573c3a42f1ed1              # double 5.3630509999999996
	.quad	0x400b427418d6909b              # double 3.407448
	.quad	0x40131fa05143bf72              # double 4.7808849999999996
	.quad	0x402363b3c81908e6              # double 9.6947310000000009
	.quad	0x401760ae536501e2              # double 5.8444149999999997
	.quad	0x400c553b4b2fa93b              # double 3.541617
	.quad	0x3ff410b30b5aa716              # double 1.2540770000000001
	.quad	0x401a8a38b8ae31d7              # double 6.6349819999999999
	.quad	0x40204c30b178b370              # double 8.148809
	.quad	0x4015246a1a500d5f              # double 5.2855610000000004
	.quad	0x4023b5072085b185              # double 9.8535699999999994
	.quad	0x4020770c1333b96b              # double 8.2325140000000001
	.quad	0x4015aa35d67ba238              # double 5.4162210000000002
	.quad	0x4007e8df37329c34              # double 2.9887069999999998
	.quad	0x3fff39b456b441bc              # double 1.9515880000000001
	.quad	0x4020a57646ae3a3b              # double 8.3231680000000008
	.quad	0x400f1daceee0f3cb              # double 3.8894899999999999
	.quad	0x40232c4e0daa0cae              # double 9.5865329999999993
	.quad	0x400e061e0c5a8156              # double 3.7529870000000001
	.quad	0x401b92253111f0c3              # double 6.8927199999999997
	.quad	0x4021d96c1e364bec              # double 8.9246529999999992
	.quad	0x40152caa326e1156              # double 5.2936180000000004
	.quad	0x401fefe9b7bf1e8e              # double 7.9842899999999997
	.quad	0x40219b29a1b9f98b              # double 8.8030519999999992
	.quad	0x40203513b5bf6a0e              # double 8.1036660000000005
	.quad	0x3ff1c5308bb90646              # double 1.1106419999999999
	.quad	0x401344c942d490e6              # double 4.8171739999999996
	.quad	0x4021fcff865d7cb3              # double 8.9941370000000003
	.quad	0x4013ab0ee49f5169              # double 4.9170489999999996
	.quad	0x401c9709b738e6d1              # double 7.1474979999999997
	.quad	0x4015244cbe1eb420              # double 5.2854489999999998
	.quad	0x401517674d163348              # double 5.2728549999999998
	.quad	0x401f76412cf0f9d3              # double 7.8654830000000002
	.quad	0x402152dd590c0ad0              # double 8.6618449999999996
	.quad	0x4009abe596c82e02              # double 3.2089340000000002
	.quad	0x4021755c74751ce3              # double 8.7292210000000008
	.quad	0x40012f3e468cac4b              # double 2.1480679999999999
	.quad	0x3ff0cc75c4a83b1d              # double 1.049917
	.quad	0x3fea3c792d1287c2              # double 0.819882
	.quad	0x40180c475e6362a6              # double 6.0119910000000001
	.quad	0x401a0c9d16fc9bc7              # double 6.5123179999999996
	.quad	0x40101913a4f8726d              # double 4.024489
	.quad	0x3fc72f4cf4a558ea              # double 0.18113099999999999
	.quad	0x4006f0b30b5aa716              # double 2.8675290000000002
	.quad	0x400f40841ede1199              # double 3.9065020000000001
	.quad	0x40068cf206423960              # double 2.8188209999999998
	.quad	0x401d909635610add              # double 7.3911980000000002
	.quad	0x401affcb923a29c7              # double 6.7497999999999996
	.quad	0x4020cc493426783a              # double 8.3989960000000004
	.quad	0x40233777079e59f3              # double 9.6083300000000004
	.quad	0x4020d8181e03f706              # double 8.4220590000000009
	.quad	0x401299c6b0531983              # double 4.6501720000000004
	.quad	0x400900a73f748a16              # double 3.1253190000000002
	.quad	0x401d89e1f3a57eaa              # double 7.3846509999999999
	.quad	0x401ec31ec0b56755              # double 7.6905469999999995
	.quad	0x400e903b81b64e05              # double 3.8204259999999999
	.quad	0x400b9944aa53fc01              # double 3.4498380000000002
	.quad	0x3ff4a31c64ba94bc              # double 1.289822
	.quad	0x401210407cc7d1bb              # double 4.5158709999999997
	.quad	0x4013c81669ced0b3              # double 4.945398
	.quad	0x402058811b1d92b8              # double 8.17286
	.quad	0x4020eac83ec892ab              # double 8.4585589999999993
	.quad	0x400b3efe0ce0b913              # double 3.4057580000000001
	.quad	0x4018b6d698fe6927              # double 6.178553
	.quad	0x402160218def416c              # double 8.6877560000000002
	.quad	0x40227b9b456b441c              # double 9.2414190000000004
	.quad	0x4017ba1c68ec52a4              # double 5.9317489999999999
	.quad	0x4015c7c17a89331a              # double 5.445074
	.quad	0x3fb0e90bc7b45f18              # double 0.066056000000000004
	.quad	0x40100019b0ab2e17              # double 4.0000980000000004
	.quad	0x4023959d3458cd21              # double 9.7922150000000005
	.quad	0x401d54217d2849cb              # double 7.3321589999999999
	.quad	0x40108370cdc8754f              # double 4.1283599999999998
	.quad	0x400ca5caafbc1ace              # double 3.5809530000000001
	.quad	0x4006ca7935760392              # double 2.8488639999999998
	.quad	0x400cea2339c0ebee              # double 3.614325
	.quad	0x40067f8a8f3a9b07              # double 2.8122760000000002
	.quad	0x4013418f3eccc469              # double 4.8140229999999997
	.quad	0x3ff14801f75104d5              # double 1.0800799999999999
	.quad	0x40107b8b26394fad              # double 4.1206480000000001
	.quad	0x401b144998d045fe              # double 6.7698119999999999
	.quad	0x40146089e34330d7              # double 5.0942759999999998
	.quad	0x400cf8655193708b              # double 3.6212870000000001
	.quad	0x40089cf9a06a6e33              # double 3.076648
	.quad	0x3ffea5c70435efa6              # double 1.915473
	.quad	0x40010c2df0d41312              # double 2.1309469999999999
	.quad	0x4013193a71151612              # double 4.7746370000000002
	.quad	0x4020f2f449129889              # double 8.4745200000000001
	.quad	0x3fd02ba5a038194c              # double 0.252664
	.quad	0x400632f76e6106ab              # double 2.774886
	.quad	0x4006213a92a30553              # double 2.7662249999999999
	.quad	0x40003daceee0f3cb              # double 2.0301149999999999
	.quad	0x3fe255f3519bd406              # double 0.57299199999999995
	.quad	0x3fcf1c5c5718eb89              # double 0.24305299999999999
	.quad	0x4022921016ce789e              # double 9.2852789999999992
	.quad	0x401b926e5471715c              # double 6.8929989999999997
	.quad	0x400698bf7f06705d              # double 2.8245840000000002
	.quad	0x40224b7dc7abfb9c              # double 9.1474440000000001
	.quad	0x400bc56bca5375c9              # double 3.4713970000000001
	.quad	0x4022bef1dc50ce4f              # double 9.3729390000000005
	.quad	0x401a65caf2d7f951              # double 6.5994070000000002
	.quad	0x400183a42f1ed17c              # double 2.1892779999999998
	.quad	0x402385a35d67ba23              # double 9.7610119999999991
	.quad	0x3ffbbc31df761cbd              # double 1.733446
	.quad	0x401789cc319c5a3e              # double 5.8845679999999998
	.quad	0x3feeca4095f2452c              # double 0.96218899999999996
	.quad	0x4003dc2fc69728a6              # double 2.482513
	.quad	0x4012946c764adff8              # double 4.6449449999999999
	.quad	0x4003bcb1cc964628              # double 2.467136
	.quad	0x3fc790ea9e6eeb70              # double 0.18411
	.quad	0x401bb71de69ad42c              # double 6.9288249999999998
	.quad	0x3ff8d0364388ebcc              # double 1.5508329999999999
	.quad	0x40219e9d94d0dcfd              # double 8.8097960000000004
	.quad	0x3ffc050374ff865d              # double 1.7512239999999999
	.quad	0x3fd5605681ecd4aa              # double 0.334005
	.quad	0x4017c504c48adeec              # double 5.9424010000000003
	.quad	0x401af310dbf0563f              # double 6.7373690000000002
	.quad	0x401f4e5f30e7ff58              # double 7.8265349999999997
	.quad	0x3fda928e0c9d9d34              # double 0.41519499999999998
	.quad	0x4012b8869c66d374              # double 4.6802010000000003
	.quad	0x401491c432ca57a8              # double 5.1423500000000004
	.quad	0x3ff7b49adc8fb86f              # double 1.4815929999999999
	.quad	0x40203be4cd749279              # double 8.1169799999999999
	.quad	0x40210fcfe5860136              # double 8.5308829999999993
	.quad	0x4008b443d46b26c0              # double 3.0880200000000002
	.quad	0x400d158f2e05ccc9              # double 3.6355270000000002
	.quad	0x4015adeacc92146a              # double 5.4198409999999999
	.quad	0x3ffb6512a94ff002              # double 1.7121759999999999
	.quad	0x40036db0574b4070              # double 2.4285589999999999
	.quad	0x3ff2f61240746456              # double 1.185076
	.quad	0x40203e6ff7dfa00e              # double 8.1219479999999997
	.quad	0x4015e7ecfe9b7bf2              # double 5.4764900000000001
	.quad	0x40008dddf43c7d5f              # double 2.0692710000000001
	.quad	0x40212b0e5e679464              # double 8.5840940000000003
	.quad	0x4019d24aada33bda              # double 6.4553630000000002
	.quad	0x3ff127ae9ab29e4d              # double 1.0721879999999999
	.quad	0x400e4338b47c73ef              # double 3.782823
	.quad	0x401194b09e98dcdb              # double 4.3952049999999998
	.quad	0x40097d7f51efb6dd              # double 3.1862780000000002
	.quad	0x401260a7c5ac471b              # double 4.5943899999999998
	.quad	0x4003639c51dabe27              # double 2.423638
	.quad	0x3ff12dd377e1b8ed              # double 1.073688
	.quad	0x40237757b41bfbdf              # double 9.7330909999999999
	.quad	0x4005ab884406c00e              # double 2.7087560000000002
	.quad	0x4022c843a2163fdd              # double 9.3911409999999992
	.quad	0x4019225892684cf0              # double 6.2835409999999996
	.quad	0x400d95a5332acfb7              # double 3.6980689999999998
	.quad	0x4012674b40703298              # double 4.600873
	.quad	0x4020042a02320968              # double 8.0081330000000008
	.quad	0x401d86748e475600              # double 7.3813040000000001
	.quad	0x4010fbf37b8d3f18              # double 4.2460459999999998
	.quad	0x3fed612839042d8c              # double 0.91810999999999998
	.quad	0x400c95e95b78cc9a              # double 3.5731989999999998
	.quad	0x4017fc86cebbba56              # double 5.9966080000000002
	.quad	0x4011cb4916ca46e1              # double 4.4485210000000004
	.quad	0x401a9b66f9335d25              # double 6.6517600000000003
	.quad	0x400522bf11f926c8              # double 2.641966
	.quad	0x3fd4528ae74f2f12              # double 0.31753799999999999
	.quad	0x401389fa54c55433              # double 4.8847440000000004
	.quad	0x40232d1dabe2717a              # double 9.5881170000000004
	.quad	0x4017c3a4723aafff              # double 5.9410569999999998
	.quad	0x4020babe27179bfe              # double 8.3647320000000001
	.quad	0x40218ee935b91f71              # double 8.7791230000000002
	.quad	0x3fe57f540895d0b7              # double 0.67179299999999997
	.quad	0x400735d91ab8e8ea              # double 2.9012929999999999
	.quad	0x3fee1003eea209ab              # double 0.93945500000000004
	.quad	0x3fbc9949e8815e39              # double 0.11171399999999999
	.quad	0x3fe3856e696a26e5              # double 0.61003799999999997
	.quad	0x3ff954067cf1c326              # double 1.5830139999999999
	.quad	0x400064007570c565              # double 2.048829
	.quad	0x400868cbd1244a62              # double 3.0511699999999999
	.quad	0x40190f1a9fbe76c9              # double 6.2647500000000003
	.quad	0x401844ec636b0963              # double 6.0673079999999997
	.quad	0x401404e7253da72a              # double 5.0047879999999996
	.quad	0x401d02684cf0739b              # double 7.252351
	.quad	0x401116ef3d3a1d32              # double 4.2723969999999998
	.quad	0x401b08aa00192a73              # double 6.7584609999999996
	.quad	0x401b6358f2e05ccd              # double 6.8470190000000004
	.quad	0x4015b064ece9a2c6              # double 5.4222599999999996
	.quad	0x3ff8401c4fc1df33              # double 1.515652
	.quad	0x4013251a437824d5              # double 4.7862330000000002
	.quad	0x3ff92a619da9c993              # double 1.5728470000000001
	.quad	0x402133a1b1960fa1              # double 8.6008429999999993
	.quad	0x401ebf81a5870da6              # double 7.6870180000000001
	.quad	0x400a664ece9a2c67              # double 3.2999550000000002
	.quad	0x40109d5e8d5410f9              # double 4.1536809999999997
	.quad	0x402088edc3bd5992              # double 8.2674389999999995
	.quad	0x400d68f7db6e5040              # double 3.6762540000000001
	.quad	0x4019993037d63023              # double 6.3995980000000001
	.quad	0x401376634117f844              # double 4.8656129999999997
	.quad	0x4011ef572de43ed9              # double 4.4837309999999997
	.quad	0x4016943a2163fdd6              # double 5.6447529999999997
	.quad	0x4011442c3c9eecc0              # double 4.3165750000000003
	.quad	0x4023b91a975afaf8              # double 9.8615309999999993
	.quad	0x4009c639d5e4a383              # double 3.2217899999999999
	.quad	0x401996bf01322f27              # double 6.3972129999999998
	.quad	0x3ff1729e4d5d80e5              # double 1.0904830000000001
	.quad	0x4020ff6ba0620ab7              # double 8.4988679999999999
	.quad	0x401b1f7a919695d9              # double 6.7807409999999999
	.quad	0x4006d7eaa2a0a958              # double 2.8554279999999999
	.quad	0x4023ec58eeae9ee4              # double 9.9616159999999993
	.quad	0x40228b6113404ea5              # double 9.2722250000000006
	.quad	0x3fe9574d594f26af              # double 0.79190700000000003
	.quad	0x4009fa56de33269e              # double 3.247236
	.quad	0x40187cee17a02fb6              # double 6.1220020000000002
	.quad	0x3ffd96030c23fab1              # double 1.849124
	.quad	0x3ff92a1e81cb46bb              # double 1.572783
	.quad	0x4015145f17bd8be7              # double 5.2698939999999999
	.quad	0x4020e27631b584b2              # double 8.4423080000000006
	.quad	0x400883369b9d7fd8              # double 3.0640689999999999
	.quad	0x401883b7521144cc              # double 6.1286290000000001
	.quad	0x3ff18acaff6d3309              # double 1.0963849999999999
	.quad	0x401ab7867f0aa21a              # double 6.6792239999999996
	.quad	0x4023a357c4e2f380              # double 9.8190290000000005
	.quad	0x400574b167ec7864              # double 2.6819790000000001
	.quad	0x401c2d7f950b955f              # double 7.0444319999999996
	.quad	0x4002f606317268d3              # double 2.3701289999999999
	.quad	0x4018dab7564302b4              # double 6.2135899999999999
	.quad	0x3ffd07820a30db6a              # double 1.814333
	.quad	0x4019faa3f034b0e2              # double 6.4947660000000003
	.quad	0x40162acbc8c0ce92              # double 5.5417930000000002
	.quad	0x40128177ea1c68ec              # double 4.6264339999999997
	.quad	0x400d0e432441fea8              # double 3.631964
	.quad	0x4019c718eb895076              # double 6.4444309999999998
	.quad	0x401456b15f88fc93              # double 5.0846609999999997
	.quad	0x401cd1a8ef77f280              # double 7.2047460000000001
	.quad	0x4022a1ca9ef5232d              # double 9.3159989999999997
	.quad	0x400f7ab21815a07b              # double 3.9349099999999999
	.quad	0x402107bdf090f734              # double 8.5151210000000006
	.quad	0x4021e4b72c5197a2              # double 8.9467099999999995
	.quad	0x40183d7625204af9              # double 6.0600209999999999
	.quad	0x40136021d10b1fef              # double 4.8438790000000003
	.quad	0x40030dd82fd75e20              # double 2.3817599999999999
	.quad	0x4016b4855da27286              # double 5.6762899999999998
	.quad	0x401e3458cd20afa3              # double 7.55112
	.quad	0x3ffa903d9a95421c              # double 1.660215
	.quad	0x3ff8d6312f4cf4a5              # double 1.5522929999999999
	.quad	0x3ff64856e696a26e              # double 1.3926609999999999
	.quad	0x3f52231832fcac8e              # double 0.0011069999999999999
	.quad	0x3ff4cc79f666234b              # double 1.2999210000000001
	.quad	0x4009ab08dd1e53a8              # double 3.2085129999999999
	.quad	0x401d9419e30014f9              # double 7.3946300000000003
	.quad	0x401d699bf5946c33              # double 7.3531339999999998
	.quad	0x3fcac61d8622c450              # double 0.209171
	.quad	0x3fedfcf3dc054ef4              # double 0.93712799999999996
	.quad	0x400a80d5629d840a              # double 3.312907
	.quad	0x3fddccd962068555              # double 0.46562799999999999
	.quad	0x40126d2ed783dff4              # double 4.6066240000000001
	.quad	0x3fe30b912dba4d6e              # double 0.59516199999999997
	.quad	0x3fd98abd5dc40075              # double 0.39909299999999998
	.quad	0x3ff962d6238da3c2              # double 1.58663
	.quad	0x4022bd8fb43d89ce              # double 9.3702369999999995
	.quad	0x4023529c347e8cce              # double 9.6613480000000003
	.quad	0x40128414a4d2b2c0              # double 4.6289850000000001
	.quad	0x40234f97891e2153              # double 9.6554529999999996
	.quad	0x4011049906cca2db              # double 4.2544899999999997
	.quad	0x40092d7625204af9              # double 3.1471979999999999
	.quad	0x40194d7625204af9              # double 6.3256459999999999
	.quad	0x401554f15e7c8d19              # double 5.3329519999999997
	.quad	0x4022dcbc48f10a9a              # double 9.4311240000000005
	.quad	0x401b8b0f27bb2fec              # double 6.8857999999999997
	.quad	0x4007a31f03d145d8              # double 2.9546489999999999
	.quad	0x3febfdb8fde2ef4e              # double 0.874722
	.quad	0x400a0b7c3504c48b              # double 3.2556080000000001
	.quad	0x4020957eaa2a0a96              # double 8.2919820000000009
	.quad	0x401577243137b070              # double 5.3663489999999996
	.quad	0x4009807ee0b0af60              # double 3.1877420000000001
	.quad	0x4020486e3b46fdeb              # double 8.1414659999999994
	.quad	0x402178e6afcce1c6              # double 8.7361350000000009
	.quad	0x401810bed740c415              # double 6.0163529999999996
	.quad	0x40209c1bfbdf090f              # double 8.3049009999999992
	.quad	0x4021ad393250b524              # double 8.8383269999999996
	.quad	0x3ffaa02b841248d8              # double 1.664104
	.quad	0x4006158afc47e49b              # double 2.7605189999999999
	.quad	0x401b2e3b46fdeb53              # double 6.7951480000000002
	.quad	0x4022d8b8ae31d713              # double 9.4232840000000006
	.quad	0x4007229d8409e55c              # double 2.891902
	.quad	0x402029df3300de4c              # double 8.0817809999999994
	.quad	0x4022502ea960b6fa              # double 9.156606
	.quad	0x401fe3122b7baecd              # double 7.9717489999999999
	.quad	0x3fd915bdd76683c3              # double 0.39195200000000002
	.quad	0x3ffc5f99c38b04ab              # double 1.7733399999999999
	.quad	0x40161c41dd1a21ea              # double 5.5275949999999998
	.quad	0x40228001f75104d5              # double 9.2500149999999994
	.quad	0x4011b58fb43d89ce              # double 4.4273059999999997
	.quad	0x4014c0614163779f              # double 5.1878710000000003
	.quad	0x401ce33daf8df7a5              # double 7.2219150000000001
	.quad	0x3fc9efc7a398201d              # double 0.20263
	.quad	0x4007b1372a38b8ae              # double 2.9615309999999999
	.quad	0x4021cbad7d7c2ca1              # double 8.8978079999999995
	.quad	0x4010c2be48a58b3f              # double 4.1901789999999997
	.quad	0x4003bbd72bcb5fe5              # double 2.4667189999999999
	.quad	0x4020af99a1fd156a              # double 8.3429690000000001
	.quad	0x4023d34395810625              # double 9.9126250000000002
	.quad	0x40228d39da16616b              # double 9.2758319999999994
	.quad	0x3fb950ca1cef2410              # double 0.098889000000000004
	.quad	0x401a4fc6540cc78f              # double 6.5779050000000003
	.quad	0x3fe689bf9c62a1b6              # double 0.70431500000000002
	.quad	0x3fe99461b6d43d04              # double 0.79936300000000004
	.quad	0x401cfdf00abf76a3              # double 7.247986
	.quad	0x4020c1c0010c6f7a              # double 8.3784179999999999
	.quad	0x3ff3d5f78359bc34              # double 1.239738
	.quad	0x3fd99d909f1f1498              # double 0.40024199999999999
	.quad	0x4013daca79357604              # double 4.9636630000000004
	.quad	0x40232cd65e460675              # double 9.5875730000000007
	.quad	0x3ffe2a79bbadc098              # double 1.88537
	.quad	0x4006eb252ce032db              # double 2.8648169999999999
	.quad	0x3ffa8827b6fe2e6f              # double 1.6582410000000001
	.quad	0x3f63532e7b3d8e00              # double 0.002359
	.quad	0x400849845dc83233              # double 3.0358969999999998
	.quad	0x4022deb09635610b              # double 9.4349410000000002
	.quad	0x400a15b35b0bbf51              # double 3.260596
	.quad	0x4018292e62131a8f              # double 6.040216
	.quad	0x4011170cdc8754f3              # double 4.2725099999999996
	.quad	0x3ffbc64a9cdc4439              # double 1.735911
	.quad	0x400d0a2877ee4e27              # double 3.6299600000000001
	.quad	0x4016366cb10342ab              # double 5.5531490000000003
	.quad	0x402188b26394face              # double 8.7669859999999993
	.quad	0x40191229e90795f6              # double 6.2677379999999996
	.quad	0x40124b9bed30f063              # double 4.5738370000000002
	.quad	0x3feb398e97071822              # double 0.85077599999999998
	.quad	0x401c813f077ccc03              # double 7.1262169999999996
	.quad	0x40212ef34d6a161e              # double 8.5916999999999994
	.quad	0x40150fbb9496249a              # double 5.2653639999999999
	.quad	0x3ff6237ef5a964e9              # double 1.3836660000000001
	.quad	0x401d31426fe718a8              # double 7.2981049999999996
	.quad	0x3fe94a643cc07aaf              # double 0.79033100000000001
	.quad	0x402327689ca18bd6              # double 9.5769699999999993
	.quad	0x400e16451b93037d              # double 3.7608739999999998
	.quad	0x401f5ea52ef911cf              # double 7.8424269999999998
	.quad	0x3fff36dfc5cdd50b              # double 1.9508970000000001
	.quad	0x3fd11ed17c5ef630              # double 0.26750600000000002
	.quad	0x400a1094a2b9d3cc              # double 3.2580960000000001
	.quad	0x4021d577531db446              # double 8.9169260000000001
	.quad	0x3fff47ee0b0af5fd              # double 1.9550609999999999
	.quad	0x4009ab4f1e4b44a2              # double 3.208647
	.quad	0x4017bc182ecaeea6              # double 5.9336859999999998
	.quad	0x40213bc85c24c405              # double 8.6167630000000006
	.quad	0x3ff905a921ccd962              # double 1.563882
	.quad	0x40205c84b5dcc63f              # double 8.1806999999999999
	.quad	0x401f437f38c5436c              # double 7.8159150000000004
	.quad	0x400e4a83b1d0c804              # double 3.786384
	.quad	0x401a69aa1d755bcd              # double 6.6031880000000003
	.quad	0x40200064cb5bb385              # double 8.000769
	.quad	0x4009ca58b3f63c32              # double 3.2238020000000001
	.quad	0x3ff82b00ffda4053              # double 1.510499
	.quad	0x401acb6284599674              # double 6.6986179999999997
	.quad	0x4021cff84449dbec              # double 8.9061909999999997
	.quad	0x402111c0a8d21bc1              # double 8.5346729999999997
	.quad	0x3ff3ace9a2c66905              # double 1.2297149999999999
	.quad	0x3ffc66772d5e071c              # double 1.7750159999999999
	.quad	0x400efb24638c9753              # double 3.8726280000000002
	.quad	0x400c02a9930be0df              # double 3.5013000000000001
	.quad	0x4022eb1c864883fd              # double 9.4592019999999994
	.quad	0x401b0868b9fdbd30              # double 6.7582120000000003
	.quad	0x402182df9378ee28              # double 8.7556119999999993
	.quad	0x3fffda597d49d7ba              # double 1.9908079999999999
	.quad	0x4013cea4ebdd334c              # double 4.9518009999999997
	.quad	0x3f6e7d9988d2a1f9              # double 0.003722
	.quad	0x3fc136e71cda2b5a              # double 0.134488
	.quad	0x400f14003254e6e2              # double 3.8847659999999999
	.quad	0x3fca1b003686a4ca              # double 0.20394899999999999
	.quad	0x4013515e39713ad6              # double 4.8294610000000002
	.quad	0x400fe2eec7c957cd              # double 3.9858069999999999
	.quad	0x40145f42bb6672fc              # double 5.0930280000000003
	.quad	0x4022cfe132b55ef2              # double 9.406015
	.quad	0x400e70374ff865d8              # double 3.8047930000000001
	.quad	0x3ff9d6bdb1a6d699              # double 1.614927
	.quad	0x401825579af1886e              # double 6.036467
	.quad	0x401fe4d8ba40d90e              # double 7.9734829999999999
	.quad	0x3ff22132b55ef1fe              # double 1.133105
	.quad	0x400b41b866e43aa8              # double 3.4070900000000002
	.quad	0x3fbcef77f27fe4bd              # double 0.113029
	.quad	0x4018ce7c06e19b91              # double 6.2016450000000001
	.quad	0x400ece34fc610f0f              # double 3.8506870000000002
	.quad	0x4017ca4a05dd8f93              # double 5.9475480000000003
	.quad	0x40174e147ae147ae              # double 5.8262499999999999
	.quad	0x400c0b75ea67e847              # double 3.5055960000000002
	.quad	0x4006051654d61b2a              # double 2.7524839999999999
	.quad	0x401bab480a5accd5              # double 6.9172669999999998
	.quad	0x400c763800218def              # double 3.5577239999999999
	.quad	0x40017a63f9a49c2c              # double 2.184761
	.quad	0x3fa87789a459103d              # double 0.047787000000000003
	.quad	0x4005c76fb09203a3              # double 2.7223809999999999
	.quad	0x40002eac8605681f              # double 2.0227900000000001
	.quad	0x40219fadafd11383              # double 8.8118719999999993
	.quad	0x4021f8cc78e9f6a9              # double 8.9859349999999996
	.quad	0x3ff5426dce39b457              # double 1.3287180000000001
	.quad	0x4001eb6a619da9ca              # double 2.2399490000000002
	.quad	0x401fb443914f483d              # double 7.9260390000000002
	.quad	0x40023c8c0ce91c8f              # double 2.2795640000000001
	.quad	0x4022b0298cc14403              # double 9.3440670000000008
	.quad	0x401f23f91e646f15              # double 7.7851299999999996
	.quad	0x4002c46f9b994e1a              # double 2.3459159999999999
	.quad	0x3ff656e371540032              # double 1.3962129999999999
	.quad	0x402210e410b630a9              # double 9.0329899999999999
	.quad	0x402246fe93187619              # double 9.1386610000000008
	.quad	0x400d43db3bfb58d1              # double 3.6581329999999999
	.quad	0x40031424e5929670              # double 2.384836
	.quad	0x4022ee82d7b634db              # double 9.4658420000000003
	.quad	0x4000724c8366516e              # double 2.0558100000000001
	.quad	0x4006c5892684cf07              # double 2.8464529999999999
	.quad	0x3f99680e06530058              # double 0.024811
	.quad	0x3ff5bbe4473cd573              # double 1.3583719999999999
	.quad	0x401560a2014727dd              # double 5.3443680000000002
	.quad	0x4011f543f1c75819              # double 4.4895170000000002
	.quad	0x4020914e3bcd35a8              # double 8.2837999999999994
	.quad	0x4019e8461f9f01b8              # double 6.4768299999999996
	.quad	0x400b9635e74299d9              # double 3.4483450000000002
	.quad	0x402188ba1f4b1ee2              # double 8.7670449999999995
	.quad	0x400734bb5e0f7fd0              # double 2.9007480000000001
	.quad	0x4020a81669ced0b3              # double 8.3282959999999999
	.quad	0x4014edf71eafee70              # double 5.2323880000000003
	.quad	0x400ab5faa8a82a56              # double 3.338857
	.quad	0x401c5d4738a3b57c              # double 7.0910919999999997
	.quad	0x4020c62ef4e0114d              # double 8.3870769999999997
	.quad	0x400e1aa3f034b0e2              # double 3.7630080000000001
	.quad	0x40046205ff1d81f1              # double 2.547863
	.quad	0x4003fe35c5b4aa97              # double 2.499126
	.quad	0x3fcfe2046c764ae0              # double 0.249085
	.quad	0x3ff16ad4f5903a75              # double 1.0885819999999999
	.quad	0x401cb515054ac29c              # double 7.1768380000000001
	.quad	0x400e20420f6f08cc              # double 3.7657509999999998
	.quad	0x400b886f049a9974              # double 3.4416180000000001
	.quad	0x4022aa5a469d7343              # double 9.3327200000000001
	.quad	0x3fe44938583621fb              # double 0.633938
	.quad	0x3ffbf749adc8fb87              # double 1.747873
	.quad	0x401f6183b60285ec              # double 7.8452289999999998
	.quad	0x3ff53161a1db877b              # double 1.3245560000000001
	.quad	0x3ff03fee2c98e53f              # double 1.0156080000000001
	.quad	0x3ff6d8d045fe1112              # double 1.4279329999999999
	.quad	0x40130bf11f926c7f              # double 4.7616620000000003
	.quad	0x401efeadd590c0ad              # double 7.7487099999999999
	.quad	0x40025a94bbe4473d              # double 2.2942290000000001
	.quad	0x4013dd79d0a67621              # double 4.9662850000000001
	.quad	0x401a3ec0724b76f7              # double 6.5612810000000001
	.quad	0x4005ec282c6ef3d4              # double 2.7403110000000002
	.quad	0x4023a5fa22706d50              # double 9.8241739999999993
	.quad	0x4002c8ad68837718              # double 2.3479869999999998
	.quad	0x40207f09528f190d              # double 8.2481179999999998
	.quad	0x3ffd54b7b28954a8              # double 1.833183
	.quad	0x4019d512231832fd              # double 6.4580770000000003
	.quad	0x3fdc272862f5989e              # double 0.43989
	.quad	0x4016acbf2b239a39              # double 5.668698
	.quad	0x4004aa832b990afe              # double 2.5832579999999998
	.quad	0x4021ad89acbc8c0d              # double 8.8389410000000002
	.quad	0x4014811ec918e326              # double 5.1260940000000002
	.quad	0x40226d9d99029ae5              # double 9.2140930000000001
	.quad	0x401e0169c23b7953              # double 7.5013800000000001
	.quad	0x400394a3c64345d0              # double 2.447578
	.quad	0x3fdeefed634549b6              # double 0.48339399999999999
	.quad	0x401e9cad9ad85dfb              # double 7.6530060000000004
	.quad	0x3fb78dc55000c954              # double 0.092007000000000005
	.quad	0x3fffd38ef34d6a16              # double 1.98915
	.quad	0x4020d2af1455219b              # double 8.4114920000000009
	.quad	0x4008f0b524399b2c              # double 3.1175329999999999
	.quad	0x401a821b3aeee957              # double 6.6270569999999998
	.quad	0x4010495dd4c76d11              # double 4.0716469999999996
	.quad	0x401246aad1d041cc              # double 4.5690109999999997
	.quad	0x4011965fd8adab9f              # double 4.3968499999999997
	.quad	0x4018ddaceee0f3cb              # double 6.2164799999999998
	.quad	0x40200e1e92923e5c              # double 8.0275770000000008
	.quad	0x401a93e425aee632              # double 6.644425
	.quad	0x401adb267c6b8b69              # double 6.7140139999999997
	.quad	0x3ffc174c4cdfaca3              # double 1.7556879999999999
	.quad	0x40061378ee286727              # double 2.7595079999999998
	.quad	0x3fc2fc47e49b1fac              # double 0.14832400000000001
	.quad	0x40057f316e371540              # double 2.687106
	.quad	0x400bc24febd09e13              # double 3.4698790000000002
	.quad	0x402167d8cf398e97              # double 8.702826
	.quad	0x3fefc020817fc760              # double 0.99220299999999994
	.quad	0x401d5866e43aa79c              # double 7.3363300000000002
	.quad	0x400598bcdfefbf40              # double 2.699579
	.quad	0x3fb8ede54b48d3ae              # double 0.097379999999999994
	.quad	0x4015bb10342aa9f8              # double 5.4326790000000003
	.quad	0x40025403dddb120a              # double 2.291023
	.quad	0x4017e65668c26139              # double 5.974939
	.quad	0x4022c58409e55c10              # double 9.3857730000000004
	.quad	0x402103b18dac258d              # double 8.5072139999999994
	.quad	0x4016448cb4aec8d6              # double 5.5669430000000002
	.quad	0x40148cee9dd7ecbb              # double 5.1376289999999996
	.quad	0x401ae36e71cda2b6              # double 6.7221010000000003
	.quad	0x4021e76c8b439581              # double 8.952
	.quad	0x3ff872e1693c03bc              # double 1.5280469999999999
	.quad	0x402230cda6e75ff6              # double 9.0953189999999999
	.quad	0x401168e219652bd4              # double 4.3524250000000002
	.quad	0x401b35ce5b4245f6              # double 6.8025450000000003
	.quad	0x401152817763e4ac              # double 4.3305720000000001
	.quad	0x401e42a3cea6c1a0              # double 7.5650779999999997
	.quad	0x3ff1ce22a2c23748              # double 1.1128260000000001
	.quad	0x4018b4a771c970f8              # double 6.1764200000000002
	.quad	0x402069a0f0a5efe9              # double 8.2063059999999997
	.quad	0x3fe732ebe596c82e              # double 0.724966
	.quad	0x3fc5ca7d6733ebc0              # double 0.170242
	.quad	0x401172d905c03361              # double 4.3621559999999997
	.quad	0x40060a8c9b845565              # double 2.7551510000000001
	.quad	0x4011bc200c0f01fc              # double 4.4337160000000004
	.quad	0x401be8dc981beb18              # double 6.9774039999999999
	.quad	0x401dfa5332acfb76              # double 7.4944579999999998
	.quad	0x40232129aa1d755c              # double 9.5647710000000003
	.quad	0x3f730ad46f587d70              # double 0.0046490000000000004
	.quad	0x3fc1f8982cb20fb2              # double 0.140399
	.quad	0x401d79f2778140dd              # double 7.3690889999999998
	.quad	0x4017e55cd91eeaa7              # double 5.9739870000000002
	.quad	0x4007583be6601bca              # double 2.9180830000000002
	.quad	0x400dda3ca7503b82              # double 3.7315610000000001
	.quad	0x401667546d3f9e7c              # double 5.6009080000000004
	.quad	0x401189f1ae2da555              # double 4.3847110000000002
	.quad	0x401b476ee73e681b              # double 6.8197590000000003
	.quad	0x400ae6a4ca4f440b              # double 3.362619
	.quad	0x40185d7cb2d905c0              # double 6.0912959999999998
	.quad	0x401b85c896dd26b7              # double 6.8806479999999999
	.quad	0x401bdabd5dc40075              # double 6.9636129999999996
	.quad	0x400f2a686e7e62dc              # double 3.8957069999999998
	.quad	0x3f98b9fdbd2fa0d7              # double 0.024146999999999998
	.quad	0x402061af5ba2be06              # double 8.1907910000000008
	.quad	0x4005fb8561d4306e              # double 2.7478129999999998
	.quad	0x4006542cc2d6a9c5              # double 2.7911009999999998
	.quad	0x4006bd6733ebbfd7              # double 2.842482
	.quad	0x4018359fb1e18efc              # double 6.0523670000000003
	.quad	0x4017c8c5004fb118              # double 5.9460639999999998
	.quad	0x4018507dd4413554              # double 6.0786049999999996
	.quad	0x40096a2b1704ff43              # double 3.1768399999999999
	.quad	0x400ca245f5ad96a7              # double 3.5792350000000002
	.quad	0x3ff3e57a786c2268              # double 1.243525
	.quad	0x40175fc5479d4d83              # double 5.8435259999999998
	.quad	0x4001786c226809d5              # double 2.1838000000000002
	.quad	0x401630d8cb07d0af              # double 5.5477020000000001
	.quad	0x40230a1ec4e7253e              # double 9.5197660000000006
	.quad	0x4000b58fb43d89ce              # double 2.0886529999999999
	.quad	0x401f2815a07b352b              # double 7.7891450000000004
	.quad	0x3ff33a658c4bd33d              # double 1.201757
	.quad	0x40089925bb7b6bb1              # double 3.0747789999999999
	.quad	0x4006197785729b28              # double 2.762435
	.quad	0x4020432c1f42bb66              # double 8.1311959999999992
	.quad	0x40203a12513b5bf7              # double 8.1134210000000007
	.quad	0x40190edfe75bc44c              # double 6.264526
	.quad	0x3ff927a743a647fe              # double 1.5721810000000001
	.quad	0x402066394face67d              # double 8.1996559999999992
	.quad	0x401424d338f79852              # double 5.0359619999999996
	.quad	0x4023e1d14e3bcd36              # double 9.9410500000000006
	.quad	0x4022973f748a1598              # double 9.2954059999999998
	.quad	0x401c3e06961c3697              # double 7.0605719999999996
	.quad	0x4017d854477ff152              # double 5.9612590000000001
	.quad	0x3ffef0468448cf7d              # double 1.9336610000000001
	.quad	0x401d7a960b6f9fcb              # double 7.369713
	.quad	0x401f516a055757d6              # double 7.8295060000000003
	.quad	0x3ff9b33226c3b928              # double 1.606249
	.quad	0x402166518f3eccc4              # double 8.6998409999999992
	.quad	0x3ffa80a9de8b3b32              # double 1.656412
	.quad	0x3fe25823422467be              # double 0.57325899999999996
	.quad	0x4011fc610f0e90bc              # double 4.4964639999999996
	.quad	0x4006e2dcf4623d0c              # double 2.860773
	.quad	0x401fca2595bbbe88              # double 7.9474090000000003
	.quad	0x3feda8c586876e1e              # double 0.92685200000000001
	.quad	0x3fe7b3c3e74afd54              # double 0.74069399999999996
	.quad	0x4001aa87e38eb032              # double 2.2082670000000002
	.quad	0x3ff884cdfaca361a              # double 1.5324230000000001
	.quad	0x40217c1871e6cd29              # double 8.7423739999999999
	.quad	0x401e45471715c63b              # double 7.5676540000000001
	.quad	0x401a73b320535c9e              # double 6.6129879999999996
	.quad	0x40143552e2fbe33b              # double 5.0520740000000002
	.quad	0x401dff566490a351              # double 7.4993530000000001
	.quad	0x401076ee73e681aa              # double 4.1161440000000002
	.quad	0x3ffe234dad31fcd2              # double 1.8836189999999999
	.quad	0x402255104d551d69              # double 9.1661400000000004
	.quad	0x4021e492146a1a50              # double 8.9464269999999999
	.quad	0x3fd054d61b2a27f2              # double 0.25517800000000002
	.quad	0x3fffa9ed3953dea4              # double 1.9789859999999999
	.quad	0x4018909d495182aa              # double 6.1412250000000004
	.quad	0x3fef00b45ae5ffa4              # double 0.96883600000000003
	.quad	0x3ff4122b7baecd08              # double 1.2544360000000001
	.quad	0x40002730c67168f9              # double 2.019136
	.quad	0x401a9df47f993d53              # double 6.6542529999999998
	.quad	0x4000dc621b7e0ac8              # double 2.1076090000000001
	.quad	0x401497878b7a1c26              # double 5.1479780000000002
	.quad	0x3fbceda22f6a50d7              # double 0.113001
	.quad	0x400b16dca07f66e8              # double 3.3861629999999998
	.quad	0x40197e0c5a8155d6              # double 6.373094
	.quad	0x40081f926c7eae5c              # double 3.0154160000000001
	.quad	0x40160f5c28f5c28f              # double 5.5149999999999997
	.quad	0x401002584f4c6e6e              # double 4.0022900000000003
	.quad	0x4020bbd9231c64bb              # double 8.3668910000000007
	.quad	0x401edcaab8a5ce5b              # double 7.7154949999999997
	.quad	0x3fc6374794ea0770              # double 0.17356199999999999
	.quad	0x3ffec107314ca926              # double 1.922126
	.quad	0x40118e8f6cefed63              # double 4.3892189999999998
	.quad	0x3ff79ae924f227d0              # double 1.47532
	.quad	0x40221a19eb6390c9              # double 9.0509789999999999
	.quad	0x400029307af20ea6              # double 2.0201120000000001
	.quad	0x4005197f62b6ae7d              # double 2.6374499999999999
	.quad	0x401237064ece9a2c              # double 4.5537349999999996
	.quad	0x4017d6c2699c7bcc              # double 5.9597259999999999
	.quad	0x401d379357603926              # double 7.3042730000000002
	.quad	0x4023f4cb3a2595bc              # double 9.9781130000000004
	.quad	0x402043f961804d98              # double 8.1327619999999996
	.quad	0x4021c72a38b8ae32              # double 8.8889940000000003
	.quad	0x400dac6a3bddfca0              # double 3.709187
	.quad	0x3ffe3b5aea3161a2              # double 1.889491
	.quad	0x40234c2c5e2cdc01              # double 9.6487759999999997
	.quad	0x3fcfc5de9c0229a6              # double 0.248226
	.quad	0x401504db59578a2b              # double 5.2547430000000004
	.quad	0x401d9e019b0ab2e1              # double 7.4043029999999996
	.quad	0x3febc4b4d056c509              # double 0.86776200000000003
	.quad	0x3ffb9014b599aa61              # double 1.7226760000000001
	.quad	0x401ff5c4651f3e8a              # double 7.9900070000000003
	.quad	0x3ff6d2e946801712              # double 1.4264920000000001
	.quad	0x4023f5f202107b78              # double 9.9803619999999995
	.quad	0x40226fa8d64d7f0f              # double 9.2180850000000003
	.quad	0x3ffb5c1b54195cc8              # double 1.7099869999999999
	.quad	0x40152f8012dfd695              # double 5.2963870000000002
	.quad	0x3ff90fdf3b645a1d              # double 1.5663750000000001
	.quad	0x4016fec460ed80a1              # double 5.7487959999999996
	.quad	0x4013433ce63a5c1c              # double 4.8156619999999997
	.quad	0x3fdc34ce3de6149c              # double 0.44072299999999998
	.quad	0x4022ac4da9003eea              # double 9.3365299999999998
	.quad	0x401950f0a5efe932              # double 6.3290430000000004
	.quad	0x4007a407cc7d1bb5              # double 2.9550930000000002
	.quad	0x401e1cfaeff5c6c1              # double 7.5283009999999999
	.quad	0x3ff3ebb7739f340d              # double 1.2450479999999999
	.quad	0x4014a0b1bbcf4e87              # double 5.1569279999999997
	.quad	0x4003527807789a46              # double 2.4152680000000002
	.quad	0x4022890b630a9153              # double 9.2676649999999992
	.quad	0x3fe815592d98bf7f              # double 0.752606
	.quad	0x4001cd666a98244f              # double 2.2252930000000002
	.quad	0x3fc631b584b1ab08              # double 0.17339199999999999
	.quad	0x3ffa24883fd50225              # double 1.6339189999999999
	.quad	0x400a0aeea63b688c              # double 3.2553380000000001
	.quad	0x4000f641700cd856              # double 2.1202420000000002
	.quad	0x402198870110a138              # double 8.7979050000000001
	.quad	0x3ffa58b1dd5d3dc9              # double 1.6466540000000001
	.quad	0x4015817dae81882b              # double 5.3764560000000001
	.quad	0x400f2685553ef6b6              # double 3.8938090000000001
	.quad	0x401734f9c1f85d74              # double 5.8017339999999997
	.quad	0x4021c6887a8d64d8              # double 8.8877600000000001
	.quad	0x401e69999999999a              # double 7.6031250000000004
	.quad	0x400cc53fc0096feb              # double 3.5963129999999999
	.quad	0x3fe2a1c8a7a41e58              # double 0.58224900000000002
	.quad	0x3ff9d61804d98394              # double 1.6147689999999999
	.quad	0x4021cabde3fbbd7b              # double 8.8959799999999998
	.quad	0x402360d38cda6e76              # double 9.689114
	.quad	0x401e3b5a20ddc619              # double 7.5579609999999997
	.quad	0x401644f09528f191              # double 5.5673240000000002
	.quad	0x40225b3bd9cae211              # double 9.178191
	.quad	0x4011d40fecdd0d8d              # double 4.4570920000000003
	.quad	0x4013547064ece9a3              # double 4.8324600000000002
	.quad	0x3fa32d905c033615              # double 0.037456999999999997
	.quad	0x4009a25f202107b8              # double 3.2042830000000002
	.quad	0x402169c79b34a44c              # double 8.7066009999999991
	.quad	0x4002af1455219a84              # double 2.3354879999999998
	.quad	0x3fe9ec0b5675579b              # double 0.81006400000000001
	.quad	0x40236de6ff7dfa01              # double 9.7146530000000002
	.quad	0x4019a8a761027957              # double 6.414701
	.quad	0x4003a7a398201cd6              # double 2.456855
	.quad	0x4017a9d495182a99              # double 5.9158499999999998
	.quad	0x4020a6a76965f527              # double 8.3254959999999993
	.quad	0x4014ca9e6eeb7026              # double 5.19787
	.quad	0x4022e966e008e9b4              # double 9.4558630000000007
	.quad	0x402227a615a8deb1              # double 9.077439
	.quad	0x40173c52a411c2a0              # double 5.8089089999999999
	.quad	0x3ffb2466b1e5c0ba              # double 1.6963870000000001
	.quad	0x3fe716c82e019b0b              # double 0.72153100000000003
	.quad	0x401d756e696a26e5              # double 7.3646789999999998
	.quad	0x40180dbf487fcb92              # double 6.0134249999999998
	.quad	0x4019116bdb1a6d6a              # double 6.2670130000000004
	.quad	0x40178f16f4384ba1              # double 5.8897360000000001
	.quad	0x4015ec0229a5ebb7              # double 5.4804769999999996
	.quad	0x401c0a30984e3fff              # double 7.009951
	.quad	0x3fe51426fe718a87              # double 0.65871000000000002
	.quad	0x40067dd334c5da6a              # double 2.8114379999999999
	.quad	0x40120105186db50f              # double 4.5009959999999998
	.quad	0x40010710cb295e9e              # double 2.12845
	.quad	0x4016d3d68405b39e              # double 5.7068729999999999
	.quad	0x401fda0e8427418d              # double 7.9629459999999996
	.quad	0x40160361dc93ea2d              # double 5.5033029999999998
	.quad	0x40064e1693c03bc5              # double 2.7881290000000001
	.quad	0x3ff827c5ac471b48              # double 1.5097100000000001
	.quad	0x400f290795f676ea              # double 3.8950339999999999
	.quad	0x3fd13e20ccff21b4              # double 0.26941700000000002
	.quad	0x401b419f3c70c997              # double 6.8140840000000003
	.quad	0x400009d27c393682              # double 2.0047959999999998
	.quad	0x401ffcd7060bb2bc              # double 7.9969140000000003
	.quad	0x4012b1fd1569f490              # double 4.6738169999999997
	.quad	0x40171f2d7f950b95              # double 5.7804469999999997
	.quad	0x4022034e9813879c              # double 9.0064589999999995
	.quad	0x401e56234a87e38f              # double 7.5841190000000002
	.quad	0x401754b48d3ae686              # double 5.8327200000000001
	.quad	0x401f3399b2c40d0b              # double 7.8003910000000002
	.quad	0x4005872e275ab7dc              # double 2.6910059999999998
	.quad	0x3fe10ae74f2f123c              # double 0.53258099999999997
	.quad	0x3fe58c0ce91c8eac              # double 0.673346
	.quad	0x4021920791c4b902              # double 8.7852139999999999
	.quad	0x40236f7f06705c89              # double 9.7177659999999992
	.quad	0x401654801f75104d              # double 5.5825199999999997
	.quad	0x4014fde69ad42c3d              # double 5.2479500000000003
	.quad	0x400efea1c68ec52a              # double 3.8743319999999999
	.quad	0x4007c81b21c475e6              # double 2.9727079999999999
	.quad	0x400453636f3b213e              # double 2.5407169999999999
	.quad	0x40112126634117f8              # double 4.2823729999999998
	.quad	0x401fcd56b00ffda4              # double 7.950526
	.quad	0x40169f2f9873ffac              # double 5.6554549999999999
	.quad	0x3ff55d3458cd20b0              # double 1.3352550000000001
	.quad	0x4004fa2a4db163bb              # double 2.6221510000000001
	.quad	0x40026d5ae1cde5d2              # double 2.3033960000000002
	.quad	0x4019730e7ff583a5              # double 6.3623599999999998
	.quad	0x40163a3b9ae0c176              # double 5.5568679999999997
	.quad	0x3fc8707e175d13d7              # double 0.19093299999999999
	.quad	0x4014e6b76709fa55              # double 5.2253090000000002
	.quad	0x3ffa6a4ebdd334c6              # double 1.650954
	.quad	0x3ff481bda5119ce0              # double 1.2816749999999999
	.quad	0x401515c91d14e3bd              # double 5.2712750000000002
	.quad	0x4023952f7f498c3b              # double 9.7913779999999999
	.quad	0x401772eba27ae9ab              # double 5.8622269999999999
	.quad	0x3ffec567125dd096              # double 1.9231940000000001
	.quad	0x401de583621fafc9              # double 7.4741340000000003
	.quad	0x3fc5715c63ae2542              # double 0.167522
	.quad	0x402076e4c0df58c1              # double 8.2322140000000008
	.quad	0x4023e0c1db0142f6              # double 9.9389789999999998
	.quad	0x4015198cc144028e              # double 5.2749509999999997
	.quad	0x401798ab92c06184              # double 5.8990919999999996
	.quad	0x4023f4cfd08d4bad              # double 9.9781479999999991
	.quad	0x40228edcc20d562a              # double 9.2790280000000003
	.quad	0x4008f1d92b7fe08b              # double 3.11809
	.quad	0x4015e28ed5f138bd              # double 5.4712480000000001
	.quad	0x401a9a8826aa8eb4              # double 6.6509099999999997
	.quad	0x3ff840abf76a2f49              # double 1.5157890000000001
	.quad	0x401b87763e4abe6a              # double 6.8822869999999998
	.quad	0x3fe8c09a24031487              # double 0.77351099999999995
	.quad	0x3ffd89613d31b9b6              # double 1.8460399999999999
	.quad	0x40101cb5fe542e55              # double 4.0280379999999996
	.quad	0x402129626b2f2303              # double 8.5808289999999996
	.quad	0x4022b339192641b3              # double 9.3500449999999997
	.quad	0x401a67b17ce52ded              # double 6.6012630000000003
	.quad	0x3ff3d0b30b5aa716              # double 1.2384520000000001
	.quad	0x40237963baba7b91              # double 9.7370889999999992
	.quad	0x3fef081e4712e408              # double 0.96974099999999996
	.quad	0x402297b69984a0e4              # double 9.2963149999999998
	.quad	0x400ff56f32bdc26e              # double 3.9948410000000001
	.quad	0x3fe4f357e670e2c1              # double 0.65470499999999998
	.quad	0x401fa11ec918e326              # double 7.9073440000000002
	.quad	0x40171d0cc35ce182              # double 5.7783689999999996
	.quad	0x401e87a1c25d0742              # double 7.6324529999999999
	.quad	0x40221e5109070fbf              # double 9.0592120000000005
	.quad	0x401c61bcdbbe0158              # double 7.0954470000000001
	.quad	0x401dd985271bcdbc              # double 7.4624220000000001
	.quad	0x40143bf93ff25e57              # double 5.0585680000000002
	.quad	0x4014ece91c8eac00              # double 5.2313580000000002
	.quad	0x4023ecacaff6d331              # double 9.9622550000000007
	.quad	0x401277add15f02c5              # double 4.6168740000000001
	.quad	0x401d6922d948dc12              # double 7.3526720000000001
	.quad	0x402016523704790c              # double 8.0435960000000008
	.quad	0x3ffbd185cee17a03              # double 1.738653
	.quad	0x4022f34f82f51266              # double 9.4752159999999996
	.quad	0x4012cc64ba94bbe4              # double 4.6996029999999998
	.quad	0x4012d8eef1bac2df              # double 4.711849
	.quad	0x4009184449dbec25              # double 3.1368490000000002
	.quad	0x3feced288ce703b0              # double 0.90395000000000003
	.quad	0x4017768b19a415f4              # double 5.8657649999999997
	.quad	0x401288da7f3cf701              # double 4.6336459999999997
	.quad	0x401dff2c7325918a              # double 7.499193
	.quad	0x3fc528f9f44d4456              # double 0.16531299999999999
	.quad	0x3facf0520d130dfa              # double 0.056521000000000002
	.quad	0x4018c377e1b8ed1c              # double 6.190887
	.quad	0x400394738a3b57c5              # double 2.4474860000000001
	.quad	0x402231cd1c7de508              # double 9.0972679999999997
	.quad	0x4007c0f238972043              # double 2.9692120000000002
	.quad	0x3ff926eb91b3f20a              # double 1.5720019999999999
	.quad	0x40227418f81e8a2f              # double 9.2267530000000004
	.quad	0x4014a8958d9b5e96              # double 5.1646330000000003
	.quad	0x40025d6b65a9a805              # double 2.2956150000000002
	.quad	0x4020b1da37ef5a96              # double 8.3473679999999995
	.quad	0x401bbe36d22424a2              # double 6.9357559999999996
	.quad	0x400e0fba01eeed89              # double 3.757679
	.quad	0x4019e1290257c915              # double 6.4698830000000003
	.quad	0x40074687f455a7d2              # double 2.9094389999999999
	.quad	0x401339f44d445671              # double 4.8065959999999999
	.quad	0x4003dfdbd2fa0d78              # double 2.4843060000000001
	.quad	0x4022a708aac96cc6              # double 9.326238
	.quad	0x401c8daf8df7a4e8              # double 7.1383650000000003
	.quad	0x3ffe908f648c7193              # double 1.910293
	.quad	0x401244751ce28ed6              # double 4.5668530000000001
	.quad	0x401277e49b1fab97              # double 4.617083
	.quad	0x3ffd8988094e5d5b              # double 1.846077
	.quad	0x40235621d96e9bbf              # double 9.6682269999999999
	.quad	0x401c9b4a2339c0ec              # double 7.1516500000000001
	.quad	0x40215f1b25f633ce              # double 8.6857539999999993
	.quad	0x4018c8e8ea39c51e              # double 6.1962010000000003
	.quad	0x4002ffc7e6b3fea0              # double 2.3748930000000001
	.quad	0x3ff3c97c80841ede              # double 1.236691
	.quad	0x40196138fffbce42              # double 6.3449439999999999
	.quad	0x3fb55e39713ad5bf              # double 0.083469000000000002
	.quad	0x4023f98a43bb40b3              # double 9.9873829999999994
	.quad	0x4023730941c8216c              # double 9.7246799999999993
	.quad	0x3fc0597d49d7ba67              # double 0.12773100000000001
	.quad	0x402079ad6451b930              # double 8.2376509999999996
	.quad	0x400dcc100e6afcce              # double 3.72464
	.quad	0x401582031ceaf252              # double 5.3769650000000002
	.quad	0x401d24e9c4545847              # double 7.2860480000000001
	.quad	0x40239d273d5bab22              # double 9.8069400000000009
	.quad	0x4016e2b4528283d3              # double 5.7213909999999997
	.quad	0x400c0889c1b54196              # double 3.5041690000000001
	.quad	0x400d81a6937d1fe6              # double 3.6883059999999999
	.quad	0x40225e2c12ad81ae              # double 9.1839300000000001
	.quad	0x400cdeb6bf444e0e              # double 3.6087470000000001
	.quad	0x40113c2b51bd61f6              # double 4.3087590000000002
	.quad	0x401e9a4ca4f440af              # double 7.6506829999999999
	.quad	0x401fecb1897a67a5              # double 7.9811459999999998
	.quad	0x401e05714b9cb685              # double 7.5053150000000004
	.quad	0x3ffa53879c4113c7              # double 1.6453930000000001
	.quad	0x4022232b990afe61              # double 9.0686920000000004
	.quad	0x4011b984e3ffef39              # double 4.431171
	.quad	0x4012bf540895d0b7              # double 4.6868439999999998
	.quad	0x402047e9b7bf1e8e              # double 8.1404549999999993
	.quad	0x40210d9d7774aba4              # double 8.5265920000000008
	.quad	0x4023f7dac68a936c              # double 9.9840909999999993
	.quad	0x401b1026cc1ca3a5              # double 6.7657730000000003
	.quad	0x401b92036006d0d5              # double 6.8925910000000004
	.quad	0x3ff5338c5436b8fa              # double 1.3250850000000001
	.quad	0x3ff079cf9a06a6e3              # double 1.029739
	.quad	0x40173781c714fce7              # double 5.8042059999999998
	.quad	0x4008227d028a1dfc              # double 3.0168400000000002
	.quad	0x4001e1d8622c4502              # double 2.2352759999999998
	.quad	0x4014ca3db3bfb58d              # double 5.1975009999999999
	.quad	0x4011b944ed6fda83              # double 4.4309269999999996
	.quad	0x401acd2999567dbb              # double 6.7003539999999999
	.quad	0x400655fd47bedb73              # double 2.7919870000000002
	.quad	0x400e068b19a415f4              # double 3.7531949999999998
	.quad	0x40141653c9abb01d              # double 5.0218040000000004
	.quad	0x40102e85fd04a2fd              # double 4.0454330000000001
	.quad	0x401698858ff75968              # double 5.6489469999999997
	.quad	0x401c515ca6ca03c5              # double 7.0794550000000003
	.quad	0x400b7700cd855971              # double 3.4331070000000001
	.quad	0x4019660d887ebf23              # double 6.3496610000000002
	.quad	0x40019741d084e832              # double 2.1988560000000001
	.quad	0x4007ed45e9185cee              # double 2.990856
	.quad	0x4016ae02ea960b70              # double 5.6699330000000003
	.quad	0x4022795464dc22ab              # double 9.2369719999999997
	.quad	0x401dc1fab96f21f7              # double 7.4394330000000002
	.quad	0x40234fbe76c8b439              # double 9.6557499999999993
	.quad	0x3fe422f6a50d6b23              # double 0.62926800000000005
	.quad	0x3fffe878fabda0e0              # double 1.994256
	.quad	0x401bb4c122749f0e              # double 6.9265179999999997
	.quad	0x401442ed783dff3f              # double 5.0653589999999999
	.quad	0x4016ba9cdc443915              # double 5.682239
	.quad	0x402304c2f837b4a2              # double 9.5092999999999996
	.quad	0x40171595feda6613              # double 5.7710800000000004
	.quad	0x401e3e4cd7492791              # double 7.5608399999999997
	.quad	0x400f0cf7caa7589f              # double 3.881332
	.quad	0x4021c02d9cf13cef              # double 8.8753480000000007
	.quad	0x3ff89714b9cb6849              # double 1.5368850000000001
	.quad	0x400a2f672b884407              # double 3.2731460000000001
	.quad	0x3ff1d9a30984e400              # double 1.115634
	.quad	0x401702cf52b90a78              # double 5.7527439999999999
	.quad	0x3ffa40c521dda05a              # double 1.6408130000000001
	.quad	0x4006f8d5842b734b              # double 2.8715009999999999
	.quad	0x4015026634117f84              # double 5.2523429999999998
	.quad	0x40100b2c83ec892b              # double 4.0109120000000003
	.quad	0x4012806c8711d799              # double 4.6254140000000001
	.quad	0x3fdea543f1c75819              # double 0.47883700000000001
	.quad	0x3fecf7fae3608d09              # double 0.90527100000000005
	.quad	0x401e0913e81450f0              # double 7.5088650000000001
	.quad	0x4015792fb19e731d              # double 5.3683459999999998
	.quad	0x401800ff97247454              # double 6.0009750000000004
	.quad	0x4021562de8709742              # double 8.6683190000000003
	.quad	0x3fff74a98aa8650e              # double 1.9659819999999999
	.quad	0x4010411d3671ac15              # double 4.0635880000000002
	.quad	0x4017baff2a172abf              # double 5.9326140000000001
	.quad	0x4021b950dae3e6c5              # double 8.8619450000000004
	.quad	0x401876787ce95fab              # double 6.1156940000000004
	.quad	0x401c47c4e2f37fbf              # double 7.070087
	.quad	0x401353f3e0370cdd              # double 4.8319850000000004
	.quad	0x4017f69ced0b30b6              # double 5.9908330000000003
	.quad	0x3fd26e9bbf0dc769              # double 0.28800100000000001
	.quad	0x4015483f91e646f1              # double 5.3205549999999997
	.quad	0x400025b8dc55000d              # double 2.0184190000000002
	.quad	0x400f1c182ecaeea6              # double 3.8887179999999999
	.quad	0x400e85bc01a36e2f              # double 3.8153000000000001
	.quad	0x4012fce0b912dba5              # double 4.7469510000000001
	.quad	0x402294de5d18090b              # double 9.2907589999999995
	.quad	0x400936c82e019b0b              # double 3.1517490000000001
	.quad	0x3ff890c0ad03d9a9              # double 1.5353399999999999
	.quad	0x40204f5d9a0f0a5f              # double 8.155011
	.quad	0x40077bd5992428d4              # double 2.9354659999999999
	.quad	0x3ffac81d3aa369fd              # double 1.673856
	.quad	0x401acf74cd31769b              # double 6.7025940000000004
	.quad	0x401c29a2834d26fa              # double 7.0406589999999998
	.quad	0x401c85e310dbf056              # double 7.1307489999999998
	.quad	0x401fd2c01e68a0d3              # double 7.9558109999999997
	.quad	0x4003fb17ce52deca              # double 2.4976039999999999
	.quad	0x402010f3a9b06812              # double 8.0331089999999996
	.quad	0x400c67bb2fec56d6              # double 3.5506500000000001
	.quad	0x4011460999dcb578              # double 4.3183959999999999
	.quad	0x4015cc1a8ac5c140              # double 5.4493200000000002
	.quad	0x401994e618ce2d1f              # double 6.3954089999999999
	.quad	0x3fcac1fc8f32378b              # double 0.20904500000000001
	.quad	0x402330a32f44912a              # double 9.5949950000000008
	.quad	0x401c9b3a68b19a41              # double 7.1515899999999997
	.quad	0x40066e5e679463d0              # double 2.8038910000000001
	.quad	0x4015c5db76b3bb84              # double 5.4432200000000002
	.quad	0x40190290abb44e51              # double 6.2525050000000002
	.quad	0x400791611ba3ca75              # double 2.945986
	.quad	0x40223c15d2d01c0d              # double 9.1173540000000006
	.quad	0x401586772d5e071c              # double 5.3813139999999997
	.quad	0x3fe716b11c6d1e11              # double 0.72152000000000005
	.quad	0x4017c0285ec3dab6              # double 5.9376540000000002
	.quad	0x3ffde4e48626f60e              # double 1.868382
	.quad	0x4016b3fc43b2dd37              # double 5.6757669999999996
	.quad	0x3fce26e5471715c6              # double 0.23556199999999999
	.quad	0x401e1d9cf13cee9e              # double 7.5289190000000001
	.quad	0x401b5b09203a322b              # double 6.838902
	.quad	0x402016c84f8f8a4c              # double 8.0444969999999997
	.quad	0x40095e61cffeb075              # double 3.1710850000000002
	.quad	0x401af0d4562e09ff              # double 6.7351850000000004
	.quad	0x4012530db6a1e81d              # double 4.5811070000000003
	.quad	0x401b817dae81882b              # double 6.8764560000000001
	.quad	0x4013abc664d3bf2f              # double 4.9177489999999997
	.quad	0x40205ee9ff0cbaf9              # double 8.1853789999999993
	.quad	0x401de2e6a76965f5              # double 7.4715829999999999
	.quad	0x3ff6b67e414e7ee9              # double 1.419554
	.quad	0x400c66d506573216              # double 3.550211
	.quad	0x401bb27e5215768a              # double 6.9243100000000002
	.quad	0x3ff3b13ad5bee3d6              # double 1.230769
	.quad	0x40203fbb2fec56d6              # double 8.1244750000000003
	.quad	0x4013ecb5fe542e55              # double 4.9811629999999996
	.quad	0x3ff4d2ea52ef911d              # double 1.301493
	.quad	0x401d88cd20afa2f0              # double 7.3835949999999997
	.quad	0x4018558e64b23140              # double 6.0835509999999999
	.quad	0x3fbc34e3369b9d80              # double 0.110182
	.quad	0x401f29c886162f16              # double 7.7908039999999996
	.quad	0x401db5b70691ea79              # double 7.4274560000000003
	.quad	0x3ffe4906034f3fd9              # double 1.892828
	.quad	0x40205353b4b2fa94              # double 8.1627480000000005
	.quad	0x401312f9ca5bd945              # double 4.7685310000000003
	.quad	0x400798d4fdf3b646              # double 2.9496250000000002
	.quad	0x400bb76f6d762520              # double 3.4645679999999999
	.quad	0x400c0425aee631f9              # double 3.5020250000000002
	.quad	0x3ff207570c564f98              # double 1.126792
	.quad	0x400b83547e06961c              # double 3.4391259999999999
	.quad	0x3ff3a8d64d7f0ed4              # double 1.22872
	.quad	0x401cac79b34a44c8              # double 7.1684330000000003
	.quad	0x400d153e707e175d              # double 3.635373
	.quad	0x400e7fec99f1ae2e              # double 3.8124630000000002
	.quad	0x3fdfdd65a14488c6              # double 0.497888
	.quad	0x4023f1cfdd228566              # double 9.972289
	.quad	0x3fe865fd8adab9f5              # double 0.76244999999999996
	.quad	0x401aee9185cee17a              # double 6.732977
	.quad	0x40218fde939eadd6              # double 8.7809950000000008
	.quad	0x4022779b56323bbc              # double 9.2336069999999992
	.quad	0x3ff1980d3cff64d0              # double 1.0996220000000001
	.quad	0x3ffd458ff7596851              # double 1.829483
	.quad	0x3ff77cddd6e04c06              # double 1.4679850000000001
	.quad	0x40117394face67d7              # double 4.3628729999999996
	.quad	0x3fd4a027525460aa              # double 0.32227499999999998
	.quad	0x400440fc2eba27af              # double 2.5317310000000002
	.quad	0x4013d94c447c30d3              # double 4.962205
	.quad	0x40215f9d2bf55150              # double 8.6867459999999994
	.quad	0x3ff67f8b9baa1512              # double 1.406139
	.quad	0x40205fb4a2339c0f              # double 8.1869250000000005
	.quad	0x4007fbc3c5bd0e13              # double 2.997932
	.quad	0x401246113404ea4b              # double 4.5684250000000004
	.quad	0x40182ee17a02fb5d              # double 6.045782
	.quad	0x400781c58255b036              # double 2.9383650000000001
	.quad	0x3fde8e1d6494d50f              # double 0.47742400000000002
	.quad	0x4006f99e518f3ecd              # double 2.8718840000000001
	.quad	0x402073220791c4b9              # double 8.224869
	.quad	0x4013c2263d816acf              # double 4.9395990000000003
	.quad	0x401593bea91d9b1b              # double 5.3942819999999996
	.quad	0x3fe88088509bf9c6              # double 0.76568999999999998
	.quad	0x4023d20620ab7132              # double 9.9102029999999992
	.quad	0x401b8d549731098d              # double 6.8880179999999998
	.quad	0x4013b9068986fcdf              # double 4.9306890000000001
	.quad	0x400f0012dfd694cd              # double 3.8750360000000001
	.quad	0x40106154003254e7              # double 4.0950470000000001
	.quad	0x4012b49a5657fb6a              # double 4.6763700000000004
	.quad	0x4015e0a06e9ff0cc              # double 5.4693620000000003
	.quad	0x4003f4784230fcf8              # double 2.49437
	.quad	0x40159ac929aa1d75              # double 5.4011579999999997
	.quad	0x4019fbd6a593a2e0              # double 6.4959360000000004
	.quad	0x400dd30be0ded289              # double 3.7280500000000001
	.quad	0x3fe47b82c2bd7f52              # double 0.64007700000000001
	.quad	0x401e45dc4007570c              # double 7.5682229999999997
	.quad	0x3fc54da4ce8101f3              # double 0.166432
	.quad	0x402341e8c47a17f4              # double 9.6287289999999998
	.quad	0x4021c129ed3953df              # double 8.8772730000000006
	.quad	0x4021a4b923a29c78              # double 8.8217250000000007
	.quad	0x40100ed3953dea46              # double 4.0144789999999997
	.quad	0x4003608e9b38d60a              # double 2.4221469999999998
	.quad	0x402214b295e9e1b1              # double 9.0404250000000008
	.quad	0x401b162bf11f926c              # double 6.7716519999999996
	.quad	0x401e77caa7589efe              # double 7.6169840000000004
	.quad	0x40116c55c96030c2              # double 4.3557959999999998
	.quad	0x4012519c9d5a187a              # double 4.5796989999999997
	.quad	0x4004a9656eefa1e4              # double 2.582713
	.quad	0x4014835e74299d88              # double 5.1282899999999998
	.quad	0x401a367b1c0010c7              # double 6.553204
	.quad	0x401278769ec2ce46              # double 4.6176399999999997
	.quad	0x401d7a7589efd86b              # double 7.3695890000000004
	.quad	0x4003126202539757              # double 2.3839760000000001
	.quad	0x4022be8e60807358              # double 9.3721800000000001
	.quad	0x401e76ffc115df65              # double 7.6162099999999997
	.quad	0x400072452c59fb1e              # double 2.055796
	.quad	0x3ffd026bb55ac040              # double 1.813091
	.quad	0x3fe6a0b8066c2acc              # double 0.70711900000000005
	.quad	0x401009b56323bbc7              # double 4.0094810000000001
	.quad	0x401f524bba12b5e5              # double 7.8303669999999998
	.quad	0x400e6c7192ea52f0              # double 3.8029510000000002
	.quad	0x401cad8622c45027              # double 7.1694570000000004
	.quad	0x402052441fea8113              # double 8.1606760000000005
	.quad	0x401b65dfa871a3b1              # double 6.8494859999999997
	.quad	0x4011f1e603d57796              # double 4.4862289999999998
	.quad	0x40068e12e83a109d              # double 2.819372
	.quad	0x4011e6cebbba55d2              # double 4.4753980000000002
	.quad	0x4023260029f16b12              # double 9.5742200000000004
	.quad	0x400422fad6cb5350              # double 2.51708
	.quad	0x3ff08e52deca2553              # double 1.0347470000000001
	.quad	0x40203a41c3efae79              # double 8.1137829999999997
	.quad	0x401654195cc857f3              # double 5.582128
	.quad	0x3ff2ca8b08dd1e54              # double 1.1744490000000001
	.quad	0x401267aeddce7cd0              # double 4.6012529999999998
	.quad	0x400391904b3c3e75              # double 2.4460760000000001
	.quad	0x401ecfc08fa7a850              # double 7.7028829999999999
	.quad	0x3fc6c84f8f8a4c1f              # double 0.17798800000000001
	.quad	0x3ffb460ed80a17b1              # double 1.704604
	.quad	0x4019af540895d0b7              # double 6.4212189999999998
	.quad	0x3ffe063beec3979a              # double 1.876522
	.quad	0x40034a5b530ced4e              # double 2.4113069999999999
	.quad	0x40143b84db9c7369              # double 5.0581240000000003
	.quad	0x3ff586e4c0df58c1              # double 1.3454330000000001
	.quad	0x401bcd54da4ce810              # double 6.9505189999999999
	.quad	0x4023cd71f36262cc              # double 9.9012600000000006
	.quad	0x3fe224e379b77c03              # double 0.56700300000000003
	.quad	0x40238a7b4e54f7a9              # double 9.7704719999999998
	.quad	0x400239018e757929              # double 2.2778350000000001
	.quad	0x400fbe2c55c96031              # double 3.9678580000000001
	.quad	0x40231d72de43ed96              # double 9.5575170000000007
	.quad	0x400506b8b69552e3              # double 2.628282
	.quad	0x4017d3ffac1d29dc              # double 5.9570299999999996
	.quad	0x3fe5f0f5a1016ce8              # double 0.68566400000000005
	.quad	0x401ed4c22ee4191a              # double 7.7077720000000003
	.quad	0x3ffbd48ecd8dbced              # double 1.7393940000000001
	.quad	0x401a78de2ac32229              # double 6.6180349999999999
	.quad	0x3fabb7952d234eba              # double 0.054135000000000003
	.quad	0x40013cde5d18090b              # double 2.1547209999999999
	.quad	0x401a03b60285ec3e              # double 6.5036240000000003
	.quad	0x4005930d7386099a              # double 2.6968030000000001
	.quad	0x401b05b8dc55000d              # double 6.7555880000000004
	.quad	0x402062324c836651              # double 8.1917899999999992
	.quad	0x40234230984e3fff              # double 9.629277
	.quad	0x401dc5cfede97d07              # double 7.4431760000000002
	.quad	0x4015f09edbf8b9bb              # double 5.4849810000000003
	.quad	0x3fef389d6adf71eb              # double 0.975661
	.quad	0x401dbe1e71044f1a              # double 7.4356629999999999
	.quad	0x400d627418d6909b              # double 3.673073
	.quad	0x4010b9845dc83233              # double 4.1811689999999997
	.quad	0x40150fb04ee7c4a0              # double 5.2653210000000001
	.quad	0x4009c249a133c1ce              # double 3.2198669999999998
	.quad	0x402267adafd11383              # double 9.2024969999999993
	.quad	0x4022466c2acb85a5              # double 9.1375440000000001
	.quad	0x40103f27fe4bcada              # double 4.0616760000000003
	.quad	0x401bd4acaff6d331              # double 6.9576900000000004
	.quad	0x401f867caea747d8              # double 7.8813349999999999
	.quad	0x40087796bfca85cb              # double 3.0583930000000001
	.quad	0x3fffde364bec679d              # double 1.991751
	.quad	0x3fc8f8ad25679896              # double 0.19508900000000001
	.quad	0x40137c4b09e98dce              # double 4.8713800000000003
	.quad	0x40041f14983d7907              # double 2.5151759999999999
	.quad	0x4008f70d62bf11f9              # double 3.1206309999999999
	.quad	0x401feb13165d3997              # double 7.979565
	.quad	0x4003da0be5109071              # double 2.481468
	.quad	0x401116117720c8cd              # double 4.2715509999999997
	.quad	0x3ffebfbdf090f734              # double 1.9218120000000001
	.quad	0x3fcfb3f20a73f749              # double 0.24767900000000001
	.quad	0x400d626d4801f751              # double 3.67306
	.quad	0x400eda8049667b5f              # double 3.85669
	.quad	0x40056fb224aada34              # double 2.6795390000000001
	.quad	0x401e6ee568a50508              # double 7.6082970000000003
	.quad	0x40150a915379fa98              # double 5.2603200000000001
	.quad	0x4003d7b6bb129025              # double 2.4803289999999998
	.quad	0x401854c0df58c08b              # double 6.0827669999999996
	.quad	0x4012e452c59fb1e2              # double 4.7229720000000004
	.quad	0x4010214163779e9d              # double 4.0324759999999999
	.quad	0x3feb4d2f5dbb9cfa              # double 0.85317200000000004
	.quad	0x40073ea465a57647              # double 2.9055870000000001
	.quad	0x4018d77ea1c68ec5              # double 6.2104439999999999
	.quad	0x4017d0c8472c0e7c              # double 5.9538890000000002
	.quad	0x4004f43e963dc487              # double 2.6192600000000001
	.quad	0x3ff7a583e8576cce              # double 1.4779089999999999
	.quad	0x3fe2a00e27e0ef9a              # double 0.58203800000000006
	.quad	0x3ffe3d06bbdbe3c1              # double 1.889899
	.quad	0x402124ef0281ba80              # double 8.5721360000000004
	.quad	0x401e61aa3f034b0e              # double 7.5953759999999999
	.quad	0x3fc13c925785f8d3              # double 0.134661
	.quad	0x401776327ed84d34              # double 5.8654270000000004
	.quad	0x4022f0c26138fffc              # double 9.4702330000000003
	.quad	0x40011e81450efdca              # double 2.1398950000000001
	.quad	0x4021ed0f840181e0              # double 8.9630089999999996
	.quad	0x3fe065710880d802              # double 0.51238300000000003
	.quad	0x4019961ed5ae1cde              # double 6.3966019999999997
	.quad	0x4021feb5f5f0b285              # double 8.9974819999999998
	.quad	0x40184226c3b927d4              # double 6.0646009999999997
	.quad	0x3ff5737329c347e9              # double 1.340686
	.quad	0x40165e7a311e85fd              # double 5.592263
	.quad	0x4022976640a6b93d              # double 9.2957020000000004
	.quad	0x4018532d6ece13f5              # double 6.0812280000000003
	.quad	0x400b228a1dfb938a              # double 3.3918650000000001
	.quad	0x4010a718a86d71f3              # double 4.1631799999999997
	.quad	0x401b5373f316e371              # double 6.8314969999999997
	.quad	0x402116529bae46d0              # double 8.5435990000000004
	.quad	0x4001d676640a6b94              # double 2.2297180000000001
	.quad	0x4014fa3ec02f2f98              # double 5.2443799999999996
	.quad	0x401f33f359ff4fd7              # double 7.8007330000000001
	.quad	0x40169a9c560c7c0f              # double 5.6509869999999998
	.quad	0x40055c0ebedfa440              # double 2.66995
	.quad	0x40145d9a95421c04              # double 5.0914099999999998
	.quad	0x3ff6005814940bbb              # double 1.375084
	.quad	0x3fe073c2dadb8349              # double 0.514131
	.quad	0x401e49f72f76e610              # double 7.5722319999999996
	.quad	0x3fa30b7c3504c48b              # double 0.037197000000000001
	.quad	0x400469741d084e83              # double 2.551491
	.quad	0x400c159f6ec5b079              # double 3.5105580000000001
	.quad	0x401d4f1950331e3a              # double 7.3272449999999996
	.quad	0x4023438fbca1059f              # double 9.6319560000000006
	.quad	0x4011a660a2014728              # double 4.4124780000000001
	.quad	0x3ff816cf850df15a              # double 1.5055689999999999
	.quad	0x40155050374ff866              # double 5.3284310000000001
	.quad	0x3ff454163779e9d1              # double 1.270529
	.quad	0x3ff9209aaa3ad18d              # double 1.57046
	.quad	0x4023a1f340d4dc66              # double 9.8163090000000004
	.quad	0x3fe41efd86a8fc0d              # double 0.62878299999999998
	.quad	0x40227d675579af19              # double 9.2449290000000008
	.quad	0x4022c384fd2a62aa              # double 9.3818739999999998
	.quad	0x3ffa74b51372a38c              # double 1.6534930000000001
	.quad	0x40118aab042528ae              # double 4.3854179999999996
	.quad	0x400888954a7f8013              # double 3.0666910000000001
	.quad	0x3faeaf46aa087ca6              # double 0.059930999999999998
	.quad	0x4021a43e963dc487              # double 8.8207900000000006
	.quad	0x3ffb067381d7dbf5              # double 1.6890750000000001
	.quad	0x401176f36ef80560              # double 4.3661630000000002
	.quad	0x401ddae6c8f75537              # double 7.4637710000000004
	.quad	0x3fd534091c087443              # double 0.33130100000000001
	.quad	0x4023cd46b26bf877              # double 9.9009300000000006
	.quad	0x4022a8c9b845564b              # double 9.3296639999999993
	.quad	0x4023c36d43d03969              # double 9.8816930000000002
	.quad	0x40225130df9bdc6a              # double 9.1585760000000001
	.quad	0x400ff5e310dbf056              # double 3.9950619999999999
	.quad	0x4014c8348f53c57a              # double 5.195513
	.quad	0x3ff5e236c15d2d02              # double 1.3677280000000001
	.quad	0x3fef5a6a44417870              # double 0.97978699999999996
	.quad	0x3fcee1c58255b036              # double 0.24126500000000001
	.quad	0x4022218a43bb40b3              # double 9.0655079999999995
	.quad	0x40229a231832fcad              # double 9.3010490000000008
	.quad	0x401b7db8fde2ef4e              # double 6.872776
	.quad	0x4002ffe32a0663c7              # double 2.3749449999999999
	.quad	0x4014103a322af577              # double 5.0158469999999999
	.quad	0x401afcbfb15b573f              # double 6.7468250000000003
	.quad	0x3ff4224bba12b5e5              # double 1.258373
	.quad	0x40052acfb762d83c              # double 2.6459039999999998
	.quad	0x4007ffa5d28d002e              # double 2.9998279999999999
	.quad	0x3ffe5784ec636b09              # double 1.8963669999999999
	.quad	0x401c8fc9795b35b1              # double 7.1404170000000002
	.quad	0x40228b7542a23c00              # double 9.2723790000000008
	.quad	0x3fe5fa376922d949              # double 0.68679400000000002
	.quad	0x3ff018bc59b8023a              # double 1.0060389999999999
	.quad	0x40202db2702a3487              # double 8.0892520000000001
	.quad	0x4009d0a4e379b77c              # double 3.226877
	.quad	0x4020201b866e43aa              # double 8.0627099999999992
	.quad	0x401ab1f3a57eaa2a              # double 6.673781
	.quad	0x40110007570c5650              # double 4.2500280000000004
	.quad	0x3ff77d017dae8188              # double 1.468019
	.quad	0x400f63992c8c5005              # double 3.923632
	.quad	0x40111caf2d7f950c              # double 4.2780120000000004
	.quad	0x3fff7cc8de2ac322              # double 1.967965
	.quad	0x401cdccee5abc0e4              # double 7.2156330000000004
	.quad	0x4017da59c065b63d              # double 5.9632329999999998
	.quad	0x4023baf2f9873ffb              # double 9.8651350000000004
	.quad	0x400f653f39d1b2e6              # double 3.9244370000000002
	.quad	0x401c030489d27c39              # double 7.0029469999999998
	.quad	0x40129069a4df47fa              # double 4.6410280000000004
	.quad	0x4014450ebaade658              # double 5.0674390000000002
	.quad	0x4014ea8d21bc126a              # double 5.2290539999999996
	.quad	0x40191611fd5885d3              # double 6.2715529999999999
	.quad	0x40164ef77f27fe4c              # double 5.5771160000000002
	.quad	0x400c1de7a743a648              # double 3.514602
	.quad	0x3ffdbd556084a516              # double 1.858724
	.quad	0x40212e525892684d              # double 8.5904720000000001
	.quad	0x40181d7cb2d905c0              # double 6.0287959999999998
	.quad	0x401519d2391d5800              # double 5.2752160000000003
	.quad	0x401714edf6124074              # double 5.7704389999999997
	.quad	0x401fb8f648c7192f              # double 7.9306270000000003
	.quad	0x4019ca4ebdd334c6              # double 6.4475660000000001
	.quad	0x4021861b2a27f1b7              # double 8.7619260000000008
	.quad	0x3ff9c4178705425f              # double 1.610374
	.quad	0x4007aa5375c8d9f9              # double 2.958167
	.quad	0x3fecd506573215fd              # double 0.90100400000000003
	.quad	0x4022a54690de0935              # double 9.3228039999999996
	.quad	0x401ded36b4c7f349              # double 7.4816539999999998
	.quad	0x4018c07fed20296b              # double 6.1879879999999998
	.quad	0x401123ca31e7d999              # double 4.2849510000000004
	.quad	0x40157eb95e5aff2a              # double 5.3737539999999999
	.quad	0x40180a3ad18d25ee              # double 6.0099900000000002
	.quad	0x4022dd9d3458cd21              # double 9.4328400000000005
	.quad	0x3fe5d579af1886e0              # double 0.68230900000000005
	.quad	0x40113567dbb16c1e              # double 4.3021539999999998
	.quad	0x400e6b06c43f5f91              # double 3.8022589999999998
	.quad	0x401fa9b1b79d909f              # double 7.9157169999999998
	.quad	0x4022aef5caf2d7f9              # double 9.3417189999999994
	.quad	0x3ff449f2fdb8fde3              # double 1.268054
	.quad	0x3fe9be29307af20f              # double 0.80446300000000004
	.quad	0x3fe24f5b1c864884              # double 0.572187
	.quad	0x3fd36ee73e681a9c              # double 0.30364400000000002
	.quad	0x401500e6afcce1c6              # double 5.2508800000000004
	.quad	0x40235a0a958537e3              # double 9.6758620000000004
	.quad	0x40076aac96cc5fc0              # double 2.9270870000000002
	.quad	0x4021fc6c764adff8              # double 8.9930149999999998
	.quad	0x400e4a01abd1aa82              # double 3.7861359999999999
	.quad	0x3fd33150dae3e6c5              # double 0.29988500000000001
	.quad	0x40214477143393ab              # double 8.6337209999999995
	.quad	0x401959b280f12c28              # double 6.3375950000000003
	.quad	0x3fed23f034b0e1b5              # double 0.91063700000000003
	.quad	0x402108709741d085              # double 8.5164840000000002
	.quad	0x401ef31b9b66f933              # double 7.7374099999999996
	.quad	0x3ffd058ff7596851              # double 1.813858
	.quad	0x401e88d36b4c7f35              # double 7.6336190000000003
	.quad	0x40018ed6777079e6              # double 2.1947450000000002
	.quad	0x4007bae3608d0892              # double 2.9662540000000002
	.quad	0x40231199bb2788db              # double 9.5343759999999999
	.quad	0x3fd5e3da2f8bdec6              # double 0.342032
	.quad	0x401149bd8383ad9f              # double 4.322012
	.quad	0x400f9b13165d3997              # double 3.95072
	.quad	0x40164dd15f02c4d6              # double 5.5759939999999997
	.quad	0x401d4cbfb15b573f              # double 7.3249500000000003
	.quad	0x4019ef62f9ca5bd9              # double 6.4837759999999998
	.quad	0x3ff6d1ec918e325d              # double 1.4262509999999999
	.quad	0x3fe42b063e07a28c              # double 0.63025200000000003
	.quad	0x3ffec213a0c6b485              # double 1.922382
	.quad	0x3ff583fe5c91d14e              # double 1.3447249999999999
	.quad	0x4001d845dc832336              # double 2.2306020000000002
	.quad	0x401554284dfce315              # double 5.332185
	.quad	0x401233d1cc100e6b              # double 4.550605
	.quad	0x4019e1758e219653              # double 6.4701750000000002
	.quad	0x4015d338f7985272              # double 5.4562720000000002
	.quad	0x40105fd08d4bad7d              # double 4.0935689999999996
	.quad	0x400d8f29d40ee06e              # double 3.6949040000000002
	.quad	0x3fec8448cf7caa76              # double 0.89114800000000005
	.quad	0x401da93d96638434              # double 7.4152740000000001
	.quad	0x40116d0678c0053e              # double 4.3564699999999998
	.quad	0x4018411be6e65387              # double 6.0635830000000004
	.quad	0x4023701d9f4d37c1              # double 9.7189759999999996
	.quad	0x40227eeae9ee45c3              # double 9.2478859999999994
	.quad	0x3ff85eb313be22e6              # double 1.52312
	.quad	0x4011b742dcf4623d              # double 4.428966
	.quad	0x4018cae31d712a0f              # double 6.1981320000000002
	.quad	0x40171b3aabcd78c4              # double 5.7765909999999998
	.quad	0x401ba425f202107b              # double 6.9103009999999996
	.quad	0x40019b99d451fc4c              # double 2.200977
	.quad	0x40201bb55ac03ff7              # double 8.0541180000000008
	.quad	0x4016844aa53fc009              # double 5.6291909999999996
	.quad	0x400648b97785729b              # double 2.7855099999999999
	.quad	0x40124a0a52695960              # double 4.5723050000000001
	.quad	0x3fd1718eb8950764              # double 0.27255600000000002
	.quad	0x3ff48d8dbcec84f9              # double 1.284559
	.quad	0x4015706e5cd4ed2d              # double 5.3597960000000002
	.quad	0x400f88dd1e53a81e              # double 3.9418280000000001
	.quad	0x40059e1c15097c81              # double 2.7022020000000002
	.quad	0x40085afd976ff3ae              # double 3.0444290000000001
	.quad	0x3ff92f2d7f950b95              # double 1.5740179999999999
	.quad	0x4020723f24d8fd5d              # double 8.2231380000000005
	.quad	0x4021396dd26b723f              # double 8.6121660000000002
	.quad	0x401f8b6d86ec17ec              # double 7.8861600000000003
	.quad	0x401c84f61672324d              # double 7.1298450000000004
	.quad	0x4017488094e5d5b2              # double 5.8208029999999997
	.quad	0x401bef28848387df              # double 6.9835529999999997
	.quad	0x40233adbe7f2c301              # double 9.6149590000000006
	.quad	0x3fc3d1bb4916ca47              # double 0.154838
	.quad	0x40179583a53b8e4c              # double 5.8960100000000004
	.quad	0x3fd4235f80991794              # double 0.31465900000000002
	.quad	0x400017531db445ed              # double 2.0113889999999999
	.quad	0x40158599aa60913a              # double 5.3804689999999997
	.quad	0x400b1327243137b0              # double 3.3843519999999998
	.quad	0x4009df7be121ee67              # double 3.2341229999999999
	.quad	0x401e695421c04428              # double 7.6028599999999997
	.quad	0x3fec7aeff5c6c11a              # double 0.89000699999999999
	.quad	0x401922339c0ebee0              # double 6.2834000000000003
	.quad	0x400c8958537e2c56              # double 3.5670630000000001
	.quad	0x3ffff1ceaf251c19              # double 1.9965349999999999
	.quad	0x401b99c90c4dec1c              # double 6.9001809999999999
	.quad	0x4022a5c358afc47e              # double 9.3237559999999995
	.quad	0x400739d66adb402d              # double 2.903241
	.quad	0x40219267620ee8d1              # double 8.7859449999999999
	.quad	0x3fe0264c2f837b4a              # double 0.50467499999999998
	.quad	0x402044dd93c46d83              # double 8.1345030000000005
	.quad	0x4021804f8f8a4c1f              # double 8.7506070000000005
	.quad	0x401c17cc39ffd60f              # double 7.0232400000000004
	.quad	0x402155c37a3db3c0              # double 8.6675070000000005
	.quad	0x401e1bfca85caafc              # double 7.5273310000000002
	.quad	0x4022522a90cd423e              # double 9.1604810000000008
	.quad	0x4012f1e18efbb0e6              # double 4.7362120000000001
	.quad	0x401fc103c8e25c81              # double 7.9384909999999999
	.quad	0x4017eebf22c01e69              # double 5.9831510000000003
	.quad	0x400e19cb6848beb6              # double 3.7625950000000001
	.quad	0x40221ef32bdc26dd              # double 9.0604490000000002
	.quad	0x3ff4d97b30f8c650              # double 1.303096
	.quad	0x400c3dc054ef459e              # double 3.5301520000000002
	.quad	0x4011ff166e008e9b              # double 4.4991089999999998
	.quad	0x3ffd5b8023a6ce36              # double 1.8348390000000001
	.quad	0x4011158bc59b8024              # double 4.2710410000000003
	.quad	0x4020f93bc0a06ea0              # double 8.4867840000000001
	.quad	0x402361fba450acc1              # double 9.6913730000000004
	.quad	0x402211df3300de4c              # double 9.0349059999999994
	.quad	0x3ffed96c82e019b1              # double 1.9280820000000001
	.quad	0x400de962cfd8f0c7              # double 3.7389579999999998
	.quad	0x40114996fa82e87d              # double 4.3218649999999998
	.quad	0x400cc0114d2f5dbc              # double 3.5937830000000002
	.quad	0x400039d0a67620ef              # double 2.0282300000000002
	.quad	0x3ff087f88765ba6f              # double 1.033196
	.quad	0x3fe095fcc1871e6d              # double 0.51830900000000002
	.quad	0x40078f2c7325918a              # double 2.944909
	.quad	0x4013a11409a24031              # double 4.9073029999999997
	.quad	0x40186449129888f8              # double 6.0979349999999997
	.quad	0x400bb9652bd3c361              # double 3.465525
	.quad	0x401bb35b91f70de9              # double 6.925154
	.quad	0x4012ba0dfdef8488              # double 4.6816940000000002
	.quad	0x401aa683c297bfa5              # double 6.6626120000000002
	.quad	0x4023a2bf11f926c8              # double 9.8178640000000001
	.quad	0x40217236e2eb1c43              # double 8.7230749999999997
	.quad	0x40111f765fd8adac              # double 4.2807250000000003
	.quad	0x4022af2a172abef0              # double 9.3421179999999993
	.quad	0x3ff39245b291b824              # double 1.223211
	.quad	0x4018cb5a63f9a49c              # double 6.1985869999999998
	.quad	0x4007eb8cfbfc6541              # double 2.9900150000000001
	.quad	0x4017b93af74cd317              # double 5.9308889999999996
	.quad	0x4006e586876e1deb              # double 2.8620730000000001
	.quad	0x401f1a36199780bb              # double 7.7755970000000003
	.quad	0x4007fe38eb0318b9              # double 2.9991319999999999
	.quad	0x4021c540ee06d938              # double 8.8852609999999999
	.quad	0x4012cec460ed80a1              # double 4.7019209999999996
	.quad	0x4002b84a9478c869              # double 2.3399860000000001
	.quad	0x40218b8b8ae31d71              # double 8.7725489999999997
	.quad	0x3fce45132f87ad08              # double 0.236483
	.quad	0x3fd92a0a958537e3              # double 0.39319100000000001
	.quad	0x40140c9c0a8d21bc              # double 5.0123139999999999
	.quad	0x40218b02b40f66a5              # double 8.7715049999999994
	.quad	0x3fefa027525460aa              # double 0.98829999999999996
	.quad	0x402135e56cd6c2f0              # double 8.6052660000000003
	.quad	0x400074bad7d7c2ca              # double 2.056997
	.quad	0x3fdb810e8858ff76              # double 0.42975200000000002
	.quad	0x3fdcb67c286f8ad2              # double 0.44863799999999998
	.quad	0x3fa2d666a98244e9              # double 0.036791999999999998
	.quad	0x3feff93dd97f62b7              # double 0.99917500000000003
	.quad	0x4015d4245f5ad96a              # double 5.4571699999999996
	.quad	0x4005271f79420b3d              # double 2.6441029999999999
	.quad	0x40091c62a1b5c7ce              # double 3.1388600000000002
	.quad	0x400408aa433508f6              # double 2.5042309999999999
	.quad	0x401f7375c8d9f905              # double 7.8627539999999997
	.quad	0x40132c54bcf0b6b7              # double 4.7932920000000001
	.quad	0x40112cbea4ebdd33              # double 4.2936959999999997
	.quad	0x401454e9c4545847              # double 5.0829230000000001
	.quad	0x40071057d1782d38              # double 2.8829799999999999
	.quad	0x3ffa795f676ea423              # double 1.6546320000000001
	.quad	0x3fe81de050374ff8              # double 0.75364699999999996
	.quad	0x3ff9860cbf2b239a              # double 1.595227
	.quad	0x4019543aeab7995f              # double 6.3322560000000001
	.quad	0x3fc0a960b6f9fcb1              # double 0.13016900000000001
	.quad	0x3fe9ef6512a94ff0              # double 0.810473
	.quad	0x3fe880d3cff64cf9              # double 0.76572600000000002
	.quad	0x3ffc0107314ca926              # double 1.750251
	.quad	0x402291a4bdba0a52              # double 9.2844599999999993
	.quad	0x4020bdee568a5050              # double 8.3709589999999992
	.quad	0x40098a2c2374794f              # double 3.1924670000000002
	.quad	0x3fd89c4545846e8f              # double 0.38453799999999999
	.quad	0x401d84cad57bc7f7              # double 7.3796799999999996
	.quad	0x401db949a5657fb7              # double 7.4309450000000004
	.quad	0x4010fab29e4d5d81              # double 4.2448220000000001
	.quad	0x4011982ecaeea63b              # double 4.3986159999999996
	.quad	0x40109f9ebe9c8861              # double 4.1558789999999997
	.quad	0x4023a2cdc011d367              # double 9.8179759999999998
	.quad	0x4022ddfd2630ec31              # double 9.4335719999999998
	.quad	0x401f30b88ca3e7d1              # double 7.7975789999999998
	.quad	0x401ee070329802c1              # double 7.7191780000000003
	.quad	0x40159208e1501190              # double 5.3926119999999997
	.quad	0x40127e8533b10774              # double 4.6235549999999996
	.quad	0x400d2c0ad03d9a95              # double 3.6465049999999999
	.quad	0x400092a27f1b6912              # double 2.071599
	.quad	0x400df2ffd1dcd706              # double 3.743652
	.quad	0x4023af76e6106ab1              # double 9.8427039999999994
	.quad	0x4022fbbf93ff25e5              # double 9.4916959999999992
	.quad	0x40094ebe596c82e0              # double 3.163449
	.quad	0x402001e75360d024              # double 8.0037179999999992
	.quad	0x4006b64adff822bc              # double 2.83901
	.quad	0x401765e310dbf056              # double 5.8494989999999998
	.quad	0x400721c9b4139863              # double 2.8914979999999999
	.quad	0x3fba4c51116a8b8f              # double 0.102727
	.quad	0x40069a97e132b55f              # double 2.825485
	.quad	0x4014c9fc2a8869c6              # double 5.1972509999999996
	.quad	0x3fe60685553ef6b6              # double 0.68829600000000002
	.quad	0x4011d23854046413              # double 4.4552930000000002
	.quad	0x401166f71a7e3088              # double 4.3505520000000004
	.quad	0x401429ed3953dea4              # double 5.0409439999999996
	.quad	0x401ee1d57ff9b563              # double 7.7205409999999998
	.quad	0x40215655e28aa433              # double 8.6686239999999994
	.quad	0x400d1da16616b54e              # double 3.6394679999999999
	.quad	0x4013b11a11233df3              # double 4.9229510000000003
	.quad	0x400fa2b3892ee84b              # double 3.9544440000000001
	.quad	0x40127dbe3c105187              # double 4.6227960000000001
	.quad	0x400b4af0bf1a5ca3              # double 3.4115920000000002
	.quad	0x400e1141a6937d20              # double 3.758426
	.quad	0x40206ea4228997c4              # double 8.2160960000000002
	.quad	0x4006955475a31a4c              # double 2.8229150000000001
	.quad	0x40220c095f2452c6              # double 9.0235090000000007
	.quad	0x4023c709528f190d              # double 9.8887429999999998
	.quad	0x3ffb79fdbd2fa0d7              # double 1.7172829999999999
	.quad	0x401c9f90539fba45              # double 7.155824
	.quad	0x401e4bb341e14be0              # double 7.5739260000000002
	.quad	0x40150ea0fd3b29a2              # double 5.2642860000000002
	.quad	0x401dad1b2e59af9f              # double 7.4190490000000002
	.quad	0x40045035bd512ec7              # double 2.5391650000000001
	.quad	0x401406a9c560c7c1              # double 5.006507
	.quad	0x4023ab0f062d40ab              # double 9.8340990000000001
	.quad	0x3ffe140cc78e9f6b              # double 1.8798950000000001
	.quad	0x4016a7164c729f5a              # double 5.6631710000000002
	.quad	0x401fa1b0468448cf              # double 7.9078989999999995
	.quad	0x3ff6feb6bf444e0e              # double 1.4371860000000001
	.quad	0x4014ea2df9378ee3              # double 5.2286910000000004
	.quad	0x4007f3f9e7b80a9e              # double 2.994129
	.quad	0x4022580064a9cdc4              # double 9.1718779999999995
	.quad	0x401d7e21d96e9bbf              # double 7.373176
	.quad	0x3fc8a05dd8f92afa              # double 0.19239400000000001
	.quad	0x4007913dfb0d51f8              # double 2.945919
	.quad	0x4004e4a38327674d              # double 2.61164
	.quad	0x401bcdb163baba7c              # double 6.9508720000000004
	.quad	0x401718cb07d0aeda              # double 5.7742120000000003
	.quad	0x402209b43526527a              # double 9.0189529999999998
	.quad	0x4018149906cca2db              # double 6.0201149999999997
	.quad	0x3ffdc7724fa8b4c0              # double 1.8611930000000001
	.quad	0x40132640639d5e4a              # double 4.7873549999999998
	.quad	0x40017121ab4b72c5              # double 2.18024
	.quad	0x3fdd1290257c914b              # double 0.454258
	.quad	0x40227aedbb59ddc2              # double 9.2400950000000002
	.quad	0x40141807789a4591              # double 5.023466
	.quad	0x3fef0d5c74751ce3              # double 0.97038100000000004
	.quad	0x4023cb4b2fa93af7              # double 9.8970579999999994
	.quad	0x40125369b9d7fd82              # double 4.5814579999999996
	.quad	0x4008add616f86a0a              # double 3.0848810000000002
	.quad	0x3ff753f6c2699c7c              # double 1.457999
	.quad	0x40037b13165d3997              # double 2.435095
	.quad	0x401091d14e3bcd36              # double 4.1424000000000003
	.quad	0x4023e901f31f46ed              # double 9.9550929999999997
	.quad	0x3ff816f75d9a0f0a              # double 1.5056069999999999
	.quad	0x401ad2f61ed5ae1d              # double 6.7060170000000001
	.quad	0x402241d4738a3b58              # double 9.1285740000000004
	.quad	0x3fe50f7121ab4b73              # double 0.65813500000000003
	.quad	0x40179aceaaf35e31              # double 5.901179
	.quad	0x40228e0ae9680e06              # double 9.2774269999999994
	.quad	0x4011c6d58c8eef1c              # double 4.4441740000000003
	.quad	0x40052b5b2d4d4025              # double 2.6461700000000001
	.quad	0x401b261240746456              # double 6.7871790000000001
	.quad	0x400d4be7afa72218              # double 3.6620629999999998
	.quad	0x4014d1df761cbccf              # double 5.2049539999999999
	.quad	0x3ff1632e3821af7d              # double 1.086714
	.quad	0x3ffa189374bc6a7f              # double 1.631
	.quad	0x401d8b6848beb5b3              # double 7.3861400000000001
	.quad	0x4019ea08398a6549              # double 6.4785469999999998
	.quad	0x401582131a8ef77f              # double 5.3770259999999999
	.quad	0x4013fc621b7e0ac8              # double 4.9964680000000001
	.quad	0x4022f366516db0de              # double 9.4753900000000009
	.quad	0x402176c43f5f9160              # double 8.7319659999999999
	.quad	0x40221f525460aa65              # double 9.0611750000000004
	.quad	0x3ffef3743632c1f4              # double 1.934437
	.quad	0x3fb35b5fa22706d5              # double 0.075613
	.quad	0x4023769835158b82              # double 9.7316299999999991
	.quad	0x401fda1059ea5721              # double 7.9629529999999997
	.quad	0x401a53f9a49c2c1b              # double 6.5820069999999999
	.quad	0x4023a298cc144029              # double 9.8175720000000001
	.quad	0x4023b11e42e12620              # double 9.8459339999999997
	.quad	0x40203035dedf1e08              # double 8.0941609999999997
	.quad	0x4015fa847b24638d              # double 5.4946460000000004
	.quad	0x40208bd3c3611340              # double 8.2730999999999995
	.quad	0x3ff3615336deb95e              # double 1.2112609999999999
	.quad	0x40046dd3fe1975f3              # double 2.5536270000000001
	.quad	0x401190c8472c0e7c              # double 4.3913890000000002
	.quad	0x4009594d94078961              # double 3.1686049999999999
	.quad	0x40112c304ccee5ac              # double 4.2931530000000002
	.quad	0x400e123cc8de2ac3              # double 3.7589049999999999
	.quad	0x401194f7a919695e              # double 4.3954760000000004
	.quad	0x4022a82cb20fb225              # double 9.3284660000000006
	.quad	0x4023b27f5e84f095              # double 9.8486279999999997
	.quad	0x4023eea465a57647              # double 9.9660980000000005
	.quad	0x4018fabe27179bfe              # double 6.244866
	.quad	0x401ce5aea3161a1e              # double 7.2242990000000002
	.quad	0x400cb99806f26289              # double 3.5906220000000002
	.quad	0x3ffc41a79fec99f2              # double 1.7660290000000001
	.quad	0x3ff967c286f8ad25              # double 1.5878319999999999
	.quad	0x400d11d798d8a97a              # double 3.6337120000000001
	.quad	0x40155da6a4441787              # double 5.341456
	.quad	0x402006c3dab5c39c              # double 8.0132130000000003
	.quad	0x40229621b7e0ac7e              # double 9.2932260000000007
	.quad	0x4010ba2014727dcc              # double 4.1817630000000001
	.quad	0x3ff38724b76f6d76              # double 1.220494
	.quad	0x401d25ddd2ae8e1d              # double 7.2869789999999997
	.quad	0x401bd361565c2d28              # double 6.9564260000000004
	.quad	0x4021c8d4bad7d7c3              # double 8.8922480000000004
	.quad	0x401fc6e158750c1c              # double 7.9442190000000004
	.quad	0x4002bcee17a02fb6              # double 2.3422510000000001
	.quad	0x3fe8697d06bbdbe4              # double 0.76287700000000002
	.quad	0x401e282730c67169              # double 7.539212
	.quad	0x4021d999567dbb17              # double 8.9249980000000004
	.quad	0x3fd35a8deb0fadf3              # double 0.302402
	.quad	0x401db68e820e6299              # double 7.4282779999999997
	.quad	0x400c18793dd97f63              # double 3.5119500000000001
	.quad	0x4007a023a6ce3583              # double 2.9531930000000002
	.quad	0x3fffe2f7b17ce52e              # double 1.992912
	.quad	0x40209683c297bfa5              # double 8.2939740000000004
	.quad	0x401ac5ce18266773              # double 6.6931690000000001
	.quad	0x4017bc432ca57a78              # double 5.9338499999999996
	.quad	0x40040626f60e0eb6              # double 2.5030039999999998
	.quad	0x4021e2074ea8da7f              # double 8.9414619999999996
	.quad	0x400b77204295a6c6              # double 3.4331670000000001
	.quad	0x4017ae1198aeb80f              # double 5.9199890000000002
	.quad	0x3ff25c0ca600b029              # double 1.147473
	.quad	0x3fe6d9c49774256c              # double 0.71408300000000002
	.quad	0x3fee4e789e774eec              # double 0.947079
	.quad	0x40041be6601bc98a              # double 2.5136229999999999
	.quad	0x401189fa54c55433              # double 4.3847440000000004
	.quad	0x4016ccbd556084a5              # double 5.6999409999999999
	.quad	0x401f443cc07aaef3              # double 7.8166380000000001
	.quad	0x401301c5c5718eb9              # double 4.7517310000000004
	.quad	0x40223c53d20f2bed              # double 9.1178270000000001
	.quad	0x3fbc768dfbd6a594              # double 0.11118400000000001
	.quad	0x4017db4b2fa93af7              # double 5.9641539999999997
	.quad	0x40234bc148344c38              # double 9.6479590000000001
	.quad	0x40234feda6612839              # double 9.6561099999999999
	.quad	0x4014826d4801f751              # double 5.12737
	.quad	0x40225a1b1960fa16              # double 9.1759880000000003
	.quad	0x40120262cba732df              # double 4.5023299999999997
	.quad	0x40162ad70e6f2e8c              # double 5.541836
	.quad	0x40024f95d4e8fb01              # double 2.2888600000000001
	.quad	0x40076cce5f7403de              # double 2.9281280000000001
	.quad	0x3ff0f304039abf34              # double 1.0593300000000001
	.quad	0x40189a708ede54b5              # double 6.1508200000000004
	.quad	0x40206a25fa658c4c              # double 8.2073210000000003
	.quad	0x40134a0d349be8ff              # double 4.8223159999999998
	.quad	0x400ebc5ef62f9ca6              # double 3.8419780000000001
	.quad	0x40218d62bf11f927              # double 8.7761440000000004
	.quad	0x40200eb09635610b              # double 8.0286910000000002
	.quad	0x40238e76427c7c52              # double 9.7782459999999993
	.quad	0x4012097cc39ffd61              # double 4.5092650000000001
	.quad	0x40126fe1da7b0b39              # double 4.6092599999999999
	.quad	0x40195cbff47735c2              # double 6.3405760000000004
	.quad	0x401b057e670e2c13              # double 6.7553650000000003
	.quad	0x4003759a30984e40              # double 2.432423
	.quad	0x4011b4a16a487336              # double 4.4263969999999997
	.quad	0x40034bc9cd3e0bd4              # double 2.4120059999999999
	.quad	0x4011cd184c271fff              # double 4.4502879999999996
	.quad	0x4002d3d5347a5b10              # double 2.353434
	.quad	0x4015fcaf709b738e              # double 5.4967629999999996
	.quad	0x40225564f97edc7f              # double 9.1667860000000001
	.quad	0x4021269ca9ef5233              # double 8.5754140000000003
	.quad	0x4023afecbb7f9d6f              # double 9.8436029999999998
	.quad	0x4019bd7a56de3327              # double 6.4350370000000003
	.quad	0x401f0e23af31b153              # double 7.763808
	.quad	0x40228b5d031055b9              # double 9.2721940000000007
	.quad	0x401c9e646f156191              # double 7.1546799999999999
	.quad	0x40158f1f14983d79              # double 5.389767
	.quad	0x40195197a24894c4              # double 6.3296799999999998
	.quad	0x401a1507a6bd6e8b              # double 6.520537
	.quad	0x401147f5a5332ad0              # double 4.3202730000000003
	.quad	0x40172a7daa4fca43              # double 5.7914950000000003
	.quad	0x40026422036006d1              # double 2.2988930000000001
	.quad	0x4020883afb7e9100              # double 8.2660750000000007
	.quad	0x401e756861e92924              # double 7.6146560000000001
	.quad	0x40109c6b05319829              # double 4.1527520000000004
	.quad	0x4009b44cbe1eb420              # double 3.2130369999999999
	.quad	0x3ffaffaa044ae85c              # double 1.6874180000000001
	.quad	0x40238a21ea359360              # double 9.7697900000000004
	.quad	0x4023065aff2a172b              # double 9.5124130000000004
	.quad	0x4012a91bc5586445              # double 4.6651449999999999
	.quad	0x401ca877681669cf              # double 7.1645180000000002
	.quad	0x3ff459578a2a90cd              # double 1.2718119999999999
	.quad	0x4004daacd9e83e42              # double 2.6067749999999998
	.quad	0x402309085f4a1273              # double 9.5176420000000003
	.quad	0x401d5134ce3de615              # double 7.3293030000000003
	.quad	0x400226b0d9513f8e              # double 2.2688920000000001
	.quad	0x401e1dbc664d3bf3              # double 7.529039
	.quad	0x40122cfd08d4bad8              # double 4.5439340000000001
	.quad	0x400ad335d249e450              # double 3.3531300000000002
	.quad	0x4000f810e8858ff7              # double 2.1211259999999998
	.quad	0x4020737b8d3f1844              # double 8.2255520000000004
	.quad	0x4020fb065f9591cd              # double 8.4902829999999998
	.quad	0x3fc95011904b3c3e              # double 0.19775599999999999
	.quad	0x4023dfdd65a14489              # double 9.9372360000000004
	.quad	0x4019605e5f30e7ff              # double 6.3441099999999997
	.quad	0x3fe37c9ff92f2b67              # double 0.60896300000000003
	.quad	0x402168398a654930              # double 8.7035640000000001
	.quad	0x401b1a89331a08c0              # double 6.7759140000000002
	.quad	0x40092f398e970718              # double 3.1480589999999999
	.quad	0x40195d7ba6698bb5              # double 6.3412920000000002
	.quad	0x400d41fd1569f490              # double 3.6572209999999998
	.quad	0x4016ca908a265f0f              # double 5.6978169999999997
	.quad	0x400c338b47c73eee              # double 3.5251679999999999
	.quad	0x4013fdc6195464dc              # double 4.9978259999999999
	.quad	0x4023f0de2ac32229              # double 9.9704449999999997
	.quad	0x400d2d6dc1a47a9e              # double 3.6471819999999999
	.quad	0x40238213e3e29308              # double 9.7540580000000005
	.quad	0x40222efa3fcc9eaa              # double 9.0917530000000006
	.quad	0x3ff2347d805e5f31              # double 1.137815
	.quad	0x4016f7ae5796bfcb              # double 5.7418760000000004
	.quad	0x4011e3fd50225743              # double 4.4726460000000001
	.quad	0x4004bcf91a32b12d              # double 2.5922719999999999
	.quad	0x4022a326bf8769ec              # double 9.3186549999999996
	.quad	0x400d89dc725c3dee              # double 3.6923149999999998
	.quad	0x400f4c5b078d92fb              # double 3.912283
	.quad	0x4010bbfb15b573eb              # double 4.1835750000000003
	.quad	0x4019bc471b478423              # double 6.4338649999999999
	.quad	0x401bc7d0f1f57b42              # double 6.9451330000000002
	.quad	0x4022d5ebd9018e75              # double 9.4178149999999991
	.quad	0x401e73354c12274a              # double 7.6125080000000001
	.quad	0x4005954866a11ec9              # double 2.697892
	.quad	0x401af8cc144028e5              # double 6.742966
	.quad	0x3fe0c4ed6fda836f              # double 0.52403900000000003
	.quad	0x3fffa699c7bcc294              # double 1.9781740000000001
	.quad	0x40108af20ea5b531              # double 4.1356890000000002
	.quad	0x4017ff559b3d07c8              # double 5.9993499999999997
	.quad	0x4022a68c26139000              # double 9.3252880000000004
	.quad	0x3ff663161a1db878              # double 1.3991910000000001
	.quad	0x3ff5488f861a60d4              # double 1.3302149999999999
	.quad	0x40109cd7cf5f4e44              # double 4.1531669999999998
	.quad	0x400b82595bbbe879              # double 3.438647
	.quad	0x40130aa0cae642c0              # double 4.7603790000000004
	.quad	0x4016ee321a2e7f6f              # double 5.7326129999999997
	.quad	0x40155f8fcd67fd3f              # double 5.3433219999999997
	.quad	0x3ff0be7e1fc08fa8              # double 1.0465070000000001
	.quad	0x400e736deb95e5b0              # double 3.806362
	.quad	0x4019fe785b5b7069              # double 6.4985059999999999
	.quad	0x402340e0c9d9d346              # double 9.6267150000000008
	.quad	0x401d957afea3df6e              # double 7.3959770000000002
	.quad	0x40223ea6a012599f              # double 9.1223650000000003
	.quad	0x401e4d694ccab3ee              # double 7.5755970000000001
	.quad	0x3ff0eaa087ca643d              # double 1.0572820000000001
	.quad	0x4018b8b7e4de3b8a              # double 6.1803889999999999
	.quad	0x4022f907faa044af              # double 9.4863890000000008
	.quad	0x401562d77318fc50              # double 5.3465249999999997
	.quad	0x401e740f66a55087              # double 7.6133399999999999
	.quad	0x40118f88765ba6f0              # double 4.3901690000000002
	.quad	0x402319650a45d420              # double 9.5495990000000006
	.quad	0x401092235b4edb2f              # double 4.1427129999999996
	.quad	0x401ab297396d0918              # double 6.6744050000000001
	.quad	0x4021da875d56f32c              # double 8.9268140000000002
	.quad	0x401ec8d1d8a54824              # double 7.6961130000000004
	.quad	0x3ff39bcba3012168              # double 1.225536
	.quad	0x401a1c2ca148ba84              # double 6.527514
	.quad	0x400f1cc964628028              # double 3.8890560000000001
	.quad	0x402135119ce075f7              # double 8.60365
	.quad	0x402284cdb7ae5797              # double 9.2593820000000004
	.quad	0x400d61975f2cb641              # double 3.6726519999999998
	.quad	0x400cdff0cbaf965b              # double 3.6093459999999999
	.quad	0x40230d86013660e5              # double 9.5264129999999997
	.quad	0x40108b4202d9cf14              # double 4.1359940000000002
	.quad	0x40129c28b2a6b0d9              # double 4.6524989999999997
	.quad	0x40190c5479d4d834              # double 6.262041
	.quad	0x40183b9884c6a3be              # double 6.0581990000000001
	.quad	0x4011ff13059641f6              # double 4.4990959999999998
	.quad	0x3ff9c904f6dfc5ce              # double 1.611577
	.quad	0x3ff4ab441bb8c32b              # double 1.2918130000000001
	.quad	0x40004226809d4952              # double 2.0323000000000002
	.quad	0x401b48b3b320535d              # double 6.8209980000000003
	.quad	0x40200f3dc054ef46              # double 8.0297680000000007
	.quad	0x3ff07383f0bae89f              # double 1.0282020000000001
	.quad	0x3ffaa4840e1719f8              # double 1.665165
	.quad	0x400a7cd7060bb2bc              # double 3.3109570000000001
	.quad	0x4021769b7bf1e8e6              # double 8.7316549999999999
	.quad	0x4022dd40cc78e9f7              # double 9.4321350000000006
	.quad	0x400d8d5a5b9628cc              # double 3.6940200000000001
	.quad	0x401066dc1a47a9e3              # double 4.1004490000000002
	.quad	0x4019ceb0318b9347              # double 6.4518440000000004
	.quad	0x40119eef5ec80c74              # double 4.4052100000000003
	.quad	0x3ffa0a90470a808d              # double 1.6275790000000001
	.quad	0x3fec3acb4289118c              # double 0.88217699999999998
	.quad	0x40154af859429175              # double 5.323213
	.quad	0x40235b8a7e73a366              # double 9.6787910000000004
	.quad	0x4020fbc31df761cc              # double 8.4917230000000003
	.quad	0x3fe947f562174c4d              # double 0.79003400000000001
	.quad	0x40207f809917939a              # double 8.2490279999999991
	.quad	0x3fdb288051c9f72f              # double 0.42434699999999997
	.quad	0x401a72877ee4e26d              # double 6.6118449999999998
	.quad	0x4014e327243137b0              # double 5.2218289999999996
	.quad	0x4001d51d68c692f7              # double 2.22906
	.quad	0x40128fb71fbc5dea              # double 4.6403470000000002
	.quad	0x3fed33cc4ac6cdaf              # double 0.91257299999999997
	.quad	0x40208fed41b75a75              # double 8.2811070000000004
	.quad	0x40016cb966be7afa              # double 2.1780879999999998
	.quad	0x402057e75bc44bf5              # double 8.1716870000000004
	.quad	0x3ff165a14488c60d              # double 1.0873120000000001
	.quad	0x4014e1a2a4db163c              # double 5.2203470000000003
	.quad	0x400ce096feb4a665              # double 3.6096629999999998
	.quad	0x401b12e0e30446b7              # double 6.7684360000000003
	.quad	0x401989c5e6ff7dfa              # double 6.384544
	.quad	0x40191e45c358afc4              # double 6.2795629999999996
	.quad	0x40083f4cb1897a68              # double 3.0309080000000002
	.quad	0x3fe03c7b45f17bd9              # double 0.50738300000000003
	.quad	0x4023497f62b6ae7d              # double 9.6435499999999994
	.quad	0x40110b91b3f20a74              # double 4.261298
	.quad	0x3ffd099e0e73604a              # double 1.814848
	.quad	0x40037f969e3c9689              # double 2.4372989999999999
	.quad	0x401fd56191148fda              # double 7.95838
	.quad	0x4015e604e1e71045              # double 5.474628
	.quad	0x3ffb58793dd97f63              # double 1.7091000000000001
	.quad	0x40210737fbefd007              # double 8.5140989999999999
	.quad	0x40213fbeb9e492bc              # double 8.6245019999999996
	.quad	0x400ea40af1cb89d7              # double 3.8300990000000001
	.quad	0x4021074299d883ba              # double 8.5141799999999996
	.quad	0x40147aceaaf35e31              # double 5.119929
	.quad	0x4013cc77dd872f34              # double 4.9496760000000002
	.quad	0x3ff6d212513b5bf7              # double 1.4262870000000001
	.quad	0x401eb461f9f01b86              # double 7.6761549999999996
	.quad	0x4003512dba4d6e48              # double 2.4146380000000001
	.quad	0x4010ecbd1244a622              # double 4.2311899999999998
	.quad	0x40003d35653c9abb              # double 2.029887
	.quad	0x400e0d0bb6ed6777              # double 3.75637
	.quad	0x40129f301eabbcb2              # double 4.6554570000000002
	.quad	0x4011f690de093533              # double 4.4907870000000001
	.quad	0x401caadf2ecf2064              # double 7.1668669999999999
	.quad	0x40238dca8e2e2b8c              # double 9.7769359999999991
	.quad	0x3fe6adb1e9f27781              # double 0.70870299999999997
	.quad	0x4005ae5471715c64              # double 2.7101220000000001
	.quad	0x401ccffd60e94ee4              # double 7.2031150000000004
	.quad	0x401642a454de7ea6              # double 5.56508
	.quad	0x402363ade225fa66              # double 9.6946860000000008
	.quad	0x4018c7cd466f501a              # double 6.195119
	.quad	0x401121244a6223e2              # double 4.2823650000000004
	.quad	0x4014d3da72a7bd49              # double 5.2068880000000002
	.quad	0x40170d551d68c693              # double 5.76302
	.quad	0x4022f9b5e95b78cd              # double 9.4877160000000007
	.quad	0x402246a465a57647              # double 9.1379730000000006
	.quad	0x402394be40420f6f              # double 9.7905139999999999
	.quad	0x40029069a4df47fa              # double 2.3205140000000002
	.quad	0x401d579fa97e132b              # double 7.3355699999999997
	.quad	0x402329496249a134              # double 9.5806380000000004
	.quad	0x4021e47da1ec4e72              # double 8.9462709999999994
	.quad	0x400f97b41bfbdf09              # double 3.949074
	.quad	0x4020d571d1d4738a              # double 8.4168839999999996
	.quad	0x40171152b0a6fc59              # double 5.7669170000000003
	.quad	0x4017bd3c792d1288              # double 5.9348010000000002
	.quad	0x402015d2f1a9fbe7              # double 8.0426249999999992
	.quad	0x4010bef73c0c1fc9              # double 4.18649
	.quad	0x3ff8fb645a1cac08              # double 1.561375
	.quad	0x3fb6831ad2135dab              # double 0.087938000000000002
	.quad	0x4006726202539757              # double 2.8058510000000001
	.quad	0x40217b083558a761              # double 8.740297
	.quad	0x4015f2f944241c3f              # double 5.487279
	.quad	0x4017a359791819d2              # double 5.9095209999999998
	.quad	0x400b1a5b0ff10ecb              # double 3.3878689999999998
	.quad	0x401a64827b6fe2e7              # double 6.5981540000000001
	.quad	0x4022651a21ea3593              # double 9.1974649999999993
	.quad	0x401bc887229e9079              # double 6.9458279999999997
	.quad	0x400accf52b90a783              # double 3.3500770000000002
	.quad	0x400365b291b823c8              # double 2.4246569999999998
	.quad	0x401dbb46fdeb52ca              # double 7.4328880000000002
	.quad	0x3ffb8661ae70c133              # double 1.7203079999999999
	.quad	0x40150105186db50f              # double 5.2509959999999998
	.quad	0x4022e799e518f3ed              # double 9.4523460000000003
	.quad	0x40138b9cf9a06a6e              # double 4.8863409999999998
	.quad	0x401de6451b93037d              # double 7.4748729999999997
	.quad	0x4013a90ea9e6eeb7              # double 4.915095
	.quad	0x40136608d08919f0              # double 4.8496430000000004
	.quad	0x40230ad7d7c2ca15              # double 9.5211780000000008
	.quad	0x3feb6e5eedcc20d5              # double 0.85722299999999996
	.quad	0x40080cbe1eb4202e              # double 3.0062220000000002
	.quad	0x3ffca2877ee4e26d              # double 1.7896799999999999
	.quad	0x401a6b5bf6a0dbad              # double 6.6048429999999998
	.quad	0x40226da16616b54e              # double 9.2141219999999997
	.quad	0x4000756b00ffda40              # double 2.0573329999999999
	.quad	0x402110eb24a6a876              # double 8.5330440000000003
	.quad	0x4016a10b1feeb2d1              # double 5.6572690000000003
	.quad	0x3ff19600f345069a              # double 1.0991219999999999
	.quad	0x3fe7e25204af9229              # double 0.74637699999999996
	.quad	0x3ff453eb399f5dff              # double 1.2704880000000001
	.quad	0x40172d86a8fc0d2c              # double 5.7944589999999998
	.quad	0x4017383d35eb7458              # double 5.8049210000000002
	.quad	0x40167fa0d77b7c78              # double 5.6246369999999999
	.quad	0x4023040096feb4a6              # double 9.5078169999999993
	.quad	0x3fc71e9f2778140e              # double 0.180622
	.quad	0x4020b2658c4bd33d              # double 8.3484309999999997
	.quad	0x4022d1cffeb074a7              # double 9.4097899999999992
	.quad	0x4019731a08bfc222              # double 6.3624039999999997
	.quad	0x4003d43f1c75818c              # double 2.4786359999999998
	.quad	0x4010bcbc48f10a9a              # double 4.1843120000000003
	.quad	0x4003c8a697aeddce              # double 2.4729739999999998
	.quad	0x401895bab21815a0              # double 6.1462199999999996
	.quad	0x400a4e1bd1ed9dfe              # double 3.2881390000000001
	.quad	0x40145a2d72ffd1dd              # double 5.0880640000000001
	.quad	0x40185f46ed245b29              # double 6.0930439999999999
	.quad	0x401f03c0c1fc8f32              # double 7.7536649999999998
	.quad	0x3feb54cfd08d4bad              # double 0.85410299999999995
	.quad	0x401e018ac9f2fdb9              # double 7.501506
	.quad	0x3fff6e46cfc829d0              # double 1.964423
	.quad	0x4007fdc37a3db3c0              # double 2.9989080000000001
	.quad	0x401717c393682731              # double 5.7732070000000002
	.quad	0x4022a4cad57bc7f7              # double 9.3218599999999991
	.quad	0x3ff4752eb5f5f0b3              # double 1.2786090000000001
	.quad	0x4012c06fef7c243e              # double 4.6879270000000002
	.quad	0x3fdf77d955714b9d              # double 0.49169000000000002
	.quad	0x401cb8e10cf5b1c8              # double 7.1805459999999997
	.quad	0x401dcc2a02320968              # double 7.4493790000000004
	.quad	0x4020662089e34331              # double 8.1994670000000003
	.quad	0x401832a80064a9ce              # double 6.0494690000000002
	.quad	0x401f856323bbc6eb              # double 7.8802609999999999
	.quad	0x3ff076eb4e981388              # double 1.0290330000000001
	.quad	0x40219e6490a350d3              # double 8.8093610000000009
	.quad	0x400427d805e5f30e              # double 2.5194549999999998
	.quad	0x402313f3e0370cdd              # double 9.5389700000000008
	.quad	0x401b4f0563ed0f62              # double 6.8271689999999996
	.quad	0x40102ce24bba12b6              # double 4.0438320000000001
	.quad	0x402159ab29e4d5d8              # double 8.6751339999999999
	.quad	0x3ffbd8a116659d13              # double 1.740388
	.quad	0x401950791c4b9021              # double 6.3285869999999997
	.quad	0x4006676ea4228998              # double 2.8005040000000001
	.quad	0x3ff71bc23315d702              # double 1.444277
	.quad	0x40224f0329802c0a              # double 9.1543209999999995
	.quad	0x3fe7a88ce703afb8              # double 0.73932500000000001
	.quad	0x40106e0ef99806f2              # double 4.1074789999999997
	.quad	0x40236b22f2734f83              # double 9.709251
	.quad	0x3fe2c4f7ec3547e0              # double 0.58654399999999995
	.quad	0x400d84d5d80e496f              # double 3.6898610000000001
	.quad	0x3fd345132f87ad08              # double 0.301091
	.quad	0x4015eebd9018e758              # double 5.4831450000000004
	.quad	0x4005f4d1e96c3fc4              # double 2.7445409999999999
	.quad	0x4014b038e29f9ce9              # double 5.1720920000000001
	.quad	0x4004554195cc857f              # double 2.5416289999999999
	.quad	0x4014712839042d8c              # double 5.1105049999999999
	.quad	0x401963526527a205              # double 6.3469939999999996
	.quad	0x40177e6e221c8a7a              # double 5.8734669999999998
	.quad	0x4014c37eb28d8666              # double 5.1909130000000001
	.quad	0x40110ba7fc32ebe6              # double 4.2613830000000004
	.quad	0x401d64c33b539325              # double 7.348401
	.quad	0x4016a28e0c9d9d34              # double 5.6587449999999997
	.quad	0x40027a8a3f8982cb              # double 2.3098339999999999
	.quad	0x3ff40c47a17f4129              # double 1.2529980000000001
	.quad	0x4019e305d95dd4c7              # double 6.4717019999999996
	.quad	0x401668e15011904b              # double 5.6024219999999998
	.quad	0x4022b0092ccf6be3              # double 9.3438199999999991
	.quad	0x3fd34228997c3d68              # double 0.30091299999999999
	.quad	0x40112d60e94ee393              # double 4.2943150000000001
	.quad	0x40058bf0995aaf79              # double 2.69333
	.quad	0x40186a322af57710              # double 6.103707
	.quad	0x4006c05d52c16df4              # double 2.843928
	.quad	0x3fa7ee4e26d4801f              # double 0.046739999999999997
	.quad	0x401a4f6cefed6345              # double 6.5775639999999997
	.quad	0x4015218def416bdb              # double 5.2827679999999999
	.quad	0x40224b7c3504c48b              # double 9.1474320000000002
	.quad	0x4014202ababead4f              # double 5.0314129999999997
	.size	.L__constant_3500xf64, 28000

	.section	".note.GNU-stack","",@progbits
