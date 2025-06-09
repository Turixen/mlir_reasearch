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
	.quad	0x413f6284f0576cce              # double 2056836.9388339999
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
	.quad	4000                            # 0xfa0
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI3_1:
	.quad	0                               # 0x0
	.quad	4000                            # 0xfa0
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
	lui	a7, %hi(.L__constant_4000xindex)
	addi	a7, a7, %lo(.L__constant_4000xindex)
	lui	t0, %hi(.L__constant_4000xf64)
	addi	t0, t0, %lo(.L__constant_4000xf64)
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
	.quad	43                              # 0x2b
	.quad	95                              # 0x5f
	.quad	137                             # 0x89
	.quad	185                             # 0xb9
	.quad	226                             # 0xe2
	.quad	268                             # 0x10c
	.quad	308                             # 0x134
	.quad	349                             # 0x15d
	.quad	382                             # 0x17e
	.quad	428                             # 0x1ac
	.quad	474                             # 0x1da
	.quad	519                             # 0x207
	.quad	557                             # 0x22d
	.quad	598                             # 0x256
	.quad	630                             # 0x276
	.quad	667                             # 0x29b
	.quad	708                             # 0x2c4
	.quad	751                             # 0x2ef
	.quad	791                             # 0x317
	.quad	828                             # 0x33c
	.quad	870                             # 0x366
	.quad	907                             # 0x38b
	.quad	938                             # 0x3aa
	.quad	986                             # 0x3da
	.quad	1028                            # 0x404
	.quad	1066                            # 0x42a
	.quad	1112                            # 0x458
	.quad	1141                            # 0x475
	.quad	1187                            # 0x4a3
	.quad	1228                            # 0x4cc
	.quad	1265                            # 0x4f1
	.quad	1301                            # 0x515
	.quad	1348                            # 0x544
	.quad	1386                            # 0x56a
	.quad	1428                            # 0x594
	.quad	1469                            # 0x5bd
	.quad	1512                            # 0x5e8
	.quad	1559                            # 0x617
	.quad	1597                            # 0x63d
	.quad	1646                            # 0x66e
	.quad	1684                            # 0x694
	.quad	1721                            # 0x6b9
	.quad	1758                            # 0x6de
	.quad	1796                            # 0x704
	.quad	1836                            # 0x72c
	.quad	1877                            # 0x755
	.quad	1914                            # 0x77a
	.quad	1952                            # 0x7a0
	.quad	1987                            # 0x7c3
	.quad	2015                            # 0x7df
	.quad	2044                            # 0x7fc
	.quad	2098                            # 0x832
	.quad	2141                            # 0x85d
	.quad	2175                            # 0x87f
	.quad	2217                            # 0x8a9
	.quad	2262                            # 0x8d6
	.quad	2293                            # 0x8f5
	.quad	2340                            # 0x924
	.quad	2374                            # 0x946
	.quad	2408                            # 0x968
	.quad	2456                            # 0x998
	.quad	2490                            # 0x9ba
	.quad	2528                            # 0x9e0
	.quad	2563                            # 0xa03
	.quad	2600                            # 0xa28
	.quad	2638                            # 0xa4e
	.quad	2671                            # 0xa6f
	.quad	2703                            # 0xa8f
	.quad	2745                            # 0xab9
	.quad	2783                            # 0xadf
	.quad	2821                            # 0xb05
	.quad	2864                            # 0xb30
	.quad	2909                            # 0xb5d
	.quad	2946                            # 0xb82
	.quad	2990                            # 0xbae
	.quad	3031                            # 0xbd7
	.quad	3072                            # 0xc00
	.quad	3108                            # 0xc24
	.quad	3151                            # 0xc4f
	.quad	3196                            # 0xc7c
	.quad	3236                            # 0xca4
	.quad	3278                            # 0xcce
	.quad	3312                            # 0xcf0
	.quad	3357                            # 0xd1d
	.quad	3400                            # 0xd48
	.quad	3450                            # 0xd7a
	.quad	3493                            # 0xda5
	.quad	3530                            # 0xdca
	.quad	3563                            # 0xdeb
	.quad	3609                            # 0xe19
	.quad	3645                            # 0xe3d
	.quad	3684                            # 0xe64
	.quad	3724                            # 0xe8c
	.quad	3766                            # 0xeb6
	.quad	3805                            # 0xedd
	.quad	3838                            # 0xefe
	.quad	3876                            # 0xf24
	.quad	3919                            # 0xf4f
	.quad	3958                            # 0xf76
	.quad	4000                            # 0xfa0
	.size	.L__constant_101xindex_0, 808

	.type	.L__constant_4000xindex,@object # @__constant_4000xindex
	.p2align	6, 0x0
.L__constant_4000xindex:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
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
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
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
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
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
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.size	.L__constant_4000xindex, 32000

	.type	.L__constant_4000xf64,@object   # @__constant_4000xf64
	.p2align	6, 0x0
.L__constant_4000xf64:
	.quad	0x40195b14a90470a8              # double 6.338946
	.quad	0x40187bb2fec56d5d              # double 6.1208
	.quad	0x400e2180d3cff64d              # double 3.766359
	.quad	0x400eff1b69121251              # double 3.8745639999999999
	.quad	0x400a2e79aae6c8f7              # double 3.2726929999999999
	.quad	0x3ff4228672756862              # double 1.258429
	.quad	0x3ff1b90214ad362f              # double 1.1076680000000001
	.quad	0x40045b91f70de8f7              # double 2.5447120000000001
	.quad	0x401435da6a444178              # double 5.0525909999999996
	.quad	0x4006a03c4b09e98e              # double 2.8282400000000001
	.quad	0x400b8f36ef8055fc              # double 3.4449290000000001
	.quad	0x4021470ed3d859c9              # double 8.6387850000000004
	.quad	0x40239a70f3882279              # double 9.8016430000000003
	.quad	0x40128bbf0dc768e0              # double 4.6364710000000002
	.quad	0x4015a5f5f0b28523              # double 5.4120710000000001
	.quad	0x40198c19c17225b7              # double 6.3868169999999997
	.quad	0x401ab98d045fe111              # double 6.6812019999999999
	.quad	0x40215baf965b20b8              # double 8.679074
	.quad	0x3ff4776c4827b6fe              # double 1.279156
	.quad	0x400f676534373f31              # double 3.9254859999999998
	.quad	0x40211824d4cb9ecf              # double 8.5471559999999993
	.quad	0x40139d77b7c7820a              # double 4.9037769999999998
	.quad	0x400489a671ef30a5              # double 2.567212
	.quad	0x400255ffe6d58c8f              # double 2.291992
	.quad	0x401f450e34762952              # double 7.817437
	.quad	0x4009d45f9df548ed              # double 3.2286980000000001
	.quad	0x40228c1376d54973              # double 9.2735859999999999
	.quad	0x3fcdf4666ec9e237              # double 0.23402100000000001
	.quad	0x3ff7a5f7403dddb1              # double 1.478019
	.quad	0x4020565082cf52b9              # double 8.1685829999999999
	.quad	0x4016da8650e77920              # double 5.7134029999999996
	.quad	0x401c00379314445b              # double 7.0002120000000003
	.quad	0x3ff42974a3400b89              # double 1.260121
	.quad	0x401637d0f1f57b42              # double 5.5545080000000002
	.quad	0x4010f8b9baa1511e              # double 4.242896
	.quad	0x4023c426138fffbd              # double 9.8831030000000001
	.quad	0x4018f21101b00368              # double 6.2363929999999996
	.quad	0x3ffde822ff08893b              # double 1.8691739999999999
	.quad	0x4020bc4ae85b9e8c              # double 8.3677589999999995
	.quad	0x3fe0f42bb6672fba              # double 0.529806
	.quad	0x4022d266fd651b0d              # double 9.4109420000000003
	.quad	0x40058405b39e279e              # double 2.6894640000000001
	.quad	0x3feb06f049a9973e              # double 0.84459700000000004
	.quad	0x4017d51a86940358              # double 5.9581090000000003
	.quad	0x401ef359ff4fd6d8              # double 7.737648
	.quad	0x40063e20ccff21b4              # double 2.7803360000000001
	.quad	0x4011f831f03d145e              # double 4.4923780000000004
	.quad	0x401c4916ca46e08f              # double 7.0713759999999999
	.quad	0x4020a8813cab81f9              # double 8.3291109999999993
	.quad	0x4023c8aa64c2f838              # double 9.8919250000000005
	.quad	0x401fa8333fc86cec              # double 7.9142580000000002
	.quad	0x4018c5dd8f92af9b              # double 6.1932280000000004
	.quad	0x400d52d55a3a083a              # double 3.6654460000000002
	.quad	0x3fd2b07d0aed99cc              # double 0.292022
	.quad	0x4002339d1b2e59b0              # double 2.2752020000000002
	.quad	0x400eccf0739b024f              # double 3.8500679999999998
	.quad	0x4010b7acc4ef88b9              # double 4.1793699999999996
	.quad	0x4009ea71de69ad43              # double 3.2394750000000001
	.quad	0x3fff57d9dba908a2              # double 1.9589479999999999
	.quad	0x4000351266341180              # double 2.0259140000000002
	.quad	0x401c3b6f19934efd              # double 7.0580410000000002
	.quad	0x40207774256bca53              # double 8.2333079999999992
	.quad	0x40225c0db2702a35              # double 9.1797920000000008
	.quad	0x3fa0ec52a411c2a0              # double 0.033052999999999999
	.quad	0x401ad48e8a71de6a              # double 6.7075750000000003
	.quad	0x3fc4d8f4f93bc0a0              # double 0.16287099999999999
	.quad	0x4022f96cc5fbf834              # double 9.4871580000000008
	.quad	0x400850bae89eba6b              # double 3.0394190000000001
	.quad	0x401130b1bbcf4e87              # double 4.2975529999999997
	.quad	0x40228aa10e022142              # double 9.2707599999999992
	.quad	0x4016b34ce3de614a              # double 5.6750980000000002
	.quad	0x400cfd8e86402081              # double 3.6238069999999998
	.quad	0x401ea9efd86a8fc1              # double 7.6659540000000001
	.quad	0x402374e5d5b24e9c              # double 9.7283159999999995
	.quad	0x40224b524399b2c4              # double 9.1471119999999999
	.quad	0x400091337eb28d86              # double 2.0708989999999998
	.quad	0x3fee126634117f84              # double 0.93974599999999997
	.quad	0x3fe2b0b7c3504c49              # double 0.58407200000000004
	.quad	0x4013c023e9ea1405              # double 4.9376369999999996
	.quad	0x400aaaf038e29f9d              # double 3.333466
	.quad	0x401961d323fee2ca              # double 6.3455320000000004
	.quad	0x400f7fe08aefb2ab              # double 3.9374400000000001
	.quad	0x4016bdb09a671ef3              # double 5.685244
	.quad	0x40133b4fa48301a8              # double 4.8079210000000003
	.quad	0x401ffeb0b7c3504c              # double 7.9987209999999997
	.quad	0x401078dcdb37c99b              # double 4.1180300000000001
	.quad	0x401cd5bbbe878fac              # double 7.2087240000000001
	.quad	0x40192c0f45176146              # double 6.2930270000000004
	.quad	0x4008c26cc1ca3a4b              # double 3.0949339999999999
	.quad	0x40217ee2a80064aa              # double 8.7478230000000003
	.quad	0x4022c85f06f69446              # double 9.3913499999999992
	.quad	0x4023ccaeea63b689              # double 9.8997720000000004
	.quad	0x3ffb61c15097c808              # double 1.7113659999999999
	.quad	0x4003cb0079a2834d              # double 2.4741219999999999
	.quad	0x3fd84712e40852b5              # double 0.37933800000000001
	.quad	0x3ff0055000c9539c              # double 1.0012970000000001
	.quad	0x4016501de2691644              # double 5.5782389999999999
	.quad	0x3ff0653da72a7bd5              # double 1.0247170000000001
	.quad	0x3fdb0468448cf7cb              # double 0.42214400000000002
	.quad	0x401cb7164c729f5a              # double 7.1787960000000002
	.quad	0x401461f85d744f5d              # double 5.0956739999999998
	.quad	0x400f27368ad68837              # double 3.8941469999999998
	.quad	0x3fdd9a7c17a89332              # double 0.46255400000000002
	.quad	0x4011b661ae70c133              # double 4.4281069999999998
	.quad	0x402302ee41919ac8              # double 9.5057240000000007
	.quad	0x40175fc371da37ef              # double 5.8435189999999997
	.quad	0x401a8d9b5e95b78d              # double 6.6382880000000002
	.quad	0x4021c204295a6c5d              # double 8.8789379999999998
	.quad	0x4010880e496ededb              # double 4.1328670000000001
	.quad	0x40231aaf9a8cdea0              # double 9.5521209999999996
	.quad	0x4013a70cdc8754f3              # double 4.9131349999999996
	.quad	0x3ff30bc6a7ef9db2              # double 1.190375
	.quad	0x40151d9018e75793              # double 5.2788700000000004
	.quad	0x4016787e7c06e19c              # double 5.6176700000000004
	.quad	0x401c837a80cf9e38              # double 7.1283969999999997
	.quad	0x40203731b152f3c3              # double 8.1078010000000003
	.quad	0x4005f2239e6ab9b2              # double 2.7432319999999999
	.quad	0x40218a45f5ad96a7              # double 8.7700650000000007
	.quad	0x40203a2856605ee5              # double 8.1135889999999993
	.quad	0x4021c5edf1e0828c              # double 8.8865809999999996
	.quad	0x40212a074ea8da7f              # double 8.5820869999999996
	.quad	0x4018f5610adcd2d4              # double 6.2396279999999997
	.quad	0x40236fa072d1aeb4              # double 9.7180210000000002
	.quad	0x40164a3a08398a65              # double 5.5724869999999997
	.quad	0x4019ac382a12f901              # double 6.418183
	.quad	0x402398667f90d9d7              # double 9.7976569999999991
	.quad	0x3fec6cf41f212d77              # double 0.88829999999999998
	.quad	0x4022b9f623076c05              # double 9.3632059999999999
	.quad	0x4014ecdea033e78e              # double 5.2313179999999999
	.quad	0x4020a613f4a98aa8              # double 8.3243709999999993
	.quad	0x40041c6e2a80064b              # double 2.5138820000000002
	.quad	0x3fd8a5f84cad57bc              # double 0.38512999999999997
	.quad	0x401268a979e16d6e              # double 4.6022090000000002
	.quad	0x400f7b25f633ce64              # double 3.9351310000000002
	.quad	0x4020cf84ec636b09              # double 8.4053109999999993
	.quad	0x40198c6f7a0b5ed9              # double 6.3871440000000002
	.quad	0x40174d0a67620ee9              # double 5.8252350000000002
	.quad	0x4020e8114d2f5dbc              # double 8.4532570000000006
	.quad	0x4020438e086bdf4c              # double 8.1319429999999996
	.quad	0x40154429e0a41a26              # double 5.3165659999999999
	.quad	0x402214bb1af3a14d              # double 9.0404900000000001
	.quad	0x4016182cf52b90a8              # double 5.5236090000000004
	.quad	0x40228e9ec2ce464a              # double 9.2785550000000008
	.quad	0x3fc3496249a133c2              # double 0.15067700000000001
	.quad	0x40153935fc3b4f61              # double 5.3058699999999996
	.quad	0x4023f55e4a383276              # double 9.9792349999999992
	.quad	0x4020f86bdf4c2b52              # double 8.4851980000000005
	.quad	0x3ff280746455eaee              # double 1.156361
	.quad	0x3fd9c7c957cd466f              # double 0.40281899999999998
	.quad	0x401a23ed0f627393              # double 6.5350840000000003
	.quad	0x4011a731098d477c              # double 4.4132730000000002
	.quad	0x4016bbdb5d894813              # double 5.6834540000000002
	.quad	0x402216df1e0828c3              # double 9.0446709999999992
	.quad	0x401270cd855970b5              # double 4.6101590000000003
	.quad	0x401e0a29c779a6b5              # double 7.5099249999999999
	.quad	0x3ffcf9df548ecd8e              # double 1.8110040000000001
	.quad	0x4020115a8deb0fae              # double 8.0338940000000001
	.quad	0x4016eb15b573eab3              # double 5.7295749999999996
	.quad	0x402048c521dda05a              # double 8.1421290000000006
	.quad	0x40226d32a497fa5d              # double 9.2132769999999997
	.quad	0x40226d31769a9110              # double 9.2132679999999993
	.quad	0x4018fdcad14a0a0f              # double 6.2478439999999997
	.quad	0x4006ad983947496b              # double 2.8347630000000001
	.quad	0x4020f94ca925fe97              # double 8.4869129999999995
	.quad	0x400b9e80389f83be              # double 3.4523929999999998
	.quad	0x40160e5f7403dddb              # double 5.5140359999999999
	.quad	0x3fc995703f2d3c79              # double 0.199873
	.quad	0x4014fc55432873bd              # double 5.2464190000000004
	.quad	0x400bb8759253543b              # double 3.465068
	.quad	0x4021611f70de8f6d              # double 8.6896930000000001
	.quad	0x401e733c1ce6c094              # double 7.6125340000000001
	.quad	0x3ff3c115df6555c5              # double 1.23464
	.quad	0x40104118c197e564              # double 4.0635709999999996
	.quad	0x401ea474107314cb              # double 7.6605990000000003
	.quad	0x400c472c94b380cb              # double 3.5347529999999998
	.quad	0x4015cc28b2a6b0d9              # double 5.4493739999999997
	.quad	0x401f140789613d32              # double 7.7695600000000002
	.quad	0x4023b8aaa7ded6bb              # double 9.8606770000000008
	.quad	0x3ffc09949e8815e4              # double 1.7523390000000001
	.quad	0x400fe4827b6fe2e7              # double 3.986577
	.quad	0x40190bda0dfdef85              # double 6.2615740000000004
	.quad	0x401b1fd7e45803cd              # double 6.7810969999999999
	.quad	0x4009834a01abd1ab              # double 3.1891060000000002
	.quad	0x3ff07eb5b2d4d402              # double 1.0309349999999999
	.quad	0x4010bf43c7d5ed07              # double 4.186782
	.quad	0x3fe82426bb55ac04              # double 0.754413
	.quad	0x3fe6676ea4228998              # double 0.70012600000000003
	.quad	0x4007c3f034b0e1b5              # double 2.9706730000000001
	.quad	0x4020f76f2a5a469d              # double 8.4832699999999992
	.quad	0x400abfa11a975afb              # double 3.343569
	.quad	0x4023350a24463066              # double 9.603593
	.quad	0x4023bb59ddc1e796              # double 9.8659199999999991
	.quad	0x40115c3c5bd0e12f              # double 4.3400740000000004
	.quad	0x400c0c4bd33d2956              # double 3.5060039999999999
	.quad	0x402122b4b72c5198              # double 8.5677850000000007
	.quad	0x401af5a038194c01              # double 6.7398689999999997
	.quad	0x401a29a6b50b0f28              # double 6.5406750000000002
	.quad	0x4015a12d3415b142              # double 5.4073989999999998
	.quad	0x40111a37ef5a964f              # double 4.2756040000000004
	.quad	0x40196c02f2f98740              # double 6.35548
	.quad	0x3fefe7903211cb04              # double 0.99701700000000004
	.quad	0x40176b0b39192642              # double 5.8545350000000003
	.quad	0x401231055b899392              # double 4.5478719999999999
	.quad	0x3ff2ecd4aa10e022              # double 1.18282
	.quad	0x402383e468cac4b5              # double 9.7576020000000003
	.quad	0x401805e4a3832767              # double 6.0057549999999997
	.quad	0x4016796b76709fa5              # double 5.6185739999999997
	.quad	0x4013a0096feb4a66              # double 4.9062859999999997
	.quad	0x401a9c78e9f6a93f              # double 6.6528049999999999
	.quad	0x401cce9dd7ecbb80              # double 7.2017740000000003
	.quad	0x400afd9988d2a1f9              # double 3.373828
	.quad	0x3ffefef7c243dccf              # double 1.9372480000000001
	.quad	0x40012500d5e8d541              # double 2.143068
	.quad	0x3ff9982773e24fec              # double 1.599647
	.quad	0x4011a0bfe3b03e21              # double 4.4069820000000002
	.quad	0x3ff3c72f33ca31e8              # double 1.236129
	.quad	0x402127809917939a              # double 8.5771529999999991
	.quad	0x40069aba7b9170d6              # double 2.8255509999999999
	.quad	0x4009475818c5c9a3              # double 3.1598359999999999
	.quad	0x401d5aa7ded6ba8c              # double 7.3385309999999997
	.quad	0x3fef2aa9f7b5aea3              # double 0.97395799999999999
	.quad	0x4022112e40852b4e              # double 9.0335560000000008
	.quad	0x4008e337a80cf9e4              # double 3.1109460000000002
	.quad	0x400f5c0e38a7e73a              # double 3.9199489999999999
	.quad	0x402241d6adf71eb0              # double 9.1285910000000001
	.quad	0x3fe4ead4f5903a75              # double 0.65366599999999997
	.quad	0x4022b605681ecd4b              # double 9.3555100000000006
	.quad	0x401582da554b8bf0              # double 5.3777860000000004
	.quad	0x3fed75bc44bf4cb2              # double 0.92062200000000005
	.quad	0x40147a7221858bc6              # double 5.1195760000000003
	.quad	0x4010a8fc504816f0              # double 4.165025
	.quad	0x40112bacf7446f9c              # double 4.2926520000000004
	.quad	0x4015a384fd2a62aa              # double 5.4096869999999999
	.quad	0x40125f8b588e368f              # double 4.593305
	.quad	0x401bd0bf1a5ca298              # double 6.9538539999999998
	.quad	0x401163b7952d234f              # double 4.3473800000000002
	.quad	0x401163d7d3910c2c              # double 4.3475029999999997
	.quad	0x401ada294141e9af              # double 6.7130479999999997
	.quad	0x3ffdbbf2f5558213              # double 1.8583860000000001
	.quad	0x400832abef06b378              # double 3.0247419999999998
	.quad	0x4022c4d3bf2f5558              # double 9.3844279999999997
	.quad	0x4021c2bb01c92ddc              # double 8.8803330000000002
	.quad	0x40165cae21101b00              # double 5.5905079999999998
	.quad	0x400f3bcdbbe0157f              # double 3.904201
	.quad	0x401e4934efcbd556              # double 7.571491
	.quad	0x400d65ff1d81f106              # double 3.6748029999999998
	.quad	0x4011718655193709              # double 4.3608640000000003
	.quad	0x400054bad7d7c2ca              # double 2.041372
	.quad	0x40238b98e9707182              # double 9.7726509999999998
	.quad	0x400c6ed80a17b0f7              # double 3.5541230000000001
	.quad	0x40087103c8e25c81              # double 3.055183
	.quad	0x3ffbf762d83c6c98              # double 1.747897
	.quad	0x3ff02bdd334c5da7              # double 1.0107090000000001
	.quad	0x401a8919695d91ac              # double 6.6338860000000004
	.quad	0x402320e8c8abd5dc              # double 9.5642759999999995
	.quad	0x40233ea91d9b1b7a              # double 9.6223840000000003
	.quad	0x400e231f8a0902de              # double 3.76715
	.quad	0x3ff64d3e0bd44999              # double 1.393858
	.quad	0x400132c40d0aaa7e              # double 2.149788
	.quad	0x4002441461b6d43d              # double 2.283242
	.quad	0x4021576640a6b93d              # double 8.6707020000000004
	.quad	0x40142b97785729b3              # double 5.0425700000000004
	.quad	0x40227ab3aabcd78c              # double 9.2396519999999995
	.quad	0x3fe21a176ddaceee              # double 0.56568499999999999
	.quad	0x401cff911cf355ce              # double 7.2495770000000004
	.quad	0x3ff5634eb9a176de              # double 1.3367450000000001
	.quad	0x4021a37e2c55c960              # double 8.8193219999999997
	.quad	0x40129916440f2389              # double 4.6494989999999996
	.quad	0x3fe21094a2b9d3cc              # double 0.56452400000000003
	.quad	0x40017a57eaa2a0a9              # double 2.1847379999999998
	.quad	0x3ffa69b6b2af1455              # double 1.650809
	.quad	0x4020ce501e2584f5              # double 8.4029550000000004
	.quad	0x400bad99cbee807c              # double 3.4597660000000001
	.quad	0x401748d045fe1112              # double 5.8211069999999996
	.quad	0x400955903a7546d4              # double 3.166779
	.quad	0x3ff23d5ed06fef7c              # double 1.139983
	.quad	0x3fb4ba94bbe4473d              # double 0.080972000000000002
	.quad	0x3fe38ad03d9a9542              # double 0.61069499999999999
	.quad	0x40202b48d3ae685e              # double 8.0845400000000005
	.quad	0x40207ac343b70ef5              # double 8.2397709999999993
	.quad	0x3fe67f9d6f112fd3              # double 0.70307799999999998
	.quad	0x400acc929aa1d756              # double 3.3498890000000001
	.quad	0x40230a3a4b5568e8              # double 9.5199759999999997
	.quad	0x401369c3ce2089e3              # double 4.8532859999999998
	.quad	0x3fca36e2eb1c432d              # double 0.20480000000000001
	.quad	0x4021678f8a4c1ebd              # double 8.7022670000000009
	.quad	0x4021c97fa5d28d00              # double 8.8935519999999997
	.quad	0x401228a009f62307              # double 4.5396729999999996
	.quad	0x4015f003254e6e22              # double 5.4843869999999999
	.quad	0x400b91327243137b              # double 3.445897
	.quad	0x4013f04bc27631b6              # double 4.9846640000000004
	.quad	0x4022f9b56323bbc7              # double 9.4877120000000001
	.quad	0x40194c2656abde40              # double 6.3243650000000002
	.quad	0x40220eb0fadf2ecf              # double 9.0286939999999998
	.quad	0x4020a14445aa2e3c              # double 8.3149739999999994
	.quad	0x4006f178b3700475              # double 2.8679060000000001
	.quad	0x4006e8c36da87a07              # double 2.8636539999999999
	.quad	0x3ffbe53b8e4b87be              # double 1.743465
	.quad	0x401b3ab5807fed20              # double 6.8073329999999999
	.quad	0x4013fc996b7670a0              # double 4.9966790000000003
	.quad	0x3ff2fe48a58b3f64              # double 1.1870810000000001
	.quad	0x40138e6d9be4cd75              # double 4.8890900000000004
	.quad	0x3fe4a47cb70ac3a8              # double 0.64507899999999996
	.quad	0x400340114d2f5dbc              # double 2.4062830000000002
	.quad	0x40084495e17e34b9              # double 3.0334889999999999
	.quad	0x4022c31f46ed245b              # double 9.3810979999999997
	.quad	0x3fe0492bc2fc6973              # double 0.50893200000000005
	.quad	0x4010575f2cb64170              # double 4.085324
	.quad	0x4021b18dcdb37c9a              # double 8.8467850000000006
	.quad	0x400cf57ff9b56324              # double 3.6198730000000001
	.quad	0x400eb785f8d2e515              # double 3.8396110000000001
	.quad	0x40227f9096bb98c8              # double 9.2491500000000002
	.quad	0x3ff0f065f9591cd2              # double 1.058691
	.quad	0x401dde3715400325              # double 7.4670069999999997
	.quad	0x4006881669ced0b3              # double 2.816449
	.quad	0x40066d7f950b955f              # double 2.8034659999999998
	.quad	0x4015f3cd9a52263e              # double 5.4880890000000004
	.quad	0x4010501754b05b7d              # double 4.078214
	.quad	0x400b485122318330              # double 3.4103110000000001
	.quad	0x4022e1d4f9c1f85d              # double 9.4410779999999991
	.quad	0x3ff1c067cf1c3266              # double 1.1094740000000001
	.quad	0x4017ab5781c714fd              # double 5.9173260000000001
	.quad	0x40185a39c51dabe2              # double 6.0881109999999996
	.quad	0x401ece7ea5f84cad              # double 7.7016549999999996
	.quad	0x3ff1e03b3e9a6f82              # double 1.1172439999999999
	.quad	0x3ffd41ca3a4b5569              # double 1.828562
	.quad	0x3fe889e98dcdb37d              # double 0.76683500000000004
	.quad	0x400080d1b71758e2              # double 2.0629
	.quad	0x3fc3e35c5b4aa971              # double 0.15537599999999999
	.quad	0x401cb63baba7b917              # double 7.177962
	.quad	0x3ffc10edc3bd5992              # double 1.7541329999999999
	.quad	0x3fe257afea3df6dc              # double 0.57320400000000005
	.quad	0x4021a145953586cb              # double 8.8149840000000008
	.quad	0x4023795a294141ea              # double 9.7370160000000006
	.quad	0x40234f28e92d55a4              # double 9.6546090000000006
	.quad	0x401377d88c1db014              # double 4.8670369999999998
	.quad	0x400273293d102bc7              # double 2.3062309999999999
	.quad	0x40125ba98eda22f7              # double 4.5895140000000003
	.quad	0x40157a543f1c7582              # double 5.3694620000000004
	.quad	0x401fe6f049a9973e              # double 7.9755260000000003
	.quad	0x4003ae82949a5658              # double 2.46021
	.quad	0x402206640a6b93cd              # double 9.0124820000000003
	.quad	0x3fe9fa5093964a5a              # double 0.81180600000000003
	.quad	0x3fd435d249e44fa0              # double 0.31578499999999998
	.quad	0x401e554003254e6e              # double 7.5832519999999999
	.quad	0x3fb34f722e1ac57e              # double 0.075430999999999998
	.quad	0x4023d0ff327aa68f              # double 9.9081969999999994
	.quad	0x40185d434a01abd2              # double 6.0910770000000003
	.quad	0x4000f388a8b08dd2              # double 2.118913
	.quad	0x401678d25edd0529              # double 5.6179899999999998
	.quad	0x40174766c6de7642              # double 5.8197279999999996
	.quad	0x40208d4cdb7ae579              # double 8.2759769999999993
	.quad	0x40076bc05d52c16e              # double 2.927613
	.quad	0x4017e77ee4e26d48              # double 5.97607
	.quad	0x401eb1b328b6d86f              # double 7.6735350000000002
	.quad	0x401de0b34e768598              # double 7.4694339999999996
	.quad	0x40127187e7c06e1a              # double 4.6108700000000002
	.quad	0x4013d09e12a51e32              # double 4.9537279999999999
	.quad	0x4021f6dfa43fe5c9              # double 8.9821749999999998
	.quad	0x401aa49fd7a13c25              # double 6.6607659999999997
	.quad	0x4009e189374bc6a8              # double 3.235125
	.quad	0x4019070a3d70a3d7              # double 6.256875
	.quad	0x401ee6b09635610b              # double 7.7252830000000001
	.quad	0x401d80bed740c415              # double 7.3757279999999996
	.quad	0x401126f4384ba0e8              # double 4.2880409999999998
	.quad	0x400d3021d10b1fef              # double 3.6485020000000001
	.quad	0x3ff1b359ff4fd6d8              # double 1.106287
	.quad	0x4015c02363b25700              # double 5.4376350000000002
	.quad	0x4016adc37a3db3c0              # double 5.6696910000000003
	.quad	0x3fff400eae18ac9f              # double 1.953139
	.quad	0x3fd8ab96f21f6cad              # double 0.38547300000000001
	.quad	0x40228ee4e26d4802              # double 9.2790900000000001
	.quad	0x3ff75f94855da273              # double 1.4608350000000001
	.quad	0x400b82d2fe3f35a0              # double 3.438879
	.quad	0x40205f290abb44e5              # double 8.1858599999999999
	.quad	0x4022f777f27fe4bd              # double 9.4833370000000005
	.quad	0x4016b52ef911cf35              # double 5.6769369999999997
	.quad	0x400e44cb5bb384fd              # double 3.7835909999999999
	.quad	0x402188bdcad14a0a              # double 8.7670729999999999
	.quad	0x3ffdc487b99d4520              # double 1.8604810000000001
	.quad	0x40038ba40d90e23b              # double 2.443184
	.quad	0x4021a8a73f748a16              # double 8.8294010000000007
	.quad	0x4019a8472c0e7bc4              # double 6.4143340000000002
	.quad	0x3ff856249a133c1d              # double 1.521031
	.quad	0x4001762e09fe8683              # double 2.1827049999999999
	.quad	0x3fd1c6ac215b9a5b              # double 0.27775100000000003
	.quad	0x400011372a38b8ae              # double 2.0084059999999999
	.quad	0x3fd9c0c62e4d1a65              # double 0.402391
	.quad	0x3fe6cbb5e0f7fcfc              # double 0.71236699999999997
	.quad	0x401f0ab3edd8b60f              # double 7.7604519999999999
	.quad	0x3f7c5718eb895076              # double 0.0069189999999999998
	.quad	0x4017e420b3d4ae43              # double 5.9727810000000003
	.quad	0x400d512b1b36bd2b              # double 3.6646329999999998
	.quad	0x4023c4ee17a02fb6              # double 9.8846290000000003
	.quad	0x4021fbd6e8af8162              # double 8.9918739999999993
	.quad	0x4005578705425f20              # double 2.6677379999999999
	.quad	0x3fe7e7d77fae3609              # double 0.74705100000000002
	.quad	0x401798da7f3cf701              # double 5.8992709999999997
	.quad	0x4000f52b0a6fc58b              # double 2.1197110000000001
	.quad	0x3fe3397fe8ee6b83              # double 0.600769
	.quad	0x401463bf727136a4              # double 5.09741
	.quad	0x40022ceee0f3cb3e              # double 2.2719399999999998
	.quad	0x401784141e9af5ba              # double 5.8789829999999998
	.quad	0x4014566f0cfe1544              # double 5.0844079999999998
	.quad	0x4016a7fc7607c41a              # double 5.6640490000000003
	.quad	0x3feee0ded288ce70              # double 0.96494999999999997
	.quad	0x401bd698fe69270b              # double 6.959568
	.quad	0x401f63f3e0370cdd              # double 7.8476100000000004
	.quad	0x4017ef3eccc46951              # double 5.983638
	.quad	0x40122b17481b21c4              # double 4.5420809999999996
	.quad	0x4012ab078d92fb1a              # double 4.6670210000000001
	.quad	0x401290a6fc58ab93              # double 4.6412620000000002
	.quad	0x4023b9437c5692b4              # double 9.8618430000000003
	.quad	0x402230a137f38c54              # double 9.0949799999999996
	.quad	0x3ff96fd438d1d8a5              # double 1.5898019999999999
	.quad	0x400d6141e9af5ba3              # double 3.6724890000000001
	.quad	0x4022e5b0574b4070              # double 9.4486109999999996
	.quad	0x401a95accd53048a              # double 6.6461670000000002
	.quad	0x4011667a95c853c1              # double 4.3500769999999997
	.quad	0x402029055b899392              # double 8.0801189999999998
	.quad	0x401fe74794ea0770              # double 7.9758589999999998
	.quad	0x4014bb44a1f08030              # double 5.1828789999999998
	.quad	0x400b88472c0e7bc4              # double 3.4415420000000001
	.quad	0x3fd6d755bccaf70a              # double 0.35689300000000002
	.quad	0x401ddc87db2b3461              # double 7.4653619999999998
	.quad	0x401ec08f648c7193              # double 7.688047
	.quad	0x40095373affb04ee              # double 3.1657479999999998
	.quad	0x40114fd1dcd7060c              # double 4.3279490000000003
	.quad	0x4013aa3a08398a65              # double 4.9162369999999997
	.quad	0x40153c5de9c0229a              # double 5.3089519999999997
	.quad	0x4014f3a109d0635a              # double 5.2379189999999998
	.quad	0x4015b7d8cf398e97              # double 5.429538
	.quad	0x4022f22bbecaab8a              # double 9.4729899999999994
	.quad	0x400db8ec95bff045              # double 3.7152949999999998
	.quad	0x3fe1f505d0fa58f7              # double 0.56115999999999999
	.quad	0x4015e23a29c779a7              # double 5.4709250000000003
	.quad	0x4007da57eaa2a0a9              # double 2.9816129999999998
	.quad	0x401e82784a9478c8              # double 7.6274119999999996
	.quad	0x400bc8f6cefed634              # double 3.4731269999999999
	.quad	0x3ff695f56a7ac81d              # double 1.4116109999999999
	.quad	0x3fef7df7e80389f8              # double 0.98412699999999997
	.quad	0x3fb3a4b5568e820e              # double 0.076731999999999994
	.quad	0x4023424ce8101f32              # double 9.6294930000000001
	.quad	0x401bea89fc6da448              # double 6.9790419999999997
	.quad	0x400d2cbd1244a622              # double 3.6468449999999999
	.quad	0x4004f0bfa0945f9e              # double 2.617553
	.quad	0x3fd3bc126a65cf68              # double 0.30835400000000002
	.quad	0x400d01ab4b72c519              # double 3.6258149999999998
	.quad	0x4003b1287c200c0f              # double 2.461503
	.quad	0x401391c8eabffcdb              # double 4.8923680000000003
	.quad	0x40101192ea52ef91              # double 4.0171619999999999
	.quad	0x3ff238769ec2ce46              # double 1.1387849999999999
	.quad	0x400da0229a5ebb77              # double 3.7031909999999999
	.quad	0x401695be5d9e40c8              # double 5.6462339999999998
	.quad	0x401544095f2452c6              # double 5.3164420000000003
	.quad	0x3ffb04ccee5abc0e              # double 1.688672
	.quad	0x40210f9f01b866e4              # double 8.5305099999999995
	.quad	0x4014e778dd616f87              # double 5.2260470000000003
	.quad	0x4010baa92e62131b              # double 4.1822860000000004
	.quad	0x3fccadcd2d44dca9              # double 0.224054
	.quad	0x3fdeed0b30b5aa71              # double 0.48321799999999998
	.quad	0x3fdcf6e3f78bbd38              # double 0.452569
	.quad	0x401e3667b5f1bef5              # double 7.5531300000000003
	.quad	0x401d5d4d4024b33e              # double 7.3411150000000003
	.quad	0x401b4d798d8a979e              # double 6.8256589999999999
	.quad	0x4021d0101f31f46f              # double 8.9063730000000003
	.quad	0x400ef3b29a1b9f99              # double 3.8689930000000001
	.quad	0x3fe7e1565c2d2780              # double 0.74625699999999995
	.quad	0x400445da6a444178              # double 2.5341079999999998
	.quad	0x401f7978d4fdf3b6              # double 7.8686249999999998
	.quad	0x400799945b6c3761              # double 2.9499900000000001
	.quad	0x40092263d816aceb              # double 3.1417920000000001
	.quad	0x4023a48a159817b9              # double 9.8213659999999993
	.quad	0x400cb4046412cf10              # double 3.5878990000000002
	.quad	0x401e22d38476f2a6              # double 7.5340100000000003
	.quad	0x401f2f559b3d07c8              # double 7.7962249999999997
	.quad	0x4017f3126e978d50              # double 5.9873750000000001
	.quad	0x402273e681a9b8cc              # double 9.2263680000000007
	.quad	0x400dada2b5a20ddc              # double 3.7097829999999998
	.quad	0x40061b8d3f1843c4              # double 2.7634530000000002
	.quad	0x4018f7ee0b0af5fd              # double 6.2421189999999998
	.quad	0x4001fab7dc7abfba              # double 2.2474210000000001
	.quad	0x4023945a8155d5f5              # double 9.7897529999999992
	.quad	0x40004a1d755bccaf              # double 2.0361889999999998
	.quad	0x400fe33c60029f17              # double 3.9859550000000001
	.quad	0x4011d34b51372a39              # double 4.4563420000000002
	.quad	0x3ffb2413db7f1737              # double 1.6963079999999999
	.quad	0x40200ae44b6e935c              # double 8.0212730000000007
	.quad	0x400ae01040bfe3b0              # double 3.3594059999999999
	.quad	0x4012bfe32a0663c7              # double 4.6873899999999997
	.quad	0x3ffb032fcac8e68e              # double 1.6882779999999999
	.quad	0x40214f68be2f7b18              # double 8.6550960000000003
	.quad	0x40214243dccea290              # double 8.6294240000000002
	.quad	0x4009a6efc371da38              # double 3.206512
	.quad	0x4021508094e5d5b2              # double 8.6572309999999995
	.quad	0x401c4b51bd61f5be              # double 7.0735539999999997
	.quad	0x4022f4ed4e4c942d              # double 9.4783729999999994
	.quad	0x401fa9307af20ea6              # double 7.9152240000000003
	.quad	0x40214a107b784663              # double 8.6446570000000005
	.quad	0x401ba3cb81733227              # double 6.9099560000000002
	.quad	0x401c398d477bbf94              # double 7.056203
	.quad	0x401aff5b1c864884              # double 6.749371
	.quad	0x4017957cd466f502              # double 5.8959840000000003
	.quad	0x3fcd99aa60913a50              # double 0.23125200000000001
	.quad	0x401543ef284167a9              # double 5.3163419999999997
	.quad	0x401802e2328f9f45              # double 6.0028160000000002
	.quad	0x40227b7154003255              # double 9.2410990000000002
	.quad	0x402045e28aa43351              # double 8.1364940000000008
	.quad	0x401d476d5497310a              # double 7.3197530000000004
	.quad	0x400d36d2aa5c5f7c              # double 3.6517689999999998
	.quad	0x401a9483cafb3b75              # double 6.6450339999999999
	.quad	0x401a420c069e7fb2              # double 6.5644989999999996
	.quad	0x3fe36d8f4f93bc0a              # double 0.607124
	.quad	0x40231f51efb6dca0              # double 9.5611719999999991
	.quad	0x3fe5548cb4aec8d6              # double 0.66657100000000002
	.quad	0x40222ad81adea897              # double 9.0836799999999993
	.quad	0x3ffb922856605ee5              # double 1.7231829999999999
	.quad	0x3fec2f4adbc664d4              # double 0.88077300000000002
	.quad	0x40123d1d4738a3b5              # double 4.5596819999999996
	.quad	0x40237612a51e321a              # double 9.7306109999999997
	.quad	0x401fef080303c07f              # double 7.9834290000000001
	.quad	0x401cdb6805a2d730              # double 7.214264
	.quad	0x4011aa9cdc443915              # double 4.416614
	.quad	0x402324538ef34d6a              # double 9.5709499999999998
	.quad	0x4019daa7ded6ba8c              # double 6.4635309999999997
	.quad	0x4009f657fb69984a              # double 3.245285
	.quad	0x40191d3e4ef0281c              # double 6.2785580000000003
	.quad	0x4013c41aac53b081              # double 4.9415079999999998
	.quad	0x4004f0c2c5e2cdc0              # double 2.617559
	.quad	0x401794a38327674d              # double 5.8951549999999999
	.quad	0x400931c864883fd5              # double 3.149308
	.quad	0x40176886162f166e              # double 5.852074
	.quad	0x400a16ed6777079e              # double 3.2611949999999998
	.quad	0x3fd28c5c9a34ca0c              # double 0.28981699999999999
	.quad	0x4014efa54c554328              # double 5.2340289999999996
	.quad	0x4001d6cefed63455              # double 2.2298870000000002
	.quad	0x400b470da5daf07c              # double 3.409694
	.quad	0x4021d648e8a71de7              # double 8.9185250000000007
	.quad	0x40197def8487b99d              # double 6.3729839999999998
	.quad	0x40222572de43ed96              # double 9.0731420000000007
	.quad	0x401bb23bbc6eb0b8              # double 6.9240560000000002
	.quad	0x3fbd714b9cb6848c              # double 0.11501
	.quad	0x400aaf5a964e8b7e              # double 3.3356219999999999
	.quad	0x3ffbd35daad60200              # double 1.7391030000000001
	.quad	0x40165cd5f99c38b0              # double 5.5906599999999997
	.quad	0x4020ff50c1b97354              # double 8.4986630000000005
	.quad	0x3fa9355475a31a4c              # double 0.049235000000000001
	.quad	0x401a3bedb7281fda              # double 6.5585240000000002
	.quad	0x40207aea52ef911d              # double 8.2400690000000001
	.quad	0x4022e233df2a9d62              # double 9.4418019999999991
	.quad	0x401b801040bfe3b0              # double 6.8750619999999998
	.quad	0x4020d74bc6a7ef9e              # double 8.4205000000000005
	.quad	0x4010b32f01754b06              # double 4.1749840000000003
	.quad	0x401e8dc8323358f3              # double 7.6384590000000001
	.quad	0x400f7ff1d81f1066              # double 3.9374729999999998
	.quad	0x40206de1c15097c8              # double 8.2146129999999999
	.quad	0x401fe950fc71d606              # double 7.9778479999999998
	.quad	0x4016deafee6fb4c4              # double 5.7174680000000002
	.quad	0x401134cc6822ff09              # double 4.3015610000000004
	.quad	0x3fdadf82b1f687b1              # double 0.41989199999999999
	.quad	0x401cf53e707e175d              # double 7.2394959999999999
	.quad	0x4018fd3ae685db77              # double 6.2472950000000003
	.quad	0x40203121ee675148              # double 8.0959620000000001
	.quad	0x401f2871e6cd2913              # double 7.7894969999999998
	.quad	0x3fe440e7bc3c5bd1              # double 0.63292300000000001
	.quad	0x401590f6273929ed              # double 5.3915639999999998
	.quad	0x40171b777d0f1f58              # double 5.7768230000000003
	.quad	0x4005b320d9945b6c              # double 2.7124649999999999
	.quad	0x4022515db3397dd0              # double 9.1589179999999999
	.quad	0x40110e08f2170931              # double 4.263706
	.quad	0x401caae21101b003              # double 7.1668779999999996
	.quad	0x40131def8487b99d              # double 4.7792339999999998
	.quad	0x40157380cb6c7a7d              # double 5.3627960000000003
	.quad	0x3ff8676c8b439581              # double 1.52525
	.quad	0x401afc6822ff0889              # double 6.7464909999999998
	.quad	0x40044c6e6d9be4cd              # double 2.5373199999999998
	.quad	0x40228c404a72ead9              # double 9.2739279999999997
	.quad	0x4011409246bf0132              # double 4.3130579999999998
	.quad	0x400850b9dc2f405f              # double 3.0394169999999998
	.quad	0x400328aa433508f6              # double 2.3948559999999999
	.quad	0x401a855043e5321e              # double 6.6301889999999997
	.quad	0x3fe2ae05ccc89b0f              # double 0.58374300000000001
	.quad	0x401bc3dc054ef45a              # double 6.9412690000000001
	.quad	0x40218ac3009b3073              # double 8.7710190000000008
	.quad	0x401b74677b395c42              # double 6.8636759999999999
	.quad	0x4023e36284599674              # double 9.9441109999999994
	.quad	0x40223eb09635610b              # double 9.1224410000000002
	.quad	0x4000c92817763e4b              # double 2.0982210000000001
	.quad	0x401a2ae70c1333b9              # double 6.5418969999999996
	.quad	0x40236c4c5974e65c              # double 9.7115200000000001
	.quad	0x40106dedaec4a409              # double 4.1073519999999997
	.quad	0x4020972d1aeb3dd1              # double 8.2952659999999998
	.quad	0x400aec6a3bddfca0              # double 3.365437
	.quad	0x3fab93ccd0fe8ab5              # double 0.053862
	.quad	0x400803c4b09e98dd              # double 3.0018400000000001
	.quad	0x400d656366d7a56e              # double 3.674506
	.quad	0x4015c6e19b90ea9e              # double 5.4442199999999996
	.quad	0x4023f1654d61b2a2              # double 9.9714759999999991
	.quad	0x401da3a08398a655              # double 7.4097920000000004
	.quad	0x4002ce4755ffe6d6              # double 2.3507220000000002
	.quad	0x3fff30d1fa333765              # double 1.949419
	.quad	0x400c99fdbd2fa0d7              # double 3.5751909999999998
	.quad	0x400cc77681669ced              # double 3.597394
	.quad	0x4005f78c436fc159              # double 2.745873
	.quad	0x401db7136a400fbb              # double 7.4287850000000004
	.quad	0x401f0d4b6a619daa              # double 7.7629830000000002
	.quad	0x400b5b15b573eab3              # double 3.4194749999999998
	.quad	0x4002787f88765ba7              # double 2.308837
	.quad	0x4022a414e7ee9143              # double 9.3204720000000005
	.quad	0x3fe323fcc9ea9a3d              # double 0.59814299999999998
	.quad	0x401b5d2d01c0ca60              # double 6.840992
	.quad	0x401e17fcfc3f811f              # double 7.5234259999999997
	.quad	0x401546f71a7e3088              # double 5.3193020000000004
	.quad	0x4015eab0c88a47ed              # double 5.47919
	.quad	0x3ff05c5f7c6759ab              # double 1.0225519999999999
	.quad	0x40218bd273d5bab2              # double 8.7730899999999998
	.quad	0x401bc4b5568e820e              # double 6.9420979999999997
	.quad	0x40016cf7caa7589f              # double 2.178207
	.quad	0x4011733c1ce6c094              # double 4.3625340000000001
	.quad	0x402143ff69014b5a              # double 8.6328080000000007
	.quad	0x401bbe770bd017db              # double 6.9360010000000001
	.quad	0x3ff56687f455a7d2              # double 1.3375319999999999
	.quad	0x4021811cd1c7de51              # double 8.7521730000000009
	.quad	0x401c2451b93037d6              # double 7.0354679999999998
	.quad	0x3ff6b75536933a04              # double 1.419759
	.quad	0x4022bc054ef459da              # double 9.3672280000000008
	.quad	0x3fe68c0053e2d624              # double 0.70459000000000005
	.quad	0x4015ef609dcf8940              # double 5.4837670000000003
	.quad	0x401cea543f1c7582              # double 7.2288370000000004
	.quad	0x401271e92923e5b8              # double 4.6112409999999997
	.quad	0x400dc25e13b18dac              # double 3.7199059999999999
	.quad	0x4018eb10ba6266fd              # double 6.2295559999999996
	.quad	0x4009b8a4c1ebc83b              # double 3.2151580000000002
	.quad	0x4013188509bf9c63              # double 4.7739450000000003
	.quad	0x40236607e5a78f26              # double 9.6992790000000007
	.quad	0x40221c091c087443              # double 9.0547570000000004
	.quad	0x4006ab8066c2acb8              # double 2.8337409999999998
	.quad	0x400b7bfd71b04684              # double 3.4355419999999999
	.quad	0x401215bd0e12e83a              # double 4.5212289999999999
	.quad	0x4000fc169c23b795              # double 2.1230899999999999
	.quad	0x3fead05f28848388              # double 0.83793600000000001
	.quad	0x4021e2e7d566cf42              # double 8.9431750000000001
	.quad	0x40168f566490a351              # double 5.6399780000000002
	.quad	0x401d011ada76d97b              # double 7.2510789999999998
	.quad	0x4020a20685553ef7              # double 8.3164560000000005
	.quad	0x3fea804d98394749              # double 0.82816199999999995
	.quad	0x40102444e0daa0cb              # double 4.0354190000000001
	.quad	0x3fce9a77e5eaab04              # double 0.239089
	.quad	0x3ffb633df2a9d628              # double 1.7117290000000001
	.quad	0x4023d36d43d03969              # double 9.9129430000000002
	.quad	0x3fc364f97edc7ef1              # double 0.15151899999999999
	.quad	0x4000c29f9ce8d973              # double 2.0950310000000001
	.quad	0x40234d4cdb7ae579              # double 9.6509769999999992
	.quad	0x3ff7c66a11ec918e              # double 1.485941
	.quad	0x401ff43bf727136a              # double 7.9885099999999998
	.quad	0x401e705b39e279dd              # double 7.6097229999999997
	.quad	0x40166cc63f141206              # double 5.6062250000000002
	.quad	0x4013adf58c08b75f              # double 4.9198820000000003
	.quad	0x401bcdbc664d3bf3              # double 6.950914
	.quad	0x4019e15db3397dd0              # double 6.4700839999999999
	.quad	0x40177b2e9ccb7d41              # double 5.8702949999999996
	.quad	0x4006bdd5d3dc8b87              # double 2.8426930000000001
	.quad	0x3fe7cff865d7cb2e              # double 0.74413700000000005
	.quad	0x401ea8a9bcfd4bf1              # double 7.6647100000000003
	.quad	0x3ff15a5332acfb76              # double 1.084552
	.quad	0x3ff4b777d0f1f57b              # double 1.2947919999999999
	.quad	0x3f6641f644955b46              # double 0.0027169999999999998
	.quad	0x4020946f7a0b5ed9              # double 8.2899130000000003
	.quad	0x40094db48909289e              # double 3.1629420000000001
	.quad	0x400e1667b5f1bef5              # double 3.7609400000000002
	.quad	0x40085820a30db6a2              # double 3.043031
	.quad	0x400e3675ddd2ae8e              # double 3.7765919999999999
	.quad	0x401f6cb81733226c              # double 7.8561709999999998
	.quad	0x401f554fbdad7519              # double 7.8333120000000002
	.quad	0x3ff3cd8127b2cc71              # double 1.2376720000000001
	.quad	0x3fec1e215336deb9              # double 0.87867799999999996
	.quad	0x40231ca643cc07ab              # double 9.5559560000000001
	.quad	0x401906d3b6cbd988              # double 6.2566670000000002
	.quad	0x3fda1882adc4c9c9              # double 0.407746
	.quad	0x3ff57fac1d29dc72              # double 1.3436699999999999
	.quad	0x401bfea8da7f3cf7              # double 6.998691
	.quad	0x401c6a9cdc443915              # double 7.104114
	.quad	0x401db0b0af5fd47c              # double 7.4225490000000001
	.quad	0x4019bcb5bb384fd3              # double 6.4342870000000003
	.quad	0x40130a786c22680a              # double 4.7602250000000002
	.quad	0x3ff846801711947d              # double 1.517212
	.quad	0x402238c23fab10ba              # double 9.1108569999999993
	.quad	0x401188387df5cf25              # double 4.3830280000000004
	.quad	0x401a436976bc1f00              # double 6.5658320000000003
	.quad	0x3feb451761459536              # double 0.85218400000000005
	.quad	0x3ff21e03f705857b              # double 1.132328
	.quad	0x400c52799a1fd157              # double 3.5402710000000002
	.quad	0x401bde147ae147ae              # double 6.9668749999999999
	.quad	0x401a28769ec2ce46              # double 6.5395149999999997
	.quad	0x4001265d7cb2d906              # double 2.1437330000000001
	.quad	0x40209265add9c27f              # double 8.2859320000000007
	.quad	0x4014b7991bc55864              # double 5.1792949999999998
	.quad	0x3ffc4c5eb313be23              # double 1.768645
	.quad	0x40206832b990afe6              # double 8.2035119999999999
	.quad	0x400b433b5393250b              # double 3.4078279999999999
	.quad	0x400bf9da9c99285b              # double 3.4969990000000002
	.quad	0x40117cfb3311a544              # double 4.372052
	.quad	0x401c7d99029ae4f3              # double 7.1226539999999998
	.quad	0x3ff1d5ac03ff6901              # double 1.1146659999999999
	.quad	0x3ff4634eb9a176de              # double 1.2742450000000001
	.quad	0x40032cdf266ba494              # double 2.3969100000000001
	.quad	0x40028f8d716d2aa6              # double 2.3200940000000001
	.quad	0x4010404a2fcefaa4              # double 4.0627829999999996
	.quad	0x4022233ce63a5c1c              # double 9.0688239999999993
	.quad	0x3ffee8c9b845564b              # double 1.9318329999999999
	.quad	0x40204ab92c061848              # double 8.1459440000000001
	.quad	0x4023800a9de8b3b3              # double 9.7500809999999997
	.quad	0x4014774e22a2c237              # double 5.1165089999999998
	.quad	0x4009048e043a2164              # double 3.127224
	.quad	0x401e8eea209aaa3b              # double 7.6395650000000001
	.quad	0x4008c18d6909aed5              # double 3.0945079999999998
	.quad	0x400a09310129cbab              # double 3.2544879999999998
	.quad	0x4001071cda2b5a21              # double 2.1284730000000001
	.quad	0x3ff478b8ae31d713              # double 1.2794730000000001
	.quad	0x4017cf88333fc86d              # double 5.9526680000000001
	.quad	0x4020cf19f7f8ca82              # double 8.4044950000000007
	.quad	0x3fd1ba908a265f0f              # double 0.27701199999999998
	.quad	0x400afb07075b3e14              # double 3.3725719999999999
	.quad	0x401be13f8db48909              # double 6.9699689999999999
	.quad	0x400e07fe4bcad9ae              # double 3.7539030000000002
	.quad	0x4009a9d8c6d612c7              # double 3.2079330000000001
	.quad	0x40201c4567125dd1              # double 8.0552170000000007
	.quad	0x4005890f733a8a40              # double 2.6919240000000002
	.quad	0x400e40bdcad14a0a              # double 3.781612
	.quad	0x400aa9635610adcd              # double 3.3327089999999999
	.quad	0x400ea249a133c1ce              # double 3.8292419999999998
	.quad	0x40208ebe596c82e0              # double 8.2787959999999998
	.quad	0x4023d2f5dbb9cf9a              # double 9.912032
	.quad	0x400d45f9df548ece              # double 3.6591680000000002
	.quad	0x3fcd6d7e889c1b54              # double 0.229904
	.quad	0x4021e4117f84449e              # double 8.9454460000000005
	.quad	0x400a74866a11ec92              # double 3.3068970000000002
	.quad	0x3ff018dde7a743a6              # double 1.0060709999999999
	.quad	0x40228c07ee0b0af6              # double 9.273498
	.quad	0x3f97991bc5586445              # double 0.023045
	.quad	0x402229c99285a922              # double 9.0816160000000004
	.quad	0x4023fcb5fe542e55              # double 9.9935759999999991
	.quad	0x400f8679cc74b839              # double 3.9406620000000001
	.quad	0x4010576d117b5287              # double 4.0853770000000003
	.quad	0x4012cba301216830              # double 4.6988640000000004
	.quad	0x4022642b94d94079              # double 9.1956450000000007
	.quad	0x4002f54c985f06f7              # double 2.3697750000000002
	.quad	0x4011e1569f490603              # double 4.4700569999999997
	.quad	0x3ffbf829068986fd              # double 1.748086
	.quad	0x3fe589edbf8b9baa              # double 0.67308699999999999
	.quad	0x40238217f4128bf4              # double 9.7540890000000004
	.quad	0x40221307d0aed99d              # double 9.0371690000000005
	.quad	0x3fe1f11947cfa26a              # double 0.56068099999999998
	.quad	0x401126c4827b6fe3              # double 4.2878590000000001
	.quad	0x4002afd5cb790fb6              # double 2.3358569999999999
	.quad	0x401564e0daa0cae6              # double 5.3485139999999998
	.quad	0x402143d5347a5b10              # double 8.6324860000000001
	.quad	0x3ff88793dd97f62b              # double 1.5330999999999999
	.quad	0x401af75b3e1437c5              # double 6.7415589999999996
	.quad	0x4022711ada76d97b              # double 9.2209079999999997
	.quad	0x3fff44b09e98dcdb              # double 1.95427
	.quad	0x4021fc34e3369b9d              # double 8.9925909999999991
	.quad	0x401234107314ca92              # double 4.5508439999999997
	.quad	0x3ff4d0214ad362e9              # double 1.300813
	.quad	0x4022b6ad9274e22a              # double 9.3567929999999997
	.quad	0x4015e490e66cb103              # double 5.4732089999999998
	.quad	0x401ae72ef0ae5365              # double 6.725765
	.quad	0x3fdad3a1d323fee3              # double 0.41916700000000001
	.quad	0x40189e40c8472c0e              # double 6.1545439999999996
	.quad	0x401576d2674080fa              # double 5.3660370000000004
	.quad	0x40239f1715c63ae2              # double 9.8107229999999994
	.quad	0x3fd2870110a137f4              # double 0.28949000000000003
	.quad	0x40176cf95d4e8fb0              # double 5.85642
	.quad	0x401e54b599aa6091              # double 7.5827239999999997
	.quad	0x4023bd9e6256366d              # double 9.8703489999999991
	.quad	0x3ff846d1e108c3f4              # double 1.51729
	.quad	0x400b2827b6fe2e6f              # double 3.3946070000000002
	.quad	0x400c303211cb039f              # double 3.523533
	.quad	0x3fedcad362e90364              # double 0.93100899999999997
	.quad	0x3fb7eb8d82342246              # double 0.093437999999999993
	.quad	0x401eac6d1e108c3f              # double 7.6683849999999997
	.quad	0x401aed6bebe1650a              # double 6.7318569999999998
	.quad	0x40134413122b7baf              # double 4.8164790000000002
	.quad	0x400fbaaef2c73259              # double 3.966154
	.quad	0x40223c9ba5e353f8              # double 9.1183750000000003
	.quad	0x3ffe1ebb7739f341              # double 1.882503
	.quad	0x40120753a3ec02f3              # double 4.507155
	.quad	0x400929203a322af5              # double 3.1450809999999998
	.quad	0x400408d5410f94c8              # double 2.5043129999999998
	.quad	0x401b61d10b1feeb3              # double 6.8455240000000002
	.quad	0x401d417b95a29414              # double 7.3139479999999999
	.quad	0x3fd201abd1aa821f              # double 0.28135199999999999
	.quad	0x400b2145953586cb              # double 3.3912460000000002
	.quad	0x4023dc33721d53ce              # double 9.9300800000000002
	.quad	0x401f640f66a55087              # double 7.8477149999999999
	.quad	0x400501d9f4d37c13              # double 2.6259039999999998
	.quad	0x401bbea4a8c154ca              # double 6.9361750000000004
	.quad	0x401596a012599ed8              # double 5.3970950000000002
	.quad	0x40195ffac1d29dc7              # double 6.3437299999999999
	.quad	0x401a55464dc22ab2              # double 6.5832759999999997
	.quad	0x401b79081c2e33f0              # double 6.8681950000000001
	.quad	0x402192131a8ef77f              # double 8.7853019999999997
	.quad	0x3feb5916872b020c              # double 0.85462499999999996
	.quad	0x3ff6e04d12018a44              # double 1.4297610000000001
	.quad	0x401e0319c5a3e39f              # double 7.5030279999999995
	.quad	0x402094102ff8ec10              # double 8.2891860000000008
	.quad	0x40061704790b8499              # double 2.7612390000000002
	.quad	0x40132f850df15a4b              # double 4.7964060000000002
	.quad	0x40204a8198f1d3ed              # double 8.1455199999999994
	.quad	0x401d7aee2003ab86              # double 7.3700489999999999
	.quad	0x400fa5c2d2780779              # double 3.9559380000000002
	.quad	0x40081b328b6d86ec              # double 3.01328
	.quad	0x401483f2d3c792d1              # double 5.1288559999999999
	.quad	0x401c676c8b439581              # double 7.101
	.quad	0x401bd2641b328b6e              # double 6.9554600000000004
	.quad	0x4015daebc408d8ed              # double 5.4637900000000004
	.quad	0x40227eff3ade2260              # double 9.2480410000000006
	.quad	0x401c1bb6672fba02              # double 7.0270630000000001
	.quad	0x4020b2469d7342ee              # double 8.3481950000000005
	.quad	0x3fe413b3a68b19a4              # double 0.62740499999999999
	.quad	0x401b559791819d24              # double 6.8335860000000004
	.quad	0x3fc8705425f20210              # double 0.19092799999999999
	.quad	0x400b28c26138fffc              # double 3.3949020000000001
	.quad	0x4018141d084e831b              # double 6.0196420000000002
	.quad	0x3ffd0de2ac322292              # double 1.81589
	.quad	0x40170f40a2877ee5              # double 5.7648950000000001
	.quad	0x40220f2862f5989e              # double 9.0296050000000001
	.quad	0x3fffa90ff9724745              # double 1.978775
	.quad	0x400435393250b524              # double 2.5259879999999999
	.quad	0x4020e3c33f85510d              # double 8.4448489999999996
	.quad	0x400e33b645a1cac1              # double 3.7752500000000002
	.quad	0x4020b8a350d2806b              # double 8.3606210000000001
	.quad	0x40141275ee99a62f              # double 5.0180280000000002
	.quad	0x401cc0c38f366949              # double 7.1882460000000004
	.quad	0x4002ca4228997c3d              # double 2.3487589999999998
	.quad	0x40232395c4220360              # double 9.569502
	.quad	0x400e47fe4bcad9ae              # double 3.7851530000000002
	.quad	0x4010996312f4cf4a              # double 4.1497919999999997
	.quad	0x3ffc46573215fcc2              # double 1.7671730000000001
	.quad	0x4020136ae7d566cf              # double 8.0379249999999995
	.quad	0x401d272f33ca31e8              # double 7.2882660000000001
	.quad	0x4019a6bc621b7e0b              # double 6.4128280000000002
	.quad	0x401a04a48f96e158              # double 6.5045339999999996
	.quad	0x3fe85e657b84db9c              # double 0.76152299999999994
	.quad	0x402310f36694898f              # double 9.5331069999999993
	.quad	0x402321c15097c808              # double 9.5659279999999995
	.quad	0x40207b743632c1f4              # double 8.2411209999999996
	.quad	0x40029e58e64b2314              # double 2.327318
	.quad	0x3fe8fecdd0d8cb08              # double 0.78110400000000002
	.quad	0x402002799a1fd157              # double 8.0048340000000007
	.quad	0x3ff172324c836651              # double 1.0903799999999999
	.quad	0x401cd156191148fe              # double 7.2044300000000003
	.quad	0x40237e115592d98c              # double 9.746226
	.quad	0x401d4e69270b06c4              # double 7.3265729999999998
	.quad	0x401079528f190d17              # double 4.1184789999999998
	.quad	0x401ebd69d30270f4              # double 7.6849740000000004
	.quad	0x4016973eab367a10              # double 5.6477000000000004
	.quad	0x40184fd1569f4906              # double 6.077947
	.quad	0x4015975968512232              # double 5.3978020000000004
	.quad	0x400cd3edd8b60f1b              # double 3.6034809999999999
	.quad	0x4017b8aac96cc5fc              # double 5.930339
	.quad	0x3fd7f266ba493c8a              # double 0.37417
	.quad	0x4003c8b32ce89657              # double 2.472998
	.quad	0x40226bb213e3e293              # double 9.2103429999999999
	.quad	0x40015c26dce39b45              # double 2.1699959999999998
	.quad	0x4022ec4d44567126              # double 9.4615270000000002
	.quad	0x40228384ba0e8427              # double 9.2568719999999995
	.quad	0x3fcd34373f316e37              # double 0.228156
	.quad	0x401753b81b64e054              # double 5.8317569999999996
	.quad	0x3fe7dfeb8d823422              # double 0.74608399999999997
	.quad	0x40113322f2734f83              # double 4.299938
	.quad	0x402294a36199780c              # double 9.2903090000000005
	.quad	0x40076d573647baaa              # double 2.9283890000000001
	.quad	0x40217abb8800eae2              # double 8.7397120000000008
	.quad	0x3fecf3f316e37154              # double 0.90477899999999999
	.quad	0x3ff00322291fb3fa              # double 1.0007649999999999
	.quad	0x4013bab10ba62670              # double 4.9323160000000001
	.quad	0x40234ebbdbe3c105              # double 9.6537769999999998
	.quad	0x40211f3d7d3910c3              # double 8.5610160000000004
	.quad	0x3ff8832441fea811              # double 1.532017
	.quad	0x3fe484c271fff79d              # double 0.64120600000000005
	.quad	0x401db34938583622              # double 7.425084
	.quad	0x401e023c85c24c40              # double 7.5021839999999997
	.quad	0x40107b6ed677707a              # double 4.1205400000000001
	.quad	0x401c27cbf6e3f78c              # double 7.0388640000000002
	.quad	0x3fd91650a45d41fa              # double 0.39198699999999997
	.quad	0x3ff2227179bfdf7f              # double 1.1334090000000001
	.quad	0x400902b734b51373              # double 3.1263260000000002
	.quad	0x40140d9e40c8472c              # double 5.0132989999999999
	.quad	0x401154e7253da72a              # double 4.3329129999999996
	.quad	0x3ffcb4080f98fa37              # double 1.7939529999999999
	.quad	0x401dc4406c00da1b              # double 7.4416520000000004
	.quad	0x400057a80cf9e386              # double 2.0428009999999999
	.quad	0x4011559fb1e18efc              # double 4.3336170000000003
	.quad	0x4010c8b04ab606b8              # double 4.1959850000000003
	.quad	0x3fdc8c32a8c9b845              # double 0.44605699999999998
	.quad	0x401eff7f06705c89              # double 7.7495079999999996
	.quad	0x401c40b5ed8d36b5              # double 7.0631940000000002
	.quad	0x401118893b7d8490              # double 4.2739609999999999
	.quad	0x4021e51ed9dfdac7              # double 8.9475010000000008
	.quad	0x400e448626f60e0f              # double 3.7834590000000001
	.quad	0x4014095f2452c5a0              # double 5.0091520000000003
	.quad	0x3fe7daaf78feef5f              # double 0.74544500000000002
	.quad	0x4006761240746456              # double 2.807652
	.quad	0x401a13d07c84b5dd              # double 6.5193500000000002
	.quad	0x401972fec56d5cfb              # double 6.3623000000000003
	.quad	0x400e722c01e68a0d              # double 3.8057479999999999
	.quad	0x4011bbf9c62a1b5c              # double 4.4335699999999996
	.quad	0x40100b280f12c27a              # double 4.0108949999999997
	.quad	0x4022e2c27a63736d              # double 9.4428900000000002
	.quad	0x401803c1ce6c093e              # double 6.0036690000000004
	.quad	0x401aea5c5f7c675a              # double 6.7288680000000003
	.quad	0x4006863f9a49c2c2              # double 2.8155510000000001
	.quad	0x400e2bda9435ac8a              # double 3.7714129999999999
	.quad	0x401f5fdda8bd230c              # double 7.8436190000000003
	.quad	0x4021eb7bd05af6c7              # double 8.9599290000000007
	.quad	0x3ffad9578a2a90cd              # double 1.6780619999999999
	.quad	0x3ff7b73083558a76              # double 1.482224
	.quad	0x40238f6577531db4              # double 9.7800709999999995
	.quad	0x4022262046c764ae              # double 9.074465
	.quad	0x40174d273d5bab22              # double 5.8253450000000004
	.quad	0x402171511dffc548              # double 8.7213220000000007
	.quad	0x402299a2e7f6f4bf              # double 9.3000710000000009
	.quad	0x401b099f5dfeb8d8              # double 6.7593969999999999
	.quad	0x40218193f6c2699c              # double 8.7530819999999991
	.quad	0x3ff740baa582dbe8              # double 1.453303
	.quad	0x401e396030c23fab              # double 7.5560309999999999
	.quad	0x40219dcdb37c99af              # double 8.8082100000000008
	.quad	0x3fd7925bb7b6bb13              # double 0.36830800000000002
	.quad	0x401fc6394face67d              # double 7.9435779999999995
	.quad	0x3ff3ca3400b88ca4              # double 1.236866
	.quad	0x402321dc50ce4ead              # double 9.5661339999999999
	.quad	0x3ff6e4d3bf2f5558              # double 1.430866
	.quad	0x40045e481f53825e              # double 2.546036
	.quad	0x4023b01c92ddbdb6              # double 9.8439680000000003
	.quad	0x4002e30014f8b589              # double 2.36084
	.quad	0x4012a338f7985272              # double 4.6593970000000002
	.quad	0x401b07fa5d28d003              # double 6.7577910000000001
	.quad	0x401ab797891e2153              # double 6.6792889999999998
	.quad	0x400b51897a67a52b              # double 3.4148130000000001
	.quad	0x400c73affb04ee7c              # double 3.5564879999999999
	.quad	0x4004e91afc04c8bd              # double 2.6138210000000002
	.quad	0x40221940fecdd0d9              # double 9.0493240000000004
	.quad	0x4022044d013a92a3              # double 9.0084
	.quad	0x3fd3684cf0739b02              # double 0.30324099999999998
	.quad	0x40136a6dacabc515              # double 4.8539339999999997
	.quad	0x3ff2a9dc725c3dee              # double 1.1664699999999999
	.quad	0x4022fa178f68be2f              # double 9.4884609999999991
	.quad	0x3fc0f102363b2570              # double 0.132355
	.quad	0x402274c8ffb8b264              # double 9.2280960000000007
	.quad	0x4015d94f26aec072              # double 5.4622159999999997
	.quad	0x40120fe4ffc9795b              # double 4.5155219999999998
	.quad	0x401a1eda66128390              # double 6.5301299999999998
	.quad	0x4006ffda4052d667              # double 2.8749280000000002
	.quad	0x40220d045fe11127              # double 9.0254239999999992
	.quad	0x4017ccc1871e6cd3              # double 5.9499570000000004
	.quad	0x401434662bae03b4              # double 5.0511710000000001
	.quad	0x4003064fdb09a672              # double 2.378082
	.quad	0x3fff1acbc8c0ce92              # double 1.944042
	.quad	0x3feaf46455eaee20              # double 0.84233299999999999
	.quad	0x40030b3aabcd78c4              # double 2.3804829999999999
	.quad	0x40171b02d59d55e7              # double 5.7763780000000002
	.quad	0x40017dc5931ca7d6              # double 2.1864119999999998
	.quad	0x40131c115df6555c              # double 4.7774099999999997
	.quad	0x3ffc7cc6c54bcf0b              # double 1.7804629999999999
	.quad	0x402343dd334c5da7              # double 9.6325470000000006
	.quad	0x3fe5b3a2595bbbe8              # double 0.67817799999999995
	.quad	0x400d269d7342edbb              # double 3.6438549999999998
	.quad	0x401b6b256ffc115e              # double 6.854635
	.quad	0x40235799806f2629              # double 9.6710930000000008
	.quad	0x40143916440f2389              # double 5.0557489999999996
	.quad	0x4018f616f86a0989              # double 6.2403219999999999
	.quad	0x3ff2f42aa9f7b5af              # double 1.1846110000000001
	.quad	0x400f7382e44b6e93              # double 3.9314019999999998
	.quad	0x3fec89c3ce2089e3              # double 0.89181699999999997
	.quad	0x3fcb6598e10cf5b2              # double 0.21403800000000001
	.quad	0x400b231ceaf251c2              # double 3.3921450000000002
	.quad	0x4016649e8815e397              # double 5.5982609999999999
	.quad	0x4009c5dd8f92af9b              # double 3.2216140000000002
	.quad	0x40200ee75ff609dd              # double 8.0291090000000001
	.quad	0x4017bd69d30270f4              # double 5.9349740000000004
	.quad	0x402328d9b5e95b79              # double 9.5797860000000003
	.quad	0x3ffa14f483cafb3b              # double 1.6301159999999999
	.quad	0x4021c0257c914b16              # double 8.8752859999999991
	.quad	0x4005c970f7b9e061              # double 2.72336
	.quad	0x3ff470563ed0f627              # double 1.277426
	.quad	0x40104e7d566cf41f              # double 4.0766499999999999
	.quad	0x40156f94855da273              # double 5.3589650000000004
	.quad	0x4015deb52c9d16fd              # double 5.4674880000000003
	.quad	0x4020dd256798958e              # double 8.4319260000000007
	.quad	0x3fe7c03148776816              # double 0.74221099999999995
	.quad	0x3fd7587d6f976790              # double 0.36477599999999999
	.quad	0x3ff4c6088d6d3b6d              # double 1.2983480000000001
	.quad	0x3feb825e13b18dac              # double 0.85966399999999998
	.quad	0x401a0c94b380cb6c              # double 6.5122859999999996
	.quad	0x3ffedac471b47842              # double 1.92841
	.quad	0x401e1f62b6ae7d56              # double 7.5306499999999996
	.quad	0x401c7d666a98244f              # double 7.1224610000000004
	.quad	0x4021b7383f0bae8a              # double 8.8578510000000001
	.quad	0x4018c755ffe6d58d              # double 6.1946640000000004
	.quad	0x3ff441e57d9dba91              # double 1.2660880000000001
	.quad	0x4013dec80c73abc9              # double 4.9675599999999998
	.quad	0x4016f9d2bf551505              # double 5.7439679999999997
	.quad	0x40215158fb43d89d              # double 8.6588820000000002
	.quad	0x400a42352eb5f5f1              # double 3.2823280000000001
	.quad	0x4004c37ef5a964e9              # double 2.5954570000000001
	.quad	0x402376fb6dca07f6              # double 9.7323869999999992
	.quad	0x3ff249ff92f2b66b              # double 1.1430659999999999
	.quad	0x4023a83a109d0636              # double 9.8285680000000006
	.quad	0x400a800218def417              # double 3.3125040000000001
	.quad	0x400b1e09bb6aa4ba              # double 3.3896670000000002
	.quad	0x40221981e03f7058              # double 9.0498189999999994
	.quad	0x4020b33892ee84ad              # double 8.3500409999999992
	.quad	0x401b9ee30caa326e              # double 6.9051629999999999
	.quad	0x400705d6bebe1651              # double 2.8778510000000002
	.quad	0x401c9674080f98fa              # double 7.1469269999999998
	.quad	0x40213dc52e72da12              # double 8.6206449999999997
	.quad	0x40104aee631f8a09              # double 4.073175
	.quad	0x3ff4b2f23033a472              # double 1.2936879999999999
	.quad	0x4020696c1e364bec              # double 8.2059029999999992
	.quad	0x40178b606b7aa25e              # double 5.8861100000000004
	.quad	0x3fef515ad106ee31              # double 0.97868100000000002
	.quad	0x4013a61672324c83              # double 4.9121949999999996
	.quad	0x3fda4ac6cdaf4adc              # double 0.41081400000000001
	.quad	0x400aeff2a172abef              # double 3.367162
	.quad	0x40124b662fdfc19c              # double 4.5736319999999999
	.quad	0x40215d23b3636f3b              # double 8.6819129999999998
	.quad	0x3ffb0575c0767d35              # double 1.688833
	.quad	0x4017c15d701d9f4d              # double 5.9388329999999998
	.quad	0x400d8ba9d1f60179              # double 3.6931949999999998
	.quad	0x401d6b8e086bdf4c              # double 7.3550339999999998
	.quad	0x4009d2031ceaf252              # double 3.2275450000000001
	.quad	0x40215bba12b5e52a              # double 8.6791540000000005
	.quad	0x3fc90e90bc7b45f1              # double 0.19575699999999999
	.quad	0x4011d110a137f38c              # double 4.4541649999999997
	.quad	0x400387abfb9bed31              # double 2.441246
	.quad	0x4013829bae46cfc8              # double 4.8775469999999999
	.quad	0x3ffff28a6117720d              # double 1.9967140000000001
	.quad	0x4013c04d551d68c7              # double 4.9377950000000004
	.quad	0x3fec18c5c9a34ca1              # double 0.87802400000000003
	.quad	0x4006516db0dd82fd              # double 2.7897599999999998
	.quad	0x402117ba450acc0c              # double 8.5463430000000002
	.quad	0x4015ace18266772d              # double 5.4188289999999997
	.quad	0x4018276c8b439581              # double 6.0385
	.quad	0x4022e76d97b30f8c              # double 9.4520079999999992
	.quad	0x400dd75fb2edfe76              # double 3.7301630000000001
	.quad	0x400ed317efe0ce0c              # double 3.8530730000000002
	.quad	0x400b0347e8ccdd94              # double 3.3766020000000001
	.quad	0x402313b256ffc116              # double 9.5384700000000002
	.quad	0x401b05fd04a2fcf0              # double 6.7558480000000003
	.quad	0x4010b0795f676ea4              # double 4.1723379999999999
	.quad	0x40205900c521dda0              # double 8.1738339999999994
	.quad	0x3fd12e2328f9f44d              # double 0.26844099999999999
	.quad	0x401f1d8d79d0a676              # double 7.7788599999999999
	.quad	0x401aa8adeebb341e              # double 6.6647259999999999
	.quad	0x4020226c7eae5bc8              # double 8.0672339999999991
	.quad	0x40110017dae81883              # double 4.2500910000000003
	.quad	0x3ffe7aa582dbe7f3              # double 1.9049430000000001
	.quad	0x4000ea4a05dd8f93              # double 2.1143990000000001
	.quad	0x4002b9db22d0e560              # double 2.3407499999999999
	.quad	0x400635ee99a62ed3              # double 2.7763339999999999
	.quad	0x3fd916e371540032              # double 0.39202199999999998
	.quad	0x40186308feac42ea              # double 6.0967140000000004
	.quad	0x4022d973d9ec7000              # double 9.4247119999999995
	.quad	0x3fe6a374794ea077              # double 0.707453
	.quad	0x40203cbf2b239a39              # double 8.118646
	.quad	0x4014c980f55de58e              # double 5.1967809999999997
	.quad	0x401d3321e603d578              # double 7.2999340000000004
	.quad	0x400cb1c64ba94bbe              # double 3.5868039999999999
	.quad	0x401aa5ccc89b0ee5              # double 6.6619140000000003
	.quad	0x4006290364388ebd              # double 2.7700260000000001
	.quad	0x4012cbefd00713f0              # double 4.6991569999999996
	.quad	0x400d1b7e90ff9724              # double 3.6384249999999998
	.quad	0x401fd210be9424e6              # double 7.9551420000000004
	.quad	0x4020c9d30270f388              # double 8.3941879999999998
	.quad	0x4022afede97d06bc              # double 9.3436120000000002
	.quad	0x3fe9b91d57ff9b56              # double 0.80384699999999998
	.quad	0x40170a137f38c543              # double 5.7598399999999996
	.quad	0x4020af19f7f8ca82              # double 8.3419950000000007
	.quad	0x3ff8f35f3d7d3911              # double 1.5594170000000001
	.quad	0x4021fa493c89f40a              # double 8.9888399999999997
	.quad	0x401c26dd26b723ee              # double 7.0379529999999999
	.quad	0x401925ce18266773              # double 6.2869190000000001
	.quad	0x400a4075f6fd21ff              # double 3.2814749999999999
	.quad	0x4011e0010c6f7a0b              # double 4.4687539999999997
	.quad	0x401a0943e1006078              # double 6.5090479999999999
	.quad	0x4022f90ba6266fd6              # double 9.4864169999999994
	.quad	0x4016c9fcb0c026cc              # double 5.6972529999999999
	.quad	0x4021fad96a6a0126              # double 8.9899400000000007
	.quad	0x40207cd24e160d88              # double 8.2437919999999991
	.quad	0x401300eae18ac9f3              # double 4.750896
	.quad	0x3ff90bc7b45f17be              # double 1.5653760000000001
	.quad	0x401d873abc947065              # double 7.3820600000000001
	.quad	0x3ff62afee6fb4c3c              # double 1.385497
	.quad	0x4019c0008637bd06              # double 6.4375020000000003
	.quad	0x4018e1040bfe3b04              # double 6.2197420000000001
	.quad	0x3fff458ab92c0618              # double 1.9544779999999999
	.quad	0x400e0189bd8383ae              # double 3.7507510000000002
	.quad	0x3fea81eeed8904f7              # double 0.82836100000000001
	.quad	0x3f74d4024b33daf9              # double 0.0050850000000000001
	.quad	0x401157d49d7ba66a              # double 4.3357720000000004
	.quad	0x400dc7168f8e7ddd              # double 3.7222110000000002
	.quad	0x3fef5109070fbeba              # double 0.97864200000000001
	.quad	0x40115d1d041cc533              # double 4.3409310000000003
	.quad	0x40142f66e86c6584              # double 5.0462910000000001
	.quad	0x4015fa786c22680a              # double 5.4946000000000002
	.quad	0x40238cfa48301a7a              # double 9.775347
	.quad	0x3fe353ac4f7ec354              # double 0.60396399999999995
	.quad	0x4020385af6c69b5a              # double 8.1100689999999993
	.quad	0x4015f242d05f2885              # double 5.4865830000000004
	.quad	0x401ddfc47e49b1fb              # double 7.4685230000000002
	.quad	0x401eee0ac7da1ec5              # double 7.732463
	.quad	0x4014840ee06d9381              # double 5.1289629999999997
	.quad	0x4023e4866a11ec92              # double 9.9463380000000008
	.quad	0x402114afb3b75211              # double 8.5404029999999995
	.quad	0x401f7c00da1a9329              # double 7.8710969999999997
	.quad	0x40215c63065f9592              # double 8.6804430000000004
	.quad	0x401ca900c521dda0              # double 7.1650419999999997
	.quad	0x4021d3e09bb6aa4c              # double 8.9138230000000007
	.quad	0x4010d4c016052503              # double 4.2077640000000001
	.quad	0x3ff6903b81b64e05              # double 1.4102129999999999
	.quad	0x4018e8f75536933a              # double 6.227506
	.quad	0x4023f6d6ba8c5868              # double 9.9821069999999991
	.quad	0x3ff6c96030c23fab              # double 1.424164
	.quad	0x402393d8e0008638              # double 9.7887640000000004
	.quad	0x4022c669f05ea24d              # double 9.3875270000000003
	.quad	0x4000388d2a1f8e3b              # double 2.0276130000000001
	.quad	0x4016b5714b9cb685              # double 5.6771900000000004
	.quad	0x400b7ead4f5903a7              # double 3.4368539999999999
	.quad	0x3fdcc4f3ba775fb3              # double 0.449521
	.quad	0x40232b4b0e1b4bb6              # double 9.5845570000000002
	.quad	0x4014d2f87ad080b6              # double 5.2060259999999996
	.quad	0x4021f8d79d0a6762              # double 8.9860199999999999
	.quad	0x40191964a59c065b              # double 6.2747979999999997
	.quad	0x40229a3b57c4e2f3              # double 9.3012339999999991
	.quad	0x40122b7fe08aefb3              # double 4.5424800000000003
	.quad	0x400884944ed6fda8              # double 3.0647359999999999
	.quad	0x400d99620685553f              # double 3.699894
	.quad	0x400f129aa1d755bd              # double 3.8840840000000001
	.quad	0x4012ea11a975afb0              # double 4.7285830000000004
	.quad	0x401120aa64c2f838              # double 4.2819000000000003
	.quad	0x3ff1e5fa658c4bd3              # double 1.1186469999999999
	.quad	0x4008837bd05af6c7              # double 3.0642010000000002
	.quad	0x4023c839042d8c2a              # double 9.8910599999999995
	.quad	0x401c2ca89fc6da45              # double 7.0436120000000004
	.quad	0x40210b73083558a7              # double 8.5223619999999993
	.quad	0x3ffb321a2e7f6f4c              # double 1.699732
	.quad	0x40183c4eb56fb8f5              # double 6.0588939999999996
	.quad	0x401982873bc903ea              # double 6.3774689999999996
	.quad	0x3ff7c268900c521e              # double 1.484963
	.quad	0x40213f2d7f950b95              # double 8.6233939999999993
	.quad	0x400781eff9f87f02              # double 2.9384459999999999
	.quad	0x4013034fc610f0e9              # double 4.753234
	.quad	0x3ff35a9a8049667b              # double 1.2096199999999999
	.quad	0x400cfaacd9e83e42              # double 3.6223999999999998
	.quad	0x4022771758e21965              # double 9.2325999999999997
	.quad	0x3fe5b58d1526d8b2              # double 0.67841200000000002
	.quad	0x3ff18dc011d3671b              # double 1.0971070000000001
	.quad	0x3fef36bd2b6f1993              # double 0.97543199999999996
	.quad	0x3ffe9f30e7ff583a              # double 1.9138649999999999
	.quad	0x40222097204295a7              # double 9.0636530000000004
	.quad	0x3ffc1d78811b1d93              # double 1.7571950000000001
	.quad	0x4023d2df2ecf2064              # double 9.9118589999999997
	.quad	0x3ff497fd82773e25              # double 1.287107
	.quad	0x3fe575b1c8648840              # double 0.67061700000000002
	.quad	0x400f5c422036006d              # double 3.920048
	.quad	0x4020a05c24c404a7              # double 8.3132029999999997
	.quad	0x40025dba908a265f              # double 2.295766
	.quad	0x40162d8d79d0a676              # double 5.5444849999999999
	.quad	0x4022771f36262cba              # double 9.2326599999999992
	.quad	0x40158d9a0f0a5eff              # double 5.3882830000000004
	.quad	0x4012204189374bc7              # double 4.5315000000000003
	.quad	0x40179d16b97fe8ee              # double 5.9034069999999996
	.quad	0x401b09d1b2e59afa              # double 6.7595890000000001
	.quad	0x4020b313be22e5de              # double 8.3497599999999998
	.quad	0x4014aff2a172abef              # double 5.171824
	.quad	0x4018b61a1db877ab              # double 6.1778339999999998
	.quad	0x4019d5caf2d7f951              # double 6.4587820000000002
	.quad	0x3ff7e4d099e0e736              # double 1.493363
	.quad	0x3ff8c225742dcf46              # double 1.547399
	.quad	0x4011caba38759253              # double 4.4479759999999997
	.quad	0x40214e04189374bc              # double 8.6523749999999992
	.quad	0x3ff7cd5f99c38b05              # double 1.4876400000000001
	.quad	0x401ef00abf76a2f5              # double 7.7344160000000004
	.quad	0x4022cfa95c853c15              # double 9.4055890000000008
	.quad	0x401746ea4228997c              # double 5.8192529999999998
	.quad	0x400f8ece9a2c6690              # double 3.9447299999999998
	.quad	0x4008559685122318              # double 3.0417909999999999
	.quad	0x4023d796e158750c              # double 9.9210729999999998
	.quad	0x401ffdbc664d3bf3              # double 7.997789
	.quad	0x4013bb72c5197a25              # double 4.9330550000000004
	.quad	0x40217ac0e7bc3c5c              # double 8.7397530000000003
	.quad	0x40138412cf0f9d2c              # double 4.878978
	.quad	0x402361f94855da27              # double 9.6913549999999997
	.quad	0x4005851c193b3a69              # double 2.6899950000000001
	.quad	0x3ff835c8d9f9053a              # double 1.513131
	.quad	0x40104f52fc2656ac              # double 4.0774650000000001
	.quad	0x3fe81f98b71b8aa0              # double 0.75385699999999999
	.quad	0x400945f28848387e              # double 3.159154
	.quad	0x400b1569f4906035              # double 3.385456
	.quad	0x4004c6d04e618ce3              # double 2.5970770000000001
	.quad	0x3fd88709741d084f              # double 0.38324200000000003
	.quad	0x40155a5b530ced4e              # double 5.3382389999999997
	.quad	0x401593b46fdeb52d              # double 5.3942430000000003
	.quad	0x401cd396d0917d6b              # double 7.2066299999999996
	.quad	0x4015dc18f81e8a2f              # double 5.4649390000000002
	.quad	0x402166e41919ac79              # double 8.7009589999999992
	.quad	0x4007d39192641b33              # double 2.9783050000000002
	.quad	0x401773c254a3c643              # double 5.8630459999999998
	.quad	0x3fe97c6da4484945              # double 0.79643900000000001
	.quad	0x400f6fbb0e5e6794              # double 3.9295559999999998
	.quad	0x3ff060f3cb3e5754              # double 1.0236700000000001
	.quad	0x401a5d7f950b955f              # double 6.5913069999999996
	.quad	0x3fed029f16b11c6d              # double 0.90656999999999999
	.quad	0x4022736c3760bf5d              # double 9.2254349999999992
	.quad	0x40019a41e57d9dbb              # double 2.2003210000000002
	.quad	0x40040737110e453d              # double 2.5035229999999999
	.quad	0x3fe0ea0ba1f4b1ee              # double 0.52856999999999998
	.quad	0x4023dc15d2d01c0d              # double 9.9298540000000006
	.quad	0x40204b736cdf266c              # double 8.1473650000000006
	.quad	0x400bf5807fed2029              # double 3.4948739999999998
	.quad	0x401b5f687b139c95              # double 6.843172
	.quad	0x400aa2413db7f173              # double 3.3292259999999998
	.quad	0x3fc9ce746cb966be              # double 0.20161299999999999
	.quad	0x3fe7911f0c34c1a9              # double 0.73646500000000004
	.quad	0x401b9ddb9841aac5              # double 6.9041579999999998
	.quad	0x4006e398a65492ff              # double 2.8611309999999999
	.quad	0x40169f444e0daa0d              # double 5.6555340000000003
	.quad	0x4021f528ae74f2f1              # double 8.9788259999999998
	.quad	0x401be8bdec5f394b              # double 6.9772869999999996
	.quad	0x40225c9f2fdb8fde              # double 9.1809019999999997
	.quad	0x40057767903211cb              # double 2.683303
	.quad	0x4007a8d2a1f8e3ac              # double 2.957433
	.quad	0x401f04052d666a98              # double 7.7539259999999998
	.quad	0x4001a567125dd096              # double 2.2057630000000001
	.quad	0x401d9d441355475a              # double 7.4035799999999998
	.quad	0x401a521ff2e48e8a              # double 6.5801999999999996
	.quad	0x3fef165d3996fa83              # double 0.97148000000000001
	.quad	0x4020a65b4245f5ae              # double 8.3249150000000007
	.quad	0x4015e7eb6bf444e1              # double 5.4764840000000001
	.quad	0x4022cdafaf859429              # double 9.4017309999999998
	.quad	0x3fe987b784662bae              # double 0.797817
	.quad	0x401ed4289118c198              # double 7.707186
	.quad	0x3fe95834091c0874              # double 0.79201699999999997
	.quad	0x3fa801f75104d552              # double 0.046890000000000001
	.quad	0x4020ae5dbfceb789              # double 8.3405590000000007
	.quad	0x401c3b93037d6302              # double 7.0581779999999998
	.quad	0x40236fd5454152b1              # double 9.7184240000000006
	.quad	0x4018db0b39192642              # double 6.2139100000000003
	.quad	0x3ff44a02b841248d              # double 1.2680689999999999
	.quad	0x4021816a8b8f14db              # double 8.7527659999999994
	.quad	0x4015630df9bdc6a0              # double 5.3467330000000004
	.quad	0x3fde8d32830a0b1c              # double 0.47736800000000001
	.quad	0x401d06b3354c1227              # double 7.2565429999999997
	.quad	0x3fd7b71fbc5de9c0              # double 0.37055199999999999
	.quad	0x3fefe0029f16b11c              # double 0.99609499999999995
	.quad	0x3fd4db9841aac53b              # double 0.325903
	.quad	0x3ff583c7d5ed06ff              # double 1.344673
	.quad	0x3ffb329c347e8cce              # double 1.699856
	.quad	0x402119e6cd29131f              # double 8.5505890000000004
	.quad	0x3ff5941a6937d1fe              # double 1.3486579999999999
	.quad	0x401e95b91f70de8f              # double 7.6462139999999996
	.quad	0x4020a1d323fee2ca              # double 8.3160640000000008
	.quad	0x401268a9bcfd4bf1              # double 4.6022100000000004
	.quad	0x3fcad6ece13f4a99              # double 0.20968400000000001
	.quad	0x401cbb2dd377e1b9              # double 7.1827920000000001
	.quad	0x4015d69595feda66              # double 5.4595549999999999
	.quad	0x4022e757d5a9eb20              # double 9.4518419999999992
	.quad	0x401e7cb9ecf63800              # double 7.6218029999999999
	.quad	0x3ff7aee525892685              # double 1.480199
	.quad	0x40161432873bc904              # double 5.5197240000000001
	.quad	0x3f989ca18bd66278              # double 0.024035000000000001
	.quad	0x3fe86ac647778dd6              # double 0.76303399999999999
	.quad	0x401baba40d90e23b              # double 6.917618
	.quad	0x4006ee7a311e85fd              # double 2.866444
	.quad	0x400bef19934efcbd              # double 3.4917479999999999
	.quad	0x400334f3775b8130              # double 2.400855
	.quad	0x4008347e06961c37              # double 3.0256310000000002
	.quad	0x401ca95faa8a82a5              # double 7.1654039999999997
	.quad	0x40221c95e17e34b9              # double 9.0558309999999995
	.quad	0x40105e1d6494d50f              # double 4.0919090000000002
	.quad	0x3ff13f444e0daa0d              # double 1.0779460000000001
	.quad	0x4016baf31b152f3c              # double 5.6825679999999998
	.quad	0x3ff1ef8ceb356da0              # double 1.120984
	.quad	0x400c1ba3443d46b2              # double 3.5134949999999998
	.quad	0x4010e052934acaff              # double 4.2190649999999996
	.quad	0x401845929670196e              # double 6.0679420000000004
	.quad	0x4021b6cc814d727a              # double 8.8570290000000007
	.quad	0x401ebca4f440af1d              # double 7.6842230000000002
	.quad	0x3fd1a80064a9cdc4              # double 0.27587899999999999
	.quad	0x400193bb83cf2cf9              # double 2.1971349999999998
	.quad	0x402152b063e07a29              # double 8.6615020000000005
	.quad	0x40194e2ac3222920              # double 6.3263350000000003
	.quad	0x3ff71c347e8ccdd9              # double 1.4443859999999999
	.quad	0x40180cd3e0bd449a              # double 6.0125270000000004
	.quad	0x3ffc1757d5a9eb20              # double 1.7556989999999999
	.quad	0x3ff945985ad538ac              # double 1.579491
	.quad	0x4005f93bc0a06ea0              # double 2.746696
	.quad	0x4018f57abb8800eb              # double 6.2397260000000001
	.quad	0x4005c9670196d8f5              # double 2.723341
	.quad	0x4021224e9c454584              # double 8.5670059999999992
	.quad	0x3fe3c9b62c77574f              # double 0.61837299999999995
	.quad	0x40233067cf1c3266              # double 9.5945420000000006
	.quad	0x400c6d3f1843c3a4              # double 3.5533429999999999
	.quad	0x40186d1a21ea3593              # double 6.1065449999999997
	.quad	0x4018967ec7863bef              # double 6.1469680000000002
	.quad	0x401a0c753e707e17              # double 6.5121659999999997
	.quad	0x400e3f4a1272c94b              # double 3.7809029999999999
	.quad	0x4006519ce075f6fd              # double 2.7898499999999999
	.quad	0x4023bb09635610ae              # double 9.8653060000000004
	.quad	0x402364bbc2b94d94              # double 9.6967449999999999
	.quad	0x4023b73d3a1d3240              # double 9.8578890000000001
	.quad	0x40170198f1d3ed52              # double 5.7515599999999996
	.quad	0x401f40157eed45e9              # double 7.8125819999999999
	.quad	0x40186d577963992d              # double 6.1067790000000004
	.quad	0x402304a9691a75cd              # double 9.5091049999999999
	.quad	0x4013c31832fcac8e              # double 4.9405219999999996
	.quad	0x3fe7784cad57bc7f              # double 0.73343499999999995
	.quad	0x3fcfcaa7589efd87              # double 0.24837200000000001
	.quad	0x3fffd2d55a3a083a              # double 1.9889730000000001
	.quad	0x4023fe594af4f0d8              # double 9.9967749999999995
	.quad	0x3ffdfe1eb4202d9d              # double 1.874541
	.quad	0x4021d0d887ebf22c              # double 8.9079019999999999
	.quad	0x401339af5ba2be06              # double 4.8063330000000004
	.quad	0x40156ebe9c886163              # double 5.3581490000000001
	.quad	0x3fe568fb00bcbe62              # double 0.66906500000000002
	.quad	0x4003206a6e32e382              # double 2.390828
	.quad	0x402201b691212514              # double 9.0033460000000005
	.quad	0x3ff2c6cdaf4adbc6              # double 1.1735359999999999
	.quad	0x3fbaf284167a95c8              # double 0.105263
	.quad	0x4019f12231832fcb              # double 6.4854820000000002
	.quad	0x4021fb1b79d909f2              # double 8.9904440000000001
	.quad	0x3ffeaef4e0114d2f              # double 1.9177139999999999
	.quad	0x40086ce67d77fae3              # double 3.0531739999999998
	.quad	0x4020acd1a6506141              # double 8.3375369999999993
	.quad	0x4008037a3db3bfb6              # double 3.0016980000000002
	.quad	0x3ff1e088d6d3b6cc              # double 1.117318
	.quad	0x400253311a543f1c              # double 2.2906209999999998
	.quad	0x401bdc3e74afd545              # double 6.9650819999999998
	.quad	0x40208039ef0f16f4              # double 8.2504419999999996
	.quad	0x4022caf48c2e770c              # double 9.3963970000000003
	.quad	0x4023ae7d1351159c              # double 9.8407979999999994
	.quad	0x3ff87f4a98aa8651              # double 1.531077
	.quad	0x40232e86833c6003              # double 9.5908700000000006
	.quad	0x3ff9d199bb2788db              # double 1.613672
	.quad	0x401bf4db9c7368ad              # double 6.9891189999999996
	.quad	0x4014ba4441787054              # double 5.1819009999999999
	.quad	0x401dbd1d041cc533              # double 7.4346810000000003
	.quad	0x401fde225fa658c5              # double 7.9669280000000002
	.quad	0x3fcb1c8eabffcdab              # double 0.211809
	.quad	0x4020ea031ceaf252              # double 8.4570550000000004
	.quad	0x40167ededaec4a41              # double 5.6238970000000004
	.quad	0x40158d6733ebbfd7              # double 5.3880889999999999
	.quad	0x4023dce8fb00bcbe              # double 9.9314649999999993
	.quad	0x401a6b5bb384fd2a              # double 6.6048419999999997
	.quad	0x401112d1aeb3dd12              # double 4.2683780000000002
	.quad	0x402068605681ecd5              # double 8.2038600000000006
	.quad	0x40232b465625a683              # double 9.5845210000000005
	.quad	0x400d611d3671ac15              # double 3.6724190000000001
	.quad	0x3fec3636f3b213e4              # double 0.88161800000000001
	.quad	0x3fe813c68661ae71              # double 0.75241400000000003
	.quad	0x40034f3882278d0d              # double 2.4136820000000001
	.quad	0x40198fb97bb73083              # double 6.3903559999999997
	.quad	0x40189c87db2b3461              # double 6.1528619999999998
	.quad	0x40028e7cd0353719              # double 2.3195739999999998
	.quad	0x4023db6d43d03969              # double 9.9285680000000002
	.quad	0x4011c743a647fdc6              # double 4.4445940000000004
	.quad	0x401fbca9691a75cd              # double 7.9342399999999999
	.quad	0x401eb14df8b15726              # double 7.6731490000000004
	.quad	0x4014ad9b5e95b78d              # double 5.1695380000000002
	.quad	0x4021c3da2f8bdec6              # double 8.8825240000000001
	.quad	0x400efb7414a4d2b3              # double 3.8727800000000001
	.quad	0x402229276fb09204              # double 9.0803790000000006
	.quad	0x40200f7e1b8ed1bf              # double 8.0302589999999991
	.quad	0x3fdbd6451b93037d              # double 0.43495299999999998
	.quad	0x40188fd47bedb728              # double 6.1404589999999999
	.quad	0x40126cb5fe542e55              # double 4.6061629999999996
	.quad	0x3fddc2e770bd017e              # double 0.46502100000000002
	.quad	0x40207f4906034f40              # double 8.2486040000000003
	.quad	0x40179f2cb641700d              # double 5.9054440000000001
	.quad	0x401d1ac1d29dc726              # double 7.2761300000000002
	.quad	0x402051ff7164c72a              # double 8.1601520000000001
	.quad	0x3fe7be09bb6aa4ba              # double 0.74194800000000005
	.quad	0x4010cc4b4d056c51              # double 4.1995060000000004
	.quad	0x3ff26a6a012599ed              # double 1.1509799999999999
	.quad	0x400c08a8b08dd1e5              # double 3.5042279999999999
	.quad	0x40231ccccccccccd              # double 9.5562500000000003
	.quad	0x40056f0f16f4384c              # double 2.6792280000000002
	.quad	0x4017aaa4fca42aed              # double 5.9166449999999999
	.quad	0x4003ddcf0307f23d              # double 2.4833050000000001
	.quad	0x40152913a4f8726d              # double 5.290114
	.quad	0x4010036a832b990b              # double 4.003336
	.quad	0x40230ad7b634dad3              # double 9.5211769999999997
	.quad	0x40197c68a936c58f              # double 6.3714930000000001
	.quad	0x4009573860999dcb              # double 3.1675879999999998
	.quad	0x401ff8f4b61fe21e              # double 7.9931210000000004
	.quad	0x4006e13c254a3c64              # double 2.8599779999999999
	.quad	0x400281615ebfa8f8              # double 2.3131740000000001
	.quad	0x401c28a936c58eeb              # double 7.0397080000000001
	.quad	0x40204bc64345cfee              # double 8.1479970000000002
	.quad	0x402159fa97e132b5              # double 8.6757399999999993
	.quad	0x4023c21986b9c305              # double 9.8791010000000003
	.quad	0x4023974c4cdfaca3              # double 9.7955039999999993
	.quad	0x4023594b380cb6c8              # double 9.6744020000000006
	.quad	0x401854152b0a6fc6              # double 6.0821120000000004
	.quad	0x401c00dbad3a604e              # double 7.0008379999999999
	.quad	0x4018ec1eff9f87f0              # double 6.2305869999999999
	.quad	0x3ffd3765fd8adaba              # double 1.826025
	.quad	0x401ae0dfdef8487c              # double 6.7196040000000004
	.quad	0x3ff97feb074a771d              # double 1.5937300000000001
	.quad	0x4022f7a5093964a6              # double 9.4836810000000007
	.quad	0x4019bb877ab32485              # double 6.4331339999999999
	.quad	0x401bf647778dd617              # double 6.990507
	.quad	0x4010f1ae2da554b9              # double 4.2360160000000002
	.quad	0x401c6935b91f70df              # double 7.1027440000000004
	.quad	0x4015ddf97aaac109              # double 5.4667719999999997
	.quad	0x4016b3532e7b3d8e              # double 5.675122
	.quad	0x3f801754b05b7cfe              # double 0.0078569999999999994
	.quad	0x401a3cdee34fc611              # double 6.5594440000000001
	.quad	0x400ff20e1f7d73c9              # double 3.9931909999999999
	.quad	0x4015ba9973d9ec70              # double 5.432226
	.quad	0x40019bf6a0dbad3a              # double 2.2011539999999998
	.quad	0x4019eaca79357604              # double 6.4792880000000004
	.quad	0x3ff65b877ab32485              # double 1.397346
	.quad	0x40107df4c2b51bd6              # double 4.1230039999999999
	.quad	0x4013dde19fc2a887              # double 4.9666810000000003
	.quad	0x400b79096bb98c7e              # double 3.4340999999999999
	.quad	0x400ef7928e0c9d9d              # double 3.8708849999999999
	.quad	0x3ff583968d759ee9              # double 1.3446260000000001
	.quad	0x40147fb09203a323              # double 5.1246970000000003
	.quad	0x4011f95dd4c76d11              # double 4.4935219999999996
	.quad	0x4020a4c9c90c4dec              # double 8.3218519999999998
	.quad	0x3ffb10f0e90bc7b4              # double 1.6916359999999999
	.quad	0x3fc9bedb7281fd9c              # double 0.20113700000000001
	.quad	0x3fe985b9e8c47a18              # double 0.79757400000000001
	.quad	0x4019ebc87db2b346              # double 6.4802569999999999
	.quad	0x40105b2d0a244630              # double 4.0890389999999996
	.quad	0x3fec13660e51d25b              # double 0.87736800000000004
	.quad	0x402228baa582dbe8              # double 9.0795490000000001
	.quad	0x401d7fa43fe5c91d              # double 7.3746499999999999
	.quad	0x4001022c45026890              # double 2.126061
	.quad	0x400a7fc0096feb4a              # double 3.3123779999999998
	.quad	0x4021fb43b70ef566              # double 8.9907509999999995
	.quad	0x4018dabda0dfdef8              # double 6.2136139999999997
	.quad	0x400077939a7c17a9              # double 2.0583870000000002
	.quad	0x401d9fbdad7518b1              # double 7.4059970000000002
	.quad	0x40217b2314013ec4              # double 8.7405019999999993
	.quad	0x3ff88213a0c6b485              # double 1.531757
	.quad	0x3fe9e9185cee17a0              # double 0.80970399999999997
	.quad	0x3ff37ad5bee3d5fe              # double 1.217489
	.quad	0x3ff8003dddb1209f              # double 1.500059
	.quad	0x400575e6bc621b7e              # double 2.682569
	.quad	0x3fff694141e9af5c              # double 1.9631970000000001
	.quad	0x3ff4fa604e1e7104              # double 1.3111269999999999
	.quad	0x401efa6ce358298d              # double 7.7445560000000002
	.quad	0x3fc91526d8b1dd5d              # double 0.19595799999999999
	.quad	0x401defeb074a771d              # double 7.4842950000000003
	.quad	0x400111f255f3519c              # double 2.1337630000000001
	.quad	0x4003dacb4289118c              # double 2.481833
	.quad	0x3fff78c9752977c9              # double 1.9669890000000001
	.quad	0x4020cc1d29dc725c              # double 8.3986599999999995
	.quad	0x401ac7a7008a697b              # double 6.6949730000000001
	.quad	0x3fd877fae3608d09              # double 0.38232300000000002
	.quad	0x4020a20fd3b29a1c              # double 8.3165270000000006
	.quad	0x3fd8f0739b024f66              # double 0.38967600000000002
	.quad	0x400c204fb1183b60              # double 3.5157769999999999
	.quad	0x4008a163fdd65a14              # double 3.0788039999999999
	.quad	0x4023df69a91105e2              # double 9.9363530000000004
	.quad	0x4003ba398201cd60              # double 2.4659300000000002
	.quad	0x40157d3910c2c5e3              # double 5.3722880000000002
	.quad	0x401d6b62c77574f7              # double 7.3548689999999999
	.quad	0x4023eeb3dd11be6e              # double 9.9662159999999993
	.quad	0x3ff204a515ce9e5e              # double 1.126134
	.quad	0x4023dfcc1871e6cd              # double 9.9371039999999997
	.quad	0x4022044ed6fda837              # double 9.0084140000000001
	.quad	0x4020ad2f7f498c3b              # double 8.3382529999999999
	.quad	0x401f2a8ef77f27fe              # double 7.7915609999999997
	.quad	0x4020736113404ea5              # double 8.2253500000000006
	.quad	0x4010f592d98bf7f0              # double 4.2398179999999996
	.quad	0x40111d8fd5cb7910              # double 4.2788690000000003
	.quad	0x3fda23854046412d              # double 0.408418
	.quad	0x3fcb738e6d15ad10              # double 0.21446399999999999
	.quad	0x3fe7f204295a6c5d              # double 0.74829299999999999
	.quad	0x40202a6b2f23033a              # double 8.0828489999999995
	.quad	0x4020411904b3c3e7              # double 8.1271439999999995
	.quad	0x402225fdac68a937              # double 9.0742010000000004
	.quad	0x401d21c92ddbdb5e              # double 7.2829940000000004
	.quad	0x3fdd1676640a6b94              # double 0.45449600000000001
	.quad	0x400bee653868fd1a              # double 3.4914040000000002
	.quad	0x4015b960fa15db34              # double 5.4310340000000004
	.quad	0x401558316a055758              # double 5.3361260000000001
	.quad	0x40236b73affb04ee              # double 9.7098669999999991
	.quad	0x4008ec2bd7f51efb              # double 3.1153179999999998
	.quad	0x3f89dcb5781c7150              # double 0.012628
	.quad	0x3ffe45a708ede54b              # double 1.8920049999999999
	.quad	0x400bcff3ade225fa              # double 3.4765389999999998
	.quad	0x401b0978d4fdf3b6              # double 6.7592499999999998
	.quad	0x4019fe27e0ef9980              # double 6.4981989999999996
	.quad	0x3ffc90092ccf6be3              # double 1.7851649999999999
	.quad	0x400cf34c5da6a444              # double 3.618798
	.quad	0x401a2205ff1d81f1              # double 6.533226
	.quad	0x401bc89a02752546              # double 6.9459
	.quad	0x401ec6f9335d249e              # double 7.6943099999999998
	.quad	0x4014a7d9dba908a2              # double 5.1639169999999996
	.quad	0x3fe20ddc6195464e              # double 0.56419200000000003
	.quad	0x4023b8f238972043              # double 9.8612230000000007
	.quad	0x4006aad1d041cc53              # double 2.8334079999999999
	.quad	0x40218d13d74d594f              # double 8.7755419999999997
	.quad	0x400a2e503fb37436              # double 3.2726139999999999
	.quad	0x4023f47f13059642              # double 9.9775320000000001
	.quad	0x3fb13ef6b5d462c3              # double 0.067366999999999996
	.quad	0x401779c62a1b5c7d              # double 5.8689200000000001
	.quad	0x3fe382eec7c957cd              # double 0.60973299999999997
	.quad	0x401064b61fe21d97              # double 4.0983510000000001
	.quad	0x3ff9ab3892ee84ad              # double 1.6043019999999999
	.quad	0x3fef55da272862f6              # double 0.97923000000000004
	.quad	0x3ffa44cf0739b025              # double 1.641799
	.quad	0x402372ae4b018612              # double 9.723986
	.quad	0x4003427ae9ab29e5              # double 2.4074610000000001
	.quad	0x401fef394b7b2895              # double 7.9836169999999997
	.quad	0x4012681733226c3c              # double 4.6016510000000004
	.quad	0x4020e0ae9680e065              # double 8.4388319999999997
	.quad	0x401d44ae85b9e8c4              # double 7.3170719999999996
	.quad	0x3fe2a35935fc3b4f              # double 0.58243999999999996
	.quad	0x4014e220791c4b90              # double 5.2208269999999999
	.quad	0x4004afae7924af0c              # double 2.585782
	.quad	0x401b61d25aab4741              # double 6.845529
	.quad	0x4013c4cfd08d4bad              # double 4.9421989999999996
	.quad	0x400c75831f03d146              # double 3.5573790000000001
	.quad	0x3fd0be596c82e01a              # double 0.26161800000000002
	.quad	0x4011dbbe4473cd57              # double 4.4645929999999998
	.quad	0x401fddcbddb9841b              # double 7.9665980000000002
	.quad	0x3ffbdc26dce39b45              # double 1.7412479999999999
	.quad	0x4022e463cfb3311a              # double 9.4460739999999994
	.quad	0x40190f8ad2567989              # double 6.2651779999999997
	.quad	0x40128d5bee3d5fdd              # double 4.6380460000000001
	.quad	0x3ff46e642bf9830e              # double 1.2769509999999999
	.quad	0x401649e7fb267c6c              # double 5.5721740000000004
	.quad	0x3ff6fb8e4b87bdcf              # double 1.436415
	.quad	0x401a89de05037500              # double 6.6346360000000004
	.quad	0x3fdc1fc08fa7a850              # double 0.439438
	.quad	0x3ff08877681669cf              # double 1.033317
	.quad	0x4023cd8904f6dfc6              # double 9.9014360000000003
	.quad	0x401f5c97d8cf398f              # double 7.8404230000000003
	.quad	0x4020ef15a4acf313              # double 8.4669620000000005
	.quad	0x4014a76145953587              # double 5.1634570000000002
	.quad	0x401f979aae6c8f75              # double 7.8980509999999997
	.quad	0x3fca853c148344c3              # double 0.20719099999999999
	.quad	0x3ff147a7c9de0503              # double 1.0799939999999999
	.quad	0x3feb3a6ce358298d              # double 0.85088200000000003
	.quad	0x402103e425aee632              # double 8.5076000000000001
	.quad	0x4012e06d0d49949f              # double 4.7191660000000004
	.quad	0x3ff3535b91f70de9              # double 1.207851
	.quad	0x40235c523f67f4dc              # double 9.6803150000000002
	.quad	0x402334ff865d7cb3              # double 9.6035120000000002
	.quad	0x4002b7eaa2a0a958              # double 2.3398029999999999
	.quad	0x4017a64adff822bc              # double 5.9123950000000001
	.quad	0x401331e96c3fc43b              # double 4.7987419999999998
	.quad	0x401eace7cd035372              # double 7.6688530000000004
	.quad	0x4023175dbb9cf9a0              # double 9.5456369999999993
	.quad	0x3f8a8ef77f27fe4c              # double 0.012968
	.quad	0x40070ae9ee45c359              # double 2.8803290000000001
	.quad	0x4015d26dce39b457              # double 5.4554970000000003
	.quad	0x40104767d34df04e              # double 4.0697320000000001
	.quad	0x4020a37a80cf9e38              # double 8.3192939999999993
	.quad	0x400ef8ed1bf7ad4b              # double 3.8715459999999999
	.quad	0x40163671ef30a4e3              # double 5.5531689999999996
	.quad	0x3ff42f09d8c6d613              # double 1.261484
	.quad	0x402057a28bb0a2cb              # double 8.1711620000000007
	.quad	0x3fec761ed5ae1cde              # double 0.88941899999999996
	.quad	0x3ff9f762d83c6c98              # double 1.622897
	.quad	0x4014ece13f4a98ab              # double 5.2313280000000004
	.quad	0x40135de37585be1b              # double 4.8416880000000004
	.quad	0x3ff336b09635610b              # double 1.200852
	.quad	0x3ff55f1ae2da554c              # double 1.3357190000000001
	.quad	0x3ffa1014b599aa61              # double 1.6289260000000001
	.quad	0x4016e5f5f0b28523              # double 5.7245710000000001
	.quad	0x40157a433508f649              # double 5.3693970000000002
	.quad	0x402248c9752977c9              # double 9.1421620000000008
	.quad	0x400e6bac710cb296              # double 3.802575
	.quad	0x401be4b838c111ae              # double 6.9733590000000003
	.quad	0x3ffe877ff151e753              # double 1.9080809999999999
	.quad	0x40213a57a786c227              # double 8.6139500000000009
	.quad	0x401701159c497742              # double 5.7510589999999997
	.quad	0x401aa943e1006078              # double 6.6652979999999999
	.quad	0x401fa342edbb59de              # double 7.9094350000000002
	.quad	0x401d6caea747d806              # double 7.3561350000000001
	.quad	0x3ff60cc89b0ee49f              # double 1.3781209999999999
	.quad	0x3fccabef06b37868              # double 0.223997
	.quad	0x3fe24ef0281ba7fc              # double 0.57213599999999998
	.quad	0x4018f23ee1bd1eda              # double 6.2365680000000001
	.quad	0x40190d851654d61b              # double 6.2632029999999999
	.quad	0x400fe1709310129d              # double 3.9850780000000001
	.quad	0x3fe3862b27cbf6e4              # double 0.610128
	.quad	0x4023918f3eccc469              # double 9.7842959999999994
	.quad	0x3fdd8de6ddf00abf              # double 0.46178599999999997
	.quad	0x4015269f8c21e1d2              # double 5.2877179999999999
	.quad	0x401a192e1ef73c0c              # double 6.5245899999999999
	.quad	0x400eef9fcb0c026d              # double 3.8670040000000001
	.quad	0x401df3c7d5ed06ff              # double 7.488067
	.quad	0x400c9df8f4730404              # double 3.5771350000000002
	.quad	0x400f258793dd97f6              # double 3.8933249999999999
	.quad	0x401bcd5f138bcdff              # double 6.950558
	.quad	0x401555c3dee78184              # double 5.333755
	.quad	0x401cd180d3cff64d              # double 7.204593
	.quad	0x401c79d883ba3444              # double 7.1189900000000002
	.quad	0x40075c8b86b15f89              # double 2.920188
	.quad	0x4013250ca1cef241              # double 4.786181
	.quad	0x4015f6fa3fcc9eaa              # double 5.4911890000000003
	.quad	0x40010d4a1ad6451c              # double 2.1314890000000002
	.quad	0x40222b34e7685986              # double 9.0843880000000006
	.quad	0x4023c84d76ab5808              # double 9.891216
	.quad	0x4000a01bc98a222d              # double 2.0781779999999999
	.quad	0x4020511148fd9fd3              # double 8.1583349999999992
	.quad	0x4015a534373f316e              # double 5.4113319999999998
	.quad	0x402118bfe3b03e21              # double 8.5483390000000004
	.quad	0x4023595b78cc9a78              # double 9.6745260000000001
	.quad	0x4015fe4da09cc31a              # double 5.4983430000000002
	.quad	0x4006c715831f03d1              # double 2.8472089999999999
	.quad	0x401d693d5347a5b1              # double 7.352773
	.quad	0x4014638da3c21188              # double 5.0972200000000001
	.quad	0x4023ae019b0ab2e1              # double 9.8398559999999992
	.quad	0x40182561d4306e5d              # double 6.0365060000000001
	.quad	0x4021eca9478c868c              # double 8.9622290000000006
	.quad	0x3ffce1aa3f034b0e              # double 1.805094
	.quad	0x400fc88df37329c3              # double 3.9729269999999999
	.quad	0x3ff1d615ebfa8f7e              # double 1.1147670000000001
	.quad	0x4018676c8b439581              # double 6.101
	.quad	0x4005f6fe2e6ea854              # double 2.7456019999999999
	.quad	0x4011ca76965f5276              # double 4.4477180000000001
	.quad	0x3fd8c896dd26b724              # double 0.387243
	.quad	0x40238d12cadddf44              # double 9.7755340000000003
	.quad	0x401d1c6eb0b7c350              # double 7.2777659999999997
	.quad	0x400afc87db2b3461              # double 3.3733059999999999
	.quad	0x40101a415f45e0b5              # double 4.0256400000000001
	.quad	0x401aefd00713f078              # double 6.7341920000000002
	.quad	0x4022f4f67b1c0011              # double 9.4784430000000003
	.quad	0x4020fc70a808c826              # double 8.4930470000000007
	.quad	0x400cd03fb3743633              # double 3.6016840000000001
	.quad	0x40036be7afa72218              # double 2.4276879999999998
	.quad	0x3fd313d31b9b66f9              # double 0.29808499999999999
	.quad	0x3ff02848beb5b2d5              # double 1.009835
	.quad	0x3fb43a647fdc5932              # double 0.079016000000000002
	.quad	0x401765a4acf312b2              # double 5.8492610000000003
	.quad	0x401a82f87ad080b6              # double 6.6279009999999996
	.quad	0x3fe0ec6583e8576d              # double 0.52885700000000002
	.quad	0x400b9d81f10667f9              # double 3.451908
	.quad	0x401862702a3486f0              # double 6.0961309999999997
	.quad	0x40190e0828c36da8              # double 6.2637029999999996
	.quad	0x401b07f0ed3d859d              # double 6.7577550000000004
	.quad	0x400f110dbf0563ed              # double 3.883327
	.quad	0x4017f71865519371              # double 5.9913040000000004
	.quad	0x40220e95faa8a82a              # double 9.0284879999999994
	.quad	0x4015871044f1a198              # double 5.3818979999999996
	.quad	0x3ff644a2fcefaa47              # double 1.3917569999999999
	.quad	0x3ffc02d59d55e6bc              # double 1.7506919999999999
	.quad	0x40157431bde82d7b              # double 5.3634709999999997
	.quad	0x3fff25109070fbec              # double 1.9465490000000001
	.quad	0x402299f3a57eaa2a              # double 9.3006869999999999
	.quad	0x401bdccdd93c46d8              # double 6.9656289999999998
	.quad	0x4023cbc60029f16b              # double 9.8979949999999998
	.quad	0x4001a36c15d2d01c              # double 2.204796
	.quad	0x40136852b4d8ba41              # double 4.8518780000000001
	.quad	0x4021ae46cfc829d0              # double 8.8403840000000002
	.quad	0x40179b34e7685986              # double 5.9015690000000003
	.quad	0x400581f7d73c9258              # double 2.6884610000000002
	.quad	0x3fdaeae9ee45c359              # double 0.42058800000000002
	.quad	0x4021b1e0a41a261c              # double 8.847417
	.quad	0x402149528f190d17              # double 8.6432079999999996
	.quad	0x4019961f9f01b867              # double 6.3966050000000001
	.quad	0x3fd13d7d3910c2c6              # double 0.26937800000000001
	.quad	0x4011f14013ec460f              # double 4.4855960000000001
	.quad	0x40139f6ba0620ab7              # double 4.9056839999999999
	.quad	0x4003c362a5e785b6              # double 2.4704030000000001
	.quad	0x401fed601ffb480a              # double 7.9818119999999997
	.quad	0x4013e8288051c9f7              # double 4.9767169999999998
	.quad	0x401a658ff7596851              # double 6.5991819999999999
	.quad	0x4003799fe43675de              # double 2.4343870000000001
	.quad	0x3ff96d373affb04f              # double 1.589164
	.quad	0x4019ba0e410b630b              # double 6.4316950000000004
	.quad	0x401272b5e529bae4              # double 4.6120219999999996
	.quad	0x401e92de00d1b717              # double 7.6434249999999996
	.quad	0x4012d63cfb3311a5              # double 4.7092169999999998
	.quad	0x400b7dac68a936c6              # double 3.4363640000000002
	.quad	0x3ff7f138bcdfefbf              # double 1.4963919999999999
	.quad	0x40146b762d83c6c9              # double 5.1049429999999996
	.quad	0x40235f65ba6efc37              # double 9.6863229999999997
	.quad	0x4015d56b00ffda40              # double 5.4584159999999997
	.quad	0x4023df5558212945              # double 9.9361979999999991
	.quad	0x401001cc96462802              # double 4.0017569999999996
	.quad	0x3ffadd6e04c05921              # double 1.67906
	.quad	0x4005ca4b124d099e              # double 2.723776
	.quad	0x4017deaee2003ab8              # double 5.9674639999999997
	.quad	0x3ffafdd334c5da6a              # double 1.6869689999999999
	.quad	0x400bb4bf8fcd67fd              # double 3.4632559999999999
	.quad	0x40207317acc4ef89              # double 8.2247900000000005
	.quad	0x401bdf0739b024f6              # double 6.9678009999999997
	.quad	0x400dcc660a201472              # double 3.7248039999999998
	.quad	0x4020703dddb1209f              # double 8.2192220000000002
	.quad	0x3ff904c7b02d59d5              # double 1.5636669999999999
	.quad	0x401b1b65668c2614              # double 6.7767540000000004
	.quad	0x401005460aa64c30              # double 4.0051500000000004
	.quad	0x4021101f10667f91              # double 8.5314870000000003
	.quad	0x3ff7f87df5cf2496              # double 1.498167
	.quad	0x4003b19bd4067cf2              # double 2.4617230000000001
	.quad	0x4023662003ab862b              # double 9.6994629999999997
	.quad	0x4017aa1be2b4959e              # double 5.9161219999999997
	.quad	0x4017d5d56f32bdc2              # double 5.9588219999999996
	.quad	0x40211417225b749b              # double 8.5392390000000002
	.quad	0x4020899ac79702e6              # double 8.2687589999999993
	.quad	0x401a4f35e310dbf0              # double 6.5773539999999997
	.quad	0x4019e95b78cc9a78              # double 6.4778880000000001
	.quad	0x40109c5436b8f9b1              # double 4.1526649999999998
	.quad	0x4013bf2c3009b307              # double 4.9366919999999999
	.quad	0x3ff2bebe1650a45d              # double 1.1715679999999999
	.quad	0x401846bdf4c2b51c              # double 6.0690840000000001
	.quad	0x401eb113404ea4a9              # double 7.6729250000000002
	.quad	0x400a91fd5885d313              # double 3.3212839999999999
	.quad	0x400bcd5e8d5410f9              # double 3.4752779999999999
	.quad	0x3ff9a931876188b1              # double 1.603807
	.quad	0x4010fbe878fabda1              # double 4.2460040000000001
	.quad	0x401d4156191148fe              # double 7.3138050000000003
	.quad	0x40188060780fdc16              # double 6.1253679999999999
	.quad	0x4022d3c9abb01c93              # double 9.4136480000000002
	.quad	0x4015a4ac6cdaf4ae              # double 5.4108140000000002
	.quad	0x4022ca63736cdf26              # double 9.3952899999999993
	.quad	0x4020e8e3cd9a5226              # double 8.4548629999999996
	.quad	0x402259cae21101b0              # double 9.175376
	.quad	0x40079985ad538ac2              # double 2.9499620000000002
	.quad	0x401e0d32c625e99f              # double 7.5128890000000003
	.quad	0x4018ee43ed959a31              # double 6.2326810000000004
	.quad	0x4013b57de0d66f0d              # double 4.927238
	.quad	0x401d4641700cd856              # double 7.3186090000000004
	.quad	0x3ff2bc89f40a2878              # double 1.17103
	.quad	0x4019254d61b2a27f              # double 6.2864279999999999
	.quad	0x4022b30e5e679464              # double 9.3497190000000003
	.quad	0x3fdc95aaf78feef6              # double 0.446635
	.quad	0x402150a958537e2c              # double 8.6575419999999994
	.quad	0x4022f8262456f75e              # double 9.4846660000000007
	.quad	0x401424199fe43676              # double 5.0352540000000001
	.quad	0x401b99884c6a3bde              # double 6.899934
	.quad	0x3fd09bbadc0980b2              # double 0.25950499999999999
	.quad	0x40214f63c31df762              # double 8.6550580000000004
	.quad	0x4006117ce52deca2              # double 2.7585389999999999
	.quad	0x3fb4b9cb6848beb6              # double 0.080960000000000004
	.quad	0x3fda7d3910c2c5e3              # double 0.41389300000000001
	.quad	0x4011547baa9b499d              # double 4.332503
	.quad	0x402048a0d349be90              # double 8.1418520000000001
	.quad	0x401f4d21bc126a66              # double 7.8253240000000002
	.quad	0x4020bef71a7e3088              # double 8.3729790000000008
	.quad	0x4023049abb01c92e              # double 9.5089930000000003
	.quad	0x401826d506573216              # double 6.037922
	.quad	0x3ff3e70196d8f4f9              # double 1.2438979999999999
	.quad	0x4012193469941850              # double 4.5246139999999997
	.quad	0x40177ce2089e3433              # double 5.871956
	.quad	0x40130a9d627bf61b              # double 4.7603660000000003
	.quad	0x40105ca0c282c6ef              # double 4.0904569999999998
	.quad	0x40127d94d0dcfcc6              # double 4.6226380000000002
	.quad	0x3fef108c3f3e0371              # double 0.97077000000000002
	.quad	0x3ff2d3e0bd44998d              # double 1.176728
	.quad	0x40121d77b7c7820a              # double 4.5287769999999998
	.quad	0x3ffce35e74299d88              # double 1.8055099999999999
	.quad	0x401aa3992c8c5005              # double 6.659764
	.quad	0x400ffe24febd09e1              # double 3.9990939999999999
	.quad	0x4011445f17bd8be7              # double 4.3167689999999999
	.quad	0x401c5fa3b9ae0c17              # double 7.0933979999999996
	.quad	0x40207fd7e45803cd              # double 8.2496939999999999
	.quad	0x4016ff1a1986b9c3              # double 5.749123
	.quad	0x3fff79b8887229e9              # double 1.967217
	.quad	0x4018a3bc0a06e9ff              # double 6.159897
	.quad	0x3ff3e9131ec0b567              # double 1.2444029999999999
	.quad	0x3ffc3c6b8b69552e              # double 1.764751
	.quad	0x4022f06bdf4c2b52              # double 9.4695730000000005
	.quad	0x4022a52a1f8e3ac1              # double 9.3225870000000004
	.quad	0x401f9364bec679cc              # double 7.8939389999999996
	.quad	0x401f4fb4c3c18b50              # double 7.8278379999999999
	.quad	0x401f10895d0b73d2              # double 7.7661490000000004
	.quad	0x3ff4b04ddb5525cc              # double 1.2930429999999999
	.quad	0x4018a48ba83f4eca              # double 6.1606889999999996
	.quad	0x4015e15f02c4d65e              # double 5.4700889999999998
	.quad	0x40232f0f3882278d              # double 9.5919129999999999
	.quad	0x40166ea4a8c154ca              # double 5.6080500000000004
	.quad	0x3fea5d31337eb28e              # double 0.82387600000000005
	.quad	0x3feb0183f91e646f              # double 0.84393499999999999
	.quad	0x4012d07f23cc8de3              # double 4.7036100000000003
	.quad	0x3ff6539fba450acc              # double 1.395416
	.quad	0x3fffc4bb1af3a14d              # double 1.98553
	.quad	0x400d77460242d05f              # double 3.6832389999999999
	.quad	0x401ec014727dcbde              # double 7.6875780000000002
	.quad	0x401ccff2e48e8a72              # double 7.2030750000000001
	.quad	0x400cde01de269164              # double 3.6084019999999999
	.quad	0x401a2c0b5675579b              # double 6.5430120000000001
	.quad	0x4021363e6c4c5975              # double 8.6059450000000002
	.quad	0x401570303c07ee0b              # double 5.359559
	.quad	0x401d9464dc22ab26              # double 7.3949160000000003
	.quad	0x3fc44827b6fe2e6f              # double 0.15845200000000001
	.quad	0x400f2960b6f9fcb1              # double 3.8952040000000001
	.quad	0x4019a2856605ee57              # double 6.4087120000000004
	.quad	0x401107b1c0010c6f              # double 4.2575139999999996
	.quad	0x4020bee8f29d40ee              # double 8.372871
	.quad	0x4007387c6327ed85              # double 2.9025810000000001
	.quad	0x3fd7a9003eea209b              # double 0.36969000000000002
	.quad	0x400167125dd095af              # double 2.1753279999999999
	.quad	0x401dd9374bc6a7f0              # double 7.4621250000000003
	.quad	0x4018cac2df0d4131              # double 6.1980089999999999
	.quad	0x4015257d1782d384              # double 5.2866099999999996
	.quad	0x4003ca70d1fa3337              # double 2.4738479999999998
	.quad	0x40102ee84ad794a7              # double 4.0458080000000001
	.quad	0x402318d32830a0b2              # double 9.5484860000000005
	.quad	0x4022dd740c4156e2              # double 9.4325259999999993
	.quad	0x3ff47fb8b26394fb              # double 1.281182
	.quad	0x402242b4959e6256              # double 9.1302839999999996
	.quad	0x4022b1d8409e55c1              # double 9.347353
	.quad	0x3ff26fc8b0079a28              # double 1.152291
	.quad	0x401f6a8112ba16e8              # double 7.8540080000000003
	.quad	0x400ce3126e978d50              # double 3.6108750000000001
	.quad	0x400ae1be2b4959e6              # double 3.3602259999999999
	.quad	0x4022c1344806290f              # double 9.3773520000000001
	.quad	0x3ff53f4128bf3beb              # double 1.3279430000000001
	.quad	0x40186eb2074ea8da              # double 6.1081009999999996
	.quad	0x400db8bc59b8023a              # double 3.7152029999999998
	.quad	0x4016b948dc11e42e              # double 5.6809419999999999
	.quad	0x3ff09b8fde2ef4e0              # double 1.037979
	.quad	0x40225275ab7dc7ac              # double 9.161054
	.quad	0x40223c0d0aaa7ded              # double 9.1172869999999993
	.quad	0x40199bff8a8f3a9b              # double 6.402342
	.quad	0x4013f10f51ac9afe              # double 4.9854099999999999
	.quad	0x4005ec2c5e2cdc01              # double 2.7403189999999999
	.quad	0x401a0283d35eb745              # double 6.5024559999999996
	.quad	0x401358969a0ad8a1              # double 4.8365119999999999
	.quad	0x4021dd9ff4fd6d7f              # double 8.9328610000000008
	.quad	0x3feafbce4217d285              # double 0.84323800000000004
	.quad	0x4023f3e1a8262457              # double 9.976331
	.quad	0x40207e48626f60e1              # double 8.2466460000000001
	.quad	0x3fe7a7ae9ab29e4d              # double 0.73921899999999996
	.quad	0x4001e56eefa1e3eb              # double 2.237028
	.quad	0x40204816aceaaf36              # double 8.1407980000000002
	.quad	0x40088ababead4f59              # double 3.067739
	.quad	0x40130109d0635a42              # double 4.7510139999999996
	.quad	0x4019e6c54bcf0b6b              # double 6.4753619999999996
	.quad	0x3ff31b6d43d03969              # double 1.194196
	.quad	0x40124d3415b1422d              # double 4.5753940000000002
	.quad	0x400c7b3e9a6f826f              # double 3.5601780000000001
	.quad	0x401a307570c564f9              # double 6.5473229999999996
	.quad	0x4019aabf76a2f48c              # double 6.4167459999999998
	.quad	0x400a146ed245b292              # double 3.2599770000000001
	.quad	0x401c03aa79bbadc1              # double 7.0035800000000004
	.quad	0x40231daee631f8a1              # double 9.5579750000000007
	.quad	0x3feb930df9bdc6a0              # double 0.86170100000000005
	.quad	0x401cfb738e6d15ad              # double 7.2455579999999999
	.quad	0x3fdb4a7b4e54f7a9              # double 0.42642099999999999
	.quad	0x3fbc74a771c970f8              # double 0.111155
	.quad	0x4017b1cc532a4980              # double 5.9236310000000003
	.quad	0x400efdd11be6e654              # double 3.8739340000000002
	.quad	0x401828bdec5f394b              # double 6.0397869999999996
	.quad	0x40213a674080f990              # double 8.6140690000000006
	.quad	0x4018f0535c9e6688              # double 6.234693
	.quad	0x401f8648c7192ea5              # double 7.8811369999999998
	.quad	0x4018be63a5c1c609              # double 6.1859270000000004
	.quad	0x3fdedd5d3dc8b86b              # double 0.482261
	.quad	0x3fee15bbbe878fac              # double 0.94015300000000001
	.quad	0x402100c1b97353b5              # double 8.5014780000000005
	.quad	0x3fd65abc0e38a7e7              # double 0.34928799999999999
	.quad	0x400146940357a355              # double 2.159462
	.quad	0x4012043137b07076              # double 4.5040940000000003
	.quad	0x400a492c49342678              # double 3.2857289999999999
	.quad	0x400a99c51dabe271              # double 3.3250829999999998
	.quad	0x4016c7dc37a3db3c              # double 5.695176
	.quad	0x401d4d413122b7bb              # double 7.3254440000000001
	.quad	0x40077cbddb9841ab              # double 2.9359090000000001
	.quad	0x402235bc01a36e2f              # double 9.1049500000000005
	.quad	0x4023ce02645e4e6a              # double 9.9023620000000001
	.quad	0x40207d9a0f0a5eff              # double 8.2453160000000008
	.quad	0x4009e8e8a71de69b              # double 3.2387250000000001
	.quad	0x4020f4e48626f60e              # double 8.4783059999999999
	.quad	0x40199b72c5197a25              # double 6.4018050000000004
	.quad	0x401dffabda0dfdf0              # double 7.4996790000000004
	.quad	0x4023410624dd2f1b              # double 9.6270000000000006
	.quad	0x401d8c8d5c74751d              # double 7.3872580000000001
	.quad	0x4010c60d0247021d              # double 4.1934089999999999
	.quad	0x401e47985271bcdc              # double 7.5699170000000002
	.quad	0x401f9cf9a06a6e33              # double 7.903296
	.quad	0x401180df9bdc69f9              # double 4.3758530000000002
	.quad	0x401ac0196d8f4f94              # double 6.6875970000000002
	.quad	0x401760fa9c12f09e              # double 5.8447060000000004
	.quad	0x3ffe095af294dd72              # double 1.877284
	.quad	0x4016d3b256ffc116              # double 5.7067350000000001
	.quad	0x401f6b9346994185              # double 7.8550539999999999
	.quad	0x4018e05532617c1c              # double 6.2190750000000001
	.quad	0x400d32fb19e731d3              # double 3.6498930000000001
	.quad	0x402299b024f6598e              # double 9.3001719999999999
	.quad	0x4010da5ce5b4245f              # double 4.2132449999999997
	.quad	0x4023445dc8323359              # double 9.633528
	.quad	0x3ff8acba732df506              # double 1.54217
	.quad	0x4019a980b242070c              # double 6.4155300000000004
	.quad	0x3fe4d566cf41f213              # double 0.65105000000000002
	.quad	0x3ff32e88df37329c              # double 1.198861
	.quad	0x4021cb68cef672b9              # double 8.8972840000000009
	.quad	0x4023d07852f7f499              # double 9.9071680000000004
	.quad	0x401c0ffc5479d4d8              # double 7.0156109999999998
	.quad	0x4014aebe596c82e0              # double 5.1706479999999999
	.quad	0x400dab8f14db5958              # double 3.7087690000000002
	.quad	0x4020aa8d8665e02f              # double 8.3331110000000006
	.quad	0x400ffe9d0e991ff7              # double 3.999323
	.quad	0x401cdb9f559b3d08              # double 7.2144750000000002
	.quad	0x40053460242d05f3              # double 2.6505740000000002
	.quad	0x401335568e820e63              # double 4.8020880000000004
	.quad	0x401dc5cb35f3d7d4              # double 7.4431580000000004
	.quad	0x4009ef5a964e8b7e              # double 3.2418719999999999
	.quad	0x4014d3b0813cab82              # double 5.206728
	.quad	0x40201ea6a012599f              # double 8.0598650000000003
	.quad	0x3ff13df8f4730404              # double 1.0776300000000001
	.quad	0x402041ef73c0c1fd              # double 8.1287800000000008
	.quad	0x3ffcbb29a1b9f98b              # double 1.7956939999999999
	.quad	0x40225fa7a85015c2              # double 9.1868259999999999
	.quad	0x4010027aa68f4b62              # double 4.002421
	.quad	0x40086256bca5375d              # double 3.0480170000000002
	.quad	0x40227d471715c63b              # double 9.2446830000000002
	.quad	0x4012646f587d6f97              # double 4.5980809999999996
	.quad	0x401aefd3f5b5fa22              # double 6.7342069999999996
	.quad	0x401f8359bc33f855              # double 7.8782719999999999
	.quad	0x3fed7ca643cc07ab              # double 0.92146600000000001
	.quad	0x3fdd44284dfce315              # double 0.457285
	.quad	0x4016a9c17225b74a              # double 5.6657770000000003
	.quad	0x401b38b0d0edc3bd              # double 6.8053619999999997
	.quad	0x4022974aba387592              # double 9.2954919999999994
	.quad	0x400862541d8e8640              # double 3.0480119999999999
	.quad	0x40237586ec17ebaf              # double 9.7295449999999998
	.quad	0x401c8d1e53a81dc1              # double 7.1378110000000001
	.quad	0x4019557c4e2f37fc              # double 6.3334820000000001
	.quad	0x401845f06f694467              # double 6.0682999999999998
	.quad	0x4010864ba94bbe44              # double 4.1311479999999996
	.quad	0x401d2b0f27bb2fec              # double 7.2920499999999997
	.quad	0x401a5dd095af294e              # double 6.5916160000000001
	.quad	0x4015c1eeed8904f7              # double 5.4393880000000001
	.quad	0x401e18a009f62307              # double 7.5240479999999996
	.quad	0x40226e49906cca2e              # double 9.2154050000000005
	.quad	0x3ff588472c0e7bc4              # double 1.3457710000000001
	.quad	0x4015e4bdfd2630ec              # double 5.4733809999999998
	.quad	0x3fda21c475e6362a              # double 0.40831099999999998
	.quad	0x400cf19dece57109              # double 3.6179770000000002
	.quad	0x3fd8f53825e13b19              # double 0.38996700000000001
	.quad	0x401ebfa0d77b7c78              # double 7.6871369999999998
	.quad	0x3fe30b135979181a              # double 0.59510200000000002
	.quad	0x401526b1a2a4db16              # double 5.2877869999999998
	.quad	0x4022d6221c8a7a42              # double 9.4182290000000002
	.quad	0x4014f37a3db3bfb6              # double 5.2377710000000004
	.quad	0x401ce910c2c5e2ce              # double 7.2276030000000002
	.quad	0x401ed20c069e7fb2              # double 7.7051239999999996
	.quad	0x4002f3397dd00f77              # double 2.3687619999999998
	.quad	0x401938476f2a5a47              # double 6.3049600000000003
	.quad	0x4018dd451fc4c166              # double 6.2160840000000004
	.quad	0x4021954ef459d990              # double 8.7916179999999997
	.quad	0x401ba6bb1290257d              # double 6.9128230000000004
	.quad	0x40237334e7685986              # double 9.7250130000000006
	.quad	0x3ff6f01d9f4d37c1              # double 1.433622
	.quad	0x400f2dc768dfbd6a              # double 3.8973529999999998
	.quad	0x40220c308feac42f              # double 9.0238080000000007
	.quad	0x3ff82f31b152f3c3              # double 1.511522
	.quad	0x40201be4abe6a338              # double 8.0544790000000006
	.quad	0x3fe96777079e59f3              # double 0.79388000000000003
	.quad	0x401bf1ceaf251c19              # double 6.9861399999999998
	.quad	0x40200841cc532a49              # double 8.0161269999999991
	.quad	0x4021a4afd5454153              # double 8.8216540000000006
	.quad	0x40224a5e99e94ab2              # double 9.1452530000000003
	.quad	0x401995bbbe878fac              # double 6.3962240000000001
	.quad	0x401cc297bfa4c61e              # double 7.1900320000000004
	.quad	0x400fdf61aa3f034b              # double 3.984073
	.quad	0x401c479e16d6dc1a              # double 7.0699389999999998
	.quad	0x4022059b3d07c84b              # double 9.0109499999999993
	.quad	0x4022caa737110e45              # double 9.3958069999999995
	.quad	0x40147d19dece5711              # double 5.1221690000000004
	.quad	0x40186ac710cb295f              # double 6.1042750000000003
	.quad	0x4012ab81b64e0547              # double 4.6674870000000004
	.quad	0x3ff1c32441fea811              # double 1.110142
	.quad	0x3ff3af8f041461b7              # double 1.230361
	.quad	0x3fe9791600f34507              # double 0.79603100000000004
	.quad	0x4001d33764f11b61              # double 2.2281330000000001
	.quad	0x40166d2b2bfdb4cc              # double 5.6066099999999999
	.quad	0x4022b164c729f59d              # double 9.3464720000000003
	.quad	0x4013c3a2163fdd66              # double 4.9410480000000003
	.quad	0x3ffbf5147f130596              # double 1.7473339999999999
	.quad	0x4019c5ea67e846a6              # double 6.4432770000000001
	.quad	0x40212c254a3c6434              # double 8.5862219999999993
	.quad	0x4014901c92ddbdb6              # double 5.1407340000000001
	.quad	0x4018afeb074a771d              # double 6.1717950000000004
	.quad	0x401fb8194c016052              # double 7.9297839999999997
	.quad	0x40238ba5a038194c              # double 9.7727479999999999
	.quad	0x401f27c88e79aae7              # double 7.7888510000000001
	.quad	0x4023af0f7b9e0610              # double 9.8419150000000002
	.quad	0x402393d20f2becee              # double 9.7887120000000003
	.quad	0x3fea6ccc46950fc7              # double 0.82578099999999999
	.quad	0x400fbb99d451fc4c              # double 3.966602
	.quad	0x4021b1a47a9e2bd0              # double 8.8469580000000008
	.quad	0x4023cb05b7cfe586              # double 9.896528
	.quad	0x401f70b1feeb2d0a              # double 7.8600539999999999
	.quad	0x4014e6d9be4cd749              # double 5.2254399999999999
	.quad	0x40158f19d66adb40              # double 5.3897469999999998
	.quad	0x401405ebb7739f34              # double 5.005782
	.quad	0x4000e07e5a78f25a              # double 2.1096159999999999
	.quad	0x3ffeacdaf4adbc66              # double 1.9172009999999999
	.quad	0x402290576cce5f74              # double 9.2819169999999999
	.quad	0x40213dd28d002e23              # double 8.6207469999999997
	.quad	0x401d4498c3b0c459              # double 7.3169890000000004
	.quad	0x3febe6adb402d16c              # double 0.87190900000000004
	.quad	0x401d1fe43675ddd3              # double 7.2811440000000003
	.quad	0x40217f294dd72368              # double 8.7483620000000002
	.quad	0x400baf7e3d1cc101              # double 3.46069
	.quad	0x40126d5d3dc8b86b              # double 4.6068009999999999
	.quad	0x401077ca2120e1f8              # double 4.1169820000000001
	.quad	0x40123d22856605ee              # double 4.5597019999999997
	.quad	0x401721376d549731              # double 5.782438
	.quad	0x401b5af4f0d844d0              # double 6.8388249999999999
	.quad	0x401958bbd3804535              # double 6.3366540000000002
	.quad	0x4020d954a7f8012e              # double 8.424474
	.quad	0x401aea4c61d8622c              # double 6.7288069999999998
	.quad	0x400d445d41fa7653              # double 3.6583809999999999
	.quad	0x40113d3415b1422d              # double 4.3097690000000002
	.quad	0x40154ea2d2fe3f36              # double 5.3267930000000003
	.quad	0x40166b213e3e2930              # double 5.6046189999999996
	.quad	0x401dfba94bbe4474              # double 7.4957630000000002
	.quad	0x3fea60285ec3dab6              # double 0.82423800000000003
	.quad	0x402056525892684d              # double 8.1685970000000001
	.quad	0x40220bcdbbe0157f              # double 9.0230540000000001
	.quad	0x4010c4fb1183b603              # double 4.1923640000000004
	.quad	0x40116dcdb37c99af              # double 4.3572300000000004
	.quad	0x4005537542a23c00              # double 2.6657510000000002
	.quad	0x401cc5681ecd4aa1              # double 7.19278
	.quad	0x40237020817fc760              # double 9.7189979999999991
	.quad	0x3fa7596851223183              # double 0.045603999999999999
	.quad	0x40077fd933e35c5b              # double 2.9374259999999999
	.quad	0x4021dd035371971c              # double 8.9316659999999998
	.quad	0x401d62e0e30446b7              # double 7.3465610000000003
	.quad	0x40175b441bb8c32b              # double 5.8391270000000004
	.quad	0x402037080303c07f              # double 8.1074830000000002
	.quad	0x4011869a4df47f99              # double 4.3814479999999998
	.quad	0x401ccb8f9b13165d              # double 7.1987899999999998
	.quad	0x40218309a671ef31              # double 8.7559330000000006
	.quad	0x400c18d823422468              # double 3.5121310000000001
	.quad	0x40216fda1ec4e725              # double 8.7184609999999996
	.quad	0x401283abc947064f              # double 4.6285850000000002
	.quad	0x401dc8e757928e0d              # double 7.4461950000000003
	.quad	0x3ffaf49e01de2691              # double 1.6847209999999999
	.quad	0x400aa956c0d6f545              # double 3.3326850000000001
	.quad	0x4020f65796bfca86              # double 8.4811370000000004
	.quad	0x402343968d759ee9              # double 9.6320080000000007
	.quad	0x4023a188b11409a2              # double 9.8154959999999996
	.quad	0x4010bd3ae685db77              # double 4.1847950000000003
	.quad	0x3ff7842fa5093965              # double 1.4697720000000001
	.quad	0x401ce1cde5d18091              # double 7.2205120000000003
	.quad	0x400c12fb19e731d3              # double 3.5092680000000001
	.quad	0x4000704790b84988              # double 2.054824
	.quad	0x4006380baa582dbe              # double 2.7773659999999998
	.quad	0x3ffc9634549b62c7              # double 1.7866709999999999
	.quad	0x401efffeb074a772              # double 7.7499950000000002
	.quad	0x4015411d798d8a98              # double 5.3135890000000003
	.quad	0x4013b0bed740c415              # double 4.9226029999999996
	.quad	0x401aa58c4bd33d29              # double 6.6616679999999997
	.quad	0x4015626dce39b457              # double 5.3461220000000003
	.quad	0x4021d9f40a2877ee              # double 8.9256899999999995
	.quad	0x4004aa67e846a5d7              # double 2.5832060000000001
	.quad	0x401bb711d798d8a9              # double 6.9287789999999996
	.quad	0x401ad78290689870              # double 6.7104590000000002
	.quad	0x4005a83fd5022574              # double 2.7071529999999999
	.quad	0x401452d1f1cfbb95              # double 5.0808790000000004
	.quad	0x3fea58b1dd5d3dc9              # double 0.82332700000000003
	.quad	0x401dc37ac3eb7cbb              # double 7.4408979999999998
	.quad	0x3fec88637bd05af7              # double 0.89164900000000002
	.quad	0x400cfe39f77292c5              # double 3.6241340000000002
	.quad	0x3ff67aa9b499d020              # double 1.4049469999999999
	.quad	0x4014a48f96e15875              # double 5.160704
	.quad	0x40219c46950fc71d              # double 8.8052259999999993
	.quad	0x4023241c6088d6d4              # double 9.5705290000000005
	.quad	0x401f1a250f840182              # double 7.7755320000000001
	.quad	0x40204c63065f9592              # double 8.1491930000000004
	.quad	0x4022bb4916ca46e1              # double 9.3657920000000007
	.quad	0x402393f39d1b2e5a              # double 9.7889680000000006
	.quad	0x401094003254e6e2              # double 4.1445319999999999
	.quad	0x4019de0c9d9d3459              # double 6.4668450000000002
	.quad	0x40163de1e2de8709              # double 5.5604319999999996
	.quad	0x3fded041cc532a49              # double 0.48146099999999997
	.quad	0x4021da26a22b3893              # double 8.9260760000000001
	.quad	0x4018c0a5efe93187              # double 6.1881329999999997
	.quad	0x3fd215f02c4d65e4              # double 0.28258899999999998
	.quad	0x4017c68dfbd6a594              # double 5.9439010000000003
	.quad	0x3fdb9845dc832336              # double 0.43116900000000002
	.quad	0x40106186db50f40e              # double 4.0952409999999997
	.quad	0x401753db3bfb58d1              # double 5.8318909999999997
	.quad	0x40108bcbe61cffeb              # double 4.13652
	.quad	0x4020ba7b9170d62c              # double 8.3642240000000001
	.quad	0x4023b8f8c64fdb0a              # double 9.8612730000000006
	.quad	0x400e5197a24894c4              # double 3.7898399999999999
	.quad	0x4023de3369b9d7fe              # double 9.9339860000000009
	.quad	0x401531351159c497              # double 5.2980539999999996
	.quad	0x4017a1cef240fa9c              # double 5.9080159999999999
	.quad	0x40104968943e1006              # double 4.071688
	.quad	0x3fe309d27c393682              # double 0.59494899999999995
	.quad	0x40205f5c28f5c28f              # double 8.1862499999999994
	.quad	0x40203a3571d1d474              # double 8.1136890000000008
	.quad	0x40106ba55d1c3ac9              # double 4.1051229999999999
	.quad	0x4002b87df5cf2496              # double 2.3400840000000001
	.quad	0x3fef592d98bf7f06              # double 0.97963599999999995
	.quad	0x400434549b62c775              # double 2.5255519999999998
	.quad	0x401ff61dc93ea2d3              # double 7.990348
	.quad	0x4019813be22e5de1              # double 6.3762049999999997
	.quad	0x4011ef1348b22079              # double 4.4834719999999999
	.quad	0x401fe36199780baa              # double 7.9720519999999997
	.quad	0x40215efcbd556085              # double 8.6855220000000006
	.quad	0x40181527e5215769              # double 6.0206600000000003
	.quad	0x401f9579f2346562              # double 7.8959729999999997
	.quad	0x3ff06107b784662c              # double 1.0236890000000001
	.quad	0x3ff57089a0275254              # double 1.3399749999999999
	.quad	0x3fd892817763e4ac              # double 0.38394200000000001
	.quad	0x40134e8c0485a0be              # double 4.8267059999999997
	.quad	0x3fe2ce8533b10774              # double 0.58770999999999995
	.quad	0x4022463b256ffc11              # double 9.1371699999999993
	.quad	0x40122d045fe11127              # double 4.5439619999999996
	.quad	0x4022d321c475e636              # double 9.4123669999999997
	.quad	0x40236de41d4b6a62              # double 9.7146310000000007
	.quad	0x4021c615ca6ca03c              # double 8.8868849999999994
	.quad	0x401cd4080f98fa37              # double 7.2070619999999996
	.quad	0x4011dfa333764f12              # double 4.4683960000000003
	.quad	0x401998405b39e27a              # double 6.3986830000000001
	.quad	0x4019bfd47bedb728              # double 6.4373339999999999
	.quad	0x40036fb549f94856              # double 2.4295450000000001
	.quad	0x3ff63586ca89fc6e              # double 1.3880680000000001
	.quad	0x400b39641f644956              # double 3.4030230000000001
	.quad	0x400f33b7521144cc              # double 3.9002520000000001
	.quad	0x3fe064cd74927914              # double 0.51230500000000001
	.quad	0x3fe8ad1f1cfbb949              # double 0.77113299999999996
	.quad	0x4011ad11be6e6538              # double 4.4190129999999996
	.quad	0x401fbde7ea5f84cb              # double 7.9354550000000001
	.quad	0x40215504a2fcefaa              # double 8.6660509999999995
	.quad	0x40127fef7c243dcd              # double 4.6249370000000001
	.quad	0x401399f72f76e610              # double 4.9003569999999996
	.quad	0x4000d9c38b04ab60              # double 2.1063299999999998
	.quad	0x4013f33ebbfd71b0              # double 4.9875439999999998
	.quad	0x3ff8e91a75cd0bb7              # double 1.55691
	.quad	0x400d140d4dc65c70              # double 3.6347909999999999
	.quad	0x401743d2d87f8876              # double 5.8162339999999997
	.quad	0x40108e7d566cf41f              # double 4.1391499999999999
	.quad	0x4001e9d6adf71eb0              # double 2.239179
	.quad	0x401e7b1fab96f21f              # double 7.6202379999999996
	.quad	0x4022e4f67b1c0011              # double 9.4471930000000003
	.quad	0x40196e0daa0cae64              # double 6.3574739999999998
	.quad	0x3ff6f0121682f944              # double 1.433611
	.quad	0x4010210e453d20f3              # double 4.0322810000000002
	.quad	0x40075a4c61d8622c              # double 2.9190909999999999
	.quad	0x400b612599ed7c70              # double 3.4224350000000001
	.quad	0x40081b6cbd987c63              # double 3.0133909999999999
	.quad	0x4015c8e368f08462              # double 5.44618
	.quad	0x4022a09f1f14983d              # double 9.3137139999999992
	.quad	0x40088d2bb23571d2              # double 3.0689310000000001
	.quad	0x4016531c64ba94bc              # double 5.5811630000000001
	.quad	0x40167b966be7afa7              # double 5.6206909999999999
	.quad	0x3fc666559f6ec5b0              # double 0.17499799999999999
	.quad	0x3ff553b5bf6a0dbb              # double 1.332937
	.quad	0x3ffd1043e5321e60              # double 1.8164709999999999
	.quad	0x3fdd1348b220791c              # double 0.45430199999999998
	.quad	0x400c06a3bddfca00              # double 3.5032420000000002
	.quad	0x3fffc68ec52a411c              # double 1.985976
	.quad	0x40196d0f1f57b41c              # double 6.356503
	.quad	0x401c4b9346994185              # double 7.073804
	.quad	0x401f017268d32831              # double 7.7514130000000003
	.quad	0x40010263d816aceb              # double 2.1261670000000001
	.quad	0x4011454152b0a6fc              # double 4.3176319999999997
	.quad	0x400636a055757d5b              # double 2.7766730000000002
	.quad	0x3fd70caa326e1156              # double 0.36014800000000002
	.quad	0x401dd9817b95a294              # double 7.4624079999999999
	.quad	0x40014c5da6a44418              # double 2.1622880000000002
	.quad	0x401a0d89ce4a7b4e              # double 6.5132209999999997
	.quad	0x4021e2f5fd47bedb              # double 8.9432829999999992
	.quad	0x3fe6fc47e49b1fac              # double 0.71829600000000005
	.quad	0x4012d7b7414a4d2b              # double 4.7106599999999998
	.quad	0x4023b328d8665e03              # double 9.8499210000000001
	.quad	0x3fe924399b2c40d1              # double 0.78567200000000004
	.quad	0x401b4e4a38327675              # double 6.8264550000000002
	.quad	0x40138c19c17225b7              # double 4.8868169999999997
	.quad	0x3fc4d6d3b6cbd988              # double 0.16280600000000001
	.quad	0x401537789a459104              # double 5.3041710000000002
	.quad	0x4022af44f5d35654              # double 9.3423230000000003
	.quad	0x4022e487b99d4520              # double 9.4463480000000004
	.quad	0x401bac53f39d1b2e              # double 6.9182889999999997
	.quad	0x4006e3c64345cfee              # double 2.861218
	.quad	0x3ff8a0b912dba4d7              # double 1.539239
	.quad	0x4004a35f80991794              # double 2.5797720000000002
	.quad	0x3fe77e4ffc9795b3              # double 0.73416899999999996
	.quad	0x40204586ec17ebaf              # double 8.1357949999999999
	.quad	0x40198a02fb5d0310              # double 6.3847769999999997
	.quad	0x40188a550870110a              # double 6.1350899999999999
	.quad	0x4023bd701d9f4d38              # double 9.8699960000000004
	.quad	0x401b9495e17e34b9              # double 6.8951029999999998
	.quad	0x401dfde76427c7c5              # double 7.4979529999999998
	.quad	0x40139cf312b1b36c              # double 4.9032710000000002
	.quad	0x401022c625e99e95              # double 4.0339590000000003
	.quad	0x400c1d6cf850df16              # double 3.5143680000000002
	.quad	0x401f9f04ddb5525d              # double 7.9052920000000002
	.quad	0x401be69f05ea24cc              # double 6.9752159999999996
	.quad	0x4010eb2d905c0336              # double 4.2296659999999999
	.quad	0x40167b42cc2d6a9c              # double 5.6203719999999997
	.quad	0x401fadb940fecdd1              # double 7.9196520000000001
	.quad	0x401d0cb6c7a7c9de              # double 7.262416
	.quad	0x4022c1fadafd1138              # double 9.3788669999999996
	.quad	0x401d3b4bf8fcd680              # double 7.3079070000000002
	.quad	0x402370b71b8aa002              # double 9.7201470000000008
	.quad	0x4006c52bd3c36113              # double 2.8462749999999999
	.quad	0x400965b291b823c8              # double 3.1746569999999998
	.quad	0x4006eea4a8c154ca              # double 2.8665250000000002
	.quad	0x401f13315d701d9f              # double 7.7687429999999997
	.quad	0x401a035a858793de              # double 6.5032750000000004
	.quad	0x401eebde3fbbd7b2              # double 7.73034
	.quad	0x4022e97a46173b86              # double 9.4560110000000002
	.quad	0x4022632df505d0fa              # double 9.1937099999999994
	.quad	0x4002e305d95dd4c7              # double 2.3608509999999998
	.quad	0x3ffb8acd184c2720              # double 1.721387
	.quad	0x402139b3aeee9574              # double 8.6126989999999992
	.quad	0x401e06cf850df15a              # double 7.5066509999999997
	.quad	0x4005f5f676ea4229              # double 2.7450990000000002
	.quad	0x40202d4f9c1f85d7              # double 8.0884979999999995
	.quad	0x40121f9767903212              # double 4.5308510000000002
	.quad	0x4018e62f166e008f              # double 6.2247890000000003
	.quad	0x3fd55970b49e01de              # double 0.33358399999999999
	.quad	0x3ff8d33b10774688              # double 1.5515699999999999
	.quad	0x400cb65cb35f3d7d              # double 3.5890439999999999
	.quad	0x400800baa582dbe8              # double 3.000356
	.quad	0x4002285c24c404a7              # double 2.2697069999999999
	.quad	0x40227be186983516              # double 9.2419550000000008
	.quad	0x402327505d0fa58f              # double 9.5767849999999992
	.quad	0x401a41569f490603              # double 6.5638069999999997
	.quad	0x40222accd530489d              # double 9.0835939999999997
	.quad	0x4020c8b3b320535d              # double 8.3919960000000007
	.quad	0x401268509bf9c62a              # double 4.6018699999999999
	.quad	0x401236ce789e774f              # double 4.5535220000000001
	.quad	0x4021d8dfdef8487c              # double 8.9235830000000007
	.quad	0x3ff8a542e557de0d              # double 1.5403469999999999
	.quad	0x400731172ef0ae53              # double 2.8989699999999998
	.quad	0x401556d00b45ae60              # double 5.334778
	.quad	0x40108c3c5bd0e12f              # double 4.1369490000000004
	.quad	0x4001462dc6e2a800              # double 2.1592669999999998
	.quad	0x401215fdcdf69878              # double 4.5214759999999998
	.quad	0x3ff1d3a2df9378ee              # double 1.114169
	.quad	0x401a7d894812be49              # double 6.6225940000000003
	.quad	0x3fddd91ab8e8ea3a              # double 0.46637600000000001
	.quad	0x40235d03fb374363              # double 9.6816709999999996
	.quad	0x40066933a0407cc8              # double 2.8013680000000001
	.quad	0x402080efdc9c4da9              # double 8.25183
	.quad	0x401ef5ee99a62ed3              # double 7.7401679999999997
	.quad	0x400322131a8ef77f              # double 2.3916379999999999
	.quad	0x400a1530ced4e4c9              # double 3.2603469999999999
	.quad	0x4020ab5286b59147              # double 8.3346140000000002
	.quad	0x3fe96fcbd556084a              # double 0.79489699999999996
	.quad	0x40122185cee17a03              # double 4.532737
	.quad	0x4002613122b7baed              # double 2.2974570000000001
	.quad	0x4020f478c868b9fe              # double 8.4774840000000005
	.quad	0x401a46833c60029f              # double 6.5688599999999999
	.quad	0x3ffc5ce5b4245f5b              # double 1.77268
	.quad	0x400dd713ad5bee3d              # double 3.7300179999999998
	.quad	0x4022ac66f5019f3c              # double 9.3367229999999992
	.quad	0x400ee69ad42c3c9f              # double 3.8626
	.quad	0x3ff049752977c88e              # double 1.0179339999999999
	.quad	0x3ffd51c4b90214ad              # double 1.832463
	.quad	0x4018a12b1b36bd2b              # double 6.1573909999999996
	.quad	0x4019f285a921ccd9              # double 6.4868379999999997
	.quad	0x400c9d566cf41f21              # double 3.5768249999999999
	.quad	0x3ffc272b884406c0              # double 1.759563
	.quad	0x4021d53b0813cab8              # double 8.9164659999999998
	.quad	0x401149008205ff1e              # double 4.3212910000000004
	.quad	0x400e49e8815e3971              # double 3.7860879999999999
	.quad	0x3fe74e2b063e07a3              # double 0.72829200000000005
	.quad	0x4021349c2c1b10fd              # double 8.6027539999999991
	.quad	0x4012f04e618ce2d2              # double 4.734674
	.quad	0x40237205bc01a36e              # double 9.7226999999999997
	.quad	0x40212f1cda2b5a21              # double 8.5920170000000002
	.quad	0x4014bce075f6fd22              # double 5.18445
	.quad	0x4011c7dfa00e27e1              # double 4.4451890000000001
	.quad	0x40089bc1acde19fc              # double 3.0760529999999999
	.quad	0x3fe9160956c0d6f5              # double 0.78393999999999997
	.quad	0x401613de6149c6f3              # double 5.5194029999999996
	.quad	0x400ee06a6e32e382              # double 3.859578
	.quad	0x40069bbc6eb0b7c3              # double 2.8260429999999999
	.quad	0x3fab34e7685985ad              # double 0.053137999999999998
	.quad	0x3ff771d92b7fe08b              # double 1.465295
	.quad	0x40168c3b927d45a6              # double 5.636946
	.quad	0x401770d4dc65c704              # double 5.8601869999999998
	.quad	0x400bb185cee17a03              # double 3.461681
	.quad	0x4022964c0df58c09              # double 9.2935490000000005
	.quad	0x40146323bbc6eb0b              # double 5.0968159999999996
	.quad	0x4011498201cd5f9a              # double 4.3217850000000002
	.quad	0x3ff16b8f9b13165d              # double 1.08876
	.quad	0x40232ff455a7d242              # double 9.5936610000000009
	.quad	0x40016dc981beb181              # double 2.178607
	.quad	0x40181f340d4dc65c              # double 6.0304719999999996
	.quad	0x40145dfc19c17226              # double 5.0917820000000003
	.quad	0x4020cfbe121ee675              # double 8.4057469999999999
	.quad	0x40149aa7ded6ba8c              # double 5.1510309999999997
	.quad	0x3ffab2bcb5fe542e              # double 1.6686369999999999
	.quad	0x400c3cbee807bbb6              # double 3.5296609999999999
	.quad	0x40207e3d3e4ef028              # double 8.2465609999999998
	.quad	0x4011f6d2aa5c5f7c              # double 4.4910379999999996
	.quad	0x3ff21ede1198aeb8              # double 1.132536
	.quad	0x3ffb005d52c16df4              # double 1.687589
	.quad	0x3fef9b30728e92d5              # double 0.98769399999999996
	.quad	0x4015fda554b8bef9              # double 5.4977010000000002
	.quad	0x4022ab8023a6ce36              # double 9.3349620000000009
	.quad	0x3fff761fe21d96ea              # double 1.9663390000000001
	.quad	0x4021f78d716d2aa6              # double 8.9835010000000004
	.quad	0x4011311cf355cd92              # double 4.2979620000000001
	.quad	0x4014a7bc3c5bd0e1              # double 5.1638039999999998
	.quad	0x3fdae83a109d0636              # double 0.42042400000000002
	.quad	0x3ff1667620ee8d11              # double 1.087515
	.quad	0x40181d1958969a0b              # double 6.0284170000000001
	.quad	0x401096f1dc50ce4f              # double 4.1474070000000003
	.quad	0x400d26b93ccd0fe9              # double 3.6439080000000001
	.quad	0x40206af4f0d844d0              # double 8.2088999999999999
	.quad	0x401543db7f173754              # double 5.3162669999999999
	.quad	0x3ffd3a4b5568e821              # double 1.826732
	.quad	0x4004d64388ebcc6c              # double 2.6046209999999999
	.quad	0x401fe37b07075b3e              # double 7.9721489999999999
	.quad	0x401b016ca46e08f2              # double 6.7513909999999999
	.quad	0x401df39f340d4dc6              # double 7.4879119999999997
	.quad	0x4011c247cb70ac3b              # double 4.4397270000000004
	.quad	0x401e6306a2b17050              # double 7.596705
	.quad	0x4014d4020817fc76              # double 5.207039
	.quad	0x40148e37de939eae              # double 5.1388850000000001
	.quad	0x3fcda072d1aeb3dd              # double 0.231459
	.quad	0x4014816a055757d6              # double 5.1263810000000003
	.quad	0x4005a95f2452c5a0              # double 2.7077010000000001
	.quad	0x40232bea2d2fe3f3              # double 9.5857709999999993
	.quad	0x400293b5bf6a0dbb              # double 2.3221240000000001
	.quad	0x401d018e757928e1              # double 7.2515200000000002
	.quad	0x3fd96a7ef9db22d1              # double 0.39712500000000001
	.quad	0x40191e2e2b8c75c5              # double 6.2794730000000003
	.quad	0x40106f3cb3e5753a              # double 4.1086299999999998
	.quad	0x3ff10d045fe11127              # double 1.0656779999999999
	.quad	0x4023ae81a9b8cb8e              # double 9.8408329999999999
	.quad	0x4021481ffb480a5b              # double 8.6408690000000004
	.quad	0x4022173d7d3910c3              # double 9.0453910000000004
	.quad	0x40161a95421c0443              # double 5.5259600000000004
	.quad	0x3ffd7c3c5bd0e12f              # double 1.8428310000000001
	.quad	0x4016c66772d5e072              # double 5.6937540000000002
	.quad	0x4004a226809d4952              # double 2.5791750000000002
	.quad	0x3fefd23b3636f3b2              # double 0.99441299999999999
	.quad	0x4018329ae4f33440              # double 6.0494190000000003
	.quad	0x3ff4f93ff25e56cd              # double 1.3108519999999999
	.quad	0x401f64ae429e0a42              # double 7.8483210000000003
	.quad	0x4005834c1a8ac5c1              # double 2.6891099999999999
	.quad	0x401705e5f30e7ff6              # double 5.7557600000000004
	.quad	0x4004a8bf3bea91da              # double 2.5823960000000001
	.quad	0x4011269f8c21e1d2              # double 4.2877179999999999
	.quad	0x4016f3a2df9378ee              # double 5.7379259999999999
	.quad	0x4014d6440f238972              # double 5.209244
	.quad	0x4009e9bf162ae4b0              # double 3.239134
	.quad	0x4000c6fd651b0ccc              # double 2.0971630000000001
	.quad	0x4023f203a322af57              # double 9.9726839999999992
	.quad	0x3ffe10e453d20f2c              # double 1.879124
	.quad	0x40226e5082cf52b9              # double 9.2154579999999999
	.quad	0x400ac595bbbe8790              # double 3.3464770000000001
	.quad	0x40098fb549f94856              # double 3.1951700000000001
	.quad	0x4022a688bda9435b              # double 9.3252620000000004
	.quad	0x40235106034f3fd9              # double 9.6582489999999996
	.quad	0x3ff826cc1ca3a4b5              # double 1.5094719999999999
	.quad	0x4011486ca89fc6da              # double 4.3207269999999998
	.quad	0x401f9bb517a46174              # double 7.9020580000000002
	.quad	0x3fc61f42bb6672fc              # double 0.17282900000000001
	.quad	0x400721b328b6d86f              # double 2.8914550000000001
	.quad	0x3fd019a847b24639              # double 0.25156600000000001
	.quad	0x402320b47c73eee5              # double 9.5638769999999997
	.quad	0x40098144028e4fb9              # double 3.1881179999999998
	.quad	0x401ff9029ae4f334              # double 7.9931739999999998
	.quad	0x401d6f87ad080b67              # double 7.3589159999999998
	.quad	0x401cee54b48d3ae7              # double 7.2327450000000004
	.quad	0x401ac41743e963dc              # double 6.6914949999999997
	.quad	0x401699a52263d817              # double 5.6500440000000003
	.quad	0x4022a3fa4c61d862              # double 9.3202689999999997
	.quad	0x3f9a3161a1db877b              # double 0.025579000000000001
	.quad	0x4013a3b81b64e054              # double 4.9098819999999996
	.quad	0x3fe1890d5a5b9629              # double 0.54798000000000002
	.quad	0x402248a2ca9ac365              # double 9.1418669999999995
	.quad	0x401ea335d249e450              # double 7.6593850000000003
	.quad	0x401ba1ec4e7253da              # double 6.9081279999999996
	.quad	0x401eeb4784230fd0              # double 7.7297650000000004
	.quad	0x3ffb13c03bc4d22d              # double 1.6923220000000001
	.quad	0x401304302b40f66a              # double 4.7540899999999997
	.quad	0x4020d84b5dcc63f1              # double 8.4224499999999995
	.quad	0x401a0357603925bb              # double 6.5032629999999996
	.quad	0x3fd3bae46cfc829d              # double 0.308282
	.quad	0x40208c7c957cd467              # double 8.2743880000000001
	.quad	0x4021cb7ae5796bfd              # double 8.8974220000000006
	.quad	0x4021e70b8cfbfc65              # double 8.9512599999999996
	.quad	0x3ffe4de6ddf00abf              # double 1.8940189999999999
	.quad	0x401ef81dc0db2703              # double 7.7423010000000003
	.quad	0x4010635e310dbf05              # double 4.0970389999999997
	.quad	0x3ff36174c4cdfaca              # double 1.211293
	.quad	0x4011d3508f648c72              # double 4.4563620000000004
	.quad	0x4004cefe4ffc9796              # double 2.6010710000000001
	.quad	0x40114680e0653006              # double 4.3188510000000004
	.quad	0x401a49949e8815e4              # double 6.5718560000000004
	.quad	0x3fdd7168f8e7ddca              # double 0.46004699999999998
	.quad	0x3fed4c35ce182667              # double 0.91555299999999995
	.quad	0x3fd2072085b18549              # double 0.28168500000000002
	.quad	0x40002084a515ce9e              # double 2.0158779999999998
	.quad	0x4005e3bddfc9ff93              # double 2.736202
	.quad	0x400404052d666a98              # double 2.5019629999999999
	.quad	0x401b0c3ac929aa1d              # double 6.7619429999999996
	.quad	0x40180d466f5019f4              # double 6.0129640000000002
	.quad	0x401b4061c79b34a4              # double 6.8128729999999997
	.quad	0x402327d1bb4916ca              # double 9.5777719999999995
	.quad	0x4014ea4db163baba              # double 5.2288119999999996
	.quad	0x4017c76af89c5e70              # double 5.944744
	.quad	0x40007646ae3a3a8e              # double 2.0577519999999998
	.quad	0x4012eef62f9ca5be              # double 4.7333610000000004
	.quad	0x3fe9d12a94ff0026              # double 0.80678300000000003
	.quad	0x4020518b93469942              # double 8.1592680000000009
	.quad	0x40041ab6d00b45ae              # double 2.5130439999999998
	.quad	0x4017d3586ca89fc7              # double 5.9563920000000001
	.quad	0x40218f33ebbfd71b              # double 8.779693
	.quad	0x3fb4a569b17481b2              # double 0.080648999999999998
	.quad	0x4010f28d002e2329              # double 4.236866
	.quad	0x40187e38eb0318b9              # double 6.1232639999999998
	.quad	0x401ed67f0aa21a72              # double 7.7094690000000003
	.quad	0x401b1c4ac6cdaf4b              # double 6.7776290000000001
	.quad	0x3fdc7fae3608d089              # double 0.44529299999999999
	.quad	0x4013827f1b691212              # double 4.8774379999999997
	.quad	0x401f6cc2d6a9c561              # double 7.8562120000000001
	.quad	0x401b34b1ee243569              # double 6.8014599999999996
	.quad	0x400654a44c7b02d6              # double 2.7913290000000002
	.quad	0x4012d5e8d5410f95              # double 4.7088960000000002
	.quad	0x401ca1dbca9691a7              # double 7.1580649999999997
	.quad	0x401d9f601797cc3a              # double 7.40564
	.quad	0x401403476295208e              # double 5.0032019999999999
	.quad	0x3fe931a08bfc2225              # double 0.78730800000000001
	.quad	0x401e09f340d4dc66              # double 7.5097170000000002
	.quad	0x40117fe4ffc9795b              # double 4.3748969999999998
	.quad	0x40061ed06fef7c24              # double 2.7650459999999999
	.quad	0x40160bca1059ea57              # double 5.5115129999999999
	.quad	0x3fe36789e774eebf              # double 0.60638899999999996
	.quad	0x401ff0c67168f8e8              # double 7.9851320000000001
	.quad	0x402249314445aa2e              # double 9.1429539999999996
	.quad	0x40232bf316e37154              # double 9.5858389999999999
	.quad	0x4021a60780fdc161              # double 8.8242759999999993
	.quad	0x40110a6612839043              # double 4.2601550000000001
	.quad	0x401355a2d72ffd1e              # double 4.8336290000000002
	.quad	0x4020982e44b6e936              # double 8.2972280000000005
	.quad	0x3ff5b4d7add15f03              # double 1.3566510000000001
	.quad	0x4022e54a5df2239e              # double 9.4478329999999993
	.quad	0x401022480e8c8abd              # double 4.0334779999999997
	.quad	0x40219a86d71f3626              # double 8.8018099999999997
	.quad	0x400131ff7164c72a              # double 2.149413
	.quad	0x400da3c7d5ed06ff              # double 3.704971
	.quad	0x401aba3f8982cb21              # double 6.681883
	.quad	0x4011dddd6e04c059              # double 4.4666649999999999
	.quad	0x401f5826aa8eb463              # double 7.8360849999999997
	.quad	0x401ac771001d5c31              # double 6.6947669999999997
	.quad	0x402123b3e9a6f827              # double 8.5697320000000001
	.quad	0x402171f080303c08              # double 8.7225380000000001
	.quad	0x40196299524bfd2f              # double 6.3462880000000004
	.quad	0x401cf35c9e6687f4              # double 7.2376579999999997
	.quad	0x4017fd095af294dd              # double 5.9971059999999996
	.quad	0x4019972ead9274e2              # double 6.3976389999999999
	.quad	0x4019c640e9d51b50              # double 6.4436070000000001
	.quad	0x40235aaf35e310dc              # double 9.6771180000000001
	.quad	0x40178eb8950763a2              # double 5.8893760000000004
	.quad	0x401ee4801f75104d              # double 7.7231449999999997
	.quad	0x40185685553ef6b6              # double 6.0844930000000002
	.quad	0x40160abf33871609              # double 5.5104949999999997
	.quad	0x40173a18372e6a77              # double 5.8067330000000004
	.quad	0x401af384fd2a62aa              # double 6.7378119999999999
	.quad	0x40212e7d34df04de              # double 8.5907990000000005
	.quad	0x400a5f6ba0620ab7              # double 3.296592
	.quad	0x400f61869835158c              # double 3.9226200000000002
	.quad	0x401dbc27e9531551              # double 7.4337460000000002
	.quad	0x401c8cbea4ebdd33              # double 7.1374459999999997
	.quad	0x401314649906cca3              # double 4.7699150000000001
	.quad	0x4021841ede1198af              # double 8.7580480000000005
	.quad	0x4013bfdcdf698783              # double 4.9373659999999999
	.quad	0x401a0cf312b1b36c              # double 6.5126460000000002
	.quad	0x40100e5ffa3b9ae1              # double 4.0140380000000002
	.quad	0x400c0e43aa79bbae              # double 3.5069650000000001
	.quad	0x3ff622b1704ff434              # double 1.38347
	.quad	0x401450025bfad29a              # double 5.0781340000000004
	.quad	0x3fe9d9791819d239              # double 0.80779699999999999
	.quad	0x3ffbad1e108c3f3e              # double 1.729765
	.quad	0x4001afc9363f572e              # double 2.210833
	.quad	0x4011d689ca18bd66              # double 4.4595099999999999
	.quad	0x401011ee675147f1              # double 4.0175109999999998
	.quad	0x40225c1c6088d6d4              # double 9.1799040000000005
	.quad	0x3ffd5f46ed245b29              # double 1.835761
	.quad	0x401e07d4e09784ec              # double 7.5076479999999997
	.quad	0x400c9ca42aed1394              # double 3.5764849999999999
	.quad	0x3fba07f66e86c658              # double 0.101684
	.quad	0x40113b39192641b3              # double 4.3078349999999999
	.quad	0x40227cbba12b5e53              # double 9.2436190000000007
	.quad	0x4012d4bb1af3a14d              # double 4.7077450000000001
	.quad	0x40144b0ff10ecb75              # double 5.0733030000000001
	.quad	0x4011978705425f20              # double 4.3979759999999999
	.quad	0x4020ee84ad794a6f              # double 8.4658560000000005
	.quad	0x4010d84cad57bc7f              # double 4.2112299999999996
	.quad	0x4023f91233df2a9d              # double 9.9864669999999993
	.quad	0x401103e78e1932d7              # double 4.2538130000000001
	.quad	0x4023ad959a30984e              # double 9.8390319999999996
	.quad	0x401f40f8c64fdb0a              # double 7.8134490000000003
	.quad	0x400cef07bfe7e1fc              # double 3.616714
	.quad	0x4017121ab4b72c52              # double 5.7676800000000004
	.quad	0x400468d21bc126a6              # double 2.5511819999999998
	.quad	0x402012291fb3fa6e              # double 8.0354700000000001
	.quad	0x4012040314877681              # double 4.5039179999999996
	.quad	0x3fec14ad362e9036              # double 0.87752399999999997
	.quad	0x4017ba0663c74fb5              # double 5.9316649999999997
	.quad	0x4013e342aa9f7b5b              # double 4.9719340000000001
	.quad	0x40201a4180d3cff6              # double 8.0512809999999995
	.quad	0x4013e18548a9bcfd              # double 4.9702349999999997
	.quad	0x3fff5dd095af294e              # double 1.960404
	.quad	0x4020e961a1db877b              # double 8.4558230000000005
	.quad	0x4021b77e3d1cc101              # double 8.8583850000000002
	.quad	0x4011323d4f15e7c9              # double 4.2990620000000002
	.quad	0x40112ee9dd7ecbb8              # double 4.295814
	.quad	0x4012520ddc619546              # double 4.5801309999999997
	.quad	0x402150b97785729b              # double 8.6576649999999997
	.quad	0x400c50f1f57b41c0              # double 3.5395240000000001
	.quad	0x40026589acbc8c0d              # double 2.299579
	.quad	0x401e86cd29131ec1              # double 7.6316420000000002
	.quad	0x40224536d655e28b              # double 9.1351840000000006
	.quad	0x3ff73c74fb549f95              # double 1.4522600000000001
	.quad	0x40157e0f3cb3e575              # double 5.3731049999999998
	.quad	0x40222afaf8594291              # double 9.0839459999999992
	.quad	0x40036990f301eabc              # double 2.4265460000000001
	.quad	0x402034e48626f60e              # double 8.1033059999999999
	.quad	0x40200da3e39f7729              # double 8.0266409999999997
	.quad	0x3ff01c853c148345              # double 1.0069630000000001
	.quad	0x40198508f648c719              # double 6.3799169999999998
	.quad	0x401555ffa3b9ae0c              # double 5.3339829999999999
	.quad	0x3fd8aa4766c6de76              # double 0.38539299999999999
	.quad	0x400182f5989df117              # double 2.1889449999999999
	.quad	0x4018bc2b51bd61f6              # double 6.1837590000000002
	.quad	0x401677bbb62413db              # double 5.6169269999999996
	.quad	0x400736d4c33b5393              # double 2.9017729999999999
	.quad	0x402221bcba301217              # double 9.0658930000000009
	.quad	0x401cec6bce8533b1              # double 7.23088
	.quad	0x4019d2b3cc4ac6ce              # double 6.4557640000000003
	.quad	0x401a5a2d2fe3f35a              # double 6.588063
	.quad	0x401ff3c46d82ba5a              # double 7.988054
	.quad	0x4017a90ea9e6eeb7              # double 5.915095
	.quad	0x4004260780fdc161              # double 2.5185689999999998
	.quad	0x401f5e0e30446b6a              # double 7.8418510000000001
	.quad	0x4022cea465a57647              # double 9.4035980000000005
	.quad	0x401d8158fb43d89d              # double 7.3763160000000001
	.quad	0x400431e108c3f3e0              # double 2.5243549999999999
	.quad	0x3fea818e757928e1              # double 0.82831500000000002
	.quad	0x40237a146a1a500d              # double 9.7384369999999993
	.quad	0x40210104f6dfc5ce              # double 8.5019910000000003
	.quad	0x40239109d0635a42              # double 9.7832779999999993
	.quad	0x40023cdfefbf401c              # double 2.2797239999999999
	.quad	0x4007c64883fd5022              # double 2.9718179999999998
	.quad	0x4020e9187e7c06e2              # double 8.4552650000000007
	.quad	0x401af13879c4113c              # double 6.7355669999999996
	.quad	0x40202343d89ce4a8              # double 8.0688770000000005
	.quad	0x3ffa1e6256366d7a              # double 1.6324179999999999
	.quad	0x4005164cf8d716d3              # double 2.6358890000000001
	.quad	0x3ff05cb252ce032e              # double 1.0226310000000001
	.quad	0x4010aa8ef77f27fe              # double 4.1665609999999997
	.quad	0x401c324a6a875d57              # double 7.049112
	.quad	0x401968f3a9b06812              # double 6.3524919999999998
	.quad	0x400ee477ff151e75              # double 3.8615569999999999
	.quad	0x3ff54487b99d4520              # double 1.3292310000000001
	.quad	0x401d44107314ca92              # double 7.3164689999999997
	.quad	0x4004667dfe32a066              # double 2.5500449999999999
	.quad	0x400ebdfb0d51f81a              # double 3.8427639999999998
	.quad	0x400b68709741d085              # double 3.425996
	.quad	0x4011e0685553ef6b              # double 4.4691479999999997
	.quad	0x3ff72b0ea18372e7              # double 1.4480120000000001
	.quad	0x4021a3ed0f627393              # double 8.8201680000000007
	.quad	0x401c1ced916872b0              # double 7.0282499999999999
	.quad	0x400a52b884406c01              # double 3.2903910000000001
	.quad	0x401a4589efd86a90              # double 6.5679090000000002
	.quad	0x401fe88ace24bba1              # double 7.9770919999999998
	.quad	0x40217a28bb0a2caa              # double 8.7385920000000006
	.quad	0x3ffb9c0229a5ebb7              # double 1.7255879999999999
	.quad	0x4021cfdc7abfb9bf              # double 8.9059790000000003
	.quad	0x400450eb24a6a876              # double 2.5395110000000001
	.quad	0x400e51bd61f5be5e              # double 3.7899120000000002
	.quad	0x402368346dc5d639              # double 9.7035250000000008
	.quad	0x4023134b945308bc              # double 9.5376860000000007
	.quad	0x4012a811b1d92b80              # double 4.6641300000000001
	.quad	0x4009f6e6106ab14f              # double 3.2455560000000001
	.quad	0x4021ef9ce8d972cd              # double 8.9679939999999991
	.quad	0x40113ce4217d284a              # double 4.3094640000000002
	.quad	0x402225798d8a979e              # double 9.0731929999999998
	.quad	0x401af6d6dc1a47aa              # double 6.7410540000000001
	.quad	0x40205d0b73d188f4              # double 8.1817279999999996
	.quad	0x400fdb1c0010c6f8              # double 3.9819870000000002
	.quad	0x4021b1450efdc9c5              # double 8.8462300000000003
	.quad	0x40134bff8a8f3a9b              # double 4.824217
	.quad	0x401b6161a1db877b              # double 6.8450990000000003
	.quad	0x401ab06f69446738              # double 6.6722999999999999
	.quad	0x40218332acfb762e              # double 8.7562460000000009
	.quad	0x40027b3aeee95747              # double 2.310171
	.quad	0x4012bd97b30f8c65              # double 4.685149
	.quad	0x402092dd15f02c4d              # double 8.2868429999999993
	.quad	0x401e3b9ae0c17657              # double 7.5582079999999995
	.quad	0x401b51083dbc2331              # double 6.8291329999999997
	.quad	0x401b7ff6d330941d              # double 6.8749650000000004
	.quad	0x3ffd8de3b8a19c9d              # double 1.8471409999999999
	.quad	0x40065635e74299d9              # double 2.7920950000000002
	.quad	0x401d2e45c358afc4              # double 7.2951879999999996
	.quad	0x4012722dd7a99fa1              # double 4.6115029999999999
	.quad	0x401f1cf0307f23cd              # double 7.7782600000000003
	.quad	0x402295c422036007              # double 9.2925120000000003
	.quad	0x401ded117b5286b6              # double 7.4815120000000004
	.quad	0x3ff2ba615a8deb10              # double 1.1705030000000001
	.quad	0x401bc5f7403dddb1              # double 6.9433259999999999
	.quad	0x3ffc03b3e9a6f827              # double 1.750904
	.quad	0x4021b84b3c3e74b0              # double 8.8599490000000003
	.quad	0x401f7dc22ab25b31              # double 7.8728109999999995
	.quad	0x4010137585be1a82              # double 4.0190029999999997
	.quad	0x3fddc0d6f544bb1b              # double 0.464895
	.quad	0x401f6a09cc319c5a              # double 7.8535529999999998
	.quad	0x401ccda4052d666b              # double 7.2008210000000004
	.quad	0x4012472b884406c0              # double 4.569502
	.quad	0x400fa172abef06b3              # double 3.9538319999999998
	.quad	0x4003c4473cd57364              # double 2.4708389999999998
	.quad	0x40012a66559f6ec6              # double 2.1457030000000001
	.quad	0x4015dda87a072d1b              # double 5.4664630000000001
	.quad	0x401cce7a311e85fd              # double 7.201638
	.quad	0x401a8f9c1f85d745              # double 6.640244
	.quad	0x4010858e64b23140              # double 4.1304259999999999
	.quad	0x4007241fea8112ba              # double 2.892639
	.quad	0x4021fb4e11dbca97              # double 8.9908300000000008
	.quad	0x4011d9b34a44c7b0              # double 4.4625979999999998
	.quad	0x40057f06705c896e              # double 2.6870240000000001
	.quad	0x3fee299d883ba344              # double 0.94257999999999997
	.quad	0x4008a6efc371da38              # double 3.081512
	.quad	0x401779b38d60a633              # double 5.868849
	.quad	0x400ce994185058de              # double 3.614052
	.quad	0x4016cb44a1f08030              # double 5.6985039999999998
	.quad	0x400593f0fe047d3d              # double 2.6972369999999999
	.quad	0x40223bcee9dd7ecc              # double 9.1168130000000004
	.quad	0x401837d1351159c5              # double 6.0545090000000004
	.quad	0x402399873ffac1d3              # double 9.7998600000000006
	.quad	0x401d4a4d6e47dc38              # double 7.3225610000000003
	.quad	0x402342a19439de48              # double 9.6301389999999997
	.quad	0x400a6b1c432ca57a              # double 3.3022999999999998
	.quad	0x3ff1bd5dc4007571              # double 1.1087320000000001
	.quad	0x4021822c669057d1              # double 8.7542449999999992
	.quad	0x400d2a550870110a              # double 3.64567
	.quad	0x40119d32830a0b1c              # double 4.4035130000000002
	.quad	0x3ff6b41bfbdf090f              # double 1.4189719999999999
	.quad	0x3ff4c407cc7d1bb5              # double 1.2978590000000001
	.quad	0x402363f4cb1897a6              # double 9.6952269999999992
	.quad	0x3ff82ff7dfa00e28              # double 1.511711
	.quad	0x400080abf76a2f49              # double 2.0628280000000001
	.quad	0x40216e24dd2f1aa0              # double 8.7151250000000005
	.quad	0x4020ba528ae74f2f              # double 8.3639109999999999
	.quad	0x4009cf227d028a1e              # double 3.22614
	.quad	0x402361873ffac1d3              # double 9.6904850000000006
	.quad	0x4006626bb55ac040              # double 2.798057
	.quad	0x3fe0f99a1fd1569f              # double 0.53046899999999997
	.quad	0x3ff12bce8533b107              # double 1.0731949999999999
	.quad	0x3fd5ce4ead0c3d25              # double 0.34071699999999999
	.quad	0x401cf18e325d4a5e              # double 7.235894
	.quad	0x3ffcb381d7dbf488              # double 1.793825
	.quad	0x402393c792d1287c              # double 9.7886319999999997
	.quad	0x4007aeebf65dbfcf              # double 2.9604110000000001
	.quad	0x401ec837f7be121f              # double 7.695526
	.quad	0x4023a1f44d445671              # double 9.8163169999999997
	.quad	0x4006df865d7cb2d9              # double 2.859143
	.quad	0x401dcb95a294141f              # double 7.4488130000000004
	.quad	0x4008e3704790b84a              # double 3.1110540000000002
	.quad	0x3ff8c73365881a15              # double 1.5486329999999999
	.quad	0x40153eaf6837f7be              # double 5.3112159999999999
	.quad	0x400eed7518b0d0ee              # double 3.8659460000000001
	.quad	0x40040437824d4cba              # double 2.502059
	.quad	0x401c2c8a7a41e57e              # double 7.0434970000000003
	.quad	0x4022c6364bec679d              # double 9.3871330000000003
	.quad	0x400e9973d9ec7000              # double 3.8249279999999999
	.quad	0x4010bf0995aaf790              # double 4.1865600000000001
	.quad	0x3fe5ef08cc575c07              # double 0.68542899999999995
	.quad	0x3ff90b7a1c25d074              # double 1.565302
	.quad	0x401939652bd3c361              # double 6.3060499999999999
	.quad	0x401e86a550870111              # double 7.6314900000000003
	.quad	0x4011dafe1da7b0b4              # double 4.4638600000000004
	.quad	0x400e7edaec4a4096              # double 3.811941
	.quad	0x3fe631359791819d              # double 0.69350699999999998
	.quad	0x401d1eed8904f6e0              # double 7.2802030000000002
	.quad	0x40158248d7e02646              # double 5.3772310000000001
	.quad	0x401d7c0096feb4a6              # double 7.3710959999999996
	.quad	0x4014e6b873797460              # double 5.2253129999999999
	.quad	0x400df5c0767d34df              # double 3.744996
	.quad	0x4019b44284dfce31              # double 6.4260349999999997
	.quad	0x4022482f2f987400              # double 9.1409850000000006
	.quad	0x3fa280f12c27a637              # double 0.036139999999999999
	.quad	0x400b1609dcf893fb              # double 3.385761
	.quad	0x400553d20f2becee              # double 2.6659280000000001
	.quad	0x400851d68c692f6f              # double 3.0399600000000002
	.quad	0x401b72df9378ee28              # double 6.8621809999999996
	.quad	0x3ff8de03f705857b              # double 1.554203
	.quad	0x401fe028e4fb97bb              # double 7.9689059999999996
	.quad	0x4021459c8c9320da              # double 8.6359600000000007
	.quad	0x40045e9856a37ac4              # double 2.546189
	.quad	0x400fdc200c0f01fc              # double 3.9824830000000002
	.quad	0x3fffd62f166e008f              # double 1.9897910000000001
	.quad	0x4010e9795b35b0bc              # double 4.228002
	.quad	0x40101deefe4ffc98              # double 4.0292320000000004
	.quad	0x401a241e57d9dba9              # double 6.535272
	.quad	0x4010e78e1932d6ed              # double 4.2261280000000001
	.quad	0x4022018f1d3ed528              # double 9.0030450000000002
	.quad	0x402108398a654930              # double 8.5160640000000001
	.quad	0x3ffdccc78e9f6a94              # double 1.862495
	.quad	0x3fea242f1ed17c5f              # double 0.816917
	.quad	0x3fe7070110a137f4              # double 0.71960500000000005
	.quad	0x401bbc53f39d1b2e              # double 6.9339139999999997
	.quad	0x400a1028a1dfb939              # double 3.2578900000000002
	.quad	0x401fcd4fdf3b645a              # double 7.9504999999999999
	.quad	0x4021e12f09d8c6d6              # double 8.9398119999999999
	.quad	0x402381797cc39ffd              # double 9.7528799999999993
	.quad	0x400ffa836eb4e981              # double 3.9973209999999999
	.quad	0x3fef44f3ba775fb3              # double 0.977167
	.quad	0x4018101e2584f4c7              # double 6.0157400000000001
	.quad	0x401d3cb5bb384fd3              # double 7.3092870000000003
	.quad	0x401a52b990afe60c              # double 6.5807859999999998
	.quad	0x4010c2da554b8bf0              # double 4.1902860000000004
	.quad	0x4012c0218def416c              # double 4.6876280000000001
	.quad	0x4016f6e4c0df58c1              # double 5.7411070000000004
	.quad	0x400d331a8ef77f28              # double 3.649953
	.quad	0x3fdb3fd933e35c5b              # double 0.42577199999999998
	.quad	0x40183b1960fa15db              # double 6.0577139999999998
	.quad	0x402252df71eafee7              # double 9.161861
	.quad	0x4002e2a5614df8b1              # double 2.3606669999999998
	.quad	0x401f055f78359bc3              # double 7.7552469999999997
	.quad	0x3fe52ae6c8f75537              # double 0.66148700000000005
	.quad	0x4006edb0574b4070              # double 2.8660589999999999
	.quad	0x401228c3f3e0370d              # double 4.5398100000000001
	.quad	0x40201e996312f4cf              # double 8.0597639999999995
	.quad	0x4002f5dfeb8d8234              # double 2.3700559999999999
	.quad	0x40040e147ae147ae              # double 2.506875
	.quad	0x3ff8b21c475e6363              # double 1.5434840000000001
	.quad	0x40019a8deb0fadf3              # double 2.200466
	.quad	0x4018bda7f3cf7015              # double 6.1852109999999998
	.quad	0x40086cc9a77e5eab              # double 3.0531190000000001
	.quad	0x40174f5771001d5c              # double 5.8274819999999998
	.quad	0x400e32806af46aa1              # double 3.7746590000000002
	.quad	0x4017ae78183f91e6              # double 5.9203799999999998
	.quad	0x400e6176ddaceee1              # double 3.79759
	.quad	0x3ff32c471b478423              # double 1.19831
	.quad	0x40164eae9ee45c36              # double 5.5768380000000004
	.quad	0x3ff375cf2495e17e              # double 1.216262
	.quad	0x401d2eebb341e14c              # double 7.2958210000000001
	.quad	0x401b29dcf893faf4              # double 6.7908819999999999
	.quad	0x40236e6b8305d95e              # double 9.7156640000000003
	.quad	0x40104d5c74751ce3              # double 4.0755480000000004
	.quad	0x402105a294141e9b              # double 8.5110060000000001
	.quad	0x4003172abef06b38              # double 2.3863120000000002
	.quad	0x3ffd9e3c968943e1              # double 1.851132
	.quad	0x40081c04c8bc9cd4              # double 3.0136810000000001
	.quad	0x40105a48b6523704              # double 4.0881679999999996
	.quad	0x3fe73c3c5bd0e12f              # double 0.72610300000000005
	.quad	0x401c41fe21d96e9c              # double 7.0644460000000002
	.quad	0x401b0159c4977425              # double 6.7513189999999996
	.quad	0x3ff1a51a005c4652              # double 1.102808
	.quad	0x401420a137f38c54              # double 5.0318649999999998
	.quad	0x400afe99e94ab1d5              # double 3.374317
	.quad	0x4005461a60d4562e              # double 2.65923
	.quad	0x400245d4a5df223a              # double 2.284097
	.quad	0x4017d98d8a979e17              # double 5.9624540000000001
	.quad	0x401c5e81cb46bacf              # double 7.0922919999999996
	.quad	0x4021a3404ea4a8c1              # double 8.8188499999999994
	.quad	0x401fe7b0f6ad70e7              # double 7.976261
	.quad	0x3ffa3ed84d338f7a              # double 1.6403430000000001
	.quad	0x4013788d6d3b6cbe              # double 4.8677270000000004
	.quad	0x3fc0a5b530ced4e5              # double 0.13005700000000001
	.quad	0x401eaf9a8cdea034              # double 7.6714880000000001
	.quad	0x4015c43419e30015              # double 5.441605
	.quad	0x401f08aeb80ecfa7              # double 7.7584790000000003
	.quad	0x401a9ea4ebdd334c              # double 6.6549259999999997
	.quad	0x400419e6ab9b23dd              # double 2.5126469999999999
	.quad	0x401f3476f2a5a46a              # double 7.8012350000000001
	.quad	0x3fc5aa582dbe7f2c              # double 0.16926099999999999
	.quad	0x401addf37329c348              # double 6.7167490000000001
	.quad	0x400c6fc0d2c386d3              # double 3.554567
	.quad	0x401f8d8a116659d1              # double 7.8882219999999998
	.quad	0x4006684ad794a6ec              # double 2.8009240000000002
	.quad	0x4010d568e820e62a              # double 4.2084080000000004
	.quad	0x3ff6e687f455a7d2              # double 1.4312819999999999
	.quad	0x4020888ace24bba1              # double 8.2666839999999997
	.quad	0x4006eafe60c38f36              # double 2.8647429999999998
	.quad	0x401b0a0ba1f4b1ee              # double 6.7598099999999999
	.quad	0x4013aaa3f034b0e2              # double 4.9166410000000003
	.quad	0x4010d4b124d099e1              # double 4.2077070000000001
	.quad	0x40190a2e3c536d65              # double 6.2599419999999997
	.quad	0x4018b9dbec2480e9              # double 6.1815030000000002
	.quad	0x4015b36ef8055fbb              # double 5.4252279999999997
	.quad	0x3ffa8029f16b11c7              # double 1.65629
	.quad	0x4007e132b55ef1fe              # double 2.9849600000000001
	.quad	0x40103f840181e03f              # double 4.0620269999999996
	.quad	0x4014dfeb8d823422              # double 5.2186719999999998
	.quad	0x400a8e6d9be4cd75              # double 3.3195450000000002
	.quad	0x401e45b317efe0ce              # double 7.568066
	.quad	0x4004e9bbf0dc768e              # double 2.614128
	.quad	0x4022068ab4fa4830              # double 9.0127769999999998
	.quad	0x3ff1a682b6284599              # double 1.1031519999999999
	.quad	0x4003f9e492bc2fc7              # double 2.4970180000000002
	.quad	0x4023e6ce13f4a98b              # double 9.9507910000000006
	.quad	0x401a009f1f14983d              # double 6.5006069999999996
	.quad	0x401b133acd5b6806              # double 6.7687790000000003
	.quad	0x40207022ff08893b              # double 8.2190169999999991
	.quad	0x40209e90364388ec              # double 8.3096940000000003
	.quad	0x40147b91b3f20a74              # double 5.120673
	.quad	0x4014df687b139c95              # double 5.218172
	.quad	0x401b5bddb9841aac              # double 6.8397129999999997
	.quad	0x40208c0357a35504              # double 8.2734629999999995
	.quad	0x4011dae2541d8e86              # double 4.4637539999999998
	.quad	0x4010a772d5e071c5              # double 4.1635239999999998
	.quad	0x40147157eed45e92              # double 5.1106870000000004
	.quad	0x40111324c8366517              # double 4.2686950000000001
	.quad	0x4018408dd1e53a82              # double 6.0630410000000001
	.quad	0x4012528e0c9d9d34              # double 4.5806199999999997
	.quad	0x4022c79c4113c686              # double 9.3898639999999993
	.quad	0x3fffc564f97edc7f              # double 1.985692
	.quad	0x401e85ac471b4784              # double 7.6305399999999999
	.quad	0x4010b38bcdfefbf4              # double 4.175338
	.quad	0x4000df84449dbec2              # double 2.1091389999999999
	.quad	0x40233c4c37e6f71a              # double 9.6177689999999991
	.quad	0x3ffa070110a137f4              # double 1.6267100000000001
	.quad	0x401af231c64ba94c              # double 6.7365180000000002
	.quad	0x4003b05186db50f4              # double 2.461093
	.quad	0x401eed8dbcec84f9              # double 7.731986
	.quad	0x40017966be7afa72              # double 2.1842779999999999
	.quad	0x4020f8e1f7d73c92              # double 8.4860989999999994
	.quad	0x3fbc54ac29bf162b              # double 0.110667
	.quad	0x401588e7ddca4b12              # double 5.3836969999999997
	.quad	0x401884345cfede98              # double 6.1291060000000002
	.quad	0x4019e86162f166e0              # double 6.476934
	.quad	0x402279d55e6bc622              # double 9.2379560000000005
	.quad	0x40199b37867f0aa2              # double 6.4015789999999999
	.quad	0x40215c93ea2d2fe4              # double 8.680816
	.quad	0x3ff2e0589acbc8c1              # double 1.179772
	.quad	0x4021ceb1a2a4db16              # double 8.9036989999999996
	.quad	0x3fb900c521dda05a              # double 0.097668000000000004
	.quad	0x40106787485e3da3              # double 4.101102
	.quad	0x400a2b228dc981bf              # double 3.2710620000000001
	.quad	0x3fff52a411c2a023              # double 1.957676
	.quad	0x400c98476f2a5a47              # double 3.5743550000000002
	.quad	0x401da6c0d6f544bb              # double 7.4128449999999999
	.quad	0x4008be2f7b17ce53              # double 3.0928640000000001
	.quad	0x4016418372e6a769              # double 5.5639779999999996
	.quad	0x400fb9b13165d399              # double 3.9656699999999998
	.quad	0x401b377186551937              # double 6.804144
	.quad	0x401a59142b302f73              # double 6.5869910000000003
	.quad	0x402185e310dbf056              # double 8.7614979999999996
	.quad	0x40143a1a0cf1800a              # double 5.0567399999999996
	.quad	0x401088fffbce4218              # double 4.1337890000000002
	.quad	0x4021fb721d53cddd              # double 8.9911049999999992
	.quad	0x401dc330d738609a              # double 7.4406160000000003
	.quad	0x400ccea5b530ced5              # double 3.600902
	.quad	0x3ff26c56d5cfaace              # double 1.1514500000000001
	.quad	0x402262b4528283d3              # double 9.1927819999999993
	.quad	0x401aecc6c54bcf0b              # double 6.7312269999999996
	.quad	0x401891c4b90214ad              # double 6.1423519999999998
	.quad	0x40210bf6c2699c7c              # double 8.5233670000000003
	.quad	0x40229f090f733a8a              # double 9.3106159999999996
	.quad	0x4011e6e7e62dc6e3              # double 4.4754940000000003
	.quad	0x40205ea0ba1f4b1f              # double 8.1848200000000002
	.quad	0x40218bdf2a9d627c              # double 8.773187
	.quad	0x400f29a4df47f994              # double 3.8953340000000001
	.quad	0x4014f662bae03b3f              # double 5.2406110000000004
	.quad	0x3fce60dcb9a9da59              # double 0.23733099999999999
	.quad	0x40163797891e2153              # double 5.5542889999999998
	.quad	0x3ff87c2fc69728a6              # double 1.530319
	.quad	0x401d1ee0b0af5fd4              # double 7.2801539999999996
	.quad	0x4020b225742dcf46              # double 8.3479419999999998
	.quad	0x3fd2f0bf1a5ca298              # double 0.29594399999999998
	.quad	0x401f9c197e564734              # double 7.9024409999999996
	.quad	0x4018651c9f72f76e              # double 6.0987419999999997
	.quad	0x401fa2556d19dece              # double 7.9085289999999997
	.quad	0x4016d8f2e05ccc8a              # double 5.7118640000000003
	.quad	0x401c4f72b4528284              # double 7.0775860000000002
	.quad	0x40186266772d5e07              # double 6.0960939999999999
	.quad	0x4020bfb43d89ce4a              # double 8.3744219999999991
	.quad	0x4015d314ca925fe9              # double 5.4561339999999996
	.quad	0x4005b12a94ff0026              # double 2.7115070000000001
	.quad	0x4009d2f7f498c3b1              # double 3.2280120000000001
	.quad	0x40142364388ebcc7              # double 5.0345620000000002
	.quad	0x400815464dc22ab2              # double 3.0103879999999998
	.quad	0x4019dd1d041cc533              # double 6.4659310000000003
	.quad	0x4023610752da9867              # double 9.6895089999999992
	.quad	0x401da013ec460ed8              # double 7.4063259999999999
	.quad	0x4010f6f4be835dee              # double 4.241168
	.quad	0x4021d6b56fb8f57f              # double 8.9193529999999992
	.quad	0x3ff799e0e736049f              # double 1.475068
	.quad	0x40213718eb895076              # double 8.6076119999999996
	.quad	0x400354ca925fe975              # double 2.4164020000000002
	.quad	0x402210e1d6494d51              # double 9.0329730000000001
	.quad	0x40138e0653005815              # double 4.8886960000000004
	.quad	0x401a92bd3c361134              # double 6.6433
	.quad	0x401623ad5bee3d60              # double 5.5348410000000001
	.quad	0x4016212c6ac215ba              # double 5.5323960000000003
	.quad	0x4020ac0f88333fc8              # double 8.3360559999999992
	.quad	0x3fe2b18548a9bcfd              # double 0.58416999999999997
	.quad	0x40204174a3400b89              # double 8.1278430000000004
	.quad	0x4015f5803cd141a7              # double 5.4897470000000004
	.quad	0x40102163fdd65a14              # double 4.0326079999999997
	.quad	0x3fc7c5931ca7d673              # double 0.18571699999999999
	.quad	0x40058b295e9e1b09              # double 2.6929500000000002
	.quad	0x401b90728e92d55a              # double 6.8910619999999998
	.quad	0x401c1ac9afe1da7b              # double 7.02616
	.quad	0x40233b1ec0b56755              # double 9.6154689999999991
	.quad	0x3fbb359ff4fd6d7f              # double 0.10628700000000001
	.quad	0x4005e4e26d4801f7              # double 2.7367599999999999
	.quad	0x3ff0945953586ca9              # double 1.0362180000000001
	.quad	0x401f65ad538ac190              # double 7.8492940000000004
	.quad	0x4015a534373f316e              # double 5.4113319999999998
	.quad	0x4013284ec636b096              # double 4.7893629999999998
	.quad	0x4013b392e1ef73c1              # double 4.9253650000000002
	.quad	0x3fd9a53b8e4b87be              # double 0.40071000000000001
	.quad	0x3fb866f5019f3c71              # double 0.095321000000000003
	.quad	0x3fd712ec6bce8534              # double 0.36053000000000002
	.quad	0x400f9b70ef566491              # double 3.9508990000000002
	.quad	0x40114b24e9c45458              # double 4.3233829999999998
	.quad	0x400976188b11409a              # double 3.1826639999999999
	.quad	0x40134cb5bb384fd3              # double 4.8249120000000003
	.quad	0x402007ea5f84cad5              # double 8.0154599999999991
	.quad	0x40169d8d79d0a676              # double 5.6538599999999999
	.quad	0x401f39f72f76e610              # double 7.8066069999999996
	.quad	0x4013a2d38476f2a6              # double 4.9090100000000003
	.quad	0x400d41adea897636              # double 3.65707
	.quad	0x4019092c49342678              # double 6.2589579999999998
	.quad	0x3fe03a6efc371da3              # double 0.50713299999999994
	.quad	0x402071e9d0e991ff              # double 8.2224869999999992
	.quad	0x4020cc61522a6f3f              # double 8.3991799999999994
	.quad	0x4013800192a73711              # double 4.875006
	.quad	0x401d434b945308bc              # double 7.3157180000000004
	.quad	0x3fd948beb5b2d4d4              # double 0.395065
	.quad	0x400f282278d0cc36              # double 3.8945970000000001
	.quad	0x4003b29cbab649d4              # double 2.4622130000000002
	.quad	0x4007ef88333fc86d              # double 2.991959
	.quad	0x3fe5ceb13dfb0d52              # double 0.681481
	.quad	0x4023aea65cf67b1c              # double 9.8411129999999999
	.quad	0x4016799567dbb16c              # double 5.6187339999999999
	.quad	0x401cb20b3d4ae42a              # double 7.1738710000000001
	.quad	0x4014e827b6fe2e6f              # double 5.2267140000000003
	.quad	0x40215b9e279dd3bb              # double 8.678941
	.quad	0x400279e16d6dc1a4              # double 2.3095119999999998
	.quad	0x400729068986fcdf              # double 2.895032
	.quad	0x4023fe4a9cdc4439              # double 9.9966629999999998
	.quad	0x4012f7aa68f4b620              # double 4.7418610000000001
	.quad	0x4019fbb0e5e67946              # double 6.4957919999999998
	.quad	0x401c7d14a0a0f4d8              # double 7.1221490000000003
	.quad	0x401311f687b139c9              # double 4.7675419999999997
	.quad	0x401aacbc8c0ce91d              # double 6.6686880000000004
	.quad	0x401dd68986fcdee3              # double 7.4595089999999997
	.quad	0x40224db4677b395c              # double 9.1517669999999995
	.quad	0x401568a7e73a365d              # double 5.3522030000000003
	.quad	0x4004d6c82e019b0b              # double 2.6048740000000001
	.quad	0x3fc406a6e32e3822              # double 0.15645300000000001
	.quad	0x400842d2fe3f35a0              # double 3.032629
	.quad	0x400237585be1a826              # double 2.2770239999999999
	.quad	0x401244f483cafb3b              # double 4.5673389999999996
	.quad	0x3fe4c91f2dc2b0ea              # double 0.64955099999999999
	.quad	0x40136cb8e086bdf5              # double 4.8561740000000002
	.quad	0x400ba07b352a8438              # double 3.45336
	.quad	0x4019e7fc32ebe597              # double 6.4765480000000002
	.quad	0x400c7219220ff541              # double 3.5557120000000002
	.quad	0x402254e5b4245f5b              # double 9.1658150000000003
	.quad	0x3ffec93964a59c06              # double 1.9241269999999999
	.quad	0x401182a7bd48cb4b              # double 4.3775930000000001
	.quad	0x401f4e8b3b320536              # double 7.8267030000000002
	.quad	0x3fd6942d490e66cb              # double 0.352794
	.quad	0x401d90f51ac9afe2              # double 7.3915600000000001
	.quad	0x400177a89331a08c              # double 2.183427
	.quad	0x40079550ca1cef24              # double 2.947908
	.quad	0x401fd86b59146e4c              # double 7.961347
	.quad	0x40231aac753e707e              # double 9.5520969999999998
	.quad	0x400f32a0ec743201              # double 3.899721
	.quad	0x3ff78898f605ab3b              # double 1.4708490000000001
	.quad	0x4022912c061847f5              # double 9.2835389999999993
	.quad	0x4013b5f91600f345              # double 4.927708
	.quad	0x4015d0b135979182              # double 5.4538010000000003
	.quad	0x401d418e325d4a5e              # double 7.314019
	.quad	0x3ff43506dd69d302              # double 1.2629459999999999
	.quad	0x401ee3bbc6eb0b7c              # double 7.7223959999999998
	.quad	0x40149bcfd4bf0996              # double 5.1521600000000003
	.quad	0x4021635d67ba237d              # double 8.6940720000000002
	.quad	0x3fe2e5ffa3b9ae0c              # double 0.59057599999999999
	.quad	0x4021db57c4e2f380              # double 8.9284040000000005
	.quad	0x402141947cfa26a2              # double 8.6280859999999997
	.quad	0x4015d18548a9bcfd              # double 5.4546099999999997
	.quad	0x40169392e1ef73c1              # double 5.6441150000000002
	.quad	0x4020c1cf355cd91f              # double 8.3785340000000001
	.quad	0x401d33edd8b60f1b              # double 7.3007119999999999
	.quad	0x400340c8472c0e7c              # double 2.4066320000000001
	.quad	0x401515696e58a32f              # double 5.2709099999999998
	.quad	0x401f4087442c7fbb              # double 7.8130160000000001
	.quad	0x3ffc162174c4cdfb              # double 1.755403
	.quad	0x3ff41856a37ac3eb              # double 1.2559419999999999
	.quad	0x4015e0b135979182              # double 5.4694260000000003
	.quad	0x40239ad9274e22a3              # double 9.8024380000000004
	.quad	0x3fe9c34c1a8ac5c1              # double 0.80508999999999997
	.quad	0x4003d37329c347e9              # double 2.4782470000000001
	.quad	0x3fe6440f23897204              # double 0.69580799999999998
	.quad	0x4021660b0af5fd48              # double 8.6993030000000005
	.quad	0x40085e2d6238da3c              # double 3.0459849999999999
	.quad	0x40089e5a78f25a25              # double 3.077321
	.quad	0x4016628b6d86ec18              # double 5.5962350000000001
	.quad	0x3ffbaaa3ad18d25f              # double 1.72916
	.quad	0x4016d0fc2eba27af              # double 5.7040870000000004
	.quad	0x401b703211cb039f              # double 6.8595660000000001
	.quad	0x40112ba51a005c46              # double 4.2926219999999997
	.quad	0x4003d40e5a35d67c              # double 2.4785430000000002
	.quad	0x3ffb1450efdc9c4e              # double 1.6924600000000001
	.quad	0x4022b114f483cafb              # double 9.3458629999999996
	.quad	0x3fe049de05037500              # double 0.50901700000000005
	.quad	0x4012bdc725c3dee8              # double 4.6853300000000004
	.quad	0x40009d7a99fa11a9              # double 2.0768939999999998
	.quad	0x3fd9192a737110e4              # double 0.39216099999999998
	.quad	0x3fe71ef73c0c1fc9              # double 0.72253000000000001
	.quad	0x40149d1f601797cc              # double 5.1534399999999998
	.quad	0x400377b6bb129025              # double 2.4334539999999998
	.quad	0x4023a783be6601bd              # double 9.8271770000000007
	.quad	0x400f59c304ccee5b              # double 3.9188290000000001
	.quad	0x401de18a86d71f36              # double 7.4702549999999999
	.quad	0x40131a52ef911cf3              # double 4.7757069999999997
	.quad	0x3ff34114d2f5dbba              # double 1.203389
	.quad	0x4009b86a8fc0d2c4              # double 3.2150470000000002
	.quad	0x401913b42cc2d6aa              # double 6.2692420000000002
	.quad	0x40077de939eadd59              # double 2.93648
	.quad	0x4018969e3c968944              # double 6.1470880000000001
	.quad	0x4009ba31a4bdba0a              # double 3.2159149999999999
	.quad	0x400827620ee8d10f              # double 3.0192299999999999
	.quad	0x401263b6cbd987c6              # double 4.5973769999999998
	.quad	0x4019061b2a27f1b7              # double 6.2559630000000004
	.quad	0x3feba4edf6124074              # double 0.86388299999999995
	.quad	0x401dd077ccc03793              # double 7.4535819999999999
	.quad	0x401452830a0b1bbd              # double 5.080578
	.quad	0x401cff38c5436b90              # double 7.2492400000000004
	.quad	0x4011b824d4cb9ecf              # double 4.4298279999999997
	.quad	0x401340307f23cc8e              # double 4.8126850000000001
	.quad	0x400583382e44b6e9              # double 2.6890719999999999
	.quad	0x401e40f66a550870              # double 7.5634399999999999
	.quad	0x4014bc57e23f24d9              # double 5.183929
	.quad	0x4013ad31769a9110              # double 4.9191339999999997
	.quad	0x40142980f55de58e              # double 5.0405309999999997
	.quad	0x4023e9756c93a711              # double 9.9559739999999994
	.quad	0x40173308787485e4              # double 5.7998370000000001
	.quad	0x40223ac0e7bc3c5c              # double 9.1147530000000003
	.quad	0x400226d58c8eef1c              # double 2.2689620000000001
	.quad	0x4023cbcc07aaef2c              # double 9.8980409999999992
	.quad	0x4003372606fac604              # double 2.4019279999999998
	.quad	0x400a5a8f7db6e504              # double 3.294219
	.quad	0x401a7db163baba7c              # double 6.6227470000000004
	.quad	0x40065cb46bacf744              # double 2.7952659999999998
	.quad	0x401dffba8826aa8f              # double 7.4997350000000002
	.quad	0x401503f705857aff              # double 5.2538720000000003
	.quad	0x400e7e7c06e19b91              # double 3.81176
	.quad	0x401ca837b4a2339c              # double 7.1642749999999999
	.quad	0x3fd94e831ad2135e              # double 0.39541700000000002
	.quad	0x400744e379b77c03              # double 2.9086370000000001
	.quad	0x401f9b951c5c5719              # double 7.901936
	.quad	0x40196da4ce8101f3              # double 6.3570739999999999
	.quad	0x3fe5511be6e65387              # double 0.66615100000000005
	.quad	0x400c7bc77143393b              # double 3.5604390000000001
	.quad	0x3fd8be76c8b43958              # double 0.386625
	.quad	0x40154afdda8bd231              # double 5.3232340000000002
	.quad	0x401517ee9142b303              # double 5.273371
	.quad	0x4022d79b77c02afe              # double 9.4211080000000003
	.quad	0x400b51fff79c8430              # double 3.4150390000000002
	.quad	0x4019a62e90364389              # double 6.4122870000000001
	.quad	0x3fee507852f7f499              # double 0.94732300000000003
	.quad	0x4008cbee807bbb62              # double 3.0995759999999999
	.quad	0x3ff3b6e82949a565              # double 1.2321549999999999
	.quad	0x3feb770de8f6ceff              # double 0.85828300000000002
	.quad	0x3ff5783cf2cf95d5              # double 1.341855
	.quad	0x3ff07a0b5ed8d36b              # double 1.0297959999999999
	.quad	0x4023d8ced4e4c943              # double 9.9234530000000003
	.quad	0x4021964c51116a8c              # double 8.7935510000000007
	.quad	0x4009a232096787cf              # double 3.2041970000000002
	.quad	0x4020be53a81dc0db              # double 8.3717319999999997
	.quad	0x4023803686a4ca4f              # double 9.7504159999999995
	.quad	0x4017f683c297bfa5              # double 5.9907370000000002
	.quad	0x4022d1aa821f2991              # double 9.409504
	.quad	0x3fe3bb8c32a8c9b8              # double 0.61664399999999997
	.quad	0x3feaab10ba6266fd              # double 0.83338199999999996
	.quad	0x401153c07ee0b0af              # double 4.3317889999999997
	.quad	0x401e37442c7fbacb              # double 7.5539709999999997
	.quad	0x4022fdd6e04c0592              # double 9.4957799999999999
	.quad	0x3ffbf460242d05f3              # double 1.7471620000000001
	.quad	0x3fe28130164840e1              # double 0.57826999999999995
	.quad	0x4023c226a22b3893              # double 9.8792010000000001
	.quad	0x4022ed5de58e64b2              # double 9.4636069999999997
	.quad	0x401774b3c3e74afd              # double 5.8639669999999997
	.quad	0x400f90afe60c38f3              # double 3.9456479999999998
	.quad	0x3ffe465300581494              # double 1.892169
	.quad	0x4010eeb91b3f20a7              # double 4.2331279999999998
	.quad	0x401d97ca2120e1f8              # double 7.3982320000000001
	.quad	0x4023bd8793dd97f6              # double 9.8701749999999997
	.quad	0x40068b417ca2120e              # double 2.8179959999999999
	.quad	0x3fdcb441bb8c32a9              # double 0.44850200000000001
	.quad	0x3fbeb6f19934efcc              # double 0.119979
	.quad	0x3fcfb8f57f737da6              # double 0.247832
	.quad	0x401ef718a86d71f3              # double 7.7413049999999996
	.quad	0x40203d3111f0c34c              # double 8.1195149999999998
	.quad	0x4022091ada76d97b              # double 9.0177829999999997
	.quad	0x400ba4fb97bb7308              # double 3.4555579999999999
	.quad	0x3ffcb8487b99d452              # double 1.794991
	.quad	0x3ff861a719b4dcec              # double 1.523841
	.quad	0x3ff4519bd4067cf2              # double 1.2699240000000001
	.quad	0x40008ba5a038194c              # double 2.068187
	.quad	0x4012c10b1feeb2d1              # double 4.6885190000000003
	.quad	0x400aa9c2c1b10fd8              # double 3.332891
	.quad	0x400e3a8049667b5f              # double 3.778565
	.quad	0x401422b94d940789              # double 5.0339099999999997
	.quad	0x40108c3efae7924b              # double 4.1369590000000001
	.quad	0x3f9584f4c6e6d9be              # double 0.021014999999999999
	.quad	0x401b268986fcdee3              # double 6.7876339999999997
	.quad	0x40229c1c6088d6d4              # double 9.3049040000000005
	.quad	0x4021d790fb65668c              # double 8.9210279999999997
	.quad	0x4003439b456b441c              # double 2.4080110000000001
	.quad	0x4013b1c8a7a41e58              # double 4.9236170000000001
	.quad	0x401c0e56473471f8              # double 7.0140010000000004
	.quad	0x3ff17ee6fb4c3c19              # double 1.0934820000000001
	.quad	0x40012e9813879c41              # double 2.147751
	.quad	0x40225490e66cb103              # double 9.1651679999999995
	.quad	0x401a275ea67e846a              # double 6.5384469999999997
	.quad	0x401a8ab14ec204f3              # double 6.6354420000000003
	.quad	0x401b04bf4cb1897a              # double 6.7546359999999996
	.quad	0x4017cfea3df6db94              # double 5.9530419999999999
	.quad	0x3fc91e7d9988d2a2              # double 0.196243
	.quad	0x402253f0bae89eba              # double 9.1639459999999993
	.quad	0x40120a960b6f9fcb              # double 4.510338
	.quad	0x4002992428d434a0              # double 2.324776
	.quad	0x401e7fe3b03e20cd              # double 7.624892
	.quad	0x4017218e325d4a5e              # double 5.782769
	.quad	0x402025c33721d53d              # double 8.0737550000000002
	.quad	0x401f6052934acaff              # double 7.8440649999999996
	.quad	0x3feb4eca686e7e63              # double 0.85336800000000002
	.quad	0x401aab55ef1fddec              # double 6.6673200000000001
	.quad	0x3fd4f6f08cc575c0              # double 0.32757199999999997
	.quad	0x401404217d2849cb              # double 5.0040339999999999
	.quad	0x40203fb5286b5914              # double 8.1244289999999992
	.quad	0x4022607e5a78f25a              # double 9.1884639999999997
	.quad	0x401fccc20d5629d8              # double 7.9499589999999997
	.quad	0x401ec9d7774aba38              # double 7.6971109999999995
	.quad	0x40206446f9b994e2              # double 8.1958540000000006
	.quad	0x400ba487b99d4520              # double 3.4553370000000001
	.quad	0x4001a900c521dda0              # double 2.2075209999999998
	.quad	0x401611dc93ea2d30              # double 5.5174430000000001
	.quad	0x401a76202539756d              # double 6.6153570000000004
	.quad	0x4003af57f737da62              # double 2.4606170000000001
	.quad	0x4005a3b2dd377e1c              # double 2.7049310000000002
	.quad	0x401f0333fc86cebc              # double 7.7531280000000002
	.quad	0x402062e09fe86834              # double 8.1931200000000004
	.quad	0x401568d6d3b6cbda              # double 5.3523820000000004
	.quad	0x4006eb0318b9346a              # double 2.8647520000000002
	.quad	0x401dbf9b994e1a3f              # double 7.4371169999999998
	.quad	0x40023adc0980b242              # double 2.27874
	.quad	0x400df7681669ced1              # double 3.7458040000000001
	.quad	0x401df9ae924f227d              # double 7.4938299999999999
	.quad	0x40128f9ebe9c8861              # double 4.6402539999999997
	.quad	0x4019647cfa26a22b              # double 6.3481329999999998
	.quad	0x4000442d05f28848              # double 2.0332889999999999
	.quad	0x401cc8ee28672757              # double 7.1962210000000004
	.quad	0x4013d78c0053e2d6              # double 4.9604949999999999
	.quad	0x400dd9c9d5a187a5              # double 3.7313420000000002
	.quad	0x3fddc925785f8d2e              # double 0.46540199999999998
	.quad	0x4014d501e2584f4c              # double 5.2080149999999996
	.quad	0x3ff7b4eb9a176ddb              # double 1.48167
	.quad	0x3ff77f8982cb20fb              # double 1.468637
	.quad	0x4011780a17b0f6ad              # double 4.3672259999999996
	.quad	0x3fe6f9378ee28672              # double 0.71792199999999995
	.quad	0x3fef5ee78183f91e              # double 0.98033499999999996
	.quad	0x4020bb27ed84d339              # double 8.3655390000000001
	.quad	0x400cb62845996745              # double 3.5889440000000001
	.quad	0x401252467be553ac              # double 4.5803469999999997
	.quad	0x402319d7dbf487fd              # double 9.5504750000000004
	.quad	0x400287229e90795f              # double 2.3159839999999998
	.quad	0x401273b85e80bed7              # double 4.6130079999999998
	.quad	0x401d1625204af923              # double 7.2716260000000004
	.quad	0x401e1e8f6cefed63              # double 7.5298439999999997
	.quad	0x401891309c7ffde7              # double 6.1417869999999999
	.quad	0x400fa344c37e6f72              # double 3.9547210000000002
	.quad	0x401e3938de6ddf01              # double 7.5558810000000002
	.quad	0x401e23b0813cab82              # double 7.534853
	.quad	0x4013185b9e8c47a1              # double 4.7737869999999996
	.quad	0x3ff8413986338b48              # double 1.515924
	.quad	0x4011c0c23fab10ba              # double 4.4382409999999997
	.quad	0x401d917c1bda511a              # double 7.3920750000000002
	.quad	0x40038ec95bff0457              # double 2.4447199999999998
	.quad	0x40135e06961c3697              # double 4.8418219999999996
	.quad	0x40212fdac68a936c              # double 8.5934659999999993
	.quad	0x3fc82f0e0a84be40              # double 0.18893599999999999
	.quad	0x40125fa615a8deb1              # double 4.593407
	.quad	0x3fe7c2c3c9eecbfb              # double 0.74252499999999999
	.quad	0x4010ee40852b4d8c              # double 4.2326680000000003
	.quad	0x400252e514c22ee4              # double 2.290476
	.quad	0x400f2bc2fc69728a              # double 3.8963679999999998
	.quad	0x3fdd8ccdd93c46d8              # double 0.46171899999999999
	.quad	0x402383ade225fa66              # double 9.7571860000000008
	.quad	0x400d6e5b4245f5ae              # double 3.6788850000000002
	.quad	0x4002cb7a1c25d074              # double 2.3493539999999999
	.quad	0x401eb5f56a7ac81d              # double 7.6776939999999997
	.quad	0x4014139eadd590c1              # double 5.0191600000000003
	.quad	0x4018d09917939a7c              # double 6.2037089999999999
	.quad	0x401814766c6de764              # double 6.0199829999999999
	.quad	0x401d2acde19fc2a9              # double 7.2918010000000004
	.quad	0x40118c17a89331a1              # double 4.3868090000000004
	.quad	0x402372428d434a02              # double 9.7231640000000006
	.quad	0x401512c343b70ef5              # double 5.2683229999999996
	.quad	0x4023a60ed80a17b1              # double 9.824332
	.quad	0x4022fdb877ab3248              # double 9.4955479999999994
	.quad	0x401b87c914b167ec              # double 6.8826029999999996
	.quad	0x40159b1465e89225              # double 5.4014449999999998
	.quad	0x3ff8af0281ba7fc3              # double 1.542727
	.quad	0x401d04cfd08d4bad              # double 7.2546989999999996
	.quad	0x400a9a797891e215              # double 3.3254269999999999
	.quad	0x3f97a5b0ff10ecb7              # double 0.023092999999999999
	.quad	0x4022d134ce3de615              # double 9.4086060000000006
	.quad	0x3ff6aba7b9170d63              # double 1.4169080000000001
	.quad	0x4015c18090b417ca              # double 5.4389669999999999
	.quad	0x3ffa9171e29b6b2b              # double 1.660509
	.quad	0x400606088d6d3b6d              # double 2.7529460000000001
	.quad	0x4014abe76c8b4396              # double 5.1678750000000004
	.quad	0x400eb79bfdf7e804              # double 3.8396530000000002
	.quad	0x4016ad96e9bbf0dc              # double 5.6695209999999996
	.quad	0x40220324e9c45458              # double 9.0061409999999995
	.quad	0x40164c197e564734              # double 5.5743159999999996
	.quad	0x4010ac332f01754b              # double 4.168164
	.quad	0x3ff0b59146e4c0df              # double 1.0443279999999999
	.quad	0x3fff53d20f2becee              # double 1.957964
	.quad	0x402340f1d3ed527e              # double 9.6268449999999994
	.quad	0x4021e6ae3a3a8e71              # double 8.9505479999999995
	.quad	0x4011387724fa8b4c              # double 4.305142
	.quad	0x402218f7b9e060fe              # double 9.0487649999999995
	.quad	0x402287d47bedb728              # double 9.2652929999999997
	.quad	0x4021808f42fe8251              # double 8.7510929999999991
	.quad	0x401ae861e92923e6              # double 6.7269360000000002
	.quad	0x401ad7cbf6e3f78c              # double 6.7107390000000002
	.quad	0x401f45bd0e12e83a              # double 7.8181039999999999
	.quad	0x401fe726d04e618d              # double 7.9757340000000001
	.quad	0x40023269595feda6              # double 2.2746149999999998
	.quad	0x4010208c8259e1f4              # double 4.0317860000000003
	.quad	0x3fef42480e8c8abd              # double 0.97684099999999995
	.quad	0x3ff4dc4c9c90c4df              # double 1.3037840000000001
	.quad	0x401418def416bdb2              # double 5.0242880000000003
	.quad	0x401ba3f2d3c792d1              # double 6.9101059999999999
	.quad	0x40171f727136a401              # double 5.78071
	.quad	0x3ff9b1876188b114              # double 1.605842
	.quad	0x401f62a305532618              # double 7.8463250000000002
	.quad	0x400ee025bfad2999              # double 3.8594469999999998
	.quad	0x4012e7f950b955f8              # double 4.7265370000000004
	.quad	0x400514003254e6e2              # double 2.6347659999999999
	.quad	0x402238101f31f46f              # double 9.1094980000000003
	.quad	0x401d069d7342edbb              # double 7.2564599999999997
	.quad	0x400d04638c975297              # double 3.6271429999999998
	.quad	0x402094a9478c868c              # double 8.2903540000000006
	.quad	0x401a81d68c692f6f              # double 6.6267950000000004
	.quad	0x401192be0589acbd              # double 4.3933030000000004
	.quad	0x40212a372606fac6              # double 8.582452
	.quad	0x3ffa8b5568e820e6              # double 1.659017
	.quad	0x4021b51b4fe79ee0              # double 8.8537239999999997
	.quad	0x3fe90fd7e45803cd              # double 0.78318399999999999
	.quad	0x401415a6c5d206c8              # double 5.0211439999999996
	.quad	0x401050bbf50e3476              # double 4.0788419999999999
	.quad	0x4008a83e425aee63              # double 3.0821499999999999
	.quad	0x40095d3804534bd7              # double 3.1705169999999998
	.quad	0x40030f1a9fbe76c9              # double 2.3823750000000001
	.quad	0x401cfd10f51ac9b0              # double 7.2471350000000001
	.quad	0x401a62c6ef3d3a1d              # double 6.5964619999999998
	.quad	0x4004d3a2df9378ee              # double 2.6033379999999999
	.quad	0x3ff7e355043e5322              # double 1.493001
	.quad	0x40239d8c8eef1bac              # double 9.8077129999999996
	.quad	0x3fed4857f3061c7a              # double 0.91508100000000003
	.quad	0x40227c0b5675579b              # double 9.2422740000000001
	.quad	0x401ad9f127f5e84f              # double 6.712834
	.quad	0x4011880303c07ee1              # double 4.3828240000000003
	.quad	0x3feaadf9378ee286              # double 0.83373699999999995
	.quad	0x3fff99652bd3c361              # double 1.97495
	.quad	0x401c9f66e86c6584              # double 7.1556660000000001
	.quad	0x40227aa3cea6c1a0              # double 9.2395309999999995
	.quad	0x3ff85ddf43c7d5ed              # double 1.522918
	.quad	0x401147c5260f5e42              # double 4.3200880000000002
	.quad	0x401749c0a8d21bc1              # double 5.8220239999999999
	.quad	0x4007ea8a82a5614e              # double 2.989522
	.quad	0x4020c15b573eab36              # double 8.3776499999999992
	.quad	0x3fe9c60ed80a17b1              # double 0.805427
	.quad	0x40105e1deacc9214              # double 4.0919109999999996
	.quad	0x401083a4f8726d05              # double 4.1285590000000001
	.quad	0x401c5e86833c6003              # double 7.0923100000000003
	.quad	0x400c13404ea4a8c1              # double 3.5093999999999999
	.quad	0x401971f10667f90e              # double 6.3612710000000003
	.quad	0x40010862f5989df1              # double 2.129095
	.quad	0x401fb85c24c404a7              # double 7.9300389999999998
	.quad	0x3fe280ffda4052d6              # double 0.57824699999999996
	.quad	0x401031b4784230fd              # double 4.04854
	.quad	0x401ad89b0ee49f51              # double 6.7115289999999996
	.quad	0x40210faf42784a94              # double 8.5306339999999991
	.quad	0x40232bec892ab68d              # double 9.5857890000000001
	.quad	0x40181fb8b26394fb              # double 6.0309780000000002
	.quad	0x40084219eb6390c9              # double 3.032276
	.quad	0x3fea086162f166e0              # double 0.81352299999999999
	.quad	0x402278d3cff64cf9              # double 9.2359910000000003
	.quad	0x400da646f1561911              # double 3.7061899999999999
	.quad	0x40236d4c122749f1              # double 9.7134710000000001
	.quad	0x3ffc1d19157abb88              # double 1.757104
	.quad	0x401da2c94b380cb7              # double 7.4089710000000002
	.quad	0x3ffb64b662fdfc1a              # double 1.7120880000000001
	.quad	0x40195c964628027e              # double 6.3404170000000004
	.quad	0x4020b1157abb8801              # double 8.3458670000000001
	.quad	0x3ff7518c197e5647              # double 1.457409
	.quad	0x3ff6ffe08aefb2ab              # double 1.43747
	.quad	0x4002718e325d4a5e              # double 2.305447
	.quad	0x3fdf814d72799a20              # double 0.49226700000000001
	.quad	0x4014a1a08bfc2225              # double 5.1578390000000001
	.quad	0x401097fdc5931ca8              # double 4.1484290000000001
	.quad	0x3ffe1903a7546d40              # double 1.8811070000000001
	.quad	0x401cd7a85015c209              # double 7.2106029999999999
	.quad	0x40070664d3bf2f55              # double 2.8781219999999998
	.quad	0x401576c508b32ce9              # double 5.3659860000000004
	.quad	0x40184dacabc51548              # double 6.0758539999999996
	.quad	0x400b9f4f50a02b84              # double 3.452788
	.quad	0x4012fcdc8754f377              # double 4.7469349999999997
	.quad	0x401ebde8b3b32053              # double 7.6854579999999996
	.quad	0x3fd3d92b7fe08af0              # double 0.31013000000000002
	.quad	0x4010105d0fa58f71              # double 4.0159799999999999
	.quad	0x40225b0a6fc58ab9              # double 9.1778139999999997
	.quad	0x401096abde3fbbd8              # double 4.1471400000000003
	.quad	0x4006c1d19157abb9              # double 2.8446380000000002
	.quad	0x401ad39e6ab9b23e              # double 6.7066590000000001
	.quad	0x4013a97bfa4c61d8              # double 4.9155119999999997
	.quad	0x40069722e1ac57e2              # double 2.8237969999999999
	.quad	0x401b7c026cc1ca3a              # double 6.8711029999999997
	.quad	0x4023da41e57d9dbb              # double 9.9262840000000007
	.quad	0x3ffe729f59ccfaf0              # double 1.902984
	.quad	0x401ca295208e1501              # double 7.1587719999999999
	.quad	0x4022b626f60e0eb6              # double 9.3557659999999991
	.quad	0x40124d2cbea4ebdd              # double 4.5753659999999998
	.quad	0x3ffbf1422ccb3a26              # double 1.7464010000000001
	.quad	0x3fca42bf9830e3ce              # double 0.20516200000000001
	.quad	0x400b0a3400b88ca4              # double 3.379982
	.quad	0x401317a311e85fd0              # double 4.7730829999999997
	.quad	0x400aa686e7e62dc7              # double 3.3313120000000001
	.quad	0x402366f5a964e8b8              # double 9.7010930000000001
	.quad	0x402352df505d0fa6              # double 9.6618600000000008
	.quad	0x400f5d63022dd7aa              # double 3.9205990000000002
	.quad	0x3ff32ed99cbee808              # double 1.1989380000000001
	.quad	0x401ea19b90ea9e6f              # double 7.65782
	.quad	0x4017381cb46bacf7              # double 5.8047969999999998
	.quad	0x3ffb6797891e2153              # double 1.712791
	.quad	0x401d0ea0ba1f4b1f              # double 7.2642850000000001
	.quad	0x3ffc60f5e41d4b6a              # double 1.7736719999999999
	.quad	0x400447a5b0ff10ed              # double 2.5349840000000001
	.quad	0x401048f190d173fb              # double 4.0712339999999996
	.quad	0x40003bd48cb4aec9              # double 2.0292140000000001
	.quad	0x3ffe9f6124074645              # double 1.9139109999999999
	.quad	0x4022420578e5c4eb              # double 9.1289479999999994
	.quad	0x401ab3e1437c5693              # double 6.6756640000000003
	.quad	0x3ff082352eb5f5f1              # double 1.0317890000000001
	.quad	0x4023bc95182a9931              # double 9.8683250000000004
	.quad	0x401ab40e1719f7f9              # double 6.6758350000000002
	.quad	0x3fe349129888f862              # double 0.60267000000000004
	.quad	0x4000d85d744f5d35              # double 2.1056469999999998
	.quad	0x400ba67168f8e7de              # double 3.4562710000000001
	.quad	0x401a7bf9c62a1b5c              # double 6.6210699999999996
	.quad	0x401a850fc71d6063              # double 6.6299429999999999
	.quad	0x3ffa59103c8e25c8              # double 1.646744
	.quad	0x401663d03968d75a              # double 5.5974740000000001
	.quad	0x401b355de58e64b2              # double 6.8021159999999998
	.quad	0x401a47bd48cb4aed              # double 6.5700580000000004
	.quad	0x4014501abd1aa822              # double 5.078227
	.quad	0x401f56b54e2b063e              # double 7.834676
	.quad	0x400d61e7967caea7              # double 3.6728049999999999
	.quad	0x401d1aed1394317b              # double 7.2762950000000002
	.quad	0x3fe5d9ea57214f05              # double 0.68285099999999999
	.quad	0x400a0567125dd096              # double 3.2526380000000001
	.quad	0x4009b62ae4b01861              # double 3.2139489999999999
	.quad	0x401b53d68405b39e              # double 6.8318729999999999
	.quad	0x400eb7ca2120e1f8              # double 3.8397410000000001
	.quad	0x40123c679cc74b84              # double 4.5589890000000004
	.quad	0x400765004fb1183b              # double 2.9243169999999998
	.quad	0x4015b69a4df47f99              # double 5.4283229999999998
	.quad	0x4020ca6c3b927d46              # double 8.3953570000000006
	.quad	0x3feaca7935760392              # double 0.83721599999999996
	.quad	0x4003fc4b09e98dce              # double 2.4981900000000001
	.quad	0x4004de23f24d8fd6              # double 2.6084670000000001
	.quad	0x4011dec3547e0696              # double 4.4675419999999999
	.quad	0x3fdee2cdc011d367              # double 0.48259299999999999
	.quad	0x40186feb8d823422              # double 6.1092969999999998
	.quad	0x3fea56238da3c212              # double 0.82301500000000005
	.quad	0x400e226351deefe5              # double 3.766791
	.quad	0x3ffd8d306a2b1705              # double 1.84697
	.quad	0x402175a87a072d1b              # double 8.7298010000000001
	.quad	0x40199ae2da554b8c              # double 6.4012560000000001
	.quad	0x401900d5e8d54110              # double 6.2508160000000004
	.quad	0x3fe98be2f7b17ce5              # double 0.79832599999999998
	.quad	0x4003be99e94ab1d5              # double 2.468067
	.quad	0x4016e5536933a040              # double 5.7239509999999996
	.quad	0x401bfffc9795b35b              # double 6.999987
	.quad	0x3fd72c55c96030c2              # double 0.36208099999999999
	.quad	0x4019f264a16a4873              # double 6.4867119999999998
	.quad	0x4023692d1287c201              # double 9.7054220000000004
	.quad	0x4023efdcdf698783              # double 9.9684819999999998
	.quad	0x40223c2dadb8348f              # double 9.1175359999999994
	.quad	0x4021bc33508f648c              # double 8.8675789999999992
	.quad	0x401de0f345069a4e              # double 7.469678
	.quad	0x401a6009b30728e9              # double 6.5937869999999998
	.quad	0x3fead0d2806af46b              # double 0.83799100000000004
	.quad	0x400754da4ce8101f              # double 2.9164319999999999
	.quad	0x40212b5fc3b4f616              # double 8.5847149999999992
	.quad	0x40010bfa0945f9df              # double 2.1308479999999999
	.quad	0x4021c93660e51d26              # double 8.8929930000000006
	.quad	0x400c288051c9f72f              # double 3.5197759999999998
	.quad	0x4020d0c67168f8e8              # double 8.4077640000000002
	.quad	0x40233bcddd6e04c0              # double 9.6168049999999993
	.quad	0x40214a94dd72367e              # double 8.6456669999999995
	.quad	0x4014052220bc382a              # double 5.0050129999999999
	.quad	0x4022a8014f8b588e              # double 9.3281349999999996
	.quad	0x401c434df04ddb55              # double 7.0657269999999999
	.quad	0x3fc6f4a558ea7ce1              # double 0.179341
	.quad	0x40113f572de43ed9              # double 4.3118559999999997
	.quad	0x402300548a9bcfd5              # double 9.5006450000000004
	.quad	0x40230102ff8ec0f9              # double 9.5019760000000008
	.quad	0x40176059ea57214f              # double 5.844093
	.quad	0x4021ed06dd69d302              # double 8.9629429999999992
	.quad	0x400755970b49e01e              # double 2.9167920000000001
	.quad	0x4021d207b352a844              # double 8.9102150000000008
	.quad	0x40119c65c70435f0              # double 4.4027320000000003
	.quad	0x4016a8bbd3804535              # double 5.6647790000000002
	.quad	0x3ffcb10cb295e9e2              # double 1.7932250000000001
	.quad	0x4007c357a355043e              # double 2.9703819999999999
	.quad	0x3fed9b36bd2b6f1a              # double 0.92519700000000005
	.quad	0x40147d4e4c942d49              # double 5.122369
	.quad	0x4006a8986fcdee35              # double 2.832322
	.quad	0x40134a79fec99f1b              # double 4.8227310000000001
	.quad	0x40057d54da4ce810              # double 2.6861969999999999
	.quad	0x401f41c4b90214ad              # double 7.8142269999999998
	.quad	0x3fe07079e59f2baa              # double 0.51373000000000002
	.quad	0x4016c9014b599aa6              # double 5.696294
	.quad	0x400be8c26138fffc              # double 3.4886520000000001
	.quad	0x4023405b39e279dd              # double 9.6256959999999995
	.quad	0x3ffb8851a8694035              # double 1.7207809999999999
	.quad	0x4023d79314445aa3              # double 9.9210440000000001
	.quad	0x40200d907d912557              # double 8.0264930000000003
	.quad	0x4021d5af07bfe7e2              # double 8.917351
	.quad	0x4023049129888f86              # double 9.5089199999999998
	.quad	0x4009636544fe36d2              # double 3.1735329999999999
	.quad	0x40163f4f0d844d01              # double 5.5618249999999998
	.quad	0x401e98b6d86ec17f              # double 7.6491350000000002
	.quad	0x401f8ebb7739f341              # double 7.8893870000000001
	.quad	0x40147f0e90bc7b46              # double 5.1240790000000001
	.quad	0x3fe426809d495183              # double 0.62970000000000004
	.quad	0x400e7ed41b75a74c              # double 3.811928
	.quad	0x4000a33ce63a5c1c              # double 2.0797059999999998
	.quad	0x401c200f345069a5              # double 7.0313080000000001
	.quad	0x400ba586876e1deb              # double 3.4558230000000001
	.quad	0x401a2d71f36262cc              # double 6.5443800000000003
	.quad	0x401f961b2a27f1b7              # double 7.8965880000000003
	.quad	0x40114481b21c475e              # double 4.3169009999999997
	.quad	0x401ec1dbca9691a7              # double 7.6893149999999996
	.quad	0x3ff365bd944aa540              # double 1.2123390000000001
	.quad	0x3ff2f9d1b2e59afa              # double 1.185991
	.quad	0x40154b8b69552e30              # double 5.3237740000000002
	.quad	0x40217f16b11c6d1e              # double 8.7482199999999999
	.quad	0x40238006d0d4994a              # double 9.7500520000000002
	.quad	0x3ff1071d60631727              # double 1.0642370000000001
	.quad	0x3ff8424b33daf8df              # double 1.5161849999999999
	.quad	0x40136da22f6a50d7              # double 4.8570640000000003
	.quad	0x3fd69fd36f7e3d1d              # double 0.35350500000000001
	.quad	0x3fe75ce39b456b44              # double 0.73008899999999999
	.quad	0x3ffea9b280f12c28              # double 1.9164300000000001
	.quad	0x401d23e186983516              # double 7.2850400000000004
	.quad	0x400b4b7cbb3c8191              # double 3.4118590000000002
	.quad	0x3fce492bc2fc6973              # double 0.23660800000000001
	.quad	0x400370f733a8a3f9              # double 2.4301590000000002
	.quad	0x4018bc7da1ec4e72              # double 6.1840729999999997
	.quad	0x400a8a2e3c536d65              # double 3.3174709999999998
	.quad	0x40087556084a515d              # double 3.057293
	.quad	0x4022d9934efcbd55              # double 9.4249519999999993
	.quad	0x3fdfbadc0980b242              # double 0.49578
	.quad	0x40239d5ed06fef7c              # double 9.8073639999999997
	.quad	0x400fd56861e92924              # double 3.979203
	.quad	0x4011bdfe75bc44bf              # double 4.4355409999999997
	.quad	0x40056788db0574b4              # double 2.675554
	.quad	0x4023919a1fd1569f              # double 9.7843789999999994
	.quad	0x4005ddd872f33ca3              # double 2.7333229999999999
	.quad	0x4007f5fe542e557e              # double 2.9951140000000001
	.quad	0x4019177ff151e753              # double 6.2729489999999997
	.quad	0x4012c22fad6cb535              # double 4.689635
	.quad	0x401a2f03d145d851              # double 6.5459129999999996
	.quad	0x3fd7545846e8f29d              # double 0.36452299999999999
	.quad	0x4014e5182a9930be              # double 5.223725
	.quad	0x401c9ad8a116659d              # double 7.1512169999999999
	.quad	0x3fff705d95dd4c77              # double 1.964933
	.quad	0x401473fc86cebbba              # double 5.1132679999999997
	.quad	0x400dbddc1e7967cb              # double 3.717705
	.quad	0x40211c521dda059a              # double 8.5553139999999992
	.quad	0x40226a9c779a6b51              # double 9.2082250000000005
	.quad	0x402054f0b6b6e0d2              # double 8.1658989999999996
	.quad	0x40013f84449dbec2              # double 2.1560139999999999
	.quad	0x3fc39ddc1e7967cb              # double 0.153255
	.quad	0x4022c66ba493c89f              # double 9.3875399999999995
	.quad	0x400dae429e0a41a2              # double 3.7100879999999998
	.quad	0x401591b25f633ce6              # double 5.3922819999999998
	.quad	0x40186484d76ab580              # double 6.0981629999999996
	.quad	0x3fec2072d1aeb3dd              # double 0.87896099999999999
	.quad	0x401721c9f72f76e6              # double 5.7829969999999999
	.quad	0x4023aea37ac3eb7d              # double 9.8410910000000004
	.quad	0x40132a9717df19d6              # double 4.7915919999999996
	.quad	0x4016e55821294574              # double 5.7239690000000003
	.quad	0x3ff678305d95dd4c              # double 1.4043429999999999
	.quad	0x40197f623076c051              # double 6.3743980000000002
	.quad	0x3ff31805e5f30e80              # double 1.193365
	.quad	0x401f708dd1e53a82              # double 7.8599160000000001
	.quad	0x4022493b3a68b19a              # double 9.1430299999999995
	.quad	0x401adf91e646f156              # double 6.7183299999999999
	.quad	0x3ff4fec679cc74b8              # double 1.312201
	.quad	0x4021991fd5885d31              # double 8.7990709999999996
	.quad	0x401a2fa4c61d8623              # double 6.5465270000000002
	.quad	0x400729ba5e353f7d              # double 2.895375
	.quad	0x40207bfd71b04684              # double 8.2421679999999994
	.quad	0x3ffec9ca18bd6627              # double 1.9242649999999999
	.quad	0x3ff638f36694898f              # double 1.3889039999999999
	.quad	0x4000044955b4677b              # double 2.0020929999999999
	.quad	0x40099456b441bb8c              # double 3.1974309999999999
	.quad	0x4002a99f1ae2da55              # double 2.3328229999999999
	.quad	0x401f68611fd5885d              # double 7.8519329999999998
	.quad	0x401ae7b0b3919264              # double 6.7262599999999999
	.quad	0x401859203a322af5              # double 6.0870369999999996
	.quad	0x4021f5da6a444178              # double 8.9801819999999992
	.quad	0x3ffda74f2f123c43              # double 1.8533470000000001
	.quad	0x40185b70691ea78b              # double 6.089296
	.quad	0x40006b7e4de3b8a2              # double 2.0524870000000002
	.quad	0x4021c87b352a8438              # double 8.8915649999999999
	.quad	0x4020784ff43419e3              # double 8.234985
	.quad	0x40127068db8bac71              # double 4.609775
	.quad	0x40204b860999dcb5              # double 8.1475069999999992
	.quad	0x4023c618ce2d1f1d              # double 9.886908
	.quad	0x401eb57a786c2268              # double 7.6772249999999999
	.quad	0x4001131098d477bc              # double 2.134309
	.quad	0x401c289f40a2877f              # double 7.0396700000000001
	.quad	0x4022dd59f6ec5b08              # double 9.4323270000000007
	.quad	0x3fd0be596c82e01a              # double 0.26161800000000002
	.quad	0x400138e64b231401              # double 2.1527829999999999
	.quad	0x4010925c3dee7818              # double 4.1429299999999998
	.quad	0x4003eaa21a719b4e              # double 2.4895670000000001
	.quad	0x4016528c36da87a0              # double 5.5806129999999996
	.quad	0x40110126a65cf67b              # double 4.2511239999999999
	.quad	0x40140ffc9795b35b              # double 5.015612
	.quad	0x400f868db8bac711              # double 3.9407000000000001
	.quad	0x40090f9fcb0c026d              # double 3.1326290000000001
	.quad	0x4013bcd63cb81733              # double 4.9344109999999999
	.quad	0x40223a6d04e618ce              # double 9.1141129999999997
	.quad	0x4006910a99b6f5cb              # double 2.820821
	.quad	0x401fb4855da27286              # double 7.9262899999999998
	.quad	0x4023c29b6b2af145              # double 9.8800919999999994
	.quad	0x4017ad60e94ee393              # double 5.9193150000000001
	.quad	0x3fe4de41d4b6a61a              # double 0.65213100000000002
	.quad	0x4001f5ce9e5e2479              # double 2.2450230000000002
	.quad	0x4017fd035371971c              # double 5.9970829999999999
	.quad	0x3fc5f5be5d9e40c8              # double 0.17156199999999999
	.quad	0x40004bbf50e34763              # double 2.0369860000000002
	.quad	0x3f9aa9b499d0203e              # double 0.026037999999999999
	.quad	0x401656177ea1c68f              # double 5.5840740000000002
	.quad	0x401dc2a9d627bf62              # double 7.4401010000000003
	.quad	0x4005023d9231c64c              # double 2.6260940000000002
	.quad	0x4010d0fd7e45803d              # double 4.2040920000000002
	.quad	0x3ff67d933e35c5b5              # double 1.4056580000000001
	.quad	0x401cae5d9e40c847              # double 7.1702789999999998
	.quad	0x4012f88df37329c3              # double 4.7427289999999998
	.quad	0x40211add15f02c4d              # double 8.5524679999999993
	.quad	0x401172f449129889              # double 4.36226
	.quad	0x401cc5d249e44fa0              # double 7.1931849999999997
	.quad	0x4021bdf47f993d53              # double 8.8710059999999995
	.quad	0x4003a7991bc55864              # double 2.4568349999999999
	.quad	0x4023ad084e831ad2              # double 9.8379539999999999
	.quad	0x3ff71327243137b0              # double 1.4421759999999999
	.quad	0x40212ef7c243dccf              # double 8.5917340000000006
	.quad	0x401d87143393ab43              # double 7.3819129999999999
	.quad	0x401131294573a798              # double 4.2980090000000004
	.quad	0x400a08eabffcdab2              # double 3.2543540000000002
	.quad	0x40150143393ab431              # double 5.251233
	.quad	0x401987cfa26a22b4              # double 6.3826280000000004
	.quad	0x4022ff9d0a67620f              # double 9.4992450000000001
	.quad	0x4013f46c332f0175              # double 4.9886939999999997
	.quad	0x4019bb6177ea1c69              # double 6.4329890000000001
	.quad	0x3feaee8d10f51aca              # double 0.84162000000000003
	.quad	0x401992b27cbf6e3f              # double 6.3932589999999996
	.quad	0x3fe4986338b47c74              # double 0.64360200000000001
	.quad	0x4021de2131a8ef78              # double 8.9338470000000001
	.quad	0x3ff60e1c58255b03              # double 1.3784449999999999
	.quad	0x40238d184c271fff              # double 9.7755759999999991
	.quad	0x400f05d744f5d356              # double 3.8778519999999999
	.quad	0x3ffa23ca7503b81b              # double 1.6337379999999999
	.quad	0x401d86d2aa5c5f7c              # double 7.3816629999999996
	.quad	0x4011fc5eb313be23              # double 4.4964550000000001
	.quad	0x401a39ac36544fe3              # double 6.5563209999999996
	.quad	0x400ce3eb7cbb3c82              # double 3.6112890000000002
	.quad	0x4023b51a21ea3593              # double 9.8537149999999993
	.quad	0x4012f8f25a250f84              # double 4.743112
	.quad	0x4015e079a2834d27              # double 5.469214
	.quad	0x4022171886df82b2              # double 9.0451090000000001
	.quad	0x3fd9072d1aeb3dd1              # double 0.39106299999999999
	.quad	0x40222ecfa69be09c              # double 9.0914280000000005
	.quad	0x3ffbec332f01754b              # double 1.745166
	.quad	0x3fdbcdf69878316a              # double 0.434446
	.quad	0x401b65b20b8066c3              # double 6.8493120000000003
	.quad	0x400423476295208e              # double 2.517226
	.quad	0x3fcb1d25aab47410              # double 0.21182699999999999
	.quad	0x4023abd102bc72e2              # double 9.8355789999999992
	.quad	0x3ffa916db0dd82fd              # double 1.6605049999999999
	.quad	0x4022afbce4217d28              # double 9.3432379999999994
	.quad	0x401d1f00abf76a2f              # double 7.2802759999999997
	.quad	0x401c1427c7c5260f              # double 7.0196829999999997
	.quad	0x4005cdaa0cae642c              # double 2.725422
	.quad	0x401a7be0589acbc9              # double 6.6209730000000002
	.quad	0x4013623bff8a8f3b              # double 4.8459320000000004
	.quad	0x40203fe82517e77d              # double 8.1248179999999994
	.quad	0x3ff0ef251c193b3a              # double 1.0583849999999999
	.quad	0x40029267c6b8b695              # double 2.3214869999999999
	.quad	0x401d2790fb65668c              # double 7.2886389999999999
	.quad	0x3ffcde56cd6c2efd              # double 1.8042819999999999
	.quad	0x401eafdfc19c1722              # double 7.6717519999999997
	.quad	0x401f0cd0bb6ed677              # double 7.7625149999999996
	.quad	0x3ff2084e831ad213              # double 1.1270279999999999
	.quad	0x4017266dbd72bcb6              # double 5.787528
	.quad	0x3feae9e1b089a027              # double 0.84104999999999996
	.quad	0x4009c8a8b08dd1e5              # double 3.2229779999999999
	.quad	0x40109b90214ad363              # double 4.1519170000000001
	.quad	0x3fce1db0142f61ed              # double 0.23528099999999999
	.quad	0x3fc88a372606fac6              # double 0.191718
	.quad	0x4017294e1a3f4667              # double 5.7903370000000001
	.quad	0x4005e03925bb7b6c              # double 2.7344840000000001
	.quad	0x401925ed4a1ad645              # double 6.2870379999999999
	.quad	0x4023371f14983d79              # double 9.6076589999999999
	.quad	0x401d9ae70c1333b9              # double 7.4012719999999996
	.quad	0x40212af37fbefd00              # double 8.5838889999999992
	.quad	0x40200986fcdee350              # double 8.0186080000000004
	.quad	0x40089a4b5568e821              # double 3.075339
	.quad	0x4021685814940bbb              # double 8.7037969999999998
	.quad	0x4014b17614595358              # double 5.1733019999999996
	.quad	0x4022f09a459103c9              # double 9.4699270000000002
	.quad	0x40235c6455eaee20              # double 9.680453
	.quad	0x401a0e9ee45c358b              # double 6.514278
	.quad	0x40214bba12b5e52a              # double 8.6479040000000005
	.quad	0x3ff174d594f26aec              # double 1.091024
	.quad	0x400fb0752da98677              # double 3.9611610000000002
	.quad	0x4021c3b6672fba02              # double 8.8822510000000001
	.quad	0x4016d6501e2584f5              # double 5.7092900000000002
	.quad	0x4015ba048e043a21              # double 5.4316579999999997
	.quad	0x401e99df1172ef0b              # double 7.650265
	.quad	0x4002def6b5d462c3              # double 2.3588689999999999
	.quad	0x400898f68be2f7b1              # double 3.0746889999999998
	.quad	0x4010b0a6fc58ab93              # double 4.1725120000000002
	.quad	0x3ff2f85729b280f1              # double 1.18563
	.quad	0x401c6cdf69878317              # double 7.1063210000000003
	.quad	0x4020c476f2a5a46a              # double 8.3837200000000003
	.quad	0x401cc1d6cf850df1              # double 7.1892959999999997
	.quad	0x4020942bf9830e3d              # double 8.2893980000000003
	.quad	0x401a532c1f42bb66              # double 6.5812229999999996
	.quad	0x400c90a4e379b77c              # double 3.570627
	.quad	0x4007992428d434a0              # double 2.949776
	.quad	0x401341455219a848              # double 4.8137410000000003
	.quad	0x4003fb5d894812be              # double 2.4977369999999999
	.quad	0x400f83ea704bc276              # double 3.9394119999999999
	.quad	0x3ffd69ea14057082              # double 1.8383579999999999
	.quad	0x4020069bbf0dc769              # double 8.0129070000000002
	.quad	0x401d66bd2b6f1993              # double 7.3503309999999997
	.quad	0x401ab6eb4e981388              # double 6.6786320000000003
	.quad	0x40164d6d3b6cbd98              # double 5.5756119999999996
	.quad	0x3ff6f401c4fc1df3              # double 1.434572
	.quad	0x401e0bb341e14be0              # double 7.5114260000000002
	.quad	0x3fff4b47c73eee52              # double 1.9558789999999999
	.quad	0x40152634117f8445              # double 5.2873080000000003
	.quad	0x40209c0df58c08b7              # double 8.3047939999999993
	.quad	0x401517a95c853c15              # double 5.2731070000000004
	.quad	0x40203ce89656eefa              # double 8.1189619999999998
	.quad	0x4008e4ea4a8c154d              # double 3.1117750000000002
	.quad	0x4012c903a7546d40              # double 4.6963030000000003
	.quad	0x4014ea1a500d5e8d              # double 5.2286159999999997
	.quad	0x3fe187ebf22c01e7              # double 0.54784200000000005
	.quad	0x4021ac6f9b994e1a              # double 8.8367889999999996
	.quad	0x400b5974e65bea0c              # double 3.4186800000000002
	.quad	0x4020349a133c1ce7              # double 8.1027380000000004
	.quad	0x400aa4dfce3150db              # double 3.330505
	.quad	0x400b1205bc01a36e              # double 3.3837999999999999
	.quad	0x40151fdd65a14489              # double 5.2811180000000002
	.quad	0x3ff89e785b5b7069              # double 1.538689
	.quad	0x4015be6f2e8c0486              # double 5.4359710000000003
	.quad	0x40085f7ced916873              # double 3.0466250000000001
	.quad	0x401583fcc9ea9a3d              # double 5.3788939999999998
	.quad	0x401f34ccee5abc0e              # double 7.8015629999999998
	.quad	0x401c0c610f0e90bc              # double 7.0120889999999996
	.quad	0x4012a19695d91ab9              # double 4.6578010000000001
	.quad	0x4023682ecaeea63b              # double 9.7034819999999992
	.quad	0x4022d5464dc22ab2              # double 9.4165519999999994
	.quad	0x3fb94845132f87ad              # double 0.098759
	.quad	0x40142e45803cd142              # double 5.0451870000000003
	.quad	0x401fa94855da2728              # double 7.9153149999999996
	.quad	0x3ff70c0379314446              # double 1.4404330000000001
	.quad	0x40237d2e0e30446b              # double 9.7444919999999992
	.quad	0x401e3dab9f559b3d              # double 7.5602249999999999
	.quad	0x401cb30446b69db6              # double 7.1748209999999997
	.quad	0x4023a8fabda0dfdf              # double 9.830038
	.quad	0x40222ba0407cc7d2              # double 9.0852070000000005
	.quad	0x400f647dc37a3db4              # double 3.9240680000000001
	.quad	0x40090ee8d10f51ad              # double 3.1322800000000002
	.quad	0x4023580f98fa3769              # double 9.6719939999999997
	.quad	0x40189723ee1bd1ee              # double 6.1475980000000003
	.quad	0x3fd6b8dc55000c95              # double 0.35503299999999999
	.quad	0x4015ab4202d9cf14              # double 5.4172440000000002
	.quad	0x3ff6eb1704ff4342              # double 1.4323950000000001
	.quad	0x401897e5eaab0425              # double 6.1483379999999999
	.quad	0x40202bca31e7d999              # double 8.0855270000000008
	.quad	0x3ff86e4e26d4801f              # double 1.5269299999999999
	.quad	0x400562a0a958537e              # double 2.6731579999999999
	.quad	0x401f4a77e5eaab04              # double 7.8227229999999999
	.quad	0x40155cc78e9f6a94              # double 5.340605
	.quad	0x401b537c1376d549              # double 6.8315279999999996
	.quad	0x4022ff75104d551d              # double 9.4989399999999992
	.quad	0x400e11bf7ad4b274              # double 3.7586659999999998
	.quad	0x4014a4217d2849cb              # double 5.1602839999999999
	.quad	0x40237807570c5650              # double 9.7344310000000007
	.quad	0x401a61554fbdad75              # double 6.5950519999999999
	.quad	0x40214bf1a5ca2984              # double 8.6483279999999993
	.quad	0x4020cc463065f959              # double 8.3989729999999998
	.quad	0x400363f3e0370cdd              # double 2.4238050000000002
	.quad	0x40192bec2480e8c9              # double 6.2928930000000003
	.quad	0x3fdfe364bec679cc              # double 0.49825399999999997
	.quad	0x401f97342edbb59e              # double 7.8976600000000001
	.quad	0x400f7a72a7bd48cb              # double 3.9347889999999999
	.quad	0x3fe9ea7ef9db22d1              # double 0.80987500000000001
	.quad	0x401e6ad8e4324420              # double 7.6043430000000001
	.quad	0x40197f1348b22079              # double 6.3740969999999999
	.quad	0x401bf8ace24bba13              # double 6.9928470000000003
	.quad	0x401d56a3bddfca00              # double 7.3346090000000004
	.quad	0x3ff6334b51372a39              # double 1.3875230000000001
	.quad	0x401cac5c13fd0d06              # double 7.1683199999999996
	.quad	0x4020285d95dd4c77              # double 8.0788390000000003
	.quad	0x400cd05af6c69b5a              # double 3.6017359999999998
	.quad	0x401834189374bc6a              # double 6.0508749999999996
	.quad	0x401faabd1aa821f3              # double 7.9167370000000003
	.quad	0x402243bd7b2031cf              # double 9.1323050000000006
	.quad	0x4023966cd29131ec              # double 9.7937989999999999
	.quad	0x401a4e5471715c64              # double 6.5764940000000003
	.quad	0x40233adab9f559b4              # double 9.6149500000000003
	.quad	0x400963c07ee0b0af              # double 3.1737069999999998
	.quad	0x4000c0fe47991bc5              # double 2.0942349999999998
	.quad	0x40209e772d5e071c              # double 8.3095029999999994
	.quad	0x401b13532e7b3d8e              # double 6.768872
	.quad	0x4021e18f605ab3ab              # double 8.9405470000000005
	.quad	0x402087ee9142b303              # double 8.2654920000000001
	.quad	0x401f790c0ad03d9b              # double 7.8682100000000003
	.quad	0x40223763a1900820              # double 9.1081819999999993
	.quad	0x3ff4459d99029ae5              # double 1.266996
	.quad	0x40226a2f05a708ee              # double 9.2073900000000002
	.quad	0x400cc938583621fb              # double 3.598252
	.quad	0x3ffedb36bd2b6f1a              # double 1.9285190000000001
	.quad	0x40211407cc7d1bb5              # double 8.5391220000000008
	.quad	0x3ff0b98201cd5f9a              # double 1.0452900000000001
	.quad	0x400067e5a78f25a2              # double 2.0507309999999999
	.quad	0x40066e1719f7f8cb              # double 2.8037550000000002
	.quad	0x4014202b40f66a55              # double 5.031415
	.quad	0x40235224edf61240              # double 9.6604379999999991
	.quad	0x400690995aaf78ff              # double 2.820605
	.quad	0x3ffe78ab0c88a47f              # double 1.90446
	.quad	0x4021b8aa64c2f838              # double 8.8606750000000005
	.quad	0x40238a8d21bc126a              # double 9.7706079999999993
	.quad	0x40181a53fc0096ff              # double 6.0257110000000003
	.quad	0x40128059210385c6              # double 4.6253399999999996
	.quad	0x400b5bc33f85510d              # double 3.4198059999999999
	.quad	0x3f505186db50f40e              # double 9.9599999999999992E-4
	.quad	0x3ff3525cc426351e              # double 1.207608
	.quad	0x4018e2734f82f512              # double 6.2211429999999996
	.quad	0x401119a52263d817              # double 4.2750440000000003
	.quad	0x4011b02602c9081c              # double 4.4220199999999998
	.quad	0x40216b20535c9e67              # double 8.7092310000000008
	.quad	0x402097ba8826aa8f              # double 8.2963450000000005
	.quad	0x401f881733226c3c              # double 7.8829010000000004
	.quad	0x3ffea72da122fad7              # double 1.915815
	.quad	0x401494c33b539325              # double 5.145276
	.quad	0x401c8e492bc2fc69              # double 7.1389509999999996
	.quad	0x3fffd42c3c9eecc0              # double 1.9893000000000001
	.quad	0x401ce5de58e64b23              # double 7.2244809999999999
	.quad	0x3ffebb95a294141f              # double 1.9207970000000001
	.quad	0x4021b55171e29b6b              # double 8.8541369999999997
	.quad	0x40204783382e44b7              # double 8.1396730000000002
	.quad	0x3fc3ae1cde5d1809              # double 0.153751
	.quad	0x40116bdf090f733b              # double 4.3553430000000004
	.quad	0x4017687a4a48f96e              # double 5.8520289999999999
	.quad	0x4015daecd07852f8              # double 5.463794
	.quad	0x40216a32b12d3416              # double 8.7074180000000005
	.quad	0x400ce43dccea28fe              # double 3.6114459999999999
	.quad	0x401a8787485e3da3              # double 6.632352
	.quad	0x401ed8f6cefed634              # double 7.7118789999999997
	.quad	0x4018acf312b1b36c              # double 6.1688960000000002
	.quad	0x3f97a5b0ff10ecb7              # double 0.023092999999999999
	.quad	0x4004ed373affb04f              # double 2.615828
	.quad	0x401e6faa8a82a561              # double 7.6090489999999997
	.quad	0x401f30446b69db66              # double 7.7971360000000001
	.quad	0x4001da250f840182              # double 2.2315160000000001
	.quad	0x402216f262888b54              # double 9.0448179999999993
	.quad	0x401045158b827fa2              # double 4.0674650000000003
	.quad	0x401412aed1394318              # double 5.0182450000000003
	.quad	0x40200901f31f46ed              # double 8.0175929999999997
	.quad	0x4010148e8a71de6a              # double 4.0200750000000003
	.quad	0x401526e04c059210              # double 5.2879649999999998
	.quad	0x3ff80b018611fd59              # double 1.5026870000000001
	.quad	0x40202ef3d3a1d324              # double 8.091704
	.quad	0x3fe58f6ad70e6f2f              # double 0.67375700000000005
	.quad	0x4023e8ee28672757              # double 9.9549420000000008
	.quad	0x401da16d2aa5c5f8              # double 7.4076430000000001
	.quad	0x401c1599ed7c6fbd              # double 7.0210949999999999
	.quad	0x400b4225742dcf46              # double 3.4072979999999999
	.quad	0x3fbfebd09e12a51e              # double 0.124692
	.quad	0x400b50f8c64fdb0a              # double 3.4145370000000002
	.quad	0x4023dd28d002e233              # double 9.9319520000000007
	.quad	0x40214798fa376923              # double 8.6398390000000003
	.quad	0x400431327243137b              # double 2.524022
	.quad	0x4023a50bfa0945fa              # double 9.8223570000000002
	.quad	0x401accc70867ad8e              # double 6.6999779999999998
	.quad	0x4014bf2fdb8fde2f              # double 5.186706
	.quad	0x401a0e160d887ebf              # double 6.5137559999999999
	.quad	0x4021a57342edbb5a              # double 8.8231450000000002
	.quad	0x4003c70c1333b96b              # double 2.472191
	.quad	0x3ffb45cbbc2b94d9              # double 1.7045399999999999
	.quad	0x40158065f9591cd2              # double 5.3753890000000002
	.quad	0x3fd911f4f50a02b8              # double 0.39172099999999999
	.quad	0x401a3aa369fcf3dc              # double 6.557264
	.quad	0x40028628027d88c2              # double 2.3155060000000001
	.quad	0x4008f6a8b8f14db6              # double 3.1204390000000002
	.quad	0x3ff936f5caf2d7f9              # double 1.5759179999999999
	.quad	0x401e34bdba0a5269              # double 7.5515049999999996
	.quad	0x401196f86a098916              # double 4.3974320000000002
	.quad	0x40214677d523b363              # double 8.6376329999999992
	.quad	0x401f6ed1394317ad              # double 7.8582200000000002
	.quad	0x402186bf01322f27              # double 8.7631759999999996
	.quad	0x3fe344ae85b9e8c4              # double 0.60213399999999995
	.quad	0x4006bdd2ae8e1d65              # double 2.8426870000000002
	.quad	0x40197c59fb1e18f0              # double 6.3714370000000002
	.quad	0x4016c322f2734f83              # double 5.690563
	.quad	0x40168a897635e743              # double 5.6352900000000004
	.quad	0x3fd8392189bd8384              # double 0.37848700000000002
	.quad	0x40067ba1b1960fa1              # double 2.8103669999999998
	.quad	0x402041f53825e13b              # double 8.1288239999999998
	.quad	0x40221f5dbb9cf9a0              # double 9.0612619999999993
	.quad	0x3fe478c64fdb09a6              # double 0.63974299999999995
	.quad	0x40070f166e008e9b              # double 2.8823669999999999
	.quad	0x3ff4d39c94f69caa              # double 1.301663
	.quad	0x4006e394face67d7              # double 2.8611239999999998
	.quad	0x4020988a47ecfe9b              # double 8.2979299999999991
	.quad	0x4017f530ced4e4c9              # double 5.9894439999999998
	.quad	0x4021a5f88fc9363f              # double 8.8241619999999994
	.quad	0x4003a935b91f70df              # double 2.4576220000000002
	.quad	0x401170bb6ed67770              # double 4.3600899999999996
	.quad	0x3ff7ff9c62a1b5c8              # double 1.499905
	.quad	0x400d907c84b5dcc6              # double 3.6955499999999999
	.quad	0x3fa5256798958d9b              # double 0.041300999999999997
	.quad	0x3fcc18bd66277c46              # double 0.21950500000000001
	.quad	0x3ff418d79d0a6762              # double 1.256065
	.quad	0x3ff89fc4c165907e              # double 1.5390060000000001
	.quad	0x4014f5f394b7b289              # double 5.2401869999999997
	.quad	0x3fecde15ca6ca03c              # double 0.90210999999999996
	.quad	0x40055fae3608d089              # double 2.671719
	.quad	0x3fe337e0ac7da1ec              # double 0.60057099999999997
	.quad	0x40109238da3c2118              # double 4.1427949999999996
	.quad	0x4005ee78183f91e6              # double 2.7414399999999999
	.quad	0x401a0ee99a62ed35              # double 6.5145629999999999
	.quad	0x4023fff90d9d7775              # double 9.9999470000000005
	.quad	0x401be85b5b70691f              # double 6.9769110000000003
	.quad	0x40171a7c5ac471b4              # double 5.7758649999999996
	.quad	0x4017d7d2c7b890d6              # double 5.9607650000000003
	.quad	0x401289d6adf71eb0              # double 4.6346080000000001
	.quad	0x3ffceed1394317ad              # double 1.8083050000000001
	.quad	0x3ff1b9f87f023e9f              # double 1.1079030000000001
	.quad	0x401b1baf965b20b8              # double 6.777037
	.quad	0x4021a0a73f748a16              # double 8.8137760000000007
	.quad	0x3ff14a6dacabc515              # double 1.0806709999999999
	.quad	0x402165b2d4d4024b              # double 8.6986299999999996
	.quad	0x3ff2e95421c04428              # double 1.1819649999999999
	.quad	0x40088635a426bb56              # double 3.0655320000000001
	.quad	0x401cb80b242070b9              # double 7.1797300000000002
	.quad	0x401335154866a11f              # double 4.8018390000000002
	.quad	0x3ffaadbc664d3bf3              # double 1.667416
	.quad	0x401ef7c6327ed84d              # double 7.7419669999999998
	.quad	0x401fbe7210be9425              # double 7.935982
	.quad	0x3ffb8c016052502f              # double 1.721681
	.quad	0x3fc4d4fdf3b645a2              # double 0.16275000000000001
	.quad	0x4012b3eb7cbb3c82              # double 4.6757030000000004
	.quad	0x40236ccdb7ae5797              # double 9.7125070000000004
	.quad	0x3fe846ae3a3a8e71              # double 0.75862799999999997
	.quad	0x402136f587d6f976              # double 8.6073419999999992
	.quad	0x400758359bc33f85              # double 2.9180709999999999
	.quad	0x401f0726d04e618d              # double 7.7569840000000001
	.quad	0x4019e2d3415b1423              # double 6.4715090000000002
	.quad	0x401780de4c51116b              # double 5.8758480000000004
	.quad	0x401865fd8adab9f5              # double 6.0995999999999997
	.quad	0x400643ba3443d46b              # double 2.7830699999999999
	.quad	0x401151e4f765fd8b              # double 4.3299750000000001
	.quad	0x401ee5a426bb55ac              # double 7.724259
	.quad	0x402359e236c15d2d              # double 9.6755539999999999
	.quad	0x401477a311e85fd0              # double 5.1168329999999997
	.quad	0x401cbfff36ac6477              # double 7.1874969999999996
	.quad	0x401abac6cdaf4adc              # double 6.6823990000000002
	.quad	0x400a0c17ebaf1023              # double 3.2559049999999998
	.quad	0x4017157e670e2c13              # double 5.7709900000000003
	.quad	0x3fefc460ed80a17b              # double 0.99272199999999999
	.quad	0x40076c49ba5e353f              # double 2.9278749999999998
	.quad	0x3ffca0e1f7d73c92              # double 1.7892779999999999
	.quad	0x401d5dbf0563ed0f              # double 7.3415489999999997
	.quad	0x4017e956c0d6f545              # double 5.9778700000000002
	.quad	0x4015483c6c97d8cf              # double 5.3205429999999998
	.quad	0x3ffe60029f16b11c              # double 1.8984399999999999
	.quad	0x4011ed9b1b79d90a              # double 4.482037
	.quad	0x4021d3fca85caafc              # double 8.9140370000000004
	.quad	0x3fe6b25f633ce63a              # double 0.70927399999999996
	.quad	0x402173d7d3910c2c              # double 8.7262559999999993
	.quad	0x400da4e054690de1              # double 3.7055060000000002
	.quad	0x4002463b688bda94              # double 2.2842929999999999
	.quad	0x40067b845564b663              # double 2.810311
	.quad	0x3ffe89e6687f455a              # double 1.9086669999999999
	.quad	0x401977dae81882ae              # double 6.3670460000000002
	.quad	0x401ea850df15a4ad              # double 7.664371
	.quad	0x4000c90eed02cd3a              # double 2.0981730000000001
	.quad	0x401e45b20b8066c3              # double 7.5680620000000002
	.quad	0x4011732b55ef1fde              # double 4.3624700000000001
	.quad	0x40185eebf65dbfcf              # double 6.0926970000000003
	.quad	0x4022c388ca3e7d13              # double 9.3819029999999994
	.quad	0x401d28eef1bac2df              # double 7.289974
	.quad	0x3ff54e0fc2eba27b              # double 1.331558
	.quad	0x402072e3821af7d3              # double 8.2243919999999999
	.quad	0x3fd05a921ccd9620              # double 0.25552799999999998
	.quad	0x401ea37a3db3bfb6              # double 7.6596460000000004
	.quad	0x400550bd87b56b87              # double 2.6644239999999999
	.quad	0x4015a51697f1f9ad              # double 5.411219
	.quad	0x3fffd9695d91ab8f              # double 1.9905790000000001
	.quad	0x3ff752e40852b4d9              # double 1.4577370000000001
	.quad	0x4008922d0e560419              # double 3.0713750000000002
	.quad	0x4018a3c3e74afd54              # double 6.1599269999999997
	.quad	0x4018027d88c1db01              # double 6.0024319999999998
	.quad	0x4002b832fcac8e69              # double 2.339941
	.quad	0x401117774aba3876              # double 4.2729160000000004
	.quad	0x4007a8e79aae6c8f              # double 2.9574729999999998
	.quad	0x4023f2ccf6be37df              # double 9.9742200000000007
	.quad	0x40135ed288ce703b              # double 4.8426
	.quad	0x402272b68cef672c              # double 9.2240490000000008
	.quad	0x4009dc9f72f76e61              # double 3.232726
	.quad	0x40202868b9fdbd30              # double 8.0789240000000007
	.quad	0x4020ec3c3a42f1ed              # double 8.4613969999999998
	.quad	0x4002b3c1ce6c093e              # double 2.3377720000000002
	.quad	0x4021644028e4fb98              # double 8.6958020000000005
	.quad	0x401873c81908e582              # double 6.1130680000000002
	.quad	0x3fe290fb65668c26              # double 0.58019799999999999
	.quad	0x4020d9f5be5d9e41              # double 8.4257030000000004
	.quad	0x401b072a38b8ae32              # double 6.7569970000000001
	.quad	0x401c11c58255b036              # double 7.0173550000000002
	.quad	0x3fdeabb8800eae19              # double 0.47923100000000002
	.quad	0x401fc1240746455f              # double 7.9386140000000002
	.quad	0x4014688fc9363f57              # double 5.1021109999999998
	.quad	0x4011489a88ace24c              # double 4.3209020000000002
	.quad	0x4022a1e9f2778141              # double 9.3162380000000002
	.quad	0x4006dd798d8a979e              # double 2.858142
	.quad	0x3ff3a111276fb092              # double 1.226823
	.quad	0x4019c95f676ea423              # double 6.4466530000000004
	.quad	0x40207b7154003255              # double 8.2410990000000002
	.quad	0x3fefb0d0edc3bd5a              # double 0.99033400000000005
	.quad	0x400f88a2ec28b2a7              # double 3.9417170000000001
	.quad	0x40133c88e79aae6d              # double 4.8091160000000004
	.quad	0x3ffd923d4f15e7c9              # double 1.848203
	.quad	0x40059c5cdd50a88f              # double 2.701349
	.quad	0x400ad8c5436b8f9b              # double 3.355845
	.quad	0x401d663e8dda48b6              # double 7.3498479999999997
	.quad	0x400c251c9f72f76e              # double 3.5181209999999998
	.quad	0x40108bc3c5bd0e13              # double 4.1364890000000001
	.quad	0x4020e27d45a5fc7e              # double 8.4423619999999993
	.quad	0x4020d47a7c9de050              # double 8.4149969999999996
	.quad	0x400052314013ec46              # double 2.040133
	.quad	0x3ff3b49e01de2691              # double 1.2315959999999999
	.quad	0x40193182a9930be1              # double 6.2983500000000001
	.quad	0x4014a47cb70ac3a8              # double 5.1606319999999997
	.quad	0x401da1c2a0232096              # double 7.4079689999999996
	.quad	0x401c1995aaf78fef              # double 7.024985
	.quad	0x3ff3b3dd11be6e65              # double 1.231412
	.quad	0x402359ccfaeff5c7              # double 9.6753920000000004
	.quad	0x401329c6f36ef805              # double 4.7907979999999997
	.quad	0x3fe1c2b0ea18372e              # double 0.55501599999999995
	.quad	0x401247620ee8d10f              # double 4.5697099999999997
	.quad	0x401a9b3e5753a3ec              # double 6.651605
	.quad	0x40102081c2e33eff              # double 4.0317449999999999
	.quad	0x40204b2a497fa5d3              # double 8.1468070000000008
	.quad	0x4007e0e736049ecb              # double 2.9848159999999999
	.quad	0x4015f0f2becedd48              # double 5.4853009999999998
	.quad	0x400a1af5ba2be059              # double 3.2631640000000002
	.quad	0x40178dd15f02c4d6              # double 5.8884939999999997
	.quad	0x40222e0f7fcfc3f8              # double 9.0899619999999999
	.quad	0x4007856d5cfaacda              # double 2.94015
	.quad	0x4010f8a2a90cd424              # double 4.2428080000000001
	.quad	0x40000c38f366948a              # double 2.0059680000000002
	.quad	0x3fd6eb4202d9cf14              # double 0.35810900000000001
	.quad	0x4016f2ddbdb5d895              # double 5.7371740000000004
	.quad	0x40151da4484944ed              # double 5.2789469999999996
	.quad	0x400ac9057d1782d4              # double 3.3481550000000002
	.quad	0x3ff871c970f7b9e0              # double 1.5277799999999999
	.quad	0x40212d5b24e9c454              # double 8.5885859999999993
	.quad	0x401ca5e9185cee18              # double 7.1620220000000003
	.size	.L__constant_4000xf64, 32000

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
