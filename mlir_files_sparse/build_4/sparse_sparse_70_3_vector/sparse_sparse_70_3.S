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
	.quad	0x413794cc31d3cbc5              # double 1545420.1946380001
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
	.quad	3000                            # 0xbb8
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	3000                            # 0xbb8
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
	lui	a7, %hi(.L__constant_3000xindex)
	addi	a7, a7, %lo(.L__constant_3000xindex)
	lui	t0, %hi(.L__constant_3000xf64)
	addi	t0, t0, %lo(.L__constant_3000xf64)
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
	.quad	54                              # 0x36
	.quad	76                              # 0x4c
	.quad	96                              # 0x60
	.quad	144                             # 0x90
	.quad	172                             # 0xac
	.quad	194                             # 0xc2
	.quad	247                             # 0xf7
	.quad	267                             # 0x10b
	.quad	290                             # 0x122
	.quad	342                             # 0x156
	.quad	359                             # 0x167
	.quad	381                             # 0x17d
	.quad	431                             # 0x1af
	.quad	445                             # 0x1bd
	.quad	467                             # 0x1d3
	.quad	525                             # 0x20d
	.quad	547                             # 0x223
	.quad	566                             # 0x236
	.quad	611                             # 0x263
	.quad	632                             # 0x278
	.quad	651                             # 0x28b
	.quad	698                             # 0x2ba
	.quad	724                             # 0x2d4
	.quad	749                             # 0x2ed
	.quad	792                             # 0x318
	.quad	810                             # 0x32a
	.quad	828                             # 0x33c
	.quad	882                             # 0x372
	.quad	904                             # 0x388
	.quad	932                             # 0x3a4
	.quad	977                             # 0x3d1
	.quad	998                             # 0x3e6
	.quad	1016                            # 0x3f8
	.quad	1063                            # 0x427
	.quad	1085                            # 0x43d
	.quad	1105                            # 0x451
	.quad	1158                            # 0x486
	.quad	1180                            # 0x49c
	.quad	1198                            # 0x4ae
	.quad	1247                            # 0x4df
	.quad	1267                            # 0x4f3
	.quad	1287                            # 0x507
	.quad	1335                            # 0x537
	.quad	1358                            # 0x54e
	.quad	1388                            # 0x56c
	.quad	1433                            # 0x599
	.quad	1458                            # 0x5b2
	.quad	1477                            # 0x5c5
	.quad	1524                            # 0x5f4
	.quad	1547                            # 0x60b
	.quad	1569                            # 0x621
	.quad	1619                            # 0x653
	.quad	1646                            # 0x66e
	.quad	1663                            # 0x67f
	.quad	1704                            # 0x6a8
	.quad	1725                            # 0x6bd
	.quad	1742                            # 0x6ce
	.quad	1794                            # 0x702
	.quad	1808                            # 0x710
	.quad	1819                            # 0x71b
	.quad	1874                            # 0x752
	.quad	1894                            # 0x766
	.quad	1914                            # 0x77a
	.quad	1964                            # 0x7ac
	.quad	1985                            # 0x7c1
	.quad	2002                            # 0x7d2
	.quad	2048                            # 0x800
	.quad	2074                            # 0x81a
	.quad	2090                            # 0x82a
	.quad	2135                            # 0x857
	.quad	2153                            # 0x869
	.quad	2169                            # 0x879
	.quad	2218                            # 0x8aa
	.quad	2232                            # 0x8b8
	.quad	2254                            # 0x8ce
	.quad	2296                            # 0x8f8
	.quad	2319                            # 0x90f
	.quad	2339                            # 0x923
	.quad	2386                            # 0x952
	.quad	2410                            # 0x96a
	.quad	2428                            # 0x97c
	.quad	2476                            # 0x9ac
	.quad	2497                            # 0x9c1
	.quad	2516                            # 0x9d4
	.quad	2565                            # 0xa05
	.quad	2584                            # 0xa18
	.quad	2609                            # 0xa31
	.quad	2659                            # 0xa63
	.quad	2684                            # 0xa7c
	.quad	2698                            # 0xa8a
	.quad	2745                            # 0xab9
	.quad	2769                            # 0xad1
	.quad	2792                            # 0xae8
	.quad	2838                            # 0xb16
	.quad	2853                            # 0xb25
	.quad	2872                            # 0xb38
	.quad	2919                            # 0xb67
	.quad	2937                            # 0xb79
	.quad	2952                            # 0xb88
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
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
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
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
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
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
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
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
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
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
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
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
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	0                               # 0x0
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
	.quad	31                              # 0x1f
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
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	32                              # 0x20
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	35                              # 0x23
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
	.quad	64                              # 0x40
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
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	54                              # 0x36
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
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
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	75                              # 0x4b
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
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
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
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
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
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
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	24                              # 0x18
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	41                              # 0x29
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
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
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	33                              # 0x21
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	87                              # 0x57
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
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
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	35                              # 0x23
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	40                              # 0x28
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
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
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x400d026e5471715c              # double 3.6261869999999998
	.quad	0x400d1d95dd4c76d1              # double 3.639446
	.quad	0x4009d7ed41b75a75              # double 3.2304330000000001
	.quad	0x4011a9695d91ab8f              # double 4.4154410000000004
	.quad	0x4023739c94f69caa              # double 9.7258040000000001
	.quad	0x40231c267839cd81              # double 9.5549809999999997
	.quad	0x402393f83382e44b              # double 9.7890029999999992
	.quad	0x3ffe9b6f5caf2d80              # double 1.9129480000000001
	.quad	0x401af84167a95c85              # double 6.7424369999999998
	.quad	0x3ff6accd530489d2              # double 1.4171879999999999
	.quad	0x4019a98eda22f6a5              # double 6.415584
	.quad	0x3ffcc4449dbec248              # double 1.797917
	.quad	0x4011d94ff0025bfb              # double 4.4622190000000002
	.quad	0x4016874a3400b88d              # double 5.6321190000000003
	.quad	0x4014d3b96af038e3              # double 5.2067620000000003
	.quad	0x3ff1d14d2f5dbb9d              # double 1.113599
	.quad	0x402065feb8d82342              # double 8.1992089999999997
	.quad	0x4020e7b41bfbdf09              # double 8.4525459999999999
	.quad	0x402070fcf80dc337              # double 8.2206799999999998
	.quad	0x401b6841ede1198b              # double 6.8518140000000001
	.quad	0x4002259641f64495              # double 2.2683529999999998
	.quad	0x4008b62f166e008f              # double 3.0889570000000002
	.quad	0x401bb134ce3de615              # double 6.9230530000000003
	.quad	0x3fdf49235f809918              # double 0.48883900000000002
	.quad	0x40225cf6be37de94              # double 9.1815700000000006
	.quad	0x402021dc725c3dee              # double 8.0661349999999992
	.quad	0x4021b85b39e279dd              # double 8.8600709999999996
	.quad	0x40118118c197e564              # double 4.3760709999999996
	.quad	0x401ab3cab81f969e              # double 6.6755779999999998
	.quad	0x40190de5082cf52c              # double 6.2635690000000004
	.quad	0x402210dd82fd75e2              # double 9.03294
	.quad	0x401c4bf9830e3cda              # double 7.0741940000000003
	.quad	0x4021f9cc96462802              # double 8.9878889999999991
	.quad	0x4022bd3543aeab7a              # double 9.3695470000000007
	.quad	0x40130301a79fec9a              # double 4.752936
	.quad	0x4017a0ae536501e2              # double 5.9069149999999997
	.quad	0x4022f59685122318              # double 9.4796639999999996
	.quad	0x4012dbb384fd2a63              # double 4.7145520000000003
	.quad	0x4004e4b2b777d0f2              # double 2.611669
	.quad	0x3fee15464dc22ab2              # double 0.94009699999999996
	.quad	0x4023c69984a0e411              # double 9.8878900000000005
	.quad	0x400aab2e9ccb7d41              # double 3.3335849999999998
	.quad	0x401cad141a6937d2              # double 7.169022
	.quad	0x4000c7064ece9a2c              # double 2.0971799999999998
	.quad	0x400b5f8012dfd695              # double 3.4216310000000001
	.quad	0x402038461f9f01b8              # double 8.1099099999999993
	.quad	0x3fc12391d57ff9b5              # double 0.13389799999999999
	.quad	0x4013544955b4677b              # double 4.8323109999999998
	.quad	0x4014e7bcc2938de7              # double 5.2263060000000001
	.quad	0x40223e7c286f8ad2              # double 9.1220409999999994
	.quad	0x40005c8d9f9053a0              # double 2.0451920000000001
	.quad	0x40135d7e02645e4e              # double 4.8413009999999996
	.quad	0x401084b05b7cfe58              # double 4.1295789999999997
	.quad	0x4023d8c0f01fb82c              # double 9.9233469999999996
	.quad	0x3ffde871a3b14a90              # double 1.8692489999999999
	.quad	0x4018fb9baa1511e0              # double 6.245711
	.quad	0x401d2ce1c58255b0              # double 7.2938299999999998
	.quad	0x40164d86ec17ebaf              # double 5.5757099999999999
	.quad	0x400c8bc05d52c16e              # double 3.568238
	.quad	0x401b95b4245f5ad9              # double 6.8961949999999996
	.quad	0x4013b4f6598e10cf              # double 4.9267209999999997
	.quad	0x4001c2c881e4712e              # double 2.2201089999999999
	.quad	0x400a239b456b441c              # double 3.2673860000000001
	.quad	0x4020a7c3b4f61672              # double 8.3276649999999997
	.quad	0x4022aae5796bfca8              # double 9.3337819999999993
	.quad	0x40178f2495e17e35              # double 5.8897880000000002
	.quad	0x401ea8201cd5f99c              # double 7.6641849999999998
	.quad	0x40137a1ec4e7253e              # double 4.8692580000000003
	.quad	0x40228e1522a6f3f5              # double 9.2775049999999997
	.quad	0x4021bc71b4784231              # double 8.868055
	.quad	0x4019738151a43782              # double 6.3627979999999997
	.quad	0x401371b21c475e63              # double 4.8610309999999997
	.quad	0x4003a2be0589acbd              # double 2.4544640000000002
	.quad	0x401d6f7d30ad46f6              # double 7.3588760000000004
	.quad	0x401f53fb7a5f41af              # double 7.832014
	.quad	0x401466ac215b9a5b              # double 5.1002660000000004
	.quad	0x3ff7d45308bb9064              # double 1.4893369999999999
	.quad	0x4004c9fe86833c60              # double 2.59863
	.quad	0x4020803d790752db              # double 8.2504690000000007
	.quad	0x4021dbd0e12e83a1              # double 8.9293279999999999
	.quad	0x4017172756861e93              # double 5.7726110000000004
	.quad	0x401ba8e2e2b8c75c              # double 6.9149279999999997
	.quad	0x4023e1ea9a3d2d88              # double 9.941243
	.quad	0x40168b845564b663              # double 5.636247
	.quad	0x40203ae85b9e8c48              # double 8.1150540000000007
	.quad	0x40011dc054ef459e              # double 2.1395270000000002
	.quad	0x400933700474d9c7              # double 3.1501160000000001
	.quad	0x400c1eebb341e14c              # double 3.5150980000000001
	.quad	0x40203708aac96cc6              # double 8.107488
	.quad	0x4009c49b1fab96f2              # double 3.2209989999999999
	.quad	0x4004970691ea78af              # double 2.5737429999999999
	.quad	0x3fec003254e6e222              # double 0.87502400000000002
	.quad	0x3ff2e15011904b3c              # double 1.1800079999999999
	.quad	0x4000fa6d698fe692              # double 2.1222789999999998
	.quad	0x3ff33fb7a5f41aef              # double 1.2030559999999999
	.quad	0x40035df00abf76a3              # double 2.420868
	.quad	0x401d4192641b328b              # double 7.3140349999999996
	.quad	0x4022e058bc59b802              # double 9.4381769999999996
	.quad	0x4021c6ed45e9185d              # double 8.8885290000000001
	.quad	0x40059caf2d7f950c              # double 2.7015060000000002
	.quad	0x40210c896dd26b72              # double 8.5244859999999996
	.quad	0x40196eebf65dbfcf              # double 6.3583220000000003
	.quad	0x4022be11dbca9692              # double 9.3712300000000006
	.quad	0x40157eb074a771c9              # double 5.3737199999999996
	.quad	0x4021049f94855da2              # double 8.5090299999999992
	.quad	0x401068dde7a743a6              # double 4.1024089999999998
	.quad	0x4011afc0d2c386d3              # double 4.4216340000000001
	.quad	0x40101dc69f8c21e2              # double 4.0290780000000002
	.quad	0x3ff6500a393ee5ef              # double 1.394541
	.quad	0x3fdb943e10060781              # double 0.430923
	.quad	0x4013bb3354c12275              # double 4.9328130000000003
	.quad	0x4011b92f6e82949a              # double 4.4308449999999997
	.quad	0x400081144cbe1eb4              # double 2.0630269999999999
	.quad	0x3ff3ff52fc2656ac              # double 1.249835
	.quad	0x401923cafb3b7521              # double 6.2849539999999999
	.quad	0x40110eaaf35e310e              # double 4.2643240000000002
	.quad	0x3ff50677b395c422              # double 1.314079
	.quad	0x3ff7039cd8127b2d              # double 1.438382
	.quad	0x3ff3d87a4a48f96e              # double 1.240351
	.quad	0x4007c5cfede97d07              # double 2.9715880000000001
	.quad	0x400bb22e1ac57e24              # double 3.462002
	.quad	0x401b47585be1a826              # double 6.8196729999999999
	.quad	0x40093fc0096feb4a              # double 3.1561279999999998
	.quad	0x4022ecda9003eea2              # double 9.4626049999999999
	.quad	0x3fe650df15a4acf3              # double 0.69737199999999999
	.quad	0x4023f25093964a5a              # double 9.9732710000000004
	.quad	0x400c50e0a84be404              # double 3.5394909999999999
	.quad	0x4012cdfa871a3b15              # double 4.7011510000000003
	.quad	0x401296e503fb3743              # double 4.6473579999999997
	.quad	0x400b322ea0fd3b2a              # double 3.3995030000000002
	.quad	0x401672eb1c432ca5              # double 5.6122249999999996
	.quad	0x3fe48f041461b6d4              # double 0.64245799999999997
	.quad	0x400f35be5d9e40c8              # double 3.9012419999999999
	.quad	0x40100be7afa72218              # double 4.0116259999999997
	.quad	0x3fe4864020817fc7              # double 0.64138799999999996
	.quad	0x401ca196d8f4f93c              # double 7.1578020000000002
	.quad	0x3ffc4d130df9bdc7              # double 1.7688170000000001
	.quad	0x4022577e1b8ed1bf              # double 9.1708839999999991
	.quad	0x3ff0d003eea209ab              # double 1.0507850000000001
	.quad	0x401002f05a708ede              # double 4.0028699999999997
	.quad	0x40229ec3b927d45a              # double 9.3100869999999993
	.quad	0x40029a83f4eca687              # double 2.325447
	.quad	0x4011ff127f5e84f1              # double 4.4990940000000004
	.quad	0x4018e0b524399b2c              # double 6.2194409999999998
	.quad	0x4023428997c3d684              # double 9.6299559999999999
	.quad	0x4016d74e65bea0ba              # double 5.7102599999999999
	.quad	0x4015215ad106ee31              # double 5.2825730000000002
	.quad	0x400a98b47c73eee5              # double 3.3245629999999999
	.quad	0x40079c50ce4ead0c              # double 2.9513259999999999
	.quad	0x402228d7be9856a3              # double 9.0797709999999991
	.quad	0x4022bbf4cb1897a6              # double 9.3671019999999992
	.quad	0x40214420d5629d84              # double 8.6330629999999999
	.quad	0x3fe1f9d909f1f14a              # double 0.56174900000000005
	.quad	0x401cb6db940fecdd              # double 7.178572
	.quad	0x40086d7a56de3327              # double 3.0534560000000002
	.quad	0x4012227e5215768a              # double 4.5336850000000002
	.quad	0x4021075b1c864884              # double 8.514367
	.quad	0x402228dc33721d54              # double 9.0798050000000003
	.quad	0x3fee8e4b87bdcf03              # double 0.95487
	.quad	0x3fe764ef0281ba80              # double 0.73107100000000003
	.quad	0x4021f2ed1394317b              # double 8.9744650000000004
	.quad	0x40084c942d490e67              # double 3.0373920000000001
	.quad	0x400f1d21ff2e48e9              # double 3.8892250000000002
	.quad	0x400055970b49e01e              # double 2.0417920000000001
	.quad	0x4002f87f88765ba7              # double 2.371337
	.quad	0x40205551f81a5871              # double 8.1666410000000003
	.quad	0x4017973083558a76              # double 5.8976459999999999
	.quad	0x401c748b65237048              # double 7.1138130000000004
	.quad	0x3ff2d98288051c9f              # double 1.1781029999999999
	.quad	0x40171d5bee3d5fdd              # double 5.7786710000000001
	.quad	0x4007322962cfd8f1              # double 2.8994930000000001
	.quad	0x4020b6fd21ff2e49              # double 8.3574000000000002
	.quad	0x4023b1d909f1f14a              # double 9.8473590000000009
	.quad	0x400e917bd8be7297              # double 3.821037
	.quad	0x3ffd53868fd199bb              # double 1.832892
	.quad	0x4003c70eb24a6a87              # double 2.4721959999999998
	.quad	0x40193118c197e564              # double 6.2979459999999996
	.quad	0x40137c7219220ff5              # double 4.8715289999999998
	.quad	0x40235b3d4ae429e1              # double 9.6782020000000006
	.quad	0x4014c427c7c5260f              # double 5.1915579999999997
	.quad	0x401066cb5350092d              # double 4.1003850000000002
	.quad	0x400c079dd3bafd97              # double 3.5037189999999998
	.quad	0x3feb73519bd4067d              # double 0.85782700000000001
	.quad	0x401b1eb399f5dfec              # double 6.7799820000000004
	.quad	0x400d686ad2dcb146              # double 3.6759849999999998
	.quad	0x400114c1a8ac5c14              # double 2.135135
	.quad	0x400e70c77dd872f3              # double 3.8050679999999999
	.quad	0x4005b04ddb5525cc              # double 2.7110859999999999
	.quad	0x4015b550870110a1              # double 5.4270649999999998
	.quad	0x4008cc6de76427c8              # double 3.0998190000000001
	.quad	0x3ffb1f2452c59fb2              # double 1.695103
	.quad	0x4023c7202107b784              # double 9.8889169999999992
	.quad	0x3ff779ef0f16f438              # double 1.4672689999999999
	.quad	0x3fee74213a0c6b48              # double 0.95167599999999996
	.quad	0x40221d55c52e72da              # double 9.0572949999999999
	.quad	0x40166054690de093              # double 5.5940719999999997
	.quad	0x3ffb9bca9691a75d              # double 1.725535
	.quad	0x400d42699c7bcc29              # double 3.6574279999999999
	.quad	0x4010b84a515ce9e6              # double 4.1799710000000001
	.quad	0x40134a1e3eaf6838              # double 4.822381
	.quad	0x401c6309c7ffde72              # double 7.0967169999999999
	.quad	0x4004390b84988095              # double 2.527854
	.quad	0x40141ae03b3e9a70              # double 5.0262460000000004
	.quad	0x4021fef6f8f04146              # double 8.9979779999999998
	.quad	0x4000c54c55432874              # double 2.0963370000000001
	.quad	0x4015fd84901d1915              # double 5.4975759999999996
	.quad	0x401d1e414e7ee914              # double 7.2795459999999999
	.quad	0x3ff9fc903ea704bc              # double 1.624161
	.quad	0x4022927dcbddb984              # double 9.2861159999999998
	.quad	0x401a90b178b37004              # double 6.6413019999999996
	.quad	0x401d3e84f09528f2              # double 7.3110540000000004
	.quad	0x401c47574f722e1b              # double 7.0696690000000002
	.quad	0x401ec022dd7a99fa              # double 7.6876329999999999
	.quad	0x3ffcbce2089e3433              # double 1.796114
	.quad	0x4007545308bb9064              # double 2.9161739999999998
	.quad	0x40173d7774aba387              # double 5.8100259999999997
	.quad	0x3fede555c52e72da              # double 0.93424499999999999
	.quad	0x401f965625a682b6              # double 7.8968129999999999
	.quad	0x400886defc7a3982              # double 3.065855
	.quad	0x40118fce746cb967              # double 4.3904360000000002
	.quad	0x3fe96b6bf444e0db              # double 0.79436300000000004
	.quad	0x3fc38c2a454de7ea              # double 0.15271499999999999
	.quad	0x40232aebe596c82e              # double 9.583831
	.quad	0x400cbe9424e59296              # double 3.5930559999999998
	.quad	0x40106ba908a265f1              # double 4.105137
	.quad	0x4017b03d9a95421c              # double 5.92211
	.quad	0x3fe98d801b435265              # double 0.79852299999999998
	.quad	0x40137270b06c43f6              # double 4.861758
	.quad	0x4004dd0b73d188f4              # double 2.6079319999999999
	.quad	0x401daefae7924af1              # double 7.4208790000000002
	.quad	0x401eb0c6f7a0b5ee              # double 7.6726340000000004
	.quad	0x400adcfb3311a544              # double 3.357901
	.quad	0x3ff5b3061c79b34a              # double 1.3562069999999999
	.quad	0x4000757eed45e918              # double 2.0573709999999998
	.quad	0x401b5f5903a7546d              # double 6.8431129999999998
	.quad	0x3fe9bc3c5bd0e12f              # double 0.80422800000000005
	.quad	0x400662949a5657fb              # double 2.7981349999999998
	.quad	0x4018825204af9229              # double 6.1272659999999997
	.quad	0x401375232d2bb235              # double 4.8643919999999996
	.quad	0x3ffcb2239e6ab9b2              # double 1.7934909999999999
	.quad	0x401e9ccdd93c46d8              # double 7.6531289999999998
	.quad	0x400d290364388ebd              # double 3.6450260000000001
	.quad	0x3fbce086bdf4c2b5              # double 0.112801
	.quad	0x401d8acc0bdcad15              # double 7.3855440000000003
	.quad	0x4000a84f8f8a4c1f              # double 2.0821830000000001
	.quad	0x3fc586013660e51d              # double 0.168152
	.quad	0x40114901d19157ac              # double 4.3212960000000002
	.quad	0x4012ed55a3a08399              # double 4.7317720000000003
	.quad	0x4020991c6d1e108c              # double 8.2990449999999995
	.quad	0x401659da16616b55              # double 5.5877460000000001
	.quad	0x3fbcc0485a0be511              # double 0.11230900000000001
	.quad	0x401188eb0318b934              # double 4.3837089999999996
	.quad	0x3ffef6fd21ff2e49              # double 1.9353
	.quad	0x4010b56b87379746              # double 4.177168
	.quad	0x401f228d002e2329              # double 7.783741
	.quad	0x4022e1ebe9c88616              # double 9.4412529999999997
	.quad	0x40158fe64f54d1e9              # double 5.3905269999999996
	.quad	0x40200230984e3fff              # double 8.0042770000000001
	.quad	0x401d162f5989df11              # double 7.2716649999999996
	.quad	0x401eb6634117f844              # double 7.6781129999999997
	.quad	0x40128989df1172ef              # double 4.634315
	.quad	0x3fdf640a6b93ccd1              # double 0.490481
	.quad	0x3fefa6dce39b456b              # double 0.98911899999999997
	.quad	0x40130d2c386d2ed8              # double 4.7628640000000004
	.quad	0x3fd81cb46bacf744              # double 0.37675199999999998
	.quad	0x4010d88c1db0142f              # double 4.2114719999999997
	.quad	0x40122a12f901083e              # double 4.5410880000000002
	.quad	0x4013a6de33269df9              # double 4.9129569999999996
	.quad	0x40231d35eb7457c1              # double 9.5570520000000005
	.quad	0x3fe6179e16d6dc1a              # double 0.69038299999999997
	.quad	0x400b17d41743e964              # double 3.3866350000000001
	.quad	0x3ff0477ee4e26d48              # double 1.017455
	.quad	0x40100c66d373affb              # double 4.012111
	.quad	0x400b2bdcad14a0a1              # double 3.396417
	.quad	0x3fe789f83be6601c              # double 0.73559200000000002
	.quad	0x401031511dffc548              # double 4.0481610000000003
	.quad	0x3fb8d62bf11f926c              # double 0.097017999999999993
	.quad	0x401df6b00ffda405              # double 7.4909059999999998
	.quad	0x40093b79d909f1f1              # double 3.1540409999999999
	.quad	0x4020025b9628cbd1              # double 8.0046049999999997
	.quad	0x400199389b52007e              # double 2.1998150000000001
	.quad	0x40135b074a771c97              # double 4.8388949999999999
	.quad	0x3fff91394317acc5              # double 1.972955
	.quad	0x3ff7b9e7b80a9de9              # double 1.4828870000000001
	.quad	0x4016e3d3e4ef0282              # double 5.7224880000000002
	.quad	0x3fd7e43ed959a30a              # double 0.37330600000000003
	.quad	0x3ff7522a6f3f52fc              # double 1.45756
	.quad	0x401f2d9a95421c04              # double 7.7945349999999998
	.quad	0x401af16f86a09891              # double 6.7357769999999997
	.quad	0x4019e26fa3fcc9eb              # double 6.4711290000000004
	.quad	0x401f585510d38cda              # double 7.8362619999999996
	.quad	0x4009ad5f99c38b05              # double 3.2096550000000001
	.quad	0x40056f06b37867f1              # double 2.6792120000000001
	.quad	0x4008e3bc4d22c882              # double 3.111199
	.quad	0x3fe2ce0114d2f5dc              # double 0.58764700000000003
	.quad	0x3ff2df59ccfaeff6              # double 1.179529
	.quad	0x4011dc382a12f901              # double 4.465058
	.quad	0x400eccb966be7afa              # double 3.8499629999999998
	.quad	0x401b17f88765ba6f              # double 6.773409
	.quad	0x401d99f0a1be2b49              # double 7.4003319999999997
	.quad	0x401a1b8f57f737da              # double 6.5269139999999997
	.quad	0x401e2d35653c9abb              # double 7.5441489999999999
	.quad	0x40198d9f0a1be2b5              # double 6.3883020000000004
	.quad	0x401b4d9fd36f7e3d              # double 6.8258049999999999
	.quad	0x3fec5a1016ce789e              # double 0.88599399999999995
	.quad	0x4004f79d0a67620f              # double 2.620905
	.quad	0x401d2faf42784a94              # double 7.2965669999999996
	.quad	0x4016ee789e774eec              # double 5.732882
	.quad	0x4015f9b66f9335d2              # double 5.4938599999999997
	.quad	0x401ef1e0828c36db              # double 7.7362080000000004
	.quad	0x40223c7fbacb4289              # double 9.1181619999999999
	.quad	0x401d303d145d8516              # double 7.2971079999999997
	.quad	0x401b6a600b029281              # double 6.8538819999999996
	.quad	0x3ff53cd035371972              # double 1.3273470000000001
	.quad	0x40104ecdd0d8cb08              # double 4.0769570000000002
	.quad	0x3fc9205bc01a36e3              # double 0.1963
	.quad	0x400ac19f3c70c997              # double 3.3445420000000001
	.quad	0x4019adf2239e6aba              # double 6.4198690000000003
	.quad	0x40195ac1094a2b9d              # double 6.3386269999999998
	.quad	0x401c240d4dc65c70              # double 7.0352069999999998
	.quad	0x4004e258d5842b73              # double 2.6105209999999999
	.quad	0x400e79253543aeab              # double 3.8091529999999998
	.quad	0x4010ee48626f60e1              # double 4.2326980000000001
	.quad	0x4010737ac3eb7cbb              # double 4.1127729999999998
	.quad	0x4000f89e774eebf6              # double 2.1213959999999998
	.quad	0x400fb1fb3fa6defc              # double 3.9619049999999998
	.quad	0x3ffce113404ea4a9              # double 1.8049500000000001
	.quad	0x401d8ee9dd7ecbb8              # double 7.389564
	.quad	0x4007ff0563ed0f62              # double 2.9995219999999998
	.quad	0x4004cd4562e09fe8              # double 2.6002299999999998
	.quad	0x4013329d40ee06d9              # double 4.7994279999999998
	.quad	0x400d6e9ccb7d4174              # double 3.6790099999999999
	.quad	0x4022e2bcd78c4370              # double 9.4428470000000004
	.quad	0x401fb62cba732df5              # double 7.9279049999999999
	.quad	0x4014e39b456b441c              # double 5.2222720000000002
	.quad	0x3ffeef0bf1a5ca2a              # double 1.9333610000000001
	.quad	0x3ff2dde9c0229a5f              # double 1.1791780000000001
	.quad	0x3ff3a8bf3bea91da              # double 1.2286980000000001
	.quad	0x401db2efd438d1d9              # double 7.4247430000000003
	.quad	0x3fdcfeda66128390              # double 0.45305499999999999
	.quad	0x40154ca57a786c22              # double 5.3248499999999996
	.quad	0x3fdd0852b4d8ba41              # double 0.45363300000000001
	.quad	0x4023a1bed30f062d              # double 9.8159089999999995
	.quad	0x3fef0d173fb7a5f4              # double 0.97034799999999998
	.quad	0x401f5f416bdb1a6d              # double 7.8430229999999996
	.quad	0x402042964e8b7e4e              # double 8.1300530000000002
	.quad	0x3ff74f8d716d2aa6              # double 1.4569220000000001
	.quad	0x3fe7e16b54e2b064              # double 0.74626700000000001
	.quad	0x40205720ea5b530d              # double 8.1701730000000001
	.quad	0x4023d239e6ab9b24              # double 9.9105980000000002
	.quad	0x3fe3c9a133c1ce6c              # double 0.618363
	.quad	0x401214f5903a7547              # double 4.5204680000000002
	.quad	0x401da73a797891e2              # double 7.4133089999999999
	.quad	0x400587eb6bf444e1              # double 2.6913670000000001
	.quad	0x400637d30ad46f58              # double 2.7772579999999998
	.quad	0x401c71871e6cd291              # double 7.1108669999999998
	.quad	0x40136fbc5de9c023              # double 4.8591170000000004
	.quad	0x3ff6bae46cfc829d              # double 1.420628
	.quad	0x400501e364bec67a              # double 2.6259220000000001
	.quad	0x40001d0635a426bb              # double 2.0141719999999999
	.quad	0x40165d0d0678c005              # double 5.5908699999999998
	.quad	0x4014a138bcdfefbf              # double 5.1574429999999998
	.quad	0x4015d43a647fdc59              # double 5.4572539999999998
	.quad	0x400d461847f56217              # double 3.6592259999999999
	.quad	0x40160b9d3cbc48f1              # double 5.511342
	.quad	0x400aa6e19b90ea9e              # double 3.3314849999999998
	.quad	0x3ff81ddb1209edc0              # double 1.5072890000000001
	.quad	0x40154894812be48a              # double 5.3208789999999997
	.quad	0x40206c63f141205c              # double 8.2117000000000004
	.quad	0x4016bab92c061848              # double 5.682347
	.quad	0x4020f28954a7f801              # double 8.4737039999999997
	.quad	0x3fa4c144028e4fb9              # double 0.040536999999999997
	.quad	0x4014cf8ceb356da0              # double 5.2026859999999999
	.quad	0x40038fe69270b06c              # double 2.4452639999999999
	.quad	0x400f1a5daf07bfe8              # double 3.8878740000000001
	.quad	0x3fff734c5da6a444              # double 1.965649
	.quad	0x3ff74e4da09cc31a              # double 1.4566170000000001
	.quad	0x4011753111f0c34c              # double 4.3644449999999999
	.quad	0x4015b13b18dac259              # double 5.4230770000000001
	.quad	0x4011abd7b2031ceb              # double 4.417815
	.quad	0x40175c17225b749b              # double 5.8399320000000001
	.quad	0x400cb4f15e7c8d19              # double 3.5883509999999998
	.quad	0x3fd04f0d844d013b              # double 0.25482500000000002
	.quad	0x3ff2e7d77fae3609              # double 1.181602
	.quad	0x40220700cd855971              # double 9.0136780000000005
	.quad	0x4008c71d60631727              # double 3.0972240000000002
	.quad	0x40023fa6defc7a3a              # double 2.2810800000000002
	.quad	0x3ffeb9b994e1a3f4              # double 1.9203429999999999
	.quad	0x4005236544fe36d2              # double 2.6422829999999999
	.quad	0x400942e5de15ca6d              # double 3.1576650000000002
	.quad	0x4023df72f76e6107              # double 9.9364240000000005
	.quad	0x4017180a5accd530              # double 5.7734769999999997
	.quad	0x4018d3cddd6e04c0              # double 6.2068399999999997
	.quad	0x3fef268f4b61fe22              # double 0.97345700000000002
	.quad	0x40216fe0ef99806f              # double 8.7185129999999997
	.quad	0x4022388feac42e99              # double 9.1104730000000007
	.quad	0x400e44d44567125e              # double 3.7836080000000001
	.quad	0x4002a3ffef39085f              # double 2.3300779999999999
	.quad	0x401ff3c0c1fc8f32              # double 7.9880399999999998
	.quad	0x4017f4845132f87b              # double 5.9887860000000002
	.quad	0x4009ef1f57b41bfc              # double 3.2417590000000001
	.quad	0x401f302e6644d877              # double 7.7970519999999998
	.quad	0x3ff0b97785729b28              # double 1.04528
	.quad	0x3ff54855da272863              # double 1.33016
	.quad	0x3fff5a21ea359360              # double 1.9595050000000001
	.quad	0x402154ccab3edd8b              # double 8.6656239999999993
	.quad	0x3ff34cb4aec8d5c7              # double 1.2062269999999999
	.quad	0x4003138bcdfefbf4              # double 2.384544
	.quad	0x4020ac9b845564b6              # double 8.3371239999999993
	.quad	0x4023a77596851223              # double 9.8270689999999998
	.quad	0x401ecc896dd26b72              # double 7.6997429999999998
	.quad	0x4013b6df82b1f688              # double 4.9285870000000003
	.quad	0x40179ece5710880e              # double 5.9050840000000004
	.quad	0x40061b352a843809              # double 2.7632850000000002
	.quad	0x4020c57a56de3327              # double 8.3856990000000007
	.quad	0x401044f82f512663              # double 4.0673529999999998
	.quad	0x3ffd1ce39b456b44              # double 1.819553
	.quad	0x4020f9da9c99285b              # double 8.4879960000000008
	.quad	0x3ff542602c9081c3              # double 1.328705
	.quad	0x40102ed352220bc4              # double 4.0457280000000004
	.quad	0x40218bd6c7219221              # double 8.773123
	.quad	0x401b1cd530489d28              # double 6.7781570000000002
	.quad	0x4018d7e6f71a7e31              # double 6.2108420000000004
	.quad	0x4006f781c714fce7              # double 2.8708529999999999
	.quad	0x4010f0724b76f6d7              # double 4.2348109999999997
	.quad	0x4023596e37154003              # double 9.6746689999999997
	.quad	0x3fe899934efcbd55              # double 0.76874699999999996
	.quad	0x4015723076c050be              # double 5.3615130000000004
	.quad	0x40122c17a89331a1              # double 4.5430590000000004
	.quad	0x402047bdad7518b1              # double 8.1401190000000003
	.quad	0x4006e5069a4df480              # double 2.8618290000000002
	.quad	0x40219b7f38c5436c              # double 8.8037050000000007
	.quad	0x3fa88db0574b4070              # double 0.047955999999999999
	.quad	0x4020a491afc04c8c              # double 8.3214240000000003
	.quad	0x4014125742dcf462              # double 5.0179109999999998
	.quad	0x401eca07f66e86c6              # double 7.6972959999999997
	.quad	0x401c7edb7281fd9c              # double 7.1238840000000003
	.quad	0x4011110060780fdc              # double 4.2666029999999999
	.quad	0x4015a8bc9cd3e0bd              # double 5.4147819999999998
	.quad	0x402333a4b5568e82              # double 9.6008659999999999
	.quad	0x4003263e8dda48b6              # double 2.3936739999999999
	.quad	0x40215cd4aa10e022              # double 8.6813099999999999
	.quad	0x4021afa00e27e0f0              # double 8.8430180000000007
	.quad	0x3ff73640639d5e4a              # double 1.450745
	.quad	0x40139306e5cd4ed3              # double 4.8935810000000002
	.quad	0x402359e4d5d80e49              # double 9.6755739999999992
	.quad	0x4021a32e1693c03c              # double 8.8187110000000004
	.quad	0x40012e2089e34331              # double 2.1475230000000001
	.quad	0x4021c919ef954eb1              # double 8.8927759999999996
	.quad	0x3fc6ecd8dbcec850              # double 0.17910300000000001
	.quad	0x3ff3b30941c8216c              # double 1.2312099999999999
	.quad	0x401a16c00da1a933              # double 6.5222170000000004
	.quad	0x401579b024f6598e              # double 5.3688359999999999
	.quad	0x401c9aa6d2674081              # double 7.151027
	.quad	0x4017ef6a0dbad3a6              # double 5.983803
	.quad	0x4011e31b584b1ab1              # double 4.4717840000000004
	.quad	0x40232b69b9d7fd82              # double 9.5847909999999992
	.quad	0x40231700abf76a2f              # double 9.5449269999999994
	.quad	0x40121764adff822c              # double 4.5228450000000002
	.quad	0x401bd6801711947d              # double 6.959473
	.quad	0x4020dc5e4e69f05f              # double 8.4304070000000007
	.quad	0x402091934efcbd55              # double 8.2843269999999993
	.quad	0x401017ebaf102364              # double 4.0233600000000003
	.quad	0x3ff4ca5ce5b4245f              # double 1.2994049999999999
	.quad	0x401d07b0f6ad70e7              # double 7.257511
	.quad	0x401acde69ad42c3d              # double 6.7010750000000003
	.quad	0x40227650c5eb313c              # double 9.2310850000000002
	.quad	0x40205f062d40aaeb              # double 8.185594
	.quad	0x40233545846e8f2a              # double 9.6040460000000003
	.quad	0x4011541e57d9dba9              # double 4.332147
	.quad	0x401500229a5ebb77              # double 5.2501319999999998
	.quad	0x4021073e24febd0a              # double 8.5141460000000002
	.quad	0x3fff3685985ad539              # double 1.9508110000000001
	.quad	0x40214b3a68b19a41              # double 8.6469299999999993
	.quad	0x4014bd5f99c38b05              # double 5.1849350000000003
	.quad	0x3ff18869c66d373b              # double 1.095804
	.quad	0x401ba91dde37585c              # double 6.9151530000000001
	.quad	0x3ffed1d25aab4741              # double 1.926226
	.quad	0x3ff3bc158fb43d8a              # double 1.233419
	.quad	0x401ed072085b1855              # double 7.7035600000000004
	.quad	0x3ff8cb524399b2c4              # double 1.549639
	.quad	0x401e678c0053e2d6              # double 7.6011199999999999
	.quad	0x4022743526527a20              # double 9.2269679999999994
	.quad	0x402315dbdb5d8948              # double 9.5426929999999998
	.quad	0x40220df8d2e514c2              # double 9.0272889999999997
	.quad	0x4007e6c8f7553693              # double 2.9876879999999999
	.quad	0x400e7755bccaf70a              # double 3.8082690000000001
	.quad	0x3fff60f3cb3e5754              # double 1.9611700000000001
	.quad	0x40231acb641700ce              # double 9.5523330000000009
	.quad	0x40218c4c9c90c4df              # double 8.7740220000000004
	.quad	0x4002746ed245b292              # double 2.3068520000000001
	.quad	0x4010ccb5781c7150              # double 4.1999110000000002
	.quad	0x401e6c66d373affb              # double 7.6058609999999999
	.quad	0x3fcbc0db2702a348              # double 0.21682299999999999
	.quad	0x3ff635e84f09528f              # double 1.388161
	.quad	0x40200a0b3d4ae42a              # double 8.0196170000000002
	.quad	0x400f83c536d655e3              # double 3.9393410000000002
	.quad	0x4014052a84380885              # double 5.005045
	.quad	0x3fc08eef1bac2df1              # double 0.129362
	.quad	0x400cbdb2b346130a              # double 3.5926260000000001
	.quad	0x4012ba3400b88ca4              # double 4.6818390000000001
	.quad	0x3ff6ffe7e1fc08fa              # double 1.4374769999999999
	.quad	0x3fd70c9107faa045              # double 0.36014200000000002
	.quad	0x401534a6223e186a              # double 5.3014150000000004
	.quad	0x401817c3504c48ae              # double 6.0232060000000001
	.quad	0x40146fdc9c4da900              # double 5.1092399999999998
	.quad	0x401c19bbadc0980b              # double 7.0251299999999999
	.quad	0x3ff1c9a027525461              # double 1.1117250000000001
	.quad	0x3fedc12cf0f9d2bf              # double 0.92983099999999996
	.quad	0x401116f9335d249e              # double 4.2724349999999998
	.quad	0x4005031055b89939              # double 2.6264959999999999
	.quad	0x3fc4f3d3a1d323ff              # double 0.163691
	.quad	0x3ff47179bfdf7e80              # double 1.277704
	.quad	0x401b081ba7fc32ec              # double 6.7579180000000001
	.quad	0x40221cd44567125e              # double 9.0563070000000003
	.quad	0x40009f5d78811b1e              # double 2.0778150000000002
	.quad	0x401d4588a04d1202              # double 7.3179040000000004
	.quad	0x3fe5da16616b54e3              # double 0.68287200000000003
	.quad	0x402242fba01eeed9              # double 9.1308260000000008
	.quad	0x3fda281ba7fc32ec              # double 0.40869800000000001
	.quad	0x3feedb0142f61ed6              # double 0.96423400000000004
	.quad	0x3ff8130df9bdc6a0              # double 1.5046520000000001
	.quad	0x401c206b37867f0b              # double 7.0316590000000003
	.quad	0x401083ad18d25edd              # double 4.12859
	.quad	0x4006f917939a7c18              # double 2.8716270000000002
	.quad	0x3fd3bbf0dc768dfc              # double 0.30834600000000001
	.quad	0x400c8c521dda059a              # double 3.5685159999999998
	.quad	0x400aaf5989df1173              # double 3.33562
	.quad	0x402331ea9a3d2d88              # double 9.597493
	.quad	0x40173c21187e7c07              # double 5.8087200000000001
	.quad	0x400e37c2ca148ba8              # double 3.7772269999999999
	.quad	0x401f3b2b3461309c              # double 7.8077819999999996
	.quad	0x3fb2d20296b3354c              # double 0.073516999999999999
	.quad	0x401d197fe8ee6b83              # double 7.274902
	.quad	0x40049c7a398201cd              # double 2.5764049999999998
	.quad	0x40153c11e42e1262              # double 5.308662
	.quad	0x4013ea85015c2092              # double 4.9790229999999998
	.quad	0x400b04f2ae07e5a8              # double 3.3774160000000002
	.quad	0x402301743e963dc5              # double 9.5028400000000008
	.quad	0x401752a1b5c7cd8a              # double 5.8306950000000004
	.quad	0x3ff23c7a398201cd              # double 1.1397649999999999
	.quad	0x4015a92817763e4b              # double 5.4151920000000002
	.quad	0x4010a92146a1a501              # double 4.1651660000000001
	.quad	0x401d8018a43bb40b              # double 7.3750939999999998
	.quad	0x40117b7d84901d19              # double 4.3705959999999999
	.quad	0x3ffb485b18548a9c              # double 1.705165
	.quad	0x4018480b673c4f3c              # double 6.0703560000000003
	.quad	0x401c003ea704bc27              # double 7.0002389999999997
	.quad	0x3fbbd944aa53fc01              # double 0.10878400000000001
	.quad	0x40121e60c38f3669              # double 4.5296659999999997
	.quad	0x40153cce5f7403de              # double 5.3093810000000001
	.quad	0x401726013660e51d              # double 5.7871139999999999
	.quad	0x40046b990afe60c4              # double 2.5525380000000002
	.quad	0x4022ccc5da6a4441              # double 9.3999469999999991
	.quad	0x3fec3c46d82ba5a0              # double 0.88235799999999997
	.quad	0x4001892d55a3a084              # double 2.1919810000000002
	.quad	0x400b35421c044285              # double 3.4010050000000001
	.quad	0x40220031ceaf251c              # double 9.0003799999999998
	.quad	0x400c8ce67d77fae3              # double 3.5687989999999998
	.quad	0x4005800c9539b888              # double 2.6875239999999998
	.quad	0x3ff320daa0cae643              # double 1.1955210000000001
	.quad	0x4015da8bd230b9dc              # double 5.4634239999999998
	.quad	0x3fff60ec74320104              # double 1.961163
	.quad	0x4012661672324c83              # double 4.5996949999999996
	.quad	0x401bc4141e9af5ba              # double 6.9414829999999998
	.quad	0x401a3491afc04c8c              # double 6.5513370000000002
	.quad	0x40141bbcf4e874c9              # double 5.027088
	.quad	0x4011ac3504c48adf              # double 4.4181710000000001
	.quad	0x3ff6c86594af4f0e              # double 1.4239250000000001
	.quad	0x402174a148ba83f5              # double 8.7277930000000001
	.quad	0x4012e126e978d4fe              # double 4.719875
	.quad	0x3ffb42d6a9c560c8              # double 1.7038180000000001
	.quad	0x401ec576cce5f740              # double 7.6928359999999998
	.quad	0x4022b1327243137b              # double 9.346088
	.quad	0x40151264a16a4873              # double 5.2679619999999998
	.quad	0x4016cfc5cdd50a89              # double 5.7029030000000001
	.quad	0x4021830c88a47ed0              # double 8.7559550000000002
	.quad	0x400415eaee2003ac              # double 2.5107020000000002
	.quad	0x4000ab0e1b4bb5e1              # double 2.083523
	.quad	0x40102dea033e78e2              # double 4.0448380000000004
	.quad	0x40194f5771001d5c              # double 6.3274819999999998
	.quad	0x4015ca0c282c6ef4              # double 5.4473120000000002
	.quad	0x401180092ccf6be3              # double 4.3750349999999996
	.quad	0x3f9cfbb9496249a1              # double 0.028303999999999999
	.quad	0x40237a89fc6da448              # double 9.7393339999999994
	.quad	0x4019fd640e9d51b5              # double 6.497452
	.quad	0x401b09c12f09d8c7              # double 6.7595260000000001
	.quad	0x3ff1275579af1887              # double 1.072103
	.quad	0x3fddbdd334c5da6a              # double 0.46471099999999999
	.quad	0x402382875d56f32c              # double 9.7549390000000002
	.quad	0x402362b0856e696a              # double 9.6927529999999997
	.quad	0x400bdecb31c219eb              # double 3.4837859999999998
	.quad	0x401abd07852f7f4a              # double 6.6845990000000004
	.quad	0x402207353b4b2fa9              # double 9.0140779999999996
	.quad	0x40146b1960fa15db              # double 5.1045889999999998
	.quad	0x4013f50763a19008              # double 4.9892859999999999
	.quad	0x3fe79d4306e5cd4f              # double 0.73794700000000002
	.quad	0x401cda858793dd98              # double 7.2134
	.quad	0x4019b40fa9c12f0a              # double 6.4258410000000001
	.quad	0x401b1eba27ae9ab3              # double 6.7800070000000003
	.quad	0x4006a2c450268901              # double 2.8294760000000001
	.quad	0x400a62339c0ebee0              # double 3.2979500000000002
	.quad	0x40235ff3f0fe047d              # double 9.6874079999999995
	.quad	0x4023fc107314ca92              # double 9.9923129999999993
	.quad	0x4014f52da98676a7              # double 5.2394319999999999
	.quad	0x40155b01c92ddbdb              # double 5.3388739999999997
	.quad	0x401d7b6cbd987c63              # double 7.3705319999999999
	.quad	0x4023ba7ae9ab29e5              # double 9.8642190000000002
	.quad	0x401a576c050bd87b              # double 6.5853729999999997
	.quad	0x3ff5ef6d7625204b              # double 1.370954
	.quad	0x4023e26aca793576              # double 9.942221
	.quad	0x4013165625a682b6              # double 4.7718129999999999
	.quad	0x3ff48edc3bd59924              # double 1.284878
	.quad	0x400965d6bebe1651              # double 3.1747260000000002
	.quad	0x3ff543fe5c91d14e              # double 1.3290999999999999
	.quad	0x402062178f68be2f              # double 8.1915859999999991
	.quad	0x401df63992c8c500              # double 7.4904539999999997
	.quad	0x4010da3e39f77293              # double 4.2131280000000002
	.quad	0x4002fff151e75361              # double 2.3749720000000001
	.quad	0x4021c3f811f4f50a              # double 8.882752
	.quad	0x4020688ebcc6c54c              # double 8.2042140000000003
	.quad	0x3ff779496249a134              # double 1.4671110000000001
	.quad	0x4013797bfa4c61d8              # double 4.8686369999999997
	.quad	0x3fcdfc7e6b3fe9fb              # double 0.234268
	.quad	0x40082c8ffb8b2639              # double 3.0217589999999999
	.quad	0x4021dd04e618ce2d              # double 8.9316779999999998
	.quad	0x3fce5fe974a3400c              # double 0.23730200000000001
	.quad	0x4010bdf2239e6aba              # double 4.1854940000000003
	.quad	0x3ff653671ac14c66              # double 1.395362
	.quad	0x4021eab6ae7d566d              # double 8.9584250000000001
	.quad	0x3ff3625742dcf462              # double 1.2115089999999999
	.quad	0x402109c6d1e108c4              # double 8.519095
	.quad	0x3ff64fa58f7121ab              # double 1.3944449999999999
	.quad	0x3fd6807357e670e3              # double 0.35159000000000001
	.quad	0x3ffd20ddc6195465              # double 1.820524
	.quad	0x3ffd0c34c1a8ac5c              # double 1.81548
	.quad	0x40062f88333fc86d              # double 2.773209
	.quad	0x401c53382e44b6e9              # double 7.0812689999999998
	.quad	0x4020db2fcac8e68e              # double 8.4280989999999996
	.quad	0x3ff5c49ecb31c21a              # double 1.360503
	.quad	0x3ff0d41205bc01a3              # double 1.0517749999999999
	.quad	0x401424d6a161e4f7              # double 5.0359749999999996
	.quad	0x4000572b4528283d              # double 2.0425629999999999
	.quad	0x401de9695d91ab8f              # double 7.4779410000000004
	.quad	0x401e80242d05f288              # double 7.6251379999999997
	.quad	0x4012f4f3fd933e36              # double 4.7392120000000002
	.quad	0x4021bf1c970f7b9e              # double 8.873265
	.quad	0x402239d81f106680              # double 9.1129770000000008
	.quad	0x400f937110e453d2              # double 3.946993
	.quad	0x4001ab80ecfa69be              # double 2.208742
	.quad	0x4005c1693c03bc4d              # double 2.7194389999999999
	.quad	0x3fd7b5781c714fce              # double 0.37045099999999997
	.quad	0x4016c49235f80991              # double 5.6919639999999996
	.quad	0x3ff9ff3f0fe047d4              # double 1.624816
	.quad	0x3feb577318fc5048              # double 0.85442499999999999
	.quad	0x4015024d8fd5cb79              # double 5.2522489999999999
	.quad	0x40227c0a06e9ff0d              # double 9.2422640000000005
	.quad	0x40137cdaf4adbc66              # double 4.8719289999999997
	.quad	0x40139f87f023e9ea              # double 4.9057919999999999
	.quad	0x4022406013660e52              # double 9.1257330000000003
	.quad	0x402295b291b823c8              # double 9.2923779999999993
	.quad	0x3fe8a48b65237048              # double 0.77008600000000005
	.quad	0x40163db8348f53c5              # double 5.5602729999999996
	.quad	0x3ff3aacd9e83e426              # double 1.2292000000000001
	.quad	0x400f8f1a1986b9c3              # double 3.944874
	.quad	0x401b0ba16e7a311f              # double 6.7613580000000004
	.quad	0x401c1fdc1615ebfb              # double 7.0311130000000004
	.quad	0x40105bc903ea704c              # double 4.0896340000000002
	.quad	0x40213d75e2046c76              # double 8.6200399999999995
	.quad	0x400ff5208e150119              # double 3.994691
	.quad	0x401d503bc4d22c88              # double 7.3283529999999998
	.quad	0x4016a5360d024702              # double 5.6613389999999999
	.quad	0x4012e32acfb762d8              # double 4.7218429999999998
	.quad	0x4016162e4d1a6506              # double 5.5216609999999999
	.quad	0x4014509289dadfb5              # double 5.078684
	.quad	0x40094f0e90bc7b46              # double 3.163602
	.quad	0x40171eacc92146a2              # double 5.7799560000000003
	.quad	0x401bbb2cc70867ae              # double 6.9327880000000004
	.quad	0x4012e30f49491f2e              # double 4.7217380000000002
	.quad	0x3f9270b06c43f5f9              # double 0.018008
	.quad	0x402176d0b30b5aa7              # double 8.7320609999999999
	.quad	0x4002c835dedf1e08              # double 2.3477589999999999
	.quad	0x3ffe46d506573216              # double 1.892293
	.quad	0x4005347a5b0ff10f              # double 2.6506240000000001
	.quad	0x3ff72b3bb83cf2d0              # double 1.4480550000000001
	.quad	0x401bd4d1633482bf              # double 6.9578300000000004
	.quad	0x4017963ae2541d8f              # double 5.8967090000000004
	.quad	0x401794b9cb6848bf              # double 5.8952400000000003
	.quad	0x402348ce91c8eac0              # double 9.642201
	.quad	0x400026e115592d99              # double 2.0189840000000001
	.quad	0x401a62253111f0c3              # double 6.5958449999999997
	.quad	0x400a2319c5a3e39f              # double 3.2671389999999998
	.quad	0x40237bfb9bed30f0              # double 9.7421539999999993
	.quad	0x401a8204f2ae07e6              # double 6.6269720000000003
	.quad	0x4006114d2f5dbb9d              # double 2.758448
	.quad	0x4009f00ef1348b22              # double 3.242216
	.quad	0x401d84eb56fb8f58              # double 7.379804
	.quad	0x4014d00a7c5ac472              # double 5.2031650000000003
	.quad	0x4020a6f5ec80c73b              # double 8.3260950000000005
	.quad	0x4017076965f5275f              # double 5.7572380000000001
	.quad	0x4022b9455219a848              # double 9.3618570000000005
	.quad	0x400eafecdd0d8cb0              # double 3.8359009999999998
	.quad	0x3fdfeb6bf444e0db              # double 0.49874400000000002
	.quad	0x4021458537e2c55d              # double 8.6357820000000007
	.quad	0x402220bfe3b03e21              # double 9.0639640000000004
	.quad	0x40209eebf65dbfcf              # double 8.3103940000000005
	.quad	0x401e96544fe36d22              # double 7.6468059999999998
	.quad	0x40226db7281fd9ba              # double 9.2142879999999998
	.quad	0x4015ee931876188b              # double 5.4829829999999999
	.quad	0x3ffc7dccea28fe26              # double 1.780713
	.quad	0x40204992428d434a              # double 8.143694
	.quad	0x3fff87b139c94f6a              # double 1.970628
	.quad	0x4020fdd2d01c0ca6              # double 8.495749
	.quad	0x3fdf038e29f9ce8e              # double 0.48459200000000002
	.quad	0x401390ecfa69be0a              # double 4.8915290000000002
	.quad	0x401d0a5657fb6998              # double 7.2600949999999997
	.quad	0x401ebbe0ded288ce              # double 7.6834749999999996
	.quad	0x40211c6088d6d3b7              # double 8.5554240000000004
	.quad	0x400a109a671ef30a              # double 3.2581069999999999
	.quad	0x402285a9eb2074eb              # double 9.2610620000000008
	.quad	0x40212a374794ea07              # double 8.5824529999999992
	.quad	0x400d3dd8f92af9a9              # double 3.6551990000000001
	.quad	0x40108ccfaeff5c6c              # double 4.1375109999999999
	.quad	0x401336256366d7a5              # double 4.8028769999999996
	.quad	0x3fca09917939a7c1              # double 0.20341699999999999
	.quad	0x402291d4738a3b58              # double 9.2848240000000004
	.quad	0x400de97635e7429a              # double 3.7389950000000001
	.quad	0x401084638c975297              # double 4.1292859999999996
	.quad	0x3ff6c3419e300150              # double 1.4226700000000001
	.quad	0x400ce9a133c1ce6c              # double 3.614077
	.quad	0x4022bf35e310dbf0              # double 9.3734579999999994
	.quad	0x4020800c9539b888              # double 8.2500959999999992
	.quad	0x3fff11eb851eb852              # double 1.941875
	.quad	0x4019d58ff7596851              # double 6.4585569999999999
	.quad	0x401763059641f645              # double 5.8467010000000004
	.quad	0x4002e8c5004fb118              # double 2.3636569999999999
	.quad	0x3fe36e30caa326e1              # double 0.60720099999999999
	.quad	0x401aee33acd5b680              # double 6.7326189999999997
	.quad	0x3ff1b14db59578a3              # double 1.1057870000000001
	.quad	0x400a4c7b890d5a5c              # double 3.2873450000000002
	.quad	0x4016d2be0589acbd              # double 5.7058030000000004
	.quad	0x401ef2b8c75c4a84              # double 7.7370330000000003
	.quad	0x401e1e2d1f1cfbb9              # double 7.5294689999999997
	.quad	0x40138caa326e1156              # double 4.8873680000000004
	.quad	0x3ff028bc169c23b8              # double 1.0099450000000001
	.quad	0x4022e8f5e41d4b6a              # double 9.4550009999999993
	.quad	0x3fd587bdcf0307f2              # double 0.33640999999999999
	.quad	0x3ffea22a2c237479              # double 1.9145909999999999
	.quad	0x400f3d9ec7000432              # double 3.9050880000000001
	.quad	0x40058e04c0592104              # double 2.6943450000000002
	.quad	0x4015d52da98676a7              # double 5.4581819999999999
	.quad	0x4018ed44567125dd              # double 6.231706
	.quad	0x400b1c044284dfce              # double 3.3886799999999999
	.quad	0x3fff7dd97f62b6ae              # double 1.9682249999999999
	.quad	0x400f9f62b6ae7d56              # double 3.9528249999999998
	.quad	0x40238f31f46ed246              # double 9.7796780000000005
	.quad	0x4021aeabbcb1cc96              # double 8.8411539999999995
	.quad	0x4020c9276fb09204              # double 8.3928790000000006
	.quad	0x4016e43d46b26bf8              # double 5.7228899999999996
	.quad	0x4005dd230b9dc2f4              # double 2.732977
	.quad	0x40137c43b2dd377e              # double 4.8713519999999999
	.quad	0x40230ed0f627392a              # double 9.5289380000000001
	.quad	0x4016844178705426              # double 5.629156
	.quad	0x40214931a8ef77f2              # double 8.6429569999999991
	.quad	0x4012dbc5154866a1              # double 4.7146189999999999
	.quad	0x40197d7060bb2bbb              # double 6.3724990000000004
	.quad	0x400f456abde3fbbd              # double 3.9088949999999998
	.quad	0x400f6ed4e4c942d5              # double 3.9291170000000002
	.quad	0x4012e7a5b0ff10ed              # double 4.7262180000000003
	.quad	0x401a32756861e929              # double 6.5492759999999999
	.quad	0x401e81d8e8640208              # double 7.6268039999999999
	.quad	0x40217286940357a3              # double 8.7236829999999994
	.quad	0x40013164c729f59d              # double 2.1491180000000001
	.quad	0x4015bb1b79d909f2              # double 5.4327220000000001
	.quad	0x4016a071c53f39d2              # double 5.6566840000000003
	.quad	0x4022931ab0856e69              # double 9.2873129999999993
	.quad	0x3fff6fcbd556084a              # double 1.9647939999999999
	.quad	0x3ff1784fd2a62aa2              # double 1.0918730000000001
	.quad	0x40223f2e8c0485a1              # double 9.1234020000000005
	.quad	0x40238f1da37ef5a9              # double 9.7795229999999992
	.quad	0x401f986ec17ebaf1              # double 7.8988599999999999
	.quad	0x401fca1c25d07421              # double 7.9473729999999997
	.quad	0x40237f0d62bf11f9              # double 9.7481489999999997
	.quad	0x400d7af640639d5e              # double 3.6850399999999999
	.quad	0x4023800ef1348b22              # double 9.7501139999999999
	.quad	0x4021ef4623d0bfa1              # double 8.9673320000000007
	.quad	0x401d5abf33871609              # double 7.3386199999999997
	.quad	0x3fe8577531db445f              # double 0.76067600000000002
	.quad	0x3fbd1e85fd04a2fd              # double 0.113747
	.quad	0x3ff721cde5d18091              # double 1.4457530000000001
	.quad	0x401eeaf5fd47bedb              # double 7.7294539999999996
	.quad	0x4022abbd3804534c              # double 9.3354280000000002
	.quad	0x4016762174c4cdfb              # double 5.6153620000000002
	.quad	0x40129cbd556084a5              # double 4.6530659999999999
	.quad	0x401088deb0fadf2f              # double 4.1336620000000002
	.quad	0x40213881e4712e41              # double 8.6103660000000009
	.quad	0x400ba49b1fab96f2              # double 3.4553739999999999
	.quad	0x4010946a1a500d5f              # double 4.1449360000000004
	.quad	0x3fd05525cc426352              # double 0.25519700000000001
	.quad	0x4022cdd56f32bdc2              # double 9.4020189999999992
	.quad	0x401c3c957cd466f5              # double 7.059164
	.quad	0x40131050bd87b56c              # double 4.7659330000000004
	.quad	0x4012b49667b5f1bf              # double 4.676355
	.quad	0x4022069ced0b30b6              # double 9.0129160000000006
	.quad	0x4003655d1c3ac92a              # double 2.4244940000000001
	.quad	0x4014b054ef459d99              # double 5.172199
	.quad	0x401090d9513f8db5              # double 4.1414540000000004
	.quad	0x401d9adddf43c7d6              # double 7.4012370000000001
	.quad	0x3fb48fc9363f572e              # double 0.080319000000000001
	.quad	0x3ff76b7fe08aefb3              # double 1.4637450000000001
	.quad	0x3fd6be7afa722186              # double 0.35537600000000003
	.quad	0x4022e61ac57e23f2              # double 9.4494229999999995
	.quad	0x400d6182ecaeea64              # double 3.6726130000000001
	.quad	0x4002f6cefed63455              # double 2.3705120000000002
	.quad	0x40038628027d88c2              # double 2.4405060000000001
	.quad	0x4012c2a38b8ae31d              # double 4.6900769999999996
	.quad	0x402376a7ef9db22d              # double 9.7317499999999999
	.quad	0x401d43b4b2fa93af              # double 7.3161189999999996
	.quad	0x40170f8055fbb518              # double 5.7651380000000003
	.quad	0x4000c4e26d4801f7              # double 2.0961349999999999
	.quad	0x400dd34373f316e3              # double 3.7281559999999998
	.quad	0x40102bd4067cf1c3              # double 4.0428009999999999
	.quad	0x40015856a37ac3eb              # double 2.1681339999999998
	.quad	0x3ff7f2e9ccb7d417              # double 1.4968049999999999
	.quad	0x3fff728e92d55a3a              # double 1.965468
	.quad	0x4013f9e774eebf66              # double 4.9940470000000001
	.quad	0x4014f7d41743e964              # double 5.2420200000000001
	.quad	0x400e51aeb3dd11be              # double 3.7898839999999998
	.quad	0x400277574f722e1b              # double 2.3082720000000001
	.quad	0x4000a84944ed6fdb              # double 2.0821710000000002
	.quad	0x4017f2ab68cef673              # double 5.9869820000000002
	.quad	0x402166fc7a398202              # double 8.7011450000000004
	.quad	0x4020cc39ffd60e95              # double 8.3988800000000001
	.quad	0x4021d0fe047d3d43              # double 8.9081880000000009
	.quad	0x4021cf4a771c970f              # double 8.9048649999999991
	.quad	0x4020704406c00da2              # double 8.2192690000000006
	.quad	0x40204de7a743a648              # double 8.152158
	.quad	0x40206591cd1c7de5              # double 8.1983779999999999
	.quad	0x3fe9df99c38b04ab              # double 0.80854499999999996
	.quad	0x40158ce5b4245f5b              # double 5.3875950000000001
	.quad	0x40224b0d306a2b17              # double 9.146585
	.quad	0x4014fd58c8eef1bb              # double 5.2474090000000002
	.quad	0x40230490a350d280              # double 9.5089159999999993
	.quad	0x4006cf7b17ce52df              # double 2.8513090000000001
	.quad	0x4010ba1db877ab32              # double 4.1817539999999997
	.quad	0x4021795d4e8fb00c              # double 8.7370400000000003
	.quad	0x3ff073f63c31df76              # double 1.028311
	.quad	0x40101d04a2fcefaa              # double 4.0283379999999998
	.quad	0x4018588f861a60d4              # double 6.0864849999999997
	.quad	0x4013eaf294dd7236              # double 4.9794409999999996
	.quad	0x3fcf58537e2c55c9              # double 0.24488299999999999
	.quad	0x40218da059a73b43              # double 8.7766140000000004
	.quad	0x40220bcfb3311a54              # double 9.0230689999999995
	.quad	0x3fe5c332f01754b0              # double 0.68007799999999996
	.quad	0x400fd289dadfb507              # double 3.9778020000000001
	.quad	0x3fc6f190d173fb7a              # double 0.17924699999999999
	.quad	0x400b484944ed6fdb              # double 3.4102960000000002
	.quad	0x3ffa1e310dbf0564              # double 1.632371
	.quad	0x400cc6cb10342aaa              # double 3.597067
	.quad	0x3fc44567125dd096              # double 0.15836800000000001
	.quad	0x3ffabd976ff3ade2              # double 1.671287
	.quad	0x402210446b69db66              # double 9.0317720000000001
	.quad	0x3fc900ffda4052d6              # double 0.19534299999999999
	.quad	0x3fea21ff2e48e8a7              # double 0.81664999999999999
	.quad	0x4023115f2452c5a0              # double 9.5339290000000005
	.quad	0x4023a287e38eb032              # double 9.8174430000000008
	.quad	0x4023d8c34c1a8ac6              # double 9.9233650000000004
	.quad	0x3fffe63736cdf267              # double 1.9937050000000001
	.quad	0x40146183b60285ec              # double 5.0952289999999998
	.quad	0x4023246f7a0b5ed9              # double 9.5711630000000003
	.quad	0x40036e5471715c64              # double 2.4288720000000001
	.quad	0x40183badc0980b24              # double 6.0582799999999999
	.quad	0x4017deed02cd39da              # double 5.9677009999999999
	.quad	0x40128f19934efcbd              # double 4.6397459999999997
	.quad	0x401146a875d56f33              # double 4.3190020000000002
	.quad	0x402312f7b17ce52e              # double 9.5370460000000001
	.quad	0x401f1e7685985ad5              # double 7.7797489999999998
	.quad	0x4007214ad362e903              # double 2.8912559999999998
	.quad	0x401fe0f01fb82c2c              # double 7.9696660000000001
	.quad	0x400a9f737da61e0c              # double 3.3278569999999998
	.quad	0x3ff23dddb1209edc              # double 1.140104
	.quad	0x4018560bf5d78812              # double 6.0840300000000003
	.quad	0x3ff113005814940c              # double 1.0671390000000001
	.quad	0x401714ac6cdaf4ae              # double 5.7701890000000002
	.quad	0x4018281f53825e14              # double 6.0391820000000003
	.quad	0x40132b6177ea1c69              # double 4.7923640000000001
	.quad	0x4001b0342aa9f7b6              # double 2.2110370000000001
	.quad	0x400245ecc3e3193f              # double 2.2841429999999998
	.quad	0x4002cb9fdbd2fa0d              # double 2.3494259999999998
	.quad	0x4022ce70c1333b97              # double 9.4032040000000005
	.quad	0x4022436b6e0d23d5              # double 9.1316790000000001
	.quad	0x3f9662bae03b3e9a              # double 0.021860999999999998
	.quad	0x40162ff0025bfad3              # double 5.5468140000000004
	.quad	0x401c3dca8e2e2b8c              # double 7.0603429999999996
	.quad	0x40029d44998d0460              # double 2.3267910000000001
	.quad	0x401bbea704bc2763              # double 6.9361839999999999
	.quad	0x4022d9a30984e400              # double 9.4250720000000001
	.quad	0x3ff74902de00d1b7              # double 1.455325
	.quad	0x40102f11f926c7eb              # double 4.0459670000000001
	.quad	0x40084ba40d90e23b              # double 3.036934
	.quad	0x401ca0e1f7d73c92              # double 7.1571119999999997
	.quad	0x4018765add9c27e9              # double 6.1155809999999997
	.quad	0x3fd47ae9ab29e4d6              # double 0.32000200000000001
	.quad	0x40206c96aad1d042              # double 8.2120870000000004
	.quad	0x4021e4dc443914f5              # double 8.9469930000000009
	.quad	0x4021c4fc610f0e91              # double 8.8847380000000005
	.quad	0x40239cacd184c272              # double 9.806006
	.quad	0x3fc3ade225fa658c              # double 0.15374399999999999
	.quad	0x402134a7b4e54f7b              # double 8.6028420000000008
	.quad	0x4003998d045fe111              # double 2.4499759999999999
	.quad	0x401de1deacc92147              # double 7.4705760000000003
	.quad	0x401e28d8665e02eb              # double 7.5398880000000003
	.quad	0x4016b7878b7a1c26              # double 5.6792280000000002
	.quad	0x400336be37de939f              # double 2.4017300000000001
	.quad	0x400fa4e3ffef3908              # double 3.9555129999999998
	.quad	0x4000e83a109d0636              # double 2.1133920000000002
	.quad	0x40118dfce3150dae              # double 4.3886599999999998
	.quad	0x4017de093532e7b4              # double 5.9668320000000001
	.quad	0x40233a24894c447c              # double 9.6135599999999996
	.quad	0x3fff3cdab191dde3              # double 1.9523569999999999
	.quad	0x401cc6f7a0b5ed8d              # double 7.1943039999999998
	.quad	0x3ff9015097c80842              # double 1.562821
	.quad	0x3ff069bcfd4bf099              # double 1.0258149999999999
	.quad	0x3ffae4bba12b5e53              # double 1.6808430000000001
	.quad	0x401f91cb039ef0f1              # double 7.8923759999999996
	.quad	0x402395ba908a265f              # double 9.7924389999999998
	.quad	0x4014eb6523704791              # double 5.2298780000000002
	.quad	0x4000be95b78cc9a7              # double 2.0930589999999998
	.quad	0x402080fb00bcbe62              # double 8.2519150000000003
	.quad	0x4015960a2014727e              # double 5.3965230000000002
	.quad	0x401b5674080f98fa              # double 6.8344269999999998
	.quad	0x401345015c209247              # double 4.8173880000000002
	.quad	0x402343b8c32a8c9c              # double 9.6322690000000008
	.quad	0x40213a6a65cf67b2              # double 8.6140930000000004
	.quad	0x4021e842d8c2a455              # double 8.9536350000000002
	.quad	0x400e6eb80ecfa69c              # double 3.8040620000000001
	.quad	0x400d85d52c16df40              # double 3.6903480000000002
	.quad	0x4021ee5a35d67ba2              # double 8.9655319999999996
	.quad	0x3fe1a0d349be8ff3              # double 0.55088199999999998
	.quad	0x401b1705c896dd27              # double 6.7724830000000003
	.quad	0x40089845564b6630              # double 3.0743510000000001
	.quad	0x40104d79d0a67621              # double 4.0756600000000001
	.quad	0x4019c2d38476f2a6              # double 6.4402600000000003
	.quad	0x3ff5ee5de15ca6ca              # double 1.370695
	.quad	0x3fd06687f455a7d2              # double 0.25625799999999999
	.quad	0x3fff0713f077ccc0              # double 1.939228
	.quad	0x4022f18288051c9f              # double 9.4716989999999992
	.quad	0x40215dd4a5df223a              # double 8.6832630000000002
	.quad	0x4002aeb356da0169              # double 2.3353030000000001
	.quad	0x3ffe8766c6de7642              # double 1.9080569999999999
	.quad	0x4016ff7a0b5ed8d3              # double 5.7494889999999996
	.quad	0x3fe5c4c5974e65bf              # double 0.68027000000000004
	.quad	0x40163d57bc7f77af              # double 5.5599049999999997
	.quad	0x4010e8e9f6a93f29              # double 4.227455
	.quad	0x3fd8f05ea24cc682              # double 0.38967099999999999
	.quad	0x3ff48c2b51bd61f6              # double 1.2842210000000001
	.quad	0x401d3215b9a5a89c              # double 7.2989110000000004
	.quad	0x401b463beec3979a              # double 6.8185880000000001
	.quad	0x40108c7da1ec4e72              # double 4.1371979999999997
	.quad	0x40206af23033a472              # double 8.2088789999999996
	.quad	0x402279dba908a266              # double 9.2380040000000001
	.quad	0x4000bce7cd035372              # double 2.0922390000000002
	.quad	0x40233069c66d373b              # double 9.594557
	.quad	0x401da5a35d67ba23              # double 7.4117559999999996
	.quad	0x40233d1697f1f9ad              # double 9.619313
	.quad	0x40224278d0cc35ce              # double 9.1298279999999998
	.quad	0x3ff7e15fcc1871e7              # double 1.492523
	.quad	0x401ae8882f0e0a85              # double 6.7270820000000002
	.quad	0x4000ed86ec17ebaf              # double 2.11598
	.quad	0x4017c06c00da1a93              # double 5.9379119999999999
	.quad	0x401adc829cfdd228              # double 6.7153419999999997
	.quad	0x4020f63150dae3e7              # double 8.4808450000000004
	.quad	0x4014a333fc86cebc              # double 5.1593780000000002
	.quad	0x4021806594af4f0e              # double 8.7507750000000009
	.quad	0x400e20d23d4f15e8              # double 3.7660260000000001
	.quad	0x400ff0b178b37004              # double 3.9925259999999998
	.quad	0x40155ffc9795b35b              # double 5.343737
	.quad	0x40142dfb506dd69d              # double 5.0449039999999998
	.quad	0x4022f9001d5c3159              # double 9.4863289999999995
	.quad	0x40191a5b9628cbd1              # double 6.2757399999999999
	.quad	0x401dea8ef77f27fe              # double 7.4790609999999997
	.quad	0x402056f21f6cacd2              # double 8.1698160000000009
	.quad	0x401883226c3b927d              # double 6.1280609999999998
	.quad	0x4011e06f262888b5              # double 4.4691739999999998
	.quad	0x401e0a32b12d3416              # double 7.5099590000000003
	.quad	0x40237648626f60e1              # double 9.7310210000000001
	.quad	0x3ffc9a4f00ef1349              # double 1.7876730000000001
	.quad	0x4021fff64cf8d717              # double 8.9999260000000003
	.quad	0x4007acf5b1c86488              # double 2.9594529999999999
	.quad	0x3ff4508b32ce8965              # double 1.2696639999999999
	.quad	0x401077de939eadd6              # double 4.1170600000000004
	.quad	0x3fa1e1d2178f68be              # double 0.034925999999999999
	.quad	0x40218520d130df9c              # double 8.7600160000000002
	.quad	0x401699118c197e56              # double 5.6494809999999998
	.quad	0x3ff42dc3bd599243              # double 1.2611730000000001
	.quad	0x40174e1198aeb80f              # double 5.8262390000000002
	.quad	0x4021ca7d45a5fc7e              # double 8.8954869999999993
	.quad	0x401a1f7f8ca8198f              # double 6.5307599999999999
	.quad	0x40221bedd8b60f1b              # double 9.0545489999999997
	.quad	0x3ff68be40420f6f1              # double 1.4091530000000001
	.quad	0x401deaabcd78c437              # double 7.479171
	.quad	0x40176327243137b0              # double 5.8468289999999996
	.quad	0x4010a4bb1af3a14d              # double 4.1608700000000001
	.quad	0x400c796e9bbf0dc7              # double 3.5592929999999998
	.quad	0x4002662fdfc19c17              # double 2.2998959999999999
	.quad	0x40179d2e94680171              # double 5.9034979999999999
	.quad	0x400a7c2c1b10fd7e              # double 3.3106309999999999
	.quad	0x3fffe189bd8383ae              # double 1.9925630000000001
	.quad	0x4013de004b7f5a53              # double 4.9667979999999998
	.quad	0x402004a515ce9e5e              # double 8.0090719999999997
	.quad	0x40111b2c83ec892b              # double 4.2765370000000003
	.quad	0x4011581450efdc9c              # double 4.3360149999999997
	.quad	0x4013620ddc619546              # double 4.8457559999999997
	.quad	0x4021d1d16fc9bc77              # double 8.9098009999999999
	.quad	0x40229422ee41919b              # double 9.2893290000000004
	.quad	0x4021d5f548ecd8dc              # double 8.9178870000000003
	.quad	0x3ffe5a8bd230b9dc              # double 1.897106
	.quad	0x4020fccad57bc7f7              # double 8.4937349999999991
	.quad	0x3ffdf6c2699c7bcc              # double 1.872744
	.quad	0x401b6b4b72c5197a              # double 6.8547799999999999
	.quad	0x401e206b7aa25d8d              # double 7.5316599999999995
	.quad	0x3fe6e3193f6c269a              # double 0.71522200000000002
	.quad	0x3fdd6822ff08893b              # double 0.45948099999999997
	.quad	0x3f6fe64f54d1e96c              # double 0.0038939999999999999
	.quad	0x401b01e92923e5b8              # double 6.7518659999999997
	.quad	0x4015c0053e2d6239              # double 5.4375200000000001
	.quad	0x3ff495d3dc8b86b1              # double 1.2865789999999999
	.quad	0x4023f266ba493c8a              # double 9.9734400000000001
	.quad	0x4022734b2fa93af7              # double 9.2251829999999995
	.quad	0x3ffb1d323fee2c99              # double 1.694628
	.quad	0x400201e71044f1a2              # double 2.2509290000000002
	.quad	0x40123000431bde83              # double 4.5468760000000001
	.quad	0x40212c23315d701e              # double 8.5862060000000007
	.quad	0x4021fac343b70ef5              # double 8.9897709999999993
	.quad	0x4005ee53eb399f5e              # double 2.741371
	.quad	0x401a088df37329c3              # double 6.5083539999999998
	.quad	0x401b290b417ca212              # double 6.790082
	.quad	0x401ac2806af46aa1              # double 6.6899430000000004
	.quad	0x4021c71e6cd29132              # double 8.8889040000000001
	.quad	0x3ff8deb2074ea8da              # double 1.5543689999999999
	.quad	0x4000e77c45cbbc2c              # double 2.1130300000000002
	.quad	0x40138146a1a500d6              # double 4.8762460000000001
	.quad	0x402017b1e18efbb1              # double 8.0462790000000002
	.quad	0x401ca0b34e768598              # double 7.1569339999999997
	.quad	0x3fd3e6ab9b23dd55              # double 0.31095400000000001
	.quad	0x401dfcc100e6afcd              # double 7.4968300000000001
	.quad	0x3fddae9ab29e4d5e              # double 0.46378200000000003
	.quad	0x3fb20be5109070fc              # double 0.070494000000000001
	.quad	0x40103a7e30878748              # double 4.0571219999999997
	.quad	0x3ffe52d87f88765c              # double 1.8952260000000001
	.quad	0x40229e534373f317              # double 9.3092290000000002
	.quad	0x4007275b3e1437c5              # double 2.8942169999999998
	.quad	0x400e78561d4306e6              # double 3.8087580000000001
	.quad	0x4018d64628027d89              # double 6.2092520000000002
	.quad	0x400d26c5d206c871              # double 3.6439319999999999
	.quad	0x3fb58f2e05ccc89b              # double 0.084215999999999999
	.quad	0x401962d666a98245              # double 6.3465210000000001
	.quad	0x401beb87bdcf0308              # double 6.98001
	.quad	0x4023a54ac29bf163              # double 9.8228360000000005
	.quad	0x401d95696e58a32f              # double 7.3959099999999998
	.quad	0x401b34af0bf1a5ca              # double 6.8014489999999999
	.quad	0x402314d2d44dca8e              # double 9.5406709999999997
	.quad	0x401d9fd1569f4906              # double 7.406072
	.quad	0x4023d8bc169c23b8              # double 9.9233100000000007
	.quad	0x400e431832fcac8e              # double 3.7827609999999998
	.quad	0x4014099e0e73604a              # double 5.0093920000000001
	.quad	0x40126033e78e1933              # double 4.5939480000000001
	.quad	0x4002bded6ba8c587              # double 2.3427380000000002
	.quad	0x40105c6c54bcf0b7              # double 4.0902570000000003
	.quad	0x4023d5573647baaa              # double 9.9166810000000005
	.quad	0x3ff04c9b845564b6              # double 1.0187029999999999
	.quad	0x3fdc981beb18116f              # double 0.44678400000000001
	.quad	0x401576cc5fbf8338              # double 5.3660139999999998
	.quad	0x3fefacdc011d3672              # double 0.98985100000000004
	.quad	0x401267e49b1fab97              # double 4.601458
	.quad	0x401655857afea3df              # double 5.5835169999999996
	.quad	0x401dde86c6583e85              # double 7.4673109999999996
	.quad	0x40133462c343b70f              # double 4.801158
	.quad	0x40236703f2d3c793              # double 9.7012020000000003
	.quad	0x3ff8d9d2391d5800              # double 1.5531790000000001
	.quad	0x4011d44fa05143bf              # double 4.4573349999999996
	.quad	0x400a29691a75cd0c              # double 3.2702200000000001
	.quad	0x401d6b47c73eee52              # double 7.3547659999999997
	.quad	0x4021a385c67dfe33              # double 8.8193800000000007
	.quad	0x4002c477ff151e75              # double 2.3459319999999999
	.quad	0x4023ce2a80064a9d              # double 9.9026680000000002
	.quad	0x4022d32a497fa5d3              # double 9.4124320000000007
	.quad	0x401e494b380cb6c8              # double 7.5715760000000003
	.quad	0x4022b0e8a71de69b              # double 9.3455250000000003
	.quad	0x4022d3af533f4235              # double 9.4134469999999996
	.quad	0x400a305faebc408e              # double 3.2736200000000002
	.quad	0x3fc847778dd616f8              # double 0.18968099999999999
	.quad	0x400c1183b60285ec              # double 3.5085519999999999
	.quad	0x4007368cef672b88              # double 2.9016359999999999
	.quad	0x3ff852e2fbe33acd              # double 1.5202359999999999
	.quad	0x401b6263d816aceb              # double 6.8460840000000003
	.quad	0x4023f8259e1f3a58              # double 9.9846620000000001
	.quad	0x400af142b302f72b              # double 3.3678029999999999
	.quad	0x40183d3ae685db77              # double 6.0597950000000003
	.quad	0x4003dd5d3dc8b86b              # double 2.483088
	.quad	0x401fee01de269164              # double 7.9824289999999998
	.quad	0x40215677b395c422              # double 8.668882
	.quad	0x40111c215b9a5a8a              # double 4.2774710000000002
	.quad	0x40148edcc20d562a              # double 5.1395140000000001
	.quad	0x4019080b242070b9              # double 6.2578550000000002
	.quad	0x401056c4c5974e66              # double 4.0847350000000002
	.quad	0x3ff1529563a9f384              # double 1.082662
	.quad	0x4014711d3671ac15              # double 5.1104630000000002
	.quad	0x400e089a02752546              # double 3.7542
	.quad	0x3fd725e56cd6c2f0              # double 0.36168800000000001
	.quad	0x4001ce2b063e07a3              # double 2.2256680000000002
	.quad	0x3fe9e66cb10342ab              # double 0.80937800000000004
	.quad	0x4013b55821294574              # double 4.9270940000000003
	.quad	0x401fcd41743e963e              # double 7.9504450000000002
	.quad	0x4020d8389f83be66              # double 8.422307
	.quad	0x40201225fa658c4c              # double 8.0354460000000003
	.quad	0x400396eefa1e3eaf              # double 2.4486979999999998
	.quad	0x40161cb295e9e1b1              # double 5.5280250000000004
	.quad	0x401b3835dedf1e08              # double 6.8048929999999999
	.quad	0x401fb928e0c9d9d3              # double 7.9308199999999997
	.quad	0x401457be553ac4f8              # double 5.0856870000000001
	.quad	0x4001beb28d8665e0              # double 2.2181139999999999
	.quad	0x40187ae18ac9f2fe              # double 6.1200010000000002
	.quad	0x3febf0a3d70a3d71              # double 0.87312500000000004
	.quad	0x401c54f97edc7ef1              # double 7.0829829999999996
	.quad	0x4001b2990f301eac              # double 2.2122060000000001
	.quad	0x4022c08aefb2aae3              # double 9.3760600000000007
	.quad	0x3ff23419e30014f9              # double 1.1377200000000001
	.quad	0x3ffdd9a415f45e0b              # double 1.8656349999999999
	.quad	0x4020c7e32a0663c7              # double 8.3904049999999994
	.quad	0x4018912a94ff0026              # double 6.1417640000000002
	.quad	0x4016bfdda8bd230c              # double 5.6873690000000003
	.quad	0x4017b51654d61b2a              # double 5.9268429999999999
	.quad	0x401bcfa58f7121ab              # double 6.9527799999999997
	.quad	0x40176d113836a833              # double 5.8565110000000002
	.quad	0x3f98e92d55a3a084              # double 0.024327000000000001
	.quad	0x4021247d805e5f31              # double 8.5712700000000002
	.quad	0x401f95275ee99a63              # double 7.895658
	.quad	0x4018d7c88e79aae7              # double 6.2107260000000002
	.quad	0x40205a0d130df9be              # double 8.1758810000000004
	.quad	0x40181de82d7b634e              # double 6.0292060000000003
	.quad	0x3fc521bc126a65cf              # double 0.16509199999999999
	.quad	0x401f2ab6d00b45ae              # double 7.7917129999999997
	.quad	0x40160b2a27f1b691              # double 5.5109029999999999
	.quad	0x40225c37a3db3bfb              # double 9.1801119999999994
	.quad	0x401b3c829cfdd228              # double 6.8090919999999997
	.quad	0x4020fba860dcb9aa              # double 8.4915190000000003
	.quad	0x4001bbbc6eb0b7c3              # double 2.2166679999999999
	.quad	0x401b0ab324851a87              # double 6.7604490000000004
	.quad	0x40077d8c6d612c6b              # double 2.9363030000000001
	.quad	0x40157ce5f7403dde              # double 5.3719710000000003
	.quad	0x40054cd20afa2f06              # double 2.6625100000000002
	.quad	0x402066ce9a2c6690              # double 8.2007949999999994
	.quad	0x4017c5892684cf07              # double 5.9429059999999998
	.quad	0x401c9e9856a37ac4              # double 7.1548780000000001
	.quad	0x4018d4445aa2e3c5              # double 6.2072919999999998
	.quad	0x4006a4095f2452c6              # double 2.8300960000000002
	.quad	0x401e1c4c165907d9              # double 7.5276339999999999
	.quad	0x402117a02fb5d031              # double 8.546144
	.quad	0x3ffbbbe121ee6751              # double 1.7333689999999999
	.quad	0x4002a67839cd8128              # double 2.3312840000000001
	.quad	0x40174bc126a65cf6              # double 5.8239789999999996
	.quad	0x401b3ca5375c8da0              # double 6.8092240000000004
	.quad	0x401848f47304039b              # double 6.0712450000000002
	.quad	0x3fd3205bc01a36e3              # double 0.29885
	.quad	0x401211e4f765fd8b              # double 4.5174750000000001
	.quad	0x4001646e08f21709              # double 2.1740379999999999
	.quad	0x40182eb7457c0b13              # double 6.0456209999999997
	.quad	0x4005125d4a5df224              # double 2.6339670000000002
	.quad	0x40126da661283904              # double 4.6070799999999998
	.quad	0x402220c79f666235              # double 9.0640230000000006
	.quad	0x4017e329802c0a4a              # double 5.971838
	.quad	0x4016130f49491f2e              # double 5.5186130000000002
	.quad	0x401fc616f86a0989              # double 7.9434469999999999
	.quad	0x3fdfec6bce8533b1              # double 0.498805
	.quad	0x4004d57eed45e918              # double 2.6042459999999998
	.quad	0x401acf483cafb3b7              # double 6.7024239999999997
	.quad	0x401f6760bf5d7881              # double 7.8509549999999999
	.quad	0x40100815a07b352b              # double 4.0078950000000004
	.quad	0x4000317b5286b591              # double 2.0241609999999999
	.quad	0x4012e45fe1112770              # double 4.7230220000000003
	.quad	0x401d0c0c62e4d1a6              # double 7.2617659999999997
	.quad	0x40198ee6fb4c3c19              # double 6.3895530000000003
	.quad	0x400148ca3e7d1351              # double 2.160542
	.quad	0x401bbe75360d0247              # double 6.935994
	.quad	0x4012429802c0a4a0              # double 4.5650329999999997
	.quad	0x40123d68c692f6e8              # double 4.5599699999999999
	.quad	0x400493e5753a3ec0              # double 2.5722149999999999
	.quad	0x4012296073de1e2e              # double 4.5404070000000001
	.quad	0x40232919ef954eb1              # double 9.5802759999999995
	.quad	0x3fdb1c3efae7924b              # double 0.423599
	.quad	0x4020bb5d031055b9              # double 8.3659440000000007
	.quad	0x3fc040420f6f08cc              # double 0.12696099999999999
	.quad	0x401afdef416bdb1a              # double 6.7479829999999996
	.quad	0x4013acc39ffd60e9              # double 4.9187149999999997
	.quad	0x40130acf312b1b37              # double 4.7605560000000002
	.quad	0x3fb1014b599aa609              # double 0.066425999999999999
	.quad	0x4012a7b41bfbdf09              # double 4.6637729999999999
	.quad	0x40081fddebd9018e              # double 3.0155599999999998
	.quad	0x3fe02e21101b0037              # double 0.50563100000000005
	.quad	0x40170efe4ffc9796              # double 5.7646420000000003
	.quad	0x3fe0639d5e4a3832              # double 0.51215999999999995
	.quad	0x4020d6ff9f87f024              # double 8.4199190000000001
	.quad	0x4014c991bc558644              # double 5.1968449999999997
	.quad	0x3ff5626916440f24              # double 1.3365260000000001
	.quad	0x40099b62c77574f7              # double 3.2008719999999999
	.quad	0x40105b33daf8df7a              # double 4.0890649999999997
	.quad	0x40226c68448cf7cb              # double 9.2117330000000006
	.quad	0x3fbebf65dbfceb79              # double 0.12010800000000001
	.quad	0x401d1f48c2e770bd              # double 7.280551
	.quad	0x401b0f91e646f156              # double 6.7652049999999999
	.quad	0x4005a4b9884c6a3c              # double 2.7054320000000001
	.quad	0x4015b88ebcc6c54c              # double 5.4302320000000002
	.quad	0x401eeb474107314d              # double 7.7297640000000003
	.quad	0x4014683dff3f0fe0              # double 5.1017989999999998
	.quad	0x4023c803254e6e22              # double 9.8906489999999998
	.quad	0x4005f85f8d2e514c              # double 2.7462759999999999
	.quad	0x402068b0d0edc3bd              # double 8.2044739999999994
	.quad	0x4014810f94c87981              # double 5.126036
	.quad	0x3fee1e108c3f3e03              # double 0.94116999999999995
	.quad	0x3ff9b7b5aea3161a              # double 1.607351
	.quad	0x40113899392189be              # double 4.3052720000000004
	.quad	0x402154f70153bd16              # double 8.6659469999999992
	.quad	0x401da0d130df9bdc              # double 7.4070479999999996
	.quad	0x401e354f7a919696              # double 7.5520610000000001
	.quad	0x40024dc5d6388659              # double 2.2879749999999999
	.quad	0x40167632c1f42bb6              # double 5.6154279999999996
	.quad	0x400647e7c06e19b9              # double 2.78511
	.quad	0x3fed4e7685985ad5              # double 0.91582799999999998
	.quad	0x4019c42fe82517e7              # double 6.4415889999999996
	.quad	0x4023d44b2b777d0f              # double 9.9146359999999997
	.quad	0x401246876e1deacd              # double 4.5688760000000004
	.quad	0x4020ab0121682f94              # double 8.3339929999999995
	.quad	0x4016b2d1287c200c              # double 5.6746259999999999
	.quad	0x401db3a647fdc593              # double 7.4254389999999999
	.quad	0x40150d056c508b33              # double 5.2627160000000002
	.quad	0x3ff7f3c81908e582              # double 1.497017
	.quad	0x401f5443d46b26c0              # double 7.8322900000000004
	.quad	0x4019d2cdc011d367              # double 6.4558629999999999
	.quad	0x4003163c31df761d              # double 2.3858570000000001
	.quad	0x40219111276fb092              # double 8.783334
	.quad	0x400c8a6eb91b3f21              # double 3.5675940000000002
	.quad	0x4018894f26aec072              # double 6.1340909999999997
	.quad	0x401ce5c358afc47e              # double 7.2243779999999997
	.quad	0x40102209aaa3ad19              # double 4.0332400000000002
	.quad	0x4015d3ef6b5d462c              # double 5.4569679999999998
	.quad	0x3fda7a743a647fdc              # double 0.41372399999999998
	.quad	0x4017867be553ac4f              # double 5.8813319999999996
	.quad	0x40023cddd6e04c06              # double 2.2797200000000002
	.quad	0x4005df69014b599b              # double 2.7340870000000002
	.quad	0x40234d5fbb517a46              # double 9.6511209999999998
	.quad	0x4019cf5558212945              # double 6.4524739999999996
	.quad	0x3fbebffcdab191de              # double 0.120117
	.quad	0x4014e67a0f9096bc              # double 5.2250750000000004
	.quad	0x40215cd9a52263d8              # double 8.6813479999999998
	.quad	0x40152fef39085f4a              # double 5.2968109999999999
	.quad	0x40220f2f123c42a6              # double 9.0296559999999992
	.quad	0x401ed74e65bea0ba              # double 7.7102599999999999
	.quad	0x40129dfdac68a937              # double 4.6542880000000002
	.quad	0x4023ac4ef88b9778              # double 9.8365399999999993
	.quad	0x401bc5436b8f9b13              # double 6.9426399999999999
	.quad	0x4007c31a4bdba0a5              # double 2.9702649999999999
	.quad	0x402152b777d0f1f5              # double 8.6615559999999991
	.quad	0x4018e6e696a26e54              # double 6.2254889999999996
	.quad	0x402384bc48f10a9a              # double 9.7592490000000005
	.quad	0x40212a4441787054              # double 8.5825519999999997
	.quad	0x40089fb6134ce3de              # double 3.0779839999999998
	.quad	0x3fdefadf2ecf2064              # double 0.48406199999999999
	.quad	0x4014fb76b3bb83cf              # double 5.2455699999999998
	.quad	0x3fbe6adb402d16b9              # double 0.11881799999999999
	.quad	0x4011a068db8bac71              # double 4.40665
	.quad	0x401e4a7b9170d62c              # double 7.5727370000000001
	.quad	0x3ff39c8a7a41e57e              # double 1.2257180000000001
	.quad	0x4020246f587d6f97              # double 8.0711619999999993
	.quad	0x400d38c75c4a83b2              # double 3.6527240000000001
	.quad	0x40208cf483cafb3b              # double 8.2753029999999992
	.quad	0x4018d5af6c69b5a6              # double 6.2086769999999998
	.quad	0x401c486a4ca4f441              # double 7.0707180000000003
	.quad	0x4021d4388ebcc6c5              # double 8.9144939999999995
	.quad	0x400842938de6ddf0              # double 3.032508
	.quad	0x4012dc460ed80a18              # double 4.7151110000000003
	.quad	0x401155c0767d34df              # double 4.333742
	.quad	0x40093e89a88ace25              # double 3.1555360000000001
	.quad	0x3ff1fb42cc2d6a9c              # double 1.1238429999999999
	.quad	0x400cc9c90c4dec1c              # double 3.5985279999999999
	.quad	0x40011197a24894c4              # double 2.1335899999999999
	.quad	0x401174aba3875925              # double 4.3639359999999998
	.quad	0x4013ba5a89b951c6              # double 4.9319860000000002
	.quad	0x400a684dfce3150e              # double 3.3009300000000001
	.quad	0x40222812599ed7c7              # double 9.078265
	.quad	0x40022446b69db65f              # double 2.2677130000000001
	.quad	0x4020e66cd29131ec              # double 8.4500489999999999
	.quad	0x400751fe64f54d1f              # double 2.9150360000000002
	.quad	0x401dfd65a14488c6              # double 7.497458
	.quad	0x4022606594af4f0e              # double 9.1882750000000009
	.quad	0x4022512b3cc4ac6d              # double 9.1585330000000003
	.quad	0x3fe43f0fe047d3d4              # double 0.63269799999999998
	.quad	0x400a7e81450efdca              # double 3.3117700000000001
	.quad	0x4015b14b9cb6848c              # double 5.4231400000000001
	.quad	0x4011832617c1bda5              # double 4.3780749999999999
	.quad	0x40175413122b7baf              # double 5.8321040000000002
	.quad	0x401b0767d34df04e              # double 6.7572320000000001
	.quad	0x40069d8b60f1b25f              # double 2.8269259999999998
	.quad	0x400ceb09e98dcdb3              # double 3.6147649999999998
	.quad	0x4021f36b4c7f3494              # double 8.9754280000000008
	.quad	0x401249bf5946c333              # double 4.5720190000000001
	.quad	0x3fcfb4b2fa93af75              # double 0.24770200000000001
	.quad	0x40116f58c08b75ea              # double 4.3587369999999996
	.quad	0x400e4bba98eda22f              # double 3.7869769999999998
	.quad	0x40219a2dd7a99fa1              # double 8.8011309999999998
	.quad	0x40157dba908a265f              # double 5.3727819999999999
	.quad	0x400d583f91e646f1              # double 3.6680899999999999
	.quad	0x4019662b6ae7d567              # double 6.3497750000000002
	.quad	0x3fea901b003686a5              # double 0.83009100000000002
	.quad	0x3ff2ab2bfdb4cc25              # double 1.16679
	.quad	0x401a5304039abf34              # double 6.5810700000000004
	.quad	0x4018e9a5a89b951c              # double 6.2281709999999997
	.quad	0x4005e2235b4edb2f              # double 2.7354189999999998
	.quad	0x40178b93037d6302              # double 5.8863029999999998
	.quad	0x4006f549f94855da              # double 2.8697699999999999
	.quad	0x401954f6dfc5cdd5              # double 6.332973
	.quad	0x40160d6c72192210              # double 5.513109
	.quad	0x3ff20ce0b912dba5              # double 1.128144
	.quad	0x40204e358298cc14              # double 8.1527519999999995
	.quad	0x40224cbdfd2630ec              # double 9.1498869999999996
	.quad	0x401b1c9e6687f456              # double 6.7779480000000003
	.quad	0x4013c27631b584b2              # double 4.9399040000000003
	.quad	0x3fe4f53825e13b19              # double 0.65493400000000002
	.quad	0x4019f2ae07e5a78f              # double 6.4869919999999999
	.quad	0x4000dc7de5082cf5              # double 2.1076619999999999
	.quad	0x401e8c6195464dc2              # double 7.6370909999999999
	.quad	0x401c6aa00192a737              # double 7.1041259999999999
	.quad	0x401db80389f83be6              # double 7.4297009999999997
	.quad	0x40052ca148ba83f5              # double 2.646792
	.quad	0x4012b6801711947d              # double 4.678223
	.quad	0x4013a5260f5e41d5              # double 4.9112780000000003
	.quad	0x3fec537c1376d549              # double 0.88519099999999995
	.quad	0x4001c37f7be121ee              # double 2.2204579999999998
	.quad	0x4012b8919ef954eb              # double 4.6802429999999999
	.quad	0x401a6a4b124d099e              # double 6.6038019999999999
	.quad	0x40034b5e529bae47              # double 2.4118010000000001
	.quad	0x401624d48882f0e1              # double 5.5359670000000003
	.quad	0x4010e3d790752daa              # double 4.2225020000000004
	.quad	0x4011cccdd93c46d8              # double 4.4500039999999998
	.quad	0x3fffec8711d798d9              # double 1.9952460000000001
	.quad	0x3ff24a2014727dcc              # double 1.143097
	.quad	0x402286c95bff0457              # double 9.2632549999999991
	.quad	0x40121810624dd2f2              # double 4.5235000000000003
	.quad	0x3fe1052502eec7c9              # double 0.53187799999999996
	.quad	0x400c81c6088d6d3b              # double 3.5633659999999998
	.quad	0x3feef4d7add15f03              # double 0.96738800000000002
	.quad	0x40165c3a42f1ed18              # double 5.5900660000000002
	.quad	0x4009da719b4dcec0              # double 3.231662
	.quad	0x40236dd1a21ea359              # double 9.7144899999999996
	.quad	0x3ffe109aed56b010              # double 1.879054
	.quad	0x401ff478854cdb7b              # double 7.988741
	.quad	0x4012202539756c94              # double 4.5313920000000003
	.quad	0x401773b5bf6a0dbb              # double 5.8629980000000002
	.quad	0x401882a90cd423d9              # double 6.1275979999999999
	.quad	0x401d3f9591cd1c7e              # double 7.3120940000000001
	.quad	0x3fe76073de1e2de8              # double 0.73052399999999995
	.quad	0x40115df090f733a9              # double 4.3417380000000003
	.quad	0x4022a5c50ce4ead1              # double 9.3237690000000004
	.quad	0x401ef933a0407cc8              # double 7.7433610000000001
	.quad	0x4019a61c36976bc2              # double 6.4122170000000001
	.quad	0x40152f316e371540              # double 5.296087
	.quad	0x4023c5477bbf93ff              # double 9.8853109999999997
	.quad	0x3ff9bd199bb2788e              # double 1.6086670000000001
	.quad	0x3fa85d52c16df3f9              # double 0.047586999999999997
	.quad	0x4021dd18b0d0edc4              # double 8.9318290000000004
	.quad	0x401d8e29b6b2af14              # double 7.3888309999999997
	.quad	0x400492c625e99e95              # double 2.5716670000000001
	.quad	0x40139455219a847b              # double 4.8948559999999999
	.quad	0x400928eb463497b7              # double 3.1449799999999999
	.quad	0x400b2281ba7fc32f              # double 3.3918490000000001
	.quad	0x40035abead4f5904              # double 2.4193090000000002
	.quad	0x400f72bc2fc69729              # double 3.9310230000000002
	.quad	0x401faf53c579f234              # double 7.9212179999999996
	.quad	0x400e5866e43aa79c              # double 3.7931650000000001
	.quad	0x4020a570a3d70a3d              # double 8.3231249999999992
	.quad	0x40094bfca85caafc              # double 3.1621030000000001
	.quad	0x401c3577d955714c              # double 7.0522150000000003
	.quad	0x3ff450870110a138              # double 1.26966
	.quad	0x3fe5507e9d94d0dd              # double 0.666076
	.quad	0x402200a9bcfd4bf1              # double 9.0012950000000007
	.quad	0x40204026cc1ca3a5              # double 8.1252960000000005
	.quad	0x400082c12ad81adf              # double 2.0638450000000002
	.quad	0x4020f73a57eaa2a1              # double 8.4828670000000006
	.quad	0x3ff238e3ac0c62e5              # double 1.138889
	.quad	0x400bad1a65061416              # double 3.4595229999999999
	.quad	0x4022b850374ff866              # double 9.3599870000000003
	.quad	0x4013164f97edc7ef              # double 4.7717879999999999
	.quad	0x40228eb67c286f8b              # double 9.2787360000000003
	.quad	0x402143d0bfa09460              # double 8.6324520000000007
	.quad	0x40076ba387592535              # double 2.9275579999999999
	.quad	0x4003fee99a62ed35              # double 2.4994689999999999
	.quad	0x3fe59e731d2e0e30              # double 0.67559199999999997
	.quad	0x3fde0c88a47ecfea              # double 0.46951500000000002
	.quad	0x3f9a936c58eeae9f              # double 0.025953
	.quad	0x4006ebee807bbb62              # double 2.8652009999999999
	.quad	0x401350fadf2ecf20              # double 4.8290819999999997
	.quad	0x4015d5a4f00ef135              # double 5.4586370000000004
	.quad	0x4013d91e215336df              # double 4.9620290000000002
	.quad	0x40232f442c7fbacb              # double 9.5923169999999995
	.quad	0x4020c09aed56b010              # double 8.376182
	.quad	0x4018b5e13b18dac2              # double 6.1776169999999997
	.quad	0x4000174aba387592              # double 2.0113729999999999
	.quad	0x3fee7123c42a66dc              # double 0.95131100000000001
	.quad	0x4014d4b599aa6091              # double 5.2077239999999998
	.quad	0x400715bc44bf4cb2              # double 2.8856130000000002
	.quad	0x402056a2d2fe3f36              # double 8.1692110000000007
	.quad	0x3ff0fccaf709b739              # double 1.061717
	.quad	0x3ffd5758e219652c              # double 1.833825
	.quad	0x4005364c729f59cd              # double 2.651513
	.quad	0x3ffcbd00713f077d              # double 1.796143
	.quad	0x400a0111276fb092              # double 3.250521
	.quad	0x3fbc4e831ad2135e              # double 0.110573
	.quad	0x4014b47a9e2bcf92              # double 5.1762490000000003
	.quad	0x402331b4784230fd              # double 9.59708
	.quad	0x402157a58f7121ab              # double 8.6711849999999995
	.quad	0x4022e2d4b2745bf2              # double 9.4430289999999992
	.quad	0x40229126c7eae5bd              # double 9.2834990000000008
	.quad	0x3ffb4229a5ebb774              # double 1.7036530000000001
	.quad	0x4010a11cf355cd92              # double 4.1573370000000001
	.quad	0x3ffc7c371da37ef6              # double 1.7803260000000001
	.quad	0x3ff387ebf22c01e7              # double 1.2206840000000001
	.quad	0x3ffe21cde5d18091              # double 1.8832530000000001
	.quad	0x4010bbd09e12a51e              # double 4.1834129999999998
	.quad	0x4021b7d84901d191              # double 8.8590719999999994
	.quad	0x400216191148fda0              # double 2.2607900000000001
	.quad	0x401357e1b8ed1bf8              # double 4.8358220000000003
	.quad	0x401069c347e8ccde              # double 4.1032840000000004
	.quad	0x40010756861e9292              # double 2.1285829999999999
	.quad	0x402362a411c2a023              # double 9.6926579999999997
	.quad	0x40090b0d9513f8db              # double 3.1303969999999999
	.quad	0x3fe8b6113404ea4b              # double 0.77222500000000005
	.quad	0x40205a4ce8101f32              # double 8.1763680000000001
	.quad	0x40239427418d690a              # double 9.7893620000000006
	.quad	0x3ffcc9c7ffde7211              # double 1.7992630000000001
	.quad	0x3fc28094e5d5b24f              # double 0.14454900000000001
	.quad	0x400cbc69f8c21e1d              # double 3.5919989999999999
	.quad	0x4015b3c2dadb8349              # double 5.425548
	.quad	0x3ff85bdb5d894813              # double 1.5224260000000001
	.quad	0x4009ceed8904f6e0              # double 3.2260390000000001
	.quad	0x401fc7824d4cb9ed              # double 7.944833
	.quad	0x40206ff79c842fa5              # double 8.2186859999999999
	.quad	0x400fc974a3400b89              # double 3.9733670000000001
	.quad	0x401b106573215fcc              # double 6.7660119999999999
	.quad	0x40229c0c8472c0e8              # double 9.3047830000000004
	.quad	0x3faf7681669ced0b              # double 0.061450999999999999
	.quad	0x4020761d6494d50f              # double 8.2306930000000005
	.quad	0x3ff7f4ca0c282c6f              # double 1.497263
	.quad	0x4022c46f15619115              # double 9.3836600000000007
	.quad	0x3fa3a98eda22f6a5              # double 0.038403
	.quad	0x401f2f8ca8198f1d              # double 7.7964349999999997
	.quad	0x401ff637bd05af6c              # double 7.9904469999999996
	.quad	0x40180238da3c2118              # double 6.0021699999999996
	.quad	0x4022f90d9d7774ac              # double 9.4864320000000006
	.quad	0x400d4a3486f049aa              # double 3.6612330000000002
	.quad	0x401cab56b8737974              # double 7.1673229999999997
	.quad	0x3fff16cb5350092d              # double 1.943065
	.quad	0x40202369db65ecc4              # double 8.0691670000000002
	.quad	0x4022880431bde82d              # double 9.2656569999999991
	.quad	0x40213426351deefe              # double 8.6018539999999994
	.quad	0x4008ceeae9ee45c3              # double 3.1010339999999998
	.quad	0x3ff9e177ea1c68ec              # double 1.6175459999999999
	.quad	0x4015ab4edb2f661f              # double 5.4172929999999999
	.quad	0x40212d3c36113405              # double 8.5883500000000002
	.quad	0x4018d5c96030c240              # double 6.2087760000000003
	.quad	0x400852a9d627bf62              # double 3.0403630000000001
	.quad	0x4017f0cc78e9f6a9              # double 5.9851549999999998
	.quad	0x3ffe1b25f633ce64              # double 1.8816280000000001
	.quad	0x40209c9ba5e353f8              # double 8.3058750000000003
	.quad	0x40202e5eedcc20d5              # double 8.0905679999999993
	.quad	0x3fecdba4d6e47dc3              # double 0.90181199999999995
	.quad	0x4008ee02a77a2ced              # double 3.1162160000000001
	.quad	0x4001135c182ecaef              # double 2.1344530000000002
	.quad	0x40213a7935760392              # double 8.6142059999999994
	.quad	0x401710c49ba5e354              # double 5.766375
	.quad	0x4010802602c9081c              # double 4.1251449999999998
	.quad	0x4020f34f1e4b44a2              # double 8.4752130000000001
	.quad	0x3ff3ff9f87f023ea              # double 1.249908
	.quad	0x401c442352eb5f5f              # double 7.066541
	.quad	0x401bc0fcb4f1e4b4              # double 6.9384639999999997
	.quad	0x4004538151a43782              # double 2.5407739999999999
	.quad	0x4002343419e30015              # double 2.27549
	.quad	0x4015b48e043a2164              # double 5.426323
	.quad	0x4021aa018a43bb41              # double 8.8320430000000005
	.quad	0x3fe21615ebfa8f7e              # double 0.56519600000000003
	.quad	0x400658efbb0e5e68              # double 2.7934260000000002
	.quad	0x401a9302b40f66a5              # double 6.6435649999999997
	.quad	0x40185577531db446              # double 6.0834630000000001
	.quad	0x401d937bd05af6c7              # double 7.3940270000000003
	.quad	0x40135b3aeee95747              # double 4.8390919999999999
	.quad	0x4022558f7121ab4b              # double 9.1671099999999992
	.quad	0x3fbbb18dac258d58              # double 0.108178
	.quad	0x40234f54f3775b81              # double 9.6549449999999996
	.quad	0x4021a393ab430f49              # double 8.8194859999999995
	.quad	0x401f9bbadc0980b2              # double 7.9020799999999998
	.quad	0x40201c30d306a2b1              # double 8.0550599999999992
	.quad	0x3febeed02cd39da1              # double 0.87290199999999996
	.quad	0x40214d10b1feeb2d              # double 8.6505179999999999
	.quad	0x3ff61c79b34a44c8              # double 1.3819520000000001
	.quad	0x401552756861e929              # double 5.3305259999999999
	.quad	0x3fead173fb7a5f42              # double 0.83806800000000004
	.quad	0x401469fb6134ce3e              # double 5.1034980000000001
	.quad	0x401d9532617c1bda              # double 7.3956999999999997
	.quad	0x401a6b4b2fa93af7              # double 6.6047789999999997
	.quad	0x4007c6362a5e785b              # double 2.9717829999999998
	.quad	0x40104c286f8ad256              # double 4.0743729999999996
	.quad	0x402012d0e5604189              # double 8.0367499999999996
	.quad	0x401058c2e770bd01              # double 4.0866809999999996
	.quad	0x4003b3415b1422cd              # double 2.4625270000000001
	.quad	0x40219b9085f4a127              # double 8.8038369999999997
	.quad	0x400793775b813016              # double 2.9470049999999999
	.quad	0x40185148fd9fd36f              # double 6.0793799999999996
	.quad	0x401a7c18f81e8a2f              # double 6.6211890000000002
	.quad	0x401c1cff21b3aeef              # double 7.0283170000000004
	.quad	0x4009c3ec892ab68d              # double 3.220666
	.quad	0x4023fa54c5543287              # double 9.9889279999999995
	.quad	0x40158904f6dfc5ce              # double 5.3838080000000001
	.quad	0x4021cb10342aa9f8              # double 8.8966080000000005
	.quad	0x401a410dbf0563ed              # double 6.5635289999999999
	.quad	0x401d6fdf7e8038a0              # double 7.3592510000000004
	.quad	0x40081aa92e62131b              # double 3.0130180000000002
	.quad	0x4021be0653005815              # double 8.8711420000000007
	.quad	0x4017b644523f67f5              # double 5.9279950000000001
	.quad	0x3ff2d0f1f57b41c0              # double 1.1760120000000001
	.quad	0x4022e6703afb7e91              # double 9.450075
	.quad	0x3ffb2d8d36b4c7f3              # double 1.6986209999999999
	.quad	0x3ff57de1e2de8709              # double 1.3432329999999999
	.quad	0x3fd3c62e4d1a6506              # double 0.308971
	.quad	0x4002950a88effe2a              # double 2.3227739999999999
	.quad	0x4023de0fe47991bc              # double 9.9337149999999994
	.quad	0x3ff5f7de939eadd6              # double 1.3730150000000001
	.quad	0x40194c22ee41919b              # double 6.3243520000000002
	.quad	0x401e91ac57e23f25              # double 7.6422590000000001
	.quad	0x401bbe364bec679d              # double 6.9357540000000002
	.quad	0x4022c9bef49cf56f              # double 9.3940350000000005
	.quad	0x3ffede90795f676f              # double 1.9293370000000001
	.quad	0x400d6853c148344c              # double 3.6759409999999999
	.quad	0x40074e95faa8a82a              # double 2.9133719999999999
	.quad	0x402342584f4c6e6e              # double 9.6295800000000007
	.quad	0x401bd0b5ed8d36b5              # double 6.9538190000000002
	.quad	0x40112cbff47735c2              # double 4.2937010000000004
	.quad	0x401dc83e425aee63              # double 7.4455499999999999
	.quad	0x4022884ec636b096              # double 9.2662259999999996
	.quad	0x401be8adab9f559b              # double 6.9772249999999998
	.quad	0x401791e215336dec              # double 5.8924640000000004
	.quad	0x401dc3bbc6eb0b7c              # double 7.4411459999999998
	.quad	0x401e4b84db9c7369              # double 7.5737490000000002
	.quad	0x4022d4fdf3b645a2              # double 9.4160000000000004
	.quad	0x4000e9f83be6601c              # double 2.1142430000000001
	.quad	0x40219bae2541d8e8              # double 8.8040629999999993
	.quad	0x402398357a355044              # double 9.7972830000000001
	.quad	0x4017dfa0d77b7c78              # double 5.9683869999999999
	.quad	0x3feb3fe3b03e20cd              # double 0.851549
	.quad	0x4009d88a04d12019              # double 3.2307320000000002
	.quad	0x401dde7bc3c5bd0e              # double 7.4672689999999999
	.quad	0x4007dbbc6eb0b7c3              # double 2.9822929999999999
	.quad	0x4000f58969a0ad8a              # double 2.119891
	.quad	0x401d1dad7518b0d1              # double 7.2789820000000001
	.quad	0x4011518c5c9a34ca              # double 4.329637
	.quad	0x4004da9fbe76c8b4              # double 2.6067499999999999
	.quad	0x40200b775b813016              # double 8.0223949999999995
	.quad	0x402113a6266fd652              # double 8.5383770000000005
	.quad	0x4007d8cfbfc6540d              # double 2.9808650000000001
	.quad	0x400975946c332f01              # double 3.1824119999999998
	.quad	0x40208c6f7a0b5ed9              # double 8.2742880000000003
	.quad	0x4022dddc1e7967cb              # double 9.4333200000000001
	.quad	0x40177052d666a982              # double 5.8596909999999998
	.quad	0x40137152b0a6fc59              # double 4.8606670000000003
	.quad	0x3fe6d9f90539fba4              # double 0.71410799999999997
	.quad	0x40020a0f4d7add16              # double 2.254912
	.quad	0x402014a0a0f4d7ae              # double 8.0402880000000003
	.quad	0x40118ba8826aa8eb              # double 4.3863849999999998
	.quad	0x401cfc66d373affb              # double 7.246486
	.quad	0x400fba8ef77f27fe              # double 3.9660929999999999
	.quad	0x4005f034b0e1b4bb              # double 2.7422879999999998
	.quad	0x4010eb1c864883fd              # double 4.2296009999999997
	.quad	0x4023b0f10a99b6f6              # double 9.8455890000000004
	.quad	0x4002163f572de43f              # double 2.2608630000000001
	.quad	0x3fd3fe111276fb09              # double 0.31238199999999999
	.quad	0x400d2821f2990f30              # double 3.6445959999999999
	.quad	0x4018d923e5b8561d              # double 6.2120509999999998
	.quad	0x4023c2ec4a4095f2              # double 9.8807089999999995
	.quad	0x4002f6a7ac81d3aa              # double 2.3704369999999999
	.quad	0x4020fac5c13fd0d0              # double 8.4897899999999993
	.quad	0x3ffa6e2eb1c432ca              # double 1.6518999999999999
	.quad	0x400eee3a3a8e7147              # double 3.8663219999999998
	.quad	0x401586ba8c586877              # double 5.3815710000000001
	.quad	0x3ff9eb0fadf2ecf2              # double 1.619888
	.quad	0x3ff467e9531550ca              # double 1.275369
	.quad	0x3fe402adc4c9c90c              # double 0.62532699999999997
	.quad	0x401032745bf26f1e              # double 4.0492720000000002
	.quad	0x4000ac21e1d2178f              # double 2.0840489999999998
	.quad	0x40216926e978d4fe              # double 8.7053750000000001
	.quad	0x4020f3a68b19a416              # double 8.4758800000000001
	.quad	0x3ffb1ec1c1d6cf85              # double 1.695009
	.quad	0x3fdbe8fb00bcbe62              # double 0.43609500000000001
	.quad	0x4015da13c254a3c6              # double 5.4629659999999998
	.quad	0x40048c226809d495              # double 2.568425
	.quad	0x40226d80c308feac              # double 9.2138729999999995
	.quad	0x40220bebbfd71b04              # double 9.0232829999999992
	.quad	0x3fe3a56366d7a56e              # double 0.61393900000000001
	.quad	0x40222df394b7b289              # double 9.0897489999999994
	.quad	0x40209dd8f92af9a9              # double 8.3082960000000003
	.quad	0x4003ea2b1704ff43              # double 2.4893399999999999
	.quad	0x400664a48f96e158              # double 2.7991419999999998
	.quad	0x4020b5c78a6dacac              # double 8.3550380000000004
	.quad	0x401770535c9e6688              # double 5.859693
	.quad	0x40217f0b06c43f60              # double 8.7481310000000008
	.quad	0x401d4cdc011d3672              # double 7.3250580000000003
	.quad	0x401aefc6540cc78f              # double 6.7341550000000003
	.quad	0x40111b75ea67e847              # double 4.2768170000000003
	.quad	0x400ebe02645e4e6a              # double 3.842778
	.quad	0x401e41a79fec99f2              # double 7.5641160000000003
	.quad	0x40213b24851a8694              # double 8.6155129999999999
	.quad	0x401ea37585be1a82              # double 7.6596279999999997
	.quad	0x401f51bb4916ca47              # double 7.8298160000000001
	.quad	0x40214bbfb58d1527              # double 8.6479470000000003
	.quad	0x401bdac14c660a20              # double 6.9636279999999999
	.quad	0x4020c90752da9867              # double 8.3926339999999993
	.quad	0x4022db1897a67a53              # double 9.4279220000000005
	.quad	0x4022b66a76965f52              # double 9.3562809999999992
	.quad	0x4011efdc1615ebfb              # double 4.4842380000000004
	.quad	0x401c9e7ee9142b30              # double 7.1547809999999998
	.quad	0x40163b6bb1290258              # double 5.5580280000000002
	.quad	0x401a8dc0980b2420              # double 6.6384299999999996
	.quad	0x4007d2da122fad6d              # double 2.9779550000000001
	.quad	0x401ddfa658c4bd34              # double 7.4684080000000002
	.quad	0x4021ae6ea8544780              # double 8.8406880000000001
	.quad	0x4013839ffd60e94f              # double 4.8785400000000001
	.quad	0x402337d4e09784ec              # double 9.6090459999999993
	.quad	0x4013c9e492bc2fc7              # double 4.9471610000000004
	.quad	0x3fe38522ea0fd3b3              # double 0.61000200000000004
	.quad	0x4018fb584b1ab085              # double 6.2454539999999996
	.quad	0x4016c61e0c5a8156              # double 5.6934740000000001
	.quad	0x401d40ca600b0293              # double 7.3132720000000004
	.quad	0x40001910c2c5e2ce              # double 2.0122390000000001
	.quad	0x4015b3e681a9b8cc              # double 5.4256840000000004
	.quad	0x400cb0984e3ffef4              # double 3.5862280000000002
	.quad	0x400db7fd82773e25              # double 3.714839
	.quad	0x400224934267839d              # double 2.2678590000000001
	.quad	0x402346a2b1704ff4              # double 9.6379599999999996
	.quad	0x3ffa8d6b228dc982              # double 1.6595260000000001
	.quad	0x4023623e7d135116              # double 9.6918830000000007
	.quad	0x3fe61a500d5e8d54              # double 0.69071199999999999
	.quad	0x40204f5b1c864884              # double 8.154992
	.quad	0x401918c0053e2d62              # double 6.2741699999999998
	.quad	0x4022d9ac14c660a2              # double 9.425141
	.quad	0x4021b448f10a99b7              # double 8.8521190000000001
	.quad	0x400fb6c82e019b0b              # double 3.9642490000000001
	.quad	0x40214a163fdd65a1              # double 8.6447009999999995
	.quad	0x400682656abde3fc              # double 2.8136700000000001
	.quad	0x4005be58e64b2314              # double 2.717943
	.quad	0x401ff23f24d8fd5d              # double 7.9865690000000002
	.quad	0x400f06937d1fe64f              # double 3.8782109999999999
	.quad	0x40016ad1d041cc53              # double 2.1771579999999999
	.quad	0x3fdf522a6f3f52fc              # double 0.48938999999999999
	.quad	0x401974003254e6e2              # double 6.3632819999999999
	.quad	0x4020b69014b599aa              # double 8.3565679999999993
	.quad	0x400b24aada33bd9d              # double 3.3929040000000001
	.quad	0x401efffe6d58c8ef              # double 7.749994
	.quad	0x40175da22f6a50d7              # double 5.8414390000000003
	.quad	0x401b41c4fc1df330              # double 6.814228
	.quad	0x4018031ca7d6733f              # double 6.0030390000000002
	.quad	0x401c05093964a59c              # double 7.004918
	.quad	0x402296084a515cea              # double 9.2930320000000002
	.quad	0x3fe592f6e82949a5              # double 0.67418999999999996
	.quad	0x401eed6d3b6cbd98              # double 7.7318619999999995
	.quad	0x3ffb30c77dd872f3              # double 1.6994089999999999
	.quad	0x401c14003254e6e2              # double 7.0195319999999999
	.quad	0x401766b9c304ccee              # double 5.8503179999999997
	.quad	0x40201c886162f167              # double 8.0557280000000002
	.quad	0x3ff912b4d8ba40d9              # double 1.567067
	.quad	0x3ff573c4f3ba7760              # double 1.3407640000000001
	.quad	0x401178f57f737da6              # double 4.3681239999999999
	.quad	0x4022b195ee136e72              # double 9.3468470000000003
	.quad	0x401e72480e8c8abd              # double 7.6116029999999996
	.quad	0x3fdd8765ba6efc37              # double 0.46138899999999999
	.quad	0x40001b1af3a14cec              # double 2.0132349999999999
	.quad	0x4021c99aa60913a5              # double 8.8937580000000001
	.quad	0x4011958ab92c0618              # double 4.3960369999999998
	.quad	0x400644dc22ab25b3              # double 2.783623
	.quad	0x40217832fcac8e69              # double 8.7347640000000002
	.quad	0x4017dbc621b7e0ac              # double 5.9646229999999996
	.quad	0x40153a1a500d5e8d              # double 5.3067409999999997
	.quad	0x401672a7bd48cb4b              # double 5.6119680000000001
	.quad	0x3ff55a9435ac8a37              # double 1.334614
	.quad	0x401456a7ac81d3aa              # double 5.0846239999999998
	.quad	0x3fe015e5aff2a173              # double 0.50267300000000004
	.quad	0x40185f505d0fa58f              # double 6.0930799999999996
	.quad	0x402263fca85caafc              # double 9.1952870000000004
	.quad	0x40221cfe154434e3              # double 9.0566259999999996
	.quad	0x4017ac111ada76d9              # double 5.9180339999999996
	.quad	0x400be975afaf8594              # double 3.4889939999999999
	.quad	0x3fffce7ab7564303              # double 1.9879100000000001
	.quad	0x4004f844d013a92a              # double 2.6212249999999999
	.quad	0x401688b69552e2fc              # double 5.6335090000000001
	.quad	0x3fff7ab649d388a9              # double 1.9674590000000001
	.quad	0x401fae8709741d08              # double 7.9204369999999997
	.quad	0x4010f266ba493c8a              # double 4.23672
	.quad	0x4010461d8622c450              # double 4.0684719999999999
	.quad	0x400253636f3b213e              # double 2.2907169999999999
	.quad	0x400da751ce28ed5f              # double 3.706699
	.quad	0x4023352135daad60              # double 9.6037689999999998
	.quad	0x4013030df9bdc6a0              # double 4.7529830000000004
	.quad	0x401586dca07f66e8              # double 5.3817009999999996
	.quad	0x3fe69d883ba3443d              # double 0.70672999999999997
	.quad	0x401d4122b7baecd0              # double 7.3136089999999996
	.quad	0x401a90a5269595ff              # double 6.6412550000000001
	.quad	0x4020a38ac18f81e9              # double 8.3194180000000006
	.quad	0x40047c62a1b5c7ce              # double 2.5607350000000002
	.quad	0x400c01f2990f301f              # double 3.5009510000000001
	.quad	0x4012310e02214270              # double 4.5479050000000001
	.quad	0x40229799c38b04ab              # double 9.2960949999999993
	.quad	0x4013cc68661ae70c              # double 4.9496169999999999
	.quad	0x3ff49f9ce8d972cd              # double 1.2889679999999999
	.quad	0x4021ebda9435ac8a              # double 8.9606519999999996
	.quad	0x4021866eeb702603              # double 8.7625650000000004
	.quad	0x40067274e22a2c23              # double 2.8058869999999998
	.quad	0x3fef6cdaf4adbc66              # double 0.98203799999999997
	.quad	0x3ffd59d7774aba38              # double 1.8344339999999999
	.quad	0x40195c436fc158fb              # double 6.3401009999999998
	.quad	0x40208d29dc725c3e              # double 8.2757100000000001
	.quad	0x401eb34d26fa3fcd              # double 7.6750990000000003
	.quad	0x3fdb7da1ec4e7254              # double 0.42954300000000001
	.quad	0x3fe13bc0a06e9ff1              # double 0.53854400000000002
	.quad	0x401b37e34b945309              # double 6.8045780000000002
	.quad	0x40148d1958969a0b              # double 5.1377920000000001
	.quad	0x4017318bd66277c4              # double 5.7983849999999997
	.quad	0x4001ae978d4fdf3b              # double 2.2102499999999998
	.quad	0x4015a71d60631727              # double 5.4131980000000004
	.quad	0x40096e0f3cb3e575              # double 3.1787399999999999
	.quad	0x4023093836a832ba              # double 9.5180070000000008
	.quad	0x4022e39fdbd2fa0d              # double 9.4445789999999991
	.quad	0x3ff8c4c48adeebb3              # double 1.5480389999999999
	.quad	0x40107bed740c4157              # double 4.1210230000000001
	.quad	0x400f20af1cb89d6b              # double 3.8909590000000001
	.quad	0x3ff41b9b66f9335d              # double 1.25674
	.quad	0x4012a1f212d77319              # double 4.65815
	.quad	0x4019c74afd545415              # double 6.4446219999999999
	.quad	0x40118455219a847b              # double 4.3792309999999999
	.quad	0x4007f881a1554fbe              # double 2.9963410000000001
	.quad	0x3fcc8a47ecfe9b7c              # double 0.22297
	.quad	0x40224ddd4c76d118              # double 9.1520790000000005
	.quad	0x401f5a450acc0bdd              # double 7.8381540000000002
	.quad	0x4017ee1d6494d50f              # double 5.9825340000000002
	.quad	0x4017f990f301eabc              # double 5.9937170000000002
	.quad	0x401cbbca9691a75d              # double 7.1833900000000002
	.quad	0x3fd3f7446f9b994e              # double 0.31196699999999999
	.quad	0x4020b343fa2ad3e9              # double 8.3501279999999998
	.quad	0x401af4d551d68c69              # double 6.7390949999999998
	.quad	0x400cd7c6759ab6d0              # double 3.605359
	.quad	0x4011451deefe4ffd              # double 4.3174970000000004
	.quad	0x402008c8cd63cb81              # double 8.0171569999999992
	.quad	0x400b7cfc3f811f4f              # double 3.4360279999999999
	.quad	0x401848afc47e49b2              # double 6.070983
	.quad	0x40202161e4f765fe              # double 8.0652000000000008
	.quad	0x400160ff540895d1              # double 2.1723620000000001
	.quad	0x4015c871e6cd2913              # double 5.4457469999999999
	.quad	0x400b37a24894c448              # double 3.4021650000000001
	.quad	0x3fff3b5bf6a0dbad              # double 1.9519919999999999
	.quad	0x4013e519bd4067cf              # double 4.9737309999999999
	.quad	0x40077b320535c9e6              # double 2.9351539999999998
	.quad	0x401f83f961804d98              # double 7.8788809999999998
	.quad	0x401350d0247021d1              # double 4.828919
	.quad	0x400f00e6afcce1c6              # double 3.8754400000000002
	.quad	0x4020a8088509bf9c              # double 8.3281899999999993
	.quad	0x4018ca95421c0443              # double 6.1978350000000004
	.quad	0x400f23b14a90470b              # double 3.8924280000000002
	.quad	0x4018132df505d0fa              # double 6.0187299999999997
	.quad	0x3feb7dfe32a0663c              # double 0.85912999999999994
	.quad	0x3fe7035371971c11              # double 0.71915600000000002
	.quad	0x401befd7a13c254a              # double 6.9842209999999998
	.quad	0x400fa37de939eadd              # double 3.9548299999999998
	.quad	0x40117d77b7c7820a              # double 4.3725269999999998
	.quad	0x400c96bd2b6f1993              # double 3.5736029999999999
	.quad	0x40087421c044284e              # double 3.056705
	.quad	0x3ff9b2a27f1b6912              # double 1.606112
	.quad	0x3fe81ac79702e664              # double 0.75326899999999996
	.quad	0x3ffbffe08aefb2ab              # double 1.74997
	.quad	0x3ff208a04d12018a              # double 1.1271059999999999
	.quad	0x4021936a1e81cb47              # double 8.7879190000000005
	.quad	0x3ff7a3ffef39085f              # double 1.4775389999999999
	.quad	0x40135b5b2d4d4025              # double 4.8392150000000003
	.quad	0x400075e5aff2a173              # double 2.0575670000000001
	.quad	0x4004ef88333fc86d              # double 2.616959
	.quad	0x4022c2dd377e1b8f              # double 9.3805940000000003
	.quad	0x40096134ce3de615              # double 3.1724640000000002
	.quad	0x400f58e864020818              # double 3.918412
	.quad	0x402128c1b97353b5              # double 8.5796030000000005
	.quad	0x40226b49e01de269              # double 9.2095479999999998
	.quad	0x3ff1f27fe4bcad9b              # double 1.121704
	.quad	0x400c4817763e4abe              # double 3.5352009999999998
	.quad	0x4015d23854046413              # double 5.4552930000000002
	.quad	0x4022fb24e9c45458              # double 9.4905159999999995
	.quad	0x40215e557de0d66f              # double 8.6842459999999999
	.quad	0x4020098a86d71f36              # double 8.0186349999999997
	.quad	0x4023e916ebd4cfd1              # double 9.9552530000000007
	.quad	0x40137f71eafee6fb              # double 4.8744579999999997
	.quad	0x401469ec2ce46499              # double 5.10344
	.quad	0x400c9a17f4128bf4              # double 3.5752410000000001
	.quad	0x401048b2e9ccb7d4              # double 4.0709949999999999
	.quad	0x4003d5e6362a5e78              # double 2.4794429999999998
	.quad	0x4023fbf444e0daa1              # double 9.9920980000000003
	.quad	0x400b136933a0407d              # double 3.3844780000000001
	.quad	0x3ff178583621fafd              # double 1.0918810000000001
	.quad	0x40122577531db446              # double 4.5365880000000001
	.quad	0x401794ad794a6eb9              # double 5.8951929999999999
	.quad	0x400d13d102bc72e2              # double 3.6346759999999998
	.quad	0x4018bd8ec95bff04              # double 6.1851149999999997
	.quad	0x3ff44a63305100a4              # double 1.2681610000000001
	.quad	0x401e065e4606748e              # double 7.5062189999999998
	.quad	0x401377470eb24a6b              # double 4.8664820000000004
	.quad	0x400b6370cdc8754f              # double 3.4235549999999999
	.quad	0x40022d141a6937d2              # double 2.272011
	.quad	0x400b866dbd72bcb6              # double 3.440639
	.quad	0x401cdcc2938de6de              # double 7.2155860000000001
	.quad	0x401a35a3e39f7729              # double 6.5523829999999998
	.quad	0x4023a1cac083126f              # double 9.8160000000000007
	.quad	0x3fc8ff865d7cb2d9              # double 0.195298
	.quad	0x4014fb02d59d55e7              # double 5.2451280000000002
	.quad	0x3fa7891e215336df              # double 0.045968000000000002
	.quad	0x4021d7036c9c0a8d              # double 8.9199479999999998
	.quad	0x3fdb43914f483cb0              # double 0.42599900000000002
	.quad	0x3fc2fd86a8fc0d2c              # double 0.14836199999999999
	.quad	0x401677dc37a3db3c              # double 5.617051
	.quad	0x401d90ed80a17b0f              # double 7.3915309999999996
	.quad	0x3fde1e3eaf6837f8              # double 0.47059600000000001
	.quad	0x3ff9ce991ff7164c              # double 1.6129389999999999
	.quad	0x4015eab8e8ea39c5              # double 5.4792209999999999
	.quad	0x40132bd61f5be5da              # double 4.7928090000000001
	.quad	0x3fed8644523f67f5              # double 0.92264000000000002
	.quad	0x4005d42aa9f7b5af              # double 2.7285970000000002
	.quad	0x400b67fed20296b3              # double 3.4257789999999999
	.quad	0x400e272c94b380cb              # double 3.7691279999999998
	.quad	0x40151add15f02c4d              # double 5.2762339999999996
	.quad	0x401a040e1719f7f9              # double 6.5039600000000002
	.quad	0x4016764e054690de              # double 5.615532
	.quad	0x401fd963dc486ad3              # double 7.9622950000000001
	.quad	0x400c31de69ad42c4              # double 3.5243500000000001
	.quad	0x3fff156191148fda              # double 1.94272
	.quad	0x401e73c6c97d8cf4              # double 7.6130630000000004
	.quad	0x401a1d80a17b0f6b              # double 6.5288110000000001
	.quad	0x4020ab67a0f9096c              # double 8.3347750000000004
	.quad	0x3fee46e2a80064aa              # double 0.94615300000000002
	.quad	0x3ff0325a250f8402              # double 1.0122930000000001
	.quad	0x4021c517c5ef62fa              # double 8.8849470000000004
	.quad	0x401fcd694ccab3ee              # double 7.9505970000000001
	.quad	0x4021a1b280f12c28              # double 8.8158150000000006
	.quad	0x4023b9fc08fa7a85              # double 9.8632509999999999
	.quad	0x400e58a43bb40b35              # double 3.793282
	.quad	0x40191318fc504817              # double 6.2686500000000001
	.quad	0x40231611dbca9692              # double 9.5431050000000006
	.quad	0x3ffbd1fc4c165908              # double 1.738766
	.quad	0x402330a9de8b3b32              # double 9.595046
	.quad	0x401c400218def417              # double 7.0625080000000002
	.quad	0x401a6e40c8472c0e              # double 6.6076689999999996
	.quad	0x40197064a9cdc444              # double 6.3597590000000004
	.quad	0x400e3963992c8c50              # double 3.778022
	.quad	0x3fe2fd8f0c77dd87              # double 0.59345199999999998
	.quad	0x4021abfb7a5f41af              # double 8.8359030000000001
	.quad	0x4021e7924af0bf1a              # double 8.9522879999999994
	.quad	0x401080ee8d10f51b              # double 4.1259100000000002
	.quad	0x40169e92923e5b85              # double 5.6548559999999997
	.quad	0x40223d4f9c1f85d7              # double 9.1197479999999995
	.quad	0x40149c7a7c9de050              # double 5.1528109999999998
	.quad	0x4013e0bcbe61cfff              # double 4.9694700000000003
	.quad	0x3ff0505c03361566              # double 1.0196190000000001
	.quad	0x4018fd02cd39da16              # double 6.2470809999999997
	.quad	0x40219e353f7ced91              # double 8.8089999999999993
	.quad	0x401539a9973d9ec7              # double 5.306311
	.quad	0x4000892ff4ba51a0              # double 2.066986
	.quad	0x4007704ddb5525cc              # double 2.9298359999999999
	.quad	0x40223c10d7be9857              # double 9.1173160000000006
	.quad	0x4022b7ac1d29dc72              # double 9.3587349999999994
	.quad	0x402140ec95bff045              # double 8.6268049999999992
	.quad	0x4005bce9e5e24788              # double 2.7172429999999999
	.quad	0x40204cec636b0963              # double 8.1502409999999994
	.quad	0x4022680346dc5d64              # double 9.2031500000000008
	.quad	0x3fe0ee75ff609dd0              # double 0.52910900000000005
	.quad	0x401aa0caa326e115              # double 6.6570229999999997
	.quad	0x4020e0c0053e2d62              # double 8.4389649999999996
	.quad	0x3ff942b302f72b45              # double 1.578784
	.quad	0x4017dc27631b584b              # double 5.9649939999999999
	.quad	0x40136f56a7ac81d4              # double 4.8587290000000003
	.quad	0x401969a3d2d87f88              # double 6.3531639999999996
	.quad	0x4020f4d2f5dbb9d0              # double 8.4781720000000007
	.quad	0x401f24bcad9ad85e              # double 7.785876
	.quad	0x3ff6b62e90364389              # double 1.419478
	.quad	0x400e112dba4d6e48              # double 3.7583880000000001
	.quad	0x400d1aade657b84e              # double 3.6380270000000001
	.quad	0x4002ba5e353f7cee              # double 2.3410000000000002
	.quad	0x401ac87ca643cc08              # double 6.6957880000000003
	.quad	0x3fa5f9df548ecd8e              # double 0.042922000000000002
	.quad	0x3fe781b64e054691              # double 0.73458400000000001
	.quad	0x401dd96ededaec4a              # double 7.4623369999999998
	.quad	0x4016d5e13b18dac2              # double 5.7088669999999997
	.quad	0x4017dd07852f7f4a              # double 5.9658490000000004
	.quad	0x4021652135daad60              # double 8.6975189999999998
	.quad	0x400b57c3504c48ae              # double 3.417853
	.quad	0x4010021e603d5779              # double 4.0020689999999997
	.quad	0x3ff351947cfa26a2              # double 1.207417
	.quad	0x3fd09a62ed352221              # double 0.25942300000000001
	.quad	0x401ac5d701d9f4d3              # double 6.6932029999999996
	.quad	0x3ff7753d640e9d52              # double 1.4661230000000001
	.quad	0x3ffcaa055757d5aa              # double 1.791509
	.quad	0x3fea24aada33bd9d              # double 0.81697600000000004
	.quad	0x4005c41fea8112ba              # double 2.720764
	.quad	0x4006e43e5321e604              # double 2.8614470000000001
	.quad	0x40226986db50f40e              # double 9.2061069999999994
	.quad	0x40108ab474107315              # double 4.1354540000000002
	.quad	0x4022c5d5f56a7ac8              # double 9.3863979999999997
	.quad	0x4008141bfbdf090f              # double 3.0098189999999998
	.quad	0x4021088919ef954f              # double 8.5166710000000005
	.quad	0x40112df2239e6aba              # double 4.2948690000000003
	.quad	0x401929b5e95b78cd              # double 6.2907330000000004
	.quad	0x4019f97b7414a4d3              # double 6.4936350000000003
	.quad	0x4012388effe2a3cf              # double 4.5552330000000003
	.quad	0x4023ce80389f83be              # double 9.9033219999999993
	.quad	0x402182176ddaceee              # double 8.7540849999999999
	.quad	0x401e86451b93037d              # double 7.6311229999999996
	.quad	0x402087623076c051              # double 8.2644210000000005
	.quad	0x4023b5d63886594b              # double 9.85515
	.quad	0x402337d2a62aa194              # double 9.6090289999999995
	.quad	0x401f1d9cf13cee9e              # double 7.7789190000000001
	.quad	0x4021d2c1f42bb667              # double 8.9116359999999997
	.quad	0x4008195dd4c76d11              # double 3.0123859999999998
	.quad	0x400d72ca57a786c2              # double 3.6810499999999999
	.quad	0x3fe15f02c4d65e46              # double 0.542848
	.quad	0x4007cd1aeb3dd11c              # double 2.975149
	.quad	0x3ff11b1422ccb3a2              # double 1.0691109999999999
	.quad	0x40156a059a73b42d              # double 5.3535370000000002
	.quad	0x401488eef1bac2df              # double 5.133724
	.quad	0x400bc8c47a17f413              # double 3.4730310000000002
	.quad	0x40172dd7ecbb7f9d              # double 5.7947689999999996
	.quad	0x401a758d9b5e95b8              # double 6.6147980000000004
	.quad	0x4004e51f3e89a88b              # double 2.6118760000000001
	.quad	0x3ff58fc829cfdd23              # double 1.3476030000000001
	.quad	0x4019b01e2584f4c7              # double 6.4219900000000001
	.quad	0x400563e186983516              # double 2.6737700000000002
	.quad	0x401012a6b0d95140              # double 4.0182140000000004
	.quad	0x3fe30ab4fa48301a              # double 0.59505699999999995
	.quad	0x402382cc2d6a9c56              # double 9.7554639999999999
	.quad	0x40119dc981beb181              # double 4.4040889999999999
	.quad	0x400480218def416c              # double 2.5625640000000001
	.quad	0x40088f31b152f3c3              # double 3.0699190000000001
	.quad	0x400d6008e9b38d61              # double 3.6718920000000002
	.quad	0x401a78db8bac710d              # double 6.6180250000000003
	.quad	0x401ea6b8b69552e3              # double 7.662814
	.quad	0x40164b224aada33c              # double 5.5733730000000001
	.quad	0x400614d9c6b0531a              # double 2.7601810000000002
	.quad	0x3fffc50acc0bdcad              # double 1.985606
	.quad	0x3fedab3aabcd78c4              # double 0.92715199999999997
	.quad	0x401666fb8f57f738              # double 5.6005690000000001
	.quad	0x40145ac1d29dc726              # double 5.0886300000000002
	.quad	0x4018fbe121ee6751              # double 6.2459759999999998
	.quad	0x3feffefe0ce0b913              # double 0.99987700000000001
	.quad	0x401a63b688bda943              # double 6.5973759999999997
	.quad	0x3ff4051dabe2717a              # double 1.2512490000000001
	.quad	0x3ff5173a797891e2              # double 1.318171
	.quad	0x40119c7e6b3fe9fb              # double 4.4028260000000001
	.quad	0x4016139cd8127b2d              # double 5.5191530000000002
	.quad	0x40236907b784662c              # double 9.7051370000000005
	.quad	0x4017c18fc504816f              # double 5.939025
	.quad	0x400b796af038e2a0              # double 3.4342860000000002
	.quad	0x3f95604189374bc7              # double 0.020875000000000001
	.quad	0x4011326d4801f751              # double 4.299245
	.quad	0x40137ed783dff3f1              # double 4.873869
	.quad	0x3ff62699c7bcc294              # double 1.3844240000000001
	.quad	0x4014194467381d7e              # double 5.0246750000000002
	.quad	0x4019ed3d859c8c93              # double 6.4816799999999999
	.quad	0x401a8243dccea290              # double 6.6272120000000001
	.quad	0x3ffcb2abef06b378              # double 1.7936209999999999
	.quad	0x400a9fbf83382e45              # double 3.3280020000000001
	.quad	0x3ff80913a4f8726d              # double 1.502216
	.quad	0x400e88882f0e0a85              # double 3.8166660000000001
	.quad	0x4021541d6cf850df              # double 8.6642869999999998
	.quad	0x4020e7034b0e1b4c              # double 8.4511970000000005
	.quad	0x40239d77d955714c              # double 9.8075550000000006
	.quad	0x3fe761e4f765fd8b              # double 0.73070000000000002
	.quad	0x4020412f2b66b617              # double 8.1273129999999991
	.quad	0x4023405319828805              # double 9.6256339999999998
	.quad	0x40023d2bf5515055              # double 2.2798690000000001
	.quad	0x401e28055fbb517a              # double 7.5390829999999998
	.quad	0x401165f28848387e              # double 4.349558
	.quad	0x401a601e68a0d34a              # double 6.5938660000000002
	.quad	0x40213a11a975afb0              # double 8.6134160000000008
	.quad	0x4023e1d495182a99              # double 9.9410749999999996
	.quad	0x40143298cc144029              # double 5.0494110000000001
	.quad	0x4011ae6fb4c3c18b              # double 4.4203479999999997
	.quad	0x40169ef5ec80c73b              # double 5.6552350000000002
	.quad	0x401cc595bbbe8790              # double 7.1929540000000003
	.quad	0x401bafbca1059ea5              # double 6.9216179999999996
	.quad	0x40208ef0ae536502              # double 8.2791800000000002
	.quad	0x402209cc100e6afd              # double 9.0191350000000003
	.quad	0x3ff13b2cc70867ae              # double 1.0769470000000001
	.quad	0x3ff0e674080f98fa              # double 1.056263
	.quad	0x40198082cf52b90a              # double 6.3754989999999996
	.quad	0x4023c29c99285a92              # double 9.8801009999999998
	.quad	0x400d7106ee30caa3              # double 3.6801889999999999
	.quad	0x3fd947baa9b499d0              # double 0.39500299999999999
	.quad	0x40166200c0f01fb8              # double 5.5957059999999998
	.quad	0x401b21f70de8f6cf              # double 6.783169
	.quad	0x400faf33ca31e7da              # double 3.9605480000000002
	.quad	0x40173d7518b0d0ee              # double 5.8100170000000002
	.quad	0x3ff382aa9f7b5aea              # double 1.219401
	.quad	0x401ee90e23af31b1              # double 7.7275929999999997
	.quad	0x401b52ead9274e23              # double 6.8309740000000003
	.quad	0x40225467381d7dbf              # double 9.1648499999999995
	.quad	0x40094d73860999dd              # double 3.1628180000000001
	.quad	0x3ff68ab606b7aa26              # double 1.408865
	.quad	0x3fb9b13165d39970              # double 0.10036
	.quad	0x40123dbf0563ed0f              # double 4.5602989999999997
	.quad	0x401195c13fd0d068              # double 4.3962450000000004
	.quad	0x40222818e757928e              # double 9.0783149999999999
	.quad	0x400467075b3e1438              # double 2.5503070000000001
	.quad	0x4016e5d2d01c0ca6              # double 5.724437
	.quad	0x4019273647baa9b5              # double 6.2882930000000004
	.quad	0x4017a4ba0e842742              # double 5.9108660000000004
	.quad	0x401a6b4d8ba40d91              # double 6.6047880000000001
	.quad	0x401745aaf78feef6              # double 5.8180350000000001
	.quad	0x401424c942d490e6              # double 5.0359239999999996
	.quad	0x40066b74ddf86e3b              # double 2.8024689999999999
	.quad	0x401ad340d4dc65c7              # double 6.706302
	.quad	0x3fc11422ccb3a259              # double 0.13342699999999999
	.quad	0x401bc451fc4c1659              # double 6.941719
	.quad	0x40069f84449dbec2              # double 2.8278889999999999
	.quad	0x3fe4d953586ca8a0              # double 0.65152900000000002
	.quad	0x401c4b441bb8c32b              # double 7.0735020000000004
	.quad	0x4013937d63022dd8              # double 4.8940330000000003
	.quad	0x401fb89bd8383ada              # double 7.9302820000000001
	.quad	0x3ff42e44b6e935b9              # double 1.261296
	.quad	0x4013236199780baa              # double 4.7845519999999997
	.quad	0x40032fb19e731d2e              # double 2.398288
	.quad	0x401196d58c8eef1c              # double 4.3972990000000003
	.quad	0x400861c8216c6152              # double 3.0477449999999999
	.quad	0x3ffffa96d4c33b54              # double 1.9986790000000001
	.quad	0x4009981e8a2ec28b              # double 3.1992769999999999
	.quad	0x401f6f37fbefd007              # double 7.8586119999999999
	.quad	0x4010d3996fa82e88              # double 4.2066400000000002
	.quad	0x4010f0342aa9f7b6              # double 4.2345740000000003
	.quad	0x402360a6b93ccd10              # double 9.6887720000000002
	.quad	0x4023b17f1f9acffa              # double 9.8466729999999991
	.quad	0x4011376f6d762520              # double 4.3041359999999997
	.quad	0x40143fce3150dae4              # double 5.0623100000000001
	.quad	0x4021c9a459103c8e              # double 8.8938319999999997
	.quad	0x401079d27c393682              # double 4.1189669999999996
	.quad	0x400be1a719b4dcec              # double 3.485182
	.quad	0x400d82a80064a9ce              # double 3.6887970000000001
	.quad	0x401e71dd1a21ea36              # double 7.6111950000000004
	.quad	0x4022acf70153bd16              # double 9.3378219999999992
	.quad	0x400d940fecdd0d8d              # double 3.6972960000000001
	.quad	0x40228523f67f4dbe              # double 9.26004
	.quad	0x40211db7cfe58601              # double 8.5580429999999996
	.quad	0x402200ce0b912dba              # double 9.0015719999999995
	.quad	0x3fe4a6b50b0f27bb              # double 0.64534999999999998
	.quad	0x4012cbea4ebdd335              # double 4.6991360000000002
	.quad	0x40225b2bba98eda2              # double 9.1780679999999997
	.quad	0x40215cc985f06f69              # double 8.6812249999999995
	.quad	0x3fde01e2584f4c6e              # double 0.46886499999999998
	.quad	0x4022fba83f4eca68              # double 9.4915179999999992
	.quad	0x40112435ac8a3726              # double 4.285361
	.quad	0x40171f43419e3001              # double 5.7805299999999997
	.quad	0x402170a4c1ebc83b              # double 8.7200070000000007
	.quad	0x40204c692f6e8295              # double 8.1492400000000007
	.quad	0x400dbdb3397dd00f              # double 3.7176269999999998
	.quad	0x4000238327674d16              # double 2.0173399999999999
	.quad	0x3ff51e39713ad5bf              # double 1.319879
	.quad	0x4022f4e95faa8a83              # double 9.4783430000000006
	.quad	0x4017ff123c42a66e              # double 5.9990930000000002
	.quad	0x4014ce5b8561d430              # double 5.2015209999999996
	.quad	0x4004abdb1a6d6990              # double 2.583914
	.quad	0x4023e33461309c80              # double 9.943759
	.quad	0x4017749d388a8b09              # double 5.8638810000000001
	.quad	0x3ffe68b8f14db595              # double 1.9005669999999999
	.quad	0x3ff88909289dadfb              # double 1.5334559999999999
	.quad	0x3fcb950b955f7836              # double 0.21548600000000001
	.quad	0x4022fa5a89b951c6              # double 9.4889720000000004
	.quad	0x4016de7d1351159c              # double 5.7172739999999997
	.quad	0x40160ac79702e664              # double 5.5105269999999997
	.quad	0x4023d0fe260b2c84              # double 9.9081890000000001
	.quad	0x3fe790d7be9856a3              # double 0.73643099999999995
	.quad	0x40211da5b9628cbd              # double 8.5579049999999999
	.quad	0x4010c91e215336df              # double 4.1964040000000002
	.quad	0x3fe2694ab1d4f9c2              # double 0.575353
	.quad	0x401a6125dd095af3              # double 6.5948710000000004
	.quad	0x400b1694467381d8              # double 3.3860250000000001
	.quad	0x4023c340b34e7686              # double 9.8813530000000007
	.quad	0x3fe4e634117f8445              # double 0.65310100000000004
	.quad	0x4015cb06c43f5f91              # double 5.4482679999999997
	.quad	0x3ff60cd423d9231c              # double 1.3781319999999999
	.quad	0x3ffb9c58255b035c              # double 1.72567
	.quad	0x4023fbf1a5ca2984              # double 9.9920779999999993
	.quad	0x4007ace1c58255b0              # double 2.9594149999999999
	.quad	0x3fe837f38c5436b9              # double 0.75683
	.quad	0x3fe1838c111ada77              # double 0.54730800000000002
	.quad	0x402097d24180d3d0              # double 8.2965260000000001
	.quad	0x4019d56abde3fbbd              # double 6.4584149999999996
	.quad	0x401fa6084a515cea              # double 7.9121410000000001
	.quad	0x3fc1148fd9fd36f8              # double 0.13344
	.quad	0x40146df4c2b51bd6              # double 5.1073789999999999
	.quad	0x401501290257c915              # double 5.2511330000000003
	.quad	0x402249e83e425aee              # double 9.1443499999999993
	.quad	0x401ca33daf8df7a5              # double 7.1594150000000001
	.quad	0x4003d549731098d4              # double 2.4791439999999998
	.quad	0x4017a3affb04ee7c              # double 5.9098509999999997
	.quad	0x401420db6a1e81cb              # double 5.0320869999999998
	.quad	0x401fac83ec892ab7              # double 7.9184720000000003
	.quad	0x400aa2e2328f9f45              # double 3.3295330000000001
	.quad	0x3fff84b2b777d0f2              # double 1.969897
	.quad	0x40236c9b62c77575              # double 9.712123
	.quad	0x4016c95bff04577e              # double 5.6966400000000004
	.quad	0x4023a1af3a14cec4              # double 9.8157899999999997
	.quad	0x40192923a29c779a              # double 6.2901749999999996
	.quad	0x4017a86e3b46fdeb              # double 5.9144829999999997
	.quad	0x401bf6c00da1a933              # double 6.9909670000000004
	.quad	0x40023ea033e78e19              # double 2.2805789999999999
	.quad	0x4016abe7f2c3009b              # double 5.6678769999999998
	.quad	0x40227a8f9f44d445              # double 9.2393769999999993
	.quad	0x40137cb81733226c              # double 4.8717959999999998
	.quad	0x3ffaeba8c586876e              # double 1.682534
	.quad	0x4023f39991361dc9              # double 9.9757809999999995
	.quad	0x400370b30b5aa716              # double 2.4300290000000002
	.quad	0x401b8f1a9fbe76c9              # double 6.8897500000000003
	.quad	0x3ff03e414e7ee914              # double 1.015199
	.quad	0x3fe08f7b9e060fe4              # double 0.51751499999999995
	.quad	0x401c85a187a4a490              # double 7.1304990000000004
	.quad	0x3ff88213a0c6b485              # double 1.531757
	.quad	0x40121b630a91537a              # double 4.526745
	.quad	0x4004d72cd7cf5f4e              # double 2.6050659999999999
	.quad	0x401d8353f7ced917              # double 7.3782500000000004
	.quad	0x401bf3c579f23465              # double 6.9880579999999997
	.quad	0x40040392e1ef73c1              # double 2.5017450000000001
	.quad	0x4018c746cb966be8              # double 6.1946060000000003
	.quad	0x40021bd944aa53fc              # double 2.263598
	.quad	0x400edb6fe2e6ea85              # double 3.8571469999999999
	.quad	0x40113044f1a1986c              # double 4.2971380000000003
	.quad	0x40166dcdf6987831              # double 5.6072309999999996
	.quad	0x40237eece13f4a99              # double 9.7479010000000005
	.quad	0x4020570c996b7671              # double 8.1700180000000007
	.quad	0x4020f52e72da1230              # double 8.4788700000000006
	.quad	0x401a2e7ff583a53c              # double 6.5454100000000004
	.quad	0x4014cac647778dd6              # double 5.1980219999999999
	.quad	0x402016a8112ba16e              # double 8.0442509999999992
	.quad	0x40205fd1dcd7060c              # double 8.1871480000000005
	.quad	0x4022398a86d71f36              # double 9.1123849999999997
	.quad	0x402261f85d744f5d              # double 9.1913479999999996
	.quad	0x40023db76b3bb83d              # double 2.280135
	.quad	0x3fea83d790752daa              # double 0.82859400000000005
	.quad	0x40205c3e10060781              # double 8.180161
	.quad	0x4023eac94b380cb7              # double 9.9585670000000003
	.quad	0x401ed6c1e364bec6              # double 7.7097239999999996
	.quad	0x40091ace67d77fae              # double 3.1380889999999999
	.quad	0x401a96aad1d041cc              # double 6.6471359999999997
	.quad	0x4004f55a3a08398a              # double 2.6198009999999998
	.quad	0x4018b60e94ee392e              # double 6.1777899999999999
	.quad	0x4012f8709741d085              # double 4.7426170000000001
	.quad	0x400024d983947497              # double 2.0179930000000001
	.quad	0x400b294c447c30d3              # double 3.395165
	.quad	0x400541240746455f              # double 2.6568070000000001
	.quad	0x401241d798d8a97a              # double 4.5642990000000001
	.quad	0x4009e8f10a99b6f6              # double 3.2387410000000001
	.quad	0x401cb8dda48b6523              # double 7.1805329999999996
	.quad	0x4017e1a5ca29845e              # double 5.9703590000000002
	.quad	0x3fc7585be1a82624              # double 0.18238399999999999
	.quad	0x401e0c8711d798d9              # double 7.5122340000000003
	.quad	0x3fff6235b4edb2f6              # double 1.9614769999999999
	.quad	0x40175f0563ed0f62              # double 5.8427939999999996
	.quad	0x40168dd2f1a9fbe7              # double 5.6384999999999996
	.quad	0x400e1a1a93293d10              # double 3.7627459999999999
	.quad	0x4011b0624dd2f1aa              # double 4.42225
	.quad	0x400b7f0563ed0f62              # double 3.4370219999999998
	.quad	0x40228b6ac647778e              # double 9.2722990000000003
	.quad	0x40115a7b4e54f7a9              # double 4.3383609999999999
	.quad	0x401c3f090f733a8a              # double 7.0615579999999998
	.quad	0x3ff87c01a36e2eb2              # double 1.5302750000000001
	.quad	0x4008d96e158750c2              # double 3.1061670000000001
	.quad	0x40225f6e3f78bbd4              # double 9.1863880000000008
	.quad	0x401b78d2e514c22f              # double 6.8679920000000001
	.quad	0x401790b73d188f43              # double 5.891324
	.quad	0x400a854a3c64345d              # double 3.315083
	.quad	0x401b1e0008637bd0              # double 6.7792969999999997
	.quad	0x401379d27c393682              # double 4.8689669999999996
	.quad	0x401b4b063e07a28c              # double 6.8232660000000003
	.quad	0x4021fbdcf0307f24              # double 8.9919200000000003
	.quad	0x3ff1cdc33721d53d              # double 1.112735
	.quad	0x40203807789a4591              # double 8.109432
	.quad	0x401144c5da6a4441              # double 4.3171609999999996
	.quad	0x3fe8253111f0c34c              # double 0.75453999999999998
	.quad	0x401db90f301eabbd              # double 7.4307220000000003
	.quad	0x3fe05d95dd4c76d1              # double 0.51142399999999999
	.quad	0x40162088509bf9c6              # double 5.5317699999999999
	.quad	0x3fe1fc88e79aae6d              # double 0.56207700000000005
	.quad	0x3ff12cd9e83e425b              # double 1.07345
	.quad	0x401869d2bf551505              # double 6.1033429999999997
	.quad	0x400d5b4d48882f0e              # double 3.669581
	.quad	0x40159e30caa326e1              # double 5.4044829999999999
	.quad	0x4021f40cc78e9f6b              # double 8.9766600000000007
	.quad	0x4019235f3d7d3911              # double 6.2845430000000002
	.quad	0x4004b24bfd2e9468              # double 2.587059
	.quad	0x400aab0b7c3504c5              # double 3.3335180000000002
	.quad	0x400f5f98b71b8aa0              # double 3.921678
	.quad	0x402053417ca2120e              # double 8.1626089999999998
	.quad	0x401520e23af31b15              # double 5.2821129999999998
	.quad	0x40104567125dd096              # double 4.0677760000000003
	.quad	0x4014a11e85fd04a3              # double 5.157343
	.quad	0x401005cfaacd9e84              # double 4.0056750000000001
	.quad	0x3ff786ad2dcb1466              # double 1.47038
	.quad	0x400db0446b69db66              # double 3.711068
	.quad	0x4017cc6e6d9be4cd              # double 5.9496399999999996
	.quad	0x3ff0cec636b09635              # double 1.0504819999999999
	.quad	0x40118c36544fe36d              # double 4.3869259999999999
	.quad	0x400d932f87ad080b              # double 3.6968679999999998
	.quad	0x40011d3910c2c5e3              # double 2.1392690000000001
	.quad	0x402374ba30121683              # double 9.727983
	.quad	0x4009a17e34b94531              # double 3.2038540000000002
	.quad	0x4013adc93ea2d2fe              # double 4.9197129999999998
	.quad	0x4011f0168b5cbff4              # double 4.4844609999999996
	.quad	0x401cad573647baaa              # double 7.1692780000000003
	.quad	0x3fe5842d8c2a454e              # double 0.67238500000000001
	.quad	0x4015456bca5375c9              # double 5.3177940000000001
	.quad	0x40113358298cc144              # double 4.300141
	.quad	0x4021408c1db0142f              # double 8.6260689999999993
	.quad	0x3fe49e6687f455a8              # double 0.64433600000000002
	.quad	0x4021fddebd9018e7              # double 8.9958399999999994
	.quad	0x401ed00da1a93294              # double 7.7031770000000002
	.quad	0x400984ca4f440af2              # double 3.1898390000000001
	.quad	0x40222e9a6f826edb              # double 9.0910220000000006
	.quad	0x4016ca92e62131a9              # double 5.6978260000000001
	.quad	0x401593b60285ec3e              # double 5.3942490000000003
	.quad	0x4015dd29563a9f38              # double 5.4659779999999998
	.quad	0x4021338433d6c722              # double 8.6006180000000008
	.quad	0x4001a538ef34d6a1              # double 2.2056749999999998
	.quad	0x4013311a543f1c76              # double 4.7979520000000004
	.quad	0x401d20f27bb2fec5              # double 7.2821749999999996
	.quad	0x4022251ce28ed5f1              # double 9.0724859999999996
	.quad	0x3ffceab25b317efe              # double 1.807299
	.quad	0x40151191148fd9fd              # double 5.2671549999999998
	.quad	0x4021501f31f46ed2              # double 8.6564879999999995
	.quad	0x40167a5f41aef6f9              # double 5.6195040000000001
	.quad	0x4020f1426fe718a8              # double 8.4712099999999992
	.quad	0x400666f1dc50ce4f              # double 2.8002660000000001
	.quad	0x3ff238055fbb517a              # double 1.1386769999999999
	.quad	0x4013f60d887ebf23              # double 4.9902860000000002
	.quad	0x3ffe3265add9c27f              # double 1.8873040000000001
	.quad	0x4011deb2074ea8da              # double 4.4674759999999996
	.quad	0x401a5173b85e80bf              # double 6.5795430000000001
	.quad	0x401ceda33bd9cae2              # double 7.2320679999999999
	.quad	0x4021dde785b5b707              # double 8.9334070000000008
	.quad	0x4016b35eb7457c0b              # double 5.6751659999999999
	.quad	0x401439c2c1b10fd8              # double 5.0564070000000001
	.quad	0x4016f49e44fa0514              # double 5.7388849999999998
	.quad	0x4022f156191148fe              # double 9.4713600000000007
	.quad	0x401a8c942d490e67              # double 6.6372840000000002
	.quad	0x40236d25cc426352              # double 9.7131790000000002
	.quad	0x3ff5b2abef06b378              # double 1.3561209999999999
	.quad	0x4002732f87ad080b              # double 2.3062429999999998
	.quad	0x4003473de1e2de87              # double 2.409786
	.quad	0x401f9852b4d8ba41              # double 7.8987530000000001
	.quad	0x4022a0f840181e04              # double 9.314394
	.quad	0x40223fe73a365cb3              # double 9.1248109999999993
	.quad	0x40161236c15d2d02              # double 5.5177870000000002
	.quad	0x3feef2c5197a2489              # double 0.96713499999999996
	.quad	0x4023aed4a1ad6452              # double 9.8414660000000005
	.quad	0x3ffb6c7325918a01              # double 1.7139770000000001
	.quad	0x401015e9e1b089a0              # double 4.0213999999999999
	.quad	0x4021522163fdd65a              # double 8.6604109999999999
	.quad	0x40142dd50a88effe              # double 5.0447579999999999
	.quad	0x400bb7afea3df6dc              # double 3.4646910000000002
	.quad	0x40212d141a6937d2              # double 8.588044
	.quad	0x40082d3cff64cf8d              # double 3.0220889999999998
	.quad	0x4001b9da16616b55              # double 2.2157480000000001
	.quad	0x40078280ae104923              # double 2.9387219999999998
	.quad	0x4004d79f23465626              # double 2.6052840000000002
	.quad	0x400289068986fcdf              # double 2.316907
	.quad	0x3ffc5a86940357a3              # double 1.7721009999999999
	.quad	0x4015c974e65bea0c              # double 5.4467350000000003
	.quad	0x401411d25aab4741              # double 5.017404
	.quad	0x4021cdebd9018e75              # double 8.9021899999999992
	.quad	0x40210273929ed395              # double 8.5047879999999996
	.quad	0x4015ecbc05d52c17              # double 5.4811860000000001
	.quad	0x4015c69878316a05              # double 5.4439409999999997
	.quad	0x4020f9591cd1c7de              # double 8.4870079999999994
	.quad	0x400bb5a63f9a49c3              # double 3.4636960000000001
	.quad	0x3fdce0828c36da88              # double 0.45120300000000002
	.quad	0x4005d2cadddf43c8              # double 2.7279260000000001
	.quad	0x3ff823cd9a52263e              # double 1.5087410000000001
	.quad	0x4013ad6f544bb1af              # double 4.9193699999999998
	.quad	0x3ffacb1897a67a53              # double 1.6745840000000001
	.quad	0x401999ebe9c88616              # double 6.4003139999999998
	.quad	0x401972bb23571d1d              # double 6.3620419999999998
	.quad	0x40207d1a437824d5              # double 8.2443410000000004
	.quad	0x3ffd727aa68f4b62              # double 1.840449
	.quad	0x3ffcebc2fc69728a              # double 1.8075589999999999
	.quad	0x4022ec8f75536934              # double 9.4620320000000006
	.quad	0x3fe5054690de0935              # double 0.65689399999999998
	.quad	0x4007c40d90e23af3              # double 2.970729
	.quad	0x40209310fd7e4580              # double 8.2872389999999996
	.quad	0x401ff9ebe9c88616              # double 7.9940639999999998
	.quad	0x40237a8f9f44d445              # double 9.7393769999999992
	.quad	0x400e862dc6e2a800              # double 3.8155169999999998
	.quad	0x3fd450efdc9c4da9              # double 0.31744
	.quad	0x3ff0d7470eb24a6b              # double 1.0525580000000001
	.quad	0x402195aa4fca42af              # double 8.7923150000000003
	.quad	0x400ddfb82c2bd7f5              # double 3.7342379999999999
	.quad	0x40217107746887a9              # double 8.7207600000000003
	.quad	0x401e8107b784662c              # double 7.6260060000000003
	.quad	0x4020edbec2480e8d              # double 8.4643460000000008
	.quad	0x4010d8283d35eb74              # double 4.2110909999999997
	.quad	0x3ffd110c2c5e2cdc              # double 1.816662
	.quad	0x401314a7f8012dfd              # double 4.7701719999999996
	.quad	0x400de5093964a59c              # double 3.736834
	.quad	0x4003e328f9f44d44              # double 2.4859179999999999
	.quad	0x40200fbb9496249a              # double 8.0307279999999999
	.quad	0x401b6b59578a2a91              # double 6.8548330000000002
	.quad	0x3ff2cbfe3b03e20d              # double 1.174803
	.quad	0x4011ba17b0f6ad71              # double 4.4317310000000001
	.quad	0x3ff0e32b12d3415b              # double 1.055461
	.quad	0x4021cd330941c821              # double 8.9007799999999992
	.quad	0x400c0225fa658c4c              # double 3.5010490000000001
	.quad	0x401149f1f14983d8              # double 4.3222120000000004
	.quad	0x401402b3461309c8              # double 5.002637
	.quad	0x40226be4cd749279              # double 9.2107299999999999
	.quad	0x401fc2749f0e4da1              # double 7.9398980000000003
	.quad	0x400d963f572de43f              # double 3.6983630000000001
	.quad	0x4019f46dc5d63886              # double 6.4886999999999997
	.quad	0x4008b4f0520d130e              # double 3.088349
	.quad	0x4005b6b97fe8ee6c              # double 2.7142210000000002
	.quad	0x401350a5269595ff              # double 4.8287550000000001
	.quad	0x40158be76c8b4396              # double 5.3866250000000004
	.quad	0x402069ef0f16f438              # double 8.2069019999999995
	.quad	0x401c57e56473471f              # double 7.0858359999999996
	.quad	0x401bbe95faa8a82a              # double 6.9361189999999997
	.quad	0x3ffbbd4280ae1049              # double 1.733706
	.quad	0x401d1c44bf4cb189              # double 7.2776059999999996
	.quad	0x3f94df8b1572580c              # double 0.020383999999999999
	.quad	0x4023f097a67a52ac              # double 9.9699069999999991
	.quad	0x400544c942d490e6              # double 2.6585869999999998
	.quad	0x4012984ba0e84274              # double 4.6487259999999999
	.quad	0x4018101d19157abc              # double 6.0157360000000004
	.quad	0x400fbe1f3a57eaa3              # double 3.9678330000000002
	.quad	0x4021003b81b64e05              # double 8.5004539999999995
	.quad	0x401d6fff79c842fa              # double 7.3593729999999997
	.quad	0x3fd4a775fb2edfe7              # double 0.32272099999999998
	.quad	0x401c58e820e62995              # double 7.0868229999999999
	.quad	0x401c121a719b4dcf              # double 7.0176790000000002
	.quad	0x4005388765ba6efc              # double 2.6526019999999999
	.quad	0x401207685985ad54              # double 4.5072340000000004
	.quad	0x40109b7564302b41              # double 4.151815
	.quad	0x400eaed3d859c8c9              # double 3.8353649999999999
	.quad	0x3fe42fe60c38f367              # double 0.63084700000000005
	.quad	0x40086054ef459d99              # double 3.047037
	.quad	0x3ff0c36544fe36d2              # double 1.047704
	.quad	0x40213e0653005815              # double 8.6211420000000007
	.quad	0x40229d1697f1f9ad              # double 9.306813
	.quad	0x40092548a9bcfd4c              # double 3.143205
	.quad	0x4013551611ba3ca7              # double 4.8330919999999997
	.quad	0x400cf6cc5fbf8338              # double 3.6205069999999999
	.quad	0x40116419e30014f9              # double 4.3477550000000003
	.quad	0x40198f8b1572580c              # double 6.3901789999999998
	.quad	0x3fe8feda66128390              # double 0.78110999999999997
	.quad	0x3feab524399b2c41              # double 0.83461200000000002
	.quad	0x400144c5974e65bf              # double 2.1585800000000002
	.quad	0x3ff6ecb74ddf86e4              # double 1.4327920000000001
	.quad	0x40237d66490a350d              # double 9.7449209999999997
	.quad	0x4020fd34df04ddb5              # double 8.4945439999999994
	.quad	0x401297b99d451fc5              # double 4.6481690000000002
	.quad	0x4023f45b291b823d              # double 9.9772580000000008
	.quad	0x3fd635b0bbf50e34              # double 0.34702699999999997
	.quad	0x4020f024b33daf8e              # double 8.4690300000000001
	.quad	0x400e1dfe32a0663c              # double 3.7646449999999998
	.quad	0x4022210cb295e9e2              # double 9.0645500000000006
	.quad	0x40197c30d306a2b1              # double 6.3712799999999996
	.quad	0x3ff48445aa2e3c53              # double 1.2822929999999999
	.quad	0x402176caab8a5ce6              # double 8.7320150000000005
	.quad	0x3fe13a55d1c3ac93              # double 0.53837100000000004
	.quad	0x4020960e736049ed              # double 8.2930790000000005
	.quad	0x401ff96fa82e87d3              # double 7.9935900000000001
	.quad	0x4009a88051c9f72f              # double 3.2072759999999998
	.quad	0x40155d09e12a51e3              # double 5.3408579999999999
	.quad	0x4021aac7325918a0              # double 8.8335509999999999
	.quad	0x3ff7794d94078961              # double 1.4671149999999999
	.quad	0x3ff37636f3b213e4              # double 1.216361
	.quad	0x4008c53eb399f5e0              # double 3.096311
	.quad	0x400501272c94b381              # double 2.6255630000000001
	.quad	0x401b1256366d7a57              # double 6.7679070000000001
	.quad	0x401779a176ddacef              # double 5.8687800000000001
	.quad	0x3ffeb77292c49342              # double 1.9197869999999999
	.quad	0x400b632ebe596c83              # double 3.4234290000000001
	.quad	0x400c5a072d1aeb3e              # double 3.5439590000000001
	.quad	0x4020754866a11ec9              # double 8.2290679999999998
	.quad	0x3ff46809d495182b              # double 1.2754000000000001
	.quad	0x401b31c044284dfd              # double 6.7985850000000001
	.quad	0x4015cf0aa21a719b              # double 5.4521889999999997
	.quad	0x402307fa7eb6bf44              # double 9.5155829999999994
	.quad	0x4023db8bac710cb3              # double 9.9288000000000007
	.quad	0x4016a1d0c8041030              # double 5.658023
	.quad	0x400559085f4a1273              # double 2.6684730000000001
	.quad	0x4021532ce89656ef              # double 8.662452
	.quad	0x3ff2b75536933a04              # double 1.169759
	.quad	0x400e7f76a2f48c2e              # double 3.8122379999999998
	.quad	0x4022706833c6002a              # double 9.2195450000000001
	.quad	0x400cd4117f84449e              # double 3.6035490000000001
	.quad	0x3ff06ce13f4a98ab              # double 1.0265820000000001
	.quad	0x4012e564b662fdfc              # double 4.7240169999999999
	.quad	0x401db677b395c422              # double 7.428191
	.quad	0x402226fae7924af1              # double 9.0761330000000005
	.quad	0x402007b2aae29739              # double 8.0150349999999992
	.quad	0x4011d647778dd617              # double 4.459257
	.quad	0x400db24a6a875d57              # double 3.712056
	.quad	0x3fea2122fad6cb53              # double 0.81654499999999997
	.quad	0x400603a5c1c6088d              # double 2.7517809999999998
	.quad	0x400befcc5b8dc550              # double 3.492089
	.quad	0x3ff4a225fa658c4c              # double 1.289587
	.quad	0x401604141e9af5ba              # double 5.5039829999999998
	.quad	0x400d8d834091c087              # double 3.6940979999999999
	.quad	0x3ff0ec9f2fdb8fde              # double 1.057769
	.quad	0x3fc38b3f63c31df7              # double 0.15268699999999999
	.quad	0x401ed7c84b5dcc64              # double 7.7107250000000001
	.quad	0x3ff6e0bf5d78811b              # double 1.42987
	.quad	0x400cd81b64e05469              # double 3.605521
	.quad	0x40162677b395c422              # double 5.537566
	.quad	0x401f99d27c393682              # double 7.9002169999999996
	.quad	0x40114c3dee781840              # double 4.3244550000000004
	.quad	0x4020ef735c182ecb              # double 8.4676770000000001
	.quad	0x402090cc144028e5              # double 8.282807
	.quad	0x40180e653868fd1a              # double 6.0140580000000003
	.quad	0x3fe81fa76534373f              # double 0.75386399999999998
	.quad	0x4018fde050374ff8              # double 6.2479259999999996
	.quad	0x3ff2bbfb58d1526e              # double 1.1708940000000001
	.quad	0x3fa62b063e07a28c              # double 0.043297000000000002
	.quad	0x4020bc70eb24a6a8              # double 8.3680489999999992
	.quad	0x40235bfad2999568              # double 9.6796480000000002
	.quad	0x3ffc8e3ac0c62e4d              # double 1.784724
	.quad	0x4017feecbfb15b57              # double 5.9989499999999998
	.quad	0x402145f505d0fa59              # double 8.6366350000000001
	.quad	0x4016de158750c1b9              # double 5.7168789999999996
	.quad	0x401eab70ac3a860e              # double 7.6674220000000002
	.quad	0x40143d2ae8e1d649              # double 5.0597339999999997
	.quad	0x40238b139c94f69d              # double 9.7716340000000005
	.quad	0x4020d769014b599b              # double 8.4207230000000006
	.quad	0x4023cd3ae685db77              # double 9.9008400000000005
	.quad	0x3fe9493ea2d2fe3f              # double 0.79019099999999998
	.quad	0x3fed0cf1800a7c5b              # double 0.90783000000000003
	.quad	0x401a292ddbdb5d89              # double 6.5402139999999997
	.quad	0x4015aa600b029281              # double 5.4163819999999996
	.quad	0x401d228f9f44d445              # double 7.2837509999999996
	.quad	0x3ff19dfeb8d82342              # double 1.101073
	.quad	0x4021931c0010c6f8              # double 8.7873230000000007
	.quad	0x40098743201040c0              # double 3.191046
	.quad	0x401530578e5c4eb5              # double 5.2972089999999996
	.quad	0x4014c65d7cb2d906              # double 5.1937160000000002
	.quad	0x4015789c5e6ff7e0              # double 5.3677840000000003
	.quad	0x40042aa7ded6ba8c              # double 2.5208279999999998
	.quad	0x401c0cde5d18090b              # double 7.0125669999999998
	.quad	0x4012d29dc725c3df              # double 4.7056800000000001
	.quad	0x3ff54165907d9125              # double 1.3284659999999999
	.quad	0x4022e5929670196e              # double 9.4483840000000008
	.quad	0x40002a2fcefaa476              # double 2.0205989999999998
	.quad	0x4023b68e3ef28416              # double 9.8565539999999991
	.quad	0x40227e0285ec3dab              # double 9.2461129999999994
	.quad	0x401aac3f3e0370ce              # double 6.6682100000000002
	.quad	0x4018cd716d2aa5c6              # double 6.200628
	.quad	0x401478d3ae685db7              # double 5.1179949999999996
	.quad	0x4000cefed634549b              # double 2.1010719999999998
	.quad	0x3ff2f1de69ad42c4              # double 1.18405
	.quad	0x402071eff9f87f02              # double 8.2225339999999996
	.quad	0x4004d6f0068db8bb              # double 2.6049500000000001
	.quad	0x4009c635a426bb56              # double 3.2217820000000001
	.quad	0x40200163992c8c50              # double 8.002713
	.quad	0x3fff8cf1800a7c5b              # double 1.9719100000000001
	.quad	0x4012b8fd5cb790fb              # double 4.6806539999999996
	.quad	0x400373c36113404f              # double 2.4315250000000002
	.quad	0x401853743632c1f4              # double 6.0814979999999998
	.quad	0x4021d548882f0e0b              # double 8.9165690000000009
	.quad	0x4019ed6ba8c58687              # double 6.4818559999999996
	.quad	0x4017ca1405708249              # double 5.9473419999999999
	.quad	0x402308ad03d9a954              # double 9.5169449999999997
	.quad	0x400a13a0407cc7d2              # double 3.2595830000000001
	.quad	0x401f5ed56b00ffda              # double 7.8426109999999998
	.quad	0x3fe108c1db0142f6              # double 0.53231899999999999
	.quad	0x3fbec80c73abc947              # double 0.12024
	.quad	0x4011be59f2ba9d1f              # double 4.4358899999999997
	.quad	0x40147ed41b75a74c              # double 5.123856
	.quad	0x4018f15e39713ad6              # double 6.2357110000000002
	.quad	0x401b929670196d8f              # double 6.8931519999999997
	.quad	0x4019ccdf266ba494              # double 6.4500700000000002
	.quad	0x3fecaecaeea63b69              # double 0.89633700000000005
	.quad	0x3ff292fb19e731d3              # double 1.160884
	.quad	0x401a4822ff08893b              # double 6.5704459999999996
	.quad	0x401608dc981beb18              # double 5.5086539999999999
	.quad	0x401b8afd976ff3ae              # double 6.8857330000000001
	.quad	0x401934a5df2239e7              # double 6.3014140000000003
	.quad	0x4020e857082491b0              # double 8.4537890000000004
	.quad	0x3ffd373f316e3715              # double 1.8259879999999999
	.quad	0x400afd0b73d188f4              # double 3.3735569999999999
	.quad	0x401ba7c1376d5497              # double 6.9138229999999998
	.quad	0x4008d5bbbe878fac              # double 3.1043620000000001
	.quad	0x40021f4a98aa8651              # double 2.265279
	.quad	0x40231b4efcbd5561              # double 9.5533370000000008
	.quad	0x4010d9878316a055              # double 4.2124309999999996
	.quad	0x40237ebdb1a6d699              # double 9.747541
	.quad	0x401f0527a20578e6              # double 7.7550340000000002
	.quad	0x401cdfb19e731d2e              # double 7.218451
	.quad	0x4001776709fa54c5              # double 2.1833019999999999
	.quad	0x401abd7cf5f4e443              # double 6.685047
	.quad	0x4014d845132f87ad              # double 5.211201
	.quad	0x3fe2c3d25247cb71              # double 0.58640400000000004
	.quad	0x400fe279dd3bafd9              # double 3.9855839999999998
	.quad	0x4014524bba12b5e5              # double 5.0803669999999999
	.quad	0x40204fe5eaab0425              # double 8.1560509999999997
	.quad	0x401df92bc2fc6973              # double 7.4933310000000004
	.quad	0x40200ca31e7d9989              # double 8.0246820000000003
	.quad	0x3ffa94e4c942d491              # double 1.661351
	.quad	0x401af9d388a8b08e              # double 6.7439710000000002
	.quad	0x4023a2027525460b              # double 9.8164250000000006
	.quad	0x401bbeabffcdab19              # double 6.9362029999999999
	.quad	0x4016e5ca6ca03c4b              # double 5.724405
	.quad	0x40126e703afb7e91              # double 4.60785
	.quad	0x401c55b5fa22706d              # double 7.0837019999999997
	.quad	0x401b13083558a761              # double 6.768586
	.quad	0x401c7bf65dbfceb8              # double 7.1210570000000004
	.quad	0x40212e86833c6003              # double 8.5908700000000007
	.quad	0x40220c92bc2fc697              # double 9.0245569999999997
	.quad	0x401e36ec9e236c16              # double 7.5536370000000002
	.quad	0x401ba9bed30f062d              # double 6.9157669999999998
	.quad	0x402352478854cdb8              # double 9.6607020000000005
	.quad	0x4019bc33721d53ce              # double 6.4337900000000001
	.quad	0x4012e197a24894c4              # double 4.7203049999999998
	.quad	0x3fc18c4bd33d2956              # double 0.13709399999999999
	.quad	0x40067d7d3910c2c6              # double 2.8112740000000001
	.quad	0x4019c69be09bb6aa              # double 6.4439539999999997
	.quad	0x4023b6050374ff86              # double 9.8555069999999994
	.quad	0x401f9cbee807bbb6              # double 7.9030719999999999
	.quad	0x4018c89374bc6a7f              # double 6.195875
	.quad	0x4015e00d5e8d5411              # double 5.468801
	.quad	0x4021dd4de7ea5f85              # double 8.9322350000000004
	.quad	0x40101154003254e7              # double 4.0169220000000001
	.quad	0x40206751ce28ed5f              # double 8.2017959999999999
	.quad	0x400fc956c0d6f545              # double 3.9733100000000001
	.quad	0x40206c868b9fdbd3              # double 8.211964
	.quad	0x3ffc3ffcdab191de              # double 1.765622
	.quad	0x400c87b99d451fc5              # double 3.5662720000000001
	.quad	0x401d2252ce032db2              # double 7.2835190000000001
	.quad	0x40233d612c6ac216              # double 9.6198820000000005
	.quad	0x400a12b884406c01              # double 3.2591410000000001
	.quad	0x400137efe0ce0b91              # double 2.1523129999999999
	.quad	0x3ff4bd6f97679032              # double 1.296249
	.quad	0x40202273f748a15a              # double 8.0672910000000009
	.quad	0x4021f3573eab367a              # double 8.9752749999999999
	.quad	0x4012f6d82ba5a038              # double 4.7410589999999999
	.quad	0x4016d4fce746cb96              # double 5.7079959999999996
	.quad	0x4020a7182235b4ee              # double 8.3263560000000005
	.quad	0x400ba180d3cff64d              # double 3.453859
	.quad	0x401e0428d434a01b              # double 7.5040620000000002
	.quad	0x3ff62e5bc87db2b3              # double 1.3863179999999999
	.quad	0x4004b84d338f7985              # double 2.5899909999999999
	.quad	0x3ff0dbea0ba1f4b2              # double 1.05369
	.quad	0x400ee40af1cb89d7              # double 3.8613490000000001
	.quad	0x4020977c88e79aae              # double 8.2958719999999992
	.quad	0x40226a0cf1800a7c              # double 9.2071299999999993
	.quad	0x4005cad688377186              # double 2.7240419999999999
	.quad	0x4019cf0e0a84be40              # double 6.4522019999999998
	.quad	0x4012688509bf9c63              # double 4.6020700000000003
	.quad	0x401d19c065b63d3e              # double 7.2751479999999997
	.quad	0x4006ad65e4606749              # double 2.834667
	.quad	0x3fdc27ae9ab29e4d              # double 0.43992199999999998
	.quad	0x402284d184c27200              # double 9.259411
	.quad	0x3fe283211cb039ef              # double 0.57850699999999999
	.quad	0x3f6b152f3c2dadb8              # double 0.0033059999999999999
	.quad	0x400281a3f4666eca              # double 2.3133010000000001
	.quad	0x4016c8d2a1f8e3ac              # double 5.696116
	.quad	0x400d60f55de58e65              # double 3.6723430000000001
	.quad	0x400367967caea748              # double 2.4255800000000001
	.quad	0x40178f78359bc340              # double 5.8901070000000004
	.quad	0x401f01209edbf8ba              # double 7.7511010000000002
	.quad	0x400f6fdeb52c9d17              # double 3.929624
	.quad	0x401584f1a1986b9c              # double 5.3798279999999998
	.quad	0x4020fa62cba732df              # double 8.4890349999999994
	.quad	0x3ff62ddaceee0f3d              # double 1.3861950000000001
	.quad	0x4021af7036c9c0a9              # double 8.8426530000000003
	.quad	0x401bffb9389b5200              # double 6.9997299999999996
	.quad	0x40226092ccf6be38              # double 9.1886200000000002
	.quad	0x4003273c4f3ba776              # double 2.394158
	.quad	0x40149427c7c5260f              # double 5.1446829999999997
	.quad	0x3fe8425aee631f8a              # double 0.7581
	.quad	0x402291aef6f8f041              # double 9.2845379999999995
	.quad	0x4009bfb71fbc5dea              # double 3.2186110000000001
	.quad	0x3ff563d4f15e7c8d              # double 1.336873
	.quad	0x4019555714b9cb68              # double 6.3333399999999997
	.quad	0x401d5cd07852f7f5              # double 7.3406390000000004
	.quad	0x400f97cb2d905c03              # double 3.9491179999999999
	.quad	0x4016f0b34e768598              # double 5.7350589999999997
	.quad	0x4013bc5d63886595              # double 4.9339500000000003
	.quad	0x400b97bd05af6c6a              # double 3.4490910000000001
	.quad	0x40174b9a9da597d5              # double 5.8238320000000003
	.quad	0x4019b0e4da09cc32              # double 6.4227480000000003
	.quad	0x401c96f9335d249e              # double 7.1474349999999998
	.quad	0x40202185f06f6944              # double 8.0654749999999992
	.quad	0x4021ad6a37ac3eb8              # double 8.8387010000000004
	.quad	0x401ca9081c2e33f0              # double 7.1650700000000001
	.quad	0x4000494ee392e1ef              # double 2.0357949999999998
	.quad	0x401817f455a7d242              # double 6.0233930000000004
	.quad	0x401c444bb1af3a15              # double 7.0666950000000002
	.quad	0x4016f3c3a42f1ed1              # double 5.7380509999999996
	.quad	0x4003a4da09cc319c              # double 2.4554939999999998
	.quad	0x402379285a921cce              # double 9.7366360000000007
	.quad	0x3ff8acedd4845133              # double 1.542219
	.quad	0x400a7deacc92146a              # double 3.311483
	.quad	0x3fd20ab713272431              # double 0.28190399999999999
	.quad	0x3ffdd76145953587              # double 1.865083
	.quad	0x3ffa2517e77d523b              # double 1.634056
	.quad	0x4021d5f91600f345              # double 8.917916
	.quad	0x401d65f7c6759ab7              # double 7.3495780000000002
	.quad	0x4004a463065f9592              # double 2.5802670000000001
	.quad	0x40195bbd3804534c              # double 6.3395890000000001
	.quad	0x3fd95ebfa8f7db6e              # double 0.39640799999999998
	.quad	0x4014e0507a6bd6e9              # double 5.2190570000000003
	.quad	0x3fe2d38cda6e75ff              # double 0.58832399999999996
	.quad	0x4013aaf5fd47bedb              # double 4.9169539999999996
	.quad	0x40233d14c22ee419              # double 9.6192989999999998
	.quad	0x4003fe81cb46bacf              # double 2.4992709999999998
	.quad	0x401264bec679cc75              # double 4.5983840000000002
	.quad	0x4012b5c52e72da12              # double 4.6775099999999998
	.quad	0x3fff9c0b9991361e              # double 1.975597
	.quad	0x400d074538ef34d7              # double 3.6285500000000002
	.quad	0x4000ce8e1d6494d5              # double 2.100857
	.quad	0x3fc83aa79bbadc0a              # double 0.18929000000000001
	.quad	0x401e41c25d074214              # double 7.5642180000000003
	.quad	0x4006976cce5f7404              # double 2.8239380000000001
	.quad	0x4014e75ddd2ae8e2              # double 5.2259440000000001
	.quad	0x40233ccd74927914              # double 9.6187550000000001
	.quad	0x400699e40c8472c1              # double 2.825142
	.quad	0x4005b497b7414a4d              # double 2.7131799999999999
	.quad	0x401bda08398a6549              # double 6.9629219999999998
	.quad	0x40160d1287c200c1              # double 5.5127660000000001
	.quad	0x400d916e37154003              # double 3.6960109999999999
	.quad	0x401e12146a1a500d              # double 7.5176559999999996
	.quad	0x4020352b0a6fc58b              # double 8.1038440000000005
	.quad	0x400c2a0fd3b29a1c              # double 3.5205380000000002
	.quad	0x4014795ee136e71d              # double 5.1185260000000001
	.quad	0x401f9455eaee2004              # double 7.8948590000000003
	.quad	0x40184d594f26aec0              # double 6.0755359999999996
	.quad	0x3ffbf26394face68              # double 1.746677
	.quad	0x40189c48adeebb34              # double 6.1526209999999999
	.quad	0x4015385c67dfe32a              # double 5.30504
	.quad	0x40233bee1bd1ed9e              # double 9.617051
	.quad	0x400f5052934acaff              # double 3.9142199999999998
	.quad	0x3ffbaa3ad18d25ee              # double 1.72906
	.quad	0x400f48bc169c23b8              # double 3.9105150000000002
	.quad	0x4010ccf1800a7c5b              # double 4.2001400000000002
	.quad	0x401177b4e54f7a92              # double 4.3669010000000004
	.quad	0x4009001a36e2eb1c              # double 3.1250499999999999
	.quad	0x3fe86a35935fc3b5              # double 0.762965
	.quad	0x4012c034f3fd933e              # double 4.6877019999999998
	.quad	0x3fd5d823422467be              # double 0.34131699999999998
	.quad	0x4013bcc78e9f6a94              # double 4.934355
	.quad	0x4017ff7985271bce              # double 5.9994870000000002
	.quad	0x40227991148fd9fd              # double 9.2374349999999996
	.quad	0x4003644b6e935b92              # double 2.423972
	.quad	0x401928f25a250f84              # double 6.289987
	.quad	0x401dbc8754f3775c              # double 7.4341100000000004
	.quad	0x40192aa1d755bccb              # double 6.291633
	.quad	0x401f50cbaf965b21              # double 7.8289020000000002
	.quad	0x401b88626f60e0eb              # double 6.8831879999999996
	.quad	0x40203dfa658c4bd3              # double 8.1210509999999996
	.quad	0x4008ed44567125dd              # double 3.115853
	.quad	0x4014ab24638c9753              # double 5.1671310000000004
	.quad	0x40195d38cda6e760              # double 6.341037
	.quad	0x401bab93037d6302              # double 6.9175529999999998
	.quad	0x3fe2fb09203a322b              # double 0.593144
	.quad	0x4007655b89939219              # double 2.9244910000000002
	.quad	0x4014e4e93e1c9b41              # double 5.2235459999999998
	.quad	0x40163d4738a3b57c              # double 5.5598419999999997
	.quad	0x4018c3ffef39085f              # double 6.1914059999999997
	.quad	0x40006dc011d3671b              # double 2.0535890000000001
	.quad	0x401cb7bedb7281fe              # double 7.1794390000000003
	.quad	0x401fd7281fd9ba1b              # double 7.9601139999999999
	.quad	0x401dcb51bd61f5be              # double 7.4485539999999997
	.quad	0x3ff7260c38f36695              # double 1.4467890000000001
	.quad	0x4014e7204295a6c6              # double 5.2257090000000002
	.quad	0x4010ddf090f733a9              # double 4.2167380000000003
	.quad	0x3ffd5e3c968943e1              # double 1.835507
	.quad	0x3ffda698bb4d4888              # double 1.853173
	.quad	0x4021f68943e10060              # double 8.9815159999999992
	.quad	0x401c36cc1ca3a4b5              # double 7.0535129999999997
	.quad	0x3fc255b035bd512f              # double 0.14324000000000001
	.quad	0x3ff2dde8b3b32053              # double 1.1791769999999999
	.quad	0x40200d601ffb480a              # double 8.0261239999999994
	.quad	0x3fd4650a45d41fa7              # double 0.31866699999999998
	.quad	0x3fe675a1016ce78a              # double 0.70185900000000001
	.quad	0x401319b5a63f9a4a              # double 4.7751070000000002
	.quad	0x400320578e5c4eb5              # double 2.3907919999999998
	.quad	0x3ff6f8e3ac0c62e5              # double 1.435764
	.quad	0x4018ddd15f02c4d6              # double 6.2166189999999997
	.quad	0x401abdeb95e5aff3              # double 6.6854690000000003
	.quad	0x400f6da4484944ed              # double 3.9285359999999998
	.quad	0x40233da294141e9b              # double 9.620381
	.quad	0x4007f6512a94ff00              # double 2.9952719999999999
	.quad	0x4008bba6efc371da              # double 3.0916269999999999
	.quad	0x401359f6a93f290b              # double 4.8378550000000002
	.quad	0x4014fc3eb7cbb3c8              # double 5.2463329999999999
	.quad	0x40238b404ea4a8c1              # double 9.7719749999999994
	.quad	0x40204daa4fca42af              # double 8.1516900000000003
	.quad	0x4016e46ae3a3a8e7              # double 5.7230639999999999
	.quad	0x4007231bde82d7b6              # double 2.8921429999999999
	.quad	0x400afb0d51f81a58              # double 3.3725839999999998
	.quad	0x400a0bcc6c54bcf1              # double 3.2557610000000001
	.quad	0x4007236b09635611              # double 2.8922940000000001
	.quad	0x3fe24267839cd812              # double 0.57060599999999995
	.quad	0x40139533b1077469              # double 4.8957050000000004
	.quad	0x401969aed56b0100              # double 6.3532060000000001
	.quad	0x4011bc308feac42f              # double 4.4337790000000004
	.quad	0x401d0e68e3ef2841              # double 7.2640719999999996
	.quad	0x4015658e219652bd              # double 5.3491749999999998
	.quad	0x401fbb866e43aa7a              # double 7.9331300000000002
	.quad	0x402353e3e29307af              # double 9.6638479999999997
	.quad	0x40228fc2eba27aea              # double 9.2807840000000006
	.quad	0x40214eb2f23033a4              # double 8.6537089999999992
	.quad	0x4013de1c58255b03              # double 4.9669049999999997
	.quad	0x3ff9434c1a8ac5c1              # double 1.5789299999999999
	.quad	0x40225743201040c0              # double 9.1704340000000001
	.quad	0x4022456e8af81627              # double 9.1356090000000005
	.quad	0x400376861e92923e              # double 2.4328729999999998
	.quad	0x3fe044e7253da72a              # double 0.50841099999999995
	.quad	0x400cbf8a0902de01              # double 3.5935250000000001
	.quad	0x400e1fddebd9018e              # double 3.7655599999999998
	.quad	0x4017ecf7878b7a1c              # double 5.9814129999999999
	.quad	0x400037470eb24a6b              # double 2.0269910000000002
	.quad	0x40234f8d0cc35ce2              # double 9.6553730000000009
	.quad	0x400118ab0c88a47f              # double 2.1370450000000001
	.quad	0x401100a808c8259e              # double 4.2506409999999999
	.quad	0x4001ffa76534373f              # double 2.2498309999999999
	.quad	0x400f3eeb2d0a2446              # double 3.9057219999999999
	.quad	0x3ff98a643cc07aaf              # double 1.596287
	.quad	0x40144dc8fb86f47b              # double 5.0759619999999996
	.quad	0x401ad67be553ac4f              # double 6.7094569999999996
	.quad	0x4008f293d102bc73              # double 3.1184460000000001
	.quad	0x401d5b135979181a              # double 7.3389410000000002
	.quad	0x3ffd902cd39da166              # double 1.847699
	.quad	0x40139cf0739b024f              # double 4.9032609999999996
	.quad	0x402369919ac79703              # double 9.7061890000000001
	.quad	0x40220761672324c8              # double 9.0144149999999996
	.quad	0x4013b8e2e2b8c75c              # double 4.9305529999999997
	.quad	0x401158d1526d8b1e              # double 4.3367360000000001
	.quad	0x401ebf1f9acffa7f              # double 7.6866440000000002
	.quad	0x40137d373affb04f              # double 4.8722810000000001
	.quad	0x401f1430f49491f3              # double 7.7697180000000001
	.quad	0x40061a0ad8a11666              # double 2.7627160000000002
	.quad	0x4012413dfb0d51f8              # double 4.5637129999999999
	.quad	0x4019f04d98394749              # double 6.4846709999999996
	.quad	0x3ff0c433d6c72192              # double 1.047901
	.quad	0x400dafb19e731d2e              # double 3.710788
	.quad	0x40115b39192641b3              # double 4.3390849999999999
	.quad	0x401b37d9988d2a20              # double 6.8045410000000004
	.quad	0x401f2779207d4e09              # double 7.7885479999999995
	.quad	0x3fe71d712a0ec743              # double 0.72234399999999999
	.quad	0x40228a0663c74fb5              # double 9.2695799999999995
	.quad	0x4013597204295a6c              # double 4.8373489999999997
	.quad	0x3ff75117b5286b59              # double 1.457298
	.quad	0x402030aeb80ecfa7              # double 8.0950830000000007
	.quad	0x401d853fc0096feb              # double 7.3801259999999997
	.quad	0x401c04a6eb91b3f2              # double 7.004543
	.quad	0x40227d8c8eef1bac              # double 9.2452129999999996
	.quad	0x401719eb2074ea8e              # double 5.7753110000000003
	.quad	0x40214a55b035bd51              # double 8.6451849999999997
	.quad	0x40185f487fcb923a              # double 6.0930499999999999
	.quad	0x401f338cda6e75ff              # double 7.8003419999999996
	.quad	0x402323bcf4e874c9              # double 9.569801
	.quad	0x40225a2d948dc11e              # double 9.1761289999999995
	.quad	0x3ff083f2d3c792d1              # double 1.032214
	.quad	0x4013b60b2c83ec89              # double 4.9277769999999999
	.quad	0x4010def5232d2bb2              # double 4.2177319999999998
	.quad	0x40156801b4352652              # double 5.3515689999999996
	.quad	0x3ff4675147f13059              # double 1.2752239999999999
	.quad	0x4006eda9003eea21              # double 2.8660450000000002
	.quad	0x40185a3f034b0e1b              # double 6.0881309999999997
	.quad	0x3ffa8d1633482be9              # double 1.6594450000000001
	.quad	0x40222a83f4eca687              # double 9.0830380000000002
	.quad	0x4007b8b04ab606b8              # double 2.9651800000000001
	.quad	0x401079363f572de4              # double 4.1183709999999998
	.quad	0x40018e71476af89c              # double 2.1945519999999998
	.quad	0x40160b5b70691ea8              # double 5.5110910000000004
	.quad	0x401567f1737542a2              # double 5.3515069999999998
	.quad	0x401586e935b91f71              # double 5.3817490000000001
	.quad	0x401971bda5119ce0              # double 6.3610749999999996
	.quad	0x4012caf4f0d844d0              # double 4.6981999999999999
	.quad	0x3fff4b4d056c508b              # double 1.955884
	.quad	0x400a882be8bc169c              # double 3.3164899999999999
	.quad	0x40202c8387df5cf2              # double 8.0869409999999995
	.quad	0x4001530941c8216c              # double 2.1655449999999998
	.quad	0x4011250efdc9c4db              # double 4.2861900000000004
	.quad	0x40178d801b435265              # double 5.8881839999999999
	.quad	0x3fc7c4199fe43676              # double 0.185672
	.quad	0x4012255970b49e02              # double 4.5364740000000001
	.quad	0x4006b0d173fb7a5f              # double 2.8363369999999999
	.quad	0x400d14dcebfec13c              # double 3.6351870000000002
	.quad	0x400c958e219652bd              # double 3.5730249999999999
	.quad	0x401d2a1ad6451b93              # double 7.291118
	.quad	0x4016c7a13c254a3c              # double 5.6949509999999997
	.quad	0x3ffc05f5ad96a6a0              # double 1.751455
	.quad	0x40179dff822bbecb              # double 5.9042950000000003
	.quad	0x3fdae0221426fe72              # double 0.41993000000000003
	.quad	0x40161fde7210be94              # double 5.5311219999999999
	.quad	0x400bb06d50657321              # double 3.4611459999999998
	.quad	0x401f9f4e0114d2f6              # double 7.9055710000000001
	.quad	0x3fe64d2b2bfdb4cc              # double 0.69691999999999998
	.quad	0x400bec4b4d056c51              # double 3.4903780000000002
	.quad	0x40226fe73a365cb3              # double 9.2185609999999993
	.quad	0x3ff6d4bdfd2630ec              # double 1.426939
	.quad	0x4022bdd0b73d188f              # double 9.3707329999999995
	.quad	0x4023f7db4cc25072              # double 9.9840949999999999
	.quad	0x3fe6515ad106ee31              # double 0.69743100000000002
	.quad	0x4018716440f23897              # double 6.1107339999999999
	.quad	0x400b84fe36d22425              # double 3.4399380000000002
	.quad	0x400ca538ef34d6a1              # double 3.5806749999999998
	.quad	0x401b74577d955715              # double 6.8636150000000002
	.quad	0x401926ffc115df65              # double 6.2880849999999997
	.quad	0x40197b5cbff47736              # double 6.3704710000000002
	.quad	0x4019220296b3354c              # double 6.2832129999999999
	.quad	0x3ff90c36da87a073              # double 1.565482
	.quad	0x3ffed9620685553f              # double 1.928072
	.quad	0x3fd392c8c5004fb1              # double 0.30583399999999999
	.quad	0x401aed5f138bcdff              # double 6.731808
	.quad	0x402014ef672b8844              # double 8.0408889999999999
	.quad	0x4020ef3d5bab2181              # double 8.4672649999999994
	.quad	0x4014d09fe86833c6              # double 5.203735
	.quad	0x402099cb46bacf74              # double 8.3003789999999995
	.quad	0x4019c295a6c5d207              # double 6.4400240000000002
	.quad	0x4002cb6d00b45ae6              # double 2.349329
	.quad	0x401fc48ba83f4eca              # double 7.9419389999999996
	.quad	0x40214020817fc760              # double 8.6252479999999991
	.quad	0x4019f890d5a5b963              # double 6.4927400000000004
	.quad	0x4017e23b7952d235              # double 5.9709300000000001
	.quad	0x4003bf1cfbb94962              # double 2.4683169999999999
	.quad	0x4008c3486f049a99              # double 3.0953529999999998
	.quad	0x400b42b4959e6256              # double 3.4075709999999999
	.quad	0x3ff3d041cc532a49              # double 1.2383439999999999
	.quad	0x400249fcf3dc054f              # double 2.286127
	.quad	0x40166c44bf4cb189              # double 5.6057309999999996
	.quad	0x4005cde00d1b7176              # double 2.7255250000000002
	.quad	0x400619335d249e45              # double 2.762305
	.quad	0x40104cd2d44dca8e              # double 4.0750229999999998
	.quad	0x4023f6b97fe8ee6c              # double 9.9818840000000008
	.quad	0x4000ead57bc7f77b              # double 2.114665
	.quad	0x4012124638c97529              # double 4.5178459999999996
	.quad	0x3fe7d78e5c4eb570              # double 0.74506300000000003
	.quad	0x40032c426351def0              # double 2.396611
	.quad	0x401fa4983d790753              # double 7.9107370000000001
	.quad	0x4010d42070b8cfc0              # double 4.2071550000000002
	.quad	0x3ffef42edbb59ddc              # double 1.934615
	.quad	0x3ffb05d31337eb29              # double 1.688922
	.quad	0x4006157d5a9eb207              # double 2.7604929999999999
	.quad	0x401caa0168b5cbff              # double 7.1660209999999998
	.quad	0x400b4da554b8bef9              # double 3.4129130000000001
	.quad	0x400067ecfe9b7bf2              # double 2.050745
	.quad	0x3ff4c76188b1140a              # double 1.2986770000000001
	.quad	0x400caf88b9778573              # double 3.5857100000000002
	.quad	0x4019f4c122749f0e              # double 6.4890179999999997
	.quad	0x402343b9496249a1              # double 9.6322729999999996
	.quad	0x4020913fd0d0678c              # double 8.2836899999999999
	.quad	0x401186084a515cea              # double 4.3808910000000001
	.quad	0x40099dd22856605f              # double 3.202061
	.quad	0x40102e4217d2849d              # double 4.0451740000000003
	.quad	0x401accb923a29c78              # double 6.6999250000000004
	.quad	0x4011f82ba5a03819              # double 4.4923539999999997
	.quad	0x4007aa19c9d5a188              # double 2.9580570000000002
	.quad	0x40138523704790b8              # double 4.8800179999999997
	.quad	0x3fd5655e28aa4335              # double 0.334312
	.quad	0x3ffe0cc46950fc72              # double 1.878117
	.quad	0x400fd3fc86cebbba              # double 3.9785089999999999
	.quad	0x4023111ada76d97b              # double 9.5334079999999996
	.quad	0x400ee76c050bd87b              # double 3.8629989999999998
	.quad	0x4021fddb5525cc42              # double 8.9958139999999993
	.quad	0x402182f709b738e7              # double 8.7557910000000003
	.quad	0x4012f231832fcac9              # double 4.7365170000000001
	.quad	0x401090e4da09cc32              # double 4.1414980000000003
	.quad	0x4014faf1455219a8              # double 5.2450609999999998
	.quad	0x4021180eae18ac9f              # double 8.5469869999999997
	.quad	0x3ffbfd5ed06fef7c              # double 1.749358
	.quad	0x4019a984a0e410b6              # double 6.4155449999999998
	.quad	0x40201087442c7fbb              # double 8.0322820000000004
	.quad	0x40143d54da4ce810              # double 5.0598939999999999
	.quad	0x401adcc20d5629d8              # double 6.7155839999999998
	.quad	0x3fdcd38cda6e75ff              # double 0.45041199999999998
	.quad	0x40175e8427418d69              # double 5.842301
	.quad	0x3fef62328f9f44d4              # double 0.98073699999999996
	.quad	0x400fe1754b05b7d0              # double 3.985087
	.quad	0x3feaff583a53b8e5              # double 0.84367000000000003
	.quad	0x40206530270f3882              # double 8.1976329999999997
	.quad	0x400e6ad8a116659d              # double 3.802171
	.quad	0x4022fdc8d9f9053a              # double 9.495673
	.quad	0x40139eb13dfb0d52              # double 4.904973
	.quad	0x4015271da37ef5a9              # double 5.2881989999999996
	.quad	0x4019a823422467be              # double 6.4141969999999997
	.quad	0x400db266ba493c8a              # double 3.71211
	.quad	0x401e6f5d78811b1e              # double 7.6087550000000004
	.quad	0x4005f182a9930be1              # double 2.7429250000000001
	.quad	0x400940b34e768598              # double 3.1565919999999998
	.quad	0x40169abda0dfdef8              # double 5.6511139999999997
	.quad	0x40117b0142f61ed6              # double 4.3701220000000003
	.quad	0x401ab0c8cd63cb81              # double 6.6726409999999996
	.quad	0x4022a26612839043              # double 9.3171850000000003
	.quad	0x4011c62f166e008f              # double 4.4435390000000003
	.quad	0x4013f8b827fa1a0d              # double 4.9928900000000001
	.quad	0x40153f240fa9c12f              # double 5.311661
	.quad	0x401a472606fac604              # double 6.5694809999999997
	.quad	0x400ebf1bef49cf57              # double 3.843315
	.quad	0x401740c2c5e2cdc0              # double 5.8132429999999999
	.quad	0x3fe008ede54b48d4              # double 0.50109000000000004
	.quad	0x401866b1e5c0b999              # double 6.1002879999999999
	.quad	0x4023c99dece57109              # double 9.8937830000000008
	.quad	0x40236803686a4ca5              # double 9.703151
	.quad	0x3fd2ee2435696e59              # double 0.29578500000000002
	.quad	0x3fe602e6644d8772              # double 0.68785399999999997
	.quad	0x401dd4fbdad7518b              # double 7.457992
	.quad	0x40192aeab7995ee1              # double 6.2919109999999998
	.quad	0x4017d3254e6e221d              # double 5.9561970000000004
	.quad	0x3ffe15c74751ce29              # double 1.880317
	.quad	0x40204df71eafee70              # double 8.1522760000000005
	.quad	0x4011e15f45e0b4e1              # double 4.4700899999999999
	.quad	0x4017cc64ba94bbe4              # double 5.9496029999999998
	.quad	0x402020014f8b588e              # double 8.0625099999999996
	.quad	0x400bc6b9c304ccee              # double 3.4720339999999998
	.quad	0x40207aa5a469d734              # double 8.2395449999999996
	.quad	0x401b7bfb9bed30f0              # double 6.8710769999999997
	.quad	0x40234eae9ee45c36              # double 9.6536760000000008
	.quad	0x4016265fd8adab9f              # double 5.5374749999999997
	.quad	0x401a5499d0203e64              # double 6.5826180000000001
	.quad	0x3ffd71f36262cba7              # double 1.84032
	.quad	0x402062b4d8ba40d9              # double 8.1927859999999999
	.quad	0x402078d8ec95bff0              # double 8.2360299999999995
	.quad	0x40222c148344c37e              # double 9.0860939999999992
	.quad	0x4010448909289dae              # double 4.066929
	.quad	0x401e7d36b4c7f349              # double 7.6222789999999998
	.quad	0x4005cb417ca2120e              # double 2.7242459999999999
	.quad	0x40213bf93ff25e57              # double 8.6171360000000004
	.quad	0x400059578a2a90cd              # double 2.0436239999999999
	.quad	0x4011fe33acd5b680              # double 4.4982439999999997
	.quad	0x400c385dfa871a3b              # double 3.527523
	.quad	0x401bfc9de0503750              # double 6.996696
	.quad	0x401cf11ec918e326              # double 7.2354690000000002
	.quad	0x3fd94a3400b88ca4              # double 0.39515400000000001
	.quad	0x3fbf213e3e29307b              # double 0.121601
	.quad	0x40049858bc59b802              # double 2.5743879999999999
	.quad	0x400404e50c5eb314              # double 2.5023900000000001
	.quad	0x401c1ecc814d727a              # double 7.0300770000000004
	.quad	0x3fca968943e10060              # double 0.20771899999999999
	.quad	0x401a75475a31a4be              # double 6.6145300000000002
	.quad	0x4014e43a647fdc59              # double 5.2228789999999998
	.quad	0x3fa3bb62413db7f1              # double 0.038538999999999997
	.quad	0x401c54ca0c282c6f              # double 7.082802
	.quad	0x402225ff822bbecb              # double 9.0742150000000006
	.quad	0x400401a93293d103              # double 2.5008110000000001
	.quad	0x4023af0691ea78af              # double 9.8418469999999995
	.quad	0x40152cb641700cd8              # double 5.2936639999999997
	.quad	0x4023d1d66adb402d              # double 9.9098389999999998
	.quad	0x401060620ab71327              # double 4.0941239999999999
	.quad	0x40233cbd556084a5              # double 9.6186319999999998
	.quad	0x401596f47b677f6b              # double 5.3974169999999999
	.quad	0x4018de2f37fbefd0              # double 6.216977
	.quad	0x4018f62aa19439de              # double 6.2403969999999997
	.quad	0x40203661f18c9fb6              # double 8.1062159999999999
	.quad	0x400d04399b2c40d1              # double 3.6270630000000001
	.quad	0x401dfe215336deb9              # double 7.4981739999999996
	.quad	0x4023e9496249a134              # double 9.9556380000000004
	.quad	0x401aac3504c48adf              # double 6.6681710000000001
	.quad	0x401df0bd017dae82              # double 7.4850960000000004
	.quad	0x4001bcf4623d0bfa              # double 2.217263
	.quad	0x40179f301eabbcb2              # double 5.9054570000000002
	.quad	0x400861815a07b353              # double 3.0476100000000002
	.quad	0x40224d8e219652bd              # double 9.1514749999999996
	.quad	0x401e5d48cb4aec8d              # double 7.5910979999999996
	.quad	0x401f00f98fa37692              # double 7.7509519999999998
	.quad	0x4011b1d041cc532a              # double 4.4236459999999997
	.quad	0x40222f6f4be835df              # double 9.0926460000000002
	.quad	0x40191d002e2328fa              # double 6.278321
	.quad	0x401655fe111276fb              # double 5.583977
	.quad	0x40108892ee84ad79              # double 4.1333729999999997
	.quad	0x4020dfd04a2fcefb              # double 8.4371360000000006
	.quad	0x401a6e4e26d4801f              # double 6.6077199999999996
	.quad	0x4021da836eb4e981              # double 8.9267839999999996
	.quad	0x3ff78302b40f66a5              # double 1.4694849999999999
	.quad	0x4022ce1cffeb074a              # double 9.4025649999999992
	.quad	0x4020a21a0cf1800a              # double 8.3166049999999991
	.quad	0x3ff4619c9d5a187a              # double 1.2738309999999999
	.quad	0x4021b82b62845996              # double 8.8597059999999992
	.quad	0x3ffa3838c111ada7              # double 1.6387259999999999
	.quad	0x401d634549b62c77              # double 7.3469439999999997
	.quad	0x3ff1f0dd82fd75e2              # double 1.121305
	.quad	0x3feb5a7f3cf70154              # double 0.85479700000000002
	.quad	0x400cbf1737542a24              # double 3.5933060000000001
	.quad	0x40226abb01c92ddc              # double 9.2084580000000002
	.quad	0x400f2ee957470eb2              # double 3.8979059999999999
	.quad	0x4013c2f3c2dadb83              # double 4.9403829999999997
	.quad	0x3ff9e6202539756d              # double 1.6186830000000001
	.quad	0x3ffc85308bb90646              # double 1.7825169999999999
	.size	.L__constant_3000xf64, 24000

	.section	".note.GNU-stack","",@progbits
