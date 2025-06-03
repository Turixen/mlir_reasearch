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
	.quad	0x413a33c3dc9a133c              # double 1717187.861726
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
	.size	.L__constant_101xindex_0, 808

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

	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	29                              # 0x1d
	.quad	71                              # 0x47
	.quad	110                             # 0x6e
	.quad	143                             # 0x8f
	.quad	180                             # 0xb4
	.quad	205                             # 0xcd
	.quad	238                             # 0xee
	.quad	274                             # 0x112
	.quad	306                             # 0x132
	.quad	339                             # 0x153
	.quad	368                             # 0x170
	.quad	405                             # 0x195
	.quad	441                             # 0x1b9
	.quad	483                             # 0x1e3
	.quad	520                             # 0x208
	.quad	550                             # 0x226
	.quad	586                             # 0x24a
	.quad	623                             # 0x26f
	.quad	660                             # 0x294
	.quad	687                             # 0x2af
	.quad	722                             # 0x2d2
	.quad	761                             # 0x2f9
	.quad	788                             # 0x314
	.quad	821                             # 0x335
	.quad	849                             # 0x351
	.quad	882                             # 0x372
	.quad	922                             # 0x39a
	.quad	956                             # 0x3bc
	.quad	991                             # 0x3df
	.quad	1028                            # 0x404
	.quad	1062                            # 0x426
	.quad	1102                            # 0x44e
	.quad	1140                            # 0x474
	.quad	1173                            # 0x495
	.quad	1204                            # 0x4b4
	.quad	1230                            # 0x4ce
	.quad	1260                            # 0x4ec
	.quad	1297                            # 0x511
	.quad	1331                            # 0x533
	.quad	1369                            # 0x559
	.quad	1405                            # 0x57d
	.quad	1438                            # 0x59e
	.quad	1467                            # 0x5bb
	.quad	1508                            # 0x5e4
	.quad	1541                            # 0x605
	.quad	1574                            # 0x626
	.quad	1614                            # 0x64e
	.quad	1654                            # 0x676
	.quad	1693                            # 0x69d
	.quad	1732                            # 0x6c4
	.quad	1765                            # 0x6e5
	.quad	1799                            # 0x707
	.quad	1844                            # 0x734
	.quad	1872                            # 0x750
	.quad	1908                            # 0x774
	.quad	1939                            # 0x793
	.quad	1978                            # 0x7ba
	.quad	2018                            # 0x7e2
	.quad	2065                            # 0x811
	.quad	2100                            # 0x834
	.quad	2134                            # 0x856
	.quad	2164                            # 0x874
	.quad	2194                            # 0x892
	.quad	2234                            # 0x8ba
	.quad	2275                            # 0x8e3
	.quad	2308                            # 0x904
	.quad	2341                            # 0x925
	.quad	2377                            # 0x949
	.quad	2416                            # 0x970
	.quad	2453                            # 0x995
	.quad	2495                            # 0x9bf
	.quad	2530                            # 0x9e2
	.quad	2584                            # 0xa18
	.quad	2620                            # 0xa3c
	.quad	2656                            # 0xa60
	.quad	2689                            # 0xa81
	.quad	2725                            # 0xaa5
	.quad	2762                            # 0xaca
	.quad	2794                            # 0xaea
	.quad	2831                            # 0xb0f
	.quad	2863                            # 0xb2f
	.quad	2899                            # 0xb53
	.quad	2924                            # 0xb6c
	.quad	2961                            # 0xb91
	.quad	2996                            # 0xbb4
	.quad	3027                            # 0xbd3
	.quad	3063                            # 0xbf7
	.quad	3092                            # 0xc14
	.quad	3127                            # 0xc37
	.quad	3158                            # 0xc56
	.quad	3193                            # 0xc79
	.quad	3227                            # 0xc9b
	.quad	3263                            # 0xcbf
	.quad	3299                            # 0xce3
	.quad	3336                            # 0xd08
	.quad	3367                            # 0xd27
	.quad	3403                            # 0xd4b
	.quad	3438                            # 0xd6e
	.quad	3470                            # 0xd8e
	.quad	3500                            # 0xdac
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3500xindex,@object # @__constant_3500xindex
	.p2align	6, 0x0
.L__constant_3500xindex:
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	8                               # 0x8
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.size	.L__constant_3500xindex, 28000

	.type	.L__constant_3500xf64,@object   # @__constant_3500xf64
	.p2align	6, 0x0
.L__constant_3500xf64:
	.quad	0x402043c148344c38              # double 8.1323340000000002
	.quad	0x40148dbf487fcb92              # double 5.1384249999999998
	.quad	0x400648b4bf8fcd68              # double 2.785501
	.quad	0x400374f82f512663              # double 2.4321139999999999
	.quad	0x4019f93ab430f495              # double 6.4933880000000004
	.quad	0x40080cbea4ebdd33              # double 3.0062229999999999
	.quad	0x401fe39f340d4dc6              # double 7.9722869999999997
	.quad	0x401216a400fba882              # double 4.5221099999999996
	.quad	0x3fd12bcb5fe542e5              # double 0.26829799999999998
	.quad	0x3ffe8623d0bfa094              # double 1.9077489999999999
	.quad	0x401371a8ac5c13fd              # double 4.860995
	.quad	0x3fcaecf206423960              # double 0.21035599999999999
	.quad	0x4013001797cc3a00              # double 4.7500900000000001
	.quad	0x3ff42702a3486f05              # double 1.2595240000000001
	.quad	0x40204a66772d5e07              # double 8.1453129999999998
	.quad	0x400d0ebdd334c5da              # double 3.6321979999999998
	.quad	0x400a659d99029ae5              # double 3.299617
	.quad	0x4019f55b035bd513              # double 6.4896050000000001
	.quad	0x402212d1aeb3dd12              # double 9.0367560000000005
	.quad	0x401a21c475e6362a              # double 6.5329759999999997
	.quad	0x3fffd02bc72e275b              # double 1.9883230000000001
	.quad	0x3ffb4cb7d41743e9              # double 1.7062299999999999
	.quad	0x40206cf0520d130e              # double 8.212771
	.quad	0x40149dcf893faf42              # double 5.1541119999999996
	.quad	0x401513c925785f8d              # double 5.2693219999999998
	.quad	0x40128b2031ceaf25              # double 4.6358649999999999
	.quad	0x401deea39c51dabe              # double 7.4830459999999999
	.quad	0x4011cf166e008e9b              # double 4.4522339999999998
	.quad	0x401e7029f16b11c7              # double 7.6095350000000001
	.quad	0x4012d0229a5ebb77              # double 4.7032569999999998
	.quad	0x4022c8d32830a0b2              # double 9.3922360000000005
	.quad	0x40214916ca46e08f              # double 8.6427519999999998
	.quad	0x400372e6a76965f5              # double 2.4311039999999999
	.quad	0x400b57aa25d8d79d              # double 3.417805
	.quad	0x402036be9c886163              # double 8.1069230000000001
	.quad	0x4020d3474107314d              # double 8.4126530000000006
	.quad	0x3ff91145d851654d              # double 1.5667169999999999
	.quad	0x400f3c07ee0b0af6              # double 3.904312
	.quad	0x4015492817763e4b              # double 5.3214420000000002
	.quad	0x4023ce8dda48b652              # double 9.9034259999999996
	.quad	0x401b2d7342edbb5a              # double 6.7943850000000001
	.quad	0x400e5d28d002e233              # double 3.7954880000000002
	.quad	0x401b03d35eb7457c              # double 6.753736
	.quad	0x402328c6f7a0b5ee              # double 9.5796430000000008
	.quad	0x3fdd2584f4c6e6da              # double 0.45541500000000001
	.quad	0x4020732e59af9ebf              # double 8.2249630000000007
	.quad	0x4021fd24bfd2e947              # double 8.9944210000000009
	.quad	0x4022c4b966be7afa              # double 9.3842269999999992
	.quad	0x401e1bb1af3a14cf              # double 7.5270450000000002
	.quad	0x40187470eb24a6a8              # double 6.1137119999999996
	.quad	0x400b47b2cc70867b              # double 3.4100090000000001
	.quad	0x4013525247cb70ac              # double 4.8303919999999998
	.quad	0x3fd06102795703f3              # double 0.25592100000000001
	.quad	0x3feb5ccc89b0ee4a              # double 0.855078
	.quad	0x401a0d64d7f0ed3e              # double 6.5130800000000004
	.quad	0x40211a8d64d7f0ed              # double 8.5518599999999996
	.quad	0x40238bdcf0307f24              # double 9.7731700000000003
	.quad	0x4003eb1feeb2d0a2              # double 2.4898069999999999
	.quad	0x4022831ceaf251c2              # double 9.2560800000000008
	.quad	0x401128f9f44d4456              # double 4.2900159999999996
	.quad	0x402274a48f96e158              # double 9.2278179999999991
	.quad	0x40188ef284167a96              # double 6.1395970000000002
	.quad	0x4013992e1ef73c0c              # double 4.8995899999999999
	.quad	0x401ba59ff4fd6d7f              # double 6.9117430000000004
	.quad	0x3fd75dd4c76d117b              # double 0.36510199999999998
	.quad	0x3fee07980f55de59              # double 0.93842700000000001
	.quad	0x401bcf041461b6d4              # double 6.9521639999999998
	.quad	0x3ff01028a1dfb939              # double 1.0039450000000001
	.quad	0x40174096feb4a665              # double 5.8130759999999997
	.quad	0x3fc672fba01eeed9              # double 0.17538400000000001
	.quad	0x401eef11b60ae968              # double 7.7334659999999999
	.quad	0x40109a7fc32ebe59              # double 4.1508779999999996
	.quad	0x40220b458cd20afa              # double 9.0220149999999997
	.quad	0x401675ea24cc6823              # double 5.615151
	.quad	0x3fe58522ea0fd3b3              # double 0.67250200000000004
	.quad	0x401d5b11409a2403              # double 7.3389329999999999
	.quad	0x401a697dd00f776c              # double 6.6030189999999997
	.quad	0x3fff846e8f29d40f              # double 1.969832
	.quad	0x4014427674d16335              # double 5.0649050000000004
	.quad	0x3fe7f143393ab431              # double 0.748201
	.quad	0x40129d141a6937d2              # double 4.653397
	.quad	0x4022b9e8a2ec28b3              # double 9.3631030000000006
	.quad	0x40221115df6555c5              # double 9.0333699999999997
	.quad	0x4006cb945308bb90              # double 2.8494039999999998
	.quad	0x3fe4e11fd5885d31              # double 0.65248099999999998
	.quad	0x401689b8cb8e086c              # double 5.6344940000000001
	.quad	0x4015d01083dbc233              # double 5.4531879999999999
	.quad	0x40018871a3b14a90              # double 2.1916229999999999
	.quad	0x40159203a322af57              # double 5.3925919999999996
	.quad	0x40163e653868fd1a              # double 5.5609330000000003
	.quad	0x4020bc98c3b0c459              # double 8.3683530000000008
	.quad	0x4015f77d955714ba              # double 5.4916900000000002
	.quad	0x3feaecfc829cfdd2              # double 0.84142899999999998
	.quad	0x3ffa84f4c6e6d9be              # double 1.6574599999999999
	.quad	0x401f8517a46173b8              # double 7.8799729999999996
	.quad	0x4011334c1a8ac5c1              # double 4.3000949999999998
	.quad	0x401f54a4095f2453              # double 7.8326570000000002
	.quad	0x4021421405708249              # double 8.6290589999999998
	.quad	0x40172f1ae2da554c              # double 5.7960010000000004
	.quad	0x3ff6abde3fbbd7b2              # double 1.41696
	.quad	0x40112a4873365882              # double 4.2912920000000003
	.quad	0x3fda2862f5989df1              # double 0.40871499999999999
	.quad	0x4019258f7121ab4b              # double 6.2866799999999996
	.quad	0x401319d40ee06d94              # double 4.7752230000000004
	.quad	0x4023111105e1c151              # double 9.5333330000000007
	.quad	0x3ff20b3e5753a3ec              # double 1.127745
	.quad	0x3fe2a5daf07bfe7e              # double 0.58274599999999999
	.quad	0x40018070329802c1              # double 2.1877140000000002
	.quad	0x3ff0d681ecd4aa11              # double 1.05237
	.quad	0x4015c5a57646ae3a              # double 5.4430139999999998
	.quad	0x4020edeacc92146a              # double 8.4646819999999998
	.quad	0x400a4991ff7164c7              # double 3.2859229999999999
	.quad	0x401f3667b5f1bef5              # double 7.8031300000000003
	.quad	0x401f4ec41dd1a21f              # double 7.8269200000000003
	.quad	0x4022e206e9ff0cbb              # double 9.441459
	.quad	0x3fc5f3bea91d9b1b              # double 0.17150099999999999
	.quad	0x4014ff9d2bf55150              # double 5.2496229999999997
	.quad	0x40090dcc20d5629e              # double 3.1317370000000002
	.quad	0x401cf273d5bab218              # double 7.2367699999999999
	.quad	0x40087d4738a3b57c              # double 3.0611709999999999
	.quad	0x3ff876ea4228997c              # double 1.5290319999999999
	.quad	0x4001e42aed139431              # double 2.2364099999999998
	.quad	0x400d443c3a42f1ed              # double 3.658318
	.quad	0x401b4ce63a5c1c61              # double 6.8250970000000004
	.quad	0x400dbdf090f733a9              # double 3.7177440000000002
	.quad	0x40158d7060bb2bbb              # double 5.3881240000000004
	.quad	0x40153c77dd872f34              # double 5.3090510000000002
	.quad	0x3ff289ba5e353f7d              # double 1.158625
	.quad	0x40229ea28fe260b3              # double 9.3098340000000004
	.quad	0x3ff06c7219220ff5              # double 1.0264759999999999
	.quad	0x4023c111276fb092              # double 9.877084
	.quad	0x4022b716f4384ba1              # double 9.3575970000000001
	.quad	0x4011ee9ff0cbaf96              # double 4.4830319999999997
	.quad	0x4006f16d2aa5c5f8              # double 2.8678840000000001
	.quad	0x3fc0caeea63b688c              # double 0.131193
	.quad	0x402346d58c8eef1c              # double 9.6383480000000005
	.quad	0x4023b7ff151e7536              # double 9.8593679999999999
	.quad	0x4007bf1e0828c36e              # double 2.9683190000000002
	.quad	0x4022968f08461f9f              # double 9.29406
	.quad	0x4012e73eab367a10              # double 4.7258250000000004
	.quad	0x40233837f7be121f              # double 9.6098020000000001
	.quad	0x400838b60f1b25f6              # double 3.0276909999999999
	.quad	0x4013dcb31c219eb6              # double 4.9655269999999998
	.quad	0x3fff18ff75968512              # double 1.943603
	.quad	0x3fca4cd74927913f              # double 0.20547000000000001
	.quad	0x40178c8259e1f3a5              # double 5.8872159999999996
	.quad	0x401768cf7caa758a              # double 5.8523540000000001
	.quad	0x401c348882f0e0a8              # double 7.0513019999999997
	.quad	0x4011858fb43d89ce              # double 4.3804309999999997
	.quad	0x3ffe54ee392e1ef7              # double 1.8957349999999999
	.quad	0x401b0af1455219a8              # double 6.7606859999999998
	.quad	0x400eb08893b7d849              # double 3.836198
	.quad	0x401845a3e39f7729              # double 6.0680079999999998
	.quad	0x4012514b599aa609              # double 4.5793889999999999
	.quad	0x3fd4977c88e79aae              # double 0.32174599999999998
	.quad	0x4007a63065f9591d              # double 2.9561470000000001
	.quad	0x3ff57226c3b927d4              # double 1.3403689999999999
	.quad	0x401e22cecc814d72              # double 7.5339919999999996
	.quad	0x4008bb62c77574f7              # double 3.0914969999999999
	.quad	0x4013d15b1422ccb4              # double 4.9544490000000003
	.quad	0x40110d31b9b66f93              # double 4.2628849999999998
	.quad	0x4023eaeea63b688c              # double 9.9588520000000002
	.quad	0x3fe769c23b7952d2              # double 0.73165999999999998
	.quad	0x4020b18611fd5886              # double 8.3467260000000003
	.quad	0x40121f566490a351              # double 4.5306030000000002
	.quad	0x4012b38194c01605              # double 4.6752989999999999
	.quad	0x400cf6134ce3de61              # double 3.6201539999999999
	.quad	0x400737cb2d905c03              # double 2.9022429999999999
	.quad	0x4010276965f5275f              # double 4.0384880000000001
	.quad	0x400c09131ec0b567              # double 3.5044309999999999
	.quad	0x40161b2fa93af74d              # double 5.5265490000000002
	.quad	0x40237f5caf2d7f95              # double 9.7487539999999999
	.quad	0x3fe0d41d8e864021              # double 0.52589300000000005
	.quad	0x400d93d5bab21816              # double 3.6971850000000002
	.quad	0x402026e6d9be4cd7              # double 8.0759799999999995
	.quad	0x400c56a6a012599f              # double 3.5423100000000001
	.quad	0x400b88448cf7caa7              # double 3.4415369999999998
	.quad	0x4022189528f190d1              # double 9.0480129999999992
	.quad	0x3ff30dfefbf401c5              # double 1.190917
	.quad	0x4014bb0856e696a2              # double 5.1826489999999996
	.quad	0x40106346dc5d6388              # double 4.0969499999999996
	.quad	0x401e7b2cc70867ae              # double 7.6202880000000004
	.quad	0x4020d1799e518f3f              # double 8.4091310000000004
	.quad	0x4010b913e81450f0              # double 4.1807400000000001
	.quad	0x401e883f4eca686e              # double 7.6330539999999996
	.quad	0x3fd6eba27ae9ab2a              # double 0.35813200000000001
	.quad	0x3ffd68bd230b9dc3              # double 1.838071
	.quad	0x401abc10d7be9857              # double 6.6836580000000003
	.quad	0x3ff1330728e92d56              # double 1.0749580000000001
	.quad	0x3ffa1694ccab3ede              # double 1.6305130000000001
	.quad	0x3ff7bf034b0e1b4c              # double 1.4841340000000001
	.quad	0x401af37154003255              # double 6.7377370000000001
	.quad	0x401b24cc6822ff09              # double 6.7859360000000004
	.quad	0x40115cdd0d8cb07d              # double 4.340687
	.quad	0x4006e93b7d84901d              # double 2.863883
	.quad	0x40111aef2c732592              # double 4.2763030000000004
	.quad	0x4013e3affb04ee7c              # double 4.9723509999999997
	.quad	0x4022144998d045fe              # double 9.0396239999999999
	.quad	0x40201a0e1f7d73c9              # double 8.0508889999999997
	.quad	0x3ff6781d7dbf4880              # double 1.404325
	.quad	0x40044102795703f3              # double 2.5317430000000001
	.quad	0x402283bff8a8f3aa              # double 9.2573240000000006
	.quad	0x3ffab91a32b12d34              # double 1.670191
	.quad	0x401d3d3c792d1288              # double 7.3098010000000002
	.quad	0x40212bb6cbd987c6              # double 8.5853789999999996
	.quad	0x4013d1cd1c7de508              # double 4.9548839999999998
	.quad	0x4013584e831ad213              # double 4.8362369999999997
	.quad	0x3fb88f32378ab0c9              # double 0.095935000000000006
	.quad	0x4014db9e8c47a17f              # double 5.2144719999999998
	.quad	0x4023951654d61b2a              # double 9.7911859999999997
	.quad	0x40024cfd8f0c77de              # double 2.2875930000000002
	.quad	0x3fd1a5accd53048a              # double 0.27573700000000001
	.quad	0x3ff7a20ccff21b3b              # double 1.477063
	.quad	0x4021ff995ee136e7              # double 8.9992169999999998
	.quad	0x40011320535c9e67              # double 2.1343390000000002
	.quad	0x401ca2d40aaeafab              # double 7.1590119999999997
	.quad	0x40148b295e9e1b09              # double 5.1359000000000004
	.quad	0x3fee2eafab53d641              # double 0.94319900000000001
	.quad	0x4012c1a543f1c758              # double 4.6891069999999999
	.quad	0x3fe0fed84d338f7a              # double 0.53110900000000005
	.quad	0x40229129aa1d755c              # double 9.2835210000000003
	.quad	0x40097a22f6a50d6b              # double 3.1846369999999999
	.quad	0x400014794ea07703              # double 2.0099969999999998
	.quad	0x401064d338f79852              # double 4.0984619999999996
	.quad	0x4012e5d4e8fb00bd              # double 4.7244450000000002
	.quad	0x3ff96cca2db61bb0              # double 1.5890599999999999
	.quad	0x402113acb4289119              # double 8.5384270000000004
	.quad	0x401f798244e93e1d              # double 7.8686610000000003
	.quad	0x401e6b76b3bb83cf              # double 7.6049449999999998
	.quad	0x4014ca2c669057d1              # double 5.1974349999999996
	.quad	0x401e375fb2edfe76              # double 7.5540760000000002
	.quad	0x401fcce3de6149c7              # double 7.950088
	.quad	0x401631e3a7daa4fd              # double 5.5487200000000003
	.quad	0x3ffe7a4d6e47dc38              # double 1.9048590000000001
	.quad	0x401bfdde37585be2              # double 6.9979180000000003
	.quad	0x3fe1476f2a5a469d              # double 0.53996999999999995
	.quad	0x3fedfad080b673c5              # double 0.93686700000000001
	.quad	0x4017be2d1f1cfbb9              # double 5.9357189999999997
	.quad	0x4022acdb9c7368ad              # double 9.3376129999999993
	.quad	0x4021d7705857afea              # double 8.9207789999999996
	.quad	0x402109797cc39ffd              # double 8.5185049999999993
	.quad	0x3fc2256366d7a56e              # double 0.141766
	.quad	0x3fe854ac29bf162b              # double 0.76033600000000001
	.quad	0x401b2a93f290abb4              # double 6.7915799999999997
	.quad	0x401a1bb7f9d6f113              # double 6.527069
	.quad	0x402379db877ab325              # double 9.7380030000000008
	.quad	0x40234f42fe82517e              # double 9.6548079999999992
	.quad	0x401f43a08398a655              # double 7.8160420000000003
	.quad	0x402290bfa0945f9e              # double 9.2827120000000001
	.quad	0x4023eb45ae5ffa3c              # double 9.9595160000000007
	.quad	0x401883400b88ca3e              # double 6.1281739999999996
	.quad	0x400e6dda48b65237              # double 3.803639
	.quad	0x40058083126e978d              # double 2.6877499999999999
	.quad	0x40082e70c1333b97              # double 3.0226760000000001
	.quad	0x3ffd114d2f5dbb9d              # double 1.816724
	.quad	0x3ff837ed41b75a75              # double 1.5136540000000001
	.quad	0x3ffd9c4007570c56              # double 1.8506469999999999
	.quad	0x4010ab38d60a6330              # double 4.1672089999999997
	.quad	0x40236c039abf3387              # double 9.7109649999999998
	.quad	0x40144ece5710880e              # double 5.0769590000000004
	.quad	0x401322702a3486f0              # double 4.7836309999999997
	.quad	0x4015cc5c13fd0d06              # double 5.4495699999999996
	.quad	0x3ffb80de4c51116b              # double 1.7189620000000001
	.quad	0x40202eb3fe9fadb0              # double 8.0912170000000003
	.quad	0x3ff3287f455a7d24              # double 1.197387
	.quad	0x3fea4473cd573648              # double 0.82085600000000003
	.quad	0x401ba29fe004b7f6              # double 6.9088130000000003
	.quad	0x400cb90b84988095              # double 3.590354
	.quad	0x3ff39e6ff7dfa00e              # double 1.226181
	.quad	0x40232be7d135115a              # double 9.5857530000000004
	.quad	0x4018e395c4220360              # double 6.222251
	.quad	0x3fe57e175d13d74d              # double 0.67164199999999996
	.quad	0x4000770153bd1676              # double 2.0581079999999998
	.quad	0x400d2328f9f44d44              # double 3.6421679999999999
	.quad	0x40144f5e41d4b6a6              # double 5.0775079999999999
	.quad	0x4019993d96638434              # double 6.3996490000000001
	.quad	0x40036dcebfec13ba              # double 2.428617
	.quad	0x401fc4df04ddb552              # double 7.9422569999999997
	.quad	0x4020f509bf9c62a2              # double 8.4785900000000005
	.quad	0x4016e467381d7dbf              # double 5.7230499999999997
	.quad	0x40193da6e75ff60a              # double 6.3102070000000001
	.quad	0x4000dbdc69f8c21e              # double 2.1073539999999999
	.quad	0x400bb6616b54e2b0              # double 3.4640529999999998
	.quad	0x400ef5ec80c73abd              # double 3.8700800000000002
	.quad	0x401f4ba301216830              # double 7.8238640000000004
	.quad	0x40226044d013a92a              # double 9.1880249999999997
	.quad	0x40214e8d32830a0b              # double 8.6534209999999998
	.quad	0x4022bf7e80389f84              # double 9.3740120000000004
	.quad	0x40207823c85c24c4              # double 8.2346479999999999
	.quad	0x40102add9c27e953              # double 4.0418609999999999
	.quad	0x40187a6a012599ed              # double 6.1195449999999996
	.quad	0x401aafd6d7e889c2              # double 6.6717180000000003
	.quad	0x40090d4a1ad6451c              # double 3.1314890000000002
	.quad	0x40145061c79b34a4              # double 5.0784979999999997
	.quad	0x4014496fa82e87d3              # double 5.0717150000000002
	.quad	0x3fd1c87980f55de6              # double 0.27786100000000002
	.quad	0x4013b5a038194c01              # double 4.9273689999999997
	.quad	0x401bbbc83a96d4c3              # double 6.9333809999999998
	.quad	0x400dfd82773e24ff              # double 3.7487840000000001
	.quad	0x400c117a46173b86              # double 3.508534
	.quad	0x401be1b64e054691              # double 6.9704220000000001
	.quad	0x3ffadbe8ff327aa7              # double 1.6786890000000001
	.quad	0x401cc10c2c5e2cdc              # double 7.188523
	.quad	0x4002fd5c31593e60              # double 2.3737110000000001
	.quad	0x400ecb228dc981bf              # double 3.8491870000000001
	.quad	0x400d7b341e14bdfd              # double 3.6851579999999999
	.quad	0x3fbfe047d3d4280b              # double 0.124516
	.quad	0x400eb2ea52ef911d              # double 3.837361
	.quad	0x3fe615bbbe878fac              # double 0.69015300000000002
	.quad	0x3feb2a6d26740810              # double 0.84892900000000004
	.quad	0x401c55015c209247              # double 7.0830130000000002
	.quad	0x3fe5c6822ff08894              # double 0.68048200000000003
	.quad	0x40189246bf01322f              # double 6.1428479999999999
	.quad	0x4013e2fe3f359ff5              # double 4.971673
	.quad	0x400d1be121ee6751              # double 3.6386129999999999
	.quad	0x401805c4a83b1d0d              # double 6.0056330000000004
	.quad	0x401f6d60e94ee393              # double 7.8568150000000001
	.quad	0x4019b3f52fc2656b              # double 6.4257400000000002
	.quad	0x3ffe8bfb15b573eb              # double 1.9091750000000001
	.quad	0x400fb5aa715831f0              # double 3.9637039999999999
	.quad	0x4020d86034f3fd93              # double 8.4226089999999996
	.quad	0x40183de8b3b32053              # double 6.0604579999999997
	.quad	0x401cfca85caafbc2              # double 7.2467360000000003
	.quad	0x4013dbc1eff9f87f              # double 4.964607
	.quad	0x401db685db76b3bc              # double 7.4282450000000004
	.quad	0x4009f50870110a13              # double 3.2446449999999998
	.quad	0x3fdda05dd8f92afa              # double 0.46291300000000002
	.quad	0x4007143419e30015              # double 2.884865
	.quad	0x402012582dbe7f2c              # double 8.0358289999999996
	.quad	0x402350f238972043              # double 9.6580980000000007
	.quad	0x40110143393ab431              # double 4.251233
	.quad	0x401132599ed7c6fc              # double 4.2991700000000002
	.quad	0x4017dd6dc1a47a9e              # double 5.9662389999999998
	.quad	0x40159d9620685554              # double 5.4038930000000001
	.quad	0x4014d7ad8e432442              # double 5.210623
	.quad	0x402318c6d612c6ac              # double 9.5483919999999997
	.quad	0x3fea0650e779207d              # double 0.81327099999999997
	.quad	0x401616006d0d4995              # double 5.5214860000000003
	.quad	0x40222cc532a497fa              # double 9.0874419999999994
	.quad	0x401268f8e7ddca4b              # double 4.6025119999999999
	.quad	0x4001f158b827fa1a              # double 2.242845
	.quad	0x40040a3ad18d25ee              # double 2.5049950000000001
	.quad	0x3fe2fc5479d4d834              # double 0.593302
	.quad	0x3ffda1ff2e48e8a7              # double 1.85205
	.quad	0x3fe9061847f56217              # double 0.78199399999999997
	.quad	0x3fe6053c148344c3              # double 0.68813899999999995
	.quad	0x4018231b584b1ab1              # double 6.0342840000000004
	.quad	0x4015d9f59ccfaeff              # double 5.4628509999999997
	.quad	0x3fcc864020817fc7              # double 0.22284699999999999
	.quad	0x401f366e43aa79bc              # double 7.8031550000000003
	.quad	0x4012816b11c6d1e1              # double 4.626385
	.quad	0x40171ecaab8a5ce6              # double 5.7800700000000003
	.quad	0x3fea7de5082cf52c              # double 0.82786800000000004
	.quad	0x4019ec0010c6f7a1              # double 6.4804690000000003
	.quad	0x3fedc51b93037d63              # double 0.930311
	.quad	0x401e28e0c9d9d346              # double 7.5399200000000004
	.quad	0x3ff8257a786c2268              # double 1.50915
	.quad	0x401c719934efcbd5              # double 7.1109359999999997
	.quad	0x40194246bf01322f              # double 6.3147229999999999
	.quad	0x4011bf9b56323bbc              # double 4.4371159999999996
	.quad	0x3fe7fbaa9b499d02              # double 0.749471
	.quad	0x3ff76cf7446f9b99              # double 1.4641029999999999
	.quad	0x400008bd230b9dc3              # double 2.004267
	.quad	0x4012b78811b1d92b              # double 4.6792299999999996
	.quad	0x400c6ab3edd8b60f              # double 3.552101
	.quad	0x402071290257c915              # double 8.2210160000000005
	.quad	0x401048e2e2b8c75c              # double 4.0711779999999997
	.quad	0x4014a3b7d84901d2              # double 5.1598810000000004
	.quad	0x3ffc286b59146e4c              # double 1.759868
	.quad	0x40179ce789e774ef              # double 5.9032270000000002
	.quad	0x4018c0b6b6e0d23d              # double 6.1881969999999997
	.quad	0x3ffaf1b0468448cf              # double 1.6840059999999999
	.quad	0x402011a34ca0c283              # double 8.0344490000000004
	.quad	0x40197553ef6b5d46              # double 6.3645779999999998
	.quad	0x3fdb008637bd05af              # double 0.42190699999999998
	.quad	0x40146efb2aae2974              # double 5.1083800000000004
	.quad	0x401b0afa7221858c              # double 6.7607210000000002
	.quad	0x401511e8a2ec28b3              # double 5.2674890000000003
	.quad	0x401ab45e9185cee1              # double 6.6761419999999996
	.quad	0x3f9c1d29dc725c3e              # double 0.027455
	.quad	0x40128e06d938151a              # double 4.6386979999999998
	.quad	0x3fb71ca7d6733ebc              # double 0.090281
	.quad	0x3fc741aef6f8f041              # double 0.18169199999999999
	.quad	0x40230d49731098d4              # double 9.5259509999999991
	.quad	0x402385da6a444178              # double 9.7614319999999992
	.quad	0x3ffebe889c1b5419              # double 1.9215169999999999
	.quad	0x3ff8038e29f9ce8e              # double 1.5008680000000001
	.quad	0x4013715097c80842              # double 4.8606590000000001
	.quad	0x400e47c957cd466f              # double 3.7850519999999999
	.quad	0x401ee790b8498809              # double 7.7261379999999997
	.quad	0x4020455193708aad              # double 8.1353880000000007
	.quad	0x3fdcdbbe0157eed4              # double 0.45091199999999998
	.quad	0x400bfe974a3400b9              # double 3.4993120000000002
	.quad	0x3ff3e03d57796399              # double 1.242246
	.quad	0x40150f5989df1173              # double 5.2649900000000001
	.quad	0x4008dbe5d9e40c84              # double 3.1073719999999998
	.quad	0x4021d168d759ee89              # double 8.9090030000000002
	.quad	0x3ff348398a654930              # double 1.205133
	.quad	0x3fe54d1e96c3fc44              # double 0.66566400000000003
	.quad	0x40217efd651b0ccc              # double 8.7480270000000004
	.quad	0x401d614057082492              # double 7.3449720000000003
	.quad	0x401490ea18372e6a              # double 5.1415179999999996
	.quad	0x401bc06e9ff0cbb0              # double 6.9379220000000004
	.quad	0x402378e9f6a93f29              # double 9.7361599999999999
	.quad	0x3ff2f507e9d94d0e              # double 1.184822
	.quad	0x40200c853c148345              # double 8.0244540000000004
	.quad	0x401925885d31337f              # double 6.2866530000000003
	.quad	0x400827bbb62413db              # double 3.0194009999999998
	.quad	0x400ebc7820a30db7              # double 3.8420260000000002
	.quad	0x4020f6aa6d267408              # double 8.4817689999999999
	.quad	0x401d0b402d16b980              # double 7.2609870000000001
	.quad	0x3fd1c8abd5dc4007              # double 0.27787299999999998
	.quad	0x3fa5eb313be22e5e              # double 0.042810000000000001
	.quad	0x3fe21d92b7fe08af              # double 0.56611
	.quad	0x40171b07d0aed99d              # double 5.7763970000000002
	.quad	0x3fe8f84662bae03b              # double 0.78030699999999997
	.quad	0x400c6219eb6390c9              # double 3.547901
	.quad	0x40087696e58a32f4              # double 3.0579049999999999
	.quad	0x4001dab8e8ea39c5              # double 2.2317979999999999
	.quad	0x4021bb4d8ba40d91              # double 8.8658260000000002
	.quad	0x4011067168f8e7de              # double 4.2562920000000002
	.quad	0x3fff1b34a44c7b03              # double 1.944142
	.quad	0x3fd9dab191dde376              # double 0.40397300000000003
	.quad	0x400a9a1db877ab32              # double 3.3252519999999999
	.quad	0x4013719eb6390c91              # double 4.860957
	.quad	0x3fe02433508f648c              # double 0.50441899999999995
	.quad	0x4005ece89656eefa              # double 2.7406779999999999
	.quad	0x400f818ce2d1f1d0              # double 3.9382570000000001
	.quad	0x400f2af78feef5ed              # double 3.8959800000000002
	.quad	0x400b1d1fe64f54d2              # double 3.389221
	.quad	0x40231c9ea9a3d2d8              # double 9.5558979999999991
	.quad	0x4001ff08893b7d85              # double 2.2495280000000002
	.quad	0x40215dc0db2702a3              # double 8.6831119999999995
	.quad	0x4015e4c09c3ce209              # double 5.4733910000000003
	.quad	0x40015668c2613900              # double 2.167192
	.quad	0x400e3ac1d29dc726              # double 3.7786900000000001
	.quad	0x402070060780fdc1              # double 8.2187959999999993
	.quad	0x40103070fbeb9e49              # double 4.0473059999999998
	.quad	0x4022bfaca3619978              # double 9.3743639999999999
	.quad	0x3ff00d5a5b9628cc              # double 1.00326
	.quad	0x3fccb21815a07b35              # double 0.224185
	.quad	0x401a78d6d3b6cbda              # double 6.6180070000000004
	.quad	0x4021f5d22856605f              # double 8.9801190000000002
	.quad	0x3ff1a37585be1a82              # double 1.1024069999999999
	.quad	0x40174b6fe2e6ea85              # double 5.8236689999999998
	.quad	0x3ffd016aceaaf35e              # double 1.812846
	.quad	0x40139cbee807bbb6              # double 4.9030719999999999
	.quad	0x40162fd1569f4906              # double 5.546697
	.quad	0x4017336694898f60              # double 5.8001959999999997
	.quad	0x4000d8e0008637bd              # double 2.105896
	.quad	0x3ff91d26b723ee1c              # double 1.569617
	.quad	0x4002c491afc04c8c              # double 2.3459810000000001
	.quad	0x4012ee892253111f              # double 4.732945
	.quad	0x4008fc0a06e9ff0d              # double 3.1230660000000001
	.quad	0x401156edaa92e621              # double 4.3348909999999998
	.quad	0x400c46c97d8cf399              # double 3.534564
	.quad	0x4004ac54bcf0b6b7              # double 2.5841460000000001
	.quad	0x3fe096ce789e774f              # double 0.51840900000000001
	.quad	0x400d04ad794a6eb9              # double 3.627284
	.quad	0x402118f7db6e5040              # double 8.5487660000000005
	.quad	0x3fd29f01b866e43b              # double 0.29095500000000002
	.quad	0x400ac7229e90795f              # double 3.3472339999999998
	.quad	0x3fee263305100a39              # double 0.94216299999999997
	.quad	0x4003e437824d4cba              # double 2.486434
	.quad	0x4013acf5f4e4430b              # double 4.9189069999999999
	.quad	0x401f3d9e40c8472c              # double 7.8101739999999999
	.quad	0x400e979b77c02afe              # double 3.8240270000000001
	.quad	0x40124b441bb8c32b              # double 4.5735020000000004
	.quad	0x40232ca643cc07ab              # double 9.5872060000000001
	.quad	0x3fda9ce4a7b4e54f              # double 0.41582599999999997
	.quad	0x401a72d905c03361              # double 6.6121559999999997
	.quad	0x40062aac96cc5fc0              # double 2.7708370000000002
	.quad	0x400a7bb16c1e364c              # double 3.310397
	.quad	0x3fcd5c422036006d              # double 0.229378
	.quad	0x400f27ec7863beec              # double 3.8944939999999999
	.quad	0x4021943c18b502ac              # double 8.7895210000000005
	.quad	0x401f5833c60029f1              # double 7.8361349999999996
	.quad	0x4004b48e4755ffe7              # double 2.5881620000000001
	.quad	0x4003a8bda9435ac9              # double 2.4573930000000002
	.quad	0x401a596638433d6c              # double 6.5873039999999996
	.quad	0x400a4ed80a17b0f7              # double 3.2884980000000001
	.quad	0x4022218b0d0edc3c              # double 9.0655140000000002
	.quad	0x400a3f5c6c11a112              # double 3.2809379999999999
	.quad	0x4022650bb6ed6777              # double 9.1973549999999999
	.quad	0x400d3fec99f1ae2e              # double 3.6562130000000002
	.quad	0x40165238da3c2118              # double 5.5802949999999996
	.quad	0x401e9e1bd1ed9dfe              # double 7.6544030000000003
	.quad	0x400d9bd512ec6bcf              # double 3.7010900000000002
	.quad	0x401f0e4d1a650614              # double 7.7639659999999999
	.quad	0x4008b8244e93e1ca              # double 3.0899130000000001
	.quad	0x4020d37281fd9ba2              # double 8.4129830000000005
	.quad	0x4022ab9ecf638002              # double 9.3351959999999998
	.quad	0x3ff084523f67f4dc              # double 1.032305
	.quad	0x4022eb8aa00192a7              # double 9.4600419999999996
	.quad	0x40231ec743201041              # double 9.5601140000000004
	.quad	0x40169587d6f97679              # double 5.646026
	.quad	0x3fc4cd7cf5f4e443              # double 0.162521
	.quad	0x401de8e25c810a57              # double 7.4774260000000004
	.quad	0x4020d3d859c8c932              # double 8.4137599999999999
	.quad	0x4018e4a4095f2453              # double 6.2232820000000002
	.quad	0x4020f66eeb702603              # double 8.4813150000000004
	.quad	0x401301c432ca57a8              # double 4.7517250000000004
	.quad	0x40147423d9231c65              # double 5.1134180000000002
	.quad	0x4017226f60e0eb68              # double 5.7836280000000002
	.quad	0x3ff4324d8fd5cb79              # double 1.262281
	.quad	0x400755e28aa43351              # double 2.9169360000000002
	.quad	0x40174d0bfa0945fa              # double 5.8252410000000001
	.quad	0x4000884cf0739b02              # double 2.0665529999999999
	.quad	0x400f6ba301216830              # double 3.9275570000000002
	.quad	0x3ff6281ba7fc32ec              # double 1.384792
	.quad	0x401e509b738e6d16              # double 7.5787180000000003
	.quad	0x400a5301eabbcb1d              # double 3.2905310000000001
	.quad	0x4022f0bb2bba98ee              # double 9.4701780000000007
	.quad	0x40079ff583a53b8e              # double 2.9531049999999999
	.quad	0x40168cadddf43c7d              # double 5.6373819999999997
	.quad	0x40206bea704bc276              # double 8.2107729999999997
	.quad	0x4021eb721d53cddd              # double 8.9598549999999992
	.quad	0x400de4d44567125e              # double 3.7367330000000001
	.quad	0x3ff676177ea1c68f              # double 1.4038310000000001
	.quad	0x4012fa4d2b2bfdb5              # double 4.7444350000000002
	.quad	0x4012d9799e518f3f              # double 4.7123780000000002
	.quad	0x40111ed99cbee808              # double 4.2801270000000002
	.quad	0x401ccc122749f0e5              # double 7.1992880000000001
	.quad	0x3feb2413db7f1737              # double 0.84815399999999996
	.quad	0x400925c91d14e3bd              # double 3.1434500000000001
	.quad	0x402107d1569f4906              # double 8.515269
	.quad	0x40106b074a771c97              # double 4.1045199999999999
	.quad	0x401a9e3a7daa4fca              # double 6.6545199999999998
	.quad	0x4010b71758e21965              # double 4.1787999999999998
	.quad	0x40238b7110e453d2              # double 9.7723469999999999
	.quad	0x3fcf5e17e34b9453              # double 0.245059
	.quad	0x401bef47735c182f              # double 6.9836710000000002
	.quad	0x401b087f88765ba7              # double 6.7582990000000001
	.quad	0x400cbc9e6687f456              # double 3.5920990000000002
	.quad	0x4008509e98dcdb38              # double 3.0393650000000001
	.quad	0x3fe27e4bcad9ad86              # double 0.57791700000000001
	.quad	0x4000c1a79fec99f2              # double 2.0945580000000001
	.quad	0x401054c51116a8b9              # double 4.0827830000000001
	.quad	0x4021b4c575c0767d              # double 8.8530689999999996
	.quad	0x3ff0c5479d4d8341              # double 1.0481640000000001
	.quad	0x40234a91fb3fa6df              # double 9.645645
	.quad	0x402312af35e310dc              # double 9.5364930000000001
	.quad	0x401cac79b34a44c8              # double 7.1684330000000003
	.quad	0x3fe8e85122318330              # double 0.77835900000000002
	.quad	0x401ef532617c1bda              # double 7.7394499999999997
	.quad	0x40180f837b4a233a              # double 6.0151500000000002
	.quad	0x3ff0aeb91b3f20a7              # double 1.0426569999999999
	.quad	0x4003d1f36262cba7              # double 2.4775149999999999
	.quad	0x4005bd9c27e95315              # double 2.7175829999999999
	.quad	0x3fecb3f42352eb5f              # double 0.89696699999999996
	.quad	0x40131382a12f9011              # double 4.7690530000000004
	.quad	0x3ffe02a12f901084              # double 1.875642
	.quad	0x400cdc3a42f1ed18              # double 3.6075330000000001
	.quad	0x402175e1e2de8709              # double 8.7302389999999992
	.quad	0x402257eb6bf444e1              # double 9.1717180000000003
	.quad	0x4018eb13165d3997              # double 6.229565
	.quad	0x3ff24c36da87a073              # double 1.143607
	.quad	0x4010c89bd8383ada              # double 4.1959070000000001
	.quad	0x40128a9d1f601798              # double 4.6353650000000002
	.quad	0x4014631a4bdba0a5              # double 5.0967799999999999
	.quad	0x400c7e77d523b363              # double 3.5617519999999998
	.quad	0x4005c25204af9229              # double 2.7198829999999998
	.quad	0x40151db9841aac54              # double 5.2790280000000003
	.quad	0x400676d97b30f8c6              # double 2.8080319999999999
	.quad	0x400edec99f1ae2da              # double 3.8587829999999999
	.quad	0x4007470e2c12ad82              # double 2.9096950000000001
	.quad	0x400c156c93a71151              # double 3.5104609999999998
	.quad	0x3ff289f94855da27              # double 1.158685
	.quad	0x3ff79c93ea2d2fe4              # double 1.475727
	.quad	0x3ffafc3f811f4f51              # double 1.6865840000000001
	.quad	0x4021d8beb5b2d4d4              # double 8.9233299999999999
	.quad	0x40028a46e08f2171              # double 2.3175180000000002
	.quad	0x401f2ec2ce464990              # double 7.7956649999999996
	.quad	0x4018447c73eee526              # double 6.0668810000000004
	.quad	0x402396f954eb13e0              # double 9.7948710000000005
	.quad	0x401b484be40420f7              # double 6.8206020000000001
	.quad	0x4022a30f6ad70e6f              # double 9.3184769999999997
	.quad	0x3ff83a786c22680a              # double 1.514275
	.quad	0x3ff2d536933a0408              # double 1.177054
	.quad	0x402362539756c93a              # double 9.6920439999999992
	.quad	0x401f0606b7aa25d9              # double 7.7558850000000001
	.quad	0x401da314445aa2e4              # double 7.4092570000000002
	.quad	0x4006c5f28848387e              # double 2.846654
	.quad	0x3ff3e54d61b2a27f              # double 1.243482
	.quad	0x40163697aeddce7d              # double 5.5533130000000002
	.quad	0x3ff807c84b5dcc64              # double 1.5019
	.quad	0x40234ab25b317efe              # double 9.6458919999999999
	.quad	0x3ffa92d87f88765c              # double 1.6608510000000001
	.quad	0x3ffdc2ababead4f6              # double 1.8600270000000001
	.quad	0x40061c8c0ce91c8f              # double 2.7639390000000001
	.quad	0x4016c96bb98c7e28              # double 5.6966999999999999
	.quad	0x401089d3cbc48f11              # double 4.1345970000000003
	.quad	0x401003f1843c3a43              # double 4.003851
	.quad	0x40211f9335d249e4              # double 8.5616699999999994
	.quad	0x4023faaed1394318              # double 9.9896150000000005
	.quad	0x4001cb380cb6c7a8              # double 2.2242280000000001
	.quad	0x40218501c0ca600b              # double 8.759779
	.quad	0x40013e731d2e0e30              # double 2.1554929999999999
	.quad	0x401421044f1a1987              # double 5.0322430000000002
	.quad	0x40158d099e0e7360              # double 5.3877319999999997
	.quad	0x4017d2888b545c79              # double 5.9555990000000003
	.quad	0x40137aca79357604              # double 4.8699130000000004
	.quad	0x4018cfe64f54d1e9              # double 6.2030269999999996
	.quad	0x4008c644d87724fb              # double 3.0968110000000002
	.quad	0x4014548c2e770bd0              # double 5.0825659999999999
	.quad	0x4021d9b024f6598e              # double 8.9251719999999999
	.quad	0x40167c77143393ab              # double 5.6215479999999998
	.quad	0x4002e47c30d306a3              # double 2.3615650000000001
	.quad	0x4018bbfc2224edf6              # double 6.1835789999999999
	.quad	0x4010f424a276b7ed              # double 4.2384209999999998
	.quad	0x401ebcfa26a22b39              # double 7.6845480000000003
	.quad	0x400a8e264e48626f              # double 3.3194089999999998
	.quad	0x400bb884406c00da              # double 3.465096
	.quad	0x4020e027b6fe2e6f              # double 8.4378030000000006
	.quad	0x3fe3355475a31a4c              # double 0.60026000000000002
	.quad	0x4021ba46bf01322f              # double 8.8638209999999997
	.quad	0x4021997ca2120e1f              # double 8.7997789999999991
	.quad	0x3ff82975afaf8594              # double 1.510122
	.quad	0x401d82fad6cb5350              # double 7.37791
	.quad	0x40235df394b7b289              # double 9.6834989999999994
	.quad	0x40131c3265add9c2              # double 4.7775359999999996
	.quad	0x40015bcdbbe0157f              # double 2.169826
	.quad	0x3ff05908e581cf78              # double 1.0217369999999999
	.quad	0x401252328f9f44d4              # double 4.5802709999999998
	.quad	0x4009aa6fc58ab92c              # double 3.208221
	.quad	0x40164c6c11a11234              # double 5.5746310000000001
	.quad	0x400de1f5be5d9e41              # double 3.7353320000000001
	.quad	0x4022a4406c00da1b              # double 9.3208040000000008
	.quad	0x3fe68a5ce5b4245f              # double 0.70438999999999996
	.quad	0x4009066a98244e94              # double 3.1281330000000001
	.quad	0x401005197a24894c              # double 4.0049799999999998
	.quad	0x4022ad50225742dd              # double 9.3385020000000001
	.quad	0x401ba1af3a14cec4              # double 6.9078949999999999
	.quad	0x4017f40af1cb89d7              # double 5.9883230000000003
	.quad	0x40151fb43d89ce4a              # double 5.2809609999999996
	.quad	0x4018a20642396074              # double 6.1582270000000001
	.quad	0x4009342cc2d6a9c5              # double 3.1504759999999998
	.quad	0x401de3a9b0681238              # double 7.4723269999999999
	.quad	0x402275870da5daf0              # double 9.2295459999999991
	.quad	0x4009b682f944241c              # double 3.2141169999999999
	.quad	0x3fedb8b8ae31d713              # double 0.92879900000000004
	.quad	0x4023b84944ed6fdb              # double 9.8599340000000008
	.quad	0x4021223e39f77293              # double 8.5668810000000004
	.quad	0x4022419dece57109              # double 9.1281580000000009
	.quad	0x3ff50b2d905c0336              # double 1.315229
	.quad	0x400f25479d4d8341              # double 3.8932030000000002
	.quad	0x4020cdfbf83382e4              # double 8.4023129999999994
	.quad	0x3ff0c6195464dc23              # double 1.0483640000000001
	.quad	0x4004dc5692b3cc4b              # double 2.6075870000000001
	.quad	0x400d5463497b7415              # double 3.6662050000000002
	.quad	0x40180d1e108c3f3e              # double 6.01281
	.quad	0x4023e2f661f18ca0              # double 9.9432860000000005
	.quad	0x402342dcb1465e89              # double 9.6305899999999997
	.quad	0x402299b4dcebfec1              # double 9.3002079999999996
	.quad	0x401ca4c016052503              # double 7.1608890000000001
	.quad	0x4009aa3e7d135116              # double 3.2081270000000002
	.quad	0x40109d91ab8e8ea4              # double 4.1538760000000003
	.quad	0x402036be596c82e0              # double 8.1069209999999998
	.quad	0x401cb9d8c6d612c7              # double 7.1814910000000003
	.quad	0x40191887a8d64d7f              # double 6.2739549999999999
	.quad	0x401cecc4ef88b978              # double 7.2312200000000004
	.quad	0x4004ffe004b7f5a5              # double 2.6249389999999999
	.quad	0x400536e7a311e860              # double 2.6518090000000001
	.quad	0x3ff0c97fa5d28d00              # double 1.049194
	.quad	0x400a371a7e308787              # double 3.2769059999999999
	.quad	0x40164fdf3b645a1d              # double 5.5780000000000003
	.quad	0x3ff95c8b86b15f89              # double 1.585094
	.quad	0x400e8a26e5471716              # double 3.8174570000000001
	.quad	0x401cde7685985ad5              # double 7.2172489999999998
	.quad	0x40228695b78cc9a7              # double 9.2628609999999991
	.quad	0x400893ee5eedcc21              # double 3.0722320000000001
	.quad	0x401935daf07bfe7e              # double 6.3025929999999999
	.quad	0x401a63aabcd78c43              # double 6.5973309999999996
	.quad	0x401646a161e4f766              # double 5.568975
	.quad	0x3fee4a6223e18698              # double 0.94657999999999997
	.quad	0x40088d477bbf93ff              # double 3.0689839999999999
	.quad	0x400ac4712e40852b              # double 3.3459189999999999
	.quad	0x401850fb65668c26              # double 6.0790839999999999
	.quad	0x40034671ef30a4e3              # double 2.4093969999999998
	.quad	0x4023017939a7c17b              # double 9.5028780000000008
	.quad	0x4001363022dd7a9a              # double 2.151459
	.quad	0x40144db877ab3248              # double 5.0758989999999997
	.quad	0x3ffc9fbd6a593a2e              # double 1.788999
	.quad	0x4022b95e17e34b94              # double 9.3620459999999994
	.quad	0x3fe2f995ee136e72              # double 0.59296700000000002
	.quad	0x401e834ca0c282c7              # double 7.628222
	.quad	0x401536640a6b93cd              # double 5.3031160000000002
	.quad	0x4002a288051c9f73              # double 2.329361
	.quad	0x4007fd19157abb88              # double 2.998583
	.quad	0x401e4ae70c1333b9              # double 7.5731469999999996
	.quad	0x402144ccab3edd8b              # double 8.6343739999999993
	.quad	0x400c27de5082cf53              # double 3.5194670000000001
	.quad	0x400de33df2a9d628              # double 3.7359580000000001
	.quad	0x40216a1682f94424              # double 8.7072029999999998
	.quad	0x4017389656eefa1e              # double 5.8052609999999998
	.quad	0x4021710c2c5e2cdc              # double 8.7207959999999999
	.quad	0x4020ccdf04ddb552              # double 8.4001389999999994
	.quad	0x4021494b7b28954a              # double 8.6431539999999991
	.quad	0x40150ae7924af0bf              # double 5.2606489999999999
	.quad	0x3ffe08e043a21640              # double 1.877167
	.quad	0x40149b1e9f277814              # double 5.151484
	.quad	0x4014b39ef0f16f44              # double 5.1754110000000004
	.quad	0x3fecace4649906cd              # double 0.89610500000000004
	.quad	0x40177f63800218df              # double 5.874403
	.quad	0x40159ffef39085f5              # double 5.4062460000000003
	.quad	0x4021cd6c2efd438d              # double 8.9012159999999998
	.quad	0x4017a01322f27350              # double 5.9063230000000004
	.quad	0x40112b9d3cbc48f1              # double 4.292592
	.quad	0x40116b4784230fd0              # double 4.3547650000000004
	.quad	0x400ebc8c0ce91c8f              # double 3.8420640000000001
	.quad	0x4018598cc144028e              # double 6.0874509999999997
	.quad	0x4009361804d98394              # double 3.1514129999999998
	.quad	0x401ddd2849cb252d              # double 7.4659740000000001
	.quad	0x3ffc2c929aa1d756              # double 1.7608820000000001
	.quad	0x401714fbdad7518b              # double 5.770492
	.quad	0x401469fd7a13c255              # double 5.1035060000000003
	.quad	0x4019fb1af3a14cec              # double 6.4952199999999998
	.quad	0x4005b7add15f02c5              # double 2.7146870000000001
	.quad	0x3fa280064a9cdc44              # double 0.036132999999999998
	.quad	0x4015b816aceaaf36              # double 5.4297740000000001
	.quad	0x4004c638c9752978              # double 2.5967880000000001
	.quad	0x40073d2bf5515055              # double 2.9048690000000001
	.quad	0x4020e360d0247022              # double 8.4440980000000003
	.quad	0x3fff1668c2613900              # double 1.942971
	.quad	0x4003a80b673c4f3c              # double 2.4570530000000002
	.quad	0x4013c0f238972043              # double 4.9384240000000004
	.quad	0x400e8c6583e8576d              # double 3.8185530000000001
	.quad	0x3fd3f63c31df761d              # double 0.31190400000000001
	.quad	0x401aa2c0a4a05dd9              # double 6.658938
	.quad	0x4015baab042528ae              # double 5.4322929999999996
	.quad	0x4003960d0247021d              # double 2.448267
	.quad	0x3fbc25f202107b78              # double 0.109954
	.quad	0x40197ededaec4a41              # double 6.3738970000000004
	.quad	0x4014393ee5eedcc2              # double 5.055904
	.quad	0x3ff296aceaaf35e3              # double 1.161786
	.quad	0x401897396d0917d7              # double 6.1476800000000003
	.quad	0x401f50f840181e04              # double 7.829072
	.quad	0x3fe4d816aceaaf36              # double 0.65137800000000001
	.quad	0x4003540e5a35d67c              # double 2.4160430000000002
	.quad	0x3ff604113c68661b              # double 1.375993
	.quad	0x40175d4c76d117b5              # double 5.8411119999999999
	.quad	0x4022c6cdd0d8cb08              # double 9.3882890000000003
	.quad	0x3ffdcbb4d48882f1              # double 1.862233
	.quad	0x3fde452c59fb1e19              # double 0.472972
	.quad	0x402234c2d6a9c561              # double 9.1030490000000004
	.quad	0x4006f32378ab0c89              # double 2.8687200000000002
	.quad	0x40122763a1900820              # double 4.5384659999999997
	.quad	0x4022e2c29bf162ae              # double 9.4428909999999995
	.quad	0x401579185cee17a0              # double 5.3682569999999998
	.quad	0x40234565e4606749              # double 9.6355430000000001
	.quad	0x40069b994e1a3f46              # double 2.8259759999999998
	.quad	0x3fe2ee2c98e53eb4              # double 0.59157400000000004
	.quad	0x400ab75c0767d34e              # double 3.339531
	.quad	0x400b6733ebbfd71b              # double 3.425392
	.quad	0x40230dc9e6687f45              # double 9.5269309999999993
	.quad	0x3fd5e17a02fb5d03              # double 0.341887
	.quad	0x400ea30b9dc2f406              # double 3.829612
	.quad	0x4019c003686a4ca5              # double 6.437513
	.quad	0x400d8bead4f5903a              # double 3.6933189999999998
	.quad	0x3ff48b10342aa9f8              # double 1.2839510000000001
	.quad	0x4009dde8b3b32053              # double 3.2333539999999998
	.quad	0x400b3f4906034f40              # double 3.4059010000000001
	.quad	0x4016e6ba8c586877              # double 5.7253210000000001
	.quad	0x4022bc46950fc71d              # double 9.3677259999999993
	.quad	0x3ff17d61f5be5d9e              # double 1.0931109999999999
	.quad	0x401d3f748a159818              # double 7.3119680000000002
	.quad	0x402254dab191dde3              # double 9.1657309999999992
	.quad	0x4018c87a072d1aeb              # double 6.1957779999999998
	.quad	0x3ff7e08398a65493              # double 1.492313
	.quad	0x4014668ec52a411c              # double 5.1001539999999999
	.quad	0x3fff22b3892ee84b              # double 1.945972
	.quad	0x4023d9183b60285f              # double 9.9240130000000004
	.quad	0x40160a337a80cf9e              # double 5.5099619999999998
	.quad	0x40150c4e7253da73              # double 5.2620180000000003
	.quad	0x401c993532e7b3d9              # double 7.1496170000000001
	.quad	0x3ffef5d462c343b7              # double 1.935017
	.quad	0x3ff4b1b584b1ab08              # double 1.2933859999999999
	.quad	0x400772fb19e731d3              # double 2.9311430000000001
	.quad	0x401cba0b5ed8d36b              # double 7.1816839999999997
	.quad	0x3fe87b17ce52deca              # double 0.76502599999999998
	.quad	0x401c05c78a6dacac              # double 7.0056440000000002
	.quad	0x4021f58e0008637c              # double 8.9795990000000003
	.quad	0x3febed8b1dd5d3dd              # double 0.87274700000000005
	.quad	0x401628c9752977c9              # double 5.5398310000000004
	.quad	0x4003e338b47c73ef              # double 2.485948
	.quad	0x400edbf83382e44b              # double 3.8574069999999998
	.quad	0x402320d8cb07d0af              # double 9.5641540000000002
	.quad	0x402151782d38476f              # double 8.6591199999999997
	.quad	0x402151c0a8d21bc1              # double 8.6596729999999997
	.quad	0x3fe6c9d5a187a4a5              # double 0.71213800000000005
	.quad	0x3fcc958d9b5e95b8              # double 0.22331400000000001
	.quad	0x3f8083558a761028              # double 0.0080630000000000007
	.quad	0x401054e50c5eb314              # double 4.0829050000000002
	.quad	0x4004c2834d26fa40              # double 2.5949770000000001
	.quad	0x4022e4e358298cc1              # double 9.4470469999999995
	.quad	0x401f752bd3c36113              # double 7.8644249999999997
	.quad	0x401d59a240314877              # double 7.3375329999999996
	.quad	0x3ffa6a5e785b5b70              # double 1.6509689999999999
	.quad	0x3ffdf6e503fb3743              # double 1.8727769999999999
	.quad	0x4010c26aa8eb4635              # double 4.1898600000000004
	.quad	0x4021fa8112ba16e8              # double 8.9892660000000006
	.quad	0x401ab5703f2d3c79              # double 6.6771859999999998
	.quad	0x4009084ad794a6ec              # double 3.1290490000000002
	.quad	0x4004626cc1ca3a4b              # double 2.5480589999999999
	.quad	0x4002a21187e7c06e              # double 2.329135
	.quad	0x400a622ff08893b8              # double 3.2979430000000001
	.quad	0x400212e05ccc89b1              # double 2.259217
	.quad	0x400d1dece5710881              # double 3.6396120000000001
	.quad	0x40162caab8a5ce5b              # double 5.5436199999999998
	.quad	0x4016c4e48626f60e              # double 5.6922779999999999
	.quad	0x3ffd699d883ba344              # double 1.8382849999999999
	.quad	0x4016b3c70c996b76              # double 5.6755639999999996
	.quad	0x3fd8595feda66128              # double 0.38045499999999999
	.quad	0x402267518b0d0edc              # double 9.2017939999999995
	.quad	0x4020c84c8bc9cd3e              # double 8.3912089999999999
	.quad	0x400dc8f10a99b6f6              # double 3.7231160000000001
	.quad	0x401bb1f4b1ee2435              # double 6.9237849999999996
	.quad	0x400e2901d19157ac              # double 3.7700230000000001
	.quad	0x40081fc7607c419a              # double 3.015517
	.quad	0x4023fbaa369fcf3e              # double 9.9915330000000004
	.quad	0x40160bff04577d95              # double 5.5117149999999997
	.quad	0x4019f108c3f3e037              # double 6.485385
	.quad	0x401fba90cd423d92              # double 7.9321929999999998
	.quad	0x4005b42917507e9e              # double 2.7129690000000002
	.quad	0x3fe965bc87db2b34              # double 0.79366899999999995
	.quad	0x3ff5dbb8c32a8c9c              # double 1.3661430000000001
	.quad	0x4022ab0489d27c39              # double 9.3340189999999996
	.quad	0x4014eda0168b5cc0              # double 5.232056
	.quad	0x3ff49accd530489d              # double 1.287793
	.quad	0x4006bd1e53a81dc1              # double 2.8423430000000001
	.quad	0x3ff82a8b8f14db59              # double 1.5103869999999999
	.quad	0x400a3a469d7342ee              # double 3.2784550000000001
	.quad	0x4014ddeebb341e15              # double 5.2167310000000002
	.quad	0x3fb507314ca925ff              # double 0.082141000000000006
	.quad	0x401becdd0d8cb07d              # double 6.981312
	.quad	0x4011efec99f1ae2e              # double 4.4843010000000003
	.quad	0x3ff66158750c1b97              # double 1.398766
	.quad	0x401b564e8b7e4de4              # double 6.8342840000000002
	.quad	0x4021a159817b95a3              # double 8.8151360000000007
	.quad	0x4012ae0008637bd0              # double 4.6699219999999997
	.quad	0x3fe37312b1b36bd3              # double 0.60779700000000003
	.quad	0x40224c964628027e              # double 9.1495840000000008
	.quad	0x402346d2674080fa              # double 9.6383240000000008
	.quad	0x3fd6c6a7ef9db22d              # double 0.355875
	.quad	0x3fe9675bc44bf4cb              # double 0.79386699999999999
	.quad	0x40156eb463497b74              # double 5.3581099999999999
	.quad	0x40112ca07f66e86c              # double 4.2935809999999996
	.quad	0x40112d45e9185cee              # double 4.2942119999999999
	.quad	0x40124f1bac2df0d4              # double 4.5772539999999999
	.quad	0x40232b821af7d30b              # double 9.5849770000000003
	.quad	0x401271dfb9389b52              # double 4.611205
	.quad	0x401b97c914b167ec              # double 6.8982279999999996
	.quad	0x402330639d5e4a38              # double 9.5945099999999996
	.quad	0x402398e581cf7879              # double 9.7986260000000005
	.quad	0x3ff6004ea4a8c155              # double 1.375075
	.quad	0x401bb9439de481f5              # double 6.9309219999999998
	.quad	0x4012f7c5692b3cc5              # double 4.7419640000000003
	.quad	0x402108b029281776              # double 8.5169689999999996
	.quad	0x3fee95464dc22ab2              # double 0.95572199999999996
	.quad	0x401e9862f5989df1              # double 7.6488149999999999
	.quad	0x4009ccba732df506              # double 3.2249650000000001
	.quad	0x4003df78359bc340              # double 2.4841160000000002
	.quad	0x40213f9aae6c8f75              # double 8.6242269999999994
	.quad	0x40216c22467be554              # double 8.7111990000000005
	.quad	0x401aac4007570c56              # double 6.6682129999999997
	.quad	0x402290ad68837718              # double 9.2825729999999992
	.quad	0x4007d7c99ae924f2              # double 2.9803649999999999
	.quad	0x401a76af89c5e6ff              # double 6.6159039999999996
	.quad	0x4006e6c00da1a933              # double 2.8626710000000002
	.quad	0x4022e9e6256366d8              # double 9.4568340000000006
	.quad	0x4001a7dc37a3db3c              # double 2.206963
	.quad	0x400d3e27179bfdf8              # double 3.655348
	.quad	0x401290578e5c4eb5              # double 4.6409589999999996
	.quad	0x3fe6477dd872f33d              # double 0.69622700000000004
	.quad	0x401b01ca7d6733ec              # double 6.7517490000000002
	.quad	0x401a0efe0ce0b913              # double 6.5146410000000001
	.quad	0x3fe952ae8e1d6495              # double 0.79134300000000002
	.quad	0x4000b995ee136e72              # double 2.0906180000000001
	.quad	0x4021e4384ba0e842              # double 8.9457419999999992
	.quad	0x401a436c15d2d01c              # double 6.565842
	.quad	0x40095b14a90470a8              # double 3.169473
	.quad	0x401a65471715c63b              # double 6.5989040000000001
	.quad	0x40069f77af64063a              # double 2.8278650000000001
	.quad	0x401a9d938151a438              # double 6.6538830000000004
	.quad	0x400803ad18d25edd              # double 3.001795
	.quad	0x3ffa5ae70c1333b9              # double 1.6471929999999999
	.quad	0x400f622706d50657              # double 3.9229259999999999
	.quad	0x401f456798958d9b              # double 7.8177779999999996
	.quad	0x400f545a5fc7e6b4              # double 3.916188
	.quad	0x3fddcd24e160d888              # double 0.465646
	.quad	0x401eb5460aa64c30              # double 7.6770250000000004
	.quad	0x401de268900c521e              # double 7.4711020000000001
	.quad	0x4015393ea2d2fe3f              # double 5.3059029999999998
	.quad	0x3ffaf19e731d2e0e              # double 1.683989
	.quad	0x3fd0388ebcc6c54c              # double 0.25345200000000001
	.quad	0x401ed0ba1f4b1ee2              # double 7.7038349999999998
	.quad	0x400c6a1405708249              # double 3.551796
	.quad	0x402007d5885d3133              # double 8.0153009999999991
	.quad	0x40222fb7a5f41aef              # double 9.0931979999999992
	.quad	0x4018accd0fe8ab50              # double 6.1687510000000003
	.quad	0x4010a44a1f080304              # double 4.1604390000000002
	.quad	0x401b8f77f27fe4bd              # double 6.8901060000000003
	.quad	0x401f62b239a38fbd              # double 7.8463830000000003
	.quad	0x3fdd5fc3b4f61672              # double 0.45896999999999999
	.quad	0x401db2be48a58b3f              # double 7.4245539999999997
	.quad	0x40116ccea28fe261              # double 4.3562570000000003
	.quad	0x400bb0e23af31b15              # double 3.4613689999999999
	.quad	0x3ffe9d4306e5cd4f              # double 1.913394
	.quad	0x3fe984406c00da1b              # double 0.79739400000000005
	.quad	0x401444face67d780              # double 5.0673630000000003
	.quad	0x3fe7e1ae70c1333c              # double 0.74629900000000005
	.quad	0x4023a3dcad14a0a1              # double 9.820043
	.quad	0x402385cf0307f23d              # double 9.7613450000000003
	.quad	0x402089fd1569f490              # double 8.2695089999999993
	.quad	0x4019e157eed45e92              # double 6.4700620000000004
	.quad	0x401edf6555c52e73              # double 7.7181600000000001
	.quad	0x400e4e48e8a71de7              # double 3.7882250000000002
	.quad	0x4023bbacf7446f9c              # double 9.8665540000000007
	.quad	0x400d688051c9f72f              # double 3.6760259999999998
	.quad	0x400d3f993d5347a6              # double 3.6560540000000001
	.quad	0x400c65c70435efa6              # double 3.549696
	.quad	0x3ff7e376922d948e              # double 1.4930330000000001
	.quad	0x401a5d2c386d2ed8              # double 6.5909890000000004
	.quad	0x400cfc2e33eff195              # double 3.623135
	.quad	0x4021e29435ac8a37              # double 8.9425369999999997
	.quad	0x3ff51c0ca600b029              # double 1.319348
	.quad	0x4020f744f5d35654              # double 8.4829480000000003
	.quad	0x4018919934efcbd5              # double 6.1421859999999997
	.quad	0x402371fadafd1138              # double 9.7226169999999996
	.quad	0x4011ee7ddca4b125              # double 4.4829020000000002
	.quad	0x40201e8c692f6e83              # double 8.0596650000000007
	.quad	0x4004968ad6883772              # double 2.5735070000000002
	.quad	0x4009355d5f56a7ad              # double 3.1510570000000002
	.quad	0x4022af1800a7c5ac              # double 9.3419799999999995
	.quad	0x401f32e40852b4d9              # double 7.7996980000000002
	.quad	0x40226062d40aaeb0              # double 9.1882540000000006
	.quad	0x3ff5b41d084e831b              # double 1.356473
	.quad	0x3fe6bc36113404ea              # double 0.71047499999999997
	.quad	0x4006655000c9539c              # double 2.7994690000000002
	.quad	0x3ff65e3b8a19c9d6              # double 1.3980060000000001
	.quad	0x400b9f340d4dc65c              # double 3.4527359999999998
	.quad	0x402142b191dde376              # double 8.6302610000000008
	.quad	0x4000ec271fff79c8              # double 2.1153089999999999
	.quad	0x401661ad2135daad              # double 5.5953869999999997
	.quad	0x401ea029ae4f3344              # double 7.656409
	.quad	0x40049d2ae8e1d649              # double 2.5767419999999999
	.quad	0x3ff4b4b61fe21d97              # double 1.294119
	.quad	0x40109f38c5436b90              # double 4.1554900000000004
	.quad	0x401abbd987c6327f              # double 6.6834470000000001
	.quad	0x3ffbdee136e71cda              # double 1.741914
	.quad	0x402334873365881a              # double 9.6025939999999999
	.quad	0x4018179cc74b838c              # double 6.0230589999999999
	.quad	0x4012fc7cd898b2ea              # double 4.7465700000000002
	.quad	0x4017f361dc93ea2d              # double 5.9876779999999998
	.quad	0x4002aa3c64345cff              # double 2.3331230000000001
	.quad	0x3fd1a2d72ffd1dcd              # double 0.27556399999999998
	.quad	0x3ff03990afe60c39              # double 1.014054
	.quad	0x40234c471b478423              # double 9.6489799999999998
	.quad	0x400315c96030c240              # double 2.3856380000000001
	.quad	0x4013a3fd50225743              # double 4.9101460000000001
	.quad	0x401d6b82c2bd7f52              # double 7.3549910000000001
	.quad	0x401f9d898b2e9ccb              # double 7.9038449999999995
	.quad	0x401d2bbc6eb0b7c3              # double 7.2927109999999997
	.quad	0x4020441d29dc725c              # double 8.1330349999999995
	.quad	0x4023ac610f0e90bc              # double 9.8366779999999991
	.quad	0x401322afdda8bd23              # double 4.783874
	.quad	0x400397329c347e8d              # double 2.4488270000000001
	.quad	0x4015a26e5471715c              # double 5.4086239999999997
	.quad	0x40042a60913a4f87              # double 2.5206919999999999
	.quad	0x3fcec0f88333fc87              # double 0.24026400000000001
	.quad	0x401bec1871e6cd29              # double 6.9805619999999999
	.quad	0x3ffa5d1f601797cc              # double 1.6477349999999999
	.quad	0x4020f0cb4aec8d5c              # double 8.4703009999999991
	.quad	0x40131af6c69b5a64              # double 4.776332
	.quad	0x401fdf212d773190              # double 7.9679000000000002
	.quad	0x400e4eee957470eb              # double 3.7885409999999999
	.quad	0x401ad4e65bea0ba2              # double 6.70791
	.quad	0x3fe58f66a5508701              # double 0.67375499999999999
	.quad	0x3ffec4fb1183b603              # double 1.9230910000000001
	.quad	0x401a595208e15012              # double 6.5872270000000004
	.quad	0x4022d409a2403148              # double 9.4141359999999991
	.quad	0x3feef85b5b70691f              # double 0.96781700000000003
	.quad	0x401b9f6837f7be12              # double 6.9056709999999999
	.quad	0x40237192c8c50050              # double 9.7218230000000005
	.quad	0x4014913b9f127f5f              # double 5.1418290000000004
	.quad	0x401fa874c8ffb8b2              # double 7.9145079999999997
	.quad	0x3ff1753e707e175d              # double 1.091124
	.quad	0x3fd90f840181e03f              # double 0.39157199999999998
	.quad	0x401739e2bcf91a33              # double 5.8065290000000003
	.quad	0x4017b04ea4a8c155              # double 5.9221750000000002
	.quad	0x401c355582129457              # double 7.0520839999999998
	.quad	0x40230bc297bfa4c6              # double 9.5229689999999998
	.quad	0x4020973061c79b35              # double 8.2952910000000006
	.quad	0x400dffaca3619978              # double 3.749841
	.quad	0x4010ae2089e34331              # double 4.1700460000000001
	.quad	0x3fef987a4a48f96e              # double 0.98736299999999999
	.quad	0x401693c6c97d8cf4              # double 5.6443130000000004
	.quad	0x3ff163ec02f2f987              # double 1.0868949999999999
	.quad	0x3ff9ae3608d0891a              # double 1.605032
	.quad	0x400f85529fe004b8              # double 3.940099
	.quad	0x4008013b18dac259              # double 3.0006010000000001
	.quad	0x3fc8d5e8d5410f95              # double 0.19402800000000001
	.quad	0x401fcb9991361dc9              # double 7.9488279999999997
	.quad	0x40001f46ed245b29              # double 2.015272
	.quad	0x3fa7a52ac753e708              # double 0.046182000000000001
	.quad	0x4017dc65c70435f0              # double 5.9652320000000003
	.quad	0x401d7a61e0c5a815              # double 7.3695139999999997
	.quad	0x40013b107746887b              # double 2.1538400000000002
	.quad	0x401cfc77dd872f34              # double 7.2465510000000002
	.quad	0x4023716c82e019b1              # double 9.7215310000000005
	.quad	0x40237ed0f627392a              # double 9.7476880000000001
	.quad	0x4014b8db4890928a              # double 5.1805240000000001
	.quad	0x3fcbc49fd7a13c25              # double 0.21693799999999999
	.quad	0x4018031ceaf251c2              # double 6.0030400000000004
	.quad	0x400452a8c9b84556              # double 2.5403609999999999
	.quad	0x400e13a4723aafff              # double 3.7595909999999999
	.quad	0x4015b6bbdbe3c105              # double 5.4284509999999999
	.quad	0x400c1857afea3df7              # double 3.5118860000000001
	.quad	0x3fe71c1b54195cc8              # double 0.72218099999999996
	.quad	0x4008b09b738e6d16              # double 3.0862340000000001
	.quad	0x40143912dba4d6e4              # double 5.0557359999999996
	.quad	0x40130183b60285ec              # double 4.7514789999999998
	.quad	0x4023cdb9c7368ad7              # double 9.9018080000000008
	.quad	0x401be9e90795f677              # double 6.9784280000000001
	.quad	0x4002431c64ba94bc              # double 2.282769
	.quad	0x401c2b10fd7e4580              # double 7.0420569999999998
	.quad	0x3fec58adab9f559b              # double 0.88582499999999997
	.quad	0x402163673c4f3ba7              # double 8.6941469999999992
	.quad	0x3fe81ce4a7b4e54f              # double 0.75352699999999995
	.quad	0x4015e16fc9bc7714              # double 5.4701529999999998
	.quad	0x4020cabc0e38a7e7              # double 8.3959659999999996
	.quad	0x4017f6ffc115df65              # double 5.9912099999999997
	.quad	0x400c652c59fb1e19              # double 3.549401
	.quad	0x401d105ccc89b0ee              # double 7.2659789999999997
	.quad	0x4007b676ea422899              # double 2.9640939999999998
	.quad	0x401ab909f1f14984              # double 6.6807020000000001
	.quad	0x401d8ee17a02fb5d              # double 7.389532
	.quad	0x401a7bd6e8af8162              # double 6.6209369999999996
	.quad	0x4012566b1e5c0b9a              # double 4.5843930000000004
	.quad	0x4018db677f6b1a2a              # double 6.2142619999999997
	.quad	0x3fe131c864883fd5              # double 0.537327
	.quad	0x401637204295a6c6              # double 5.5538340000000002
	.quad	0x401300f9d2bf5515              # double 4.750953
	.quad	0x400c8d1e108c3f3e              # double 3.568905
	.quad	0x3ff14d2b2bfdb4cc              # double 1.08134
	.quad	0x400340c7c0f45176              # double 2.406631
	.quad	0x40018de4c51116a9              # double 2.1942840000000001
	.quad	0x400ac72b020c49ba              # double 3.3472499999999998
	.quad	0x401ee68f4b61fe22              # double 7.7251560000000001
	.quad	0x400be7ff583a53b9              # double 3.48828
	.quad	0x401e0a6fc58ab92c              # double 7.510192
	.quad	0x4014f1c475e6362a              # double 5.2361009999999997
	.quad	0x4016dccff21b3aef              # double 5.7156370000000001
	.quad	0x401d1f2cf95d4e90              # double 7.2804450000000003
	.quad	0x402250d79d0a6762              # double 9.1578949999999999
	.quad	0x401a3b499d0203e6              # double 6.5578979999999998
	.quad	0x40006abf76a2f48c              # double 2.0521229999999999
	.quad	0x4012031550ca1cef              # double 4.5030109999999999
	.quad	0x40201258f7121ab5              # double 8.0358350000000005
	.quad	0x402101f969e3c969              # double 8.5038560000000007
	.quad	0x40202097e996312f              # double 8.0636589999999995
	.quad	0x40194a5ca29845dd              # double 6.3226190000000004
	.quad	0x4023b31055b89939              # double 9.8497339999999997
	.quad	0x40165c7bcc2938de              # double 5.5903159999999996
	.quad	0x3fd211e42e126202              # double 0.28234199999999998
	.quad	0x3ff2f4d594f26aec              # double 1.184774
	.quad	0x4021f666234a87e4              # double 8.9812480000000007
	.quad	0x4012fafc8b0079a3              # double 4.7451040000000004
	.quad	0x401265a6c5d206c8              # double 4.5992689999999996
	.quad	0x400864662bae03b4              # double 3.049023
	.quad	0x4014928e4fb97bb7              # double 5.1431209999999998
	.quad	0x401291cbccf28c7a              # double 4.642379
	.quad	0x400d2011d3671ac1              # double 3.6406589999999999
	.quad	0x4021a82773e24fec              # double 8.8284260000000003
	.quad	0x40064c9752977c89              # double 2.787398
	.quad	0x4020b32cc70867ae              # double 8.3499510000000008
	.quad	0x3fe3a8eb463497b7              # double 0.61436999999999997
	.quad	0x400425d074213a0c              # double 2.5184639999999998
	.quad	0x401f9a8f3a9b0681              # double 7.9009369999999998
	.quad	0x401f89f01b866e44              # double 7.8847050000000003
	.quad	0x401c0e58a32f4491              # double 7.0140099999999999
	.quad	0x4022f9476af89c5e              # double 9.4868729999999992
	.quad	0x401b06d2674080fa              # double 6.7566620000000004
	.quad	0x401e1987c6327ed8              # double 7.5249319999999997
	.quad	0x401e78583621fafd              # double 7.6175240000000004
	.quad	0x3fc91afc04c8bc9d              # double 0.196136
	.quad	0x4023fadcf4623d0c              # double 9.989967
	.quad	0x4012ebf401c4fc1e              # double 4.730423
	.quad	0x401fe2999567dbb1              # double 7.9712889999999996
	.quad	0x4019db5bf6a0dbad              # double 6.4642179999999998
	.quad	0x4012863992c8c500              # double 4.6310789999999997
	.quad	0x40002d50ebaade65              # double 2.0221269999999998
	.quad	0x3fe2a7ae9ab29e4d              # double 0.58296899999999996
	.quad	0x400e28509bf9c62a              # double 3.769685
	.quad	0x4023c5ae3e6c4c59              # double 9.8860949999999991
	.quad	0x401964a66559f6ec              # double 6.3482909999999997
	.quad	0x3ffe19652bd3c361              # double 1.8812
	.quad	0x40122a89331a08c0              # double 4.5415390000000002
	.quad	0x4005186f47b677f7              # double 2.6369310000000001
	.quad	0x400389185cee17a0              # double 2.4419409999999999
	.quad	0x3fd5b923a29c779a              # double 0.33942499999999998
	.quad	0x40082672fba01eef              # double 3.0187740000000001
	.quad	0x400fcadc4c9c90c5              # double 3.9740530000000001
	.quad	0x4019d42b302f72b4              # double 6.4571959999999997
	.quad	0x400e978e5c4eb570              # double 3.8240020000000001
	.quad	0x401fde132b55ef20              # double 7.9668700000000001
	.quad	0x4006dfc3b4f61672              # double 2.8592599999999999
	.quad	0x400e97c4e2f37fbf              # double 3.824106
	.quad	0x400b9a038194c016              # double 3.450202
	.quad	0x4004beca25529fe0              # double 2.593159
	.quad	0x400a643137b07076              # double 3.2989220000000001
	.quad	0x3ff49eacc92146a2              # double 1.2887390000000001
	.quad	0x401aaee957470eb2              # double 6.6708119999999997
	.quad	0x3fd5788db0574b40              # double 0.33548299999999998
	.quad	0x401db5082cf52b91              # double 7.4267890000000003
	.quad	0x402120548a9bcfd5              # double 8.5631450000000005
	.quad	0x4005ea2339c0ebee              # double 2.739325
	.quad	0x401f7546d3f9e7b8              # double 7.8645279999999999
	.quad	0x40135e30caa326e1              # double 4.8419829999999999
	.quad	0x3ff3c1344806290f              # double 1.234669
	.quad	0x4018296aad1d041d              # double 6.0404460000000002
	.quad	0x400018a8f3a9b068              # double 2.012041
	.quad	0x400ac582dbe7f2c3              # double 3.346441
	.quad	0x40123e4a7b4e54f8              # double 4.5608310000000003
	.quad	0x4011cb6c3760bf5d              # double 4.4486549999999996
	.quad	0x4019bf4f0d844d01              # double 6.4368249999999998
	.quad	0x3fc23c74fb549f95              # double 0.14247000000000001
	.quad	0x40041276fb09203a              # double 2.5090159999999999
	.quad	0x4011efe586013661              # double 4.4842740000000001
	.quad	0x3ff821deacc92147              # double 1.5082690000000001
	.quad	0x40153aceee0f3cb4              # double 5.3074300000000001
	.quad	0x40207d00d5e8d541              # double 8.2441469999999999
	.quad	0x40213108e581cf78              # double 8.5957709999999992
	.quad	0x3fd1f10ecb74ddf8              # double 0.28033799999999998
	.quad	0x3ff6fa398201cd60              # double 1.4360900000000001
	.quad	0x4019919f7f8ca81a              # double 6.3922100000000004
	.quad	0x3fefcbd987c6327f              # double 0.99363400000000001
	.quad	0x40223fbc3c5bd0e1              # double 9.1244829999999997
	.quad	0x4008b280f12c27a6              # double 3.0871599999999999
	.quad	0x400b5ea9a3d2d880              # double 3.4212220000000002
	.quad	0x40230a07f66e86c6              # double 9.5195919999999994
	.quad	0x400975d462c343b7              # double 3.182534
	.quad	0x3fedc7607c4199fe              # double 0.93058799999999997
	.quad	0x402289198aeb80ed              # double 9.267773
	.quad	0x3ffef6805a2d7300              # double 1.935181
	.quad	0x401ccebf22c01e69              # double 7.2019010000000003
	.quad	0x401d848f10a99b6f              # double 7.3794519999999997
	.quad	0x402218787485e3da              # double 9.0477939999999997
	.quad	0x40134f3e0370cdc8              # double 4.8273849999999996
	.quad	0x4019e5ed8d36b4c8              # double 6.474539
	.quad	0x40214a6394face68              # double 8.6452910000000003
	.quad	0x401b0b4d8ba40d91              # double 6.7610380000000001
	.quad	0x3feca5efe9318762              # double 0.89525600000000005
	.quad	0x400135b035bd512f              # double 2.1512150000000001
	.quad	0x400e2ec0724b76f7              # double 3.7728280000000001
	.quad	0x401f19f6a93f290b              # double 7.7753550000000002
	.quad	0x3ff164edf6124074              # double 1.0871409999999999
	.quad	0x40224b4eb9a176de              # double 9.1470850000000006
	.quad	0x400fdbf8b9baa151              # double 3.9824079999999999
	.quad	0x400d9068123810e9              # double 3.6955110000000002
	.quad	0x4017ca4f00ef1349              # double 5.9475670000000003
	.quad	0x402065072085b185              # double 8.1973199999999995
	.quad	0x3ffc1872f33ca31e              # double 1.7559689999999999
	.quad	0x4013ffa3b9ae0c17              # double 4.9996479999999996
	.quad	0x4021ef4a558ea7ce              # double 8.9673639999999999
	.quad	0x4022226e978d4fdf              # double 9.0672499999999996
	.quad	0x40111f727136a401              # double 4.28071
	.quad	0x40044a9478c868ba              # double 2.536416
	.quad	0x3ff53de82d7b634e              # double 1.3276140000000001
	.quad	0x4003df5b5fa22707              # double 2.4840610000000001
	.quad	0x4010237c5692b3cc              # double 4.0346539999999997
	.quad	0x400d36cb5350092d              # double 3.6517550000000001
	.quad	0x401e2f4d7add15f0              # double 7.5461939999999998
	.quad	0x40232a6266fd651b              # double 9.5827819999999999
	.quad	0x40221b7a5f41aef7              # double 9.053668
	.quad	0x4013a49b62c77575              # double 4.910749
	.quad	0x401de74a771c970f              # double 7.4758699999999996
	.quad	0x40161ba7fc32ebe6              # double 5.5270080000000004
	.quad	0x4009b18548a9bcfd              # double 3.2116799999999999
	.quad	0x40164cfd08d4bad8              # double 5.5751840000000001
	.quad	0x3ffacc964628027e              # double 1.6749480000000001
	.quad	0x401006f75d9a0f0a              # double 4.0068029999999997
	.quad	0x40235176ff3ade22              # double 9.6591109999999993
	.quad	0x4013fc1871e6cd29              # double 4.9961869999999999
	.quad	0x40232f04ddb5525d              # double 9.5918340000000004
	.quad	0x3fb61847f562174c              # double 0.086307999999999996
	.quad	0x4016e43e5321e604              # double 5.7228940000000001
	.quad	0x40112512ec6bce85              # double 4.2862049999999998
	.quad	0x3ffc6224edf61240              # double 1.7739609999999999
	.quad	0x400863f3e0370cdd              # double 3.0488050000000002
	.quad	0x4015502b841248d8              # double 5.3282910000000001
	.quad	0x3ff6e29b6b2af145              # double 1.4303239999999999
	.quad	0x40221556d19dece5              # double 9.0416779999999992
	.quad	0x3fe50cc78e9f6a94              # double 0.65781000000000001
	.quad	0x4013cc386d2ed784              # double 4.9494340000000001
	.quad	0x401dd7f38c5436b9              # double 7.46089
	.quad	0x401b20ad46f587d7              # double 6.781911
	.quad	0x3fd655ef1fddebd9              # double 0.348995
	.quad	0x3ff090678c0053e3              # double 1.035255
	.quad	0x401c5bbd3804534c              # double 7.0895890000000001
	.quad	0x402348feef5ec80c              # double 9.6425699999999991
	.quad	0x4003561672324c83              # double 2.4170349999999998
	.quad	0x400c966e86c6583f              # double 3.5734530000000002
	.quad	0x4016644417870542              # double 5.5979159999999997
	.quad	0x40204fd60e94ee39              # double 8.1559299999999997
	.quad	0x40195234a87e38eb              # double 6.330279
	.quad	0x401a20dcfcc5b8dc              # double 6.5320929999999997
	.quad	0x40213c7e8ccdd93c              # double 8.6181529999999995
	.quad	0x401a40cc35ce1826              # double 6.5632789999999996
	.quad	0x401985a0be510907              # double 6.3804959999999999
	.quad	0x4014bdff822bbecb              # double 5.1855450000000003
	.quad	0x401d4883fd502257              # double 7.3208159999999998
	.quad	0x40007f7596851223              # double 2.062236
	.quad	0x3fbfbbe878fabda1              # double 0.123961
	.quad	0x4006b0c88a47ecff              # double 2.8363200000000002
	.quad	0x4016ce6106ab14ec              # double 5.7015419999999999
	.quad	0x4023d7f455a7d242              # double 9.9217860000000009
	.quad	0x402198a71de69ad4              # double 8.7981499999999996
	.quad	0x4010494a2b9d3cbc              # double 4.0715719999999997
	.quad	0x4016a2dd7a99fa12              # double 5.6590480000000003
	.quad	0x400d82602c9081c3              # double 3.68866
	.quad	0x400e5ead4f5903a7              # double 3.7962289999999999
	.quad	0x401489d7ba6698bb              # double 5.1346119999999997
	.quad	0x3fe006ca89fc6da4              # double 0.50082899999999997
	.quad	0x40000151a437824d              # double 2.0006439999999999
	.quad	0x4003e6a8fc0d2c38              # double 2.4876269999999998
	.quad	0x4012c95703f2d3c8              # double 4.6966210000000004
	.quad	0x401827fb267c6b8b              # double 6.0390439999999996
	.quad	0x3fe1c2528ae74f2f              # double 0.55497099999999999
	.quad	0x400dc957cd466f50              # double 3.723312
	.quad	0x3fc5487fcb923a2a              # double 0.16627500000000001
	.quad	0x3ffd2060fe47991c              # double 1.8204050000000001
	.quad	0x401c72fc2656abde              # double 7.1122899999999998
	.quad	0x40207b4267839cd8              # double 8.2407409999999999
	.quad	0x3f9e4da09cc319c6              # double 0.029593000000000001
	.quad	0x400b514fce746cb9              # double 3.4147029999999998
	.quad	0x40098b4395810625              # double 3.1930000000000001
	.quad	0x401edbe553ac4f7f              # double 7.7147420000000002
	.quad	0x40086589acbc8c0d              # double 3.049579
	.quad	0x401189185cee17a0              # double 4.3838819999999998
	.quad	0x400dbf3e89a88ace              # double 3.7183809999999999
	.quad	0x401e940789613d32              # double 7.6445600000000002
	.quad	0x40152fb6dca07f67              # double 5.2965960000000001
	.quad	0x3ff7489f40a2877f              # double 1.45523
	.quad	0x4020b5ef62f9ca5c              # double 8.3553420000000002
	.quad	0x40117401c4fc1df3              # double 4.3632879999999998
	.quad	0x3ff3939756c93a71              # double 1.223533
	.quad	0x4017ca5093964a5a              # double 5.9475730000000002
	.quad	0x401e8777d0f1f57b              # double 7.6322929999999997
	.quad	0x4003e5e2478854ce              # double 2.4872480000000001
	.quad	0x3ff7c5c896dd26b7              # double 1.485787
	.quad	0x401da5cee17a02fb              # double 7.4119219999999997
	.quad	0x40189b018611fd59              # double 6.1513730000000004
	.quad	0x3fb7884406c00da2              # double 0.091923000000000004
	.quad	0x3fdd3311a543f1c7              # double 0.45624199999999998
	.quad	0x4009beefe4ffc979              # double 3.2182309999999998
	.quad	0x400f8c61522a6f3f              # double 3.9435449999999999
	.quad	0x4003215c209246bf              # double 2.391289
	.quad	0x401371e364bec67a              # double 4.8612190000000002
	.quad	0x3f8a4f00ef1348b2              # double 0.012846
	.quad	0x400a08cd63cb8173              # double 3.2542979999999999
	.quad	0x4001d4d0dcfcc5b9              # double 2.2289140000000001
	.quad	0x3ff79c3265add9c2              # double 1.4756339999999999
	.quad	0x401d4861e92923e6              # double 7.3206860000000002
	.quad	0x400f9db877ab3248              # double 3.9520119999999999
	.quad	0x4020047b890d5a5c              # double 8.0087550000000007
	.quad	0x401877a5b0ff10ed              # double 6.1168430000000003
	.quad	0x401c1207d4e09785              # double 7.0176080000000001
	.quad	0x401ff6ffc115df65              # double 7.9912099999999997
	.quad	0x4023a4af709b738e              # double 9.8216509999999992
	.quad	0x3fd2176577531db4              # double 0.28267799999999998
	.quad	0x4009cc37e6f71a7e              # double 3.2247159999999999
	.quad	0x401abe310dbf0564              # double 6.6857340000000001
	.quad	0x401dc9270b06c43f              # double 7.4464379999999997
	.quad	0x3fb64712e40852b5              # double 0.087022000000000002
	.quad	0x4021db8cfbfc6541              # double 8.9288100000000004
	.quad	0x3fcac7863beec398              # double 0.20921400000000001
	.quad	0x401b9484944ed6fe              # double 6.8950370000000003
	.quad	0x4017e33a8a3f8983              # double 5.9719030000000002
	.quad	0x3fe55f4a1272c94b              # double 0.66788199999999998
	.quad	0x3fef2c0a4a05dd90              # double 0.97412600000000005
	.quad	0x4015dbef06b37868              # double 5.4647790000000001
	.quad	0x4019dcef672b8844              # double 6.465757
	.quad	0x4021708f648c7193              # double 8.7198440000000002
	.quad	0x400164dfce3150db              # double 2.174255
	.quad	0x401a480f12c27a63              # double 6.5703699999999996
	.quad	0x3fd7df82b1f687b1              # double 0.37301699999999999
	.quad	0x4008d12f4cf4a559              # double 3.102141
	.quad	0x3fcb9170d62bf120              # double 0.21537600000000001
	.quad	0x40155be1650a45d4              # double 5.3397269999999999
	.quad	0x3fe16736049ecb32              # double 0.54384900000000003
	.quad	0x3ffa4709741d084f              # double 1.6423430000000001
	.quad	0x40116017dae81883              # double 4.3438410000000003
	.quad	0x402180be7296f651              # double 8.7514529999999997
	.quad	0x401ded51b4fe79ee              # double 7.481757
	.quad	0x4023acc122749f0e              # double 9.8374109999999995
	.quad	0x4012da83b1d0c804              # double 4.7133929999999999
	.quad	0x400005abc0e38a7e              # double 2.0027689999999998
	.quad	0x401e8defc7a39820              # double 7.6386099999999999
	.quad	0x401b06976bc1effa              # double 6.756437
	.quad	0x4017e3eb7cbb3c82              # double 5.9725780000000004
	.quad	0x400329774256bca5              # double 2.3952469999999999
	.quad	0x40199913a4f8726d              # double 6.399489
	.quad	0x3ff7ad7518b0d0ee              # double 1.4798480000000001
	.quad	0x4023e8b1572580c3              # double 9.9544779999999999
	.quad	0x4013be5cd4ed2cbf              # double 4.9359010000000003
	.quad	0x3ffc23864cb5bb38              # double 1.7586729999999999
	.quad	0x401b8769a91105e2              # double 6.8822390000000002
	.quad	0x40051a2b5a20ddc6              # double 2.637778
	.quad	0x4006cc660a201472              # double 2.8498039999999998
	.quad	0x3fe2cf4c6e6d9be5              # double 0.58780500000000002
	.quad	0x402105e54b48d3ae              # double 8.5115149999999993
	.quad	0x40133cb2d905c033              # double 4.8092759999999997
	.quad	0x40024ecc814d727a              # double 2.2884760000000002
	.quad	0x3ff2aa9b499d0204              # double 1.166652
	.quad	0x40019830e3cd9a52              # double 2.1993119999999999
	.quad	0x4019d0bbf50e3476              # double 6.4538419999999999
	.quad	0x4006647dc37a3db4              # double 2.7990680000000001
	.quad	0x40010798958d9b5f              # double 2.1287090000000002
	.quad	0x4022995e7c8d1959              # double 9.2995490000000007
	.quad	0x401456f60e0eb67c              # double 5.0849229999999999
	.quad	0x4002ab6d00b45ae6              # double 2.333704
	.quad	0x4005b9d0203e63e9              # double 2.7157290000000001
	.quad	0x40234102ff8ec0f9              # double 9.6269760000000008
	.quad	0x4007e71e6cd29132              # double 2.987851
	.quad	0x401f41d323fee2ca              # double 7.8142820000000004
	.quad	0x4002820d5629d841              # double 2.3135020000000002
	.quad	0x401df9c3ce2089e3              # double 7.4939109999999997
	.quad	0x401e7ae8e1d6494d              # double 7.6200289999999997
	.quad	0x40151fcefaa4766c              # double 5.2810629999999996
	.quad	0x40238eb313be22e6              # double 9.7787100000000002
	.quad	0x3ff9133b10774688              # double 1.5671949999999999
	.quad	0x401c58d36b4c7f35              # double 7.0867440000000004
	.quad	0x401fdfeb074a771d              # double 7.9686700000000003
	.quad	0x400d6e93e1c9b414              # double 3.6789930000000002
	.quad	0x3ff0126202539757              # double 1.004488
	.quad	0x40189b8cb8e086be              # double 6.151904
	.quad	0x401a08c5436b8f9b              # double 6.5085649999999999
	.quad	0x3fe4b2d2bb23571d              # double 0.64682899999999999
	.quad	0x40214d004fb1183b              # double 8.6503929999999993
	.quad	0x401ed610f0e90bc8              # double 7.7090490000000002
	.quad	0x4013dc692f6e8295              # double 4.9652450000000004
	.quad	0x4001333fc86cebbc              # double 2.1500240000000002
	.quad	0x40161a2be0589acc              # double 5.5255580000000002
	.quad	0x40064ba94bbe4474              # double 2.7869440000000001
	.quad	0x40181b22d0e56042              # double 6.0265000000000004
	.quad	0x401cc71044f1a198              # double 7.1943979999999996
	.quad	0x40202ecd6c2efd44              # double 8.0914110000000007
	.quad	0x400ce75d56f32bdc              # double 3.6129709999999999
	.quad	0x401c7c91d14e3bcd              # double 7.1216499999999998
	.quad	0x4011030be0ded289              # double 4.2529750000000002
	.quad	0x40172d56b00ffda4              # double 5.794276
	.quad	0x3fb52b7fe08aefb3              # double 0.082695000000000005
	.quad	0x4010186ad2dcb146              # double 4.0238449999999997
	.quad	0x4009b6e9bbf0dc77              # double 3.2143130000000002
	.quad	0x4021a323358f2e06              # double 8.8186280000000004
	.quad	0x3fda9988d2a1f8e4              # double 0.41562100000000002
	.quad	0x40145e84f09528f2              # double 5.0923040000000004
	.quad	0x40070cf206423960              # double 2.8813209999999998
	.quad	0x4016ecd35a858794              # double 5.7312750000000001
	.quad	0x40169b7f1737542a              # double 5.6518519999999999
	.quad	0x4020c7cd898b2e9d              # double 8.3902400000000004
	.quad	0x400a44f6dfc5cdd5              # double 3.283674
	.quad	0x401c0ac18f81e8a3              # double 7.0105040000000001
	.quad	0x3ffe0637bd05af6c              # double 1.8765179999999999
	.quad	0x3ffd1b0ccbc05d53              # double 1.8191040000000001
	.quad	0x40059b0ccbc05d53              # double 2.7007080000000001
	.quad	0x3fe22756861e9292              # double 0.56730199999999997
	.quad	0x400ad3d640e9d51b              # double 3.3534359999999999
	.quad	0x40195a31e7d9988d              # double 6.3380809999999999
	.quad	0x402219185cee17a0              # double 9.0490139999999997
	.quad	0x4023a24052d666aa              # double 9.8168970000000009
	.quad	0x402301287c200c0f              # double 9.5022619999999999
	.quad	0x401826bca5375c8e              # double 6.0378290000000003
	.quad	0x40175de26916440f              # double 5.8416839999999999
	.quad	0x4007430014f8b589              # double 2.907715
	.quad	0x40095bf7ad4b2746              # double 3.1699060000000001
	.quad	0x401c07079e59f2bb              # double 7.0068650000000003
	.quad	0x401404be40420f6f              # double 5.004632
	.quad	0x401da4d0dcfcc5b9              # double 7.4109530000000001
	.quad	0x40159ba12b5e529c              # double 5.4019820000000003
	.quad	0x4013925f633ce63a              # double 4.8929419999999997
	.quad	0x40016e9ab29e4d5e              # double 2.1790060000000002
	.quad	0x4015c790752da986              # double 5.4448869999999996
	.quad	0x401e008c3f3e0371              # double 7.5005350000000001
	.quad	0x40225bb5bf6a0dbb              # double 9.1791210000000003
	.quad	0x4011cdf58c08b75f              # double 4.4511320000000003
	.quad	0x4017e4d3bf2f5558              # double 5.9734639999999999
	.quad	0x40154eddce7cd035              # double 5.3270179999999998
	.quad	0x40233aaae297396d              # double 9.6145849999999999
	.quad	0x400e19be4cd74928              # double 3.7625700000000002
	.quad	0x4004ba365cb35f3d              # double 2.5909239999999998
	.quad	0x3fe2f3bea91d9b1b              # double 0.59225399999999995
	.quad	0x4023f6c11a11233e              # double 9.9819420000000001
	.quad	0x401b8772d5e071c5              # double 6.8822739999999998
	.quad	0x4022d3074a771c97              # double 9.4121649999999998
	.quad	0x4021e3cdfefbf402              # double 8.9449310000000004
	.quad	0x3ff542224edf6124              # double 1.328646
	.quad	0x401d853a81dc0db2              # double 7.3801059999999996
	.quad	0x401c037d63022dd8              # double 7.0034080000000003
	.quad	0x40067af533f42353              # double 2.810038
	.quad	0x400bbee1bd1ed9e0              # double 3.4682040000000001
	.quad	0x3ff4a1709310129d              # double 1.2894140000000001
	.quad	0x3fb0b89d6adf71eb              # double 0.065317
	.quad	0x3ff7385b5b70691f              # double 1.4512590000000001
	.quad	0x4013e00f776c4828              # double 4.9688090000000003
	.quad	0x400ed911cf355cd9              # double 3.8559909999999999
	.quad	0x401f628aa433508f              # double 7.8462319999999996
	.quad	0x400cea5d6bebe165              # double 3.614436
	.quad	0x4014707746887a8d              # double 5.1098299999999997
	.quad	0x3ff7a68c26139000              # double 1.4781610000000001
	.quad	0x401e8198f1d3ed52              # double 7.6265599999999996
	.quad	0x40214f64adff822c              # double 8.6550650000000004
	.quad	0x4023853f39d1b2e6              # double 9.7602480000000007
	.quad	0x4021dbbcf4e874c9              # double 8.929176
	.quad	0x401828fb43d89ce5              # double 6.0400210000000003
	.quad	0x4008ae12e83a109d              # double 3.084997
	.quad	0x400b8e9dd7ecbb80              # double 3.4446370000000002
	.quad	0x3ff0f71001d5c316              # double 1.0603180000000001
	.quad	0x3ffb1628cbd1244a              # double 1.6929099999999999
	.quad	0x4011c80e8c8abd5e              # double 4.4453680000000002
	.quad	0x4018ef138bcdfefc              # double 6.233473
	.quad	0x402191be09bb6aa5              # double 8.7846530000000005
	.quad	0x4011e0e27e0ef998              # double 4.469614
	.quad	0x401443471f79420b              # double 5.0657009999999998
	.quad	0x4020dd7f51efb6dd              # double 8.4326120000000007
	.quad	0x4017cb3a2595bbbf              # double 5.9484640000000004
	.quad	0x4015d37d1fe64f55              # double 5.4565320000000002
	.quad	0x401b3f505d0fa58f              # double 6.8118299999999996
	.quad	0x401e234f3fd933e3              # double 7.5344819999999996
	.quad	0x40115714b9cb6849              # double 4.3350400000000002
	.quad	0x401022934acaff6d              # double 4.0337649999999998
	.quad	0x4019642b734b5137              # double 6.3478219999999999
	.quad	0x401507d0aed99cbf              # double 5.2576320000000001
	.quad	0x3fcf2734f82f5126              # double 0.24338399999999999
	.quad	0x402315753a3ec02f              # double 9.5419099999999996
	.quad	0x3ff67cd898b2e9cd              # double 1.4054800000000001
	.quad	0x4006c7dd44135547              # double 2.8475899999999998
	.quad	0x400e3de1e2de8709              # double 3.7802159999999998
	.quad	0x40174ccab3edd8b6              # double 5.8249919999999999
	.quad	0x4018ffdcdf698783              # double 6.2498659999999999
	.quad	0x4007e364bec679cc              # double 2.9860319999999998
	.quad	0x4021bbf4a98aa865              # double 8.8671009999999999
	.quad	0x4013516fc9bc7714              # double 4.8295279999999998
	.quad	0x400480c49ba5e354              # double 2.562875
	.quad	0x4001f2f123c42a67              # double 2.2436240000000001
	.quad	0x401512745bf26f1e              # double 5.2680220000000002
	.quad	0x40204c40af1cb89d              # double 8.1489309999999993
	.quad	0x401912ff8ec0f883              # double 6.2685529999999998
	.quad	0x4019aa459103c8e2              # double 6.4162809999999997
	.quad	0x4007429845dc8323              # double 2.9075169999999999
	.quad	0x3fffb6cdf266ba49              # double 1.9821299999999999
	.quad	0x4019045fe1112770              # double 6.2542720000000003
	.quad	0x4008e3779e9d0e99              # double 3.1110679999999999
	.quad	0x4023678e1932d6ed              # double 9.7022560000000002
	.quad	0x40232a20bc382a13              # double 9.582281
	.quad	0x4022d7c5cdd50a89              # double 9.4214310000000001
	.quad	0x40209b636f3b213e              # double 8.3034929999999996
	.quad	0x401c0e996312f4cf              # double 7.0142569999999997
	.quad	0x402042ea52ef911d              # double 8.1306940000000001
	.quad	0x401414df04ddb552              # double 5.0203819999999997
	.quad	0x4015e2fd32c625ea              # double 5.4716690000000003
	.quad	0x4019c743a647fdc6              # double 6.4445940000000004
	.quad	0x3ff7c9e34330d738              # double 1.4867889999999999
	.quad	0x402105de37585be2              # double 8.5114610000000006
	.quad	0x401a438ef34d6a16              # double 6.5659749999999999
	.quad	0x401cbce746cb966c              # double 7.1844760000000001
	.quad	0x401479999999999a              # double 5.1187500000000004
	.quad	0x3ffc05143bf72713              # double 1.7512399999999999
	.quad	0x401dee6b3fe9fadb              # double 7.482831
	.quad	0x401c12003ab862b2              # double 7.0175789999999996
	.quad	0x40083851eb851eb8              # double 3.0274999999999999
	.quad	0x401c1c7abfb9bed3              # double 7.0278119999999999
	.quad	0x401ed0a1be2b495a              # double 7.7037420000000001
	.quad	0x3feee822ff08893b              # double 0.96583699999999994
	.quad	0x401643e100607810              # double 5.5662880000000001
	.quad	0x40236d9f4d37c137              # double 9.7141059999999992
	.quad	0x40201c347e8ccdd9              # double 8.0550879999999996
	.quad	0x40164bde3fbbd7b2              # double 5.57409
	.quad	0x4019d22706d50657              # double 6.4552269999999998
	.quad	0x4022abe0ded288ce              # double 9.3356999999999992
	.quad	0x40179e7d1351159c              # double 5.9047739999999997
	.quad	0x40227dec3dab5c3a              # double 9.2459430000000005
	.quad	0x4023e5af8df7a4e8              # double 9.9486050000000005
	.quad	0x400654f0520d130e              # double 2.791474
	.quad	0x402242b94d940789              # double 9.1303199999999993
	.quad	0x3febca9478c868ba              # double 0.868479
	.quad	0x3fffc02d16b97fe9              # double 1.984418
	.quad	0x4017ffa00e27e0f0              # double 5.9996340000000004
	.quad	0x401a9cafb3b75211              # double 6.6530139999999998
	.quad	0x40203483cafb3b75              # double 8.1025679999999998
	.quad	0x40220c18b502abac              # double 9.0236260000000001
	.quad	0x4016591212513b5c              # double 5.586983
	.quad	0x40117463497b7415              # double 4.3636600000000003
	.quad	0x40132d31769a9110              # double 4.7941339999999997
	.quad	0x3ff4e9a6f826edab              # double 1.3070440000000001
	.quad	0x401c0a400fba8827              # double 7.0100100000000003
	.quad	0x4020100de4c51117              # double 8.0313560000000006
	.quad	0x401a19e6ab9b23dd              # double 6.5252939999999997
	.quad	0x4020e92a51e321a3              # double 8.4554010000000002
	.quad	0x401d3a8e71476af9              # double 7.3071840000000003
	.quad	0x400931e42e126202              # double 3.1493609999999999
	.quad	0x40233102795703f3              # double 9.5957220000000003
	.quad	0x4020eb035bd512ec              # double 8.4590099999999992
	.quad	0x402276d19dece571              # double 9.2320679999999999
	.quad	0x401c40b417ca2121              # double 7.0631870000000001
	.quad	0x40206915df6555c5              # double 8.2052449999999997
	.quad	0x40015de6149c6f37              # double 2.170849
	.quad	0x400e4c74b838c112              # double 3.7873320000000001
	.quad	0x3fd36b93ccd0fe8b              # double 0.30344100000000002
	.quad	0x40014b827fa1a0cf              # double 2.16187
	.quad	0x3ffec0d801b43526              # double 1.9220809999999999
	.quad	0x402158b6b6e0d23d              # double 8.6732689999999995
	.quad	0x3ff53cc5b8dc5500              # double 1.327337
	.quad	0x4018f46d82ba5a04              # double 6.2386990000000004
	.quad	0x4018b168b5cbff47              # double 6.1732509999999996
	.quad	0x3fccd905c0336156              # double 0.22537299999999999
	.quad	0x401a409310129cbb              # double 6.5630610000000003
	.quad	0x4020b2e05ccc89b1              # double 8.3493680000000001
	.quad	0x401a46b97fe8ee6c              # double 6.5690670000000004
	.quad	0x400e8185058dde7a              # double 3.8132419999999998
	.quad	0x40213369fcf3dc05              # double 8.6004179999999995
	.quad	0x3ffe98372e6a7696              # double 1.9121619999999999
	.quad	0x40072327ed84d339              # double 2.892166
	.quad	0x4020b2e2541d8e86              # double 8.3493829999999996
	.quad	0x4019799f1ae2da55              # double 6.3687709999999997
	.quad	0x4021a086162f166e              # double 8.813523
	.quad	0x3fc594d0dcfcc5b9              # double 0.168604
	.quad	0x401ae76e6106ab15              # double 6.7260070000000001
	.quad	0x3fd544d013a92a30              # double 0.33232499999999998
	.quad	0x400c7f0b28522ea1              # double 3.562033
	.quad	0x4019f28a1dfb938a              # double 6.4868550000000003
	.quad	0x40042bf3bea91d9b              # double 2.521461
	.quad	0x3ff799b3d07c84b6              # double 1.475025
	.quad	0x40144d6cb5350093              # double 5.0756100000000002
	.quad	0x40171f97edc7ef17              # double 5.7808529999999996
	.quad	0x401f6eb313be22e6              # double 7.8581050000000001
	.quad	0x4010a7f6f4be835e              # double 4.1640280000000001
	.quad	0x3ffe4bb2bba98eda              # double 1.893481
	.quad	0x40071eaab042528b              # double 2.889974
	.quad	0x3ff6b08bb906466b              # double 1.418102
	.quad	0x4020b3320535c9e6              # double 8.3499909999999993
	.quad	0x4023fdf5275ee99a              # double 9.9960109999999993
	.quad	0x4021b3b60285ec3e              # double 8.8509980000000006
	.quad	0x40223577b7c7820a              # double 9.1044289999999997
	.quad	0x40226df0d413122b              # double 9.2147279999999991
	.quad	0x4016c3fc86cebbba              # double 5.6913929999999997
	.quad	0x401cc777079e59f3              # double 7.1947900000000002
	.quad	0x4010c83cf2cf95d5              # double 4.1955450000000001
	.quad	0x40209d9513f8db49              # double 8.3077780000000008
	.quad	0x4013c273929ed395              # double 4.9398939999999998
	.quad	0x40062ae429e0a41a              # double 2.7709429999999999
	.quad	0x3fe2239e6ab9b23e              # double 0.56684800000000002
	.quad	0x3ff71b2702a3486f              # double 1.444129
	.quad	0x401c49c7368ad688              # double 7.0720489999999998
	.quad	0x4022e9af1886df83              # double 9.4564140000000005
	.quad	0x4010db5b70691ea8              # double 4.2142160000000004
	.quad	0x401f5697f1f9ad00              # double 7.8345640000000003
	.quad	0x4006eeeae9ee45c3              # double 2.8666589999999998
	.quad	0x400895aa715831f0              # double 3.0730789999999999
	.quad	0x400cc74c8ffb8b26              # double 3.5973139999999999
	.quad	0x3ff19f4e4430b179              # double 1.1013930000000001
	.quad	0x40211a19652bd3c3              # double 8.5509749999999993
	.quad	0x401fe4c2b51bd61f              # double 7.9733989999999996
	.quad	0x401991700cd85597              # double 6.392029
	.quad	0x40207ca6223e186a              # double 8.2434550000000009
	.quad	0x4007c854477ff152              # double 2.972817
	.quad	0x400870574b407033              # double 3.0548540000000002
	.quad	0x400eb4e5d5b24e9c              # double 3.8383289999999999
	.quad	0x401bea6698bb4d49              # double 6.9789070000000004
	.quad	0x40215a7a41e57d9e              # double 8.6767140000000005
	.quad	0x401d09db65ecc3e3              # double 7.2596259999999999
	.quad	0x40223e9ec2ce464a              # double 9.1223050000000008
	.quad	0x402247a1c25d0742              # double 9.1399059999999999
	.quad	0x3fc8a66559f6ec5b              # double 0.192578
	.quad	0x40028b7995ee136e              # double 2.3181029999999998
	.quad	0x3ff98aa8650e7792              # double 1.596352
	.quad	0x40148a433508f649              # double 5.1350220000000002
	.quad	0x40227a49e44fa051              # double 9.2388449999999995
	.quad	0x4021f244e93e1c9b              # double 8.9731819999999995
	.quad	0x4022cee6fb4c3c19              # double 9.4041060000000005
	.quad	0x4017f1c53f39d1b3              # double 5.9861040000000001
	.quad	0x4022f9146e4c0df6              # double 9.4864840000000008
	.quad	0x3ff0a4da09cc319c              # double 1.0402469999999999
	.quad	0x40194672324c8366              # double 6.3187949999999997
	.quad	0x400b9f7e80389f84              # double 3.4528780000000001
	.quad	0x401ff049a9973d9f              # double 7.9846560000000001
	.quad	0x400ae97fa5d28d00              # double 3.3640129999999999
	.quad	0x400bd77c02afdda9              # double 3.4802170000000001
	.quad	0x402057000431bde8              # double 8.1699219999999997
	.quad	0x40236e7c06e19b91              # double 9.7157900000000001
	.quad	0x3ffc4cf9e3864cb6              # double 1.7687930000000001
	.quad	0x4004431487768167              # double 2.5327540000000002
	.quad	0x400c0bedfa43fe5d              # double 3.5058250000000002
	.quad	0x401ea1f70de8f6cf              # double 7.658169
	.quad	0x4013264883fd5022              # double 4.7873859999999997
	.quad	0x40118ecf20642396              # double 4.389462
	.quad	0x4016ff4e4430b179              # double 5.7493220000000003
	.quad	0x4014c0c1b97353b5              # double 5.1882390000000003
	.quad	0x3ff8425d074213a1              # double 1.516202
	.quad	0x400e653a81dc0db2              # double 3.7994279999999998
	.quad	0x40051e974a3400b9              # double 2.6399370000000002
	.quad	0x400cfd7d3910c2c6              # double 3.6237740000000001
	.quad	0x4019783a53b8e4b8              # double 6.3674099999999996
	.quad	0x401695870da5daf0              # double 5.6460229999999996
	.quad	0x40156c8e25c810a5              # double 5.3560109999999996
	.quad	0x4017423e9ea14057              # double 5.814692
	.quad	0x3fe7fbe33acd5b68              # double 0.749498
	.quad	0x401c23700474d9c7              # double 7.0346070000000003
	.quad	0x3ff30cda6e75ff61              # double 1.1906380000000001
	.quad	0x40211ffef39085f5              # double 8.5624920000000007
	.quad	0x3fe61d53cddd6e05              # double 0.69108000000000003
	.quad	0x400c155e6bc621b8              # double 3.5104340000000001
	.quad	0x401cec95bff04578              # double 7.2310400000000001
	.quad	0x4016ea26e5471716              # double 5.7286640000000002
	.quad	0x4012a49a9973d9ec              # double 4.6607459999999996
	.quad	0x3ff414d834091c08              # double 1.2550889999999999
	.quad	0x40203222d5171e2a              # double 8.0979220000000005
	.quad	0x40040ff08893b7d8              # double 2.5077829999999999
	.quad	0x40117299524bfd2f              # double 4.3619130000000004
	.quad	0x40130c1c1d6cf851              # double 4.7618260000000001
	.quad	0x40036b4070329803              # double 2.4273690000000001
	.quad	0x4020d403361565c3              # double 8.4140870000000003
	.quad	0x40180b3f20a73f75              # double 6.0109830000000004
	.quad	0x402162c3a860dcba              # double 8.6928990000000006
	.quad	0x401926523704790c              # double 6.2874230000000004
	.quad	0x3fc7db76b3bb83cf              # double 0.186385
	.quad	0x401a1d5d3dc8b86b              # double 6.5286759999999999
	.quad	0x4022c7e82517e77d              # double 9.3904429999999994
	.quad	0x401f257470eb24a7              # double 7.7865770000000003
	.quad	0x3ffaa7a85015c209              # double 1.665932
	.quad	0x401c2baecd07852f              # double 7.0426589999999996
	.quad	0x401ea21858bc59b8              # double 7.6582959999999999
	.quad	0x400db6c82e019b0b              # double 3.7142490000000001
	.quad	0x4016740bfe3b03e2              # double 5.613327
	.quad	0x400079524bfd2e94              # double 2.0592389999999998
	.quad	0x3fed229a5ebb773a              # double 0.91047400000000001
	.quad	0x40190c5f7c6759ab              # double 6.2620829999999996
	.quad	0x4009ebde3fbbd7b2              # double 3.24017
	.quad	0x3fe1f85729b280f1              # double 0.56156499999999998
	.quad	0x40208da597d49d7c              # double 8.2766540000000006
	.quad	0x400bc43b2dd377e2              # double 3.4708160000000001
	.quad	0x3feed6e47dc37a3e              # double 0.96373200000000003
	.quad	0x3fb995cc857f3062              # double 0.099942000000000003
	.quad	0x400be296b3354c12              # double 3.4856389999999999
	.quad	0x4023e0407cc7d1bb              # double 9.9379919999999994
	.quad	0x40009b7952d234ec              # double 2.0759150000000002
	.quad	0x4014c0fdc1615ec0              # double 5.1884680000000003
	.quad	0x4018a854477ff152              # double 6.1643840000000001
	.quad	0x4018ae154434e337              # double 6.1700030000000003
	.quad	0x4022ff6102795704              # double 9.498787
	.quad	0x4020026ce358298d              # double 8.0047370000000004
	.quad	0x401e9fab10ba6267              # double 7.655926
	.quad	0x40141cac8e68e3ef              # double 5.0280019999999999
	.quad	0x40208165f5275eea              # double 8.2527310000000007
	.quad	0x4017e5881a1554fc              # double 5.9741520000000001
	.quad	0x40115c9ea9a3d2d8              # double 4.3404489999999996
	.quad	0x40158844d013a92a              # double 5.3830749999999998
	.quad	0x4017ce11dbca9692              # double 5.9512400000000003
	.quad	0x400039ed7c6fbd27              # double 2.0282849999999999
	.quad	0x40191a493c89f40a              # double 6.2756699999999999
	.quad	0x401610181e03f706              # double 5.5157170000000004
	.quad	0x401f5c8eabffcdab              # double 7.8403879999999999
	.quad	0x400b6450acc0bdcb              # double 3.4239820000000001
	.quad	0x40184e3eaf6837f8              # double 6.0764110000000002
	.quad	0x40202c19e30014f9              # double 8.0861350000000005
	.quad	0x40010efed634549b              # double 2.1323219999999998
	.quad	0x3ff55633482be8bc              # double 1.333545
	.quad	0x400aac016052502f              # double 3.333987
	.quad	0x3ffc18b2e9ccb7d4              # double 1.75603
	.quad	0x3fe6e8e1d6494d51              # double 0.71592800000000001
	.quad	0x401731b0ccbc05d5              # double 5.7985259999999998
	.quad	0x4013bcac8e68e3ef              # double 4.9342519999999999
	.quad	0x401c49f98b71b8aa              # double 7.072241
	.quad	0x3fe6591cd1c7de51              # double 0.69837800000000005
	.quad	0x4023196c61522a6f              # double 9.5496549999999995
	.quad	0x3ff67a54c5543287              # double 1.4048659999999999
	.quad	0x402210dbf0563ed1              # double 9.0329280000000001
	.quad	0x402376ce13f4a98b              # double 9.7320410000000006
	.quad	0x401c8e9bbf0dc769              # double 7.1392660000000001
	.quad	0x3fd87d49d7ba6699              # double 0.38264700000000001
	.quad	0x40195dee34fc610f              # double 6.3417289999999999
	.quad	0x3fddd933e35c5b4b              # double 0.46638200000000002
	.quad	0x4023be6fd651b0cd              # double 9.8719470000000004
	.quad	0x4022bd95bbbe8790              # double 9.3702830000000006
	.quad	0x4021e0a3d70a3d71              # double 8.9387500000000006
	.quad	0x400995ba2be0589b              # double 3.1981090000000001
	.quad	0x401015d9e40c8473              # double 4.0213390000000002
	.quad	0x40118d4845132f88              # double 4.3879710000000003
	.quad	0x4014868b9fdbd2fa              # double 5.131392
	.quad	0x40002af709b738e7              # double 2.0209790000000001
	.quad	0x4013954b8bef8ceb              # double 4.8957959999999998
	.quad	0x4022a1806f262889              # double 9.3154330000000005
	.quad	0x4010fb8f9b13165d              # double 4.2456649999999998
	.quad	0x40181e53eb399f5e              # double 6.029617
	.quad	0x40133460242d05f3              # double 4.8011480000000004
	.quad	0x40231d03b81b64e0              # double 9.5566689999999994
	.quad	0x3ff07b517a46173c              # double 1.0301070000000001
	.quad	0x400ddb5d031055b9              # double 3.7321110000000002
	.quad	0x400ad746887a8d65              # double 3.3551150000000001
	.quad	0x4014a924f227d029              # double 5.1651800000000003
	.quad	0x40188ba387592535              # double 6.1363659999999998
	.quad	0x400fbc864883fd50              # double 3.9670529999999999
	.quad	0x4007ae325d4a5df2              # double 2.9600569999999999
	.quad	0x4019f9f127f5e84f              # double 6.494084
	.quad	0x400a60d66f0cfe15              # double 3.2972839999999999
	.quad	0x4018e68123810e88              # double 6.2251019999999997
	.quad	0x400c6031ceaf251c              # double 3.54697
	.quad	0x3ff68d413122b7bb              # double 1.409486
	.quad	0x3fc45109070fbeba              # double 0.158723
	.quad	0x401f715ebfa8f7db              # double 7.8607129999999996
	.quad	0x400920e8427418d7              # double 3.1410680000000002
	.quad	0x401e8f587d6f9768              # double 7.6399860000000003
	.quad	0x40017d1351159c49              # double 2.1860719999999998
	.quad	0x4011bc58255b035c              # double 4.4339300000000001
	.quad	0x4014c523704790b8              # double 5.1925179999999997
	.quad	0x401ef5cd0bb6ed67              # double 7.7400399999999995
	.quad	0x4023ec280ae10492              # double 9.9612429999999996
	.quad	0x4011a7fe8ee6b830              # double 4.4140569999999997
	.quad	0x401eb1fff79c8430              # double 7.6738280000000003
	.quad	0x400a2a24463065f9              # double 3.2705769999999998
	.quad	0x401d4ee675147f13              # double 7.327051
	.quad	0x40225cd65e460675              # double 9.1813230000000008
	.quad	0x400ea11ec918e326              # double 3.8286720000000001
	.quad	0x3fac523f67f4dbe0              # double 0.055315000000000003
	.quad	0x400d7cfede97d06c              # double 3.6860330000000001
	.quad	0x4021d2df71eafee7              # double 8.911861
	.quad	0x40222b02d59d55e7              # double 9.0840060000000005
	.quad	0x3fd430df9bdc69f9              # double 0.31548300000000001
	.quad	0x3fe38331e3a7daa5              # double 0.609765
	.quad	0x4013e79bfdf7e804              # double 4.9761810000000004
	.quad	0x4020e5d4c76d117b              # double 8.4488889999999994
	.quad	0x4002898eda22f6a5              # double 2.317167
	.quad	0x4012a36b09635611              # double 4.6595880000000003
	.quad	0x4020047d1bb4916d              # double 8.0087670000000006
	.quad	0x4023aef9db22d0e5              # double 9.8417499999999993
	.quad	0x400ba9b499d0203e              # double 3.4578639999999998
	.quad	0x3fa5e310dbf0563f              # double 0.042748000000000001
	.quad	0x400665918a009f62              # double 2.7995939999999999
	.quad	0x4007de4473cd5736              # double 2.9835289999999999
	.quad	0x4007dcaf2d7f950c              # double 2.9827560000000002
	.quad	0x3fd80b3d4ae429e1              # double 0.37568600000000002
	.quad	0x4018b4b90214ad36              # double 6.1764869999999998
	.quad	0x3fe082eec7c957cd              # double 0.51598299999999997
	.quad	0x4018a093532e7b3e              # double 6.1568120000000004
	.quad	0x4020037d41743e96              # double 8.0068149999999996
	.quad	0x4020ff166e008e9b              # double 8.4982179999999996
	.quad	0x401e2d9a95421c04              # double 7.5445349999999998
	.quad	0x401a4614163779ea              # double 6.5684360000000002
	.quad	0x4021a153dea465a5              # double 8.8150929999999992
	.quad	0x401878a32f44912a              # double 6.1178100000000004
	.quad	0x4012b327674d1633              # double 4.6749549999999997
	.quad	0x401b55781c714fce              # double 6.8334659999999996
	.quad	0x40215051c9f72f77              # double 8.6568740000000002
	.quad	0x40006f51ac9afe1e              # double 2.0543550000000002
	.quad	0x40111f77292c4934              # double 4.2807279999999999
	.quad	0x40223df04ddb5526              # double 9.1209740000000004
	.quad	0x401dbf8b9baa1512              # double 7.4370560000000001
	.quad	0x4021f004fb1183b6              # double 8.968788
	.quad	0x4017de646f156191              # double 5.9671799999999999
	.quad	0x40218455eaee2004              # double 8.7584680000000005
	.quad	0x3ff54c692f6e8295              # double 1.3311550000000001
	.quad	0x4015987d6f976790              # double 5.3989159999999998
	.quad	0x40113e30014f8b59              # double 4.3107300000000004
	.quad	0x3fdac4007570c565              # double 0.418213
	.quad	0x401fddf71eafee70              # double 7.9667630000000003
	.quad	0x4014b201cd5f99c4              # double 5.1738350000000004
	.quad	0x40124300de4c5111              # double 4.5654329999999996
	.quad	0x400bdf623076c051              # double 3.4840740000000001
	.quad	0x400320ebedfa43fe              # double 2.3910749999999998
	.quad	0x3fec90d9d7774aba              # double 0.89268199999999998
	.quad	0x4011d650a45d41fa              # double 4.4592919999999996
	.quad	0x4023f345069a4df4              # double 9.9751359999999991
	.quad	0x40175404ea4a8c15              # double 5.8320499999999997
	.quad	0x400b23137b07075b              # double 3.3921269999999999
	.quad	0x4001561dc93ea2d3              # double 2.167049
	.quad	0x3fd8a89b951c5c57              # double 0.38529099999999999
	.quad	0x3fe13068123810e9              # double 0.53715900000000005
	.quad	0x401821615ebfa8f8              # double 6.0325980000000001
	.quad	0x4013425aee631f8a              # double 4.8148
	.quad	0x4013d80d3cff64d0              # double 4.9609880000000004
	.quad	0x40165b0d51f81a58              # double 5.5889179999999996
	.quad	0x4015fec2ce464990              # double 5.4987899999999996
	.quad	0x401ac48cb4aec8d6              # double 6.6919430000000002
	.quad	0x4021fdb9a5a89b95              # double 8.9955569999999998
	.quad	0x40216285ec3dab5c              # double 8.6924279999999995
	.quad	0x401942584f4c6e6e              # double 6.3147900000000003
	.quad	0x40189c7368ad6883              # double 6.1527839999999996
	.quad	0x400dcf2734f82f51              # double 3.7261489999999999
	.quad	0x40154267c6b8b695              # double 5.3148489999999997
	.quad	0x401482bc72e275ab              # double 5.1276719999999996
	.quad	0x4023849539b88872              # double 9.7589509999999997
	.quad	0x4014de9c4545846f              # double 5.2173930000000004
	.quad	0x4013bea39c51dabe              # double 4.9361709999999999
	.quad	0x400362517e77d524              # double 2.4230070000000001
	.quad	0x400f6641b328b6d8              # double 3.9249299999999998
	.quad	0x401bf9bfdf7e8039              # double 6.9938960000000003
	.quad	0x4002560d0247021d              # double 2.292017
	.quad	0x400bd9780baa582e              # double 3.4811860000000001
	.quad	0x3fc07f3493858362              # double 0.128882
	.quad	0x4013a51116a8b8f1              # double 4.9111979999999997
	.quad	0x4003e2ea0fd3b29a              # double 2.485798
	.quad	0x3ffa6fbb0e5e6794              # double 1.6522779999999999
	.quad	0x4006665300581494              # double 2.799963
	.quad	0x400018476f2a5a47              # double 2.0118550000000002
	.quad	0x400fea65cf67b1c0              # double 3.989452
	.quad	0x40181395810624dd              # double 6.0191249999999998
	.quad	0x4023f669270b06c4              # double 9.9812709999999995
	.quad	0x401b8e7cd0353719              # double 6.8891479999999996
	.quad	0x402162a5e785b5b7              # double 8.692672
	.quad	0x401e41569f490603              # double 7.5638069999999997
	.quad	0x4006e4399b2c40d1              # double 2.8614380000000001
	.quad	0x4019b80dc33721d5              # double 6.4297399999999998
	.quad	0x40216b5bb384fd2a              # double 8.7096839999999993
	.quad	0x40116b17ce52deca              # double 4.3545829999999999
	.quad	0x401e45a9a8049668              # double 7.5680300000000002
	.quad	0x3ff74e39b456b442              # double 1.4565980000000001
	.quad	0x400ecfc3f811f4f5              # double 3.851448
	.quad	0x401514e1e71044f2              # double 5.2703930000000003
	.quad	0x3fe1128bf3bea91e              # double 0.53351400000000004
	.quad	0x40086f1b25f633ce              # double 3.0542509999999998
	.quad	0x401adfc158fb43d9              # double 6.7185110000000003
	.quad	0x401f834dad31fcd2              # double 7.8782259999999997
	.quad	0x4020388bfc2224ee              # double 8.1104430000000001
	.quad	0x401990c9107faa04              # double 6.3913919999999997
	.quad	0x402042014727dcbe              # double 8.1289160000000003
	.quad	0x401777f950b955f8              # double 5.8671620000000004
	.quad	0x402024202d9cf13d              # double 8.0705580000000001
	.quad	0x3fe6a90470a808c8              # double 0.70813199999999998
	.quad	0x40093ace67d77fae              # double 3.1537139999999999
	.quad	0x3fe41ed9dfdac68b              # double 0.62876600000000005
	.quad	0x40103dbdf8f47304              # double 4.060295
	.quad	0x3fe07ee6fb4c3c19              # double 0.51549100000000003
	.quad	0x3fbc85f4a1272c95              # double 0.111419
	.quad	0x401fc2ca57a786c2              # double 7.9402249999999999
	.quad	0x3ff05bc87db2b346              # double 1.022408
	.quad	0x401b7573a797891e              # double 6.8646989999999999
	.quad	0x4023f9a8049667b6              # double 9.9876100000000001
	.quad	0x401183df6db940ff              # double 4.3787820000000002
	.quad	0x401e6359bc33f855              # double 7.5970219999999999
	.quad	0x4017d3dccea28fe2              # double 5.9568969999999997
	.quad	0x401bcd6ece13f4aa              # double 6.9506180000000004
	.quad	0x401c9fdc5931ca7d              # double 7.1561139999999996
	.quad	0x402276ac8605681f              # double 9.2317850000000004
	.quad	0x401dac2fc69728a6              # double 7.4181509999999999
	.quad	0x402251d9b1b79d91              # double 9.1598640000000007
	.quad	0x401db874c8ffb8b2              # double 7.4301329999999997
	.quad	0x402051f8c21e1d21              # double 8.1601009999999992
	.quad	0x3fee6a93f290abb4              # double 0.95050999999999996
	.quad	0x400e14467381d7dc              # double 3.7599
	.quad	0x3fdd2e1693c03bc5              # double 0.45593800000000001
	.quad	0x3fe25e050374ff86              # double 0.57397699999999996
	.quad	0x40127e807bbb6241              # double 4.6235369999999998
	.quad	0x40084eae18ac9f30              # double 3.0384180000000001
	.quad	0x40139f1ed17c5ef6              # double 4.9053909999999998
	.quad	0x402046c4a4095f24              # double 8.1382189999999994
	.quad	0x401f93e100607810              # double 7.8944130000000001
	.quad	0x40171f440af1cb8a              # double 5.7805330000000001
	.quad	0x40202df3d7d3910c              # double 8.0897509999999996
	.quad	0x401d676c050bd87b              # double 7.3509979999999997
	.quad	0x40225f5fb2edfe76              # double 9.1862770000000005
	.quad	0x4014aae4b0186120              # double 5.1668880000000001
	.quad	0x4023c1797cc39ffd              # double 9.8778799999999993
	.quad	0x40226365ecc3e319              # double 9.1941369999999996
	.quad	0x40231d8ba40d90e2              # double 9.5577059999999996
	.quad	0x401ce33eff195033              # double 7.2219199999999999
	.quad	0x401eb198288051ca              # double 7.673432
	.quad	0x4015f4a48f96e158              # double 5.4889089999999996
	.quad	0x3ffcb7292c493426              # double 1.7947169999999999
	.quad	0x40232e6b6177ea1c              # double 9.5906629999999992
	.quad	0x400d20913a4f8727              # double 3.6409020000000001
	.quad	0x4016f61cffeb074a              # double 5.7403449999999996
	.quad	0x3ffff08787485e3e              # double 1.9962230000000001
	.quad	0x401399ee88df3733              # double 4.9003240000000003
	.quad	0x400fedc011d3671b              # double 3.9910890000000001
	.quad	0x40103e111276fb09              # double 4.0606119999999999
	.quad	0x401a8fb1e18efbb1              # double 6.6403270000000001
	.quad	0x4000cc00da1a9329              # double 2.0996109999999999
	.quad	0x401b1ba94bbe4474              # double 6.7770130000000002
	.quad	0x3ffb592d98bf7f06              # double 1.7092719999999999
	.quad	0x4019ca7ef9db22d1              # double 6.4477500000000001
	.quad	0x3ff2e1d53cddd6e0              # double 1.1801349999999999
	.quad	0x401a7085f4a1272d              # double 6.6098860000000004
	.quad	0x4011f691ea78af3e              # double 4.4907909999999998
	.quad	0x401aa593e5fb71fc              # double 6.6616970000000002
	.quad	0x402338461f9f01b8              # double 9.6099099999999992
	.quad	0x401e31565c2d2780              # double 7.5481809999999996
	.quad	0x4023fd92d98bf7f0              # double 9.9952609999999993
	.quad	0x40210f2ffd1dcd70              # double 8.5296629999999993
	.quad	0x4013973f748a1598              # double 4.8977029999999999
	.quad	0x4011017a89331a09              # double 4.2514440000000002
	.quad	0x40120368ad688377              # double 4.5033289999999999
	.quad	0x40209581cf7878b8              # double 8.2920060000000007
	.quad	0x3fdfb9cb6848beb6              # double 0.49571500000000002
	.quad	0x4016a308787485e4              # double 5.6592120000000001
	.quad	0x401c26c58eeae9ee              # double 7.0378629999999998
	.quad	0x3ffd14940bbb1f25              # double 1.8175239999999999
	.quad	0x3ff5dd6adf71eaff              # double 1.366557
	.quad	0x401594916ca46e09              # double 5.395086
	.quad	0x3ff0026351deefe5              # double 1.000583
	.quad	0x402152f6a50d6b23              # double 8.6620380000000008
	.quad	0x3ff34dcb9a9da598              # double 1.206493
	.quad	0x40024d184c271fff              # double 2.2876439999999998
	.quad	0x4016847f562174c5              # double 5.6293920000000002
	.quad	0x3fec9cf56eac8605              # double 0.89415999999999995
	.quad	0x4016e96cc5fbf834              # double 5.7279540000000004
	.quad	0x4021a8fba8826aa9              # double 8.8300450000000001
	.quad	0x4016710624dd2f1b              # double 5.6103750000000003
	.quad	0x4009e72d1aeb3dd1              # double 3.237879
	.quad	0x40204666cb10342b              # double 8.1375030000000006
	.quad	0x401b98fd9fd36f7e              # double 6.8994049999999998
	.quad	0x4022bfae3608d089              # double 9.3743759999999998
	.quad	0x40236fc957cd466f              # double 9.7183329999999994
	.quad	0x402165a61e0c5a81              # double 8.6985329999999994
	.quad	0x401b686df82b1f68              # double 6.8519819999999996
	.quad	0x3fde682b62845996              # double 0.47510799999999997
	.quad	0x4019a6202539756d              # double 6.4122320000000004
	.quad	0x401a459ab6d00b46              # double 6.5679730000000003
	.quad	0x401fb5cfede97d07              # double 7.9275510000000002
	.quad	0x40151f840181e03f              # double 5.2807769999999996
	.quad	0x4023b15faa8a82a5              # double 9.8464329999999993
	.quad	0x4022c5da6a444178              # double 9.3864319999999992
	.quad	0x4014599e94ab1d50              # double 5.0875190000000003
	.quad	0x4019fd45a5fc7e6b              # double 6.4973359999999998
	.quad	0x401b0dad7518b0d1              # double 6.7633570000000001
	.quad	0x3ff1455970b49e02              # double 1.079431
	.quad	0x400753a0407cc7d2              # double 2.9158330000000001
	.quad	0x3fecb24a6a875d57              # double 0.89676400000000001
	.quad	0x4023eac753e707e1              # double 9.9585519999999991
	.quad	0x3fc2f0281ba7fc33              # double 0.147954
	.quad	0x400b19b994e1a3f4              # double 3.3875609999999998
	.quad	0x400422730c671690              # double 2.5168210000000002
	.quad	0x4021b0ac7da1ec4e              # double 8.8450659999999992
	.quad	0x4002cba387592535              # double 2.3494329999999999
	.quad	0x3ffada2d72ffd1dd              # double 1.678266
	.quad	0x3fa6a832b990afe6              # double 0.044252
	.quad	0x4007336cdf266ba5              # double 2.9001100000000002
	.quad	0x3ff06583e8576cce              # double 1.0247839999999999
	.quad	0x40101467be553ac5              # double 4.019927
	.quad	0x40197f08461f9f02              # double 6.3740550000000002
	.quad	0x401ab5f7403dddb1              # double 6.6777009999999999
	.quad	0x4023faba7b9170d6              # double 9.9897039999999997
	.quad	0x401af3e425aee632              # double 6.738175
	.quad	0x401090e12e83a10a              # double 4.1414840000000002
	.quad	0x3fe1d035371971c1              # double 0.55666599999999999
	.quad	0x402051fe64f54d1f              # double 8.1601440000000007
	.quad	0x40234e1a3f4666ed              # double 9.6525440000000006
	.quad	0x3fd86138fffbce42              # double 0.38093399999999999
	.quad	0x401c4a8e71476af9              # double 7.0728090000000003
	.quad	0x401dc8c5c9a34ca1              # double 7.4460670000000002
	.quad	0x400767e38eb0318c              # double 2.9257270000000002
	.quad	0x401723a5c1c6088d              # double 5.7848119999999996
	.quad	0x402316659d12cade              # double 9.5437440000000002
	.quad	0x400296b09635610b              # double 2.3235790000000001
	.quad	0x4019a35b4edb2f66              # double 6.4095279999999999
	.quad	0x3fee1986b9c304cd              # double 0.94061600000000001
	.quad	0x40016a60913a4f87              # double 2.1769419999999999
	.quad	0x400bfe8b3b320536              # double 3.4992890000000001
	.quad	0x4001b89acbc8c0cf              # double 2.2151390000000002
	.quad	0x402049e5c0b99913              # double 8.1443309999999993
	.quad	0x401e7a3486f049aa              # double 7.6193410000000004
	.quad	0x3ff8a8ea39c51dac              # double 1.541239
	.quad	0x402254d0bb6ed677              # double 9.1656549999999992
	.quad	0x4002b8f81e8a2ec3              # double 2.3403170000000002
	.quad	0x4002ec29bf162ae5              # double 2.3653140000000001
	.quad	0x4010bd256798958e              # double 4.1847130000000003
	.quad	0x401cf634549b62c7              # double 7.2404339999999996
	.quad	0x4022a6d0917d6b66              # double 9.3258100000000006
	.quad	0x401a05996744b2b7              # double 6.5054679999999996
	.quad	0x4017334fc610f0e9              # double 5.800109
	.quad	0x40222fd955714b9d              # double 9.0934550000000005
	.quad	0x4002a1e2584f4c6e              # double 2.3290449999999998
	.quad	0x40179142f61ed5ae              # double 5.8918569999999999
	.quad	0x401af71d60631727              # double 6.7413230000000004
	.quad	0x40231b0e1b4bb5e1              # double 9.552842
	.quad	0x4022edee78183f92              # double 9.4647100000000002
	.quad	0x4016a47a9e2bcf92              # double 5.6606240000000003
	.quad	0x40215c0c1fc8f323              # double 8.6797799999999992
	.quad	0x4021fa6202539757              # double 8.9890290000000004
	.quad	0x3fff0e53eb399f5e              # double 1.940998
	.quad	0x4023f3b57c4e2f38              # double 9.975994
	.quad	0x40070f8df7a4e7ab              # double 2.8825949999999998
	.quad	0x401b8727136a4010              # double 6.8819850000000002
	.quad	0x3fe3682f944241c4              # double 0.60646800000000001
	.quad	0x4012ba7f3cf70154              # double 4.6821260000000002
	.quad	0x3fe7d8e64b231401              # double 0.74522699999999997
	.quad	0x40206a6e978d4fdf              # double 8.2078749999999996
	.quad	0x401adebd9018e758              # double 6.7175200000000004
	.quad	0x40237c2edbb59ddc              # double 9.7425449999999997
	.quad	0x401d278705425f20              # double 7.2886009999999999
	.quad	0x40071a30984e3fff              # double 2.887788
	.quad	0x4022ae2a1b5c7cd9              # double 9.3401650000000007
	.quad	0x401343c68661ae71              # double 4.8161870000000002
	.quad	0x4021de9ccb7d4174              # double 8.9347899999999995
	.quad	0x4022de4e48626f61              # double 9.4341910000000002
	.quad	0x4013aadd15f02c4d              # double 4.9168589999999996
	.quad	0x40220f5d13d74d59              # double 9.0300069999999995
	.quad	0x401179ce8d972cd8              # double 4.3689520000000002
	.quad	0x400845b530ced4e5              # double 3.0340370000000001
	.quad	0x4014d687b139c94f              # double 5.2095019999999996
	.quad	0x401edff609dcf894              # double 7.718712
	.quad	0x3ffd1a8155d5f56a              # double 1.8189709999999999
	.quad	0x3fe40e27e0ef9980              # double 0.62672799999999995
	.quad	0x40118bafd976ff3b              # double 4.3864130000000001
	.quad	0x401f87abb8800eae              # double 7.8824909999999999
	.quad	0x3fd96b5d462c343b              # double 0.39717799999999998
	.quad	0x4021adba4d6e47dc              # double 8.8393119999999996
	.quad	0x401f981450efdc9c              # double 7.8985149999999997
	.quad	0x401c0dd7a99fa11b              # double 7.0135180000000004
	.quad	0x401a7ec892ab68cf              # double 6.623812
	.quad	0x400d67913e81450f              # double 3.67557
	.quad	0x4020f3e9a6f826ee              # double 8.4763920000000006
	.quad	0x401fbfaa4766c6de              # double 7.9371729999999996
	.quad	0x4010a131ec0b5675              # double 4.1574169999999997
	.quad	0x4021116d4c33b539              # double 8.5340369999999997
	.quad	0x4019cc5154866a12              # double 6.4495290000000001
	.quad	0x40140708ede54b49              # double 5.0068700000000002
	.quad	0x40141285a921ccd9              # double 5.0180879999999997
	.quad	0x40087784662bae04              # double 3.0583580000000001
	.quad	0x4019e71476af89c6              # double 6.4756640000000001
	.quad	0x4021482f944241c4              # double 8.6409880000000001
	.quad	0x4020ff6837f7be12              # double 8.4988419999999998
	.quad	0x40051ef30a4e379b              # double 2.6401119999999998
	.quad	0x4016349906cca2db              # double 5.5513649999999997
	.quad	0x4023c7ab53d640ea              # double 9.8899790000000003
	.quad	0x402364bad7d7c2ca              # double 9.6967379999999999
	.quad	0x4020de7381d7dbf5              # double 8.4344750000000008
	.quad	0x402128a222d5171e              # double 8.5793619999999997
	.quad	0x401ee4a4d2b2bfdb              # double 7.7232849999999997
	.quad	0x4012c132f87ad081              # double 4.6886710000000003
	.quad	0x3fd388333fc86cec              # double 0.30518800000000001
	.quad	0x40232c7c73eee526              # double 9.5868870000000008
	.quad	0x40214bd2d87f8876              # double 8.6480929999999994
	.quad	0x401cd6c8f7553693              # double 7.2097509999999998
	.quad	0x3fcdfb82c2bd7f52              # double 0.234238
	.quad	0x4020047304039abf              # double 8.0086899999999996
	.quad	0x4016275afaf85943              # double 5.5384330000000004
	.quad	0x3fff3f3493858362              # double 1.952931
	.quad	0x3fc78f4f93bc0a07              # double 0.184061
	.quad	0x3ffd4217d2849cb2              # double 1.8286359999999999
	.quad	0x3ff56c215b9a5a8a              # double 1.3388990000000001
	.quad	0x400ada1d323fee2d              # double 3.3565010000000002
	.quad	0x40074ccff21b3aef              # double 2.912506
	.quad	0x402342bd5dc40075              # double 9.6303509999999992
	.quad	0x402152b29e4d5d81              # double 8.6615190000000002
	.quad	0x4013342d490e66cb              # double 4.8009539999999999
	.quad	0x40000bc8c0ce91c9              # double 2.005754
	.quad	0x401f817b95a29414              # double 7.8764479999999999
	.quad	0x4002a6088d6d3b6d              # double 2.3310710000000001
	.quad	0x4019c9a34ca0c283              # double 6.4469120000000002
	.quad	0x401a88a0d349be90              # double 6.633426
	.quad	0x4017588a47ecfe9b              # double 5.8364649999999996
	.quad	0x4023616659d12cae              # double 9.6902340000000002
	.quad	0x4004b33fc86cebbc              # double 2.5875240000000002
	.quad	0x4015829bae46cfc8              # double 5.3775469999999999
	.quad	0x3fe9715a4acf312b              # double 0.79508699999999999
	.quad	0x402230b1bbcf4e87              # double 9.0951059999999995
	.quad	0x402339bb4916ca47              # double 9.6127570000000002
	.quad	0x401596bfca85cab0              # double 5.3972160000000002
	.quad	0x400ece4217d2849d              # double 3.8507120000000001
	.quad	0x400f42834d26fa40              # double 3.9074770000000001
	.quad	0x400b31159c497742              # double 3.3989669999999998
	.quad	0x3fed5549731098d4              # double 0.91666099999999994
	.quad	0x400d7e121ee67514              # double 3.6865579999999998
	.quad	0x402195c8fb86f47b              # double 8.7925489999999993
	.quad	0x40033cc857f3061c              # double 2.4046789999999998
	.quad	0x40144b52c9d16fca              # double 5.0735580000000002
	.quad	0x40235f944241c3f0              # double 9.6866780000000006
	.quad	0x402254e1e71044f2              # double 9.1657860000000007
	.quad	0x400c7506dd69d302              # double 3.5571419999999998
	.quad	0x400d5437c5692b3d              # double 3.6661220000000001
	.quad	0x401f39285a921cce              # double 7.8058180000000004
	.quad	0x3ff74f57f737da62              # double 1.456871
	.quad	0x3ff5610f0e90bc7b              # double 1.3361959999999999
	.quad	0x401d74163779e9d1              # double 7.3633660000000001
	.quad	0x40213ff1b6912125              # double 8.6248909999999999
	.quad	0x3ffbaeee957470eb              # double 1.730208
	.quad	0x4022a1fc8f32378b              # double 9.3163800000000005
	.quad	0x401c8b228dc981bf              # double 7.1358740000000003
	.quad	0x3ff8138bcdfefbf4              # double 1.504772
	.quad	0x3ff2cc436fc158fb              # double 1.1748689999999999
	.quad	0x4011e4057082491b              # double 4.472677
	.quad	0x4011cf3e468cac4b              # double 4.4523859999999997
	.quad	0x3ff78bee807bbb62              # double 1.4716629999999999
	.quad	0x40208e145953586d              # double 8.2774990000000006
	.quad	0x40143299d883ba34              # double 5.0494149999999998
	.quad	0x400ec789613d31ba              # double 3.8474300000000001
	.quad	0x4021a5dc1e7967cb              # double 8.8239450000000001
	.quad	0x3ffae0f9096bb98c              # double 1.6799249999999999
	.quad	0x401e6afd113836a8              # double 7.6044809999999998
	.quad	0x401a7283d35eb745              # double 6.6118309999999996
	.quad	0x401cdc92146a1a50              # double 7.215401
	.quad	0x40134bba12b5e52a              # double 4.8239520000000002
	.quad	0x4011f705c896dd27              # double 4.4912330000000003
	.quad	0x40215e0e0eb67c28              # double 8.6837009999999992
	.quad	0x4011aeca25529fe0              # double 4.420693
	.quad	0x4016975afaf85943              # double 5.6478080000000004
	.quad	0x3fe6c61f9f01b867              # double 0.71168500000000001
	.quad	0x40225b90214ad363              # double 9.1788340000000002
	.quad	0x400756b228dc981c              # double 2.917332
	.quad	0x40022fee6fb4c3c2              # double 2.2734040000000002
	.quad	0x3ff702784a9478c8              # double 1.4381029999999999
	.quad	0x40066e18ac9f2fdc              # double 2.8037580000000002
	.quad	0x4018decaab8a5ce6              # double 6.2175700000000003
	.quad	0x3ff4638327674d16              # double 1.274295
	.quad	0x400a1d80e496edee              # double 3.2644060000000001
	.quad	0x4023fca9ac365450              # double 9.9934820000000002
	.quad	0x3ff3206e9ff0cbb0              # double 1.1954180000000001
	.quad	0x3fe85f761cbccf29              # double 0.76165300000000002
	.quad	0x3fedb7bf1e8e6080              # double 0.92867999999999995
	.quad	0x3ff0e3dd54da4ce8              # double 1.055631
	.quad	0x4001eb6a619da9ca              # double 2.2399490000000002
	.quad	0x4021fc3d89ce4a7b              # double 8.9926569999999995
	.quad	0x4010cc2fc69728a6              # double 4.1994009999999999
	.quad	0x40121f98b71b8aa0              # double 4.530856
	.quad	0x40221f35c182ecaf              # double 9.0609570000000001
	.quad	0x401329d7342edbb6              # double 4.7908600000000003
	.quad	0x4016e45ae5ffa3ba              # double 5.7230030000000003
	.quad	0x3ff1612620253975              # double 1.0862179999999999
	.quad	0x40184d6d7e889c1b              # double 6.0756129999999997
	.quad	0x400257342edbb59e              # double 2.2925800000000001
	.quad	0x400fb80a9de8b3b3              # double 3.9648639999999999
	.quad	0x3fb2046c764adff8              # double 0.070379999999999998
	.quad	0x4022fea854477ff1              # double 9.4973779999999994
	.quad	0x4015947fdc5931ca              # double 5.3950189999999996
	.quad	0x401393c6c97d8cf4              # double 4.8943130000000004
	.quad	0x401964f227d028a2              # double 6.3485800000000001
	.quad	0x40041f498c3b0c46              # double 2.5152770000000002
	.quad	0x4016cc0ce91c8eac              # double 5.699268
	.quad	0x400bc3dab5c39bcc              # double 3.4706320000000002
	.quad	0x40215b927d45a5fc              # double 8.6788519999999991
	.quad	0x3fe4310342aa9f7b              # double 0.63098299999999996
	.quad	0x400ce5f28848387e              # double 3.612279
	.quad	0x40208ca686e7e62e              # double 8.2747080000000004
	.quad	0x400b656bca5375c9              # double 3.4245220000000001
	.quad	0x400701975f2cb641              # double 2.8757769999999998
	.quad	0x3ffd4f41f212d773              # double 1.83185
	.quad	0x400c9cc9ea9a3d2e              # double 3.5765570000000002
	.quad	0x401554851a869403              # double 5.3325389999999997
	.quad	0x401e8832fcac8e69              # double 7.633007
	.quad	0x4011244028e4fb98              # double 4.2854010000000002
	.quad	0x401384d12018a43c              # double 4.8797040000000003
	.quad	0x4022468d972cd7cf              # double 9.1377989999999993
	.quad	0x4022adedf1e0828c              # double 9.3397059999999996
	.quad	0x400faab92c061848              # double 3.958361
	.quad	0x3fe355a3a08398a6              # double 0.60420399999999996
	.quad	0x401c740bbb1f255f              # double 7.1133259999999998
	.quad	0x3fe0782d38476f2a              # double 0.51466999999999996
	.quad	0x401bf98c7e28240b              # double 6.9936999999999996
	.quad	0x40158f61ed5ae1ce              # double 5.3900220000000001
	.quad	0x401a90c73abc9470              # double 6.6413849999999996
	.quad	0x3fea6fcdee34fc61              # double 0.82614799999999999
	.quad	0x4022c0b4bf8fcd68              # double 9.376379
	.quad	0x401a4e553ac4f7ec              # double 6.5764969999999998
	.quad	0x402102a4db163bac              # double 8.5051640000000006
	.quad	0x400e1a6698bb4d49              # double 3.7628910000000002
	.quad	0x3fe2e2328f9f44d4              # double 0.59011199999999997
	.quad	0x402269ef73c0c1fd              # double 9.2069050000000008
	.quad	0x4007e752da98676a              # double 2.9879509999999998
	.quad	0x4013cc016052502f              # double 4.9492240000000001
	.quad	0x3fda804102ff8ec1              # double 0.414078
	.quad	0x4014614a4d2b2bfe              # double 5.0950100000000003
	.quad	0x4018a197e5647347              # double 6.1578059999999999
	.quad	0x3fe972170931012a              # double 0.79517700000000002
	.quad	0x40171f09d8c6d613              # double 5.7803110000000002
	.quad	0x4008518dac258d58              # double 3.0398209999999999
	.quad	0x4023413ea2d2fe3f              # double 9.6274309999999996
	.quad	0x3fd3112ba16e7a31              # double 0.29792299999999999
	.quad	0x3ffcff6a0dbad3a6              # double 1.812357
	.quad	0x40226671ef30a4e3              # double 9.2000879999999992
	.quad	0x401e5404a72ead92              # double 7.5820489999999996
	.quad	0x400b5079e59f2baa              # double 3.4142950000000001
	.quad	0x40154a3f034b0e1b              # double 5.3225059999999997
	.quad	0x3ffe1d25aab47410              # double 1.8821159999999999
	.quad	0x3ff7ddba908a265f              # double 1.491633
	.quad	0x401d29ac36544fe3              # double 7.2906959999999996
	.quad	0x400b6dbb59ddc1e8              # double 3.4285800000000002
	.quad	0x3fbb78bbd3804535              # double 0.107311
	.quad	0x40207bd017dae819              # double 8.2418220000000009
	.quad	0x401f21d4306e5cd5              # double 7.783036
	.quad	0x40236a8aa433508f              # double 9.7080889999999993
	.quad	0x3fee1a719b4dcec0              # double 0.940728
	.quad	0x40232f3b213e3e29              # double 9.5922479999999996
	.quad	0x4022e3eb5b2d4d40              # double 9.4451549999999997
	.quad	0x3ffb1ae5ffa3b9ae              # double 1.694067
	.quad	0x401e0fae7924af0c              # double 7.515314
	.quad	0x401db4f69ca9ef52              # double 7.4267219999999998
	.quad	0x4022057a786c2268              # double 9.0106999999999999
	.quad	0x400acc4ac6cdaf4b              # double 3.3497520000000001
	.quad	0x4010333a4723ab00              # double 4.050027
	.quad	0x400de0d5e8d54110              # double 3.7347830000000002
	.quad	0x4017fcbc05d52c17              # double 5.9968110000000001
	.quad	0x40170f18c9fb6135              # double 5.7647430000000002
	.quad	0x401521ab4b72c519              # double 5.2828799999999996
	.quad	0x3fd8f0a1be2b495a              # double 0.38968700000000001
	.quad	0x4013a68a50507a6c              # double 4.9126370000000001
	.quad	0x40117a7bd48cb4af              # double 4.3696130000000002
	.quad	0x401a79c2c1b10fd8              # double 6.6189070000000001
	.quad	0x401ec6733ebbfd72              # double 7.6937990000000003
	.quad	0x400890d2806af46b              # double 3.0707140000000002
	.quad	0x3ffa04d551d68c69              # double 1.62618
	.quad	0x3fe682a77a2cecc8              # double 0.70344899999999999
	.quad	0x401423b03e20ccff              # double 5.0348519999999999
	.quad	0x3fe423161a1db878              # double 0.62928300000000004
	.quad	0x401f323fab10ba62              # double 7.7990709999999996
	.quad	0x4003ba1e3eaf6838              # double 2.465878
	.quad	0x3ffa34eebf65dbfd              # double 1.637923
	.quad	0x4011e9691a75cd0c              # double 4.4779400000000003
	.quad	0x3ff2c63065f9591d              # double 1.173386
	.quad	0x4018ffaa4766c6de              # double 6.2496729999999996
	.quad	0x40053b940fecdd0e              # double 2.6540910000000002
	.quad	0x4022bace032db1ea              # double 9.3648530000000001
	.quad	0x4010852f7f498c3b              # double 4.130064
	.quad	0x401ff70e6f2e8c05              # double 7.9912660000000004
	.quad	0x400387a072d1aeb4              # double 2.4412240000000001
	.quad	0x3f7539b8887229e9              # double 0.005182
	.quad	0x400b7733226c3b92              # double 3.4332029999999998
	.quad	0x4014ee4de3b8a19d              # double 5.2327190000000003
	.quad	0x401ba463cfb3311a              # double 6.9105369999999997
	.quad	0x401bffe154434e33              # double 6.9998829999999996
	.quad	0x3ffc2d70e6f2e8c0              # double 1.7610939999999999
	.quad	0x3fcb15054ac29bf1              # double 0.21157899999999999
	.quad	0x4010118e325d4a5e              # double 4.017144
	.quad	0x4013d94c87980f56              # double 4.9622060000000001
	.quad	0x401243a6ce358299              # double 4.5660660000000002
	.quad	0x400a17b634dad320              # double 3.2615780000000001
	.quad	0x401220c49ba5e354              # double 4.532
	.quad	0x4005102de00d1b71              # double 2.6328999999999998
	.quad	0x40121efbf401c4fc              # double 4.5302579999999999
	.quad	0x40120ea8da7f3cf7              # double 4.514316
	.quad	0x3ff8c9374bc6a7f0              # double 1.5491250000000001
	.quad	0x4012ba9003eea20a              # double 4.6821900000000003
	.quad	0x4023286f049a9974              # double 9.5789720000000002
	.quad	0x4021f4afb3b75211              # double 8.9779029999999995
	.quad	0x4021ab94d9407896              # double 8.8351199999999999
	.quad	0x40061f5ad96a6a01              # double 2.7653099999999999
	.quad	0x4000aec39799e519              # double 2.085334
	.quad	0x3fd11fe21d96e9bc              # double 0.267571
	.quad	0x3ffb1e2de8709742              # double 1.694868
	.quad	0x3ff0ecefed63454a              # double 1.0578460000000001
	.quad	0x401b3dab9f559b3d              # double 6.810225
	.quad	0x4002b3d188f42fe8              # double 2.3378019999999999
	.quad	0x3feb38759253543b              # double 0.85064200000000001
	.quad	0x401a92ae8e1d6495              # double 6.6432440000000001
	.quad	0x400075989df1172f              # double 2.05742
	.quad	0x4021905d0fa58f71              # double 8.7819599999999998
	.quad	0x40088cb20fb224ab              # double 3.0686990000000001
	.quad	0x400efee2c98e53eb              # double 3.8744559999999999
	.quad	0x401e1ba8c586876e              # double 7.5270109999999999
	.quad	0x402252b40f66a551              # double 9.1615300000000008
	.quad	0x40236f55ffe6d58d              # double 9.7174530000000007
	.quad	0x4011e18def416bdb              # double 4.4702679999999999
	.quad	0x40083c8b86b15f89              # double 3.029563
	.quad	0x4021ea897635e743              # double 8.9580800000000007
	.quad	0x4014adde7a743a64              # double 5.1697939999999996
	.quad	0x3fcea51e321a2e7f              # double 0.23941399999999999
	.quad	0x4018ee7f2c3009b3              # double 6.232907
	.quad	0x4014ce1b089a0275              # double 5.2012749999999999
	.quad	0x400944180d3cff65              # double 3.1582490000000001
	.quad	0x3fe96c39799e518f              # double 0.79446099999999997
	.quad	0x401a715b573eab36              # double 6.6106999999999996
	.quad	0x401849da16616b55              # double 6.0721210000000001
	.quad	0x401c2e12a51e321a              # double 7.0449929999999998
	.quad	0x3ff0e6c4c5974e66              # double 1.0563400000000001
	.quad	0x3fe36fd00713f078              # double 0.60739900000000002
	.quad	0x402399682f944242              # double 9.7996230000000004
	.quad	0x4005df8ec0f88334              # double 2.734159
	.quad	0x40175f8594291750              # double 5.8432829999999996
	.quad	0x4019ab1d0c804103              # double 6.417103
	.quad	0x4014ea797891e215              # double 5.2289789999999998
	.quad	0x3fdc6134ce3de615              # double 0.44343300000000002
	.quad	0x4018692ab68cef67              # double 6.1027019999999998
	.quad	0x3ff8c9f0e4da09cc              # double 1.549302
	.quad	0x40213b0af5fd47bf              # double 8.6153180000000003
	.quad	0x4005a48cf7caa759              # double 2.7053470000000002
	.quad	0x400fa1f31f46ed24              # double 3.9540769999999998
	.quad	0x4001afd32c625e9a              # double 2.210852
	.quad	0x40204e81669ced0b              # double 8.1533309999999997
	.quad	0x3fffd30f062d40ab              # double 1.989028
	.quad	0x4023e9a38fbca106              # double 9.9563260000000007
	.quad	0x401bbf2c3009b307              # double 6.9366919999999999
	.quad	0x3fe1f9bbadc0980b              # double 0.56173499999999998
	.quad	0x40151285a921ccd9              # double 5.2680879999999997
	.quad	0x3ffba9f7b5aea316              # double 1.728996
	.quad	0x3fc2f0f16f4384ba              # double 0.147978
	.quad	0x4020baf7f498c3b1              # double 8.3651730000000004
	.quad	0x401ec5d3dc8b86b1              # double 7.6931909999999996
	.quad	0x3fb33cb3e5753a3f              # double 0.075145000000000003
	.quad	0x401db8c5436b8f9b              # double 7.4304399999999999
	.quad	0x4023338cfbfc6541              # double 9.6006850000000003
	.quad	0x401efda2f8bdec5f              # double 7.7476919999999998
	.quad	0x401859a847b24639              # double 6.0875560000000002
	.quad	0x3fe262845996744b              # double 0.57452599999999998
	.quad	0x40168679cc74b839              # double 5.6313240000000002
	.quad	0x401e1667f90d9d77              # double 7.5218809999999995
	.quad	0x400bca012599ed7c              # double 3.4736349999999998
	.quad	0x402080a350d2806b              # double 8.2512460000000001
	.quad	0x3ff1fd72bcb5fe54              # double 1.124377
	.quad	0x3fe21b4784230fd0              # double 0.56583000000000006
	.quad	0x400b4ed56b00ffda              # double 3.4134929999999999
	.quad	0x3ffbcc3e3193f6c2              # double 1.7373639999999999
	.quad	0x4019e8b502ababeb              # double 6.4772530000000001
	.quad	0x40141c7325918a01              # double 5.0277830000000003
	.quad	0x401e5a1dfb9389b5              # double 7.5880049999999998
	.quad	0x400c84523f67f4dc              # double 3.5646100000000001
	.quad	0x3fecfa5f41aef6f9              # double 0.90556300000000001
	.quad	0x4010376af89c5e70              # double 4.054119
	.quad	0x40161c3c18b502ac              # double 5.5275730000000003
	.quad	0x4017691bc5586445              # double 5.8526449999999999
	.quad	0x400e9ca643cc07ab              # double 3.826489
	.quad	0x401e338476f2a5a4              # double 7.5503099999999996
	.quad	0x3fe788461f9f01b8              # double 0.73538499999999996
	.quad	0x40147a89fc6da448              # double 5.1196669999999997
	.quad	0x402245d9c27e9531              # double 9.1364269999999994
	.quad	0x3fffd2f09d8c6d61              # double 1.988999
	.quad	0x400340389f83be66              # double 2.406358
	.quad	0x401a70f9096bb98c              # double 6.6103249999999996
	.quad	0x40070ab042528ae7              # double 2.8802189999999999
	.quad	0x3ff67f24d8fd5cb8              # double 1.4060410000000001
	.quad	0x4015ff2b239a38fc              # double 5.4991880000000002
	.quad	0x3ff27f77af64063a              # double 1.15612
	.quad	0x4020f90a99b6f5cb              # double 8.4864090000000001
	.quad	0x40145e5b8561d430              # double 5.0921459999999996
	.quad	0x401f4303c07ee0b1              # double 7.8154440000000002
	.quad	0x4011d117f84449dc              # double 4.4541930000000001
	.quad	0x401e9bd09e12a51e              # double 7.6521629999999998
	.quad	0x401b3a18372e6a77              # double 6.8067330000000004
	.quad	0x400d2d7625204af9              # double 3.6471979999999999
	.quad	0x3ff9eae5bc87db2b              # double 1.619848
	.quad	0x40035e7d9988d2a2              # double 2.421138
	.quad	0x3fa0da7f3cf70154              # double 0.032917000000000002
	.quad	0x3fe4b1f46ed245b3              # double 0.64672300000000005
	.quad	0x3fbde2de8709741d              # double 0.116743
	.quad	0x401773c89f40a287              # double 5.8630699999999996
	.quad	0x402312569b17481b              # double 9.5358169999999997
	.quad	0x4018a7a20578e5c5              # double 6.1637040000000001
	.quad	0x4006795feda66128              # double 2.8092649999999999
	.quad	0x401f6e4d1a650614              # double 7.8577159999999999
	.quad	0x4014e0895d0b73d2              # double 5.2192740000000004
	.quad	0x4023892ba16e7a31              # double 9.7679109999999997
	.quad	0x4019bd2999567dbb              # double 6.4347289999999999
	.quad	0x4000ab9991361dc9              # double 2.0837889999999999
	.quad	0x3ffb2a8112ba16e8              # double 1.6978770000000001
	.quad	0x400a75536933a040              # double 3.3072879999999998
	.quad	0x40136ffb480a5acd              # double 4.8593570000000001
	.quad	0x3ff88bc59b8023a7              # double 1.534124
	.quad	0x4001ef544bb1af3a              # double 2.24186
	.quad	0x4018f05ccc89b0ee              # double 6.2347289999999997
	.quad	0x401b6703f2d3c793              # double 6.8506010000000002
	.quad	0x40231b52a8438088              # double 9.5533649999999994
	.quad	0x40206052f7f498c4              # double 8.1881330000000005
	.quad	0x4010ddb65ecc3e32              # double 4.2165160000000004
	.quad	0x3fe87dbb16c1e365              # double 0.76534800000000003
	.quad	0x3fc912231832fcad              # double 0.19586600000000001
	.quad	0x4012e78fabda0dfe              # double 4.7261340000000001
	.quad	0x400cbafaf8594291              # double 3.5912989999999998
	.quad	0x4020f6db7281fd9c              # double 8.4821430000000006
	.quad	0x402223c536d655e3              # double 9.0698640000000008
	.quad	0x40116e9d94d0dcfd              # double 4.3580230000000002
	.quad	0x4023c58969a0ad8a              # double 9.8858139999999999
	.quad	0x401297c6327ed84d              # double 4.6482169999999998
	.quad	0x40208e3305100a39              # double 8.2777329999999996
	.quad	0x3ff1d3005814940c              # double 1.1140140000000001
	.quad	0x401ba3c925785f8d              # double 6.9099469999999998
	.quad	0x40225b9e279dd3bb              # double 9.178941
	.quad	0x401982e2b8c75c4b              # double 6.3778180000000004
	.quad	0x402291dd3bafd977              # double 9.284891
	.quad	0x4022166fd651b0cd              # double 9.0438220000000005
	.quad	0x40202dbf26f1dc51              # double 8.0893490000000003
	.quad	0x401c2ec80c73abc9              # double 7.0456849999999998
	.quad	0x3fe11e4d5d80e497              # double 0.53494900000000001
	.quad	0x401296084a515cea              # double 4.6465160000000001
	.quad	0x4009dcff64cf8d71              # double 3.2329089999999998
	.quad	0x4020d4d31769a911              # double 8.415673
	.quad	0x400dee0c9d9d3459              # double 3.7412350000000001
	.quad	0x3fc900474d9c6b05              # double 0.19532099999999999
	.quad	0x401f46173b85e80c              # double 7.8184480000000001
	.quad	0x40234b7414a4d2b3              # double 9.6473700000000004
	.quad	0x40199db50f40e5a3              # double 6.4040109999999997
	.quad	0x3fd8c7e28240b780              # double 0.38719999999999999
	.quad	0x400a615db3397dd0              # double 3.297542
	.quad	0x3ff1378ee2867275              # double 1.0760639999999999
	.quad	0x400fbf50e3476295              # double 3.9684159999999999
	.quad	0x4014b12839042d8c              # double 5.1730049999999999
	.quad	0x3ff8745176145953              # double 1.5283979999999999
	.quad	0x3fefdd80e496edee              # double 0.99578900000000004
	.quad	0x4018d56da0168b5d              # double 6.2084260000000002
	.quad	0x4009e1669ced0b31              # double 3.2350590000000001
	.quad	0x401807ad080b673c              # double 6.0074959999999997
	.quad	0x3ff8c3c18b502abb              # double 1.5477920000000001
	.quad	0x4007bc382a12f901              # double 2.966904
	.quad	0x4011b12a51e321a3              # double 4.4230130000000001
	.quad	0x4023ec41fea8112c              # double 9.9614410000000006
	.quad	0x401602f7f498c3b1              # double 5.5028990000000002
	.quad	0x4006641919ac7970              # double 2.7988759999999999
	.quad	0x4013ba9eb2074ea9              # double 4.9322460000000001
	.quad	0x401bed976ff3ade2              # double 6.9820229999999999
	.quad	0x4017f130df9bdc6a              # double 5.985538
	.quad	0x401e4f51697f1f9b              # double 7.5774590000000001
	.quad	0x4023f659f2ba9d1f              # double 9.9811549999999993
	.quad	0x4004a111276fb092              # double 2.578646
	.quad	0x3ff963d4f15e7c8d              # double 1.586873
	.quad	0x400e9acffa7eb6bf              # double 3.8255919999999999
	.quad	0x40184528283d35eb              # double 6.0675359999999996
	.quad	0x4020728d002e2329              # double 8.223732
	.quad	0x3ff69ee568a50508              # double 1.4137930000000001
	.quad	0x40124b6f5caf2d80              # double 4.5736670000000004
	.quad	0x4022c636b0963561              # double 9.3871359999999999
	.quad	0x40066369fcf3dc05              # double 2.7985419999999999
	.quad	0x4023c4fe79ee02a7              # double 9.8847539999999991
	.quad	0x3ff01aff2a172abf              # double 1.006591
	.quad	0x3ffd353a3ec02f30              # double 1.8254950000000001
	.quad	0x40124ccd0fe8ab50              # double 4.5750010000000003
	.quad	0x40208ea960b6f9fd              # double 8.2786360000000005
	.quad	0x3fc82f837b4a233a              # double 0.18895000000000001
	.quad	0x4010747c30d306a3              # double 4.1137550000000003
	.quad	0x40227e4ef0281ba8              # double 9.246696
	.quad	0x3fe8ebcc6c54bcf1              # double 0.77878400000000003
	.quad	0x40149452c59fb1e2              # double 5.1448470000000004
	.quad	0x4003adbbe0157eed              # double 2.4598309999999999
	.quad	0x401bc0afe60c38f3              # double 6.9381709999999996
	.quad	0x4023002cd39da166              # double 9.5003419999999998
	.quad	0x40233aefd438d1d9              # double 9.6151110000000006
	.quad	0x400bdf559b3d07c8              # double 3.4840499999999999
	.quad	0x401bfe2c12ad81ae              # double 6.9982150000000001
	.quad	0x4014befb2aae2974              # double 5.1865050000000004
	.quad	0x4022282dbe7f2c30              # double 9.0784739999999999
	.quad	0x3fe4467381d7dbf5              # double 0.63360000000000005
	.quad	0x4014d29068986fce              # double 5.2056290000000001
	.quad	0x4005851eb851eb85              # double 2.6899999999999999
	.quad	0x400e2f901083dbc2              # double 3.7732239999999999
	.quad	0x400066fb4c3c18b5              # double 2.050284
	.quad	0x401811eeed8904f7              # double 6.0175130000000001
	.quad	0x400b75ee99a62ed3              # double 3.4325839999999999
	.quad	0x4021930fadf2ecf2              # double 8.787229
	.quad	0x400b8ab1d4f9c1f8              # double 3.4427219999999998
	.quad	0x4021031d2e0e3044              # double 8.5060819999999992
	.quad	0x4021d020c49ba5e3              # double 8.9064999999999994
	.quad	0x40219cc0bdcad14a              # double 8.8061579999999999
	.quad	0x4022125b530ced4e              # double 9.0358529999999995
	.quad	0x401820fe8ab4fa48              # double 6.0322209999999998
	.quad	0x401c272e275ab7dc              # double 7.0382619999999996
	.quad	0x40228c185058dde8              # double 9.2736230000000006
	.quad	0x401ce810e8858ff7              # double 7.2266269999999997
	.quad	0x4014c9e98dcdb37d              # double 5.1971800000000004
	.quad	0x3ff1076af89c5e70              # double 1.064311
	.quad	0x401a882adc4c9c91              # double 6.6329760000000002
	.quad	0x4017213cee9dd7ed              # double 5.7824590000000002
	.quad	0x4021f39799e518f4              # double 8.9757660000000001
	.quad	0x40231f2064239607              # double 9.5607939999999995
	.quad	0x4019ccf206423960              # double 6.4501419999999996
	.quad	0x402154723aafff37              # double 8.6649340000000006
	.quad	0x401abf1f14983d79              # double 6.686642
	.quad	0x400728af81626b2f              # double 2.8948659999999999
	.quad	0x401398fb86f47b67              # double 4.8993969999999996
	.quad	0x4011c6787ce95fab              # double 4.4438190000000004
	.quad	0x40085949e8815e39              # double 3.0435979999999998
	.quad	0x4018ace4ead0c3d2              # double 6.1688419999999997
	.quad	0x4021053825e13b19              # double 8.5101940000000003
	.quad	0x400f8f0739b024f6              # double 3.9448379999999998
	.quad	0x4020a9b6d43d0397              # double 8.3314730000000008
	.quad	0x40006ceaaf35e311              # double 2.0531820000000001
	.quad	0x4010614983d79075              # double 4.0950069999999998
	.quad	0x4022c5fbd6a593a3              # double 9.3866870000000002
	.quad	0x400379420b3d4ae4              # double 2.4342079999999999
	.quad	0x4022a614df8b1572              # double 9.3243779999999994
	.quad	0x3ff3aa39c51dabe2              # double 1.2290589999999999
	.quad	0x4010b12e83a109d0              # double 4.1730289999999997
	.quad	0x400f8aa5c5f7c676              # double 3.9426990000000002
	.quad	0x4019ccec41dd1a22              # double 6.4501200000000001
	.quad	0x401318dde7a743a6              # double 4.7742839999999998
	.quad	0x3fe63bb40b34e768              # double 0.69478799999999996
	.quad	0x400deff972474539              # double 3.742175
	.quad	0x401c236f7e3d1cc1              # double 7.034605
	.quad	0x3fc10bf1a5ca2984              # double 0.13317699999999999
	.quad	0x40236c24e5929670              # double 9.7112189999999998
	.quad	0x4021cf7c02afdda9              # double 8.9052430000000005
	.quad	0x400c707b784662bb              # double 3.5549230000000001
	.quad	0x401efbc382a12f90              # double 7.7458629999999999
	.quad	0x40234cae21101b00              # double 9.6497659999999996
	.quad	0x4018c6e158750c1c              # double 6.1942190000000004
	.quad	0x401e15604189374c              # double 7.5208750000000002
	.quad	0x4015c8b827fa1a0d              # double 5.4460150000000001
	.quad	0x401314face67d780              # double 4.7704880000000003
	.quad	0x4022145b4aa9717e              # double 9.0397590000000001
	.quad	0x4015314983d79075              # double 5.2981319999999998
	.quad	0x40119597d49d7ba6              # double 4.3960869999999996
	.quad	0x3ff8040f23897204              # double 1.500991
	.quad	0x40216ccab3edd8b6              # double 8.7124839999999999
	.quad	0x400d1b2cc70867ae              # double 3.6382690000000002
	.quad	0x4005e56eefa1e3eb              # double 2.737028
	.quad	0x40197893b7d84902              # double 6.3677510000000002
	.quad	0x4019fe2eb1c432ca              # double 6.4982249999999997
	.quad	0x401c499bf5946c33              # double 7.0718839999999998
	.quad	0x400401d29dc725c4              # double 2.5008900000000001
	.quad	0x4015a36ac647778e              # double 5.4095870000000001
	.quad	0x3fea36672fba01ef              # double 0.81914100000000001
	.quad	0x3ff00647778dd617              # double 1.001533
	.quad	0x400579dd3bafd977              # double 2.684504
	.quad	0x4023c8f840181e04              # double 9.892519
	.quad	0x40235c13986338b4              # double 9.6798369999999991
	.quad	0x40196d15f02c4d66              # double 6.3565290000000001
	.quad	0x3feed81f10667f91              # double 0.96388200000000001
	.quad	0x40144d0a24463066              # double 5.075234
	.quad	0x4022068c692f6e83              # double 9.0127900000000007
	.quad	0x3fe2b295e9e1b08a              # double 0.58430000000000004
	.quad	0x40095c3f811f4f51              # double 3.1700430000000002
	.quad	0x3ffa9996744b2b77              # double 1.6624969999999999
	.quad	0x40149e68a0d349bf              # double 5.1546960000000004
	.quad	0x4022254ef459d990              # double 9.0728679999999997
	.quad	0x4000158c8eef1bac              # double 2.0105219999999999
	.quad	0x40212cd0bb6ed677              # double 8.5875299999999992
	.quad	0x4022ee74afd54541              # double 9.4657339999999994
	.quad	0x40212ce89656eefa              # double 8.5877119999999998
	.quad	0x401fd8023a6ce358              # double 7.9609459999999998
	.quad	0x40126ab8e8ea39c5              # double 4.6042209999999999
	.quad	0x4003eb8066c2acb8              # double 2.4899909999999998
	.quad	0x4006bc8754f3775c              # double 2.8420550000000002
	.quad	0x40104e310dbf0564              # double 4.0763590000000001
	.quad	0x40183fe586013661              # double 6.0623990000000001
	.quad	0x40079065f9591cd2              # double 2.9455070000000001
	.quad	0x3ff527ea5f84cad5              # double 1.3222449999999999
	.quad	0x40143d655e28aa43              # double 5.0599569999999998
	.quad	0x40212a8a1dfb938a              # double 8.5830850000000005
	.quad	0x3ff35edbf8b9baa1              # double 1.2106589999999999
	.quad	0x401f51ee2435696e              # double 7.8300099999999997
	.quad	0x40100771c970f7ba              # double 4.0072700000000001
	.quad	0x401704ea077036ca              # double 5.7547990000000002
	.quad	0x3fb3d84901d19158              # double 0.077519000000000005
	.quad	0x40148e2a80064a9d              # double 5.1388340000000001
	.quad	0x40216757f737da62              # double 8.7018430000000002
	.quad	0x40228f70153bd167              # double 9.2801519999999993
	.quad	0x4010c374bc6a7efa              # double 4.1908750000000001
	.quad	0x401f460b2c83ec89              # double 7.8184019999999998
	.quad	0x402011fc8f32378b              # double 8.0351300000000005
	.quad	0x4011707746887a8d              # double 4.3598299999999997
	.quad	0x4016afa3b9ae0c17              # double 5.6715229999999996
	.quad	0x401c943e10060781              # double 7.144768
	.quad	0x400f8e0d23d4f15e              # double 3.9443609999999998
	.quad	0x40233c38088509c0              # double 9.6176150000000006
	.quad	0x4012272b020c49ba              # double 4.5382499999999997
	.quad	0x40160f11b60ae968              # double 5.514716
	.quad	0x40177c6fbd273d5c              # double 5.8715200000000003
	.quad	0x401e0f5d35653c9b              # double 7.5150040000000002
	.quad	0x40210e3779e9d0ea              # double 8.5277670000000008
	.quad	0x400b8f53c579f234              # double 3.4449839999999998
	.quad	0x3fe3e940357a3550              # double 0.62222299999999997
	.quad	0x40183698fe69270b              # double 6.053318
	.quad	0x4015a73365881a15              # double 5.4132819999999997
	.quad	0x4011cbacf7446f9c              # double 4.4489020000000004
	.quad	0x3fe20d62bf11f927              # double 0.56413400000000002
	.quad	0x401a843aa79bbadc              # double 6.62913
	.quad	0x401430fe8ab4fa48              # double 5.0478459999999998
	.quad	0x3ffff8982cb20fb2              # double 1.998192
	.quad	0x4022047f993d5348              # double 9.0087860000000006
	.quad	0x40226d740c4156e2              # double 9.2137759999999993
	.quad	0x401eb023e9ea1405              # double 7.6720119999999996
	.quad	0x402244c25072085b              # double 9.1342949999999998
	.quad	0x40028999dcb5781c              # double 2.3171879999999998
	.quad	0x40204f401c4fc1df              # double 8.1547859999999996
	.quad	0x3fedf55582129457              # double 0.93619799999999997
	.quad	0x4021ab29802c0a4a              # double 8.834301
	.quad	0x400cafdb09a671ef              # double 3.5858669999999999
	.quad	0x401c72abef06b378              # double 7.1119839999999996
	.quad	0x3ff4e5b4245f5ad9              # double 1.3060799999999999
	.quad	0x401b2e44fa05143c              # double 6.795185
	.quad	0x401decefaa4766c7              # double 7.4813830000000001
	.quad	0x4018cef566490a35              # double 6.202108
	.quad	0x401cd9b0ab2e1694              # double 7.2125880000000002
	.quad	0x40214436113404ea              # double 8.6332249999999995
	.quad	0x402211a176ddacef              # double 9.0344350000000002
	.quad	0x40223917d6b65a9b              # double 9.1115100000000009
	.quad	0x401753c03bc4d22d              # double 5.8317880000000004
	.quad	0x400275cfaacd9e84              # double 2.307525
	.quad	0x401d00b780346dc6              # double 7.2507000000000001
	.quad	0x4006603d57796399              # double 2.7969919999999999
	.quad	0x40055d46b26bf877              # double 2.6705450000000002
	.quad	0x4023578d0cc35ce2              # double 9.6709980000000009
	.quad	0x4017026b723ee1bd              # double 5.7523629999999999
	.quad	0x40210daad601ffb5              # double 8.5266940000000009
	.quad	0x4001c463065f9592              # double 2.2208920000000001
	.quad	0x401fe6573215fcc2              # double 7.9749420000000004
	.quad	0x4017cbf61aa3f035              # double 5.9491810000000003
	.quad	0x4021c3f6a0dbad3a              # double 8.8827409999999993
	.quad	0x401782aa19439de5              # double 5.8776020000000004
	.quad	0x402335d78811b1d9              # double 9.6051599999999996
	.quad	0x4020702dbe7f2c30              # double 8.2190989999999999
	.quad	0x400ae0e27e0ef998              # double 3.359807
	.quad	0x3ffa65aff2a172ac              # double 1.649826
	.quad	0x40148a426bb55ac0              # double 5.1350189999999998
	.quad	0x40138ff6d330941d              # double 4.8905900000000004
	.quad	0x3fff73a14cec41dd              # double 1.96573
	.quad	0x3ff47c297bfa4c62              # double 1.280313
	.quad	0x4011a82491afc04d              # double 4.4142020000000004
	.quad	0x3fe23f52fc2656ac              # double 0.57023000000000001
	.quad	0x401c5ca5bd944aa5              # double 7.0904759999999998
	.quad	0x3fe1710a99b6f5cb              # double 0.54504900000000001
	.quad	0x40005f75104d551d              # double 2.0466099999999998
	.quad	0x4022965f7403dddb              # double 9.2936969999999999
	.quad	0x40164c23b7952d23              # double 5.5743549999999997
	.quad	0x3ff691c9f72f76e6              # double 1.410593
	.quad	0x40142fe75bc44bf5              # double 5.0467810000000002
	.quad	0x4011e507e9d94d0e              # double 4.4736630000000002
	.quad	0x4023207dd4413554              # double 9.5634599999999991
	.quad	0x4016df2a9d627bf6              # double 5.7179359999999999
	.quad	0x3ff8bb0b39192642              # double 1.5456650000000001
	.quad	0x40214be8576cce5f              # double 8.6482569999999992
	.quad	0x401d8ab191dde376              # double 7.3854430000000004
	.quad	0x4020340a8d21bc12              # double 8.1016429999999993
	.quad	0x40043873ffac1d2a              # double 2.5275650000000001
	.quad	0x401bec47e49b1fac              # double 6.9807430000000004
	.quad	0x4016d2699c7bcc29              # double 5.7054809999999998
	.quad	0x3ffe982773e24fec              # double 1.912147
	.quad	0x4022a8d4bad7d7c3              # double 9.3297480000000004
	.quad	0x401db19f3c70c997              # double 7.4234590000000003
	.quad	0x3fecc6fbd273d5bb              # double 0.89929000000000003
	.quad	0x4013138b8ae31d71              # double 4.7690869999999999
	.quad	0x40231a6dacabc515              # double 9.5516179999999994
	.quad	0x4003c7de5082cf53              # double 2.4725920000000001
	.quad	0x4012363a5c1c6089              # double 4.5529570000000001
	.quad	0x4023cccfaeff5c6c              # double 9.9000219999999998
	.quad	0x402133b2788db057              # double 8.6009709999999995
	.quad	0x3fff897d8cf398e9              # double 1.9710669999999999
	.quad	0x3ff543b1d0c80410              # double 1.329027
	.quad	0x40207a79dd3bafd9              # double 8.2392109999999992
	.quad	0x401d41409a240315              # double 7.3137230000000004
	.quad	0x3ff7ba604e1e7104              # double 1.4830019999999999
	.quad	0x3fe53cd9a52263d8              # double 0.66367799999999999
	.quad	0x3ff3d2ab68cef673              # double 1.2389330000000001
	.quad	0x3fffbb267c6b8b69              # double 1.9831909999999999
	.quad	0x4010b9a8049667b6              # double 4.181305
	.quad	0x401ee003254e6e22              # double 7.7187619999999999
	.quad	0x401b4b08dd1e53a8              # double 6.8232759999999999
	.quad	0x401f1ca29845dc83              # double 7.7779639999999998
	.quad	0x4011b126634117f8              # double 4.4229979999999998
	.quad	0x3fee9b0468448cf8              # double 0.95642300000000002
	.quad	0x4013e8709741d085              # double 4.9769920000000001
	.quad	0x400faf61ed5ae1ce              # double 3.960636
	.quad	0x4006ce9680e06530              # double 2.850873
	.quad	0x3fef4523f67f4dbe              # double 0.97719
	.quad	0x401e794898f605ab              # double 7.6184409999999997
	.quad	0x401ebb3f20a73f75              # double 7.6828580000000004
	.quad	0x401fa116a8b8f14e              # double 7.9073130000000003
	.quad	0x401ba6b8305d95dd              # double 6.9128119999999997
	.quad	0x4020c80b88ca3e7d              # double 8.3907129999999999
	.quad	0x40117ea2d2fe3f36              # double 4.3736680000000003
	.quad	0x401b3b4f61672325              # double 6.8079200000000002
	.quad	0x40150592d98bf7f0              # double 5.2554429999999996
	.quad	0x4020742f1ed17c5f              # double 8.2269220000000001
	.quad	0x3fd32120e1f7d73d              # double 0.29889700000000002
	.quad	0x401158123810e886              # double 4.3360070000000004
	.quad	0x4023cc959e625636              # double 9.8995789999999992
	.quad	0x4012e107314ca926              # double 4.719754
	.quad	0x3fe3dc054ef459da              # double 0.62060800000000005
	.quad	0x402250dfdef8487c              # double 9.1579580000000007
	.quad	0x3ffeaf7d30ad46f6              # double 1.9178440000000001
	.quad	0x4023b25b317efe0d              # double 9.8483520000000002
	.quad	0x3febe62fdfc19c17              # double 0.87184899999999999
	.quad	0x40121806f262888b              # double 4.5234639999999997
	.quad	0x40192306e5cd4ed3              # double 6.2842060000000002
	.quad	0x40213a009f623077              # double 8.6132860000000004
	.quad	0x400ad4ea077036ca              # double 3.3539620000000001
	.quad	0x401d484b1ab0856e              # double 7.3205989999999996
	.quad	0x401d6ef06b37867f              # double 7.358339
	.quad	0x401cd87fcb923a2a              # double 7.2114250000000002
	.quad	0x401b7bef49cf56eb              # double 6.8710300000000002
	.quad	0x40230007357e670e              # double 9.5000549999999997
	.quad	0x400d231b584b1ab1              # double 3.6421420000000002
	.quad	0x40119dd26b723ee2              # double 4.4041230000000002
	.quad	0x4017eae9ab29e4d6              # double 5.9794070000000001
	.quad	0x4012744284dfce31              # double 4.6135349999999997
	.quad	0x4008ee71cda2b5a2              # double 3.116428
	.quad	0x400aaae31d712a0f              # double 3.3334410000000001
	.quad	0x40158f71a7e30878              # double 5.3900819999999996
	.quad	0x40202be100607810              # double 8.0857010000000002
	.quad	0x3fb5f8c21e1d2179              # double 0.085827000000000001
	.quad	0x402136ae18ac9f30              # double 8.6067970000000003
	.quad	0x40228ad0e5604189              # double 9.2711249999999996
	.quad	0x4014a16e37154003              # double 5.1576469999999999
	.quad	0x40173e9142b302f7              # double 5.8111009999999998
	.quad	0x3ffb439abf338716              # double 1.704005
	.quad	0x401976c2699c7bcc              # double 6.3659759999999999
	.quad	0x3fe0b8cda6e75ff6              # double 0.522559
	.quad	0x4009182cb20fb225              # double 3.1368040000000001
	.quad	0x3ffbd564b662fdfc              # double 1.739598
	.quad	0x401d2e9c886162f1              # double 7.2955189999999996
	.quad	0x3ffe3620ee8d10f5              # double 1.888215
	.quad	0x400fccbc05d52c17              # double 3.9749680000000001
	.quad	0x401f0d4fdf3b645a              # double 7.7629999999999999
	.quad	0x4017aae0c1765775              # double 5.9168729999999998
	.quad	0x402180c0485a0be5              # double 8.7514669999999999
	.quad	0x4008a67c6b8b6955              # double 3.0812919999999999
	.quad	0x4022b29e0a41a262              # double 9.3488620000000004
	.quad	0x4022b21e81cb46bb              # double 9.3478890000000003
	.quad	0x3ff97ea3df6db941              # double 1.593418
	.quad	0x401835cb790fb656              # double 6.0525339999999996
	.quad	0x40072e46cfc829d0              # double 2.8975960000000001
	.quad	0x401cccb1cc964628              # double 7.199897
	.quad	0x3ffa9bcba3012168              # double 1.663036
	.quad	0x3fd6d3cbc48f10aa              # double 0.35667700000000002
	.quad	0x401521bef49cf56f              # double 5.2829550000000003
	.quad	0x400b45a2d72ffd1e              # double 3.4090020000000001
	.quad	0x401bbde7ea5f84cb              # double 6.9354550000000001
	.quad	0x4012ce7253da72a8              # double 4.7016080000000002
	.quad	0x3fdf36da87a072d2              # double 0.48772300000000002
	.quad	0x40110afee6fb4c3c              # double 4.2607379999999999
	.quad	0x3fec5271bcdbbe01              # double 0.88506399999999996
	.quad	0x4022c4ea4a8c154d              # double 9.3846000000000007
	.quad	0x400727a63736cdf2              # double 2.8943599999999998
	.quad	0x401b28a697aeddce              # double 6.7896979999999996
	.quad	0x401592096787ce96              # double 5.392614
	.quad	0x3ff289784ec636b1              # double 1.1585620000000001
	.quad	0x3fd6727136a400fc              # double 0.35073500000000002
	.quad	0x400cc2d7b634dad3              # double 3.5951379999999999
	.quad	0x401752f01754b05b              # double 5.8309939999999996
	.quad	0x401c4ddaceee0f3d              # double 7.0760300000000003
	.quad	0x40205520f2becedd              # double 8.1662669999999995
	.quad	0x3fd4d851654d61b3              # double 0.32570300000000002
	.quad	0x4007a2fe82517e78              # double 2.9545870000000001
	.quad	0x4021b4ef88b97785              # double 8.8533899999999992
	.quad	0x40238e12e83a109d              # double 9.7774879999999999
	.quad	0x4023fb111f0c34c2              # double 9.9903650000000006
	.quad	0x3fe477b5aea3161a              # double 0.63961299999999999
	.quad	0x4020d88aac96cc60              # double 8.4229330000000004
	.quad	0x401d85f56a7ac81d              # double 7.3808189999999998
	.quad	0x4021df1c10d7be98              # double 8.9357609999999994
	.quad	0x400ecb87bdcf0308              # double 3.84938
	.quad	0x4021578183f91e64              # double 8.6709099999999992
	.quad	0x40225809d495182b              # double 9.1719500000000007
	.quad	0x3ffcfc8c0ce91c8f              # double 1.8116570000000001
	.quad	0x3fe1ec2ce4649907              # double 0.56008000000000002
	.quad	0x3fdbc82e019b0ab3              # double 0.43409300000000001
	.quad	0x3ff23ba3443d46b2              # double 1.1395599999999999
	.quad	0x3ffabe718a86d71f              # double 1.671495
	.quad	0x4005e14163779e9d              # double 2.734988
	.quad	0x401cd0c3d25247cb              # double 7.2038719999999996
	.quad	0x3fe4260b2c83ec89              # double 0.62964399999999998
	.quad	0x400b68cc575c0768              # double 3.4261710000000001
	.quad	0x40229852d666a982              # double 9.2975069999999995
	.quad	0x40221a033e78e193              # double 9.0508059999999997
	.quad	0x3fd48be2f7b17ce5              # double 0.32103799999999999
	.quad	0x4008cad256798959              # double 3.0990340000000001
	.quad	0x4020f802e2328f9f              # double 8.4843969999999995
	.quad	0x401febd87b56b873              # double 7.9803179999999995
	.quad	0x3ffc082be8bc169c              # double 1.751995
	.quad	0x4002f903211cb03a              # double 2.371588
	.quad	0x401bedfe75bc44bf              # double 6.9824159999999997
	.quad	0x4018b2a497fa5d29              # double 6.1744560000000002
	.quad	0x4022ca4df47f993d              # double 9.3951259999999994
	.quad	0x4022d525247cb70b              # double 9.4162990000000004
	.quad	0x3fdc72ef0ae53650              # double 0.44451499999999999
	.quad	0x3fe1c3f1c75818c6              # double 0.55516900000000002
	.quad	0x3ff622fcefaa4767              # double 1.383542
	.quad	0x3fd9c182ecaeea64              # double 0.40243600000000002
	.quad	0x4021ef1865519371              # double 8.9669830000000008
	.quad	0x4018df3c2dadb835              # double 6.2180030000000004
	.quad	0x40073ea1c68ec52a              # double 2.9055819999999999
	.quad	0x40223defc7a39820              # double 9.1209699999999998
	.quad	0x4016b7cb2d905c03              # double 5.6794859999999998
	.quad	0x4023ad5582129457              # double 9.8385429999999995
	.quad	0x4008ef01fb82c2bd              # double 3.1167029999999998
	.quad	0x3ff7d3cff64cf8d7              # double 1.489212
	.quad	0x40213523f67f4dbe              # double 8.60379
	.quad	0x40201d41d8e86402              # double 8.0571429999999999
	.quad	0x3ffa3e7f2c3009b3              # double 1.640258
	.quad	0x4012f9830e3cd9a5              # double 4.7436639999999999
	.quad	0x40210fad8e432442              # double 8.530621
	.quad	0x3ff80ba1f4b1ee24              # double 1.50284
	.quad	0x40221f3cd573647c              # double 9.0610110000000005
	.quad	0x400cd6a7264a16a5              # double 3.6048110000000002
	.quad	0x400b8fbb0e5e6794              # double 3.4451809999999998
	.quad	0x401506466b1e5c0c              # double 5.2561280000000004
	.quad	0x401ceda16616b54e              # double 7.2320609999999999
	.quad	0x400624484944ed70              # double 2.7677160000000001
	.quad	0x40174756c93a7115              # double 5.8196669999999999
	.quad	0x4012776d5497310a              # double 4.6166280000000004
	.quad	0x3fde56ffc115df65              # double 0.47405999999999998
	.quad	0x4018202a3486f04a              # double 6.0314110000000003
	.quad	0x3ffa8f7121ab4b73              # double 1.6600200000000001
	.quad	0x4023e21272c94b38              # double 9.9415469999999999
	.quad	0x400bb144cbe1eb42              # double 3.461557
	.quad	0x3fed30caa326e115              # double 0.91220599999999996
	.quad	0x40228a8997c3d684              # double 9.2705809999999999
	.quad	0x40108013a92a3055              # double 4.1250749999999998
	.quad	0x4020d29de8b3b320              # double 8.4113609999999994
	.quad	0x401ad9ee02a77a2d              # double 6.7128220000000001
	.quad	0x4012cec204f2ae08              # double 4.7019120000000001
	.quad	0x4014699f1ae2da55              # double 5.1031459999999997
	.quad	0x401d839192641b33              # double 7.3784850000000004
	.quad	0x400d1abd1aa821f3              # double 3.6380560000000002
	.quad	0x400ac1986b9c304d              # double 3.3445290000000001
	.quad	0x4022194b7b28954a              # double 9.0494039999999991
	.quad	0x401a74046412cf10              # double 6.6132980000000003
	.quad	0x401552e83a109d06              # double 5.3309639999999998
	.quad	0x400496ca46e08f21              # double 2.5736279999999998
	.quad	0x4004ee0d23d4f15e              # double 2.6162359999999998
	.quad	0x3fe67faa044ae85c              # double 0.70308400000000004
	.quad	0x400f1e9f2778140e              # double 3.8899520000000001
	.quad	0x400964b6e935b91f              # double 3.1741769999999998
	.quad	0x40186a70d1fa3337              # double 6.1039459999999996
	.quad	0x402085eb7457c0b1              # double 8.2615619999999996
	.quad	0x401d224031487768              # double 7.2834479999999999
	.quad	0x40209652deca2553              # double 8.2936010000000007
	.quad	0x3ffc93ea2d2fe3f3              # double 1.7861119999999999
	.quad	0x3fd9e047d3d4280b              # double 0.40431400000000001
	.quad	0x40239c51b93037d6              # double 9.8053109999999997
	.quad	0x401f8f4ba51a005c              # double 7.8899369999999998
	.quad	0x40125d5c31593e60              # double 4.5911720000000003
	.quad	0x400c4657b84db9c7              # double 3.5343469999999999
	.quad	0x3ff11054ac29bf16              # double 1.066487
	.quad	0x4023102f944241c4              # double 9.5316130000000001
	.quad	0x4015301711947cfa              # double 5.2969629999999999
	.quad	0x40220472c0e7bc3c              # double 9.0086879999999993
	.quad	0x3ff145f06f694467              # double 1.079575
	.quad	0x401f6c3a42f1ed18              # double 7.8556910000000002
	.quad	0x4009542c3c9eecc0              # double 3.1661000000000001
	.quad	0x40085037d63022dd              # double 3.0391689999999998
	.quad	0x4009727f5e84f095              # double 3.1809069999999999
	.quad	0x40239305d95dd4c7              # double 9.7871539999999992
	.quad	0x402146638433d6c7              # double 8.6374779999999998
	.quad	0x4011b47f13059642              # double 4.426266
	.quad	0x401669c3ce2089e3              # double 5.6032859999999998
	.quad	0x40194a737110e454              # double 6.3227060000000002
	.quad	0x3fe01ab6d00b45ae              # double 0.50326099999999996
	.quad	0x401d31650a45d420              # double 7.2982370000000003
	.quad	0x4003e507a6bd6e8b              # double 2.486831
	.quad	0x40118cb0c026cc1d              # double 4.3873930000000003
	.quad	0x4008cdc5d6388659              # double 3.1004749999999999
	.quad	0x401ed05e1c15097d              # double 7.7034840000000004
	.quad	0x400871cf355cd91f              # double 3.055571
	.quad	0x40016a9f7b5aea31              # double 2.1770619999999998
	.quad	0x401549246bf01323              # double 5.321428
	.quad	0x3fddff583a53b8e5              # double 0.46871000000000002
	.quad	0x3ffee856605ee569              # double 1.9317230000000001
	.quad	0x400975ddd2ae8e1d              # double 3.1825519999999998
	.quad	0x402233ccd0fe8ab5              # double 9.101172
	.quad	0x4009eac8e68e3ef3              # double 3.2396410000000002
	.quad	0x40098c7192ea52f0              # double 3.1935760000000002
	.quad	0x4016dc5154866a12              # double 5.7151540000000001
	.quad	0x4016e420b3d4ae43              # double 5.7227810000000003
	.quad	0x400c1f90d9d7774b              # double 3.5154130000000001
	.quad	0x402107bca1059ea5              # double 8.5151109999999992
	.quad	0x400eb6b5d462c344              # double 3.8392140000000001
	.quad	0x401c005e5f30e7ff              # double 7.0003599999999997
	.quad	0x401eb57470eb24a7              # double 7.6772020000000003
	.quad	0x3ff1a8848387df5d              # double 1.103642
	.quad	0x402295fb9389b520              # double 9.2929349999999999
	.quad	0x3fd90d0678c0053e              # double 0.39141999999999999
	.quad	0x3fc00b34e7685986              # double 0.12534200000000001
	.quad	0x3ff5fdd441355476              # double 1.3744700000000001
	.quad	0x402003c254a3c643              # double 8.0073419999999995
	.quad	0x4015fbd9cae21102              # double 5.4959480000000003
	.quad	0x40091c4da9003eea              # double 3.1388199999999999
	.quad	0x401b23dd11be6e65              # double 6.7850229999999998
	.quad	0x4016712f4cf4a559              # double 5.6105320000000001
	.quad	0x401dca46173b85e8              # double 7.4475329999999999
	.quad	0x40192210be9424e6              # double 6.2832670000000004
	.quad	0x400cc19008205ff2              # double 3.5945130000000001
	.quad	0x40164cb2d905c033              # double 5.5749009999999997
	.quad	0x4008c69728a61177              # double 3.0969679999999999
	.quad	0x40147e2d6238da3c              # double 5.1232199999999999
	.quad	0x401e88754f3775b8              # double 7.6332599999999999
	.quad	0x401dfb313be22e5e              # double 7.4953050000000001
	.quad	0x40191cb89d6adf72              # double 6.2780480000000001
	.quad	0x4021468837718655              # double 8.6377579999999998
	.quad	0x40036fa58f7121ab              # double 2.4295149999999999
	.quad	0x400bfef177a7008a              # double 3.4994839999999998
	.quad	0x4012e488c60cbf2b              # double 4.7231779999999999
	.quad	0x3fdd5c0fcb4f1e4b              # double 0.45874399999999999
	.quad	0x401e0f3bea91d9b2              # double 7.5148770000000003
	.quad	0x401ff9f05ea24cc7              # double 7.9940810000000004
	.quad	0x401d52120e1f7d74              # double 7.3301470000000002
	.quad	0x40128c4f3ba775fb              # double 4.6370209999999998
	.quad	0x401cd4a72ead9275              # double 7.2076690000000001
	.quad	0x402235a16616b54e              # double 9.1047469999999997
	.quad	0x400c63d03968d75a              # double 3.548737
	.quad	0x4014d3b3e9a6f827              # double 5.2067410000000001
	.quad	0x401f4225742dcf46              # double 7.8145959999999999
	.quad	0x400628de2ac32229              # double 2.7699549999999999
	.quad	0x4016634bd76ee73e              # double 5.5969689999999996
	.quad	0x400b099b6f5caf2d              # double 3.3796909999999998
	.quad	0x401c7ae31d712a0f              # double 7.1200070000000002
	.quad	0x3fe2c9c2c1b10fd8              # double 0.58712900000000001
	.quad	0x400998c8eef1bac3              # double 3.1996020000000001
	.quad	0x3fdeb3bfb58d1527              # double 0.47972100000000001
	.quad	0x4019777dd872f33d              # double 6.3666910000000003
	.quad	0x40005c1615ebfa8f              # double 2.0449639999999998
	.quad	0x401b71dde37585be              # double 6.8611979999999999
	.quad	0x4023ab020c49ba5e              # double 9.8339999999999996
	.quad	0x3f953586ca89fc6e              # double 0.020712000000000001
	.quad	0x40228215db3397dd              # double 9.254073
	.quad	0x401441bfbdf090f7              # double 5.0642079999999998
	.quad	0x402392c061847f56              # double 9.7866239999999998
	.quad	0x4016eb80ecfa69be              # double 5.729984
	.quad	0x3fe7b267c6b8b695              # double 0.74052799999999996
	.quad	0x3ff169d51b4fe79f              # double 1.088338
	.quad	0x401ff78a2a90cd42              # double 7.9917379999999998
	.quad	0x4020bcc9ea9a3d2e              # double 8.3687280000000008
	.quad	0x4009bf14983d7907              # double 3.2183009999999999
	.quad	0x401541fb82c2bd7f              # double 5.3144359999999997
	.quad	0x3ffbf21a2e7f6f4c              # double 1.746607
	.quad	0x3ff1116228134480              # double 1.0667439999999999
	.quad	0x400252849cb252ce              # double 2.290292
	.quad	0x4002558f2e05ccc9              # double 2.2917770000000002
	.quad	0x4011f3c7d5ed06ff              # double 4.488067
	.quad	0x3fc0849cb252ce03              # double 0.129047
	.quad	0x402258e64b231401              # double 9.1736319999999996
	.quad	0x4013766fd651b0cd              # double 4.8656610000000002
	.quad	0x3fe4dd334c5da6a4              # double 0.65200199999999997
	.quad	0x40200f0e4da09cc3              # double 8.0294059999999998
	.quad	0x401a21af7d30ad47              # double 6.532896
	.quad	0x40187932d6ece13f              # double 6.1183579999999997
	.quad	0x401b60ff540895d1              # double 6.8447240000000003
	.quad	0x402030ed80a17b0f              # double 8.0955619999999993
	.quad	0x4023f87ce95faa8b              # double 9.9853280000000008
	.quad	0x3fc8b4289118c198              # double 0.192998
	.quad	0x4022ebde1e2de871              # double 9.4606790000000007
	.quad	0x3ffd19ba1b1960fa              # double 1.818781
	.quad	0x401597985271bcdc              # double 5.3980420000000002
	.quad	0x4020b436544fe36d              # double 8.3519769999999998
	.quad	0x4003821d96e9bbf1              # double 2.4385330000000001
	.quad	0x401fe209aaa3ad19              # double 7.9707400000000001
	.quad	0x401ce0f4d7add15f              # double 7.219684
	.quad	0x400a019da9c99286              # double 3.2507890000000002
	.quad	0x400fd38c5436b8fa              # double 3.9782950000000001
	.quad	0x4022a7a4e7ab7564              # double 9.3274299999999996
	.quad	0x40074d666a98244f              # double 2.9127930000000002
	.quad	0x3fe09c842fa50939              # double 0.51910599999999996
	.quad	0x3fc8f9335d249e45              # double 0.195105
	.quad	0x400176a6a012599f              # double 2.1829350000000001
	.quad	0x400c698fe69270b0              # double 3.5515439999999998
	.quad	0x3fd283e8576cce5f              # double 0.28930099999999997
	.quad	0x40110ca5bd944aa5              # double 4.2623509999999998
	.quad	0x4020df97460242d0              # double 8.4367009999999993
	.quad	0x4001416df3f96180              # double 2.1569479999999999
	.quad	0x4021d371da37ef5b              # double 8.9129780000000007
	.quad	0x3fe2b3636f3b213e              # double 0.58439799999999997
	.quad	0x3ff6211ec918e326              # double 1.383086
	.quad	0x4002ec929aa1d756              # double 2.3655140000000001
	.quad	0x400a704790b84988              # double 3.304824
	.quad	0x3ff7840d0aaa7ded              # double 1.4697389999999999
	.quad	0x401302036006d0d5              # double 4.7519660000000004
	.quad	0x3ff5c82f0e0a84be              # double 1.3613729999999999
	.quad	0x4009f2c625e99e95              # double 3.2435420000000001
	.quad	0x4004ca960b6f9fcb              # double 2.598919
	.quad	0x400917f8ca8198f2              # double 3.1367050000000001
	.quad	0x401ce4f15e7c8d19              # double 7.2235769999999997
	.quad	0x400a1f3e89a88ace              # double 3.2652559999999999
	.quad	0x401733ac4f7ec354              # double 5.8004619999999996
	.quad	0x402375a48b652370              # double 9.7297709999999995
	.quad	0x40082182ecaeea64              # double 3.0163630000000001
	.quad	0x4018ad823422467c              # double 6.1694420000000001
	.quad	0x401f86de76427c7c              # double 7.8817079999999997
	.quad	0x40003f5515054ac3              # double 2.0309240000000002
	.quad	0x40172cb1cc964628              # double 5.793647
	.quad	0x4020c5bc87db2b34              # double 8.3862039999999993
	.quad	0x40145f049a9973da              # double 5.0927910000000001
	.quad	0x401a57903211cb04              # double 6.5855110000000003
	.quad	0x4004f2756861e929              # double 2.6183879999999999
	.quad	0x3ff513879c4113c7              # double 1.3172680000000001
	.quad	0x4001c3925bb7b6bb              # double 2.220494
	.quad	0x401ed9eb2074ea8e              # double 7.7128110000000003
	.quad	0x4022259253543aeb              # double 9.0733820000000005
	.quad	0x400be1e0c5a8155d              # double 3.4852919999999998
	.quad	0x401f83d9a95421c0              # double 7.8787599999999998
	.quad	0x40122b6bb1290258              # double 4.5424030000000002
	.quad	0x3fd1b8066c2acb86              # double 0.27685700000000002
	.quad	0x4020e14013ec460f              # double 8.4399420000000003
	.quad	0x4013f81450efdc9c              # double 4.9922649999999997
	.quad	0x401f0a30db6a1e82              # double 7.7599520000000002
	.quad	0x4020df4e0114d2f6              # double 8.4361420000000003
	.quad	0x3ff37328b6d86ec1              # double 1.2156149999999999
	.quad	0x3ff9497b7414a4d3              # double 1.5804400000000001
	.quad	0x4015d6516db0dd83              # double 5.459295
	.quad	0x400a5001d5c31594              # double 3.289066
	.quad	0x3fea7609dcf893fb              # double 0.82690900000000001
	.quad	0x4012831d712a0ec7              # double 4.6280419999999998
	.quad	0x402057f04577d955              # double 8.1717549999999992
	.quad	0x400a3fcb923a29c7              # double 3.2811499999999998
	.quad	0x400425d18090b418              # double 2.5184660000000001
	.quad	0x3fcd6f0068db8bac              # double 0.22994999999999999
	.quad	0x401bb4185058dde8              # double 6.9258740000000003
	.quad	0x4021df5536933a04              # double 8.9361969999999999
	.quad	0x3ff57b5d031055b9              # double 1.3426180000000001
	.quad	0x400ccb89d6adf71f              # double 3.5993840000000001
	.quad	0x40210fd7c2ca148c              # double 8.5309430000000006
	.quad	0x3ff0702a3486f04a              # double 1.0273840000000001
	.quad	0x401d1f89c5e6ff7e              # double 7.280799
	.quad	0x4000be3eaf6837f8              # double 2.0928930000000001
	.quad	0x402019335d249e45              # double 8.04922
	.quad	0x3ff7531fcd24e161              # double 1.457794
	.quad	0x3fea485a0be51090              # double 0.82133199999999995
	.quad	0x40117c332f01754b              # double 4.371289
	.quad	0x3ff53d912556d19e              # double 1.327531
	.quad	0x401c8eeed8904f6e              # double 7.139583
	.quad	0x4017929e4d5d80e5              # double 5.8931820000000004
	.quad	0x40150232096787cf              # double 5.2521440000000004
	.quad	0x3fdef1bef49cf56f              # double 0.48350500000000002
	.quad	0x3fd240bbb1f255f3              # double 0.28520099999999998
	.quad	0x40151744f5d35654              # double 5.2727240000000002
	.quad	0x3ffd5d323fee2c99              # double 1.835253
	.quad	0x3ffd2f39085f4a12              # double 1.8240289999999999
	.quad	0x4004afc04c8bc9cd              # double 2.5858159999999999
	.quad	0x402284284dfce315              # double 9.2581199999999999
	.quad	0x400e98f25a250f84              # double 3.824681
	.quad	0x401f6f5ad96a6a01              # double 7.8587449999999998
	.quad	0x4019a51ce28ed5f1              # double 6.4112429999999998
	.quad	0x401af8438088509c              # double 6.742445
	.quad	0x40112aa582dbe7f3              # double 4.2916470000000002
	.quad	0x40200b8887229e90              # double 8.0225259999999992
	.quad	0x40204df8b1572581              # double 8.1522880000000004
	.quad	0x401415931ca7d673              # double 5.0210689999999998
	.quad	0x3ff34d477bbf93ff              # double 1.206367
	.quad	0x4014d7f6f4be835e              # double 5.2109030000000001
	.quad	0x400977d955714b9d              # double 3.1835200000000001
	.quad	0x3fe94d7060bb2bbb              # double 0.79070300000000004
	.quad	0x4020bc6822ff0889              # double 8.3679819999999996
	.quad	0x4022aae33eff1950              # double 9.3337649999999996
	.quad	0x400388ab4fa48302              # double 2.4417330000000002
	.quad	0x4022e6cb5350092d              # double 9.4507700000000003
	.quad	0x4000b6366d7a56de              # double 2.0889709999999999
	.quad	0x401aa1ae2da554b9              # double 6.6578910000000002
	.quad	0x40234f8dd616f86a              # double 9.6553789999999999
	.quad	0x401fb80d801b4352              # double 7.9297389999999996
	.quad	0x401cb96a26e54717              # double 7.1810689999999999
	.quad	0x401618d045fe1112              # double 5.5242319999999996
	.quad	0x3ffd4d1a65061416              # double 1.831324
	.quad	0x401f92af9a8cdea0              # double 7.8932479999999998
	.quad	0x40005ee78183f91e              # double 2.0463399999999998
	.quad	0x401988da3c21187e              # double 6.3836449999999996
	.quad	0x401e4d4fdf3b645a              # double 7.5754999999999999
	.quad	0x401cfb1209edbf8c              # double 7.2451860000000003
	.quad	0x401f78b19a415f46              # double 7.8678650000000001
	.quad	0x40053713ad5bee3d              # double 2.6518929999999998
	.quad	0x401d1d8f0c77dd87              # double 7.2788659999999998
	.quad	0x401ea371da37ef5b              # double 7.6596140000000003
	.quad	0x40224fc99ae924f2              # double 9.1558349999999997
	.quad	0x401e78398a654930              # double 7.617407
	.quad	0x401f6a209aaa3ad2              # double 7.8536400000000004
	.quad	0x4017dea8da7f3cf7              # double 5.967441
	.quad	0x3fc6b1c432ca57a8              # double 0.17730000000000001
	.quad	0x402219f01b866e44              # double 9.0506600000000005
	.quad	0x40237afd5454152b              # double 9.7402139999999999
	.quad	0x401be9b66f9335d2              # double 6.9782349999999997
	.quad	0x4003419220ff5409              # double 2.4070170000000002
	.quad	0x40196fc2224edf61              # double 6.3591389999999999
	.quad	0x4013809e55c0fcb5              # double 4.875604
	.quad	0x4017f9bd4067cf1c              # double 5.9938859999999998
	.quad	0x3ffb18793dd97f63              # double 1.6934750000000001
	.quad	0x40117e3150dae3e7              # double 4.3732350000000002
	.quad	0x4008ce89eba6aca8              # double 3.1008490000000002
	.quad	0x3fd7795b35b0bbf5              # double 0.366782
	.quad	0x3ff6554434e3369c              # double 1.3958170000000001
	.quad	0x401eaba51a005c46              # double 7.6676219999999997
	.quad	0x40154459d99029ae              # double 5.3167489999999997
	.quad	0x40014eee957470eb              # double 2.1635409999999999
	.quad	0x401e8da661283904              # double 7.6383299999999998
	.quad	0x401d8a6f3f52fc26              # double 7.3851899999999997
	.quad	0x4015a46cfc829cfe              # double 5.4105720000000002
	.quad	0x4015a1dda059a73b              # double 5.4080719999999998
	.quad	0x3fd8049ecb31c21a              # double 0.375282
	.quad	0x4014381cb46bacf7              # double 5.0547969999999998
	.quad	0x4005c7903211cb04              # double 2.7224430000000002
	.quad	0x40139e0a84be4042              # double 4.9043369999999999
	.quad	0x401a089a02752546              # double 6.5084
	.quad	0x3fcaae5bc87db2b3              # double 0.20844599999999999
	.quad	0x4019ee4c51116a8c              # double 6.4827130000000004
	.quad	0x402120de4c51116b              # double 8.5641960000000008
	.quad	0x4005fb7a5f41aef7              # double 2.747792
	.quad	0x4019af202107b784              # double 6.4210209999999996
	.quad	0x4023c80dc33721d5              # double 9.8907299999999995
	.quad	0x4014bd03968d759f              # double 5.1845840000000001
	.quad	0x4023e7cbd556084a              # double 9.9527269999999994
	.quad	0x400a3986b9c304cd              # double 3.278089
	.quad	0x4023af262888b546              # double 9.8420880000000004
	.quad	0x3fd7f44d44567126              # double 0.37428600000000001
	.quad	0x4023f2b4528283d3              # double 9.9740319999999993
	.quad	0x4011356b441bb8c3              # double 4.3021669999999999
	.quad	0x4015cd894812be49              # double 5.4507190000000003
	.quad	0x3ff2c387df5cf249              # double 1.1727369999999999
	.quad	0x4014dc3f3e0370ce              # double 5.2150850000000002
	.quad	0x3ff65f266ba493c9              # double 1.3982300000000001
	.quad	0x4022b6f71a7e3088              # double 9.3573540000000008
	.quad	0x401b4785f8d2e515              # double 6.8198470000000002
	.quad	0x400a321ee675147f              # double 3.274473
	.quad	0x400694c5da6a4441              # double 2.8226429999999998
	.quad	0x3fb4430b178b3700              # double 0.079147999999999996
	.quad	0x401cf9003eea209b              # double 7.2431650000000003
	.quad	0x4023e812dfd694cd              # double 9.9532690000000005
	.quad	0x4021588398a65493              # double 8.672879
	.quad	0x4010d01eabbcb1cd              # double 4.2032420000000004
	.quad	0x3ff15a975afaf859              # double 1.0846169999999999
	.quad	0x400c18d6909aed57              # double 3.5121280000000001
	.quad	0x400c07c200c0f020              # double 3.5037880000000001
	.quad	0x401b1f2d7f950b95              # double 6.7804469999999997
	.quad	0x4012289ca18bd662              # double 4.5396599999999996
	.quad	0x3ffbb3f52fc2656b              # double 1.7314350000000001
	.quad	0x3ffeba68b19a415f              # double 1.9205099999999999
	.quad	0x3ff2f760bf5d7881              # double 1.185395
	.quad	0x400815810624dd2f              # double 3.0105
	.quad	0x40209f1886df82b2              # double 8.3107340000000001
	.quad	0x3ff1d02ff8ec0f88              # double 1.113327
	.quad	0x3fd9430b178b3700              # double 0.39471699999999998
	.quad	0x3fde0bd44998d046              # double 0.469472
	.quad	0x40114c942d490e67              # double 4.3247840000000002
	.quad	0x40139b9a9da597d5              # double 4.9019570000000003
	.quad	0x401116748e475600              # double 4.2719290000000001
	.quad	0x4023dee675147f13              # double 9.9353519999999999
	.quad	0x401bc5caafbc1ace              # double 6.9431560000000001
	.quad	0x401727f9d6f112fd              # double 5.7890389999999998
	.quad	0x3ffc9f91600f3450              # double 1.7889569999999999
	.quad	0x401680aa64c2f838              # double 5.6256500000000003
	.quad	0x400810563ed0f627              # double 3.0079769999999999
	.quad	0x400c8a6a012599ed              # double 3.5675849999999998
	.quad	0x40209afcefaa4767              # double 8.3027110000000004
	.quad	0x3ff93d48cb4aec8d              # double 1.5774619999999999
	.quad	0x3ff01b2d4d4024b3              # double 1.0066349999999999
	.quad	0x40054175d13d74d6              # double 2.6569630000000002
	.quad	0x400af51266341180              # double 3.3696640000000002
	.quad	0x40203ff43419e300              # double 8.1249099999999999
	.quad	0x401a5c5ac471b478              # double 6.5901899999999998
	.quad	0x400449d1f601797d              # double 2.5360450000000001
	.quad	0x402150ad03d9a954              # double 8.6575699999999997
	.quad	0x3ff7964e8b7e4de4              # double 1.4741960000000001
	.quad	0x3ffb59cbee807bbb              # double 1.7094229999999999
	.quad	0x4009704d551d68c7              # double 3.1798350000000002
	.quad	0x4020440d0aaa7ded              # double 8.1329119999999993
	.quad	0x401be8d045fe1112              # double 6.9773569999999996
	.quad	0x4023d903211cb03a              # double 9.9238520000000001
	.quad	0x40129e64b2314014              # double 4.6546810000000001
	.quad	0x401b930df9bdc6a0              # double 6.8936080000000004
	.quad	0x4018d015c209246c              # double 6.2032080000000001
	.quad	0x401cbe3715400325              # double 7.1857569999999997
	.quad	0x3ffd5b328b6d86ec              # double 1.834765
	.quad	0x4016188f42fe8251              # double 5.5239839999999996
	.quad	0x4015d36f3b213e3e              # double 5.4564789999999999
	.quad	0x40001fc43b2dd378              # double 2.0155110000000001
	.quad	0x401917f88765ba6f              # double 6.273409
	.quad	0x402063bb1f255f35              # double 8.1947869999999998
	.quad	0x400da603d577963a              # double 3.7060620000000002
	.quad	0x40118a2df9378ee3              # double 4.3849410000000004
	.quad	0x400fbfa871a3b14b              # double 3.9685830000000002
	.quad	0x3feeaf6a50d6b229              # double 0.95891300000000001
	.quad	0x4020fd94af4f0d84              # double 8.4952749999999994
	.quad	0x3fff6e9680e06530              # double 1.964499
	.quad	0x40079ed4a1ad6452              # double 2.9525540000000001
	.quad	0x400c131a08bfc222              # double 3.5093269999999999
	.quad	0x3fe57811f4f50a03              # double 0.67090700000000003
	.quad	0x3fd51b3f20a73f75              # double 0.32978800000000003
	.quad	0x3ff5c3d46b26bf87              # double 1.3603099999999999
	.quad	0x4021c33c60029f17              # double 8.8813200000000005
	.quad	0x401b10ae9680e065              # double 6.7662909999999998
	.quad	0x40117671ef30a4e3              # double 4.3656689999999996
	.quad	0x40217808205ff1d8              # double 8.7344369999999998
	.quad	0x4020b55bee3d5fdd              # double 8.3542170000000002
	.quad	0x402296518f3eccc4              # double 9.2935909999999992
	.quad	0x400e71e215336dec              # double 3.8056070000000002
	.quad	0x40149f29d40ee06e              # double 5.1554330000000004
	.quad	0x3ff2d2ec6bce8534              # double 1.1764950000000001
	.quad	0x401387863beec398              # double 4.8823480000000004
	.quad	0x3fec734f82f51266              # double 0.88907599999999998
	.quad	0x3fd4f66a55087011              # double 0.32754
	.quad	0x402330d7e02645e5              # double 9.5953970000000001
	.quad	0x3feed30ad46f587d              # double 0.96326199999999995
	.quad	0x400b06149c6f36f0              # double 3.3779690000000002
	.quad	0x4015da0d77b7c782              # double 5.462942
	.quad	0x3fe1e44b6e935b92              # double 0.559118
	.quad	0x401294b662fdfc1a              # double 4.6452270000000002
	.quad	0x4013739b024f6599              # double 4.8628960000000001
	.quad	0x4021c89b52007dd4              # double 8.8918099999999995
	.quad	0x400e85b8561d4307              # double 3.815293
	.quad	0x401c613d74d594f2              # double 7.0949609999999996
	.quad	0x3fe33955f78359bc              # double 0.60074899999999998
	.quad	0x40200c957cd466f5              # double 8.024578
	.quad	0x4016d0a3d70a3d71              # double 5.7037500000000003
	.quad	0x4010cb25f633ce64              # double 4.1983870000000003
	.quad	0x4023cd551d68c693              # double 9.90104
	.quad	0x4017864f11b60ae9              # double 5.8811609999999996
	.quad	0x3ff00389f83be660              # double 1.000864
	.quad	0x40072b1e5c0b9991              # double 2.8960539999999999
	.quad	0x3fd023e5b8561d43              # double 0.252191
	.quad	0x400e5166e008e9b4              # double 3.7897470000000002
	.quad	0x401c1d04e618ce2d              # double 7.0283389999999999
	.quad	0x401d690257c914b1              # double 7.3525479999999996
	.quad	0x400fd0e7ff583a54              # double 3.9770050000000001
	.quad	0x40190ac929aa1d75              # double 6.2605329999999997
	.quad	0x402220b1bbcf4e87              # double 9.0638559999999995
	.quad	0x401cab8e4b87bdcf              # double 7.167535
	.quad	0x40157086bdf4c2b5              # double 5.3598889999999999
	.quad	0x4005e3ab862b27cc              # double 2.736167
	.quad	0x40044b5dcc63f141              # double 2.5367999999999999
	.quad	0x4019cde5d18090b4              # double 6.4510719999999999
	.quad	0x3fd9f2f123c42a67              # double 0.40545300000000001
	.quad	0x401ddec2ce464990              # double 7.4675399999999996
	.quad	0x4022c6f6512a94ff              # double 9.3885979999999999
	.quad	0x401ca9a240314877              # double 7.1656579999999996
	.quad	0x3ffa683d35eb7458              # double 1.6504490000000001
	.quad	0x3febfb9389b52008              # double 0.87446000000000002
	.quad	0x40226596c82e019b              # double 9.1984159999999999
	.quad	0x3ff9c4e831ad2136              # double 1.610573
	.quad	0x402155f612407464              # double 8.6678929999999994
	.quad	0x3fedf27fe4bcad9b              # double 0.93585200000000002
	.quad	0x40162647778dd617              # double 5.537382
	.quad	0x400ca5b5b70691ea              # double 3.5809129999999998
	.quad	0x400587b02d59d55e              # double 2.6912539999999998
	.quad	0x4022f60b0af5fd48              # double 9.4805530000000004
	.quad	0x3ff3416052502eec              # double 1.2034609999999999
	.quad	0x401cca619da9c993              # double 7.1976380000000004
	.quad	0x4019491e215336df              # double 6.3214040000000002
	.quad	0x40081e52157689ca              # double 3.014805
	.quad	0x4021746bce8533b1              # double 8.7273849999999999
	.quad	0x3fcbeb6bf444e0db              # double 0.21812200000000001
	.quad	0x3fe5726f1dc50ce5              # double 0.67021900000000001
	.quad	0x401597f4128bf3bf              # double 5.3983920000000003
	.quad	0x4010af57f737da62              # double 4.1712340000000001
	.quad	0x3fd1ee17a02fb5d0              # double 0.28015699999999999
	.quad	0x401b63037d63022e              # double 6.8466930000000001
	.quad	0x40148bdcad14a0a1              # double 5.136584
	.quad	0x402317631b584b1b              # double 9.5456780000000005
	.quad	0x400c4e054690de09              # double 3.5380959999999999
	.quad	0x3ff8876c050bd87b              # double 1.5330619999999999
	.quad	0x4001f430f49491f3              # double 2.2442340000000001
	.quad	0x401c88d9f90539fc              # double 7.1336440000000003
	.quad	0x40235fa02fb5d031              # double 9.6867689999999999
	.quad	0x3ff750ba6266fd65              # double 1.457209
	.quad	0x3ff7569a0ad8a116              # double 1.4586429999999999
	.quad	0x40131f8db4890929              # double 4.7808140000000003
	.quad	0x401706d04e618ce3              # double 5.7566540000000002
	.quad	0x4006f7a786c22681              # double 2.8709250000000002
	.quad	0x3ffdea6c1a048e04              # double 1.8697319999999999
	.quad	0x401e23a3a8e71477              # double 7.5348040000000002
	.quad	0x4016fd0aaa7ded6c              # double 5.7471110000000003
	.quad	0x4020896a48733659              # double 8.2683890000000009
	.quad	0x4020905bc01a36e3              # double 8.2819500000000001
	.quad	0x402363d20f2becee              # double 9.6949620000000003
	.quad	0x4022393b5bf6a0dc              # double 9.1117810000000005
	.quad	0x3fd1c7e6b3fe9fae              # double 0.27782600000000002
	.quad	0x40229f080303c07f              # double 9.3106080000000002
	.quad	0x401fc58bc59b8024              # double 7.9429160000000003
	.quad	0x40073727136a4010              # double 2.9019300000000001
	.quad	0x400dd3faf42784a9              # double 3.7285059999999999
	.quad	0x401e51c2e33eff19              # double 7.5798449999999997
	.quad	0x401c1ba94bbe4474              # double 7.0270130000000002
	.quad	0x401ad0791c4b9021              # double 6.7035869999999997
	.quad	0x4016530d306a2b17              # double 5.581105
	.quad	0x401d4b4cc2507208              # double 7.3235349999999996
	.quad	0x401dd201cd5f99c4              # double 7.4550850000000004
	.quad	0x3ffa1c9d5a187a4a              # double 1.6319859999999999
	.quad	0x4021c954434e336a              # double 8.8932210000000005
	.quad	0x3ff56e3608d0891a              # double 1.339407
	.quad	0x40099c5cdd50a88f              # double 3.201349
	.quad	0x4012acac8e68e3ef              # double 4.6686269999999999
	.quad	0x400a2f6512a94ff0              # double 3.273142
	.quad	0x402030257c914b16              # double 8.0940359999999991
	.quad	0x4021a42d8c2a454e              # double 8.8206600000000002
	.quad	0x4004328e0c9d9d34              # double 2.5246849999999998
	.quad	0x40201d1782d38477              # double 8.0568200000000001
	.quad	0x3fe27bacb4289119              # double 0.57759700000000003
	.quad	0x3fb721b3aeee9574              # double 0.090357999999999994
	.quad	0x400e9b762d83c6c9              # double 3.8259089999999998
	.quad	0x3fe966e43aa79bbb              # double 0.79381000000000002
	.quad	0x3ffc3dc8b86b15f9              # double 1.7650840000000001
	.quad	0x4013722706d50657              # double 4.8614769999999998
	.quad	0x40180d6a161e4f76              # double 6.0130999999999997
	.quad	0x40225af7d30ad46f              # double 9.1776719999999994
	.quad	0x4020465625a682b6              # double 8.1373759999999997
	.quad	0x401f94acf312b1b3              # double 7.8951909999999996
	.quad	0x4021930d0edc3bd6              # double 8.7872090000000007
	.quad	0x4010366ba493c89f              # double 4.0531449999999998
	.quad	0x3fe212ab68cef673              # double 0.56477900000000003
	.quad	0x4012f9fdbd2fa0d7              # double 4.7441319999999996
	.quad	0x402065f5ad96a6a0              # double 8.1991399999999999
	.quad	0x3ff885a5fc7e6b40              # double 1.532629
	.quad	0x3fe95ccea28fe261              # double 0.79257900000000003
	.quad	0x401ac03ab862b27d              # double 6.6877240000000002
	.quad	0x400d4b5bb384fd2a              # double 3.6617959999999998
	.quad	0x40162b324851a869              # double 5.5421839999999998
	.quad	0x40064f1a9fbe76c9              # double 2.7886250000000001
	.quad	0x401599d4d834091c              # double 5.400226
	.quad	0x401577b9e060fe48              # double 5.3669200000000004
	.quad	0x3fd423bbc6eb0b7c              # double 0.31468099999999999
	.quad	0x40146bf6a0dbad3a              # double 5.1054329999999997
	.quad	0x4013d101b003686a              # double 4.9541079999999997
	.quad	0x4011028f9f44d445              # double 4.2525009999999996
	.quad	0x400f4cb5bb384fd3              # double 3.9124560000000002
	.quad	0x401359552e2fbe34              # double 4.8372390000000003
	.quad	0x3ff0896feb4a6656              # double 1.0335540000000001
	.quad	0x4011e035371971c1              # double 4.468953
	.quad	0x3fca11ba3ca7503c              # double 0.20366600000000001
	.quad	0x4001a135daad6020              # double 2.203716
	.quad	0x3fcee4b018611fd6              # double 0.24135400000000001
	.quad	0x3fe8d28f190d1740              # double 0.77570300000000003
	.quad	0x3ffd55f88fc9363f              # double 1.8334889999999999
	.quad	0x40236fd805e5f30e              # double 9.7184449999999991
	.quad	0x4014f52b4d8ba40e              # double 5.2394230000000004
	.quad	0x4009562c77574f72              # double 3.1670769999999999
	.quad	0x402145a72a7bd48d              # double 8.6360410000000005
	.quad	0x401960b45ae5ffa4              # double 6.3444380000000002
	.quad	0x4020a87b352a8438              # double 8.3290649999999999
	.quad	0x4022f972abef06b3              # double 9.4872029999999991
	.quad	0x3fc9fa76534373f3              # double 0.202956
	.quad	0x401c5807357e670e              # double 7.0859649999999998
	.quad	0x402252c9f2fdb8fe              # double 9.1616970000000002
	.quad	0x4021a27fe4bcad9b              # double 8.8173820000000003
	.quad	0x400bfe5b8561d430              # double 3.4991979999999998
	.quad	0x3ffeb44b2b777d0f              # double 1.919017
	.quad	0x40003d00f776c482              # double 2.0297869999999998
	.quad	0x40226864020817fc              # double 9.2038879999999991
	.quad	0x40106194c0160525              # double 4.095294
	.quad	0x401afd2bf5515055              # double 6.7472380000000003
	.quad	0x401fd1ecd4aa10e0              # double 7.9550049999999999
	.quad	0x4020e6736049ecb3              # double 8.4500989999999998
	.quad	0x4005231162281345              # double 2.6421230000000002
	.quad	0x401cc8b97785729b              # double 7.1960199999999999
	.quad	0x4015bf15a4acf313              # double 5.4366060000000003
	.quad	0x40211d30ad46f588              # double 8.5570120000000003
	.quad	0x4010f399f5dfeb8e              # double 4.2378920000000004
	.quad	0x40223d8e432441ff              # double 9.1202260000000006
	.quad	0x401bbbef06b37868              # double 6.9335290000000001
	.quad	0x3fe4062d40aaeafb              # double 0.62575400000000003
	.quad	0x401d93b6cbd987c6              # double 7.3942519999999998
	.quad	0x401368c5436b8f9b              # double 4.8523149999999999
	.quad	0x3fbcb93469941850              # double 0.112201
	.quad	0x3ffdb1b691212514              # double 1.8558870000000001
	.quad	0x4005fa47a9e2bcf9              # double 2.747207
	.quad	0x4001bf993d5347a6              # double 2.2185540000000001
	.quad	0x4005e22b3892ee85              # double 2.7354340000000001
	.quad	0x3ff92de1198aeb81              # double 1.573701
	.quad	0x3fe903dff3f0fe04              # double 0.78172299999999994
	.quad	0x401b8dfeb8d82342              # double 6.8886669999999999
	.quad	0x401212ef4e0114d3              # double 4.518491
	.quad	0x4017d6f47b677f6b              # double 5.9599169999999999
	.quad	0x3fff84e7253da72a              # double 1.9699469999999999
	.quad	0x400a8997c3d68406              # double 3.3171840000000001
	.quad	0x4010f273d5bab218              # double 4.2367699999999999
	.quad	0x40176a0620ab7132              # double 5.8535389999999996
	.quad	0x3fc733daf8df7a4e              # double 0.18126999999999999
	.quad	0x3fe528954a7f8013              # double 0.66120400000000001
	.quad	0x402096bf8769ec2d              # double 8.2944300000000002
	.quad	0x402164209246bf01              # double 8.6955609999999997
	.quad	0x4020c46dc5d63886              # double 8.3836499999999994
	.quad	0x4022cd019f3c70ca              # double 9.4004030000000007
	.quad	0x3fe49b003686a4ca              # double 0.64392099999999997
	.quad	0x40202f405f6ba062              # double 8.0922879999999999
	.quad	0x3ffdf51deefe4ffd              # double 1.8723430000000001
	.quad	0x401c95100a393ee6              # double 7.1455690000000001
	.quad	0x400277c3d68405b4              # double 2.3084790000000002
	.quad	0x3fae17a02fb5d031              # double 0.058774
	.quad	0x400490a0b1bbcf4f              # double 2.5706190000000002
	.quad	0x401adc7ef177a701              # double 6.7153280000000004
	.quad	0x3ff3191148fd9fd3              # double 1.1936199999999999
	.quad	0x401d44face67d780              # double 7.3173630000000003
	.quad	0x3ffb709fa54c5543              # double 1.714996
	.quad	0x3ff3e314013ec461              # double 1.242939
	.quad	0x3ff3b212d77318fc              # double 1.2309749999999999
	.quad	0x3ffd3708aac96cc6              # double 1.825936
	.quad	0x401cd97dd00f776c              # double 7.2123939999999997
	.quad	0x4003e2467be553ac              # double 2.4854859999999999
	.quad	0x40214d61d4306e5d              # double 8.6511370000000003
	.quad	0x4002850268900c52              # double 2.3149459999999999
	.quad	0x3fe2dc26dce39b45              # double 0.58937399999999995
	.quad	0x4017d765fd8adaba              # double 5.96035
	.quad	0x3fe459c8c9320d99              # double 0.63595999999999997
	.quad	0x40092e019b0ab2e1              # double 3.1474639999999998
	.quad	0x401b0f644955b467              # double 6.7650309999999996
	.quad	0x40204fbe33acd5b7              # double 8.1557480000000009
	.quad	0x3fce0485a0be5109              # double 0.234513
	.quad	0x401dc695d91ab8e9              # double 7.4439310000000001
	.quad	0x400c81198aeb80ed              # double 3.563037
	.quad	0x401d45dfeb8d8234              # double 7.3182369999999999
	.quad	0x4008067b5f1bef4a              # double 3.0031650000000001
	.quad	0x40162c2224edf612              # double 5.5430989999999998
	.quad	0x40222d432873bc90              # double 9.0884029999999996
	.quad	0x4008ed64d7f0ed3e              # double 3.1159150000000002
	.quad	0x4012e764f11b60af              # double 4.7259710000000004
	.quad	0x401c184b1ab0856e              # double 7.0237239999999996
	.quad	0x3fd4294573a79789              # double 0.31501899999999999
	.quad	0x40210d5de58e64b2              # double 8.5261069999999997
	.quad	0x4013396bb98c7e28              # double 4.8060749999999999
	.quad	0x401ee312f4cf4a56              # double 7.7217520000000004
	.quad	0x40168161e4f765fe              # double 5.6263500000000004
	.quad	0x4021ad4477ff151e              # double 8.8384129999999992
	.quad	0x400bdfa3b9ae0c17              # double 3.4841989999999998
	.quad	0x4013a8537e2c55c9              # double 4.9143809999999997
	.quad	0x4014556c0d6f544c              # double 5.0834200000000003
	.quad	0x4013d88ace24bba1              # double 4.9614669999999998
	.quad	0x3ff83fc0096feb4a              # double 1.5155639999999999
	.quad	0x4006f3f42352eb5f              # double 2.8691179999999998
	.quad	0x401d971d60631727              # double 7.3975730000000004
	.quad	0x3ffaf3eccc469510              # double 1.684552
	.quad	0x4003d45c78a6dacb              # double 2.4786920000000001
	.quad	0x401cedeacc92146a              # double 7.2323409999999999
	.quad	0x3fc12c8c5004fb12              # double 0.13417200000000001
	.quad	0x401621ada76d97b3              # double 5.5328889999999999
	.quad	0x3fdc7a13c254a3c6              # double 0.44495099999999999
	.quad	0x401a327e9531550d              # double 6.5493110000000003
	.quad	0x3fd13f2d3c792d13              # double 0.26948100000000003
	.quad	0x3ff4ef9873ffac1d              # double 1.308495
	.quad	0x400092231832fcad              # double 2.0713560000000002
	.quad	0x401ae8d1526d8b1e              # double 6.7273610000000001
	.quad	0x40161ab4fa48301a              # double 5.5260809999999996
	.quad	0x3febfc5260f5e41d              # double 0.87455099999999997
	.quad	0x4015cab8a5ce5b42              # double 5.4479699999999998
	.quad	0x400b37585be1a826              # double 3.4020239999999999
	.quad	0x4013fa22706d5065              # double 4.9942719999999996
	.quad	0x4014ff5989df1173              # double 5.2493650000000001
	.quad	0x402304bba12b5e53              # double 9.5092440000000006
	.quad	0x402041e83e425aee              # double 8.1287249999999993
	.quad	0x401f583a53b8e4b8              # double 7.8361599999999995
	.quad	0x40214d73eab367a1              # double 8.651275
	.quad	0x4011109aed56b010              # double 4.266216
	.quad	0x4001063f141205bc              # double 2.12805
	.quad	0x4022a734d6a161e5              # double 9.3265750000000001
	.quad	0x400e6f2170931013              # double 3.8042630000000002
	.quad	0x3fdb9aa60913a4f8              # double 0.43131399999999998
	.quad	0x400ee786c226809d              # double 3.8630499999999999
	.quad	0x4016d627bf61aa3f              # double 5.709136
	.quad	0x40081b1d92b7fe09              # double 3.0132400000000001
	.quad	0x4010525d074213a1              # double 4.0804330000000002
	.quad	0x40189c9abb01c92e              # double 6.1529340000000001
	.quad	0x40226c17ebaf1023              # double 9.2111199999999993
	.quad	0x4020295e17e34b94              # double 8.0807959999999994
	.quad	0x4014b8fffbce4218              # double 5.1806640000000002
	.quad	0x40210dbe3c105187              # double 8.5268420000000003
	.quad	0x40193d3b6cbd987c              # double 6.3097969999999997
	.quad	0x3ffe2d27807789a4              # double 1.8860239999999999
	.quad	0x3fc4245f5ad96a6a              # double 0.15736
	.quad	0x4019b636f3b213e4              # double 6.4279440000000001
	.quad	0x401a25b317efe0ce              # double 6.536816
	.quad	0x4010831337eb28d8              # double 4.1280029999999996
	.quad	0x4021babe48a58b3f              # double 8.8647329999999993
	.quad	0x401bdcffa7eb6bf4              # double 6.9658189999999998
	.quad	0x40104bd2fa0d77b8              # double 4.0740470000000002
	.quad	0x3fe7ce67d77fae36              # double 0.743946
	.quad	0x401a0860dcb9a9da              # double 6.5081819999999997
	.quad	0x401f7b367a0f9097              # double 7.8703250000000002
	.quad	0x401a0897204295a7              # double 6.5083890000000002
	.quad	0x4018ca85caafbc1b              # double 6.1977760000000002
	.quad	0x4007ab723ee1bd1f              # double 2.9587140000000001
	.quad	0x40214a17d2849cb2              # double 8.6447129999999994
	.quad	0x401c60c564f97edc              # double 7.0945029999999996
	.quad	0x402265c768dfbd6a              # double 9.1987869999999994
	.quad	0x3fedbbe878fabda1              # double 0.92918800000000001
	.quad	0x401acb57c4e2f380              # double 6.6985770000000002
	.quad	0x401612dc2b0ea183              # double 5.5184179999999996
	.quad	0x3fc14b838c111ada              # double 0.13511699999999999
	.quad	0x4006856cd6c2efd4              # double 2.8151489999999999
	.quad	0x40085cd898b2e9cd              # double 3.0453350000000001
	.quad	0x3ff3fbd1676640a7              # double 1.2489790000000001
	.quad	0x4005c6202539756d              # double 2.7217410000000002
	.quad	0x3ffcd8c6d612c6ac              # double 1.802924
	.quad	0x3fe21a9da597d49d              # double 0.56574899999999995
	.quad	0x40164c3760bf5d79              # double 5.5744300000000004
	.quad	0x400ee9a77e5eaab0              # double 3.8640889999999999
	.quad	0x401b1409e55c0fcb              # double 6.7695689999999997
	.quad	0x3ffb916fc9bc7714              # double 1.723007
	.quad	0x4000f6bb1290257d              # double 2.1204740000000002
	.quad	0x3fe5dea033e78e19              # double 0.68342599999999998
	.quad	0x401d497d06bbdbe4              # double 7.3217660000000002
	.quad	0x401dffeef5ec80c7              # double 7.4999349999999997
	.quad	0x3fe80e6afcce1c58              # double 0.75175999999999998
	.quad	0x4015c6366d7a56de              # double 5.4435669999999998
	.quad	0x4003681cb46bacf7              # double 2.4258359999999999
	.quad	0x4012a70eb24a6a87              # double 4.6631419999999997
	.quad	0x3fffcbdba0a52696              # double 1.9872700000000001
	.quad	0x40171052502eec7d              # double 5.7659390000000004
	.quad	0x402019f18c9fb613              # double 8.0506709999999995
	.quad	0x400e6b4070329803              # double 3.8023690000000001
	.quad	0x401ff9ee88df3733              # double 7.9940740000000003
	.quad	0x3fdf188f42fe8251              # double 0.48587399999999997
	.quad	0x4016d56323bbc6eb              # double 5.708386
	.quad	0x3fd325892684cf07              # double 0.29916599999999999
	.quad	0x4016d67c6b8b6955              # double 5.7094589999999998
	.quad	0x3fd8c42e9899bf59              # double 0.38697399999999998
	.quad	0x4023333d6c721922              # double 9.6000779999999999
	.quad	0x3ff4e94467381d7e              # double 1.3069500000000001
	.quad	0x4014adde37585be2              # double 5.1697930000000003
	.quad	0x401fa8b220791c4c              # double 7.9147420000000004
	.quad	0x4023a095af294dd7              # double 9.8136419999999997
	.quad	0x400a40fe47991bc5              # double 3.2817349999999998
	.quad	0x40098a8a82a5614e              # double 3.192647
	.quad	0x3fffb7b28954a7f8              # double 1.982348
	.quad	0x4019944284dfce31              # double 6.3947849999999997
	.quad	0x40238f9767903212              # double 9.7804520000000004
	.quad	0x401dd0870110a138              # double 7.45364
	.quad	0x40186dba908a265f              # double 6.1071569999999999
	.quad	0x401731db877ab325              # double 5.7986890000000004
	.quad	0x401ab1e42e126202              # double 6.6737219999999997
	.quad	0x40091dff3f0fe048              # double 3.1396470000000001
	.quad	0x400c08a8b08dd1e5              # double 3.5042279999999999
	.quad	0x401cf5faebc408d9              # double 7.2402150000000001
	.quad	0x40229559f6ec5b08              # double 9.2917020000000007
	.quad	0x400d191361dc93ea              # double 3.6372439999999999
	.quad	0x40189aa369fcf3dc              # double 6.151014
	.quad	0x4013f4ff43419e30              # double 4.989255
	.quad	0x3ff5c50df15a4acf              # double 1.360609
	.quad	0x3ffaed00b45ae600              # double 1.6828620000000001
	.quad	0x3ff9cb3a2595bbbf              # double 1.6121160000000001
	.quad	0x4007e13c254a3c64              # double 2.9849779999999999
	.quad	0x4002172a38b8ae32              # double 2.2613110000000001
	.size	.L__constant_3500xf64, 28000

	.section	".note.GNU-stack","",@progbits
